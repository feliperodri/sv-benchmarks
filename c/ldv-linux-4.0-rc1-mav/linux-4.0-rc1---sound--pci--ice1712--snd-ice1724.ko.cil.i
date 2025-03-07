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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
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
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
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
struct __anonstruct_futex_33 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_34 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_35 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_32 {
   struct __anonstruct_futex_33 futex ;
   struct __anonstruct_nanosleep_34 nanosleep ;
   struct __anonstruct_poll_35 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_32 __annonCompField19 ;
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
struct __anonstruct_seqlock_t_48 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_48 seqlock_t;
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
union __anonunion____missing_field_name_49 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_49 __annonCompField20 ;
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
union __anonunion____missing_field_name_50 {
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
   union __anonunion____missing_field_name_50 __annonCompField21 ;
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
struct __anonstruct_kuid_t_51 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_51 kuid_t;
struct __anonstruct_kgid_t_52 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_52 kgid_t;
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
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
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
struct plist_head {
   struct list_head node_list ;
};
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
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   char *driver_override ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
union __anonunion____missing_field_name_200 {
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
   union __anonunion____missing_field_name_200 __annonCompField62 ;
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
enum snd_device_type {
    SNDRV_DEV_LOWLEVEL = 0,
    SNDRV_DEV_CONTROL = 1,
    SNDRV_DEV_INFO = 2,
    SNDRV_DEV_BUS = 3,
    SNDRV_DEV_CODEC = 4,
    SNDRV_DEV_PCM = 5,
    SNDRV_DEV_COMPRESS = 6,
    SNDRV_DEV_RAWMIDI = 7,
    SNDRV_DEV_TIMER = 8,
    SNDRV_DEV_SEQUENCER = 9,
    SNDRV_DEV_HWDEP = 10,
    SNDRV_DEV_JACK = 11
} ;
enum snd_device_state {
    SNDRV_DEV_BUILD = 0,
    SNDRV_DEV_REGISTERED = 1,
    SNDRV_DEV_DISCONNECTED = 2
} ;
struct snd_device;
struct snd_device_ops {
   int (*dev_free)(struct snd_device * ) ;
   int (*dev_register)(struct snd_device * ) ;
   int (*dev_disconnect)(struct snd_device * ) ;
};
struct snd_card;
struct snd_device {
   struct list_head list ;
   struct snd_card *card ;
   enum snd_device_state state ;
   enum snd_device_type type ;
   void *device_data ;
   struct snd_device_ops *ops ;
};
struct snd_info_entry;
struct snd_shutdown_f_ops;
struct snd_mixer_oss;
struct snd_card {
   int number ;
   char id[16U] ;
   char driver[16U] ;
   char shortname[32U] ;
   char longname[80U] ;
   char mixername[80U] ;
   char components[128U] ;
   struct module *module ;
   void *private_data ;
   void (*private_free)(struct snd_card * ) ;
   struct list_head devices ;
   struct device ctl_dev ;
   unsigned int last_numid ;
   struct rw_semaphore controls_rwsem ;
   rwlock_t ctl_files_rwlock ;
   int controls_count ;
   int user_ctl_count ;
   struct list_head controls ;
   struct list_head ctl_files ;
   struct mutex user_ctl_lock ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_id ;
   struct proc_dir_entry *proc_root_link ;
   struct list_head files_list ;
   struct snd_shutdown_f_ops *s_f_ops ;
   spinlock_t files_lock ;
   int shutdown ;
   struct completion *release_completion ;
   struct device *dev ;
   struct device card_dev ;
   struct attribute_group const *dev_groups[4U] ;
   bool registered ;
   unsigned int power_state ;
   struct mutex power_lock ;
   wait_queue_head_t power_sleep ;
   struct snd_mixer_oss *mixer_oss ;
   int mixer_oss_change_count ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_202 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_201 {
   struct __anonstruct____missing_field_name_202 __annonCompField63 ;
};
struct lockref {
   union __anonunion____missing_field_name_201 __annonCompField64 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_204 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_203 {
   struct __anonstruct____missing_field_name_204 __annonCompField65 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_203 __annonCompField66 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_205 {
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
   union __anonunion_d_u_205 d_u ;
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
struct __anonstruct____missing_field_name_207 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_206 {
   struct __anonstruct____missing_field_name_207 __annonCompField67 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_206 __annonCompField68 ;
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
struct __anonstruct_kprojid_t_209 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_209 kprojid_t;
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
union __anonunion____missing_field_name_210 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_210 __annonCompField70 ;
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
union __anonunion____missing_field_name_213 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_214 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_215 {
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
   union __anonunion____missing_field_name_213 __annonCompField71 ;
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
   union __anonunion____missing_field_name_214 __annonCompField72 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_215 __annonCompField73 ;
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
union __anonunion_f_u_216 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_216 f_u ;
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
struct __anonstruct_afs_218 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_217 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_218 afs ;
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
   union __anonunion_fl_u_217 fl_u ;
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
struct snd_info_buffer {
   char *buffer ;
   unsigned int curr ;
   unsigned int size ;
   unsigned int len ;
   int stop ;
   int error ;
};
struct snd_info_entry_text {
   void (*read)(struct snd_info_entry * , struct snd_info_buffer * ) ;
   void (*write)(struct snd_info_entry * , struct snd_info_buffer * ) ;
};
struct snd_info_entry_ops {
   int (*open)(struct snd_info_entry * , unsigned short , void ** ) ;
   int (*release)(struct snd_info_entry * , unsigned short , void * ) ;
   ssize_t (*read)(struct snd_info_entry * , void * , struct file * , char * , size_t ,
                   loff_t ) ;
   ssize_t (*write)(struct snd_info_entry * , void * , struct file * , char const * ,
                    size_t , loff_t ) ;
   loff_t (*llseek)(struct snd_info_entry * , void * , struct file * , loff_t , int ) ;
   unsigned int (*poll)(struct snd_info_entry * , void * , struct file * , poll_table * ) ;
   int (*ioctl)(struct snd_info_entry * , void * , struct file * , unsigned int ,
                unsigned long ) ;
   int (*mmap)(struct snd_info_entry * , void * , struct inode * , struct file * ,
               struct vm_area_struct * ) ;
};
union __anonunion_c_220 {
   struct snd_info_entry_text text ;
   struct snd_info_entry_ops *ops ;
};
struct snd_info_entry {
   char const *name ;
   umode_t mode ;
   long size ;
   unsigned short content ;
   union __anonunion_c_220 c ;
   struct snd_info_entry *parent ;
   struct snd_card *card ;
   struct module *module ;
   void *private_data ;
   void (*private_free)(struct snd_info_entry * ) ;
   struct proc_dir_entry *p ;
   struct mutex access ;
   struct list_head children ;
   struct list_head list ;
};
struct snd_aes_iec958 {
   unsigned char status[24U] ;
   unsigned char subcode[147U] ;
   unsigned char pad ;
   unsigned char dig_subframe[4U] ;
};
typedef unsigned long snd_pcm_uframes_t;
typedef long snd_pcm_sframes_t;
typedef int snd_pcm_access_t;
typedef int snd_pcm_format_t;
typedef int snd_pcm_subformat_t;
typedef int snd_pcm_state_t;
union snd_pcm_sync_id {
   unsigned char id[16U] ;
   unsigned short id16[8U] ;
   unsigned int id32[4U] ;
};
typedef int snd_pcm_hw_param_t;
struct snd_interval {
   unsigned int min ;
   unsigned int max ;
   unsigned char openmin : 1 ;
   unsigned char openmax : 1 ;
   unsigned char integer : 1 ;
   unsigned char empty : 1 ;
};
struct snd_mask {
   __u32 bits[8U] ;
};
struct snd_pcm_hw_params {
   unsigned int flags ;
   struct snd_mask masks[3U] ;
   struct snd_mask mres[5U] ;
   struct snd_interval intervals[12U] ;
   struct snd_interval ires[9U] ;
   unsigned int rmask ;
   unsigned int cmask ;
   unsigned int info ;
   unsigned int msbits ;
   unsigned int rate_num ;
   unsigned int rate_den ;
   snd_pcm_uframes_t fifo_size ;
   unsigned char reserved[64U] ;
};
struct snd_pcm_mmap_status {
   snd_pcm_state_t state ;
   int pad1 ;
   snd_pcm_uframes_t hw_ptr ;
   struct timespec tstamp ;
   snd_pcm_state_t suspended_state ;
   struct timespec audio_tstamp ;
};
struct snd_pcm_mmap_control {
   snd_pcm_uframes_t appl_ptr ;
   snd_pcm_uframes_t avail_min ;
};
typedef int snd_ctl_elem_type_t;
typedef int snd_ctl_elem_iface_t;
struct snd_ctl_elem_id {
   unsigned int numid ;
   snd_ctl_elem_iface_t iface ;
   unsigned int device ;
   unsigned int subdevice ;
   unsigned char name[44U] ;
   unsigned int index ;
};
struct __anonstruct_integer_224 {
   long min ;
   long max ;
   long step ;
};
struct __anonstruct_integer64_225 {
   long long min ;
   long long max ;
   long long step ;
};
struct __anonstruct_enumerated_226 {
   unsigned int items ;
   unsigned int item ;
   char name[64U] ;
   __u64 names_ptr ;
   unsigned int names_length ;
};
union __anonunion_value_223 {
   struct __anonstruct_integer_224 integer ;
   struct __anonstruct_integer64_225 integer64 ;
   struct __anonstruct_enumerated_226 enumerated ;
   unsigned char reserved[128U] ;
};
union __anonunion_dimen_227 {
   unsigned short d[4U] ;
   unsigned short *d_ptr ;
};
struct snd_ctl_elem_info {
   struct snd_ctl_elem_id id ;
   snd_ctl_elem_type_t type ;
   unsigned int access ;
   unsigned int count ;
   __kernel_pid_t owner ;
   union __anonunion_value_223 value ;
   union __anonunion_dimen_227 dimen ;
   unsigned char reserved[56U] ;
};
union __anonunion_integer_229 {
   long value[128U] ;
   long *value_ptr ;
};
union __anonunion_integer64_230 {
   long long value[64U] ;
   long long *value_ptr ;
};
union __anonunion_enumerated_231 {
   unsigned int item[128U] ;
   unsigned int *item_ptr ;
};
union __anonunion_bytes_232 {
   unsigned char data[512U] ;
   unsigned char *data_ptr ;
};
union __anonunion_value_228 {
   union __anonunion_integer_229 integer ;
   union __anonunion_integer64_230 integer64 ;
   union __anonunion_enumerated_231 enumerated ;
   union __anonunion_bytes_232 bytes ;
   struct snd_aes_iec958 iec958 ;
};
struct snd_ctl_elem_value {
   struct snd_ctl_elem_id id ;
   unsigned char indirect : 1 ;
   union __anonunion_value_228 value ;
   struct timespec tstamp ;
   unsigned char reserved[112U] ;
};
struct snd_seq_device {
   struct snd_card *card ;
   int device ;
   char id[32U] ;
   char name[80U] ;
   int argsize ;
   void *driver_data ;
   int status ;
   void *private_data ;
   void (*private_free)(struct snd_seq_device * ) ;
   struct list_head list ;
};
struct snd_rawmidi;
struct snd_rawmidi_substream;
struct snd_seq_port_info;
struct snd_rawmidi_ops {
   int (*open)(struct snd_rawmidi_substream * ) ;
   int (*close)(struct snd_rawmidi_substream * ) ;
   void (*trigger)(struct snd_rawmidi_substream * , int ) ;
   void (*drain)(struct snd_rawmidi_substream * ) ;
};
struct snd_rawmidi_global_ops {
   int (*dev_register)(struct snd_rawmidi * ) ;
   int (*dev_unregister)(struct snd_rawmidi * ) ;
   void (*get_port_info)(struct snd_rawmidi * , int , struct snd_seq_port_info * ) ;
};
struct snd_rawmidi_runtime {
   struct snd_rawmidi_substream *substream ;
   unsigned char drain : 1 ;
   unsigned char oss : 1 ;
   unsigned char *buffer ;
   size_t buffer_size ;
   size_t appl_ptr ;
   size_t hw_ptr ;
   size_t avail_min ;
   size_t avail ;
   size_t xruns ;
   spinlock_t lock ;
   wait_queue_head_t sleep ;
   void (*event)(struct snd_rawmidi_substream * ) ;
   struct work_struct event_work ;
   void *private_data ;
   void (*private_free)(struct snd_rawmidi_substream * ) ;
};
struct snd_rawmidi_str;
struct snd_rawmidi_substream {
   struct list_head list ;
   int stream ;
   int number ;
   unsigned char opened : 1 ;
   unsigned char append : 1 ;
   unsigned char active_sensing : 1 ;
   int use_count ;
   size_t bytes ;
   struct snd_rawmidi *rmidi ;
   struct snd_rawmidi_str *pstr ;
   char name[32U] ;
   struct snd_rawmidi_runtime *runtime ;
   struct pid *pid ;
   struct snd_rawmidi_ops *ops ;
};
struct snd_rawmidi_str {
   unsigned int substream_count ;
   unsigned int substream_opened ;
   struct list_head substreams ;
};
struct snd_rawmidi {
   struct snd_card *card ;
   struct list_head list ;
   unsigned int device ;
   unsigned int info_flags ;
   char id[64U] ;
   char name[80U] ;
   int ossreg ;
   struct snd_rawmidi_global_ops *ops ;
   struct snd_rawmidi_str streams[2U] ;
   void *private_data ;
   void (*private_free)(struct snd_rawmidi * ) ;
   struct mutex open_mutex ;
   wait_queue_head_t open_wait ;
   struct device dev ;
   struct snd_info_entry *proc_entry ;
   struct snd_seq_device *seq_dev ;
};
struct snd_kcontrol;
typedef int snd_kcontrol_info_t(struct snd_kcontrol * , struct snd_ctl_elem_info * );
typedef int snd_kcontrol_get_t(struct snd_kcontrol * , struct snd_ctl_elem_value * );
typedef int snd_kcontrol_put_t(struct snd_kcontrol * , struct snd_ctl_elem_value * );
typedef int snd_kcontrol_tlv_rw_t(struct snd_kcontrol * , int , unsigned int , unsigned int * );
union __anonunion_tlv_235 {
   snd_kcontrol_tlv_rw_t *c ;
   unsigned int const *p ;
};
struct snd_kcontrol_new {
   snd_ctl_elem_iface_t iface ;
   unsigned int device ;
   unsigned int subdevice ;
   unsigned char const *name ;
   unsigned int index ;
   unsigned int access ;
   unsigned int count ;
   snd_kcontrol_info_t *info ;
   snd_kcontrol_get_t *get ;
   snd_kcontrol_put_t *put ;
   union __anonunion_tlv_235 tlv ;
   unsigned long private_value ;
};
struct snd_ctl_file;
struct snd_kcontrol_volatile {
   struct snd_ctl_file *owner ;
   unsigned int access ;
};
union __anonunion_tlv_236 {
   snd_kcontrol_tlv_rw_t *c ;
   unsigned int const *p ;
};
struct snd_kcontrol {
   struct list_head list ;
   struct snd_ctl_elem_id id ;
   unsigned int count ;
   snd_kcontrol_info_t *info ;
   snd_kcontrol_get_t *get ;
   snd_kcontrol_put_t *put ;
   union __anonunion_tlv_236 tlv ;
   unsigned long private_value ;
   void *private_data ;
   void (*private_free)(struct snd_kcontrol * ) ;
   struct snd_kcontrol_volatile vd[0U] ;
};
struct snd_ctl_file {
   struct list_head list ;
   struct snd_card *card ;
   struct pid *pid ;
   int preferred_subdevice[2U] ;
   wait_queue_head_t change_sleep ;
   spinlock_t read_lock ;
   struct fasync_struct *fasync ;
   int subscribed ;
   struct list_head events ;
};
struct snd_dma_device {
   int type ;
   struct device *dev ;
};
struct snd_dma_buffer {
   struct snd_dma_device dev ;
   unsigned char *area ;
   dma_addr_t addr ;
   size_t bytes ;
   void *private_data ;
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
    DEV_PM_QOS_RESUME_LATENCY = 1,
    DEV_PM_QOS_LATENCY_TOLERANCE = 2,
    DEV_PM_QOS_FLAGS = 3
} ;
union __anonunion_data_237 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_237 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2,
    PM_QOS_SUM = 3
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   s32 no_constraint_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints resume_latency ;
   struct pm_qos_constraints latency_tolerance ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *resume_latency_req ;
   struct dev_pm_qos_request *latency_tolerance_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct snd_pcm_oss_setup {
   char *task_name ;
   unsigned char disable : 1 ;
   unsigned char direct : 1 ;
   unsigned char block : 1 ;
   unsigned char nonblock : 1 ;
   unsigned char partialfrag : 1 ;
   unsigned char nosilence : 1 ;
   unsigned char buggyptr : 1 ;
   unsigned int periods ;
   unsigned int period_size ;
   struct snd_pcm_oss_setup *next ;
};
struct snd_pcm_plugin;
struct snd_pcm_oss_runtime {
   unsigned char params : 1 ;
   unsigned char prepare : 1 ;
   unsigned char trigger : 1 ;
   unsigned char sync_trigger : 1 ;
   int rate ;
   int format ;
   unsigned int channels ;
   unsigned int fragshift ;
   unsigned int maxfrags ;
   unsigned int subdivision ;
   size_t period_bytes ;
   size_t period_frames ;
   size_t period_ptr ;
   unsigned int periods ;
   size_t buffer_bytes ;
   size_t bytes ;
   size_t mmap_bytes ;
   char *buffer ;
   size_t buffer_used ;
   struct mutex params_lock ;
   struct snd_pcm_plugin *plugin_first ;
   struct snd_pcm_plugin *plugin_last ;
   unsigned int prev_hw_ptr_period ;
};
struct snd_pcm_substream;
struct snd_pcm_oss_substream {
   unsigned char oss : 1 ;
   struct snd_pcm_oss_setup setup ;
};
struct snd_pcm_oss_stream {
   struct snd_pcm_oss_setup *setup_list ;
   struct mutex setup_mutex ;
   struct snd_info_entry *proc_entry ;
};
struct snd_pcm_oss {
   int reg ;
   unsigned int reg_mask ;
};
struct snd_pcm_hardware {
   unsigned int info ;
   u64 formats ;
   unsigned int rates ;
   unsigned int rate_min ;
   unsigned int rate_max ;
   unsigned int channels_min ;
   unsigned int channels_max ;
   size_t buffer_bytes_max ;
   size_t period_bytes_min ;
   size_t period_bytes_max ;
   unsigned int periods_min ;
   unsigned int periods_max ;
   size_t fifo_size ;
};
struct snd_pcm_ops {
   int (*open)(struct snd_pcm_substream * ) ;
   int (*close)(struct snd_pcm_substream * ) ;
   int (*ioctl)(struct snd_pcm_substream * , unsigned int , void * ) ;
   int (*hw_params)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ;
   int (*hw_free)(struct snd_pcm_substream * ) ;
   int (*prepare)(struct snd_pcm_substream * ) ;
   int (*trigger)(struct snd_pcm_substream * , int ) ;
   snd_pcm_uframes_t (*pointer)(struct snd_pcm_substream * ) ;
   int (*wall_clock)(struct snd_pcm_substream * , struct timespec * ) ;
   int (*copy)(struct snd_pcm_substream * , int , snd_pcm_uframes_t , void * , snd_pcm_uframes_t ) ;
   int (*silence)(struct snd_pcm_substream * , int , snd_pcm_uframes_t , snd_pcm_uframes_t ) ;
   struct page *(*page)(struct snd_pcm_substream * , unsigned long ) ;
   int (*mmap)(struct snd_pcm_substream * , struct vm_area_struct * ) ;
   int (*ack)(struct snd_pcm_substream * ) ;
};
struct snd_pcm_hw_rule;
struct snd_pcm_hw_rule {
   unsigned int cond ;
   int (*func)(struct snd_pcm_hw_params * , struct snd_pcm_hw_rule * ) ;
   int var ;
   int deps[4U] ;
   void *private ;
};
struct snd_pcm_hw_constraints {
   struct snd_mask masks[3U] ;
   struct snd_interval intervals[12U] ;
   unsigned int rules_num ;
   unsigned int rules_all ;
   struct snd_pcm_hw_rule *rules ;
};
struct snd_pcm_hw_constraint_list {
   unsigned int count ;
   unsigned int const *list ;
   unsigned int mask ;
};
struct snd_pcm_hwptr_log;
struct snd_pcm_runtime {
   struct snd_pcm_substream *trigger_master ;
   struct timespec trigger_tstamp ;
   bool trigger_tstamp_latched ;
   int overrange ;
   snd_pcm_uframes_t avail_max ;
   snd_pcm_uframes_t hw_ptr_base ;
   snd_pcm_uframes_t hw_ptr_interrupt ;
   unsigned long hw_ptr_jiffies ;
   unsigned long hw_ptr_buffer_jiffies ;
   snd_pcm_sframes_t delay ;
   u64 hw_ptr_wrap ;
   snd_pcm_access_t access ;
   snd_pcm_format_t format ;
   snd_pcm_subformat_t subformat ;
   unsigned int rate ;
   unsigned int channels ;
   snd_pcm_uframes_t period_size ;
   unsigned int periods ;
   snd_pcm_uframes_t buffer_size ;
   snd_pcm_uframes_t min_align ;
   size_t byte_align ;
   unsigned int frame_bits ;
   unsigned int sample_bits ;
   unsigned int info ;
   unsigned int rate_num ;
   unsigned int rate_den ;
   unsigned char no_period_wakeup : 1 ;
   int tstamp_mode ;
   unsigned int period_step ;
   snd_pcm_uframes_t start_threshold ;
   snd_pcm_uframes_t stop_threshold ;
   snd_pcm_uframes_t silence_threshold ;
   snd_pcm_uframes_t silence_size ;
   snd_pcm_uframes_t boundary ;
   snd_pcm_uframes_t silence_start ;
   snd_pcm_uframes_t silence_filled ;
   union snd_pcm_sync_id sync ;
   struct snd_pcm_mmap_status *status ;
   struct snd_pcm_mmap_control *control ;
   snd_pcm_uframes_t twake ;
   wait_queue_head_t sleep ;
   wait_queue_head_t tsleep ;
   struct fasync_struct *fasync ;
   void *private_data ;
   void (*private_free)(struct snd_pcm_runtime * ) ;
   struct snd_pcm_hardware hw ;
   struct snd_pcm_hw_constraints hw_constraints ;
   void (*transfer_ack_begin)(struct snd_pcm_substream * ) ;
   void (*transfer_ack_end)(struct snd_pcm_substream * ) ;
   unsigned int timer_resolution ;
   int tstamp_type ;
   unsigned char *dma_area ;
   dma_addr_t dma_addr ;
   size_t dma_bytes ;
   struct snd_dma_buffer *dma_buffer_p ;
   struct snd_pcm_oss_runtime oss ;
   struct snd_pcm_hwptr_log *hwptr_log ;
};
struct snd_pcm_group {
   spinlock_t lock ;
   struct mutex mutex ;
   struct list_head substreams ;
   int count ;
};
struct snd_pcm;
struct snd_pcm_str;
struct snd_timer;
struct snd_pcm_substream {
   struct snd_pcm *pcm ;
   struct snd_pcm_str *pstr ;
   void *private_data ;
   int number ;
   char name[32U] ;
   int stream ;
   struct pm_qos_request latency_pm_qos_req ;
   size_t buffer_bytes_max ;
   struct snd_dma_buffer dma_buffer ;
   size_t dma_max ;
   struct snd_pcm_ops const *ops ;
   struct snd_pcm_runtime *runtime ;
   struct snd_timer *timer ;
   unsigned char timer_running : 1 ;
   struct snd_pcm_substream *next ;
   struct list_head link_list ;
   struct snd_pcm_group self_group ;
   struct snd_pcm_group *group ;
   void *file ;
   int ref_count ;
   atomic_t mmap_count ;
   unsigned int f_flags ;
   void (*pcm_release)(struct snd_pcm_substream * ) ;
   struct pid *pid ;
   struct snd_pcm_oss_substream oss ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_info_entry ;
   struct snd_info_entry *proc_hw_params_entry ;
   struct snd_info_entry *proc_sw_params_entry ;
   struct snd_info_entry *proc_status_entry ;
   struct snd_info_entry *proc_prealloc_entry ;
   struct snd_info_entry *proc_prealloc_max_entry ;
   struct snd_info_entry *proc_xrun_injection_entry ;
   unsigned char hw_opened : 1 ;
};
struct snd_pcm_str {
   int stream ;
   struct snd_pcm *pcm ;
   unsigned int substream_count ;
   unsigned int substream_opened ;
   struct snd_pcm_substream *substream ;
   struct snd_pcm_oss_stream oss ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_info_entry ;
   unsigned int xrun_debug ;
   struct snd_info_entry *proc_xrun_debug_entry ;
   struct snd_kcontrol *chmap_kctl ;
   struct device dev ;
};
struct snd_pcm {
   struct snd_card *card ;
   struct list_head list ;
   int device ;
   unsigned int info_flags ;
   unsigned short dev_class ;
   unsigned short dev_subclass ;
   char id[64U] ;
   char name[80U] ;
   struct snd_pcm_str streams[2U] ;
   struct mutex open_mutex ;
   wait_queue_head_t open_wait ;
   void *private_data ;
   void (*private_free)(struct snd_pcm * ) ;
   bool internal ;
   bool nonatomic ;
   struct snd_pcm_oss oss ;
};
struct snd_pcm_chmap_elem {
   unsigned char channels ;
   unsigned char map[15U] ;
};
struct snd_pcm_chmap {
   struct snd_pcm *pcm ;
   int stream ;
   struct snd_kcontrol *kctl ;
   struct snd_pcm_chmap_elem const *chmap ;
   unsigned int max_channels ;
   unsigned int channel_mask ;
   void *private_data ;
};
struct snd_ac97;
struct snd_ac97_build_ops {
   int (*build_3d)(struct snd_ac97 * ) ;
   int (*build_specific)(struct snd_ac97 * ) ;
   int (*build_spdif)(struct snd_ac97 * ) ;
   int (*build_post_spdif)(struct snd_ac97 * ) ;
   void (*suspend)(struct snd_ac97 * ) ;
   void (*resume)(struct snd_ac97 * ) ;
   void (*update_jacks)(struct snd_ac97 * ) ;
};
struct snd_ac97_bus_ops {
   void (*reset)(struct snd_ac97 * ) ;
   void (*warm_reset)(struct snd_ac97 * ) ;
   void (*write)(struct snd_ac97 * , unsigned short , unsigned short ) ;
   unsigned short (*read)(struct snd_ac97 * , unsigned short ) ;
   void (*wait)(struct snd_ac97 * ) ;
   void (*init)(struct snd_ac97 * ) ;
};
struct ac97_pcm;
struct snd_ac97_bus {
   struct snd_ac97_bus_ops *ops ;
   void *private_data ;
   void (*private_free)(struct snd_ac97_bus * ) ;
   struct snd_card *card ;
   unsigned short num ;
   unsigned char no_vra : 1 ;
   unsigned char dra : 1 ;
   unsigned char isdin : 1 ;
   unsigned int clock ;
   spinlock_t bus_lock ;
   unsigned short used_slots[2U][4U] ;
   unsigned short pcms_count ;
   struct ac97_pcm *pcms ;
   struct snd_ac97 *codec[4U] ;
   struct snd_info_entry *proc ;
};
struct snd_ac97_res_table {
   unsigned short reg ;
   unsigned short bits ;
};
struct snd_ac97_template {
   void *private_data ;
   void (*private_free)(struct snd_ac97 * ) ;
   struct pci_dev *pci ;
   unsigned short num ;
   unsigned short addr ;
   unsigned int scaps ;
   struct snd_ac97_res_table const *res_table ;
};
struct __anonstruct_ad18xx_239 {
   unsigned short unchained[3U] ;
   unsigned short chained[3U] ;
   unsigned short id[3U] ;
   unsigned short pcmreg[3U] ;
   unsigned short codec_cfg[3U] ;
   unsigned char swap_mic_linein ;
   unsigned char lo_as_master ;
};
union __anonunion_spec_238 {
   struct __anonstruct_ad18xx_239 ad18xx ;
   unsigned int dev_flags ;
};
struct snd_ac97 {
   struct snd_ac97_build_ops const *build_ops ;
   void *private_data ;
   void (*private_free)(struct snd_ac97 * ) ;
   struct snd_ac97_bus *bus ;
   struct pci_dev *pci ;
   struct snd_info_entry *proc ;
   struct snd_info_entry *proc_regs ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   struct mutex reg_mutex ;
   struct mutex page_mutex ;
   unsigned short num ;
   unsigned short addr ;
   unsigned int id ;
   unsigned short caps ;
   unsigned short ext_id ;
   unsigned short ext_mid ;
   struct snd_ac97_res_table const *res_table ;
   unsigned int scaps ;
   unsigned int flags ;
   unsigned int rates[6U] ;
   unsigned int spdif_status ;
   unsigned short regs[128U] ;
   unsigned long reg_accessed[2U] ;
   union __anonunion_spec_238 spec ;
   unsigned char indep_surround ;
   unsigned char channel_mode ;
   unsigned int power_up ;
   struct delayed_work power_work ;
   struct device dev ;
   struct snd_pcm_chmap *chmaps[2U] ;
};
struct __anonstruct_r_240 {
   unsigned short slots ;
   unsigned short rslots[4U] ;
   unsigned char rate_table[4U] ;
   struct snd_ac97 *codec[4U] ;
};
struct ac97_pcm {
   struct snd_ac97_bus *bus ;
   unsigned char stream : 1 ;
   unsigned char exclusive : 1 ;
   unsigned char copy_flag : 1 ;
   unsigned char spdif : 1 ;
   unsigned short aslots ;
   unsigned short cur_dbl ;
   unsigned int rates ;
   struct __anonstruct_r_240 r[2U] ;
   unsigned long private_value ;
};
struct snd_i2c_bus;
struct snd_i2c_device {
   struct list_head list ;
   struct snd_i2c_bus *bus ;
   char name[32U] ;
   unsigned short flags ;
   unsigned short addr ;
   unsigned long private_value ;
   void *private_data ;
   void (*private_free)(struct snd_i2c_device * ) ;
};
struct snd_i2c_bit_ops {
   void (*start)(struct snd_i2c_bus * ) ;
   void (*stop)(struct snd_i2c_bus * ) ;
   void (*direction)(struct snd_i2c_bus * , int , int ) ;
   void (*setlines)(struct snd_i2c_bus * , int , int ) ;
   int (*getclock)(struct snd_i2c_bus * ) ;
   int (*getdata)(struct snd_i2c_bus * , int ) ;
};
struct snd_i2c_ops {
   int (*sendbytes)(struct snd_i2c_device * , unsigned char * , int ) ;
   int (*readbytes)(struct snd_i2c_device * , unsigned char * , int ) ;
   int (*probeaddr)(struct snd_i2c_bus * , unsigned short ) ;
};
union __anonunion_hw_ops_241 {
   struct snd_i2c_bit_ops *bit ;
   void *ops ;
};
struct snd_i2c_bus {
   struct snd_card *card ;
   char name[32U] ;
   struct mutex lock_mutex ;
   struct snd_i2c_bus *master ;
   struct list_head buses ;
   struct list_head devices ;
   union __anonunion_hw_ops_241 hw_ops ;
   struct snd_i2c_ops *ops ;
   unsigned long private_value ;
   void *private_data ;
   void (*private_free)(struct snd_i2c_bus * ) ;
};
struct snd_akm4xxx;
struct snd_ak4xxx_ops {
   void (*lock)(struct snd_akm4xxx * , int ) ;
   void (*unlock)(struct snd_akm4xxx * , int ) ;
   void (*write)(struct snd_akm4xxx * , int , unsigned char , unsigned char ) ;
   void (*set_rate_val)(struct snd_akm4xxx * , unsigned int ) ;
};
struct snd_akm4xxx_dac_channel {
   char *name ;
   unsigned int num_channels ;
   char *switch_name ;
};
struct snd_akm4xxx_adc_channel {
   char *name ;
   char *switch_name ;
   unsigned int num_channels ;
   char *selector_name ;
   char const **input_names ;
};
enum ldv_26548 {
    SND_AK4524 = 0,
    SND_AK4528 = 1,
    SND_AK4529 = 2,
    SND_AK4355 = 3,
    SND_AK4358 = 4,
    SND_AK4381 = 5,
    SND_AK5365 = 6,
    SND_AK4620 = 7
} ;
struct snd_akm4xxx {
   struct snd_card *card ;
   unsigned int num_adcs ;
   unsigned int num_dacs ;
   unsigned char images[64U] ;
   unsigned char volumes[64U] ;
   unsigned long private_value[4U] ;
   void *private_data[4U] ;
   unsigned int idx_offset ;
   enum ldv_26548 type ;
   struct snd_akm4xxx_dac_channel const *dac_info ;
   struct snd_akm4xxx_adc_channel const *adc_info ;
   struct snd_ak4xxx_ops ops ;
   unsigned int num_chips ;
   unsigned int total_regs ;
   char const *name ;
};
struct snd_ice1712;
struct snd_ice1712_eeprom {
   unsigned int subvendor ;
   unsigned char size ;
   unsigned char version ;
   unsigned char data[32U] ;
   unsigned int gpiomask ;
   unsigned int gpiostate ;
   unsigned int gpiodir ;
};
struct snd_ice1712_spdif_ops {
   void (*open)(struct snd_ice1712 * , struct snd_pcm_substream * ) ;
   void (*setup_rate)(struct snd_ice1712 * , int ) ;
   void (*close)(struct snd_ice1712 * , struct snd_pcm_substream * ) ;
   void (*default_get)(struct snd_ice1712 * , struct snd_ctl_elem_value * ) ;
   int (*default_put)(struct snd_ice1712 * , struct snd_ctl_elem_value * ) ;
   void (*stream_get)(struct snd_ice1712 * , struct snd_ctl_elem_value * ) ;
   int (*stream_put)(struct snd_ice1712 * , struct snd_ctl_elem_value * ) ;
};
struct snd_ice1712_spdif {
   unsigned char cs8403_bits ;
   unsigned char cs8403_stream_bits ;
   struct snd_kcontrol *stream_ctl ;
   struct snd_ice1712_spdif_ops ops ;
};
struct snd_ice1712_card_info;
struct ice1712_gpio {
   unsigned int direction ;
   unsigned int write_mask ;
   unsigned int saved[2U] ;
   void (*set_mask)(struct snd_ice1712 * , unsigned int ) ;
   unsigned int (*get_mask)(struct snd_ice1712 * ) ;
   void (*set_dir)(struct snd_ice1712 * , unsigned int ) ;
   unsigned int (*get_dir)(struct snd_ice1712 * ) ;
   void (*set_data)(struct snd_ice1712 * , unsigned int ) ;
   unsigned int (*get_data)(struct snd_ice1712 * ) ;
   void (*set_pro_rate)(struct snd_ice1712 * , unsigned int ) ;
   void (*i2s_mclk_changed)(struct snd_ice1712 * ) ;
};
struct snd_ice1712 {
   unsigned long conp_dma_size ;
   unsigned long conc_dma_size ;
   unsigned long prop_dma_size ;
   unsigned long proc_dma_size ;
   int irq ;
   unsigned long port ;
   unsigned long ddma_port ;
   unsigned long dmapath_port ;
   unsigned long profi_port ;
   struct pci_dev *pci ;
   struct snd_card *card ;
   struct snd_pcm *pcm ;
   struct snd_pcm *pcm_ds ;
   struct snd_pcm *pcm_pro ;
   struct snd_pcm_substream *playback_con_substream ;
   struct snd_pcm_substream *playback_con_substream_ds[6U] ;
   struct snd_pcm_substream *capture_con_substream ;
   struct snd_pcm_substream *playback_pro_substream ;
   struct snd_pcm_substream *capture_pro_substream ;
   unsigned int playback_pro_size ;
   unsigned int capture_pro_size ;
   unsigned int playback_con_virt_addr[6U] ;
   unsigned int playback_con_active_buf[6U] ;
   unsigned int capture_con_virt_addr ;
   unsigned int ac97_ext_id ;
   struct snd_ac97 *ac97 ;
   struct snd_rawmidi *rmidi[2U] ;
   spinlock_t reg_lock ;
   struct snd_info_entry *proc_entry ;
   struct snd_ice1712_eeprom eeprom ;
   struct snd_ice1712_card_info *card_info ;
   unsigned int pro_volumes[20U] ;
   unsigned char omni : 1 ;
   unsigned char dxr_enable : 1 ;
   unsigned char vt1724 : 1 ;
   unsigned char vt1720 : 1 ;
   unsigned char has_spdif : 1 ;
   unsigned char force_pdma4 : 1 ;
   unsigned char force_rdma1 : 1 ;
   unsigned char midi_output : 1 ;
   unsigned char midi_input : 1 ;
   unsigned char own_routing : 1 ;
   unsigned int num_total_dacs ;
   unsigned int num_total_adcs ;
   unsigned int cur_rate ;
   struct mutex open_mutex ;
   struct snd_pcm_substream *pcm_reserved[4U] ;
   struct snd_pcm_hw_constraint_list *hw_rates ;
   unsigned int akm_codecs ;
   struct snd_akm4xxx *akm ;
   struct snd_ice1712_spdif spdif ;
   struct mutex i2c_mutex ;
   struct snd_i2c_bus *i2c ;
   struct snd_i2c_device *cs8427 ;
   unsigned int cs8427_timeout ;
   struct ice1712_gpio gpio ;
   struct mutex gpio_mutex ;
   void *spec ;
   int pro_rate_default ;
   int (*is_spdif_master)(struct snd_ice1712 * ) ;
   unsigned int (*get_rate)(struct snd_ice1712 * ) ;
   void (*set_rate)(struct snd_ice1712 * , unsigned int ) ;
   unsigned char (*set_mclk)(struct snd_ice1712 * , unsigned int ) ;
   int (*set_spdif_clock)(struct snd_ice1712 * , int ) ;
   int (*get_spdif_master_type)(struct snd_ice1712 * ) ;
   char const * const *ext_clock_names ;
   int ext_clock_count ;
   void (*pro_open)(struct snd_ice1712 * , struct snd_pcm_substream * ) ;
   int (*pm_suspend)(struct snd_ice1712 * ) ;
   int (*pm_resume)(struct snd_ice1712 * ) ;
   unsigned char pm_suspend_enabled : 1 ;
   unsigned char pm_saved_is_spdif_master : 1 ;
   unsigned int pm_saved_spdif_ctrl ;
   unsigned char pm_saved_spdif_cfg ;
   unsigned int pm_saved_route ;
};
struct snd_ice1712_card_info {
   unsigned int subvendor ;
   char const *name ;
   char const *model ;
   char const *driver ;
   int (*chip_init)(struct snd_ice1712 * ) ;
   void (*chip_exit)(struct snd_ice1712 * ) ;
   int (*build_controls)(struct snd_ice1712 * ) ;
   unsigned char no_mpu401 : 1 ;
   unsigned int mpu401_1_info_flags ;
   unsigned int mpu401_2_info_flags ;
   char const *mpu401_1_name ;
   char const *mpu401_2_name ;
   unsigned int const eeprom_size ;
   unsigned char const *eeprom_data ;
};
struct vt1724_pcm_reg {
   unsigned int addr ;
   unsigned int size ;
   unsigned int count ;
   unsigned int start ;
};
struct ldv_struct_free_irq_40 {
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
struct ldv_struct_pci_instance_1 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_platform_instance_3 {
   int signal_pending ;
};
struct ldv_struct_timer_instance_38 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
struct snd_wm8776;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
enum hrtimer_restart;
enum hrtimer_restart;
typedef void ak4114_write_t(void * , unsigned char , unsigned char );
typedef unsigned char ak4114_read_t(void * , unsigned char );
struct ak4114 {
   struct snd_card *card ;
   ak4114_write_t *write ;
   ak4114_read_t *read ;
   void *private_data ;
   atomic_t wq_processing ;
   struct mutex reinit_mutex ;
   spinlock_t lock ;
   unsigned char regmap[6U] ;
   unsigned char txcsb[5U] ;
   struct snd_kcontrol *kctls[15U] ;
   struct snd_pcm_substream *playback_substream ;
   struct snd_pcm_substream *capture_substream ;
   unsigned long parity_errors ;
   unsigned long v_bit_errors ;
   unsigned long qcrc_errors ;
   unsigned long ccrc_errors ;
   unsigned char rcs0 ;
   unsigned char rcs1 ;
   struct delayed_work work ;
   unsigned int check_flags ;
   void *change_callback_private ;
   void (*change_callback)(struct ak4114 * , unsigned char , unsigned char ) ;
};
struct snd_pt2258 {
   struct snd_card *card ;
   struct snd_i2c_bus *i2c_bus ;
   struct snd_i2c_device *i2c_dev ;
   unsigned char volume[6U] ;
   int mute ;
};
struct snd_akm4xxx_ops {
   void (*set_rate_val)(struct snd_akm4xxx * , unsigned int ) ;
};
struct snd_ak4xxx_private {
   unsigned char cif : 1 ;
   unsigned char caddr ;
   unsigned int data_mask ;
   unsigned int clk_mask ;
   unsigned int cs_mask ;
   unsigned int cs_addr ;
   unsigned int cs_none ;
   unsigned int add_flags ;
   unsigned int mask_flags ;
   struct snd_akm4xxx_ops ops ;
};
struct revo51_spec {
   struct snd_i2c_device *dev ;
   struct snd_pt2258 *pt2258 ;
   struct ak4114 *ak4114 ;
};
enum hrtimer_restart;
struct aureon_spec {
   unsigned short stac9744[64U] ;
   unsigned int cs8415_mux ;
   unsigned short master[2U] ;
   unsigned short vol[8U] ;
   unsigned char pca9554_out ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct prodigy192_spec {
   struct ak4114 *ak4114 ;
   struct mutex mute_mutex ;
};
enum hrtimer_restart;
struct prodigy_hifi_spec {
   unsigned short master[2U] ;
   unsigned short vol[8U] ;
};
enum hrtimer_restart;
struct juli_spec {
   struct ak4114 *ak4114 ;
   unsigned char analog : 1 ;
};
enum hrtimer_restart;
struct phase28_spec {
   unsigned short master[2U] ;
   unsigned short vol[8U] ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct __anonstruct_vol_237 {
   unsigned char ch1 ;
   unsigned char ch2 ;
};
struct se_spec {
   struct __anonstruct_vol_237 vol[8U] ;
};
enum ldv_26184 {
    WM8766 = 0,
    WM8776in = 1,
    WM8776out = 2,
    WM8776sel = 3,
    WM8776agc = 4,
    WM8776afl = 5
} ;
enum ldv_26185 {
    VOLUME1 = 0,
    VOLUME2 = 1,
    BOOLEAN = 2,
    ENUM = 3
} ;
struct se200pci_control {
   char const *name ;
   enum ldv_26184 target ;
   enum ldv_26185 type ;
   int ch ;
   char const * const *member ;
   char const *comment ;
};
enum hrtimer_restart;
struct snd_wm8776 {
   unsigned char addr ;
   unsigned short regs[24U] ;
   unsigned char volumes[3U][2U] ;
   unsigned int switch_bits ;
};
struct snd_maya44 {
   struct snd_ice1712 *ice ;
   struct snd_wm8776 wm[2U] ;
   struct mutex mutex ;
};
struct maya_vol_info {
   unsigned int maxval ;
   unsigned char regs[2U] ;
   unsigned short mask ;
   unsigned short offset ;
   unsigned short mute ;
   unsigned short update ;
   unsigned char mux_bits[2U] ;
};
enum hrtimer_restart;
typedef void ak4113_write_t(void * , unsigned char , unsigned char );
typedef unsigned char ak4113_read_t(void * , unsigned char );
struct ak4113 {
   struct snd_card *card ;
   ak4113_write_t *write ;
   ak4113_read_t *read ;
   void *private_data ;
   atomic_t wq_processing ;
   struct mutex reinit_mutex ;
   spinlock_t lock ;
   unsigned char regmap[7U] ;
   struct snd_kcontrol *kctls[13U] ;
   struct snd_pcm_substream *substream ;
   unsigned long parity_errors ;
   unsigned long v_bit_errors ;
   unsigned long qcrc_errors ;
   unsigned long ccrc_errors ;
   unsigned char rcs0 ;
   unsigned char rcs1 ;
   unsigned char rcs2 ;
   struct delayed_work work ;
   unsigned int check_flags ;
   void *change_callback_private ;
   void (*change_callback)(struct ak4113 * , unsigned char , unsigned char ) ;
};
struct qtet_spec {
   struct ak4113 *ak4113 ;
   unsigned int scr ;
   unsigned int mcr ;
   unsigned int cpld ;
};
struct qtet_kcontrol_private {
   unsigned int bit ;
   void (*set_register)(struct snd_ice1712 * , unsigned int ) ;
   unsigned int (*get_register)(struct snd_ice1712 * ) ;
   char const *texts[2U] ;
};
enum hrtimer_restart;
struct snd_wm8766;
struct snd_wm8766_ops {
   void (*write)(struct snd_wm8766 * , u16 , u16 ) ;
};
struct snd_wm8766_ctl {
   struct snd_kcontrol *kctl ;
   char const *name ;
   snd_ctl_elem_type_t type ;
   char const * const enum_names[16U] ;
   unsigned int const *tlv ;
   u16 reg1 ;
   u16 reg2 ;
   u16 mask1 ;
   u16 mask2 ;
   u16 min ;
   u16 max ;
   u16 flags ;
   void (*set)(struct snd_wm8766 * , u16 , u16 ) ;
   void (*get)(struct snd_wm8766 * , u16 * , u16 * ) ;
};
enum snd_wm8766_agc_mode {
    WM8766_AGC_OFF = 0,
    WM8766_AGC_LIM = 1,
    WM8766_AGC_ALC = 2
} ;
struct snd_wm8766 {
   struct snd_card *card ;
   struct snd_wm8766_ctl ctl[14U] ;
   enum snd_wm8766_agc_mode agc_mode ;
   struct snd_wm8766_ops ops ;
   u16 regs[16U] ;
};
struct snd_wm8776_ops {
   void (*write)(struct snd_wm8776___0 * , u8 , u8 ) ;
};
struct snd_wm8776_ctl {
   char const *name ;
   snd_ctl_elem_type_t type ;
   char const * const enum_names[16U] ;
   unsigned int const *tlv ;
   u16 reg1 ;
   u16 reg2 ;
   u16 mask1 ;
   u16 mask2 ;
   u16 min ;
   u16 max ;
   u16 flags ;
   void (*set)(struct snd_wm8776___0 * , u16 , u16 ) ;
   void (*get)(struct snd_wm8776___0 * , u16 * , u16 * ) ;
};
enum snd_wm8776_agc_mode {
    WM8776_AGC_OFF = 0,
    WM8776_AGC_LIM = 1,
    WM8776_AGC_ALC_R = 2,
    WM8776_AGC_ALC_L = 3,
    WM8776_AGC_ALC_STEREO = 4
} ;
struct snd_wm8776___0 {
   struct snd_card *card ;
   struct snd_wm8776_ctl ctl[32U] ;
   enum snd_wm8776_agc_mode agc_mode ;
   struct snd_wm8776_ops ops ;
   u16 regs[23U] ;
};
struct psc724_spec {
   struct snd_wm8766 wm8766 ;
   struct snd_wm8776___0 wm8776 ;
   bool mute_all ;
   bool jack_detect ;
   struct snd_ice1712 *ice ;
   struct delayed_work hp_work ;
   bool hp_connected ;
};
struct psc724_control {
   char const *name ;
   void (*set)(struct snd_ice1712 * , bool ) ;
   bool (*get)(struct snd_ice1712 * ) ;
};
enum hrtimer_restart;
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
struct dma_chan;
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
void ldv_linux_drivers_base_class_check_final_state(void) ;
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
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
int ldv_undef_int(void) ;
static void ldv_ldv_initialize_170(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_167(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_171(void) ;
static void ldv_ldv_pre_probe_173(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_172(int retval ) ;
static int ldv_ldv_post_probe_174(int retval ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_168(void) ;
static void ldv_ldv_check_final_state_169(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
static void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_126(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_132(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_138(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_157(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_159(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_i2c_mutex_of_snd_ice1712(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_i2c_mutex_of_snd_ice1712(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_open_mutex_of_snd_ice1712(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_snd_ice1712(struct mutex *lock ) ;
extern struct module __this_module ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strcat(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_106(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_108(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_117(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_134(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_reg_lock_of_snd_ice1712(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_reg_lock_of_snd_ice1712(void) ;
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_124(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_125(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_127(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_133(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_139(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_140(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_158(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_160(struct mutex *ldv_func_arg1 ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_110(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_110(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_110(spinlock_t *lock ) ;
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_irq(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_111(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_111(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_111(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_111(spinlock_t *lock ) ;
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_irq(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_107(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_107(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_107(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_107(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_107(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_107(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_107(spinlock_t *lock , unsigned long flags ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port )
{
  unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outw(unsigned short value , int port )
{
  {
  __asm__ volatile ("outw %w0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned short inw(int port )
{
  unsigned short value ;
  {
  __asm__ volatile ("inw %w1, %w0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outl(unsigned int value , int port )
{
  {
  __asm__ volatile ("outl %0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned int inl(int port )
{
  unsigned int value ;
  {
  __asm__ volatile ("inl %w1, %0": "=a" (value): "Nd" (port));
  return (value);
}
}
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
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern long schedule_timeout_uninterruptible(long ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_165(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_166(struct pci_driver *ldv_func_arg1 ) ;
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
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern void synchronize_irq(unsigned int ) ;
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
__inline static int ldv_request_irq_162(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_161(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
__inline static void snd_power_change_state(struct snd_card *card , unsigned int state )
{
  {
  {
  card->power_state = state;
  __wake_up(& card->power_sleep, 3U, 1, (void *)0);
  }
  return;
}
}
extern int snd_card_new(struct device * , int , char const * , struct module * ,
                        int , struct snd_card ** ) ;
extern int snd_card_disconnect(struct snd_card * ) ;
extern int snd_card_free(struct snd_card * ) ;
extern int snd_card_register(struct snd_card * ) ;
extern int snd_device_new(struct snd_card * , enum snd_device_type , void * , struct snd_device_ops * ) ;
extern int snd_iprintf(struct snd_info_buffer * , char const * , ...) ;
extern int snd_card_proc_new(struct snd_card * , char const * , struct snd_info_entry ** ) ;
__inline static void snd_info_set_text_ops(struct snd_info_entry *entry , void *private_data ,
                                           void (*read)(struct snd_info_entry * ,
                                                        struct snd_info_buffer * ) )
{
  {
  entry->private_data = private_data;
  entry->c.text.read = read;
  return;
}
}
extern int snd_rawmidi_new(struct snd_card * , char * , int , int , int , struct snd_rawmidi ** ) ;
extern void snd_rawmidi_set_ops(struct snd_rawmidi * , int , struct snd_rawmidi_ops * ) ;
extern int snd_rawmidi_receive(struct snd_rawmidi_substream * , unsigned char const * ,
                               int ) ;
extern int snd_rawmidi_transmit_empty(struct snd_rawmidi_substream * ) ;
extern int snd_rawmidi_transmit(struct snd_rawmidi_substream * , unsigned char * ,
                                int ) ;
extern struct snd_kcontrol *snd_ctl_new1(struct snd_kcontrol_new const * , void * ) ;
extern int snd_ctl_add(struct snd_card * , struct snd_kcontrol * ) ;
__inline static unsigned int snd_ctl_get_ioffidx(struct snd_kcontrol *kctl , struct snd_ctl_elem_id *id___0 )
{
  {
  return (id___0->index - kctl->id.index);
}
}
extern int snd_ctl_boolean_mono_info(struct snd_kcontrol * , struct snd_ctl_elem_info * ) ;
extern int snd_ctl_enum_info(struct snd_ctl_elem_info * , unsigned int , unsigned int ,
                             char const * const * ) ;
extern int snd_pcm_new(struct snd_card * , char const * , int , int , int , struct snd_pcm ** ) ;
extern int snd_pcm_suspend_all(struct snd_pcm * ) ;
__inline static snd_pcm_sframes_t bytes_to_frames(struct snd_pcm_runtime *runtime ,
                                                  ssize_t size )
{
  {
  return ((size * 8L) / (ssize_t )runtime->frame_bits);
}
}
__inline static ssize_t frames_to_bytes(struct snd_pcm_runtime *runtime , snd_pcm_sframes_t size )
{
  {
  return ((size * (snd_pcm_sframes_t )runtime->frame_bits) / 8L);
}
}
__inline static size_t snd_pcm_lib_buffer_bytes(struct snd_pcm_substream *substream )
{
  struct snd_pcm_runtime *runtime ;
  ssize_t tmp ;
  {
  {
  runtime = substream->runtime;
  tmp = frames_to_bytes(runtime, (snd_pcm_sframes_t )runtime->buffer_size);
  }
  return ((size_t )tmp);
}
}
__inline static size_t snd_pcm_lib_period_bytes(struct snd_pcm_substream *substream )
{
  struct snd_pcm_runtime *runtime ;
  ssize_t tmp ;
  {
  {
  runtime = substream->runtime;
  tmp = frames_to_bytes(runtime, (snd_pcm_sframes_t )runtime->period_size);
  }
  return ((size_t )tmp);
}
}
__inline static void snd_pcm_trigger_done(struct snd_pcm_substream *substream , struct snd_pcm_substream *master )
{
  {
  (substream->runtime)->trigger_master = master;
  return;
}
}
__inline static struct snd_interval const *hw_param_interval_c(struct snd_pcm_hw_params const *params ,
                                                                 snd_pcm_hw_param_t var )
{
  {
  return ((struct snd_interval const *)(& params->intervals) + ((unsigned long )var + 0xfffffffffffffff8UL));
}
}
__inline static unsigned int params_channels(struct snd_pcm_hw_params const *p )
{
  struct snd_interval const *tmp ;
  {
  {
  tmp = hw_param_interval_c(p, 10);
  }
  return ((unsigned int )tmp->min);
}
}
__inline static unsigned int params_rate(struct snd_pcm_hw_params const *p )
{
  struct snd_interval const *tmp ;
  {
  {
  tmp = hw_param_interval_c(p, 11);
  }
  return ((unsigned int )tmp->min);
}
}
__inline static unsigned int params_buffer_bytes(struct snd_pcm_hw_params const *p )
{
  struct snd_interval const *tmp ;
  {
  {
  tmp = hw_param_interval_c(p, 18);
  }
  return ((unsigned int )tmp->min);
}
}
extern int snd_pcm_hw_constraint_list(struct snd_pcm_runtime * , unsigned int , snd_pcm_hw_param_t ,
                                      struct snd_pcm_hw_constraint_list const * ) ;
extern int snd_pcm_hw_constraint_msbits(struct snd_pcm_runtime * , unsigned int ,
                                        unsigned int , unsigned int ) ;
extern int snd_pcm_hw_constraint_step(struct snd_pcm_runtime * , unsigned int , snd_pcm_hw_param_t ,
                                      unsigned long ) ;
extern void snd_pcm_set_ops(struct snd_pcm * , int , struct snd_pcm_ops const * ) ;
extern void snd_pcm_set_sync(struct snd_pcm_substream * ) ;
extern int snd_pcm_lib_ioctl(struct snd_pcm_substream * , unsigned int , void * ) ;
extern void snd_pcm_period_elapsed(struct snd_pcm_substream * ) ;
extern int snd_pcm_lib_preallocate_pages_for_all(struct snd_pcm * , int , void * ,
                                                 size_t , size_t ) ;
extern int snd_pcm_lib_malloc_pages(struct snd_pcm_substream * , size_t ) ;
extern int snd_pcm_lib_free_pages(struct snd_pcm_substream * ) ;
extern int snd_ac97_bus(struct snd_card * , int , struct snd_ac97_bus_ops * , void * ,
                        struct snd_ac97_bus ** ) ;
extern int snd_ac97_mixer(struct snd_ac97_bus * , struct snd_ac97_template * , struct snd_ac97 ** ) ;
extern void snd_ac97_suspend(struct snd_ac97 * ) ;
extern void snd_ac97_resume(struct snd_ac97 * ) ;
int snd_ice1724_get_route_val(struct snd_ice1712 *ice , int shift ) ;
int snd_ice1724_put_route_val(struct snd_ice1712 *ice , unsigned int val , int shift ) ;
extern void snd_ice1712_akm4xxx_free(struct snd_ice1712 * ) ;
unsigned char snd_vt1724_read_i2c(struct snd_ice1712 *ice , unsigned char dev , unsigned char addr ) ;
void snd_vt1724_write_i2c(struct snd_ice1712 *ice , unsigned char dev , unsigned char addr ,
                          unsigned char data ) ;
struct snd_ice1712_card_info snd_vt1724_amp_cards[3U] ;
struct snd_ice1712_card_info snd_vt1724_revo_cards[4U] ;
struct snd_ice1712_card_info snd_vt1724_aureon_cards[7U] ;
struct snd_ice1712_card_info snd_vt1720_mobo_cards[6U] ;
struct snd_ice1712_card_info snd_vt1720_pontis_cards[2U] ;
struct snd_ice1712_card_info snd_vt1724_prodigy192_cards[2U] ;
struct snd_ice1712_card_info snd_vt1724_prodigy_hifi_cards[4U] ;
struct snd_ice1712_card_info snd_vt1724_juli_cards[2U] ;
struct snd_ice1712_card_info snd_vt1724_maya44_cards[2U] ;
struct snd_ice1712_card_info snd_vt1724_phase_cards[4U] ;
struct snd_ice1712_card_info snd_vt1724_wtm_cards[2U] ;
struct snd_ice1712_card_info snd_vt1724_se_cards[3U] ;
struct snd_ice1712_card_info snd_vt1724_qtet_cards[2U] ;
struct snd_ice1712_card_info snd_vt1724_psc724_cards[2U] ;
static int index[32U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1};
static char *id[32U] =
  { (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0};
static bool enable[32U] =
  { 1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1};
static char *model[32U] ;
static struct pci_device_id const snd_vt1724_ids[2U] = { {5138U, 5924U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__snd_vt1724_ids_device_table[2U] ;
static int PRO_RATE_LOCKED ;
static int PRO_RATE_RESET = 1;
static unsigned int PRO_RATE_DEFAULT = 44100U;
static char const * const ext_clock_names[1U] = { "IEC958 In"};
__inline static int stdclock_is_spdif_master(struct snd_ice1712 *ice )
{
  unsigned char tmp ;
  {
  {
  tmp = inb((int )((unsigned int )ice->profi_port + 1U));
  }
  return (((int )tmp & 16) != 0);
}
}
__inline static int is_pro_rate_locked(struct snd_ice1712 *ice )
{
  int tmp ;
  {
  {
  tmp = (*(ice->is_spdif_master))(ice);
  }
  return (tmp == 0 && PRO_RATE_LOCKED != 0);
}
}
static unsigned char snd_vt1724_ac97_ready(struct snd_ice1712 *ice )
{
  unsigned char old_cmd ;
  int tm ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  tm = 0;
  goto ldv_36743;
  ldv_36742:
  {
  old_cmd = inb((int )((unsigned int )ice->profi_port + 5U));
  }
  if (((int )old_cmd & 48) != 0) {
    goto ldv_36741;
  } else {
  }
  if (((int )old_cmd & 8) == 0) {
    goto ldv_36741;
  } else {
  }
  return (old_cmd);
  ldv_36741:
  tm = tm + 1;
  ldv_36743: ;
  if (tm <= 65535) {
    goto ldv_36742;
  } else {
  }
  {
  descriptor.modname = "snd_ice1724";
  descriptor.function = "snd_vt1724_ac97_ready";
  descriptor.filename = "sound/pci/ice1712/ice1724.c";
  descriptor.format = "snd_vt1724_ac97_ready: timeout\n";
  descriptor.lineno = 149U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(ice->card)->dev, "snd_vt1724_ac97_ready: timeout\n");
    }
  } else {
  }
  return (old_cmd);
}
}
static int snd_vt1724_ac97_wait_bit(struct snd_ice1712 *ice , unsigned char bit )
{
  int tm ;
  unsigned char tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tm = 0;
  goto ldv_36753;
  ldv_36752:
  {
  tmp = inb((int )((unsigned int )ice->profi_port + 5U));
  }
  if ((unsigned int )((int )tmp & (int )bit) == 0U) {
    return (0);
  } else {
  }
  tm = tm + 1;
  ldv_36753: ;
  if (tm <= 65535) {
    goto ldv_36752;
  } else {
  }
  {
  descriptor.modname = "snd_ice1724";
  descriptor.function = "snd_vt1724_ac97_wait_bit";
  descriptor.filename = "sound/pci/ice1712/ice1724.c";
  descriptor.format = "snd_vt1724_ac97_wait_bit: timeout\n";
  descriptor.lineno = 159U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(ice->card)->dev, "snd_vt1724_ac97_wait_bit: timeout\n");
    }
  } else {
  }
  return (-5);
}
}
static void snd_vt1724_ac97_write(struct snd_ac97 *ac97 , unsigned short reg , unsigned short val )
{
  struct snd_ice1712 *ice ;
  unsigned char old_cmd ;
  {
  {
  ice = (struct snd_ice1712 *)ac97->private_data;
  old_cmd = snd_vt1724_ac97_ready(ice);
  old_cmd = (unsigned int )old_cmd & 252U;
  old_cmd = (int )old_cmd | (int )((unsigned char )ac97->num);
  outb((int )((unsigned char )reg), (int )((unsigned int )ice->profi_port + 4U));
  outw((int )val, (int )((unsigned int )ice->profi_port + 6U));
  outb((int )((unsigned int )old_cmd | 32U), (int )((unsigned int )ice->profi_port + 5U));
  snd_vt1724_ac97_wait_bit(ice, 32);
  }
  return;
}
}
static unsigned short snd_vt1724_ac97_read(struct snd_ac97 *ac97 , unsigned short reg )
{
  struct snd_ice1712 *ice ;
  unsigned char old_cmd ;
  int tmp ;
  unsigned short tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)ac97->private_data;
  old_cmd = snd_vt1724_ac97_ready(ice);
  old_cmd = (unsigned int )old_cmd & 252U;
  old_cmd = (int )old_cmd | (int )((unsigned char )ac97->num);
  outb((int )((unsigned char )reg), (int )((unsigned int )ice->profi_port + 4U));
  outb((int )((unsigned int )old_cmd | 16U), (int )((unsigned int )ice->profi_port + 5U));
  tmp = snd_vt1724_ac97_wait_bit(ice, 16);
  }
  if (tmp < 0) {
    return (65535U);
  } else {
  }
  {
  tmp___0 = inw((int )((unsigned int )ice->profi_port + 6U));
  }
  return (tmp___0);
}
}
static void snd_vt1724_set_gpio_dir(struct snd_ice1712 *ice , unsigned int data )
{
  {
  {
  outl(data, (int )((unsigned int )ice->port + 24U));
  inw((int )((unsigned int )ice->port + 24U));
  }
  return;
}
}
static unsigned int snd_vt1724_get_gpio_dir(struct snd_ice1712 *ice )
{
  unsigned int tmp ;
  {
  {
  tmp = inl((int )((unsigned int )ice->port + 24U));
  }
  return (tmp);
}
}
static void snd_vt1724_set_gpio_mask(struct snd_ice1712 *ice , unsigned int data )
{
  {
  {
  outw((int )((unsigned short )data), (int )((unsigned int )ice->port + 22U));
  }
  if ((unsigned int )*((unsigned char *)ice + 504UL) == 0U) {
    {
    outb((int )((unsigned char )(data >> 16)), (int )((unsigned int )ice->port + 31U));
    }
  } else {
  }
  {
  inw((int )((unsigned int )ice->port + 22U));
  }
  return;
}
}
static unsigned int snd_vt1724_get_gpio_mask(struct snd_ice1712 *ice )
{
  unsigned int mask ;
  unsigned char tmp ;
  unsigned short tmp___0 ;
  {
  if ((unsigned int )*((unsigned char *)ice + 504UL) == 0U) {
    {
    tmp = inb((int )((unsigned int )ice->port + 31U));
    mask = (unsigned int )tmp;
    }
  } else {
    mask = 0U;
  }
  {
  tmp___0 = inw((int )((unsigned int )ice->port + 22U));
  mask = (mask << 16) | (unsigned int )tmp___0;
  }
  return (mask);
}
}
static void snd_vt1724_set_gpio_data(struct snd_ice1712 *ice , unsigned int data )
{
  {
  {
  outw((int )((unsigned short )data), (int )((unsigned int )ice->port + 20U));
  }
  if ((unsigned int )*((unsigned char *)ice + 504UL) == 0U) {
    {
    outb((int )((unsigned char )(data >> 16)), (int )((unsigned int )ice->port + 30U));
    }
  } else {
  }
  {
  inw((int )((unsigned int )ice->port + 20U));
  }
  return;
}
}
static unsigned int snd_vt1724_get_gpio_data(struct snd_ice1712 *ice )
{
  unsigned int data ;
  unsigned char tmp ;
  unsigned short tmp___0 ;
  {
  if ((unsigned int )*((unsigned char *)ice + 504UL) == 0U) {
    {
    tmp = inb((int )((unsigned int )ice->port + 30U));
    data = (unsigned int )tmp;
    }
  } else {
    data = 0U;
  }
  {
  tmp___0 = inw((int )((unsigned int )ice->port + 20U));
  data = (data << 16) | (unsigned int )tmp___0;
  }
  return (data);
}
}
static void vt1724_midi_clear_rx(struct snd_ice1712 *ice )
{
  unsigned int count ;
  unsigned char tmp ;
  {
  {
  tmp = inb((int )((unsigned int )ice->port + 11U));
  count = (unsigned int )tmp;
  }
  goto ldv_36798;
  ldv_36797:
  {
  inb((int )((unsigned int )ice->port + 12U));
  count = count - 1U;
  }
  ldv_36798: ;
  if (count != 0U) {
    goto ldv_36797;
  } else {
  }
  return;
}
}
__inline static struct snd_rawmidi_substream *get_rawmidi_substream(struct snd_ice1712 *ice ,
                                                                    unsigned int stream )
{
  struct list_head const *__mptr ;
  {
  __mptr = (struct list_head const *)(ice->rmidi[0])->streams[stream].substreams.next;
  return ((struct snd_rawmidi_substream *)__mptr);
}
}
static void enable_midi_irq(struct snd_ice1712 *ice , u8 flag , int enable___0 ) ;
static void vt1724_midi_write(struct snd_ice1712 *ice )
{
  struct snd_rawmidi_substream *s ;
  int count ;
  int i ;
  u8 buffer[32U] ;
  unsigned char tmp ;
  int tmp___0 ;
  {
  {
  s = get_rawmidi_substream(ice, 0U);
  tmp = inb((int )((unsigned int )ice->port + 10U));
  count = 31 - (int )tmp;
  }
  if (count > 0) {
    {
    count = snd_rawmidi_transmit(s, (unsigned char *)(& buffer), count);
    i = 0;
    }
    goto ldv_36818;
    ldv_36817:
    {
    outb((int )buffer[i], (int )((unsigned int )ice->port + 12U));
    i = i + 1;
    }
    ldv_36818: ;
    if (i < count) {
      goto ldv_36817;
    } else {
    }
  } else {
  }
  {
  tmp___0 = snd_rawmidi_transmit_empty(s);
  enable_midi_irq(ice, 32, tmp___0 == 0);
  }
  return;
}
}
static void vt1724_midi_read(struct snd_ice1712 *ice )
{
  struct snd_rawmidi_substream *s ;
  int count ;
  int i ;
  u8 buffer[32U] ;
  unsigned char tmp ;
  int _min1 ;
  int _min2 ;
  {
  {
  s = get_rawmidi_substream(ice, 1U);
  tmp = inb((int )((unsigned int )ice->port + 11U));
  count = (int )tmp;
  }
  if (count > 0) {
    _min1 = count;
    _min2 = 32;
    count = _min1 < _min2 ? _min1 : _min2;
    i = 0;
    goto ldv_36831;
    ldv_36830:
    {
    buffer[i] = inb((int )((unsigned int )ice->port + 12U));
    i = i + 1;
    }
    ldv_36831: ;
    if (i < count) {
      goto ldv_36830;
    } else {
    }
    {
    snd_rawmidi_receive(s, (unsigned char const *)(& buffer), count);
    }
  } else {
  }
  return;
}
}
static void enable_midi_irq(struct snd_ice1712 *ice , u8 flag , int enable___0 )
{
  u8 mask ;
  unsigned char tmp ;
  {
  {
  tmp = inb((int )((unsigned int )ice->port + 1U));
  mask = tmp;
  }
  if (enable___0 != 0) {
    mask = (u8 )((int )((signed char )mask) & ~ ((int )((signed char )flag)));
  } else {
    mask = (u8 )((int )mask | (int )flag);
  }
  {
  outb((int )mask, (int )((unsigned int )ice->port + 1U));
  }
  return;
}
}
static void vt1724_enable_midi_irq(struct snd_rawmidi_substream *substream , u8 flag ,
                                   int enable___0 )
{
  struct snd_ice1712 *ice ;
  {
  {
  ice = (struct snd_ice1712 *)(substream->rmidi)->private_data;
  ldv_spin_lock_irq_104(& ice->reg_lock);
  enable_midi_irq(ice, (int )flag, enable___0);
  ldv_spin_unlock_irq_105(& ice->reg_lock);
  }
  return;
}
}
static int vt1724_midi_output_open(struct snd_rawmidi_substream *s )
{
  {
  return (0);
}
}
static int vt1724_midi_output_close(struct snd_rawmidi_substream *s )
{
  {
  return (0);
}
}
static void vt1724_midi_output_trigger(struct snd_rawmidi_substream *s , int up___0 )
{
  struct snd_ice1712 *ice ;
  unsigned long flags ;
  {
  {
  ice = (struct snd_ice1712 *)(s->rmidi)->private_data;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_106(& ice->reg_lock);
  }
  if (up___0 != 0) {
    {
    ice->midi_output = 1U;
    vt1724_midi_write(ice);
    }
  } else {
    {
    ice->midi_output = 0U;
    enable_midi_irq(ice, 32, 0);
    }
  }
  {
  ldv_spin_unlock_irqrestore_107(& ice->reg_lock, flags);
  }
  return;
}
}
static void vt1724_midi_output_drain(struct snd_rawmidi_substream *s )
{
  struct snd_ice1712 *ice ;
  unsigned long timeout ;
  unsigned long tmp ;
  unsigned char tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)(s->rmidi)->private_data;
  vt1724_enable_midi_irq(s, 32, 0);
  tmp = msecs_to_jiffies(15U);
  timeout = (unsigned long )jiffies + tmp;
  }
  ldv_36869:
  {
  tmp___0 = inb((int )((unsigned int )ice->port + 13U));
  }
  if (((int )tmp___0 & 2) != 0) {
    goto ldv_36862;
  } else {
  }
  {
  schedule_timeout_uninterruptible(1L);
  }
  if ((long )((unsigned long )jiffies - timeout) < 0L) {
    goto ldv_36869;
  } else {
  }
  ldv_36862: ;
  return;
}
}
static struct snd_rawmidi_ops vt1724_midi_output_ops = {& vt1724_midi_output_open, & vt1724_midi_output_close, & vt1724_midi_output_trigger,
    & vt1724_midi_output_drain};
static int vt1724_midi_input_open(struct snd_rawmidi_substream *s )
{
  {
  {
  vt1724_midi_clear_rx((struct snd_ice1712 *)(s->rmidi)->private_data);
  vt1724_enable_midi_irq(s, 128, 1);
  }
  return (0);
}
}
static int vt1724_midi_input_close(struct snd_rawmidi_substream *s )
{
  {
  {
  vt1724_enable_midi_irq(s, 128, 0);
  }
  return (0);
}
}
static void vt1724_midi_input_trigger(struct snd_rawmidi_substream *s , int up___0 )
{
  struct snd_ice1712 *ice ;
  unsigned long flags ;
  {
  {
  ice = (struct snd_ice1712 *)(s->rmidi)->private_data;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_108(& ice->reg_lock);
  }
  if (up___0 != 0) {
    {
    ice->midi_input = 1U;
    vt1724_midi_read(ice);
    }
  } else {
    ice->midi_input = 0U;
  }
  {
  ldv_spin_unlock_irqrestore_107(& ice->reg_lock, flags);
  }
  return;
}
}
static struct snd_rawmidi_ops vt1724_midi_input_ops = {& vt1724_midi_input_open, & vt1724_midi_input_close, & vt1724_midi_input_trigger,
    0};
static irqreturn_t snd_vt1724_interrupt(int irq , void *dev_id )
{
  struct snd_ice1712 *ice ;
  unsigned char status ;
  unsigned char status_mask ;
  int handled ;
  int timeout ;
  unsigned char mtstat ;
  unsigned char tmp ;
  unsigned char fstat ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  ice = (struct snd_ice1712 *)dev_id;
  status_mask = 176U;
  handled = 0;
  timeout = 0;
  ldv_36896:
  {
  status = inb((int )((unsigned int )ice->port + 2U));
  status = (int )status & (int )status_mask;
  }
  if ((unsigned int )status == 0U) {
    goto ldv_36893;
  } else {
  }
  {
  ldv_spin_lock_110(& ice->reg_lock);
  timeout = timeout + 1;
  }
  if (timeout > 10) {
    {
    status = inb((int )((unsigned int )ice->port + 2U));
    dev_err((struct device const *)(ice->card)->dev, "Too long irq loop, status = 0x%x\n",
            (int )status);
    }
    if (((int )status & 32) != 0) {
      {
      dev_err((struct device const *)(ice->card)->dev, "Disabling MPU_TX\n");
      enable_midi_irq(ice, 32, 0);
      }
    } else {
    }
    {
    ldv_spin_unlock_111(& ice->reg_lock);
    }
    goto ldv_36893;
  } else {
  }
  handled = 1;
  if (((int )status & 32) != 0) {
    if ((unsigned int )*((unsigned char *)ice + 504UL) != 0U) {
      {
      vt1724_midi_write(ice);
      }
    } else {
      {
      enable_midi_irq(ice, 32, 0);
      }
    }
    status_mask = (unsigned int )status_mask & 223U;
  } else {
  }
  if ((int )((signed char )status) < 0) {
    if ((unsigned int )*((unsigned char *)ice + 505UL) != 0U) {
      {
      vt1724_midi_read(ice);
      }
    } else {
      {
      vt1724_midi_clear_rx(ice);
      }
    }
  } else {
  }
  {
  outb((int )status, (int )((unsigned int )ice->port + 2U));
  ldv_spin_unlock_111(& ice->reg_lock);
  }
  if (((int )status & 16) != 0) {
    {
    tmp = inb((int )ice->profi_port);
    mtstat = tmp;
    }
    if ((int )mtstat & 1) {
      if ((unsigned long )ice->playback_pro_substream != (unsigned long )((struct snd_pcm_substream *)0)) {
        {
        snd_pcm_period_elapsed(ice->playback_pro_substream);
        }
      } else {
      }
    } else {
    }
    if (((int )mtstat & 2) != 0) {
      if ((unsigned long )ice->capture_pro_substream != (unsigned long )((struct snd_pcm_substream *)0)) {
        {
        snd_pcm_period_elapsed(ice->capture_pro_substream);
        }
      } else {
      }
    } else {
    }
    if (((int )mtstat & 16) != 0) {
      if ((unsigned long )ice->playback_con_substream_ds[0] != (unsigned long )((struct snd_pcm_substream *)0)) {
        {
        snd_pcm_period_elapsed(ice->playback_con_substream_ds[0]);
        }
      } else {
      }
    } else {
    }
    if (((int )mtstat & 32) != 0) {
      if ((unsigned long )ice->playback_con_substream_ds[1] != (unsigned long )((struct snd_pcm_substream *)0)) {
        {
        snd_pcm_period_elapsed(ice->playback_con_substream_ds[1]);
        }
      } else {
      }
    } else {
    }
    if (((int )mtstat & 64) != 0) {
      if ((unsigned long )ice->playback_con_substream_ds[2] != (unsigned long )((struct snd_pcm_substream *)0)) {
        {
        snd_pcm_period_elapsed(ice->playback_con_substream_ds[2]);
        }
      } else {
      }
    } else {
    }
    if ((int )((signed char )mtstat) < 0) {
      if ((unsigned long )ice->playback_con_substream != (unsigned long )((struct snd_pcm_substream *)0)) {
        {
        snd_pcm_period_elapsed(ice->playback_con_substream);
        }
      } else {
      }
    } else {
    }
    if (((int )mtstat & 4) != 0) {
      if ((unsigned long )ice->capture_con_substream != (unsigned long )((struct snd_pcm_substream *)0)) {
        {
        snd_pcm_period_elapsed(ice->capture_con_substream);
        }
      } else {
      }
    } else {
    }
    {
    outb((int )mtstat, (int )ice->profi_port);
    }
    if (((int )mtstat & 8) != 0) {
      {
      tmp___0 = inb((int )((unsigned int )ice->profi_port + 26U));
      fstat = tmp___0;
      outb((int )fstat, (int )((unsigned int )ice->profi_port + 26U));
      tmp___1 = inb((int )((unsigned int )ice->profi_port + 3U));
      outb((int )((unsigned int )tmp___1 | 8U), (int )((unsigned int )ice->profi_port + 3U));
      }
    } else {
    }
  } else {
  }
  goto ldv_36896;
  ldv_36893: ;
  return (handled != 0);
}
}
static unsigned int rates[15U] =
  { 8000U, 9600U, 11025U, 12000U,
        16000U, 22050U, 24000U, 32000U,
        44100U, 48000U, 64000U, 88200U,
        96000U, 176400U, 192000U};
static struct snd_pcm_hw_constraint_list hw_constraints_rates_96 = {13U, (unsigned int const *)(& rates), 0U};
static struct snd_pcm_hw_constraint_list hw_constraints_rates_48 = {10U, (unsigned int const *)(& rates), 0U};
static struct snd_pcm_hw_constraint_list hw_constraints_rates_192 = {15U, (unsigned int const *)(& rates), 0U};
static int snd_vt1724_pcm_trigger(struct snd_pcm_substream *substream , int cmd )
{
  struct snd_ice1712 *ice ;
  unsigned char what ;
  unsigned char old ;
  struct snd_pcm_substream *s ;
  struct list_head const *__mptr ;
  struct vt1724_pcm_reg const *reg ;
  struct list_head const *__mptr___0 ;
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  what = 0U;
  __mptr = (struct list_head const *)(substream->group)->substreams.next;
  s = (struct snd_pcm_substream *)__mptr + 0xfffffffffffffe48UL;
  goto ldv_36926;
  ldv_36925: ;
  if ((unsigned long )s->private_data == (unsigned long )((void *)ice)) {
    {
    reg = (struct vt1724_pcm_reg const *)(s->runtime)->private_data;
    what = (int )what | (int )((unsigned char )reg->start);
    snd_pcm_trigger_done(s, substream);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)s->link_list.next;
  s = (struct snd_pcm_substream *)__mptr___0 + 0xfffffffffffffe48UL;
  ldv_36926: ;
  if ((unsigned long )(& s->link_list) != (unsigned long )(& (substream->group)->substreams)) {
    goto ldv_36925;
  } else {
  }
  {
  if (cmd == 3) {
    goto case_3;
  } else {
  }
  if (cmd == 4) {
    goto case_4;
  } else {
  }
  if (cmd == 1) {
    goto case_1;
  } else {
  }
  if (cmd == 0) {
    goto case_0;
  } else {
  }
  if (cmd == 5) {
    goto case_5;
  } else {
  }
  if (cmd == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_3: ;
  case_4:
  {
  ldv_spin_lock_110(& ice->reg_lock);
  old = inb((int )((unsigned int )ice->profi_port + 27U));
  }
  if (cmd == 3) {
    old = (int )old | (int )what;
  } else {
    old = (unsigned char )((int )((signed char )old) & (int )((signed char )(~ ((int )what))));
  }
  {
  outb((int )old, (int )((unsigned int )ice->profi_port + 27U));
  ldv_spin_unlock_111(& ice->reg_lock);
  }
  goto ldv_36930;
  case_1: ;
  case_0: ;
  case_5:
  {
  ldv_spin_lock_110(& ice->reg_lock);
  old = inb((int )((unsigned int )ice->profi_port + 24U));
  }
  if (cmd == 1) {
    old = (int )old | (int )what;
  } else {
    old = (unsigned char )((int )((signed char )old) & (int )((signed char )(~ ((int )what))));
  }
  {
  outb((int )old, (int )((unsigned int )ice->profi_port + 24U));
  ldv_spin_unlock_111(& ice->reg_lock);
  }
  goto ldv_36930;
  case_6: ;
  goto ldv_36930;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_36930: ;
  return (0);
}
}
static unsigned int const stdclock_rate_list[16U] =
  { 48000U, 24000U, 12000U, 9600U,
        32000U, 16000U, 8000U, 96000U,
        44100U, 22050U, 11025U, 88200U,
        176400U, 0U, 192000U, 64000U};
static unsigned int stdclock_get_rate(struct snd_ice1712 *ice )
{
  unsigned int rate ;
  unsigned char tmp ;
  {
  {
  tmp = inb((int )((unsigned int )ice->profi_port + 1U));
  rate = stdclock_rate_list[(int )tmp & 15];
  }
  return (rate);
}
}
static void stdclock_set_rate(struct snd_ice1712 *ice , unsigned int rate )
{
  int i ;
  {
  i = 0;
  goto ldv_36949;
  ldv_36948: ;
  if ((unsigned int )stdclock_rate_list[i] == rate) {
    {
    outb((int )((unsigned char )i), (int )((unsigned int )ice->profi_port + 1U));
    }
    return;
  } else {
  }
  i = i + 1;
  ldv_36949: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_36948;
  } else {
  }
  return;
}
}
static unsigned char stdclock_set_mclk(struct snd_ice1712 *ice , unsigned int rate )
{
  unsigned char val ;
  unsigned char old ;
  {
  if ((int )((signed char )ice->eeprom.data[1]) < 0) {
    {
    old = inb((int )((unsigned int )ice->profi_port + 2U));
    val = old;
    }
    if (rate > 96000U) {
      val = (unsigned int )val | 8U;
    } else {
      val = (unsigned int )val & 247U;
    }
    if ((int )val != (int )old) {
      {
      outb((int )val, (int )((unsigned int )ice->profi_port + 2U));
      }
      return (1U);
    } else {
    }
  } else {
  }
  return (0U);
}
}
static int snd_vt1724_set_pro_rate(struct snd_ice1712 *ice , unsigned int rate , int force )
{
  unsigned long flags ;
  unsigned char mclk_change ;
  unsigned int i ;
  unsigned int old_rate ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if (rate > (unsigned int )*((ice->hw_rates)->list + (unsigned long )((ice->hw_rates)->count - 1U))) {
    return (-22);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_117(& ice->reg_lock);
  tmp = inb((int )((unsigned int )ice->profi_port + 24U));
  }
  if (((int )tmp & 247) != 0) {
    {
    ldv_spin_unlock_irqrestore_107(& ice->reg_lock, flags);
    }
    return (rate == ice->cur_rate && force == 0 ? 0 : -16);
  } else {
    {
    tmp___0 = inb((int )((unsigned int )ice->profi_port + 27U));
    }
    if (((int )tmp___0 & 247) != 0) {
      {
      ldv_spin_unlock_irqrestore_107(& ice->reg_lock, flags);
      }
      return (rate == ice->cur_rate && force == 0 ? 0 : -16);
    } else {
    }
  }
  if (force == 0) {
    {
    tmp___1 = is_pro_rate_locked(ice);
    }
    if (tmp___1 != 0) {
      {
      ldv_spin_unlock_irqrestore_107(& ice->reg_lock, flags);
      }
      return (rate == ice->cur_rate ? 0 : -16);
    } else {
    }
  } else {
  }
  if (force != 0) {
    goto _L;
  } else {
    {
    tmp___2 = (*(ice->is_spdif_master))(ice);
    }
    if (tmp___2 == 0) {
      _L:
      {
      old_rate = (*(ice->get_rate))(ice);
      }
      if (force != 0 || old_rate != rate) {
        {
        (*(ice->set_rate))(ice, rate);
        }
      } else
      if (rate == ice->cur_rate) {
        {
        ldv_spin_unlock_irqrestore_107(& ice->reg_lock, flags);
        }
        return (0);
      } else {
      }
    } else {
    }
  }
  {
  ice->cur_rate = rate;
  mclk_change = (*(ice->set_mclk))(ice, rate);
  ldv_spin_unlock_irqrestore_107(& ice->reg_lock, flags);
  }
  if ((unsigned int )mclk_change != 0U && (unsigned long )ice->gpio.i2s_mclk_changed != (unsigned long )((void (*)(struct snd_ice1712 * ))0)) {
    {
    (*(ice->gpio.i2s_mclk_changed))(ice);
    }
  } else {
  }
  if ((unsigned long )ice->gpio.set_pro_rate != (unsigned long )((void (*)(struct snd_ice1712 * ,
                                                                           unsigned int ))0)) {
    {
    (*(ice->gpio.set_pro_rate))(ice, rate);
    }
  } else {
  }
  i = 0U;
  goto ldv_36967;
  ldv_36966: ;
  if ((unsigned long )(ice->akm + (unsigned long )i)->ops.set_rate_val != (unsigned long )((void (*)(struct snd_akm4xxx * ,
                                                                                                     unsigned int ))0)) {
    {
    (*((ice->akm + (unsigned long )i)->ops.set_rate_val))(ice->akm + (unsigned long )i,
                                                          rate);
    }
  } else {
  }
  i = i + 1U;
  ldv_36967: ;
  if (i < ice->akm_codecs) {
    goto ldv_36966;
  } else {
  }
  if ((unsigned long )ice->spdif.ops.setup_rate != (unsigned long )((void (*)(struct snd_ice1712 * ,
                                                                              int ))0)) {
    {
    (*(ice->spdif.ops.setup_rate))(ice, (int )rate);
    }
  } else {
  }
  return (0);
}
}
static int snd_vt1724_pcm_hw_params(struct snd_pcm_substream *substream , struct snd_pcm_hw_params *hw_params )
{
  struct snd_ice1712 *ice ;
  int i ;
  int chs ;
  int err ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  tmp = params_channels((struct snd_pcm_hw_params const *)hw_params);
  chs = (int )tmp;
  ldv_mutex_lock_122(& ice->open_mutex);
  }
  if ((unsigned long )substream == (unsigned long )ice->playback_pro_substream) {
    chs = chs / 2 + -1;
    i = 0;
    goto ldv_36978;
    ldv_36977: ;
    if ((unsigned long )ice->pcm_reserved[i] != (unsigned long )((struct snd_pcm_substream *)0) && (unsigned long )ice->pcm_reserved[i] != (unsigned long )substream) {
      {
      ldv_mutex_unlock_123(& ice->open_mutex);
      }
      return (-16);
    } else {
    }
    ice->pcm_reserved[i] = substream;
    i = i + 1;
    ldv_36978: ;
    if (i < chs) {
      goto ldv_36977;
    } else {
    }
    goto ldv_36981;
    ldv_36980: ;
    if ((unsigned long )ice->pcm_reserved[i] == (unsigned long )substream) {
      ice->pcm_reserved[i] = (struct snd_pcm_substream *)0;
    } else {
    }
    i = i + 1;
    ldv_36981: ;
    if (i <= 2) {
      goto ldv_36980;
    } else {
    }
  } else {
    i = 0;
    goto ldv_36985;
    ldv_36984: ;
    if ((unsigned long )ice->playback_con_substream_ds[i] == (unsigned long )substream) {
      if ((unsigned long )ice->pcm_reserved[i] != (unsigned long )((struct snd_pcm_substream *)0) && (unsigned long )ice->pcm_reserved[i] != (unsigned long )substream) {
        {
        ldv_mutex_unlock_124(& ice->open_mutex);
        }
        return (-16);
      } else {
      }
      ice->pcm_reserved[i] = substream;
      goto ldv_36983;
    } else {
    }
    i = i + 1;
    ldv_36985: ;
    if (i <= 2) {
      goto ldv_36984;
    } else {
    }
    ldv_36983: ;
  }
  {
  ldv_mutex_unlock_125(& ice->open_mutex);
  tmp___0 = params_rate((struct snd_pcm_hw_params const *)hw_params);
  err = snd_vt1724_set_pro_rate(ice, tmp___0, 0);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp___1 = params_buffer_bytes((struct snd_pcm_hw_params const *)hw_params);
  tmp___2 = snd_pcm_lib_malloc_pages(substream, (size_t )tmp___1);
  }
  return (tmp___2);
}
}
static int snd_vt1724_pcm_hw_free(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  int i ;
  int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  ldv_mutex_lock_126(& ice->open_mutex);
  i = 0;
  }
  goto ldv_36992;
  ldv_36991: ;
  if ((unsigned long )ice->pcm_reserved[i] == (unsigned long )substream) {
    ice->pcm_reserved[i] = (struct snd_pcm_substream *)0;
  } else {
  }
  i = i + 1;
  ldv_36992: ;
  if (i <= 2) {
    goto ldv_36991;
  } else {
  }
  {
  ldv_mutex_unlock_127(& ice->open_mutex);
  tmp = snd_pcm_lib_free_pages(substream);
  }
  return (tmp);
}
}
static int snd_vt1724_playback_pro_prepare(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  unsigned char val ;
  unsigned int size ;
  size_t tmp ;
  size_t tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  ldv_spin_lock_irq_104(& ice->reg_lock);
  val = (unsigned char )((8U - (substream->runtime)->channels) >> 1);
  outb((int )val, (int )((unsigned int )ice->profi_port + 25U));
  outl((unsigned int )(substream->runtime)->dma_addr, (int )((unsigned int )ice->profi_port + 16U));
  tmp = snd_pcm_lib_buffer_bytes(substream);
  size = (unsigned int )(tmp >> 2) - 1U;
  outw((int )((unsigned short )size), (int )((unsigned int )ice->profi_port + 20U));
  outb((int )((unsigned char )(size >> 16)), (int )((unsigned int )ice->profi_port + 22U));
  tmp___0 = snd_pcm_lib_period_bytes(substream);
  size = (unsigned int )(tmp___0 >> 2) - 1U;
  outw((int )((unsigned short )size), (int )((unsigned int )ice->profi_port + 28U));
  outb((int )((unsigned char )(size >> 16)), (int )((unsigned int )ice->profi_port + 30U));
  ldv_spin_unlock_irq_105(& ice->reg_lock);
  }
  return (0);
}
}
static snd_pcm_uframes_t snd_vt1724_playback_pro_pointer(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  size_t ptr ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  snd_pcm_sframes_t tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  {
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  tmp = inl((int )((unsigned int )ice->profi_port + 24U));
  }
  if ((tmp & 1U) == 0U) {
    return (0UL);
  } else {
  }
  {
  tmp___0 = inl((int )((unsigned int )ice->profi_port + 20U));
  ptr = (size_t )tmp___0 & 16777215UL;
  ptr = (ptr + 1UL) << 2;
  tmp___1 = bytes_to_frames(substream->runtime, (ssize_t )ptr);
  ptr = (size_t )tmp___1;
  }
  if (ptr == 0UL) {
  } else
  if (ptr <= (substream->runtime)->buffer_size) {
    ptr = (substream->runtime)->buffer_size - ptr;
  } else {
    {
    descriptor.modname = "snd_ice1724";
    descriptor.function = "snd_vt1724_playback_pro_pointer";
    descriptor.filename = "sound/pci/ice1712/ice1724.c";
    descriptor.format = "invalid ptr %d (size=%d)\n";
    descriptor.lineno = 844U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(ice->card)->dev, "invalid ptr %d (size=%d)\n",
                        (int )ptr, (int )(substream->runtime)->buffer_size);
      }
    } else {
    }
    ptr = 0UL;
  }
  return (ptr);
}
}
static int snd_vt1724_pcm_prepare(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  struct vt1724_pcm_reg const *reg ;
  size_t tmp ;
  size_t tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  reg = (struct vt1724_pcm_reg const *)(substream->runtime)->private_data;
  ldv_spin_lock_irq_104(& ice->reg_lock);
  outl((unsigned int )(substream->runtime)->dma_addr, (int )((unsigned int )ice->profi_port + (unsigned int )reg->addr));
  tmp = snd_pcm_lib_buffer_bytes(substream);
  outw((int )((unsigned int )((unsigned short )(tmp >> 2)) - 1U), (int )((unsigned int )ice->profi_port + (unsigned int )reg->size));
  tmp___0 = snd_pcm_lib_period_bytes(substream);
  outw((int )((unsigned int )((unsigned short )(tmp___0 >> 2)) - 1U), (int )((unsigned int )ice->profi_port + (unsigned int )reg->count));
  ldv_spin_unlock_irq_105(& ice->reg_lock);
  }
  return (0);
}
}
static snd_pcm_uframes_t snd_vt1724_pcm_pointer(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  struct vt1724_pcm_reg const *reg ;
  size_t ptr ;
  unsigned int tmp ;
  unsigned short tmp___0 ;
  snd_pcm_sframes_t tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  {
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  reg = (struct vt1724_pcm_reg const *)(substream->runtime)->private_data;
  tmp = inl((int )((unsigned int )ice->profi_port + 24U));
  }
  if ((tmp & (unsigned int )reg->start) == 0U) {
    return (0UL);
  } else {
  }
  {
  tmp___0 = inw((int )((unsigned int )ice->profi_port + (unsigned int )reg->size));
  ptr = (size_t )tmp___0;
  ptr = (ptr + 1UL) << 2;
  tmp___1 = bytes_to_frames(substream->runtime, (ssize_t )ptr);
  ptr = (size_t )tmp___1;
  }
  if (ptr == 0UL) {
  } else
  if (ptr <= (substream->runtime)->buffer_size) {
    ptr = (substream->runtime)->buffer_size - ptr;
  } else {
    {
    descriptor.modname = "snd_ice1724";
    descriptor.function = "snd_vt1724_pcm_pointer";
    descriptor.filename = "sound/pci/ice1712/ice1724.c";
    descriptor.format = "invalid ptr %d (size=%d)\n";
    descriptor.lineno = 888U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(ice->card)->dev, "invalid ptr %d (size=%d)\n",
                        (int )ptr, (int )(substream->runtime)->buffer_size);
      }
    } else {
    }
    ptr = 0UL;
  }
  return (ptr);
}
}
static struct vt1724_pcm_reg const vt1724_pdma0_reg = {16U, 20U, 28U, 1U};
static struct vt1724_pcm_reg const vt1724_pdma4_reg = {64U, 68U, 70U, 128U};
static struct vt1724_pcm_reg const vt1724_rdma0_reg = {32U, 36U, 38U, 2U};
static struct vt1724_pcm_reg const vt1724_rdma1_reg = {48U, 52U, 54U, 4U};
static struct snd_pcm_hardware const snd_vt1724_playback_pro =
     {4784387U, 1024ULL, 2147491838U, 8000U, 192000U, 2U, 8U, 2097152UL, 64UL, 2097152UL,
    2U, 1024U, 0UL};
static struct snd_pcm_hardware const snd_vt1724_spdif =
     {4784387U, 1024ULL, 7904U, 32000U, 192000U, 2U, 2U, 262144UL, 16UL, 262144UL, 2U,
    1024U, 0UL};
static struct snd_pcm_hardware const snd_vt1724_2ch_stereo =
     {4784387U, 1024ULL, 2147491838U, 8000U, 192000U, 2U, 2U, 262144UL, 16UL, 262144UL,
    2U, 1024U, 0UL};
static void set_std_hw_rates(struct snd_ice1712 *ice )
{
  {
  if ((int )((signed char )ice->eeprom.data[1]) < 0) {
    if (((int )ice->eeprom.data[2] & 8) != 0 && (unsigned int )*((unsigned char *)ice + 504UL) == 0U) {
      ice->hw_rates = & hw_constraints_rates_192;
    } else {
      ice->hw_rates = & hw_constraints_rates_96;
    }
  } else {
    ice->hw_rates = & hw_constraints_rates_48;
  }
  return;
}
}
static int set_rate_constraints(struct snd_ice1712 *ice , struct snd_pcm_substream *substream )
{
  struct snd_pcm_runtime *runtime ;
  int tmp ;
  {
  {
  runtime = substream->runtime;
  runtime->hw.rate_min = *((ice->hw_rates)->list);
  runtime->hw.rate_max = *((ice->hw_rates)->list + (unsigned long )((ice->hw_rates)->count - 1U));
  runtime->hw.rates = 2147483648U;
  tmp = snd_pcm_hw_constraint_list(runtime, 0U, 11, (struct snd_pcm_hw_constraint_list const *)ice->hw_rates);
  }
  return (tmp);
}
}
static void constrain_rate_if_locked(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  struct snd_pcm_runtime *runtime ;
  unsigned int rate ;
  int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  runtime = substream->runtime;
  tmp = is_pro_rate_locked(ice);
  }
  if (tmp != 0) {
    {
    rate = (*(ice->get_rate))(ice);
    }
    if (rate >= runtime->hw.rate_min && rate <= runtime->hw.rate_max) {
      runtime->hw.rate_min = rate;
      runtime->hw.rate_max = rate;
    } else {
    }
  } else {
  }
  return;
}
}
static int snd_vt1724_playback_pro_open(struct snd_pcm_substream *substream )
{
  struct snd_pcm_runtime *runtime ;
  struct snd_ice1712 *ice ;
  int chs ;
  int num_indeps ;
  {
  {
  runtime = substream->runtime;
  ice = (struct snd_ice1712 *)substream->private_data;
  runtime->private_data = (void *)(& vt1724_pdma0_reg);
  ice->playback_pro_substream = substream;
  runtime->hw = snd_vt1724_playback_pro;
  snd_pcm_set_sync(substream);
  snd_pcm_hw_constraint_msbits(runtime, 0U, 32U, 24U);
  set_rate_constraints(ice, substream);
  ldv_mutex_lock_132(& ice->open_mutex);
  num_indeps = (int )(ice->num_total_dacs / 2U - 1U);
  chs = 0;
  }
  goto ldv_37050;
  ldv_37049: ;
  if ((unsigned long )ice->pcm_reserved[chs] != (unsigned long )((struct snd_pcm_substream *)0)) {
    goto ldv_37048;
  } else {
  }
  chs = chs + 1;
  ldv_37050: ;
  if (chs < num_indeps) {
    goto ldv_37049;
  } else {
  }
  ldv_37048:
  chs = (chs + 1) * 2;
  runtime->hw.channels_max = (unsigned int )chs;
  if (chs > 2) {
    {
    snd_pcm_hw_constraint_step(runtime, 0U, 10, 2UL);
    }
  } else {
  }
  {
  ldv_mutex_unlock_133(& ice->open_mutex);
  snd_pcm_hw_constraint_step(runtime, 0U, 14, 32UL);
  snd_pcm_hw_constraint_step(runtime, 0U, 18, 32UL);
  constrain_rate_if_locked(substream);
  }
  if ((unsigned long )ice->pro_open != (unsigned long )((void (*)(struct snd_ice1712 * ,
                                                                  struct snd_pcm_substream * ))0)) {
    {
    (*(ice->pro_open))(ice, substream);
    }
  } else {
  }
  return (0);
}
}
static int snd_vt1724_capture_pro_open(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  struct snd_pcm_runtime *runtime ;
  {
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  runtime = substream->runtime;
  runtime->private_data = (void *)(& vt1724_rdma0_reg);
  ice->capture_pro_substream = substream;
  runtime->hw = snd_vt1724_2ch_stereo;
  snd_pcm_set_sync(substream);
  snd_pcm_hw_constraint_msbits(runtime, 0U, 32U, 24U);
  set_rate_constraints(ice, substream);
  snd_pcm_hw_constraint_step(runtime, 0U, 14, 32UL);
  snd_pcm_hw_constraint_step(runtime, 0U, 18, 32UL);
  constrain_rate_if_locked(substream);
  }
  if ((unsigned long )ice->pro_open != (unsigned long )((void (*)(struct snd_ice1712 * ,
                                                                  struct snd_pcm_substream * ))0)) {
    {
    (*(ice->pro_open))(ice, substream);
    }
  } else {
  }
  return (0);
}
}
static int snd_vt1724_playback_pro_close(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  if (PRO_RATE_RESET != 0) {
    {
    snd_vt1724_set_pro_rate(ice, (unsigned int )ice->pro_rate_default, 0);
    }
  } else {
  }
  ice->playback_pro_substream = (struct snd_pcm_substream *)0;
  return (0);
}
}
static int snd_vt1724_capture_pro_close(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  if (PRO_RATE_RESET != 0) {
    {
    snd_vt1724_set_pro_rate(ice, (unsigned int )ice->pro_rate_default, 0);
    }
  } else {
  }
  ice->capture_pro_substream = (struct snd_pcm_substream *)0;
  return (0);
}
}
static struct snd_pcm_ops snd_vt1724_playback_pro_ops =
     {& snd_vt1724_playback_pro_open, & snd_vt1724_playback_pro_close, & snd_pcm_lib_ioctl,
    & snd_vt1724_pcm_hw_params, & snd_vt1724_pcm_hw_free, & snd_vt1724_playback_pro_prepare,
    & snd_vt1724_pcm_trigger, & snd_vt1724_playback_pro_pointer, 0, 0, 0, 0, 0, 0};
static struct snd_pcm_ops snd_vt1724_capture_pro_ops =
     {& snd_vt1724_capture_pro_open, & snd_vt1724_capture_pro_close, & snd_pcm_lib_ioctl,
    & snd_vt1724_pcm_hw_params, & snd_vt1724_pcm_hw_free, & snd_vt1724_pcm_prepare,
    & snd_vt1724_pcm_trigger, & snd_vt1724_pcm_pointer, 0, 0, 0, 0, 0, 0};
static int snd_vt1724_pcm_profi(struct snd_ice1712 *ice , int device )
{
  struct snd_pcm *pcm ;
  int capt ;
  int err ;
  {
  if (((int )ice->eeprom.data[0] & 12) == 12) {
    capt = 0;
  } else {
    capt = 1;
  }
  {
  err = snd_pcm_new(ice->card, "ICE1724", device, 1, capt, & pcm);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  snd_pcm_set_ops(pcm, 0, (struct snd_pcm_ops const *)(& snd_vt1724_playback_pro_ops));
  }
  if (capt != 0) {
    {
    snd_pcm_set_ops(pcm, 1, (struct snd_pcm_ops const *)(& snd_vt1724_capture_pro_ops));
    }
  } else {
  }
  {
  pcm->private_data = (void *)ice;
  pcm->info_flags = 0U;
  strcpy((char *)(& pcm->name), "ICE1724");
  snd_pcm_lib_preallocate_pages_for_all(pcm, 2, (void *)(& (ice->pci)->dev), 262144UL,
                                        262144UL);
  ice->pcm_pro = pcm;
  }
  return (0);
}
}
static void update_spdif_bits(struct snd_ice1712 *ice , unsigned int val )
{
  unsigned char cbit ;
  unsigned char disabled ;
  {
  {
  cbit = inb((int )((unsigned int )ice->port + 7U));
  disabled = (unsigned int )cbit & 127U;
  }
  if ((int )cbit != (int )disabled) {
    {
    outb((int )disabled, (int )((unsigned int )ice->port + 7U));
    }
  } else {
  }
  {
  outw((int )((unsigned short )val), (int )((unsigned int )ice->profi_port + 60U));
  }
  if ((int )cbit != (int )disabled) {
    {
    outb((int )cbit, (int )((unsigned int )ice->port + 7U));
    }
  } else {
  }
  {
  outw((int )((unsigned short )val), (int )((unsigned int )ice->profi_port + 60U));
  }
  return;
}
}
static void update_spdif_rate(struct snd_ice1712 *ice , unsigned int rate )
{
  unsigned int val ;
  unsigned int nval ;
  unsigned long flags ;
  unsigned short tmp ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_134(& ice->reg_lock);
  tmp = inw((int )((unsigned int )ice->profi_port + 60U));
  val = (unsigned int )tmp;
  nval = val;
  nval = nval & 4294938623U;
  }
  {
  if (rate == 44100U) {
    goto case_44100;
  } else {
  }
  if (rate == 48000U) {
    goto case_48000;
  } else {
  }
  if (rate == 32000U) {
    goto case_32000;
  } else {
  }
  if (rate == 88200U) {
    goto case_88200;
  } else {
  }
  if (rate == 96000U) {
    goto case_96000;
  } else {
  }
  if (rate == 192000U) {
    goto case_192000;
  } else {
  }
  if (rate == 176400U) {
    goto case_176400;
  } else {
  }
  goto switch_break;
  case_44100: ;
  goto ldv_37087;
  case_48000:
  nval = nval | 8192U;
  goto ldv_37087;
  case_32000:
  nval = nval | 12288U;
  goto ldv_37087;
  case_88200:
  nval = nval | 16384U;
  goto ldv_37087;
  case_96000:
  nval = nval | 20480U;
  goto ldv_37087;
  case_192000:
  nval = nval | 24576U;
  goto ldv_37087;
  case_176400:
  nval = nval | 28672U;
  goto ldv_37087;
  switch_break: ;
  }
  ldv_37087: ;
  if (val != nval) {
    {
    update_spdif_bits(ice, nval);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_107(& ice->reg_lock, flags);
  }
  return;
}
}
static int snd_vt1724_playback_spdif_prepare(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  int tmp ;
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  if ((unsigned int )*((unsigned char *)ice + 504UL) == 0U) {
    {
    update_spdif_rate(ice, (substream->runtime)->rate);
    }
  } else {
  }
  {
  tmp = snd_vt1724_pcm_prepare(substream);
  }
  return (tmp);
}
}
static int snd_vt1724_playback_spdif_open(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  struct snd_pcm_runtime *runtime ;
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  runtime = substream->runtime;
  runtime->private_data = (void *)(& vt1724_pdma4_reg);
  ice->playback_con_substream = substream;
  if ((unsigned int )*((unsigned char *)ice + 504UL) != 0U) {
    {
    runtime->hw = snd_vt1724_2ch_stereo;
    set_rate_constraints(ice, substream);
    }
  } else {
    runtime->hw = snd_vt1724_spdif;
  }
  {
  snd_pcm_set_sync(substream);
  snd_pcm_hw_constraint_msbits(runtime, 0U, 32U, 24U);
  snd_pcm_hw_constraint_step(runtime, 0U, 14, 32UL);
  snd_pcm_hw_constraint_step(runtime, 0U, 18, 32UL);
  constrain_rate_if_locked(substream);
  }
  if ((unsigned long )ice->spdif.ops.open != (unsigned long )((void (*)(struct snd_ice1712 * ,
                                                                        struct snd_pcm_substream * ))0)) {
    {
    (*(ice->spdif.ops.open))(ice, substream);
    }
  } else {
  }
  return (0);
}
}
static int snd_vt1724_playback_spdif_close(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  if (PRO_RATE_RESET != 0) {
    {
    snd_vt1724_set_pro_rate(ice, (unsigned int )ice->pro_rate_default, 0);
    }
  } else {
  }
  ice->playback_con_substream = (struct snd_pcm_substream *)0;
  if ((unsigned long )ice->spdif.ops.close != (unsigned long )((void (*)(struct snd_ice1712 * ,
                                                                         struct snd_pcm_substream * ))0)) {
    {
    (*(ice->spdif.ops.close))(ice, substream);
    }
  } else {
  }
  return (0);
}
}
static int snd_vt1724_capture_spdif_open(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  struct snd_pcm_runtime *runtime ;
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  runtime = substream->runtime;
  runtime->private_data = (void *)(& vt1724_rdma1_reg);
  ice->capture_con_substream = substream;
  if ((unsigned int )*((unsigned char *)ice + 504UL) != 0U) {
    {
    runtime->hw = snd_vt1724_2ch_stereo;
    set_rate_constraints(ice, substream);
    }
  } else {
    runtime->hw = snd_vt1724_spdif;
  }
  {
  snd_pcm_set_sync(substream);
  snd_pcm_hw_constraint_msbits(runtime, 0U, 32U, 24U);
  snd_pcm_hw_constraint_step(runtime, 0U, 14, 32UL);
  snd_pcm_hw_constraint_step(runtime, 0U, 18, 32UL);
  constrain_rate_if_locked(substream);
  }
  if ((unsigned long )ice->spdif.ops.open != (unsigned long )((void (*)(struct snd_ice1712 * ,
                                                                        struct snd_pcm_substream * ))0)) {
    {
    (*(ice->spdif.ops.open))(ice, substream);
    }
  } else {
  }
  return (0);
}
}
static int snd_vt1724_capture_spdif_close(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  if (PRO_RATE_RESET != 0) {
    {
    snd_vt1724_set_pro_rate(ice, (unsigned int )ice->pro_rate_default, 0);
    }
  } else {
  }
  ice->capture_con_substream = (struct snd_pcm_substream *)0;
  if ((unsigned long )ice->spdif.ops.close != (unsigned long )((void (*)(struct snd_ice1712 * ,
                                                                         struct snd_pcm_substream * ))0)) {
    {
    (*(ice->spdif.ops.close))(ice, substream);
    }
  } else {
  }
  return (0);
}
}
static struct snd_pcm_ops snd_vt1724_playback_spdif_ops =
     {& snd_vt1724_playback_spdif_open, & snd_vt1724_playback_spdif_close, & snd_pcm_lib_ioctl,
    & snd_vt1724_pcm_hw_params, & snd_vt1724_pcm_hw_free, & snd_vt1724_playback_spdif_prepare,
    & snd_vt1724_pcm_trigger, & snd_vt1724_pcm_pointer, 0, 0, 0, 0, 0, 0};
static struct snd_pcm_ops snd_vt1724_capture_spdif_ops =
     {& snd_vt1724_capture_spdif_open, & snd_vt1724_capture_spdif_close, & snd_pcm_lib_ioctl,
    & snd_vt1724_pcm_hw_params, & snd_vt1724_pcm_hw_free, & snd_vt1724_pcm_prepare,
    & snd_vt1724_pcm_trigger, & snd_vt1724_pcm_pointer, 0, 0, 0, 0, 0, 0};
static int snd_vt1724_pcm_spdif(struct snd_ice1712 *ice , int device )
{
  char *name ;
  struct snd_pcm *pcm ;
  int play ;
  int capt ;
  int err ;
  {
  if ((unsigned int )*((unsigned char *)ice + 504UL) != 0U || ((int )ice->eeprom.data[3] & 64) != 0) {
    play = 1;
    ice->has_spdif = 1U;
  } else {
    play = 0;
  }
  if ((unsigned int )*((unsigned char *)ice + 504UL) != 0U || ((int )ice->eeprom.data[3] & 2) != 0) {
    capt = 1;
    ice->has_spdif = 1U;
  } else {
    capt = 0;
  }
  if ((play | capt) == 0) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ice + 504UL) != 0U) {
    name = (char *)"ICE1724 Secondary";
  } else {
    name = (char *)"ICE1724 IEC958";
  }
  {
  err = snd_pcm_new(ice->card, (char const *)name, device, play, capt, & pcm);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if (play != 0) {
    {
    snd_pcm_set_ops(pcm, 0, (struct snd_pcm_ops const *)(& snd_vt1724_playback_spdif_ops));
    }
  } else {
  }
  if (capt != 0) {
    {
    snd_pcm_set_ops(pcm, 1, (struct snd_pcm_ops const *)(& snd_vt1724_capture_spdif_ops));
    }
  } else {
  }
  {
  pcm->private_data = (void *)ice;
  pcm->info_flags = 0U;
  strcpy((char *)(& pcm->name), (char const *)name);
  snd_pcm_lib_preallocate_pages_for_all(pcm, 2, (void *)(& (ice->pci)->dev), 262144UL,
                                        262144UL);
  ice->pcm = pcm;
  }
  return (0);
}
}
static struct vt1724_pcm_reg const vt1724_playback_dma_regs[3U] = { {112U, 116U, 118U, 16U},
        {96U, 100U, 102U, 32U},
        {80U, 84U, 86U, 64U}};
static int snd_vt1724_playback_indep_prepare(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  unsigned char val ;
  unsigned char tmp ;
  int tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  ldv_spin_lock_irq_104(& ice->reg_lock);
  val = 3U - (unsigned int )((unsigned char )substream->number);
  tmp = inb((int )((unsigned int )ice->profi_port + 25U));
  }
  if ((int )tmp < (int )val) {
    {
    outb((int )val, (int )((unsigned int )ice->profi_port + 25U));
    }
  } else {
  }
  {
  ldv_spin_unlock_irq_105(& ice->reg_lock);
  tmp___0 = snd_vt1724_pcm_prepare(substream);
  }
  return (tmp___0);
}
}
static int snd_vt1724_playback_indep_open(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  struct snd_pcm_runtime *runtime ;
  {
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  runtime = substream->runtime;
  ldv_mutex_lock_138(& ice->open_mutex);
  }
  if ((unsigned long )ice->pcm_reserved[substream->number] != (unsigned long )((struct snd_pcm_substream *)0)) {
    {
    ldv_mutex_unlock_139(& ice->open_mutex);
    }
    return (-16);
  } else {
  }
  {
  ldv_mutex_unlock_140(& ice->open_mutex);
  runtime->private_data = (void *)(& vt1724_playback_dma_regs) + (unsigned long )substream->number;
  ice->playback_con_substream_ds[substream->number] = substream;
  runtime->hw = snd_vt1724_2ch_stereo;
  snd_pcm_set_sync(substream);
  snd_pcm_hw_constraint_msbits(runtime, 0U, 32U, 24U);
  set_rate_constraints(ice, substream);
  }
  return (0);
}
}
static int snd_vt1724_playback_indep_close(struct snd_pcm_substream *substream )
{
  struct snd_ice1712 *ice ;
  {
  ice = (struct snd_ice1712 *)substream->private_data;
  if (PRO_RATE_RESET != 0) {
    {
    snd_vt1724_set_pro_rate(ice, (unsigned int )ice->pro_rate_default, 0);
    }
  } else {
  }
  ice->playback_con_substream_ds[substream->number] = (struct snd_pcm_substream *)0;
  ice->pcm_reserved[substream->number] = (struct snd_pcm_substream *)0;
  return (0);
}
}
static struct snd_pcm_ops snd_vt1724_playback_indep_ops =
     {& snd_vt1724_playback_indep_open, & snd_vt1724_playback_indep_close, & snd_pcm_lib_ioctl,
    & snd_vt1724_pcm_hw_params, & snd_vt1724_pcm_hw_free, & snd_vt1724_playback_indep_prepare,
    & snd_vt1724_pcm_trigger, & snd_vt1724_pcm_pointer, 0, 0, 0, 0, 0, 0};
static int snd_vt1724_pcm_indep(struct snd_ice1712 *ice , int device )
{
  struct snd_pcm *pcm ;
  int play ;
  int err ;
  {
  play = (int )(ice->num_total_dacs / 2U - 1U);
  if (play <= 0) {
    return (0);
  } else {
  }
  {
  err = snd_pcm_new(ice->card, "ICE1724 Surrounds", device, play, 0, & pcm);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  snd_pcm_set_ops(pcm, 0, (struct snd_pcm_ops const *)(& snd_vt1724_playback_indep_ops));
  pcm->private_data = (void *)ice;
  pcm->info_flags = 0U;
  strcpy((char *)(& pcm->name), "ICE1724 Surround PCM");
  snd_pcm_lib_preallocate_pages_for_all(pcm, 2, (void *)(& (ice->pci)->dev), 262144UL,
                                        262144UL);
  ice->pcm_ds = pcm;
  }
  return (0);
}
}
static int snd_vt1724_ac97_mixer(struct snd_ice1712 *ice )
{
  int err ;
  struct snd_ac97_bus *pbus ;
  struct snd_ac97_template ac97 ;
  struct snd_ac97_bus_ops ops ;
  unsigned char tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  unsigned char tmp___1 ;
  {
  if ((int )((signed char )ice->eeprom.data[1]) >= 0) {
    {
    ops.reset = 0;
    ops.warm_reset = 0;
    ops.write = & snd_vt1724_ac97_write;
    ops.read = & snd_vt1724_ac97_read;
    ops.wait = 0;
    ops.init = 0;
    tmp = inb((int )((unsigned int )ice->profi_port + 5U));
    outb((int )((unsigned int )tmp | 128U), (int )((unsigned int )ice->profi_port + 5U));
    }
    if (1) {
      {
      __const_udelay(21475000UL);
      }
    } else {
      __ms = 5UL;
      goto ldv_37159;
      ldv_37158:
      {
      __const_udelay(4295000UL);
      }
      ldv_37159:
      tmp___0 = __ms;
      __ms = __ms - 1UL;
      if (tmp___0 != 0UL) {
        goto ldv_37158;
      } else {
      }
    }
    {
    tmp___1 = inb((int )((unsigned int )ice->profi_port + 5U));
    outb((int )tmp___1 & 127, (int )((unsigned int )ice->profi_port + 5U));
    err = snd_ac97_bus(ice->card, 0, & ops, (void *)0, & pbus);
    }
    if (err < 0) {
      return (err);
    } else {
    }
    {
    memset((void *)(& ac97), 0, 40UL);
    ac97.private_data = (void *)ice;
    err = snd_ac97_mixer(pbus, & ac97, & ice->ac97);
    }
    if (err < 0) {
      {
      dev_warn((struct device const *)(ice->card)->dev, "cannot initialize pro ac97, skipped\n");
      }
    } else {
      return (0);
    }
  } else {
  }
  {
  strcat((char *)(& (ice->card)->mixername), "ICE1724 - multitrack");
  }
  return (0);
}
}
__inline static unsigned int eeprom_triple(struct snd_ice1712 *ice , int idx )
{
  {
  return (((unsigned int )ice->eeprom.data[idx] | ((unsigned int )ice->eeprom.data[idx + 1] << 8)) | ((unsigned int )ice->eeprom.data[idx + 2] << 16));
}
}
static void snd_vt1724_proc_read(struct snd_info_entry *entry , struct snd_info_buffer *buffer )
{
  struct snd_ice1712 *ice ;
  unsigned int idx ;
  unsigned int tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  ice = (struct snd_ice1712 *)entry->private_data;
  snd_iprintf(buffer, "%s\n\n", (char *)(& (ice->card)->longname));
  snd_iprintf(buffer, "EEPROM:\n");
  snd_iprintf(buffer, "  Subvendor        : 0x%x\n", ice->eeprom.subvendor);
  snd_iprintf(buffer, "  Size             : %i bytes\n", (int )ice->eeprom.size);
  snd_iprintf(buffer, "  Version          : %i\n", (int )ice->eeprom.version);
  snd_iprintf(buffer, "  System Config    : 0x%x\n", (int )ice->eeprom.data[0]);
  snd_iprintf(buffer, "  ACLink           : 0x%x\n", (int )ice->eeprom.data[1]);
  snd_iprintf(buffer, "  I2S              : 0x%x\n", (int )ice->eeprom.data[2]);
  snd_iprintf(buffer, "  S/PDIF           : 0x%x\n", (int )ice->eeprom.data[3]);
  snd_iprintf(buffer, "  GPIO direction   : 0x%x\n", ice->eeprom.gpiodir);
  snd_iprintf(buffer, "  GPIO mask        : 0x%x\n", ice->eeprom.gpiomask);
  snd_iprintf(buffer, "  GPIO state       : 0x%x\n", ice->eeprom.gpiostate);
  idx = 18U;
  }
  goto ldv_37172;
  ldv_37171:
  {
  snd_iprintf(buffer, "  Extra #%02i        : 0x%x\n", idx, (int )ice->eeprom.data[idx]);
  idx = idx + 1U;
  }
  ldv_37172: ;
  if (idx < (unsigned int )ice->eeprom.size) {
    goto ldv_37171;
  } else {
  }
  {
  snd_iprintf(buffer, "\nRegisters:\n");
  tmp = inl((int )((unsigned int )ice->profi_port + 44U));
  snd_iprintf(buffer, "  PSDOUT03 : 0x%08x\n", tmp);
  idx = 0U;
  }
  goto ldv_37175;
  ldv_37174:
  {
  tmp___0 = inb((int )((unsigned int )ice->port + idx));
  snd_iprintf(buffer, "  CCS%02x    : 0x%02x\n", idx, (int )tmp___0);
  idx = idx + 1U;
  }
  ldv_37175: ;
  if (idx <= 31U) {
    goto ldv_37174;
  } else {
  }
  idx = 0U;
  goto ldv_37178;
  ldv_37177:
  {
  tmp___1 = inb((int )((unsigned int )ice->profi_port + idx));
  snd_iprintf(buffer, "  MT%02x     : 0x%02x\n", idx, (int )tmp___1);
  idx = idx + 1U;
  }
  ldv_37178: ;
  if (idx <= 47U) {
    goto ldv_37177;
  } else {
  }
  return;
}
}
static void snd_vt1724_proc_init(struct snd_ice1712 *ice )
{
  struct snd_info_entry *entry ;
  int tmp ;
  {
  {
  tmp = snd_card_proc_new(ice->card, "ice1724", & entry);
  }
  if (tmp == 0) {
    {
    snd_info_set_text_ops(entry, (void *)ice, & snd_vt1724_proc_read);
    }
  } else {
  }
  return;
}
}
static int snd_vt1724_eeprom_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 4;
  uinfo->count = 52U;
  return (0);
}
}
static int snd_vt1724_eeprom_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  memcpy((void *)(& ucontrol->value.bytes.data), (void const *)(& ice->eeprom),
           52UL);
  }
  return (0);
}
}
static struct snd_kcontrol_new snd_vt1724_eeprom =
     {0, 0U, 0U, (unsigned char const *)"ICE1724 EEPROM", 0U, 1U, 0U, & snd_vt1724_eeprom_info,
    & snd_vt1724_eeprom_get, 0, {0}, 0UL};
static int snd_vt1724_spdif_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 5;
  uinfo->count = 1U;
  return (0);
}
}
static unsigned int encode_spdif_bits(struct snd_aes_iec958 *diga )
{
  unsigned int val ;
  unsigned int rbits ;
  {
  val = (unsigned int )diga->status[0] & 3U;
  if ((int )val & 1) {
    if (((int )diga->status[0] & 28) == 12) {
      val = val | 8U;
    } else {
    }
    rbits = (unsigned int )((int )diga->status[4] >> 3) & 15U;
    if (rbits != 0U) {
      {
      if (rbits == 2U) {
        goto case_2;
      } else {
      }
      if (rbits == 3U) {
        goto case_3;
      } else {
      }
      if (rbits == 10U) {
        goto case_10;
      } else {
      }
      if (rbits == 11U) {
        goto case_11;
      } else {
      }
      goto switch_break;
      case_2:
      val = val | 20480U;
      goto ldv_37204;
      case_3:
      val = val | 24576U;
      goto ldv_37204;
      case_10:
      val = val | 16384U;
      goto ldv_37204;
      case_11:
      val = val | 28672U;
      goto ldv_37204;
      switch_break: ;
      }
      ldv_37204: ;
    } else {
      {
      if (((int )diga->status[0] & 192) == 64) {
        goto case_64;
      } else {
      }
      if (((int )diga->status[0] & 192) == 192) {
        goto case_192;
      } else {
      }
      goto switch_default;
      case_64: ;
      goto ldv_37209;
      case_192:
      val = val | 12288U;
      goto ldv_37209;
      switch_default:
      val = val | 8192U;
      goto ldv_37209;
      switch_break___0: ;
      }
      ldv_37209: ;
    }
  } else {
    val = val | ((unsigned int )diga->status[1] & 4U);
    if (((int )diga->status[0] & 56) == 8) {
      val = val | 8U;
    } else {
    }
    val = val | (((unsigned int )diga->status[1] & 63U) << 4);
    val = val | (((unsigned int )diga->status[3] << 12) & 65535U);
  }
  return (val);
}
}
static void decode_spdif_bits(struct snd_aes_iec958 *diga , unsigned int val )
{
  {
  {
  memset((void *)(& diga->status), 0, 24UL);
  diga->status[0] = (unsigned int )((unsigned char )val) & 3U;
  }
  if ((int )val & 1) {
    if ((val & 8U) != 0U) {
      diga->status[0] = (unsigned int )diga->status[0] | 12U;
    } else {
    }
    {
    if (((val >> 12) & 7U) == 0U) {
      goto case_0;
    } else {
    }
    if (((val >> 12) & 7U) == 2U) {
      goto case_2;
    } else {
    }
    goto switch_default;
    case_0: ;
    goto ldv_37217;
    case_2:
    diga->status[0] = (unsigned int )diga->status[0] | 192U;
    goto ldv_37217;
    switch_default:
    diga->status[0] = (unsigned int )diga->status[0] | 128U;
    goto ldv_37217;
    switch_break: ;
    }
    ldv_37217: ;
  } else {
    diga->status[0] = (unsigned int )diga->status[0] | ((unsigned int )((unsigned char )val) & 4U);
    if ((val & 8U) != 0U) {
      diga->status[0] = (unsigned int )diga->status[0] | 8U;
    } else {
    }
    diga->status[1] = (unsigned int )diga->status[1] | ((unsigned int )((unsigned char )(val >> 4)) & 63U);
    diga->status[3] = (unsigned int )diga->status[3] | ((unsigned int )((unsigned char )(val >> 12)) & 7U);
  }
  return;
}
}
static int snd_vt1724_spdif_default_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int val ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = inw((int )((unsigned int )ice->profi_port + 60U));
  val = (unsigned int )tmp;
  decode_spdif_bits(& ucontrol->value.iec958, val);
  }
  return (0);
}
}
static int snd_vt1724_spdif_default_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int val ;
  unsigned int old ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  val = encode_spdif_bits(& ucontrol->value.iec958);
  ldv_spin_lock_irq_104(& ice->reg_lock);
  tmp = inw((int )((unsigned int )ice->profi_port + 60U));
  old = (unsigned int )tmp;
  }
  if (val != old) {
    {
    update_spdif_bits(ice, val);
    }
  } else {
  }
  {
  ldv_spin_unlock_irq_105(& ice->reg_lock);
  }
  return (val != old);
}
}
static struct snd_kcontrol_new snd_vt1724_spdif_default =
     {3, 0U, 0U, (unsigned char const *)"IEC958 Playback Default", 0U, 0U, 0U, & snd_vt1724_spdif_info,
    & snd_vt1724_spdif_default_get, & snd_vt1724_spdif_default_put, {0}, 0UL};
static int snd_vt1724_spdif_maskc_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  {
  ucontrol->value.iec958.status[0] = 63U;
  ucontrol->value.iec958.status[1] = 255U;
  ucontrol->value.iec958.status[3] = 15U;
  return (0);
}
}
static int snd_vt1724_spdif_maskp_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  {
  ucontrol->value.iec958.status[0] = 223U;
  return (0);
}
}
static struct snd_kcontrol_new snd_vt1724_spdif_maskc =
     {3, 0U, 0U, (unsigned char const *)"IEC958 Playback Con Mask", 0U, 1U, 0U, & snd_vt1724_spdif_info,
    & snd_vt1724_spdif_maskc_get, 0, {0}, 0UL};
static struct snd_kcontrol_new snd_vt1724_spdif_maskp =
     {3, 0U, 0U, (unsigned char const *)"IEC958 Playback Pro Mask", 0U, 1U, 0U, & snd_vt1724_spdif_info,
    & snd_vt1724_spdif_maskp_get, 0, {0}, 0UL};
static int snd_vt1724_spdif_sw_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = inb((int )((unsigned int )ice->port + 7U));
  ucontrol->value.integer.value[0] = (int )((signed char )tmp) < 0;
  }
  return (0);
}
}
static int snd_vt1724_spdif_sw_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char old ;
  unsigned char val ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_spin_lock_irq_104(& ice->reg_lock);
  val = inb((int )((unsigned int )ice->port + 7U));
  old = val;
  val = (unsigned int )val & 127U;
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    val = (unsigned int )val | 128U;
  } else {
  }
  if ((int )old != (int )val) {
    {
    outb((int )val, (int )((unsigned int )ice->port + 7U));
    }
  } else {
  }
  {
  ldv_spin_unlock_irq_105(& ice->reg_lock);
  }
  return ((int )old != (int )val);
}
}
static struct snd_kcontrol_new snd_vt1724_spdif_switch =
     {2, 0U, 0U, (unsigned char const *)"IEC958 Output Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
    & snd_vt1724_spdif_sw_get, & snd_vt1724_spdif_sw_put, {0}, 0UL};
static int snd_vt1724_pro_internal_clock_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  struct snd_ice1712 *ice ;
  int hw_rates_count ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  hw_rates_count = (int )(ice->hw_rates)->count;
  uinfo->type = 3;
  uinfo->count = 1U;
  uinfo->value.enumerated.items = (unsigned int )hw_rates_count;
  if ((unsigned int )*((unsigned char *)ice + 504UL) != 0U || ((int )ice->eeprom.data[3] & 2) != 0) {
    uinfo->value.enumerated.items = uinfo->value.enumerated.items + (unsigned int )ice->ext_clock_count;
  } else {
  }
  if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items) {
    uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1U;
  } else {
  }
  if (uinfo->value.enumerated.item >= (unsigned int )hw_rates_count) {
    {
    strcpy((char *)(& uinfo->value.enumerated.name), *(ice->ext_clock_names + (unsigned long )(uinfo->value.enumerated.item - (unsigned int )hw_rates_count)));
    }
  } else {
    {
    sprintf((char *)(& uinfo->value.enumerated.name), "%d", *((ice->hw_rates)->list + (unsigned long )uinfo->value.enumerated.item));
    }
  }
  return (0);
}
}
static int snd_vt1724_pro_internal_clock_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int i ;
  unsigned int rate ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_spin_lock_irq_104(& ice->reg_lock);
  tmp___0 = (*(ice->is_spdif_master))(ice);
  }
  if (tmp___0 != 0) {
    {
    tmp = (*(ice->get_spdif_master_type))(ice);
    ucontrol->value.enumerated.item[0] = (ice->hw_rates)->count + (unsigned int )tmp;
    }
  } else {
    {
    rate = (*(ice->get_rate))(ice);
    ucontrol->value.enumerated.item[0] = 0U;
    i = 0U;
    }
    goto ldv_37272;
    ldv_37271: ;
    if ((unsigned int )*((ice->hw_rates)->list + (unsigned long )i) == rate) {
      ucontrol->value.enumerated.item[0] = i;
      goto ldv_37270;
    } else {
    }
    i = i + 1U;
    ldv_37272: ;
    if (i < (ice->hw_rates)->count) {
      goto ldv_37271;
    } else {
    }
    ldv_37270: ;
  }
  {
  ldv_spin_unlock_irq_105(& ice->reg_lock);
  }
  return (0);
}
}
static int stdclock_get_spdif_master_type(struct snd_ice1712 *ice )
{
  {
  return (0);
}
}
static int stdclock_set_spdif_clock(struct snd_ice1712 *ice , int type )
{
  unsigned char oval ;
  unsigned char i2s_oval ;
  {
  {
  oval = inb((int )((unsigned int )ice->profi_port + 1U));
  outb((int )((unsigned int )oval | 16U), (int )((unsigned int )ice->profi_port + 1U));
  i2s_oval = inb((int )((unsigned int )ice->profi_port + 2U));
  outb((int )i2s_oval & 247, (int )((unsigned int )ice->profi_port + 2U));
  }
  return (0);
}
}
static int snd_vt1724_pro_internal_clock_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int old_rate ;
  unsigned int new_rate ;
  unsigned int item ;
  unsigned int first_ext_clock ;
  int tmp ;
  unsigned int i ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  item = ucontrol->value.enumerated.item[0];
  first_ext_clock = (ice->hw_rates)->count;
  if (item > (first_ext_clock + (unsigned int )ice->ext_clock_count) - 1U) {
    return (-22);
  } else {
  }
  {
  ldv_spin_lock_irq_104(& ice->reg_lock);
  tmp = (*(ice->is_spdif_master))(ice);
  }
  if (tmp != 0) {
    old_rate = 0U;
  } else {
    {
    old_rate = (*(ice->get_rate))(ice);
    }
  }
  if (item >= first_ext_clock) {
    {
    (*(ice->set_spdif_clock))(ice, (int )(item - first_ext_clock));
    new_rate = 0U;
    }
  } else {
    {
    new_rate = *((ice->hw_rates)->list + (unsigned long )item);
    ice->pro_rate_default = (int )new_rate;
    ldv_spin_unlock_irq_105(& ice->reg_lock);
    snd_vt1724_set_pro_rate(ice, (unsigned int )ice->pro_rate_default, 1);
    ldv_spin_lock_irq_104(& ice->reg_lock);
    }
  }
  {
  ldv_spin_unlock_irq_105(& ice->reg_lock);
  }
  if (old_rate != new_rate && new_rate == 0U) {
    if ((unsigned long )ice->gpio.set_pro_rate != (unsigned long )((void (*)(struct snd_ice1712 * ,
                                                                             unsigned int ))0)) {
      {
      (*(ice->gpio.set_pro_rate))(ice, 0U);
      }
    } else {
    }
    i = 0U;
    goto ldv_37293;
    ldv_37292: ;
    if ((unsigned long )(ice->akm + (unsigned long )i)->ops.set_rate_val != (unsigned long )((void (*)(struct snd_akm4xxx * ,
                                                                                                       unsigned int ))0)) {
      {
      (*((ice->akm + (unsigned long )i)->ops.set_rate_val))(ice->akm + (unsigned long )i,
                                                            0U);
      }
    } else {
    }
    i = i + 1U;
    ldv_37293: ;
    if (i < ice->akm_codecs) {
      goto ldv_37292;
    } else {
    }
  } else {
  }
  return (old_rate != new_rate);
}
}
static struct snd_kcontrol_new snd_vt1724_pro_internal_clock =
     {2, 0U, 0U, (unsigned char const *)"Multi Track Internal Clock", 0U, 0U, 0U,
    & snd_vt1724_pro_internal_clock_info, & snd_vt1724_pro_internal_clock_get, & snd_vt1724_pro_internal_clock_put,
    {0}, 0UL};
static int snd_vt1724_pro_rate_locking_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  {
  ucontrol->value.integer.value[0] = (long )PRO_RATE_LOCKED;
  return (0);
}
}
static int snd_vt1724_pro_rate_locking_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int change ;
  int nval ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  nval = ucontrol->value.integer.value[0] != 0L;
  ldv_spin_lock_irq_104(& ice->reg_lock);
  change = PRO_RATE_LOCKED != nval;
  PRO_RATE_LOCKED = nval;
  ldv_spin_unlock_irq_105(& ice->reg_lock);
  }
  return (change);
}
}
static struct snd_kcontrol_new snd_vt1724_pro_rate_locking =
     {2, 0U, 0U, (unsigned char const *)"Multi Track Rate Locking", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
    & snd_vt1724_pro_rate_locking_get, & snd_vt1724_pro_rate_locking_put, {0}, 0UL};
static int snd_vt1724_pro_rate_reset_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  {
  ucontrol->value.integer.value[0] = PRO_RATE_RESET != 0;
  return (0);
}
}
static int snd_vt1724_pro_rate_reset_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int change ;
  int nval ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  nval = ucontrol->value.integer.value[0] != 0L;
  ldv_spin_lock_irq_104(& ice->reg_lock);
  change = PRO_RATE_RESET != nval;
  PRO_RATE_RESET = nval;
  ldv_spin_unlock_irq_105(& ice->reg_lock);
  }
  return (change);
}
}
static struct snd_kcontrol_new snd_vt1724_pro_rate_reset =
     {2, 0U, 0U, (unsigned char const *)"Multi Track Rate Reset", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
    & snd_vt1724_pro_rate_reset_get, & snd_vt1724_pro_rate_reset_put, {0}, 0UL};
static int snd_vt1724_pro_route_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  char const *texts[5U] ;
  int tmp ;
  {
  {
  texts[0] = "PCM Out";
  texts[1] = "H/W In 0";
  texts[2] = "H/W In 1";
  texts[3] = "IEC958 In L";
  texts[4] = "IEC958 In R";
  tmp = snd_ctl_enum_info(uinfo, 1U, 5U, (char const * const *)(& texts));
  }
  return (tmp);
}
}
__inline static int analog_route_shift(int idx )
{
  {
  return (((idx % 2) * 12 + (idx / 2) * 3) + 8);
}
}
__inline static int digital_route_shift(int idx )
{
  {
  return (idx * 3);
}
}
int snd_ice1724_get_route_val(struct snd_ice1712 *ice , int shift )
{
  unsigned long val ;
  unsigned char eitem ;
  unsigned char xlate[8U] ;
  unsigned int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  {
  xlate[0] = 0U;
  xlate[1] = 255U;
  xlate[2] = 1U;
  xlate[3] = 2U;
  xlate[4] = 255U;
  xlate[5] = 255U;
  xlate[6] = 3U;
  xlate[7] = 4U;
  tmp = inl((int )((unsigned int )ice->profi_port + 44U));
  val = (unsigned long )tmp;
  val = val >> shift;
  val = val & 7UL;
  eitem = xlate[val];
  }
  if ((unsigned int )eitem == 255U) {
    {
    __ret_warn_on = 1;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      {
      warn_slowpath_fmt("sound/pci/ice1712/ice1724.c", 2078, "BUG?\n");
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    return (0);
  } else {
  }
  return ((int )eitem);
}
}
int snd_ice1724_put_route_val(struct snd_ice1712 *ice , unsigned int val , int shift )
{
  unsigned int old_val ;
  unsigned int nval ;
  int change ;
  unsigned char xroute[8U] ;
  unsigned int tmp ;
  {
  xroute[0] = 0U;
  xroute[1] = 2U;
  xroute[2] = 3U;
  xroute[3] = 6U;
  xroute[4] = 7U;
  tmp = 5U;
  {
  while (1) {
    while_continue: ;
    if (tmp >= 8U) {
      goto while_break;
    } else {
    }
    xroute[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  while_break: ;
  }
  {
  nval = (unsigned int )xroute[val % 5U];
  old_val = inl((int )((unsigned int )ice->profi_port + 44U));
  val = old_val;
  val = val & (unsigned int )(~ (7 << shift));
  val = val | (nval << shift);
  change = val != old_val;
  }
  if (change != 0) {
    {
    outl(val, (int )((unsigned int )ice->profi_port + 44U));
    }
  } else {
  }
  return (change);
}
}
static int snd_vt1724_pro_route_analog_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int idx ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
  idx = (int )tmp;
  tmp___0 = analog_route_shift(idx);
  tmp___1 = snd_ice1724_get_route_val(ice, tmp___0);
  ucontrol->value.enumerated.item[0] = (unsigned int )tmp___1;
  }
  return (0);
}
}
static int snd_vt1724_pro_route_analog_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int idx ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
  idx = (int )tmp;
  tmp___0 = analog_route_shift(idx);
  tmp___1 = snd_ice1724_put_route_val(ice, ucontrol->value.enumerated.item[0], tmp___0);
  }
  return (tmp___1);
}
}
static int snd_vt1724_pro_route_spdif_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int idx ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
  idx = (int )tmp;
  tmp___0 = digital_route_shift(idx);
  tmp___1 = snd_ice1724_get_route_val(ice, tmp___0);
  ucontrol->value.enumerated.item[0] = (unsigned int )tmp___1;
  }
  return (0);
}
}
static int snd_vt1724_pro_route_spdif_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int idx ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
  idx = (int )tmp;
  tmp___0 = digital_route_shift(idx);
  tmp___1 = snd_ice1724_put_route_val(ice, ucontrol->value.enumerated.item[0], tmp___0);
  }
  return (tmp___1);
}
}
static struct snd_kcontrol_new snd_vt1724_mixer_pro_analog_route =
     {2, 0U, 0U, (unsigned char const *)"H/W Playback Route", 0U, 0U, 0U, & snd_vt1724_pro_route_info,
    & snd_vt1724_pro_route_analog_get, & snd_vt1724_pro_route_analog_put, {0}, 0UL};
static struct snd_kcontrol_new snd_vt1724_mixer_pro_spdif_route =
     {2, 0U, 0U, (unsigned char const *)"IEC958 Playback Route", 0U, 0U, 2U, & snd_vt1724_pro_route_info,
    & snd_vt1724_pro_route_spdif_get, & snd_vt1724_pro_route_spdif_put, {0}, 0UL};
static int snd_vt1724_pro_peak_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 22U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 255L;
  return (0);
}
}
static int snd_vt1724_pro_peak_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int idx ;
  unsigned char tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_spin_lock_irq_104(& ice->reg_lock);
  idx = 0;
  }
  goto ldv_37386;
  ldv_37385:
  {
  outb((int )((unsigned char )idx), (int )((unsigned int )ice->profi_port + 62U));
  tmp = inb((int )((unsigned int )ice->profi_port + 63U));
  ucontrol->value.integer.value[idx] = (long )tmp;
  idx = idx + 1;
  }
  ldv_37386: ;
  if (idx <= 21) {
    goto ldv_37385;
  } else {
  }
  {
  ldv_spin_unlock_irq_105(& ice->reg_lock);
  }
  return (0);
}
}
static struct snd_kcontrol_new snd_vt1724_mixer_pro_peak =
     {3, 0U, 0U, (unsigned char const *)"Multi Track Peak", 0U, 5U, 0U, & snd_vt1724_pro_peak_info,
    & snd_vt1724_pro_peak_get, 0, {0}, 0UL};
static struct snd_ice1712_card_info no_matched ;
static unsigned char ooaoo_sq210_eeprom[13U] =
  { 76U, 128U, 120U, 193U,
        0U, 0U, 0U, 255U,
        255U, 255U, 0U, 0U,
        0U};
static struct snd_ice1712_card_info snd_vt1724_ooaoo_cards[2U] = { {0U, "ooAoo SQ210a", "sq210a", 0, 0, 0, 0, (unsigned char)0, 0U, 0U, 0, 0, 13U,
      (unsigned char const *)(& ooaoo_sq210_eeprom)}};
static struct snd_ice1712_card_info *card_tables[16U] =
  { (struct snd_ice1712_card_info *)(& snd_vt1724_revo_cards), (struct snd_ice1712_card_info *)(& snd_vt1724_amp_cards), (struct snd_ice1712_card_info *)(& snd_vt1724_aureon_cards), (struct snd_ice1712_card_info *)(& snd_vt1720_mobo_cards),
        (struct snd_ice1712_card_info *)(& snd_vt1720_pontis_cards), (struct snd_ice1712_card_info *)(& snd_vt1724_prodigy_hifi_cards), (struct snd_ice1712_card_info *)(& snd_vt1724_prodigy192_cards), (struct snd_ice1712_card_info *)(& snd_vt1724_juli_cards),
        (struct snd_ice1712_card_info *)(& snd_vt1724_maya44_cards), (struct snd_ice1712_card_info *)(& snd_vt1724_phase_cards), (struct snd_ice1712_card_info *)(& snd_vt1724_wtm_cards), (struct snd_ice1712_card_info *)(& snd_vt1724_se_cards),
        (struct snd_ice1712_card_info *)(& snd_vt1724_qtet_cards), (struct snd_ice1712_card_info *)(& snd_vt1724_ooaoo_cards), (struct snd_ice1712_card_info *)(& snd_vt1724_psc724_cards), (struct snd_ice1712_card_info *)0};
static void wait_i2c_busy(struct snd_ice1712 *ice )
{
  int t ;
  unsigned char tmp ;
  int tmp___0 ;
  {
  t = 65536;
  goto ldv_37398;
  ldv_37397: ;
  ldv_37398:
  {
  tmp = inb((int )((unsigned int )ice->port + 19U));
  }
  if ((int )tmp & 1) {
    tmp___0 = t;
    t = t - 1;
    if (tmp___0 != 0) {
      goto ldv_37397;
    } else {
      goto ldv_37399;
    }
  } else {
  }
  ldv_37399: ;
  if (t == -1) {
    {
    dev_err((struct device const *)(ice->card)->dev, "i2c busy timeout\n");
    }
  } else {
  }
  return;
}
}
unsigned char snd_vt1724_read_i2c(struct snd_ice1712 *ice , unsigned char dev , unsigned char addr )
{
  unsigned char val ;
  {
  {
  ldv_mutex_lock_157(& ice->i2c_mutex);
  wait_i2c_busy(ice);
  outb((int )addr, (int )((unsigned int )ice->port + 17U));
  outb((int )dev & 254, (int )((unsigned int )ice->port + 16U));
  wait_i2c_busy(ice);
  val = inb((int )((unsigned int )ice->port + 18U));
  ldv_mutex_unlock_158(& ice->i2c_mutex);
  }
  return (val);
}
}
void snd_vt1724_write_i2c(struct snd_ice1712 *ice , unsigned char dev , unsigned char addr ,
                          unsigned char data )
{
  {
  {
  ldv_mutex_lock_159(& ice->i2c_mutex);
  wait_i2c_busy(ice);
  outb((int )addr, (int )((unsigned int )ice->port + 17U));
  outb((int )data, (int )((unsigned int )ice->port + 18U));
  outb((int )((unsigned int )dev | 1U), (int )((unsigned int )ice->port + 16U));
  wait_i2c_busy(ice);
  ldv_mutex_unlock_160(& ice->i2c_mutex);
  }
  return;
}
}
static int snd_vt1724_read_eeprom(struct snd_ice1712 *ice , char const *modelname )
{
  int dev ;
  unsigned int i ;
  unsigned int size ;
  struct snd_ice1712_card_info * const *tbl ;
  struct snd_ice1712_card_info *c ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  u16 vendor ;
  u16 device ;
  __u16 tmp___4 ;
  __u16 tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor ;
  long tmp___7 ;
  {
  dev = 160;
  if ((unsigned long )modelname == (unsigned long )((char const *)0) || (int )((signed char )*modelname) == 0) {
    {
    ice->eeprom.subvendor = 0U;
    tmp___3 = inb((int )((unsigned int )ice->port + 19U));
    }
    if ((int )((signed char )tmp___3) < 0) {
      {
      tmp = snd_vt1724_read_i2c(ice, (int )((unsigned char )dev), 0);
      tmp___0 = snd_vt1724_read_i2c(ice, (int )((unsigned char )dev), 1);
      tmp___1 = snd_vt1724_read_i2c(ice, (int )((unsigned char )dev), 2);
      tmp___2 = snd_vt1724_read_i2c(ice, (int )((unsigned char )dev), 3);
      ice->eeprom.subvendor = (unsigned int )((((int )tmp | ((int )tmp___0 << 8)) | ((int )tmp___1 << 16)) | ((int )tmp___2 << 24));
      }
    } else {
    }
    if (ice->eeprom.subvendor - 1U > 4294967293U) {
      {
      pci_read_config_word((struct pci_dev const *)ice->pci, 44, & vendor);
      pci_read_config_word((struct pci_dev const *)ice->pci, 46, & device);
      tmp___4 = __fswab16((int )vendor);
      tmp___5 = __fswab16((int )device);
      ice->eeprom.subvendor = ((unsigned int )tmp___4 << 16) | (unsigned int )tmp___5;
      }
      if (ice->eeprom.subvendor - 1U > 4294967293U) {
        {
        dev_err((struct device const *)(ice->card)->dev, "No valid ID is found\n");
        }
        return (-6);
      } else {
      }
    } else {
    }
  } else {
  }
  tbl = (struct snd_ice1712_card_info * const *)(& card_tables);
  goto ldv_37432;
  ldv_37431:
  c = *tbl;
  goto ldv_37429;
  ldv_37428: ;
  if ((unsigned long )modelname != (unsigned long )((char const *)0) && (unsigned long )c->model != (unsigned long )((char const *)0)) {
    {
    tmp___6 = strcmp(modelname, c->model);
    }
    if (tmp___6 == 0) {
      {
      _dev_info((struct device const *)(ice->card)->dev, "Using board model %s\n",
                c->name);
      ice->eeprom.subvendor = c->subvendor;
      }
    } else {
      goto _L;
    }
  } else
  _L:
  if (c->subvendor != ice->eeprom.subvendor) {
    goto ldv_37423;
  } else {
  }
  ice->card_info = c;
  if ((unsigned int )c->eeprom_size == 0U || (unsigned long )c->eeprom_data == (unsigned long )((unsigned char const *)0U)) {
    goto found;
  } else {
  }
  {
  descriptor.modname = "snd_ice1724";
  descriptor.function = "snd_vt1724_read_eeprom";
  descriptor.filename = "sound/pci/ice1712/ice1724.c";
  descriptor.format = "using the defined eeprom..\n";
  descriptor.lineno = 2353U;
  descriptor.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___7 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(ice->card)->dev, "using the defined eeprom..\n");
    }
  } else {
  }
  {
  ice->eeprom.version = 2U;
  ice->eeprom.size = (unsigned int )((unsigned char )c->eeprom_size) + 6U;
  memcpy((void *)(& ice->eeprom.data), (void const *)c->eeprom_data, (size_t )c->eeprom_size);
  }
  goto read_skipped;
  ldv_37423:
  c = c + 1;
  ldv_37429: ;
  if ((unsigned long )c->name != (unsigned long )((char const *)0)) {
    goto ldv_37428;
  } else {
  }
  tbl = tbl + 1;
  ldv_37432: ;
  if ((unsigned long )*tbl != (unsigned long )((struct snd_ice1712_card_info * )0)) {
    goto ldv_37431;
  } else {
  }
  {
  dev_warn((struct device const *)(ice->card)->dev, "No matching model found for ID 0x%x\n",
           ice->eeprom.subvendor);
  ice->pm_suspend_enabled = 1U;
  }
  found:
  {
  ice->eeprom.size = snd_vt1724_read_i2c(ice, (int )((unsigned char )dev), 4);
  }
  if ((unsigned int )ice->eeprom.size <= 5U) {
    ice->eeprom.size = 32U;
  } else
  if ((unsigned int )ice->eeprom.size > 32U) {
    {
    dev_err((struct device const *)(ice->card)->dev, "Invalid EEPROM (size = %i)\n",
            (int )ice->eeprom.size);
    }
    return (-5);
  } else {
  }
  {
  ice->eeprom.version = snd_vt1724_read_i2c(ice, (int )((unsigned char )dev), 5);
  }
  if ((unsigned int )ice->eeprom.version - 1U > 1U) {
    {
    dev_warn((struct device const *)(ice->card)->dev, "Invalid EEPROM version %i\n",
             (int )ice->eeprom.version);
    }
  } else {
  }
  size = (unsigned int )((int )ice->eeprom.size + -6);
  i = 0U;
  goto ldv_37435;
  ldv_37434:
  {
  ice->eeprom.data[i] = snd_vt1724_read_i2c(ice, (int )((unsigned char )dev), (int )((unsigned int )((unsigned char )i) + 6U));
  i = i + 1U;
  }
  ldv_37435: ;
  if (i < size) {
    goto ldv_37434;
  } else {
  }
  read_skipped:
  {
  ice->eeprom.gpiomask = eeprom_triple(ice, 7);
  ice->eeprom.gpiostate = eeprom_triple(ice, 10);
  ice->eeprom.gpiodir = eeprom_triple(ice, 4);
  }
  return (0);
}
}
static void snd_vt1724_chip_reset(struct snd_ice1712 *ice )
{
  {
  {
  outb(128, (int )ice->port);
  inb((int )ice->port);
  msleep(10U);
  outb(0, (int )ice->port);
  inb((int )ice->port);
  msleep(10U);
  }
  return;
}
}
static int snd_vt1724_chip_init(struct snd_ice1712 *ice )
{
  {
  {
  outb((int )ice->eeprom.data[0], (int )((unsigned int )ice->port + 4U));
  outb((int )ice->eeprom.data[1], (int )((unsigned int )ice->port + 5U));
  outb((int )ice->eeprom.data[2], (int )((unsigned int )ice->port + 6U));
  outb((int )ice->eeprom.data[3], (int )((unsigned int )ice->port + 7U));
  ice->gpio.write_mask = ice->eeprom.gpiomask;
  ice->gpio.direction = ice->eeprom.gpiodir;
  snd_vt1724_set_gpio_mask(ice, ice->eeprom.gpiomask);
  snd_vt1724_set_gpio_dir(ice, ice->eeprom.gpiodir);
  snd_vt1724_set_gpio_data(ice, ice->eeprom.gpiostate);
  outb(0, (int )((unsigned int )ice->port + 28U));
  outb(160, (int )((unsigned int )ice->port + 1U));
  outb(8, (int )((unsigned int )ice->profi_port + 3U));
  }
  return (0);
}
}
static int snd_vt1724_spdif_build_controls(struct snd_ice1712 *ice )
{
  int err ;
  struct snd_kcontrol *kctl ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  struct snd_kcontrol *tmp___1 ;
  struct snd_kcontrol *tmp___2 ;
  {
  {
  __ret_warn_on = (unsigned long )ice->pcm == (unsigned long )((struct snd_pcm *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("sound/pci/ice1712/ice1724.c", 2435);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (-5);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ice + 505UL) == 0U) {
    {
    tmp___1 = snd_ctl_new1((struct snd_kcontrol_new const *)(& snd_vt1724_mixer_pro_spdif_route),
                           (void *)ice);
    err = snd_ctl_add(ice->card, tmp___1);
    }
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  {
  tmp___2 = snd_ctl_new1((struct snd_kcontrol_new const *)(& snd_vt1724_spdif_switch),
                         (void *)ice);
  err = snd_ctl_add(ice->card, tmp___2);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  kctl = snd_ctl_new1((struct snd_kcontrol_new const *)(& snd_vt1724_spdif_default),
                      (void *)ice);
  err = snd_ctl_add(ice->card, kctl);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  kctl->id.device = (unsigned int )(ice->pcm)->device;
  kctl = snd_ctl_new1((struct snd_kcontrol_new const *)(& snd_vt1724_spdif_maskc),
                      (void *)ice);
  err = snd_ctl_add(ice->card, kctl);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  kctl->id.device = (unsigned int )(ice->pcm)->device;
  kctl = snd_ctl_new1((struct snd_kcontrol_new const *)(& snd_vt1724_spdif_maskp),
                      (void *)ice);
  err = snd_ctl_add(ice->card, kctl);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  kctl->id.device = (unsigned int )(ice->pcm)->device;
  return (0);
}
}
static int snd_vt1724_build_controls(struct snd_ice1712 *ice )
{
  int err ;
  struct snd_kcontrol *tmp ;
  struct snd_kcontrol *tmp___0 ;
  struct snd_kcontrol *tmp___1 ;
  struct snd_kcontrol *tmp___2 ;
  struct snd_kcontrol_new tmp___3 ;
  struct snd_kcontrol *tmp___4 ;
  struct snd_kcontrol *tmp___5 ;
  int tmp___6 ;
  {
  {
  tmp = snd_ctl_new1((struct snd_kcontrol_new const *)(& snd_vt1724_eeprom), (void *)ice);
  err = snd_ctl_add(ice->card, tmp);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp___0 = snd_ctl_new1((struct snd_kcontrol_new const *)(& snd_vt1724_pro_internal_clock),
                         (void *)ice);
  err = snd_ctl_add(ice->card, tmp___0);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp___1 = snd_ctl_new1((struct snd_kcontrol_new const *)(& snd_vt1724_pro_rate_locking),
                         (void *)ice);
  err = snd_ctl_add(ice->card, tmp___1);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp___2 = snd_ctl_new1((struct snd_kcontrol_new const *)(& snd_vt1724_pro_rate_reset),
                         (void *)ice);
  err = snd_ctl_add(ice->card, tmp___2);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  if ((unsigned int )*((unsigned char *)ice + 505UL) == 0U && ice->num_total_dacs != 0U) {
    tmp___3 = snd_vt1724_mixer_pro_analog_route;
    tmp___3.count = ice->num_total_dacs;
    if ((unsigned int )*((unsigned char *)ice + 504UL) != 0U && tmp___3.count > 2U) {
      tmp___3.count = 2U;
    } else {
    }
    {
    tmp___4 = snd_ctl_new1((struct snd_kcontrol_new const *)(& tmp___3), (void *)ice);
    err = snd_ctl_add(ice->card, tmp___4);
    }
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  {
  tmp___5 = snd_ctl_new1((struct snd_kcontrol_new const *)(& snd_vt1724_mixer_pro_peak),
                         (void *)ice);
  tmp___6 = snd_ctl_add(ice->card, tmp___5);
  }
  return (tmp___6);
}
}
static int snd_vt1724_free(struct snd_ice1712 *ice )
{
  {
  if (ice->port == 0UL) {
    goto __hw_end;
  } else {
  }
  {
  outb(255, (int )((unsigned int )ice->profi_port + 3U));
  outb(255, (int )((unsigned int )ice->port + 1U));
  }
  __hw_end: ;
  if (ice->irq >= 0) {
    {
    ldv_free_irq_161((unsigned int )ice->irq, (void *)ice);
    }
  } else {
  }
  {
  pci_release_regions(ice->pci);
  snd_ice1712_akm4xxx_free(ice);
  pci_disable_device(ice->pci);
  kfree((void const *)ice->spec);
  kfree((void const *)ice);
  }
  return (0);
}
}
static int snd_vt1724_dev_free(struct snd_device *device )
{
  struct snd_ice1712 *ice ;
  int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)device->device_data;
  tmp = snd_vt1724_free(ice);
  }
  return (tmp);
}
}
static int snd_vt1724_create(struct snd_card *card , struct pci_dev *pci , char const *modelname ,
                             struct snd_ice1712 **r_ice1712 )
{
  struct snd_ice1712 *ice ;
  int err ;
  struct snd_device_ops ops ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  ops.dev_free = & snd_vt1724_dev_free;
  ops.dev_register = 0;
  ops.dev_disconnect = 0;
  *r_ice1712 = (struct snd_ice1712 *)0;
  err = pci_enable_device(pci);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp = kzalloc(1352UL, 208U);
  ice = (struct snd_ice1712 *)tmp;
  }
  if ((unsigned long )ice == (unsigned long )((struct snd_ice1712 *)0)) {
    {
    pci_disable_device(pci);
    }
    return (-12);
  } else {
  }
  {
  ice->vt1724 = 1U;
  spinlock_check(& ice->reg_lock);
  __raw_spin_lock_init(& ice->reg_lock.__annonCompField18.rlock, "&(&ice->reg_lock)->rlock",
                       & __key);
  __mutex_init(& ice->gpio_mutex, "&ice->gpio_mutex", & __key___0);
  __mutex_init(& ice->open_mutex, "&ice->open_mutex", & __key___1);
  __mutex_init(& ice->i2c_mutex, "&ice->i2c_mutex", & __key___2);
  ice->gpio.set_mask = & snd_vt1724_set_gpio_mask;
  ice->gpio.get_mask = & snd_vt1724_get_gpio_mask;
  ice->gpio.set_dir = & snd_vt1724_set_gpio_dir;
  ice->gpio.get_dir = & snd_vt1724_get_gpio_dir;
  ice->gpio.set_data = & snd_vt1724_set_gpio_data;
  ice->gpio.get_data = & snd_vt1724_get_gpio_data;
  ice->card = card;
  ice->pci = pci;
  ice->irq = -1;
  pci_set_master(pci);
  snd_vt1724_proc_init(ice);
  synchronize_irq(pci->irq);
  card->private_data = (void *)ice;
  err = pci_request_regions(pci, "ICE1724");
  }
  if (err < 0) {
    {
    kfree((void const *)ice);
    pci_disable_device(pci);
    }
    return (err);
  } else {
  }
  {
  ice->port = (unsigned long )pci->resource[0].start;
  ice->profi_port = (unsigned long )pci->resource[1].start;
  tmp___0 = ldv_request_irq_162(pci->irq, & snd_vt1724_interrupt, 128UL, "snd_ice1724",
                                (void *)ice);
  }
  if (tmp___0 != 0) {
    {
    dev_err((struct device const *)card->dev, "unable to grab IRQ %d\n", pci->irq);
    snd_vt1724_free(ice);
    }
    return (-5);
  } else {
  }
  {
  ice->irq = (int )pci->irq;
  snd_vt1724_chip_reset(ice);
  tmp___1 = snd_vt1724_read_eeprom(ice, modelname);
  }
  if (tmp___1 < 0) {
    {
    snd_vt1724_free(ice);
    }
    return (-5);
  } else {
  }
  {
  tmp___2 = snd_vt1724_chip_init(ice);
  }
  if (tmp___2 < 0) {
    {
    snd_vt1724_free(ice);
    }
    return (-5);
  } else {
  }
  {
  err = snd_device_new(card, 0, (void *)ice, & ops);
  }
  if (err < 0) {
    {
    snd_vt1724_free(ice);
    }
    return (err);
  } else {
  }
  *r_ice1712 = ice;
  return (0);
}
}
static int snd_vt1724_probe(struct pci_dev *pci , struct pci_device_id const *pci_id )
{
  int dev ;
  struct snd_card *card ;
  struct snd_ice1712 *ice ;
  int pcm_dev ;
  int err ;
  struct snd_ice1712_card_info * const *tbl ;
  struct snd_ice1712_card_info *c ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct snd_rawmidi *rmidi ;
  {
  pcm_dev = 0;
  if (dev > 31) {
    return (-19);
  } else {
  }
  if (! enable[dev]) {
    dev = dev + 1;
    return (-2);
  } else {
  }
  {
  err = snd_card_new(& pci->dev, index[dev], (char const *)id[dev], & __this_module,
                     0, & card);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  strcpy((char *)(& card->driver), "ICE1724");
  strcpy((char *)(& card->shortname), "ICEnsemble ICE1724");
  err = snd_vt1724_create(card, pci, (char const *)model[dev], & ice);
  }
  if (err < 0) {
    {
    snd_card_free(card);
    }
    return (err);
  } else {
  }
  ice->ext_clock_count = 0;
  tbl = (struct snd_ice1712_card_info * const *)(& card_tables);
  goto ldv_37492;
  ldv_37491:
  c = *tbl;
  goto ldv_37489;
  ldv_37488: ;
  if ((unsigned long )model[dev] != (unsigned long )((char *)0) && (unsigned long )c->model != (unsigned long )((char const *)0)) {
    {
    tmp = strcmp((char const *)model[dev], c->model);
    }
    if (tmp == 0) {
      goto _L;
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if (c->subvendor == ice->eeprom.subvendor) {
    _L:
    {
    strcpy((char *)(& card->shortname), c->name);
    }
    if ((unsigned long )c->driver != (unsigned long )((char const *)0)) {
      {
      strcpy((char *)(& card->driver), c->driver);
      }
    } else {
    }
    if ((unsigned long )c->chip_init != (unsigned long )((int (*)(struct snd_ice1712 * ))0)) {
      {
      err = (*(c->chip_init))(ice);
      }
      if (err < 0) {
        {
        snd_card_free(card);
        }
        return (err);
      } else {
      }
    } else {
    }
    goto __found;
  } else {
  }
  c = c + 1;
  ldv_37489: ;
  if ((unsigned long )c->name != (unsigned long )((char const *)0)) {
    goto ldv_37488;
  } else {
  }
  tbl = tbl + 1;
  ldv_37492: ;
  if ((unsigned long )*tbl != (unsigned long )((struct snd_ice1712_card_info * )0)) {
    goto ldv_37491;
  } else {
  }
  c = & no_matched;
  __found:
  ice->pro_rate_default = (int )PRO_RATE_DEFAULT;
  if ((unsigned long )ice->is_spdif_master == (unsigned long )((int (*)(struct snd_ice1712 * ))0)) {
    ice->is_spdif_master = & stdclock_is_spdif_master;
  } else {
  }
  if ((unsigned long )ice->get_rate == (unsigned long )((unsigned int (*)(struct snd_ice1712 * ))0)) {
    ice->get_rate = & stdclock_get_rate;
  } else {
  }
  if ((unsigned long )ice->set_rate == (unsigned long )((void (*)(struct snd_ice1712 * ,
                                                                  unsigned int ))0)) {
    ice->set_rate = & stdclock_set_rate;
  } else {
  }
  if ((unsigned long )ice->set_mclk == (unsigned long )((unsigned char (*)(struct snd_ice1712 * ,
                                                                           unsigned int ))0)) {
    ice->set_mclk = & stdclock_set_mclk;
  } else {
  }
  if ((unsigned long )ice->set_spdif_clock == (unsigned long )((int (*)(struct snd_ice1712 * ,
                                                                        int ))0)) {
    ice->set_spdif_clock = & stdclock_set_spdif_clock;
  } else {
  }
  if ((unsigned long )ice->get_spdif_master_type == (unsigned long )((int (*)(struct snd_ice1712 * ))0)) {
    ice->get_spdif_master_type = & stdclock_get_spdif_master_type;
  } else {
  }
  if ((unsigned long )ice->ext_clock_names == (unsigned long )((char const * const *)0)) {
    ice->ext_clock_names = (char const * const *)(& ext_clock_names);
  } else {
  }
  if (ice->ext_clock_count == 0) {
    ice->ext_clock_count = 1;
  } else {
  }
  if ((unsigned long )ice->hw_rates == (unsigned long )((struct snd_pcm_hw_constraint_list *)0)) {
    {
    set_std_hw_rates(ice);
    }
  } else {
  }
  {
  tmp___0 = pcm_dev;
  pcm_dev = pcm_dev + 1;
  err = snd_vt1724_pcm_profi(ice, tmp___0);
  }
  if (err < 0) {
    {
    snd_card_free(card);
    }
    return (err);
  } else {
  }
  {
  tmp___1 = pcm_dev;
  pcm_dev = pcm_dev + 1;
  err = snd_vt1724_pcm_spdif(ice, tmp___1);
  }
  if (err < 0) {
    {
    snd_card_free(card);
    }
    return (err);
  } else {
  }
  {
  tmp___2 = pcm_dev;
  pcm_dev = pcm_dev + 1;
  err = snd_vt1724_pcm_indep(ice, tmp___2);
  }
  if (err < 0) {
    {
    snd_card_free(card);
    }
    return (err);
  } else {
  }
  {
  err = snd_vt1724_ac97_mixer(ice);
  }
  if (err < 0) {
    {
    snd_card_free(card);
    }
    return (err);
  } else {
  }
  {
  err = snd_vt1724_build_controls(ice);
  }
  if (err < 0) {
    {
    snd_card_free(card);
    }
    return (err);
  } else {
  }
  if ((unsigned long )ice->pcm != (unsigned long )((struct snd_pcm *)0) && (unsigned int )*((unsigned char *)ice + 504UL) != 0U) {
    {
    err = snd_vt1724_spdif_build_controls(ice);
    }
    if (err < 0) {
      {
      snd_card_free(card);
      }
      return (err);
    } else {
    }
  } else {
  }
  if ((unsigned long )c->build_controls != (unsigned long )((int (*)(struct snd_ice1712 * ))0)) {
    {
    err = (*(c->build_controls))(ice);
    }
    if (err < 0) {
      {
      snd_card_free(card);
      }
      return (err);
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)c + 56UL) == 0U) {
    if (((int )ice->eeprom.data[0] & 32) != 0) {
      {
      err = snd_rawmidi_new(card, (char *)"MIDI", 0, 1, 1, & rmidi);
      }
      if (err < 0) {
        {
        snd_card_free(card);
        }
        return (err);
      } else {
      }
      {
      ice->rmidi[0] = rmidi;
      rmidi->private_data = (void *)ice;
      strcpy((char *)(& rmidi->name), "ICE1724 MIDI");
      rmidi->info_flags = 7U;
      snd_rawmidi_set_ops(rmidi, 0, & vt1724_midi_output_ops);
      snd_rawmidi_set_ops(rmidi, 1, & vt1724_midi_input_ops);
      outb(33, (int )((unsigned int )ice->port + 14U));
      outb(1, (int )((unsigned int )ice->port + 14U));
      outb(1, (int )((unsigned int )ice->port + 13U));
      }
    } else {
    }
  } else {
  }
  {
  sprintf((char *)(& card->longname), "%s at 0x%lx, irq %i", (char *)(& card->shortname),
          ice->port, ice->irq);
  err = snd_card_register(card);
  }
  if (err < 0) {
    {
    snd_card_free(card);
    }
    return (err);
  } else {
  }
  {
  pci_set_drvdata(pci, (void *)card);
  dev = dev + 1;
  }
  return (0);
}
}
static void snd_vt1724_remove(struct pci_dev *pci )
{
  struct snd_card *card ;
  void *tmp ;
  struct snd_ice1712 *ice ;
  {
  {
  tmp = pci_get_drvdata(pci);
  card = (struct snd_card *)tmp;
  ice = (struct snd_ice1712 *)card->private_data;
  }
  if ((unsigned long )ice->card_info != (unsigned long )((struct snd_ice1712_card_info *)0) && (unsigned long )(ice->card_info)->chip_exit != (unsigned long )((void (*)(struct snd_ice1712 * ))0)) {
    {
    (*((ice->card_info)->chip_exit))(ice);
    }
  } else {
  }
  {
  snd_card_free(card);
  }
  return;
}
}
static int snd_vt1724_suspend(struct device *dev )
{
  struct snd_card *card ;
  void *tmp ;
  struct snd_ice1712 *ice ;
  int tmp___0 ;
  unsigned short tmp___1 ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  card = (struct snd_card *)tmp;
  ice = (struct snd_ice1712 *)card->private_data;
  }
  if ((unsigned int )*((unsigned char *)ice + 1336UL) == 0U) {
    return (0);
  } else {
  }
  {
  snd_power_change_state(card, 768U);
  snd_pcm_suspend_all(ice->pcm);
  snd_pcm_suspend_all(ice->pcm_pro);
  snd_pcm_suspend_all(ice->pcm_ds);
  snd_ac97_suspend(ice->ac97);
  ldv_spin_lock_irq_104(& ice->reg_lock);
  tmp___0 = (*(ice->is_spdif_master))(ice);
  ice->pm_saved_is_spdif_master = (unsigned char )tmp___0;
  tmp___1 = inw((int )((unsigned int )ice->profi_port + 60U));
  ice->pm_saved_spdif_ctrl = (unsigned int )tmp___1;
  ice->pm_saved_spdif_cfg = inb((int )((unsigned int )ice->port + 7U));
  ice->pm_saved_route = inl((int )((unsigned int )ice->profi_port + 44U));
  ldv_spin_unlock_irq_105(& ice->reg_lock);
  }
  if ((unsigned long )ice->pm_suspend != (unsigned long )((int (*)(struct snd_ice1712 * ))0)) {
    {
    (*(ice->pm_suspend))(ice);
    }
  } else {
  }
  return (0);
}
}
static int snd_vt1724_resume(struct device *dev )
{
  struct snd_card *card ;
  void *tmp ;
  struct snd_ice1712 *ice ;
  int tmp___0 ;
  int rate ;
  {
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  card = (struct snd_card *)tmp;
  ice = (struct snd_ice1712 *)card->private_data;
  }
  if ((unsigned int )*((unsigned char *)ice + 1336UL) == 0U) {
    return (0);
  } else {
  }
  {
  snd_vt1724_chip_reset(ice);
  tmp___0 = snd_vt1724_chip_init(ice);
  }
  if (tmp___0 < 0) {
    {
    snd_card_disconnect(card);
    }
    return (-5);
  } else {
  }
  if ((unsigned long )ice->pm_resume != (unsigned long )((int (*)(struct snd_ice1712 * ))0)) {
    {
    (*(ice->pm_resume))(ice);
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)ice + 1336UL) != 0U) {
    {
    (*(ice->set_spdif_clock))(ice, 0);
    }
  } else {
    if (ice->cur_rate != 0U) {
      rate = (int )ice->cur_rate;
    } else {
      rate = ice->pro_rate_default;
    }
    {
    snd_vt1724_set_pro_rate(ice, (unsigned int )rate, 1);
    }
  }
  {
  update_spdif_bits(ice, ice->pm_saved_spdif_ctrl);
  outb((int )ice->pm_saved_spdif_cfg, (int )((unsigned int )ice->port + 7U));
  outl(ice->pm_saved_route, (int )((unsigned int )ice->profi_port + 44U));
  snd_ac97_resume(ice->ac97);
  snd_power_change_state(card, 0U);
  }
  return (0);
}
}
static struct dev_pm_ops const snd_vt1724_pm =
     {0, 0, & snd_vt1724_suspend, & snd_vt1724_resume, & snd_vt1724_suspend, & snd_vt1724_resume,
    & snd_vt1724_suspend, & snd_vt1724_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0};
static struct pci_driver vt1724_driver =
     {{0, 0}, "snd_ice1724", (struct pci_device_id const *)(& snd_vt1724_ids), & snd_vt1724_probe,
    & snd_vt1724_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0,
                                               0, 0, 0, & snd_vt1724_pm, 0}, {{{{{{0U}},
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
static int vt1724_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv___pci_register_driver_165(& vt1724_driver, & __this_module, "snd_ice1724");
  }
  return (tmp);
}
}
static void vt1724_driver_exit(void)
{
  {
  {
  ldv_pci_unregister_driver_166(& vt1724_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_vt1724_driver_exit_44_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_vt1724_driver_init_44_27(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_dispatch_deregister_42_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_factory_18_44_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_10_44_5(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_11_44_6(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_12_44_7(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_13_44_8(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_16_44_9(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_9_44_10(void) ;
void ldv_dispatch_deregister_io_instance_14_44_11(void) ;
void ldv_dispatch_deregister_io_instance_15_44_12(void) ;
void ldv_dispatch_deregister_platform_instance_8_44_13(void) ;
void ldv_dispatch_instance_deregister_39_2(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_39_3(struct timer_list *arg0 ) ;
void ldv_dispatch_irq_deregister_40_1(int arg0 ) ;
void ldv_dispatch_irq_register_41_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_pm_deregister_3_5(void) ;
void ldv_dispatch_pm_register_3_6(void) ;
void ldv_dispatch_register_43_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_dummy_factory_18_44_14(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_10_44_15(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_11_44_16(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_12_44_17(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_13_44_18(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_16_44_19(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_9_44_20(void) ;
void ldv_dispatch_register_io_instance_14_44_21(void) ;
void ldv_dispatch_register_io_instance_15_44_22(void) ;
void ldv_dispatch_register_platform_instance_8_44_23(void) ;
void ldv_dummy_resourceless_instance_callback_11_12(void (*arg0)(struct snd_akm4xxx * ,
                                                                 int ) , struct snd_akm4xxx *arg1 ,
                                                    int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_11_3(void (*arg0)(struct snd_akm4xxx * ,
                                                                int ) , struct snd_akm4xxx *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_12_12(void (*arg0)(struct snd_akm4xxx * ,
                                                                 int ) , struct snd_akm4xxx *arg1 ,
                                                    int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_12_15(void (*arg0)(struct snd_akm4xxx * ,
                                                                 int , unsigned char ,
                                                                 unsigned char ) ,
                                                    struct snd_akm4xxx *arg1 , int arg2 ,
                                                    unsigned char arg3 , unsigned char arg4 ) ;
void ldv_dummy_resourceless_instance_callback_12_3(void (*arg0)(struct snd_akm4xxx * ,
                                                                int ) , struct snd_akm4xxx *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_13_12(void (*arg0)(struct snd_i2c_bus * ,
                                                                 int , int ) , struct snd_i2c_bus *arg1 ,
                                                    int arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_15(void (*arg0)(struct snd_i2c_bus * ) ,
                                                    struct snd_i2c_bus *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_13_16(void (*arg0)(struct snd_i2c_bus * ) ,
                                                    struct snd_i2c_bus *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_13_3(void (*arg0)(struct snd_i2c_bus * ,
                                                                int , int ) , struct snd_i2c_bus *arg1 ,
                                                   int arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_9(int (*arg0)(struct snd_i2c_bus * ,
                                                               int ) , struct snd_i2c_bus *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_14_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_14_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_15_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_15_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_15_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_16_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_16_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_16_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_17_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_17_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_17_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_18_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_18_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_18_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_19_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_19_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_19_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_20_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_20_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_20_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_21_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_21_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_21_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_22_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_23_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_23_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_23_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_24_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_24_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_24_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_25_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_25_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_25_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_26_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_26_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_26_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_27_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_27_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_27_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_28_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_28_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_28_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_29_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_29_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_29_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_37_3(void (*arg0)(struct snd_wm8776___0 * ,
                                                                unsigned short * ,
                                                                unsigned short * ) ,
                                                   struct snd_wm8776___0 *arg1 , unsigned short *arg2 ,
                                                   unsigned short *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_37_9(void (*arg0)(struct snd_wm8776___0 * ,
                                                                unsigned short ,
                                                                unsigned short ) ,
                                                   struct snd_wm8776___0 *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(_Bool (*arg0)(struct snd_ice1712 * ) ,
                                                  struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_7(void (*arg0)(struct snd_ice1712 * ,
                                                               _Bool ) , struct snd_ice1712 *arg1 ,
                                                  _Bool arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(_Bool (*arg0)(struct snd_ice1712 * ) ,
                                                  struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_7(void (*arg0)(struct snd_ice1712 * ,
                                                               _Bool ) , struct snd_ice1712 *arg1 ,
                                                  _Bool arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(unsigned int (*arg0)(struct snd_ice1712 * ) ,
                                                  struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_7(void (*arg0)(struct snd_ice1712 * ,
                                                               unsigned int ) , struct snd_ice1712 *arg1 ,
                                                  unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(unsigned int (*arg0)(struct snd_ice1712 * ) ,
                                                  struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_7_7(void (*arg0)(struct snd_ice1712 * ,
                                                               unsigned int ) , struct snd_ice1712 *arg1 ,
                                                  unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_8_3(unsigned int (*arg0)(struct snd_ice1712 * ) ,
                                                  struct snd_ice1712 *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_8_7(void (*arg0)(struct snd_ice1712 * ,
                                                               unsigned int ) , struct snd_ice1712 *arg1 ,
                                                  unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_9_12(void (*arg0)(struct snd_akm4xxx * ,
                                                                int ) , struct snd_akm4xxx *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_9_15(void (*arg0)(struct snd_akm4xxx * ,
                                                                int , unsigned char ,
                                                                unsigned char ) ,
                                                   struct snd_akm4xxx *arg1 , int arg2 ,
                                                   unsigned char arg3 , unsigned char arg4 ) ;
void ldv_dummy_resourceless_instance_callback_9_3(void (*arg0)(struct snd_akm4xxx * ,
                                                               int ) , struct snd_akm4xxx *arg1 ,
                                                  int arg2 ) ;
void ldv_entry_EMGentry_44(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
void ldv_io_instance_callback_30_17(int (*arg0)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ,
                                    struct snd_pcm_substream *arg1 , struct snd_pcm_hw_params *arg2 ) ;
void ldv_io_instance_callback_30_18(int (*arg0)(struct snd_pcm_substream * , unsigned int ,
                                                void * ) , struct snd_pcm_substream *arg1 ,
                                    unsigned int arg2 , void *arg3 ) ;
void ldv_io_instance_callback_30_21(unsigned long (*arg0)(struct snd_pcm_substream * ) ,
                                    struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_30_22(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_30_23(int (*arg0)(struct snd_pcm_substream * , int ) ,
                                    struct snd_pcm_substream *arg1 , int arg2 ) ;
void ldv_io_instance_callback_30_4(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_31_17(int (*arg0)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ,
                                    struct snd_pcm_substream *arg1 , struct snd_pcm_hw_params *arg2 ) ;
void ldv_io_instance_callback_31_18(int (*arg0)(struct snd_pcm_substream * , unsigned int ,
                                                void * ) , struct snd_pcm_substream *arg1 ,
                                    unsigned int arg2 , void *arg3 ) ;
void ldv_io_instance_callback_31_21(unsigned long (*arg0)(struct snd_pcm_substream * ) ,
                                    struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_31_22(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_31_23(int (*arg0)(struct snd_pcm_substream * , int ) ,
                                    struct snd_pcm_substream *arg1 , int arg2 ) ;
void ldv_io_instance_callback_31_4(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_32_17(int (*arg0)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ,
                                    struct snd_pcm_substream *arg1 , struct snd_pcm_hw_params *arg2 ) ;
void ldv_io_instance_callback_32_18(int (*arg0)(struct snd_pcm_substream * , unsigned int ,
                                                void * ) , struct snd_pcm_substream *arg1 ,
                                    unsigned int arg2 , void *arg3 ) ;
void ldv_io_instance_callback_32_21(unsigned long (*arg0)(struct snd_pcm_substream * ) ,
                                    struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_32_22(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_32_23(int (*arg0)(struct snd_pcm_substream * , int ) ,
                                    struct snd_pcm_substream *arg1 , int arg2 ) ;
void ldv_io_instance_callback_32_4(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_33_17(int (*arg0)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ,
                                    struct snd_pcm_substream *arg1 , struct snd_pcm_hw_params *arg2 ) ;
void ldv_io_instance_callback_33_18(int (*arg0)(struct snd_pcm_substream * , unsigned int ,
                                                void * ) , struct snd_pcm_substream *arg1 ,
                                    unsigned int arg2 , void *arg3 ) ;
void ldv_io_instance_callback_33_21(unsigned long (*arg0)(struct snd_pcm_substream * ) ,
                                    struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_33_22(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_33_23(int (*arg0)(struct snd_pcm_substream * , int ) ,
                                    struct snd_pcm_substream *arg1 , int arg2 ) ;
void ldv_io_instance_callback_33_4(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_34_17(int (*arg0)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ,
                                    struct snd_pcm_substream *arg1 , struct snd_pcm_hw_params *arg2 ) ;
void ldv_io_instance_callback_34_18(int (*arg0)(struct snd_pcm_substream * , unsigned int ,
                                                void * ) , struct snd_pcm_substream *arg1 ,
                                    unsigned int arg2 , void *arg3 ) ;
void ldv_io_instance_callback_34_21(unsigned long (*arg0)(struct snd_pcm_substream * ) ,
                                    struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_34_22(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_34_23(int (*arg0)(struct snd_pcm_substream * , int ) ,
                                    struct snd_pcm_substream *arg1 , int arg2 ) ;
void ldv_io_instance_callback_34_4(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_callback_35_17(void (*arg0)(struct snd_rawmidi_substream * ,
                                                 int ) , struct snd_rawmidi_substream *arg1 ,
                                    int arg2 ) ;
void ldv_io_instance_callback_35_4(void (*arg0)(struct snd_rawmidi_substream * ) ,
                                   struct snd_rawmidi_substream *arg1 ) ;
void ldv_io_instance_callback_36_17(void (*arg0)(struct snd_rawmidi_substream * ,
                                                 int ) , struct snd_rawmidi_substream *arg1 ,
                                    int arg2 ) ;
void ldv_io_instance_callback_36_4(void (*arg0)(struct snd_rawmidi_substream * ) ,
                                   struct snd_rawmidi_substream *arg1 ) ;
int ldv_io_instance_probe_30_11(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
int ldv_io_instance_probe_31_11(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
int ldv_io_instance_probe_32_11(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
int ldv_io_instance_probe_33_11(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
int ldv_io_instance_probe_34_11(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
int ldv_io_instance_probe_35_11(int (*arg0)(struct snd_rawmidi_substream * ) , struct snd_rawmidi_substream *arg1 ) ;
int ldv_io_instance_probe_36_11(int (*arg0)(struct snd_rawmidi_substream * ) , struct snd_rawmidi_substream *arg1 ) ;
void ldv_io_instance_release_30_2(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_release_31_2(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_release_32_2(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_release_33_2(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_release_34_2(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 ) ;
void ldv_io_instance_release_35_2(int (*arg0)(struct snd_rawmidi_substream * ) , struct snd_rawmidi_substream *arg1 ) ;
void ldv_io_instance_release_36_2(int (*arg0)(struct snd_rawmidi_substream * ) , struct snd_rawmidi_substream *arg1 ) ;
int ldv_pci_instance_probe_1_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_1_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_1_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_1_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_1_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_1_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_1_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_1(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_platform_instance_probe_3_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_3_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_pm_ops_instance_complete_2_3(void (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_2_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_late_2_14(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_noirq_2_12(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_2_9(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_late_2_8(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_noirq_2_6(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_prepare_2_22(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_2_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_early_2_7(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_noirq_2_5(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_2_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_early_2_17(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_noirq_2_19(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_idle_2_27(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_resume_2_24(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_suspend_2_25(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_2_21(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_late_2_18(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_noirq_2_20(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_2_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_early_2_13(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_noirq_2_11(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_platform_instance_3(void *arg0 ) ;
void ldv_pm_pm_ops_instance_2(void *arg0 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_struct_psc724_control_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_struct_psc724_control_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_qtet_kcontrol_private_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_struct_qtet_kcontrol_private_dummy_resourceless_instance_7(void *arg0 ) ;
void ldv_struct_qtet_kcontrol_private_dummy_resourceless_instance_8(void *arg0 ) ;
void ldv_struct_snd_akm4xxx_dummy_resourceless_instance_10(void *arg0 ) ;
void ldv_struct_snd_akm4xxx_dummy_resourceless_instance_11(void *arg0 ) ;
void ldv_struct_snd_akm4xxx_dummy_resourceless_instance_12(void *arg0 ) ;
void ldv_struct_snd_akm4xxx_dummy_resourceless_instance_9(void *arg0 ) ;
void ldv_struct_snd_i2c_bit_ops_dummy_resourceless_instance_13(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_14(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_15(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_16(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_17(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_18(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_19(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_20(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_21(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_22(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_23(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_24(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_25(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_26(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_27(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_28(void *arg0 ) ;
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_29(void *arg0 ) ;
void ldv_struct_snd_pcm_ops_io_instance_30(void *arg0 ) ;
void ldv_struct_snd_pcm_ops_io_instance_31(void *arg0 ) ;
void ldv_struct_snd_pcm_ops_io_instance_32(void *arg0 ) ;
void ldv_struct_snd_pcm_ops_io_instance_33(void *arg0 ) ;
void ldv_struct_snd_pcm_ops_io_instance_34(void *arg0 ) ;
void ldv_struct_snd_rawmidi_ops_io_instance_35(void *arg0 ) ;
void ldv_struct_snd_rawmidi_ops_io_instance_36(void *arg0 ) ;
void ldv_struct_snd_wm8776_ctl_dummy_resourceless_instance_37(void *arg0 ) ;
void ldv_timer_dummy_factory_39(void *arg0 ) ;
void ldv_timer_instance_callback_38_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_38(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_13 ;
struct ldv_thread ldv_thread_14 ;
struct ldv_thread ldv_thread_15 ;
struct ldv_thread ldv_thread_16 ;
struct ldv_thread ldv_thread_17 ;
struct ldv_thread ldv_thread_18 ;
struct ldv_thread ldv_thread_19 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_20 ;
struct ldv_thread ldv_thread_21 ;
struct ldv_thread ldv_thread_22 ;
struct ldv_thread ldv_thread_23 ;
struct ldv_thread ldv_thread_24 ;
struct ldv_thread ldv_thread_25 ;
struct ldv_thread ldv_thread_26 ;
struct ldv_thread ldv_thread_27 ;
struct ldv_thread ldv_thread_28 ;
struct ldv_thread ldv_thread_29 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_30 ;
struct ldv_thread ldv_thread_31 ;
struct ldv_thread ldv_thread_32 ;
struct ldv_thread ldv_thread_33 ;
struct ldv_thread ldv_thread_34 ;
struct ldv_thread ldv_thread_35 ;
struct ldv_thread ldv_thread_36 ;
struct ldv_thread ldv_thread_37 ;
struct ldv_thread ldv_thread_38 ;
struct ldv_thread ldv_thread_39 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_44 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
void ldv_EMGentry_exit_vt1724_driver_exit_44_2(void (*arg0)(void) )
{
  {
  {
  vt1724_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_vt1724_driver_init_44_27(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = vt1724_driver_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_43_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_43_pci_driver_pci_driver = arg1;
    ldv_dispatch_register_43_2(ldv_43_pci_driver_pci_driver);
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
void ldv_dispatch_deregister_42_1(struct pci_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_factory_18_44_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_10_44_5(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_11_44_6(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_12_44_7(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_13_44_8(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_16_44_9(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_9_44_10(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_io_instance_14_44_11(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_io_instance_15_44_12(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_platform_instance_8_44_13(void)
{
  {
  return;
}
}
void ldv_dispatch_instance_deregister_39_2(struct timer_list *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_register_39_3(struct timer_list *arg0 )
{
  struct ldv_struct_timer_instance_38 *cf_arg_38 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_38 = (struct ldv_struct_timer_instance_38 *)tmp;
  cf_arg_38->arg0 = arg0;
  ldv_timer_timer_instance_38((void *)cf_arg_38);
  }
  return;
}
}
void ldv_dispatch_irq_deregister_40_1(int arg0 )
{
  {
  return;
}
}
void ldv_dispatch_irq_register_41_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
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
  struct ldv_struct_platform_instance_3 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_pm_pm_ops_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_43_2(struct pci_driver *arg0 )
{
  struct ldv_struct_pci_instance_1 *cf_arg_1 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_1 = (struct ldv_struct_pci_instance_1 *)tmp;
  cf_arg_1->arg0 = arg0;
  ldv_pci_pci_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_dispatch_register_dummy_factory_18_44_14(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_39 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_39 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_timer_dummy_factory_39((void *)cf_arg_39);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_10_44_15(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_8 ;
  struct ldv_struct_platform_instance_3 *cf_arg_6 ;
  struct ldv_struct_platform_instance_3 *cf_arg_7 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_8 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_qtet_kcontrol_private_dummy_resourceless_instance_8((void *)cf_arg_8);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_platform_instance_3 *)tmp___0;
  ldv_struct_qtet_kcontrol_private_dummy_resourceless_instance_6((void *)cf_arg_6);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_7 = (struct ldv_struct_platform_instance_3 *)tmp___1;
  ldv_struct_qtet_kcontrol_private_dummy_resourceless_instance_7((void *)cf_arg_7);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_11_44_16(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_9 ;
  struct ldv_struct_platform_instance_3 *cf_arg_10 ;
  struct ldv_struct_platform_instance_3 *cf_arg_11 ;
  struct ldv_struct_platform_instance_3 *cf_arg_12 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_9 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_snd_akm4xxx_dummy_resourceless_instance_9((void *)cf_arg_9);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_10 = (struct ldv_struct_platform_instance_3 *)tmp___0;
  ldv_struct_snd_akm4xxx_dummy_resourceless_instance_10((void *)cf_arg_10);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_11 = (struct ldv_struct_platform_instance_3 *)tmp___1;
  ldv_struct_snd_akm4xxx_dummy_resourceless_instance_11((void *)cf_arg_11);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_12 = (struct ldv_struct_platform_instance_3 *)tmp___2;
  ldv_struct_snd_akm4xxx_dummy_resourceless_instance_12((void *)cf_arg_12);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_12_44_17(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_13 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_13 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_snd_i2c_bit_ops_dummy_resourceless_instance_13((void *)cf_arg_13);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_13_44_18(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_14 ;
  struct ldv_struct_platform_instance_3 *cf_arg_15 ;
  struct ldv_struct_platform_instance_3 *cf_arg_16 ;
  struct ldv_struct_platform_instance_3 *cf_arg_17 ;
  struct ldv_struct_platform_instance_3 *cf_arg_18 ;
  struct ldv_struct_platform_instance_3 *cf_arg_19 ;
  struct ldv_struct_platform_instance_3 *cf_arg_20 ;
  struct ldv_struct_platform_instance_3 *cf_arg_21 ;
  struct ldv_struct_platform_instance_3 *cf_arg_22 ;
  struct ldv_struct_platform_instance_3 *cf_arg_23 ;
  struct ldv_struct_platform_instance_3 *cf_arg_24 ;
  struct ldv_struct_platform_instance_3 *cf_arg_25 ;
  struct ldv_struct_platform_instance_3 *cf_arg_26 ;
  struct ldv_struct_platform_instance_3 *cf_arg_27 ;
  struct ldv_struct_platform_instance_3 *cf_arg_28 ;
  struct ldv_struct_platform_instance_3 *cf_arg_29 ;
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
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_14 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_14((void *)cf_arg_14);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_15 = (struct ldv_struct_platform_instance_3 *)tmp___0;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_15((void *)cf_arg_15);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_16 = (struct ldv_struct_platform_instance_3 *)tmp___1;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_16((void *)cf_arg_16);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_17 = (struct ldv_struct_platform_instance_3 *)tmp___2;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_17((void *)cf_arg_17);
  tmp___3 = ldv_xmalloc(4UL);
  cf_arg_18 = (struct ldv_struct_platform_instance_3 *)tmp___3;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_18((void *)cf_arg_18);
  tmp___4 = ldv_xmalloc(4UL);
  cf_arg_19 = (struct ldv_struct_platform_instance_3 *)tmp___4;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_19((void *)cf_arg_19);
  tmp___5 = ldv_xmalloc(4UL);
  cf_arg_20 = (struct ldv_struct_platform_instance_3 *)tmp___5;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_20((void *)cf_arg_20);
  tmp___6 = ldv_xmalloc(4UL);
  cf_arg_21 = (struct ldv_struct_platform_instance_3 *)tmp___6;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_21((void *)cf_arg_21);
  tmp___7 = ldv_xmalloc(4UL);
  cf_arg_22 = (struct ldv_struct_platform_instance_3 *)tmp___7;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_22((void *)cf_arg_22);
  tmp___8 = ldv_xmalloc(4UL);
  cf_arg_23 = (struct ldv_struct_platform_instance_3 *)tmp___8;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_23((void *)cf_arg_23);
  tmp___9 = ldv_xmalloc(4UL);
  cf_arg_24 = (struct ldv_struct_platform_instance_3 *)tmp___9;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_24((void *)cf_arg_24);
  tmp___10 = ldv_xmalloc(4UL);
  cf_arg_25 = (struct ldv_struct_platform_instance_3 *)tmp___10;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_25((void *)cf_arg_25);
  tmp___11 = ldv_xmalloc(4UL);
  cf_arg_26 = (struct ldv_struct_platform_instance_3 *)tmp___11;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_26((void *)cf_arg_26);
  tmp___12 = ldv_xmalloc(4UL);
  cf_arg_27 = (struct ldv_struct_platform_instance_3 *)tmp___12;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_27((void *)cf_arg_27);
  tmp___13 = ldv_xmalloc(4UL);
  cf_arg_28 = (struct ldv_struct_platform_instance_3 *)tmp___13;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_28((void *)cf_arg_28);
  tmp___14 = ldv_xmalloc(4UL);
  cf_arg_29 = (struct ldv_struct_platform_instance_3 *)tmp___14;
  ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_29((void *)cf_arg_29);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_16_44_19(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_37 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_37 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_snd_wm8776_ctl_dummy_resourceless_instance_37((void *)cf_arg_37);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_9_44_20(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_4 ;
  struct ldv_struct_platform_instance_3 *cf_arg_5 ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_psc724_control_dummy_resourceless_instance_4((void *)cf_arg_4);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_platform_instance_3 *)tmp___0;
  ldv_struct_psc724_control_dummy_resourceless_instance_5((void *)cf_arg_5);
  }
  return;
}
}
void ldv_dispatch_register_io_instance_14_44_21(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_32 ;
  struct ldv_struct_platform_instance_3 *cf_arg_33 ;
  struct ldv_struct_platform_instance_3 *cf_arg_34 ;
  struct ldv_struct_platform_instance_3 *cf_arg_30 ;
  struct ldv_struct_platform_instance_3 *cf_arg_31 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_32 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_snd_pcm_ops_io_instance_32((void *)cf_arg_32);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_33 = (struct ldv_struct_platform_instance_3 *)tmp___0;
  ldv_struct_snd_pcm_ops_io_instance_33((void *)cf_arg_33);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_34 = (struct ldv_struct_platform_instance_3 *)tmp___1;
  ldv_struct_snd_pcm_ops_io_instance_34((void *)cf_arg_34);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_30 = (struct ldv_struct_platform_instance_3 *)tmp___2;
  ldv_struct_snd_pcm_ops_io_instance_30((void *)cf_arg_30);
  tmp___3 = ldv_xmalloc(4UL);
  cf_arg_31 = (struct ldv_struct_platform_instance_3 *)tmp___3;
  ldv_struct_snd_pcm_ops_io_instance_31((void *)cf_arg_31);
  }
  return;
}
}
void ldv_dispatch_register_io_instance_15_44_22(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_35 ;
  struct ldv_struct_platform_instance_3 *cf_arg_36 ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_35 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_struct_snd_rawmidi_ops_io_instance_35((void *)cf_arg_35);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_36 = (struct ldv_struct_platform_instance_3 *)tmp___0;
  ldv_struct_snd_rawmidi_ops_io_instance_36((void *)cf_arg_36);
  }
  return;
}
}
void ldv_dispatch_register_platform_instance_8_44_23(void)
{
  struct ldv_struct_platform_instance_3 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_platform_instance_3 *)tmp;
  ldv_pm_platform_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_12(void (*arg0)(struct snd_akm4xxx * ,
                                                                 int ) , struct snd_akm4xxx *arg1 ,
                                                    int arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_3(void (*arg0)(struct snd_akm4xxx * ,
                                                                int ) , struct snd_akm4xxx *arg1 ,
                                                   int arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_12(void (*arg0)(struct snd_akm4xxx * ,
                                                                 int ) , struct snd_akm4xxx *arg1 ,
                                                    int arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_15(void (*arg0)(struct snd_akm4xxx * ,
                                                                 int , unsigned char ,
                                                                 unsigned char ) ,
                                                    struct snd_akm4xxx *arg1 , int arg2 ,
                                                    unsigned char arg3 , unsigned char arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, (int )arg3, (int )arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_3(void (*arg0)(struct snd_akm4xxx * ,
                                                                int ) , struct snd_akm4xxx *arg1 ,
                                                   int arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_12(void (*arg0)(struct snd_akm4xxx * ,
                                                                int ) , struct snd_akm4xxx *arg1 ,
                                                   int arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_15(void (*arg0)(struct snd_akm4xxx * ,
                                                                int , unsigned char ,
                                                                unsigned char ) ,
                                                   struct snd_akm4xxx *arg1 , int arg2 ,
                                                   unsigned char arg3 , unsigned char arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, (int )arg3, (int )arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_3(void (*arg0)(struct snd_akm4xxx * ,
                                                               int ) , struct snd_akm4xxx *arg1 ,
                                                  int arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_entry_EMGentry_44(void *arg0 )
{
  void (*ldv_44_exit_vt1724_driver_exit_default)(void) ;
  int (*ldv_44_init_vt1724_driver_init_default)(void) ;
  int ldv_44_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_44_ret_default = ldv_EMGentry_init_vt1724_driver_init_44_27(ldv_44_init_vt1724_driver_init_default);
  ldv_44_ret_default = ldv_ldv_post_init_167(ldv_44_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_44_ret_default != 0);
    ldv_ldv_check_final_state_168();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_44_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_platform_instance_8_44_23();
      ldv_dispatch_register_io_instance_15_44_22();
      ldv_dispatch_register_io_instance_14_44_21();
      ldv_dispatch_register_dummy_resourceless_instance_9_44_20();
      ldv_dispatch_register_dummy_resourceless_instance_16_44_19();
      ldv_dispatch_register_dummy_resourceless_instance_13_44_18();
      ldv_dispatch_register_dummy_resourceless_instance_12_44_17();
      ldv_dispatch_register_dummy_resourceless_instance_11_44_16();
      ldv_dispatch_register_dummy_resourceless_instance_10_44_15();
      ldv_dispatch_register_dummy_factory_18_44_14();
      ldv_dispatch_deregister_platform_instance_8_44_13();
      ldv_dispatch_deregister_io_instance_15_44_12();
      ldv_dispatch_deregister_io_instance_14_44_11();
      ldv_dispatch_deregister_dummy_resourceless_instance_9_44_10();
      ldv_dispatch_deregister_dummy_resourceless_instance_16_44_9();
      ldv_dispatch_deregister_dummy_resourceless_instance_13_44_8();
      ldv_dispatch_deregister_dummy_resourceless_instance_12_44_7();
      ldv_dispatch_deregister_dummy_resourceless_instance_11_44_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_10_44_5();
      ldv_dispatch_deregister_dummy_factory_18_44_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_vt1724_driver_exit_44_2(ldv_44_exit_vt1724_driver_exit_default);
    ldv_ldv_check_final_state_169();
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
  ldv_ldv_initialize_170();
  ldv_entry_EMGentry_44((void *)0);
  }
return 0;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_40_line_line ;
  {
  {
  ldv_40_line_line = arg1;
  ldv_dispatch_irq_deregister_40_1(ldv_40_line_line);
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
  tmp = snd_vt1724_interrupt(arg1, arg2);
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
void ldv_io_instance_callback_30_17(int (*arg0)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ,
                                    struct snd_pcm_substream *arg1 , struct snd_pcm_hw_params *arg2 )
{
  {
  {
  snd_vt1724_pcm_hw_params(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_30_18(int (*arg0)(struct snd_pcm_substream * , unsigned int ,
                                                void * ) , struct snd_pcm_substream *arg1 ,
                                    unsigned int arg2 , void *arg3 )
{
  {
  {
  snd_pcm_lib_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_30_21(unsigned long (*arg0)(struct snd_pcm_substream * ) ,
                                    struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_pcm_pointer(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_30_22(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_pcm_prepare(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_30_23(int (*arg0)(struct snd_pcm_substream * , int ) ,
                                    struct snd_pcm_substream *arg1 , int arg2 )
{
  {
  {
  snd_vt1724_pcm_trigger(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_30_4(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_pcm_hw_free(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_31_17(int (*arg0)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ,
                                    struct snd_pcm_substream *arg1 , struct snd_pcm_hw_params *arg2 )
{
  {
  {
  snd_vt1724_pcm_hw_params(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_31_18(int (*arg0)(struct snd_pcm_substream * , unsigned int ,
                                                void * ) , struct snd_pcm_substream *arg1 ,
                                    unsigned int arg2 , void *arg3 )
{
  {
  {
  snd_pcm_lib_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_31_21(unsigned long (*arg0)(struct snd_pcm_substream * ) ,
                                    struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_pcm_pointer(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_31_22(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_pcm_prepare(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_31_23(int (*arg0)(struct snd_pcm_substream * , int ) ,
                                    struct snd_pcm_substream *arg1 , int arg2 )
{
  {
  {
  snd_vt1724_pcm_trigger(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_31_4(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_pcm_hw_free(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_32_17(int (*arg0)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ,
                                    struct snd_pcm_substream *arg1 , struct snd_pcm_hw_params *arg2 )
{
  {
  {
  snd_vt1724_pcm_hw_params(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_32_18(int (*arg0)(struct snd_pcm_substream * , unsigned int ,
                                                void * ) , struct snd_pcm_substream *arg1 ,
                                    unsigned int arg2 , void *arg3 )
{
  {
  {
  snd_pcm_lib_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_32_21(unsigned long (*arg0)(struct snd_pcm_substream * ) ,
                                    struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_pcm_pointer(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_32_22(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_playback_indep_prepare(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_32_23(int (*arg0)(struct snd_pcm_substream * , int ) ,
                                    struct snd_pcm_substream *arg1 , int arg2 )
{
  {
  {
  snd_vt1724_pcm_trigger(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_32_4(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_pcm_hw_free(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_33_17(int (*arg0)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ,
                                    struct snd_pcm_substream *arg1 , struct snd_pcm_hw_params *arg2 )
{
  {
  {
  snd_vt1724_pcm_hw_params(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_33_18(int (*arg0)(struct snd_pcm_substream * , unsigned int ,
                                                void * ) , struct snd_pcm_substream *arg1 ,
                                    unsigned int arg2 , void *arg3 )
{
  {
  {
  snd_pcm_lib_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_33_21(unsigned long (*arg0)(struct snd_pcm_substream * ) ,
                                    struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_playback_pro_pointer(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_33_22(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_playback_pro_prepare(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_33_23(int (*arg0)(struct snd_pcm_substream * , int ) ,
                                    struct snd_pcm_substream *arg1 , int arg2 )
{
  {
  {
  snd_vt1724_pcm_trigger(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_33_4(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_pcm_hw_free(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_34_17(int (*arg0)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ,
                                    struct snd_pcm_substream *arg1 , struct snd_pcm_hw_params *arg2 )
{
  {
  {
  snd_vt1724_pcm_hw_params(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_34_18(int (*arg0)(struct snd_pcm_substream * , unsigned int ,
                                                void * ) , struct snd_pcm_substream *arg1 ,
                                    unsigned int arg2 , void *arg3 )
{
  {
  {
  snd_pcm_lib_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_34_21(unsigned long (*arg0)(struct snd_pcm_substream * ) ,
                                    struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_pcm_pointer(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_34_22(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_playback_spdif_prepare(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_34_23(int (*arg0)(struct snd_pcm_substream * , int ) ,
                                    struct snd_pcm_substream *arg1 , int arg2 )
{
  {
  {
  snd_vt1724_pcm_trigger(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_34_4(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_pcm_hw_free(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_35_17(void (*arg0)(struct snd_rawmidi_substream * ,
                                                 int ) , struct snd_rawmidi_substream *arg1 ,
                                    int arg2 )
{
  {
  {
  vt1724_midi_input_trigger(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_35_4(void (*arg0)(struct snd_rawmidi_substream * ) ,
                                   struct snd_rawmidi_substream *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_36_17(void (*arg0)(struct snd_rawmidi_substream * ,
                                                 int ) , struct snd_rawmidi_substream *arg1 ,
                                    int arg2 )
{
  {
  {
  vt1724_midi_output_trigger(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_36_4(void (*arg0)(struct snd_rawmidi_substream * ) ,
                                   struct snd_rawmidi_substream *arg1 )
{
  {
  {
  vt1724_midi_output_drain(arg1);
  }
  return;
}
}
int ldv_io_instance_probe_30_11(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  int tmp ;
  {
  {
  tmp = snd_vt1724_capture_pro_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_31_11(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  int tmp ;
  {
  {
  tmp = snd_vt1724_capture_spdif_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_32_11(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  int tmp ;
  {
  {
  tmp = snd_vt1724_playback_indep_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_33_11(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  int tmp ;
  {
  {
  tmp = snd_vt1724_playback_pro_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_34_11(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  int tmp ;
  {
  {
  tmp = snd_vt1724_playback_spdif_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_35_11(int (*arg0)(struct snd_rawmidi_substream * ) , struct snd_rawmidi_substream *arg1 )
{
  int tmp ;
  {
  {
  tmp = vt1724_midi_input_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_36_11(int (*arg0)(struct snd_rawmidi_substream * ) , struct snd_rawmidi_substream *arg1 )
{
  int tmp ;
  {
  {
  tmp = vt1724_midi_output_open(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_30_2(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_capture_pro_close(arg1);
  }
  return;
}
}
void ldv_io_instance_release_31_2(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_capture_spdif_close(arg1);
  }
  return;
}
}
void ldv_io_instance_release_32_2(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_playback_indep_close(arg1);
  }
  return;
}
}
void ldv_io_instance_release_33_2(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_playback_pro_close(arg1);
  }
  return;
}
}
void ldv_io_instance_release_34_2(int (*arg0)(struct snd_pcm_substream * ) , struct snd_pcm_substream *arg1 )
{
  {
  {
  snd_vt1724_playback_spdif_close(arg1);
  }
  return;
}
}
void ldv_io_instance_release_35_2(int (*arg0)(struct snd_rawmidi_substream * ) , struct snd_rawmidi_substream *arg1 )
{
  {
  {
  vt1724_midi_input_close(arg1);
  }
  return;
}
}
void ldv_io_instance_release_36_2(int (*arg0)(struct snd_rawmidi_substream * ) , struct snd_rawmidi_substream *arg1 )
{
  {
  {
  vt1724_midi_output_close(arg1);
  }
  return;
}
}
int ldv_pci_instance_probe_1_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = snd_vt1724_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_1_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  snd_vt1724_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_1_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_1_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_1_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_1_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
int ldv_pci_instance_suspend_late_1_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
void ldv_pci_pci_instance_1(void *arg0 )
{
  struct pci_driver *ldv_1_container_pci_driver ;
  struct pci_dev *ldv_1_resource_dev ;
  struct pm_message ldv_1_resource_pm_message ;
  struct pci_device_id *ldv_1_resource_struct_pci_device_id_ptr ;
  int ldv_1_ret_default ;
  struct ldv_struct_pci_instance_1 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_pci_instance_1 *)arg0;
  ldv_1_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_instance_1 *)0)) {
    {
    ldv_1_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(2968UL);
  ldv_1_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_1_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_1;
  return;
  ldv_main_1:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_ldv_pre_probe_171();
    ldv_1_ret_default = ldv_pci_instance_probe_1_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_1_container_pci_driver->probe,
                                                    ldv_1_resource_dev, ldv_1_resource_struct_pci_device_id_ptr);
    ldv_1_ret_default = ldv_ldv_post_probe_172(ldv_1_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
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
    ldv_free((void *)ldv_1_resource_dev);
    ldv_free((void *)ldv_1_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_1:
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
  goto ldv_call_1;
  case_2: ;
  if ((unsigned long )ldv_1_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_1_ret_default = ldv_pci_instance_suspend_1_8(ldv_1_container_pci_driver->suspend,
                                                     ldv_1_resource_dev, ldv_1_resource_pm_message);
    }
  } else {
  }
  {
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  }
  if ((unsigned long )ldv_1_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_1_ret_default = ldv_pci_instance_suspend_late_1_7(ldv_1_container_pci_driver->suspend_late,
                                                          ldv_1_resource_dev, ldv_1_resource_pm_message);
    }
  } else {
  }
  {
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  }
  if ((unsigned long )ldv_1_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_1_6(ldv_1_container_pci_driver->resume_early, ldv_1_resource_dev);
    }
  } else {
  }
  if ((unsigned long )ldv_1_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_1_5(ldv_1_container_pci_driver->resume, ldv_1_resource_dev);
    }
  } else {
  }
  goto ldv_call_1;
  case_3: ;
  if ((unsigned long )ldv_1_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_1_3(ldv_1_container_pci_driver->shutdown, ldv_1_resource_dev);
    }
  } else {
  }
  {
  ldv_pci_instance_release_1_2(ldv_1_container_pci_driver->remove, ldv_1_resource_dev);
  }
  goto ldv_main_1;
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
  struct pci_driver *ldv_42_pci_driver_pci_driver ;
  {
  {
  ldv_42_pci_driver_pci_driver = arg1;
  ldv_dispatch_deregister_42_1(ldv_42_pci_driver_pci_driver);
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
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_3_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_complete_2_3(void (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_2_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  snd_vt1724_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_late_2_14(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_noirq_2_12(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_2_9(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  snd_vt1724_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_late_2_8(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_noirq_2_6(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_prepare_2_22(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_2_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  snd_vt1724_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_early_2_7(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_noirq_2_5(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_2_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  snd_vt1724_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_early_2_17(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_noirq_2_19(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_idle_2_27(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_resume_2_24(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_suspend_2_25(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_2_21(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  snd_vt1724_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_late_2_18(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_noirq_2_20(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_2_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  snd_vt1724_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_early_2_13(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_noirq_2_11(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_platform_instance_3(void *arg0 )
{
  struct platform_driver *ldv_3_container_platform_driver ;
  struct platform_device *ldv_3_ldv_param_14_0_default ;
  struct platform_device *ldv_3_ldv_param_3_0_default ;
  int ldv_3_probed_default ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  {
  ldv_3_probed_default = 1;
  goto ldv_main_3;
  return;
  ldv_main_3:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = ldv_xmalloc(1464UL);
    ldv_3_ldv_param_14_0_default = (struct platform_device *)tmp;
    ldv_ldv_pre_probe_173();
    }
    if ((unsigned long )ldv_3_container_platform_driver->probe != (unsigned long )((int (*)(struct platform_device * ))0)) {
      {
      ldv_3_probed_default = ldv_platform_instance_probe_3_14(ldv_3_container_platform_driver->probe,
                                                              ldv_3_ldv_param_14_0_default);
      }
    } else {
    }
    {
    ldv_3_probed_default = ldv_ldv_post_probe_174(ldv_3_probed_default);
    ldv_free((void *)ldv_3_ldv_param_14_0_default);
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
  case_1:
  {
  tmp___3 = ldv_xmalloc(1464UL);
  ldv_3_ldv_param_3_0_default = (struct platform_device *)tmp___3;
  }
  if ((unsigned long )ldv_3_container_platform_driver->remove != (unsigned long )((int (*)(struct platform_device * ))0)) {
    {
    ldv_platform_instance_release_3_3(ldv_3_container_platform_driver->remove, ldv_3_ldv_param_3_0_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_3_ldv_param_3_0_default);
  ldv_3_probed_default = 1;
  }
  goto ldv_main_3;
  case_2: ;
  goto ldv_call_3;
  case_3:
  {
  ldv_dispatch_pm_register_3_6();
  ldv_dispatch_pm_deregister_3_5();
  }
  goto ldv_call_3;
  goto ldv_call_3;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pm_pm_ops_instance_2(void *arg0 )
{
  struct device *ldv_2_device_device ;
  struct dev_pm_ops *ldv_2_pm_ops_dev_pm_ops ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  goto ldv_do_2;
  return;
  ldv_do_2:
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
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->runtime_idle != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_idle_2_27(ldv_2_pm_ops_dev_pm_ops->runtime_idle, ldv_2_device_device);
    }
  } else {
  }
  goto ldv_do_2;
  case_2: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->runtime_suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_suspend_2_25(ldv_2_pm_ops_dev_pm_ops->runtime_suspend,
                                             ldv_2_device_device);
    }
  } else {
  }
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->runtime_resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_resume_2_24(ldv_2_pm_ops_dev_pm_ops->runtime_resume,
                                            ldv_2_device_device);
    }
  } else {
  }
  goto ldv_do_2;
  case_3: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->prepare != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_prepare_2_22(ldv_2_pm_ops_dev_pm_ops->prepare, ldv_2_device_device);
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
  ldv_pm_ops_instance_suspend_2_21(ldv_2_pm_ops_dev_pm_ops->suspend, ldv_2_device_device);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->suspend_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_noirq_2_20(ldv_2_pm_ops_dev_pm_ops->suspend_noirq,
                                             ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->resume_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_noirq_2_19(ldv_2_pm_ops_dev_pm_ops->resume_noirq,
                                            ldv_2_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->suspend_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_suspend_late_2_18(ldv_2_pm_ops_dev_pm_ops->suspend_late,
                                            ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->resume_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_resume_early_2_17(ldv_2_pm_ops_dev_pm_ops->resume_early,
                                            ldv_2_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_resume_2_16(ldv_2_pm_ops_dev_pm_ops->resume, ldv_2_device_device);
  }
  goto ldv_39289;
  case_2___0:
  {
  ldv_pm_ops_instance_freeze_2_15(ldv_2_pm_ops_dev_pm_ops->freeze, ldv_2_device_device);
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->freeze_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_late_2_14(ldv_2_pm_ops_dev_pm_ops->freeze_late, ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->thaw_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_early_2_13(ldv_2_pm_ops_dev_pm_ops->thaw_early, ldv_2_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->freeze_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_freeze_noirq_2_12(ldv_2_pm_ops_dev_pm_ops->freeze_noirq,
                                            ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->thaw_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_thaw_noirq_2_11(ldv_2_pm_ops_dev_pm_ops->thaw_noirq, ldv_2_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_thaw_2_10(ldv_2_pm_ops_dev_pm_ops->thaw, ldv_2_device_device);
  }
  goto ldv_39289;
  case_3___0:
  {
  ldv_pm_ops_instance_poweroff_2_9(ldv_2_pm_ops_dev_pm_ops->poweroff, ldv_2_device_device);
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->poweroff_late != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_late_2_8(ldv_2_pm_ops_dev_pm_ops->poweroff_late,
                                            ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->restore_early != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_early_2_7(ldv_2_pm_ops_dev_pm_ops->restore_early,
                                            ldv_2_device_device);
      }
    } else {
    }
  } else {
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->poweroff_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_poweroff_noirq_2_6(ldv_2_pm_ops_dev_pm_ops->poweroff_noirq,
                                             ldv_2_device_device);
      }
    } else {
    }
    if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->restore_noirq != (unsigned long )((int (*)(struct device * ))0)) {
      {
      ldv_pm_ops_instance_restore_noirq_2_5(ldv_2_pm_ops_dev_pm_ops->restore_noirq,
                                            ldv_2_device_device);
      }
    } else {
    }
  }
  {
  ldv_pm_ops_instance_restore_2_4(ldv_2_pm_ops_dev_pm_ops->restore, ldv_2_device_device);
  }
  goto ldv_39289;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_39289: ;
  if ((unsigned long )ldv_2_pm_ops_dev_pm_ops->complete != (unsigned long )((void (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_complete_2_3(ldv_2_pm_ops_dev_pm_ops->complete, ldv_2_device_device);
    }
  } else {
  }
  goto ldv_do_2;
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
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_41_callback_handler)(int , void * ) ;
  void *ldv_41_data_data ;
  int ldv_41_line_line ;
  enum irqreturn (*ldv_41_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_41_line_line = (int )arg1;
    ldv_41_callback_handler = arg2;
    ldv_41_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_41_data_data = arg5;
    ldv_dispatch_irq_register_41_2(ldv_41_line_line, ldv_41_callback_handler, ldv_41_thread_thread,
                                   ldv_41_data_data);
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
void ldv_struct_psc724_control_dummy_resourceless_instance_4(void *arg0 )
{
  _Bool (*ldv_4_callback_get)(struct snd_ice1712 * ) ;
  void (*ldv_4_callback_set)(struct snd_ice1712 * , _Bool ) ;
  struct snd_ice1712 *ldv_4_container_struct_snd_ice1712_ptr ;
  _Bool ldv_4_ldv_param_7_1_default ;
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
  ldv_dummy_resourceless_instance_callback_4_7(ldv_4_callback_set, ldv_4_container_struct_snd_ice1712_ptr,
                                               (int )ldv_4_ldv_param_7_1_default);
  }
  goto ldv_call_4;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_get, ldv_4_container_struct_snd_ice1712_ptr);
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
void ldv_struct_psc724_control_dummy_resourceless_instance_5(void *arg0 )
{
  _Bool (*ldv_5_callback_get)(struct snd_ice1712 * ) ;
  void (*ldv_5_callback_set)(struct snd_ice1712 * , _Bool ) ;
  struct snd_ice1712 *ldv_5_container_struct_snd_ice1712_ptr ;
  _Bool ldv_5_ldv_param_7_1_default ;
  int tmp ;
  {
  goto ldv_call_5;
  return;
  ldv_call_5:
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
  ldv_dummy_resourceless_instance_callback_5_7(ldv_5_callback_set, ldv_5_container_struct_snd_ice1712_ptr,
                                               (int )ldv_5_ldv_param_7_1_default);
  }
  goto ldv_call_5;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_get, ldv_5_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
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
void ldv_struct_qtet_kcontrol_private_dummy_resourceless_instance_6(void *arg0 )
{
  unsigned int (*ldv_6_callback_get_register)(struct snd_ice1712 * ) ;
  void (*ldv_6_callback_set_register)(struct snd_ice1712 * , unsigned int ) ;
  struct snd_ice1712 *ldv_6_container_struct_snd_ice1712_ptr ;
  unsigned int ldv_6_ldv_param_7_1_default ;
  int tmp ;
  {
  goto ldv_call_6;
  return;
  ldv_call_6:
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
  ldv_dummy_resourceless_instance_callback_6_7(ldv_6_callback_set_register, ldv_6_container_struct_snd_ice1712_ptr,
                                               ldv_6_ldv_param_7_1_default);
  }
  goto ldv_call_6;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_get_register, ldv_6_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_6;
  goto ldv_call_6;
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
void ldv_struct_qtet_kcontrol_private_dummy_resourceless_instance_7(void *arg0 )
{
  unsigned int (*ldv_7_callback_get_register)(struct snd_ice1712 * ) ;
  void (*ldv_7_callback_set_register)(struct snd_ice1712 * , unsigned int ) ;
  struct snd_ice1712 *ldv_7_container_struct_snd_ice1712_ptr ;
  unsigned int ldv_7_ldv_param_7_1_default ;
  int tmp ;
  {
  goto ldv_call_7;
  return;
  ldv_call_7:
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
  ldv_dummy_resourceless_instance_callback_7_7(ldv_7_callback_set_register, ldv_7_container_struct_snd_ice1712_ptr,
                                               ldv_7_ldv_param_7_1_default);
  }
  goto ldv_call_7;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_get_register, ldv_7_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_7;
  goto ldv_call_7;
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
void ldv_struct_qtet_kcontrol_private_dummy_resourceless_instance_8(void *arg0 )
{
  unsigned int (*ldv_8_callback_get_register)(struct snd_ice1712 * ) ;
  void (*ldv_8_callback_set_register)(struct snd_ice1712 * , unsigned int ) ;
  struct snd_ice1712 *ldv_8_container_struct_snd_ice1712_ptr ;
  unsigned int ldv_8_ldv_param_7_1_default ;
  int tmp ;
  {
  goto ldv_call_8;
  return;
  ldv_call_8:
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
  ldv_dummy_resourceless_instance_callback_8_7(ldv_8_callback_set_register, ldv_8_container_struct_snd_ice1712_ptr,
                                               ldv_8_ldv_param_7_1_default);
  }
  goto ldv_call_8;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_8_3(ldv_8_callback_get_register, ldv_8_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_8;
  goto ldv_call_8;
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
void ldv_struct_snd_i2c_bit_ops_dummy_resourceless_instance_13(void *arg0 )
{
  void (*ldv_13_callback_direction)(struct snd_i2c_bus * , int , int ) ;
  int (*ldv_13_callback_getdata)(struct snd_i2c_bus * , int ) ;
  void (*ldv_13_callback_setlines)(struct snd_i2c_bus * , int , int ) ;
  void (*ldv_13_callback_start)(struct snd_i2c_bus * ) ;
  void (*ldv_13_callback_stop)(struct snd_i2c_bus * ) ;
  struct snd_i2c_bus *ldv_13_container_struct_snd_i2c_bus_ptr ;
  int ldv_13_ldv_param_12_1_default ;
  int ldv_13_ldv_param_12_2_default ;
  int ldv_13_ldv_param_3_1_default ;
  int ldv_13_ldv_param_3_2_default ;
  int ldv_13_ldv_param_9_1_default ;
  int tmp ;
  int tmp___0 ;
  {
  goto ldv_call_13;
  return;
  ldv_call_13:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
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
    goto switch_default;
    case_1:
    {
    ldv_dummy_resourceless_instance_callback_13_16(ldv_13_callback_stop, ldv_13_container_struct_snd_i2c_bus_ptr);
    }
    goto ldv_39414;
    case_2:
    {
    ldv_dummy_resourceless_instance_callback_13_15(ldv_13_callback_start, ldv_13_container_struct_snd_i2c_bus_ptr);
    }
    goto ldv_39414;
    case_3:
    {
    ldv_dummy_resourceless_instance_callback_13_12(ldv_13_callback_setlines, ldv_13_container_struct_snd_i2c_bus_ptr,
                                                   ldv_13_ldv_param_12_1_default,
                                                   ldv_13_ldv_param_12_2_default);
    }
    goto ldv_39414;
    case_4:
    {
    ldv_dummy_resourceless_instance_callback_13_9(ldv_13_callback_getdata, ldv_13_container_struct_snd_i2c_bus_ptr,
                                                  ldv_13_ldv_param_9_1_default);
    }
    goto ldv_39414;
    case_5:
    {
    ldv_dummy_resourceless_instance_callback_13_3(ldv_13_callback_direction, ldv_13_container_struct_snd_i2c_bus_ptr,
                                                  ldv_13_ldv_param_3_1_default, ldv_13_ldv_param_3_2_default);
    }
    goto ldv_39414;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_39414: ;
    goto ldv_call_13;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_14(void *arg0 )
{
  int (*ldv_14_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_14_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_14_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_14_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_14;
  return;
  ldv_call_14:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_14_8(ldv_14_callback_chip_init, ldv_14_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_14;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_14_7(ldv_14_callback_chip_exit, ldv_14_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_14;
  goto ldv_call_14;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_14_3(ldv_14_callback_build_controls, ldv_14_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_14;
  goto ldv_call_14;
  goto ldv_call_14;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_15(void *arg0 )
{
  int (*ldv_15_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_15_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_15_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_15_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_15;
  return;
  ldv_call_15:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_15_8(ldv_15_callback_chip_init, ldv_15_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_15;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_15_7(ldv_15_callback_chip_exit, ldv_15_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_15;
  goto ldv_call_15;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_15_3(ldv_15_callback_build_controls, ldv_15_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_15;
  goto ldv_call_15;
  goto ldv_call_15;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_16(void *arg0 )
{
  int (*ldv_16_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_16_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_16_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_16_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_16;
  return;
  ldv_call_16:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_16_8(ldv_16_callback_chip_init, ldv_16_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_16;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_16_7(ldv_16_callback_chip_exit, ldv_16_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_16;
  goto ldv_call_16;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_16_3(ldv_16_callback_build_controls, ldv_16_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_16;
  goto ldv_call_16;
  goto ldv_call_16;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_17(void *arg0 )
{
  int (*ldv_17_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_17_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_17_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_17_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_17;
  return;
  ldv_call_17:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_17_8(ldv_17_callback_chip_init, ldv_17_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_17;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_17_7(ldv_17_callback_chip_exit, ldv_17_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_17;
  goto ldv_call_17;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_17_3(ldv_17_callback_build_controls, ldv_17_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_17;
  goto ldv_call_17;
  goto ldv_call_17;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_18(void *arg0 )
{
  int (*ldv_18_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_18_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_18_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_18_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_18;
  return;
  ldv_call_18:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_18_8(ldv_18_callback_chip_init, ldv_18_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_18;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_18_7(ldv_18_callback_chip_exit, ldv_18_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_18;
  goto ldv_call_18;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_18_3(ldv_18_callback_build_controls, ldv_18_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_18;
  goto ldv_call_18;
  goto ldv_call_18;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_19(void *arg0 )
{
  int (*ldv_19_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_19_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_19_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_19_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_19;
  return;
  ldv_call_19:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_19_8(ldv_19_callback_chip_init, ldv_19_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_19;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_19_7(ldv_19_callback_chip_exit, ldv_19_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_19;
  goto ldv_call_19;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_19_3(ldv_19_callback_build_controls, ldv_19_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_19;
  goto ldv_call_19;
  goto ldv_call_19;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_20(void *arg0 )
{
  int (*ldv_20_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_20_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_20_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_20_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_20;
  return;
  ldv_call_20:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_20_8(ldv_20_callback_chip_init, ldv_20_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_20;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_20_7(ldv_20_callback_chip_exit, ldv_20_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_20;
  goto ldv_call_20;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_20_3(ldv_20_callback_build_controls, ldv_20_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_20;
  goto ldv_call_20;
  goto ldv_call_20;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_21(void *arg0 )
{
  int (*ldv_21_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_21_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_21_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_21_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_21;
  return;
  ldv_call_21:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_21_8(ldv_21_callback_chip_init, ldv_21_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_21;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_21_7(ldv_21_callback_chip_exit, ldv_21_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_21;
  goto ldv_call_21;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_21_3(ldv_21_callback_build_controls, ldv_21_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_21;
  goto ldv_call_21;
  goto ldv_call_21;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_22(void *arg0 )
{
  int (*ldv_22_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_22_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_22_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_22_container_struct_snd_ice1712_ptr ;
  int tmp ;
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_22_8(ldv_22_callback_chip_init, ldv_22_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_22;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_22_7(ldv_22_callback_chip_exit, ldv_22_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_22_3(ldv_22_callback_build_controls, ldv_22_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_22;
  goto ldv_call_22;
  goto ldv_call_22;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_23(void *arg0 )
{
  int (*ldv_23_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_23_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_23_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_23_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_23;
  return;
  ldv_call_23:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_23_8(ldv_23_callback_chip_init, ldv_23_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_23;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_23_7(ldv_23_callback_chip_exit, ldv_23_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_23;
  goto ldv_call_23;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_23_3(ldv_23_callback_build_controls, ldv_23_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_23;
  goto ldv_call_23;
  goto ldv_call_23;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_24(void *arg0 )
{
  int (*ldv_24_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_24_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_24_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_24_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_24;
  return;
  ldv_call_24:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_24_8(ldv_24_callback_chip_init, ldv_24_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_24;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_24_7(ldv_24_callback_chip_exit, ldv_24_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_24;
  goto ldv_call_24;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_24_3(ldv_24_callback_build_controls, ldv_24_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_24;
  goto ldv_call_24;
  goto ldv_call_24;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_25(void *arg0 )
{
  int (*ldv_25_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_25_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_25_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_25_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_25;
  return;
  ldv_call_25:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_25_8(ldv_25_callback_chip_init, ldv_25_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_25;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_25_7(ldv_25_callback_chip_exit, ldv_25_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_25;
  goto ldv_call_25;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_25_3(ldv_25_callback_build_controls, ldv_25_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_25;
  goto ldv_call_25;
  goto ldv_call_25;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_26(void *arg0 )
{
  int (*ldv_26_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_26_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_26_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_26_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_26;
  return;
  ldv_call_26:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_26_8(ldv_26_callback_chip_init, ldv_26_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_26;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_26_7(ldv_26_callback_chip_exit, ldv_26_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_26;
  goto ldv_call_26;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_26_3(ldv_26_callback_build_controls, ldv_26_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_26;
  goto ldv_call_26;
  goto ldv_call_26;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_27(void *arg0 )
{
  int (*ldv_27_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_27_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_27_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_27_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_27;
  return;
  ldv_call_27:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_27_8(ldv_27_callback_chip_init, ldv_27_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_27;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_27_7(ldv_27_callback_chip_exit, ldv_27_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_27;
  goto ldv_call_27;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_27_3(ldv_27_callback_build_controls, ldv_27_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_27;
  goto ldv_call_27;
  goto ldv_call_27;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_28(void *arg0 )
{
  int (*ldv_28_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_28_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_28_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_28_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_28;
  return;
  ldv_call_28:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_28_8(ldv_28_callback_chip_init, ldv_28_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_28;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_28_7(ldv_28_callback_chip_exit, ldv_28_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_28;
  goto ldv_call_28;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_28_3(ldv_28_callback_build_controls, ldv_28_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_28;
  goto ldv_call_28;
  goto ldv_call_28;
  case_4: ;
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
void ldv_struct_snd_ice1712_card_info_dummy_resourceless_instance_29(void *arg0 )
{
  int (*ldv_29_callback_build_controls)(struct snd_ice1712 * ) ;
  void (*ldv_29_callback_chip_exit)(struct snd_ice1712 * ) ;
  int (*ldv_29_callback_chip_init)(struct snd_ice1712 * ) ;
  struct snd_ice1712 *ldv_29_container_struct_snd_ice1712_ptr ;
  int tmp ;
  {
  goto ldv_call_29;
  return;
  ldv_call_29:
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_29_8(ldv_29_callback_chip_init, ldv_29_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_29;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_29_7(ldv_29_callback_chip_exit, ldv_29_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_29;
  goto ldv_call_29;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_29_3(ldv_29_callback_build_controls, ldv_29_container_struct_snd_ice1712_ptr);
  }
  goto ldv_call_29;
  goto ldv_call_29;
  goto ldv_call_29;
  case_4: ;
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
void ldv_struct_snd_pcm_ops_io_instance_30(void *arg0 )
{
  int (*ldv_30_callback_hw_free)(struct snd_pcm_substream * ) ;
  int (*ldv_30_callback_hw_params)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ;
  int (*ldv_30_callback_ioctl)(struct snd_pcm_substream * , unsigned int , void * ) ;
  unsigned long (*ldv_30_callback_pointer)(struct snd_pcm_substream * ) ;
  int (*ldv_30_callback_prepare)(struct snd_pcm_substream * ) ;
  int (*ldv_30_callback_trigger)(struct snd_pcm_substream * , int ) ;
  struct snd_pcm_ops *ldv_30_container_struct_snd_pcm_ops ;
  unsigned int ldv_30_ldv_param_18_1_default ;
  int ldv_30_ldv_param_23_1_default ;
  struct snd_pcm_hw_params *ldv_30_resource_struct_snd_pcm_hw_params_ptr ;
  struct snd_pcm_substream *ldv_30_resource_struct_snd_pcm_substream_ptr ;
  int ldv_30_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  ldv_30_ret_default = 1;
  tmp = ldv_xmalloc(608UL);
  ldv_30_resource_struct_snd_pcm_hw_params_ptr = (struct snd_pcm_hw_params *)tmp;
  tmp___0 = ldv_xmalloc(872UL);
  ldv_30_resource_struct_snd_pcm_substream_ptr = (struct snd_pcm_substream *)tmp___0;
  }
  goto ldv_main_30;
  return;
  ldv_main_30:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_30_ret_default = ldv_io_instance_probe_30_11(ldv_30_container_struct_snd_pcm_ops->open,
                                                     ldv_30_resource_struct_snd_pcm_substream_ptr);
    ldv_30_ret_default = ldv_filter_err_code(ldv_30_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_30_ret_default == 0);
      }
      goto ldv_call_30;
    } else {
      {
      ldv_assume(ldv_30_ret_default != 0);
      }
      goto ldv_main_30;
    }
  } else {
    {
    ldv_free((void *)ldv_30_resource_struct_snd_pcm_hw_params_ptr);
    ldv_free((void *)ldv_30_resource_struct_snd_pcm_substream_ptr);
    }
    return;
  }
  return;
  ldv_call_30:
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
  if (tmp___3 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___3 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_io_instance_callback_30_23(ldv_30_callback_trigger, ldv_30_resource_struct_snd_pcm_substream_ptr,
                                 ldv_30_ldv_param_23_1_default);
  }
  goto ldv_call_30;
  case_2:
  {
  ldv_io_instance_callback_30_22(ldv_30_callback_prepare, ldv_30_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_30;
  goto ldv_call_30;
  case_3:
  {
  ldv_io_instance_callback_30_21(ldv_30_callback_pointer, ldv_30_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_30;
  goto ldv_call_30;
  goto ldv_call_30;
  case_4:
  {
  ldv_io_instance_callback_30_18(ldv_30_callback_ioctl, ldv_30_resource_struct_snd_pcm_substream_ptr,
                                 ldv_30_ldv_param_18_1_default, (void *)ldv_30_resource_struct_snd_pcm_hw_params_ptr);
  }
  goto ldv_call_30;
  goto ldv_call_30;
  goto ldv_call_30;
  goto ldv_call_30;
  case_5:
  {
  ldv_io_instance_callback_30_17(ldv_30_callback_hw_params, ldv_30_resource_struct_snd_pcm_substream_ptr,
                                 ldv_30_resource_struct_snd_pcm_hw_params_ptr);
  }
  goto ldv_call_30;
  goto ldv_call_30;
  goto ldv_call_30;
  goto ldv_call_30;
  goto ldv_call_30;
  case_6:
  {
  ldv_io_instance_callback_30_4(ldv_30_callback_hw_free, ldv_30_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_30;
  goto ldv_call_30;
  goto ldv_call_30;
  goto ldv_call_30;
  goto ldv_call_30;
  goto ldv_call_30;
  case_7:
  {
  ldv_io_instance_release_30_2(ldv_30_container_struct_snd_pcm_ops->close, ldv_30_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_main_30;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_snd_pcm_ops_io_instance_31(void *arg0 )
{
  int (*ldv_31_callback_hw_free)(struct snd_pcm_substream * ) ;
  int (*ldv_31_callback_hw_params)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ;
  int (*ldv_31_callback_ioctl)(struct snd_pcm_substream * , unsigned int , void * ) ;
  unsigned long (*ldv_31_callback_pointer)(struct snd_pcm_substream * ) ;
  int (*ldv_31_callback_prepare)(struct snd_pcm_substream * ) ;
  int (*ldv_31_callback_trigger)(struct snd_pcm_substream * , int ) ;
  struct snd_pcm_ops *ldv_31_container_struct_snd_pcm_ops ;
  unsigned int ldv_31_ldv_param_18_1_default ;
  int ldv_31_ldv_param_23_1_default ;
  struct snd_pcm_hw_params *ldv_31_resource_struct_snd_pcm_hw_params_ptr ;
  struct snd_pcm_substream *ldv_31_resource_struct_snd_pcm_substream_ptr ;
  int ldv_31_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  ldv_31_ret_default = 1;
  tmp = ldv_xmalloc(608UL);
  ldv_31_resource_struct_snd_pcm_hw_params_ptr = (struct snd_pcm_hw_params *)tmp;
  tmp___0 = ldv_xmalloc(872UL);
  ldv_31_resource_struct_snd_pcm_substream_ptr = (struct snd_pcm_substream *)tmp___0;
  }
  goto ldv_main_31;
  return;
  ldv_main_31:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_31_ret_default = ldv_io_instance_probe_31_11(ldv_31_container_struct_snd_pcm_ops->open,
                                                     ldv_31_resource_struct_snd_pcm_substream_ptr);
    ldv_31_ret_default = ldv_filter_err_code(ldv_31_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_31_ret_default == 0);
      }
      goto ldv_call_31;
    } else {
      {
      ldv_assume(ldv_31_ret_default != 0);
      }
      goto ldv_main_31;
    }
  } else {
    {
    ldv_free((void *)ldv_31_resource_struct_snd_pcm_hw_params_ptr);
    ldv_free((void *)ldv_31_resource_struct_snd_pcm_substream_ptr);
    }
    return;
  }
  return;
  ldv_call_31:
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
  if (tmp___3 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___3 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_io_instance_callback_31_23(ldv_31_callback_trigger, ldv_31_resource_struct_snd_pcm_substream_ptr,
                                 ldv_31_ldv_param_23_1_default);
  }
  goto ldv_call_31;
  case_2:
  {
  ldv_io_instance_callback_31_22(ldv_31_callback_prepare, ldv_31_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_31;
  goto ldv_call_31;
  case_3:
  {
  ldv_io_instance_callback_31_21(ldv_31_callback_pointer, ldv_31_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_31;
  goto ldv_call_31;
  goto ldv_call_31;
  case_4:
  {
  ldv_io_instance_callback_31_18(ldv_31_callback_ioctl, ldv_31_resource_struct_snd_pcm_substream_ptr,
                                 ldv_31_ldv_param_18_1_default, (void *)ldv_31_resource_struct_snd_pcm_hw_params_ptr);
  }
  goto ldv_call_31;
  goto ldv_call_31;
  goto ldv_call_31;
  goto ldv_call_31;
  case_5:
  {
  ldv_io_instance_callback_31_17(ldv_31_callback_hw_params, ldv_31_resource_struct_snd_pcm_substream_ptr,
                                 ldv_31_resource_struct_snd_pcm_hw_params_ptr);
  }
  goto ldv_call_31;
  goto ldv_call_31;
  goto ldv_call_31;
  goto ldv_call_31;
  goto ldv_call_31;
  case_6:
  {
  ldv_io_instance_callback_31_4(ldv_31_callback_hw_free, ldv_31_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_31;
  goto ldv_call_31;
  goto ldv_call_31;
  goto ldv_call_31;
  goto ldv_call_31;
  goto ldv_call_31;
  case_7:
  {
  ldv_io_instance_release_31_2(ldv_31_container_struct_snd_pcm_ops->close, ldv_31_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_main_31;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_snd_pcm_ops_io_instance_32(void *arg0 )
{
  int (*ldv_32_callback_hw_free)(struct snd_pcm_substream * ) ;
  int (*ldv_32_callback_hw_params)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ;
  int (*ldv_32_callback_ioctl)(struct snd_pcm_substream * , unsigned int , void * ) ;
  unsigned long (*ldv_32_callback_pointer)(struct snd_pcm_substream * ) ;
  int (*ldv_32_callback_prepare)(struct snd_pcm_substream * ) ;
  int (*ldv_32_callback_trigger)(struct snd_pcm_substream * , int ) ;
  struct snd_pcm_ops *ldv_32_container_struct_snd_pcm_ops ;
  unsigned int ldv_32_ldv_param_18_1_default ;
  int ldv_32_ldv_param_23_1_default ;
  struct snd_pcm_hw_params *ldv_32_resource_struct_snd_pcm_hw_params_ptr ;
  struct snd_pcm_substream *ldv_32_resource_struct_snd_pcm_substream_ptr ;
  int ldv_32_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  ldv_32_ret_default = 1;
  tmp = ldv_xmalloc(608UL);
  ldv_32_resource_struct_snd_pcm_hw_params_ptr = (struct snd_pcm_hw_params *)tmp;
  tmp___0 = ldv_xmalloc(872UL);
  ldv_32_resource_struct_snd_pcm_substream_ptr = (struct snd_pcm_substream *)tmp___0;
  }
  goto ldv_main_32;
  return;
  ldv_main_32:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_32_ret_default = ldv_io_instance_probe_32_11(ldv_32_container_struct_snd_pcm_ops->open,
                                                     ldv_32_resource_struct_snd_pcm_substream_ptr);
    ldv_32_ret_default = ldv_filter_err_code(ldv_32_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_32_ret_default == 0);
      }
      goto ldv_call_32;
    } else {
      {
      ldv_assume(ldv_32_ret_default != 0);
      }
      goto ldv_main_32;
    }
  } else {
    {
    ldv_free((void *)ldv_32_resource_struct_snd_pcm_hw_params_ptr);
    ldv_free((void *)ldv_32_resource_struct_snd_pcm_substream_ptr);
    }
    return;
  }
  return;
  ldv_call_32:
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
  if (tmp___3 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___3 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_io_instance_callback_32_23(ldv_32_callback_trigger, ldv_32_resource_struct_snd_pcm_substream_ptr,
                                 ldv_32_ldv_param_23_1_default);
  }
  goto ldv_call_32;
  case_2:
  {
  ldv_io_instance_callback_32_22(ldv_32_callback_prepare, ldv_32_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_32;
  goto ldv_call_32;
  case_3:
  {
  ldv_io_instance_callback_32_21(ldv_32_callback_pointer, ldv_32_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_32;
  goto ldv_call_32;
  goto ldv_call_32;
  case_4:
  {
  ldv_io_instance_callback_32_18(ldv_32_callback_ioctl, ldv_32_resource_struct_snd_pcm_substream_ptr,
                                 ldv_32_ldv_param_18_1_default, (void *)ldv_32_resource_struct_snd_pcm_hw_params_ptr);
  }
  goto ldv_call_32;
  goto ldv_call_32;
  goto ldv_call_32;
  goto ldv_call_32;
  case_5:
  {
  ldv_io_instance_callback_32_17(ldv_32_callback_hw_params, ldv_32_resource_struct_snd_pcm_substream_ptr,
                                 ldv_32_resource_struct_snd_pcm_hw_params_ptr);
  }
  goto ldv_call_32;
  goto ldv_call_32;
  goto ldv_call_32;
  goto ldv_call_32;
  goto ldv_call_32;
  case_6:
  {
  ldv_io_instance_callback_32_4(ldv_32_callback_hw_free, ldv_32_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_32;
  goto ldv_call_32;
  goto ldv_call_32;
  goto ldv_call_32;
  goto ldv_call_32;
  goto ldv_call_32;
  case_7:
  {
  ldv_io_instance_release_32_2(ldv_32_container_struct_snd_pcm_ops->close, ldv_32_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_main_32;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_snd_pcm_ops_io_instance_33(void *arg0 )
{
  int (*ldv_33_callback_hw_free)(struct snd_pcm_substream * ) ;
  int (*ldv_33_callback_hw_params)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ;
  int (*ldv_33_callback_ioctl)(struct snd_pcm_substream * , unsigned int , void * ) ;
  unsigned long (*ldv_33_callback_pointer)(struct snd_pcm_substream * ) ;
  int (*ldv_33_callback_prepare)(struct snd_pcm_substream * ) ;
  int (*ldv_33_callback_trigger)(struct snd_pcm_substream * , int ) ;
  struct snd_pcm_ops *ldv_33_container_struct_snd_pcm_ops ;
  unsigned int ldv_33_ldv_param_18_1_default ;
  int ldv_33_ldv_param_23_1_default ;
  struct snd_pcm_hw_params *ldv_33_resource_struct_snd_pcm_hw_params_ptr ;
  struct snd_pcm_substream *ldv_33_resource_struct_snd_pcm_substream_ptr ;
  int ldv_33_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  ldv_33_ret_default = 1;
  tmp = ldv_xmalloc(608UL);
  ldv_33_resource_struct_snd_pcm_hw_params_ptr = (struct snd_pcm_hw_params *)tmp;
  tmp___0 = ldv_xmalloc(872UL);
  ldv_33_resource_struct_snd_pcm_substream_ptr = (struct snd_pcm_substream *)tmp___0;
  }
  goto ldv_main_33;
  return;
  ldv_main_33:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_33_ret_default = ldv_io_instance_probe_33_11(ldv_33_container_struct_snd_pcm_ops->open,
                                                     ldv_33_resource_struct_snd_pcm_substream_ptr);
    ldv_33_ret_default = ldv_filter_err_code(ldv_33_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_33_ret_default == 0);
      }
      goto ldv_call_33;
    } else {
      {
      ldv_assume(ldv_33_ret_default != 0);
      }
      goto ldv_main_33;
    }
  } else {
    {
    ldv_free((void *)ldv_33_resource_struct_snd_pcm_hw_params_ptr);
    ldv_free((void *)ldv_33_resource_struct_snd_pcm_substream_ptr);
    }
    return;
  }
  return;
  ldv_call_33:
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
  if (tmp___3 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___3 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_io_instance_callback_33_23(ldv_33_callback_trigger, ldv_33_resource_struct_snd_pcm_substream_ptr,
                                 ldv_33_ldv_param_23_1_default);
  }
  goto ldv_call_33;
  case_2:
  {
  ldv_io_instance_callback_33_22(ldv_33_callback_prepare, ldv_33_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_33;
  goto ldv_call_33;
  case_3:
  {
  ldv_io_instance_callback_33_21(ldv_33_callback_pointer, ldv_33_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_33;
  goto ldv_call_33;
  goto ldv_call_33;
  case_4:
  {
  ldv_io_instance_callback_33_18(ldv_33_callback_ioctl, ldv_33_resource_struct_snd_pcm_substream_ptr,
                                 ldv_33_ldv_param_18_1_default, (void *)ldv_33_resource_struct_snd_pcm_hw_params_ptr);
  }
  goto ldv_call_33;
  goto ldv_call_33;
  goto ldv_call_33;
  goto ldv_call_33;
  case_5:
  {
  ldv_io_instance_callback_33_17(ldv_33_callback_hw_params, ldv_33_resource_struct_snd_pcm_substream_ptr,
                                 ldv_33_resource_struct_snd_pcm_hw_params_ptr);
  }
  goto ldv_call_33;
  goto ldv_call_33;
  goto ldv_call_33;
  goto ldv_call_33;
  goto ldv_call_33;
  case_6:
  {
  ldv_io_instance_callback_33_4(ldv_33_callback_hw_free, ldv_33_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_33;
  goto ldv_call_33;
  goto ldv_call_33;
  goto ldv_call_33;
  goto ldv_call_33;
  goto ldv_call_33;
  case_7:
  {
  ldv_io_instance_release_33_2(ldv_33_container_struct_snd_pcm_ops->close, ldv_33_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_main_33;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_snd_pcm_ops_io_instance_34(void *arg0 )
{
  int (*ldv_34_callback_hw_free)(struct snd_pcm_substream * ) ;
  int (*ldv_34_callback_hw_params)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ;
  int (*ldv_34_callback_ioctl)(struct snd_pcm_substream * , unsigned int , void * ) ;
  unsigned long (*ldv_34_callback_pointer)(struct snd_pcm_substream * ) ;
  int (*ldv_34_callback_prepare)(struct snd_pcm_substream * ) ;
  int (*ldv_34_callback_trigger)(struct snd_pcm_substream * , int ) ;
  struct snd_pcm_ops *ldv_34_container_struct_snd_pcm_ops ;
  unsigned int ldv_34_ldv_param_18_1_default ;
  int ldv_34_ldv_param_23_1_default ;
  struct snd_pcm_hw_params *ldv_34_resource_struct_snd_pcm_hw_params_ptr ;
  struct snd_pcm_substream *ldv_34_resource_struct_snd_pcm_substream_ptr ;
  int ldv_34_ret_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  ldv_34_ret_default = 1;
  tmp = ldv_xmalloc(608UL);
  ldv_34_resource_struct_snd_pcm_hw_params_ptr = (struct snd_pcm_hw_params *)tmp;
  tmp___0 = ldv_xmalloc(872UL);
  ldv_34_resource_struct_snd_pcm_substream_ptr = (struct snd_pcm_substream *)tmp___0;
  }
  goto ldv_main_34;
  return;
  ldv_main_34:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_34_ret_default = ldv_io_instance_probe_34_11(ldv_34_container_struct_snd_pcm_ops->open,
                                                     ldv_34_resource_struct_snd_pcm_substream_ptr);
    ldv_34_ret_default = ldv_filter_err_code(ldv_34_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_34_ret_default == 0);
      }
      goto ldv_call_34;
    } else {
      {
      ldv_assume(ldv_34_ret_default != 0);
      }
      goto ldv_main_34;
    }
  } else {
    {
    ldv_free((void *)ldv_34_resource_struct_snd_pcm_hw_params_ptr);
    ldv_free((void *)ldv_34_resource_struct_snd_pcm_substream_ptr);
    }
    return;
  }
  return;
  ldv_call_34:
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
  if (tmp___3 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___3 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_io_instance_callback_34_23(ldv_34_callback_trigger, ldv_34_resource_struct_snd_pcm_substream_ptr,
                                 ldv_34_ldv_param_23_1_default);
  }
  goto ldv_call_34;
  case_2:
  {
  ldv_io_instance_callback_34_22(ldv_34_callback_prepare, ldv_34_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_34;
  goto ldv_call_34;
  case_3:
  {
  ldv_io_instance_callback_34_21(ldv_34_callback_pointer, ldv_34_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_34;
  goto ldv_call_34;
  goto ldv_call_34;
  case_4:
  {
  ldv_io_instance_callback_34_18(ldv_34_callback_ioctl, ldv_34_resource_struct_snd_pcm_substream_ptr,
                                 ldv_34_ldv_param_18_1_default, (void *)ldv_34_resource_struct_snd_pcm_hw_params_ptr);
  }
  goto ldv_call_34;
  goto ldv_call_34;
  goto ldv_call_34;
  goto ldv_call_34;
  case_5:
  {
  ldv_io_instance_callback_34_17(ldv_34_callback_hw_params, ldv_34_resource_struct_snd_pcm_substream_ptr,
                                 ldv_34_resource_struct_snd_pcm_hw_params_ptr);
  }
  goto ldv_call_34;
  goto ldv_call_34;
  goto ldv_call_34;
  goto ldv_call_34;
  goto ldv_call_34;
  case_6:
  {
  ldv_io_instance_callback_34_4(ldv_34_callback_hw_free, ldv_34_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_call_34;
  goto ldv_call_34;
  goto ldv_call_34;
  goto ldv_call_34;
  goto ldv_call_34;
  goto ldv_call_34;
  case_7:
  {
  ldv_io_instance_release_34_2(ldv_34_container_struct_snd_pcm_ops->close, ldv_34_resource_struct_snd_pcm_substream_ptr);
  }
  goto ldv_main_34;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_snd_rawmidi_ops_io_instance_35(void *arg0 )
{
  void (*ldv_35_callback_drain)(struct snd_rawmidi_substream * ) ;
  void (*ldv_35_callback_trigger)(struct snd_rawmidi_substream * , int ) ;
  struct snd_rawmidi_ops *ldv_35_container_struct_snd_rawmidi_ops ;
  int ldv_35_ldv_param_17_1_default ;
  struct snd_rawmidi_substream *ldv_35_resource_struct_snd_rawmidi_substream_ptr ;
  int ldv_35_ret_default ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  ldv_35_ret_default = 1;
  tmp = ldv_xmalloc(112UL);
  ldv_35_resource_struct_snd_rawmidi_substream_ptr = (struct snd_rawmidi_substream *)tmp;
  }
  goto ldv_main_35;
  return;
  ldv_main_35:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_35_ret_default = ldv_io_instance_probe_35_11(ldv_35_container_struct_snd_rawmidi_ops->open,
                                                     ldv_35_resource_struct_snd_rawmidi_substream_ptr);
    ldv_35_ret_default = ldv_filter_err_code(ldv_35_ret_default);
    tmp___0 = ldv_undef_int();
    }
    if (tmp___0 != 0) {
      {
      ldv_assume(ldv_35_ret_default == 0);
      }
      goto ldv_call_35;
    } else {
      {
      ldv_assume(ldv_35_ret_default != 0);
      }
      goto ldv_main_35;
    }
  } else {
    {
    ldv_free((void *)ldv_35_resource_struct_snd_rawmidi_substream_ptr);
    }
    return;
  }
  return;
  ldv_call_35:
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
  case_1:
  {
  ldv_io_instance_callback_35_17(ldv_35_callback_trigger, ldv_35_resource_struct_snd_rawmidi_substream_ptr,
                                 ldv_35_ldv_param_17_1_default);
  }
  goto ldv_call_35;
  case_2: ;
  if ((unsigned long )ldv_35_callback_drain != (unsigned long )((void (*)(struct snd_rawmidi_substream * ))0)) {
    {
    ldv_io_instance_callback_35_4(ldv_35_callback_drain, ldv_35_resource_struct_snd_rawmidi_substream_ptr);
    }
  } else {
  }
  goto ldv_call_35;
  goto ldv_call_35;
  case_3:
  {
  ldv_io_instance_release_35_2(ldv_35_container_struct_snd_rawmidi_ops->close, ldv_35_resource_struct_snd_rawmidi_substream_ptr);
  }
  goto ldv_main_35;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_snd_rawmidi_ops_io_instance_36(void *arg0 )
{
  void (*ldv_36_callback_drain)(struct snd_rawmidi_substream * ) ;
  void (*ldv_36_callback_trigger)(struct snd_rawmidi_substream * , int ) ;
  struct snd_rawmidi_ops *ldv_36_container_struct_snd_rawmidi_ops ;
  int ldv_36_ldv_param_17_1_default ;
  struct snd_rawmidi_substream *ldv_36_resource_struct_snd_rawmidi_substream_ptr ;
  int ldv_36_ret_default ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  ldv_36_ret_default = 1;
  tmp = ldv_xmalloc(112UL);
  ldv_36_resource_struct_snd_rawmidi_substream_ptr = (struct snd_rawmidi_substream *)tmp;
  }
  goto ldv_main_36;
  return;
  ldv_main_36:
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    ldv_36_ret_default = ldv_io_instance_probe_36_11(ldv_36_container_struct_snd_rawmidi_ops->open,
                                                     ldv_36_resource_struct_snd_rawmidi_substream_ptr);
    ldv_36_ret_default = ldv_filter_err_code(ldv_36_ret_default);
    tmp___0 = ldv_undef_int();
    }
    if (tmp___0 != 0) {
      {
      ldv_assume(ldv_36_ret_default == 0);
      }
      goto ldv_call_36;
    } else {
      {
      ldv_assume(ldv_36_ret_default != 0);
      }
      goto ldv_main_36;
    }
  } else {
    {
    ldv_free((void *)ldv_36_resource_struct_snd_rawmidi_substream_ptr);
    }
    return;
  }
  return;
  ldv_call_36:
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
  case_1:
  {
  ldv_io_instance_callback_36_17(ldv_36_callback_trigger, ldv_36_resource_struct_snd_rawmidi_substream_ptr,
                                 ldv_36_ldv_param_17_1_default);
  }
  goto ldv_call_36;
  case_2:
  {
  ldv_io_instance_callback_36_4(ldv_36_callback_drain, ldv_36_resource_struct_snd_rawmidi_substream_ptr);
  }
  goto ldv_call_36;
  goto ldv_call_36;
  case_3:
  {
  ldv_io_instance_release_36_2(ldv_36_container_struct_snd_rawmidi_ops->close, ldv_36_resource_struct_snd_rawmidi_substream_ptr);
  }
  goto ldv_main_36;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_struct_snd_wm8776_ctl_dummy_resourceless_instance_37(void *arg0 )
{
  void (*ldv_37_callback_get)(struct snd_wm8776 * , unsigned short * , unsigned short * ) ;
  void (*ldv_37_callback_set)(struct snd_wm8776 * , unsigned short , unsigned short ) ;
  struct snd_wm8776 *ldv_37_container_struct_snd_wm8776_ptr ;
  unsigned short *ldv_37_ldv_param_3_1_default ;
  unsigned short *ldv_37_ldv_param_3_2_default ;
  unsigned short ldv_37_ldv_param_9_1_default ;
  unsigned short ldv_37_ldv_param_9_2_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_37;
  return;
  ldv_call_37:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(2UL);
    ldv_37_ldv_param_3_1_default = (unsigned short *)tmp;
    tmp___0 = ldv_xmalloc(2UL);
    ldv_37_ldv_param_3_2_default = (unsigned short *)tmp___0;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_dummy_resourceless_instance_callback_37_9(ldv_37_callback_set, ldv_37_container_struct_snd_wm8776_ptr,
                                                    (int )ldv_37_ldv_param_9_1_default,
                                                    (int )ldv_37_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_37_3(ldv_37_callback_get, ldv_37_container_struct_snd_wm8776_ptr,
                                                    ldv_37_ldv_param_3_1_default,
                                                    ldv_37_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_37_ldv_param_3_1_default);
    ldv_free((void *)ldv_37_ldv_param_3_2_default);
    }
    goto ldv_call_37;
  } else {
    return;
  }
  return;
}
}
void ldv_timer_dummy_factory_39(void *arg0 )
{
  struct timer_list *ldv_39_container_timer_list ;
  {
  {
  ldv_dispatch_instance_register_39_3(ldv_39_container_timer_list);
  ldv_dispatch_instance_deregister_39_2(ldv_39_container_timer_list);
  }
  return;
  return;
}
}
void ldv_timer_instance_callback_38_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_38(void *arg0 )
{
  struct timer_list *ldv_38_container_timer_list ;
  struct ldv_struct_timer_instance_38 *data ;
  {
  data = (struct ldv_struct_timer_instance_38 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_instance_38 *)0)) {
    {
    ldv_38_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_38_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_38_2(ldv_38_container_timer_list->function, ldv_38_container_timer_list->data);
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
__inline static void ldv_spin_lock_irq_104(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_reg_lock_of_snd_ice1712();
  spin_lock_irq(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irq_105(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_reg_lock_of_snd_ice1712();
  spin_unlock_irq(lock);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_106(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_reg_lock_of_snd_ice1712();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_107(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_reg_lock_of_snd_ice1712();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_108(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_reg_lock_of_snd_ice1712();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_lock_110(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_reg_lock_of_snd_ice1712();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_111(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_reg_lock_of_snd_ice1712();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_117(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_reg_lock_of_snd_ice1712();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_open_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_124(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_125(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_126(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_open_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_127(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_132(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_open_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_133(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_134(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_reg_lock_of_snd_ice1712();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_138(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_open_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_139(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_140(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_157(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_i2c_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_158(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_i2c_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_159(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_i2c_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_160(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_i2c_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_irq_161(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
__inline static int ldv_request_irq_162(unsigned int irq , irqreturn_t (*handler)(int ,
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
static int ldv___pci_register_driver_165(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
static void ldv_pci_unregister_driver_166(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_init_167(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_168(void)
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
static void ldv_ldv_check_final_state_169(void)
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
static void ldv_ldv_initialize_170(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
static void ldv_ldv_pre_probe_171(void)
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
static int ldv_ldv_post_probe_172(int retval )
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
static void ldv_ldv_pre_probe_173(void)
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
static int ldv_ldv_post_probe_174(int retval )
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
extern unsigned short snd_ac97_read(struct snd_ac97 * , unsigned short ) ;
extern void snd_ac97_write_cache(struct snd_ac97 * , unsigned short , unsigned short ) ;
static void wm_put(struct snd_ice1712 *ice , int reg , unsigned short val )
{
  unsigned short cval ;
  {
  {
  cval = (unsigned short )((int )((short )(reg << 9)) | (int )((short )val));
  snd_vt1724_write_i2c(ice, 54, (int )((unsigned char )((int )cval >> 8)), (int )((unsigned char )cval));
  }
  return;
}
}
static int snd_vt1724_amp_init(struct snd_ice1712 *ice )
{
  unsigned short wm_inits[8U] ;
  unsigned int i ;
  {
  wm_inits[0] = 0U;
  wm_inits[1] = 0U;
  wm_inits[2] = 1U;
  wm_inits[3] = 0U;
  wm_inits[4] = 2U;
  wm_inits[5] = 8U;
  wm_inits[6] = 3U;
  wm_inits[7] = 1U;
  ice->num_total_dacs = 6U;
  ice->num_total_adcs = 2U;
  if (ice->eeprom.subvendor == 303309847U) {
    i = 0U;
    goto ldv_35494;
    ldv_35493:
    {
    wm_put(ice, (int )wm_inits[i], (int )wm_inits[i + 1U]);
    i = i + 2U;
    }
    ldv_35494: ;
    if (i <= 7U) {
      goto ldv_35493;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int snd_vt1724_amp_add_controls(struct snd_ice1712 *ice )
{
  unsigned short tmp ;
  {
  if ((unsigned long )ice->ac97 != (unsigned long )((struct snd_ac97 *)0)) {
    {
    tmp = snd_ac97_read(ice->ac97, 90);
    snd_ac97_write_cache(ice->ac97, 90, (int )tmp & 32767);
    }
  } else {
  }
  return (0);
}
}
struct snd_ice1712_card_info snd_vt1724_amp_cards[3U] = { {303309847U, "Chaintech AV-710", "av710", 0, & snd_vt1724_amp_init, 0, & snd_vt1724_amp_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 0U, 0},
        {196611U, "AMP Ltd AUDIO2000", "amp2000", 0, & snd_vt1724_amp_init, 0, & snd_vt1724_amp_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 0U, 0}};
void ldv_dummy_resourceless_instance_callback_28_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  snd_vt1724_amp_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_28_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  snd_vt1724_amp_init(arg1);
  }
  return;
}
}
extern void ldv_after_alloc(void * ) ;
static void ldv_mutex_lock_102(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(struct mutex *lock ) ;
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int snd_i2c_bus_create(struct snd_card * , char const * , struct snd_i2c_bus * ,
                              struct snd_i2c_bus ** ) ;
extern int snd_i2c_device_create(struct snd_i2c_bus * , char const * , unsigned char ,
                                 struct snd_i2c_device ** ) ;
extern void snd_akm4xxx_reset(struct snd_akm4xxx * , int ) ;
extern int snd_ak4114_create(struct snd_card * , ak4114_read_t * , ak4114_write_t * ,
                             unsigned char const * , unsigned char const * , void * ,
                             struct ak4114 ** ) ;
extern int snd_ak4114_build(struct ak4114 * , struct snd_pcm_substream * , struct snd_pcm_substream * ) ;
extern int snd_pt2258_reset(struct snd_pt2258 * ) ;
extern int snd_pt2258_build_controls(struct snd_pt2258 * ) ;
__inline static void snd_ice1712_gpio_set_dir(struct snd_ice1712 *ice , unsigned int bits )
{
  {
  {
  (*(ice->gpio.set_dir))(ice, bits);
  }
  return;
}
}
__inline static void snd_ice1712_gpio_set_mask(struct snd_ice1712 *ice , unsigned int bits )
{
  {
  {
  (*(ice->gpio.set_mask))(ice, bits);
  }
  return;
}
}
__inline static void snd_ice1712_gpio_write(struct snd_ice1712 *ice , unsigned int val )
{
  {
  {
  (*(ice->gpio.set_data))(ice, val);
  }
  return;
}
}
__inline static unsigned int snd_ice1712_gpio_read(struct snd_ice1712 *ice )
{
  unsigned int tmp ;
  {
  {
  tmp = (*(ice->gpio.get_data))(ice);
  }
  return (tmp);
}
}
__inline static void snd_ice1712_save_gpio_status(struct snd_ice1712 *ice )
{
  {
  {
  ldv_mutex_lock_102(& ice->gpio_mutex);
  ice->gpio.saved[0] = ice->gpio.direction;
  ice->gpio.saved[1] = ice->gpio.write_mask;
  }
  return;
}
}
__inline static void snd_ice1712_restore_gpio_status(struct snd_ice1712 *ice )
{
  {
  {
  (*(ice->gpio.set_dir))(ice, ice->gpio.saved[0]);
  (*(ice->gpio.set_mask))(ice, ice->gpio.saved[1]);
  ice->gpio.direction = ice->gpio.saved[0];
  ice->gpio.write_mask = ice->gpio.saved[1];
  ldv_mutex_unlock_103(& ice->gpio_mutex);
  }
  return;
}
}
__inline static void snd_ice1712_gpio_write_bits(struct snd_ice1712 *ice , unsigned int mask ,
                                                 unsigned int bits )
{
  unsigned int val ;
  {
  {
  ice->gpio.direction = ice->gpio.direction | mask;
  snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
  val = snd_ice1712_gpio_read(ice);
  val = val & ~ mask;
  val = val | (mask & bits);
  snd_ice1712_gpio_write(ice, val);
  }
  return;
}
}
__inline static int snd_ice1712_gpio_read_bits(struct snd_ice1712 *ice , unsigned int mask )
{
  unsigned int tmp ;
  {
  {
  ice->gpio.direction = ice->gpio.direction & ~ mask;
  snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
  tmp = snd_ice1712_gpio_read(ice);
  }
  return ((int )(tmp & mask));
}
}
extern int snd_ice1712_akm4xxx_init(struct snd_akm4xxx * , struct snd_akm4xxx const * ,
                                    struct snd_ak4xxx_private const * , struct snd_ice1712 * ) ;
extern int snd_ice1712_akm4xxx_build_controls(struct snd_ice1712 * ) ;
static void revo_i2s_mclk_changed(struct snd_ice1712 *ice )
{
  unsigned char tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  tmp = inb((int )((unsigned int )ice->profi_port + 5U));
  outb((int )((unsigned int )tmp | 128U), (int )((unsigned int )ice->profi_port + 5U));
  }
  if (1) {
    {
    __const_udelay(21475000UL);
    }
  } else {
    __ms = 5UL;
    goto ldv_35489;
    ldv_35488:
    {
    __const_udelay(4295000UL);
    }
    ldv_35489:
    tmp___0 = __ms;
    __ms = __ms - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_35488;
    } else {
    }
  }
  {
  tmp___1 = inb((int )((unsigned int )ice->profi_port + 5U));
  outb((int )tmp___1 & 127, (int )((unsigned int )ice->profi_port + 5U));
  }
  return;
}
}
static void revo_set_rate_val(struct snd_akm4xxx *ak , unsigned int rate )
{
  unsigned char old ;
  unsigned char tmp ;
  unsigned char dfs ;
  int reg ;
  int shift ;
  {
  if (rate == 0U) {
    return;
  } else {
  }
  if (rate > 96000U) {
    dfs = 2U;
  } else
  if (rate > 48000U) {
    dfs = 1U;
  } else {
    dfs = 0U;
  }
  if ((unsigned int )ak->type - 3U <= 1U) {
    reg = 2;
    shift = 4;
  } else {
    reg = 1;
    shift = 3;
  }
  tmp = ak->images[reg];
  old = (unsigned int )((unsigned char )((int )tmp >> shift)) & 3U;
  if ((int )old == (int )dfs) {
    return;
  } else {
  }
  {
  snd_akm4xxx_reset(ak, 1);
  tmp = ak->images[reg];
  tmp = (unsigned char )((int )((signed char )tmp) & ~ ((int )((signed char )(3 << shift))));
  tmp = (unsigned char )((int )((signed char )tmp) | (int )((signed char )((int )dfs << shift)));
  ak->images[reg] = tmp;
  snd_akm4xxx_reset(ak, 0);
  }
  return;
}
}
static void revo_i2c_start(struct snd_i2c_bus *bus )
{
  struct snd_ice1712 *ice ;
  {
  {
  ice = (struct snd_ice1712 *)bus->private_data;
  snd_ice1712_save_gpio_status(ice);
  }
  return;
}
}
static void revo_i2c_stop(struct snd_i2c_bus *bus )
{
  struct snd_ice1712 *ice ;
  {
  {
  ice = (struct snd_ice1712 *)bus->private_data;
  snd_ice1712_restore_gpio_status(ice);
  }
  return;
}
}
static void revo_i2c_direction(struct snd_i2c_bus *bus , int clock , int data )
{
  struct snd_ice1712 *ice ;
  unsigned int mask ;
  unsigned int val ;
  {
  ice = (struct snd_ice1712 *)bus->private_data;
  val = 0U;
  if (clock != 0) {
    val = val | 128U;
  } else {
  }
  if (data != 0) {
    val = val | 64U;
  } else {
  }
  {
  mask = 192U;
  ice->gpio.direction = ice->gpio.direction & ~ mask;
  ice->gpio.direction = ice->gpio.direction | val;
  snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
  snd_ice1712_gpio_set_mask(ice, ~ mask);
  }
  return;
}
}
static void revo_i2c_setlines(struct snd_i2c_bus *bus , int clk , int data )
{
  struct snd_ice1712 *ice ;
  unsigned int val ;
  {
  ice = (struct snd_ice1712 *)bus->private_data;
  val = 0U;
  if (clk != 0) {
    val = val | 128U;
  } else {
  }
  if (data != 0) {
    val = val | 64U;
  } else {
  }
  {
  snd_ice1712_gpio_write_bits(ice, 192U, val);
  __const_udelay(21475UL);
  }
  return;
}
}
static int revo_i2c_getdata(struct snd_i2c_bus *bus , int ack )
{
  struct snd_ice1712 *ice ;
  int bit ;
  int tmp ;
  {
  ice = (struct snd_ice1712 *)bus->private_data;
  if (ack != 0) {
    {
    __const_udelay(21475UL);
    }
  } else {
  }
  {
  tmp = snd_ice1712_gpio_read_bits(ice, 64U);
  bit = tmp != 0;
  }
  return (bit);
}
}
static struct snd_i2c_bit_ops revo51_bit_ops = {& revo_i2c_start, & revo_i2c_stop, & revo_i2c_direction, & revo_i2c_setlines,
    0, & revo_i2c_getdata};
static int revo51_i2c_init(struct snd_ice1712 *ice , struct snd_pt2258 *pt )
{
  struct revo51_spec *spec ;
  int err ;
  void *tmp ;
  {
  {
  tmp = kzalloc(24UL, 208U);
  spec = (struct revo51_spec *)tmp;
  }
  if ((unsigned long )spec == (unsigned long )((struct revo51_spec *)0)) {
    return (-12);
  } else {
  }
  {
  ice->spec = (void *)spec;
  err = snd_i2c_bus_create(ice->card, "ICE1724 GPIO6", (struct snd_i2c_bus *)0, & ice->i2c);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  (ice->i2c)->private_data = (void *)ice;
  (ice->i2c)->hw_ops.bit = & revo51_bit_ops;
  err = snd_i2c_device_create(ice->i2c, "PT2258", 64, & spec->dev);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  pt->card = ice->card;
  pt->i2c_bus = ice->i2c;
  pt->i2c_dev = spec->dev;
  spec->pt2258 = pt;
  snd_pt2258_reset(pt);
  }
  return (0);
}
}
static struct snd_akm4xxx_dac_channel const revo71_front[1U] = { {(char *)"PCM Playback Volume", 2U, (char *)"PCM Playback Switch"}};
static struct snd_akm4xxx_dac_channel const revo71_surround[4U] = { {(char *)"PCM Center Playback Volume", 1U, 0},
        {(char *)"PCM LFE Playback Volume", 1U, 0},
        {(char *)"PCM Side Playback Volume", 2U, 0},
        {(char *)"PCM Rear Playback Volume", 2U, 0}};
static struct snd_akm4xxx_dac_channel const revo51_dac[5U] = { {(char *)"PCM Playback Volume", 2U, 0},
        {(char *)"PCM Center Playback Volume", 1U, 0},
        {(char *)"PCM LFE Playback Volume", 1U, 0},
        {(char *)"PCM Rear Playback Volume", 2U, 0},
        {(char *)"PCM Headphone Volume", 2U, 0}};
static char const *revo51_adc_input_names[4U] = { "Mic", "Line", "CD", (char const *)0};
static struct snd_akm4xxx_adc_channel const revo51_adc[1U] = { {(char *)"PCM Capture Volume", (char *)"PCM Capture Switch", 2U, 0, (char const **)(& revo51_adc_input_names)}};
static struct snd_akm4xxx akm_revo_front =
     {0, 0U, 2U, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
    {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}, {0UL,
                                                                               0UL,
                                                                               0UL,
                                                                               0UL},
    {0, 0, 0, 0}, 0U, 5, (struct snd_akm4xxx_dac_channel const *)(& revo71_front),
    0, {0, 0, 0, & revo_set_rate_val}, 0U, 0U, 0};
static struct snd_ak4xxx_private akm_revo_front_priv =
     {0U, 1U, 8U, 2U, 112U, 80U, 112U, 2U, 0U, {0}};
static struct snd_akm4xxx akm_revo_surround =
     {0, 0U, 6U, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
    {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}, {0UL,
                                                                               0UL,
                                                                               0UL,
                                                                               0UL},
    {0, 0, 0, 0}, 1U, 3, (struct snd_akm4xxx_dac_channel const *)(& revo71_surround),
    0, {0, 0, 0, & revo_set_rate_val}, 0U, 0U, 0};
static struct snd_ak4xxx_private akm_revo_surround_priv =
     {0U, 3U, 8U, 2U, 112U, 48U, 112U, 2U, 0U, {0}};
static struct snd_akm4xxx akm_revo51 =
     {0, 0U, 8U, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
    {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}, {0UL,
                                                                               0UL,
                                                                               0UL,
                                                                               0UL},
    {0, 0, 0, 0}, 0U, 4, (struct snd_akm4xxx_dac_channel const *)(& revo51_dac),
    0, {0, 0, 0, & revo_set_rate_val}, 0U, 0U, 0};
static struct snd_ak4xxx_private akm_revo51_priv =
     {0U, 2U, 8U, 2U, 48U, 32U, 48U, 2U, 0U, {0}};
static struct snd_akm4xxx akm_revo51_adc =
     {0, 2U, 0U, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
    {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}, {0UL,
                                                                               0UL,
                                                                               0UL,
                                                                               0UL},
    {0, 0, 0, 0}, 0U, 6, 0, (struct snd_akm4xxx_adc_channel const *)(& revo51_adc),
    {0, 0, 0, 0}, 0U, 0U, 0};
static struct snd_ak4xxx_private akm_revo51_adc_priv =
     {0U, 2U, 8U, 2U, 48U, 16U, 48U, 2U, 0U, {0}};
static struct snd_pt2258 ptc_revo51_volume ;
static void ap192_set_rate_val(struct snd_akm4xxx *ak , unsigned int rate )
{
  struct snd_ice1712 *ice ;
  int dfs ;
  {
  {
  ice = (struct snd_ice1712 *)ak->private_data[0];
  revo_set_rate_val(ak, rate);
  snd_ice1712_gpio_write_bits(ice, 256U, rate > 96000U ? 256U : 0U);
  }
  if (rate > 96000U) {
    dfs = 2;
  } else
  if (rate > 48000U) {
    dfs = 1;
  } else {
    dfs = 0;
  }
  {
  snd_ice1712_gpio_write_bits(ice, 1536U, (unsigned int )(dfs << 9));
  snd_ice1712_gpio_write_bits(ice, 2048U, 0U);
  snd_ice1712_gpio_write_bits(ice, 2048U, 2048U);
  }
  return;
}
}
static struct snd_akm4xxx_dac_channel const ap192_dac[1U] = { {(char *)"PCM Playback Volume", 2U, 0}};
static struct snd_akm4xxx akm_ap192 =
     {0, 0U, 2U, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
    {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}, {0UL,
                                                                               0UL,
                                                                               0UL,
                                                                               0UL},
    {0, 0, 0, 0}, 0U, 4, (struct snd_akm4xxx_dac_channel const *)(& ap192_dac),
    0, {0, 0, 0, & ap192_set_rate_val}, 0U, 0U, 0};
static struct snd_ak4xxx_private akm_ap192_priv =
     {0U, 2U, 8U, 2U, 144U, 128U, 144U, 2U, 0U, {0}};
static void write_data(struct snd_ice1712 *ice , unsigned int gpio , unsigned int data ,
                       int idx )
{
  {
  goto ldv_35566;
  ldv_35565:
  {
  gpio = gpio & 4294967293U;
  snd_ice1712_gpio_write(ice, gpio);
  __const_udelay(4295UL);
  }
  if ((data & (unsigned int )(1 << idx)) != 0U) {
    gpio = gpio | 8U;
  } else {
    gpio = gpio & 4294967287U;
  }
  {
  snd_ice1712_gpio_write(ice, gpio);
  __const_udelay(4295UL);
  gpio = gpio | 2U;
  snd_ice1712_gpio_write(ice, gpio);
  __const_udelay(4295UL);
  idx = idx - 1;
  }
  ldv_35566: ;
  if (idx >= 0) {
    goto ldv_35565;
  } else {
  }
  return;
}
}
static unsigned char read_data(struct snd_ice1712 *ice , unsigned int gpio , int idx )
{
  unsigned char data ;
  unsigned int tmp ;
  {
  data = 0U;
  goto ldv_35575;
  ldv_35574:
  {
  gpio = gpio & 4294967293U;
  snd_ice1712_gpio_write(ice, gpio);
  __const_udelay(4295UL);
  tmp = snd_ice1712_gpio_read(ice);
  }
  if ((tmp & 4U) != 0U) {
    data = (unsigned char )((int )((signed char )data) | (int )((signed char )(1 << idx)));
  } else {
  }
  {
  __const_udelay(4295UL);
  gpio = gpio | 2U;
  snd_ice1712_gpio_write(ice, gpio);
  __const_udelay(4295UL);
  idx = idx - 1;
  }
  ldv_35575: ;
  if (idx >= 0) {
    goto ldv_35574;
  } else {
  }
  return (data);
}
}
static unsigned int ap192_4wire_start(struct snd_ice1712 *ice )
{
  unsigned int tmp ;
  {
  {
  snd_ice1712_save_gpio_status(ice);
  tmp = snd_ice1712_gpio_read(ice);
  tmp = tmp | 2U;
  tmp = tmp | 16U;
  tmp = tmp & 4294967167U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  }
  return (tmp);
}
}
static void ap192_4wire_finish(struct snd_ice1712 *ice , unsigned int tmp )
{
  {
  {
  tmp = tmp | 128U;
  tmp = tmp | 16U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  snd_ice1712_restore_gpio_status(ice);
  }
  return;
}
}
static void ap192_ak4114_write(void *private_data , unsigned char addr , unsigned char data )
{
  struct snd_ice1712 *ice ;
  unsigned int tmp ;
  unsigned int addrdata ;
  {
  {
  ice = (struct snd_ice1712 *)private_data;
  tmp = ap192_4wire_start(ice);
  addrdata = (unsigned int )(((int )addr & 31) | 32);
  addrdata = (addrdata << 8) | (unsigned int )data;
  write_data(ice, tmp, addrdata, 15);
  ap192_4wire_finish(ice, tmp);
  }
  return;
}
}
static unsigned char ap192_ak4114_read(void *private_data , unsigned char addr )
{
  struct snd_ice1712 *ice ;
  unsigned int tmp ;
  unsigned char data ;
  {
  {
  ice = (struct snd_ice1712 *)private_data;
  tmp = ap192_4wire_start(ice);
  write_data(ice, tmp, (unsigned int )addr & 31U, 7);
  data = read_data(ice, tmp, 7);
  ap192_4wire_finish(ice, tmp);
  }
  return (data);
}
}
static int ap192_ak4114_init(struct snd_ice1712 *ice )
{
  unsigned char ak4114_init_vals[6U] ;
  unsigned char ak4114_init_txcsb[5U] ;
  int err ;
  struct revo51_spec *spec ;
  void *tmp ;
  {
  {
  ak4114_init_vals[0] = 7U;
  ak4114_init_vals[1] = 112U;
  ak4114_init_vals[2] = 128U;
  ak4114_init_vals[3] = 72U;
  ak4114_init_vals[4] = 0U;
  ak4114_init_vals[5] = 0U;
  ak4114_init_txcsb[0] = 65U;
  ak4114_init_txcsb[1] = 2U;
  ak4114_init_txcsb[2] = 44U;
  ak4114_init_txcsb[3] = 0U;
  ak4114_init_txcsb[4] = 0U;
  tmp = kzalloc(24UL, 208U);
  spec = (struct revo51_spec *)tmp;
  }
  if ((unsigned long )spec == (unsigned long )((struct revo51_spec *)0)) {
    return (-12);
  } else {
  }
  {
  ice->spec = (void *)spec;
  err = snd_ak4114_create(ice->card, & ap192_ak4114_read, & ap192_ak4114_write, (unsigned char const *)(& ak4114_init_vals),
                          (unsigned char const *)(& ak4114_init_txcsb), (void *)ice,
                          & spec->ak4114);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  (spec->ak4114)->check_flags = 2U;
  return (0);
}
}
static int revo_init(struct snd_ice1712 *ice )
{
  struct snd_akm4xxx *ak ;
  int err ;
  int __ret_warn_on ;
  long tmp ;
  struct snd_akm4xxx *tmp___0 ;
  void *tmp___1 ;
  {
  {
  if (ice->eeprom.subvendor == 303312950U) {
    goto case_303312950;
  } else {
  }
  if (ice->eeprom.subvendor == 303313206U) {
    goto case_303313206;
  } else {
  }
  if (ice->eeprom.subvendor == 303313462U) {
    goto case_303313462;
  } else {
  }
  goto switch_default;
  case_303312950:
  ice->num_total_dacs = 8U;
  ice->num_total_adcs = 2U;
  ice->gpio.i2s_mclk_changed = & revo_i2s_mclk_changed;
  goto ldv_35613;
  case_303313206:
  ice->num_total_dacs = 8U;
  ice->num_total_adcs = 2U;
  goto ldv_35613;
  case_303313462:
  ice->num_total_dacs = 2U;
  ice->num_total_adcs = 2U;
  goto ldv_35613;
  switch_default:
  {
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_fmt("sound/pci/ice1712/revo.c", 527, "BUG?\n");
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  return (-22);
  switch_break: ;
  }
  ldv_35613:
  {
  tmp___1 = kcalloc(2UL, 280UL, 208U);
  tmp___0 = (struct snd_akm4xxx *)tmp___1;
  ice->akm = tmp___0;
  ak = tmp___0;
  }
  if ((unsigned long )ak == (unsigned long )((struct snd_akm4xxx *)0)) {
    return (-12);
  } else {
  }
  {
  if (ice->eeprom.subvendor == 303312950U) {
    goto case_303312950___0;
  } else {
  }
  if (ice->eeprom.subvendor == 303313206U) {
    goto case_303313206___0;
  } else {
  }
  if (ice->eeprom.subvendor == 303313462U) {
    goto case_303313462___0;
  } else {
  }
  goto switch_break___0;
  case_303312950___0:
  {
  ice->akm_codecs = 2U;
  err = snd_ice1712_akm4xxx_init(ak, (struct snd_akm4xxx const *)(& akm_revo_front),
                                 (struct snd_ak4xxx_private const *)(& akm_revo_front_priv),
                                 ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = snd_ice1712_akm4xxx_init(ak + 1UL, (struct snd_akm4xxx const *)(& akm_revo_surround),
                                 (struct snd_ak4xxx_private const *)(& akm_revo_surround_priv),
                                 ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  snd_ice1712_gpio_write_bits(ice, 4194304U, 4194304U);
  }
  goto ldv_35620;
  case_303313206___0:
  {
  ice->akm_codecs = 2U;
  err = snd_ice1712_akm4xxx_init(ak, (struct snd_akm4xxx const *)(& akm_revo51),
                                 (struct snd_ak4xxx_private const *)(& akm_revo51_priv),
                                 ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = snd_ice1712_akm4xxx_init(ak + 1UL, (struct snd_akm4xxx const *)(& akm_revo51_adc),
                                 (struct snd_ak4xxx_private const *)(& akm_revo51_adc_priv),
                                 ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = revo51_i2c_init(ice, & ptc_revo51_volume);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  snd_ice1712_gpio_write_bits(ice, 4194304U, 4194304U);
  }
  goto ldv_35620;
  case_303313462___0:
  {
  ice->akm_codecs = 1U;
  err = snd_ice1712_akm4xxx_init(ak, (struct snd_akm4xxx const *)(& akm_ap192),
                                 (struct snd_ak4xxx_private const *)(& akm_ap192_priv),
                                 ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = ap192_ak4114_init(ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  snd_ice1712_gpio_write_bits(ice, 4194304U, 4194304U);
  }
  goto ldv_35620;
  switch_break___0: ;
  }
  ldv_35620: ;
  return (0);
}
}
static int revo_add_controls(struct snd_ice1712 *ice )
{
  struct revo51_spec *spec ;
  int err ;
  {
  spec = (struct revo51_spec *)ice->spec;
  {
  if (ice->eeprom.subvendor == 303312950U) {
    goto case_303312950;
  } else {
  }
  if (ice->eeprom.subvendor == 303313206U) {
    goto case_303313206;
  } else {
  }
  if (ice->eeprom.subvendor == 303313462U) {
    goto case_303313462;
  } else {
  }
  goto switch_break;
  case_303312950:
  {
  err = snd_ice1712_akm4xxx_build_controls(ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  goto ldv_35629;
  case_303313206:
  {
  err = snd_ice1712_akm4xxx_build_controls(ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  spec = (struct revo51_spec *)ice->spec;
  err = snd_pt2258_build_controls(spec->pt2258);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  goto ldv_35629;
  case_303313462:
  {
  err = snd_ice1712_akm4xxx_build_controls(ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = snd_ak4114_build(spec->ak4114, (struct snd_pcm_substream *)0, (ice->pcm)->streams[1].substream);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  goto ldv_35629;
  switch_break: ;
  }
  ldv_35629: ;
  return (0);
}
}
struct snd_ice1712_card_info snd_vt1724_revo_cards[4U] = { {303312950U, "M Audio Revolution-7.1", "revo71", 0, & revo_init, 0, & revo_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 0U, 0},
        {303313206U, "M Audio Revolution-5.1", "revo51", 0, & revo_init, 0, & revo_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 0U, 0},
        {303313462U, "M Audio Audiophile192", "ap192", 0, & revo_init, 0, & revo_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 0U, 0}};
void ldv_dummy_resourceless_instance_callback_12_9(void (*arg0)(struct snd_akm4xxx * ,
                                                                unsigned int ) ,
                                                   struct snd_akm4xxx *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_9_9(void (*arg0)(struct snd_akm4xxx * ,
                                                               unsigned int ) , struct snd_akm4xxx *arg1 ,
                                                  unsigned int arg2 ) ;
struct ldv_thread ldv_thread_12 ;
struct ldv_thread ldv_thread_9 ;
void ldv_dummy_resourceless_instance_callback_12_9(void (*arg0)(struct snd_akm4xxx * ,
                                                                unsigned int ) ,
                                                   struct snd_akm4xxx *arg1 , unsigned int arg2 )
{
  {
  {
  revo_set_rate_val(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_12(void (*arg0)(struct snd_i2c_bus * ,
                                                                 int , int ) , struct snd_i2c_bus *arg1 ,
                                                    int arg2 , int arg3 )
{
  {
  {
  revo_i2c_setlines(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_15(void (*arg0)(struct snd_i2c_bus * ) ,
                                                    struct snd_i2c_bus *arg1 )
{
  {
  {
  revo_i2c_start(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_16(void (*arg0)(struct snd_i2c_bus * ) ,
                                                    struct snd_i2c_bus *arg1 )
{
  {
  {
  revo_i2c_stop(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_3(void (*arg0)(struct snd_i2c_bus * ,
                                                                int , int ) , struct snd_i2c_bus *arg1 ,
                                                   int arg2 , int arg3 )
{
  {
  {
  revo_i2c_direction(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_9(int (*arg0)(struct snd_i2c_bus * ,
                                                               int ) , struct snd_i2c_bus *arg1 ,
                                                   int arg2 )
{
  {
  {
  revo_i2c_getdata(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_26_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  revo_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_26_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  revo_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_9(void (*arg0)(struct snd_akm4xxx * ,
                                                               unsigned int ) , struct snd_akm4xxx *arg1 ,
                                                  unsigned int arg2 )
{
  {
  {
  ap192_set_rate_val(arg1, arg2);
  }
  return;
}
}
void ldv_struct_snd_akm4xxx_dummy_resourceless_instance_12(void *arg0 )
{
  void (*ldv_12_callback_lock)(struct snd_akm4xxx * , int ) ;
  void (*ldv_12_callback_set_rate_val)(struct snd_akm4xxx * , unsigned int ) ;
  void (*ldv_12_callback_unlock)(struct snd_akm4xxx * , int ) ;
  void (*ldv_12_callback_write)(struct snd_akm4xxx * , int , unsigned char , unsigned char ) ;
  struct snd_akm4xxx *ldv_12_container_struct_snd_akm4xxx ;
  int ldv_12_ldv_param_12_1_default ;
  int ldv_12_ldv_param_15_1_default ;
  unsigned char ldv_12_ldv_param_15_2_default ;
  unsigned char ldv_12_ldv_param_15_3_default ;
  int ldv_12_ldv_param_3_1_default ;
  unsigned int ldv_12_ldv_param_9_1_default ;
  int tmp ;
  int tmp___0 ;
  {
  goto ldv_call_12;
  return;
  ldv_call_12:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
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
    goto switch_default;
    case_1: ;
    if ((unsigned long )ldv_12_callback_write != (unsigned long )((void (*)(struct snd_akm4xxx * ,
                                                                            int ,
                                                                            unsigned char ,
                                                                            unsigned char ))0)) {
      {
      ldv_dummy_resourceless_instance_callback_12_15(ldv_12_callback_write, ldv_12_container_struct_snd_akm4xxx,
                                                     ldv_12_ldv_param_15_1_default,
                                                     (int )ldv_12_ldv_param_15_2_default,
                                                     (int )ldv_12_ldv_param_15_3_default);
      }
    } else {
    }
    goto ldv_35839;
    case_2: ;
    if ((unsigned long )ldv_12_callback_unlock != (unsigned long )((void (*)(struct snd_akm4xxx * ,
                                                                             int ))0)) {
      {
      ldv_dummy_resourceless_instance_callback_12_12(ldv_12_callback_unlock, ldv_12_container_struct_snd_akm4xxx,
                                                     ldv_12_ldv_param_12_1_default);
      }
    } else {
    }
    goto ldv_35839;
    case_3:
    {
    ldv_dummy_resourceless_instance_callback_12_9(ldv_12_callback_set_rate_val, ldv_12_container_struct_snd_akm4xxx,
                                                  ldv_12_ldv_param_9_1_default);
    }
    goto ldv_35839;
    case_4: ;
    if ((unsigned long )ldv_12_callback_lock != (unsigned long )((void (*)(struct snd_akm4xxx * ,
                                                                           int ))0)) {
      {
      ldv_dummy_resourceless_instance_callback_12_3(ldv_12_callback_lock, ldv_12_container_struct_snd_akm4xxx,
                                                    ldv_12_ldv_param_3_1_default);
      }
    } else {
    }
    goto ldv_35839;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_35839: ;
    goto ldv_call_12;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_snd_akm4xxx_dummy_resourceless_instance_9(void *arg0 )
{
  void (*ldv_9_callback_lock)(struct snd_akm4xxx * , int ) ;
  void (*ldv_9_callback_set_rate_val)(struct snd_akm4xxx * , unsigned int ) ;
  void (*ldv_9_callback_unlock)(struct snd_akm4xxx * , int ) ;
  void (*ldv_9_callback_write)(struct snd_akm4xxx * , int , unsigned char , unsigned char ) ;
  struct snd_akm4xxx *ldv_9_container_struct_snd_akm4xxx ;
  int ldv_9_ldv_param_12_1_default ;
  int ldv_9_ldv_param_15_1_default ;
  unsigned char ldv_9_ldv_param_15_2_default ;
  unsigned char ldv_9_ldv_param_15_3_default ;
  int ldv_9_ldv_param_3_1_default ;
  unsigned int ldv_9_ldv_param_9_1_default ;
  int tmp ;
  int tmp___0 ;
  {
  goto ldv_call_9;
  return;
  ldv_call_9:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
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
    goto switch_default;
    case_1: ;
    if ((unsigned long )ldv_9_callback_write != (unsigned long )((void (*)(struct snd_akm4xxx * ,
                                                                           int ,
                                                                           unsigned char ,
                                                                           unsigned char ))0)) {
      {
      ldv_dummy_resourceless_instance_callback_9_15(ldv_9_callback_write, ldv_9_container_struct_snd_akm4xxx,
                                                    ldv_9_ldv_param_15_1_default,
                                                    (int )ldv_9_ldv_param_15_2_default,
                                                    (int )ldv_9_ldv_param_15_3_default);
      }
    } else {
    }
    goto ldv_35870;
    case_2: ;
    if ((unsigned long )ldv_9_callback_unlock != (unsigned long )((void (*)(struct snd_akm4xxx * ,
                                                                            int ))0)) {
      {
      ldv_dummy_resourceless_instance_callback_9_12(ldv_9_callback_unlock, ldv_9_container_struct_snd_akm4xxx,
                                                    ldv_9_ldv_param_12_1_default);
      }
    } else {
    }
    goto ldv_35870;
    case_3:
    {
    ldv_dummy_resourceless_instance_callback_9_9(ldv_9_callback_set_rate_val, ldv_9_container_struct_snd_akm4xxx,
                                                 ldv_9_ldv_param_9_1_default);
    }
    goto ldv_35870;
    case_4: ;
    if ((unsigned long )ldv_9_callback_lock != (unsigned long )((void (*)(struct snd_akm4xxx * ,
                                                                          int ))0)) {
      {
      ldv_dummy_resourceless_instance_callback_9_3(ldv_9_callback_lock, ldv_9_container_struct_snd_akm4xxx,
                                                   ldv_9_ldv_param_3_1_default);
      }
    } else {
    }
    goto ldv_35870;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_35870: ;
    goto ldv_call_9;
  } else {
    return;
  }
  return;
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_calloc(n, size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
static void ldv_mutex_lock_102(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_102___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_108(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_114(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_116(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_118(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_120(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_103___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_115(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_117(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int snd_ctl_boolean_stereo_info(struct snd_kcontrol * , struct snd_ctl_elem_info * ) ;
__inline static void snd_ice1712_save_gpio_status___0(struct snd_ice1712 *ice )
{
  {
  {
  ldv_mutex_lock_102___0(& ice->gpio_mutex);
  ice->gpio.saved[0] = ice->gpio.direction;
  ice->gpio.saved[1] = ice->gpio.write_mask;
  }
  return;
}
}
__inline static void snd_ice1712_restore_gpio_status___0(struct snd_ice1712 *ice )
{
  {
  {
  (*(ice->gpio.set_dir))(ice, ice->gpio.saved[0]);
  (*(ice->gpio.set_mask))(ice, ice->gpio.saved[1]);
  ice->gpio.direction = ice->gpio.saved[0];
  ice->gpio.write_mask = ice->gpio.saved[1];
  ldv_mutex_unlock_103___0(& ice->gpio_mutex);
  }
  return;
}
}
static void aureon_pca9554_write(struct snd_ice1712 *ice , unsigned char reg , unsigned char data )
{
  unsigned int tmp ;
  int i ;
  int j ;
  unsigned char dev ;
  unsigned char val ;
  {
  {
  dev = 64U;
  val = 0U;
  tmp = snd_ice1712_gpio_read(ice);
  snd_ice1712_gpio_set_mask(ice, 4289851391U);
  tmp = tmp | 131072U;
  tmp = tmp | 4198400U;
  tmp = tmp & 4294705151U;
  tmp = tmp & 4294443007U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(214750UL);
  tmp = tmp | 524288U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(214750UL);
  tmp = tmp | 262144U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(429500UL);
  tmp = tmp & 4294705151U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(214750UL);
  tmp = tmp & 4294443007U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(429500UL);
  j = 0;
  }
  goto ldv_35576;
  ldv_35575: ;
  {
  if (j == 0) {
    goto case_0;
  } else {
  }
  if (j == 1) {
    goto case_1;
  } else {
  }
  if (j == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_0:
  val = dev;
  goto ldv_35569;
  case_1:
  val = reg;
  goto ldv_35569;
  case_2:
  val = data;
  goto ldv_35569;
  switch_break: ;
  }
  ldv_35569:
  i = 7;
  goto ldv_35573;
  ldv_35572:
  {
  tmp = tmp & 4294443007U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(171800UL);
  }
  if (((int )val >> i) & 1) {
    tmp = tmp | 262144U;
  } else {
    tmp = tmp & 4294705151U;
  }
  {
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(171800UL);
  tmp = tmp | 524288U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(171800UL);
  i = i - 1;
  }
  ldv_35573: ;
  if (i >= 0) {
    goto ldv_35572;
  } else {
  }
  {
  tmp = tmp & 4294443007U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(171800UL);
  tmp = tmp | 524288U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(171800UL);
  tmp = tmp & 4294443007U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(171800UL);
  j = j + 1;
  }
  ldv_35576: ;
  if (j <= 2) {
    goto ldv_35575;
  } else {
  }
  {
  tmp = tmp & 4294443007U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(171800UL);
  tmp = tmp & 4294705151U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(171800UL);
  tmp = tmp | 524288U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(214750UL);
  tmp = tmp | 262144U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(429500UL);
  }
  return;
}
}
static int aureon_universe_inmux_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  char const *texts[3U] ;
  int tmp ;
  {
  {
  texts[0] = "Internal Aux";
  texts[1] = "Wavetable";
  texts[2] = "Rear Line-In";
  tmp = snd_ctl_enum_info(uinfo, 1U, 3U, (char const * const *)(& texts));
  }
  return (tmp);
}
}
static int aureon_universe_inmux_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct aureon_spec *spec ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct aureon_spec *)ice->spec;
  ucontrol->value.enumerated.item[0] = (unsigned int )spec->pca9554_out;
  return (0);
}
}
static int aureon_universe_inmux_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct aureon_spec *spec ;
  unsigned char oval ;
  unsigned char nval ;
  int change ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct aureon_spec *)ice->spec;
  nval = (unsigned char )ucontrol->value.enumerated.item[0];
  if ((unsigned int )nval > 2U) {
    return (-22);
  } else {
  }
  {
  snd_ice1712_save_gpio_status___0(ice);
  oval = spec->pca9554_out;
  change = (int )oval != (int )nval;
  }
  if (change != 0) {
    {
    aureon_pca9554_write(ice, 1, (int )nval);
    spec->pca9554_out = nval;
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static void aureon_ac97_write(struct snd_ice1712 *ice , unsigned short reg , unsigned short val )
{
  struct aureon_spec *spec ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  {
  spec = (struct aureon_spec *)ice->spec;
  tmp___0 = snd_ice1712_gpio_read(ice);
  tmp = (tmp___0 & 4294967040U) | ((unsigned int )reg & 127U);
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(42950UL);
  tmp = tmp | 1024U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(42950UL);
  tmp = tmp & 4294966271U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(42950UL);
  tmp = tmp & 4294967040U;
  tmp = tmp | ((unsigned int )val & 255U);
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(42950UL);
  tmp = tmp | 512U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(42950UL);
  tmp = tmp & 4294966783U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(42950UL);
  tmp = tmp & 4294967040U;
  tmp = tmp | ((unsigned int )((int )val >> 8) & 255U);
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(42950UL);
  tmp = tmp | 256U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(42950UL);
  tmp = tmp & 4294967039U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(42950UL);
  tmp = tmp | 2048U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(42950UL);
  tmp = tmp & 4294965247U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(42950UL);
  spec->stac9744[((int )reg & 127) >> 1] = val;
  }
  return;
}
}
static unsigned short aureon_ac97_read(struct snd_ice1712 *ice , unsigned short reg )
{
  struct aureon_spec *spec ;
  {
  spec = (struct aureon_spec *)ice->spec;
  return (spec->stac9744[((int )reg & 127) >> 1]);
}
}
static int aureon_ac97_init(struct snd_ice1712 *ice )
{
  struct aureon_spec *spec ;
  int i ;
  unsigned short ac97_defaults[37U] ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  {
  spec = (struct aureon_spec *)ice->spec;
  ac97_defaults[0] = 0U;
  ac97_defaults[1] = 38464U;
  ac97_defaults[2] = 2U;
  ac97_defaults[3] = 32768U;
  ac97_defaults[4] = 4U;
  ac97_defaults[5] = 32768U;
  ac97_defaults[6] = 6U;
  ac97_defaults[7] = 32768U;
  ac97_defaults[8] = 12U;
  ac97_defaults[9] = 32776U;
  ac97_defaults[10] = 14U;
  ac97_defaults[11] = 32776U;
  ac97_defaults[12] = 16U;
  ac97_defaults[13] = 34824U;
  ac97_defaults[14] = 18U;
  ac97_defaults[15] = 34824U;
  ac97_defaults[16] = 20U;
  ac97_defaults[17] = 34824U;
  ac97_defaults[18] = 22U;
  ac97_defaults[19] = 34824U;
  ac97_defaults[20] = 24U;
  ac97_defaults[21] = 34824U;
  ac97_defaults[22] = 28U;
  ac97_defaults[23] = 32768U;
  ac97_defaults[24] = 38U;
  ac97_defaults[25] = 15U;
  ac97_defaults[26] = 40U;
  ac97_defaults[27] = 513U;
  ac97_defaults[28] = 44U;
  ac97_defaults[29] = 48000U;
  ac97_defaults[30] = 50U;
  ac97_defaults[31] = 48000U;
  ac97_defaults[32] = 124U;
  ac97_defaults[33] = 33668U;
  ac97_defaults[34] = 126U;
  ac97_defaults[35] = 30276U;
  ac97_defaults[36] = 65535U;
  tmp___0 = snd_ice1712_gpio_read(ice);
  tmp = (tmp___0 & 4294901504U) | 65536U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(12885UL);
  tmp = tmp & 4294901759U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(12885UL);
  tmp = tmp | 65536U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(12885UL);
  memset((void *)(& spec->stac9744), 0, 128UL);
  i = 0;
  }
  goto ldv_35618;
  ldv_35617:
  spec->stac9744[(int )ac97_defaults[i] >> 1] = ac97_defaults[i + 1];
  i = i + 2;
  ldv_35618: ;
  if ((unsigned int )ac97_defaults[i] != 65535U) {
    goto ldv_35617;
  } else {
  }
  {
  aureon_ac97_write(ice, 2, 0);
  }
  return (0);
}
}
static int aureon_ac97_vol_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = (kcontrol->private_value & 128UL) != 0UL ? 2U : 1U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 31L;
  return (0);
}
}
static int aureon_ac97_vol_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short vol ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_104(& ice->gpio_mutex);
  vol = aureon_ac97_read(ice, (int )((unsigned short )kcontrol->private_value) & 127);
  ucontrol->value.integer.value[0] = (long )(~ ((int )vol)) & 31L;
  }
  if ((kcontrol->private_value & 128UL) != 0UL) {
    ucontrol->value.integer.value[1] = (long )(~ ((int )vol >> 8)) & 31L;
  } else {
  }
  {
  ldv_mutex_unlock_105(& ice->gpio_mutex);
  }
  return (0);
}
}
static int aureon_ac97_vol_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short ovol ;
  unsigned short nvol ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  snd_ice1712_save_gpio_status___0(ice);
  ovol = aureon_ac97_read(ice, (int )((unsigned short )kcontrol->private_value) & 127);
  nvol = (31U - (unsigned int )((unsigned short )ucontrol->value.integer.value[0])) & 31U;
  }
  if ((kcontrol->private_value & 128UL) != 0UL) {
    nvol = (unsigned short )((int )((short )nvol) | ((int )((short )((31L - ucontrol->value.integer.value[1]) << 8)) & 7936));
  } else {
  }
  nvol = (unsigned short )((int )((short )nvol) | ((int )((short )ovol) & -7968));
  change = (int )ovol != (int )nvol;
  if (change != 0) {
    {
    aureon_ac97_write(ice, (int )((unsigned short )kcontrol->private_value) & 127,
                      (int )nvol);
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static int aureon_ac97_mute_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_106(& ice->gpio_mutex);
  tmp = aureon_ac97_read(ice, (int )((unsigned short )kcontrol->private_value) & 127);
  ucontrol->value.integer.value[0] = (int )((short )tmp) >= 0;
  ldv_mutex_unlock_107(& ice->gpio_mutex);
  }
  return (0);
}
}
static int aureon_ac97_mute_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short ovol ;
  unsigned short nvol ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  snd_ice1712_save_gpio_status___0(ice);
  ovol = aureon_ac97_read(ice, (int )((unsigned short )kcontrol->private_value) & 127);
  nvol = (unsigned short )((ucontrol->value.integer.value[0] != 0L ? 0 : -32768) | ((int )((short )ovol) & 32767));
  change = (int )ovol != (int )nvol;
  }
  if (change != 0) {
    {
    aureon_ac97_write(ice, (int )((unsigned short )kcontrol->private_value) & 127,
                      (int )nvol);
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static int aureon_ac97_micboost_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_108(& ice->gpio_mutex);
  tmp = aureon_ac97_read(ice, 14);
  ucontrol->value.integer.value[0] = ((int )tmp & 32) == 0;
  ldv_mutex_unlock_109(& ice->gpio_mutex);
  }
  return (0);
}
}
static int aureon_ac97_micboost_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short ovol ;
  unsigned short nvol ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  snd_ice1712_save_gpio_status___0(ice);
  ovol = aureon_ac97_read(ice, 14);
  nvol = (unsigned short )((ucontrol->value.integer.value[0] != 0L ? 0 : 32) | ((int )((short )ovol) & -33));
  change = (int )ovol != (int )nvol;
  }
  if (change != 0) {
    {
    aureon_ac97_write(ice, 14, (int )nvol);
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static void aureon_spi_write(struct snd_ice1712 *ice , unsigned int cs , unsigned int data ,
                             int bits )
{
  unsigned int tmp ;
  int i ;
  unsigned int mosi ;
  unsigned int clk ;
  {
  {
  tmp = snd_ice1712_gpio_read(ice);
  }
  if (ice->eeprom.subvendor == 842093633U || ice->eeprom.subvendor == 909202497U) {
    {
    snd_ice1712_gpio_set_mask(ice, 4294965503U);
    mosi = 1024U;
    clk = 512U;
    }
  } else {
    {
    snd_ice1712_gpio_set_mask(ice, 4289851391U);
    mosi = 262144U;
    clk = 524288U;
    tmp = tmp | 131072U;
    }
  }
  {
  tmp = tmp & ~ cs;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  i = bits + -1;
  }
  goto ldv_35675;
  ldv_35674:
  {
  tmp = tmp & ~ clk;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  }
  if ((data & (unsigned int )(1 << i)) != 0U) {
    tmp = tmp | mosi;
  } else {
    tmp = tmp & ~ mosi;
  }
  {
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  tmp = tmp | clk;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  i = i - 1;
  }
  ldv_35675: ;
  if (i >= 0) {
    goto ldv_35674;
  } else {
  }
  {
  tmp = tmp & ~ clk;
  tmp = tmp | cs;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  tmp = tmp | clk;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  }
  return;
}
}
static void aureon_spi_read(struct snd_ice1712 *ice , unsigned int cs , unsigned int data ,
                            int bits , unsigned char *buffer , int size )
{
  int i ;
  int j ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned char outdata ;
  {
  {
  tmp___0 = snd_ice1712_gpio_read(ice);
  tmp = (tmp___0 & 4290244607U) | 4198400U;
  snd_ice1712_gpio_write(ice, tmp);
  tmp = tmp & ~ cs;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  i = bits + -1;
  }
  goto ldv_35689;
  ldv_35688: ;
  if ((data & (unsigned int )(1 << i)) != 0U) {
    tmp = tmp | 262144U;
  } else {
    tmp = tmp & 4294705151U;
  }
  {
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  tmp = tmp | 524288U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  tmp = tmp & 4294443007U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  i = i - 1;
  }
  ldv_35689: ;
  if (i >= 0) {
    goto ldv_35688;
  } else {
  }
  j = 0;
  goto ldv_35696;
  ldv_35695:
  outdata = 0U;
  i = 7;
  goto ldv_35693;
  ldv_35692:
  {
  tmp = snd_ice1712_gpio_read(ice);
  outdata = (int )outdata << 1U;
  outdata = (unsigned char )((int )((signed char )outdata) | ((tmp & 2097152U) != 0U));
  __const_udelay(4295UL);
  tmp = tmp | 524288U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  tmp = tmp & 4294443007U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  i = i - 1;
  }
  ldv_35693: ;
  if (i >= 0) {
    goto ldv_35692;
  } else {
  }
  *(buffer + (unsigned long )j) = outdata;
  j = j + 1;
  ldv_35696: ;
  if (j < size) {
    goto ldv_35695;
  } else {
  }
  {
  tmp = tmp | cs;
  snd_ice1712_gpio_write(ice, tmp);
  }
  return;
}
}
static unsigned char aureon_cs8415_get(struct snd_ice1712 *ice , int reg )
{
  unsigned char val ;
  {
  {
  aureon_spi_write(ice, 4194304U, (unsigned int )(reg | 8192), 16);
  aureon_spi_read(ice, 4194304U, 33U, 8, & val, 1);
  }
  return (val);
}
}
static void aureon_cs8415_read(struct snd_ice1712 *ice , int reg , unsigned char *buffer ,
                               int size )
{
  {
  {
  aureon_spi_write(ice, 4194304U, (unsigned int )(reg | 8192), 16);
  aureon_spi_read(ice, 4194304U, 33U, 8, buffer, size);
  }
  return;
}
}
static void aureon_cs8415_put(struct snd_ice1712 *ice , int reg , unsigned char val )
{
  {
  {
  aureon_spi_write(ice, 4194304U, (unsigned int )(((reg << 8) | 2097152) | (int )val),
                   24);
  }
  return;
}
}
static unsigned short wm_get(struct snd_ice1712 *ice , int reg )
{
  {
  reg = reg << 1;
  return ((unsigned short )((int )((short )((int )(ice->akm)->images[reg] << 8)) | (int )((short )(ice->akm)->images[reg + 1])));
}
}
static void wm_put_nocache(struct snd_ice1712 *ice , int reg , unsigned short val )
{
  {
  {
  aureon_spi_write(ice, ice->eeprom.subvendor == 842093633U || ice->eeprom.subvendor == 909202497U ? 256U : 4096U,
                   (unsigned int )((reg << 9) | ((int )val & 511)), 16);
  }
  return;
}
}
static void wm_put___0(struct snd_ice1712 *ice , int reg , unsigned short val )
{
  {
  {
  wm_put_nocache(ice, reg, (int )val);
  reg = reg << 1;
  (ice->akm)->images[reg] = (unsigned char )((int )val >> 8);
  (ice->akm)->images[reg + 1] = (unsigned char )val;
  }
  return;
}
}
static int aureon_ac97_mmute_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_110(& ice->gpio_mutex);
  tmp = wm_get(ice, 28);
  ucontrol->value.integer.value[0] = (long )((int )tmp >> 1) & 1L;
  ldv_mutex_unlock_111(& ice->gpio_mutex);
  }
  return (0);
}
}
static int aureon_ac97_mmute_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short ovol ;
  unsigned short nvol ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  snd_ice1712_save_gpio_status___0(ice);
  ovol = wm_get(ice, 28);
  nvol = (unsigned short )(((int )((short )ovol) & -3) | (ucontrol->value.integer.value[0] != 0L ? 2 : 0));
  change = (int )ovol != (int )nvol;
  }
  if (change != 0) {
    {
    wm_put___0(ice, 28, (int )nvol);
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static unsigned int const db_scale_wm_dac[4U] = { 1U, 8U, 4294957296U, 65636U};
static unsigned int const db_scale_wm_pcm[4U] = { 1U, 8U, 4294960896U, 65586U};
static unsigned int const db_scale_wm_adc[4U] = { 1U, 8U, 4294966096U, 100U};
static unsigned int const db_scale_ac97_master[4U] = { 1U, 8U, 4294962646U, 150U};
static unsigned int const db_scale_ac97_gain[4U] = { 1U, 8U, 4294963846U, 150U};
static void wm_set_vol(struct snd_ice1712 *ice , unsigned int index___0 , unsigned short vol ,
                       unsigned short master )
{
  unsigned char nvol ;
  {
  if ((int )((short )master) < 0 || (int )((short )vol) < 0) {
    nvol = 0U;
  } else {
    nvol = (unsigned char )(((int )((unsigned int )vol % 101U) * (int )((unsigned int )master % 101U)) / 100);
    nvol = (unsigned int )nvol + 27U;
  }
  {
  wm_put___0(ice, (int )index___0, (int )nvol);
  wm_put_nocache(ice, (int )index___0, (int )((unsigned int )((unsigned short )nvol) | 384U));
  }
  return;
}
}
static int wm_pcm_mute_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_112(& ice->gpio_mutex);
  tmp = wm_get(ice, 20);
  ucontrol->value.integer.value[0] = ((int )tmp & 16) == 0;
  ldv_mutex_unlock_113(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_pcm_mute_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short nval ;
  unsigned short oval ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  snd_ice1712_save_gpio_status___0(ice);
  oval = wm_get(ice, 20);
  nval = (unsigned short )(((int )((short )oval) & -17) | (ucontrol->value.integer.value[0] != 0L ? 0 : 16));
  change = (int )oval != (int )nval;
  }
  if (change != 0) {
    {
    wm_put___0(ice, 20, (int )nval);
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static int wm_master_vol_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 100L;
  return (0);
}
}
static int wm_master_vol_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct aureon_spec *spec ;
  int i ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct aureon_spec *)ice->spec;
  i = 0;
  goto ldv_35783;
  ldv_35782:
  ucontrol->value.integer.value[i] = (long )((int )spec->master[i] & -32769);
  i = i + 1;
  ldv_35783: ;
  if (i <= 1) {
    goto ldv_35782;
  } else {
  }
  return (0);
}
}
static int wm_master_vol_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct aureon_spec *spec ;
  int ch ;
  int change ;
  unsigned int vol ;
  int dac ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct aureon_spec *)ice->spec;
  change = 0;
  snd_ice1712_save_gpio_status___0(ice);
  ch = 0;
  }
  goto ldv_35799;
  ldv_35798:
  vol = (unsigned int )ucontrol->value.integer.value[ch];
  if (vol > 100U) {
    vol = 100U;
  } else {
  }
  vol = vol | ((unsigned int )spec->master[ch] & 32768U);
  if (vol != (unsigned int )spec->master[ch]) {
    spec->master[ch] = (unsigned short )vol;
    dac = 0;
    goto ldv_35796;
    ldv_35795:
    {
    wm_set_vol(ice, (unsigned int )(dac + ch), (int )spec->vol[dac + ch], (int )spec->master[ch]);
    dac = dac + 2;
    }
    ldv_35796: ;
    if ((unsigned int )dac < ice->num_total_dacs) {
      goto ldv_35795;
    } else {
    }
    change = 1;
  } else {
  }
  ch = ch + 1;
  ldv_35799: ;
  if (ch <= 1) {
    goto ldv_35798;
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static int wm_vol_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  int voices ;
  {
  voices = (int )(kcontrol->private_value >> 8);
  uinfo->type = 2;
  uinfo->count = (unsigned int )voices;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 100L;
  return (0);
}
}
static int wm_vol_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct aureon_spec *spec ;
  int i ;
  int ofs ;
  int voices ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct aureon_spec *)ice->spec;
  voices = (int )(kcontrol->private_value >> 8);
  ofs = (int )kcontrol->private_value & 255;
  i = 0;
  goto ldv_35816;
  ldv_35815:
  ucontrol->value.integer.value[i] = (long )((int )spec->vol[ofs + i] & -32769);
  i = i + 1;
  ldv_35816: ;
  if (i < voices) {
    goto ldv_35815;
  } else {
  }
  return (0);
}
}
static int wm_vol_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct aureon_spec *spec ;
  int i ;
  int idx ;
  int ofs ;
  int voices ;
  int change ;
  unsigned int vol ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct aureon_spec *)ice->spec;
  change = 0;
  voices = (int )(kcontrol->private_value >> 8);
  ofs = (int )kcontrol->private_value & 255;
  snd_ice1712_save_gpio_status___0(ice);
  i = 0;
  }
  goto ldv_35831;
  ldv_35830:
  vol = (unsigned int )ucontrol->value.integer.value[i];
  if (vol > 100U) {
    vol = 100U;
  } else {
  }
  vol = vol | ((unsigned int )spec->vol[ofs + i] & 32768U);
  if (vol != (unsigned int )spec->vol[ofs + i]) {
    {
    spec->vol[ofs + i] = (unsigned short )vol;
    idx = ofs + i;
    wm_set_vol(ice, (unsigned int )idx, (int )spec->vol[ofs + i], (int )spec->master[i]);
    change = 1;
    }
  } else {
  }
  i = i + 1;
  ldv_35831: ;
  if (i < voices) {
    goto ldv_35830;
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static int wm_mute_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 1;
  uinfo->count = (unsigned int )(kcontrol->private_value >> 8);
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 1L;
  return (0);
}
}
static int wm_mute_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct aureon_spec *spec ;
  int voices ;
  int ofs ;
  int i ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct aureon_spec *)ice->spec;
  voices = (int )(kcontrol->private_value >> 8);
  ofs = (int )kcontrol->private_value & 255;
  i = 0;
  goto ldv_35847;
  ldv_35846:
  ucontrol->value.integer.value[i] = (int )((short )spec->vol[ofs + i]) >= 0;
  i = i + 1;
  ldv_35847: ;
  if (i < voices) {
    goto ldv_35846;
  } else {
  }
  return (0);
}
}
static int wm_mute_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct aureon_spec *spec ;
  int change ;
  int voices ;
  int ofs ;
  int i ;
  int val ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct aureon_spec *)ice->spec;
  change = 0;
  voices = (int )(kcontrol->private_value >> 8);
  ofs = (int )kcontrol->private_value & 255;
  snd_ice1712_save_gpio_status___0(ice);
  i = 0;
  }
  goto ldv_35861;
  ldv_35860:
  val = (int )((short )spec->vol[ofs + i]) >= 0;
  if (ucontrol->value.integer.value[i] != (long )val) {
    {
    spec->vol[ofs + i] = (unsigned int )spec->vol[ofs + i] & 32767U;
    spec->vol[ofs + i] = (unsigned short )((int )((short )spec->vol[ofs + i]) | (ucontrol->value.integer.value[i] != 0L ? 0 : -32768));
    wm_set_vol(ice, (unsigned int )(ofs + i), (int )spec->vol[ofs + i], (int )spec->master[i]);
    change = 1;
    }
  } else {
  }
  i = i + 1;
  ldv_35861: ;
  if (i < voices) {
    goto ldv_35860;
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static int wm_master_mute_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct aureon_spec *spec ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct aureon_spec *)ice->spec;
  ucontrol->value.integer.value[0] = (int )((short )spec->master[0]) >= 0;
  ucontrol->value.integer.value[1] = (int )((short )spec->master[1]) >= 0;
  return (0);
}
}
static int wm_master_mute_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct aureon_spec *spec ;
  int change ;
  int i ;
  int val ;
  int dac ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct aureon_spec *)ice->spec;
  change = 0;
  snd_ice1712_save_gpio_status___0(ice);
  i = 0;
  }
  goto ldv_35883;
  ldv_35882:
  val = (int )((short )spec->master[i]) >= 0;
  if (ucontrol->value.integer.value[i] != (long )val) {
    spec->master[i] = (unsigned int )spec->master[i] & 32767U;
    spec->master[i] = (unsigned short )((int )((short )spec->master[i]) | (ucontrol->value.integer.value[i] != 0L ? 0 : -32768));
    dac = 0;
    goto ldv_35880;
    ldv_35879:
    {
    wm_set_vol(ice, (unsigned int )(dac + i), (int )spec->vol[dac + i], (int )spec->master[i]);
    dac = dac + 2;
    }
    ldv_35880: ;
    if ((unsigned int )dac < ice->num_total_dacs) {
      goto ldv_35879;
    } else {
    }
    change = 1;
  } else {
  }
  i = i + 1;
  ldv_35883: ;
  if (i <= 1) {
    goto ldv_35882;
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static int wm_pcm_vol_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 1U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 128L;
  return (0);
}
}
static int wm_pcm_vol_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short val ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_114(& ice->gpio_mutex);
  tmp = wm_get(ice, 17);
  val = (unsigned int )tmp & 255U;
  val = (unsigned int )val > 127U ? (unsigned int )val + 65409U : 0U;
  ucontrol->value.integer.value[0] = (long )val;
  ldv_mutex_unlock_115(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_pcm_vol_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short ovol ;
  unsigned short nvol ;
  int change ;
  unsigned short tmp ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  nvol = (unsigned short )ucontrol->value.integer.value[0];
  if ((unsigned int )nvol > 128U) {
    return (-22);
  } else {
  }
  {
  snd_ice1712_save_gpio_status___0(ice);
  nvol = (unsigned int )nvol != 0U ? ((unsigned int )nvol + 127U) & 255U : 0U;
  tmp = wm_get(ice, 17);
  ovol = (unsigned int )tmp & 255U;
  }
  if ((int )ovol != (int )nvol) {
    {
    wm_put___0(ice, 17, (int )nvol);
    wm_put_nocache(ice, 17, (int )((unsigned int )nvol | 256U));
    change = 1;
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static int wm_adc_mute_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short val ;
  int i ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_116(& ice->gpio_mutex);
  i = 0;
  }
  goto ldv_35911;
  ldv_35910:
  {
  val = wm_get(ice, i + 25);
  ucontrol->value.integer.value[i] = (long )(~ ((int )val) >> 5) & 1L;
  i = i + 1;
  }
  ldv_35911: ;
  if (i <= 1) {
    goto ldv_35910;
  } else {
  }
  {
  ldv_mutex_unlock_117(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_adc_mute_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short new ;
  unsigned short old ;
  int i ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  snd_ice1712_save_gpio_status___0(ice);
  i = 0;
  }
  goto ldv_35923;
  ldv_35922:
  {
  old = wm_get(ice, i + 25);
  new = (unsigned short )(((int )((short )(~ ucontrol->value.integer.value[i] << 5)) & 32) | ((int )((short )old) & -33));
  }
  if ((int )new != (int )old) {
    {
    wm_put___0(ice, i + 25, (int )new);
    change = 1;
    }
  } else {
  }
  i = i + 1;
  ldv_35923: ;
  if (i <= 1) {
    goto ldv_35922;
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static int wm_adc_vol_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 31L;
  return (0);
}
}
static int wm_adc_vol_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int i ;
  int idx ;
  unsigned short vol ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_118(& ice->gpio_mutex);
  i = 0;
  }
  goto ldv_35938;
  ldv_35937:
  {
  idx = i + 25;
  tmp = wm_get(ice, idx);
  vol = (unsigned int )tmp & 31U;
  ucontrol->value.integer.value[i] = (long )vol;
  i = i + 1;
  }
  ldv_35938: ;
  if (i <= 1) {
    goto ldv_35937;
  } else {
  }
  {
  ldv_mutex_unlock_119(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_adc_vol_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int i ;
  int idx ;
  unsigned short ovol ;
  unsigned short nvol ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  snd_ice1712_save_gpio_status___0(ice);
  i = 0;
  }
  goto ldv_35951;
  ldv_35950:
  {
  idx = i + 25;
  nvol = (unsigned int )((unsigned short )ucontrol->value.integer.value[i]) & 31U;
  ovol = wm_get(ice, idx);
  }
  if (((int )ovol & 31) != (int )nvol) {
    {
    wm_put___0(ice, idx, (int )((unsigned short )((int )((short )nvol) | ((int )((short )ovol) & -32))));
    change = 1;
    }
  } else {
  }
  i = i + 1;
  ldv_35951: ;
  if (i <= 1) {
    goto ldv_35950;
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static int wm_adc_mux_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  char const *texts[5U] ;
  char const *universe_texts[8U] ;
  struct snd_ice1712 *ice ;
  int tmp ;
  int tmp___0 ;
  {
  texts[0] = "CD";
  texts[1] = "Aux";
  texts[2] = "Line";
  texts[3] = "Mic";
  texts[4] = "AC97";
  universe_texts[0] = "Aux1";
  universe_texts[1] = "CD";
  universe_texts[2] = "Phono";
  universe_texts[3] = "Line";
  universe_texts[4] = "Aux2";
  universe_texts[5] = "Mic";
  universe_texts[6] = "Aux3";
  universe_texts[7] = "AC97";
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  if (ice->eeprom.subvendor == 991253265U) {
    {
    tmp = snd_ctl_enum_info(uinfo, 2U, 8U, (char const * const *)(& universe_texts));
    }
    return (tmp);
  } else {
    {
    tmp___0 = snd_ctl_enum_info(uinfo, 2U, 5U, (char const * const *)(& texts));
    }
    return (tmp___0);
  }
}
}
static int wm_adc_mux_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short val ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_120(& ice->gpio_mutex);
  val = wm_get(ice, 27);
  ucontrol->value.enumerated.item[0] = (unsigned int )val & 7U;
  ucontrol->value.enumerated.item[1] = (unsigned int )((int )val >> 4) & 7U;
  ldv_mutex_unlock_121(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_adc_mux_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short oval ;
  unsigned short nval ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  snd_ice1712_save_gpio_status___0(ice);
  oval = wm_get(ice, 27);
  nval = (unsigned int )oval & 65416U;
  nval = (unsigned int )nval | ((unsigned int )((unsigned short )ucontrol->value.enumerated.item[0]) & 7U);
  nval = (unsigned int )nval | (((unsigned int )((unsigned short )ucontrol->value.enumerated.item[1]) & 7U) << 4U);
  change = (int )oval != (int )nval;
  }
  if (change != 0) {
    {
    wm_put___0(ice, 27, (int )nval);
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static int aureon_cs8415_mux_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  struct snd_ice1712 *ice ;
  char const *aureon_texts[2U] ;
  char const *prodigy_texts[2U] ;
  int tmp ;
  int tmp___0 ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  aureon_texts[0] = "CD";
  aureon_texts[1] = "Optical";
  prodigy_texts[0] = "CD";
  prodigy_texts[1] = "Coax";
  if (ice->eeprom.subvendor == 860443461U) {
    {
    tmp = snd_ctl_enum_info(uinfo, 1U, 2U, (char const * const *)(& prodigy_texts));
    }
    return (tmp);
  } else {
    {
    tmp___0 = snd_ctl_enum_info(uinfo, 1U, 2U, (char const * const *)(& aureon_texts));
    }
    return (tmp___0);
  }
}
}
static int aureon_cs8415_mux_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct aureon_spec *spec ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct aureon_spec *)ice->spec;
  ucontrol->value.enumerated.item[0] = spec->cs8415_mux;
  return (0);
}
}
static int aureon_cs8415_mux_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct aureon_spec *spec ;
  unsigned short oval ;
  unsigned short nval ;
  int change ;
  unsigned char tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct aureon_spec *)ice->spec;
  snd_ice1712_save_gpio_status___0(ice);
  tmp = aureon_cs8415_get(ice, 2);
  oval = (unsigned short )tmp;
  nval = (unsigned int )oval & 65528U;
  nval = (unsigned int )nval | ((unsigned int )((unsigned short )ucontrol->value.enumerated.item[0]) & 7U);
  change = (int )oval != (int )nval;
  }
  if (change != 0) {
    {
    aureon_cs8415_put(ice, 2, (int )((unsigned char )nval));
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  spec->cs8415_mux = ucontrol->value.enumerated.item[0];
  }
  return (change);
}
}
static int aureon_cs8415_rate_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 1U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 192000L;
  return (0);
}
}
static int aureon_cs8415_rate_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char ratio ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ratio = aureon_cs8415_get(ice, 30);
  ucontrol->value.integer.value[0] = (long )((int )((unsigned int )ratio * 750U));
  }
  return (0);
}
}
static int aureon_cs8415_mute_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  snd_ice1712_save_gpio_status___0(ice);
  tmp = aureon_cs8415_get(ice, 1);
  ucontrol->value.integer.value[0] = ((int )tmp & 32) == 0;
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (0);
}
}
static int aureon_cs8415_mute_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char oval ;
  unsigned char nval ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  snd_ice1712_save_gpio_status___0(ice);
  oval = aureon_cs8415_get(ice, 1);
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    nval = (unsigned int )oval & 223U;
  } else {
    nval = (unsigned int )oval | 32U;
  }
  change = (int )oval != (int )nval;
  if (change != 0) {
    {
    aureon_cs8415_put(ice, 1, (int )nval);
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (change);
}
}
static int aureon_cs8415_qsub_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 4;
  uinfo->count = 10U;
  return (0);
}
}
static int aureon_cs8415_qsub_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  snd_ice1712_save_gpio_status___0(ice);
  aureon_cs8415_read(ice, 20, (unsigned char *)(& ucontrol->value.bytes.data), 10);
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (0);
}
}
static int aureon_cs8415_spdif_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 5;
  uinfo->count = 1U;
  return (0);
}
}
static int aureon_cs8415_mask_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  {
  {
  memset((void *)(& ucontrol->value.iec958.status), 255, 24UL);
  }
  return (0);
}
}
static int aureon_cs8415_spdif_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  snd_ice1712_save_gpio_status___0(ice);
  aureon_cs8415_read(ice, 32, (unsigned char *)(& ucontrol->value.iec958.status),
                     24);
  snd_ice1712_restore_gpio_status___0(ice);
  }
  return (0);
}
}
static int aureon_set_headphone_amp(struct snd_ice1712 *ice , int enable___0 )
{
  unsigned int tmp ;
  unsigned int tmp2 ;
  {
  {
  tmp = snd_ice1712_gpio_read(ice);
  tmp2 = tmp;
  }
  if (enable___0 != 0) {
    if (ice->eeprom.subvendor != 842093633U && ice->eeprom.subvendor != 909202497U) {
      tmp = tmp | 16384U;
    } else {
      tmp = tmp | 32U;
    }
  } else
  if (ice->eeprom.subvendor != 842093633U && ice->eeprom.subvendor != 909202497U) {
    tmp = tmp & 4294950911U;
  } else {
    tmp = tmp & 4294967263U;
  }
  if (tmp != tmp2) {
    {
    snd_ice1712_gpio_write(ice, tmp);
    }
    return (1);
  } else {
  }
  return (0);
}
}
static int aureon_get_headphone_amp(struct snd_ice1712 *ice )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  {
  tmp___0 = snd_ice1712_gpio_read(ice);
  tmp = tmp___0;
  }
  return ((tmp & 16384U) != 0U);
}
}
static int aureon_hpamp_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = aureon_get_headphone_amp(ice);
  ucontrol->value.integer.value[0] = (long )tmp;
  }
  return (0);
}
}
static int aureon_hpamp_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = aureon_set_headphone_amp(ice, (int )ucontrol->value.integer.value[0]);
  }
  return (tmp);
}
}
static int aureon_deemp_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = wm_get(ice, 21);
  ucontrol->value.integer.value[0] = ((int )tmp & 15) == 15;
  }
  return (0);
}
}
static int aureon_deemp_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int temp ;
  int temp2 ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = wm_get(ice, 21);
  temp = (int )tmp;
  temp2 = temp;
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    temp = temp | 15;
  } else {
    temp = temp & -16;
  }
  if (temp != temp2) {
    {
    wm_put___0(ice, 21, (int )((unsigned short )temp));
    }
    return (1);
  } else {
  }
  return (0);
}
}
static int aureon_oversampling_info(struct snd_kcontrol *k , struct snd_ctl_elem_info *uinfo )
{
  char const *texts[2U] ;
  int tmp ;
  {
  {
  texts[0] = "128x";
  texts[1] = "64x";
  tmp = snd_ctl_enum_info(uinfo, 1U, 2U, (char const * const *)(& texts));
  }
  return (tmp);
}
}
static int aureon_oversampling_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = wm_get(ice, 23);
  ucontrol->value.enumerated.item[0] = ((int )tmp & 8) != 0;
  }
  return (0);
}
}
static int aureon_oversampling_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  int temp ;
  int temp2 ;
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = wm_get(ice, 23);
  temp = (int )tmp;
  temp2 = temp;
  }
  if (ucontrol->value.enumerated.item[0] != 0U) {
    temp = temp | 8;
  } else {
    temp = temp & -9;
  }
  if (temp != temp2) {
    {
    wm_put___0(ice, 23, (int )((unsigned short )temp));
    }
    return (1);
  } else {
  }
  return (0);
}
}
static struct snd_kcontrol_new aureon_dac_controls[12U] =
  { {2, 0U, 0U, (unsigned char const *)"Master Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_stereo_info,
      & wm_master_mute_get, & wm_master_mute_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"Master Playback Volume", 0U, 19U, 0U, & wm_master_vol_info,
      & wm_master_vol_get, & wm_master_vol_put, {.p = (unsigned int const *)(& db_scale_wm_dac)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"Front Playback Switch", 0U, 0U, 0U, & wm_mute_info,
      & wm_mute_get, & wm_mute_put, {0}, 512UL},
        {2, 0U, 0U, (unsigned char const *)"Front Playback Volume", 0U, 19U, 0U, & wm_vol_info,
      & wm_vol_get, & wm_vol_put, {.p = (unsigned int const *)(& db_scale_wm_dac)},
      512UL},
        {2, 0U, 0U, (unsigned char const *)"Rear Playback Switch", 0U, 0U, 0U, & wm_mute_info,
      & wm_mute_get, & wm_mute_put, {0}, 514UL},
        {2, 0U, 0U, (unsigned char const *)"Rear Playback Volume", 0U, 19U, 0U, & wm_vol_info,
      & wm_vol_get, & wm_vol_put, {.p = (unsigned int const *)(& db_scale_wm_dac)},
      514UL},
        {2, 0U, 0U, (unsigned char const *)"Center Playback Switch", 0U, 0U, 0U, & wm_mute_info,
      & wm_mute_get, & wm_mute_put, {0}, 260UL},
        {2, 0U, 0U, (unsigned char const *)"Center Playback Volume", 0U, 19U, 0U, & wm_vol_info,
      & wm_vol_get, & wm_vol_put, {.p = (unsigned int const *)(& db_scale_wm_dac)},
      260UL},
        {2, 0U, 0U, (unsigned char const *)"LFE Playback Switch", 0U, 0U, 0U, & wm_mute_info,
      & wm_mute_get, & wm_mute_put, {0}, 261UL},
        {2, 0U, 0U, (unsigned char const *)"LFE Playback Volume", 0U, 19U, 0U, & wm_vol_info,
      & wm_vol_get, & wm_vol_put, {.p = (unsigned int const *)(& db_scale_wm_dac)},
      261UL},
        {2, 0U, 0U, (unsigned char const *)"Side Playback Switch", 0U, 0U, 0U, & wm_mute_info,
      & wm_mute_get, & wm_mute_put, {0}, 518UL},
        {2, 0U, 0U, (unsigned char const *)"Side Playback Volume", 0U, 19U, 0U, & wm_vol_info,
      & wm_vol_get, & wm_vol_put, {.p = (unsigned int const *)(& db_scale_wm_dac)},
      518UL}};
static struct snd_kcontrol_new wm_controls[8U] =
  { {2, 0U, 0U, (unsigned char const *)"PCM Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & wm_pcm_mute_get, & wm_pcm_mute_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"PCM Playback Volume", 0U, 19U, 0U, & wm_pcm_vol_info,
      & wm_pcm_vol_get, & wm_pcm_vol_put, {.p = (unsigned int const *)(& db_scale_wm_pcm)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"Capture Switch", 0U, 0U, 0U, & snd_ctl_boolean_stereo_info,
      & wm_adc_mute_get, & wm_adc_mute_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"Capture Volume", 0U, 19U, 0U, & wm_adc_vol_info,
      & wm_adc_vol_get, & wm_adc_vol_put, {.p = (unsigned int const *)(& db_scale_wm_adc)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"Capture Source", 0U, 0U, 0U, & wm_adc_mux_info,
      & wm_adc_mux_get, & wm_adc_mux_put, {0}, 5UL},
        {2, 0U, 0U, (unsigned char const *)"External Amplifier", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_hpamp_get, & aureon_hpamp_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"DAC Deemphasis Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_deemp_get, & aureon_deemp_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"ADC Oversampling", 0U, 0U, 0U, & aureon_oversampling_info,
      & aureon_oversampling_get, & aureon_oversampling_put, {0}, 0UL}};
static struct snd_kcontrol_new ac97_controls[11U] =
  { {2, 0U, 0U, (unsigned char const *)"AC97 Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_mmute_get, & aureon_ac97_mmute_put, {0}, 2UL},
        {2, 0U, 0U, (unsigned char const *)"AC97 Playback Volume", 0U, 19U, 0U, & aureon_ac97_vol_info,
      & aureon_ac97_vol_get, & aureon_ac97_vol_put, {.p = (unsigned int const *)(& db_scale_ac97_master)},
      130UL},
        {2, 0U, 0U, (unsigned char const *)"CD Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_mute_get, & aureon_ac97_mute_put, {0}, 18UL},
        {2, 0U, 0U, (unsigned char const *)"CD Playback Volume", 0U, 19U, 0U, & aureon_ac97_vol_info,
      & aureon_ac97_vol_get, & aureon_ac97_vol_put, {.p = (unsigned int const *)(& db_scale_ac97_gain)},
      146UL},
        {2, 0U, 0U, (unsigned char const *)"Aux Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_mute_get, & aureon_ac97_mute_put, {0}, 22UL},
        {2, 0U, 0U, (unsigned char const *)"Aux Playback Volume", 0U, 19U, 0U, & aureon_ac97_vol_info,
      & aureon_ac97_vol_get, & aureon_ac97_vol_put, {.p = (unsigned int const *)(& db_scale_ac97_gain)},
      150UL},
        {2, 0U, 0U, (unsigned char const *)"Line Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_mute_get, & aureon_ac97_mute_put, {0}, 16UL},
        {2, 0U, 0U, (unsigned char const *)"Line Playback Volume", 0U, 19U, 0U, & aureon_ac97_vol_info,
      & aureon_ac97_vol_get, & aureon_ac97_vol_put, {.p = (unsigned int const *)(& db_scale_ac97_gain)},
      144UL},
        {2, 0U, 0U, (unsigned char const *)"Mic Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_mute_get, & aureon_ac97_mute_put, {0}, 14UL},
        {2, 0U, 0U, (unsigned char const *)"Mic Playback Volume", 0U, 19U, 0U, & aureon_ac97_vol_info,
      & aureon_ac97_vol_get, & aureon_ac97_vol_put, {.p = (unsigned int const *)(& db_scale_ac97_gain)},
      14UL},
        {2, 0U, 0U, (unsigned char const *)"Mic Boost (+20dB)", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_micboost_get, & aureon_ac97_micboost_put, {0}, 0UL}};
static struct snd_kcontrol_new universe_ac97_controls[14U] =
  { {2, 0U, 0U, (unsigned char const *)"AC97 Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_mmute_get, & aureon_ac97_mmute_put, {0}, 2UL},
        {2, 0U, 0U, (unsigned char const *)"AC97 Playback Volume", 0U, 19U, 0U, & aureon_ac97_vol_info,
      & aureon_ac97_vol_get, & aureon_ac97_vol_put, {.p = (unsigned int const *)(& db_scale_ac97_master)},
      130UL},
        {2, 0U, 0U, (unsigned char const *)"CD Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_mute_get, & aureon_ac97_mute_put, {0}, 22UL},
        {2, 0U, 0U, (unsigned char const *)"CD Playback Volume", 0U, 19U, 0U, & aureon_ac97_vol_info,
      & aureon_ac97_vol_get, & aureon_ac97_vol_put, {.p = (unsigned int const *)(& db_scale_ac97_gain)},
      150UL},
        {2, 0U, 0U, (unsigned char const *)"Phono Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_mute_get, & aureon_ac97_mute_put, {0}, 18UL},
        {2, 0U, 0U, (unsigned char const *)"Phono Playback Volume", 0U, 19U, 0U, & aureon_ac97_vol_info,
      & aureon_ac97_vol_get, & aureon_ac97_vol_put, {.p = (unsigned int const *)(& db_scale_ac97_gain)},
      146UL},
        {2, 0U, 0U, (unsigned char const *)"Line Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_mute_get, & aureon_ac97_mute_put, {0}, 16UL},
        {2, 0U, 0U, (unsigned char const *)"Line Playback Volume", 0U, 19U, 0U, & aureon_ac97_vol_info,
      & aureon_ac97_vol_get, & aureon_ac97_vol_put, {.p = (unsigned int const *)(& db_scale_ac97_gain)},
      144UL},
        {2, 0U, 0U, (unsigned char const *)"Mic Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_mute_get, & aureon_ac97_mute_put, {0}, 14UL},
        {2, 0U, 0U, (unsigned char const *)"Mic Playback Volume", 0U, 19U, 0U, & aureon_ac97_vol_info,
      & aureon_ac97_vol_get, & aureon_ac97_vol_put, {.p = (unsigned int const *)(& db_scale_ac97_gain)},
      14UL},
        {2, 0U, 0U, (unsigned char const *)"Mic Boost (+20dB)", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_micboost_get, & aureon_ac97_micboost_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"Aux Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_ac97_mute_get, & aureon_ac97_mute_put, {0}, 20UL},
        {2, 0U, 0U, (unsigned char const *)"Aux Playback Volume", 0U, 19U, 0U, & aureon_ac97_vol_info,
      & aureon_ac97_vol_get, & aureon_ac97_vol_put, {.p = (unsigned int const *)(& db_scale_ac97_gain)},
      148UL},
        {2, 0U, 0U, (unsigned char const *)"Aux Source", 0U, 0U, 0U, & aureon_universe_inmux_info,
      & aureon_universe_inmux_get, & aureon_universe_inmux_put, {0}, 0UL}};
static struct snd_kcontrol_new cs8415_controls[6U] = { {2, 0U, 0U, (unsigned char const *)"IEC958 Capture Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & aureon_cs8415_mute_get, & aureon_cs8415_mute_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"IEC958 Capture Source", 0U, 0U, 0U, & aureon_cs8415_mux_info,
      & aureon_cs8415_mux_get, & aureon_cs8415_mux_put, {0}, 0UL},
        {3, 0U, 0U, (unsigned char const *)"IEC958 Q-subcode Capture Default", 0U,
      5U, 0U, & aureon_cs8415_qsub_info, & aureon_cs8415_qsub_get, 0, {0}, 0UL},
        {3, 0U, 0U, (unsigned char const *)"IEC958 Capture Mask", 0U, 1U, 0U, & aureon_cs8415_spdif_info,
      & aureon_cs8415_mask_get, 0, {0}, 0UL},
        {3, 0U, 0U, (unsigned char const *)"IEC958 Capture Default", 0U, 5U, 0U, & aureon_cs8415_spdif_info,
      & aureon_cs8415_spdif_get, 0, {0}, 0UL},
        {3, 0U, 0U, (unsigned char const *)"IEC958 Capture Rate", 0U, 5U, 0U, & aureon_cs8415_rate_info,
      & aureon_cs8415_rate_get, 0, {0}, 0UL}};
static int aureon_add_controls(struct snd_ice1712 *ice )
{
  unsigned int i ;
  unsigned int counts ;
  int err ;
  struct snd_kcontrol *tmp ;
  struct snd_kcontrol *tmp___0 ;
  struct snd_kcontrol *tmp___1 ;
  struct snd_kcontrol *tmp___2 ;
  unsigned char id___0 ;
  struct snd_kcontrol *kctl ;
  {
  counts = 12U;
  if (ice->eeprom.subvendor == 991250193U) {
    counts = counts - 2U;
  } else {
  }
  i = 0U;
  goto ldv_36104;
  ldv_36103:
  {
  tmp = snd_ctl_new1((struct snd_kcontrol_new const *)(& aureon_dac_controls) + (unsigned long )i,
                     (void *)ice);
  err = snd_ctl_add(ice->card, tmp);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_36104: ;
  if (i < counts) {
    goto ldv_36103;
  } else {
  }
  i = 0U;
  goto ldv_36109;
  ldv_36108:
  {
  tmp___0 = snd_ctl_new1((struct snd_kcontrol_new const *)(& wm_controls) + (unsigned long )i,
                         (void *)ice);
  err = snd_ctl_add(ice->card, tmp___0);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_36109: ;
  if (i <= 7U) {
    goto ldv_36108;
  } else {
  }
  if (ice->eeprom.subvendor == 991253265U) {
    i = 0U;
    goto ldv_36114;
    ldv_36113:
    {
    tmp___1 = snd_ctl_new1((struct snd_kcontrol_new const *)(& universe_ac97_controls) + (unsigned long )i,
                           (void *)ice);
    err = snd_ctl_add(ice->card, tmp___1);
    }
    if (err < 0) {
      return (err);
    } else {
    }
    i = i + 1U;
    ldv_36114: ;
    if (i <= 13U) {
      goto ldv_36113;
    } else {
    }
  } else
  if (ice->eeprom.subvendor != 842093633U && ice->eeprom.subvendor != 909202497U) {
    i = 0U;
    goto ldv_36119;
    ldv_36118:
    {
    tmp___2 = snd_ctl_new1((struct snd_kcontrol_new const *)(& ac97_controls) + (unsigned long )i,
                           (void *)ice);
    err = snd_ctl_add(ice->card, tmp___2);
    }
    if (err < 0) {
      return (err);
    } else {
    }
    i = i + 1U;
    ldv_36119: ;
    if (i <= 10U) {
      goto ldv_36118;
    } else {
    }
  } else {
  }
  if (ice->eeprom.subvendor != 842093633U && ice->eeprom.subvendor != 909202497U) {
    {
    snd_ice1712_save_gpio_status___0(ice);
    id___0 = aureon_cs8415_get(ice, 127);
    }
    if ((unsigned int )id___0 != 65U) {
      {
      _dev_info((struct device const *)(ice->card)->dev, "No CS8415 chip. Skipping CS8415 controls.\n");
      }
    } else
    if (((int )id___0 & 15) != 1) {
      {
      _dev_info((struct device const *)(ice->card)->dev, "Detected unsupported CS8415 rev. (%c)\n",
                (int )((char )(((unsigned int )id___0 & 15U) + 64U)));
      }
    } else {
      i = 0U;
      goto ldv_36126;
      ldv_36125:
      {
      kctl = snd_ctl_new1((struct snd_kcontrol_new const *)(& cs8415_controls) + (unsigned long )i,
                          (void *)ice);
      err = snd_ctl_add(ice->card, kctl);
      }
      if (err < 0) {
        return (err);
      } else {
      }
      if (i > 1U) {
        kctl->id.device = (unsigned int )(ice->pcm)->device;
      } else {
      }
      i = i + 1U;
      ldv_36126: ;
      if (i <= 5U) {
        goto ldv_36125;
      } else {
      }
    }
    {
    snd_ice1712_restore_gpio_status___0(ice);
    }
  } else {
  }
  return (0);
}
}
static int aureon_reset(struct snd_ice1712 *ice )
{
  unsigned short wm_inits_aureon[61U] ;
  unsigned short wm_inits_prodigy[61U] ;
  unsigned short cs_inits[5U] ;
  unsigned int tmp ;
  unsigned short const *p ;
  int err ;
  struct aureon_spec *spec ;
  {
  {
  wm_inits_aureon[0] = 27U;
  wm_inits_aureon[1] = 68U;
  wm_inits_aureon[2] = 28U;
  wm_inits_aureon[3] = 11U;
  wm_inits_aureon[4] = 29U;
  wm_inits_aureon[5] = 9U;
  wm_inits_aureon[6] = 24U;
  wm_inits_aureon[7] = 0U;
  wm_inits_aureon[8] = 22U;
  wm_inits_aureon[9] = 290U;
  wm_inits_aureon[10] = 23U;
  wm_inits_aureon[11] = 34U;
  wm_inits_aureon[12] = 0U;
  wm_inits_aureon[13] = 0U;
  wm_inits_aureon[14] = 1U;
  wm_inits_aureon[15] = 0U;
  wm_inits_aureon[16] = 2U;
  wm_inits_aureon[17] = 0U;
  wm_inits_aureon[18] = 3U;
  wm_inits_aureon[19] = 0U;
  wm_inits_aureon[20] = 4U;
  wm_inits_aureon[21] = 0U;
  wm_inits_aureon[22] = 5U;
  wm_inits_aureon[23] = 0U;
  wm_inits_aureon[24] = 6U;
  wm_inits_aureon[25] = 0U;
  wm_inits_aureon[26] = 7U;
  wm_inits_aureon[27] = 0U;
  wm_inits_aureon[28] = 8U;
  wm_inits_aureon[29] = 256U;
  wm_inits_aureon[30] = 9U;
  wm_inits_aureon[31] = 255U;
  wm_inits_aureon[32] = 10U;
  wm_inits_aureon[33] = 255U;
  wm_inits_aureon[34] = 11U;
  wm_inits_aureon[35] = 255U;
  wm_inits_aureon[36] = 12U;
  wm_inits_aureon[37] = 255U;
  wm_inits_aureon[38] = 13U;
  wm_inits_aureon[39] = 255U;
  wm_inits_aureon[40] = 14U;
  wm_inits_aureon[41] = 255U;
  wm_inits_aureon[42] = 15U;
  wm_inits_aureon[43] = 255U;
  wm_inits_aureon[44] = 16U;
  wm_inits_aureon[45] = 255U;
  wm_inits_aureon[46] = 17U;
  wm_inits_aureon[47] = 511U;
  wm_inits_aureon[48] = 18U;
  wm_inits_aureon[49] = 0U;
  wm_inits_aureon[50] = 19U;
  wm_inits_aureon[51] = 144U;
  wm_inits_aureon[52] = 20U;
  wm_inits_aureon[53] = 0U;
  wm_inits_aureon[54] = 21U;
  wm_inits_aureon[55] = 0U;
  wm_inits_aureon[56] = 25U;
  wm_inits_aureon[57] = 0U;
  wm_inits_aureon[58] = 26U;
  wm_inits_aureon[59] = 0U;
  wm_inits_aureon[60] = 65535U;
  wm_inits_prodigy[0] = 27U;
  wm_inits_prodigy[1] = 0U;
  wm_inits_prodigy[2] = 28U;
  wm_inits_prodigy[3] = 9U;
  wm_inits_prodigy[4] = 29U;
  wm_inits_prodigy[5] = 9U;
  wm_inits_prodigy[6] = 24U;
  wm_inits_prodigy[7] = 0U;
  wm_inits_prodigy[8] = 22U;
  wm_inits_prodigy[9] = 34U;
  wm_inits_prodigy[10] = 23U;
  wm_inits_prodigy[11] = 6U;
  wm_inits_prodigy[12] = 0U;
  wm_inits_prodigy[13] = 0U;
  wm_inits_prodigy[14] = 1U;
  wm_inits_prodigy[15] = 0U;
  wm_inits_prodigy[16] = 2U;
  wm_inits_prodigy[17] = 0U;
  wm_inits_prodigy[18] = 3U;
  wm_inits_prodigy[19] = 0U;
  wm_inits_prodigy[20] = 4U;
  wm_inits_prodigy[21] = 0U;
  wm_inits_prodigy[22] = 5U;
  wm_inits_prodigy[23] = 0U;
  wm_inits_prodigy[24] = 6U;
  wm_inits_prodigy[25] = 0U;
  wm_inits_prodigy[26] = 7U;
  wm_inits_prodigy[27] = 0U;
  wm_inits_prodigy[28] = 8U;
  wm_inits_prodigy[29] = 256U;
  wm_inits_prodigy[30] = 9U;
  wm_inits_prodigy[31] = 127U;
  wm_inits_prodigy[32] = 10U;
  wm_inits_prodigy[33] = 127U;
  wm_inits_prodigy[34] = 11U;
  wm_inits_prodigy[35] = 127U;
  wm_inits_prodigy[36] = 12U;
  wm_inits_prodigy[37] = 127U;
  wm_inits_prodigy[38] = 13U;
  wm_inits_prodigy[39] = 127U;
  wm_inits_prodigy[40] = 14U;
  wm_inits_prodigy[41] = 127U;
  wm_inits_prodigy[42] = 15U;
  wm_inits_prodigy[43] = 127U;
  wm_inits_prodigy[44] = 16U;
  wm_inits_prodigy[45] = 127U;
  wm_inits_prodigy[46] = 17U;
  wm_inits_prodigy[47] = 511U;
  wm_inits_prodigy[48] = 18U;
  wm_inits_prodigy[49] = 0U;
  wm_inits_prodigy[50] = 19U;
  wm_inits_prodigy[51] = 144U;
  wm_inits_prodigy[52] = 20U;
  wm_inits_prodigy[53] = 0U;
  wm_inits_prodigy[54] = 21U;
  wm_inits_prodigy[55] = 0U;
  wm_inits_prodigy[56] = 25U;
  wm_inits_prodigy[57] = 0U;
  wm_inits_prodigy[58] = 26U;
  wm_inits_prodigy[59] = 0U;
  wm_inits_prodigy[60] = 65535U;
  cs_inits[0] = 1089U;
  cs_inits[1] = 384U;
  cs_inits[2] = 513U;
  cs_inits[3] = 1541U;
  cs_inits[4] = 65535U;
  spec = (struct aureon_spec *)ice->spec;
  err = aureon_ac97_init(ice);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  snd_ice1712_gpio_set_dir(ice, 6291455U);
  snd_ice1712_save_gpio_status___0(ice);
  snd_ice1712_gpio_set_mask(ice, 4289703935U);
  tmp = snd_ice1712_gpio_read(ice);
  tmp = tmp & 4293918719U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  tmp = tmp | 4198400U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  tmp = tmp | 1048576U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  }
  if ((ice->eeprom.subvendor == 860443461U || ice->eeprom.subvendor == 842093633U) || ice->eeprom.subvendor == 909202497U) {
    p = (unsigned short const *)(& wm_inits_prodigy);
  } else {
    p = (unsigned short const *)(& wm_inits_aureon);
  }
  goto ldv_36139;
  ldv_36138:
  {
  wm_put___0(ice, (int )*p, (int )*(p + 1UL));
  p = p + 2UL;
  }
  ldv_36139: ;
  if ((unsigned int )((unsigned short )*p) != 65535U) {
    goto ldv_36138;
  } else {
  }
  if (ice->eeprom.subvendor != 842093633U && ice->eeprom.subvendor != 909202497U) {
    p = (unsigned short const *)(& cs_inits);
    goto ldv_36142;
    ldv_36141:
    {
    aureon_spi_write(ice, 4194304U, (unsigned int )((int )*p | 2097152), 24);
    p = p + 1;
    }
    ldv_36142: ;
    if ((unsigned int )((unsigned short )*p) != 65535U) {
      goto ldv_36141;
    } else {
    }
    {
    spec->cs8415_mux = 1U;
    aureon_set_headphone_amp(ice, 1);
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___0(ice);
  aureon_pca9554_write(ice, 3, 0);
  aureon_pca9554_write(ice, 1, 0);
  }
  return (0);
}
}
static int aureon_resume(struct snd_ice1712 *ice )
{
  struct aureon_spec *spec ;
  int err ;
  int i ;
  {
  {
  spec = (struct aureon_spec *)ice->spec;
  err = aureon_reset(ice);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  i = 0;
  goto ldv_36151;
  ldv_36150:
  {
  wm_set_vol(ice, (unsigned int )i, (int )spec->vol[i], (int )spec->master[i % 2]);
  i = i + 1;
  }
  ldv_36151: ;
  if ((unsigned int )i < ice->num_total_dacs) {
    goto ldv_36150;
  } else {
  }
  return (0);
}
}
static int aureon_init(struct snd_ice1712 *ice )
{
  struct aureon_spec *spec ;
  int i ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = kzalloc(156UL, 208U);
  spec = (struct aureon_spec *)tmp;
  }
  if ((unsigned long )spec == (unsigned long )((struct aureon_spec *)0)) {
    return (-12);
  } else {
  }
  ice->spec = (void *)spec;
  if (ice->eeprom.subvendor == 991250193U) {
    ice->num_total_dacs = 6U;
    ice->num_total_adcs = 2U;
  } else {
    ice->num_total_dacs = 8U;
    ice->num_total_adcs = 2U;
  }
  {
  tmp___0 = kzalloc(280UL, 208U);
  ice->akm = (struct snd_akm4xxx *)tmp___0;
  }
  if ((unsigned long )ice->akm == (unsigned long )((struct snd_akm4xxx *)0)) {
    return (-12);
  } else {
  }
  {
  ice->akm_codecs = 1U;
  err = aureon_reset(ice);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  spec->master[0] = 32768U;
  spec->master[1] = 32768U;
  i = 0;
  goto ldv_36160;
  ldv_36159:
  {
  spec->vol[i] = 32768U;
  wm_set_vol(ice, (unsigned int )i, (int )spec->vol[i], (int )spec->master[i % 2]);
  i = i + 1;
  }
  ldv_36160: ;
  if ((unsigned int )i < ice->num_total_dacs) {
    goto ldv_36159;
  } else {
  }
  ice->pm_resume = & aureon_resume;
  ice->pm_suspend_enabled = 1U;
  return (0);
}
}
static unsigned char aureon51_eeprom[13U] =
  { 10U, 128U, 252U, 195U,
        255U, 255U, 95U, 0U,
        0U, 0U, 0U, 0U,
        0U};
static unsigned char aureon71_eeprom[13U] =
  { 11U, 128U, 252U, 195U,
        255U, 255U, 95U, 0U,
        0U, 0U, 0U, 0U,
        0U};
static unsigned char aureon71_universe_eeprom[13U] =
  { 43U, 128U, 252U, 195U,
        255U, 255U, 95U, 0U,
        0U, 0U, 0U, 0U,
        0U};
static unsigned char prodigy71lt_eeprom[13U] =
  { 75U, 128U, 252U, 195U,
        255U, 255U, 95U, 0U,
        0U, 0U, 0U, 0U,
        0U};
struct snd_ice1712_card_info snd_vt1724_aureon_cards[7U] = { {991250193U, "Terratec Aureon 5.1-Sky", "aureon51", "Aureon51", & aureon_init,
      0, & aureon_add_controls, (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& aureon51_eeprom)},
        {991249681U,
      "Terratec Aureon 7.1-Space", "aureon71", "Aureon71", & aureon_init, 0, & aureon_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& aureon71_eeprom)},
        {991253265U,
      "Terratec Aureon 7.1-Universe", "universe", "Aureon71Univ", & aureon_init, 0,
      & aureon_add_controls, (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& aureon71_universe_eeprom)},
        {860443461U,
      "Audiotrak Prodigy 7.1", "prodigy71", "Prodigy71", & aureon_init, 0, & aureon_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& aureon71_eeprom)},
        {842093633U,
      "Audiotrak Prodigy 7.1 LT", "prodigy71lt", "Prodigy71LT", & aureon_init, 0,
      & aureon_add_controls, (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& prodigy71lt_eeprom)},
        {909202497U,
      "Audiotrak Prodigy 7.1 XT", "prodigy71xt", "Prodigy71LT", & aureon_init, 0,
      & aureon_add_controls, (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& prodigy71lt_eeprom)}};
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  aureon_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  aureon_init(arg1);
  }
  return;
}
}
static void ldv_mutex_lock_102___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_103___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_108(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_114(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_115(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_116(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_117(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_118(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_120(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static int k8x800_init(struct snd_ice1712 *ice )
{
  {
  ice->vt1720 = 1U;
  ice->num_total_dacs = 6U;
  ice->num_total_adcs = 2U;
  return (0);
}
}
static int k8x800_add_controls(struct snd_ice1712 *ice )
{
  {
  return (0);
}
}
static unsigned char k8x800_eeprom[13U] =
  { 1U, 2U, 0U, 0U,
        255U, 255U, 0U, 255U,
        255U, 0U, 0U, 0U,
        0U};
static unsigned char sn25p_eeprom[13U] =
  { 1U, 2U, 0U, 65U,
        255U, 255U, 0U, 255U,
        255U, 0U, 0U, 0U,
        0U};
struct snd_ice1712_card_info snd_vt1720_mobo_cards[6U] = { {4061594924U, "Albatron K8X800 Pro II", "k8x800", 0, & k8x800_init, 0, & k8x800_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& k8x800_eeprom)},
        {254231030U,
      "Chaintech ZNF3-150", 0, 0, & k8x800_init, 0, & k8x800_add_controls, (unsigned char)0,
      0U, 0U, 0, 0, 13U, (unsigned char const *)(& k8x800_eeprom)},
        {254232054U, "Chaintech ZNF3-250", 0, 0, & k8x800_init, 0, & k8x800_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& k8x800_eeprom)},
        {254223143U,
      "Chaintech 9CJS", 0, 0, & k8x800_init, 0, & k8x800_add_controls, (unsigned char)0,
      0U, 0U, 0, 0, 13U, (unsigned char const *)(& k8x800_eeprom)},
        {2534553168U, "Shuttle SN25P", "sn25p", 0, & k8x800_init, 0, & k8x800_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& sn25p_eeprom)}};
void ldv_dummy_resourceless_instance_callback_16_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  k8x800_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  k8x800_init(arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_106___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_108___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_110___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_112___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_114___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_116___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_118___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_120___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_122___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_124(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_126___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_128(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_130(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_132___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_134(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_136(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_138___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_140(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_142(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_144(struct mutex *ldv_func_arg1 ) ;
extern int sscanf(char const * , char const * , ...) ;
static void ldv_mutex_unlock_105___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_107___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_109___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_111___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_113___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_115___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_117___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_119___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_121___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_123___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_125___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_127___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_129(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_131(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_133___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_135(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_137(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_139___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_141(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_143(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_145(struct mutex *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int snd_info_get_line(struct snd_info_buffer * , char * , int ) ;
static unsigned short wm_get___0(struct snd_ice1712 *ice , int reg )
{
  {
  reg = reg << 1;
  return ((unsigned short )((int )((short )((int )(ice->akm)->images[reg] << 8)) | (int )((short )(ice->akm)->images[reg + 1])));
}
}
static void wm_put_nocache___0(struct snd_ice1712 *ice , int reg , unsigned short val )
{
  unsigned short cval ;
  {
  {
  cval = (unsigned short )((int )((short )(reg << 9)) | (int )((short )val));
  snd_vt1724_write_i2c(ice, 52, (int )((unsigned char )((int )cval >> 8)), (int )((unsigned char )cval));
  }
  return;
}
}
static void wm_put___1(struct snd_ice1712 *ice , int reg , unsigned short val )
{
  {
  {
  wm_put_nocache___0(ice, reg, (int )val);
  reg = reg << 1;
  (ice->akm)->images[reg] = (unsigned char )((int )val >> 8);
  (ice->akm)->images[reg + 1] = (unsigned char )val;
  }
  return;
}
}
static int wm_dac_vol_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 128L;
  return (0);
}
}
static int wm_dac_vol_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short val ;
  int i ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_104___0(& ice->gpio_mutex);
  i = 0;
  }
  goto ldv_35675;
  ldv_35674:
  {
  tmp = wm_get___0(ice, i + 3);
  val = (unsigned int )tmp & 255U;
  val = (unsigned int )val > 127U ? (unsigned int )val + 65409U : 0U;
  ucontrol->value.integer.value[i] = (long )val;
  i = i + 1;
  }
  ldv_35675: ;
  if (i <= 1) {
    goto ldv_35674;
  } else {
  }
  {
  ldv_mutex_unlock_105___0(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_dac_vol_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short oval ;
  unsigned short nval ;
  int i ;
  int idx ;
  int change ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  ldv_mutex_lock_106___0(& ice->gpio_mutex);
  i = 0;
  }
  goto ldv_35688;
  ldv_35687:
  {
  nval = (unsigned short )ucontrol->value.integer.value[i];
  nval = (unsigned int )nval != 0U ? ((unsigned int )nval + 127U) & 255U : 0U;
  idx = i + 3;
  tmp = wm_get___0(ice, idx);
  oval = (unsigned int )tmp & 255U;
  }
  if ((int )oval != (int )nval) {
    {
    wm_put___1(ice, idx, (int )nval);
    wm_put_nocache___0(ice, idx, (int )((unsigned int )nval | 256U));
    change = 1;
    }
  } else {
  }
  i = i + 1;
  ldv_35688: ;
  if (i <= 1) {
    goto ldv_35687;
  } else {
  }
  {
  ldv_mutex_unlock_107___0(& ice->gpio_mutex);
  }
  return (change);
}
}
static int wm_adc_vol_info___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 128L;
  return (0);
}
}
static int wm_adc_vol_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short val ;
  int i ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_108___0(& ice->gpio_mutex);
  i = 0;
  }
  goto ldv_35702;
  ldv_35701:
  {
  tmp = wm_get___0(ice, i + 14);
  val = (unsigned int )tmp & 255U;
  val = (unsigned int )val > 79U ? (unsigned int )val + 65457U : 0U;
  ucontrol->value.integer.value[i] = (long )val;
  i = i + 1;
  }
  ldv_35702: ;
  if (i <= 1) {
    goto ldv_35701;
  } else {
  }
  {
  ldv_mutex_unlock_109___0(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_adc_vol_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short ovol ;
  unsigned short nvol ;
  int i ;
  int idx ;
  int change ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  ldv_mutex_lock_110___0(& ice->gpio_mutex);
  i = 0;
  }
  goto ldv_35715;
  ldv_35714:
  {
  nvol = (unsigned short )ucontrol->value.integer.value[i];
  nvol = (unsigned int )nvol != 0U ? (unsigned int )nvol + 79U : 0U;
  idx = i + 14;
  tmp = wm_get___0(ice, idx);
  ovol = (unsigned int )tmp & 255U;
  }
  if ((int )ovol != (int )nvol) {
    {
    wm_put___1(ice, idx, (int )nvol);
    change = 1;
    }
  } else {
  }
  i = i + 1;
  ldv_35715: ;
  if (i <= 1) {
    goto ldv_35714;
  } else {
  }
  {
  ldv_mutex_unlock_111___0(& ice->gpio_mutex);
  }
  return (change);
}
}
static int wm_adc_mux_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int bit ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  bit = (int )kcontrol->private_value;
  ldv_mutex_lock_112___0(& ice->gpio_mutex);
  tmp = wm_get___0(ice, 21);
  ucontrol->value.integer.value[0] = (long )((int )tmp >> bit) & 1L;
  ldv_mutex_unlock_113___0(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_adc_mux_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int bit ;
  unsigned short oval ;
  unsigned short nval ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  bit = (int )kcontrol->private_value;
  ldv_mutex_lock_114___0(& ice->gpio_mutex);
  oval = wm_get___0(ice, 21);
  nval = oval;
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    nval = (unsigned short )((int )((short )nval) | (int )((short )(1 << bit)));
  } else {
    nval = (unsigned short )((int )((short )nval) & ~ ((int )((short )(1 << bit))));
  }
  change = (int )nval != (int )oval;
  if (change != 0) {
    {
    wm_put___1(ice, 21, (int )nval);
    }
  } else {
  }
  {
  ldv_mutex_unlock_115___0(& ice->gpio_mutex);
  }
  return (change);
}
}
static int wm_bypass_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_116___0(& ice->gpio_mutex);
  tmp = wm_get___0(ice, 22);
  ucontrol->value.integer.value[0] = ((int )tmp & 4) != 0;
  ldv_mutex_unlock_117___0(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_bypass_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short val ;
  unsigned short oval ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  ldv_mutex_lock_118___0(& ice->gpio_mutex);
  oval = wm_get___0(ice, 22);
  val = oval;
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    val = (unsigned int )val | 4U;
  } else {
    val = (unsigned int )val & 65531U;
  }
  if ((int )val != (int )oval) {
    {
    wm_put___1(ice, 22, (int )val);
    change = 1;
    }
  } else {
  }
  {
  ldv_mutex_unlock_119___0(& ice->gpio_mutex);
  }
  return (change);
}
}
static int wm_chswap_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_120___0(& ice->gpio_mutex);
  tmp = wm_get___0(ice, 7);
  ucontrol->value.integer.value[0] = ((int )tmp & 240) != 144;
  ldv_mutex_unlock_121___0(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_chswap_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short val ;
  unsigned short oval ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  ldv_mutex_lock_122___0(& ice->gpio_mutex);
  oval = wm_get___0(ice, 7);
  val = (unsigned int )oval & 15U;
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    val = (unsigned int )val | 96U;
  } else {
    val = (unsigned int )val | 144U;
  }
  if ((int )val != (int )oval) {
    {
    wm_put___1(ice, 7, (int )val);
    wm_put_nocache___0(ice, 7, (int )val);
    change = 1;
    }
  } else {
  }
  {
  ldv_mutex_unlock_123___0(& ice->gpio_mutex);
  }
  return (change);
}
}
static void set_gpio_bit(struct snd_ice1712 *ice , unsigned int bit , int val )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  {
  tmp___0 = snd_ice1712_gpio_read(ice);
  tmp = tmp___0;
  }
  if (val != 0) {
    tmp = tmp | bit;
  } else {
    tmp = tmp & ~ bit;
  }
  {
  snd_ice1712_gpio_write(ice, tmp);
  }
  return;
}
}
static void spi_send_byte(struct snd_ice1712 *ice , unsigned char data )
{
  int i ;
  {
  i = 0;
  goto ldv_35770;
  ldv_35769:
  {
  set_gpio_bit(ice, 32U, 0);
  __const_udelay(4295UL);
  set_gpio_bit(ice, 128U, (int )data & 128);
  __const_udelay(4295UL);
  set_gpio_bit(ice, 32U, 1);
  __const_udelay(4295UL);
  data = (int )data << 1U;
  i = i + 1;
  }
  ldv_35770: ;
  if (i <= 7) {
    goto ldv_35769;
  } else {
  }
  return;
}
}
static unsigned int spi_read_byte(struct snd_ice1712 *ice )
{
  int i ;
  unsigned int val ;
  unsigned int tmp ;
  {
  val = 0U;
  i = 0;
  goto ldv_35778;
  ldv_35777:
  {
  val = val << 1;
  set_gpio_bit(ice, 32U, 0);
  __const_udelay(4295UL);
  tmp = snd_ice1712_gpio_read(ice);
  }
  if ((tmp & 64U) != 0U) {
    val = val | 1U;
  } else {
  }
  {
  __const_udelay(4295UL);
  set_gpio_bit(ice, 32U, 1);
  __const_udelay(4295UL);
  i = i + 1;
  }
  ldv_35778: ;
  if (i <= 7) {
    goto ldv_35777;
  } else {
  }
  return (val);
}
}
static void spi_write(struct snd_ice1712 *ice , unsigned int dev , unsigned int reg ,
                      unsigned int data )
{
  {
  {
  snd_ice1712_gpio_set_dir(ice, 176U);
  snd_ice1712_gpio_set_mask(ice, 4294967119U);
  set_gpio_bit(ice, 16U, 0);
  spi_send_byte(ice, (int )((unsigned char )dev) & 254);
  spi_send_byte(ice, (int )((unsigned char )reg));
  spi_send_byte(ice, (int )((unsigned char )data));
  set_gpio_bit(ice, 16U, 1);
  __const_udelay(4295UL);
  snd_ice1712_gpio_set_mask(ice, ice->gpio.write_mask);
  snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
  }
  return;
}
}
static unsigned int spi_read(struct snd_ice1712 *ice , unsigned int dev , unsigned int reg )
{
  unsigned int val ;
  {
  {
  snd_ice1712_gpio_set_dir(ice, 176U);
  snd_ice1712_gpio_set_mask(ice, 4294967119U);
  set_gpio_bit(ice, 16U, 0);
  spi_send_byte(ice, (int )((unsigned char )dev) & 254);
  spi_send_byte(ice, (int )((unsigned char )reg));
  set_gpio_bit(ice, 16U, 1);
  __const_udelay(4295UL);
  set_gpio_bit(ice, 16U, 0);
  spi_send_byte(ice, (int )((unsigned int )((unsigned char )dev) | 1U));
  val = spi_read_byte(ice);
  set_gpio_bit(ice, 16U, 1);
  __const_udelay(4295UL);
  snd_ice1712_gpio_set_mask(ice, ice->gpio.write_mask);
  snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
  }
  return (val);
}
}
static int cs_source_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  char const *texts[3U] ;
  int tmp ;
  {
  {
  texts[0] = "Coax";
  texts[1] = "Optical";
  texts[2] = "CD";
  tmp = snd_ctl_enum_info(uinfo, 1U, 3U, (char const * const *)(& texts));
  }
  return (tmp);
}
}
static int cs_source_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_124(& ice->gpio_mutex);
  ucontrol->value.enumerated.item[0] = ice->gpio.saved[0];
  ldv_mutex_unlock_125___0(& ice->gpio_mutex);
  }
  return (0);
}
}
static int cs_source_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char val ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  ldv_mutex_lock_126___0(& ice->gpio_mutex);
  }
  if (ucontrol->value.enumerated.item[0] != ice->gpio.saved[0]) {
    {
    ice->gpio.saved[0] = ucontrol->value.enumerated.item[0] & 3U;
    val = (unsigned int )((int )((unsigned char )ice->gpio.saved[0]) << 3U) | 128U;
    spi_write(ice, 32U, 4U, (unsigned int )val);
    change = 1;
    }
  } else {
  }
  {
  ldv_mutex_unlock_127___0(& ice->gpio_mutex);
  }
  return (change);
}
}
static int pontis_gpio_mask_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 1U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 65535L;
  return (0);
}
}
static int pontis_gpio_mask_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_128(& ice->gpio_mutex);
  ucontrol->value.integer.value[0] = (long )((~ ice->gpio.write_mask & 65535U) | 240U);
  ldv_mutex_unlock_129(& ice->gpio_mutex);
  }
  return (0);
}
}
static int pontis_gpio_mask_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int val ;
  int changed ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_130(& ice->gpio_mutex);
  val = (unsigned int )((~ ((int )ucontrol->value.integer.value[0]) & 65535) | 240);
  changed = val != ice->gpio.write_mask;
  ice->gpio.write_mask = val;
  ldv_mutex_unlock_131(& ice->gpio_mutex);
  }
  return (changed);
}
}
static int pontis_gpio_dir_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_132___0(& ice->gpio_mutex);
  ucontrol->value.integer.value[0] = (long )ice->gpio.direction & 65295L;
  ldv_mutex_unlock_133___0(& ice->gpio_mutex);
  }
  return (0);
}
}
static int pontis_gpio_dir_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int val ;
  int changed ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_134(& ice->gpio_mutex);
  val = (unsigned int )ucontrol->value.integer.value[0] & 65295U;
  changed = val != ice->gpio.direction;
  ice->gpio.direction = val;
  ldv_mutex_unlock_135(& ice->gpio_mutex);
  }
  return (changed);
}
}
static int pontis_gpio_data_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_136(& ice->gpio_mutex);
  snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
  snd_ice1712_gpio_set_mask(ice, ice->gpio.write_mask);
  tmp = snd_ice1712_gpio_read(ice);
  ucontrol->value.integer.value[0] = (long )tmp & 65535L;
  ldv_mutex_unlock_137(& ice->gpio_mutex);
  }
  return (0);
}
}
static int pontis_gpio_data_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int val ;
  unsigned int nval ;
  int changed ;
  unsigned int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  changed = 0;
  ldv_mutex_lock_138___0(& ice->gpio_mutex);
  snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
  snd_ice1712_gpio_set_mask(ice, ice->gpio.write_mask);
  tmp = snd_ice1712_gpio_read(ice);
  val = tmp & 65535U;
  nval = (unsigned int )ucontrol->value.integer.value[0] & 65535U;
  }
  if (val != nval) {
    {
    snd_ice1712_gpio_write(ice, nval);
    changed = 1;
    }
  } else {
  }
  {
  ldv_mutex_unlock_139___0(& ice->gpio_mutex);
  }
  return (changed);
}
}
static unsigned int const db_scale_volume[4U] = { 1U, 8U, 4294960896U, 65586U};
static struct snd_kcontrol_new pontis_controls[10U] =
  { {2, 0U, 0U, (unsigned char const *)"PCM Playback Volume", 0U, 19U, 0U, & wm_dac_vol_info,
      & wm_dac_vol_get, & wm_dac_vol_put, {.p = (unsigned int const *)(& db_scale_volume)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"Capture Volume", 0U, 19U, 0U, & wm_adc_vol_info___0,
      & wm_adc_vol_get___0, & wm_adc_vol_put___0, {.p = (unsigned int const *)(& db_scale_volume)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"CD Capture Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & wm_adc_mux_get___0, & wm_adc_mux_put___0, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"Line Capture Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & wm_adc_mux_get___0, & wm_adc_mux_put___0, {0}, 1UL},
        {2, 0U, 0U, (unsigned char const *)"Analog Bypass Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & wm_bypass_get, & wm_bypass_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"Swap Output Channels", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & wm_chswap_get, & wm_chswap_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"IEC958 Input Source", 0U, 0U, 0U, & cs_source_info,
      & cs_source_get, & cs_source_put, {0}, 0UL},
        {0, 0U, 0U, (unsigned char const *)"GPIO Mask", 0U, 0U, 0U, & pontis_gpio_mask_info,
      & pontis_gpio_mask_get, & pontis_gpio_mask_put, {0}, 0UL},
        {0, 0U, 0U, (unsigned char const *)"GPIO Direction", 0U, 0U, 0U, & pontis_gpio_mask_info,
      & pontis_gpio_dir_get, & pontis_gpio_dir_put, {0}, 0UL},
        {0, 0U, 0U, (unsigned char const *)"GPIO Data", 0U, 0U, 0U, & pontis_gpio_mask_info,
      & pontis_gpio_data_get, & pontis_gpio_data_put, {0}, 0UL}};
static void wm_proc_regs_write(struct snd_info_entry *entry , struct snd_info_buffer *buffer )
{
  struct snd_ice1712 *ice ;
  char line[64U] ;
  unsigned int reg ;
  unsigned int val ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)entry->private_data;
  ldv_mutex_lock_140(& ice->gpio_mutex);
  }
  goto ldv_35861;
  ldv_35862:
  {
  tmp = sscanf((char const *)(& line), "%x %x", & reg, & val);
  }
  if (tmp != 2) {
    goto ldv_35861;
  } else {
  }
  if (reg <= 23U && val <= 65535U) {
    {
    wm_put___1(ice, (int )reg, (int )((unsigned short )val));
    }
  } else {
  }
  ldv_35861:
  {
  tmp___0 = snd_info_get_line(buffer, (char *)(& line), 64);
  }
  if (tmp___0 == 0) {
    goto ldv_35862;
  } else {
  }
  {
  ldv_mutex_unlock_141(& ice->gpio_mutex);
  }
  return;
}
}
static void wm_proc_regs_read(struct snd_info_entry *entry , struct snd_info_buffer *buffer )
{
  struct snd_ice1712 *ice ;
  int reg ;
  int val ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)entry->private_data;
  ldv_mutex_lock_142(& ice->gpio_mutex);
  reg = 0;
  }
  goto ldv_35872;
  ldv_35871:
  {
  tmp = wm_get___0(ice, reg);
  val = (int )tmp;
  snd_iprintf(buffer, "%02x = %04x\n", reg, val);
  reg = reg + 1;
  }
  ldv_35872: ;
  if (reg <= 23) {
    goto ldv_35871;
  } else {
  }
  {
  ldv_mutex_unlock_143(& ice->gpio_mutex);
  }
  return;
}
}
static void wm_proc_init(struct snd_ice1712 *ice )
{
  struct snd_info_entry *entry ;
  int tmp ;
  {
  {
  tmp = snd_card_proc_new(ice->card, "wm_codec", & entry);
  }
  if (tmp == 0) {
    {
    snd_info_set_text_ops(entry, (void *)ice, & wm_proc_regs_read);
    entry->mode = (umode_t )((unsigned int )entry->mode | 128U);
    entry->c.text.write = & wm_proc_regs_write;
    }
  } else {
  }
  return;
}
}
static void cs_proc_regs_read(struct snd_info_entry *entry , struct snd_info_buffer *buffer )
{
  struct snd_ice1712 *ice ;
  int reg ;
  int val ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)entry->private_data;
  ldv_mutex_lock_144(& ice->gpio_mutex);
  reg = 0;
  }
  goto ldv_35886;
  ldv_35885:
  {
  tmp = spi_read(ice, 32U, (unsigned int )reg);
  val = (int )tmp;
  snd_iprintf(buffer, "%02x = %02x\n", reg, val);
  reg = reg + 1;
  }
  ldv_35886: ;
  if (reg <= 38) {
    goto ldv_35885;
  } else {
  }
  {
  tmp___0 = spi_read(ice, 32U, 127U);
  val = (int )tmp___0;
  snd_iprintf(buffer, "%02x = %02x\n", 127, val);
  ldv_mutex_unlock_145(& ice->gpio_mutex);
  }
  return;
}
}
static void cs_proc_init(struct snd_ice1712 *ice )
{
  struct snd_info_entry *entry ;
  int tmp ;
  {
  {
  tmp = snd_card_proc_new(ice->card, "cs_codec", & entry);
  }
  if (tmp == 0) {
    {
    snd_info_set_text_ops(entry, (void *)ice, & cs_proc_regs_read);
    }
  } else {
  }
  return;
}
}
static int pontis_add_controls(struct snd_ice1712 *ice )
{
  unsigned int i ;
  int err ;
  struct snd_kcontrol *tmp ;
  {
  i = 0U;
  goto ldv_35900;
  ldv_35899:
  {
  tmp = snd_ctl_new1((struct snd_kcontrol_new const *)(& pontis_controls) + (unsigned long )i,
                     (void *)ice);
  err = snd_ctl_add(ice->card, tmp);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_35900: ;
  if (i <= 9U) {
    goto ldv_35899;
  } else {
  }
  {
  wm_proc_init(ice);
  cs_proc_init(ice);
  }
  return (0);
}
}
static int pontis_init(struct snd_ice1712 *ice )
{
  unsigned short wm_inits[10U] ;
  unsigned short wm_inits2[34U] ;
  unsigned char cs_inits[10U] ;
  unsigned int i ;
  void *tmp ;
  unsigned char tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  unsigned char tmp___2 ;
  {
  {
  wm_inits[0] = 21U;
  wm_inits[1] = 192U;
  wm_inits[2] = 8U;
  wm_inits[3] = 1U;
  wm_inits[4] = 7U;
  wm_inits[5] = 0U;
  wm_inits[6] = 13U;
  wm_inits[7] = 8U;
  wm_inits[8] = 23U;
  wm_inits[9] = 0U;
  wm_inits2[0] = 12U;
  wm_inits2[1] = 34U;
  wm_inits2[2] = 10U;
  wm_inits2[3] = 34U;
  wm_inits2[4] = 11U;
  wm_inits2[5] = 34U;
  wm_inits2[6] = 7U;
  wm_inits2[7] = 144U;
  wm_inits2[8] = 22U;
  wm_inits2[9] = 1U;
  wm_inits2[10] = 0U;
  wm_inits2[11] = 377U;
  wm_inits2[12] = 1U;
  wm_inits2[13] = 377U;
  wm_inits2[14] = 3U;
  wm_inits2[15] = 0U;
  wm_inits2[16] = 3U;
  wm_inits2[17] = 256U;
  wm_inits2[18] = 4U;
  wm_inits2[19] = 0U;
  wm_inits2[20] = 4U;
  wm_inits2[21] = 256U;
  wm_inits2[22] = 6U;
  wm_inits2[23] = 0U;
  wm_inits2[24] = 9U;
  wm_inits2[25] = 0U;
  wm_inits2[26] = 14U;
  wm_inits2[27] = 0U;
  wm_inits2[28] = 15U;
  wm_inits2[29] = 0U;
  wm_inits2[30] = 8U;
  wm_inits2[31] = 0U;
  wm_inits2[32] = 21U;
  wm_inits2[33] = 3U;
  cs_inits[0] = 4U;
  cs_inits[1] = 128U;
  cs_inits[2] = 5U;
  cs_inits[3] = 5U;
  cs_inits[4] = 1U;
  cs_inits[5] = 0U;
  cs_inits[6] = 2U;
  cs_inits[7] = 0U;
  cs_inits[8] = 3U;
  cs_inits[9] = 0U;
  ice->vt1720 = 1U;
  ice->num_total_dacs = 2U;
  ice->num_total_adcs = 2U;
  tmp = kzalloc(280UL, 208U);
  ice->akm = (struct snd_akm4xxx *)tmp;
  }
  if ((unsigned long )ice->akm == (unsigned long )((struct snd_akm4xxx *)0)) {
    return (-12);
  } else {
  }
  ice->akm_codecs = 1U;
  ice->gpio.saved[0] = 0U;
  i = 0U;
  goto ldv_35912;
  ldv_35911:
  {
  wm_put___1(ice, (int )wm_inits[i], (int )wm_inits[i + 1U]);
  i = i + 2U;
  }
  ldv_35912: ;
  if (i <= 9U) {
    goto ldv_35911;
  } else {
  }
  {
  schedule_timeout_uninterruptible(1L);
  i = 0U;
  }
  goto ldv_35917;
  ldv_35916:
  {
  wm_put___1(ice, (int )wm_inits2[i], (int )wm_inits2[i + 1U]);
  i = i + 2U;
  }
  ldv_35917: ;
  if (i <= 33U) {
    goto ldv_35916;
  } else {
  }
  {
  tmp___0 = inb((int )((unsigned int )ice->profi_port + 5U));
  outb((int )((unsigned int )tmp___0 | 128U), (int )((unsigned int )ice->profi_port + 5U));
  }
  if (1) {
    {
    __const_udelay(21475000UL);
    }
  } else {
    __ms = 5UL;
    goto ldv_35921;
    ldv_35920:
    {
    __const_udelay(4295000UL);
    }
    ldv_35921:
    tmp___1 = __ms;
    __ms = __ms - 1UL;
    if (tmp___1 != 0UL) {
      goto ldv_35920;
    } else {
    }
  }
  {
  tmp___2 = inb((int )((unsigned int )ice->profi_port + 5U));
  outb((int )tmp___2 & 127, (int )((unsigned int )ice->profi_port + 5U));
  i = 0U;
  }
  goto ldv_35926;
  ldv_35925:
  {
  spi_write(ice, 32U, (unsigned int )cs_inits[i], (unsigned int )cs_inits[i + 1U]);
  i = i + 2U;
  }
  ldv_35926: ;
  if (i <= 9U) {
    goto ldv_35925;
  } else {
  }
  return (0);
}
}
static unsigned char pontis_eeprom[13U] =
  { 8U, 128U, 248U, 195U,
        7U, 0U, 0U, 15U,
        255U, 0U, 6U, 0U,
        0U};
struct snd_ice1712_card_info snd_vt1720_pontis_cards[2U] = { {131074U, "Pontis MS300", "ms300", 0, & pontis_init, 0, & pontis_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& pontis_eeprom)}};
void ldv_dummy_resourceless_instance_callback_20_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  pontis_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  pontis_init(arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_106___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_107___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_108___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_109___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_110___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_111___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_112___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_113___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_114___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_115___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_116___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_117___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_118___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_119___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_120___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_121___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_122___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_123___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_124(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_125___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_126___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_127___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_128(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_129(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_130(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_131(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_132___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_133___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_134(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_135(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_136(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_137(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_138___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_139___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_140(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_141(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_142(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_143(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_144(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_145(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_102___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_104___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_106___1(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mute_mutex_of_prodigy192_spec(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_mute_mutex_of_prodigy192_spec(struct mutex *lock ) ;
static void ldv_mutex_unlock_103___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_107___1(struct mutex *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void snd_ice1712_save_gpio_status___1(struct snd_ice1712 *ice )
{
  {
  {
  ldv_mutex_lock_102___1(& ice->gpio_mutex);
  ice->gpio.saved[0] = ice->gpio.direction;
  ice->gpio.saved[1] = ice->gpio.write_mask;
  }
  return;
}
}
__inline static void snd_ice1712_restore_gpio_status___1(struct snd_ice1712 *ice )
{
  {
  {
  (*(ice->gpio.set_dir))(ice, ice->gpio.saved[0]);
  (*(ice->gpio.set_mask))(ice, ice->gpio.saved[1]);
  ice->gpio.direction = ice->gpio.saved[0];
  ice->gpio.write_mask = ice->gpio.saved[1];
  ldv_mutex_unlock_103___1(& ice->gpio_mutex);
  }
  return;
}
}
__inline static void stac9460_put(struct snd_ice1712 *ice , int reg , unsigned char val )
{
  {
  {
  snd_vt1724_write_i2c(ice, 84, (int )((unsigned char )reg), (int )val);
  }
  return;
}
}
__inline static unsigned char stac9460_get(struct snd_ice1712 *ice , int reg )
{
  unsigned char tmp ;
  {
  {
  tmp = snd_vt1724_read_i2c(ice, 84, (int )((unsigned char )reg));
  }
  return (tmp);
}
}
static int stac9460_dac_mute(struct snd_ice1712 *ice , int idx , unsigned char mute )
{
  unsigned char new ;
  unsigned char old ;
  int change ;
  {
  {
  old = stac9460_get(ice, idx);
  new = (unsigned char )((int )((signed char )(~ ((int )mute) << 7)) | ((int )((signed char )old) & 127));
  change = (int )new != (int )old;
  }
  if (change != 0) {
    {
    stac9460_put(ice, idx, (int )new);
    }
  } else {
  }
  return (change);
}
}
static int stac9460_dac_mute_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char val ;
  int idx ;
  unsigned int tmp ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  if (kcontrol->private_value != 0UL) {
    idx = 2;
  } else {
    {
    tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
    idx = (int )(tmp + 3U);
    }
  }
  {
  val = stac9460_get(ice, idx);
  ucontrol->value.integer.value[0] = (long )(~ ((int )val) >> 7) & 1L;
  }
  return (0);
}
}
static int stac9460_dac_mute_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct prodigy192_spec *spec ;
  int idx ;
  int change ;
  unsigned int tmp ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct prodigy192_spec *)ice->spec;
  if (kcontrol->private_value != 0UL) {
    idx = 2;
  } else {
    {
    tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
    idx = (int )(tmp + 3U);
    }
  }
  {
  ldv_mutex_lock_104___1(& spec->mute_mutex);
  change = stac9460_dac_mute(ice, idx, (int )((unsigned char )ucontrol->value.integer.value[0]));
  ldv_mutex_unlock_105___1(& spec->mute_mutex);
  }
  return (change);
}
}
static int stac9460_dac_vol_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 1U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 127L;
  return (0);
}
}
static int stac9460_dac_vol_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int idx ;
  unsigned char vol ;
  unsigned int tmp ;
  unsigned char tmp___0 ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  if (kcontrol->private_value != 0UL) {
    idx = 2;
  } else {
    {
    tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
    idx = (int )(tmp + 3U);
    }
  }
  {
  tmp___0 = stac9460_get(ice, idx);
  vol = (unsigned int )tmp___0 & 127U;
  ucontrol->value.integer.value[0] = (long )(127 - (int )vol);
  }
  return (0);
}
}
static int stac9460_dac_vol_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int idx ;
  unsigned char tmp ;
  unsigned char ovol ;
  unsigned char nvol ;
  int change ;
  unsigned int tmp___0 ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  if (kcontrol->private_value != 0UL) {
    idx = 2;
  } else {
    {
    tmp___0 = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
    idx = (int )(tmp___0 + 3U);
    }
  }
  {
  nvol = (unsigned char )ucontrol->value.integer.value[0];
  tmp = stac9460_get(ice, idx);
  ovol = (unsigned int )(~ ((int )tmp)) & 127U;
  change = (int )ovol != (int )nvol;
  }
  if (change != 0) {
    {
    ovol = (unsigned char )((int )((signed char )(127U - (unsigned int )nvol)) | ((int )((signed char )tmp) & -128));
    stac9460_put(ice, idx, (int )((unsigned char )((int )((signed char )(127U - (unsigned int )nvol)) | ((int )((signed char )tmp) & -128))));
    }
  } else {
  }
  return (change);
}
}
static int stac9460_adc_mute_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char val ;
  int i ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  i = 0;
  goto ldv_35560;
  ldv_35559:
  {
  val = stac9460_get(ice, i + 9);
  ucontrol->value.integer.value[i] = (long )(~ ((int )val) >> 7) & 1L;
  i = i + 1;
  }
  ldv_35560: ;
  if (i <= 1) {
    goto ldv_35559;
  } else {
  }
  return (0);
}
}
static int stac9460_adc_mute_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char new ;
  unsigned char old ;
  int i ;
  int reg ;
  int change ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  i = 0;
  goto ldv_35573;
  ldv_35572:
  {
  reg = i + 9;
  old = stac9460_get(ice, reg);
  new = (unsigned char )((int )((signed char )(~ ucontrol->value.integer.value[i] << 7)) | ((int )((signed char )old) & 127));
  change = (int )new != (int )old;
  }
  if (change != 0) {
    {
    stac9460_put(ice, reg, (int )new);
    }
  } else {
  }
  i = i + 1;
  ldv_35573: ;
  if (i <= 1) {
    goto ldv_35572;
  } else {
  }
  return (change);
}
}
static int stac9460_adc_vol_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 15L;
  return (0);
}
}
static int stac9460_adc_vol_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int i ;
  int reg ;
  unsigned char vol ;
  unsigned char tmp ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  i = 0;
  goto ldv_35588;
  ldv_35587:
  {
  reg = i + 9;
  tmp = stac9460_get(ice, reg);
  vol = (unsigned int )tmp & 15U;
  ucontrol->value.integer.value[i] = (long )(15 - (int )vol);
  i = i + 1;
  }
  ldv_35588: ;
  if (i <= 1) {
    goto ldv_35587;
  } else {
  }
  return (0);
}
}
static int stac9460_adc_vol_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int i ;
  int reg ;
  unsigned char ovol ;
  unsigned char nvol ;
  int change ;
  unsigned char tmp ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  i = 0;
  goto ldv_35601;
  ldv_35600:
  {
  reg = i + 9;
  nvol = (unsigned int )((unsigned char )ucontrol->value.integer.value[i]) & 15U;
  tmp = stac9460_get(ice, reg);
  ovol = 15U - (unsigned int )tmp;
  change = ((int )ovol & 15) != (int )nvol;
  }
  if (change != 0) {
    {
    stac9460_put(ice, reg, (int )((unsigned char )((int )((signed char )(15U - (unsigned int )nvol)) | ((int )((signed char )ovol) & -16))));
    }
  } else {
  }
  i = i + 1;
  ldv_35601: ;
  if (i <= 1) {
    goto ldv_35600;
  } else {
  }
  return (change);
}
}
static int stac9460_mic_sw_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  char const *texts[2U] ;
  int tmp ;
  {
  {
  texts[0] = "Line In";
  texts[1] = "Mic";
  tmp = snd_ctl_enum_info(uinfo, 1U, 2U, (char const * const *)(& texts));
  }
  return (tmp);
}
}
static int stac9460_mic_sw_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char val ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  val = stac9460_get(ice, 13);
  ucontrol->value.enumerated.item[0] = (unsigned int )((int )val >> 7) & 1U;
  }
  return (0);
}
}
static int stac9460_mic_sw_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char new ;
  unsigned char old ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  old = stac9460_get(ice, 13);
  new = (unsigned int )((int )((unsigned char )ucontrol->value.enumerated.item[0]) << 7U) | ((unsigned int )old & 127U);
  change = (int )new != (int )old;
  }
  if (change != 0) {
    {
    stac9460_put(ice, 13, (int )new);
    }
  } else {
  }
  return (change);
}
}
static void stac9460_set_rate_val(struct snd_ice1712 *ice , unsigned int rate )
{
  unsigned char old ;
  unsigned char new ;
  int idx ;
  unsigned char changed[7U] ;
  struct prodigy192_spec *spec ;
  int tmp ;
  {
  spec = (struct prodigy192_spec *)ice->spec;
  if (rate == 0U) {
    return;
  } else
  if (rate <= 48000U) {
    new = 8U;
  } else
  if (rate <= 96000U) {
    new = 17U;
  } else {
    new = 18U;
  }
  {
  old = stac9460_get(ice, 15);
  }
  if ((int )old == (int )new) {
    return;
  } else {
  }
  {
  ldv_mutex_lock_106___1(& spec->mute_mutex);
  idx = 0;
  }
  goto ldv_35632;
  ldv_35631:
  {
  tmp = stac9460_dac_mute(ice, idx + 2, 0);
  changed[idx] = (unsigned char )tmp;
  idx = idx + 1;
  }
  ldv_35632: ;
  if (idx <= 6) {
    goto ldv_35631;
  } else {
  }
  {
  stac9460_put(ice, 15, (int )new);
  __const_udelay(42950UL);
  idx = 0;
  }
  goto ldv_35635;
  ldv_35634: ;
  if ((unsigned int )changed[idx] != 0U) {
    {
    stac9460_dac_mute(ice, idx + 2, 1);
    }
  } else {
  }
  idx = idx + 1;
  ldv_35635: ;
  if (idx <= 6) {
    goto ldv_35634;
  } else {
  }
  {
  ldv_mutex_unlock_107___1(& spec->mute_mutex);
  }
  return;
}
}
static unsigned int const db_scale_dac[4U] = { 1U, 8U, 4294948171U, 75U};
static unsigned int const db_scale_adc[4U] = { 1U, 8U, 0U, 150U};
static struct snd_kcontrol_new stac_controls[7U] = { {2, 0U, 0U, (unsigned char const *)"Master Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & stac9460_dac_mute_get, & stac9460_dac_mute_put, {.p = (unsigned int const *)(& db_scale_dac)},
      1UL},
        {2, 0U, 0U, (unsigned char const *)"Master Playback Volume", 0U, 19U, 0U, & stac9460_dac_vol_info,
      & stac9460_dac_vol_get, & stac9460_dac_vol_put, {.p = (unsigned int const *)(& db_scale_dac)},
      1UL},
        {2, 0U, 0U, (unsigned char const *)"DAC Switch", 0U, 0U, 6U, & snd_ctl_boolean_mono_info,
      & stac9460_dac_mute_get, & stac9460_dac_mute_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"DAC Volume", 0U, 19U, 6U, & stac9460_dac_vol_info,
      & stac9460_dac_vol_get, & stac9460_dac_vol_put, {.p = (unsigned int const *)(& db_scale_dac)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"ADC Capture Switch", 0U, 0U, 1U, & snd_ctl_boolean_stereo_info,
      & stac9460_adc_mute_get, & stac9460_adc_mute_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"ADC Capture Volume", 0U, 19U, 1U, & stac9460_adc_vol_info,
      & stac9460_adc_vol_get, & stac9460_adc_vol_put, {.p = (unsigned int const *)(& db_scale_adc)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"Analog Capture Input", 0U, 0U, 0U, & stac9460_mic_sw_info,
      & stac9460_mic_sw_get, & stac9460_mic_sw_put, {0}, 0UL}};
static void write_data___0(struct snd_ice1712 *ice , unsigned int gpio , unsigned int data ,
                           int idx )
{
  {
  goto ldv_35649;
  ldv_35648:
  {
  gpio = gpio & 4294966783U;
  snd_ice1712_gpio_write(ice, gpio);
  __const_udelay(4295UL);
  }
  if ((data & (unsigned int )(1 << idx)) != 0U) {
    gpio = gpio | 1024U;
  } else {
    gpio = gpio & 4294966271U;
  }
  {
  snd_ice1712_gpio_write(ice, gpio);
  __const_udelay(4295UL);
  gpio = gpio | 512U;
  snd_ice1712_gpio_write(ice, gpio);
  __const_udelay(4295UL);
  idx = idx - 1;
  }
  ldv_35649: ;
  if (idx >= 0) {
    goto ldv_35648;
  } else {
  }
  return;
}
}
static unsigned char read_data___0(struct snd_ice1712 *ice , unsigned int gpio , int idx )
{
  unsigned char data ;
  unsigned int tmp ;
  {
  data = 0U;
  goto ldv_35658;
  ldv_35657:
  {
  gpio = gpio & 4294966783U;
  snd_ice1712_gpio_write(ice, gpio);
  __const_udelay(4295UL);
  tmp = snd_ice1712_gpio_read(ice);
  }
  if ((tmp & 2048U) != 0U) {
    data = (unsigned char )((int )((signed char )data) | (int )((signed char )(1 << idx)));
  } else {
  }
  {
  __const_udelay(4295UL);
  gpio = gpio | 512U;
  snd_ice1712_gpio_write(ice, gpio);
  __const_udelay(4295UL);
  idx = idx - 1;
  }
  ldv_35658: ;
  if (idx >= 0) {
    goto ldv_35657;
  } else {
  }
  return (data);
}
}
static unsigned int prodigy192_4wire_start(struct snd_ice1712 *ice )
{
  unsigned int tmp ;
  {
  {
  snd_ice1712_save_gpio_status___1(ice);
  tmp = snd_ice1712_gpio_read(ice);
  tmp = tmp | 512U;
  tmp = tmp & 4294967039U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  }
  return (tmp);
}
}
static void prodigy192_4wire_finish(struct snd_ice1712 *ice , unsigned int tmp )
{
  {
  {
  tmp = tmp | 256U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  snd_ice1712_restore_gpio_status___1(ice);
  }
  return;
}
}
static void prodigy192_ak4114_write(void *private_data , unsigned char addr , unsigned char data )
{
  struct snd_ice1712 *ice ;
  unsigned int tmp ;
  unsigned int addrdata ;
  {
  {
  ice = (struct snd_ice1712 *)private_data;
  tmp = prodigy192_4wire_start(ice);
  addrdata = (unsigned int )(((int )addr & 31) | 32);
  addrdata = (addrdata << 8) | (unsigned int )data;
  write_data___0(ice, tmp, addrdata, 15);
  prodigy192_4wire_finish(ice, tmp);
  }
  return;
}
}
static unsigned char prodigy192_ak4114_read(void *private_data , unsigned char addr )
{
  struct snd_ice1712 *ice ;
  unsigned int tmp ;
  unsigned char data ;
  {
  {
  ice = (struct snd_ice1712 *)private_data;
  tmp = prodigy192_4wire_start(ice);
  write_data___0(ice, tmp, (unsigned int )addr & 31U, 7);
  data = read_data___0(ice, tmp, 7);
  prodigy192_4wire_finish(ice, tmp);
  }
  return (data);
}
}
static int ak4114_input_sw_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  char const *texts[2U] ;
  int tmp ;
  {
  {
  texts[0] = "Toslink";
  texts[1] = "Coax";
  tmp = snd_ctl_enum_info(uinfo, 1U, 2U, (char const * const *)(& texts));
  }
  return (tmp);
}
}
static int ak4114_input_sw_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char val ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  val = prodigy192_ak4114_read((void *)ice, 3);
  ucontrol->value.enumerated.item[0] = (unsigned int )val & 1U;
  }
  return (0);
}
}
static int ak4114_input_sw_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char new ;
  unsigned char old ;
  unsigned char itemvalue ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  old = prodigy192_ak4114_read((void *)ice, 3);
  itemvalue = ucontrol->value.enumerated.item[0] != 0U ? 255U : 0U;
  new = (unsigned char )(((int )((signed char )itemvalue) & 1) | ((int )((signed char )old) & -2));
  change = (int )new != (int )old;
  }
  if (change != 0) {
    {
    prodigy192_ak4114_write((void *)ice, 3, (int )new);
    }
  } else {
  }
  return (change);
}
}
static struct snd_kcontrol_new ak4114_controls[1U] = { {2, 0U, 0U, (unsigned char const *)"MIODIO IEC958 Capture Input", 0U, 0U, 0U,
      & ak4114_input_sw_info, & ak4114_input_sw_get, & ak4114_input_sw_put, {0}, 0UL}};
static int prodigy192_ak4114_init(struct snd_ice1712 *ice )
{
  unsigned char ak4114_init_vals[6U] ;
  unsigned char ak4114_init_txcsb[5U] ;
  struct prodigy192_spec *spec ;
  int err ;
  {
  {
  ak4114_init_vals[0] = 15U;
  ak4114_init_vals[1] = 114U;
  ak4114_init_vals[2] = 128U;
  ak4114_init_vals[3] = 72U;
  ak4114_init_vals[4] = 0U;
  ak4114_init_vals[5] = 0U;
  ak4114_init_txcsb[0] = 65U;
  ak4114_init_txcsb[1] = 2U;
  ak4114_init_txcsb[2] = 44U;
  ak4114_init_txcsb[3] = 0U;
  ak4114_init_txcsb[4] = 0U;
  spec = (struct prodigy192_spec *)ice->spec;
  err = snd_ak4114_create(ice->card, & prodigy192_ak4114_read, & prodigy192_ak4114_write,
                          (unsigned char const *)(& ak4114_init_vals), (unsigned char const *)(& ak4114_init_txcsb),
                          (void *)ice, & spec->ak4114);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  (spec->ak4114)->check_flags = 2U;
  return (0);
}
}
static void stac9460_proc_regs_read(struct snd_info_entry *entry , struct snd_info_buffer *buffer )
{
  struct snd_ice1712 *ice ;
  int reg ;
  int val ;
  unsigned char tmp ;
  {
  ice = (struct snd_ice1712 *)entry->private_data;
  reg = 0;
  goto ldv_35719;
  ldv_35718:
  {
  tmp = stac9460_get(ice, reg);
  val = (int )tmp;
  snd_iprintf(buffer, "0x%02x = 0x%02x\n", reg, val);
  reg = reg + 1;
  }
  ldv_35719: ;
  if (reg <= 21) {
    goto ldv_35718;
  } else {
  }
  return;
}
}
static void stac9460_proc_init(struct snd_ice1712 *ice )
{
  struct snd_info_entry *entry ;
  int tmp ;
  {
  {
  tmp = snd_card_proc_new(ice->card, "stac9460_codec", & entry);
  }
  if (tmp == 0) {
    {
    snd_info_set_text_ops(entry, (void *)ice, & stac9460_proc_regs_read);
    }
  } else {
  }
  return;
}
}
static int prodigy192_add_controls(struct snd_ice1712 *ice )
{
  struct prodigy192_spec *spec ;
  unsigned int i ;
  int err ;
  struct snd_kcontrol *tmp ;
  struct snd_kcontrol *tmp___0 ;
  {
  spec = (struct prodigy192_spec *)ice->spec;
  i = 0U;
  goto ldv_35734;
  ldv_35733:
  {
  tmp = snd_ctl_new1((struct snd_kcontrol_new const *)(& stac_controls) + (unsigned long )i,
                     (void *)ice);
  err = snd_ctl_add(ice->card, tmp);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_35734: ;
  if (i <= 6U) {
    goto ldv_35733;
  } else {
  }
  if ((unsigned long )spec->ak4114 != (unsigned long )((struct ak4114 *)0)) {
    i = 0U;
    goto ldv_35739;
    ldv_35738:
    {
    tmp___0 = snd_ctl_new1((struct snd_kcontrol_new const *)(& ak4114_controls) + (unsigned long )i,
                           (void *)ice);
    err = snd_ctl_add(ice->card, tmp___0);
    }
    if (err < 0) {
      return (err);
    } else {
    }
    i = i + 1U;
    ldv_35739: ;
    if (i == 0U) {
      goto ldv_35738;
    } else {
    }
    {
    err = snd_ak4114_build(spec->ak4114, (struct snd_pcm_substream *)0, (ice->pcm)->streams[1].substream);
    }
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  {
  stac9460_proc_init(ice);
  }
  return (0);
}
}
static int prodigy192_miodio_exists(struct snd_ice1712 *ice )
{
  unsigned char orig_value ;
  unsigned char test_data ;
  unsigned char addr ;
  int exists ;
  unsigned char tmp ;
  {
  {
  test_data = 209U;
  addr = 4U;
  exists = 0;
  orig_value = prodigy192_ak4114_read((void *)ice, (int )addr);
  prodigy192_ak4114_write((void *)ice, (int )addr, (int )test_data);
  tmp = prodigy192_ak4114_read((void *)ice, (int )addr);
  }
  if ((unsigned int )tmp == 209U) {
    {
    prodigy192_ak4114_write((void *)ice, (int )addr, (int )orig_value);
    exists = 1;
    }
  } else {
  }
  return (exists);
}
}
static int prodigy192_init(struct snd_ice1712 *ice )
{
  unsigned short stac_inits_prodigy[5U] ;
  unsigned short const *p ;
  int err ;
  struct prodigy192_spec *spec ;
  void *tmp ;
  struct lock_class_key __key ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  {
  stac_inits_prodigy[0] = 0U;
  stac_inits_prodigy[1] = 0U;
  stac_inits_prodigy[2] = 15U;
  stac_inits_prodigy[3] = 17U;
  stac_inits_prodigy[4] = 65535U;
  err = 0;
  ice->num_total_dacs = 6U;
  ice->num_total_adcs = 2U;
  ice->vt1720 = 0U;
  tmp = kzalloc(168UL, 208U);
  spec = (struct prodigy192_spec *)tmp;
  }
  if ((unsigned long )spec == (unsigned long )((struct prodigy192_spec *)0)) {
    return (-12);
  } else {
  }
  {
  ice->spec = (void *)spec;
  __mutex_init(& spec->mute_mutex, "&spec->mute_mutex", & __key);
  p = (unsigned short const *)(& stac_inits_prodigy);
  }
  goto ldv_35757;
  ldv_35756:
  {
  stac9460_put(ice, (int )*p, (int )((unsigned char )*(p + 1UL)));
  p = p + 2UL;
  }
  ldv_35757: ;
  if ((unsigned int )((unsigned short )*p) != 65535U) {
    goto ldv_35756;
  } else {
  }
  {
  ice->gpio.set_pro_rate = & stac9460_set_rate_val;
  tmp___2 = prodigy192_miodio_exists(ice);
  }
  if (tmp___2 != 0) {
    {
    err = prodigy192_ak4114_init(ice);
    descriptor.modname = "snd_ice1724";
    descriptor.function = "prodigy192_init";
    descriptor.filename = "sound/pci/ice1712/prodigy192.c";
    descriptor.format = "AK4114 initialized with status %d\n";
    descriptor.lineno = 758U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(ice->card)->dev, "AK4114 initialized with status %d\n",
                        err);
      }
    } else {
    }
  } else {
    {
    descriptor___0.modname = "snd_ice1724";
    descriptor___0.function = "prodigy192_init";
    descriptor___0.filename = "sound/pci/ice1712/prodigy192.c";
    descriptor___0.format = "AK4114 not found\n";
    descriptor___0.lineno = 760U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(ice->card)->dev,
                        "AK4114 not found\n");
      }
    } else {
    }
  }
  return (err);
}
}
static unsigned char prodigy71_eeprom[13U] =
  { 106U, 128U, 248U, 195U,
        255U, 247U, 191U, 0U,
        0U, 0U, 0U, 0U,
        16U};
struct snd_ice1712_card_info snd_vt1724_prodigy192_cards[2U] = { {877220677U, "Audiotrak Prodigy 192", "prodigy192", 0, & prodigy192_init, 0,
      & prodigy192_add_controls, (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& prodigy71_eeprom)}};
void ldv_dummy_resourceless_instance_callback_21_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  prodigy192_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  prodigy192_init(arg1);
  }
  return;
}
}
static void ldv_mutex_lock_102___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_103___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mute_mutex_of_prodigy192_spec(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mute_mutex_of_prodigy192_spec(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_106___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mute_mutex_of_prodigy192_spec(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_107___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mute_mutex_of_prodigy192_spec(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_106___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_108___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_110___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_112___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_114___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_116___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_118___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_120___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_122___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_124___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_126___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_128___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_130___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_132___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_134___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_136___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_107___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_109___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_111___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_113___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_115___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_117___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_119___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_121___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_123___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_125___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_127___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_129___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_131___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_133___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_135___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_137___0(struct mutex *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
static unsigned short wm_get___1(struct snd_ice1712 *ice , int reg )
{
  {
  reg = reg << 1;
  return ((unsigned short )((int )((short )((int )(ice->akm)->images[reg] << 8)) | (int )((short )(ice->akm)->images[reg + 1])));
}
}
static void wm_put_nocache___1(struct snd_ice1712 *ice , int reg , unsigned short val )
{
  unsigned short cval ;
  {
  {
  cval = (unsigned short )((int )((short )(reg << 9)) | (int )((short )val));
  snd_vt1724_write_i2c(ice, 52, (int )((unsigned char )((int )cval >> 8)), (int )((unsigned char )cval));
  }
  return;
}
}
static void wm_put___2(struct snd_ice1712 *ice , int reg , unsigned short val )
{
  {
  {
  wm_put_nocache___1(ice, reg, (int )val);
  reg = reg << 1;
  (ice->akm)->images[reg] = (unsigned char )((int )val >> 8);
  (ice->akm)->images[reg + 1] = (unsigned char )val;
  }
  return;
}
}
static void set_gpio_bit___0(struct snd_ice1712 *ice , unsigned int bit , int val )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  {
  tmp___0 = snd_ice1712_gpio_read(ice);
  tmp = tmp___0;
  }
  if (val != 0) {
    tmp = tmp | bit;
  } else {
    tmp = tmp & ~ bit;
  }
  {
  snd_ice1712_gpio_write(ice, tmp);
  }
  return;
}
}
static void wm8766_spi_send_word(struct snd_ice1712 *ice , unsigned int data )
{
  int i ;
  {
  i = 0;
  goto ldv_35646;
  ldv_35645:
  {
  set_gpio_bit___0(ice, 131072U, 0);
  __const_udelay(4295UL);
  set_gpio_bit___0(ice, 65536U, (int )data & 32768);
  __const_udelay(4295UL);
  set_gpio_bit___0(ice, 131072U, 1);
  __const_udelay(4295UL);
  data = data << 1;
  i = i + 1;
  }
  ldv_35646: ;
  if (i <= 15) {
    goto ldv_35645;
  } else {
  }
  return;
}
}
static void wm8766_spi_write(struct snd_ice1712 *ice , unsigned int reg , unsigned int data )
{
  unsigned int block ;
  {
  {
  snd_ice1712_gpio_set_dir(ice, 458752U);
  snd_ice1712_gpio_set_mask(ice, 4294508543U);
  set_gpio_bit___0(ice, 262144U, 0);
  block = (reg << 9) | (data & 511U);
  wm8766_spi_send_word(ice, block);
  set_gpio_bit___0(ice, 262144U, 1);
  __const_udelay(4295UL);
  snd_ice1712_gpio_set_mask(ice, ice->gpio.write_mask);
  snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
  }
  return;
}
}
static void ak4396_send_word(struct snd_ice1712 *ice , unsigned int data )
{
  int i ;
  {
  i = 0;
  goto ldv_35660;
  ldv_35659:
  {
  set_gpio_bit___0(ice, 512U, 0);
  __const_udelay(4295UL);
  set_gpio_bit___0(ice, 1024U, (int )data & 32768);
  __const_udelay(4295UL);
  set_gpio_bit___0(ice, 512U, 1);
  __const_udelay(4295UL);
  data = data << 1;
  i = i + 1;
  }
  ldv_35660: ;
  if (i <= 15) {
    goto ldv_35659;
  } else {
  }
  return;
}
}
static void ak4396_write(struct snd_ice1712 *ice , unsigned int reg , unsigned int data )
{
  unsigned int block ;
  {
  {
  snd_ice1712_gpio_set_dir(ice, 1792U);
  snd_ice1712_gpio_set_mask(ice, 4294965503U);
  set_gpio_bit___0(ice, 256U, 0);
  block = (((reg & 31U) << 8) | (data & 255U)) | 8192U;
  ak4396_send_word(ice, block);
  set_gpio_bit___0(ice, 256U, 1);
  __const_udelay(4295UL);
  snd_ice1712_gpio_set_mask(ice, ice->gpio.write_mask);
  snd_ice1712_gpio_set_dir(ice, ice->gpio.direction);
  }
  return;
}
}
static int ak4396_dac_vol_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 255L;
  return (0);
}
}
static int ak4396_dac_vol_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct prodigy_hifi_spec *spec ;
  int i ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct prodigy_hifi_spec *)ice->spec;
  i = 0;
  goto ldv_35680;
  ldv_35679:
  ucontrol->value.integer.value[i] = (long )spec->vol[i];
  i = i + 1;
  ldv_35680: ;
  if (i <= 1) {
    goto ldv_35679;
  } else {
  }
  return (0);
}
}
static int ak4396_dac_vol_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct prodigy_hifi_spec *spec ;
  int i ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct prodigy_hifi_spec *)ice->spec;
  change = 0;
  ldv_mutex_lock_104___2(& ice->gpio_mutex);
  i = 0;
  }
  goto ldv_35691;
  ldv_35690: ;
  if (ucontrol->value.integer.value[i] != (long )spec->vol[i]) {
    {
    spec->vol[i] = (unsigned short )ucontrol->value.integer.value[i];
    ak4396_write(ice, (unsigned int )(i + 3), (unsigned int )spec->vol[i] & 255U);
    change = 1;
    }
  } else {
  }
  i = i + 1;
  ldv_35691: ;
  if (i <= 1) {
    goto ldv_35690;
  } else {
  }
  {
  ldv_mutex_unlock_105___2(& ice->gpio_mutex);
  }
  return (change);
}
}
static unsigned int const db_scale_wm_dac___0[4U] = { 1U, 8U, 4294954596U, 65636U};
static unsigned int const ak4396_db_scale[4U] = { 2U, 8U, 4284967297U, 0U};
static struct snd_kcontrol_new prodigy_hd2_controls[1U] = { {2, 0U, 0U, (unsigned char const *)"Front Playback Volume", 0U, 19U, 0U, & ak4396_dac_vol_info,
      & ak4396_dac_vol_get, & ak4396_dac_vol_put, {.p = (unsigned int const *)(& ak4396_db_scale)},
      0UL}};
static void wm_set_vol___0(struct snd_ice1712 *ice , unsigned int index___0 , unsigned short vol ,
                           unsigned short master )
{
  unsigned char nvol ;
  {
  if ((int )((short )master) < 0 || (int )((short )vol) < 0) {
    nvol = 0U;
  } else {
    nvol = (unsigned char )((((int )vol & -32769) * ((int )master & -32769)) / 128);
    nvol = (unsigned int )nvol != 0U ? (unsigned int )nvol + 127U : 0U;
  }
  {
  wm_put___2(ice, (int )index___0, (int )nvol);
  wm_put_nocache___1(ice, (int )index___0, (int )((unsigned int )((unsigned short )nvol) | 256U));
  }
  return;
}
}
static void wm8766_set_vol(struct snd_ice1712 *ice , unsigned int index___0 , unsigned short vol ,
                           unsigned short master )
{
  unsigned char nvol ;
  {
  if ((int )((short )master) < 0 || (int )((short )vol) < 0) {
    nvol = 0U;
  } else {
    nvol = (unsigned char )((((int )vol & -32769) * ((int )master & -32769)) / 128);
    nvol = (unsigned int )nvol != 0U ? (unsigned int )nvol + 127U : 0U;
  }
  {
  wm8766_spi_write(ice, index___0, (unsigned int )((int )nvol | 256));
  }
  return;
}
}
static int wm_dac_vol_info___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 128L;
  return (0);
}
}
static int wm_dac_vol_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct prodigy_hifi_spec *spec ;
  int i ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct prodigy_hifi_spec *)ice->spec;
  i = 0;
  goto ldv_35725;
  ldv_35724:
  ucontrol->value.integer.value[i] = (long )((int )spec->vol[i + 2] & -32769);
  i = i + 1;
  ldv_35725: ;
  if (i <= 1) {
    goto ldv_35724;
  } else {
  }
  return (0);
}
}
static int wm_dac_vol_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct prodigy_hifi_spec *spec ;
  int i ;
  int idx ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct prodigy_hifi_spec *)ice->spec;
  change = 0;
  ldv_mutex_lock_106___2(& ice->gpio_mutex);
  i = 0;
  }
  goto ldv_35737;
  ldv_35736: ;
  if (ucontrol->value.integer.value[i] != (long )spec->vol[i + 2]) {
    {
    idx = i + 3;
    spec->vol[i + 2] = (unsigned int )spec->vol[i + 2] & 32768U;
    spec->vol[i + 2] = (unsigned short )((int )((short )spec->vol[i + 2]) | (int )((short )ucontrol->value.integer.value[i]));
    wm_set_vol___0(ice, (unsigned int )idx, (int )spec->vol[i + 2], (int )spec->master[i]);
    change = 1;
    }
  } else {
  }
  i = i + 1;
  ldv_35737: ;
  if (i <= 1) {
    goto ldv_35736;
  } else {
  }
  {
  ldv_mutex_unlock_107___2(& ice->gpio_mutex);
  }
  return (change);
}
}
static int wm8766_vol_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  int voices ;
  {
  voices = (int )(kcontrol->private_value >> 8);
  uinfo->type = 2;
  uinfo->count = (unsigned int )voices;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 128L;
  return (0);
}
}
static int wm8766_vol_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct prodigy_hifi_spec *spec ;
  int i ;
  int ofs ;
  int voices ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct prodigy_hifi_spec *)ice->spec;
  voices = (int )(kcontrol->private_value >> 8);
  ofs = (int )kcontrol->private_value & 255;
  i = 0;
  goto ldv_35754;
  ldv_35753:
  ucontrol->value.integer.value[i] = (long )spec->vol[ofs + i];
  i = i + 1;
  ldv_35754: ;
  if (i < voices) {
    goto ldv_35753;
  } else {
  }
  return (0);
}
}
static int wm8766_vol_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct prodigy_hifi_spec *spec ;
  int i ;
  int idx ;
  int ofs ;
  int voices ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct prodigy_hifi_spec *)ice->spec;
  change = 0;
  voices = (int )(kcontrol->private_value >> 8);
  ofs = (int )kcontrol->private_value & 255;
  ldv_mutex_lock_108___1(& ice->gpio_mutex);
  i = 0;
  }
  goto ldv_35768;
  ldv_35767: ;
  if (ucontrol->value.integer.value[i] != (long )spec->vol[ofs + i]) {
    {
    idx = ofs + i;
    spec->vol[ofs + i] = (unsigned int )spec->vol[ofs + i] & 32768U;
    spec->vol[ofs + i] = (unsigned short )((int )((short )spec->vol[ofs + i]) | (int )((short )ucontrol->value.integer.value[i]));
    wm8766_set_vol(ice, (unsigned int )idx, (int )spec->vol[ofs + i], (int )spec->master[i]);
    change = 1;
    }
  } else {
  }
  i = i + 1;
  ldv_35768: ;
  if (i < voices) {
    goto ldv_35767;
  } else {
  }
  {
  ldv_mutex_unlock_109___1(& ice->gpio_mutex);
  }
  return (change);
}
}
static int wm_master_vol_info___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 128L;
  return (0);
}
}
static int wm_master_vol_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct prodigy_hifi_spec *spec ;
  int i ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct prodigy_hifi_spec *)ice->spec;
  i = 0;
  goto ldv_35782;
  ldv_35781:
  ucontrol->value.integer.value[i] = (long )spec->master[i];
  i = i + 1;
  ldv_35782: ;
  if (i <= 1) {
    goto ldv_35781;
  } else {
  }
  return (0);
}
}
static int wm_master_vol_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct prodigy_hifi_spec *spec ;
  int ch ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct prodigy_hifi_spec *)ice->spec;
  change = 0;
  ldv_mutex_lock_110___1(& ice->gpio_mutex);
  ch = 0;
  }
  goto ldv_35793;
  ldv_35792: ;
  if (ucontrol->value.integer.value[ch] != (long )spec->master[ch]) {
    {
    spec->master[ch] = (unsigned short )ucontrol->value.integer.value[ch];
    wm_set_vol___0(ice, (unsigned int )(ch + 3), (int )spec->vol[ch + 2], (int )spec->master[ch]);
    wm8766_set_vol(ice, (unsigned int )ch, (int )spec->vol[ch], (int )spec->master[ch]);
    wm8766_set_vol(ice, (unsigned int )(ch + 4), (int )spec->vol[ch + 4], (int )spec->master[ch]);
    wm8766_set_vol(ice, (unsigned int )(ch + 6), (int )spec->vol[ch + 6], (int )spec->master[ch]);
    change = 1;
    }
  } else {
  }
  ch = ch + 1;
  ldv_35793: ;
  if (ch <= 1) {
    goto ldv_35792;
  } else {
  }
  {
  ldv_mutex_unlock_111___1(& ice->gpio_mutex);
  }
  return (change);
}
}
static int wm_adc_mux_enum_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  char const *texts[32U] ;
  int tmp ;
  {
  {
  texts[0] = "NULL";
  texts[1] = "AIN1";
  texts[2] = "AIN2";
  texts[3] = "AIN1+AIN2";
  texts[4] = "AIN3";
  texts[5] = "AIN1+AIN3";
  texts[6] = "AIN2+AIN3";
  texts[7] = "AIN1+AIN2+AIN3";
  texts[8] = "AIN4";
  texts[9] = "AIN1+AIN4";
  texts[10] = "AIN2+AIN4";
  texts[11] = "AIN1+AIN2+AIN4";
  texts[12] = "AIN3+AIN4";
  texts[13] = "AIN1+AIN3+AIN4";
  texts[14] = "AIN2+AIN3+AIN4";
  texts[15] = "AIN1+AIN2+AIN3+AIN4";
  texts[16] = "AIN5";
  texts[17] = "AIN1+AIN5";
  texts[18] = "AIN2+AIN5";
  texts[19] = "AIN1+AIN2+AIN5";
  texts[20] = "AIN3+AIN5";
  texts[21] = "AIN1+AIN3+AIN5";
  texts[22] = "AIN2+AIN3+AIN5";
  texts[23] = "AIN1+AIN2+AIN3+AIN5";
  texts[24] = "AIN4+AIN5";
  texts[25] = "AIN1+AIN4+AIN5";
  texts[26] = "AIN2+AIN4+AIN5";
  texts[27] = "AIN1+AIN2+AIN4+AIN5";
  texts[28] = "AIN3+AIN4+AIN5";
  texts[29] = "AIN1+AIN3+AIN4+AIN5";
  texts[30] = "AIN2+AIN3+AIN4+AIN5";
  texts[31] = "AIN1+AIN2+AIN3+AIN4+AIN5";
  tmp = snd_ctl_enum_info(uinfo, 1U, 32U, (char const * const *)(& texts));
  }
  return (tmp);
}
}
static int wm_adc_mux_enum_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_112___1(& ice->gpio_mutex);
  tmp = wm_get___1(ice, 21);
  ucontrol->value.integer.value[0] = (long )tmp & 31L;
  ldv_mutex_unlock_113___1(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_adc_mux_enum_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short oval ;
  unsigned short nval ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  ldv_mutex_lock_114___1(& ice->gpio_mutex);
  oval = wm_get___1(ice, 21);
  nval = (unsigned short )(((int )((short )oval) & 224) | (int )((short )ucontrol->value.integer.value[0]));
  }
  if ((int )nval != (int )oval) {
    {
    wm_put___2(ice, 21, (int )nval);
    change = 1;
    }
  } else {
  }
  {
  ldv_mutex_unlock_115___1(& ice->gpio_mutex);
  }
  return (change);
}
}
static int wm_adc_vol_info___1(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 128L;
  return (0);
}
}
static int wm_adc_vol_get___1(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short val ;
  int i ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_116___1(& ice->gpio_mutex);
  i = 0;
  }
  goto ldv_35825;
  ldv_35824:
  {
  tmp = wm_get___1(ice, i + 14);
  val = (unsigned int )tmp & 255U;
  val = (unsigned int )val > 79U ? (unsigned int )val + 65457U : 0U;
  ucontrol->value.integer.value[i] = (long )val;
  i = i + 1;
  }
  ldv_35825: ;
  if (i <= 1) {
    goto ldv_35824;
  } else {
  }
  {
  ldv_mutex_unlock_117___1(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_adc_vol_put___1(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short ovol ;
  unsigned short nvol ;
  int i ;
  int idx ;
  int change ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  ldv_mutex_lock_118___1(& ice->gpio_mutex);
  i = 0;
  }
  goto ldv_35838;
  ldv_35837:
  {
  nvol = (unsigned short )ucontrol->value.integer.value[i];
  nvol = (unsigned int )nvol != 0U ? (unsigned int )nvol + 79U : 0U;
  idx = i + 14;
  tmp = wm_get___1(ice, idx);
  ovol = (unsigned int )tmp & 255U;
  }
  if ((int )ovol != (int )nvol) {
    {
    wm_put___2(ice, idx, (int )nvol);
    change = 1;
    }
  } else {
  }
  i = i + 1;
  ldv_35838: ;
  if (i <= 1) {
    goto ldv_35837;
  } else {
  }
  {
  ldv_mutex_unlock_119___1(& ice->gpio_mutex);
  }
  return (change);
}
}
static int wm_adc_mux_get___1(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int bit ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  bit = (int )kcontrol->private_value;
  ldv_mutex_lock_120___1(& ice->gpio_mutex);
  tmp = wm_get___1(ice, 21);
  ucontrol->value.integer.value[0] = (long )((int )tmp >> bit) & 1L;
  ldv_mutex_unlock_121___1(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_adc_mux_put___1(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int bit ;
  unsigned short oval ;
  unsigned short nval ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  bit = (int )kcontrol->private_value;
  ldv_mutex_lock_122___1(& ice->gpio_mutex);
  oval = wm_get___1(ice, 21);
  nval = oval;
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    nval = (unsigned short )((int )((short )nval) | (int )((short )(1 << bit)));
  } else {
    nval = (unsigned short )((int )((short )nval) & ~ ((int )((short )(1 << bit))));
  }
  change = (int )nval != (int )oval;
  if (change != 0) {
    {
    wm_put___2(ice, 21, (int )nval);
    }
  } else {
  }
  {
  ldv_mutex_unlock_123___1(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_bypass_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_124___0(& ice->gpio_mutex);
  tmp = wm_get___1(ice, 22);
  ucontrol->value.integer.value[0] = ((int )tmp & 4) != 0;
  ldv_mutex_unlock_125___1(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_bypass_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short val ;
  unsigned short oval ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  ldv_mutex_lock_126___1(& ice->gpio_mutex);
  oval = wm_get___1(ice, 22);
  val = oval;
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    val = (unsigned int )val | 4U;
  } else {
    val = (unsigned int )val & 65531U;
  }
  if ((int )val != (int )oval) {
    {
    wm_put___2(ice, 22, (int )val);
    change = 1;
    }
  } else {
  }
  {
  ldv_mutex_unlock_127___1(& ice->gpio_mutex);
  }
  return (change);
}
}
static int wm_chswap_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_128___0(& ice->gpio_mutex);
  tmp = wm_get___1(ice, 7);
  ucontrol->value.integer.value[0] = ((int )tmp & 240) != 144;
  ldv_mutex_unlock_129___0(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_chswap_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short val ;
  unsigned short oval ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  ldv_mutex_lock_130___0(& ice->gpio_mutex);
  oval = wm_get___1(ice, 7);
  val = (unsigned int )oval & 15U;
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    val = (unsigned int )val | 96U;
  } else {
    val = (unsigned int )val | 144U;
  }
  if ((int )val != (int )oval) {
    {
    wm_put___2(ice, 7, (int )val);
    wm_put_nocache___1(ice, 7, (int )val);
    change = 1;
    }
  } else {
  }
  {
  ldv_mutex_unlock_131___0(& ice->gpio_mutex);
  }
  return (change);
}
}
static struct snd_kcontrol_new prodigy_hifi_controls[12U] =
  { {2, 0U, 0U, (unsigned char const *)"Master Playback Volume", 0U, 19U, 0U, & wm_master_vol_info___0,
      & wm_master_vol_get___0, & wm_master_vol_put___0, {.p = (unsigned int const *)(& db_scale_wm_dac___0)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"Front Playback Volume", 0U, 19U, 0U, & wm_dac_vol_info___0,
      & wm_dac_vol_get___0, & wm_dac_vol_put___0, {.p = (unsigned int const *)(& db_scale_wm_dac___0)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"Rear Playback Volume", 0U, 19U, 0U, & wm8766_vol_info,
      & wm8766_vol_get, & wm8766_vol_put, {.p = (unsigned int const *)(& db_scale_wm_dac___0)},
      512UL},
        {2, 0U, 0U, (unsigned char const *)"Center Playback Volume", 0U, 19U, 0U, & wm8766_vol_info,
      & wm8766_vol_get, & wm8766_vol_put, {.p = (unsigned int const *)(& db_scale_wm_dac___0)},
      260UL},
        {2, 0U, 0U, (unsigned char const *)"LFE Playback Volume", 0U, 19U, 0U, & wm8766_vol_info,
      & wm8766_vol_get, & wm8766_vol_put, {.p = (unsigned int const *)(& db_scale_wm_dac___0)},
      261UL},
        {2, 0U, 0U, (unsigned char const *)"Side Playback Volume", 0U, 19U, 0U, & wm8766_vol_info,
      & wm8766_vol_get, & wm8766_vol_put, {.p = (unsigned int const *)(& db_scale_wm_dac___0)},
      518UL},
        {2, 0U, 0U, (unsigned char const *)"Capture Volume", 0U, 19U, 0U, & wm_adc_vol_info___1,
      & wm_adc_vol_get___1, & wm_adc_vol_put___1, {.p = (unsigned int const *)(& db_scale_wm_dac___0)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"CD Capture Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & wm_adc_mux_get___1, & wm_adc_mux_put___1, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"Line Capture Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & wm_adc_mux_get___1, & wm_adc_mux_put___1, {0}, 1UL},
        {2, 0U, 0U, (unsigned char const *)"Analog Bypass Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & wm_bypass_get___0, & wm_bypass_put___0, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"Swap Output Channels", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & wm_chswap_get___0, & wm_chswap_put___0, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"Analog Capture Source", 0U, 0U, 0U, & wm_adc_mux_enum_info,
      & wm_adc_mux_enum_get, & wm_adc_mux_enum_put, {0}, 0UL}};
static void wm_proc_regs_write___0(struct snd_info_entry *entry , struct snd_info_buffer *buffer )
{
  struct snd_ice1712 *ice ;
  char line[64U] ;
  unsigned int reg ;
  unsigned int val ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)entry->private_data;
  ldv_mutex_lock_132___1(& ice->gpio_mutex);
  }
  goto ldv_35890;
  ldv_35891:
  {
  tmp = sscanf((char const *)(& line), "%x %x", & reg, & val);
  }
  if (tmp != 2) {
    goto ldv_35890;
  } else {
  }
  if (reg <= 23U && val <= 65535U) {
    {
    wm_put___2(ice, (int )reg, (int )((unsigned short )val));
    }
  } else {
  }
  ldv_35890:
  {
  tmp___0 = snd_info_get_line(buffer, (char *)(& line), 64);
  }
  if (tmp___0 == 0) {
    goto ldv_35891;
  } else {
  }
  {
  ldv_mutex_unlock_133___1(& ice->gpio_mutex);
  }
  return;
}
}
static void wm_proc_regs_read___0(struct snd_info_entry *entry , struct snd_info_buffer *buffer )
{
  struct snd_ice1712 *ice ;
  int reg ;
  int val ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)entry->private_data;
  ldv_mutex_lock_134___0(& ice->gpio_mutex);
  reg = 0;
  }
  goto ldv_35901;
  ldv_35900:
  {
  tmp = wm_get___1(ice, reg);
  val = (int )tmp;
  snd_iprintf(buffer, "%02x = %04x\n", reg, val);
  reg = reg + 1;
  }
  ldv_35901: ;
  if (reg <= 23) {
    goto ldv_35900;
  } else {
  }
  {
  ldv_mutex_unlock_135___0(& ice->gpio_mutex);
  }
  return;
}
}
static void wm_proc_init___0(struct snd_ice1712 *ice )
{
  struct snd_info_entry *entry ;
  int tmp ;
  {
  {
  tmp = snd_card_proc_new(ice->card, "wm_codec", & entry);
  }
  if (tmp == 0) {
    {
    snd_info_set_text_ops(entry, (void *)ice, & wm_proc_regs_read___0);
    entry->mode = (umode_t )((unsigned int )entry->mode | 128U);
    entry->c.text.write = & wm_proc_regs_write___0;
    }
  } else {
  }
  return;
}
}
static int prodigy_hifi_add_controls(struct snd_ice1712 *ice )
{
  unsigned int i ;
  int err ;
  struct snd_kcontrol *tmp ;
  {
  i = 0U;
  goto ldv_35915;
  ldv_35914:
  {
  tmp = snd_ctl_new1((struct snd_kcontrol_new const *)(& prodigy_hifi_controls) + (unsigned long )i,
                     (void *)ice);
  err = snd_ctl_add(ice->card, tmp);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_35915: ;
  if (i <= 11U) {
    goto ldv_35914;
  } else {
  }
  {
  wm_proc_init___0(ice);
  }
  return (0);
}
}
static int prodigy_hd2_add_controls(struct snd_ice1712 *ice )
{
  unsigned int i ;
  int err ;
  struct snd_kcontrol *tmp ;
  {
  i = 0U;
  goto ldv_35925;
  ldv_35924:
  {
  tmp = snd_ctl_new1((struct snd_kcontrol_new const *)(& prodigy_hd2_controls) + (unsigned long )i,
                     (void *)ice);
  err = snd_ctl_add(ice->card, tmp);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_35925: ;
  if (i == 0U) {
    goto ldv_35924;
  } else {
  }
  {
  wm_proc_init___0(ice);
  }
  return (0);
}
}
static int prodigy_hifi_init(struct snd_ice1712 *ice )
{
  unsigned short wm_inits[10U] ;
  unsigned short wm_inits2[42U] ;
  unsigned short wm8766_inits[26U] ;
  struct prodigy_hifi_spec *spec ;
  unsigned int i ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  wm_inits[0] = 21U;
  wm_inits[1] = 3U;
  wm_inits[2] = 8U;
  wm_inits[3] = 1U;
  wm_inits[4] = 7U;
  wm_inits[5] = 0U;
  wm_inits[6] = 13U;
  wm_inits[7] = 8U;
  wm_inits[8] = 23U;
  wm_inits[9] = 0U;
  wm_inits2[0] = 12U;
  wm_inits2[1] = 34U;
  wm_inits2[2] = 10U;
  wm_inits2[3] = 34U;
  wm_inits2[4] = 11U;
  wm_inits2[5] = 34U;
  wm_inits2[6] = 7U;
  wm_inits2[7] = 144U;
  wm_inits2[8] = 22U;
  wm_inits2[9] = 1U;
  wm_inits2[10] = 0U;
  wm_inits2[11] = 377U;
  wm_inits2[12] = 1U;
  wm_inits2[13] = 377U;
  wm_inits2[14] = 3U;
  wm_inits2[15] = 0U;
  wm_inits2[16] = 3U;
  wm_inits2[17] = 256U;
  wm_inits2[18] = 4U;
  wm_inits2[19] = 0U;
  wm_inits2[20] = 4U;
  wm_inits2[21] = 256U;
  wm_inits2[22] = 6U;
  wm_inits2[23] = 0U;
  wm_inits2[24] = 9U;
  wm_inits2[25] = 0U;
  wm_inits2[26] = 14U;
  wm_inits2[27] = 0U;
  wm_inits2[28] = 15U;
  wm_inits2[29] = 0U;
  wm_inits2[30] = 16U;
  wm_inits2[31] = 123U;
  wm_inits2[32] = 17U;
  wm_inits2[33] = 0U;
  wm_inits2[34] = 18U;
  wm_inits2[35] = 0U;
  wm_inits2[36] = 19U;
  wm_inits2[37] = 0U;
  wm_inits2[38] = 8U;
  wm_inits2[39] = 0U;
  wm_inits2[40] = 21U;
  wm_inits2[41] = 3U;
  wm8766_inits[0] = 31U;
  wm8766_inits[1] = 0U;
  wm8766_inits[2] = 2U;
  wm8766_inits[3] = 288U;
  wm8766_inits[4] = 3U;
  wm8766_inits[5] = 34U;
  wm8766_inits[6] = 9U;
  wm8766_inits[7] = 1U;
  wm8766_inits[8] = 10U;
  wm8766_inits[9] = 128U;
  wm8766_inits[10] = 0U;
  wm8766_inits[11] = 256U;
  wm8766_inits[12] = 4U;
  wm8766_inits[13] = 256U;
  wm8766_inits[14] = 6U;
  wm8766_inits[15] = 256U;
  wm8766_inits[16] = 1U;
  wm8766_inits[17] = 256U;
  wm8766_inits[18] = 5U;
  wm8766_inits[19] = 256U;
  wm8766_inits[20] = 7U;
  wm8766_inits[21] = 256U;
  wm8766_inits[22] = 12U;
  wm8766_inits[23] = 0U;
  wm8766_inits[24] = 15U;
  wm8766_inits[25] = 0U;
  ice->vt1720 = 0U;
  ice->vt1724 = 1U;
  ice->num_total_dacs = 8U;
  ice->num_total_adcs = 1U;
  ice->gpio.saved[0] = 0U;
  tmp = kzalloc(280UL, 208U);
  ice->akm = (struct snd_akm4xxx *)tmp;
  }
  if ((unsigned long )ice->akm == (unsigned long )((struct snd_akm4xxx *)0)) {
    return (-12);
  } else {
  }
  {
  ice->akm_codecs = 1U;
  tmp___0 = kzalloc(20UL, 208U);
  spec = (struct prodigy_hifi_spec *)tmp___0;
  }
  if ((unsigned long )spec == (unsigned long )((struct prodigy_hifi_spec *)0)) {
    return (-12);
  } else {
  }
  ice->spec = (void *)spec;
  i = 0U;
  goto ldv_35938;
  ldv_35937:
  {
  wm_put___2(ice, (int )wm_inits[i], (int )wm_inits[i + 1U]);
  i = i + 2U;
  }
  ldv_35938: ;
  if (i <= 9U) {
    goto ldv_35937;
  } else {
  }
  {
  schedule_timeout_uninterruptible(1L);
  i = 0U;
  }
  goto ldv_35943;
  ldv_35942:
  {
  wm_put___2(ice, (int )wm_inits2[i], (int )wm_inits2[i + 1U]);
  i = i + 2U;
  }
  ldv_35943: ;
  if (i <= 41U) {
    goto ldv_35942;
  } else {
  }
  i = 0U;
  goto ldv_35948;
  ldv_35947:
  {
  wm8766_spi_write(ice, (unsigned int )wm8766_inits[i], (unsigned int )wm8766_inits[i + 1U]);
  i = i + 2U;
  }
  ldv_35948: ;
  if (i <= 25U) {
    goto ldv_35947;
  } else {
  }
  return (0);
}
}
static void ak4396_init(struct snd_ice1712 *ice )
{
  unsigned short ak4396_inits[10U] ;
  unsigned int i ;
  {
  {
  ak4396_inits[0] = 0U;
  ak4396_inits[1] = 135U;
  ak4396_inits[2] = 1U;
  ak4396_inits[3] = 2U;
  ak4396_inits[4] = 2U;
  ak4396_inits[5] = 0U;
  ak4396_inits[6] = 3U;
  ak4396_inits[7] = 0U;
  ak4396_inits[8] = 4U;
  ak4396_inits[9] = 0U;
  ak4396_write(ice, 0U, 134U);
  msleep(100U);
  ak4396_write(ice, 0U, 135U);
  i = 0U;
  }
  goto ldv_35958;
  ldv_35957:
  {
  ak4396_write(ice, (unsigned int )ak4396_inits[i], (unsigned int )ak4396_inits[i + 1U]);
  i = i + 2U;
  }
  ldv_35958: ;
  if (i <= 9U) {
    goto ldv_35957;
  } else {
  }
  return;
}
}
static int prodigy_hd2_resume(struct snd_ice1712 *ice )
{
  struct prodigy_hifi_spec *spec ;
  int i ;
  {
  {
  spec = (struct prodigy_hifi_spec *)ice->spec;
  ldv_mutex_lock_136___0(& ice->gpio_mutex);
  ak4396_init(ice);
  i = 0;
  }
  goto ldv_35966;
  ldv_35965:
  {
  ak4396_write(ice, (unsigned int )(i + 3), (unsigned int )spec->vol[i] & 255U);
  i = i + 1;
  }
  ldv_35966: ;
  if (i <= 1) {
    goto ldv_35965;
  } else {
  }
  {
  ldv_mutex_unlock_137___0(& ice->gpio_mutex);
  }
  return (0);
}
}
static int prodigy_hd2_init(struct snd_ice1712 *ice )
{
  struct prodigy_hifi_spec *spec ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  ice->vt1720 = 0U;
  ice->vt1724 = 1U;
  ice->num_total_dacs = 1U;
  ice->num_total_adcs = 1U;
  ice->gpio.saved[0] = 0U;
  tmp = kzalloc(280UL, 208U);
  ice->akm = (struct snd_akm4xxx *)tmp;
  }
  if ((unsigned long )ice->akm == (unsigned long )((struct snd_akm4xxx *)0)) {
    return (-12);
  } else {
  }
  {
  ice->akm_codecs = 1U;
  tmp___0 = kzalloc(20UL, 208U);
  spec = (struct prodigy_hifi_spec *)tmp___0;
  }
  if ((unsigned long )spec == (unsigned long )((struct prodigy_hifi_spec *)0)) {
    return (-12);
  } else {
  }
  {
  ice->spec = (void *)spec;
  ice->pm_resume = & prodigy_hd2_resume;
  ice->pm_suspend_enabled = 1U;
  ak4396_init(ice);
  }
  return (0);
}
}
static unsigned char prodigy71hifi_eeprom[13U] =
  { 75U, 128U, 252U, 195U,
        255U, 255U, 95U, 0U,
        0U, 0U, 0U, 0U,
        0U};
static unsigned char prodigyhd2_eeprom[13U] =
  { 75U, 128U, 252U, 195U,
        255U, 255U, 95U, 0U,
        0U, 0U, 0U, 0U,
        0U};
static unsigned char fortissimo4_eeprom[13U] =
  { 67U, 128U, 252U, 193U,
        255U, 255U, 95U, 0U,
        0U, 0U, 0U, 0U,
        0U};
struct snd_ice1712_card_info snd_vt1724_prodigy_hifi_cards[4U] = { {942756929U, "Audiotrak Prodigy 7.1 HiFi", "prodigy71hifi", "Prodigy71HIFI",
      & prodigy_hifi_init, 0, & prodigy_hifi_add_controls, (unsigned char)0, 0U, 0U,
      0, 0, 13U, (unsigned char const *)(& prodigy71hifi_eeprom)},
        {925979713U, "Audiotrak Prodigy HD2", "prodigyhd2", "Prodigy71HD2", & prodigy_hd2_init,
      0, & prodigy_hd2_add_controls, (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& prodigyhd2_eeprom)},
        {2165702912U,
      "Hercules Fortissimo IV", "fortissimo4", "Fortissimo4", & prodigy_hifi_init,
      0, & prodigy_hifi_add_controls, (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& fortissimo4_eeprom)}};
void ldv_dummy_resourceless_instance_callback_22_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  prodigy_hd2_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  prodigy_hd2_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_23_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  prodigy_hifi_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_23_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  prodigy_hifi_init(arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_106___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_107___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_108___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_109___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_110___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_111___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_112___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_113___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_114___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_115___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_116___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_117___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_118___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_119___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_120___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_121___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_122___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_123___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_124___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_125___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_126___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_127___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_128___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_129___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_130___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_131___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_132___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_133___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_134___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_135___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_136___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_137___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern struct snd_kcontrol *snd_ctl_find_id(struct snd_card * , struct snd_ctl_elem_id * ) ;
extern struct snd_kcontrol *snd_ctl_make_virtual_master(char * , unsigned int const * ) ;
extern int _snd_ctl_add_slave(struct snd_kcontrol * , struct snd_kcontrol * , unsigned int ) ;
__inline static int snd_ctl_add_slave(struct snd_kcontrol *master , struct snd_kcontrol *slave )
{
  int tmp ;
  {
  {
  tmp = _snd_ctl_add_slave(master, slave, 0U);
  }
  return (tmp);
}
}
extern void snd_akm4xxx_write(struct snd_akm4xxx * , int , unsigned char , unsigned char ) ;
extern void snd_ak4114_reinit(struct ak4114 * ) ;
extern int snd_ak4114_external_rate(struct ak4114 * ) ;
extern void snd_ak4114_suspend(struct ak4114 * ) ;
extern void snd_ak4114_resume(struct ak4114 * ) ;
static unsigned int juli_rates[11U] =
  { 16000U, 22050U, 24000U, 32000U,
        44100U, 48000U, 64000U, 88200U,
        96000U, 176400U, 192000U};
static unsigned int gpio_vals[11U] =
  { 28U, 29U, 30U, 24U,
        25U, 26U, 20U, 21U,
        22U, 17U, 18U};
static struct snd_pcm_hw_constraint_list juli_rates_info = {11U, (unsigned int const *)(& juli_rates), 0U};
static int get_gpio_val(int rate )
{
  int i ;
  {
  i = 0;
  goto ldv_35495;
  ldv_35494: ;
  if (juli_rates[i] == (unsigned int )rate) {
    return ((int )gpio_vals[i]);
  } else {
  }
  i = i + 1;
  ldv_35495: ;
  if ((unsigned int )i <= 10U) {
    goto ldv_35494;
  } else {
  }
  return (0);
}
}
static void juli_ak4114_write(void *private_data , unsigned char reg , unsigned char val )
{
  {
  {
  snd_vt1724_write_i2c((struct snd_ice1712 *)private_data, 32, (int )reg, (int )val);
  }
  return;
}
}
static unsigned char juli_ak4114_read(void *private_data , unsigned char reg )
{
  unsigned char tmp ;
  {
  {
  tmp = snd_vt1724_read_i2c((struct snd_ice1712 *)private_data, 32, (int )reg);
  }
  return (tmp);
}
}
static void juli_spdif_in_open(struct snd_ice1712 *ice , struct snd_pcm_substream *substream )
{
  struct juli_spec *spec ;
  struct snd_pcm_runtime *runtime ;
  int rate ;
  int tmp ;
  {
  spec = (struct juli_spec *)ice->spec;
  runtime = substream->runtime;
  if (substream->stream == 0) {
    return;
  } else {
    {
    tmp = (*(ice->is_spdif_master))(ice);
    }
    if (tmp == 0) {
      return;
    } else {
    }
  }
  {
  rate = snd_ak4114_external_rate(spec->ak4114);
  }
  if ((unsigned int )rate >= runtime->hw.rate_min && (unsigned int )rate <= runtime->hw.rate_max) {
    runtime->hw.rate_min = (unsigned int )rate;
    runtime->hw.rate_max = (unsigned int )rate;
  } else {
  }
  return;
}
}
static void juli_akm_lock(struct snd_akm4xxx *ak , int chip )
{
  {
  return;
}
}
static void juli_akm_unlock(struct snd_akm4xxx *ak , int chip )
{
  {
  return;
}
}
static void juli_akm_write(struct snd_akm4xxx *ak , int chip , unsigned char addr ,
                           unsigned char data )
{
  struct snd_ice1712 *ice ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)ak->private_data[0];
  __ret_warn_on = chip != 0;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("sound/pci/ice1712/juli.c", 214);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  {
  snd_vt1724_write_i2c(ice, 34, (int )addr, (int )data);
  }
  return;
}
}
static void juli_akm_set_rate_val(struct snd_akm4xxx *ak , unsigned int rate )
{
  unsigned char old ;
  unsigned char tmp ;
  unsigned char ak4358_dfs ;
  unsigned int ak5385_pins ;
  unsigned int old_gpio ;
  unsigned int new_gpio ;
  struct snd_ice1712 *ice ;
  struct juli_spec *spec ;
  {
  ice = (struct snd_ice1712 *)ak->private_data[0];
  spec = (struct juli_spec *)ice->spec;
  if (rate == 0U) {
    return;
  } else {
  }
  if (rate > 96000U) {
    ak4358_dfs = 2U;
    ak5385_pins = 768U;
  } else
  if (rate > 48000U) {
    ak4358_dfs = 1U;
    ak5385_pins = 1024U;
  } else {
    ak4358_dfs = 0U;
    ak5385_pins = 0U;
  }
  {
  old_gpio = (*(ice->gpio.get_data))(ice);
  new_gpio = (old_gpio & 4294949119U) | ak5385_pins;
  (*(ice->gpio.set_data))(ice, new_gpio);
  old = inb((int )((unsigned int )ice->profi_port + 5U));
  outb((int )((unsigned int )old | 128U), (int )((unsigned int )ice->profi_port + 5U));
  __const_udelay(4295UL);
  outb((int )old & 127, (int )((unsigned int )ice->profi_port + 5U));
  tmp = ak->images[2];
  snd_akm4xxx_reset(ak, 1);
  tmp = ak->images[2];
  tmp = (unsigned int )tmp & 207U;
  tmp = (unsigned char )((int )((signed char )tmp) | (int )((signed char )((int )ak4358_dfs << 4)));
  ak->images[2] = tmp;
  snd_akm4xxx_reset(ak, 0);
  snd_ak4114_reinit(spec->ak4114);
  }
  return;
}
}
static struct snd_akm4xxx_dac_channel const juli_dac[4U] = { {(char *)"PCM Playback Volume", 2U, 0},
        {(char *)"Monitor Analog In Volume", 2U, 0},
        {(char *)"Monitor Digital Out Volume", 2U, 0},
        {(char *)"Monitor Digital In Volume", 2U, 0}};
static struct snd_akm4xxx akm_juli_dac =
     {0, 0U, 8U, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
    {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}, {0UL,
                                                                               0UL,
                                                                               0UL,
                                                                               0UL},
    {0, 0, 0, 0}, 0U, 4, (struct snd_akm4xxx_dac_channel const *)(& juli_dac), 0,
    {& juli_akm_lock, & juli_akm_unlock, & juli_akm_write, & juli_akm_set_rate_val},
    0U, 0U, 0};
static int juli_mute_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int val ;
  unsigned int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = (*(ice->gpio.get_data))(ice);
  val = tmp & (unsigned int )kcontrol->private_value;
  }
  if (kcontrol->private_value == 32768UL) {
    ucontrol->value.integer.value[0] = val == 0U;
  } else {
    ucontrol->value.integer.value[0] = val != 0U;
  }
  return (0);
}
}
static int juli_mute_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int old_gpio ;
  unsigned int new_gpio ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  old_gpio = (*(ice->gpio.get_data))(ice);
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    if (kcontrol->private_value == 32768UL) {
      {
      new_gpio = old_gpio & 4294934527U;
      snd_akm4xxx_write(ice->akm, 0, 1, 1);
      }
    } else {
      new_gpio = old_gpio | (unsigned int )kcontrol->private_value;
    }
  } else
  if (kcontrol->private_value == 32768UL) {
    {
    new_gpio = old_gpio | 32768U;
    snd_akm4xxx_write(ice->akm, 0, 1, 3);
    }
  } else {
    new_gpio = old_gpio & ~ ((unsigned int )kcontrol->private_value);
  }
  if (old_gpio != new_gpio) {
    {
    (*(ice->gpio.set_data))(ice, new_gpio);
    }
    return (1);
  } else {
  }
  return (0);
}
}
static struct snd_kcontrol_new juli_mute_controls[4U] = { {2, 0U, 0U, (unsigned char const *)"Master Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & juli_mute_get, & juli_mute_put, {0}, 32768UL},
        {2, 0U, 0U, (unsigned char const *)"Monitor Analog In Switch", 0U, 0U, 0U,
      & snd_ctl_boolean_mono_info, & juli_mute_get, & juli_mute_put, {0}, 8192UL},
        {2,
      0U, 0U, (unsigned char const *)"Monitor Digital Out Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & juli_mute_get, & juli_mute_put, {0}, 2048UL},
        {2, 0U, 0U, (unsigned char const *)"Monitor Digital In Switch", 0U, 0U, 0U,
      & snd_ctl_boolean_mono_info, & juli_mute_get, & juli_mute_put, {0}, 4096UL}};
static char *slave_vols[5U] = { (char *)"PCM Playback Volume", (char *)"Monitor Analog In Volume", (char *)"Monitor Digital In Volume", (char *)"Monitor Digital Out Volume",
        (char *)0};
static unsigned int juli_master_db_scale[4U] = { 1U, 8U, 4294960946U, 65586U};
static struct snd_kcontrol *ctl_find(struct snd_card *card , char const *name )
{
  struct snd_ctl_elem_id sid ;
  struct snd_kcontrol *tmp ;
  {
  {
  memset((void *)(& sid), 0, 64UL);
  strcpy((char *)(& sid.name), name);
  sid.iface = 2;
  tmp = snd_ctl_find_id(card, & sid);
  }
  return (tmp);
}
}
static void add_slaves(struct snd_card *card , struct snd_kcontrol *master , char * const *list )
{
  struct snd_kcontrol *slave ;
  struct snd_kcontrol *tmp ;
  {
  goto ldv_35573;
  ldv_35572:
  {
  tmp = ctl_find(card, (char const *)*list);
  slave = tmp;
  }
  if ((unsigned long )slave != (unsigned long )((struct snd_kcontrol *)0)) {
    {
    snd_ctl_add_slave(master, slave);
    }
  } else {
  }
  list = list + 1;
  ldv_35573: ;
  if ((unsigned long )*list != (unsigned long )((char * )0)) {
    goto ldv_35572;
  } else {
  }
  return;
}
}
static int juli_add_controls(struct snd_ice1712 *ice )
{
  struct juli_spec *spec ;
  int err ;
  unsigned int i ;
  struct snd_kcontrol *vmaster ;
  struct snd_kcontrol *tmp ;
  int tmp___0 ;
  {
  {
  spec = (struct juli_spec *)ice->spec;
  err = snd_ice1712_akm4xxx_build_controls(ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = 0U;
  goto ldv_35585;
  ldv_35584:
  {
  tmp = snd_ctl_new1((struct snd_kcontrol_new const *)(& juli_mute_controls) + (unsigned long )i,
                     (void *)ice);
  err = snd_ctl_add(ice->card, tmp);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_35585: ;
  if (i <= 3U) {
    goto ldv_35584;
  } else {
  }
  {
  vmaster = snd_ctl_make_virtual_master((char *)"Master Playback Volume", (unsigned int const *)(& juli_master_db_scale));
  }
  if ((unsigned long )vmaster == (unsigned long )((struct snd_kcontrol *)0)) {
    return (-12);
  } else {
  }
  {
  add_slaves(ice->card, vmaster, (char * const *)(& slave_vols));
  err = snd_ctl_add(ice->card, vmaster);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp___0 = snd_ak4114_build(spec->ak4114, (struct snd_pcm_substream *)0, (ice->pcm)->streams[1].substream);
  }
  return (tmp___0);
}
}
static int juli_resume(struct snd_ice1712 *ice )
{
  struct snd_akm4xxx *ak ;
  struct juli_spec *spec ;
  {
  {
  ak = ice->akm;
  spec = (struct juli_spec *)ice->spec;
  snd_akm4xxx_reset(ak, 0);
  snd_ak4114_resume(spec->ak4114);
  }
  return (0);
}
}
static int juli_suspend(struct snd_ice1712 *ice )
{
  struct snd_akm4xxx *ak ;
  struct juli_spec *spec ;
  {
  {
  ak = ice->akm;
  spec = (struct juli_spec *)ice->spec;
  snd_akm4xxx_reset(ak, 1);
  snd_ak4114_suspend(spec->ak4114);
  }
  return (0);
}
}
__inline static int juli_is_spdif_master(struct snd_ice1712 *ice )
{
  unsigned int tmp ;
  {
  {
  tmp = (*(ice->gpio.get_data))(ice);
  }
  return ((tmp & 16U) == 0U);
}
}
static unsigned int juli_get_rate(struct snd_ice1712 *ice )
{
  int i ;
  unsigned char result ;
  unsigned int tmp ;
  {
  {
  tmp = (*(ice->gpio.get_data))(ice);
  result = (unsigned int )((unsigned char )tmp) & 31U;
  i = 0;
  }
  goto ldv_35608;
  ldv_35607: ;
  if (gpio_vals[i] == (unsigned int )result) {
    return (juli_rates[i]);
  } else {
  }
  i = i + 1;
  ldv_35608: ;
  if ((unsigned int )i <= 10U) {
    goto ldv_35607;
  } else {
  }
  return (0U);
}
}
static void juli_set_rate(struct snd_ice1712 *ice , unsigned int rate )
{
  unsigned int old ;
  unsigned int new ;
  unsigned char val ;
  int tmp ;
  {
  {
  old = (*(ice->gpio.get_data))(ice);
  tmp = get_gpio_val((int )rate);
  new = (old & 4294967264U) | (unsigned int )tmp;
  (*(ice->gpio.set_data))(ice, new);
  val = inb((int )((unsigned int )ice->profi_port + 1U));
  outb((int )((unsigned int )val | 16U), (int )((unsigned int )ice->profi_port + 1U));
  }
  return;
}
}
__inline static unsigned char juli_set_mclk(struct snd_ice1712 *ice , unsigned int rate )
{
  {
  return (0U);
}
}
static int juli_set_spdif_clock(struct snd_ice1712 *ice , int type )
{
  unsigned int old ;
  {
  {
  old = (*(ice->gpio.get_data))(ice);
  (*(ice->gpio.set_data))(ice, (old & 4294967264U) | 10U);
  }
  return (0);
}
}
static void juli_ak4114_change(struct ak4114 *ak4114 , unsigned char c0 , unsigned char c1 )
{
  struct snd_ice1712 *ice ;
  int rate ;
  int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)ak4114->change_callback_private;
  tmp = (*(ice->is_spdif_master))(ice);
  }
  if (tmp != 0 && (unsigned int )c1 != 0U) {
    {
    rate = snd_ak4114_external_rate(ak4114);
    juli_akm_set_rate_val(ice->akm, (unsigned int )rate);
    }
  } else {
  }
  return;
}
}
static int juli_init(struct snd_ice1712 *ice )
{
  unsigned char ak4114_init_vals[6U] ;
  unsigned char ak4114_init_txcsb[5U] ;
  int err ;
  struct juli_spec *spec ;
  struct snd_akm4xxx *ak ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  ak4114_init_vals[0] = 15U;
  ak4114_init_vals[1] = 112U;
  ak4114_init_vals[2] = 128U;
  ak4114_init_vals[3] = 73U;
  ak4114_init_vals[4] = 0U;
  ak4114_init_vals[5] = 0U;
  ak4114_init_txcsb[0] = 65U;
  ak4114_init_txcsb[1] = 2U;
  ak4114_init_txcsb[2] = 44U;
  ak4114_init_txcsb[3] = 0U;
  ak4114_init_txcsb[4] = 0U;
  tmp = kzalloc(16UL, 208U);
  spec = (struct juli_spec *)tmp;
  }
  if ((unsigned long )spec == (unsigned long )((struct juli_spec *)0)) {
    return (-12);
  } else {
  }
  {
  ice->spec = (void *)spec;
  err = snd_ak4114_create(ice->card, & juli_ak4114_read, & juli_ak4114_write, (unsigned char const *)(& ak4114_init_vals),
                          (unsigned char const *)(& ak4114_init_txcsb), (void *)ice,
                          & spec->ak4114);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  (spec->ak4114)->change_callback = & juli_ak4114_change;
  (spec->ak4114)->change_callback_private = (void *)ice;
  (spec->ak4114)->check_flags = 0U;
  spec->analog = 1U;
  if ((unsigned int )*((unsigned char *)spec + 8UL) != 0U) {
    {
    _dev_info((struct device const *)(ice->card)->dev, "juli@: analog I/O detected\n");
    ice->num_total_dacs = 2U;
    ice->num_total_adcs = 2U;
    tmp___0 = kzalloc(280UL, 208U);
    ice->akm = (struct snd_akm4xxx *)tmp___0;
    ak = ice->akm;
    }
    if ((unsigned long )ak == (unsigned long )((struct snd_akm4xxx *)0)) {
      return (-12);
    } else {
    }
    {
    ice->akm_codecs = 1U;
    err = snd_ice1712_akm4xxx_init(ak, (struct snd_akm4xxx const *)(& akm_juli_dac),
                                   (struct snd_ak4xxx_private const *)0, ice);
    }
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  ice->hw_rates = & juli_rates_info;
  ice->is_spdif_master = & juli_is_spdif_master;
  ice->get_rate = & juli_get_rate;
  ice->set_rate = & juli_set_rate;
  ice->set_mclk = & juli_set_mclk;
  ice->set_spdif_clock = & juli_set_spdif_clock;
  ice->spdif.ops.open = & juli_spdif_in_open;
  ice->pm_resume = & juli_resume;
  ice->pm_suspend = & juli_suspend;
  ice->pm_suspend_enabled = 1U;
  return (0);
}
}
static unsigned char juli_eeprom[13U] =
  { 43U, 128U, 248U, 195U,
        159U, 255U, 127U, 96U,
        0U, 127U, 26U, 0U,
        0U};
struct snd_ice1712_card_info snd_vt1724_juli_cards[2U] = { {825250629U, "ESI Juli@", "juli", 0, & juli_init, 0, & juli_add_controls, (unsigned char)0,
      0U, 0U, 0, 0, 13U, (unsigned char const *)(& juli_eeprom)}};
void ldv_dummy_resourceless_instance_callback_10_12(void (*arg0)(struct snd_akm4xxx * ,
                                                                 int ) , struct snd_akm4xxx *arg1 ,
                                                    int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_10_15(void (*arg0)(struct snd_akm4xxx * ,
                                                                 int , unsigned char ,
                                                                 unsigned char ) ,
                                                    struct snd_akm4xxx *arg1 , int arg2 ,
                                                    unsigned char arg3 , unsigned char arg4 ) ;
void ldv_dummy_resourceless_instance_callback_10_3(void (*arg0)(struct snd_akm4xxx * ,
                                                                int ) , struct snd_akm4xxx *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_10_9(void (*arg0)(struct snd_akm4xxx * ,
                                                                unsigned int ) ,
                                                   struct snd_akm4xxx *arg1 , unsigned int arg2 ) ;
struct ldv_thread ldv_thread_10 ;
void ldv_dummy_resourceless_instance_callback_10_12(void (*arg0)(struct snd_akm4xxx * ,
                                                                 int ) , struct snd_akm4xxx *arg1 ,
                                                    int arg2 )
{
  {
  {
  juli_akm_unlock(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_15(void (*arg0)(struct snd_akm4xxx * ,
                                                                 int , unsigned char ,
                                                                 unsigned char ) ,
                                                    struct snd_akm4xxx *arg1 , int arg2 ,
                                                    unsigned char arg3 , unsigned char arg4 )
{
  {
  {
  juli_akm_write(arg1, arg2, (int )arg3, (int )arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_3(void (*arg0)(struct snd_akm4xxx * ,
                                                                int ) , struct snd_akm4xxx *arg1 ,
                                                   int arg2 )
{
  {
  {
  juli_akm_lock(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_9(void (*arg0)(struct snd_akm4xxx * ,
                                                                unsigned int ) ,
                                                   struct snd_akm4xxx *arg1 , unsigned int arg2 )
{
  {
  {
  juli_akm_set_rate_val(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  juli_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  juli_init(arg1);
  }
  return;
}
}
void ldv_struct_snd_akm4xxx_dummy_resourceless_instance_10(void *arg0 )
{
  void (*ldv_10_callback_lock)(struct snd_akm4xxx * , int ) ;
  void (*ldv_10_callback_set_rate_val)(struct snd_akm4xxx * , unsigned int ) ;
  void (*ldv_10_callback_unlock)(struct snd_akm4xxx * , int ) ;
  void (*ldv_10_callback_write)(struct snd_akm4xxx * , int , unsigned char , unsigned char ) ;
  struct snd_akm4xxx *ldv_10_container_struct_snd_akm4xxx ;
  int ldv_10_ldv_param_12_1_default ;
  int ldv_10_ldv_param_15_1_default ;
  unsigned char ldv_10_ldv_param_15_2_default ;
  unsigned char ldv_10_ldv_param_15_3_default ;
  int ldv_10_ldv_param_3_1_default ;
  unsigned int ldv_10_ldv_param_9_1_default ;
  int tmp ;
  int tmp___0 ;
  {
  goto ldv_call_10;
  return;
  ldv_call_10:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
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
    goto switch_default;
    case_1:
    {
    ldv_dummy_resourceless_instance_callback_10_15(ldv_10_callback_write, ldv_10_container_struct_snd_akm4xxx,
                                                   ldv_10_ldv_param_15_1_default,
                                                   (int )ldv_10_ldv_param_15_2_default,
                                                   (int )ldv_10_ldv_param_15_3_default);
    }
    goto ldv_35771;
    case_2:
    {
    ldv_dummy_resourceless_instance_callback_10_12(ldv_10_callback_unlock, ldv_10_container_struct_snd_akm4xxx,
                                                   ldv_10_ldv_param_12_1_default);
    }
    goto ldv_35771;
    case_3:
    {
    ldv_dummy_resourceless_instance_callback_10_9(ldv_10_callback_set_rate_val, ldv_10_container_struct_snd_akm4xxx,
                                                  ldv_10_ldv_param_9_1_default);
    }
    goto ldv_35771;
    case_4:
    {
    ldv_dummy_resourceless_instance_callback_10_3(ldv_10_callback_lock, ldv_10_container_struct_snd_akm4xxx,
                                                  ldv_10_ldv_param_3_1_default);
    }
    goto ldv_35771;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_35771: ;
    goto ldv_call_10;
  } else {
    return;
  }
  return;
}
}
static void ldv_mutex_lock_102___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_104___3(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_106___3(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_103___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105___3(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_107___3(struct mutex *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void snd_ice1712_save_gpio_status___2(struct snd_ice1712 *ice )
{
  {
  {
  ldv_mutex_lock_102___2(& ice->gpio_mutex);
  ice->gpio.saved[0] = ice->gpio.direction;
  ice->gpio.saved[1] = ice->gpio.write_mask;
  }
  return;
}
}
__inline static void snd_ice1712_restore_gpio_status___2(struct snd_ice1712 *ice )
{
  {
  {
  (*(ice->gpio.set_dir))(ice, ice->gpio.saved[0]);
  (*(ice->gpio.set_mask))(ice, ice->gpio.saved[1]);
  ice->gpio.direction = ice->gpio.saved[0];
  ice->gpio.write_mask = ice->gpio.saved[1];
  ldv_mutex_unlock_103___2(& ice->gpio_mutex);
  }
  return;
}
}
static unsigned char const wm_vol[256U] =
  { 127U, 48U, 42U, 39U,
        36U, 34U, 33U, 31U,
        30U, 29U, 28U, 27U,
        27U, 26U, 25U, 25U,
        24U, 24U, 23U, 23U,
        22U, 22U, 21U, 21U,
        21U, 20U, 20U, 20U,
        19U, 19U, 19U, 18U,
        18U, 18U, 18U, 17U,
        17U, 17U, 17U, 16U,
        16U, 16U, 16U, 15U,
        15U, 15U, 15U, 15U,
        15U, 14U, 14U, 14U,
        14U, 14U, 13U, 13U,
        13U, 13U, 13U, 13U,
        13U, 12U, 12U, 12U,
        12U, 12U, 12U, 12U,
        11U, 11U, 11U, 11U,
        11U, 11U, 11U, 11U,
        11U, 10U, 10U, 10U,
        10U, 10U, 10U, 10U,
        10U, 10U, 9U, 9U,
        9U, 9U, 9U, 9U,
        9U, 9U, 9U, 9U,
        8U, 8U, 8U, 8U,
        8U, 8U, 8U, 8U,
        8U, 8U, 8U, 8U,
        7U, 7U, 7U, 7U,
        7U, 7U, 7U, 7U,
        7U, 7U, 7U, 7U,
        7U, 6U, 6U, 6U,
        6U, 6U, 6U, 6U,
        6U, 6U, 6U, 6U,
        6U, 6U, 6U, 6U,
        5U, 5U, 5U, 5U,
        5U, 5U, 5U, 5U,
        5U, 5U, 5U, 5U,
        5U, 5U, 5U, 5U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 3U,
        3U, 3U, 3U, 3U,
        3U, 3U, 3U, 3U,
        3U, 3U, 3U, 3U,
        3U, 3U, 3U, 3U,
        3U, 3U, 3U, 3U,
        2U, 2U, 2U, 2U,
        2U, 2U, 2U, 2U,
        2U, 2U, 2U, 2U,
        2U, 2U, 2U, 2U,
        2U, 2U, 2U, 2U,
        2U, 2U, 2U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U};
static struct snd_akm4xxx akm_phase22 =
     {0, 2U, 2U, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
    {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}, {0UL,
                                                                               0UL,
                                                                               0UL,
                                                                               0UL},
    {0, 0, 0, 0}, 0U, 0, 0, 0, {0, 0, 0, 0}, 0U, 0U, 0};
static struct snd_ak4xxx_private akm_phase22_priv =
     {1U, 2U, 16U, 32U, 1024U, 1024U, 0U, 8U, 0U, {0}};
static int phase22_init(struct snd_ice1712 *ice )
{
  struct snd_akm4xxx *ak ;
  int err ;
  int __ret_warn_on ;
  long tmp ;
  void *tmp___0 ;
  {
  {
  if (ice->eeprom.subvendor == 991252497U) {
    goto case_991252497;
  } else {
  }
  if (ice->eeprom.subvendor == 991263505U) {
    goto case_991263505;
  } else {
  }
  goto switch_default;
  case_991252497: ;
  case_991263505:
  ice->num_total_dacs = 2U;
  ice->num_total_adcs = 2U;
  ice->vt1720 = 1U;
  goto ldv_35509;
  switch_default:
  {
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_fmt("sound/pci/ice1712/phase.c", 137, "BUG?\n");
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  return (-22);
  switch_break: ;
  }
  ldv_35509:
  {
  tmp___0 = kzalloc(280UL, 208U);
  ice->akm = (struct snd_akm4xxx *)tmp___0;
  ak = ice->akm;
  }
  if ((unsigned long )ak == (unsigned long )((struct snd_akm4xxx *)0)) {
    return (-12);
  } else {
  }
  ice->akm_codecs = 1U;
  {
  if (ice->eeprom.subvendor == 991252497U) {
    goto case_991252497___0;
  } else {
  }
  if (ice->eeprom.subvendor == 991263505U) {
    goto case_991263505___0;
  } else {
  }
  goto switch_break___0;
  case_991252497___0: ;
  case_991263505___0:
  {
  err = snd_ice1712_akm4xxx_init(ak, (struct snd_akm4xxx const *)(& akm_phase22),
                                 (struct snd_ak4xxx_private const *)(& akm_phase22_priv),
                                 ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  goto ldv_35515;
  switch_break___0: ;
  }
  ldv_35515: ;
  return (0);
}
}
static int phase22_add_controls(struct snd_ice1712 *ice )
{
  int err ;
  {
  err = 0;
  {
  if (ice->eeprom.subvendor == 991252497U) {
    goto case_991252497;
  } else {
  }
  if (ice->eeprom.subvendor == 991263505U) {
    goto case_991263505;
  } else {
  }
  goto switch_break;
  case_991252497: ;
  case_991263505:
  {
  err = snd_ice1712_akm4xxx_build_controls(ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  switch_break: ;
  }
  return (0);
}
}
static unsigned char phase22_eeprom[13U] =
  { 40U, 128U, 240U, 195U,
        255U, 255U, 255U, 0U,
        0U, 0U, 0U, 0U,
        0U};
static unsigned char phase28_eeprom[13U] =
  { 43U, 128U, 252U, 195U,
        255U, 255U, 95U, 0U,
        0U, 0U, 0U, 0U,
        0U};
static void phase28_spi_write(struct snd_ice1712 *ice , unsigned int cs , unsigned int data ,
                              int bits )
{
  unsigned int tmp ;
  int i ;
  {
  {
  tmp = snd_ice1712_gpio_read(ice);
  snd_ice1712_gpio_set_mask(ice, 4294045695U);
  tmp = tmp | 131072U;
  tmp = tmp & ~ cs;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  i = bits + -1;
  }
  goto ldv_35533;
  ldv_35532:
  {
  tmp = tmp & 4294443007U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  }
  if ((data & (unsigned int )(1 << i)) != 0U) {
    tmp = tmp | 262144U;
  } else {
    tmp = tmp & 4294705151U;
  }
  {
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  tmp = tmp | 524288U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  i = i - 1;
  }
  ldv_35533: ;
  if (i >= 0) {
    goto ldv_35532;
  } else {
  }
  {
  tmp = tmp & 4294443007U;
  tmp = tmp | cs;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  tmp = tmp | 524288U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  }
  return;
}
}
static unsigned short wm_get___2(struct snd_ice1712 *ice , int reg )
{
  {
  reg = reg << 1;
  return ((unsigned short )((int )((short )((int )(ice->akm)->images[reg] << 8)) | (int )((short )(ice->akm)->images[reg + 1])));
}
}
static void wm_put_nocache___2(struct snd_ice1712 *ice , int reg , unsigned short val )
{
  {
  {
  phase28_spi_write(ice, 4096U, (unsigned int )((reg << 9) | ((int )val & 511)), 16);
  }
  return;
}
}
static void wm_put___3(struct snd_ice1712 *ice , int reg , unsigned short val )
{
  {
  {
  wm_put_nocache___2(ice, reg, (int )val);
  reg = reg << 1;
  (ice->akm)->images[reg] = (unsigned char )((int )val >> 8);
  (ice->akm)->images[reg + 1] = (unsigned char )val;
  }
  return;
}
}
static void wm_set_vol___1(struct snd_ice1712 *ice , unsigned int index___0 , unsigned short vol ,
                           unsigned short master )
{
  unsigned char nvol ;
  {
  if ((int )((short )master) < 0 || (int )((short )vol) < 0) {
    nvol = 0U;
  } else {
    nvol = 127U - (unsigned int )((unsigned char )wm_vol[(unsigned long )((((int )vol & -32769) * ((int )master & -32769)) / 127) & 255UL]);
  }
  {
  wm_put___3(ice, (int )index___0, (int )nvol);
  wm_put_nocache___2(ice, (int )index___0, (int )((unsigned int )((unsigned short )nvol) | 384U));
  }
  return;
}
}
static int wm_pcm_mute_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_104___3(& ice->gpio_mutex);
  tmp = wm_get___2(ice, 20);
  ucontrol->value.integer.value[0] = ((int )tmp & 16) == 0;
  ldv_mutex_unlock_105___3(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_pcm_mute_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short nval ;
  unsigned short oval ;
  int change ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  snd_ice1712_save_gpio_status___2(ice);
  oval = wm_get___2(ice, 20);
  nval = (unsigned short )(((int )((short )oval) & -17) | (ucontrol->value.integer.value[0] != 0L ? 0 : 16));
  change = (int )nval != (int )oval;
  }
  if (change != 0) {
    {
    wm_put___3(ice, 20, (int )nval);
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___2(ice);
  }
  return (change);
}
}
static int wm_master_vol_info___1(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 255L;
  return (0);
}
}
static int wm_master_vol_get___1(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct phase28_spec *spec ;
  int i ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct phase28_spec *)ice->spec;
  i = 0;
  goto ldv_35581;
  ldv_35580:
  ucontrol->value.integer.value[i] = (long )((int )spec->master[i] & -32769);
  i = i + 1;
  ldv_35581: ;
  if (i <= 1) {
    goto ldv_35580;
  } else {
  }
  return (0);
}
}
static int wm_master_vol_put___1(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct phase28_spec *spec ;
  int ch ;
  int change ;
  unsigned int vol ;
  int dac ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct phase28_spec *)ice->spec;
  change = 0;
  snd_ice1712_save_gpio_status___2(ice);
  ch = 0;
  }
  goto ldv_35598;
  ldv_35597:
  vol = (unsigned int )ucontrol->value.integer.value[ch];
  if (vol > 255U) {
    goto ldv_35592;
  } else {
  }
  vol = vol | ((unsigned int )spec->master[ch] & 32768U);
  if (vol != (unsigned int )spec->master[ch]) {
    spec->master[ch] = (unsigned short )vol;
    dac = 0;
    goto ldv_35595;
    ldv_35594:
    {
    wm_set_vol___1(ice, (unsigned int )(dac + ch), (int )spec->vol[dac + ch], (int )spec->master[ch]);
    dac = dac + 2;
    }
    ldv_35595: ;
    if ((unsigned int )dac < ice->num_total_dacs) {
      goto ldv_35594;
    } else {
    }
    change = 1;
  } else {
  }
  ldv_35592:
  ch = ch + 1;
  ldv_35598: ;
  if (ch <= 1) {
    goto ldv_35597;
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___2(ice);
  }
  return (change);
}
}
static int phase28_init(struct snd_ice1712 *ice )
{
  unsigned short wm_inits_phase28[61U] ;
  unsigned int tmp ;
  struct snd_akm4xxx *ak ;
  struct phase28_spec *spec ;
  unsigned short const *p ;
  int i ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  {
  wm_inits_phase28[0] = 27U;
  wm_inits_phase28[1] = 68U;
  wm_inits_phase28[2] = 28U;
  wm_inits_phase28[3] = 11U;
  wm_inits_phase28[4] = 29U;
  wm_inits_phase28[5] = 9U;
  wm_inits_phase28[6] = 24U;
  wm_inits_phase28[7] = 0U;
  wm_inits_phase28[8] = 22U;
  wm_inits_phase28[9] = 290U;
  wm_inits_phase28[10] = 23U;
  wm_inits_phase28[11] = 34U;
  wm_inits_phase28[12] = 0U;
  wm_inits_phase28[13] = 0U;
  wm_inits_phase28[14] = 1U;
  wm_inits_phase28[15] = 0U;
  wm_inits_phase28[16] = 2U;
  wm_inits_phase28[17] = 0U;
  wm_inits_phase28[18] = 3U;
  wm_inits_phase28[19] = 0U;
  wm_inits_phase28[20] = 4U;
  wm_inits_phase28[21] = 0U;
  wm_inits_phase28[22] = 5U;
  wm_inits_phase28[23] = 0U;
  wm_inits_phase28[24] = 6U;
  wm_inits_phase28[25] = 0U;
  wm_inits_phase28[26] = 7U;
  wm_inits_phase28[27] = 0U;
  wm_inits_phase28[28] = 8U;
  wm_inits_phase28[29] = 256U;
  wm_inits_phase28[30] = 9U;
  wm_inits_phase28[31] = 255U;
  wm_inits_phase28[32] = 10U;
  wm_inits_phase28[33] = 255U;
  wm_inits_phase28[34] = 11U;
  wm_inits_phase28[35] = 255U;
  wm_inits_phase28[36] = 12U;
  wm_inits_phase28[37] = 255U;
  wm_inits_phase28[38] = 13U;
  wm_inits_phase28[39] = 255U;
  wm_inits_phase28[40] = 14U;
  wm_inits_phase28[41] = 255U;
  wm_inits_phase28[42] = 15U;
  wm_inits_phase28[43] = 255U;
  wm_inits_phase28[44] = 16U;
  wm_inits_phase28[45] = 255U;
  wm_inits_phase28[46] = 17U;
  wm_inits_phase28[47] = 511U;
  wm_inits_phase28[48] = 18U;
  wm_inits_phase28[49] = 0U;
  wm_inits_phase28[50] = 19U;
  wm_inits_phase28[51] = 144U;
  wm_inits_phase28[52] = 20U;
  wm_inits_phase28[53] = 0U;
  wm_inits_phase28[54] = 21U;
  wm_inits_phase28[55] = 0U;
  wm_inits_phase28[56] = 25U;
  wm_inits_phase28[57] = 0U;
  wm_inits_phase28[58] = 26U;
  wm_inits_phase28[59] = 0U;
  wm_inits_phase28[60] = 65535U;
  ice->num_total_dacs = 8U;
  ice->num_total_adcs = 2U;
  tmp___0 = kzalloc(20UL, 208U);
  spec = (struct phase28_spec *)tmp___0;
  }
  if ((unsigned long )spec == (unsigned long )((struct phase28_spec *)0)) {
    return (-12);
  } else {
  }
  {
  ice->spec = (void *)spec;
  tmp___1 = kzalloc(280UL, 208U);
  ice->akm = (struct snd_akm4xxx *)tmp___1;
  ak = ice->akm;
  }
  if ((unsigned long )ak == (unsigned long )((struct snd_akm4xxx *)0)) {
    return (-12);
  } else {
  }
  {
  ice->akm_codecs = 1U;
  snd_ice1712_gpio_set_dir(ice, 6291455U);
  snd_ice1712_save_gpio_status___2(ice);
  snd_ice1712_gpio_set_mask(ice, 4293898239U);
  tmp = snd_ice1712_gpio_read(ice);
  tmp = tmp & 4293918719U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  tmp = tmp | 4096U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  tmp = tmp | 1048576U;
  snd_ice1712_gpio_write(ice, tmp);
  __const_udelay(4295UL);
  p = (unsigned short const *)(& wm_inits_phase28);
  }
  goto ldv_35610;
  ldv_35609:
  {
  wm_put___3(ice, (int )*p, (int )*(p + 1UL));
  p = p + 2UL;
  }
  ldv_35610: ;
  if ((unsigned int )((unsigned short )*p) != 65535U) {
    goto ldv_35609;
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___2(ice);
  spec->master[0] = 32768U;
  spec->master[1] = 32768U;
  i = 0;
  }
  goto ldv_35613;
  ldv_35612:
  {
  spec->vol[i] = 32768U;
  wm_set_vol___1(ice, (unsigned int )i, (int )spec->vol[i], (int )spec->master[i % 2]);
  i = i + 1;
  }
  ldv_35613: ;
  if ((unsigned int )i < ice->num_total_dacs) {
    goto ldv_35612;
  } else {
  }
  return (0);
}
}
static int wm_vol_info___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  int voices ;
  {
  voices = (int )(kcontrol->private_value >> 8);
  uinfo->type = 2;
  uinfo->count = (unsigned int )voices;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 127L;
  return (0);
}
}
static int wm_vol_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct phase28_spec *spec ;
  int i ;
  int ofs ;
  int voices ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct phase28_spec *)ice->spec;
  voices = (int )(kcontrol->private_value >> 8);
  ofs = (int )kcontrol->private_value & 255;
  i = 0;
  goto ldv_35630;
  ldv_35629:
  ucontrol->value.integer.value[i] = (long )((int )spec->vol[ofs + i] & -32769);
  i = i + 1;
  ldv_35630: ;
  if (i < voices) {
    goto ldv_35629;
  } else {
  }
  return (0);
}
}
static int wm_vol_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct phase28_spec *spec ;
  int i ;
  int idx ;
  int ofs ;
  int voices ;
  int change ;
  unsigned int vol ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct phase28_spec *)ice->spec;
  change = 0;
  voices = (int )(kcontrol->private_value >> 8);
  ofs = (int )kcontrol->private_value & 255;
  snd_ice1712_save_gpio_status___2(ice);
  i = 0;
  }
  goto ldv_35646;
  ldv_35645:
  vol = (unsigned int )ucontrol->value.integer.value[i];
  if (vol > 127U) {
    goto ldv_35644;
  } else {
  }
  vol = vol | ((unsigned int )spec->vol[ofs + i] & 32768U);
  if (vol != (unsigned int )spec->vol[ofs + i]) {
    {
    spec->vol[ofs + i] = (unsigned short )vol;
    idx = ofs + i;
    wm_set_vol___1(ice, (unsigned int )idx, (int )spec->vol[ofs + i], (int )spec->master[i]);
    change = 1;
    }
  } else {
  }
  ldv_35644:
  i = i + 1;
  ldv_35646: ;
  if (i < voices) {
    goto ldv_35645;
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___2(ice);
  }
  return (change);
}
}
static int wm_mute_info___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 1;
  uinfo->count = (unsigned int )(kcontrol->private_value >> 8);
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 1L;
  return (0);
}
}
static int wm_mute_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct phase28_spec *spec ;
  int voices ;
  int ofs ;
  int i ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct phase28_spec *)ice->spec;
  voices = (int )(kcontrol->private_value >> 8);
  ofs = (int )kcontrol->private_value & 255;
  i = 0;
  goto ldv_35662;
  ldv_35661:
  ucontrol->value.integer.value[i] = (int )((short )spec->vol[ofs + i]) >= 0;
  i = i + 1;
  ldv_35662: ;
  if (i < voices) {
    goto ldv_35661;
  } else {
  }
  return (0);
}
}
static int wm_mute_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct phase28_spec *spec ;
  int change ;
  int voices ;
  int ofs ;
  int i ;
  int val ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct phase28_spec *)ice->spec;
  change = 0;
  voices = (int )(kcontrol->private_value >> 8);
  ofs = (int )kcontrol->private_value & 255;
  snd_ice1712_save_gpio_status___2(ice);
  i = 0;
  }
  goto ldv_35676;
  ldv_35675:
  val = (int )((short )spec->vol[ofs + i]) >= 0;
  if (ucontrol->value.integer.value[i] != (long )val) {
    {
    spec->vol[ofs + i] = (unsigned int )spec->vol[ofs + i] & 32767U;
    spec->vol[ofs + i] = (unsigned short )((int )((short )spec->vol[ofs + i]) | (ucontrol->value.integer.value[i] != 0L ? 0 : -32768));
    wm_set_vol___1(ice, (unsigned int )(ofs + i), (int )spec->vol[ofs + i], (int )spec->master[i]);
    change = 1;
    }
  } else {
  }
  i = i + 1;
  ldv_35676: ;
  if (i < voices) {
    goto ldv_35675;
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___2(ice);
  }
  return (change);
}
}
static int wm_master_mute_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct phase28_spec *spec ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct phase28_spec *)ice->spec;
  ucontrol->value.integer.value[0] = (int )((short )spec->master[0]) >= 0;
  ucontrol->value.integer.value[1] = (int )((short )spec->master[1]) >= 0;
  return (0);
}
}
static int wm_master_mute_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  struct phase28_spec *spec ;
  int change ;
  int i ;
  int val ;
  int dac ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  spec = (struct phase28_spec *)ice->spec;
  change = 0;
  snd_ice1712_save_gpio_status___2(ice);
  i = 0;
  }
  goto ldv_35698;
  ldv_35697:
  val = (int )((short )spec->master[i]) >= 0;
  if (ucontrol->value.integer.value[i] != (long )val) {
    spec->master[i] = (unsigned int )spec->master[i] & 32767U;
    spec->master[i] = (unsigned short )((int )((short )spec->master[i]) | (ucontrol->value.integer.value[i] != 0L ? 0 : -32768));
    dac = 0;
    goto ldv_35695;
    ldv_35694:
    {
    wm_set_vol___1(ice, (unsigned int )(dac + i), (int )spec->vol[dac + i], (int )spec->master[i]);
    dac = dac + 2;
    }
    ldv_35695: ;
    if ((unsigned int )dac < ice->num_total_dacs) {
      goto ldv_35694;
    } else {
    }
    change = 1;
  } else {
  }
  i = i + 1;
  ldv_35698: ;
  if (i <= 1) {
    goto ldv_35697;
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___2(ice);
  }
  return (change);
}
}
static int wm_pcm_vol_info___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 1U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 128L;
  return (0);
}
}
static int wm_pcm_vol_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short val ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  ldv_mutex_lock_106___3(& ice->gpio_mutex);
  tmp = wm_get___2(ice, 17);
  val = (unsigned int )tmp & 255U;
  val = (unsigned int )val > 127U ? (unsigned int )val + 65409U : 0U;
  ucontrol->value.integer.value[0] = (long )val;
  ldv_mutex_unlock_107___3(& ice->gpio_mutex);
  }
  return (0);
}
}
static int wm_pcm_vol_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short ovol ;
  unsigned short nvol ;
  int change ;
  unsigned short tmp ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  change = 0;
  nvol = (unsigned short )ucontrol->value.integer.value[0];
  if ((unsigned int )nvol > 128U) {
    return (-22);
  } else {
  }
  {
  snd_ice1712_save_gpio_status___2(ice);
  nvol = (unsigned int )nvol != 0U ? ((unsigned int )nvol + 127U) & 255U : 0U;
  tmp = wm_get___2(ice, 17);
  ovol = (unsigned int )tmp & 255U;
  }
  if ((int )ovol != (int )nvol) {
    {
    wm_put___3(ice, 17, (int )nvol);
    wm_put_nocache___2(ice, 17, (int )((unsigned int )nvol | 256U));
    change = 1;
    }
  } else {
  }
  {
  snd_ice1712_restore_gpio_status___2(ice);
  }
  return (change);
}
}
static int phase28_deemp_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = wm_get___2(ice, 21);
  ucontrol->value.integer.value[0] = ((int )tmp & 15) == 15;
  }
  return (0);
}
}
static int phase28_deemp_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int temp ;
  int temp2 ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = wm_get___2(ice, 21);
  temp = (int )tmp;
  temp2 = temp;
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    temp = temp | 15;
  } else {
    temp = temp & -16;
  }
  if (temp != temp2) {
    {
    wm_put___3(ice, 21, (int )((unsigned short )temp));
    }
    return (1);
  } else {
  }
  return (0);
}
}
static int phase28_oversampling_info(struct snd_kcontrol *k , struct snd_ctl_elem_info *uinfo )
{
  char const *texts[2U] ;
  int tmp ;
  {
  {
  texts[0] = "128x";
  texts[1] = "64x";
  tmp = snd_ctl_enum_info(uinfo, 1U, 2U, (char const * const *)(& texts));
  }
  return (tmp);
}
}
static int phase28_oversampling_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = wm_get___2(ice, 23);
  ucontrol->value.enumerated.item[0] = ((int )tmp & 8) != 0;
  }
  return (0);
}
}
static int phase28_oversampling_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  int temp ;
  int temp2 ;
  struct snd_ice1712 *ice ;
  unsigned short tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = wm_get___2(ice, 23);
  temp = (int )tmp;
  temp2 = temp;
  }
  if (ucontrol->value.enumerated.item[0] != 0U) {
    temp = temp | 8;
  } else {
    temp = temp & -9;
  }
  if (temp != temp2) {
    {
    wm_put___3(ice, 23, (int )((unsigned short )temp));
    }
    return (1);
  } else {
  }
  return (0);
}
}
static unsigned int const db_scale_wm_dac___1[4U] = { 1U, 8U, 4294954596U, 65636U};
static unsigned int const db_scale_wm_pcm___0[4U] = { 1U, 8U, 4294960896U, 65586U};
static struct snd_kcontrol_new phase28_dac_controls[12U] =
  { {2, 0U, 0U, (unsigned char const *)"Master Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_stereo_info,
      & wm_master_mute_get___0, & wm_master_mute_put___0, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"Master Playback Volume", 0U, 19U, 0U, & wm_master_vol_info___1,
      & wm_master_vol_get___1, & wm_master_vol_put___1, {.p = (unsigned int const *)(& db_scale_wm_dac___1)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"Front Playback Switch", 0U, 0U, 0U, & wm_mute_info___0,
      & wm_mute_get___0, & wm_mute_put___0, {0}, 512UL},
        {2, 0U, 0U, (unsigned char const *)"Front Playback Volume", 0U, 19U, 0U, & wm_vol_info___0,
      & wm_vol_get___0, & wm_vol_put___0, {.p = (unsigned int const *)(& db_scale_wm_dac___1)},
      512UL},
        {2, 0U, 0U, (unsigned char const *)"Rear Playback Switch", 0U, 0U, 0U, & wm_mute_info___0,
      & wm_mute_get___0, & wm_mute_put___0, {0}, 514UL},
        {2, 0U, 0U, (unsigned char const *)"Rear Playback Volume", 0U, 19U, 0U, & wm_vol_info___0,
      & wm_vol_get___0, & wm_vol_put___0, {.p = (unsigned int const *)(& db_scale_wm_dac___1)},
      514UL},
        {2, 0U, 0U, (unsigned char const *)"Center Playback Switch", 0U, 0U, 0U, & wm_mute_info___0,
      & wm_mute_get___0, & wm_mute_put___0, {0}, 260UL},
        {2, 0U, 0U, (unsigned char const *)"Center Playback Volume", 0U, 19U, 0U, & wm_vol_info___0,
      & wm_vol_get___0, & wm_vol_put___0, {.p = (unsigned int const *)(& db_scale_wm_dac___1)},
      260UL},
        {2, 0U, 0U, (unsigned char const *)"LFE Playback Switch", 0U, 0U, 0U, & wm_mute_info___0,
      & wm_mute_get___0, & wm_mute_put___0, {0}, 261UL},
        {2, 0U, 0U, (unsigned char const *)"LFE Playback Volume", 0U, 19U, 0U, & wm_vol_info___0,
      & wm_vol_get___0, & wm_vol_put___0, {.p = (unsigned int const *)(& db_scale_wm_dac___1)},
      261UL},
        {2, 0U, 0U, (unsigned char const *)"Side Playback Switch", 0U, 0U, 0U, & wm_mute_info___0,
      & wm_mute_get___0, & wm_mute_put___0, {0}, 518UL},
        {2, 0U, 0U, (unsigned char const *)"Side Playback Volume", 0U, 19U, 0U, & wm_vol_info___0,
      & wm_vol_get___0, & wm_vol_put___0, {.p = (unsigned int const *)(& db_scale_wm_dac___1)},
      518UL}};
static struct snd_kcontrol_new wm_controls___0[4U] = { {2, 0U, 0U, (unsigned char const *)"PCM Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & wm_pcm_mute_get___0, & wm_pcm_mute_put___0, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"PCM Playback Volume", 0U, 19U, 0U, & wm_pcm_vol_info___0,
      & wm_pcm_vol_get___0, & wm_pcm_vol_put___0, {.p = (unsigned int const *)(& db_scale_wm_pcm___0)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"DAC Deemphasis Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & phase28_deemp_get, & phase28_deemp_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"ADC Oversampling", 0U, 0U, 0U, & phase28_oversampling_info,
      & phase28_oversampling_get, & phase28_oversampling_put, {0}, 0UL}};
static int phase28_add_controls(struct snd_ice1712 *ice )
{
  unsigned int i ;
  unsigned int counts ;
  int err ;
  struct snd_kcontrol *tmp ;
  struct snd_kcontrol *tmp___0 ;
  {
  counts = 12U;
  i = 0U;
  goto ldv_35762;
  ldv_35761:
  {
  tmp = snd_ctl_new1((struct snd_kcontrol_new const *)(& phase28_dac_controls) + (unsigned long )i,
                     (void *)ice);
  err = snd_ctl_add(ice->card, tmp);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_35762: ;
  if (i < counts) {
    goto ldv_35761;
  } else {
  }
  i = 0U;
  goto ldv_35767;
  ldv_35766:
  {
  tmp___0 = snd_ctl_new1((struct snd_kcontrol_new const *)(& wm_controls___0) + (unsigned long )i,
                         (void *)ice);
  err = snd_ctl_add(ice->card, tmp___0);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_35767: ;
  if (i <= 3U) {
    goto ldv_35766;
  } else {
  }
  return (0);
}
}
struct snd_ice1712_card_info snd_vt1724_phase_cards[4U] = { {991252497U, "Terratec PHASE 22", "phase22", 0, & phase22_init, 0, & phase22_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& phase22_eeprom)},
        {991250705U,
      "Terratec PHASE 28", "phase28", 0, & phase28_init, 0, & phase28_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& phase28_eeprom)},
        {991263505U,
      "Terrasoniq TS22 PCI", "TS22", 0, & phase22_init, 0, & phase22_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& phase22_eeprom)}};
void ldv_dummy_resourceless_instance_callback_18_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  phase22_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  phase22_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  phase28_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  phase28_init(arg1);
  }
  return;
}
}
static void ldv_mutex_lock_102___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_103___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_106___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_107___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
__inline static void stac9460_2_put(struct snd_ice1712 *ice , int reg , unsigned char val )
{
  {
  {
  snd_vt1724_write_i2c(ice, 86, (int )((unsigned char )reg), (int )val);
  }
  return;
}
}
__inline static unsigned char stac9460_2_get(struct snd_ice1712 *ice , int reg )
{
  unsigned char tmp ;
  {
  {
  tmp = snd_vt1724_read_i2c(ice, 86, (int )((unsigned char )reg));
  }
  return (tmp);
}
}
static int stac9460_dac_mute_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char val ;
  int idx ;
  int id___0 ;
  unsigned int tmp ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  if (kcontrol->private_value != 0UL) {
    idx = 2;
    id___0 = 0;
  } else {
    {
    tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
    id___0 = (int )tmp;
    idx = id___0 + 3;
    }
  }
  if (id___0 <= 5) {
    {
    val = stac9460_get(ice, idx);
    }
  } else {
    {
    val = stac9460_2_get(ice, idx + -6);
    }
  }
  ucontrol->value.integer.value[0] = (long )(~ ((int )val) >> 7) & 1L;
  return (0);
}
}
static int stac9460_dac_mute_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char new ;
  unsigned char old ;
  int id___0 ;
  int idx ;
  int change ;
  unsigned int tmp ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  if (kcontrol->private_value != 0UL) {
    {
    idx = 2;
    old = stac9460_get(ice, idx);
    new = (unsigned char )((int )((signed char )(~ ucontrol->value.integer.value[0] << 7)) | ((int )((signed char )old) & 127));
    change = (int )new != (int )old;
    }
    if (change != 0) {
      {
      stac9460_put(ice, idx, (int )new);
      stac9460_2_put(ice, idx, (int )new);
      }
    } else {
    }
  } else {
    {
    tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
    id___0 = (int )tmp;
    idx = id___0 + 3;
    }
    if (id___0 <= 5) {
      {
      old = stac9460_get(ice, idx);
      }
    } else {
      {
      old = stac9460_2_get(ice, idx + -6);
      }
    }
    new = (unsigned char )((int )((signed char )(~ ucontrol->value.integer.value[0] << 7)) | ((int )((signed char )old) & 127));
    change = (int )new != (int )old;
    if (change != 0) {
      if (id___0 <= 5) {
        {
        stac9460_put(ice, idx, (int )new);
        }
      } else {
        {
        stac9460_2_put(ice, idx + -6, (int )new);
        }
      }
    } else {
    }
  }
  return (change);
}
}
static int stac9460_dac_vol_info___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 1U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 127L;
  return (0);
}
}
static int stac9460_dac_vol_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int idx ;
  int id___0 ;
  unsigned char vol ;
  unsigned int tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  if (kcontrol->private_value != 0UL) {
    idx = 2;
    id___0 = 0;
  } else {
    {
    tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
    id___0 = (int )tmp;
    idx = id___0 + 3;
    }
  }
  if (id___0 <= 5) {
    {
    tmp___0 = stac9460_get(ice, idx);
    vol = (unsigned int )tmp___0 & 127U;
    }
  } else {
    {
    tmp___1 = stac9460_2_get(ice, idx + -6);
    vol = (unsigned int )tmp___1 & 127U;
    }
  }
  ucontrol->value.integer.value[0] = (long )(127 - (int )vol);
  return (0);
}
}
static int stac9460_dac_vol_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int idx ;
  int id___0 ;
  unsigned char tmp ;
  unsigned char ovol ;
  unsigned char nvol ;
  int change ;
  unsigned int tmp___0 ;
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  if (kcontrol->private_value != 0UL) {
    {
    idx = 2;
    nvol = (unsigned int )((unsigned char )ucontrol->value.integer.value[0]) & 127U;
    tmp = stac9460_get(ice, idx);
    ovol = (unsigned int )(~ ((int )tmp)) & 127U;
    change = (int )ovol != (int )nvol;
    }
    if (change != 0) {
      {
      stac9460_put(ice, idx, (int )((unsigned char )((int )((signed char )(127U - (unsigned int )nvol)) | ((int )((signed char )tmp) & -128))));
      stac9460_2_put(ice, idx, (int )((unsigned char )((int )((signed char )(127U - (unsigned int )nvol)) | ((int )((signed char )tmp) & -128))));
      }
    } else {
    }
  } else {
    {
    tmp___0 = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
    id___0 = (int )tmp___0;
    idx = id___0 + 3;
    nvol = (unsigned int )((unsigned char )ucontrol->value.integer.value[0]) & 127U;
    }
    if (id___0 <= 5) {
      {
      tmp = stac9460_get(ice, idx);
      }
    } else {
      {
      tmp = stac9460_2_get(ice, idx + -6);
      }
    }
    ovol = (unsigned int )(~ ((int )tmp)) & 127U;
    change = (int )ovol != (int )nvol;
    if (change != 0) {
      if (id___0 <= 5) {
        {
        stac9460_put(ice, idx, (int )((unsigned char )((int )((signed char )(127U - (unsigned int )nvol)) | ((int )((signed char )tmp) & -128))));
        }
      } else {
        {
        stac9460_2_put(ice, idx + -6, (int )((unsigned char )((int )((signed char )(127U - (unsigned int )nvol)) | ((int )((signed char )tmp) & -128))));
        }
      }
    } else {
    }
  }
  return (change);
}
}
static int stac9460_adc_mute_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char val ;
  int i ;
  int id___0 ;
  unsigned int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
  id___0 = (int )tmp;
  }
  if (id___0 == 0) {
    i = 0;
    goto ldv_35548;
    ldv_35547:
    {
    val = stac9460_get(ice, i + 9);
    ucontrol->value.integer.value[i] = (long )(~ ((int )val) >> 7) & 1L;
    i = i + 1;
    }
    ldv_35548: ;
    if (i <= 1) {
      goto ldv_35547;
    } else {
    }
  } else {
    i = 0;
    goto ldv_35551;
    ldv_35550:
    {
    val = stac9460_2_get(ice, i + 9);
    ucontrol->value.integer.value[i] = (long )(~ ((int )val) >> 7) & 1L;
    i = i + 1;
    }
    ldv_35551: ;
    if (i <= 1) {
      goto ldv_35550;
    } else {
    }
  }
  return (0);
}
}
static int stac9460_adc_mute_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char new ;
  unsigned char old ;
  int i ;
  int reg ;
  int id___0 ;
  int change ;
  unsigned int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
  id___0 = (int )tmp;
  }
  if (id___0 == 0) {
    i = 0;
    goto ldv_35565;
    ldv_35564:
    {
    reg = i + 9;
    old = stac9460_get(ice, reg);
    new = (unsigned char )((int )((signed char )(~ ucontrol->value.integer.value[i] << 7)) | ((int )((signed char )old) & 127));
    change = (int )new != (int )old;
    }
    if (change != 0) {
      {
      stac9460_put(ice, reg, (int )new);
      }
    } else {
    }
    i = i + 1;
    ldv_35565: ;
    if (i <= 1) {
      goto ldv_35564;
    } else {
    }
  } else {
    i = 0;
    goto ldv_35568;
    ldv_35567:
    {
    reg = i + 9;
    old = stac9460_2_get(ice, reg);
    new = (unsigned char )((int )((signed char )(~ ucontrol->value.integer.value[i] << 7)) | ((int )((signed char )old) & 127));
    change = (int )new != (int )old;
    }
    if (change != 0) {
      {
      stac9460_2_put(ice, reg, (int )new);
      }
    } else {
    }
    i = i + 1;
    ldv_35568: ;
    if (i <= 1) {
      goto ldv_35567;
    } else {
    }
  }
  return (change);
}
}
static int stac9460_adc_vol_info___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 15L;
  return (0);
}
}
static int stac9460_adc_vol_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int i ;
  int reg ;
  int id___0 ;
  unsigned char vol ;
  unsigned int tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
  id___0 = (int )tmp;
  }
  if (id___0 == 0) {
    i = 0;
    goto ldv_35584;
    ldv_35583:
    {
    reg = i + 9;
    tmp___0 = stac9460_get(ice, reg);
    vol = (unsigned int )tmp___0 & 15U;
    ucontrol->value.integer.value[i] = (long )(15 - (int )vol);
    i = i + 1;
    }
    ldv_35584: ;
    if (i <= 1) {
      goto ldv_35583;
    } else {
    }
  } else {
    i = 0;
    goto ldv_35587;
    ldv_35586:
    {
    reg = i + 9;
    tmp___1 = stac9460_2_get(ice, reg);
    vol = (unsigned int )tmp___1 & 15U;
    ucontrol->value.integer.value[i] = (long )(15 - (int )vol);
    i = i + 1;
    }
    ldv_35587: ;
    if (i <= 1) {
      goto ldv_35586;
    } else {
    }
  }
  return (0);
}
}
static int stac9460_adc_vol_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int i ;
  int reg ;
  int id___0 ;
  unsigned char ovol ;
  unsigned char nvol ;
  int change ;
  unsigned int tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
  id___0 = (int )tmp;
  }
  if (id___0 == 0) {
    i = 0;
    goto ldv_35601;
    ldv_35600:
    {
    reg = i + 9;
    nvol = (unsigned int )((unsigned char )ucontrol->value.integer.value[i]) & 15U;
    tmp___0 = stac9460_get(ice, reg);
    ovol = 15U - (unsigned int )tmp___0;
    change = ((int )ovol & 15) != (int )nvol;
    }
    if (change != 0) {
      {
      stac9460_put(ice, reg, (int )((unsigned char )((int )((signed char )(15U - (unsigned int )nvol)) | ((int )((signed char )ovol) & -16))));
      }
    } else {
    }
    i = i + 1;
    ldv_35601: ;
    if (i <= 1) {
      goto ldv_35600;
    } else {
    }
  } else {
    i = 0;
    goto ldv_35604;
    ldv_35603:
    {
    reg = i + 9;
    nvol = (unsigned int )((unsigned char )ucontrol->value.integer.value[i]) & 15U;
    tmp___1 = stac9460_2_get(ice, reg);
    ovol = 15U - (unsigned int )tmp___1;
    change = ((int )ovol & 15) != (int )nvol;
    }
    if (change != 0) {
      {
      stac9460_2_put(ice, reg, (int )((unsigned char )((int )((signed char )(15U - (unsigned int )nvol)) | ((int )((signed char )ovol) & -16))));
      }
    } else {
    }
    i = i + 1;
    ldv_35604: ;
    if (i <= 1) {
      goto ldv_35603;
    } else {
    }
  }
  return (change);
}
}
static int stac9460_mic_sw_get___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char val ;
  int id___0 ;
  unsigned int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
  id___0 = (int )tmp;
  }
  if (id___0 == 0) {
    {
    val = stac9460_get(ice, 13);
    }
  } else {
    {
    val = stac9460_2_get(ice, 13);
    }
  }
  ucontrol->value.integer.value[0] = (long )(~ ((int )val) >> 7) & 1L;
  return (0);
}
}
static int stac9460_mic_sw_put___0(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned char new ;
  unsigned char old ;
  int change ;
  int id___0 ;
  unsigned int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
  id___0 = (int )tmp;
  }
  if (id___0 == 0) {
    {
    old = stac9460_get(ice, 13);
    }
  } else {
    {
    old = stac9460_2_get(ice, 13);
    }
  }
  new = (unsigned char )((int )((signed char )(~ ucontrol->value.integer.value[0] << 7)) | ((int )((signed char )old) & 127));
  change = (int )new != (int )old;
  if (change != 0) {
    if (id___0 == 0) {
      {
      stac9460_put(ice, 13, (int )new);
      }
    } else {
      {
      stac9460_2_put(ice, 13, (int )new);
      }
    }
  } else {
  }
  return (change);
}
}
static struct snd_kcontrol_new stac9640_controls[7U] = { {2, 0U, 0U, (unsigned char const *)"Master Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & stac9460_dac_mute_get___0, & stac9460_dac_mute_put___0, {0}, 1UL},
        {2, 0U, 0U, (unsigned char const *)"Master Playback Volume", 0U, 0U, 0U, & stac9460_dac_vol_info___0,
      & stac9460_dac_vol_get___0, & stac9460_dac_vol_put___0, {0}, 1UL},
        {2, 0U, 0U, (unsigned char const *)"MIC/Line switch", 0U, 0U, 2U, & snd_ctl_boolean_mono_info,
      & stac9460_mic_sw_get___0, & stac9460_mic_sw_put___0, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"DAC Switch", 0U, 0U, 8U, & snd_ctl_boolean_mono_info,
      & stac9460_dac_mute_get___0, & stac9460_dac_mute_put___0, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"DAC Volume", 0U, 0U, 8U, & stac9460_dac_vol_info___0,
      & stac9460_dac_vol_get___0, & stac9460_dac_vol_put___0, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"ADC Switch", 0U, 0U, 2U, & snd_ctl_boolean_stereo_info,
      & stac9460_adc_mute_get___0, & stac9460_adc_mute_put___0, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"ADC Volume", 0U, 0U, 2U, & stac9460_adc_vol_info___0,
      & stac9460_adc_vol_get___0, & stac9460_adc_vol_put___0, {0}, 0UL}};
static int wtm_add_controls(struct snd_ice1712 *ice )
{
  unsigned int i ;
  int err ;
  struct snd_kcontrol *tmp ;
  {
  i = 0U;
  goto ldv_35631;
  ldv_35630:
  {
  tmp = snd_ctl_new1((struct snd_kcontrol_new const *)(& stac9640_controls) + (unsigned long )i,
                     (void *)ice);
  err = snd_ctl_add(ice->card, tmp);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_35631: ;
  if (i <= 6U) {
    goto ldv_35630;
  } else {
  }
  return (0);
}
}
static int wtm_init(struct snd_ice1712 *ice )
{
  unsigned short stac_inits_prodigy[3U] ;
  unsigned short *p ;
  {
  stac_inits_prodigy[0] = 0U;
  stac_inits_prodigy[1] = 0U;
  stac_inits_prodigy[2] = 65535U;
  ice->num_total_dacs = 8U;
  ice->num_total_adcs = 4U;
  ice->force_rdma1 = 1U;
  p = (unsigned short *)(& stac_inits_prodigy);
  goto ldv_35639;
  ldv_35638:
  {
  stac9460_put(ice, (int )*p, (int )((unsigned char )*(p + 1UL)));
  stac9460_2_put(ice, (int )*p, (int )((unsigned char )*(p + 1UL)));
  p = p + 2UL;
  }
  ldv_35639: ;
  if ((unsigned int )*p != 65535U) {
    goto ldv_35638;
  } else {
  }
  return (0);
}
}
static unsigned char wtm_eeprom[13U] =
  { 71U, 128U, 248U, 193U,
        159U, 255U, 127U, 159U,
        255U, 127U, 22U, 128U,
        0U};
struct snd_ice1712_card_info snd_vt1724_wtm_cards[2U] = { {910775109U, "ESI Waveterminal 192M", "WT192M", 0, & wtm_init, 0, & wtm_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& wtm_eeprom)}};
void ldv_dummy_resourceless_instance_callback_29_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  wtm_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_29_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  wtm_init(arg1);
  }
  return;
}
}
static void ldv_mutex_lock_102___3(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_103___3(struct mutex *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void snd_ice1712_save_gpio_status___3(struct snd_ice1712 *ice )
{
  {
  {
  ldv_mutex_lock_102___3(& ice->gpio_mutex);
  ice->gpio.saved[0] = ice->gpio.direction;
  ice->gpio.saved[1] = ice->gpio.write_mask;
  }
  return;
}
}
__inline static void snd_ice1712_restore_gpio_status___3(struct snd_ice1712 *ice )
{
  {
  {
  (*(ice->gpio.set_dir))(ice, ice->gpio.saved[0]);
  (*(ice->gpio.set_mask))(ice, ice->gpio.saved[1]);
  ice->gpio.direction = ice->gpio.saved[0];
  ice->gpio.write_mask = ice->gpio.saved[1];
  ldv_mutex_unlock_103___3(& ice->gpio_mutex);
  }
  return;
}
}
static void se200pci_WM8740_init(struct snd_ice1712 *ice )
{
  {
  return;
}
}
static void se200pci_WM8740_set_pro_rate(struct snd_ice1712 *ice , unsigned int rate )
{
  {
  return;
}
}
static void se200pci_WM8766_write(struct snd_ice1712 *ice , unsigned int addr , unsigned int data )
{
  unsigned int st ;
  unsigned int bits ;
  int i ;
  unsigned int DATA ;
  unsigned int CLOCK ;
  unsigned int LOAD ;
  unsigned int ALL_MASK ;
  unsigned int tmp ;
  {
  {
  DATA = 65536U;
  CLOCK = 131072U;
  LOAD = 262144U;
  ALL_MASK = 458752U;
  snd_ice1712_save_gpio_status___3(ice);
  st = ((addr << 9) & 65535U) | (data & 511U);
  snd_ice1712_gpio_set_dir(ice, ice->gpio.direction | 458752U);
  snd_ice1712_gpio_set_mask(ice, ice->gpio.write_mask & 4294508543U);
  tmp = snd_ice1712_gpio_read(ice);
  bits = tmp & 4294508543U;
  snd_ice1712_gpio_write(ice, bits);
  i = 0;
  }
  goto ldv_35505;
  ldv_35504:
  {
  __const_udelay(4295UL);
  bits = bits & 4294836223U;
  st = st << 1;
  }
  if ((st & 65536U) != 0U) {
    bits = bits | 65536U;
  } else {
    bits = bits & 4294901759U;
  }
  {
  snd_ice1712_gpio_write(ice, bits);
  __const_udelay(4295UL);
  bits = bits | 131072U;
  snd_ice1712_gpio_write(ice, bits);
  i = i + 1;
  }
  ldv_35505: ;
  if (i <= 15) {
    goto ldv_35504;
  } else {
  }
  {
  __const_udelay(4295UL);
  bits = bits | 262144U;
  snd_ice1712_gpio_write(ice, bits);
  __const_udelay(4295UL);
  bits = bits | 196608U;
  snd_ice1712_gpio_write(ice, bits);
  snd_ice1712_restore_gpio_status___3(ice);
  }
  return;
}
}
static void se200pci_WM8766_set_volume(struct snd_ice1712 *ice , int ch , unsigned int vol1 ,
                                       unsigned int vol2 )
{
  {
  {
  if (ch == 0) {
    goto case_0;
  } else {
  }
  if (ch == 1) {
    goto case_1;
  } else {
  }
  if (ch == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_0:
  {
  se200pci_WM8766_write(ice, 0U, vol1);
  se200pci_WM8766_write(ice, 1U, vol2 | 256U);
  }
  goto ldv_35514;
  case_1:
  {
  se200pci_WM8766_write(ice, 4U, vol1);
  se200pci_WM8766_write(ice, 5U, vol2 | 256U);
  }
  goto ldv_35514;
  case_2:
  {
  se200pci_WM8766_write(ice, 6U, vol1);
  se200pci_WM8766_write(ice, 7U, vol2 | 256U);
  }
  goto ldv_35514;
  switch_break: ;
  }
  ldv_35514: ;
  return;
}
}
static void se200pci_WM8766_init(struct snd_ice1712 *ice )
{
  {
  {
  se200pci_WM8766_write(ice, 31U, 0U);
  __const_udelay(42950UL);
  se200pci_WM8766_set_volume(ice, 0, 0U, 0U);
  se200pci_WM8766_set_volume(ice, 1, 0U, 0U);
  se200pci_WM8766_set_volume(ice, 2, 0U, 0U);
  se200pci_WM8766_write(ice, 3U, 34U);
  se200pci_WM8766_write(ice, 10U, 128U);
  se200pci_WM8766_write(ice, 18U, 0U);
  se200pci_WM8766_write(ice, 21U, 0U);
  se200pci_WM8766_write(ice, 9U, 0U);
  se200pci_WM8766_write(ice, 2U, 292U);
  se200pci_WM8766_write(ice, 2U, 288U);
  }
  return;
}
}
static void se200pci_WM8766_set_pro_rate(struct snd_ice1712 *ice , unsigned int rate )
{
  {
  if (rate > 96000U) {
    {
    se200pci_WM8766_write(ice, 10U, 0U);
    }
  } else {
    {
    se200pci_WM8766_write(ice, 10U, 128U);
    }
  }
  return;
}
}
static void se200pci_WM8776_write(struct snd_ice1712 *ice , unsigned int addr , unsigned int data )
{
  unsigned int val ;
  {
  {
  val = (addr << 9) | data;
  snd_vt1724_write_i2c(ice, 52, (int )((unsigned char )(val >> 8)), (int )((unsigned char )val));
  }
  return;
}
}
static void se200pci_WM8776_set_output_volume(struct snd_ice1712 *ice , unsigned int vol1 ,
                                              unsigned int vol2 )
{
  {
  {
  se200pci_WM8776_write(ice, 3U, vol1);
  se200pci_WM8776_write(ice, 4U, vol2 | 256U);
  }
  return;
}
}
static void se200pci_WM8776_set_input_volume(struct snd_ice1712 *ice , unsigned int vol1 ,
                                             unsigned int vol2 )
{
  {
  {
  se200pci_WM8776_write(ice, 14U, vol1);
  se200pci_WM8776_write(ice, 15U, vol2 | 256U);
  }
  return;
}
}
static char const * const se200pci_sel[5U] = { "LINE-IN", "CD-IN", "MIC-IN", "ALL-MIX",
        (char const *)0};
static void se200pci_WM8776_set_input_selector(struct snd_ice1712 *ice , unsigned int sel )
{
  unsigned char vals[5U] ;
  {
  vals[0] = 16U;
  vals[1] = 4U;
  vals[2] = 8U;
  vals[3] = 28U;
  vals[4] = 3U;
  if (sel > 4U) {
    sel = 4U;
  } else {
  }
  {
  se200pci_WM8776_write(ice, 21U, (unsigned int )vals[sel]);
  }
  return;
}
}
static void se200pci_WM8776_set_afl(struct snd_ice1712 *ice , unsigned int afl )
{
  {
  if (afl != 0U) {
    {
    se200pci_WM8776_write(ice, 22U, 5U);
    }
  } else {
    {
    se200pci_WM8776_write(ice, 22U, 1U);
    }
  }
  return;
}
}
static char const * const se200pci_agc[4U] = { "Off", "LimiterMode", "ALCMode", (char const *)0};
static void se200pci_WM8776_set_agc(struct snd_ice1712 *ice , unsigned int agc )
{
  {
  {
  if (agc == 0U) {
    goto case_0;
  } else {
  }
  if (agc == 1U) {
    goto case_1;
  } else {
  }
  if (agc == 2U) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_0:
  {
  se200pci_WM8776_write(ice, 17U, 0U);
  }
  goto ldv_35556;
  case_1:
  {
  se200pci_WM8776_write(ice, 16U, 123U);
  se200pci_WM8776_write(ice, 17U, 256U);
  }
  goto ldv_35556;
  case_2:
  {
  se200pci_WM8776_write(ice, 16U, 507U);
  se200pci_WM8776_write(ice, 17U, 256U);
  }
  goto ldv_35556;
  switch_break: ;
  }
  ldv_35556: ;
  return;
}
}
static void se200pci_WM8776_init(struct snd_ice1712 *ice )
{
  int i ;
  unsigned short default_values[23U] ;
  {
  {
  default_values[0] = 256U;
  default_values[1] = 256U;
  default_values[2] = 256U;
  default_values[3] = 256U;
  default_values[4] = 256U;
  default_values[5] = 256U;
  default_values[6] = 0U;
  default_values[7] = 144U;
  default_values[8] = 0U;
  default_values[9] = 0U;
  default_values[10] = 34U;
  default_values[11] = 34U;
  default_values[12] = 34U;
  default_values[13] = 8U;
  default_values[14] = 207U;
  default_values[15] = 207U;
  default_values[16] = 123U;
  default_values[17] = 0U;
  default_values[18] = 50U;
  default_values[19] = 0U;
  default_values[20] = 166U;
  default_values[21] = 1U;
  default_values[22] = 1U;
  se200pci_WM8776_write(ice, 23U, 0U);
  __const_udelay(42950UL);
  i = 0;
  }
  goto ldv_35567;
  ldv_35566:
  {
  se200pci_WM8776_write(ice, (unsigned int )i, (unsigned int )default_values[i]);
  i = i + 1;
  }
  ldv_35567: ;
  if ((unsigned int )i <= 22U) {
    goto ldv_35566;
  } else {
  }
  {
  se200pci_WM8776_set_input_selector(ice, 0U);
  se200pci_WM8776_set_afl(ice, 0U);
  se200pci_WM8776_set_agc(ice, 0U);
  se200pci_WM8776_set_input_volume(ice, 0U, 0U);
  se200pci_WM8776_set_output_volume(ice, 0U, 0U);
  se200pci_WM8776_write(ice, 0U, 0U);
  se200pci_WM8776_write(ice, 1U, 0U);
  se200pci_WM8776_write(ice, 2U, 256U);
  se200pci_WM8776_write(ice, 13U, 128U);
  }
  return;
}
}
static void se200pci_WM8776_set_pro_rate(struct snd_ice1712 *ice , unsigned int rate )
{
  {
  return;
}
}
static void se200pci_set_pro_rate(struct snd_ice1712 *ice , unsigned int rate )
{
  {
  {
  se200pci_WM8740_set_pro_rate(ice, rate);
  se200pci_WM8766_set_pro_rate(ice, rate);
  se200pci_WM8776_set_pro_rate(ice, rate);
  }
  return;
}
}
static struct se200pci_control const se200pci_cont[8U] =
  { {"Front Playback Volume", 2, 0, 0, 0, "Front(green)"},
        {"Side Playback Volume", 0, 0, 1, 0, "Surround(orange)"},
        {"Surround Playback Volume", 0, 0, 2, 0, "SurroundBack(white)"},
        {"CLFE Playback Volume", 0, 0, 0, 0, "Center(Lch)&SubWoofer(Rch)(black)"},
        {"Capture Volume", 1, 1, 0, 0, 0},
        {"Capture Select", 3, 3, 0, (char const * const *)(& se200pci_sel), 0},
        {"AGC Capture Mode", 4, 3, 0, (char const * const *)(& se200pci_agc), 0},
        {"AFL Bypass Playback Switch", 5, 2, 0, 0, 0}};
static int se200pci_get_enum_count(int n )
{
  char const * const *member ;
  int c ;
  {
  member = se200pci_cont[n].member;
  if ((unsigned long )member == (unsigned long )((char const * const *)0)) {
    return (0);
  } else {
  }
  c = 0;
  goto ldv_35603;
  ldv_35602:
  c = c + 1;
  ldv_35603: ;
  if ((unsigned long )*(member + (unsigned long )c) != (unsigned long )((char const * )0)) {
    goto ldv_35602;
  } else {
  }
  return (c);
}
}
static int se200pci_cont_volume_info(struct snd_kcontrol *kc , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 255L;
  return (0);
}
}
static int se200pci_cont_enum_info(struct snd_kcontrol *kc , struct snd_ctl_elem_info *uinfo )
{
  int n ;
  int c ;
  int tmp ;
  {
  {
  n = (int )kc->private_value;
  c = se200pci_get_enum_count(n);
  }
  if (c == 0) {
    return (-22);
  } else {
  }
  {
  tmp = snd_ctl_enum_info(uinfo, 1U, (unsigned int )c, se200pci_cont[n].member);
  }
  return (tmp);
}
}
static int se200pci_cont_volume_get(struct snd_kcontrol *kc , struct snd_ctl_elem_value *uc )
{
  struct snd_ice1712 *ice ;
  struct se_spec *spec ;
  int n ;
  {
  ice = (struct snd_ice1712 *)kc->private_data;
  spec = (struct se_spec *)ice->spec;
  n = (int )kc->private_value;
  uc->value.integer.value[0] = (long )spec->vol[n].ch1;
  uc->value.integer.value[1] = (long )spec->vol[n].ch2;
  return (0);
}
}
static int se200pci_cont_boolean_get(struct snd_kcontrol *kc , struct snd_ctl_elem_value *uc )
{
  struct snd_ice1712 *ice ;
  struct se_spec *spec ;
  int n ;
  {
  ice = (struct snd_ice1712 *)kc->private_data;
  spec = (struct se_spec *)ice->spec;
  n = (int )kc->private_value;
  uc->value.integer.value[0] = (long )spec->vol[n].ch1;
  return (0);
}
}
static int se200pci_cont_enum_get(struct snd_kcontrol *kc , struct snd_ctl_elem_value *uc )
{
  struct snd_ice1712 *ice ;
  struct se_spec *spec ;
  int n ;
  {
  ice = (struct snd_ice1712 *)kc->private_data;
  spec = (struct se_spec *)ice->spec;
  n = (int )kc->private_value;
  uc->value.enumerated.item[0] = (unsigned int )spec->vol[n].ch1;
  return (0);
}
}
static void se200pci_cont_update(struct snd_ice1712 *ice , int n )
{
  struct se_spec *spec ;
  {
  spec = (struct se_spec *)ice->spec;
  {
  if ((unsigned int )se200pci_cont[n].target == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )se200pci_cont[n].target == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )se200pci_cont[n].target == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )se200pci_cont[n].target == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )se200pci_cont[n].target == 4U) {
    goto case_4;
  } else {
  }
  if ((unsigned int )se200pci_cont[n].target == 5U) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_0:
  {
  se200pci_WM8766_set_volume(ice, se200pci_cont[n].ch, (unsigned int )spec->vol[n].ch1,
                             (unsigned int )spec->vol[n].ch2);
  }
  goto ldv_35642;
  case_1:
  {
  se200pci_WM8776_set_input_volume(ice, (unsigned int )spec->vol[n].ch1, (unsigned int )spec->vol[n].ch2);
  }
  goto ldv_35642;
  case_2:
  {
  se200pci_WM8776_set_output_volume(ice, (unsigned int )spec->vol[n].ch1, (unsigned int )spec->vol[n].ch2);
  }
  goto ldv_35642;
  case_3:
  {
  se200pci_WM8776_set_input_selector(ice, (unsigned int )spec->vol[n].ch1);
  }
  goto ldv_35642;
  case_4:
  {
  se200pci_WM8776_set_agc(ice, (unsigned int )spec->vol[n].ch1);
  }
  goto ldv_35642;
  case_5:
  {
  se200pci_WM8776_set_afl(ice, (unsigned int )spec->vol[n].ch1);
  }
  goto ldv_35642;
  switch_default: ;
  goto ldv_35642;
  switch_break: ;
  }
  ldv_35642: ;
  return;
}
}
static int se200pci_cont_volume_put(struct snd_kcontrol *kc , struct snd_ctl_elem_value *uc )
{
  struct snd_ice1712 *ice ;
  struct se_spec *spec ;
  int n ;
  unsigned int vol1 ;
  unsigned int vol2 ;
  int changed ;
  {
  ice = (struct snd_ice1712 *)kc->private_data;
  spec = (struct se_spec *)ice->spec;
  n = (int )kc->private_value;
  changed = 0;
  vol1 = (unsigned int )uc->value.integer.value[0] & 255U;
  vol2 = (unsigned int )uc->value.integer.value[1] & 255U;
  if ((unsigned int )spec->vol[n].ch1 != vol1) {
    spec->vol[n].ch1 = (unsigned char )vol1;
    changed = 1;
  } else {
  }
  if ((unsigned int )spec->vol[n].ch2 != vol2) {
    spec->vol[n].ch2 = (unsigned char )vol2;
    changed = 1;
  } else {
  }
  if (changed != 0) {
    {
    se200pci_cont_update(ice, n);
    }
  } else {
  }
  return (changed);
}
}
static int se200pci_cont_boolean_put(struct snd_kcontrol *kc , struct snd_ctl_elem_value *uc )
{
  struct snd_ice1712 *ice ;
  struct se_spec *spec ;
  int n ;
  unsigned int vol1 ;
  {
  ice = (struct snd_ice1712 *)kc->private_data;
  spec = (struct se_spec *)ice->spec;
  n = (int )kc->private_value;
  vol1 = uc->value.integer.value[0] != 0L;
  if ((unsigned int )spec->vol[n].ch1 != vol1) {
    {
    spec->vol[n].ch1 = (unsigned char )vol1;
    se200pci_cont_update(ice, n);
    }
    return (1);
  } else {
  }
  return (0);
}
}
static int se200pci_cont_enum_put(struct snd_kcontrol *kc , struct snd_ctl_elem_value *uc )
{
  struct snd_ice1712 *ice ;
  struct se_spec *spec ;
  int n ;
  unsigned int vol1 ;
  int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kc->private_data;
  spec = (struct se_spec *)ice->spec;
  n = (int )kc->private_value;
  vol1 = uc->value.enumerated.item[0];
  tmp = se200pci_get_enum_count(n);
  }
  if (vol1 >= (unsigned int )tmp) {
    return (-22);
  } else {
  }
  if ((unsigned int )spec->vol[n].ch1 != vol1) {
    {
    spec->vol[n].ch1 = (unsigned char )vol1;
    se200pci_cont_update(ice, n);
    }
    return (1);
  } else {
  }
  return (0);
}
}
static unsigned int const db_scale_gain1[4U] = { 1U, 8U, 4294954546U, 65586U};
static unsigned int const db_scale_gain2[4U] = { 1U, 8U, 4294956946U, 65586U};
static int se200pci_add_controls(struct snd_ice1712 *ice )
{
  int i ;
  struct snd_kcontrol_new cont ;
  int err ;
  int __ret_warn_on ;
  long tmp ;
  struct snd_kcontrol *tmp___0 ;
  {
  {
  memset((void *)(& cont), 0, 80UL);
  cont.iface = 2;
  i = 0;
  }
  goto ldv_35696;
  ldv_35695:
  cont.private_value = (unsigned long )i;
  cont.name = (unsigned char const *)se200pci_cont[i].name;
  cont.access = 3U;
  cont.tlv.p = (unsigned int const *)0U;
  {
  if ((unsigned int )se200pci_cont[i].type == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )se200pci_cont[i].type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )se200pci_cont[i].type == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )se200pci_cont[i].type == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_1:
  cont.info = & se200pci_cont_volume_info;
  cont.get = & se200pci_cont_volume_get;
  cont.put = & se200pci_cont_volume_put;
  cont.access = cont.access | 16U;
  if ((unsigned int )se200pci_cont[i].type == 0U) {
    cont.tlv.p = (unsigned int const *)(& db_scale_gain1);
  } else {
    cont.tlv.p = (unsigned int const *)(& db_scale_gain2);
  }
  goto ldv_35689;
  case_2:
  cont.info = & snd_ctl_boolean_mono_info;
  cont.get = & se200pci_cont_boolean_get;
  cont.put = & se200pci_cont_boolean_put;
  goto ldv_35689;
  case_3:
  cont.info = & se200pci_cont_enum_info;
  cont.get = & se200pci_cont_enum_get;
  cont.put = & se200pci_cont_enum_put;
  goto ldv_35689;
  switch_default:
  {
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_fmt("sound/pci/ice1712/se.c", 631, "BUG?\n");
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  return (-22);
  switch_break: ;
  }
  ldv_35689:
  {
  tmp___0 = snd_ctl_new1((struct snd_kcontrol_new const *)(& cont), (void *)ice);
  err = snd_ctl_add(ice->card, tmp___0);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1;
  ldv_35696: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_35695;
  } else {
  }
  return (0);
}
}
static int se_init(struct snd_ice1712 *ice )
{
  struct se_spec *spec ;
  void *tmp ;
  {
  {
  tmp = kzalloc(16UL, 208U);
  spec = (struct se_spec *)tmp;
  }
  if ((unsigned long )spec == (unsigned long )((struct se_spec *)0)) {
    return (-12);
  } else {
  }
  ice->spec = (void *)spec;
  if (ice->eeprom.subvendor == 185995264U) {
    ice->num_total_dacs = 2U;
    ice->num_total_adcs = 0U;
    ice->vt1720 = 1U;
    return (0);
  } else
  if (ice->eeprom.subvendor == 185991424U) {
    {
    ice->num_total_dacs = 8U;
    ice->num_total_adcs = 2U;
    se200pci_WM8740_init(ice);
    se200pci_WM8766_init(ice);
    se200pci_WM8776_init(ice);
    ice->gpio.set_pro_rate = & se200pci_set_pro_rate;
    }
    return (0);
  } else {
  }
  return (-2);
}
}
static int se_add_controls(struct snd_ice1712 *ice )
{
  int err ;
  {
  err = 0;
  if (ice->eeprom.subvendor == 185991424U) {
    {
    err = se200pci_add_controls(ice);
    }
  } else {
  }
  return (err);
}
}
static unsigned char se200pci_eeprom[13U] =
  { 75U, 128U, 120U, 195U,
        2U, 0U, 7U, 0U,
        0U, 0U, 0U, 0U,
        7U};
static unsigned char se90pci_eeprom[4U] = { 75U, 128U, 120U, 195U};
struct snd_ice1712_card_info snd_vt1724_se_cards[3U] = { {185991424U, "ONKYO SE200PCI", "se200pci", 0, & se_init, 0, & se_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& se200pci_eeprom)},
        {185995264U,
      "ONKYO SE90PCI", "se90pci", 0, & se_init, 0, & se_add_controls, (unsigned char)0,
      0U, 0U, 0, 0, 4U, (unsigned char const *)(& se90pci_eeprom)}};
void ldv_dummy_resourceless_instance_callback_27_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  se_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_27_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  se_init(arg1);
  }
  return;
}
}
static void ldv_mutex_lock_102___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_103___3(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104___4(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_106___4(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_108___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_110___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_112___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_114___2(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_snd_maya44(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_snd_maya44(struct mutex *lock ) ;
static void ldv_mutex_unlock_105___4(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_107___4(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_109___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_111___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_113___2(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_115___2(struct mutex *ldv_func_arg1 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static unsigned int snd_ctl_get_ioffnum(struct snd_kcontrol *kctl , struct snd_ctl_elem_id *id___0 )
{
  {
  return (id___0->numid - kctl->id.numid);
}
}
__inline static unsigned int snd_ctl_get_ioff(struct snd_kcontrol *kctl , struct snd_ctl_elem_id *id___0 )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  if (id___0->numid != 0U) {
    {
    tmp = snd_ctl_get_ioffnum(kctl, id___0);
    }
    return (tmp);
  } else {
    {
    tmp___0 = snd_ctl_get_ioffidx(kctl, id___0);
    }
    return (tmp___0);
  }
}
}
static void wm8776_write(struct snd_ice1712 *ice , struct snd_wm8776 *wm , unsigned char reg ,
                         unsigned short val )
{
  {
  {
  snd_vt1724_write_i2c(ice, (int )wm->addr, (int )((unsigned char )((int )((signed char )((int )reg << 1)) | ((int )((signed char )((int )val >> 8)) & 1))),
                       (int )((unsigned char )val));
  wm->regs[(int )reg] = val;
  }
  return;
}
}
static int wm8776_write_bits(struct snd_ice1712 *ice , struct snd_wm8776 *wm , unsigned char reg ,
                             unsigned short mask , unsigned short val )
{
  {
  val = (unsigned short )((int )((short )val) | ((int )((short )wm->regs[(int )reg]) & (int )((short )(~ ((int )mask)))));
  if ((int )val != (int )wm->regs[(int )reg]) {
    {
    wm8776_write(ice, wm, (int )reg, (int )val);
    }
    return (1);
  } else {
  }
  return (0);
}
}
static struct maya_vol_info vol_info[3U] = { {80U, {0U, 1U}, 127U, 48U, 0U, 384U, {(unsigned char)0, (unsigned char)0}},
        {255U, {3U, 4U}, 255U, 1U, 0U, 256U, {(unsigned char)0, (unsigned char)0}},
        {91U, {14U, 15U}, 255U, 165U, 165U, 256U, {128U, 64U}}};
static unsigned int const db_scale_hp[4U] = { 1U, 8U, 4294959896U, 65636U};
static unsigned int const db_scale_dac___0[4U] = { 1U, 8U, 4294954546U, 65586U};
static unsigned int const db_scale_adc___0[4U] = { 1U, 8U, 4294965196U, 65586U};
static int maya_vol_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  unsigned int idx ;
  struct maya_vol_info *vol ;
  {
  idx = (unsigned int )kcontrol->private_value;
  vol = (struct maya_vol_info *)(& vol_info) + (unsigned long )idx;
  uinfo->type = 2;
  uinfo->count = 2U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = (long )vol->maxval;
  return (0);
}
}
static int maya_vol_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_maya44 *chip ;
  struct snd_wm8776 *wm ;
  unsigned int tmp ;
  unsigned int idx ;
  {
  {
  chip = (struct snd_maya44 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioff(kcontrol, & ucontrol->id);
  wm = (struct snd_wm8776 *)(& chip->wm) + (unsigned long )tmp;
  idx = (unsigned int )kcontrol->private_value;
  ldv_mutex_lock_104___4(& chip->mutex);
  ucontrol->value.integer.value[0] = (long )wm->volumes[idx][0];
  ucontrol->value.integer.value[1] = (long )wm->volumes[idx][1];
  ldv_mutex_unlock_105___4(& chip->mutex);
  }
  return (0);
}
}
static int maya_vol_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_maya44 *chip ;
  struct snd_wm8776 *wm ;
  unsigned int tmp ;
  unsigned int idx ;
  struct maya_vol_info *vol ;
  unsigned int val ;
  unsigned int data ;
  int ch ;
  int changed ;
  int tmp___0 ;
  {
  {
  chip = (struct snd_maya44 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioff(kcontrol, & ucontrol->id);
  wm = (struct snd_wm8776 *)(& chip->wm) + (unsigned long )tmp;
  idx = (unsigned int )kcontrol->private_value;
  vol = (struct maya_vol_info *)(& vol_info) + (unsigned long )idx;
  changed = 0;
  ldv_mutex_lock_106___4(& chip->mutex);
  ch = 0;
  }
  goto ldv_35573;
  ldv_35572:
  val = (unsigned int )ucontrol->value.integer.value[ch];
  if (val > vol->maxval) {
    val = vol->maxval;
  } else {
  }
  if (val == (unsigned int )wm->volumes[idx][ch]) {
    goto ldv_35571;
  } else {
  }
  if (val == 0U) {
    data = (unsigned int )vol->mute;
  } else {
    data = (val + (unsigned int )vol->offset) - 1U;
  }
  {
  data = data | (unsigned int )vol->update;
  tmp___0 = wm8776_write_bits(chip->ice, wm, (int )vol->regs[ch], (int )vol->mask | (int )vol->update,
                              (int )((unsigned short )data));
  changed = changed | tmp___0;
  }
  if ((unsigned int )vol->mux_bits[ch] != 0U) {
    {
    wm8776_write_bits(chip->ice, wm, 21, (int )vol->mux_bits[ch], val == 0U ? (int )vol->mux_bits[ch] : 0);
    }
  } else {
  }
  wm->volumes[idx][ch] = (unsigned char )val;
  ldv_35571:
  ch = ch + 1;
  ldv_35573: ;
  if (ch <= 1) {
    goto ldv_35572;
  } else {
  }
  {
  ldv_mutex_unlock_107___4(& chip->mutex);
  }
  return (changed);
}
}
static int maya_sw_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_maya44 *chip ;
  struct snd_wm8776 *wm ;
  unsigned int tmp ;
  unsigned int idx ;
  {
  {
  chip = (struct snd_maya44 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioff(kcontrol, & ucontrol->id);
  wm = (struct snd_wm8776 *)(& chip->wm) + (unsigned long )tmp;
  idx = (unsigned int )kcontrol->private_value & 255U;
  ucontrol->value.integer.value[0] = (long )(wm->switch_bits >> (int )idx) & 1L;
  }
  return (0);
}
}
static int maya_sw_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_maya44 *chip ;
  struct snd_wm8776 *wm ;
  unsigned int tmp ;
  unsigned int idx ;
  unsigned int mask ;
  unsigned int val ;
  int changed ;
  {
  {
  chip = (struct snd_maya44 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioff(kcontrol, & ucontrol->id);
  wm = (struct snd_wm8776 *)(& chip->wm) + (unsigned long )tmp;
  idx = (unsigned int )kcontrol->private_value & 255U;
  ldv_mutex_lock_108___2(& chip->mutex);
  mask = (unsigned int )(1 << (int )idx);
  wm->switch_bits = wm->switch_bits & ~ mask;
  val = (unsigned int )ucontrol->value.integer.value[0];
  }
  if (val != 0U) {
    wm->switch_bits = wm->switch_bits | mask;
  } else {
  }
  {
  mask = (unsigned int )(kcontrol->private_value >> 16) & 255U;
  changed = wm8776_write_bits(chip->ice, wm, (int )((unsigned char )(kcontrol->private_value >> 8)),
                              (int )((unsigned short )mask), val != 0U ? (int )((unsigned short )mask) : 0);
  ldv_mutex_unlock_109___2(& chip->mutex);
  }
  return (changed);
}
}
static int maya_set_gpio_bits(struct snd_ice1712 *ice , unsigned int mask , unsigned int bits )
{
  unsigned int data ;
  {
  {
  data = snd_ice1712_gpio_read(ice);
  }
  if ((data & mask) == bits) {
    return (0);
  } else {
  }
  {
  snd_ice1712_gpio_write(ice, (data & ~ mask) | bits);
  }
  return (1);
}
}
static int maya_gpio_sw_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_maya44 *chip ;
  unsigned int shift ;
  unsigned int val ;
  unsigned int tmp ;
  {
  {
  chip = (struct snd_maya44 *)kcontrol->private_data;
  shift = (unsigned int )kcontrol->private_value & 255U;
  tmp = snd_ice1712_gpio_read(chip->ice);
  val = (tmp >> (int )shift) & 1U;
  }
  if ((kcontrol->private_value & 256UL) != 0UL) {
    val = val == 0U;
  } else {
  }
  ucontrol->value.integer.value[0] = (long )val;
  return (0);
}
}
static int maya_gpio_sw_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_maya44 *chip ;
  unsigned int shift ;
  unsigned int val ;
  unsigned int mask ;
  int changed ;
  {
  {
  chip = (struct snd_maya44 *)kcontrol->private_data;
  shift = (unsigned int )kcontrol->private_value & 255U;
  ldv_mutex_lock_110___2(& chip->mutex);
  mask = (unsigned int )(1 << (int )shift);
  val = (unsigned int )ucontrol->value.integer.value[0];
  }
  if ((kcontrol->private_value & 256UL) != 0UL) {
    val = val == 0U;
  } else {
  }
  {
  val = val != 0U ? mask : 0U;
  changed = maya_set_gpio_bits(chip->ice, mask, val);
  ldv_mutex_unlock_111___2(& chip->mutex);
  }
  return (changed);
}
}
static void wm8776_select_input(struct snd_maya44 *chip , int idx , int line )
{
  {
  {
  wm8776_write_bits(chip->ice, (struct snd_wm8776 *)(& chip->wm) + (unsigned long )idx,
                    21, 31, (int )((unsigned short )(1 << line)));
  }
  return;
}
}
static int maya_rec_src_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  char const *texts[2U] ;
  int tmp ;
  {
  {
  texts[0] = "Line";
  texts[1] = "Mic";
  tmp = snd_ctl_enum_info(uinfo, 1U, 2U, (char const * const *)(& texts));
  }
  return (tmp);
}
}
static int maya_rec_src_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_maya44 *chip ;
  int sel ;
  unsigned int tmp ;
  {
  {
  chip = (struct snd_maya44 *)kcontrol->private_data;
  tmp = snd_ice1712_gpio_read(chip->ice);
  }
  if ((tmp & 16U) != 0U) {
    sel = 1;
  } else {
    sel = 0;
  }
  ucontrol->value.enumerated.item[0] = (unsigned int )sel;
  return (0);
}
}
static int maya_rec_src_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_maya44 *chip ;
  int sel ;
  int changed ;
  {
  {
  chip = (struct snd_maya44 *)kcontrol->private_data;
  sel = (int )ucontrol->value.enumerated.item[0];
  ldv_mutex_lock_112___2(& chip->mutex);
  changed = maya_set_gpio_bits(chip->ice, 16U, sel != 0 ? 16U : 0U);
  wm8776_select_input(chip, 0, sel != 0 ? 3 : 1);
  ldv_mutex_unlock_113___2(& chip->mutex);
  }
  return (changed);
}
}
static int maya_pb_route_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  char const *texts[5U] ;
  int tmp ;
  {
  {
  texts[0] = "PCM Out";
  texts[1] = "Input 1";
  texts[2] = "Input 2";
  texts[3] = "Input 3";
  texts[4] = "Input 4";
  tmp = snd_ctl_enum_info(uinfo, 1U, 5U, (char const * const *)(& texts));
  }
  return (tmp);
}
}
static int maya_pb_route_shift(int idx )
{
  unsigned char shift[10U] ;
  {
  shift[0] = 8U;
  shift[1] = 20U;
  shift[2] = 0U;
  shift[3] = 3U;
  shift[4] = 11U;
  shift[5] = 23U;
  shift[6] = 14U;
  shift[7] = 26U;
  shift[8] = 17U;
  shift[9] = 29U;
  return ((int )shift[idx % 10]);
}
}
static int maya_pb_route_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_maya44 *chip ;
  int idx ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  chip = (struct snd_maya44 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
  idx = (int )tmp;
  tmp___0 = maya_pb_route_shift(idx);
  tmp___1 = snd_ice1724_get_route_val(chip->ice, tmp___0);
  ucontrol->value.enumerated.item[0] = (unsigned int )tmp___1;
  }
  return (0);
}
}
static int maya_pb_route_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_maya44 *chip ;
  int idx ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  chip = (struct snd_maya44 *)kcontrol->private_data;
  tmp = snd_ctl_get_ioffidx(kcontrol, & ucontrol->id);
  idx = (int )tmp;
  tmp___0 = maya_pb_route_shift(idx);
  tmp___1 = snd_ice1724_put_route_val(chip->ice, ucontrol->value.enumerated.item[0],
                                      tmp___0);
  }
  return (tmp___1);
}
}
static struct snd_kcontrol_new maya_controls[9U] =
  { {2, 0U, 0U, (unsigned char const *)"Crossmix Playback Volume", 0U, 19U, 2U,
      & maya_vol_info, & maya_vol_get, & maya_vol_put, {.p = (unsigned int const *)(& db_scale_hp)},
      0UL},
        {2, 0U, 0U, (unsigned char const *)"PCM Playback Volume", 0U, 19U, 2U, & maya_vol_info,
      & maya_vol_get, & maya_vol_put, {.p = (unsigned int const *)(& db_scale_dac___0)},
      1UL},
        {2, 0U, 0U, (unsigned char const *)"Line Capture Volume", 0U, 19U, 2U, & maya_vol_info,
      & maya_vol_get, & maya_vol_put, {.p = (unsigned int const *)(& db_scale_adc___0)},
      2UL},
        {2, 0U, 0U, (unsigned char const *)"PCM Playback Switch", 0U, 0U, 2U, & snd_ctl_boolean_mono_info,
      & maya_sw_get, & maya_sw_put, {0}, 71168UL},
        {2, 0U, 0U, (unsigned char const *)"Bypass Playback Switch", 0U, 0U, 2U, & snd_ctl_boolean_mono_info,
      & maya_sw_get, & maya_sw_put, {0}, 267777UL},
        {2, 0U, 0U, (unsigned char const *)"Capture Source", 0U, 0U, 0U, & maya_rec_src_info,
      & maya_rec_src_get, & maya_rec_src_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"Mic Phantom Power Switch", 0U, 0U, 0U,
      & snd_ctl_boolean_mono_info, & maya_gpio_sw_get, & maya_gpio_sw_put, {0}, 258UL},
        {2,
      0U, 0U, (unsigned char const *)"SPDIF Capture Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & maya_gpio_sw_get, & maya_gpio_sw_put, {0}, 261UL},
        {2, 0U, 0U, (unsigned char const *)"H/W Playback Route", 0U, 0U, 4U, & maya_pb_route_info,
      & maya_pb_route_get, & maya_pb_route_put, {0}, 0UL}};
static int maya44_add_controls(struct snd_ice1712 *ice )
{
  int err ;
  int i ;
  struct snd_kcontrol *tmp ;
  {
  i = 0;
  goto ldv_35671;
  ldv_35670:
  {
  tmp = snd_ctl_new1((struct snd_kcontrol_new const *)(& maya_controls) + (unsigned long )i,
                     ice->spec);
  err = snd_ctl_add(ice->card, tmp);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1;
  ldv_35671: ;
  if ((unsigned int )i <= 8U) {
    goto ldv_35670;
  } else {
  }
  return (0);
}
}
static void wm8776_init(struct snd_ice1712 *ice , struct snd_wm8776 *wm , unsigned int addr )
{
  unsigned short inits_wm8776[32U] ;
  unsigned short const *ptr ;
  unsigned char reg ;
  unsigned short data ;
  unsigned short const *tmp ;
  unsigned short const *tmp___0 ;
  {
  inits_wm8776[0] = 2U;
  inits_wm8776[1] = 256U;
  inits_wm8776[2] = 5U;
  inits_wm8776[3] = 256U;
  inits_wm8776[4] = 6U;
  inits_wm8776[5] = 0U;
  inits_wm8776[6] = 7U;
  inits_wm8776[7] = 145U;
  inits_wm8776[8] = 8U;
  inits_wm8776[9] = 0U;
  inits_wm8776[10] = 9U;
  inits_wm8776[11] = 0U;
  inits_wm8776[12] = 10U;
  inits_wm8776[13] = 34U;
  inits_wm8776[14] = 11U;
  inits_wm8776[15] = 34U;
  inits_wm8776[16] = 12U;
  inits_wm8776[17] = 66U;
  inits_wm8776[18] = 13U;
  inits_wm8776[19] = 0U;
  inits_wm8776[20] = 14U;
  inits_wm8776[21] = 256U;
  inits_wm8776[22] = 15U;
  inits_wm8776[23] = 256U;
  inits_wm8776[24] = 17U;
  inits_wm8776[25] = 0U;
  inits_wm8776[26] = 21U;
  inits_wm8776[27] = 0U;
  inits_wm8776[28] = 22U;
  inits_wm8776[29] = 1U;
  inits_wm8776[30] = 255U;
  inits_wm8776[31] = 255U;
  wm->addr = (unsigned char )addr;
  wm->switch_bits = 1U;
  ptr = (unsigned short const *)(& inits_wm8776);
  goto ldv_35683;
  ldv_35682:
  {
  tmp = ptr;
  ptr = ptr + 1;
  reg = (unsigned char )*tmp;
  tmp___0 = ptr;
  ptr = ptr + 1;
  data = *tmp___0;
  wm8776_write(ice, wm, (int )reg, (int )data);
  }
  ldv_35683: ;
  if ((unsigned int )((unsigned short )*ptr) != 255U) {
    goto ldv_35682;
  } else {
  }
  return;
}
}
static void set_rate(struct snd_ice1712 *ice , unsigned int rate )
{
  struct snd_maya44 *chip ;
  unsigned int ratio ;
  unsigned int adc_ratio ;
  unsigned int val ;
  int i ;
  int __ret_warn_on ;
  long tmp ;
  {
  chip = (struct snd_maya44 *)ice->spec;
  {
  if (rate == 192000U) {
    goto case_192000;
  } else {
  }
  if (rate == 176400U) {
    goto case_176400;
  } else {
  }
  if (rate == 96000U) {
    goto case_96000;
  } else {
  }
  if (rate == 88200U) {
    goto case_88200;
  } else {
  }
  if (rate == 48000U) {
    goto case_48000;
  } else {
  }
  if (rate == 44100U) {
    goto case_44100;
  } else {
  }
  if (rate == 32000U) {
    goto case_32000;
  } else {
  }
  if (rate == 0U) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_192000:
  ratio = 0U;
  goto ldv_35695;
  case_176400:
  ratio = 0U;
  goto ldv_35695;
  case_96000:
  ratio = 2U;
  goto ldv_35695;
  case_88200:
  ratio = 3U;
  goto ldv_35695;
  case_48000:
  ratio = 4U;
  goto ldv_35695;
  case_44100:
  ratio = 4U;
  goto ldv_35695;
  case_32000:
  ratio = 5U;
  goto ldv_35695;
  case_0: ;
  return;
  switch_default:
  {
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_fmt("sound/pci/ice1712/maya44.c", 633, "BUG?\n");
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  return;
  switch_break: ;
  }
  ldv_35695:
  adc_ratio = ratio;
  if (adc_ratio <= 1U) {
    adc_ratio = 2U;
  } else {
  }
  val = adc_ratio;
  if (adc_ratio == 2U) {
    val = val | 8U;
  } else {
  }
  {
  val = val | (ratio << 4);
  ldv_mutex_lock_114___2(& chip->mutex);
  i = 0;
  }
  goto ldv_35707;
  ldv_35706:
  {
  wm8776_write_bits(ice, (struct snd_wm8776 *)(& chip->wm) + (unsigned long )i, 12,
                    384, (int )((unsigned short )val));
  i = i + 1;
  }
  ldv_35707: ;
  if (i <= 1) {
    goto ldv_35706;
  } else {
  }
  {
  ldv_mutex_unlock_115___2(& chip->mutex);
  }
  return;
}
}
static unsigned int rates___0[8U] =
  { 32000U, 44100U, 48000U, 64000U,
        88200U, 96000U, 176400U, 192000U};
static struct snd_pcm_hw_constraint_list dac_rates = {8U, (unsigned int const *)(& rates___0), 0U};
static unsigned char wm8776_addr[2U] = { 52U, 54U};
static int maya44_init(struct snd_ice1712 *ice )
{
  int i ;
  struct snd_maya44 *chip ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  {
  tmp = kzalloc(288UL, 208U);
  chip = (struct snd_maya44 *)tmp;
  }
  if ((unsigned long )chip == (unsigned long )((struct snd_maya44 *)0)) {
    return (-12);
  } else {
  }
  {
  __mutex_init(& chip->mutex, "&chip->mutex", & __key);
  chip->ice = ice;
  ice->spec = (void *)chip;
  ice->num_total_dacs = 4U;
  ice->num_total_adcs = 4U;
  ice->akm_codecs = 0U;
  i = 0;
  }
  goto ldv_35721;
  ldv_35720:
  {
  wm8776_init(ice, (struct snd_wm8776 *)(& chip->wm) + (unsigned long )i, (unsigned int )wm8776_addr[i]);
  wm8776_select_input(chip, i, 1);
  i = i + 1;
  }
  ldv_35721: ;
  if (i <= 1) {
    goto ldv_35720;
  } else {
  }
  ice->hw_rates = & dac_rates;
  ice->gpio.set_pro_rate = & set_rate;
  ice->force_rdma1 = 1U;
  ice->own_routing = 1U;
  return (0);
}
}
static unsigned char maya44_eeprom[13U] =
  { 69U, 128U, 248U, 195U,
        255U, 255U, 255U, 0U,
        0U, 0U, 36U, 0U,
        0U};
struct snd_ice1712_card_info snd_vt1724_maya44_cards[2U] = { {875648065U, "ESI Maya44", "maya44", 0, & maya44_init, 0, & maya44_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& maya44_eeprom)}};
void ldv_dummy_resourceless_instance_callback_17_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  maya44_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  maya44_init(arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104___4(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_snd_maya44(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105___4(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_snd_maya44(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_106___4(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_snd_maya44(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_107___4(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_snd_maya44(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_108___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_snd_maya44(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_109___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_snd_maya44(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_110___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_snd_maya44(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_111___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_snd_maya44(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_112___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_snd_maya44(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_113___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_snd_maya44(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_114___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_snd_maya44(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_115___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_snd_maya44(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_104___5(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105___5(struct mutex *ldv_func_arg1 ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int snd_ak4113_create(struct snd_card * , ak4113_read_t * , ak4113_write_t * ,
                             unsigned char const * , void * , struct ak4113 ** ) ;
extern int snd_ak4113_build(struct ak4113 * , struct snd_pcm_substream * ) ;
extern int snd_ak4113_external_rate(struct ak4113 * ) ;
static char const * const ext_clock_names___0[3U] = { "IEC958 In", "Word Clock 1xFS", "Word Clock 256xFS"};
static char *get_binary(char *buffer , int value )
{
  int i ;
  int j ;
  int pos ;
  {
  pos = 0;
  i = 0;
  goto ldv_35582;
  ldv_35581:
  j = 0;
  goto ldv_35579;
  ldv_35578: ;
  if ((value >> ((i * -8 - j) + 31)) & 1) {
    *(buffer + (unsigned long )pos) = 49;
  } else {
    *(buffer + (unsigned long )pos) = 48;
  }
  pos = pos + 1;
  j = j + 1;
  ldv_35579: ;
  if (j <= 7) {
    goto ldv_35578;
  } else {
  }
  if (i <= 2) {
    *(buffer + (unsigned long )pos) = 32;
    pos = pos + 1;
  } else {
  }
  i = i + 1;
  ldv_35582: ;
  if (i <= 3) {
    goto ldv_35581;
  } else {
  }
  *(buffer + (unsigned long )pos) = 0;
  return (buffer);
}
}
static unsigned int qtet_rates[6U] = { 44100U, 48000U, 88200U, 96000U,
        176400U, 192000U};
static unsigned int cks_vals[6U] = { 0U, 1U, 2U, 3U,
        4U, 5U};
static struct snd_pcm_hw_constraint_list qtet_rates_info = {6U, (unsigned int const *)(& qtet_rates), 0U};
static void qtet_ak4113_write(void *private_data , unsigned char reg , unsigned char val )
{
  {
  {
  snd_vt1724_write_i2c((struct snd_ice1712 *)private_data, 38, (int )reg, (int )val);
  }
  return;
}
}
static unsigned char qtet_ak4113_read(void *private_data , unsigned char reg )
{
  unsigned char tmp ;
  {
  {
  tmp = snd_vt1724_read_i2c((struct snd_ice1712 *)private_data, 38, (int )reg);
  }
  return (tmp);
}
}
static void qtet_akm_write(struct snd_akm4xxx *ak , int chip , unsigned char addr ,
                           unsigned char data )
{
  unsigned int tmp ;
  unsigned int orig_dir ;
  int idx ;
  unsigned int addrdata ;
  struct snd_ice1712 *ice ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  ice = (struct snd_ice1712 *)ak->private_data[0];
  __ret_warn_on = (unsigned int )chip > 3U;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    warn_slowpath_null("sound/pci/ice1712/quartet.c", 281);
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return;
  } else {
  }
  {
  orig_dir = (*(ice->gpio.get_dir))(ice);
  (*(ice->gpio.set_dir))(ice, orig_dir | 3120U);
  (*(ice->gpio.set_mask))(ice, 4294964175U);
  tmp = (*(ice->gpio.get_data))(ice);
  tmp = tmp | 3120U;
  (*(ice->gpio.set_data))(ice, tmp);
  __const_udelay(429500UL);
  }
  if (chip != 0) {
    tmp = tmp & 4294965247U;
  } else {
    tmp = tmp & 4294966271U;
  }
  {
  (*(ice->gpio.set_data))(ice, tmp);
  __const_udelay(429500UL);
  addrdata = (unsigned int )(((int )addr & 31) | 160);
  addrdata = (addrdata << 8) | (unsigned int )data;
  idx = 15;
  }
  goto ldv_35612;
  ldv_35611:
  {
  tmp = tmp & 4294967263U;
  (*(ice->gpio.set_data))(ice, tmp);
  __const_udelay(429500UL);
  }
  if ((addrdata & (unsigned int )(1 << idx)) != 0U) {
    tmp = tmp | 16U;
  } else {
    tmp = tmp & 4294967279U;
  }
  {
  (*(ice->gpio.set_data))(ice, tmp);
  __const_udelay(429500UL);
  tmp = tmp | 32U;
  (*(ice->gpio.set_data))(ice, tmp);
  __const_udelay(429500UL);
  idx = idx - 1;
  }
  ldv_35612: ;
  if (idx >= 0) {
    goto ldv_35611;
  } else {
  }
  {
  tmp = tmp | 3120U;
  (*(ice->gpio.set_data))(ice, tmp);
  __const_udelay(429500UL);
  (*(ice->gpio.set_mask))(ice, 16777215U);
  (*(ice->gpio.set_dir))(ice, orig_dir);
  }
  return;
}
}
static void qtet_akm_set_regs(struct snd_akm4xxx *ak , unsigned char addr , unsigned char mask ,
                              unsigned char value )
{
  unsigned char tmp ;
  int chip ;
  {
  chip = 0;
  goto ldv_35623;
  ldv_35622:
  {
  tmp = ak->images[chip * 16 + (int )addr];
  tmp = (unsigned char )((int )((signed char )tmp) & (int )((signed char )(~ ((int )mask))));
  tmp = (int )tmp | (int )value;
  snd_akm4xxx_write(ak, chip, (int )addr, (int )tmp);
  chip = chip + 1;
  }
  ldv_35623: ;
  if ((unsigned int )chip < ak->num_chips) {
    goto ldv_35622;
  } else {
  }
  return;
}
}
static void qtet_akm_set_rate_val(struct snd_akm4xxx *ak , unsigned int rate )
{
  unsigned char ak4620_dfs ;
  {
  if (rate == 0U) {
    return;
  } else {
  }
  if (rate > 108000U) {
    ak4620_dfs = 10U;
  } else
  if (rate > 54000U) {
    ak4620_dfs = 5U;
  } else {
    ak4620_dfs = 0U;
  }
  {
  qtet_akm_set_regs(ak, 2, 15, (int )ak4620_dfs);
  }
  return;
}
}
static struct snd_akm4xxx_dac_channel const qtet_dac[2U] = { {(char *)"PCM 1/2 Playback Volume", 2U, 0},
        {(char *)"PCM 3/4 Playback Volume", 2U, 0}};
static struct snd_akm4xxx_adc_channel const qtet_adc[2U] = { {(char *)"PCM 1/2 Capture Volume", 0, 2U, 0, 0},
        {(char *)"PCM 3/4 Capture Volume", 0, 2U, 0, 0}};
static struct snd_akm4xxx akm_qtet_dac =
     {0, 4U, 4U, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
    {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}, {0UL,
                                                                               0UL,
                                                                               0UL,
                                                                               0UL},
    {0, 0, 0, 0}, 0U, 7, (struct snd_akm4xxx_dac_channel const *)(& qtet_dac), (struct snd_akm4xxx_adc_channel const *)(& qtet_adc),
    {0, 0, & qtet_akm_write, & qtet_akm_set_rate_val}, 0U, 0U, 0};
static void reg_write(struct snd_ice1712 *ice , unsigned int reg , unsigned int data )
{
  unsigned int tmp ;
  {
  {
  ldv_mutex_lock_104___5(& ice->gpio_mutex);
  tmp = 65535U;
  (*(ice->gpio.set_dir))(ice, tmp);
  (*(ice->gpio.set_mask))(ice, ~ tmp);
  tmp = (*(ice->gpio.get_data))(ice);
  tmp = tmp & 4294967040U;
  tmp = tmp | data;
  (*(ice->gpio.set_data))(ice, tmp);
  __const_udelay(429500UL);
  tmp = tmp & 4294963199U;
  (*(ice->gpio.set_data))(ice, tmp);
  __const_udelay(429500UL);
  tmp = tmp & ~ reg;
  (*(ice->gpio.set_data))(ice, tmp);
  __const_udelay(429500UL);
  tmp = tmp | reg;
  (*(ice->gpio.set_data))(ice, tmp);
  __const_udelay(429500UL);
  tmp = tmp | 255U;
  (*(ice->gpio.set_data))(ice, tmp);
  (*(ice->gpio.set_mask))(ice, 16777215U);
  (*(ice->gpio.set_dir))(ice, 65280U);
  ldv_mutex_unlock_105___5(& ice->gpio_mutex);
  }
  return;
}
}
static unsigned int get_scr(struct snd_ice1712 *ice )
{
  struct qtet_spec *spec ;
  {
  spec = (struct qtet_spec *)ice->spec;
  return (spec->scr);
}
}
static unsigned int get_mcr(struct snd_ice1712 *ice )
{
  struct qtet_spec *spec ;
  {
  spec = (struct qtet_spec *)ice->spec;
  return (spec->mcr);
}
}
static unsigned int get_cpld(struct snd_ice1712 *ice )
{
  struct qtet_spec *spec ;
  {
  spec = (struct qtet_spec *)ice->spec;
  return (spec->cpld);
}
}
static void set_scr(struct snd_ice1712 *ice , unsigned int val )
{
  struct qtet_spec *spec ;
  {
  {
  spec = (struct qtet_spec *)ice->spec;
  reg_write(ice, 8192U, val);
  spec->scr = val;
  }
  return;
}
}
static void set_mcr(struct snd_ice1712 *ice , unsigned int val )
{
  struct qtet_spec *spec ;
  {
  {
  spec = (struct qtet_spec *)ice->spec;
  reg_write(ice, 16384U, val);
  spec->mcr = val;
  }
  return;
}
}
static void set_cpld(struct snd_ice1712 *ice , unsigned int val )
{
  struct qtet_spec *spec ;
  {
  {
  spec = (struct qtet_spec *)ice->spec;
  reg_write(ice, 256U, val);
  spec->cpld = val;
  }
  return;
}
}
static void proc_regs_read(struct snd_info_entry *entry , struct snd_info_buffer *buffer )
{
  struct snd_ice1712 *ice ;
  char bin_buffer[36U] ;
  unsigned int tmp ;
  char *tmp___0 ;
  unsigned int tmp___1 ;
  char *tmp___2 ;
  unsigned int tmp___3 ;
  char *tmp___4 ;
  {
  {
  ice = (struct snd_ice1712 *)entry->private_data;
  tmp = get_scr(ice);
  tmp___0 = get_binary((char *)(& bin_buffer), (int )tmp);
  snd_iprintf(buffer, "SCR:\t%s\n", tmp___0);
  tmp___1 = get_mcr(ice);
  tmp___2 = get_binary((char *)(& bin_buffer), (int )tmp___1);
  snd_iprintf(buffer, "MCR:\t%s\n", tmp___2);
  tmp___3 = get_cpld(ice);
  tmp___4 = get_binary((char *)(& bin_buffer), (int )tmp___3);
  snd_iprintf(buffer, "CPLD:\t%s\n", tmp___4);
  }
  return;
}
}
static void proc_init(struct snd_ice1712 *ice )
{
  struct snd_info_entry *entry ;
  int tmp ;
  {
  {
  tmp = snd_card_proc_new(ice->card, "quartet", & entry);
  }
  if (tmp == 0) {
    {
    snd_info_set_text_ops(entry, (void *)ice, & proc_regs_read);
    }
  } else {
  }
  return;
}
}
static int qtet_mute_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int val ;
  unsigned int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = get_scr(ice);
  val = tmp & 4U;
  ucontrol->value.integer.value[0] = val == 0U;
  }
  return (0);
}
}
static int qtet_mute_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int old ;
  unsigned int new ;
  unsigned int smute ;
  unsigned int tmp ;
  struct snd_akm4xxx *ak ;
  unsigned int tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = get_scr(ice);
  old = tmp & 4U;
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    new = 0U;
    smute = 0U;
  } else {
    new = 4U;
    smute = 128U;
  }
  if (old != new) {
    {
    ak = ice->akm;
    tmp___0 = get_scr(ice);
    set_scr(ice, (tmp___0 & 4294967291U) | new);
    qtet_akm_set_regs(ak, 3, 128, (int )((unsigned char )smute));
    }
    return (1);
  } else {
  }
  return (0);
}
}
static int qtet_ain12_enum_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  char const *texts[3U] ;
  int tmp ;
  {
  {
  texts[0] = "Line In 1/2";
  texts[1] = "Mic";
  texts[2] = "Mic + Low-cut";
  tmp = snd_ctl_enum_info(uinfo, 1U, 3U, (char const * const *)(& texts));
  }
  return (tmp);
}
}
static int qtet_ain12_sw_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int val ;
  unsigned int result ;
  unsigned int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = get_scr(ice);
  val = tmp & 48U;
  }
  {
  if (val == 0U) {
    goto case_0;
  } else {
  }
  if (val == 16U) {
    goto case_16;
  } else {
  }
  if (val == 48U) {
    goto case_48;
  } else {
  }
  goto switch_default;
  case_0:
  result = 0U;
  goto ldv_35706;
  case_16:
  result = 1U;
  goto ldv_35706;
  case_48:
  result = 2U;
  goto ldv_35706;
  switch_default:
  {
  __ret_warn_on = 1;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    warn_slowpath_fmt("sound/pci/ice1712/quartet.c", 578, "BUG?\n");
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  result = 0U;
  }
  switch_break: ;
  }
  ldv_35706:
  ucontrol->value.integer.value[0] = (long )result;
  return (0);
}
}
static int qtet_ain12_sw_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int old ;
  unsigned int new ;
  unsigned int tmp ;
  unsigned int masked_old ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  new = get_scr(ice);
  old = new;
  masked_old = old & 48U;
  tmp = (unsigned int )ucontrol->value.integer.value[0];
  }
  if (tmp == 2U) {
    tmp = 3U;
  } else {
  }
  tmp = tmp << 4;
  if (tmp != masked_old) {
    {
    if (tmp == 0U) {
      goto case_0;
    } else {
    }
    if (tmp == 16U) {
      goto case_16;
    } else {
    }
    if (tmp == 48U) {
      goto case_48;
    } else {
    }
    goto switch_default;
    case_0:
    {
    new = old & 4294967247U;
    set_scr(ice, new);
    new = new & 4294967294U;
    set_scr(ice, new);
    }
    goto ldv_35722;
    case_16:
    {
    new = old | 1U;
    set_scr(ice, new);
    new = (new & 4294967247U) | 16U;
    set_scr(ice, new);
    }
    goto ldv_35722;
    case_48:
    {
    new = old | 1U;
    set_scr(ice, new);
    new = new | 48U;
    set_scr(ice, new);
    }
    goto ldv_35722;
    switch_default:
    {
    __ret_warn_on = 1;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      {
      warn_slowpath_fmt("sound/pci/ice1712/quartet.c", 621, "BUG?\n");
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    switch_break: ;
    }
    ldv_35722: ;
    return (1);
  } else {
  }
  return (0);
}
}
static int qtet_php_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int val ;
  unsigned int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = get_scr(ice);
  val = tmp & 2U;
  ucontrol->value.integer.value[0] = val != 0U;
  }
  return (0);
}
}
static int qtet_php_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  unsigned int old ;
  unsigned int new ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  new = get_scr(ice);
  old = new;
  }
  if (ucontrol->value.integer.value[0] != 0L && (old & 2U) == 0U) {
    {
    new = old | 2U;
    set_scr(ice, new);
    new = new & 4294967287U;
    set_scr(ice, new);
    }
  } else
  if (ucontrol->value.integer.value[0] == 0L && (old & 2U) != 0U) {
    {
    new = old & 4294967293U;
    set_scr(ice, new);
    new = new | 8U;
    set_scr(ice, new);
    }
  } else {
  }
  if (old != new) {
    return (1);
  } else {
  }
  return (0);
}
}
static struct qtet_kcontrol_private qtet_privates[10U] =
  { {64U, & set_cpld, & get_cpld, {"An In 1/2", "An In 3/4"}},
        {128U, & set_cpld, & get_cpld, {"An In 3/4", "IEC958 In"}},
        {64U, & set_scr, & get_scr, {"Line In 3/4", "Hi-Z"}},
        {32U, & set_cpld, & get_cpld, {"IEC958", "I2S"}},
        {1U, & set_mcr, & get_mcr, {0, 0}},
        {2U, & set_mcr, & get_mcr, {0, 0}},
        {4U, & set_mcr, & get_mcr, {0, 0}},
        {8U, & set_mcr, & get_mcr, {0, 0}},
        {32U, & set_mcr, & get_mcr, {0, 0}},
        {16U, & set_mcr, & get_mcr, {0, 0}}};
static int qtet_enum_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  struct qtet_kcontrol_private private ;
  int tmp ;
  {
  {
  private = qtet_privates[kcontrol->private_value];
  tmp = snd_ctl_enum_info(uinfo, 1U, 2U, (char const * const *)(& private.texts));
  }
  return (tmp);
}
}
static int qtet_sw_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct qtet_kcontrol_private private ;
  struct snd_ice1712 *ice ;
  unsigned int tmp ;
  {
  {
  private = qtet_privates[kcontrol->private_value];
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  tmp = (*(private.get_register))(ice);
  ucontrol->value.integer.value[0] = (tmp & private.bit) != 0U;
  }
  return (0);
}
}
static int qtet_sw_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct qtet_kcontrol_private private ;
  struct snd_ice1712 *ice ;
  unsigned int old ;
  unsigned int new ;
  {
  {
  private = qtet_privates[kcontrol->private_value];
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  old = (*(private.get_register))(ice);
  }
  if (ucontrol->value.integer.value[0] != 0L) {
    new = old | private.bit;
  } else {
    new = old & ~ private.bit;
  }
  if (old != new) {
    {
    (*(private.set_register))(ice, new);
    }
    return (1);
  } else {
  }
  return (0);
}
}
static struct snd_kcontrol_new qtet_controls[13U] =
  { {2, 0U, 0U, (unsigned char const *)"Master Playback Switch", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & qtet_mute_get, & qtet_mute_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"Phantom Power", 0U, 0U, 0U, & snd_ctl_boolean_mono_info,
      & qtet_php_get, & qtet_php_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"Analog In 1/2 Capture Switch", 0U, 0U,
      0U, & qtet_ain12_enum_info, & qtet_ain12_sw_get, & qtet_ain12_sw_put, {0}, 0UL},
        {2,
      0U, 0U, (unsigned char const *)"Analog In 3/4 Capture Switch", 0U, 0U, 0U,
      & qtet_enum_info, & qtet_sw_get, & qtet_sw_put, {0}, 2UL},
        {2, 0U, 0U, (unsigned char const *)"PCM In 1/2 Capture Switch", 0U, 0U, 0U,
      & qtet_enum_info, & qtet_sw_get, & qtet_sw_put, {0}, 0UL},
        {2, 0U, 0U, (unsigned char const *)"PCM In 3/4 Capture Switch", 0U, 0U, 0U,
      & qtet_enum_info, & qtet_sw_get, & qtet_sw_put, {0}, 1UL},
        {2, 0U, 0U, (unsigned char const *)"Coax Output Source", 0U, 0U, 0U, & qtet_enum_info,
      & qtet_sw_get, & qtet_sw_put, {0}, 3UL},
        {2, 0U, 0U, (unsigned char const *)"Analog In 1/2 to Monitor 1/2", 0U, 0U,
      0U, & snd_ctl_boolean_mono_info, & qtet_sw_get, & qtet_sw_put, {0}, 4UL},
        {2, 0U, 0U, (unsigned char const *)"Analog In 1/2 to Monitor 3/4", 0U, 0U,
      0U, & snd_ctl_boolean_mono_info, & qtet_sw_get, & qtet_sw_put, {0}, 5UL},
        {2, 0U, 0U, (unsigned char const *)"Analog In 3/4 to Monitor 1/2", 0U, 0U,
      0U, & snd_ctl_boolean_mono_info, & qtet_sw_get, & qtet_sw_put, {0}, 6UL},
        {2, 0U, 0U, (unsigned char const *)"Analog In 3/4 to Monitor 3/4", 0U, 0U,
      0U, & snd_ctl_boolean_mono_info, & qtet_sw_get, & qtet_sw_put, {0}, 7UL},
        {2, 0U, 0U, (unsigned char const *)"Output 1/2 to Monitor 3/4", 0U, 0U, 0U,
      & snd_ctl_boolean_mono_info, & qtet_sw_get, & qtet_sw_put, {0}, 8UL},
        {2, 0U, 0U, (unsigned char const *)"Output 3/4 to Monitor 1/2", 0U, 0U, 0U,
      & snd_ctl_boolean_mono_info, & qtet_sw_get, & qtet_sw_put, {0}, 9UL}};
static char *slave_vols___0[3U] = { (char *)"PCM 1/2 Playback Volume", (char *)"PCM 3/4 Playback Volume", (char *)0};
static unsigned int qtet_master_db_scale[4U] = { 1U, 8U, 4294960946U, 65586U};
static struct snd_kcontrol *ctl_find___0(struct snd_card *card , char const *name )
{
  struct snd_ctl_elem_id sid ;
  struct snd_kcontrol *tmp ;
  {
  {
  memset((void *)(& sid), 0, 64UL);
  strcpy((char *)(& sid.name), name);
  sid.iface = 2;
  tmp = snd_ctl_find_id(card, & sid);
  }
  return (tmp);
}
}
static void add_slaves___0(struct snd_card *card , struct snd_kcontrol *master , char * const *list )
{
  struct snd_kcontrol *slave ;
  struct snd_kcontrol *tmp ;
  {
  goto ldv_35779;
  ldv_35778:
  {
  tmp = ctl_find___0(card, (char const *)*list);
  slave = tmp;
  }
  if ((unsigned long )slave != (unsigned long )((struct snd_kcontrol *)0)) {
    {
    snd_ctl_add_slave(master, slave);
    }
  } else {
  }
  list = list + 1;
  ldv_35779: ;
  if ((unsigned long )*list != (unsigned long )((char * )0)) {
    goto ldv_35778;
  } else {
  }
  return;
}
}
static int qtet_add_controls(struct snd_ice1712 *ice )
{
  struct qtet_spec *spec ;
  int err ;
  int i ;
  struct snd_kcontrol *vmaster ;
  struct snd_kcontrol *tmp ;
  int tmp___0 ;
  {
  {
  spec = (struct qtet_spec *)ice->spec;
  err = snd_ice1712_akm4xxx_build_controls(ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = 0;
  goto ldv_35791;
  ldv_35790:
  {
  tmp = snd_ctl_new1((struct snd_kcontrol_new const *)(& qtet_controls) + (unsigned long )i,
                     (void *)ice);
  err = snd_ctl_add(ice->card, tmp);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1;
  ldv_35791: ;
  if ((unsigned int )i <= 12U) {
    goto ldv_35790;
  } else {
  }
  {
  vmaster = snd_ctl_make_virtual_master((char *)"Master Playback Volume", (unsigned int const *)(& qtet_master_db_scale));
  }
  if ((unsigned long )vmaster == (unsigned long )((struct snd_kcontrol *)0)) {
    return (-12);
  } else {
  }
  {
  add_slaves___0(ice->card, vmaster, (char * const *)(& slave_vols___0));
  err = snd_ctl_add(ice->card, vmaster);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  tmp___0 = snd_ak4113_build(spec->ak4113, (ice->pcm)->streams[1].substream);
  }
  return (tmp___0);
}
}
__inline static int qtet_is_spdif_master(struct snd_ice1712 *ice )
{
  unsigned int tmp ;
  {
  {
  tmp = get_cpld(ice);
  }
  return ((tmp & 8U) != 0U);
}
}
static unsigned int qtet_get_rate(struct snd_ice1712 *ice )
{
  int i ;
  unsigned char result ;
  unsigned int tmp ;
  {
  {
  tmp = get_cpld(ice);
  result = (unsigned int )((unsigned char )tmp) & 7U;
  i = 0;
  }
  goto ldv_35804;
  ldv_35803: ;
  if (cks_vals[i] == (unsigned int )result) {
    return (qtet_rates[i]);
  } else {
  }
  i = i + 1;
  ldv_35804: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_35803;
  } else {
  }
  return (0U);
}
}
static int get_cks_val(int rate )
{
  int i ;
  {
  i = 0;
  goto ldv_35813;
  ldv_35812: ;
  if (qtet_rates[i] == (unsigned int )rate) {
    return ((int )cks_vals[i]);
  } else {
  }
  i = i + 1;
  ldv_35813: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_35812;
  } else {
  }
  return (0);
}
}
static void qtet_set_rate(struct snd_ice1712 *ice , unsigned int rate )
{
  unsigned int new ;
  unsigned char val ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  {
  val = inb((int )((unsigned int )ice->profi_port + 1U));
  outb((int )((unsigned int )val | 16U), (int )((unsigned int )ice->profi_port + 1U));
  tmp = get_cpld(ice);
  tmp___0 = get_cks_val((int )rate);
  new = (tmp & 4294967288U) | (unsigned int )tmp___0;
  new = new & 4294967287U;
  set_cpld(ice, new);
  }
  return;
}
}
static int qtet_set_spdif_clock(struct snd_ice1712 *ice , int type )
{
  unsigned int old ;
  unsigned int new ;
  int __ret_warn_on ;
  long tmp ;
  {
  {
  new = get_cpld(ice);
  old = new;
  new = new & 4294967272U;
  }
  {
  if (type == 0) {
    goto case_0;
  } else {
  }
  if (type == 1) {
    goto case_1;
  } else {
  }
  if (type == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0:
  new = new | 8U;
  goto ldv_35832;
  case_1:
  new = new | 10U;
  goto ldv_35832;
  case_2:
  new = new | 26U;
  goto ldv_35832;
  switch_default:
  {
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_fmt("sound/pci/ice1712/quartet.c", 909, "BUG?\n");
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  switch_break: ;
  }
  ldv_35832: ;
  if (old != new) {
    {
    set_cpld(ice, new);
    }
    return (1);
  } else {
  }
  return (0);
}
}
static int qtet_get_spdif_master_type(struct snd_ice1712 *ice )
{
  unsigned int val ;
  int result ;
  int __ret_warn_on ;
  long tmp ;
  {
  {
  val = get_cpld(ice);
  val = val & 31U;
  }
  if ((val & 8U) == 0U) {
    result = -1;
  } else {
    {
    if (val == 8U) {
      goto case_8;
    } else {
    }
    if (val == 10U) {
      goto case_10;
    } else {
    }
    if (val == 26U) {
      goto case_26;
    } else {
    }
    goto switch_default;
    case_8:
    result = 0;
    goto ldv_35844;
    case_10:
    result = 1;
    goto ldv_35844;
    case_26:
    result = 2;
    goto ldv_35844;
    switch_default:
    {
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_fmt("sound/pci/ice1712/quartet.c", 942, "BUG?\n");
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    result = 0;
    }
    switch_break: ;
    }
    ldv_35844: ;
  }
  return (result);
}
}
static void qtet_ak4113_change(struct ak4113 *ak4113 , unsigned char c0 , unsigned char c1 )
{
  struct snd_ice1712 *ice ;
  int rate ;
  int tmp ;
  {
  {
  ice = (struct snd_ice1712 *)ak4113->change_callback_private;
  tmp = qtet_get_spdif_master_type(ice);
  }
  if (tmp == 0 && (unsigned int )c1 != 0U) {
    {
    rate = snd_ak4113_external_rate(ak4113);
    qtet_akm_set_rate_val(ice->akm, (unsigned int )rate);
    }
  } else {
  }
  return;
}
}
static void qtet_spdif_in_open(struct snd_ice1712 *ice , struct snd_pcm_substream *substream )
{
  struct qtet_spec *spec ;
  struct snd_pcm_runtime *runtime ;
  int rate ;
  int tmp ;
  {
  {
  spec = (struct qtet_spec *)ice->spec;
  runtime = substream->runtime;
  tmp = qtet_get_spdif_master_type(ice);
  }
  if (tmp != 0) {
    return;
  } else {
  }
  {
  rate = snd_ak4113_external_rate(spec->ak4113);
  }
  if ((unsigned int )rate >= runtime->hw.rate_min && (unsigned int )rate <= runtime->hw.rate_max) {
    runtime->hw.rate_min = (unsigned int )rate;
    runtime->hw.rate_max = (unsigned int )rate;
  } else {
  }
  return;
}
}
static int qtet_init(struct snd_ice1712 *ice )
{
  unsigned char ak4113_init_vals[7U] ;
  int err ;
  struct qtet_spec *spec ;
  struct snd_akm4xxx *ak ;
  unsigned char val ;
  void *tmp ;
  void (*tmp___0)(struct snd_ice1712 * , struct snd_pcm_substream * ) ;
  void *tmp___1 ;
  {
  {
  ak4113_init_vals[0] = 15U;
  ak4113_init_vals[1] = 250U;
  ak4113_init_vals[2] = 76U;
  ak4113_init_vals[3] = 64U;
  ak4113_init_vals[4] = 0U;
  ak4113_init_vals[5] = 0U;
  ak4113_init_vals[6] = 0U;
  val = inb((int )((unsigned int )ice->profi_port + 1U));
  outb((int )((unsigned int )val | 16U), (int )((unsigned int )ice->profi_port + 1U));
  tmp = kzalloc(24UL, 208U);
  spec = (struct qtet_spec *)tmp;
  }
  if ((unsigned long )spec == (unsigned long )((struct qtet_spec *)0)) {
    return (-12);
  } else {
  }
  {
  ice->hw_rates = & qtet_rates_info;
  ice->is_spdif_master = & qtet_is_spdif_master;
  ice->get_rate = & qtet_get_rate;
  ice->set_rate = & qtet_set_rate;
  ice->set_mclk = & juli_set_mclk;
  ice->set_spdif_clock = & qtet_set_spdif_clock;
  ice->get_spdif_master_type = & qtet_get_spdif_master_type;
  ice->ext_clock_names = (char const * const *)(& ext_clock_names___0);
  ice->ext_clock_count = 3;
  tmp___0 = & qtet_spdif_in_open;
  ice->pro_open = tmp___0;
  ice->spdif.ops.open = tmp___0;
  ice->spec = (void *)spec;
  set_scr(ice, 8U);
  __const_udelay(4295UL);
  set_scr(ice, 136U);
  set_mcr(ice, 0U);
  set_cpld(ice, 0U);
  ice->num_total_dacs = 2U;
  ice->num_total_adcs = 2U;
  tmp___1 = kcalloc(2UL, 280UL, 208U);
  ice->akm = (struct snd_akm4xxx *)tmp___1;
  ak = ice->akm;
  }
  if ((unsigned long )ak == (unsigned long )((struct snd_akm4xxx *)0)) {
    return (-12);
  } else {
  }
  {
  ice->akm_codecs = 1U;
  err = snd_ice1712_akm4xxx_init(ak, (struct snd_akm4xxx const *)(& akm_qtet_dac),
                                 (struct snd_ak4xxx_private const *)0, ice);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  err = snd_ak4113_create(ice->card, & qtet_ak4113_read, & qtet_ak4113_write, (unsigned char const *)(& ak4113_init_vals),
                          (void *)ice, & spec->ak4113);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  (spec->ak4113)->change_callback = & qtet_ak4113_change;
  (spec->ak4113)->change_callback_private = (void *)ice;
  (spec->ak4113)->check_flags = 0U;
  proc_init(ice);
  qtet_set_rate(ice, 44100U);
  }
  return (0);
}
}
static unsigned char qtet_eeprom[13U] =
  { 40U, 128U, 120U, 195U,
        0U, 255U, 0U, 255U,
        0U, 255U, 0U, 125U,
        0U};
struct snd_ice1712_card_info snd_vt1724_qtet_cards[2U] = { {808473417U, "Infrasonic Quartet", "quartet", 0, & qtet_init, 0, & qtet_add_controls,
      (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& qtet_eeprom)}};
void ldv_dummy_resourceless_instance_callback_11_15(void (*arg0)(struct snd_akm4xxx * ,
                                                                 int , unsigned char ,
                                                                 unsigned char ) ,
                                                    struct snd_akm4xxx *arg1 , int arg2 ,
                                                    unsigned char arg3 , unsigned char arg4 ) ;
void ldv_dummy_resourceless_instance_callback_11_9(void (*arg0)(struct snd_akm4xxx * ,
                                                                unsigned int ) ,
                                                   struct snd_akm4xxx *arg1 , unsigned int arg2 ) ;
struct ldv_thread ldv_thread_11 ;
void ldv_dummy_resourceless_instance_callback_11_15(void (*arg0)(struct snd_akm4xxx * ,
                                                                 int , unsigned char ,
                                                                 unsigned char ) ,
                                                    struct snd_akm4xxx *arg1 , int arg2 ,
                                                    unsigned char arg3 , unsigned char arg4 )
{
  {
  {
  qtet_akm_write(arg1, arg2, (int )arg3, (int )arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_9(void (*arg0)(struct snd_akm4xxx * ,
                                                                unsigned int ) ,
                                                   struct snd_akm4xxx *arg1 , unsigned int arg2 )
{
  {
  {
  qtet_akm_set_rate_val(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_25_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  qtet_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_25_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  qtet_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_3(unsigned int (*arg0)(struct snd_ice1712 * ) ,
                                                  struct snd_ice1712 *arg1 )
{
  {
  {
  get_cpld(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_7(void (*arg0)(struct snd_ice1712 * ,
                                                               unsigned int ) , struct snd_ice1712 *arg1 ,
                                                  unsigned int arg2 )
{
  {
  {
  set_cpld(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_3(unsigned int (*arg0)(struct snd_ice1712 * ) ,
                                                  struct snd_ice1712 *arg1 )
{
  {
  {
  get_mcr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_7(void (*arg0)(struct snd_ice1712 * ,
                                                               unsigned int ) , struct snd_ice1712 *arg1 ,
                                                  unsigned int arg2 )
{
  {
  {
  set_mcr(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_3(unsigned int (*arg0)(struct snd_ice1712 * ) ,
                                                  struct snd_ice1712 *arg1 )
{
  {
  {
  get_scr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_7(void (*arg0)(struct snd_ice1712 * ,
                                                               unsigned int ) , struct snd_ice1712 *arg1 ,
                                                  unsigned int arg2 )
{
  {
  {
  set_scr(arg1, arg2);
  }
  return;
}
}
void ldv_struct_snd_akm4xxx_dummy_resourceless_instance_11(void *arg0 )
{
  void (*ldv_11_callback_lock)(struct snd_akm4xxx * , int ) ;
  void (*ldv_11_callback_set_rate_val)(struct snd_akm4xxx * , unsigned int ) ;
  void (*ldv_11_callback_unlock)(struct snd_akm4xxx * , int ) ;
  void (*ldv_11_callback_write)(struct snd_akm4xxx * , int , unsigned char , unsigned char ) ;
  struct snd_akm4xxx *ldv_11_container_struct_snd_akm4xxx ;
  int ldv_11_ldv_param_12_1_default ;
  int ldv_11_ldv_param_15_1_default ;
  unsigned char ldv_11_ldv_param_15_2_default ;
  unsigned char ldv_11_ldv_param_15_3_default ;
  int ldv_11_ldv_param_3_1_default ;
  unsigned int ldv_11_ldv_param_9_1_default ;
  int tmp ;
  int tmp___0 ;
  {
  goto ldv_call_11;
  return;
  ldv_call_11:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
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
    goto switch_default;
    case_1:
    {
    ldv_dummy_resourceless_instance_callback_11_15(ldv_11_callback_write, ldv_11_container_struct_snd_akm4xxx,
                                                   ldv_11_ldv_param_15_1_default,
                                                   (int )ldv_11_ldv_param_15_2_default,
                                                   (int )ldv_11_ldv_param_15_3_default);
    }
    goto ldv_36056;
    case_2: ;
    if ((unsigned long )ldv_11_callback_unlock != (unsigned long )((void (*)(struct snd_akm4xxx * ,
                                                                             int ))0)) {
      {
      ldv_dummy_resourceless_instance_callback_11_12(ldv_11_callback_unlock, ldv_11_container_struct_snd_akm4xxx,
                                                     ldv_11_ldv_param_12_1_default);
      }
    } else {
    }
    goto ldv_36056;
    case_3:
    {
    ldv_dummy_resourceless_instance_callback_11_9(ldv_11_callback_set_rate_val, ldv_11_container_struct_snd_akm4xxx,
                                                  ldv_11_ldv_param_9_1_default);
    }
    goto ldv_36056;
    case_4: ;
    if ((unsigned long )ldv_11_callback_lock != (unsigned long )((void (*)(struct snd_akm4xxx * ,
                                                                           int ))0)) {
      {
      ldv_dummy_resourceless_instance_callback_11_3(ldv_11_callback_lock, ldv_11_container_struct_snd_akm4xxx,
                                                    ldv_11_ldv_param_3_1_default);
      }
    } else {
    }
    goto ldv_36056;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_36056: ;
    goto ldv_call_11;
  } else {
    return;
  }
  return;
}
}
static void ldv_mutex_lock_104___5(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105___5(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_102___4(struct mutex *ldv_func_arg1 ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
static void ldv_mutex_unlock_103___4(struct mutex *ldv_func_arg1 ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
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
__inline static bool schedule_delayed_work(struct delayed_work *dwork , unsigned long delay )
{
  bool tmp ;
  {
  {
  tmp = queue_delayed_work(system_wq, dwork, delay);
  }
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void snd_ctl_notify(struct snd_card * , unsigned int , struct snd_ctl_elem_id * ) ;
__inline static void snd_ice1712_save_gpio_status___4(struct snd_ice1712 *ice )
{
  {
  {
  ldv_mutex_lock_102___4(& ice->gpio_mutex);
  ice->gpio.saved[0] = ice->gpio.direction;
  ice->gpio.saved[1] = ice->gpio.write_mask;
  }
  return;
}
}
__inline static void snd_ice1712_restore_gpio_status___4(struct snd_ice1712 *ice )
{
  {
  {
  (*(ice->gpio.set_dir))(ice, ice->gpio.saved[0]);
  (*(ice->gpio.set_mask))(ice, ice->gpio.saved[1]);
  ice->gpio.direction = ice->gpio.saved[0];
  ice->gpio.write_mask = ice->gpio.saved[1];
  ldv_mutex_unlock_103___4(& ice->gpio_mutex);
  }
  return;
}
}
void snd_wm8766_init(struct snd_wm8766 *wm ) ;
void snd_wm8766_resume(struct snd_wm8766 *wm ) ;
void snd_wm8766_set_if(struct snd_wm8766 *wm , u16 dac ) ;
void snd_wm8766_volume_restore(struct snd_wm8766 *wm ) ;
int snd_wm8766_build_controls(struct snd_wm8766 *wm ) ;
void snd_wm8776_init(struct snd_wm8776___0 *wm ) ;
void snd_wm8776_resume(struct snd_wm8776___0 *wm ) ;
void snd_wm8776_set_power(struct snd_wm8776___0 *wm , u16 power ) ;
void snd_wm8776_volume_restore(struct snd_wm8776___0 *wm ) ;
int snd_wm8776_build_controls(struct snd_wm8776___0 *wm ) ;
static void psc724_wm8766_write(struct snd_wm8766 *wm , u16 addr , u16 data )
{
  struct psc724_spec *spec ;
  struct snd_wm8766 const *__mptr ;
  struct snd_ice1712 *ice ;
  u32 st ;
  u32 bits ;
  int i ;
  unsigned int tmp ;
  {
  {
  __mptr = (struct snd_wm8766 const *)wm;
  spec = (struct psc724_spec *)__mptr;
  ice = spec->ice;
  snd_ice1712_save_gpio_status___4(ice);
  st = (u32 )((((int )addr << 9) & 65535) | ((int )data & 511));
  snd_ice1712_gpio_set_dir(ice, ice->gpio.direction | 458752U);
  snd_ice1712_gpio_set_mask(ice, ice->gpio.write_mask & 4294508543U);
  tmp = snd_ice1712_gpio_read(ice);
  bits = tmp & 4294508543U;
  snd_ice1712_gpio_write(ice, bits);
  i = 0;
  }
  goto ldv_35646;
  ldv_35645:
  {
  __const_udelay(4295UL);
  bits = bits & 4294836223U;
  st = st << 1;
  }
  if ((st & 65536U) != 0U) {
    bits = bits | 65536U;
  } else {
    bits = bits & 4294901759U;
  }
  {
  snd_ice1712_gpio_write(ice, bits);
  __const_udelay(4295UL);
  bits = bits | 131072U;
  snd_ice1712_gpio_write(ice, bits);
  i = i + 1;
  }
  ldv_35646: ;
  if (i <= 15) {
    goto ldv_35645;
  } else {
  }
  {
  __const_udelay(4295UL);
  bits = bits | 262144U;
  snd_ice1712_gpio_write(ice, bits);
  __const_udelay(4295UL);
  bits = bits | 196608U;
  snd_ice1712_gpio_write(ice, bits);
  snd_ice1712_restore_gpio_status___4(ice);
  }
  return;
}
}
static void psc724_wm8776_write(struct snd_wm8776___0 *wm , u8 addr , u8 data )
{
  struct psc724_spec *spec ;
  struct snd_wm8776___0 const *__mptr ;
  {
  {
  __mptr = (struct snd_wm8776___0 const *)wm;
  spec = (struct psc724_spec *)__mptr + 0xfffffffffffff548UL;
  snd_vt1724_write_i2c(spec->ice, 52, (int )addr, (int )data);
  }
  return;
}
}
static void psc724_set_master_switch(struct snd_ice1712 *ice , bool on )
{
  unsigned int bits ;
  unsigned int tmp ;
  struct psc724_spec *spec ;
  {
  {
  tmp = snd_ice1712_gpio_read(ice);
  bits = tmp;
  spec = (struct psc724_spec *)ice->spec;
  spec->mute_all = (bool )(! ((int )on != 0));
  }
  if ((int )on) {
    bits = bits & 4289724415U;
  } else {
    bits = bits | 5242880U;
  }
  {
  snd_ice1712_gpio_write(ice, bits);
  }
  return;
}
}
static bool psc724_get_master_switch(struct snd_ice1712 *ice )
{
  struct psc724_spec *spec ;
  {
  spec = (struct psc724_spec *)ice->spec;
  return ((bool )(! ((int )spec->mute_all != 0)));
}
}
static void psc724_set_jack_state(struct snd_ice1712 *ice , bool hp_connected )
{
  struct psc724_spec *spec ;
  struct snd_ctl_elem_id elem_id ;
  struct snd_kcontrol *kctl ;
  u16 power ;
  {
  {
  spec = (struct psc724_spec *)ice->spec;
  power = (unsigned int )spec->wm8776.regs[13] & 65527U;
  psc724_set_master_switch(ice, (int )((bool )(! ((int )hp_connected != 0))));
  }
  if (! hp_connected) {
    power = (u16 )((unsigned int )power | 8U);
  } else {
  }
  {
  snd_wm8776_set_power(& spec->wm8776, (int )power);
  spec->hp_connected = hp_connected;
  memset((void *)(& elem_id), 0, 64UL);
  elem_id.iface = 2;
  strlcpy((char *)(& elem_id.name), "Master Speakers Playback Switch", 44UL);
  kctl = snd_ctl_find_id(ice->card, & elem_id);
  snd_ctl_notify(ice->card, 1U, & kctl->id);
  strlcpy((char *)(& elem_id.name), spec->wm8776.ctl[4].name, 44UL);
  kctl = snd_ctl_find_id(ice->card, & elem_id);
  snd_ctl_notify(ice->card, 1U, & kctl->id);
  }
  return;
}
}
static void psc724_update_hp_jack_state(struct work_struct *work )
{
  struct psc724_spec *spec ;
  struct work_struct const *__mptr ;
  struct snd_ice1712 *ice ;
  bool hp_connected ;
  unsigned int tmp ;
  unsigned long tmp___0 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  spec = (struct psc724_spec *)__mptr + 0xffffffffffffddf0UL;
  ice = spec->ice;
  tmp = snd_ice1712_gpio_read(ice);
  hp_connected = (tmp & 16384U) != 0U;
  tmp___0 = msecs_to_jiffies(1000U);
  schedule_delayed_work(& spec->hp_work, tmp___0);
  }
  if ((int )hp_connected == (int )spec->hp_connected) {
    return;
  } else {
  }
  {
  psc724_set_jack_state(ice, (int )hp_connected);
  }
  return;
}
}
static void psc724_set_jack_detection(struct snd_ice1712 *ice , bool on )
{
  struct psc724_spec *spec ;
  bool hp_connected ;
  unsigned int tmp ;
  unsigned long tmp___0 ;
  {
  spec = (struct psc724_spec *)ice->spec;
  if ((int )spec->jack_detect == (int )on) {
    return;
  } else {
  }
  spec->jack_detect = on;
  if ((int )on) {
    {
    tmp = snd_ice1712_gpio_read(ice);
    hp_connected = (tmp & 16384U) != 0U;
    psc724_set_jack_state(ice, (int )hp_connected);
    tmp___0 = msecs_to_jiffies(1000U);
    schedule_delayed_work(& spec->hp_work, tmp___0);
    }
  } else {
    {
    cancel_delayed_work_sync(& spec->hp_work);
    }
  }
  return;
}
}
static bool psc724_get_jack_detection(struct snd_ice1712 *ice )
{
  struct psc724_spec *spec ;
  {
  spec = (struct psc724_spec *)ice->spec;
  return (spec->jack_detect);
}
}
static struct psc724_control const psc724_cont[2U] = { {"Master Speakers Playback Switch", & psc724_set_master_switch, & psc724_get_master_switch},
        {"Headphone Jack Detection Playback Switch",
      & psc724_set_jack_detection, & psc724_get_jack_detection}};
static int psc724_ctl_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int n ;
  bool tmp ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  n = (int )kcontrol->private_value;
  tmp = (*(psc724_cont[n].get))(ice);
  ucontrol->value.integer.value[0] = (long )tmp;
  }
  return (0);
}
}
static int psc724_ctl_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_ice1712 *ice ;
  int n ;
  {
  {
  ice = (struct snd_ice1712 *)kcontrol->private_data;
  n = (int )kcontrol->private_value;
  (*(psc724_cont[n].set))(ice, ucontrol->value.integer.value[0] != 0L);
  }
  return (0);
}
}
static char const *front_volume = "Front Playback Volume";
static char const *front_switch = "Front Playback Switch";
static char const *front_zc = "Front Zero Cross Detect Playback Switch";
static char const *front_izd = "Front Infinite Zero Detect Playback Switch";
static char const *front_phase = "Front Phase Invert Playback Switch";
static char const *front_deemph = "Front Deemphasis Playback Switch";
static char const *ain1_switch = "Line Capture Switch";
static char const *ain2_switch = "CD Capture Switch";
static char const *ain3_switch = "AUX Capture Switch";
static char const *ain4_switch = "Front Mic Capture Switch";
static char const *ain5_switch = "Rear Mic Capture Switch";
static char const *rear_volume = "Surround Playback Volume";
static char const *clfe_volume = "CLFE Playback Volume";
static char const *rear_switch = "Surround Playback Switch";
static char const *clfe_switch = "CLFE Playback Switch";
static char const *rear_phase = "Surround Phase Invert Playback Switch";
static char const *clfe_phase = "CLFE Phase Invert Playback Switch";
static char const *rear_deemph = "Surround Deemphasis Playback Switch";
static char const *clfe_deemph = "CLFE Deemphasis Playback Switch";
static char const *rear_clfe_izd = "Rear Infinite Zero Detect Playback Switch";
static char const *rear_clfe_zc = "Rear Zero Cross Detect Playback Switch";
static int psc724_add_controls(struct snd_ice1712 *ice )
{
  struct snd_kcontrol_new cont ;
  struct snd_kcontrol *ctl ;
  int err ;
  int i ;
  struct psc724_spec *spec ;
  {
  {
  spec = (struct psc724_spec *)ice->spec;
  spec->wm8776.ctl[0].name = front_volume;
  spec->wm8776.ctl[1].name = front_switch;
  spec->wm8776.ctl[2].name = front_zc;
  spec->wm8776.ctl[6].name = (char const *)0;
  spec->wm8776.ctl[8].name = front_izd;
  spec->wm8776.ctl[9].name = front_phase;
  spec->wm8776.ctl[10].name = front_deemph;
  spec->wm8776.ctl[13].name = ain1_switch;
  spec->wm8776.ctl[14].name = ain2_switch;
  spec->wm8776.ctl[15].name = ain3_switch;
  spec->wm8776.ctl[16].name = ain4_switch;
  spec->wm8776.ctl[17].name = ain5_switch;
  snd_wm8776_build_controls(& spec->wm8776);
  spec->wm8766.ctl[0].name = rear_volume;
  spec->wm8766.ctl[1].name = clfe_volume;
  spec->wm8766.ctl[2].name = (char const *)0;
  spec->wm8766.ctl[3].name = rear_switch;
  spec->wm8766.ctl[4].name = clfe_switch;
  spec->wm8766.ctl[5].name = (char const *)0;
  spec->wm8766.ctl[6].name = rear_phase;
  spec->wm8766.ctl[7].name = clfe_phase;
  spec->wm8766.ctl[8].name = (char const *)0;
  spec->wm8766.ctl[9].name = rear_deemph;
  spec->wm8766.ctl[10].name = clfe_deemph;
  spec->wm8766.ctl[11].name = (char const *)0;
  spec->wm8766.ctl[12].name = rear_clfe_izd;
  spec->wm8766.ctl[13].name = rear_clfe_zc;
  snd_wm8766_build_controls(& spec->wm8766);
  memset((void *)(& cont), 0, 80UL);
  cont.iface = 2;
  i = 0;
  }
  goto ldv_35744;
  ldv_35743:
  {
  cont.private_value = (unsigned long )i;
  cont.name = (unsigned char const *)psc724_cont[i].name;
  cont.access = 3U;
  cont.info = & snd_ctl_boolean_mono_info;
  cont.get = & psc724_ctl_get;
  cont.put = & psc724_ctl_put;
  ctl = snd_ctl_new1((struct snd_kcontrol_new const *)(& cont), (void *)ice);
  }
  if ((unsigned long )ctl == (unsigned long )((struct snd_kcontrol *)0)) {
    return (-12);
  } else {
  }
  {
  err = snd_ctl_add(ice->card, ctl);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  i = i + 1;
  ldv_35744: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_35743;
  } else {
  }
  return (0);
}
}
static void psc724_set_pro_rate(struct snd_ice1712 *ice , unsigned int rate )
{
  struct psc724_spec *spec ;
  {
  {
  spec = (struct psc724_spec *)ice->spec;
  snd_wm8776_volume_restore(& spec->wm8776);
  snd_wm8766_volume_restore(& spec->wm8766);
  }
  return;
}
}
static int psc724_resume(struct snd_ice1712 *ice )
{
  struct psc724_spec *spec ;
  {
  {
  spec = (struct psc724_spec *)ice->spec;
  snd_wm8776_resume(& spec->wm8776);
  snd_wm8766_resume(& spec->wm8766);
  }
  return (0);
}
}
static int psc724_init(struct snd_ice1712 *ice )
{
  struct psc724_spec *spec ;
  void *tmp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  {
  {
  tmp = kzalloc(8952UL, 208U);
  spec = (struct psc724_spec *)tmp;
  }
  if ((unsigned long )spec == (unsigned long )((struct psc724_spec *)0)) {
    return (-12);
  } else {
  }
  {
  ice->spec = (void *)spec;
  spec->ice = ice;
  ice->num_total_dacs = 6U;
  ice->num_total_adcs = 2U;
  spec->wm8776.ops.write = & psc724_wm8776_write;
  spec->wm8776.card = ice->card;
  snd_wm8776_init(& spec->wm8776);
  spec->wm8766.ops.write = & psc724_wm8766_write;
  spec->wm8766.card = ice->card;
  ice->pm_resume = & psc724_resume;
  ice->pm_suspend_enabled = 1U;
  snd_wm8766_init(& spec->wm8766);
  snd_wm8766_set_if(& spec->wm8766, 34);
  ice->gpio.set_pro_rate = & psc724_set_pro_rate;
  __init_work(& spec->hp_work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  spec->hp_work.work.data = __constr_expr_0;
  lockdep_init_map(& spec->hp_work.work.lockdep_map, "(&(&spec->hp_work)->work)",
                   & __key, 0);
  INIT_LIST_HEAD(& spec->hp_work.work.entry);
  spec->hp_work.work.func = & psc724_update_hp_jack_state;
  init_timer_key(& spec->hp_work.timer, 2U, "(&(&spec->hp_work)->timer)", & __key___0);
  spec->hp_work.timer.function = & delayed_work_timer_fn;
  spec->hp_work.timer.data = (unsigned long )(& spec->hp_work);
  psc724_set_jack_detection(ice, 1);
  }
  return (0);
}
}
static void psc724_exit(struct snd_ice1712 *ice )
{
  struct psc724_spec *spec ;
  {
  {
  spec = (struct psc724_spec *)ice->spec;
  cancel_delayed_work_sync(& spec->hp_work);
  }
  return;
}
}
static unsigned char psc724_eeprom[13U] =
  { 66U, 128U, 240U, 193U,
        (unsigned char)0, (unsigned char)0, 95U, 255U,
        255U, 160U, (unsigned char)0, (unsigned char)0,
        32U};
struct snd_ice1712_card_info snd_vt1724_psc724_cards[2U] = { {2870412825U, "Philips PSC724 Ultimate Edge", "psc724", 0, & psc724_init, & psc724_exit,
      & psc724_add_controls, (unsigned char)0, 0U, 0U, 0, 0, 13U, (unsigned char const *)(& psc724_eeprom)}};
void ldv_dummy_resourceless_instance_callback_14_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_23_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_24_3(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_add_controls(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_24_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_24_8(int (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_init(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_25_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_26_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_27_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_28_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_29_7(void (*arg0)(struct snd_ice1712 * ) ,
                                                   struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_exit(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(_Bool (*arg0)(struct snd_ice1712 * ) ,
                                                  struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_get_jack_detection(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_7(void (*arg0)(struct snd_ice1712 * ,
                                                               _Bool ) , struct snd_ice1712 *arg1 ,
                                                  _Bool arg2 )
{
  {
  {
  psc724_set_jack_detection(arg1, (int )arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(_Bool (*arg0)(struct snd_ice1712 * ) ,
                                                  struct snd_ice1712 *arg1 )
{
  {
  {
  psc724_get_master_switch(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_7(void (*arg0)(struct snd_ice1712 * ,
                                                               _Bool ) , struct snd_ice1712 *arg1 ,
                                                  _Bool arg2 )
{
  {
  {
  psc724_set_master_switch(arg1, (int )arg2);
  }
  return;
}
}
static void ldv_mutex_lock_102___4(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_103___4(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(ldv_func_arg1);
  }
  return;
}
}
__inline static unsigned long __ffs(unsigned long word )
{
  {
  __asm__ ("rep; bsf %1,%0": "=r" (word): "rm" (word));
  return (word);
}
}
static void snd_wm8766_write(struct snd_wm8766 *wm , u16 addr , u16 data )
{
  {
  if ((unsigned int )addr <= 15U) {
    wm->regs[(int )addr] = data;
  } else {
  }
  {
  (*(wm->ops.write))(wm, (int )addr, (int )data);
  }
  return;
}
}
static unsigned int const wm8766_tlv[4U] = { 1U, 8U, 4294954546U, 65586U};
static struct snd_wm8766_ctl snd_wm8766_default_ctl[14U] =
  { {0, "Channel 1 Playback Volume", 2, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                          0, 0}, (unsigned int const *)(& wm8766_tlv),
      0U, 1U, 511U, 511U, (unsigned short)0, 255U, 3U, 0, 0},
        {0, "Channel 2 Playback Volume", 2, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                          0, 0}, (unsigned int const *)(& wm8766_tlv),
      4U, 5U, 511U, 511U, (unsigned short)0, 255U, 3U, 0, 0},
        {0, "Channel 3 Playback Volume", 2, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                          0, 0}, (unsigned int const *)(& wm8766_tlv),
      6U, 7U, 511U, 511U, (unsigned short)0, 255U, 3U, 0, 0},
        {0, "Channel 1 Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                          0, 0}, 0, 9U, (unsigned short)0, 8U, (unsigned short)0,
      (unsigned short)0, (unsigned short)0, 4U, 0, 0},
        {0, "Channel 2 Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                          0, 0}, 0, 9U, (unsigned short)0, 16U, (unsigned short)0,
      (unsigned short)0, (unsigned short)0, 4U, 0, 0},
        {0, "Channel 3 Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                          0, 0}, 0, 9U, (unsigned short)0, 32U, (unsigned short)0,
      (unsigned short)0, (unsigned short)0, 4U, 0, 0},
        {0, "Channel 1 Phase Invert Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                       0, 0, 0, 0, 0, 0, 0}, 0, 3U,
      (unsigned short)0, 64U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, 0, 0},
        {0, "Channel 2 Phase Invert Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                       0, 0, 0, 0, 0, 0, 0}, 0, 3U,
      (unsigned short)0, 128U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, 0, 0},
        {0, "Channel 3 Phase Invert Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                       0, 0, 0, 0, 0, 0, 0}, 0, 3U,
      (unsigned short)0, 256U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, 0, 0},
        {0, "Channel 1 Deemphasis Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                     0, 0, 0, 0, 0, 0}, 0, 9U, (unsigned short)0,
      64U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      0, 0},
        {0, "Channel 2 Deemphasis Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                     0, 0, 0, 0, 0, 0}, 0, 9U, (unsigned short)0,
      128U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      0, 0},
        {0, "Channel 3 Deemphasis Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                     0, 0, 0, 0, 0, 0}, 0, 9U, (unsigned short)0,
      256U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      0, 0},
        {0, "Infinite Zero Detect Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                     0, 0, 0, 0, 0, 0}, 0, 2U, (unsigned short)0,
      16U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      0, 0},
        {0, "Zero Cross Detect Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                  0, 0, 0, 0, 0}, 0, 9U, (unsigned short)0,
      1U, (unsigned short)0, (unsigned short)0, (unsigned short)0, 4U, 0, 0}};
void snd_wm8766_init(struct snd_wm8766 *wm )
{
  int i ;
  u16 default_values[11U] ;
  {
  {
  default_values[0] = 0U;
  default_values[1] = 256U;
  default_values[2] = 288U;
  default_values[3] = 0U;
  default_values[4] = 0U;
  default_values[5] = 256U;
  default_values[6] = 0U;
  default_values[7] = 256U;
  default_values[8] = 0U;
  default_values[9] = 0U;
  default_values[10] = 128U;
  memcpy((void *)(& wm->ctl), (void const *)(& snd_wm8766_default_ctl), 2688UL);
  snd_wm8766_write(wm, 31, 0);
  __const_udelay(42950UL);
  i = 0;
  }
  goto ldv_27798;
  ldv_27797:
  {
  snd_wm8766_write(wm, (int )((u16 )i), (int )default_values[i]);
  i = i + 1;
  }
  ldv_27798: ;
  if ((unsigned int )i <= 10U) {
    goto ldv_27797;
  } else {
  }
  return;
}
}
void snd_wm8766_resume(struct snd_wm8766 *wm )
{
  int i ;
  {
  i = 0;
  goto ldv_27805;
  ldv_27804:
  {
  snd_wm8766_write(wm, (int )((u16 )i), (int )wm->regs[i]);
  i = i + 1;
  }
  ldv_27805: ;
  if (i <= 15) {
    goto ldv_27804;
  } else {
  }
  return;
}
}
void snd_wm8766_set_if(struct snd_wm8766 *wm , u16 dac )
{
  u16 val ;
  {
  {
  val = (unsigned int )wm->regs[3] & 65472U;
  dac = (unsigned int )dac & 63U;
  snd_wm8766_write(wm, 3, (int )val | (int )dac);
  }
  return;
}
}
void snd_wm8766_volume_restore(struct snd_wm8766 *wm )
{
  u16 val ;
  {
  {
  val = wm->regs[1];
  snd_wm8766_write(wm, 1, (int )((unsigned int )val | 256U));
  }
  return;
}
}
static int snd_wm8766_volume_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  struct snd_wm8766 *wm ;
  int n ;
  {
  wm = (struct snd_wm8766 *)kcontrol->private_data;
  n = (int )kcontrol->private_value;
  uinfo->type = 2;
  uinfo->count = (int )wm->ctl[n].flags & 1 ? 2U : 1U;
  uinfo->value.integer.min = (long )wm->ctl[n].min;
  uinfo->value.integer.max = (long )wm->ctl[n].max;
  return (0);
}
}
static int snd_wm8766_enum_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  struct snd_wm8766 *wm ;
  int n ;
  int tmp ;
  {
  {
  wm = (struct snd_wm8766 *)kcontrol->private_data;
  n = (int )kcontrol->private_value;
  tmp = snd_ctl_enum_info(uinfo, 1U, (unsigned int )wm->ctl[n].max, (char const * const *)(& wm->ctl[n].enum_names));
  }
  return (tmp);
}
}
static int snd_wm8766_ctl_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_wm8766 *wm ;
  int n ;
  u16 val1 ;
  u16 val2 ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  wm = (struct snd_wm8766 *)kcontrol->private_data;
  n = (int )kcontrol->private_value;
  if ((unsigned long )wm->ctl[n].get != (unsigned long )((void (*)(struct snd_wm8766 * ,
                                                                   u16 * , u16 * ))0)) {
    {
    (*(wm->ctl[n].get))(wm, & val1, & val2);
    }
  } else {
    {
    val1 = (u16 )((int )wm->regs[(int )wm->ctl[n].reg1] & (int )wm->ctl[n].mask1);
    tmp = __ffs((unsigned long )wm->ctl[n].mask1);
    val1 = (u16 )((int )val1 >> (int )tmp);
    }
    if ((int )wm->ctl[n].flags & 1) {
      {
      val2 = (u16 )((int )wm->regs[(int )wm->ctl[n].reg2] & (int )wm->ctl[n].mask2);
      tmp___0 = __ffs((unsigned long )wm->ctl[n].mask2);
      val2 = (u16 )((int )val2 >> (int )tmp___0);
      }
      if (((int )wm->ctl[n].flags & 2) != 0) {
        val2 = (unsigned int )val2 & 65279U;
      } else {
      }
    } else {
    }
  }
  if (((int )wm->ctl[n].flags & 4) != 0) {
    val1 = (int )wm->ctl[n].max + ((int )wm->ctl[n].min - (int )val1);
    if ((int )wm->ctl[n].flags & 1) {
      val2 = (int )wm->ctl[n].max + ((int )wm->ctl[n].min - (int )val2);
    } else {
    }
  } else {
  }
  ucontrol->value.integer.value[0] = (long )val1;
  if ((int )wm->ctl[n].flags & 1) {
    ucontrol->value.integer.value[1] = (long )val2;
  } else {
  }
  return (0);
}
}
static int snd_wm8766_ctl_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_wm8766 *wm ;
  int n ;
  u16 val ;
  u16 regval1 ;
  u16 regval2 ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  wm = (struct snd_wm8766 *)kcontrol->private_data;
  n = (int )kcontrol->private_value;
  regval1 = (u16 )ucontrol->value.integer.value[0];
  regval2 = (u16 )ucontrol->value.integer.value[1];
  if (((int )wm->ctl[n].flags & 4) != 0) {
    regval1 = (int )wm->ctl[n].max + ((int )wm->ctl[n].min - (int )regval1);
    regval2 = (int )wm->ctl[n].max + ((int )wm->ctl[n].min - (int )regval2);
  } else {
  }
  if ((unsigned long )wm->ctl[n].set != (unsigned long )((void (*)(struct snd_wm8766 * ,
                                                                   u16 , u16 ))0)) {
    {
    (*(wm->ctl[n].set))(wm, (int )regval1, (int )regval2);
    }
  } else {
    {
    val = (u16 )((int )((short )wm->regs[(int )wm->ctl[n].reg1]) & ~ ((int )((short )wm->ctl[n].mask1)));
    tmp = __ffs((unsigned long )wm->ctl[n].mask1);
    val = (u16 )((int )((short )val) | (int )((short )((int )regval1 << (int )tmp)));
    }
    if ((int )wm->ctl[n].flags & 1 && (int )wm->ctl[n].reg1 == (int )wm->ctl[n].reg2) {
      {
      val = (u16 )((int )((short )val) & ~ ((int )((short )wm->ctl[n].mask2)));
      tmp___0 = __ffs((unsigned long )wm->ctl[n].mask2);
      val = (u16 )((int )((short )val) | (int )((short )((int )regval2 << (int )tmp___0)));
      }
    } else {
    }
    {
    snd_wm8766_write(wm, (int )wm->ctl[n].reg1, (int )val);
    }
    if ((int )wm->ctl[n].flags & 1 && (int )wm->ctl[n].reg1 != (int )wm->ctl[n].reg2) {
      {
      val = (u16 )((int )((short )wm->regs[(int )wm->ctl[n].reg2]) & ~ ((int )((short )wm->ctl[n].mask2)));
      tmp___1 = __ffs((unsigned long )wm->ctl[n].mask2);
      val = (u16 )((int )((short )val) | (int )((short )((int )regval2 << (int )tmp___1)));
      }
      if (((int )wm->ctl[n].flags & 2) != 0) {
        val = (u16 )((unsigned int )val | 256U);
      } else {
      }
      {
      snd_wm8766_write(wm, (int )wm->ctl[n].reg2, (int )val);
      }
    } else {
    }
  }
  return (0);
}
}
static int snd_wm8766_add_control(struct snd_wm8766 *wm , int num )
{
  struct snd_kcontrol_new cont ;
  struct snd_kcontrol *ctl ;
  int tmp ;
  {
  {
  memset((void *)(& cont), 0, 80UL);
  cont.iface = 2;
  cont.private_value = (unsigned long )num;
  cont.name = (unsigned char const *)wm->ctl[num].name;
  cont.access = 3U;
  }
  if (((unsigned int )wm->ctl[num].flags & 24U) != 0U) {
    cont.access = cont.access | 256U;
  } else {
  }
  cont.tlv.p = (unsigned int const *)0U;
  cont.get = & snd_wm8766_ctl_get;
  cont.put = & snd_wm8766_ctl_put;
  {
  if (wm->ctl[num].type == 2) {
    goto case_2;
  } else {
  }
  if (wm->ctl[num].type == 1) {
    goto case_1;
  } else {
  }
  if (wm->ctl[num].type == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_2:
  cont.info = & snd_wm8766_volume_info;
  cont.access = cont.access | 16U;
  cont.tlv.p = wm->ctl[num].tlv;
  goto ldv_27852;
  case_1:
  wm->ctl[num].max = 1U;
  if ((int )wm->ctl[num].flags & 1) {
    cont.info = & snd_ctl_boolean_stereo_info;
  } else {
    cont.info = & snd_ctl_boolean_mono_info;
  }
  goto ldv_27852;
  case_3:
  cont.info = & snd_wm8766_enum_info;
  goto ldv_27852;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_27852:
  {
  ctl = snd_ctl_new1((struct snd_kcontrol_new const *)(& cont), (void *)wm);
  }
  if ((unsigned long )ctl == (unsigned long )((struct snd_kcontrol *)0)) {
    return (-12);
  } else {
  }
  {
  wm->ctl[num].kctl = ctl;
  tmp = snd_ctl_add(wm->card, ctl);
  }
  return (tmp);
}
}
int snd_wm8766_build_controls(struct snd_wm8766 *wm )
{
  int err ;
  int i ;
  {
  i = 0;
  goto ldv_27862;
  ldv_27861: ;
  if ((unsigned long )wm->ctl[i].name != (unsigned long )((char const *)0)) {
    {
    err = snd_wm8766_add_control(wm, i);
    }
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_27862: ;
  if (i <= 13) {
    goto ldv_27861;
  } else {
  }
  return (0);
}
}
static void snd_wm8776_write(struct snd_wm8776___0 *wm , u16 addr , u16 data )
{
  u8 bus_addr ;
  u8 bus_data ;
  {
  bus_addr = (u8 )((int )((signed char )((int )addr << 1)) | (int )((signed char )((int )data >> 8)));
  bus_data = (u8 )data;
  if ((unsigned int )addr <= 22U) {
    wm->regs[(int )addr] = data;
  } else {
  }
  {
  (*(wm->ops.write))(wm, (int )bus_addr, (int )bus_data);
  }
  return;
}
}
static void snd_wm8776_activate_ctl(struct snd_wm8776___0 *wm , char const *ctl_name ,
                                    bool active )
{
  struct snd_card *card ;
  struct snd_kcontrol *kctl ;
  struct snd_kcontrol_volatile *vd ;
  struct snd_ctl_elem_id elem_id ;
  unsigned int index_offset ;
  {
  {
  card = wm->card;
  memset((void *)(& elem_id), 0, 64UL);
  strlcpy((char *)(& elem_id.name), ctl_name, 44UL);
  elem_id.iface = 2;
  kctl = snd_ctl_find_id(card, & elem_id);
  }
  if ((unsigned long )kctl == (unsigned long )((struct snd_kcontrol *)0)) {
    return;
  } else {
  }
  {
  index_offset = snd_ctl_get_ioff(kctl, & kctl->id);
  vd = (struct snd_kcontrol_volatile *)(& kctl->vd) + (unsigned long )index_offset;
  }
  if ((int )active) {
    vd->access = vd->access & 4294967039U;
  } else {
    vd->access = vd->access | 256U;
  }
  {
  snd_ctl_notify(card, 2U, & kctl->id);
  }
  return;
}
}
static void snd_wm8776_update_agc_ctl(struct snd_wm8776___0 *wm )
{
  int i ;
  int flags_on ;
  int flags_off ;
  {
  flags_on = 0;
  flags_off = 0;
  {
  if ((unsigned int )wm->agc_mode == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )wm->agc_mode == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )wm->agc_mode == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )wm->agc_mode == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )wm->agc_mode == 4U) {
    goto case_4;
  } else {
  }
  goto switch_break;
  case_0:
  flags_off = 24;
  goto ldv_27825;
  case_1:
  flags_off = 16;
  flags_on = 8;
  goto ldv_27825;
  case_2: ;
  case_3: ;
  case_4:
  flags_off = 8;
  flags_on = 16;
  goto ldv_27825;
  switch_break: ;
  }
  ldv_27825:
  i = 0;
  goto ldv_27831;
  ldv_27830: ;
  if (((int )wm->ctl[i].flags & flags_off) != 0) {
    {
    snd_wm8776_activate_ctl(wm, wm->ctl[i].name, 0);
    }
  } else
  if (((int )wm->ctl[i].flags & flags_on) != 0) {
    {
    snd_wm8776_activate_ctl(wm, wm->ctl[i].name, 1);
    }
  } else {
  }
  i = i + 1;
  ldv_27831: ;
  if (i <= 31) {
    goto ldv_27830;
  } else {
  }
  return;
}
}
static void snd_wm8776_set_agc(struct snd_wm8776___0 *wm , u16 agc , u16 nothing )
{
  u16 alc1 ;
  u16 alc2 ;
  {
  alc1 = (unsigned int )wm->regs[16] & 65520U;
  alc2 = (unsigned int )wm->regs[17] & 65279U;
  {
  if ((int )agc == 0) {
    goto case_0;
  } else {
  }
  if ((int )agc == 1) {
    goto case_1;
  } else {
  }
  if ((int )agc == 2) {
    goto case_2;
  } else {
  }
  if ((int )agc == 3) {
    goto case_3;
  } else {
  }
  if ((int )agc == 4) {
    goto case_4;
  } else {
  }
  goto switch_break;
  case_0:
  wm->agc_mode = 0;
  goto ldv_27841;
  case_1:
  alc2 = (u16 )((unsigned int )alc2 | 256U);
  wm->agc_mode = 1;
  goto ldv_27841;
  case_2:
  alc1 = (u16 )((unsigned int )alc1 | 128U);
  alc2 = (u16 )((unsigned int )alc2 | 256U);
  wm->agc_mode = 2;
  goto ldv_27841;
  case_3:
  alc1 = (u16 )((unsigned int )alc1 | 256U);
  alc2 = (u16 )((unsigned int )alc2 | 256U);
  wm->agc_mode = 3;
  goto ldv_27841;
  case_4:
  alc1 = (u16 )((unsigned int )alc1 | 384U);
  alc2 = (u16 )((unsigned int )alc2 | 256U);
  wm->agc_mode = 4;
  goto ldv_27841;
  switch_break: ;
  }
  ldv_27841:
  {
  snd_wm8776_write(wm, 16, (int )alc1);
  snd_wm8776_write(wm, 17, (int )alc2);
  snd_wm8776_update_agc_ctl(wm);
  }
  return;
}
}
static void snd_wm8776_get_agc(struct snd_wm8776___0 *wm , u16 *mode , u16 *nothing )
{
  {
  *mode = (u16 )wm->agc_mode;
  return;
}
}
static unsigned int const wm8776_hp_tlv[4U] = { 1U, 8U, 4294959896U, 65636U};
static unsigned int const wm8776_dac_tlv[4U] = { 1U, 8U, 4294954546U, 65586U};
static unsigned int const wm8776_adc_tlv[4U] = { 1U, 8U, 4294956946U, 65586U};
static unsigned int const wm8776_lct_tlv[4U] = { 1U, 8U, 4294965696U, 100U};
static unsigned int const wm8776_maxgain_tlv[4U] = { 1U, 8U, 0U, 400U};
static unsigned int const wm8776_ngth_tlv[4U] = { 1U, 8U, 4294959496U, 600U};
static unsigned int const wm8776_maxatten_lim_tlv[4U] = { 1U, 8U, 4294966096U, 100U};
static unsigned int const wm8776_maxatten_alc_tlv[4U] = { 1U, 8U, 4294965196U, 400U};
static struct snd_wm8776_ctl snd_wm8776_default_ctl[32U] =
  { {"Master Playback Volume", 2, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
      (unsigned int const *)(& wm8776_dac_tlv), 3U, 4U, 511U, 511U, (unsigned short)0,
      255U, 3U, 0, 0},
        {"Master Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
      0, 7U, 7U, 16U, 128U, (unsigned short)0, (unsigned short)0, 1U, 0, 0},
        {"Master Zero Cross Detect Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                      0, 0, 0, 0, 0, 0}, 0, 7U, (unsigned short)0,
      1U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      0, 0},
        {"Headphone Playback Volume", 2, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                       0}, (unsigned int const *)(& wm8776_hp_tlv),
      0U, 1U, 383U, 383U, 47U, 127U, 3U, 0, 0},
        {"Headphone Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                       0}, 0, 13U, (unsigned short)0, 8U, (unsigned short)0,
      (unsigned short)0, (unsigned short)0, 4U, 0, 0},
        {"Headphone Zero Cross Detect Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                         0, 0, 0, 0, 0, 0, 0}, 0,
      0U, 1U, 128U, 128U, (unsigned short)0, (unsigned short)0, 1U, 0, 0},
        {"AUX Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
      0, 22U, (unsigned short)0, 2U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, 0, 0},
        {"Bypass Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
      0, 22U, (unsigned short)0, 4U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, 0, 0},
        {"Infinite Zero Detect Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                  0, 0, 0, 0, 0}, 0, 7U, (unsigned short)0,
      4U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      0, 0},
        {"Phase Invert Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                          0, 0}, 0, 6U, 6U, 1U, 2U, (unsigned short)0,
      (unsigned short)0, 1U, 0, 0},
        {"Deemphasis Playback Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                        0, 0}, 0, 9U, (unsigned short)0, 1U, (unsigned short)0,
      (unsigned short)0, (unsigned short)0, (unsigned short)0, 0, 0},
        {"Input Capture Volume", 2, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
      (unsigned int const *)(& wm8776_adc_tlv), 14U, 15U, 255U, 255U, (unsigned short)0,
      255U, 3U, 0, 0},
        {"Input Capture Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
      0, 21U, 21U, 128U, 64U, (unsigned short)0, (unsigned short)0, 5U, 0, 0},
        {"AIN1 Capture Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
      0, 21U, (unsigned short)0, 1U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, 0, 0},
        {"AIN2 Capture Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
      0, 21U, (unsigned short)0, 2U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, 0, 0},
        {"AIN3 Capture Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
      0, 21U, (unsigned short)0, 4U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, 0, 0},
        {"AIN4 Capture Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
      0, 21U, (unsigned short)0, 8U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, 0, 0},
        {"AIN5 Capture Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
      0, 21U, (unsigned short)0, 16U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, 0, 0},
        {"AGC Select Capture Enum", 3, {"Off", "Limiter", "ALC Right", "ALC Left", "ALC Stereo"},
      0, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, 5U, (unsigned short)0, & snd_wm8776_set_agc, & snd_wm8776_get_agc},
        {"Limiter Threshold Capture Volume",
      2, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, (unsigned int const *)(& wm8776_lct_tlv),
      16U, (unsigned short)0, 15U, (unsigned short)0, (unsigned short)0, 15U, 8U,
      0, 0},
        {"Limiter Attack Time Capture Enum", 3, {"0.25 ms", "0.5 ms", "1 ms", "2 ms",
                                              "4 ms", "8 ms", "16 ms", "32 ms", "64 ms",
                                              "128 ms", "256 ms"}, 0, 18U, (unsigned short)0,
      15U, (unsigned short)0, (unsigned short)0, 11U, 8U, 0, 0},
        {"Limiter Decay Time Capture Enum", 3, {"1.2 ms", "2.4 ms", "4.8 ms", "9.6 ms",
                                             "19.2 ms", "38.4 ms", "76.8 ms", "154 ms",
                                             "307 ms", "614 ms", "1.23 s"}, 0, 18U,
      (unsigned short)0, 240U, (unsigned short)0, (unsigned short)0, 11U, 8U, 0, 0},
        {"Limiter Transient Window Capture Enum",
      3, {"0 us", "62.5 us", "125 us", "250 us", "500 us", "1 ms", "2 ms", "4 ms"},
      0, 20U, (unsigned short)0, 112U, (unsigned short)0, (unsigned short)0, 8U, 8U,
      0, 0},
        {"Limiter Maximum Attenuation Capture Volume", 2, {0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                        0, 0, 0, 0, 0, 0, 0}, (unsigned int const *)(& wm8776_maxatten_lim_tlv),
      20U, (unsigned short)0, 15U, (unsigned short)0, 3U, 12U, 12U, 0, 0},
        {"ALC Target Level Capture Volume", 2, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0}, (unsigned int const *)(& wm8776_lct_tlv),
      16U, (unsigned short)0, 15U, (unsigned short)0, (unsigned short)0, 15U, 16U,
      0, 0},
        {"ALC Attack Time Capture Enum", 3, {"8.40 ms", "16.8 ms", "33.6 ms", "67.2 ms",
                                          "134 ms", "269 ms", "538 ms", "1.08 s",
                                          "2.15 s", "4.3 s", "8.6 s"}, 0, 18U, (unsigned short)0,
      15U, (unsigned short)0, (unsigned short)0, 11U, 16U, 0, 0},
        {"ALC Decay Time Capture Enum", 3, {"33.5 ms", "67.0 ms", "134 ms", "268 ms",
                                         "536 ms", "1.07 s", "2.14 s", "4.29 s", "8.58 s",
                                         "17.2 s", "34.3 s"}, 0, 18U, (unsigned short)0,
      240U, (unsigned short)0, (unsigned short)0, 11U, 16U, 0, 0},
        {"ALC Maximum Gain Capture Volume", 2, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0}, (unsigned int const *)(& wm8776_maxgain_tlv),
      16U, (unsigned short)0, 112U, (unsigned short)0, 1U, 7U, 16U, 0, 0},
        {"ALC Maximum Attenuation Capture Volume", 2, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                    0, 0, 0, 0, 0, 0}, (unsigned int const *)(& wm8776_maxatten_alc_tlv),
      20U, (unsigned short)0, 15U, (unsigned short)0, 10U, 15U, 20U, 0, 0},
        {"ALC Hold Time Capture Enum", 3, {"0 ms", "2.67 ms", "5.33 ms", "10.6 ms", "21.3 ms",
                                        "42.7 ms", "85.3 ms", "171 ms", "341 ms",
                                        "683 ms", "1.37 s", "2.73 s", "5.46 s", "10.9 s",
                                        "21.8 s", "43.7 s"}, 0, 17U, (unsigned short)0,
      15U, (unsigned short)0, (unsigned short)0, 16U, 16U, 0, 0},
        {"Noise Gate Capture Switch", 1, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                       0}, 0, 19U, (unsigned short)0, 1U, (unsigned short)0,
      (unsigned short)0, (unsigned short)0, 16U, 0, 0},
        {"Noise Gate Threshold Capture Volume", 2, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                                 0, 0, 0, 0, 0}, (unsigned int const *)(& wm8776_ngth_tlv),
      19U, (unsigned short)0, 28U, (unsigned short)0, (unsigned short)0, 7U, 16U,
      0, 0}};
void snd_wm8776_init(struct snd_wm8776___0 *wm )
{
  int i ;
  u16 default_values[23U] ;
  {
  {
  default_values[0] = 0U;
  default_values[1] = 256U;
  default_values[2] = 0U;
  default_values[3] = 0U;
  default_values[4] = 256U;
  default_values[5] = 0U;
  default_values[6] = 0U;
  default_values[7] = 144U;
  default_values[8] = 0U;
  default_values[9] = 0U;
  default_values[10] = 34U;
  default_values[11] = 34U;
  default_values[12] = 34U;
  default_values[13] = 8U;
  default_values[14] = 207U;
  default_values[15] = 207U;
  default_values[16] = 123U;
  default_values[17] = 0U;
  default_values[18] = 50U;
  default_values[19] = 0U;
  default_values[20] = 166U;
  default_values[21] = 1U;
  default_values[22] = 1U;
  memcpy((void *)(& wm->ctl), (void const *)(& snd_wm8776_default_ctl), 5888UL);
  snd_wm8776_write(wm, 23, 0);
  __const_udelay(42950UL);
  i = 0;
  }
  goto ldv_27876;
  ldv_27875:
  {
  snd_wm8776_write(wm, (int )((u16 )i), (int )default_values[i]);
  i = i + 1;
  }
  ldv_27876: ;
  if ((unsigned int )i <= 22U) {
    goto ldv_27875;
  } else {
  }
  return;
}
}
void snd_wm8776_resume(struct snd_wm8776___0 *wm )
{
  int i ;
  {
  i = 0;
  goto ldv_27883;
  ldv_27882:
  {
  snd_wm8776_write(wm, (int )((u16 )i), (int )wm->regs[i]);
  i = i + 1;
  }
  ldv_27883: ;
  if (i <= 22) {
    goto ldv_27882;
  } else {
  }
  return;
}
}
void snd_wm8776_set_power(struct snd_wm8776___0 *wm , u16 power )
{
  {
  {
  snd_wm8776_write(wm, 13, (int )power);
  }
  return;
}
}
void snd_wm8776_volume_restore(struct snd_wm8776___0 *wm )
{
  u16 val ;
  {
  {
  val = wm->regs[4];
  snd_wm8776_write(wm, 4, (int )((unsigned int )val | 256U));
  }
  return;
}
}
static int snd_wm8776_volume_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  struct snd_wm8776___0 *wm ;
  int n ;
  {
  wm = (struct snd_wm8776___0 *)kcontrol->private_data;
  n = (int )kcontrol->private_value;
  uinfo->type = 2;
  uinfo->count = (int )wm->ctl[n].flags & 1 ? 2U : 1U;
  uinfo->value.integer.min = (long )wm->ctl[n].min;
  uinfo->value.integer.max = (long )wm->ctl[n].max;
  return (0);
}
}
static int snd_wm8776_enum_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  struct snd_wm8776___0 *wm ;
  int n ;
  int tmp ;
  {
  {
  wm = (struct snd_wm8776___0 *)kcontrol->private_data;
  n = (int )kcontrol->private_value;
  tmp = snd_ctl_enum_info(uinfo, 1U, (unsigned int )wm->ctl[n].max, (char const * const *)(& wm->ctl[n].enum_names));
  }
  return (tmp);
}
}
static int snd_wm8776_ctl_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_wm8776___0 *wm ;
  int n ;
  u16 val1 ;
  u16 val2 ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  wm = (struct snd_wm8776___0 *)kcontrol->private_data;
  n = (int )kcontrol->private_value;
  if ((unsigned long )wm->ctl[n].get != (unsigned long )((void (*)(struct snd_wm8776___0 * ,
                                                                   u16 * , u16 * ))0)) {
    {
    (*(wm->ctl[n].get))(wm, & val1, & val2);
    }
  } else {
    {
    val1 = (u16 )((int )wm->regs[(int )wm->ctl[n].reg1] & (int )wm->ctl[n].mask1);
    tmp = __ffs((unsigned long )wm->ctl[n].mask1);
    val1 = (u16 )((int )val1 >> (int )tmp);
    }
    if ((int )wm->ctl[n].flags & 1) {
      {
      val2 = (u16 )((int )wm->regs[(int )wm->ctl[n].reg2] & (int )wm->ctl[n].mask2);
      tmp___0 = __ffs((unsigned long )wm->ctl[n].mask2);
      val2 = (u16 )((int )val2 >> (int )tmp___0);
      }
      if (((int )wm->ctl[n].flags & 2) != 0) {
        val2 = (unsigned int )val2 & 65279U;
      } else {
      }
    } else {
    }
  }
  if (((int )wm->ctl[n].flags & 4) != 0) {
    val1 = (int )wm->ctl[n].max + ((int )wm->ctl[n].min - (int )val1);
    if ((int )wm->ctl[n].flags & 1) {
      val2 = (int )wm->ctl[n].max + ((int )wm->ctl[n].min - (int )val2);
    } else {
    }
  } else {
  }
  ucontrol->value.integer.value[0] = (long )val1;
  if ((int )wm->ctl[n].flags & 1) {
    ucontrol->value.integer.value[1] = (long )val2;
  } else {
  }
  return (0);
}
}
static int snd_wm8776_ctl_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct snd_wm8776___0 *wm ;
  int n ;
  u16 val ;
  u16 regval1 ;
  u16 regval2 ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  wm = (struct snd_wm8776___0 *)kcontrol->private_data;
  n = (int )kcontrol->private_value;
  regval1 = (u16 )ucontrol->value.integer.value[0];
  regval2 = (u16 )ucontrol->value.integer.value[1];
  if (((int )wm->ctl[n].flags & 4) != 0) {
    regval1 = (int )wm->ctl[n].max + ((int )wm->ctl[n].min - (int )regval1);
    regval2 = (int )wm->ctl[n].max + ((int )wm->ctl[n].min - (int )regval2);
  } else {
  }
  if ((unsigned long )wm->ctl[n].set != (unsigned long )((void (*)(struct snd_wm8776___0 * ,
                                                                   u16 , u16 ))0)) {
    {
    (*(wm->ctl[n].set))(wm, (int )regval1, (int )regval2);
    }
  } else {
    {
    val = (u16 )((int )((short )wm->regs[(int )wm->ctl[n].reg1]) & ~ ((int )((short )wm->ctl[n].mask1)));
    tmp = __ffs((unsigned long )wm->ctl[n].mask1);
    val = (u16 )((int )((short )val) | (int )((short )((int )regval1 << (int )tmp)));
    }
    if ((int )wm->ctl[n].flags & 1 && (int )wm->ctl[n].reg1 == (int )wm->ctl[n].reg2) {
      {
      val = (u16 )((int )((short )val) & ~ ((int )((short )wm->ctl[n].mask2)));
      tmp___0 = __ffs((unsigned long )wm->ctl[n].mask2);
      val = (u16 )((int )((short )val) | (int )((short )((int )regval2 << (int )tmp___0)));
      }
    } else {
    }
    {
    snd_wm8776_write(wm, (int )wm->ctl[n].reg1, (int )val);
    }
    if ((int )wm->ctl[n].flags & 1 && (int )wm->ctl[n].reg1 != (int )wm->ctl[n].reg2) {
      {
      val = (u16 )((int )((short )wm->regs[(int )wm->ctl[n].reg2]) & ~ ((int )((short )wm->ctl[n].mask2)));
      tmp___1 = __ffs((unsigned long )wm->ctl[n].mask2);
      val = (u16 )((int )((short )val) | (int )((short )((int )regval2 << (int )tmp___1)));
      }
      if (((int )wm->ctl[n].flags & 2) != 0) {
        val = (u16 )((unsigned int )val | 256U);
      } else {
      }
      {
      snd_wm8776_write(wm, (int )wm->ctl[n].reg2, (int )val);
      }
    } else {
    }
  }
  return (0);
}
}
static int snd_wm8776_add_control(struct snd_wm8776___0 *wm , int num )
{
  struct snd_kcontrol_new cont ;
  struct snd_kcontrol *ctl ;
  int tmp ;
  {
  {
  memset((void *)(& cont), 0, 80UL);
  cont.iface = 2;
  cont.private_value = (unsigned long )num;
  cont.name = (unsigned char const *)wm->ctl[num].name;
  cont.access = 3U;
  }
  if (((unsigned int )wm->ctl[num].flags & 24U) != 0U) {
    cont.access = cont.access | 256U;
  } else {
  }
  cont.tlv.p = (unsigned int const *)0U;
  cont.get = & snd_wm8776_ctl_get;
  cont.put = & snd_wm8776_ctl_put;
  {
  if (wm->ctl[num].type == 2) {
    goto case_2;
  } else {
  }
  if (wm->ctl[num].type == 1) {
    goto case_1;
  } else {
  }
  if (wm->ctl[num].type == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_2:
  cont.info = & snd_wm8776_volume_info;
  cont.access = cont.access | 16U;
  cont.tlv.p = wm->ctl[num].tlv;
  goto ldv_27929;
  case_1:
  wm->ctl[num].max = 1U;
  if ((int )wm->ctl[num].flags & 1) {
    cont.info = & snd_ctl_boolean_stereo_info;
  } else {
    cont.info = & snd_ctl_boolean_mono_info;
  }
  goto ldv_27929;
  case_3:
  cont.info = & snd_wm8776_enum_info;
  goto ldv_27929;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_27929:
  {
  ctl = snd_ctl_new1((struct snd_kcontrol_new const *)(& cont), (void *)wm);
  }
  if ((unsigned long )ctl == (unsigned long )((struct snd_kcontrol *)0)) {
    return (-12);
  } else {
  }
  {
  tmp = snd_ctl_add(wm->card, ctl);
  }
  return (tmp);
}
}
int snd_wm8776_build_controls(struct snd_wm8776___0 *wm )
{
  int err ;
  int i ;
  {
  i = 0;
  goto ldv_27939;
  ldv_27938: ;
  if ((unsigned long )wm->ctl[i].name != (unsigned long )((char const *)0)) {
    {
    err = snd_wm8776_add_control(wm, i);
    }
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_27939: ;
  if (i <= 31) {
    goto ldv_27938;
  } else {
  }
  return (0);
}
}
void ldv_dummy_resourceless_instance_callback_37_3(void (*arg0)(struct snd_wm8776___0 * ,
                                                                unsigned short * ,
                                                                unsigned short * ) ,
                                                   struct snd_wm8776___0 *arg1 , unsigned short *arg2 ,
                                                   unsigned short *arg3 )
{
  {
  {
  snd_wm8776_get_agc(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_37_9(void (*arg0)(struct snd_wm8776___0 * ,
                                                                unsigned short ,
                                                                unsigned short ) ,
                                                   struct snd_wm8776___0 *arg1 , unsigned short arg2 ,
                                                   unsigned short arg3 )
{
  {
  {
  snd_wm8776_set_agc(arg1, (int )arg2, (int )arg3);
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
void *ldv_malloc(size_t size ) ;
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_gpio_mutex_of_snd_ice1712 ;
void ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_gpio_mutex_of_snd_ice1712);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_gpio_mutex_of_snd_ice1712 = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_gpio_mutex_of_snd_ice1712(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_gpio_mutex_of_snd_ice1712);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_gpio_mutex_of_snd_ice1712 = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_gpio_mutex_of_snd_ice1712(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_gpio_mutex_of_snd_ice1712) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_gpio_mutex_of_snd_ice1712(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_gpio_mutex_of_snd_ice1712);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_gpio_mutex_of_snd_ice1712(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_gpio_mutex_of_snd_ice1712 = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_gpio_mutex_of_snd_ice1712(atomic_t *cnt ,
                                                                                       struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_gpio_mutex_of_snd_ice1712(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_gpio_mutex_of_snd_ice1712(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_gpio_mutex_of_snd_ice1712);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_gpio_mutex_of_snd_ice1712 = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_snd_ice1712 ;
void ldv_linux_kernel_locking_mutex_mutex_lock_i2c_mutex_of_snd_ice1712(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_snd_ice1712);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_snd_ice1712 = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_i2c_mutex_of_snd_ice1712(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_snd_ice1712);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_snd_ice1712 = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_i2c_mutex_of_snd_ice1712(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_snd_ice1712) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_i2c_mutex_of_snd_ice1712(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_snd_ice1712);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_i2c_mutex_of_snd_ice1712(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_snd_ice1712 = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_i2c_mutex_of_snd_ice1712(atomic_t *cnt ,
                                                                                      struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_i2c_mutex_of_snd_ice1712(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_i2c_mutex_of_snd_ice1712(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_snd_ice1712);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_snd_ice1712 = 0;
  }
  return;
}
}
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_mutex_of_snd_i2c_bus ;
void ldv_linux_kernel_locking_mutex_mutex_lock_lock_mutex_of_snd_i2c_bus(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_mutex_of_snd_i2c_bus);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_mutex_of_snd_i2c_bus = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_lock_mutex_of_snd_i2c_bus(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_mutex_of_snd_i2c_bus);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_mutex_of_snd_i2c_bus = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_lock_mutex_of_snd_i2c_bus(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_mutex_of_snd_i2c_bus) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_lock_mutex_of_snd_i2c_bus(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_mutex_of_snd_i2c_bus);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_lock_mutex_of_snd_i2c_bus(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_mutex_of_snd_i2c_bus = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_lock_mutex_of_snd_i2c_bus(atomic_t *cnt ,
                                                                                       struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_lock_mutex_of_snd_i2c_bus(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_lock_mutex_of_snd_i2c_bus(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_mutex_of_snd_i2c_bus);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_mutex_of_snd_i2c_bus = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mute_mutex_of_prodigy192_spec ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mute_mutex_of_prodigy192_spec(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mute_mutex_of_prodigy192_spec);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mute_mutex_of_prodigy192_spec = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mute_mutex_of_prodigy192_spec(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mute_mutex_of_prodigy192_spec);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mute_mutex_of_prodigy192_spec = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mute_mutex_of_prodigy192_spec(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mute_mutex_of_prodigy192_spec) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_mute_mutex_of_prodigy192_spec(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mute_mutex_of_prodigy192_spec);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mute_mutex_of_prodigy192_spec(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mute_mutex_of_prodigy192_spec = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mute_mutex_of_prodigy192_spec(atomic_t *cnt ,
                                                                                           struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mute_mutex_of_prodigy192_spec(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mute_mutex_of_prodigy192_spec(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mute_mutex_of_prodigy192_spec);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mute_mutex_of_prodigy192_spec = 0;
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_snd_maya44 ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_snd_maya44(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_snd_maya44);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_snd_maya44 = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mutex_of_snd_maya44(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_snd_maya44);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_snd_maya44 = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_snd_maya44(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_snd_maya44) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_mutex_of_snd_maya44(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_snd_maya44);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_snd_maya44(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_snd_maya44 = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mutex_of_snd_maya44(atomic_t *cnt ,
                                                                                 struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_snd_maya44(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_snd_maya44(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_snd_maya44);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_snd_maya44 = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_snd_ice1712 ;
void ldv_linux_kernel_locking_mutex_mutex_lock_open_mutex_of_snd_ice1712(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_snd_ice1712);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_snd_ice1712 = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_open_mutex_of_snd_ice1712(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_snd_ice1712);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_snd_ice1712 = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_open_mutex_of_snd_ice1712(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_snd_ice1712) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_open_mutex_of_snd_ice1712(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_snd_ice1712);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_open_mutex_of_snd_ice1712(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_snd_ice1712 = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_open_mutex_of_snd_ice1712(atomic_t *cnt ,
                                                                                       struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_open_mutex_of_snd_ice1712(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_snd_ice1712(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_snd_ice1712);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_snd_ice1712 = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card ;
void ldv_linux_kernel_locking_mutex_mutex_lock_power_lock_of_snd_card(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_power_lock_of_snd_card(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_power_lock_of_snd_card(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_power_lock_of_snd_card(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_power_lock_of_snd_card(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_power_lock_of_snd_card(atomic_t *cnt ,
                                                                                    struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_power_lock_of_snd_card(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_power_lock_of_snd_card(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card = 0;
  }
  return;
}
}
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_gpio_mutex_of_snd_ice1712 = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_snd_ice1712 = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_mutex_of_snd_i2c_bus = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mute_mutex_of_prodigy192_spec = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_snd_maya44 = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_snd_ice1712 = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_gpio_mutex_of_snd_ice1712);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i2c_mutex_of_snd_ice1712);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock_mutex_of_snd_i2c_bus);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mute_mutex_of_prodigy192_spec);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_snd_maya44);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_snd_ice1712);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card);
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
static int ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_reg_lock_of_snd_ice1712(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 1);
  ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_reg_lock_of_snd_ice1712(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 2);
  ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_reg_lock_of_snd_ice1712(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_reg_lock_of_snd_ice1712(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_reg_lock_of_snd_ice1712(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_reg_lock_of_snd_ice1712(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_reg_lock_of_snd_ice1712();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_reg_lock_of_snd_ice1712(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_reg_lock_of_snd_ice1712(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 = 2;
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
void ldv_linux_kernel_locking_spinlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
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
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_reg_lock_of_snd_ice1712 == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_assert_linux_kernel_sched_completion__double_init(int expr ) ;
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr ) ;
static int ldv_linux_kernel_sched_completion_completion = 0;
void ldv_linux_kernel_sched_completion_init_completion(void)
{
  {
  ldv_linux_kernel_sched_completion_completion = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 2;
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
void __const_udelay(unsigned long arg0) {
  return;
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t *arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
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
int __VERIFIER_nondet_int(void);
int _snd_ctl_add_slave(struct snd_kcontrol *arg0, struct snd_kcontrol *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
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
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
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
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_uninterruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int snd_ac97_bus(struct snd_card *arg0, int arg1, struct snd_ac97_bus_ops *arg2, void *arg3, struct snd_ac97_bus **arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_ac97_mixer(struct snd_ac97_bus *arg0, struct snd_ac97_template *arg1, struct snd_ac97 **arg2) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
unsigned short int snd_ac97_read(struct snd_ac97 *arg0, unsigned short arg1) {
  return __VERIFIER_nondet_ushort();
}
void snd_ac97_resume(struct snd_ac97 *arg0) {
  return;
}
void snd_ac97_suspend(struct snd_ac97 *arg0) {
  return;
}
void snd_ac97_write_cache(struct snd_ac97 *arg0, unsigned short arg1, unsigned short arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int snd_ak4113_build(struct ak4113 *arg0, struct snd_pcm_substream *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_ak4113_create(struct snd_card *arg0, ak4113_read_t *arg1, ak4113_write_t *arg2, const unsigned char *arg3, void *arg4, struct ak4113 **arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_ak4113_external_rate(struct ak4113 *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_ak4114_build(struct ak4114 *arg0, struct snd_pcm_substream *arg1, struct snd_pcm_substream *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_ak4114_create(struct snd_card *arg0, ak4114_read_t *arg1, ak4114_write_t *arg2, const unsigned char *arg3, const unsigned char *arg4, void *arg5, struct ak4114 **arg6) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_ak4114_external_rate(struct ak4114 *arg0) {
  return __VERIFIER_nondet_int();
}
void snd_ak4114_reinit(struct ak4114 *arg0) {
  return;
}
void snd_ak4114_resume(struct ak4114 *arg0) {
  return;
}
void snd_ak4114_suspend(struct ak4114 *arg0) {
  return;
}
void snd_akm4xxx_reset(struct snd_akm4xxx *arg0, int arg1) {
  return;
}
void snd_akm4xxx_write(struct snd_akm4xxx *arg0, int arg1, unsigned char arg2, unsigned char arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int snd_card_disconnect(struct snd_card *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_card_free(struct snd_card *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_card_new(struct device *arg0, int arg1, const char *arg2, struct module *arg3, int arg4, struct snd_card **arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_card_proc_new(struct snd_card *arg0, const char *arg1, struct snd_info_entry **arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_card_register(struct snd_card *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_ctl_add(struct snd_card *arg0, struct snd_kcontrol *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_ctl_enum_info(struct snd_ctl_elem_info *arg0, unsigned int arg1, unsigned int arg2, const char * const *arg3) {
  return __VERIFIER_nondet_int();
}
struct snd_kcontrol *snd_ctl_find_id(struct snd_card *arg0, struct snd_ctl_elem_id *arg1) {
  return ldv_malloc(sizeof(struct snd_kcontrol));
}
struct snd_kcontrol *snd_ctl_make_virtual_master(char *arg0, const unsigned int *arg1) {
  return ldv_malloc(sizeof(struct snd_kcontrol));
}
struct snd_kcontrol *snd_ctl_new1(const struct snd_kcontrol_new *arg0, void *arg1) {
  return ldv_malloc(sizeof(struct snd_kcontrol));
}
void snd_ctl_notify(struct snd_card *arg0, unsigned int arg1, struct snd_ctl_elem_id *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int snd_device_new(struct snd_card *arg0, enum snd_device_type arg1, void *arg2, struct snd_device_ops *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_i2c_bus_create(struct snd_card *arg0, const char *arg1, struct snd_i2c_bus *arg2, struct snd_i2c_bus **arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_i2c_device_create(struct snd_i2c_bus *arg0, const char *arg1, unsigned char arg2, struct snd_i2c_device **arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_ice1712_akm4xxx_build_controls(struct snd_ice1712 *arg0) {
  return __VERIFIER_nondet_int();
}
void snd_ice1712_akm4xxx_free(struct snd_ice1712 *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int snd_ice1712_akm4xxx_init(struct snd_akm4xxx *arg0, const struct snd_akm4xxx *arg1, const struct snd_ak4xxx_private *arg2, struct snd_ice1712 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_info_get_line(struct snd_info_buffer *arg0, char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_iprintf(struct snd_info_buffer *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_hw_constraint_list(struct snd_pcm_runtime *arg0, unsigned int arg1, snd_pcm_hw_param_t arg2, const struct snd_pcm_hw_constraint_list *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_hw_constraint_msbits(struct snd_pcm_runtime *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_hw_constraint_step(struct snd_pcm_runtime *arg0, unsigned int arg1, snd_pcm_hw_param_t arg2, unsigned long arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_lib_free_pages(struct snd_pcm_substream *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_lib_ioctl(struct snd_pcm_substream *arg0, unsigned int arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_lib_malloc_pages(struct snd_pcm_substream *arg0, size_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_lib_preallocate_pages_for_all(struct snd_pcm *arg0, int arg1, void *arg2, size_t arg3, size_t arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_new(struct snd_card *arg0, const char *arg1, int arg2, int arg3, int arg4, struct snd_pcm **arg5) {
  return __VERIFIER_nondet_int();
}
void snd_pcm_period_elapsed(struct snd_pcm_substream *arg0) {
  return;
}
void snd_pcm_set_ops(struct snd_pcm *arg0, int arg1, const struct snd_pcm_ops *arg2) {
  return;
}
void snd_pcm_set_sync(struct snd_pcm_substream *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int snd_pcm_suspend_all(struct snd_pcm *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pt2258_build_controls(struct snd_pt2258 *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pt2258_reset(struct snd_pt2258 *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_rawmidi_new(struct snd_card *arg0, char *arg1, int arg2, int arg3, int arg4, struct snd_rawmidi **arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_rawmidi_receive(struct snd_rawmidi_substream *arg0, const unsigned char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void snd_rawmidi_set_ops(struct snd_rawmidi *arg0, int arg1, struct snd_rawmidi_ops *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int snd_rawmidi_transmit(struct snd_rawmidi_substream *arg0, unsigned char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_rawmidi_transmit_empty(struct snd_rawmidi_substream *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
