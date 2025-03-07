typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
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
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;
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
typedef unsigned int uint;
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
struct class;
struct device;
struct completion;
struct gendisk;
struct module;
struct mutex;
struct request_queue;
struct request;
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
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
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
struct __anonstruct_mm_segment_t_25 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_25 mm_segment_t;
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
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
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
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
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
struct execute_work {
   struct work_struct work ;
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
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct ctl_table;
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
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
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
struct __anonstruct____missing_field_name_179 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_178 {
   struct __anonstruct____missing_field_name_179 __annonCompField48 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_178 __annonCompField49 ;
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
struct dma_pool;
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
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct block_device;
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bvec_iter {
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned int bi_idx ;
   unsigned int bi_bvec_done ;
};
union __anonunion____missing_field_name_199 {
   struct bio_integrity_payload *bi_integrity ;
};
struct bio {
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   struct bvec_iter bi_iter ;
   unsigned int bi_phys_segments ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   atomic_t bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   union __anonunion____missing_field_name_199 __annonCompField65 ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
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
struct block_device_operations;
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
struct disk_stats {
   unsigned long sectors[2U] ;
   unsigned long ios[2U] ;
   unsigned long merges[2U] ;
   unsigned long ticks[2U] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   char uuid[37U] ;
   u8 volname[64U] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   seqcount_t nr_sects_seq ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2U] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct callback_head callback_head ;
};
struct disk_part_tbl {
   struct callback_head callback_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32U] ;
   char *(*devnode)(struct gendisk * , umode_t * ) ;
   unsigned int events ;
   unsigned int async_events ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations const *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct __large_struct {
   unsigned long buf[100U] ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   enum writeback_sync_modes sync_mode ;
   unsigned char for_kupdate : 1 ;
   unsigned char for_background : 1 ;
   unsigned char tagged_writepages : 1 ;
   unsigned char for_reclaim : 1 ;
   unsigned char range_cyclic : 1 ;
   unsigned char for_sync : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned long last_old_flush ;
   struct delayed_work dwork ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   struct list_head b_dirty_time ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
typedef void *mempool_alloc_t(gfp_t , void * );
typedef void mempool_free_t(void * , void * );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
union __anonunion____missing_field_name_214 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_215 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_214 __annonCompField73 ;
   union __anonunion____missing_field_name_215 __annonCompField74 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t active_ref ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
};
struct bio_integrity_payload {
   struct bio *bip_bio ;
   struct bvec_iter bip_iter ;
   bio_end_io_t *bip_end_io ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_max_vcnt ;
   unsigned short bip_flags ;
   struct work_struct bip_work ;
   struct bio_vec *bip_vec ;
   struct bio_vec bip_inline_vecs[0U] ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bvec_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_integrity_pool ;
   spinlock_t rescue_lock ;
   struct bio_list rescue_list ;
   struct work_struct rescue_work ;
   struct workqueue_struct *rescue_workqueue ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
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
struct elevator_queue;
struct blk_trace;
struct bsg_job;
struct blkcg_gq;
struct blk_flush_queue;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   struct request_queue *q ;
   struct blkcg_gq *blkg ;
   int count[2U] ;
   int starved[2U] ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2U] ;
   unsigned int flags ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion____missing_field_name_216 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion____missing_field_name_217 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion____missing_field_name_218 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_220 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_221 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_219 {
   struct __anonstruct_elv_220 elv ;
   struct __anonstruct_flush_221 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion____missing_field_name_216 __annonCompField75 ;
   struct request_queue *q ;
   struct blk_mq_ctx *mq_ctx ;
   u64 cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   union __anonunion____missing_field_name_217 __annonCompField76 ;
   union __anonunion____missing_field_name_218 __annonCompField77 ;
   union __anonunion____missing_field_name_219 __annonCompField78 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   void *special ;
   int tag ;
   int errors ;
   unsigned char __cmd[16U] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
struct elevator_type;
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , struct bio * ,
                                gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef int elevator_init_fn(struct request_queue * , struct elevator_type * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16U] ;
   struct module *elevator_owner ;
   char icq_cache_name[21U] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   unsigned char registered : 1 ;
   struct hlist_head hash[64U] ;
};
typedef void request_fn_proc(struct request_queue * );
typedef void make_request_fn(struct request_queue * , struct bio * );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue * );
typedef int bsg_job_fn(struct bsg_job * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
   int alloc_policy ;
   int next_tag ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int chunk_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int max_write_same_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
   unsigned char raid_partial_stripes_expensive ;
};
struct blk_mq_ops;
struct blk_mq_hw_ctx;
struct throtl_data;
struct blk_mq_tag_set;
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   int nr_rqs[2U] ;
   int nr_rqs_elvpriv ;
   struct request_list root_rl ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   struct blk_mq_ops *mq_ops ;
   unsigned int *mq_map ;
   struct blk_mq_ctx *queue_ctx ;
   unsigned int nr_queues ;
   struct blk_mq_hw_ctx **queue_hw_ctx ;
   unsigned int nr_hw_queues ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   struct kobject mq_kobj ;
   struct device *dev ;
   int rpm_status ;
   unsigned int nr_pending ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2U] ;
   unsigned int request_fn_active ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   unsigned long blkcg_pols[1U] ;
   struct blkcg_gq *root_blkg ;
   struct list_head blkg_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   struct blk_trace *blk_trace ;
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   struct blk_flush_queue *fq ;
   struct list_head requeue_list ;
   spinlock_t requeue_lock ;
   struct work_struct requeue_work ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   int mq_freeze_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
   wait_queue_head_t mq_freeze_wq ;
   struct percpu_ref mq_usage_counter ;
   struct list_head all_q_node ;
   struct blk_mq_tag_set *tag_set ;
   struct list_head tag_set_list ;
};
struct blk_plug {
   struct list_head list ;
   struct list_head mq_list ;
   struct list_head cb_list ;
};
struct blk_integrity_iter {
   void *prot_buf ;
   void *data_buf ;
   sector_t seed ;
   unsigned int data_size ;
   unsigned short interval ;
   char const *disk_name ;
};
typedef int integrity_processing_fn(struct blk_integrity_iter * );
struct blk_integrity {
   integrity_processing_fn *generate_fn ;
   integrity_processing_fn *verify_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short interval ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   void (*release)(struct gendisk * , fmode_t ) ;
   int (*rw_page)(struct block_device * , sector_t , struct page * , int ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   long (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ,
                         long ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct blk_mq_tags;
struct blk_mq_cpu_notifier {
   struct list_head list ;
   void *data ;
   int (*notify)(void * , unsigned long , unsigned int ) ;
};
struct blk_align_bitmap;
struct blk_mq_ctxmap {
   unsigned int map_size ;
   unsigned int bits_per_word ;
   struct blk_align_bitmap *map ;
};
struct __anonstruct____missing_field_name_223 {
   spinlock_t lock ;
   struct list_head dispatch ;
};
struct blk_mq_hw_ctx {
   struct __anonstruct____missing_field_name_223 __annonCompField79 ;
   unsigned long state ;
   struct delayed_work run_work ;
   struct delayed_work delay_work ;
   cpumask_var_t cpumask ;
   int next_cpu ;
   int next_cpu_batch ;
   unsigned long flags ;
   struct request_queue *queue ;
   struct blk_flush_queue *fq ;
   void *driver_data ;
   struct blk_mq_ctxmap ctx_map ;
   unsigned int nr_ctx ;
   struct blk_mq_ctx **ctxs ;
   atomic_t wait_index ;
   struct blk_mq_tags *tags ;
   unsigned long queued ;
   unsigned long run ;
   unsigned long dispatched[10U] ;
   unsigned int numa_node ;
   unsigned int queue_num ;
   atomic_t nr_active ;
   struct blk_mq_cpu_notifier cpu_notifier ;
   struct kobject kobj ;
};
struct blk_mq_tag_set {
   struct blk_mq_ops *ops ;
   unsigned int nr_hw_queues ;
   unsigned int queue_depth ;
   unsigned int reserved_tags ;
   unsigned int cmd_size ;
   int numa_node ;
   unsigned int timeout ;
   unsigned int flags ;
   void *driver_data ;
   struct blk_mq_tags **tags ;
   struct mutex tag_list_lock ;
   struct list_head tag_list ;
};
struct blk_mq_queue_data {
   struct request *rq ;
   struct list_head *list ;
   bool last ;
};
typedef int queue_rq_fn(struct blk_mq_hw_ctx * , struct blk_mq_queue_data const * );
typedef struct blk_mq_hw_ctx *map_queue_fn(struct request_queue * , int const );
typedef enum blk_eh_timer_return timeout_fn(struct request * , bool );
typedef int init_hctx_fn(struct blk_mq_hw_ctx * , void * , unsigned int );
typedef void exit_hctx_fn(struct blk_mq_hw_ctx * , unsigned int );
typedef int init_request_fn(void * , struct request * , unsigned int , unsigned int ,
                            unsigned int );
typedef void exit_request_fn(void * , struct request * , unsigned int , unsigned int );
struct blk_mq_ops {
   queue_rq_fn *queue_rq ;
   map_queue_fn *map_queue ;
   timeout_fn *timeout ;
   softirq_done_fn *complete ;
   init_hctx_fn *init_hctx ;
   exit_hctx_fn *exit_hctx ;
   init_request_fn *init_request ;
   exit_request_fn *exit_request ;
};
struct scsi_cmnd;
struct scsi_device;
struct scsi_host_cmd_pool;
struct scsi_target;
struct Scsi_Host;
struct scsi_transport_template;
struct scsi_host_template {
   struct module *module ;
   char const *name ;
   int (*detect)(struct scsi_host_template * ) ;
   int (*release)(struct Scsi_Host * ) ;
   char const *(*info)(struct Scsi_Host * ) ;
   int (*ioctl)(struct scsi_device * , int , void * ) ;
   int (*compat_ioctl)(struct scsi_device * , int , void * ) ;
   int (*queuecommand)(struct Scsi_Host * , struct scsi_cmnd * ) ;
   int (*eh_abort_handler)(struct scsi_cmnd * ) ;
   int (*eh_device_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_target_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_bus_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_host_reset_handler)(struct scsi_cmnd * ) ;
   int (*slave_alloc)(struct scsi_device * ) ;
   int (*slave_configure)(struct scsi_device * ) ;
   void (*slave_destroy)(struct scsi_device * ) ;
   int (*target_alloc)(struct scsi_target * ) ;
   void (*target_destroy)(struct scsi_target * ) ;
   int (*scan_finished)(struct Scsi_Host * , unsigned long ) ;
   void (*scan_start)(struct Scsi_Host * ) ;
   int (*change_queue_depth)(struct scsi_device * , int ) ;
   int (*bios_param)(struct scsi_device * , struct block_device * , sector_t , int * ) ;
   void (*unlock_native_capacity)(struct scsi_device * ) ;
   int (*show_info)(struct seq_file * , struct Scsi_Host * ) ;
   int (*write_info)(struct Scsi_Host * , char * , int ) ;
   enum blk_eh_timer_return (*eh_timed_out)(struct scsi_cmnd * ) ;
   int (*host_reset)(struct Scsi_Host * , int ) ;
   char const *proc_name ;
   struct proc_dir_entry *proc_dir ;
   int can_queue ;
   int this_id ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned int max_sectors ;
   unsigned long dma_boundary ;
   short cmd_per_lun ;
   unsigned char present ;
   int tag_alloc_policy ;
   unsigned char use_blk_tags : 1 ;
   unsigned char track_queue_depth : 1 ;
   unsigned char supported_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char emulated : 1 ;
   unsigned char skip_settle_delay : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char no_async_abort : 1 ;
   unsigned int max_host_blocked ;
   struct device_attribute **shost_attrs ;
   struct device_attribute **sdev_attrs ;
   struct list_head legacy_hosts ;
   u64 vendor_id ;
   unsigned int cmd_size ;
   struct scsi_host_cmd_pool *cmd_pool ;
   bool disable_blk_mq ;
};
enum scsi_host_state {
    SHOST_CREATED = 1,
    SHOST_RUNNING = 2,
    SHOST_CANCEL = 3,
    SHOST_DEL = 4,
    SHOST_RECOVERY = 5,
    SHOST_CANCEL_RECOVERY = 6,
    SHOST_DEL_RECOVERY = 7
} ;
union __anonunion____missing_field_name_224 {
   struct blk_queue_tag *bqt ;
   struct blk_mq_tag_set tag_set ;
};
struct Scsi_Host {
   struct list_head __devices ;
   struct list_head __targets ;
   struct scsi_host_cmd_pool *cmd_pool ;
   spinlock_t free_list_lock ;
   struct list_head free_list ;
   struct list_head starved_list ;
   spinlock_t default_lock ;
   spinlock_t *host_lock ;
   struct mutex scan_mutex ;
   struct list_head eh_cmd_q ;
   struct task_struct *ehandler ;
   struct completion *eh_action ;
   wait_queue_head_t host_wait ;
   struct scsi_host_template *hostt ;
   struct scsi_transport_template *transportt ;
   union __anonunion____missing_field_name_224 __annonCompField80 ;
   atomic_t host_busy ;
   atomic_t host_blocked ;
   unsigned int host_failed ;
   unsigned int host_eh_scheduled ;
   unsigned int host_no ;
   int eh_deadline ;
   unsigned long last_reset ;
   unsigned int max_channel ;
   unsigned int max_id ;
   u64 max_lun ;
   unsigned int unique_id ;
   unsigned short max_cmd_len ;
   int this_id ;
   int can_queue ;
   short cmd_per_lun ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned int max_sectors ;
   unsigned long dma_boundary ;
   unsigned int nr_hw_queues ;
   unsigned long cmd_serial_number ;
   unsigned char active_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char host_self_blocked : 1 ;
   unsigned char reverse_ordering : 1 ;
   unsigned char tmf_in_progress : 1 ;
   unsigned char async_scan : 1 ;
   unsigned char eh_noresume : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_blk_mq : 1 ;
   unsigned char use_cmd_list : 1 ;
   char work_q_name[20U] ;
   struct workqueue_struct *work_q ;
   struct workqueue_struct *tmf_work_q ;
   unsigned char no_scsi2_lun_in_cdb : 1 ;
   unsigned int max_host_blocked ;
   unsigned int prot_capabilities ;
   unsigned char prot_guard_type ;
   struct request_queue *uspace_req_q ;
   unsigned long base ;
   unsigned long io_port ;
   unsigned char n_io_port ;
   unsigned char dma_channel ;
   unsigned int irq ;
   enum scsi_host_state shost_state ;
   struct device shost_gendev ;
   struct device shost_dev ;
   struct list_head sht_legacy_list ;
   void *shost_data ;
   struct device *dma_dev ;
   unsigned long hostdata[0U] ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
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
union __anonunion____missing_field_name_231 {
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
   union __anonunion____missing_field_name_231 __annonCompField81 ;
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
struct hd_geometry {
   unsigned char heads ;
   unsigned char sectors ;
   unsigned short cylinders ;
   unsigned long start ;
};
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2
} ;
struct fwnode_handle {
   enum fwnode_type type ;
};
typedef u64 acpi_io_address;
typedef void *acpi_handle;
typedef u32 acpi_object_type;
struct __anonstruct_integer_233 {
   acpi_object_type type ;
   u64 value ;
};
struct __anonstruct_string_234 {
   acpi_object_type type ;
   u32 length ;
   char *pointer ;
};
struct __anonstruct_buffer_235 {
   acpi_object_type type ;
   u32 length ;
   u8 *pointer ;
};
struct __anonstruct_package_236 {
   acpi_object_type type ;
   u32 count ;
   union acpi_object *elements ;
};
struct __anonstruct_reference_237 {
   acpi_object_type type ;
   acpi_object_type actual_type ;
   acpi_handle handle ;
};
struct __anonstruct_processor_238 {
   acpi_object_type type ;
   u32 proc_id ;
   acpi_io_address pblk_address ;
   u32 pblk_length ;
};
struct __anonstruct_power_resource_239 {
   acpi_object_type type ;
   u32 system_level ;
   u32 resource_order ;
};
union acpi_object {
   acpi_object_type type ;
   struct __anonstruct_integer_233 integer ;
   struct __anonstruct_string_234 string ;
   struct __anonstruct_buffer_235 buffer ;
   struct __anonstruct_package_236 package ;
   struct __anonstruct_reference_237 reference ;
   struct __anonstruct_processor_238 processor ;
   struct __anonstruct_power_resource_239 power_resource ;
};
struct acpi_driver;
struct acpi_hotplug_profile {
   struct kobject kobj ;
   int (*scan_dependent)(struct acpi_device * ) ;
   void (*notify_online)(struct acpi_device * ) ;
   bool enabled ;
   bool demand_offline ;
};
struct acpi_scan_handler {
   struct acpi_device_id const *ids ;
   struct list_head list_node ;
   bool (*match)(char * , struct acpi_device_id const ** ) ;
   int (*attach)(struct acpi_device * , struct acpi_device_id const * ) ;
   void (*detach)(struct acpi_device * ) ;
   void (*bind)(struct device * ) ;
   void (*unbind)(struct device * ) ;
   struct acpi_hotplug_profile hotplug ;
};
struct acpi_hotplug_context {
   struct acpi_device *self ;
   int (*notify)(struct acpi_device * , u32 ) ;
   void (*uevent)(struct acpi_device * , u32 ) ;
   void (*fixup)(struct acpi_device * ) ;
};
struct acpi_device_ops {
   int (*add)(struct acpi_device * ) ;
   int (*remove)(struct acpi_device * ) ;
   void (*notify)(struct acpi_device * , u32 ) ;
};
struct acpi_driver {
   char name[80U] ;
   char class[80U] ;
   struct acpi_device_id const *ids ;
   unsigned int flags ;
   struct acpi_device_ops ops ;
   struct device_driver drv ;
   struct module *owner ;
};
struct acpi_device_status {
   unsigned char present : 1 ;
   unsigned char enabled : 1 ;
   unsigned char show_in_ui : 1 ;
   unsigned char functional : 1 ;
   unsigned char battery_present : 1 ;
   unsigned int reserved : 27 ;
};
struct acpi_device_flags {
   unsigned char dynamic_status : 1 ;
   unsigned char removable : 1 ;
   unsigned char ejectable : 1 ;
   unsigned char power_manageable : 1 ;
   unsigned char match_driver : 1 ;
   unsigned char initialized : 1 ;
   unsigned char visited : 1 ;
   unsigned char hotplug_notify : 1 ;
   unsigned char is_dock_station : 1 ;
   unsigned int reserved : 23 ;
};
struct acpi_device_dir {
   struct proc_dir_entry *entry ;
};
typedef char acpi_bus_id[8U];
typedef unsigned long acpi_bus_address;
typedef char acpi_device_name[40U];
typedef char acpi_device_class[20U];
struct acpi_pnp_type {
   unsigned char hardware_id : 1 ;
   unsigned char bus_address : 1 ;
   unsigned char platform_id : 1 ;
   unsigned int reserved : 29 ;
};
struct acpi_device_pnp {
   acpi_bus_id bus_id ;
   struct acpi_pnp_type type ;
   acpi_bus_address bus_address ;
   char *unique_id ;
   struct list_head ids ;
   acpi_device_name device_name ;
   acpi_device_class device_class ;
   union acpi_object *str_obj ;
};
struct acpi_device_power_flags {
   unsigned char explicit_get : 1 ;
   unsigned char power_resources : 1 ;
   unsigned char inrush_current : 1 ;
   unsigned char power_removed : 1 ;
   unsigned char ignore_parent : 1 ;
   unsigned char dsw_present : 1 ;
   unsigned int reserved : 26 ;
};
struct __anonstruct_flags_240 {
   unsigned char valid : 1 ;
   unsigned char os_accessible : 1 ;
   unsigned char explicit_set : 1 ;
   unsigned char reserved : 6 ;
};
struct acpi_device_power_state {
   struct __anonstruct_flags_240 flags ;
   int power ;
   int latency ;
   struct list_head resources ;
};
struct acpi_device_power {
   int state ;
   struct acpi_device_power_flags flags ;
   struct acpi_device_power_state states[5U] ;
};
struct acpi_device_perf_flags {
   u8 reserved ;
};
struct __anonstruct_flags_241 {
   unsigned char valid : 1 ;
   unsigned char reserved : 7 ;
};
struct acpi_device_perf_state {
   struct __anonstruct_flags_241 flags ;
   u8 power ;
   u8 performance ;
   int latency ;
};
struct acpi_device_perf {
   int state ;
   struct acpi_device_perf_flags flags ;
   int state_count ;
   struct acpi_device_perf_state *states ;
};
struct acpi_device_wakeup_flags {
   unsigned char valid : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char notifier_present : 1 ;
   unsigned char enabled : 1 ;
};
struct acpi_device_wakeup_context {
   struct work_struct work ;
   struct device *dev ;
};
struct acpi_device_wakeup {
   acpi_handle gpe_device ;
   u64 gpe_number ;
   u64 sleep_state ;
   struct list_head resources ;
   struct acpi_device_wakeup_flags flags ;
   struct acpi_device_wakeup_context context ;
   struct wakeup_source *ws ;
   int prepare_count ;
};
struct acpi_device_data {
   union acpi_object const *pointer ;
   union acpi_object const *properties ;
   union acpi_object const *of_compatible ;
};
struct acpi_gpio_mapping;
struct acpi_device {
   int device_type ;
   acpi_handle handle ;
   struct fwnode_handle fwnode ;
   struct acpi_device *parent ;
   struct list_head children ;
   struct list_head node ;
   struct list_head wakeup_list ;
   struct list_head del_list ;
   struct acpi_device_status status ;
   struct acpi_device_flags flags ;
   struct acpi_device_pnp pnp ;
   struct acpi_device_power power ;
   struct acpi_device_wakeup wakeup ;
   struct acpi_device_perf performance ;
   struct acpi_device_dir dir ;
   struct acpi_device_data data ;
   struct acpi_scan_handler *handler ;
   struct acpi_hotplug_context *hp ;
   struct acpi_driver *driver ;
   struct acpi_gpio_mapping const *driver_gpios ;
   void *driver_data ;
   struct device dev ;
   unsigned int physical_node_count ;
   unsigned int dep_unmet ;
   struct list_head physical_node_list ;
   struct mutex physical_node_lock ;
   void (*remove)(struct acpi_device * ) ;
};
struct acpi_gpio_params {
   unsigned int crs_entry_index ;
   unsigned int line_index ;
   bool active_low ;
};
struct acpi_gpio_mapping {
   char const *name ;
   struct acpi_gpio_params const *data ;
   unsigned int size ;
};
struct scsi_sense_hdr;
enum scsi_device_state {
    SDEV_CREATED = 1,
    SDEV_RUNNING = 2,
    SDEV_CANCEL = 3,
    SDEV_DEL = 4,
    SDEV_QUIESCE = 5,
    SDEV_OFFLINE = 6,
    SDEV_TRANSPORT_OFFLINE = 7,
    SDEV_BLOCK = 8,
    SDEV_CREATED_BLOCK = 9
} ;
struct scsi_dh_data;
struct scsi_device {
   struct Scsi_Host *host ;
   struct request_queue *request_queue ;
   struct list_head siblings ;
   struct list_head same_target_siblings ;
   atomic_t device_busy ;
   atomic_t device_blocked ;
   spinlock_t list_lock ;
   struct list_head cmd_list ;
   struct list_head starved_entry ;
   struct scsi_cmnd *current_cmnd ;
   unsigned short queue_depth ;
   unsigned short max_queue_depth ;
   unsigned short last_queue_full_depth ;
   unsigned short last_queue_full_count ;
   unsigned long last_queue_full_time ;
   unsigned long queue_ramp_up_period ;
   unsigned long last_queue_ramp_up ;
   unsigned int id ;
   unsigned int channel ;
   u64 lun ;
   unsigned int manufacturer ;
   unsigned int sector_size ;
   void *hostdata ;
   char type ;
   char scsi_level ;
   char inq_periph_qual ;
   unsigned char inquiry_len ;
   unsigned char *inquiry ;
   char const *vendor ;
   char const *model ;
   char const *rev ;
   int vpd_pg83_len ;
   unsigned char *vpd_pg83 ;
   int vpd_pg80_len ;
   unsigned char *vpd_pg80 ;
   unsigned char current_tag ;
   struct scsi_target *sdev_target ;
   unsigned int sdev_bflags ;
   unsigned int eh_timeout ;
   unsigned char removable : 1 ;
   unsigned char changed : 1 ;
   unsigned char busy : 1 ;
   unsigned char lockable : 1 ;
   unsigned char locked : 1 ;
   unsigned char borken : 1 ;
   unsigned char disconnect : 1 ;
   unsigned char soft_reset : 1 ;
   unsigned char sdtr : 1 ;
   unsigned char wdtr : 1 ;
   unsigned char ppr : 1 ;
   unsigned char tagged_supported : 1 ;
   unsigned char simple_tags : 1 ;
   unsigned char was_reset : 1 ;
   unsigned char expecting_cc_ua : 1 ;
   unsigned char use_10_for_rw : 1 ;
   unsigned char use_10_for_ms : 1 ;
   unsigned char no_report_opcodes : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_16_for_rw : 1 ;
   unsigned char skip_ms_page_8 : 1 ;
   unsigned char skip_ms_page_3f : 1 ;
   unsigned char skip_vpd_pages : 1 ;
   unsigned char try_vpd_pages : 1 ;
   unsigned char use_192_bytes_for_3f : 1 ;
   unsigned char no_start_on_add : 1 ;
   unsigned char allow_restart : 1 ;
   unsigned char manage_start_stop : 1 ;
   unsigned char start_stop_pwr_cond : 1 ;
   unsigned char no_uld_attach : 1 ;
   unsigned char select_no_atn : 1 ;
   unsigned char fix_capacity : 1 ;
   unsigned char guess_capacity : 1 ;
   unsigned char retry_hwerror : 1 ;
   unsigned char last_sector_bug : 1 ;
   unsigned char no_read_disc_info : 1 ;
   unsigned char no_read_capacity_16 : 1 ;
   unsigned char try_rc_10_first : 1 ;
   unsigned char is_visible : 1 ;
   unsigned char wce_default_on : 1 ;
   unsigned char no_dif : 1 ;
   unsigned char broken_fua : 1 ;
   unsigned char lun_in_cdb : 1 ;
   atomic_t disk_events_disable_depth ;
   unsigned long supported_events[1U] ;
   unsigned long pending_events[1U] ;
   struct list_head event_list ;
   struct work_struct event_work ;
   unsigned int max_device_blocked ;
   atomic_t iorequest_cnt ;
   atomic_t iodone_cnt ;
   atomic_t ioerr_cnt ;
   struct device sdev_gendev ;
   struct device sdev_dev ;
   struct execute_work ew ;
   struct work_struct requeue_work ;
   struct scsi_dh_data *scsi_dh_data ;
   enum scsi_device_state sdev_state ;
   unsigned long sdev_data[0U] ;
};
struct scsi_device_handler {
   struct list_head list ;
   struct module *module ;
   char const *name ;
   int (*check_sense)(struct scsi_device * , struct scsi_sense_hdr * ) ;
   struct scsi_dh_data *(*attach)(struct scsi_device * ) ;
   void (*detach)(struct scsi_device * ) ;
   int (*activate)(struct scsi_device * , void (*)(void * , int ) , void * ) ;
   int (*prep_fn)(struct scsi_device * , struct request * ) ;
   int (*set_params)(struct scsi_device * , char const * ) ;
   bool (*match)(struct scsi_device * ) ;
};
struct scsi_dh_data {
   struct scsi_device_handler *scsi_dh ;
   struct scsi_device *sdev ;
   struct kref kref ;
};
enum scsi_target_state {
    STARGET_CREATED = 1,
    STARGET_RUNNING = 2,
    STARGET_DEL = 3
} ;
struct scsi_target {
   struct scsi_device *starget_sdev_user ;
   struct list_head siblings ;
   struct list_head devices ;
   struct device dev ;
   struct kref reap_ref ;
   unsigned int channel ;
   unsigned int id ;
   unsigned char create : 1 ;
   unsigned char single_lun : 1 ;
   unsigned char pdt_1f_for_no_lun : 1 ;
   unsigned char no_report_luns : 1 ;
   unsigned char expecting_lun_change : 1 ;
   atomic_t target_busy ;
   atomic_t target_blocked ;
   unsigned int can_queue ;
   unsigned int max_target_blocked ;
   char scsi_level ;
   enum scsi_target_state state ;
   void *hostdata ;
   unsigned long starget_data[0U] ;
};
struct scsi_data_buffer {
   struct sg_table table ;
   unsigned int length ;
   int resid ;
};
struct scsi_pointer {
   char *ptr ;
   int this_residual ;
   struct scatterlist *buffer ;
   int buffers_residual ;
   dma_addr_t dma_handle ;
   int volatile Status ;
   int volatile Message ;
   int volatile have_data_in ;
   int volatile sent_command ;
   int volatile phase ;
};
struct scsi_cmnd {
   struct scsi_device *device ;
   struct list_head list ;
   struct list_head eh_entry ;
   struct delayed_work abort_work ;
   int eh_eflags ;
   unsigned long serial_number ;
   unsigned long jiffies_at_alloc ;
   int retries ;
   int allowed ;
   unsigned char prot_op ;
   unsigned char prot_type ;
   unsigned char prot_flags ;
   unsigned short cmd_len ;
   enum dma_data_direction sc_data_direction ;
   unsigned char *cmnd ;
   struct scsi_data_buffer sdb ;
   struct scsi_data_buffer *prot_sdb ;
   unsigned int underflow ;
   unsigned int transfersize ;
   struct request *request ;
   unsigned char *sense_buffer ;
   void (*scsi_done)(struct scsi_cmnd * ) ;
   struct scsi_pointer SCp ;
   unsigned char *host_scribble ;
   int result ;
   int flags ;
   unsigned char tag ;
};
struct scsi_sense_hdr {
   u8 response_code ;
   u8 sense_key ;
   u8 asc ;
   u8 ascq ;
   u8 byte4 ;
   u8 byte5 ;
   u8 byte6 ;
   u8 additional_length ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_250 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_250 __annonCompField83 ;
   unsigned long nr_segs ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iov_iter msg_iter ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
enum ldv_31440 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_31440 socket_state;
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
struct in6_addr;
struct sk_buff;
typedef u64 netdev_features_t;
struct napi_struct;
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
struct __anonstruct____missing_field_name_254 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_253 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_254 __annonCompField85 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_253 __annonCompField86 ;
};
union __anonunion____missing_field_name_257 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_256 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_257 __annonCompField87 ;
};
union __anonunion____missing_field_name_255 {
   struct __anonstruct____missing_field_name_256 __annonCompField88 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_259 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_258 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_259 __annonCompField90 ;
};
union __anonunion____missing_field_name_260 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_261 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_262 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_255 __annonCompField89 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   void (*destructor)(struct sk_buff * ) ;
   struct sec_path *sp ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   __u16 queue_mapping ;
   unsigned char cloned : 1 ;
   unsigned char nohdr : 1 ;
   unsigned char fclone : 2 ;
   unsigned char peeked : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char xmit_more : 1 ;
   __u32 headers_start[0U] ;
   __u8 __pkt_type_offset[0U] ;
   unsigned char pkt_type : 3 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ignore_df : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char nf_trace : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char sw_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   unsigned char csum_level : 2 ;
   unsigned char csum_bad : 1 ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char inner_protocol_type : 1 ;
   unsigned char remcsum_offload : 1 ;
   __u16 tc_index ;
   __u16 tc_verd ;
   union __anonunion____missing_field_name_258 __annonCompField91 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_260 __annonCompField92 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_261 __annonCompField93 ;
   union __anonunion____missing_field_name_262 __annonCompField94 ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __be16 protocol ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   __u32 headers_end[0U] ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct rtable;
struct xfrm_policy;
struct xfrm_state;
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
struct scm_creds {
   u32 pid ;
   kuid_t uid ;
   kgid_t gid ;
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
struct netlink_skb_parms {
   struct scm_creds creds ;
   __u32 portid ;
   __u32 dst_group ;
   __u32 flags ;
   struct sock *sk ;
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
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct genlmsghdr {
   __u8 cmd ;
   __u8 version ;
   __u16 reserved ;
};
union __anonunion_in6_u_263 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_263 in6_u ;
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
   unsigned long mibs[9U] ;
};
struct linux_mib {
   unsigned long mibs[113U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
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
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
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
   struct sock **tcp_sk ;
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
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_ip_nonlocal_bind ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   int sysctl_tcp_mtu_probing ;
   int sysctl_tcp_base_mss ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
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
   int auto_flowlabels ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
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
   atomic_t fib6_sernum ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
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
struct __anonstruct_sync_serial_settings_269 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_269 sync_serial_settings;
struct __anonstruct_te1_settings_270 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_270 te1_settings;
struct __anonstruct_raw_hdlc_proto_271 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_271 raw_hdlc_proto;
struct __anonstruct_fr_proto_272 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_272 fr_proto;
struct __anonstruct_fr_proto_pvc_273 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_273 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_274 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_274 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_275 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_275 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_276 {
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
   union __anonunion_ifs_ifsu_276 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_277 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_278 {
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
   union __anonunion_ifr_ifrn_277 ifr_ifrn ;
   union __anonunion_ifr_ifru_278 ifr_ifru ;
};
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
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct delayed_work ecache_dwork ;
   bool ecache_dwork_pending ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
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
   unsigned int base_seq ;
   u8 gencursor ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
   u8 dbits4 ;
   u8 sbits4 ;
   u8 dbits6 ;
   u8 sbits6 ;
};
struct xfrm_policy_hthresh {
   struct work_struct work ;
   seqlock_t lock ;
   u8 lbits4 ;
   u8 rbits4 ;
   u8 lbits6 ;
   u8 rbits6 ;
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
   struct hlist_head policy_inexact[3U] ;
   struct xfrm_policy_hash policy_bydst[3U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct xfrm_policy_hthresh policy_hthresh ;
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
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
};
struct proc_ns_operations;
struct ns_common {
   atomic_long_t stashed ;
   struct proc_ns_operations const *ops ;
   unsigned int inum ;
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
   struct idr netns_ids ;
   struct ns_common ns ;
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
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
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
struct genl_multicast_group {
   char name[16U] ;
};
struct genl_ops;
struct genl_info;
struct genl_family {
   unsigned int id ;
   unsigned int hdrsize ;
   char name[16U] ;
   unsigned int version ;
   unsigned int maxattr ;
   bool netnsok ;
   bool parallel_ops ;
   int (*pre_doit)(struct genl_ops const * , struct sk_buff * , struct genl_info * ) ;
   void (*post_doit)(struct genl_ops const * , struct sk_buff * , struct genl_info * ) ;
   int (*mcast_bind)(struct net * , int ) ;
   void (*mcast_unbind)(struct net * , int ) ;
   struct nlattr **attrbuf ;
   struct genl_ops const *ops ;
   struct genl_multicast_group const *mcgrps ;
   unsigned int n_ops ;
   unsigned int n_mcgrps ;
   unsigned int mcgrp_offset ;
   struct list_head family_list ;
   struct module *module ;
};
struct genl_info {
   u32 snd_seq ;
   u32 snd_portid ;
   struct nlmsghdr *nlhdr ;
   struct genlmsghdr *genlhdr ;
   void *userhdr ;
   struct nlattr **attrs ;
   struct net *_net ;
   void *user_ptr[2U] ;
   struct sock *dst_sk ;
};
struct genl_ops {
   struct nla_policy const *policy ;
   int (*doit)(struct sk_buff * , struct genl_info * ) ;
   int (*dumpit)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   u8 cmd ;
   u8 internal_flags ;
   u8 flags ;
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
union __anonunion_data_281 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_281 data ;
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
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
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
   char erom_version[32U] ;
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
struct ethtool_tunable {
   __u32 cmd ;
   __u32 id ;
   __u32 type_id ;
   __u32 len ;
   void *data[0U] ;
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
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * , u8 const ) ;
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
   int (*get_tunable)(struct net_device * , struct ethtool_tunable const * , void * ) ;
   int (*set_tunable)(struct net_device * , struct ethtool_tunable const * , void const * ) ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct fwnode_handle fwnode ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
enum ldv_35776 {
    PHY_INTERFACE_MODE_NA = 0,
    PHY_INTERFACE_MODE_MII = 1,
    PHY_INTERFACE_MODE_GMII = 2,
    PHY_INTERFACE_MODE_SGMII = 3,
    PHY_INTERFACE_MODE_TBI = 4,
    PHY_INTERFACE_MODE_REVMII = 5,
    PHY_INTERFACE_MODE_RMII = 6,
    PHY_INTERFACE_MODE_RGMII = 7,
    PHY_INTERFACE_MODE_RGMII_ID = 8,
    PHY_INTERFACE_MODE_RGMII_RXID = 9,
    PHY_INTERFACE_MODE_RGMII_TXID = 10,
    PHY_INTERFACE_MODE_RTBI = 11,
    PHY_INTERFACE_MODE_SMII = 12,
    PHY_INTERFACE_MODE_XGMII = 13,
    PHY_INTERFACE_MODE_MOCA = 14,
    PHY_INTERFACE_MODE_QSGMII = 15,
    PHY_INTERFACE_MODE_MAX = 16
} ;
typedef enum ldv_35776 phy_interface_t;
enum ldv_35829 {
    MDIOBUS_ALLOCATED = 1,
    MDIOBUS_REGISTERED = 2,
    MDIOBUS_UNREGISTERED = 3,
    MDIOBUS_RELEASED = 4
} ;
struct phy_device;
struct mii_bus {
   char const *name ;
   char id[17U] ;
   void *priv ;
   int (*read)(struct mii_bus * , int , int ) ;
   int (*write)(struct mii_bus * , int , int , u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_35829 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
   int *irq ;
};
enum phy_state {
    PHY_DOWN = 0,
    PHY_STARTING = 1,
    PHY_READY = 2,
    PHY_PENDING = 3,
    PHY_UP = 4,
    PHY_AN = 5,
    PHY_RUNNING = 6,
    PHY_NOLINK = 7,
    PHY_FORCING = 8,
    PHY_CHANGELINK = 9,
    PHY_HALTED = 10,
    PHY_RESUMING = 11
} ;
struct phy_c45_device_ids {
   u32 devices_in_package ;
   u32 device_ids[8U] ;
};
struct phy_driver;
struct phy_device {
   struct phy_driver *drv ;
   struct mii_bus *bus ;
   struct device dev ;
   u32 phy_id ;
   struct phy_c45_device_ids c45_ids ;
   bool is_c45 ;
   bool is_internal ;
   bool has_fixups ;
   bool suspended ;
   enum phy_state state ;
   u32 dev_flags ;
   phy_interface_t interface ;
   int addr ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
   int link ;
   u32 interrupts ;
   u32 supported ;
   u32 advertising ;
   u32 lp_advertising ;
   int autoneg ;
   int link_timeout ;
   int irq ;
   void *priv ;
   struct work_struct phy_queue ;
   struct delayed_work state_queue ;
   atomic_t irq_disable ;
   struct mutex lock ;
   struct net_device *attached_dev ;
   void (*adjust_link)(struct net_device * ) ;
};
struct phy_driver {
   u32 phy_id ;
   char *name ;
   unsigned int phy_id_mask ;
   u32 features ;
   u32 flags ;
   void const *driver_data ;
   int (*soft_reset)(struct phy_device * ) ;
   int (*config_init)(struct phy_device * ) ;
   int (*probe)(struct phy_device * ) ;
   int (*suspend)(struct phy_device * ) ;
   int (*resume)(struct phy_device * ) ;
   int (*config_aneg)(struct phy_device * ) ;
   int (*aneg_done)(struct phy_device * ) ;
   int (*read_status)(struct phy_device * ) ;
   int (*ack_interrupt)(struct phy_device * ) ;
   int (*config_intr)(struct phy_device * ) ;
   int (*did_interrupt)(struct phy_device * ) ;
   void (*remove)(struct phy_device * ) ;
   int (*match_phy_device)(struct phy_device * ) ;
   int (*ts_info)(struct phy_device * , struct ethtool_ts_info * ) ;
   int (*hwtstamp)(struct phy_device * , struct ifreq * ) ;
   bool (*rxtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   void (*txtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   int (*set_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*get_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*link_change_notify)(struct phy_device * ) ;
   int (*read_mmd_indirect)(struct phy_device * , int , int , int ) ;
   void (*write_mmd_indirect)(struct phy_device * , int , int , int , u32 ) ;
   int (*module_info)(struct phy_device * , struct ethtool_modinfo * ) ;
   int (*module_eeprom)(struct phy_device * , struct ethtool_eeprom * , u8 * ) ;
   struct device_driver driver ;
};
struct fixed_phy_status {
   int link ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
};
enum dsa_tag_protocol {
    DSA_TAG_PROTO_NONE = 0,
    DSA_TAG_PROTO_DSA = 1,
    DSA_TAG_PROTO_TRAILER = 2,
    DSA_TAG_PROTO_EDSA = 3,
    DSA_TAG_PROTO_BRCM = 4
} ;
struct dsa_chip_data {
   struct device *host_dev ;
   int sw_addr ;
   int eeprom_len ;
   struct device_node *of_node ;
   char *port_names[12U] ;
   struct device_node *port_dn[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct packet_type;
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   int (*rcv)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   enum dsa_tag_protocol tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct device *master_dev ;
   char hwmon_name[24U] ;
   struct device *hwmon_dev ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   u32 phys_mii_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   enum dsa_tag_protocol tag_protocol ;
   int priv_size ;
   char *(*probe)(struct device * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   u32 (*get_phy_flags)(struct dsa_switch * , int ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*adjust_link)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*fixed_link_update)(struct dsa_switch * , int , struct fixed_phy_status * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
   void (*get_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*suspend)(struct dsa_switch * ) ;
   int (*resume)(struct dsa_switch * ) ;
   int (*port_enable)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*port_disable)(struct dsa_switch * , int , struct phy_device * ) ;
   int (*set_eee)(struct dsa_switch * , int , struct phy_device * , struct ethtool_eee * ) ;
   int (*get_eee)(struct dsa_switch * , int , struct ethtool_eee * ) ;
   int (*get_temp)(struct dsa_switch * , int * ) ;
   int (*get_temp_limit)(struct dsa_switch * , int * ) ;
   int (*set_temp_limit)(struct dsa_switch * , int ) ;
   int (*get_temp_alarm)(struct dsa_switch * , bool * ) ;
   int (*get_eeprom_len)(struct dsa_switch * ) ;
   int (*get_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_regs_len)(struct dsa_switch * , int ) ;
   void (*get_regs)(struct dsa_switch * , int , struct ethtool_regs * , void * ) ;
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
   int (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   int (*getapp)(struct net_device * , u8 , u16 ) ;
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
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
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
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
};
struct netpoll_info;
struct wireless_dev;
struct wpan_dev;
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
   struct hrtimer timer ;
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
struct netdev_phys_item_id {
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
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
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
                      u16 , u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       struct net_device * , int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_item_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
   netdev_features_t (*ndo_features_check)(struct sk_buff * , struct net_device * ,
                                           netdev_features_t ) ;
   int (*ndo_switch_parent_id_get)(struct net_device * , struct netdev_phys_item_id * ) ;
   int (*ndo_switch_port_stp_update)(struct net_device * , u8 ) ;
};
struct __anonstruct_adj_list_301 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_302 {
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
union __anonunion____missing_field_name_303 {
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
   struct list_head ptype_all ;
   struct list_head ptype_specific ;
   struct __anonstruct_adj_list_301 adj_list ;
   struct __anonstruct_all_adj_list_302 all_adj_list ;
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
   atomic_long_t tx_dropped ;
   atomic_t carrier_changes ;
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
   unsigned short dev_port ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   unsigned char name_assign_type ;
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
   struct wpan_dev *ieee802154_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   unsigned long gro_flush_timeout ;
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
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_303 __annonCompField97 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   u16 gso_min_segs ;
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
struct packet_type {
   __be16 type ;
   struct net_device *dev ;
   int (*func)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   bool (*id_match)(struct packet_type * , struct sock * ) ;
   void *af_packet_priv ;
   struct list_head list ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
struct page_counter {
   atomic_long_t count ;
   unsigned long limit ;
   struct page_counter *parent ;
   unsigned long watermark ;
   unsigned long failcnt ;
};
struct kioctx;
typedef int kiocb_cancel_fn(struct kiocb * );
union __anonunion_ki_obj_304 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_304 ki_obj ;
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
struct bpf_insn {
   __u8 code ;
   unsigned char dst_reg : 4 ;
   unsigned char src_reg : 4 ;
   __s16 off ;
   __s32 imm ;
};
struct bpf_prog_aux;
struct sock_fprog_kern {
   u16 len ;
   struct sock_filter *filter ;
};
union __anonunion____missing_field_name_309 {
   struct sock_filter insns[0U] ;
   struct bpf_insn insnsi[0U] ;
};
struct bpf_prog {
   u16 pages ;
   bool jited ;
   u32 len ;
   struct sock_fprog_kern *orig_prog ;
   struct bpf_prog_aux *aux ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct bpf_insn const * ) ;
   union __anonunion____missing_field_name_309 __annonCompField102 ;
};
struct sk_filter {
   atomic_t refcnt ;
   struct callback_head rcu ;
   struct bpf_prog *prog ;
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
   struct net *(*get_link_net)(struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct list_head list ;
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
   struct list_head parms_list ;
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
union __anonunion____missing_field_name_314 {
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
   int (*output)(struct sock * , struct sk_buff * ) ;
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
   union __anonunion____missing_field_name_314 __annonCompField103 ;
};
struct __anonstruct_socket_lock_t_315 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_315 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_317 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_316 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_317 __annonCompField104 ;
};
union __anonunion____missing_field_name_318 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_320 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_319 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_320 __annonCompField107 ;
};
union __anonunion____missing_field_name_321 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_322 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_316 __annonCompField105 ;
   union __anonunion____missing_field_name_318 __annonCompField106 ;
   union __anonunion____missing_field_name_319 __annonCompField108 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_321 __annonCompField109 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_322 __annonCompField110 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_323 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_323 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   u16 sk_incoming_cpu ;
   __u32 sk_txhash ;
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
   unsigned char sk_shutdown : 2 ;
   unsigned char sk_no_check_tx : 1 ;
   unsigned char sk_no_check_rx : 1 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
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
   u16 sk_tsflags ;
   u32 sk_tskey ;
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
   void (*sk_data_ready)(struct sock * ) ;
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
union __anonunion_h_324 {
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
   union __anonunion_h_324 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct page_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct pmcraid_ioadl_desc {
   __le64 address ;
   __le32 data_len ;
   __u8 reserved[3U] ;
   __u8 flags ;
};
union __anonunion_u_325 {
   struct pmcraid_ioadl_desc ioadl[27U] ;
   __u8 add_cmd_params[48U] ;
};
struct pmcraid_ioarcb_add_data {
   union __anonunion_u_325 u ;
};
struct pmcraid_ioarcb {
   __le64 ioarcb_bus_addr ;
   __le32 resource_handle ;
   __le32 response_handle ;
   __le64 ioadl_bus_addr ;
   __le32 ioadl_length ;
   __le32 data_transfer_length ;
   __le64 ioasa_bus_addr ;
   __le16 ioasa_len ;
   __le16 cmd_timeout ;
   __le16 add_cmd_param_offset ;
   __le16 add_cmd_param_length ;
   __le32 reserved1[2U] ;
   __le32 reserved2 ;
   __u8 request_type ;
   __u8 request_flags0 ;
   __u8 request_flags1 ;
   __u8 hrrq_id ;
   __u8 cdb[16U] ;
   struct pmcraid_ioarcb_add_data add_data ;
};
struct pmcraid_ioasa_vset {
   __le32 failing_lba_hi ;
   __le32 failing_lba_lo ;
   __le32 reserved ;
};
union __anonunion_u_326 {
   struct pmcraid_ioasa_vset vset ;
};
struct pmcraid_ioasa {
   __le32 ioasc ;
   __le16 returned_status_length ;
   __le16 available_status_length ;
   __le32 residual_data_length ;
   __le32 ilid ;
   __le32 fd_ioasc ;
   __le32 fd_res_address ;
   __le32 fd_res_handle ;
   __le32 reserved ;
   union __anonunion_u_326 u ;
   __le16 auto_sense_length ;
   __le16 error_data_length ;
   __u8 sense_data[256U] ;
};
struct pmcraid_config_table_entry {
   __u8 resource_type ;
   __u8 bus_protocol ;
   __le16 array_id ;
   __u8 common_flags0 ;
   __u8 common_flags1 ;
   __u8 unique_flags0 ;
   __u8 unique_flags1 ;
   __le32 resource_handle ;
   __le32 resource_address ;
   __u8 device_id[8U] ;
   __u8 lun[8U] ;
};
struct pmcraid_config_table_entry_ext {
   struct pmcraid_config_table_entry cfgte ;
};
union __anonunion____missing_field_name_327 {
   struct pmcraid_config_table_entry entries[256U] ;
   struct pmcraid_config_table_entry_ext entries_ext[256U] ;
};
struct pmcraid_config_table {
   __le16 num_entries ;
   __u8 table_format ;
   __u8 reserved1 ;
   __u8 flags ;
   __u8 reserved2[11U] ;
   union __anonunion____missing_field_name_327 __annonCompField111 ;
};
union __anonunion_u_328 {
   __u8 data[4056U] ;
};
struct pmcraid_hostrcb_error {
   __le32 fd_ioasc ;
   __le32 fd_ra ;
   __le32 fd_rh ;
   __le32 prc ;
   union __anonunion_u_328 u ;
};
struct pmcraid_hcam_hdr {
   __u8 op_code ;
   __u8 notification_type ;
   __u8 notification_lost ;
   __u8 flags ;
   __u8 overlay_id ;
   __u8 reserved1[3U] ;
   __le32 ilid ;
   __le32 timestamp1 ;
   __le32 timestamp2 ;
   __le32 data_len ;
};
struct pmcraid_hcam_ccn {
   struct pmcraid_hcam_hdr header ;
   struct pmcraid_config_table_entry cfg_entry ;
   struct pmcraid_config_table_entry cfg_entry_old ;
};
struct pmcraid_hcam_ldn {
   struct pmcraid_hcam_hdr header ;
   struct pmcraid_hostrcb_error error_log ;
};
struct pmcraid_chip_details {
   unsigned long ioastatus ;
   unsigned long ioarrin ;
   unsigned long mailbox ;
   unsigned long global_intr_mask ;
   unsigned long ioa_host_intr ;
   unsigned long ioa_host_msix_intr ;
   unsigned long ioa_host_intr_clr ;
   unsigned long ioa_host_mask ;
   unsigned long ioa_host_mask_clr ;
   unsigned long host_ioa_intr ;
   unsigned long host_ioa_intr_clr ;
   unsigned long transop_timeout ;
};
struct pmcraid_control_block {
   struct pmcraid_ioarcb ioarcb ;
   struct pmcraid_ioadl_desc ioadl[40U] ;
   struct pmcraid_ioasa ioasa ;
};
struct pmcraid_sglist {
   u32 order ;
   u32 num_sg ;
   u32 num_dma_sg ;
   u32 buffer_len ;
   struct scatterlist scatterlist[1U] ;
};
struct pmcraid_inquiry_data {
   __u8 ph_dev_type ;
   __u8 page_code ;
   __u8 reserved1 ;
   __u8 add_page_len ;
   __u8 length ;
   __u8 reserved2 ;
   __le16 fw_version ;
   __u8 reserved3[16U] ;
};
struct pmcraid_timestamp_data {
   __u8 reserved1[4U] ;
   __u8 timestamp[6U] ;
   __u8 reserved2[2U] ;
};
struct pmcraid_instance;
struct pmcraid_resource_entry;
struct __anonstruct____missing_field_name_330 {
   u8 *sense_buffer ;
   dma_addr_t sense_buffer_dma ;
};
union __anonunion____missing_field_name_329 {
   unsigned long time_left ;
   struct pmcraid_resource_entry *res ;
   int hrrq_index ;
   struct __anonstruct____missing_field_name_330 __annonCompField112 ;
};
struct pmcraid_cmd {
   struct pmcraid_control_block *ioa_cb ;
   dma_addr_t ioa_cb_bus_addr ;
   dma_addr_t dma_handle ;
   struct scsi_cmnd *scsi_cmd ;
   struct list_head free_list ;
   struct completion wait_for_completion ;
   struct timer_list timer ;
   u32 timeout ;
   u32 index ;
   u8 completion_req ;
   u8 release ;
   void (*cmd_done)(struct pmcraid_cmd * ) ;
   struct pmcraid_instance *drv_inst ;
   struct pmcraid_sglist *sglist ;
   union __anonunion____missing_field_name_329 __annonCompField113 ;
};
struct pmcraid_interrupts {
   void *ioa_host_interrupt_reg ;
   void *ioa_host_msix_interrupt_reg ;
   void *ioa_host_interrupt_clr_reg ;
   void *ioa_host_interrupt_mask_reg ;
   void *ioa_host_interrupt_mask_clr_reg ;
   void *global_interrupt_mask_reg ;
   void *host_ioa_interrupt_reg ;
   void *host_ioa_interrupt_clr_reg ;
};
struct pmcraid_isr_param {
   struct pmcraid_instance *drv_inst ;
   u16 vector ;
   u8 hrrq_id ;
};
struct pmcraid_aen_msg {
   u32 hostno ;
   u32 length ;
   u8 reserved[8U] ;
   u8 data[0U] ;
};
struct pmcraid_state_msg {
   struct pmcraid_aen_msg msg ;
   u32 ioa_state ;
};
struct pmcraid_hostrcb {
   struct pmcraid_instance *drv_inst ;
   struct pmcraid_aen_msg *msg ;
   struct pmcraid_hcam_hdr *hcam ;
   struct pmcraid_cmd *cmd ;
   dma_addr_t baddr ;
   atomic_t ignore ;
};
struct pmcraid_instance {
   struct pmcraid_resource_entry *res_entries ;
   struct list_head free_res_q ;
   struct list_head used_res_q ;
   spinlock_t resource_lock ;
   void *mapped_dma_addr ;
   void *ioa_status ;
   void *mailbox ;
   void *ioarrin ;
   struct pmcraid_interrupts int_regs ;
   struct pmcraid_chip_details *chip_cfg ;
   struct pmcraid_hostrcb ldn ;
   struct pmcraid_hostrcb ccn ;
   struct pmcraid_state_msg scn ;
   dma_addr_t hrrq_start_bus_addr[16U] ;
   __be32 *hrrq_start[16U] ;
   __be32 *hrrq_end[16U] ;
   __be32 *hrrq_curr[16U] ;
   spinlock_t hrrq_lock[16U] ;
   struct pmcraid_inquiry_data *inq_data ;
   dma_addr_t inq_data_baddr ;
   struct pmcraid_timestamp_data *timestamp_data ;
   dma_addr_t timestamp_data_baddr ;
   u32 config_table_entry_size ;
   u8 host_toggle_bit[16U] ;
   wait_queue_head_t reset_wait_q ;
   struct pmcraid_cmd *reset_cmd ;
   struct fasync_struct *aen_queue ;
   struct mutex aen_queue_lock ;
   struct cdev cdev ;
   struct Scsi_Host *host ;
   struct pci_dev *pdev ;
   u8 ioa_reset_attempts ;
   u8 current_log_level ;
   u8 num_hrrq ;
   u8 interrupt_mode ;
   dev_t dev ;
   struct pmcraid_isr_param hrrq_vector[16U] ;
   atomic_t last_message_id ;
   struct pmcraid_config_table *cfg_table ;
   dma_addr_t cfg_table_bus_addr ;
   struct kmem_cache *cmd_cachep ;
   struct dma_pool *control_pool ;
   char cmd_pool_name[64U] ;
   char ctl_pool_name[64U] ;
   struct pmcraid_cmd *cmd_list[1024U] ;
   struct list_head free_cmd_pool ;
   struct list_head pending_cmd_pool ;
   spinlock_t free_pool_lock ;
   spinlock_t pending_pool_lock ;
   struct tasklet_struct isr_tasklet[16U] ;
   struct work_struct worker_q ;
   atomic_t outstanding_cmds ;
   atomic_t expose_resources ;
   unsigned char ioa_state : 4 ;
   unsigned char ioa_reset_in_progress : 1 ;
   unsigned char ioa_hard_reset : 1 ;
   unsigned char ioa_unit_check : 1 ;
   unsigned char ioa_bringdown : 1 ;
   unsigned char force_ioa_reset : 1 ;
   unsigned char reinit_cfg_table : 1 ;
   unsigned char ioa_shutdown_type : 2 ;
   unsigned char timestamp_error : 1 ;
};
union __anonunion____missing_field_name_331 {
   struct pmcraid_config_table_entry cfg_entry ;
   struct pmcraid_config_table_entry_ext cfg_entry_ext ;
};
struct pmcraid_resource_entry {
   struct list_head queue ;
   union __anonunion____missing_field_name_331 __annonCompField114 ;
   struct scsi_device *scsi_dev ;
   atomic_t read_failures ;
   atomic_t write_failures ;
   u8 change_detected ;
   u8 reset_progress ;
   u8 sync_reqd ;
   u8 target ;
};
struct pmcraid_ioasc_error {
   u32 ioasc_code ;
   u8 log_level ;
   char *error_string ;
};
struct pmcraid_ioctl_header {
   u8 signature[8U] ;
   u32 reserved ;
   u32 buffer_length ;
};
struct pmcraid_passthrough_ioctl_buffer {
   struct pmcraid_ioctl_header ioctl_header ;
   struct pmcraid_ioarcb ioarcb ;
   struct pmcraid_ioasa ioasa ;
   u8 request_buffer[1U] ;
};
struct ldv_struct_EMGentry_21 {
   int signal_pending ;
};
struct ldv_struct_file_operations_instance_0 {
   struct file_operations *arg0 ;
   int signal_pending ;
};
struct ldv_struct_free_irq_13 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_interrupt_instance_1 {
   int arg0 ;
   enum irqreturn (*arg1)(int , void * ) ;
   enum irqreturn (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
struct ldv_struct_pci_instance_3 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_scsi_host_template_instance_4 {
   struct Scsi_Host *arg0 ;
   int signal_pending ;
};
struct ldv_struct_timer_instance_8 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef struct Scsi_Host *ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
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
void ldv_linux_usb_dev_atomic_inc(atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_dec(atomic_t *v ) ;
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v ) ;
void ldv_linux_kernel_sched_completion_init_completion_wait_for_completion_of_pmcraid_cmd(void) ;
void ldv_linux_kernel_sched_completion_wait_for_completion_wait_for_completion_of_pmcraid_cmd(void) ;
unsigned long ldv_linux_lib_find_bit_find_first_bit(unsigned long size ) ;
int ldv_undef_int(void) ;
void ldv_linux_arch_io_io_mem_unmap(void) ;
static void ldv_ldv_initialize_247(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_244(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_248(void) ;
static void ldv_ldv_pre_probe_250(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_249(int retval ) ;
static int ldv_ldv_post_probe_251(int retval ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_245(void) ;
static void ldv_ldv_check_final_state_246(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void ldv_after_alloc(void * ) ;
static void ldv_mutex_lock_185(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_aen_queue_lock_of_pmcraid_instance(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_aen_queue_lock_of_pmcraid_instance(struct mutex *lock ) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
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
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
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
static unsigned long ldv_find_first_zero_bit_224(unsigned long const *addr , unsigned long size ) ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u64 __fswab64(__u64 val )
{
  long tmp ;
  {
  {
  tmp = __builtin_bswap64((unsigned long )val);
  }
  return ((__u64 )tmp);
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void might_fault(void) ;
extern int kstrtou8(char const * , unsigned int , u8 * ) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
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
extern void __bad_percpu_size(void) ;
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
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
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
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v ) ;
__inline static void atomic_dec(atomic_t *v ) ;
__inline static int atomic_add_return(int i , atomic_t *v ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_127(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_129(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_131(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_134(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_136(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_138(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_140(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_143(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_145(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_147(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_149(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_152(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_155(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_157(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_159(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_162(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_164(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_166(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_170(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_178(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_180(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_183(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_188(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_192(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_196(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_198(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_200(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_201(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_204(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_207(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_209(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_211(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_214(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_216(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_229(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_231(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_free_pool_lock_of_pmcraid_instance(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_free_pool_lock_of_pmcraid_instance(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_host_lock_of_Scsi_Host(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_lockp(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lockp(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_pending_pool_lock_of_pmcraid_instance(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_pending_pool_lock_of_pmcraid_instance(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_resource_lock_of_pmcraid_instance(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_resource_lock_of_pmcraid_instance(void) ;
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_186(struct mutex *ldv_func_arg1 ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
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
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7312;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7312;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7312;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_7312;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7312:
  ti = (struct thread_info *)(pfo_ret__ - 32728UL);
  return (ti);
}
}
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
__inline static void ldv_spin_unlock_irqrestore_128(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_130(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_130(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_144(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_128(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_128(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_128(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_144(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_144(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_144(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_128(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_128(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_128(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_210(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_144(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_210(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_128(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
__inline static void ldv_init_completion_173(struct completion *x ) ;
__inline static void ldv_init_completion_173(struct completion *x ) ;
__inline static void ldv_init_completion_173(struct completion *x ) ;
extern void wait_for_completion(struct completion * ) ;
static void ldv_wait_for_completion_175(struct completion *ldv_func_arg1 ) ;
static void ldv_wait_for_completion_177(struct completion *ldv_func_arg1 ) ;
static void ldv_wait_for_completion_190(struct completion *ldv_func_arg1 ) ;
static void ldv_wait_for_completion_194(struct completion *ldv_func_arg1 ) ;
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
static unsigned long ldv_wait_for_completion_timeout_191(struct completion *ldv_func_arg1 ,
                                                         unsigned long ldv_func_arg2 ) ;
static unsigned long ldv_wait_for_completion_timeout_195(struct completion *ldv_func_arg1 ,
                                                         unsigned long ldv_func_arg2 ) ;
extern void complete(struct completion * ) ;
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void do_gettimeofday(struct timeval * ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int del_timer(struct timer_list * ) ;
static int ldv_del_timer_133(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_161(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_213(struct timer_list *ldv_func_arg1 ) ;
extern void add_timer(struct timer_list * ) ;
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
static void ldv_cdev_init_225(struct cdev *ldv_func_arg1 , struct file_operations const *ldv_func_arg2 ) ;
extern int cdev_add(struct cdev * , dev_t , unsigned int ) ;
extern void cdev_del(struct cdev * ) ;
static void ldv_cdev_del_226(struct cdev *ldv_func_arg1 ) ;
static void ldv_iounmap_228(void volatile *ldv_func_arg1 ) ;
static void ldv_iounmap_236(void volatile *ldv_func_arg1 ) ;
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order ) ;
extern void __free_pages(struct page * , unsigned int ) ;
static void ldv_class_destroy_239(struct class *cls ) ;
static void ldv_class_destroy_243(struct class *cls ) ;
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
extern struct device *device_create(struct class * , struct device * , dev_t , void * ,
                                    char const * , ...) ;
extern void device_destroy(struct class * , dev_t ) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern bool capable(int ) ;
extern long schedule_timeout(long ) ;
extern void schedule(void) ;
extern struct kmem_cache *kmem_cache_create(char const * , size_t , size_t , unsigned long ,
                                            void (*)(void * ) ) ;
extern void kmem_cache_destroy(struct kmem_cache * ) ;
extern void kfree(void const * ) ;
static void *ldv_kmem_cache_alloc_222(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern void kmem_cache_free(struct kmem_cache * , void * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int pci_find_capability(struct pci_dev * , int ) ;
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
static int ldv___pci_register_driver_238(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_242(struct pci_driver *ldv_func_arg1 ) ;
extern struct dma_pool *dma_pool_create(char const * , struct device * , size_t ,
                                        size_t , size_t ) ;
extern void dma_pool_destroy(struct dma_pool * ) ;
static void *ldv_dma_pool_alloc_223(struct dma_pool *ldv_func_arg1 , gfp_t flags ,
                                    dma_addr_t *ldv_func_arg3 ) ;
extern void dma_pool_free(struct dma_pool * , void * , dma_addr_t ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
extern int pci_enable_msix_range(struct pci_dev * , struct msix_entry * , int , int ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static void sg_assign_page(struct scatterlist *sg , struct page *page )
{
  unsigned long page_link ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  page_link = sg->page_link & 3UL;
  tmp = ldv__builtin_expect(((unsigned long )page & 3UL) != 0UL, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (65), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (67), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (68), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  sg->page_link = page_link | (unsigned long )page;
  return;
}
}
__inline static void sg_set_page(struct scatterlist *sg , struct page *page , unsigned int len ,
                                 unsigned int offset )
{
  {
  {
  sg_assign_page(sg, page);
  sg->offset = offset;
  sg->length = len;
  }
  return;
}
}
__inline static struct page *sg_page(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
__inline static void *sg_virt(struct scatterlist *sg )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = sg_page(sg);
  tmp___0 = lowmem_page_address((struct page const *)tmp);
  }
  return (tmp___0 + (unsigned long )sg->offset);
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
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
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_sg(struct device * , struct scatterlist * , int , int ,
                             int ) ;
extern void debug_dma_unmap_sg(struct device * , struct scatterlist * , int , int ) ;
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
__inline static int dma_map_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                     int nents , enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int i ;
  int ents ;
  struct scatterlist *s ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  i = 0;
  s = sg;
  }
  goto ldv_26898;
  ldv_26897:
  {
  tmp___0 = sg_virt(s);
  kmemcheck_mark_initialized(tmp___0, s->length);
  i = i + 1;
  s = sg_next(s);
  }
  ldv_26898: ;
  if (i < nents) {
    goto ldv_26897;
  } else {
  }
  {
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (52), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  ents = (*(ops->map_sg))(dev, sg, nents, dir, attrs);
  debug_dma_map_sg(dev, sg, nents, ents, (int )dir);
  }
  return (ents);
}
}
__inline static void dma_unmap_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                        int nents , enum dma_data_direction dir ,
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
                         "i" (65), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  debug_dma_unmap_sg(dev, sg, nents, (int )dir);
  }
  if ((unsigned long )ops->unmap_sg != (unsigned long )((void (*)(struct device * ,
                                                                  struct scatterlist * ,
                                                                  int , enum dma_data_direction ,
                                                                  struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_sg))(dev, sg, nents, dir, attrs);
    }
  } else {
  }
  return;
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
    warn_slowpath_null("./arch/x86/include/asm/dma-mapping.h", 166);
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
__inline static int pci_map_sg(struct pci_dev *hwdev , struct scatterlist *sg , int nents ,
                               int direction )
{
  int tmp ;
  {
  {
  tmp = dma_map_sg_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         sg, nents, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void pci_unmap_sg(struct pci_dev *hwdev , struct scatterlist *sg ,
                                  int nents , int direction )
{
  {
  {
  dma_unmap_sg_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                     sg, nents, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  }
  return;
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
extern int fasync_helper(int , struct file * , int , struct fasync_struct ** ) ;
extern int alloc_chrdev_region(dev_t * , unsigned int , unsigned int , char const * ) ;
static int ldv_alloc_chrdev_region_237(dev_t *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                       unsigned int ldv_func_arg3 , char const *ldv_func_arg4 ) ;
extern void unregister_chrdev_region(dev_t , unsigned int ) ;
static void ldv_unregister_chrdev_region_240(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
static void ldv_unregister_chrdev_region_241(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
__inline static bool __chk_range_not_ok(unsigned long addr , unsigned long size ,
                                        unsigned long limit )
{
  {
  addr = addr + size;
  if (addr < size) {
    return (1);
  } else {
  }
  return (addr > limit);
}
}
extern unsigned long copy_user_enhanced_fast_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_unrolled(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_user_generic(void *to , void const *from , unsigned int len )
{
  unsigned int ret ;
  {
  __asm__ volatile ("661:\n\tcall %P4\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 3*32+16)\n .byte 662b-661b\n .byte 6641f-6631f\n .long 661b - .\n .long 6632f - .\n .word ( 9*32+ 9)\n .byte 662b-661b\n .byte 6642f-6632f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n .byte 0xff + (6642f-6632f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\tcall %P5\n6641:\n\t6632:\n\tcall %P6\n6642:\n\t.popsection": "=a" (ret),
                       "=D" (to), "=S" (from), "=d" (len): [old] "i" (& copy_user_generic_unrolled),
                       [new1] "i" (& copy_user_generic_string), [new2] "i" (& copy_user_enhanced_fast_string),
                       "1" (to), "2" (from), "3" (len): "memory", "rcx", "r8", "r9",
                       "r10", "r11");
  return ((unsigned long )ret);
}
}
__inline static int __copy_from_user_nocheck(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  {
  ret = 0;
  tmp = copy_user_generic(dst, src, size);
  }
  return ((int )tmp);
  {
  if (size == 1U) {
    goto case_1;
  } else {
  }
  if (size == 2U) {
    goto case_2;
  } else {
  }
  if (size == 4U) {
    goto case_4;
  } else {
  }
  if (size == 8U) {
    goto case_8;
  } else {
  }
  if (size == 10U) {
    goto case_10;
  } else {
  }
  if (size == 16U) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=q" (*((u8 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (1), "0" (ret));
  return (ret);
  case_2:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (2), "0" (ret));
  return (ret);
  case_4:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u32 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (4), "0" (ret));
  return (ret);
  case_8:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (8), "0" (ret));
  return (ret);
  case_10:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (2), "0" (ret));
  return (ret);
  case_16:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (8), "0" (ret));
  return (ret);
  switch_default:
  {
  tmp___2 = copy_user_generic(dst, src, size);
  }
  return ((int )tmp___2);
  switch_break: ;
  }
}
}
__inline static int __copy_from_user(void *dst , void const *src , unsigned int size )
{
  int tmp ;
  {
  {
  might_fault();
  tmp = __copy_from_user_nocheck(dst, src, size);
  }
  return (tmp);
}
}
__inline static int __copy_to_user_nocheck(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  {
  ret = 0;
  tmp = copy_user_generic(dst, src, size);
  }
  return ((int )tmp);
  {
  if (size == 1U) {
    goto case_1;
  } else {
  }
  if (size == 2U) {
    goto case_2;
  } else {
  }
  if (size == 4U) {
    goto case_4;
  } else {
  }
  if (size == 8U) {
    goto case_8;
  } else {
  }
  if (size == 10U) {
    goto case_10;
  } else {
  }
  if (size == 16U) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "iq" (*((u8 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (1), "0" (ret));
  return (ret);
  case_2:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (2), "0" (ret));
  return (ret);
  case_4:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u32 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (4), "0" (ret));
  return (ret);
  case_8:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (8), "0" (ret));
  return (ret);
  case_10:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src + 4UL)),
                       "m" (*((struct __large_struct *)dst + 4U)), "i" (2), "0" (ret));
  return (ret);
  case_16:
  {
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src + 1UL)),
                       "m" (*((struct __large_struct *)dst + 1U)), "i" (8), "0" (ret));
  return (ret);
  switch_default:
  {
  tmp___2 = copy_user_generic(dst, src, size);
  }
  return ((int )tmp___2);
  switch_break: ;
  }
}
}
__inline static int __copy_to_user(void *dst , void const *src , unsigned int size )
{
  int tmp ;
  {
  {
  might_fault();
  tmp = __copy_to_user_nocheck(dst, src, size);
  }
  return (tmp);
}
}
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
__inline static void *kmap(struct page *page )
{
  void *tmp ;
  {
  {
  __might_sleep("include/linux/highmem.h", 58, 0);
  tmp = lowmem_page_address((struct page const *)page);
  }
  return (tmp);
}
}
__inline static void kunmap(struct page *page )
{
  {
  return;
}
}
extern void blk_queue_max_hw_sectors(struct request_queue * , unsigned int ) ;
extern void blk_queue_rq_timeout(struct request_queue * , unsigned int ) ;
__inline static void *shost_priv(struct Scsi_Host *shost )
{
  {
  return ((void *)(& shost->hostdata));
}
}
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
static struct Scsi_Host *ldv_scsi_host_alloc_233(struct scsi_host_template *ldv_func_arg1 ,
                                                 int ldv_func_arg2 ) ;
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
extern void scsi_scan_host(struct Scsi_Host * ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
static void ldv_scsi_remove_host_227(struct Scsi_Host *ldv_func_arg1 ) ;
static void ldv_scsi_remove_host_235(struct Scsi_Host *ldv_func_arg1 ) ;
extern void scsi_host_put(struct Scsi_Host * ) ;
extern void scsi_cmd_get_serial(struct Scsi_Host * , struct scsi_cmnd * ) ;
__inline static int scsi_add_host(struct Scsi_Host *host , struct device *dev )
{
  int tmp ;
  {
  {
  tmp = scsi_add_host_with_dma(host, dev, dev);
  }
  return (tmp);
}
}
__inline static int ldv_scsi_add_host_234(struct Scsi_Host *host , struct device *dev ) ;
extern void scsi_unblock_requests(struct Scsi_Host * ) ;
extern void scsi_block_requests(struct Scsi_Host * ) ;
extern void msleep(unsigned int ) ;
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
__inline static int ldv_request_irq_219(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
__inline static int ldv_request_irq_221(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_218(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_220(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void __tasklet_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  }
  if (tmp == 0) {
    {
    __tasklet_schedule(t);
    }
  } else {
  }
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
extern void sdev_prefix_printk(char const * , struct scsi_device const * , char const * ,
                               char const * , ...) ;
extern void scmd_printk(char const * , struct scsi_cmnd const * , char const *
                        , ...) ;
extern int scsi_add_device(struct Scsi_Host * , uint , uint , u64 ) ;
extern void scsi_remove_device(struct scsi_device * ) ;
extern int scsi_device_get(struct scsi_device * ) ;
extern void scsi_device_put(struct scsi_device * ) ;
extern int scsi_change_queue_depth(struct scsi_device * , int ) ;
extern int scsi_dma_map(struct scsi_cmnd * ) ;
extern void scsi_dma_unmap(struct scsi_cmnd * ) ;
__inline static struct scatterlist *scsi_sglist(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.table.sgl);
}
}
__inline static unsigned int scsi_bufflen(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.length);
}
}
__inline static void scsi_set_resid(struct scsi_cmnd *cmd , int resid )
{
  {
  cmd->sdb.resid = resid;
  return;
}
}
extern void scsi_report_bus_reset(struct Scsi_Host * , int ) ;
extern void kfree_skb(struct sk_buff * ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
__inline static unsigned char *skb_tail_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->tail);
}
}
extern int netlink_broadcast(struct sock * , struct sk_buff * , __u32 , __u32 ,
                             gfp_t ) ;
extern int nla_put(struct sk_buff * , int , int , void const * ) ;
__inline static int nlmsg_msg_size(int payload )
{
  {
  return (payload + 16);
}
}
__inline static int nlmsg_total_size(int payload )
{
  int tmp ;
  {
  {
  tmp = nlmsg_msg_size(payload);
  }
  return ((int )((unsigned int )tmp + 3U) & -4);
}
}
__inline static struct sk_buff *nlmsg_new(size_t payload , gfp_t flags )
{
  int tmp ;
  struct sk_buff *tmp___0 ;
  {
  {
  tmp = nlmsg_total_size((int )payload);
  tmp___0 = alloc_skb((unsigned int )tmp, flags);
  }
  return (tmp___0);
}
}
__inline static void nlmsg_end(struct sk_buff *skb , struct nlmsghdr *nlh )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_tail_pointer((struct sk_buff const *)skb);
  nlh->nlmsg_len = (__u32 )((long )tmp) - (__u32 )((long )nlh);
  }
  return;
}
}
__inline static void nlmsg_free(struct sk_buff *skb )
{
  {
  {
  kfree_skb(skb);
  }
  return;
}
}
__inline static int nlmsg_multicast(struct sock *sk , struct sk_buff *skb , u32 portid ,
                                    unsigned int group , gfp_t flags )
{
  int err ;
  {
  {
  ((struct netlink_skb_parms *)(& skb->cb))->dst_group = group;
  err = netlink_broadcast(sk, skb, portid, group, flags);
  }
  if (err > 0) {
    err = 0;
  } else {
  }
  return (err);
}
}
__inline static int nla_attr_size(int payload )
{
  {
  return (payload + 4);
}
}
__inline static int nla_total_size(int payload )
{
  int tmp ;
  {
  {
  tmp = nla_attr_size(payload);
  }
  return ((tmp + 3) & -4);
}
}
extern struct net init_net ;
extern int __genl_register_family(struct genl_family * ) ;
__inline static int genl_register_family(struct genl_family *family )
{
  int tmp ;
  {
  {
  family->module = & __this_module;
  tmp = __genl_register_family(family);
  }
  return (tmp);
}
}
extern int genl_unregister_family(struct genl_family * ) ;
extern void *genlmsg_put(struct sk_buff * , u32 , u32 , struct genl_family * , int ,
                         u8 ) ;
__inline static void genlmsg_end(struct sk_buff *skb , void *hdr )
{
  {
  {
  nlmsg_end(skb, (struct nlmsghdr *)hdr + 0xffffffffffffffecUL);
  }
  return;
}
}
__inline static int genlmsg_multicast_netns(struct genl_family *family , struct net *net ,
                                            struct sk_buff *skb , u32 portid , unsigned int group ,
                                            gfp_t flags )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  {
  __ret_warn_once = group >= family->n_mcgrps;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_null("include/net/genetlink.h", 299);
      }
    } else {
    }
    {
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  if (tmp___2 != 0L) {
    return (-22);
  } else {
  }
  {
  group = family->mcgrp_offset + group;
  tmp___3 = nlmsg_multicast(net->genl_sock, skb, portid, group, flags);
  }
  return (tmp___3);
}
}
__inline static int genlmsg_multicast(struct genl_family *family , struct sk_buff *skb ,
                                      u32 portid , unsigned int group , gfp_t flags )
{
  int tmp ;
  {
  {
  tmp = genlmsg_multicast_netns(family, & init_net, skb, portid, group, flags);
  }
  return (tmp);
}
}
__inline static int genlmsg_msg_size(int payload )
{
  {
  return ((int )((unsigned int )payload + 4U));
}
}
__inline static int genlmsg_total_size(int payload )
{
  int tmp ;
  {
  {
  tmp = genlmsg_msg_size(payload);
  }
  return ((int )((unsigned int )tmp + 3U) & -4);
}
}
__inline static struct sk_buff *genlmsg_new(size_t payload , gfp_t flags )
{
  int tmp ;
  struct sk_buff *tmp___0 ;
  {
  {
  tmp = genlmsg_total_size((int )payload);
  tmp___0 = nlmsg_new((size_t )tmp, flags);
  }
  return (tmp___0);
}
}
static struct pmcraid_ioasc_error pmcraid_ioasc_error_table[67U] =
  { {18351616U, 2U, (char *)"Recovered Error, soft media error, sector reassignment suggested"},
        {22872064U,
      2U, (char *)"Recovered Error, failure prediction threshold exceeded"},
        {22909440U, 2U, (char *)"Recovered Error, soft Cache Card Battery error threshold"},
        {22909440U,
      2U, (char *)"Recovered Error, soft Cache Card Battery error threshold"},
        {33849344U, 2U, (char *)"Not Ready, IOA Reset Required"},
        {37782784U, 2U, (char *)"Not Ready, IOA microcode download required"},
        {51448576U, 2U, (char *)"Medium Error, data unreadable, reassignment suggested"},
        {51448832U,
      1U, (char *)"Medium Error, data unreadable do not reassign"},
        {53542912U, 2U, (char *)"Medium Error, media corrupted"},
        {67436544U, 2U, (char *)"Hardware Error, IOA can\'t communicate with device"},
        {67633152U,
      1U, (char *)"Hardware Error, device bus error"},
        {67665920U, 1U, (char *)"Hardware Error, device bus is not functioning"},
        {68255744U, 2U, (char *)"Hardware Error, IOA reserved area data check"},
        {68256000U, 2U, (char *)"Hardware Error, IOA reserved area invalid data pattern"},
        {68256256U,
      2U, (char *)"Hardware Error, IOA reserved area LRC error"},
        {70385664U, 2U, (char *)"Hardware Error, reassignment space exhausted"},
        {70451200U, 2U, (char *)"Hardware Error, data transfer underlength error"},
        {70451200U, 2U, (char *)"Hardware Error, data transfer overlength error"},
        {71401472U, 1U, (char *)"Hardware Error, PCI bus error"},
        {71565312U, 2U, (char *)"Hardware Error, device error"},
        {71598592U, 1U, (char *)"Hardware Error, IOA error"},
        {71598848U, 2U, (char *)"Hardware Error, undefined device response"},
        {71599104U, 2U, (char *)"Hardware Error, IOA microcode error"},
        {71599616U, 2U, (char *)"Hardware Error, IOA reset required"},
        {71602688U, 2U, (char *)"Hardware Error, hard Cache Fearuee Card Battery error"},
        {71606272U,
      2U, (char *)"Hardware Error, failed device altered"},
        {71606784U, 2U, (char *)"Hardware Error, data check after reassignment"},
        {71607040U, 2U, (char *)"Hardware Error, LRC error after reassignment"},
        {71958528U, 2U, (char *)"Hardware Error, device bus error (msg/cmd phase)"},
        {73860096U, 2U, (char *)"Hardware Error, new device can\'t be used"},
        {73891840U, 2U, (char *)"Hardware Error, invalid multiadapter configuration"},
        {73892096U,
      2U, (char *)"Hardware Error, incorrect connection between enclosures"},
        {73892352U, 2U, (char *)"Hardware Error, connections exceed IOA design limits"},
        {73892608U,
      2U, (char *)"Hardware Error, incorrect multipath connection"},
        {73895936U, 2U, (char *)"Hardware Error, command to LUN failed"},
        {105676800U, 2U, (char *)"Unit Attention, cache exists for missing/failed device"},
        {107413760U,
      2U, (char *)"Unit Attention, incompatible exposed mode device"},
        {107415040U, 2U, (char *)"Unit Attention, attachment of logical unit failed"},
        {107446272U,
      2U, (char *)"Unit Attention, cables exceed connective design limit"},
        {107447040U, 2U, (char *)"Unit Attention, incomplete multipath connection betweenIOA and enclosure"},
        {107447296U,
      2U, (char *)"Unit Attention, incomplete multipath connection betweendevice and enclosure"},
        {107447552U,
      2U, (char *)"Unit Attention, incomplete multipath connection betweenIOA and remote IOA"},
        {107447808U,
      2U, (char *)"Unit Attention, missing remote IOA"},
        {107450624U, 2U, (char *)"Unit Attention, enclosure doesn\'t support required multipathfunction"},
        {107577856U,
      2U, (char *)"Unit Attention, corrupt array parity detected on device"},
        {107676160U, 2U, (char *)"Unit Attention, array exposed"},
        {107708928U, 2U, (char *)"Unit Attention, exposed array is still protected"},
        {107713024U,
      2U, (char *)"Unit Attention, Multipath redundancy level got worse"},
        {119996416U, 2U, (char *)"Data Protect, device is read/write protected by IOA"},
        {120029184U,
      2U, (char *)"Data Protect, IOA doesn\'t support device attribute"},
        {120029440U, 2U, (char *)"Data Protect, NVRAM mirroring prohibited"},
        {120030208U, 2U, (char *)"Data Protect, array is short 2 or more devices"},
        {120030720U, 2U, (char *)"Data Protect, exposed array is short a required device"},
        {120030976U,
      2U, (char *)"Data Protect, array members not at required addresses"},
        {120031232U, 2U, (char *)"Data Protect, exposed mode device resource address conflict"},
        {120031488U,
      2U, (char *)"Data Protect, incorrect resource address of exposed mode device"},
        {120031744U,
      2U, (char *)"Data Protect, Array is missing a device and parity is out of sync"},
        {120032000U,
      2U, (char *)"Data Protect, maximum number of arrays already exist"},
        {120032256U, 2U, (char *)"Data Protect, cannot locate cache data for device"},
        {120032512U,
      2U, (char *)"Data Protect, cache data exits for a changed device"},
        {120033536U, 2U, (char *)"Data Protect, detection of a device requiring format"},
        {120033792U,
      2U, (char *)"Data Protect, IOA exceeds maximum number of devices"},
        {120034816U, 2U, (char *)"Data Protect, missing array, volume set is not functional"},
        {120035072U,
      2U, (char *)"Data Protect, single device for a volume set"},
        {120035328U, 2U, (char *)"Data Protect, missing multiple devices for a volume set"},
        {120035584U,
      2U, (char *)"Data Protect, maximum number of volument sets already exists"},
        {120035840U,
      2U, (char *)"Data Protect, other volume set problem"}};
static unsigned int pmcraid_debug_log ;
static unsigned int pmcraid_disable_aen ;
static unsigned int pmcraid_log_level = 1U;
static unsigned int pmcraid_enable_msix ;
static atomic_t pmcraid_adapter_count = {0};
static unsigned int pmcraid_major ;
static struct class *pmcraid_class ;
unsigned long pmcraid_minor[16U] ;
static struct pmcraid_chip_details pmcraid_chip_cfg[1U] = { {0UL, 64UL, 523312UL, 52UL, 156UL, 523328UL, 160UL, 523304UL, 523304UL, 32UL,
      32UL, 300UL}};
static struct pci_device_id pmcraid_pci_table[2U] = { {4600U, 21024U, 4294967295U, 4294967295U, 0U, 0U, (unsigned long )(& pmcraid_chip_cfg)}};
struct pci_device_id const __mod_pci__pmcraid_pci_table_device_table[2U] ;
static int pmcraid_slave_alloc(struct scsi_device *scsi_dev )
{
  struct pmcraid_resource_entry *temp ;
  struct pmcraid_resource_entry *res ;
  struct pmcraid_instance *pinstance ;
  u8 target ;
  u8 bus ;
  u8 lun ;
  unsigned long lock_flags ;
  int rc ;
  u16 fw_version ;
  void *tmp ;
  __u16 tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  res = (struct pmcraid_resource_entry *)0;
  rc = -6;
  tmp = shost_priv(scsi_dev->host);
  pinstance = (struct pmcraid_instance *)tmp;
  tmp___0 = __fswab16((int )(pinstance->inq_data)->fw_version);
  fw_version = tmp___0;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_127(& pinstance->resource_lock);
  __mptr = (struct list_head const *)pinstance->used_res_q.next;
  temp = (struct pmcraid_resource_entry *)__mptr;
  }
  goto ldv_62469;
  ldv_62468: ;
  if ((unsigned int )temp->__annonCompField114.cfg_entry.resource_type == 2U) {
    if ((unsigned int )fw_version <= 2U) {
      target = temp->__annonCompField114.cfg_entry.unique_flags1;
    } else {
      target = (u8 )temp->__annonCompField114.cfg_entry.array_id;
    }
    if ((int )((signed char )target) < 0) {
      goto ldv_62466;
    } else {
    }
    bus = 1U;
    lun = 0U;
  } else
  if ((unsigned int )temp->__annonCompField114.cfg_entry.resource_type == 1U) {
    target = (u8 )(temp->__annonCompField114.cfg_entry.resource_address >> 16);
    bus = 0U;
    lun = 0U;
  } else {
    goto ldv_62466;
  }
  if (((unsigned int )bus == scsi_dev->channel && (unsigned int )target == scsi_dev->id) && (u64 )lun == scsi_dev->lun) {
    res = temp;
    goto ldv_62467;
  } else {
  }
  ldv_62466:
  __mptr___0 = (struct list_head const *)temp->queue.next;
  temp = (struct pmcraid_resource_entry *)__mptr___0;
  ldv_62469: ;
  if ((unsigned long )(& temp->queue) != (unsigned long )(& pinstance->used_res_q)) {
    goto ldv_62468;
  } else {
  }
  ldv_62467: ;
  if ((unsigned long )res != (unsigned long )((struct pmcraid_resource_entry *)0)) {
    {
    res->scsi_dev = scsi_dev;
    scsi_dev->hostdata = (void *)res;
    res->change_detected = 0U;
    atomic_set(& res->read_failures, 0);
    atomic_set(& res->write_failures, 0);
    rc = 0;
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_128(& pinstance->resource_lock, lock_flags);
  }
  return (rc);
}
}
static int pmcraid_slave_configure(struct scsi_device *scsi_dev )
{
  struct pmcraid_resource_entry *res ;
  {
  res = (struct pmcraid_resource_entry *)scsi_dev->hostdata;
  if ((unsigned long )res == (unsigned long )((struct pmcraid_resource_entry *)0)) {
    return (0);
  } else {
  }
  if ((unsigned int )res->__annonCompField114.cfg_entry.resource_type == 1U && (int )((signed char )scsi_dev->type) != 13) {
    return (-6);
  } else {
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: configuring %x:%x:%x:%x\n", (scsi_dev->host)->unique_id,
           scsi_dev->channel, scsi_dev->id, (int )((unsigned char )scsi_dev->lun));
    }
  } else {
  }
  if ((unsigned int )res->__annonCompField114.cfg_entry.resource_type == 1U) {
    scsi_dev->allow_restart = 1U;
  } else
  if ((unsigned int )res->__annonCompField114.cfg_entry.resource_type == 2U) {
    {
    scsi_dev->allow_restart = 1U;
    blk_queue_rq_timeout(scsi_dev->request_queue, 15000U);
    blk_queue_max_hw_sectors(scsi_dev->request_queue, 512U);
    }
  } else {
  }
  if ((unsigned int )res->__annonCompField114.cfg_entry.resource_type - 1U > 1U) {
    scsi_dev->tagged_supported = 0U;
  } else {
  }
  return (0);
}
}
static void pmcraid_slave_destroy(struct scsi_device *scsi_dev )
{
  struct pmcraid_resource_entry *res ;
  {
  res = (struct pmcraid_resource_entry *)scsi_dev->hostdata;
  if ((unsigned long )res != (unsigned long )((struct pmcraid_resource_entry *)0)) {
    res->scsi_dev = (struct scsi_device *)0;
  } else {
  }
  scsi_dev->hostdata = (void *)0;
  return;
}
}
static int pmcraid_change_queue_depth(struct scsi_device *scsi_dev , int depth )
{
  int tmp ;
  {
  if (depth > 254) {
    depth = 254;
  } else {
  }
  {
  tmp = scsi_change_queue_depth(scsi_dev, depth);
  }
  return (tmp);
}
}
void pmcraid_init_cmdblk(struct pmcraid_cmd *cmd , int index )
{
  struct pmcraid_ioarcb *ioarcb ;
  dma_addr_t dma_addr ;
  u32 ioasa_offset ;
  struct lock_class_key __key ;
  {
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  dma_addr = cmd->ioa_cb_bus_addr;
  if (index >= 0) {
    ioasa_offset = 1152U;
    cmd->index = (u32 )index;
    ioarcb->response_handle = (unsigned int )(index << 2);
    ioarcb->ioarcb_bus_addr = dma_addr;
    ioarcb->ioasa_bus_addr = dma_addr + (dma_addr_t )ioasa_offset;
    ioarcb->ioasa_len = 304U;
  } else {
    {
    memset((void *)(& (cmd->ioa_cb)->ioarcb.cdb), 0, 16UL);
    ioarcb->hrrq_id = 0U;
    ioarcb->request_flags0 = 0U;
    ioarcb->request_flags1 = 0U;
    ioarcb->cmd_timeout = 0U;
    ioarcb->ioarcb_bus_addr = ioarcb->ioarcb_bus_addr & 0xffffffffffffffe0ULL;
    ioarcb->ioadl_bus_addr = 0ULL;
    ioarcb->ioadl_length = 0U;
    ioarcb->data_transfer_length = 0U;
    ioarcb->add_cmd_param_length = 0U;
    ioarcb->add_cmd_param_offset = 0U;
    (cmd->ioa_cb)->ioasa.ioasc = 0U;
    (cmd->ioa_cb)->ioasa.residual_data_length = 0U;
    cmd->__annonCompField113.time_left = 0UL;
    }
  }
  {
  cmd->cmd_done = (void (*)(struct pmcraid_cmd * ))0;
  cmd->scsi_cmd = (struct scsi_cmnd *)0;
  cmd->release = 0U;
  cmd->completion_req = 0U;
  cmd->__annonCompField113.__annonCompField112.sense_buffer = (u8 *)0U;
  cmd->__annonCompField113.__annonCompField112.sense_buffer_dma = 0ULL;
  cmd->dma_handle = 0ULL;
  init_timer_key(& cmd->timer, 0U, "(&cmd->timer)", & __key);
  }
  return;
}
}
static void pmcraid_reinit_cmdblk(struct pmcraid_cmd *cmd )
{
  {
  {
  pmcraid_init_cmdblk(cmd, -1);
  }
  return;
}
}
static struct pmcraid_cmd *pmcraid_get_free_cmd(struct pmcraid_instance *pinstance )
{
  struct pmcraid_cmd *cmd ;
  unsigned long lock_flags ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  {
  cmd = (struct pmcraid_cmd *)0;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_129(& pinstance->free_pool_lock);
  tmp = list_empty((struct list_head const *)(& pinstance->free_cmd_pool));
  }
  if (tmp == 0) {
    {
    __mptr = (struct list_head const *)pinstance->free_cmd_pool.next;
    cmd = (struct pmcraid_cmd *)__mptr + 0xffffffffffffffe0UL;
    list_del(& cmd->free_list);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_130(& pinstance->free_pool_lock, lock_flags);
  }
  if ((unsigned long )cmd != (unsigned long )((struct pmcraid_cmd *)0)) {
    {
    pmcraid_reinit_cmdblk(cmd);
    }
  } else {
  }
  return (cmd);
}
}
void pmcraid_return_cmd(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  unsigned long lock_flags ;
  {
  {
  pinstance = cmd->drv_inst;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_131(& pinstance->free_pool_lock);
  list_add_tail(& cmd->free_list, & pinstance->free_cmd_pool);
  ldv_spin_unlock_irqrestore_130(& pinstance->free_pool_lock, lock_flags);
  }
  return;
}
}
static u32 pmcraid_read_interrupts(struct pmcraid_instance *pinstance )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  if ((unsigned int )pinstance->interrupt_mode != 0U) {
    {
    tmp = ioread32(pinstance->int_regs.ioa_host_msix_interrupt_reg);
    tmp___1 = tmp;
    }
  } else {
    {
    tmp___0 = ioread32(pinstance->int_regs.ioa_host_interrupt_reg);
    tmp___1 = tmp___0;
    }
  }
  return (tmp___1);
}
}
static void pmcraid_disable_interrupts(struct pmcraid_instance *pinstance , u32 intrs )
{
  u32 gmask ;
  unsigned int tmp ;
  u32 nmask ;
  {
  {
  tmp = ioread32(pinstance->int_regs.global_interrupt_mask_reg);
  gmask = tmp;
  nmask = gmask | 5U;
  iowrite32(intrs, pinstance->int_regs.ioa_host_interrupt_clr_reg);
  iowrite32(nmask, pinstance->int_regs.global_interrupt_mask_reg);
  ioread32(pinstance->int_regs.global_interrupt_mask_reg);
  }
  if ((unsigned int )pinstance->interrupt_mode == 0U) {
    {
    iowrite32(intrs, pinstance->int_regs.ioa_host_interrupt_mask_reg);
    ioread32(pinstance->int_regs.ioa_host_interrupt_mask_reg);
    }
  } else {
  }
  return;
}
}
static void pmcraid_enable_interrupts(struct pmcraid_instance *pinstance , u32 intrs )
{
  u32 gmask ;
  unsigned int tmp ;
  u32 nmask ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  tmp = ioread32(pinstance->int_regs.global_interrupt_mask_reg);
  gmask = tmp;
  nmask = gmask & 4294967290U;
  iowrite32(nmask, pinstance->int_regs.global_interrupt_mask_reg);
  }
  if ((unsigned int )pinstance->interrupt_mode == 0U) {
    {
    iowrite32(~ intrs, pinstance->int_regs.ioa_host_interrupt_mask_reg);
    ioread32(pinstance->int_regs.ioa_host_interrupt_mask_reg);
    }
  } else {
  }
  if (pmcraid_debug_log != 0U) {
    {
    tmp___0 = ioread32(pinstance->int_regs.ioa_host_interrupt_mask_reg);
    tmp___1 = ioread32(pinstance->int_regs.global_interrupt_mask_reg);
    printk("\016MaxRAID: enabled interrupts global mask = %x intr_mask = %x\n", tmp___1,
           tmp___0);
    }
  } else {
  }
  return;
}
}
static void pmcraid_clr_trans_op(struct pmcraid_instance *pinstance )
{
  unsigned long lock_flags ;
  {
  if ((unsigned int )pinstance->interrupt_mode == 0U) {
    {
    iowrite32(2147483648U, pinstance->int_regs.ioa_host_interrupt_mask_reg);
    ioread32(pinstance->int_regs.ioa_host_interrupt_mask_reg);
    iowrite32(2147483648U, pinstance->int_regs.ioa_host_interrupt_clr_reg);
    ioread32(pinstance->int_regs.ioa_host_interrupt_clr_reg);
    }
  } else {
  }
  if ((unsigned long )pinstance->reset_cmd != (unsigned long )((struct pmcraid_cmd *)0)) {
    {
    ldv_del_timer_133(& (pinstance->reset_cmd)->timer);
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_134((pinstance->host)->host_lock);
    (*((pinstance->reset_cmd)->cmd_done))(pinstance->reset_cmd);
    ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
    }
  } else {
  }
  return;
}
}
static void pmcraid_reset_type(struct pmcraid_instance *pinstance )
{
  u32 mask ;
  u32 intrs ;
  u32 alerts ;
  {
  {
  mask = ioread32(pinstance->int_regs.ioa_host_interrupt_mask_reg);
  intrs = ioread32(pinstance->int_regs.ioa_host_interrupt_reg);
  alerts = ioread32(pinstance->int_regs.host_ioa_interrupt_reg);
  }
  if (((mask & 2U) == 0U || (alerts & 16777216U) != 0U) || (intrs & 469762076U) != 0U) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: IOA requires hard reset\n");
      }
    } else {
    }
    pinstance->ioa_hard_reset = 1U;
  } else {
  }
  if ((intrs & 134217728U) != 0U) {
    pinstance->ioa_unit_check = 1U;
  } else {
  }
  return;
}
}
static void pmcraid_ioa_reset(struct pmcraid_cmd *cmd ) ;
static void pmcraid_bist_done(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  unsigned long lock_flags ;
  int rc ;
  u16 pci_reg ;
  {
  {
  pinstance = cmd->drv_inst;
  rc = pci_read_config_word((struct pci_dev const *)pinstance->pdev, 4, & pci_reg);
  }
  if ((rc != 0 || ((int )pci_reg & 2) == 0) && cmd->__annonCompField113.time_left != 0UL) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: BIST not complete, waiting another 2 secs\n");
      }
    } else {
    }
    {
    cmd->timer.expires = (unsigned long )jiffies + cmd->__annonCompField113.time_left;
    cmd->__annonCompField113.time_left = 0UL;
    cmd->timer.data = (unsigned long )cmd;
    cmd->timer.function = (void (*)(unsigned long ))(& pmcraid_bist_done);
    add_timer(& cmd->timer);
    }
  } else {
    cmd->__annonCompField113.time_left = 0UL;
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: BIST is complete, proceeding with reset\n");
      }
    } else {
    }
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_136((pinstance->host)->host_lock);
    pmcraid_ioa_reset(cmd);
    ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
    }
  }
  return;
}
}
static void pmcraid_start_bist(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  u32 doorbells ;
  u32 intrs ;
  unsigned long tmp ;
  {
  {
  pinstance = cmd->drv_inst;
  iowrite32(256U, pinstance->int_regs.host_ioa_interrupt_reg);
  doorbells = ioread32(pinstance->int_regs.host_ioa_interrupt_reg);
  intrs = ioread32(pinstance->int_regs.ioa_host_interrupt_reg);
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: doorbells after start bist: %x intrs: %x\n", doorbells, intrs);
    }
  } else {
  }
  {
  cmd->__annonCompField113.time_left = msecs_to_jiffies(2000U);
  cmd->timer.data = (unsigned long )cmd;
  tmp = msecs_to_jiffies(2000U);
  cmd->timer.expires = (unsigned long )jiffies + tmp;
  cmd->timer.function = (void (*)(unsigned long ))(& pmcraid_bist_done);
  add_timer(& cmd->timer);
  }
  return;
}
}
static void pmcraid_reset_alert_done(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  u32 status ;
  unsigned int tmp ;
  unsigned long lock_flags ;
  {
  {
  pinstance = cmd->drv_inst;
  tmp = ioread32(pinstance->ioa_status);
  status = tmp;
  }
  if ((status & 33554432U) == 0U || cmd->__annonCompField113.time_left == 0UL) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: critical op is reset proceeding with reset\n");
      }
    } else {
    }
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_138((pinstance->host)->host_lock);
    pmcraid_ioa_reset(cmd);
    ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
    }
  } else {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: critical op is not yet reset waiting again\n");
      }
    } else {
    }
    {
    cmd->__annonCompField113.time_left = cmd->__annonCompField113.time_left - 25UL;
    cmd->timer.data = (unsigned long )cmd;
    cmd->timer.expires = (unsigned long )jiffies + 25UL;
    cmd->timer.function = (void (*)(unsigned long ))(& pmcraid_reset_alert_done);
    add_timer(& cmd->timer);
    }
  }
  return;
}
}
static void pmcraid_notify_ioastate(struct pmcraid_instance *pinstance , u32 evt ) ;
static void pmcraid_reset_alert(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  u32 doorbells ;
  int rc ;
  u16 pci_reg ;
  {
  {
  pinstance = cmd->drv_inst;
  rc = pci_read_config_word((struct pci_dev const *)pinstance->pdev, 4, & pci_reg);
  }
  if (rc == 0 && ((int )pci_reg & 2) != 0) {
    {
    cmd->__annonCompField113.time_left = 500UL;
    cmd->timer.data = (unsigned long )cmd;
    cmd->timer.expires = (unsigned long )jiffies + 25UL;
    cmd->timer.function = (void (*)(unsigned long ))(& pmcraid_reset_alert_done);
    add_timer(& cmd->timer);
    iowrite32(16777216U, pinstance->int_regs.host_ioa_interrupt_reg);
    doorbells = ioread32(pinstance->int_regs.host_ioa_interrupt_reg);
    }
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: doorbells after reset alert: %x\n", doorbells);
      }
    } else {
    }
  } else {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: PCI config is not accessible starting BIST\n");
      }
    } else {
    }
    {
    pinstance->ioa_state = 4U;
    pmcraid_start_bist(cmd);
    }
  }
  return;
}
}
static void pmcraid_timeout_handler(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  unsigned long lock_flags ;
  {
  {
  pinstance = cmd->drv_inst;
  _dev_info((struct device const *)(& (pinstance->pdev)->dev), "Adapter being reset due to cmd(CDB[0] = %x) timeout\n",
            (int )(cmd->ioa_cb)->ioarcb.cdb[0]);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_140((pinstance->host)->host_lock);
  }
  if ((unsigned int )*((unsigned char *)pinstance + 12200UL) == 0U) {
    {
    pinstance->ioa_reset_attempts = 0U;
    cmd = pmcraid_get_free_cmd(pinstance);
    }
    if ((unsigned long )cmd == (unsigned long )((struct pmcraid_cmd *)0)) {
      {
      ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
      printk("\vMaxRAID: no free cmnd block for timeout handler\n");
      }
      return;
    } else {
    }
    pinstance->reset_cmd = cmd;
    pinstance->ioa_reset_in_progress = 1U;
  } else {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: reset is already in progress\n");
      }
    } else {
    }
    if ((unsigned long )pinstance->reset_cmd != (unsigned long )cmd) {
      {
      printk("\vMaxRAID: cmd is pending but reset in progress\n");
      }
    } else {
    }
    if ((unsigned long )cmd == (unsigned long )pinstance->reset_cmd) {
      cmd->cmd_done = & pmcraid_ioa_reset;
    } else {
    }
  }
  if (pinstance->scn.ioa_state != 285212672U && pinstance->scn.ioa_state != 285212675U) {
    {
    pmcraid_notify_ioastate(pinstance, 285212672U);
    }
  } else {
  }
  {
  pinstance->ioa_state = 5U;
  scsi_block_requests(pinstance->host);
  pmcraid_reset_alert(cmd);
  ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
  }
  return;
}
}
static void pmcraid_internal_done(struct pmcraid_cmd *cmd )
{
  {
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: response internal cmd CDB[0] = %x ioasc = %x\n", (int )(cmd->ioa_cb)->ioarcb.cdb[0],
           (cmd->ioa_cb)->ioasa.ioasc);
    }
  } else {
  }
  if ((unsigned int )cmd->completion_req != 0U) {
    {
    cmd->completion_req = 0U;
    complete(& cmd->wait_for_completion);
    }
  } else {
  }
  if ((unsigned int )cmd->release != 0U) {
    {
    cmd->release = 0U;
    pmcraid_return_cmd(cmd);
    }
  } else {
  }
  return;
}
}
static void pmcraid_reinit_cfgtable_done(struct pmcraid_cmd *cmd )
{
  {
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: response internal cmd CDB[0] = %x ioasc = %x\n", (int )(cmd->ioa_cb)->ioarcb.cdb[0],
           (cmd->ioa_cb)->ioasa.ioasc);
    }
  } else {
  }
  if ((unsigned int )cmd->release != 0U) {
    {
    cmd->release = 0U;
    pmcraid_return_cmd(cmd);
    }
  } else {
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: scheduling worker for config table reinitialization\n");
    }
  } else {
  }
  {
  schedule_work(& (cmd->drv_inst)->worker_q);
  }
  return;
}
}
static void pmcraid_erp_done(struct pmcraid_cmd *cmd )
{
  struct scsi_cmnd *scsi_cmd ;
  struct pmcraid_instance *pinstance ;
  u32 ioasc ;
  {
  scsi_cmd = cmd->scsi_cmd;
  pinstance = cmd->drv_inst;
  ioasc = (cmd->ioa_cb)->ioasa.ioasc;
  if (ioasc >> 24 != 0U) {
    {
    scsi_cmd->result = scsi_cmd->result | 458752;
    scmd_printk("\016", (struct scsi_cmnd const *)scsi_cmd, "command CDB[0] = %x failed with IOASC: 0x%08X\n",
                (int )(cmd->ioa_cb)->ioarcb.cdb[0], ioasc);
    }
  } else {
  }
  if ((unsigned long )cmd->__annonCompField113.__annonCompField112.sense_buffer != (unsigned long )((u8 *)0U)) {
    {
    memcpy((void *)scsi_cmd->sense_buffer, (void const *)cmd->__annonCompField113.__annonCompField112.sense_buffer,
             96UL);
    pci_free_consistent(pinstance->pdev, 96UL, (void *)cmd->__annonCompField113.__annonCompField112.sense_buffer,
                        cmd->__annonCompField113.__annonCompField112.sense_buffer_dma);
    cmd->__annonCompField113.__annonCompField112.sense_buffer = (u8 *)0U;
    cmd->__annonCompField113.__annonCompField112.sense_buffer_dma = 0ULL;
    }
  } else {
  }
  {
  scsi_dma_unmap(scsi_cmd);
  pmcraid_return_cmd(cmd);
  (*(scsi_cmd->scsi_done))(scsi_cmd);
  }
  return;
}
}
static void _pmcraid_fire_command(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  unsigned long lock_flags ;
  {
  {
  pinstance = cmd->drv_inst;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_143(& pinstance->pending_pool_lock);
  list_add_tail(& cmd->free_list, & pinstance->pending_cmd_pool);
  ldv_spin_unlock_irqrestore_144(& pinstance->pending_pool_lock, lock_flags);
  atomic_inc(& pinstance->outstanding_cmds);
  __asm__ volatile ("mfence": : : "memory");
  iowrite32((unsigned int )(cmd->ioa_cb)->ioarcb.ioarcb_bus_addr, pinstance->ioarrin);
  }
  return;
}
}
static void pmcraid_send_cmd(struct pmcraid_cmd *cmd , void (*cmd_done)(struct pmcraid_cmd * ) ,
                             unsigned long timeout , void (*timeout_func)(struct pmcraid_cmd * ) )
{
  {
  cmd->cmd_done = cmd_done;
  if ((unsigned long )timeout_func != (unsigned long )((void (*)(struct pmcraid_cmd * ))0)) {
    {
    cmd->timer.data = (unsigned long )cmd;
    cmd->timer.expires = (unsigned long )jiffies + timeout;
    cmd->timer.function = (void (*)(unsigned long ))timeout_func;
    add_timer(& cmd->timer);
    }
  } else {
  }
  {
  _pmcraid_fire_command(cmd);
  }
  return;
}
}
static void pmcraid_ioa_shutdown_done(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  unsigned long lock_flags ;
  {
  {
  pinstance = cmd->drv_inst;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_145((pinstance->host)->host_lock);
  pmcraid_ioa_reset(cmd);
  ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
  }
  return;
}
}
static void pmcraid_ioa_shutdown(struct pmcraid_cmd *cmd )
{
  {
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: response for Cancel CCN CDB[0] = %x ioasc = %x\n", (int )(cmd->ioa_cb)->ioarcb.cdb[0],
           (cmd->ioa_cb)->ioasa.ioasc);
    }
  } else {
  }
  {
  pmcraid_reinit_cmdblk(cmd);
  (cmd->ioa_cb)->ioarcb.request_type = 1U;
  (cmd->ioa_cb)->ioarcb.resource_handle = 4294967295U;
  (cmd->ioa_cb)->ioarcb.cdb[0] = 247U;
  (cmd->ioa_cb)->ioarcb.cdb[1] = 0U;
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: firing normal shutdown command (%d) to IOA\n", (cmd->ioa_cb)->ioarcb.response_handle);
    }
  } else {
  }
  {
  pmcraid_notify_ioastate(cmd->drv_inst, 285212675U);
  pmcraid_send_cmd(cmd, & pmcraid_ioa_shutdown_done, 37500UL, & pmcraid_timeout_handler);
  }
  return;
}
}
static void pmcraid_querycfg(struct pmcraid_cmd *cmd ) ;
static void pmcraid_get_fwversion_done(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  u32 ioasc ;
  unsigned long lock_flags ;
  {
  pinstance = cmd->drv_inst;
  ioasc = (cmd->ioa_cb)->ioasa.ioasc;
  if (ioasc != 0U) {
    {
    printk("\vMaxRAID: IOA Inquiry failed with %x\n", ioasc);
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_147((pinstance->host)->host_lock);
    pinstance->ioa_state = 5U;
    pmcraid_reset_alert(cmd);
    ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
    }
  } else {
    {
    pmcraid_querycfg(cmd);
    }
  }
  return;
}
}
static void pmcraid_get_fwversion(struct pmcraid_cmd *cmd )
{
  struct pmcraid_ioarcb *ioarcb ;
  struct pmcraid_ioadl_desc *ioadl ;
  struct pmcraid_instance *pinstance ;
  u16 data_size ;
  {
  {
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  ioadl = (struct pmcraid_ioadl_desc *)(& ioarcb->add_data.u.ioadl);
  pinstance = cmd->drv_inst;
  data_size = 24U;
  pmcraid_reinit_cmdblk(cmd);
  ioarcb->request_type = 0U;
  ioarcb->resource_handle = 4294967295U;
  ioarcb->cdb[0] = 18U;
  ioarcb->cdb[1] = 1U;
  ioarcb->cdb[2] = 208U;
  ioarcb->cdb[3] = (__u8 )((int )data_size >> 8);
  ioarcb->cdb[4] = (__u8 )data_size;
  ioarcb->ioadl_bus_addr = cmd->ioa_cb_bus_addr + 80ULL;
  ioarcb->ioadl_length = 16U;
  ioarcb->ioarcb_bus_addr = ioarcb->ioarcb_bus_addr & 0xffffffffffffffe0ULL;
  ioarcb->request_flags0 = (__u8 )((unsigned int )ioarcb->request_flags0 | 4U);
  ioarcb->data_transfer_length = (unsigned int )data_size;
  ioadl = (struct pmcraid_ioadl_desc *)(& ioarcb->add_data.u.ioadl);
  ioadl->flags = 64U;
  ioadl->address = pinstance->inq_data_baddr;
  ioadl->data_len = (unsigned int )data_size;
  pmcraid_send_cmd(cmd, & pmcraid_get_fwversion_done, 15000UL, & pmcraid_timeout_handler);
  }
  return;
}
}
static void pmcraid_identify_hrrq(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  struct pmcraid_ioarcb *ioarcb ;
  int index ;
  __be64 hrrq_addr ;
  __u64 tmp ;
  u32 hrrq_size ;
  void (*done_function)(struct pmcraid_cmd * ) ;
  {
  {
  pinstance = cmd->drv_inst;
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  index = cmd->__annonCompField113.hrrq_index;
  tmp = __fswab64(pinstance->hrrq_start_bus_addr[index]);
  hrrq_addr = tmp;
  hrrq_size = 1048576U;
  pmcraid_reinit_cmdblk(cmd);
  cmd->__annonCompField113.hrrq_index = index + 1;
  }
  if (cmd->__annonCompField113.hrrq_index < (int )pinstance->num_hrrq) {
    done_function = & pmcraid_identify_hrrq;
  } else {
    cmd->__annonCompField113.hrrq_index = 0;
    done_function = & pmcraid_get_fwversion;
  }
  ioarcb->request_type = 1U;
  ioarcb->resource_handle = 4294967295U;
  ioarcb->hrrq_id = (__u8 )index;
  ioarcb->cdb[0] = 196U;
  ioarcb->cdb[1] = (__u8 )index;
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: HRRQ_IDENTIFY with hrrq:ioarcb:index => %llx:%llx:%x\n",
           hrrq_addr, ioarcb->ioarcb_bus_addr, index);
    }
  } else {
  }
  {
  memcpy((void *)(& ioarcb->cdb) + 2U, (void const *)(& hrrq_addr), 8UL);
  memcpy((void *)(& ioarcb->cdb) + 10U, (void const *)(& hrrq_size), 4UL);
  pmcraid_send_cmd(cmd, done_function, 15000UL, & pmcraid_timeout_handler);
  }
  return;
}
}
static void pmcraid_process_ccn(struct pmcraid_cmd *cmd ) ;
static void pmcraid_process_ldn(struct pmcraid_cmd *cmd ) ;
static void pmcraid_send_hcam_cmd(struct pmcraid_cmd *cmd )
{
  {
  if ((unsigned int )(cmd->ioa_cb)->ioarcb.cdb[1] == 1U) {
    {
    atomic_set(& (cmd->drv_inst)->ccn.ignore, 0);
    }
  } else {
    {
    atomic_set(& (cmd->drv_inst)->ldn.ignore, 0);
    }
  }
  {
  pmcraid_send_cmd(cmd, cmd->cmd_done, 0UL, (void (*)(struct pmcraid_cmd * ))0);
  }
  return;
}
}
static struct pmcraid_cmd *pmcraid_init_hcam(struct pmcraid_instance *pinstance ,
                                             u8 type )
{
  struct pmcraid_cmd *cmd ;
  struct pmcraid_ioarcb *ioarcb ;
  struct pmcraid_ioadl_desc *ioadl ;
  struct pmcraid_hostrcb *hcam ;
  void (*cmd_done)(struct pmcraid_cmd * ) ;
  dma_addr_t dma ;
  int rcb_size ;
  {
  {
  cmd = pmcraid_get_free_cmd(pinstance);
  }
  if ((unsigned long )cmd == (unsigned long )((struct pmcraid_cmd *)0)) {
    {
    printk("\vMaxRAID: no free command blocks for hcam\n");
    }
    return (cmd);
  } else {
  }
  if ((unsigned int )type == 1U) {
    rcb_size = 4032;
    cmd_done = & pmcraid_process_ccn;
    dma = pinstance->ccn.baddr + 16ULL;
    hcam = & pinstance->ccn;
  } else {
    rcb_size = 4096;
    cmd_done = & pmcraid_process_ldn;
    dma = pinstance->ldn.baddr + 16ULL;
    hcam = & pinstance->ldn;
  }
  hcam->cmd = cmd;
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  ioarcb->ioadl_bus_addr = cmd->ioa_cb_bus_addr + 80ULL;
  ioarcb->ioadl_length = 16U;
  ioadl = (struct pmcraid_ioadl_desc *)(& ioarcb->add_data.u.ioadl);
  ioarcb->request_type = 2U;
  ioarcb->resource_handle = 4294967295U;
  ioarcb->cdb[0] = 207U;
  ioarcb->cdb[1] = type;
  ioarcb->cdb[7] = (__u8 )(rcb_size >> 8);
  ioarcb->cdb[8] = (__u8 )rcb_size;
  ioarcb->data_transfer_length = (unsigned int )rcb_size;
  ioadl->flags = (__u8 )((unsigned int )ioadl->flags | 64U);
  ioadl->data_len = (unsigned int )rcb_size;
  ioadl->address = (__le64 )((unsigned int )dma);
  cmd->cmd_done = cmd_done;
  return (cmd);
}
}
static void pmcraid_send_hcam(struct pmcraid_instance *pinstance , u8 type )
{
  struct pmcraid_cmd *cmd ;
  struct pmcraid_cmd *tmp ;
  {
  {
  tmp = pmcraid_init_hcam(pinstance, (int )type);
  cmd = tmp;
  pmcraid_send_hcam_cmd(cmd);
  }
  return;
}
}
static void pmcraid_prepare_cancel_cmd(struct pmcraid_cmd *cmd , struct pmcraid_cmd *cmd_to_cancel )
{
  struct pmcraid_ioarcb *ioarcb ;
  __be64 ioarcb_addr ;
  __u64 tmp ;
  {
  {
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  ioarcb_addr = (cmd_to_cancel->ioa_cb)->ioarcb.ioarcb_bus_addr;
  ioarcb->resource_handle = (cmd_to_cancel->ioa_cb)->ioarcb.resource_handle;
  ioarcb->request_type = 1U;
  memset((void *)(& ioarcb->cdb), 0, 16UL);
  ioarcb->cdb[0] = 199U;
  tmp = __fswab64(ioarcb_addr);
  ioarcb_addr = tmp;
  memcpy((void *)(& ioarcb->cdb) + 2U, (void const *)(& ioarcb_addr), 8UL);
  }
  return;
}
}
static void pmcraid_cancel_hcam(struct pmcraid_cmd *cmd , u8 type , void (*cmd_done)(struct pmcraid_cmd * ) )
{
  struct pmcraid_instance *pinstance ;
  struct pmcraid_hostrcb *hcam ;
  {
  pinstance = cmd->drv_inst;
  hcam = (unsigned int )type == 2U ? & pinstance->ldn : & pinstance->ccn;
  if ((unsigned long )hcam->cmd == (unsigned long )((struct pmcraid_cmd *)0)) {
    return;
  } else {
  }
  {
  pmcraid_prepare_cancel_cmd(cmd, hcam->cmd);
  pmcraid_send_cmd(cmd, cmd_done, 15000UL, & pmcraid_timeout_handler);
  }
  return;
}
}
static void pmcraid_cancel_ccn(struct pmcraid_cmd *cmd )
{
  {
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: response for Cancel LDN CDB[0] = %x ioasc = %x\n", (int )(cmd->ioa_cb)->ioarcb.cdb[0],
           (cmd->ioa_cb)->ioasa.ioasc);
    }
  } else {
  }
  {
  pmcraid_reinit_cmdblk(cmd);
  pmcraid_cancel_hcam(cmd, 1, & pmcraid_ioa_shutdown);
  }
  return;
}
}
static void pmcraid_cancel_ldn(struct pmcraid_cmd *cmd )
{
  {
  {
  pmcraid_cancel_hcam(cmd, 2, & pmcraid_cancel_ccn);
  }
  return;
}
}
static int pmcraid_expose_resource(u16 fw_version , struct pmcraid_config_table_entry *cfgte )
{
  int retval ;
  {
  retval = 0;
  if ((unsigned int )cfgte->resource_type == 2U) {
    if ((unsigned int )fw_version <= 2U) {
      retval = (int )((signed char )cfgte->unique_flags1) >= 0;
    } else {
      retval = (int )((signed char )cfgte->unique_flags0) >= 0 && (int )((signed char )cfgte->unique_flags1) >= 0;
    }
  } else
  if ((unsigned int )cfgte->resource_type == 1U) {
    retval = (cfgte->resource_address & 255U) != 8U;
  } else {
  }
  return (retval);
}
}
static struct genl_multicast_group pmcraid_mcgrps[1U] = { {{'e', 'v', 'e', 'n', 't', 's', '\000'}}};
static struct genl_family pmcraid_event_family =
     {18U, 0U, {'p', 'm', 'c', 'r', 'a', 'i', 'd', '\000'}, 1U, 1U, (_Bool)0, (_Bool)0,
    0, 0, 0, 0, 0, 0, (struct genl_multicast_group const *)(& pmcraid_mcgrps), 0U,
    1U, 0U, {0, 0}, 0};
static int pmcraid_netlink_init(void)
{
  int result ;
  {
  {
  result = genl_register_family(& pmcraid_event_family);
  }
  if (result != 0) {
    return (result);
  } else {
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: registered NETLINK GENERIC group: %d\n", pmcraid_event_family.id);
    }
  } else {
  }
  return (result);
}
}
static void pmcraid_netlink_release(void)
{
  {
  {
  genl_unregister_family(& pmcraid_event_family);
  }
  return;
}
}
static int pmcraid_notify_aen(struct pmcraid_instance *pinstance , struct pmcraid_aen_msg *aen_msg ,
                              u32 data_size )
{
  struct sk_buff *skb ;
  void *msg_header ;
  u32 total_size ;
  u32 nla_genl_hdr_total_size ;
  int result ;
  int tmp ;
  {
  {
  aen_msg->hostno = ((pinstance->host)->unique_id << 16) | (pinstance->cdev.dev & 1048575U);
  aen_msg->length = data_size;
  data_size = data_size + 16U;
  tmp = nla_total_size((int )data_size);
  total_size = (u32 )tmp;
  nla_genl_hdr_total_size = (total_size + pmcraid_event_family.hdrsize) + 20U;
  skb = genlmsg_new((size_t )nla_genl_hdr_total_size, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    printk("\vMaxRAID: Failed to allocate aen data SKB of size: %x\n", total_size);
    }
    return (-12);
  } else {
  }
  {
  msg_header = genlmsg_put(skb, 0U, 0U, & pmcraid_event_family, 0, 1);
  }
  if ((unsigned long )msg_header == (unsigned long )((void *)0)) {
    {
    printk("\vMaxRAID: failed to copy command details\n");
    nlmsg_free(skb);
    }
    return (-12);
  } else {
  }
  {
  result = nla_put(skb, 1, (int )data_size, (void const *)aen_msg);
  }
  if (result != 0) {
    {
    printk("\vMaxRAID: failed to copy AEN attribute data\n");
    nlmsg_free(skb);
    }
    return (-22);
  } else {
  }
  {
  genlmsg_end(skb, msg_header);
  result = genlmsg_multicast(& pmcraid_event_family, skb, 0U, 0U, 32U);
  }
  if (result != 0) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: error (%x) sending aen event message\n", result);
      }
    } else {
    }
  } else {
  }
  return (result);
}
}
static int pmcraid_notify_ccn(struct pmcraid_instance *pinstance )
{
  int tmp ;
  {
  {
  tmp = pmcraid_notify_aen(pinstance, pinstance->ccn.msg, (pinstance->ccn.hcam)->data_len + 24U);
  }
  return (tmp);
}
}
static int pmcraid_notify_ldn(struct pmcraid_instance *pinstance )
{
  int tmp ;
  {
  {
  tmp = pmcraid_notify_aen(pinstance, pinstance->ldn.msg, (pinstance->ldn.hcam)->data_len + 24U);
  }
  return (tmp);
}
}
static void pmcraid_notify_ioastate(struct pmcraid_instance *pinstance , u32 evt )
{
  {
  {
  pinstance->scn.ioa_state = evt;
  pmcraid_notify_aen(pinstance, & pinstance->scn.msg, 4U);
  }
  return;
}
}
static void pmcraid_handle_config_change(struct pmcraid_instance *pinstance )
{
  struct pmcraid_config_table_entry *cfg_entry ;
  struct pmcraid_hcam_ccn *ccn_hcam ;
  struct pmcraid_cmd *cmd ;
  struct pmcraid_cmd *cfgcmd ;
  struct pmcraid_resource_entry *res ;
  unsigned long lock_flags ;
  unsigned long host_lock_flags ;
  u32 new_entry ;
  u32 hidden_entry ;
  u16 fw_version ;
  int rc ;
  __u16 tmp ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___1 ;
  struct list_head const *__mptr___1 ;
  {
  {
  res = (struct pmcraid_resource_entry *)0;
  new_entry = 1U;
  hidden_entry = 0U;
  ccn_hcam = (struct pmcraid_hcam_ccn *)pinstance->ccn.hcam;
  cfg_entry = & ccn_hcam->cfg_entry;
  tmp = __fswab16((int )(pinstance->inq_data)->fw_version);
  fw_version = tmp;
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: CCN(%x): %x timestamp: %llx type: %x lost: %x flags: %x \t\t res: %x:%x:%x:%x\n",
           (pinstance->ccn.hcam)->ilid, (int )(pinstance->ccn.hcam)->op_code, (long long )(pinstance->ccn.hcam)->timestamp1 | ((long long )(pinstance->ccn.hcam)->timestamp2 << 32),
           (int )(pinstance->ccn.hcam)->notification_type, (int )(pinstance->ccn.hcam)->notification_lost,
           (int )(pinstance->ccn.hcam)->flags, (pinstance->host)->unique_id, (unsigned int )cfg_entry->resource_type != 2U ? ((unsigned int )cfg_entry->resource_type != 1U ? cfg_entry->resource_address & 255U : 0U) : 1U,
           (unsigned int )cfg_entry->resource_type == 2U ? ((unsigned int )fw_version <= 2U ? (__le32 )cfg_entry->unique_flags1 : (__le32 )cfg_entry->array_id & 255U) : (cfg_entry->resource_address >> 16) & 255U,
           0);
    }
  } else {
  }
  if ((unsigned int )(pinstance->ccn.hcam)->notification_lost != 0U) {
    {
    cfgcmd = pmcraid_get_free_cmd(pinstance);
    }
    if ((unsigned long )cfgcmd != (unsigned long )((struct pmcraid_cmd *)0)) {
      if (pmcraid_debug_log != 0U) {
        {
        printk("\016MaxRAID: lost CCN, reading config table\b");
        }
      } else {
      }
      {
      pinstance->reinit_cfg_table = 1U;
      pmcraid_querycfg(cfgcmd);
      }
    } else {
      {
      printk("\vMaxRAID: lost CCN, no free cmd for querycfg\n");
      }
    }
    goto out_notify_apps;
  } else {
  }
  if ((unsigned int )(pinstance->ccn.hcam)->notification_type == 0U && (unsigned int )cfg_entry->resource_type == 2U) {
    if ((unsigned int )fw_version <= 2U) {
      hidden_entry = (int )((signed char )cfg_entry->unique_flags1) < 0;
    } else {
      hidden_entry = (int )((signed char )cfg_entry->unique_flags1) < 0;
    }
  } else {
    {
    tmp___0 = pmcraid_expose_resource((int )fw_version, cfg_entry);
    }
    if (tmp___0 == 0) {
      goto out_notify_apps;
    } else {
    }
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_149(& pinstance->resource_lock);
  __mptr = (struct list_head const *)pinstance->used_res_q.next;
  res = (struct pmcraid_resource_entry *)__mptr;
  }
  goto ldv_62738;
  ldv_62737:
  {
  rc = memcmp((void const *)(& res->__annonCompField114.cfg_entry.resource_address),
              (void const *)(& cfg_entry->resource_address), 4UL);
  }
  if (rc == 0) {
    new_entry = 0U;
    goto ldv_62736;
  } else {
  }
  __mptr___0 = (struct list_head const *)res->queue.next;
  res = (struct pmcraid_resource_entry *)__mptr___0;
  ldv_62738: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& pinstance->used_res_q)) {
    goto ldv_62737;
  } else {
  }
  ldv_62736: ;
  if (new_entry != 0U) {
    if (hidden_entry != 0U) {
      {
      ldv_spin_unlock_irqrestore_128(& pinstance->resource_lock, lock_flags);
      }
      goto out_notify_apps;
    } else {
    }
    {
    tmp___1 = list_empty((struct list_head const *)(& pinstance->free_res_q));
    }
    if (tmp___1 != 0) {
      {
      ldv_spin_unlock_irqrestore_128(& pinstance->resource_lock, lock_flags);
      printk("\vMaxRAID: too many resources attached\n");
      ldv___ldv_linux_kernel_locking_spinlock_spin_lock_152((pinstance->host)->host_lock);
      pmcraid_send_hcam(pinstance, 1);
      ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, host_lock_flags);
      }
      return;
    } else {
    }
    {
    __mptr___1 = (struct list_head const *)pinstance->free_res_q.next;
    res = (struct pmcraid_resource_entry *)__mptr___1;
    list_del(& res->queue);
    res->scsi_dev = (struct scsi_device *)0;
    res->reset_progress = 0U;
    list_add_tail(& res->queue, & pinstance->used_res_q);
    }
  } else {
  }
  {
  memcpy((void *)(& res->__annonCompField114.cfg_entry), (void const *)cfg_entry,
           (size_t )pinstance->config_table_entry_size);
  }
  if ((unsigned int )(pinstance->ccn.hcam)->notification_type == 2U || hidden_entry != 0U) {
    if ((unsigned long )res->scsi_dev != (unsigned long )((struct scsi_device *)0)) {
      if ((unsigned int )fw_version <= 2U) {
        res->__annonCompField114.cfg_entry.unique_flags1 = (unsigned int )res->__annonCompField114.cfg_entry.unique_flags1 & 127U;
      } else {
        res->__annonCompField114.cfg_entry.array_id = (unsigned int )res->__annonCompField114.cfg_entry.array_id & 255U;
      }
      {
      res->change_detected = 2U;
      res->__annonCompField114.cfg_entry.resource_handle = 0U;
      schedule_work(& pinstance->worker_q);
      }
    } else {
      {
      list_move_tail(& res->queue, & pinstance->free_res_q);
      }
    }
  } else
  if ((unsigned long )res->scsi_dev == (unsigned long )((struct scsi_device *)0)) {
    {
    res->change_detected = 1U;
    schedule_work(& pinstance->worker_q);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_128(& pinstance->resource_lock, lock_flags);
  }
  out_notify_apps: ;
  if (pmcraid_disable_aen == 0U) {
    {
    pmcraid_notify_ccn(pinstance);
    }
  } else {
  }
  {
  cmd = pmcraid_init_hcam(pinstance, 1);
  }
  if ((unsigned long )cmd != (unsigned long )((struct pmcraid_cmd *)0)) {
    {
    pmcraid_send_hcam_cmd(cmd);
    }
  } else {
  }
  return;
}
}
static struct pmcraid_ioasc_error *pmcraid_get_error_info(u32 ioasc )
{
  int i ;
  {
  i = 0;
  goto ldv_62748;
  ldv_62747: ;
  if (pmcraid_ioasc_error_table[i].ioasc_code == ioasc) {
    return ((struct pmcraid_ioasc_error *)(& pmcraid_ioasc_error_table) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_62748: ;
  if ((unsigned int )i <= 66U) {
    goto ldv_62747;
  } else {
  }
  return ((struct pmcraid_ioasc_error *)0);
}
}
void pmcraid_ioasc_logger(u32 ioasc , struct pmcraid_cmd *cmd )
{
  struct pmcraid_ioasc_error *error_info ;
  struct pmcraid_ioasc_error *tmp ;
  {
  {
  tmp = pmcraid_get_error_info(ioasc);
  error_info = tmp;
  }
  if ((unsigned long )error_info == (unsigned long )((struct pmcraid_ioasc_error *)0) || (int )(cmd->drv_inst)->current_log_level < (int )error_info->log_level) {
    return;
  } else {
  }
  {
  printk("\vMaxRAID: cmd [%x] for resource %x failed with %x(%s)\n", (int )(cmd->ioa_cb)->ioarcb.cdb[0],
         (cmd->ioa_cb)->ioarcb.resource_handle, ioasc, error_info->error_string);
  }
  return;
}
}
static void pmcraid_handle_error_log(struct pmcraid_instance *pinstance )
{
  struct pmcraid_hcam_ldn *hcam_ldn ;
  u32 ioasc ;
  {
  hcam_ldn = (struct pmcraid_hcam_ldn *)pinstance->ldn.hcam;
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: LDN(%x): %x type: %x lost: %x flags: %x overlay id: %x\n",
           (pinstance->ldn.hcam)->ilid, (int )(pinstance->ldn.hcam)->op_code, (int )(pinstance->ldn.hcam)->notification_type,
           (int )(pinstance->ldn.hcam)->notification_lost, (int )(pinstance->ldn.hcam)->flags,
           (int )(pinstance->ldn.hcam)->overlay_id);
    }
  } else {
  }
  if ((unsigned int )(pinstance->ldn.hcam)->notification_type != 16U) {
    return;
  } else {
  }
  if ((unsigned int )(pinstance->ldn.hcam)->notification_lost == 128U) {
    {
    _dev_info((struct device const *)(& (pinstance->pdev)->dev), "Error notifications lost\n");
    }
  } else {
  }
  ioasc = hcam_ldn->error_log.fd_ioasc;
  if (ioasc == 103350272U || ioasc == 103383040U) {
    {
    _dev_info((struct device const *)(& (pinstance->pdev)->dev), "UnitAttention due to IOA Bus Reset\n");
    scsi_report_bus_reset(pinstance->host, (int )hcam_ldn->error_log.fd_ra & 255);
    }
  } else {
  }
  return;
}
}
static void pmcraid_process_ccn(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  u32 ioasc ;
  unsigned long lock_flags ;
  int tmp ;
  {
  {
  pinstance = cmd->drv_inst;
  ioasc = (cmd->ioa_cb)->ioasa.ioasc;
  pinstance->ccn.cmd = (struct pmcraid_cmd *)0;
  pmcraid_return_cmd(cmd);
  }
  if (ioasc == 268435457U) {
    return;
  } else {
    {
    tmp = atomic_read((atomic_t const *)(& pinstance->ccn.ignore));
    }
    if (tmp == 1) {
      return;
    } else
    if (ioasc != 0U) {
      {
      _dev_info((struct device const *)(& (pinstance->pdev)->dev), "Host RCB (CCN) failed with IOASC: 0x%08X\n",
                ioasc);
      ldv___ldv_linux_kernel_locking_spinlock_spin_lock_155((pinstance->host)->host_lock);
      pmcraid_send_hcam(pinstance, 1);
      ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
      }
    } else {
      {
      pmcraid_handle_config_change(pinstance);
      }
    }
  }
  return;
}
}
static void pmcraid_initiate_reset(struct pmcraid_instance *pinstance ) ;
static void pmcraid_set_timestamp(struct pmcraid_cmd *cmd ) ;
static void pmcraid_process_ldn(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  struct pmcraid_hcam_ldn *ldn_hcam ;
  u32 ioasc ;
  u32 fd_ioasc ;
  unsigned long lock_flags ;
  int tmp ;
  {
  {
  pinstance = cmd->drv_inst;
  ldn_hcam = (struct pmcraid_hcam_ldn *)pinstance->ldn.hcam;
  ioasc = (cmd->ioa_cb)->ioasa.ioasc;
  fd_ioasc = ldn_hcam->error_log.fd_ioasc;
  pinstance->ldn.cmd = (struct pmcraid_cmd *)0;
  pmcraid_return_cmd(cmd);
  }
  if (ioasc == 268435457U) {
    return;
  } else {
    {
    tmp = atomic_read((atomic_t const *)(& pinstance->ccn.ignore));
    }
    if (tmp == 1) {
      return;
    } else
    if (ioasc == 0U) {
      {
      pmcraid_handle_error_log(pinstance);
      }
      if (fd_ioasc == 33849344U) {
        {
        ldv___ldv_linux_kernel_locking_spinlock_spin_lock_157((pinstance->host)->host_lock);
        pmcraid_initiate_reset(pinstance);
        ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
        }
        return;
      } else {
      }
      if (fd_ioasc == 110136064U) {
        {
        pinstance->timestamp_error = 1U;
        pmcraid_set_timestamp(cmd);
        }
      } else {
      }
    } else {
      {
      _dev_info((struct device const *)(& (pinstance->pdev)->dev), "Host RCB(LDN) failed with IOASC: 0x%08X\n",
                ioasc);
      }
    }
  }
  if (pmcraid_disable_aen == 0U) {
    {
    pmcraid_notify_ldn(pinstance);
    }
  } else {
  }
  {
  cmd = pmcraid_init_hcam(pinstance, 2);
  }
  if ((unsigned long )cmd != (unsigned long )((struct pmcraid_cmd *)0)) {
    {
    pmcraid_send_hcam_cmd(cmd);
    }
  } else {
  }
  return;
}
}
static void pmcraid_register_hcams(struct pmcraid_instance *pinstance )
{
  {
  {
  pmcraid_send_hcam(pinstance, 1);
  pmcraid_send_hcam(pinstance, 2);
  }
  return;
}
}
static void pmcraid_unregister_hcams(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  {
  {
  pinstance = cmd->drv_inst;
  atomic_set(& pinstance->ccn.ignore, 1);
  atomic_set(& pinstance->ldn.ignore, 1);
  }
  if ((unsigned int )*((unsigned short *)pinstance + 6100UL) == 256U || (unsigned int )*((unsigned char *)pinstance + 12200UL) != 0U) {
    {
    pinstance->force_ioa_reset = 0U;
    pinstance->ioa_unit_check = 0U;
    pinstance->ioa_state = 5U;
    pmcraid_reset_alert(cmd);
    }
    return;
  } else {
  }
  {
  pmcraid_cancel_ldn(cmd);
  }
  return;
}
}
static void pmcraid_reinit_buffers(struct pmcraid_instance *pinstance ) ;
static int pmcraid_reset_enable_ioa(struct pmcraid_instance *pinstance )
{
  u32 intrs ;
  {
  {
  pmcraid_reinit_buffers(pinstance);
  intrs = pmcraid_read_interrupts(pinstance);
  pmcraid_enable_interrupts(pinstance, 2617245727U);
  }
  if ((int )intrs < 0) {
    if ((unsigned int )pinstance->interrupt_mode == 0U) {
      {
      iowrite32(2147483648U, pinstance->int_regs.ioa_host_interrupt_mask_reg);
      iowrite32(2147483648U, pinstance->int_regs.ioa_host_interrupt_clr_reg);
      }
    } else {
    }
    return (1);
  } else {
    return (0);
  }
}
}
static void pmcraid_soft_reset(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  u32 int_reg ;
  u32 doorbell ;
  unsigned long tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  pinstance = cmd->drv_inst;
  cmd->cmd_done = & pmcraid_ioa_reset;
  cmd->timer.data = (unsigned long )cmd;
  tmp = msecs_to_jiffies(60000U);
  cmd->timer.expires = (unsigned long )jiffies + tmp;
  cmd->timer.function = (void (*)(unsigned long ))(& pmcraid_timeout_handler);
  tmp___0 = timer_pending((struct timer_list const *)(& cmd->timer));
  }
  if (tmp___0 == 0) {
    {
    add_timer(& cmd->timer);
    }
  } else {
  }
  doorbell = 1082130432U;
  if ((unsigned int )pinstance->interrupt_mode != 0U) {
    {
    iowrite32(64U, pinstance->int_regs.host_ioa_interrupt_reg);
    ioread32(pinstance->int_regs.host_ioa_interrupt_reg);
    }
  } else {
  }
  {
  iowrite32(doorbell, pinstance->int_regs.host_ioa_interrupt_reg);
  ioread32(pinstance->int_regs.host_ioa_interrupt_reg);
  int_reg = ioread32(pinstance->int_regs.ioa_host_interrupt_reg);
  }
  if (pmcraid_debug_log != 0U) {
    {
    tmp___1 = ioread32(pinstance->int_regs.host_ioa_interrupt_reg);
    printk("\016MaxRAID: Waiting for IOA to become operational %x:%x\n", tmp___1,
           int_reg);
    }
  } else {
  }
  return;
}
}
static void pmcraid_get_dump(struct pmcraid_instance *pinstance )
{
  {
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: %s is not yet implemented\n", "pmcraid_get_dump");
    }
  } else {
  }
  return;
}
}
static void pmcraid_fail_outstanding_cmds(struct pmcraid_instance *pinstance )
{
  struct pmcraid_cmd *cmd ;
  struct pmcraid_cmd *temp ;
  unsigned long lock_flags ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct scsi_cmnd *scsi_cmd ;
  __le32 resp ;
  struct list_head const *__mptr___1 ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_159(& pinstance->pending_pool_lock);
  __mptr = (struct list_head const *)pinstance->pending_cmd_pool.next;
  cmd = (struct pmcraid_cmd *)__mptr + 0xffffffffffffffe0UL;
  __mptr___0 = (struct list_head const *)cmd->free_list.next;
  temp = (struct pmcraid_cmd *)__mptr___0 + 0xffffffffffffffe0UL;
  }
  goto ldv_62817;
  ldv_62816:
  {
  list_del(& cmd->free_list);
  ldv_spin_unlock_irqrestore_144(& pinstance->pending_pool_lock, lock_flags);
  (cmd->ioa_cb)->ioasa.ioasc = 268435457U;
  (cmd->ioa_cb)->ioasa.ilid = 4294967295U;
  ldv_del_timer_161(& cmd->timer);
  }
  if ((unsigned long )cmd->scsi_cmd != (unsigned long )((struct scsi_cmnd *)0)) {
    {
    scsi_cmd = cmd->scsi_cmd;
    resp = (cmd->ioa_cb)->ioarcb.response_handle;
    scsi_cmd->result = scsi_cmd->result | 458752;
    scsi_dma_unmap(scsi_cmd);
    pmcraid_return_cmd(cmd);
    }
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: failing(%d) CDB[0] = %x result: %x\n", resp >> 2, (int )(cmd->ioa_cb)->ioarcb.cdb[0],
             scsi_cmd->result);
      }
    } else {
    }
    {
    (*(scsi_cmd->scsi_done))(scsi_cmd);
    }
  } else
  if ((unsigned long )cmd->cmd_done == (unsigned long )(& pmcraid_internal_done) || (unsigned long )cmd->cmd_done == (unsigned long )(& pmcraid_erp_done)) {
    {
    (*(cmd->cmd_done))(cmd);
    }
  } else
  if ((unsigned long )cmd->cmd_done != (unsigned long )(& pmcraid_ioa_reset) && (unsigned long )cmd->cmd_done != (unsigned long )(& pmcraid_ioa_shutdown_done)) {
    {
    pmcraid_return_cmd(cmd);
    }
  } else {
  }
  {
  atomic_dec(& pinstance->outstanding_cmds);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_162(& pinstance->pending_pool_lock);
  cmd = temp;
  __mptr___1 = (struct list_head const *)temp->free_list.next;
  temp = (struct pmcraid_cmd *)__mptr___1 + 0xffffffffffffffe0UL;
  }
  ldv_62817: ;
  if ((unsigned long )(& cmd->free_list) != (unsigned long )(& pinstance->pending_cmd_pool)) {
    goto ldv_62816;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_144(& pinstance->pending_pool_lock, lock_flags);
  }
  return;
}
}
static void pmcraid_ioa_reset(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  u8 reset_complete ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  pinstance = cmd->drv_inst;
  reset_complete = 0U;
  pinstance->ioa_reset_in_progress = 1U;
  if ((unsigned long )pinstance->reset_cmd != (unsigned long )cmd) {
    {
    printk("\vMaxRAID: reset is called with different command block\n");
    pinstance->reset_cmd = cmd;
    }
  } else {
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: reset_engine: state = %d, command = %p\n", (int )pinstance->ioa_state,
           cmd);
    }
  } else {
  }
  {
  if ((int )pinstance->ioa_state == 2) {
    goto case_2;
  } else {
  }
  if ((int )pinstance->ioa_state == 6) {
    goto case_6;
  } else {
  }
  if ((int )pinstance->ioa_state == 1) {
    goto case_1;
  } else {
  }
  if ((int )pinstance->ioa_state == 5) {
    goto case_5;
  } else {
  }
  if ((int )pinstance->ioa_state == 4) {
    goto case_4;
  } else {
  }
  if ((int )pinstance->ioa_state == 3) {
    goto case_3;
  } else {
  }
  if ((int )pinstance->ioa_state == 7) {
    goto case_7;
  } else {
  }
  if ((int )pinstance->ioa_state == 0) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_2:
  {
  printk("\vMaxRAID: IOA is offline no reset is possible\n");
  reset_complete = 1U;
  }
  goto ldv_62825;
  case_6:
  {
  pmcraid_disable_interrupts(pinstance, 4294967295U);
  pinstance->ioa_state = 5U;
  pmcraid_reset_alert(cmd);
  }
  goto ldv_62825;
  case_1:
  {
  scsi_block_requests(pinstance->host);
  }
  if ((unsigned int )*((unsigned char *)pinstance + 12200UL) == 0U) {
    {
    tmp = ioread32(pinstance->ioa_status);
    }
    if ((int )tmp < 0) {
      if (pmcraid_debug_log != 0U) {
        {
        printk("\016MaxRAID: sticky bit set, bring-up\n");
        }
      } else {
      }
      {
      pinstance->ioa_state = 7U;
      pmcraid_reinit_cmdblk(cmd);
      pmcraid_identify_hrrq(cmd);
      }
    } else {
      {
      pinstance->ioa_state = 3U;
      pmcraid_soft_reset(cmd);
      }
    }
  } else {
    {
    pinstance->ioa_state = 5U;
    pmcraid_reset_alert(cmd);
    }
  }
  goto ldv_62825;
  case_5:
  {
  pinstance->ioa_state = 4U;
  pmcraid_start_bist(cmd);
  }
  goto ldv_62825;
  case_4:
  pinstance->ioa_reset_attempts = (u8 )((int )pinstance->ioa_reset_attempts + 1);
  if ((unsigned int )pinstance->ioa_reset_attempts > 3U) {
    {
    pinstance->ioa_reset_attempts = 0U;
    printk("\vMaxRAID: IOA didn\'t respond marking it as dead\n");
    pinstance->ioa_state = 2U;
    }
    if ((unsigned int )*((unsigned char *)pinstance + 12200UL) != 0U) {
      {
      pmcraid_notify_ioastate(pinstance, 285212677U);
      }
    } else {
      {
      pmcraid_notify_ioastate(pinstance, 285212674U);
      }
    }
    reset_complete = 1U;
    goto ldv_62825;
  } else {
  }
  {
  pci_restore_state(pinstance->pdev);
  pmcraid_fail_outstanding_cmds(pinstance);
  }
  if ((unsigned int )*((unsigned char *)pinstance + 12200UL) != 0U) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: unit check is active\n");
      }
    } else {
    }
    {
    pinstance->ioa_unit_check = 0U;
    pmcraid_get_dump(pinstance);
    pinstance->ioa_reset_attempts = (u8 )((int )pinstance->ioa_reset_attempts - 1);
    pinstance->ioa_state = 5U;
    pmcraid_reset_alert(cmd);
    }
    goto ldv_62825;
  } else {
  }
  if ((unsigned int )*((unsigned char *)pinstance + 12200UL) != 0U) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: bringing down the adapter\n");
      }
    } else {
    }
    {
    pinstance->ioa_shutdown_type = 0U;
    pinstance->ioa_bringdown = 0U;
    pinstance->ioa_state = 1U;
    pmcraid_notify_ioastate(pinstance, 285212676U);
    reset_complete = 1U;
    }
  } else {
    {
    tmp___0 = pmcraid_reset_enable_ioa(pinstance);
    }
    if (tmp___0 != 0) {
      pinstance->ioa_state = 7U;
      if (pmcraid_debug_log != 0U) {
        {
        printk("\016MaxRAID: bringing up the adapter\n");
        }
      } else {
      }
      {
      pmcraid_reinit_cmdblk(cmd);
      pmcraid_identify_hrrq(cmd);
      }
    } else {
      {
      pinstance->ioa_state = 3U;
      pmcraid_soft_reset(cmd);
      }
    }
  }
  goto ldv_62825;
  case_3: ;
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: In softreset proceeding with bring-up\n");
    }
  } else {
  }
  {
  pinstance->ioa_state = 7U;
  pmcraid_identify_hrrq(cmd);
  }
  goto ldv_62825;
  case_7:
  pinstance->ioa_state = 0U;
  reset_complete = 1U;
  goto ldv_62825;
  case_0: ;
  switch_default: ;
  if ((unsigned int )*((unsigned char *)pinstance + 12201UL) == 0U) {
    {
    pmcraid_notify_ioastate(pinstance, 285212673U);
    reset_complete = 1U;
    }
  } else {
    if ((unsigned int )*((unsigned char *)pinstance + 12201UL) != 0U) {
      pinstance->ioa_state = 6U;
    } else {
    }
    {
    pmcraid_reinit_cmdblk(cmd);
    pmcraid_unregister_hcams(cmd);
    }
  }
  goto ldv_62825;
  switch_break: ;
  }
  ldv_62825: ;
  if ((unsigned int )reset_complete != 0U) {
    {
    pinstance->ioa_reset_in_progress = 0U;
    pinstance->ioa_reset_attempts = 0U;
    pinstance->reset_cmd = (struct pmcraid_cmd *)0;
    pinstance->ioa_shutdown_type = 0U;
    pinstance->ioa_bringdown = 0U;
    pmcraid_return_cmd(cmd);
    }
    if ((unsigned int )*((unsigned char *)pinstance + 12200UL) == 0U) {
      {
      pmcraid_register_hcams(pinstance);
      }
    } else {
    }
    {
    __wake_up(& pinstance->reset_wait_q, 3U, 0, (void *)0);
    }
  } else {
  }
  return;
}
}
static void pmcraid_initiate_reset(struct pmcraid_instance *pinstance )
{
  struct pmcraid_cmd *cmd ;
  {
  if ((unsigned int )*((unsigned char *)pinstance + 12200UL) == 0U) {
    {
    scsi_block_requests(pinstance->host);
    cmd = pmcraid_get_free_cmd(pinstance);
    }
    if ((unsigned long )cmd == (unsigned long )((struct pmcraid_cmd *)0)) {
      {
      printk("\vMaxRAID: no cmnd blocks for initiate_reset\n");
      }
      return;
    } else {
    }
    {
    pinstance->ioa_shutdown_type = 0U;
    pinstance->reset_cmd = cmd;
    pinstance->force_ioa_reset = 1U;
    pmcraid_notify_ioastate(pinstance, 285212672U);
    pmcraid_ioa_reset(cmd);
    }
  } else {
  }
  return;
}
}
static int pmcraid_reset_reload(struct pmcraid_instance *pinstance , u8 shutdown_type ,
                                u8 target_state )
{
  struct pmcraid_cmd *reset_cmd ;
  unsigned long lock_flags ;
  int reset ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp ;
  wait_queue_t __wait___0 ;
  long __ret___0 ;
  long __int___0 ;
  long tmp___0 ;
  {
  {
  reset_cmd = (struct pmcraid_cmd *)0;
  reset = 1;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_164((pinstance->host)->host_lock);
  }
  if ((unsigned int )*((unsigned char *)pinstance + 12200UL) != 0U) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: reset_reload: reset is already in progress\n");
      }
    } else {
    }
    {
    ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
    __might_sleep("drivers/scsi/pmcraid.c", 2375, 0);
    }
    if ((unsigned int )*((unsigned char *)pinstance + 12200UL) == 0U) {
      goto ldv_62846;
    } else {
    }
    {
    __ret = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_62852:
    {
    tmp = prepare_to_wait_event(& pinstance->reset_wait_q, & __wait, 2);
    __int = tmp;
    }
    if ((unsigned int )*((unsigned char *)pinstance + 12200UL) == 0U) {
      goto ldv_62851;
    } else {
    }
    {
    schedule();
    }
    goto ldv_62852;
    ldv_62851:
    {
    finish_wait(& pinstance->reset_wait_q, & __wait);
    }
    ldv_62846:
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_166((pinstance->host)->host_lock);
    }
    if ((unsigned int )*((unsigned char *)pinstance + 12200UL) == 2U) {
      {
      ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
      }
      if (pmcraid_debug_log != 0U) {
        {
        printk("\016MaxRAID: reset_reload: IOA is dead\n");
        }
      } else {
      }
      return (reset);
    } else
    if ((int )pinstance->ioa_state == (int )target_state) {
      reset = 0;
    } else {
    }
  } else {
  }
  if (reset != 0) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: reset_reload: proceeding with reset\n");
      }
    } else {
    }
    {
    scsi_block_requests(pinstance->host);
    reset_cmd = pmcraid_get_free_cmd(pinstance);
    }
    if ((unsigned long )reset_cmd == (unsigned long )((struct pmcraid_cmd *)0)) {
      {
      printk("\vMaxRAID: no free cmnd for reset_reload\n");
      ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
      }
      return (reset);
    } else {
    }
    if ((unsigned int )shutdown_type == 1U) {
      pinstance->ioa_bringdown = 1U;
    } else {
    }
    pinstance->ioa_shutdown_type = shutdown_type;
    pinstance->reset_cmd = reset_cmd;
    pinstance->force_ioa_reset = (unsigned char )reset;
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: reset_reload: initiating reset\n");
      }
    } else {
    }
    {
    pmcraid_ioa_reset(reset_cmd);
    ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
    }
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: reset_reload: waiting for reset to complete\n");
      }
    } else {
    }
    {
    __might_sleep("drivers/scsi/pmcraid.c", 2412, 0);
    }
    if ((unsigned int )*((unsigned char *)pinstance + 12200UL) == 0U) {
      goto ldv_62854;
    } else {
    }
    {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait___0.task_list);
    __wait___0.flags = 0U;
    }
    ldv_62860:
    {
    tmp___0 = prepare_to_wait_event(& pinstance->reset_wait_q, & __wait___0, 2);
    __int___0 = tmp___0;
    }
    if ((unsigned int )*((unsigned char *)pinstance + 12200UL) == 0U) {
      goto ldv_62859;
    } else {
    }
    {
    schedule();
    }
    goto ldv_62860;
    ldv_62859:
    {
    finish_wait(& pinstance->reset_wait_q, & __wait___0);
    }
    ldv_62854: ;
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: reset_reload: reset is complete !!\n");
      }
    } else {
    }
    {
    scsi_unblock_requests(pinstance->host);
    }
    if ((int )pinstance->ioa_state == (int )target_state) {
      reset = 0;
    } else {
    }
  } else {
  }
  return (reset);
}
}
static int pmcraid_reset_bringdown(struct pmcraid_instance *pinstance )
{
  int tmp ;
  {
  {
  tmp = pmcraid_reset_reload(pinstance, 1, 1);
  }
  return (tmp);
}
}
static int pmcraid_reset_bringup(struct pmcraid_instance *pinstance )
{
  int tmp ;
  {
  {
  pmcraid_notify_ioastate(pinstance, 285212672U);
  tmp = pmcraid_reset_reload(pinstance, 0, 0);
  }
  return (tmp);
}
}
static void pmcraid_request_sense(struct pmcraid_cmd *cmd )
{
  struct pmcraid_ioarcb *ioarcb ;
  struct pmcraid_ioadl_desc *ioadl ;
  void *tmp ;
  {
  {
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  ioadl = (struct pmcraid_ioadl_desc *)(& ioarcb->add_data.u.ioadl);
  tmp = pci_alloc_consistent((cmd->drv_inst)->pdev, 96UL, & cmd->__annonCompField113.__annonCompField112.sense_buffer_dma);
  cmd->__annonCompField113.__annonCompField112.sense_buffer = (u8 *)tmp;
  }
  if ((unsigned long )cmd->__annonCompField113.__annonCompField112.sense_buffer == (unsigned long )((u8 *)0U)) {
    {
    printk("\vMaxRAID: couldn\'t allocate sense buffer for request sense\n");
    pmcraid_erp_done(cmd);
    }
    return;
  } else {
  }
  {
  memset((void *)(& (cmd->ioa_cb)->ioasa), 0, 304UL);
  memset((void *)(& ioarcb->cdb), 0, 16UL);
  ioarcb->request_flags0 = 44U;
  ioarcb->request_type = 0U;
  ioarcb->cdb[0] = 3U;
  ioarcb->cdb[4] = 96U;
  ioarcb->ioadl_bus_addr = cmd->ioa_cb_bus_addr + 80ULL;
  ioarcb->ioadl_length = 16U;
  ioarcb->data_transfer_length = 96U;
  ioadl->address = cmd->__annonCompField113.__annonCompField112.sense_buffer_dma;
  ioadl->data_len = 96U;
  ioadl->flags = 64U;
  pmcraid_send_cmd(cmd, & pmcraid_erp_done, 7500UL, & pmcraid_timeout_handler);
  }
  return;
}
}
static void pmcraid_cancel_all(struct pmcraid_cmd *cmd , u32 sense )
{
  struct scsi_cmnd *scsi_cmd ;
  struct pmcraid_ioarcb *ioarcb ;
  struct pmcraid_resource_entry *res ;
  void (*cmd_done)(struct pmcraid_cmd * ) ;
  {
  {
  scsi_cmd = cmd->scsi_cmd;
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  res = (struct pmcraid_resource_entry *)(scsi_cmd->device)->hostdata;
  cmd_done = sense != 0U ? & pmcraid_erp_done : & pmcraid_request_sense;
  memset((void *)(& ioarcb->cdb), 0, 16UL);
  ioarcb->request_flags0 = 16U;
  ioarcb->request_type = 1U;
  ioarcb->cdb[0] = 206U;
  }
  if ((unsigned int )res->__annonCompField114.cfg_entry.resource_type == 1U) {
    ioarcb->cdb[1] = 128U;
  } else {
  }
  {
  ioarcb->ioadl_bus_addr = 0ULL;
  ioarcb->ioadl_length = 0U;
  ioarcb->data_transfer_length = 0U;
  ioarcb->ioarcb_bus_addr = ioarcb->ioarcb_bus_addr & 0xffffffffffffffe0ULL;
  pmcraid_send_cmd(cmd, cmd_done, 7500UL, & pmcraid_timeout_handler);
  }
  return;
}
}
static void pmcraid_frame_auto_sense(struct pmcraid_cmd *cmd )
{
  u8 *sense_buf ;
  struct pmcraid_resource_entry *res ;
  struct pmcraid_ioasa *ioasa ;
  u32 ioasc ;
  u32 failing_lba ;
  {
  {
  sense_buf = (cmd->scsi_cmd)->sense_buffer;
  res = (struct pmcraid_resource_entry *)((cmd->scsi_cmd)->device)->hostdata;
  ioasa = & (cmd->ioa_cb)->ioasa;
  ioasc = ioasa->ioasc;
  failing_lba = 0U;
  memset((void *)sense_buf, 0, 96UL);
  (cmd->scsi_cmd)->result = 2;
  }
  if (((unsigned int )res->__annonCompField114.cfg_entry.resource_type == 2U && ioasc == 51448832U) && ioasa->u.vset.failing_lba_hi != 0U) {
    *sense_buf = 114U;
    *(sense_buf + 1UL) = (u8 )(ioasc >> 24);
    *(sense_buf + 2UL) = (u8 )((ioasc & 16711680U) >> 16);
    *(sense_buf + 3UL) = (u8 )((ioasc & 65280U) >> 8);
    *(sense_buf + 7UL) = 12U;
    *(sense_buf + 8UL) = 0U;
    *(sense_buf + 9UL) = 10U;
    *(sense_buf + 10UL) = 128U;
    failing_lba = ioasa->u.vset.failing_lba_hi;
    *(sense_buf + 12UL) = (u8 )(failing_lba >> 24);
    *(sense_buf + 13UL) = (u8 )((failing_lba & 16711680U) >> 16);
    *(sense_buf + 14UL) = (u8 )((failing_lba & 65280U) >> 8);
    *(sense_buf + 15UL) = (u8 )failing_lba;
    failing_lba = ioasa->u.vset.failing_lba_lo;
    *(sense_buf + 16UL) = (u8 )(failing_lba >> 24);
    *(sense_buf + 17UL) = (u8 )((failing_lba & 16711680U) >> 16);
    *(sense_buf + 18UL) = (u8 )((failing_lba & 65280U) >> 8);
    *(sense_buf + 19UL) = (u8 )failing_lba;
  } else {
    *sense_buf = 112U;
    *(sense_buf + 2UL) = (u8 )(ioasc >> 24);
    *(sense_buf + 12UL) = (u8 )((ioasc & 16711680U) >> 16);
    *(sense_buf + 13UL) = (u8 )((ioasc & 65280U) >> 8);
    if (ioasc == 51448832U) {
      if ((unsigned int )res->__annonCompField114.cfg_entry.resource_type == 2U) {
        failing_lba = ioasa->u.vset.failing_lba_lo;
      } else {
      }
      *sense_buf = (u8 )((unsigned int )*sense_buf | 128U);
      *(sense_buf + 3UL) = (u8 )(failing_lba >> 24);
      *(sense_buf + 4UL) = (u8 )(failing_lba >> 16);
      *(sense_buf + 5UL) = (u8 )(failing_lba >> 8);
      *(sense_buf + 6UL) = (u8 )failing_lba;
    } else {
    }
    *(sense_buf + 7UL) = 6U;
  }
  return;
}
}
static int pmcraid_error_handler(struct pmcraid_cmd *cmd )
{
  struct scsi_cmnd *scsi_cmd ;
  struct pmcraid_resource_entry *res ;
  struct pmcraid_instance *pinstance ;
  struct pmcraid_ioasa *ioasa ;
  u32 ioasc ;
  u32 masked_ioasc ;
  u32 sense_copied ;
  u8 op ;
  u8 __type ;
  u8 op___0 ;
  u8 __type___0 ;
  short sense_len ;
  int data_size ;
  u16 __min1 ;
  u16 __min2 ;
  {
  scsi_cmd = cmd->scsi_cmd;
  res = (struct pmcraid_resource_entry *)(scsi_cmd->device)->hostdata;
  pinstance = cmd->drv_inst;
  ioasa = & (cmd->ioa_cb)->ioasa;
  ioasc = ioasa->ioasc;
  masked_ioasc = ioasc & 4294967040U;
  sense_copied = 0U;
  if ((unsigned long )res == (unsigned long )((struct pmcraid_resource_entry *)0)) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: resource pointer is NULL\n");
      }
    } else {
    }
    return (0);
  } else {
  }
  op___0 = *(scsi_cmd->cmnd);
  __type___0 = 0U;
  if (((unsigned int )op___0 == 8U || (unsigned int )op___0 == 40U) || ((unsigned int )op___0 == 168U || (unsigned int )op___0 == 136U)) {
    __type___0 = 1U;
  } else
  if (((unsigned int )op___0 == 10U || (unsigned int )op___0 == 42U) || ((unsigned int )op___0 == 170U || (unsigned int )op___0 == 138U)) {
    __type___0 = 2U;
  } else {
  }
  if ((unsigned int )__type___0 == 1U) {
    {
    atomic_inc(& res->read_failures);
    }
  } else {
    op = *(scsi_cmd->cmnd);
    __type = 0U;
    if (((unsigned int )op == 8U || (unsigned int )op == 40U) || ((unsigned int )op == 168U || (unsigned int )op == 136U)) {
      __type = 1U;
    } else
    if (((unsigned int )op == 10U || (unsigned int )op == 42U) || ((unsigned int )op == 170U || (unsigned int )op == 138U)) {
      __type = 2U;
    } else {
    }
    if ((unsigned int )__type == 2U) {
      {
      atomic_inc(& res->write_failures);
      }
    } else {
    }
  }
  if ((unsigned int )res->__annonCompField114.cfg_entry.resource_type != 1U && masked_ioasc != 71599360U) {
    {
    pmcraid_frame_auto_sense(cmd);
    }
  } else {
  }
  {
  pmcraid_ioasc_logger(ioasc, cmd);
  }
  {
  if (masked_ioasc == 190447616U) {
    goto case_190447616;
  } else {
  }
  if (masked_ioasc == 86310912U) {
    goto case_86310912;
  } else {
  }
  if (masked_ioasc == 67436544U) {
    goto case_67436544;
  } else {
  }
  if (masked_ioasc == 37683200U) {
    goto case_37683200;
  } else {
  }
  if (masked_ioasc == 51448832U) {
    goto case_51448832;
  } else {
  }
  if (masked_ioasc == 103350272U) {
    goto case_103350272;
  } else {
  }
  if (masked_ioasc == 103383040U) {
    goto case_103383040;
  } else {
  }
  if (masked_ioasc == 71599360U) {
    goto case_71599360;
  } else {
  }
  if (masked_ioasc == 33817088U) {
    goto case_33817088;
  } else {
  }
  goto switch_default;
  case_190447616:
  scsi_cmd->result = scsi_cmd->result | 327680;
  goto ldv_62907;
  case_86310912: ;
  case_67436544:
  scsi_cmd->result = scsi_cmd->result | 65536;
  goto ldv_62907;
  case_37683200:
  res->sync_reqd = 1U;
  scsi_cmd->result = scsi_cmd->result | 786432;
  goto ldv_62907;
  case_51448832:
  scsi_cmd->result = scsi_cmd->result | 655360;
  goto ldv_62907;
  case_103350272: ;
  case_103383040: ;
  if ((unsigned int )res->reset_progress == 0U) {
    {
    scsi_report_bus_reset(pinstance->host, (int )(scsi_cmd->device)->channel);
    }
  } else {
  }
  scsi_cmd->result = scsi_cmd->result | 458752;
  goto ldv_62907;
  case_71599360:
  scsi_cmd->result = (int )((u32 )scsi_cmd->result | (ioasc & 255U));
  res->sync_reqd = 1U;
  if ((ioasc & 255U) != 2U && (ioasc & 255U) != 48U) {
    return (0);
  } else {
  }
  if ((unsigned int )ioasa->auto_sense_length != 0U) {
    {
    sense_len = (short )ioasa->auto_sense_length;
    __min1 = (unsigned short )sense_len;
    __min2 = 96U;
    data_size = (int )__min1 < (int )__min2 ? __min1 : __min2;
    memcpy((void *)scsi_cmd->sense_buffer, (void const *)(& ioasa->sense_data),
             (size_t )data_size);
    sense_copied = 1U;
    }
  } else {
  }
  if ((unsigned int )res->__annonCompField114.cfg_entry.resource_type == 1U) {
    {
    pmcraid_cancel_all(cmd, sense_copied);
    }
  } else
  if (sense_copied != 0U) {
    {
    pmcraid_erp_done(cmd);
    }
  } else {
    {
    pmcraid_request_sense(cmd);
    }
  }
  return (1);
  case_33817088: ;
  goto ldv_62907;
  switch_default: ;
  if (ioasc >> 24 > 1U) {
    scsi_cmd->result = scsi_cmd->result | 458752;
  } else {
  }
  goto ldv_62907;
  switch_break: ;
  }
  ldv_62907: ;
  return (0);
}
}
static int pmcraid_reset_device(struct scsi_cmnd *scsi_cmd , unsigned long timeout ,
                                u8 modifier )
{
  struct pmcraid_cmd *cmd ;
  struct pmcraid_instance *pinstance ;
  struct pmcraid_resource_entry *res ;
  struct pmcraid_ioarcb *ioarcb ;
  unsigned long lock_flags ;
  u32 ioasc ;
  {
  pinstance = (struct pmcraid_instance *)(& ((scsi_cmd->device)->host)->hostdata);
  res = (struct pmcraid_resource_entry *)(scsi_cmd->device)->hostdata;
  if ((unsigned long )res == (unsigned long )((struct pmcraid_resource_entry *)0)) {
    {
    sdev_prefix_printk("\v", (struct scsi_device const *)scsi_cmd->device, (char const *)0,
                       "reset_device: NULL resource pointer\n");
    }
    return (8195);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_170((pinstance->host)->host_lock);
  }
  if ((unsigned int )*((unsigned char *)pinstance + 12200UL) != 0U || (unsigned int )*((unsigned char *)pinstance + 12200UL) == 2U) {
    {
    ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
    }
    return (8195);
  } else {
  }
  res->reset_progress = 1U;
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: Resetting %s resource with addr %x\n", ((int )modifier & 64) == 0 ? (((int )modifier & 32) != 0 ? (char *)"TARGET" : (char *)"BUS") : (char *)"LUN",
           res->__annonCompField114.cfg_entry.resource_address);
    }
  } else {
  }
  {
  cmd = pmcraid_get_free_cmd(pinstance);
  }
  if ((unsigned long )cmd == (unsigned long )((struct pmcraid_cmd *)0)) {
    {
    ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
    printk("\vMaxRAID: %s: no cmd blocks are available\n", "pmcraid_reset_device");
    }
    return (8195);
  } else {
  }
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  ioarcb->resource_handle = res->__annonCompField114.cfg_entry.resource_handle;
  ioarcb->request_type = 1U;
  ioarcb->cdb[0] = 195U;
  if ((unsigned int )modifier != 0U) {
    modifier = (u8 )((unsigned int )modifier | 128U);
  } else {
  }
  {
  ioarcb->cdb[1] = modifier;
  ldv_init_completion_173(& cmd->wait_for_completion);
  cmd->completion_req = 1U;
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: cmd(CDB[0] = %x) for %x with index = %d\n", (int )(cmd->ioa_cb)->ioarcb.cdb[0],
           (cmd->ioa_cb)->ioarcb.resource_handle, (cmd->ioa_cb)->ioarcb.response_handle >> 2);
    }
  } else {
  }
  {
  pmcraid_send_cmd(cmd, & pmcraid_internal_done, timeout, & pmcraid_timeout_handler);
  ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
  ldv_wait_for_completion_175(& cmd->wait_for_completion);
  pmcraid_return_cmd(cmd);
  res->reset_progress = 0U;
  ioasc = (cmd->ioa_cb)->ioasa.ioasc;
  }
  return (ioasc >> 24 != 0U ? 8195 : 8194);
}
}
static int _pmcraid_io_done(struct pmcraid_cmd *cmd , int reslen , int ioasc )
{
  struct scsi_cmnd *scsi_cmd ;
  int rc ;
  {
  {
  scsi_cmd = cmd->scsi_cmd;
  rc = 0;
  scsi_set_resid(scsi_cmd, reslen);
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: response(%d) CDB[0] = %x ioasc:result: %x:%x\n", (cmd->ioa_cb)->ioarcb.response_handle >> 2,
           (int )(cmd->ioa_cb)->ioarcb.cdb[0], ioasc, scsi_cmd->result);
    }
  } else {
  }
  if (ioasc >> 24 != 0) {
    {
    rc = pmcraid_error_handler(cmd);
    }
  } else {
  }
  if (rc == 0) {
    {
    scsi_dma_unmap(scsi_cmd);
    (*(scsi_cmd->scsi_done))(scsi_cmd);
    }
  } else {
  }
  return (rc);
}
}
static void pmcraid_io_done(struct pmcraid_cmd *cmd )
{
  u32 ioasc ;
  u32 reslen ;
  int tmp ;
  {
  {
  ioasc = (cmd->ioa_cb)->ioasa.ioasc;
  reslen = (cmd->ioa_cb)->ioasa.residual_data_length;
  tmp = _pmcraid_io_done(cmd, (int )reslen, (int )ioasc);
  }
  if (tmp == 0) {
    {
    pmcraid_return_cmd(cmd);
    }
  } else {
  }
  return;
}
}
static struct pmcraid_cmd *pmcraid_abort_cmd(struct pmcraid_cmd *cmd )
{
  struct pmcraid_cmd *cancel_cmd ;
  struct pmcraid_instance *pinstance ;
  struct pmcraid_resource_entry *res ;
  {
  {
  pinstance = cmd->drv_inst;
  res = (struct pmcraid_resource_entry *)((cmd->scsi_cmd)->device)->hostdata;
  cancel_cmd = pmcraid_get_free_cmd(pinstance);
  }
  if ((unsigned long )cancel_cmd == (unsigned long )((struct pmcraid_cmd *)0)) {
    {
    printk("\vMaxRAID: %s: no cmd blocks are available\n", "pmcraid_abort_cmd");
    }
    return ((struct pmcraid_cmd *)0);
  } else {
  }
  {
  pmcraid_prepare_cancel_cmd(cancel_cmd, cmd);
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: aborting command CDB[0]= %x with index = %d\n", (int )(cmd->ioa_cb)->ioarcb.cdb[0],
           (cmd->ioa_cb)->ioarcb.response_handle >> 2);
    }
  } else {
  }
  {
  ldv_init_completion_173(& cancel_cmd->wait_for_completion);
  cancel_cmd->completion_req = 1U;
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: command (%d) CDB[0] = %x for %x\n", (cancel_cmd->ioa_cb)->ioarcb.response_handle >> 2,
           (int )(cancel_cmd->ioa_cb)->ioarcb.cdb[0], (cancel_cmd->ioa_cb)->ioarcb.resource_handle);
    }
  } else {
  }
  {
  pmcraid_send_cmd(cancel_cmd, & pmcraid_internal_done, 15000UL, & pmcraid_timeout_handler);
  }
  return (cancel_cmd);
}
}
static int pmcraid_abort_complete(struct pmcraid_cmd *cancel_cmd )
{
  struct pmcraid_resource_entry *res ;
  u32 ioasc ;
  {
  {
  ldv_wait_for_completion_177(& cancel_cmd->wait_for_completion);
  res = cancel_cmd->__annonCompField113.res;
  cancel_cmd->__annonCompField113.res = (struct pmcraid_resource_entry *)0;
  ioasc = (cancel_cmd->ioa_cb)->ioasa.ioasc;
  }
  if (ioasc == 103350272U || ioasc == 37683200U) {
    if (ioasc == 37683200U) {
      res->sync_reqd = 1U;
    } else {
    }
    ioasc = 0U;
  } else {
  }
  {
  pmcraid_return_cmd(cancel_cmd);
  }
  return (ioasc >> 24 != 0U ? 8195 : 8194);
}
}
static int pmcraid_eh_abort_handler(struct scsi_cmnd *scsi_cmd )
{
  struct pmcraid_instance *pinstance ;
  struct pmcraid_cmd *cmd ;
  struct pmcraid_resource_entry *res ;
  unsigned long host_lock_flags ;
  unsigned long pending_lock_flags ;
  struct pmcraid_cmd *cancel_cmd ;
  int cmd_found ;
  int rc ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  cancel_cmd = (struct pmcraid_cmd *)0;
  cmd_found = 0;
  rc = 8195;
  pinstance = (struct pmcraid_instance *)(& ((scsi_cmd->device)->host)->hostdata);
  scmd_printk("\016", (struct scsi_cmnd const *)scsi_cmd, "I/O command timed out, aborting it.\n");
  res = (struct pmcraid_resource_entry *)(scsi_cmd->device)->hostdata;
  }
  if ((unsigned long )res == (unsigned long )((struct pmcraid_resource_entry *)0)) {
    return (rc);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_178((pinstance->host)->host_lock);
  }
  if ((unsigned int )*((unsigned char *)pinstance + 12200UL) != 0U || (unsigned int )*((unsigned char *)pinstance + 12200UL) == 2U) {
    {
    ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, host_lock_flags);
    }
    return (rc);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_180(& pinstance->pending_pool_lock);
  __mptr = (struct list_head const *)pinstance->pending_cmd_pool.next;
  cmd = (struct pmcraid_cmd *)__mptr + 0xffffffffffffffe0UL;
  }
  goto ldv_62975;
  ldv_62974: ;
  if ((unsigned long )cmd->scsi_cmd == (unsigned long )scsi_cmd) {
    cmd_found = 1;
    goto ldv_62973;
  } else {
  }
  __mptr___0 = (struct list_head const *)cmd->free_list.next;
  cmd = (struct pmcraid_cmd *)__mptr___0 + 0xffffffffffffffe0UL;
  ldv_62975: ;
  if ((unsigned long )(& cmd->free_list) != (unsigned long )(& pinstance->pending_cmd_pool)) {
    goto ldv_62974;
  } else {
  }
  ldv_62973:
  {
  ldv_spin_unlock_irqrestore_144(& pinstance->pending_pool_lock, pending_lock_flags);
  }
  if (cmd_found != 0) {
    {
    cancel_cmd = pmcraid_abort_cmd(cmd);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, host_lock_flags);
  }
  if ((unsigned long )cancel_cmd != (unsigned long )((struct pmcraid_cmd *)0)) {
    {
    cancel_cmd->__annonCompField113.res = (struct pmcraid_resource_entry *)((cmd->scsi_cmd)->device)->hostdata;
    rc = pmcraid_abort_complete(cancel_cmd);
    }
  } else {
  }
  return (cmd_found != 0 ? rc : 8194);
}
}
static int pmcraid_eh_device_reset_handler(struct scsi_cmnd *scmd )
{
  int tmp ;
  {
  {
  scmd_printk("\016", (struct scsi_cmnd const *)scmd, "resetting device due to an I/O command timeout.\n");
  tmp = pmcraid_reset_device(scmd, 15000UL, 64);
  }
  return (tmp);
}
}
static int pmcraid_eh_bus_reset_handler(struct scsi_cmnd *scmd )
{
  int tmp ;
  {
  {
  scmd_printk("\016", (struct scsi_cmnd const *)scmd, "Doing bus reset due to an I/O command timeout.\n");
  tmp = pmcraid_reset_device(scmd, 15000UL, 16);
  }
  return (tmp);
}
}
static int pmcraid_eh_target_reset_handler(struct scsi_cmnd *scmd )
{
  int tmp ;
  {
  {
  scmd_printk("\016", (struct scsi_cmnd const *)scmd, "Doing target reset due to an I/O command timeout.\n");
  tmp = pmcraid_reset_device(scmd, 15000UL, 32);
  }
  return (tmp);
}
}
static int pmcraid_eh_host_reset_handler(struct scsi_cmnd *scmd )
{
  unsigned long interval ;
  int waits ;
  unsigned int tmp ;
  struct pmcraid_instance *pinstance ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  interval = 10000UL;
  tmp = jiffies_to_msecs(37500UL);
  waits = (int )((unsigned long )tmp / interval);
  pinstance = (struct pmcraid_instance *)(& ((scmd->device)->host)->hostdata);
  }
  goto ldv_62992;
  ldv_62991:
  {
  tmp___0 = atomic_read((atomic_t const *)(& pinstance->outstanding_cmds));
  }
  if (tmp___0 <= 2) {
    return (8194);
  } else {
  }
  {
  msleep((unsigned int )interval);
  }
  ldv_62992:
  tmp___1 = waits;
  waits = waits - 1;
  if (tmp___1 != 0) {
    goto ldv_62991;
  } else {
  }
  {
  dev_err((struct device const *)(& (pinstance->pdev)->dev), "Adapter being reset due to an I/O command timeout.\n");
  tmp___2 = pmcraid_reset_bringup(pinstance);
  }
  return (tmp___2 == 0 ? 8194 : 8195);
}
}
struct pmcraid_ioadl_desc *pmcraid_init_ioadls(struct pmcraid_cmd *cmd , int sgcount )
{
  struct pmcraid_ioadl_desc *ioadl ;
  struct pmcraid_ioarcb *ioarcb ;
  int ioadl_count ;
  int __x ;
  int __d ;
  {
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  ioadl_count = 0;
  if ((unsigned int )ioarcb->add_cmd_param_length != 0U) {
    ioadl_count = ((int )ioarcb->add_cmd_param_length + 15) / 16;
  } else {
  }
  ioarcb->ioadl_length = (__le32 )((unsigned long )sgcount) * 16U;
  if ((unsigned int )(sgcount + ioadl_count) > 27U) {
    ioarcb->ioarcb_bus_addr = ioarcb->ioarcb_bus_addr & 0xffffffffffffffe0ULL;
    ioarcb->ioadl_bus_addr = cmd->ioa_cb_bus_addr + 128ULL;
    ioadl = (struct pmcraid_ioadl_desc *)(& ioarcb->add_data.u.ioadl) + 3UL;
  } else {
    ioarcb->ioadl_bus_addr = cmd->ioa_cb_bus_addr + (unsigned long long )(((unsigned long )ioadl_count + 5UL) * 16UL);
    ioadl = (struct pmcraid_ioadl_desc *)(& ioarcb->add_data.u.ioadl) + (unsigned long )ioadl_count;
    __x = sgcount + ioadl_count;
    __d = 8;
    ioarcb->ioarcb_bus_addr = ioarcb->ioarcb_bus_addr | (__le64 )(__x > 0 ? (__x + __d / 2) / __d : (__x - __d / 2) / __d);
  }
  return (ioadl);
}
}
static int pmcraid_build_ioadl(struct pmcraid_instance *pinstance , struct pmcraid_cmd *cmd )
{
  int i ;
  int nseg ;
  struct scatterlist *sglist ;
  struct scsi_cmnd *scsi_cmd ;
  struct pmcraid_ioarcb *ioarcb ;
  struct pmcraid_ioadl_desc *ioadl ;
  u32 length ;
  unsigned int tmp ;
  {
  {
  scsi_cmd = cmd->scsi_cmd;
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  ioadl = (struct pmcraid_ioadl_desc *)(& ioarcb->add_data.u.ioadl);
  tmp = scsi_bufflen(scsi_cmd);
  length = tmp;
  }
  if (length == 0U) {
    return (0);
  } else {
  }
  {
  nseg = scsi_dma_map(scsi_cmd);
  }
  if (nseg < 0) {
    {
    scmd_printk("\v", (struct scsi_cmnd const *)scsi_cmd, "scsi_map_dma failed!\n");
    }
    return (-1);
  } else
  if (nseg > 27) {
    {
    scsi_dma_unmap(scsi_cmd);
    scmd_printk("\v", (struct scsi_cmnd const *)scsi_cmd, "sg count is (%d) more than allowed!\n",
                nseg);
    }
    return (-1);
  } else {
  }
  if ((unsigned int )scsi_cmd->sc_data_direction == 1U) {
    ioarcb->request_flags0 = (__u8 )((unsigned int )ioarcb->request_flags0 | 128U);
  } else {
  }
  {
  ioarcb->request_flags0 = (__u8 )((unsigned int )ioarcb->request_flags0 | 4U);
  ioarcb->data_transfer_length = length;
  ioadl = pmcraid_init_ioadls(cmd, nseg);
  i = 0;
  sglist = scsi_sglist(scsi_cmd);
  }
  goto ldv_63018;
  ldv_63017:
  {
  (ioadl + (unsigned long )i)->data_len = sglist->dma_length;
  (ioadl + (unsigned long )i)->address = sglist->dma_address;
  (ioadl + (unsigned long )i)->flags = 0U;
  i = i + 1;
  sglist = sg_next(sglist);
  }
  ldv_63018: ;
  if (i < nseg) {
    goto ldv_63017;
  } else {
  }
  (ioadl + ((unsigned long )i + 0xffffffffffffffffUL))->flags = 64U;
  return (0);
}
}
static void pmcraid_free_sglist(struct pmcraid_sglist *sglist )
{
  int i ;
  struct page *tmp ;
  {
  i = 0;
  goto ldv_63025;
  ldv_63024:
  {
  tmp = sg_page((struct scatterlist *)(& sglist->scatterlist) + (unsigned long )i);
  __free_pages(tmp, sglist->order);
  i = i + 1;
  }
  ldv_63025: ;
  if ((u32 )i < sglist->num_sg) {
    goto ldv_63024;
  } else {
  }
  {
  kfree((void const *)sglist);
  }
  return;
}
}
static struct pmcraid_sglist *pmcraid_alloc_sglist(int buflen )
{
  struct pmcraid_sglist *sglist ;
  struct scatterlist *scatterlist ;
  struct page *page ;
  int num_elem ;
  int i ;
  int j ;
  int sg_size ;
  int order ;
  int bsize_elem ;
  int tmp___69 ;
  void *tmp___70 ;
  struct page *tmp___71 ;
  {
  sg_size = buflen / 26;
  if (sg_size > 0) {
    {
    tmp___69 = __get_order((unsigned long )sg_size);
    order = tmp___69;
    }
  } else {
    order = 0;
  }
  bsize_elem = (int )(4096U << order);
  if (buflen % bsize_elem != 0) {
    num_elem = buflen / bsize_elem + 1;
  } else {
    num_elem = buflen / bsize_elem;
  }
  {
  tmp___70 = kzalloc((unsigned long )(num_elem + -1) * 40UL + 56UL, 208U);
  sglist = (struct pmcraid_sglist *)tmp___70;
  }
  if ((unsigned long )sglist == (unsigned long )((struct pmcraid_sglist *)0)) {
    return ((struct pmcraid_sglist *)0);
  } else {
  }
  {
  scatterlist = (struct scatterlist *)(& sglist->scatterlist);
  sg_init_table(scatterlist, (unsigned int )num_elem);
  sglist->order = (u32 )order;
  sglist->num_sg = (u32 )num_elem;
  sg_size = buflen;
  i = 0;
  }
  goto ldv_63043;
  ldv_63042:
  {
  page = alloc_pages(32977U, (unsigned int )order);
  }
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    j = i + -1;
    goto ldv_63040;
    ldv_63039:
    {
    tmp___71 = sg_page(scatterlist + (unsigned long )j);
    __free_pages(tmp___71, (unsigned int )order);
    j = j - 1;
    }
    ldv_63040: ;
    if (j >= 0) {
      goto ldv_63039;
    } else {
    }
    {
    kfree((void const *)sglist);
    }
    return ((struct pmcraid_sglist *)0);
  } else {
  }
  {
  sg_set_page(scatterlist + (unsigned long )i, page, (unsigned int )(sg_size < bsize_elem ? sg_size : bsize_elem),
              0U);
  sg_size = sg_size - bsize_elem;
  i = i + 1;
  }
  ldv_63043: ;
  if (i < num_elem) {
    goto ldv_63042;
  } else {
  }
  return (sglist);
}
}
static int pmcraid_copy_sglist(struct pmcraid_sglist *sglist , unsigned long buffer ,
                               u32 len , int direction )
{
  struct scatterlist *scatterlist ;
  void *kaddr ;
  int bsize_elem ;
  int i ;
  int rc ;
  struct page *page ;
  struct page *tmp ;
  struct page *page___0 ;
  struct page *tmp___0 ;
  {
  rc = 0;
  bsize_elem = (int )(4096U << (int )sglist->order);
  scatterlist = (struct scatterlist *)(& sglist->scatterlist);
  i = 0;
  goto ldv_63058;
  ldv_63057:
  {
  tmp = sg_page(scatterlist + (unsigned long )i);
  page = tmp;
  kaddr = kmap(page);
  }
  if (direction == 1) {
    {
    rc = __copy_from_user(kaddr, (void const *)buffer, (unsigned int )bsize_elem);
    }
  } else {
    {
    rc = __copy_to_user((void *)buffer, (void const *)kaddr, (unsigned int )bsize_elem);
    }
  }
  {
  kunmap(page);
  }
  if (rc != 0) {
    {
    printk("\vMaxRAID: failed to copy user data into sg list\n");
    }
    return (-14);
  } else {
  }
  (scatterlist + (unsigned long )i)->length = (unsigned int )bsize_elem;
  i = i + 1;
  buffer = buffer + (unsigned long )bsize_elem;
  ldv_63058: ;
  if ((u32 )i < len / (u32 )bsize_elem) {
    goto ldv_63057;
  } else {
  }
  if (len % (u32 )bsize_elem != 0U) {
    {
    tmp___0 = sg_page(scatterlist + (unsigned long )i);
    page___0 = tmp___0;
    kaddr = kmap(page___0);
    }
    if (direction == 1) {
      {
      rc = __copy_from_user(kaddr, (void const *)buffer, len % (u32 )bsize_elem);
      }
    } else {
      {
      rc = __copy_to_user((void *)buffer, (void const *)kaddr, len % (u32 )bsize_elem);
      }
    }
    {
    kunmap(page___0);
    (scatterlist + (unsigned long )i)->length = len % (u32 )bsize_elem;
    }
  } else {
  }
  if (rc != 0) {
    {
    printk("\vMaxRAID: failed to copy user data into sg list\n");
    rc = -14;
    }
  } else {
  }
  return (rc);
}
}
static int pmcraid_queuecommand_lck(struct scsi_cmnd *scsi_cmd , void (*done)(struct scsi_cmnd * ) )
{
  struct pmcraid_instance *pinstance ;
  struct pmcraid_resource_entry *res ;
  struct pmcraid_ioarcb *ioarcb ;
  struct pmcraid_cmd *cmd ;
  u32 fw_version ;
  int rc ;
  __u16 tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  rc = 0;
  pinstance = (struct pmcraid_instance *)(& ((scsi_cmd->device)->host)->hostdata);
  tmp = __fswab16((int )(pinstance->inq_data)->fw_version);
  fw_version = (u32 )tmp;
  scsi_cmd->scsi_done = done;
  res = (struct pmcraid_resource_entry *)(scsi_cmd->device)->hostdata;
  scsi_cmd->result = 0;
  }
  if ((unsigned int )*((unsigned char *)pinstance + 12200UL) == 2U) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: IOA is dead, but queuecommand is scheduled\n");
      }
    } else {
    }
    {
    scsi_cmd->result = 65536;
    (*(scsi_cmd->scsi_done))(scsi_cmd);
    }
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pinstance + 12200UL) != 0U) {
    return (4181);
  } else {
  }
  if ((unsigned int )*(scsi_cmd->cmnd) == 53U) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: SYNC_CACHE(0x35), completing in driver itself\n");
      }
    } else {
    }
    {
    (*(scsi_cmd->scsi_done))(scsi_cmd);
    }
    return (0);
  } else {
  }
  {
  cmd = pmcraid_get_free_cmd(pinstance);
  }
  if ((unsigned long )cmd == (unsigned long )((struct pmcraid_cmd *)0)) {
    {
    printk("\vMaxRAID: free command block is not available\n");
    }
    return (4181);
  } else {
  }
  {
  cmd->scsi_cmd = scsi_cmd;
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  memcpy((void *)(& ioarcb->cdb), (void const *)scsi_cmd->cmnd, (size_t )scsi_cmd->cmd_len);
  ioarcb->resource_handle = res->__annonCompField114.cfg_entry.resource_handle;
  ioarcb->request_type = 0U;
  tmp___0 = atomic_add_return(1, & pinstance->last_message_id);
  ioarcb->hrrq_id = (__u8 )(tmp___0 % (int )pinstance->num_hrrq);
  cmd->cmd_done = & pmcraid_io_done;
  }
  if ((unsigned int )res->__annonCompField114.cfg_entry.resource_type - 1U <= 1U) {
    if (scsi_cmd->underflow == 0U) {
      ioarcb->request_flags0 = (__u8 )((unsigned int )ioarcb->request_flags0 | 32U);
    } else {
    }
    if ((unsigned int )res->sync_reqd != 0U) {
      ioarcb->request_flags0 = (__u8 )((unsigned int )ioarcb->request_flags0 | 8U);
      res->sync_reqd = 0U;
    } else {
    }
    ioarcb->request_flags0 = (__u8 )((unsigned int )ioarcb->request_flags0 | 4U);
    if (scsi_cmd->flags & 1) {
      ioarcb->request_flags1 = (__u8 )((unsigned int )ioarcb->request_flags1 | 16U);
    } else {
    }
    if ((unsigned int )res->__annonCompField114.cfg_entry.resource_type == 1U) {
      ioarcb->request_flags1 = (__u8 )((unsigned int )ioarcb->request_flags1 | 128U);
    } else {
    }
  } else {
  }
  {
  rc = pmcraid_build_ioadl(pinstance, cmd);
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: command (%d) CDB[0] = %x for %x:%x:%x:%x\n", ioarcb->response_handle >> 2,
           (int )*(scsi_cmd->cmnd), (pinstance->host)->unique_id, (unsigned int )res->__annonCompField114.cfg_entry.resource_type == 2U,
           (unsigned int )res->__annonCompField114.cfg_entry.resource_type == 2U ? (fw_version <= 2U ? (__le32 )res->__annonCompField114.cfg_entry.unique_flags1 : (__le32 )res->__annonCompField114.cfg_entry.array_id & 255U) : (res->__annonCompField114.cfg_entry.resource_address >> 16) & 255U,
           0);
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(rc == 0, 1L);
  }
  if (tmp___1 != 0L) {
    {
    _pmcraid_fire_command(cmd);
    }
  } else {
    {
    printk("\vMaxRAID: queuecommand could not build ioadl\n");
    pmcraid_return_cmd(cmd);
    rc = 4181;
    }
  }
  return (rc);
}
}
static int pmcraid_queuecommand(struct Scsi_Host *shost , struct scsi_cmnd *cmd )
{
  unsigned long irq_flags ;
  int rc ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_183(shost->host_lock);
  scsi_cmd_get_serial(shost, cmd);
  rc = pmcraid_queuecommand_lck(cmd, cmd->scsi_done);
  ldv_spin_unlock_irqrestore_135(shost->host_lock, irq_flags);
  }
  return (rc);
}
}
static int pmcraid_chr_open(struct inode *inode , struct file *filep )
{
  struct pmcraid_instance *pinstance ;
  bool tmp ;
  int tmp___0 ;
  struct cdev const *__mptr ;
  {
  {
  tmp = capable(21);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13);
  } else {
  }
  __mptr = (struct cdev const *)inode->__annonCompField69.i_cdev;
  pinstance = (struct pmcraid_instance *)__mptr + 0xfffffffffffff6f0UL;
  filep->private_data = (void *)pinstance;
  return (0);
}
}
static int pmcraid_chr_fasync(int fd , struct file *filep , int mode )
{
  struct pmcraid_instance *pinstance ;
  int rc ;
  {
  {
  pinstance = (struct pmcraid_instance *)filep->private_data;
  ldv_mutex_lock_185(& pinstance->aen_queue_lock);
  rc = fasync_helper(fd, filep, mode, & pinstance->aen_queue);
  ldv_mutex_unlock_186(& pinstance->aen_queue_lock);
  }
  return (rc);
}
}
static int pmcraid_build_passthrough_ioadls(struct pmcraid_cmd *cmd , int buflen ,
                                            int direction )
{
  struct pmcraid_sglist *sglist ;
  struct scatterlist *sg ;
  struct pmcraid_ioarcb *ioarcb ;
  struct pmcraid_ioadl_desc *ioadl ;
  int i ;
  int tmp ;
  {
  {
  sglist = (struct pmcraid_sglist *)0;
  sg = (struct scatterlist *)0;
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  sglist = pmcraid_alloc_sglist(buflen);
  }
  if ((unsigned long )sglist == (unsigned long )((struct pmcraid_sglist *)0)) {
    {
    printk("\vMaxRAID: can\'t allocate memory for passthrough SGls\n");
    }
    return (-12);
  } else {
  }
  {
  tmp = pci_map_sg((cmd->drv_inst)->pdev, (struct scatterlist *)(& sglist->scatterlist),
                   (int )sglist->num_sg, direction);
  sglist->num_dma_sg = (u32 )tmp;
  }
  if (sglist->num_dma_sg - 1U > 26U) {
    {
    dev_err((struct device const *)(& ((cmd->drv_inst)->pdev)->dev), "Failed to map passthrough buffer!\n");
    pmcraid_free_sglist(sglist);
    }
    return (-5);
  } else {
  }
  {
  cmd->sglist = sglist;
  ioarcb->request_flags0 = (__u8 )((unsigned int )ioarcb->request_flags0 | 4U);
  ioadl = pmcraid_init_ioadls(cmd, (int )sglist->num_dma_sg);
  i = 0;
  sg = (struct scatterlist *)(& sglist->scatterlist);
  }
  goto ldv_63103;
  ldv_63102:
  {
  (ioadl + (unsigned long )i)->data_len = sg->dma_length;
  (ioadl + (unsigned long )i)->address = sg->dma_address;
  (ioadl + (unsigned long )i)->flags = 0U;
  i = i + 1;
  sg = sg_next(sg);
  }
  ldv_63103: ;
  if ((u32 )i < sglist->num_dma_sg) {
    goto ldv_63102;
  } else {
  }
  (ioadl + ((unsigned long )i + 0xffffffffffffffffUL))->flags = 64U;
  return (0);
}
}
static void pmcraid_release_passthrough_ioadls(struct pmcraid_cmd *cmd , int buflen ,
                                               int direction )
{
  struct pmcraid_sglist *sglist ;
  {
  sglist = cmd->sglist;
  if (buflen > 0) {
    {
    pci_unmap_sg((cmd->drv_inst)->pdev, (struct scatterlist *)(& sglist->scatterlist),
                 (int )sglist->num_sg, direction);
    pmcraid_free_sglist(sglist);
    cmd->sglist = (struct pmcraid_sglist *)0;
    }
  } else {
  }
  return;
}
}
static long pmcraid_ioctl_passthrough(struct pmcraid_instance *pinstance , unsigned int ioctl_cmd ,
                                      unsigned int buflen , unsigned long arg )
{
  struct pmcraid_passthrough_ioctl_buffer *buffer ;
  struct pmcraid_ioarcb *ioarcb ;
  struct pmcraid_cmd *cmd ;
  struct pmcraid_cmd *cancel_cmd ;
  unsigned long request_buffer ;
  unsigned long request_offset ;
  unsigned long lock_flags ;
  void *ioasa ;
  u32 ioasc ;
  int request_size ;
  int buffer_size ;
  u8 access ;
  u8 direction ;
  int rc ;
  long __ret ;
  unsigned long tmp ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___0 ;
  long __int ;
  long tmp___1 ;
  bool __cond ;
  bool __cond___0 ;
  void *tmp___2 ;
  struct thread_info *tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  unsigned long tmp___8 ;
  unsigned long tmp___9 ;
  unsigned long tmp___10 ;
  unsigned long tmp___11 ;
  unsigned long tmp___12 ;
  {
  rc = 0;
  if ((unsigned int )*((unsigned char *)pinstance + 12200UL) != 0U) {
    {
    tmp = msecs_to_jiffies(10000U);
    __ret = (long )tmp;
    __might_sleep("drivers/scsi/pmcraid.c", 3681, 0);
    __cond___0 = (unsigned int )*((unsigned char *)pinstance + 12200UL) == 0U;
    }
    if ((int )__cond___0 && __ret == 0L) {
      __ret = 1L;
    } else {
    }
    if (((int )__cond___0 || __ret == 0L) == 0) {
      {
      tmp___0 = msecs_to_jiffies(10000U);
      __ret___0 = (long )tmp___0;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      }
      ldv_63141:
      {
      tmp___1 = prepare_to_wait_event(& pinstance->reset_wait_q, & __wait, 1);
      __int = tmp___1;
      __cond = (unsigned int )*((unsigned char *)pinstance + 12200UL) == 0U;
      }
      if ((int )__cond && __ret___0 == 0L) {
        __ret___0 = 1L;
      } else {
      }
      if (((int )__cond || __ret___0 == 0L) != 0) {
        goto ldv_63140;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_63140;
      } else {
      }
      {
      __ret___0 = schedule_timeout(__ret___0);
      }
      goto ldv_63141;
      ldv_63140:
      {
      finish_wait(& pinstance->reset_wait_q, & __wait);
      }
      __ret = __ret___0;
    } else {
    }
    rc = (int )__ret;
    if (rc == 0) {
      return (-110L);
    } else
    if (rc < 0) {
      return (-512L);
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)pinstance + 12200UL) != 0U) {
    {
    printk("\vMaxRAID: IOA is not operational\n");
    }
    return (-25L);
  } else {
  }
  {
  buffer_size = 833;
  tmp___2 = kmalloc((size_t )buffer_size, 208U);
  buffer = (struct pmcraid_passthrough_ioctl_buffer *)tmp___2;
  }
  if ((unsigned long )buffer == (unsigned long )((struct pmcraid_passthrough_ioctl_buffer *)0)) {
    {
    printk("\vMaxRAID: no memory for passthrough buffer\n");
    }
    return (-12L);
  } else {
  }
  {
  request_offset = 832UL;
  request_buffer = arg + request_offset;
  rc = __copy_from_user((void *)buffer, (void const *)arg, 833U);
  ioasa = (void *)(arg + 528UL);
  }
  if (rc != 0) {
    {
    printk("\vMaxRAID: ioctl: can\'t copy passthrough buffer\n");
    rc = -14;
    }
    goto out_free_buffer;
  } else {
  }
  request_size = (int )buffer->ioarcb.data_transfer_length;
  if ((int )((signed char )buffer->ioarcb.request_flags0) < 0) {
    access = 0U;
    direction = 1U;
  } else {
    access = 1U;
    direction = 2U;
  }
  if (request_size > 0) {
    {
    tmp___3 = current_thread_info();
    tmp___4 = __chk_range_not_ok(arg, request_offset + (unsigned long )request_size,
                                 tmp___3->addr_limit.seg);
    }
    if (tmp___4) {
      tmp___5 = 0;
    } else {
      tmp___5 = 1;
    }
    {
    tmp___6 = ldv__builtin_expect((long )tmp___5, 1L);
    rc = (int )tmp___6;
    }
    if (rc == 0) {
      rc = -14;
      goto out_free_buffer;
    } else {
    }
  } else
  if (request_size < 0) {
    rc = -22;
    goto out_free_buffer;
  } else {
  }
  if ((unsigned int )buffer->ioarcb.add_cmd_param_length > 48U) {
    rc = -22;
    goto out_free_buffer;
  } else {
  }
  {
  cmd = pmcraid_get_free_cmd(pinstance);
  }
  if ((unsigned long )cmd == (unsigned long )((struct pmcraid_cmd *)0)) {
    {
    printk("\vMaxRAID: free command block is not available\n");
    rc = -12;
    }
    goto out_free_buffer;
  } else {
  }
  {
  cmd->scsi_cmd = (struct scsi_cmnd *)0;
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  ioarcb->resource_handle = buffer->ioarcb.resource_handle;
  ioarcb->data_transfer_length = buffer->ioarcb.data_transfer_length;
  ioarcb->cmd_timeout = buffer->ioarcb.cmd_timeout;
  ioarcb->request_type = buffer->ioarcb.request_type;
  ioarcb->request_flags0 = buffer->ioarcb.request_flags0;
  ioarcb->request_flags1 = buffer->ioarcb.request_flags1;
  memcpy((void *)(& ioarcb->cdb), (void const *)(& buffer->ioarcb.cdb), 16UL);
  }
  if ((unsigned int )buffer->ioarcb.add_cmd_param_length != 0U) {
    {
    ioarcb->add_cmd_param_length = buffer->ioarcb.add_cmd_param_length;
    ioarcb->add_cmd_param_offset = buffer->ioarcb.add_cmd_param_offset;
    memcpy((void *)(& ioarcb->add_data.u.add_cmd_params), (void const *)(& buffer->ioarcb.add_data.u.add_cmd_params),
             (size_t )buffer->ioarcb.add_cmd_param_length);
    }
  } else {
  }
  {
  tmp___7 = atomic_add_return(1, & pinstance->last_message_id);
  ioarcb->hrrq_id = (__u8 )(tmp___7 % (int )pinstance->num_hrrq);
  }
  if (request_size != 0) {
    {
    rc = pmcraid_build_passthrough_ioadls(cmd, request_size, (int )direction);
    }
    if (rc != 0) {
      {
      printk("\vMaxRAID: couldn\'t build passthrough ioadls\n");
      }
      goto out_free_buffer;
    } else {
    }
  } else
  if (request_size < 0) {
    rc = -22;
    goto out_free_buffer;
  } else {
  }
  if ((unsigned int )direction == 1U && request_size > 0) {
    {
    rc = pmcraid_copy_sglist(cmd->sglist, request_buffer, (u32 )request_size, (int )direction);
    }
    if (rc != 0) {
      {
      printk("\vMaxRAID: failed to copy user buffer\n");
      }
      goto out_free_sglist;
    } else {
    }
  } else {
  }
  {
  cmd->cmd_done = & pmcraid_internal_done;
  ldv_init_completion_173(& cmd->wait_for_completion);
  cmd->completion_req = 1U;
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: command(%d) (CDB[0] = %x) for %x\n", (cmd->ioa_cb)->ioarcb.response_handle >> 2,
           (int )(cmd->ioa_cb)->ioarcb.cdb[0], (cmd->ioa_cb)->ioarcb.resource_handle);
    }
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_188((pinstance->host)->host_lock);
  _pmcraid_fire_command(cmd);
  ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
  buffer->ioarcb.cmd_timeout = 0U;
  }
  if ((unsigned int )buffer->ioarcb.cmd_timeout == 0U) {
    {
    ldv_wait_for_completion_190(& cmd->wait_for_completion);
    }
  } else {
    {
    tmp___10 = msecs_to_jiffies((unsigned int const )((int )buffer->ioarcb.cmd_timeout * 1000));
    tmp___11 = ldv_wait_for_completion_timeout_191(& cmd->wait_for_completion, tmp___10);
    }
    if (tmp___11 == 0UL) {
      if (pmcraid_debug_log != 0U) {
        {
        printk("\016MaxRAID: aborting cmd %d (CDB[0] = %x) due to timeout\n", (cmd->ioa_cb)->ioarcb.response_handle >> 2,
               (int )(cmd->ioa_cb)->ioarcb.cdb[0]);
        }
      } else {
      }
      {
      ldv___ldv_linux_kernel_locking_spinlock_spin_lock_192((pinstance->host)->host_lock);
      cancel_cmd = pmcraid_abort_cmd(cmd);
      ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
      }
      if ((unsigned long )cancel_cmd != (unsigned long )((struct pmcraid_cmd *)0)) {
        {
        ldv_wait_for_completion_194(& cancel_cmd->wait_for_completion);
        ioasc = (cancel_cmd->ioa_cb)->ioasa.ioasc;
        pmcraid_return_cmd(cancel_cmd);
        }
        if (ioasc == 268435457U || ioasc >> 24 == 0U) {
          if (ioasc != 5898240U) {
            rc = -110;
          } else {
          }
          goto out_handle_response;
        } else {
        }
      } else {
      }
      {
      tmp___8 = msecs_to_jiffies(150000U);
      tmp___9 = ldv_wait_for_completion_timeout_195(& cmd->wait_for_completion, tmp___8);
      }
      if (tmp___9 == 0UL) {
        {
        pmcraid_reset_bringup(cmd->drv_inst);
        rc = -110;
        }
      } else {
      }
    } else {
    }
  }
  out_handle_response:
  {
  tmp___12 = copy_to_user(ioasa, (void const *)(& (cmd->ioa_cb)->ioasa), 304UL);
  }
  if (tmp___12 != 0UL) {
    {
    printk("\vMaxRAID: failed to copy ioasa buffer to user\n");
    rc = -14;
    }
  } else
  if ((unsigned int )direction == 2U && request_size > 0) {
    {
    rc = pmcraid_copy_sglist(cmd->sglist, request_buffer, (u32 )request_size, (int )direction);
    }
    if (rc != 0) {
      {
      printk("\vMaxRAID: failed to copy user buffer\n");
      rc = -14;
      }
    } else {
    }
  } else {
  }
  out_free_sglist:
  {
  pmcraid_release_passthrough_ioadls(cmd, request_size, (int )direction);
  pmcraid_return_cmd(cmd);
  }
  out_free_buffer:
  {
  kfree((void const *)buffer);
  }
  return ((long )rc);
}
}
static long pmcraid_ioctl_driver(struct pmcraid_instance *pinstance , unsigned int cmd ,
                                 unsigned int buflen , void *user_buffer )
{
  int rc ;
  struct thread_info *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  rc = -38;
  tmp = current_thread_info();
  tmp___0 = __chk_range_not_ok((unsigned long )user_buffer, (unsigned long )(cmd >> 16) & 16383UL,
                               tmp->addr_limit.seg);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  {
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  }
  if (tmp___2 == 0L) {
    {
    printk("\vMaxRAID: ioctl_driver: access fault in request buffer\n");
    }
    return (-14L);
  } else {
  }
  {
  if (cmd == 3222291461U) {
    goto case_3222291461;
  } else {
  }
  goto switch_default;
  case_3222291461:
  {
  pmcraid_reset_bringup(pinstance);
  rc = 0;
  }
  goto ldv_63157;
  switch_default: ;
  goto ldv_63157;
  switch_break: ;
  }
  ldv_63157: ;
  return ((long )rc);
}
}
static int pmcraid_check_ioctl_buffer(int cmd , void *arg , struct pmcraid_ioctl_header *hdr )
{
  int rc ;
  int access ;
  unsigned long tmp ;
  struct thread_info *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  {
  {
  rc = 0;
  access = 0;
  tmp = copy_from_user((void *)hdr, (void const *)arg, 16UL);
  }
  if (tmp != 0UL) {
    {
    printk("\vMaxRAID: couldn\'t copy ioctl header from user buffer\n");
    }
    return (-14);
  } else {
  }
  {
  rc = memcmp((void const *)(& hdr->signature), (void const *)"PMCRAID", 8UL);
  }
  if (rc != 0) {
    {
    printk("\vMaxRAID: signature verification failed\n");
    }
    return (-22);
  } else {
  }
  if (cmd < 0) {
    access = 1;
  } else {
  }
  {
  tmp___0 = current_thread_info();
  tmp___1 = __chk_range_not_ok((unsigned long )(arg + 16UL), (unsigned long )hdr->buffer_length,
                               tmp___0->addr_limit.seg);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  {
  tmp___3 = ldv__builtin_expect((long )tmp___2, 1L);
  rc = (int )tmp___3;
  }
  if (rc == 0) {
    {
    printk("\vMaxRAID: access failed for user buffer of size %d\n", hdr->buffer_length);
    }
    return (-14);
  } else {
  }
  return (0);
}
}
static long pmcraid_chr_ioctl(struct file *filep , unsigned int cmd , unsigned long arg )
{
  struct pmcraid_instance *pinstance ;
  struct pmcraid_ioctl_header *hdr ;
  int retval ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  pinstance = (struct pmcraid_instance *)0;
  hdr = (struct pmcraid_ioctl_header *)0;
  retval = -25;
  tmp = kmalloc(16UL, 208U);
  hdr = (struct pmcraid_ioctl_header *)tmp;
  }
  if ((unsigned long )hdr == (unsigned long )((struct pmcraid_ioctl_header *)0)) {
    {
    printk("\vMaxRAID: failed to allocate memory for ioctl header\n");
    }
    return (-12L);
  } else {
  }
  {
  retval = pmcraid_check_ioctl_buffer((int )cmd, (void *)arg, hdr);
  }
  if (retval != 0) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: chr_ioctl: header check failed\n");
      }
    } else {
    }
    {
    kfree((void const *)hdr);
    }
    return ((long )retval);
  } else {
  }
  pinstance = (struct pmcraid_instance *)filep->private_data;
  if ((unsigned long )pinstance == (unsigned long )((struct pmcraid_instance *)0)) {
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: adapter instance is not found\n");
      }
    } else {
    }
    {
    kfree((void const *)hdr);
    }
    return (-25L);
  } else {
  }
  {
  if (((cmd >> 8) & 255U) == 70U) {
    goto case_70;
  } else {
  }
  if (((cmd >> 8) & 255U) == 68U) {
    goto case_68;
  } else {
  }
  goto switch_default;
  case_70: ;
  if (cmd == 3275834882U) {
    {
    scsi_block_requests(pinstance->host);
    }
  } else {
  }
  {
  tmp___0 = pmcraid_ioctl_passthrough(pinstance, cmd, hdr->buffer_length, arg);
  retval = (int )tmp___0;
  }
  if (cmd == 3275834882U) {
    {
    scsi_unblock_requests(pinstance->host);
    }
  } else {
  }
  goto ldv_63176;
  case_68:
  {
  arg = arg + 16UL;
  tmp___1 = pmcraid_ioctl_driver(pinstance, cmd, hdr->buffer_length, (void *)arg);
  retval = (int )tmp___1;
  }
  goto ldv_63176;
  switch_default:
  retval = -25;
  goto ldv_63176;
  switch_break: ;
  }
  ldv_63176:
  {
  kfree((void const *)hdr);
  }
  return ((long )retval);
}
}
static struct file_operations const pmcraid_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, 0, 0, 0, & pmcraid_chr_ioctl, & pmcraid_chr_ioctl,
    0, 0, & pmcraid_chr_open, 0, 0, 0, 0, & pmcraid_chr_fasync, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0};
static ssize_t pmcraid_show_log_level(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct pmcraid_instance *pinstance ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c8UL;
  pinstance = (struct pmcraid_instance *)(& shost->hostdata);
  tmp = snprintf(buf, 4096UL, "%d\n", (int )pinstance->current_log_level);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t pmcraid_store_log_level(struct device *dev , struct device_attribute *attr ,
                                       char const *buf , size_t count )
{
  struct Scsi_Host *shost ;
  struct pmcraid_instance *pinstance ;
  u8 val ;
  int tmp ;
  struct device const *__mptr ;
  size_t tmp___0 ;
  {
  {
  tmp = kstrtou8(buf, 10U, & val);
  }
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  if ((unsigned int )val > 2U) {
    return (-22L);
  } else {
  }
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c8UL;
  pinstance = (struct pmcraid_instance *)(& shost->hostdata);
  pinstance->current_log_level = val;
  tmp___0 = strlen(buf);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute pmcraid_log_level_attr = {{"log_level", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & pmcraid_show_log_level, & pmcraid_store_log_level};
static ssize_t pmcraid_show_drv_version(struct device *dev , struct device_attribute *attr ,
                                        char *buf )
{
  int tmp ;
  {
  {
  tmp = snprintf(buf, 4096UL, "version: %s\n", (char *)"1.0.3");
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute pmcraid_driver_version_attr = {{"drv_version", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & pmcraid_show_drv_version, 0};
static ssize_t pmcraid_show_adapter_id(struct device *dev , struct device_attribute *attr ,
                                       char *buf )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct pmcraid_instance *pinstance ;
  u32 adapter_id ;
  u32 aen_group ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff6c8UL;
  pinstance = (struct pmcraid_instance *)(& shost->hostdata);
  adapter_id = (unsigned int )((int )((pinstance->pdev)->bus)->number << 8) | (pinstance->pdev)->devfn;
  aen_group = pmcraid_event_family.id;
  tmp = snprintf(buf, 4096UL, "adapter id: %d\nminor: %d\naen group: %d\n", adapter_id,
                 pinstance->cdev.dev & 1048575U, aen_group);
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute pmcraid_adapter_id_attr = {{"adapter_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & pmcraid_show_adapter_id, 0};
static struct device_attribute *pmcraid_host_attrs[4U] = { & pmcraid_log_level_attr, & pmcraid_driver_version_attr, & pmcraid_adapter_id_attr, (struct device_attribute *)0};
static struct scsi_host_template pmcraid_host_template =
     {& __this_module, "PMC MaxRAID", 0, 0, 0, 0, 0, & pmcraid_queuecommand, & pmcraid_eh_abort_handler,
    & pmcraid_eh_device_reset_handler, & pmcraid_eh_target_reset_handler, & pmcraid_eh_bus_reset_handler,
    & pmcraid_eh_host_reset_handler, & pmcraid_slave_alloc, & pmcraid_slave_configure,
    & pmcraid_slave_destroy, 0, 0, 0, 0, & pmcraid_change_queue_depth, 0, 0, 0, 0,
    0, 0, "PMC MaxRAID", 0, 1020, -1, 27U, (unsigned short)0, 32767U, 0UL, 254, (unsigned char)0,
    0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
    (unsigned char)0, 1U, (unsigned char)0, 0U, (struct device_attribute **)(& pmcraid_host_attrs),
    0, {0, 0}, 0ULL, 0U, 0, (_Bool)0};
static irqreturn_t pmcraid_isr_msix(int irq , void *dev_id )
{
  struct pmcraid_isr_param *hrrq_vector ;
  struct pmcraid_instance *pinstance ;
  unsigned long lock_flags ;
  u32 intrs_val ;
  int hrrq_id ;
  unsigned int tmp ;
  {
  hrrq_vector = (struct pmcraid_isr_param *)dev_id;
  hrrq_id = (int )hrrq_vector->hrrq_id;
  pinstance = hrrq_vector->drv_inst;
  if (hrrq_id == 0) {
    {
    intrs_val = pmcraid_read_interrupts(pinstance);
    }
    if (intrs_val != 0U) {
      {
      tmp = ioread32(pinstance->int_regs.host_ioa_interrupt_reg);
      }
      if ((tmp & 32U) == 0U) {
        if ((intrs_val & 469762076U) != 0U) {
          if ((intrs_val & 134217728U) != 0U) {
            pinstance->ioa_unit_check = 1U;
          } else {
          }
          {
          printk("\vMaxRAID: ISR: error interrupts: %x \t\t\t\t\tinitiating reset\n",
                 intrs_val);
          ldv___ldv_linux_kernel_locking_spinlock_spin_lock_196((pinstance->host)->host_lock);
          pmcraid_initiate_reset(pinstance);
          ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
          }
        } else {
        }
        if ((int )intrs_val < 0) {
          {
          pmcraid_clr_trans_op(pinstance);
          }
        } else {
        }
        {
        iowrite32(32U, pinstance->int_regs.host_ioa_interrupt_reg);
        ioread32(pinstance->int_regs.host_ioa_interrupt_reg);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  tasklet_schedule((struct tasklet_struct *)(& pinstance->isr_tasklet) + (unsigned long )hrrq_id);
  }
  return (1);
}
}
static irqreturn_t pmcraid_isr(int irq , void *dev_id )
{
  struct pmcraid_isr_param *hrrq_vector ;
  struct pmcraid_instance *pinstance ;
  u32 intrs ;
  unsigned long lock_flags ;
  int hrrq_id ;
  long tmp ;
  {
  hrrq_id = 0;
  if ((unsigned long )dev_id == (unsigned long )((void *)0)) {
    {
    printk("\016%s(): NULL host pointer\n", "pmcraid_isr");
    }
    return (0);
  } else {
  }
  {
  hrrq_vector = (struct pmcraid_isr_param *)dev_id;
  pinstance = hrrq_vector->drv_inst;
  intrs = pmcraid_read_interrupts(pinstance);
  tmp = ldv__builtin_expect((intrs & 2617245727U) == 0U, 0L);
  }
  if (tmp != 0L) {
    return (0);
  } else {
  }
  if ((intrs & 469762076U) != 0U) {
    if ((intrs & 134217728U) != 0U) {
      pinstance->ioa_unit_check = 1U;
    } else {
    }
    {
    iowrite32(intrs, pinstance->int_regs.ioa_host_interrupt_clr_reg);
    printk("\vMaxRAID: ISR: error interrupts: %x initiating reset\n", intrs);
    intrs = ioread32(pinstance->int_regs.ioa_host_interrupt_clr_reg);
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_198((pinstance->host)->host_lock);
    pmcraid_initiate_reset(pinstance);
    ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, lock_flags);
    }
  } else
  if ((int )intrs < 0) {
    {
    pmcraid_clr_trans_op(pinstance);
    }
  } else {
    {
    iowrite32(intrs, pinstance->int_regs.ioa_host_interrupt_clr_reg);
    ioread32(pinstance->int_regs.ioa_host_interrupt_clr_reg);
    tasklet_schedule((struct tasklet_struct *)(& pinstance->isr_tasklet) + (unsigned long )hrrq_id);
    }
  }
  return (1);
}
}
static void pmcraid_worker_function(struct work_struct *workp )
{
  struct pmcraid_instance *pinstance ;
  struct pmcraid_resource_entry *res ;
  struct pmcraid_resource_entry *temp ;
  struct scsi_device *sdev ;
  unsigned long lock_flags ;
  unsigned long host_lock_flags ;
  u16 fw_version ;
  u8 bus ;
  u8 target ;
  u8 lun ;
  struct work_struct const *__mptr ;
  int tmp ;
  __u16 tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  int tmp___2 ;
  struct list_head const *__mptr___4 ;
  {
  {
  __mptr = (struct work_struct const *)workp;
  pinstance = (struct pmcraid_instance *)__mptr + 0xffffffffffffd0b0UL;
  tmp = atomic_read((atomic_t const *)(& pinstance->expose_resources));
  }
  if (tmp == 0) {
    return;
  } else {
  }
  {
  tmp___0 = __fswab16((int )(pinstance->inq_data)->fw_version);
  fw_version = tmp___0;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_200(& pinstance->resource_lock);
  __mptr___0 = (struct list_head const *)pinstance->used_res_q.next;
  res = (struct pmcraid_resource_entry *)__mptr___0;
  __mptr___1 = (struct list_head const *)res->queue.next;
  temp = (struct pmcraid_resource_entry *)__mptr___1;
  }
  goto ldv_63262;
  ldv_63261: ;
  if ((unsigned int )res->change_detected == 2U && (unsigned long )res->scsi_dev != (unsigned long )((struct scsi_device *)0)) {
    {
    sdev = res->scsi_dev;
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_201((pinstance->host)->host_lock);
    tmp___1 = scsi_device_get(sdev);
    }
    if (tmp___1 == 0) {
      {
      ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, host_lock_flags);
      }
      if (pmcraid_debug_log != 0U) {
        {
        printk("\016MaxRAID: deleting %x from midlayer\n", res->__annonCompField114.cfg_entry.resource_address);
        }
      } else {
      }
      {
      list_move_tail(& res->queue, & pinstance->free_res_q);
      ldv_spin_unlock_irqrestore_128(& pinstance->resource_lock, lock_flags);
      scsi_remove_device(sdev);
      scsi_device_put(sdev);
      ldv___ldv_linux_kernel_locking_spinlock_spin_lock_204(& pinstance->resource_lock);
      res->change_detected = 0U;
      }
    } else {
      {
      ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, host_lock_flags);
      }
    }
  } else {
  }
  res = temp;
  __mptr___2 = (struct list_head const *)temp->queue.next;
  temp = (struct pmcraid_resource_entry *)__mptr___2;
  ldv_63262: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& pinstance->used_res_q)) {
    goto ldv_63261;
  } else {
  }
  __mptr___3 = (struct list_head const *)pinstance->used_res_q.next;
  res = (struct pmcraid_resource_entry *)__mptr___3;
  goto ldv_63270;
  ldv_63269: ;
  if ((unsigned int )res->change_detected == 1U) {
    {
    tmp___2 = pmcraid_expose_resource((int )fw_version, & res->__annonCompField114.cfg_entry);
    }
    if (tmp___2 == 0) {
      goto ldv_63268;
    } else {
    }
    if ((unsigned int )res->__annonCompField114.cfg_entry.resource_type == 2U) {
      bus = 1U;
      if ((unsigned int )fw_version <= 2U) {
        target = res->__annonCompField114.cfg_entry.unique_flags1;
      } else {
        target = (u8 )res->__annonCompField114.cfg_entry.array_id;
      }
      lun = 0U;
    } else {
      bus = 0U;
      target = (u8 )(res->__annonCompField114.cfg_entry.resource_address >> 16);
      lun = 0U;
    }
    {
    res->change_detected = 0U;
    ldv_spin_unlock_irqrestore_128(& pinstance->resource_lock, lock_flags);
    scsi_add_device(pinstance->host, (uint )bus, (uint )target, (u64 )lun);
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_207(& pinstance->resource_lock);
    }
  } else {
  }
  ldv_63268:
  __mptr___4 = (struct list_head const *)res->queue.next;
  res = (struct pmcraid_resource_entry *)__mptr___4;
  ldv_63270: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& pinstance->used_res_q)) {
    goto ldv_63269;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_128(& pinstance->resource_lock, lock_flags);
  }
  return;
}
}
static void pmcraid_tasklet_function(unsigned long instance )
{
  struct pmcraid_isr_param *hrrq_vector ;
  struct pmcraid_instance *pinstance ;
  unsigned long hrrq_lock_flags ;
  unsigned long pending_lock_flags ;
  unsigned long host_lock_flags ;
  spinlock_t *lockp ;
  int id ;
  __le32 resp ;
  int cmd_index ;
  struct pmcraid_cmd *cmd ;
  {
  {
  hrrq_vector = (struct pmcraid_isr_param *)instance;
  pinstance = hrrq_vector->drv_inst;
  id = (int )hrrq_vector->hrrq_id;
  lockp = (spinlock_t *)(& pinstance->hrrq_lock) + (unsigned long )id;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_209(lockp);
  resp = *(pinstance->hrrq_curr[id]);
  }
  goto ldv_63285;
  ldv_63286:
  cmd_index = (int )(resp >> 2);
  cmd = (struct pmcraid_cmd *)0;
  if ((unsigned long )pinstance->hrrq_curr[id] < (unsigned long )pinstance->hrrq_end[id]) {
    pinstance->hrrq_curr[id] = pinstance->hrrq_curr[id] + 1;
  } else {
    pinstance->hrrq_curr[id] = pinstance->hrrq_start[id];
    pinstance->host_toggle_bit[id] = (u8 )((unsigned int )pinstance->host_toggle_bit[id] ^ 1U);
  }
  if (cmd_index > 1023) {
    {
    printk("\vMaxRAID: Invalid response handle %d\n", cmd_index);
    resp = *(pinstance->hrrq_curr[id]);
    }
    goto ldv_63285;
  } else {
  }
  {
  cmd = pinstance->cmd_list[cmd_index];
  ldv_spin_unlock_irqrestore_210(lockp, hrrq_lock_flags);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_211(& pinstance->pending_pool_lock);
  list_del(& cmd->free_list);
  ldv_spin_unlock_irqrestore_144(& pinstance->pending_pool_lock, pending_lock_flags);
  ldv_del_timer_213(& cmd->timer);
  atomic_dec(& pinstance->outstanding_cmds);
  }
  if ((unsigned long )cmd->cmd_done == (unsigned long )(& pmcraid_ioa_reset)) {
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_214((pinstance->host)->host_lock);
    (*(cmd->cmd_done))(cmd);
    ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, host_lock_flags);
    }
  } else
  if ((unsigned long )cmd->cmd_done != (unsigned long )((void (*)(struct pmcraid_cmd * ))0)) {
    {
    (*(cmd->cmd_done))(cmd);
    }
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_216(lockp);
  resp = *(pinstance->hrrq_curr[id]);
  }
  ldv_63285: ;
  if ((resp & 1U) == (__le32 )pinstance->host_toggle_bit[id]) {
    goto ldv_63286;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_210(lockp, hrrq_lock_flags);
  }
  return;
}
}
static void pmcraid_unregister_interrupt_handler(struct pmcraid_instance *pinstance )
{
  int i ;
  {
  i = 0;
  goto ldv_63293;
  ldv_63292:
  {
  ldv_free_irq_218((unsigned int )pinstance->hrrq_vector[i].vector, (void *)(& pinstance->hrrq_vector) + (unsigned long )i);
  i = i + 1;
  }
  ldv_63293: ;
  if (i < (int )pinstance->num_hrrq) {
    goto ldv_63292;
  } else {
  }
  if ((unsigned int )pinstance->interrupt_mode != 0U) {
    {
    pci_disable_msix(pinstance->pdev);
    pinstance->interrupt_mode = 0U;
    }
  } else {
  }
  return;
}
}
static int pmcraid_register_interrupt_handler(struct pmcraid_instance *pinstance )
{
  int rc ;
  struct pci_dev *pdev ;
  int num_hrrq ;
  struct msix_entry entries[16U] ;
  int i ;
  int j ;
  int tmp ;
  {
  pdev = pinstance->pdev;
  if (pmcraid_enable_msix != 0U) {
    {
    tmp = pci_find_capability(pdev, 17);
    }
    if (tmp != 0) {
      num_hrrq = 16;
      i = 0;
      goto ldv_63304;
      ldv_63303:
      entries[i].entry = (u16 )i;
      i = i + 1;
      ldv_63304: ;
      if (i <= 15) {
        goto ldv_63303;
      } else {
      }
      {
      num_hrrq = pci_enable_msix_range(pdev, (struct msix_entry *)(& entries), 1,
                                       num_hrrq);
      }
      if (num_hrrq < 0) {
        goto pmcraid_isr_legacy;
      } else {
      }
      i = 0;
      goto ldv_63312;
      ldv_63311:
      {
      pinstance->hrrq_vector[i].hrrq_id = (u8 )i;
      pinstance->hrrq_vector[i].drv_inst = pinstance;
      pinstance->hrrq_vector[i].vector = (u16 )entries[i].vector;
      rc = ldv_request_irq_219((unsigned int )pinstance->hrrq_vector[i].vector, & pmcraid_isr_msix,
                               0UL, "PMC MaxRAID", (void *)(& pinstance->hrrq_vector) + (unsigned long )i);
      }
      if (rc != 0) {
        j = 0;
        goto ldv_63309;
        ldv_63308:
        {
        ldv_free_irq_220(entries[j].vector, (void *)(& pinstance->hrrq_vector) + (unsigned long )j);
        j = j + 1;
        }
        ldv_63309: ;
        if (j < i) {
          goto ldv_63308;
        } else {
        }
        {
        pci_disable_msix(pdev);
        }
        goto pmcraid_isr_legacy;
      } else {
      }
      i = i + 1;
      ldv_63312: ;
      if (i < num_hrrq) {
        goto ldv_63311;
      } else {
      }
      {
      pinstance->num_hrrq = (u8 )num_hrrq;
      pinstance->interrupt_mode = 1U;
      iowrite32(64U, pinstance->int_regs.host_ioa_interrupt_reg);
      ioread32(pinstance->int_regs.host_ioa_interrupt_reg);
      }
      goto pmcraid_isr_out;
    } else {
    }
  } else {
  }
  pmcraid_isr_legacy:
  {
  pinstance->hrrq_vector[0].hrrq_id = 0U;
  pinstance->hrrq_vector[0].drv_inst = pinstance;
  pinstance->hrrq_vector[0].vector = (u16 )pdev->irq;
  pinstance->num_hrrq = 1U;
  rc = ldv_request_irq_221(pdev->irq, & pmcraid_isr, 128UL, "PMC MaxRAID", (void *)(& pinstance->hrrq_vector));
  }
  pmcraid_isr_out: ;
  return (rc);
}
}
static void pmcraid_release_cmd_blocks(struct pmcraid_instance *pinstance , int max_index )
{
  int i ;
  {
  i = 0;
  goto ldv_63321;
  ldv_63320:
  {
  kmem_cache_free(pinstance->cmd_cachep, (void *)pinstance->cmd_list[i]);
  pinstance->cmd_list[i] = (struct pmcraid_cmd *)0;
  i = i + 1;
  }
  ldv_63321: ;
  if (i < max_index) {
    goto ldv_63320;
  } else {
  }
  {
  kmem_cache_destroy(pinstance->cmd_cachep);
  pinstance->cmd_cachep = (struct kmem_cache *)0;
  }
  return;
}
}
static void pmcraid_release_control_blocks(struct pmcraid_instance *pinstance , int max_index )
{
  int i ;
  {
  if ((unsigned long )pinstance->control_pool == (unsigned long )((struct dma_pool *)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_63329;
  ldv_63328:
  {
  dma_pool_free(pinstance->control_pool, (void *)(pinstance->cmd_list[i])->ioa_cb,
                (pinstance->cmd_list[i])->ioa_cb_bus_addr);
  (pinstance->cmd_list[i])->ioa_cb = (struct pmcraid_control_block *)0;
  (pinstance->cmd_list[i])->ioa_cb_bus_addr = 0ULL;
  i = i + 1;
  }
  ldv_63329: ;
  if (i < max_index) {
    goto ldv_63328;
  } else {
  }
  {
  dma_pool_destroy(pinstance->control_pool);
  pinstance->control_pool = (struct dma_pool *)0;
  }
  return;
}
}
static int pmcraid_allocate_cmd_blocks(struct pmcraid_instance *pinstance )
{
  int i ;
  void *tmp ;
  {
  {
  sprintf((char *)(& pinstance->cmd_pool_name), "pmcraid_cmd_pool_%d", (pinstance->host)->unique_id);
  pinstance->cmd_cachep = kmem_cache_create((char const *)(& pinstance->cmd_pool_name),
                                            328UL, 0UL, 8192UL, (void (*)(void * ))0);
  }
  if ((unsigned long )pinstance->cmd_cachep == (unsigned long )((struct kmem_cache *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_63336;
  ldv_63335:
  {
  tmp = ldv_kmem_cache_alloc_222(pinstance->cmd_cachep, 208U);
  pinstance->cmd_list[i] = (struct pmcraid_cmd *)tmp;
  }
  if ((unsigned long )pinstance->cmd_list[i] == (unsigned long )((struct pmcraid_cmd *)0)) {
    {
    pmcraid_release_cmd_blocks(pinstance, i);
    }
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_63336: ;
  if (i <= 1023) {
    goto ldv_63335;
  } else {
  }
  return (0);
}
}
static int pmcraid_allocate_control_blocks(struct pmcraid_instance *pinstance )
{
  int i ;
  void *tmp ;
  {
  {
  sprintf((char *)(& pinstance->ctl_pool_name), "pmcraid_control_pool_%d", (pinstance->host)->unique_id);
  pinstance->control_pool = dma_pool_create((char const *)(& pinstance->ctl_pool_name),
                                            & (pinstance->pdev)->dev, 1472UL, 32UL,
                                            0UL);
  }
  if ((unsigned long )pinstance->control_pool == (unsigned long )((struct dma_pool *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_63343;
  ldv_63342:
  {
  tmp = ldv_dma_pool_alloc_223(pinstance->control_pool, 208U, & (pinstance->cmd_list[i])->ioa_cb_bus_addr);
  (pinstance->cmd_list[i])->ioa_cb = (struct pmcraid_control_block *)tmp;
  }
  if ((unsigned long )(pinstance->cmd_list[i])->ioa_cb == (unsigned long )((struct pmcraid_control_block *)0)) {
    {
    pmcraid_release_control_blocks(pinstance, i);
    }
    return (-12);
  } else {
  }
  {
  memset((void *)(pinstance->cmd_list[i])->ioa_cb, 0, 1472UL);
  i = i + 1;
  }
  ldv_63343: ;
  if (i <= 1023) {
    goto ldv_63342;
  } else {
  }
  return (0);
}
}
static void pmcraid_release_host_rrqs(struct pmcraid_instance *pinstance , int maxindex )
{
  int i ;
  {
  i = 0;
  goto ldv_63351;
  ldv_63350:
  {
  pci_free_consistent(pinstance->pdev, 4096UL, (void *)pinstance->hrrq_start[i], pinstance->hrrq_start_bus_addr[i]);
  pinstance->hrrq_start[i] = (__be32 *)0U;
  pinstance->hrrq_start_bus_addr[i] = 0ULL;
  pinstance->host_toggle_bit[i] = 0U;
  i = i + 1;
  }
  ldv_63351: ;
  if (i < maxindex) {
    goto ldv_63350;
  } else {
  }
  return;
}
}
static int pmcraid_allocate_host_rrqs(struct pmcraid_instance *pinstance )
{
  int i ;
  int buffer_size ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  buffer_size = 4096;
  i = 0;
  goto ldv_63360;
  ldv_63359:
  {
  tmp = pci_alloc_consistent(pinstance->pdev, (size_t )buffer_size, (dma_addr_t *)(& pinstance->hrrq_start_bus_addr) + (unsigned long )i);
  pinstance->hrrq_start[i] = (__be32 *)tmp;
  }
  if ((unsigned long )pinstance->hrrq_start[i] == (unsigned long )((__be32 *)0U)) {
    {
    printk("\vMaxRAID: pci_alloc failed for hrrq vector : %d\n", i);
    pmcraid_release_host_rrqs(pinstance, i);
    }
    return (-12);
  } else {
  }
  {
  memset((void *)pinstance->hrrq_start[i], 0, (size_t )buffer_size);
  pinstance->hrrq_curr[i] = pinstance->hrrq_start[i];
  pinstance->hrrq_end[i] = pinstance->hrrq_start[i] + 1023U;
  pinstance->host_toggle_bit[i] = 1U;
  spinlock_check((spinlock_t *)(& pinstance->hrrq_lock) + (unsigned long )i);
  __raw_spin_lock_init(& ((spinlock_t *)(& pinstance->hrrq_lock) + (unsigned long )i)->__annonCompField18.rlock,
                       "&(&pinstance->hrrq_lock[i])->rlock", & __key);
  i = i + 1;
  }
  ldv_63360: ;
  if (i < (int )pinstance->num_hrrq) {
    goto ldv_63359;
  } else {
  }
  return (0);
}
}
static void pmcraid_release_hcams(struct pmcraid_instance *pinstance )
{
  {
  if ((unsigned long )pinstance->ccn.msg != (unsigned long )((struct pmcraid_aen_msg *)0)) {
    {
    pci_free_consistent(pinstance->pdev, 4048UL, (void *)pinstance->ccn.msg, pinstance->ccn.baddr);
    pinstance->ccn.msg = (struct pmcraid_aen_msg *)0;
    pinstance->ccn.hcam = (struct pmcraid_hcam_hdr *)0;
    pinstance->ccn.baddr = 0ULL;
    }
  } else {
  }
  if ((unsigned long )pinstance->ldn.msg != (unsigned long )((struct pmcraid_aen_msg *)0)) {
    {
    pci_free_consistent(pinstance->pdev, 4112UL, (void *)pinstance->ldn.msg, pinstance->ldn.baddr);
    pinstance->ldn.msg = (struct pmcraid_aen_msg *)0;
    pinstance->ldn.hcam = (struct pmcraid_hcam_hdr *)0;
    pinstance->ldn.baddr = 0ULL;
    }
  } else {
  }
  return;
}
}
static int pmcraid_allocate_hcams(struct pmcraid_instance *pinstance )
{
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = pci_alloc_consistent(pinstance->pdev, 4048UL, & pinstance->ccn.baddr);
  pinstance->ccn.msg = (struct pmcraid_aen_msg *)tmp;
  tmp___0 = pci_alloc_consistent(pinstance->pdev, 4112UL, & pinstance->ldn.baddr);
  pinstance->ldn.msg = (struct pmcraid_aen_msg *)tmp___0;
  }
  if ((unsigned long )pinstance->ldn.msg == (unsigned long )((struct pmcraid_aen_msg *)0) || (unsigned long )pinstance->ccn.msg == (unsigned long )((struct pmcraid_aen_msg *)0)) {
    {
    pmcraid_release_hcams(pinstance);
    }
  } else {
    {
    pinstance->ccn.hcam = (struct pmcraid_hcam_hdr *)pinstance->ccn.msg + 16U;
    pinstance->ldn.hcam = (struct pmcraid_hcam_hdr *)pinstance->ldn.msg + 16U;
    atomic_set(& pinstance->ccn.ignore, 0);
    atomic_set(& pinstance->ldn.ignore, 0);
    }
  }
  return ((unsigned long )pinstance->ldn.msg == (unsigned long )((struct pmcraid_aen_msg *)0) ? -12 : 0);
}
}
static void pmcraid_release_config_buffers(struct pmcraid_instance *pinstance )
{
  int i ;
  {
  if ((unsigned long )pinstance->cfg_table != (unsigned long )((struct pmcraid_config_table *)0) && pinstance->cfg_table_bus_addr != 0ULL) {
    {
    pci_free_consistent(pinstance->pdev, 8208UL, (void *)pinstance->cfg_table, pinstance->cfg_table_bus_addr);
    pinstance->cfg_table = (struct pmcraid_config_table *)0;
    pinstance->cfg_table_bus_addr = 0ULL;
    }
  } else {
  }
  if ((unsigned long )pinstance->res_entries != (unsigned long )((struct pmcraid_resource_entry *)0)) {
    i = 0;
    goto ldv_63373;
    ldv_63372:
    {
    list_del(& (pinstance->res_entries + (unsigned long )i)->queue);
    i = i + 1;
    }
    ldv_63373: ;
    if (i <= 255) {
      goto ldv_63372;
    } else {
    }
    {
    kfree((void const *)pinstance->res_entries);
    pinstance->res_entries = (struct pmcraid_resource_entry *)0;
    }
  } else {
  }
  {
  pmcraid_release_hcams(pinstance);
  }
  return;
}
}
static int pmcraid_allocate_config_buffers(struct pmcraid_instance *pinstance )
{
  int i ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = kzalloc(18432UL, 208U);
  pinstance->res_entries = (struct pmcraid_resource_entry *)tmp;
  }
  if ((unsigned long )pinstance->res_entries == (unsigned long )((struct pmcraid_resource_entry *)0)) {
    {
    printk("\vMaxRAID: failed to allocate memory for resource table\n");
    }
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_63380;
  ldv_63379:
  {
  list_add_tail(& (pinstance->res_entries + (unsigned long )i)->queue, & pinstance->free_res_q);
  i = i + 1;
  }
  ldv_63380: ;
  if (i <= 255) {
    goto ldv_63379;
  } else {
  }
  {
  tmp___0 = pci_alloc_consistent(pinstance->pdev, 8208UL, & pinstance->cfg_table_bus_addr);
  pinstance->cfg_table = (struct pmcraid_config_table *)tmp___0;
  }
  if ((unsigned long )pinstance->cfg_table == (unsigned long )((struct pmcraid_config_table *)0)) {
    {
    printk("\vMaxRAID: couldn\'t alloc DMA memory for config table\n");
    pmcraid_release_config_buffers(pinstance);
    }
    return (-12);
  } else {
  }
  {
  tmp___1 = pmcraid_allocate_hcams(pinstance);
  }
  if (tmp___1 != 0) {
    {
    printk("\vMaxRAID: could not alloc DMA memory for HCAMS\n");
    pmcraid_release_config_buffers(pinstance);
    }
    return (-12);
  } else {
  }
  return (0);
}
}
static void pmcraid_init_tasklets(struct pmcraid_instance *pinstance )
{
  int i ;
  {
  i = 0;
  goto ldv_63387;
  ldv_63386:
  {
  tasklet_init((struct tasklet_struct *)(& pinstance->isr_tasklet) + (unsigned long )i,
               & pmcraid_tasklet_function, (unsigned long )((struct pmcraid_isr_param *)(& pinstance->hrrq_vector) + (unsigned long )i));
  i = i + 1;
  }
  ldv_63387: ;
  if (i < (int )pinstance->num_hrrq) {
    goto ldv_63386;
  } else {
  }
  return;
}
}
static void pmcraid_kill_tasklets(struct pmcraid_instance *pinstance )
{
  int i ;
  {
  i = 0;
  goto ldv_63394;
  ldv_63393:
  {
  tasklet_kill((struct tasklet_struct *)(& pinstance->isr_tasklet) + (unsigned long )i);
  i = i + 1;
  }
  ldv_63394: ;
  if (i < (int )pinstance->num_hrrq) {
    goto ldv_63393;
  } else {
  }
  return;
}
}
static void pmcraid_release_buffers(struct pmcraid_instance *pinstance )
{
  {
  {
  pmcraid_release_config_buffers(pinstance);
  pmcraid_release_control_blocks(pinstance, 1024);
  pmcraid_release_cmd_blocks(pinstance, 1024);
  pmcraid_release_host_rrqs(pinstance, (int )pinstance->num_hrrq);
  }
  if ((unsigned long )pinstance->inq_data != (unsigned long )((struct pmcraid_inquiry_data *)0)) {
    {
    pci_free_consistent(pinstance->pdev, 24UL, (void *)pinstance->inq_data, pinstance->inq_data_baddr);
    pinstance->inq_data = (struct pmcraid_inquiry_data *)0;
    pinstance->inq_data_baddr = 0ULL;
    }
  } else {
  }
  if ((unsigned long )pinstance->timestamp_data != (unsigned long )((struct pmcraid_timestamp_data *)0)) {
    {
    pci_free_consistent(pinstance->pdev, 12UL, (void *)pinstance->timestamp_data,
                        pinstance->timestamp_data_baddr);
    pinstance->timestamp_data = (struct pmcraid_timestamp_data *)0;
    pinstance->timestamp_data_baddr = 0ULL;
    }
  } else {
  }
  return;
}
}
static int pmcraid_init_buffers(struct pmcraid_instance *pinstance )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  struct pmcraid_cmd *cmdp ;
  {
  {
  tmp = pmcraid_allocate_host_rrqs(pinstance);
  }
  if (tmp != 0) {
    {
    printk("\vMaxRAID: couldn\'t allocate memory for %d host rrqs\n", (int )pinstance->num_hrrq);
    }
    return (-12);
  } else {
  }
  {
  tmp___0 = pmcraid_allocate_config_buffers(pinstance);
  }
  if (tmp___0 != 0) {
    {
    printk("\vMaxRAID: couldn\'t allocate memory for config buffers\n");
    pmcraid_release_host_rrqs(pinstance, (int )pinstance->num_hrrq);
    }
    return (-12);
  } else {
  }
  {
  tmp___1 = pmcraid_allocate_cmd_blocks(pinstance);
  }
  if (tmp___1 != 0) {
    {
    printk("\vMaxRAID: couldn\'t allocate memory for cmd blocks\n");
    pmcraid_release_config_buffers(pinstance);
    pmcraid_release_host_rrqs(pinstance, (int )pinstance->num_hrrq);
    }
    return (-12);
  } else {
  }
  {
  tmp___2 = pmcraid_allocate_control_blocks(pinstance);
  }
  if (tmp___2 != 0) {
    {
    printk("\vMaxRAID: couldn\'t allocate memory control blocks\n");
    pmcraid_release_config_buffers(pinstance);
    pmcraid_release_cmd_blocks(pinstance, 1024);
    pmcraid_release_host_rrqs(pinstance, (int )pinstance->num_hrrq);
    }
    return (-12);
  } else {
  }
  {
  tmp___3 = pci_alloc_consistent(pinstance->pdev, 24UL, & pinstance->inq_data_baddr);
  pinstance->inq_data = (struct pmcraid_inquiry_data *)tmp___3;
  }
  if ((unsigned long )pinstance->inq_data == (unsigned long )((struct pmcraid_inquiry_data *)0)) {
    {
    printk("\vMaxRAID: couldn\'t allocate DMA memory for INQUIRY\n");
    pmcraid_release_buffers(pinstance);
    }
    return (-12);
  } else {
  }
  {
  tmp___4 = pci_alloc_consistent(pinstance->pdev, 12UL, & pinstance->timestamp_data_baddr);
  pinstance->timestamp_data = (struct pmcraid_timestamp_data *)tmp___4;
  }
  if ((unsigned long )pinstance->timestamp_data == (unsigned long )((struct pmcraid_timestamp_data *)0)) {
    {
    printk("\vMaxRAID: couldn\'t allocate DMA memory for \t\t\t\tset time_stamp \n");
    pmcraid_release_buffers(pinstance);
    }
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_63405;
  ldv_63404:
  {
  cmdp = pinstance->cmd_list[i];
  pmcraid_init_cmdblk(cmdp, i);
  cmdp->drv_inst = pinstance;
  list_add_tail(& cmdp->free_list, & pinstance->free_cmd_pool);
  i = i + 1;
  }
  ldv_63405: ;
  if (i <= 1023) {
    goto ldv_63404;
  } else {
  }
  return (0);
}
}
static void pmcraid_reinit_buffers(struct pmcraid_instance *pinstance )
{
  int i ;
  int buffer_size ;
  {
  buffer_size = 4096;
  i = 0;
  goto ldv_63413;
  ldv_63412:
  {
  memset((void *)pinstance->hrrq_start[i], 0, (size_t )buffer_size);
  pinstance->hrrq_curr[i] = pinstance->hrrq_start[i];
  pinstance->hrrq_end[i] = pinstance->hrrq_start[i] + 1023U;
  pinstance->host_toggle_bit[i] = 1U;
  i = i + 1;
  }
  ldv_63413: ;
  if (i < (int )pinstance->num_hrrq) {
    goto ldv_63412;
  } else {
  }
  return;
}
}
static int pmcraid_init_instance(struct pci_dev *pdev , struct Scsi_Host *host , void *mapped_pci_addr )
{
  struct pmcraid_instance *pinstance ;
  struct pmcraid_chip_details *chip_cfg ;
  struct pmcraid_interrupts *pint_regs ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  atomic_long_t __constr_expr_0 ;
  {
  {
  pinstance = (struct pmcraid_instance *)(& host->hostdata);
  pinstance->host = host;
  pinstance->pdev = pdev;
  pinstance->mapped_dma_addr = mapped_pci_addr;
  chip_cfg = pinstance->chip_cfg;
  pint_regs = & pinstance->int_regs;
  pinstance->ioarrin = mapped_pci_addr + chip_cfg->ioarrin;
  pint_regs->ioa_host_interrupt_reg = mapped_pci_addr + chip_cfg->ioa_host_intr;
  pint_regs->ioa_host_interrupt_clr_reg = mapped_pci_addr + chip_cfg->ioa_host_intr_clr;
  pint_regs->ioa_host_msix_interrupt_reg = mapped_pci_addr + chip_cfg->ioa_host_msix_intr;
  pint_regs->host_ioa_interrupt_reg = mapped_pci_addr + chip_cfg->host_ioa_intr;
  pint_regs->host_ioa_interrupt_clr_reg = mapped_pci_addr + chip_cfg->host_ioa_intr_clr;
  pinstance->mailbox = mapped_pci_addr + chip_cfg->mailbox;
  pinstance->ioa_status = mapped_pci_addr + chip_cfg->ioastatus;
  pint_regs->ioa_host_interrupt_mask_reg = mapped_pci_addr + chip_cfg->ioa_host_mask;
  pint_regs->ioa_host_interrupt_mask_clr_reg = mapped_pci_addr + chip_cfg->ioa_host_mask_clr;
  pint_regs->global_interrupt_mask_reg = mapped_pci_addr + chip_cfg->global_intr_mask;
  pinstance->ioa_reset_attempts = 0U;
  __init_waitqueue_head(& pinstance->reset_wait_q, "&pinstance->reset_wait_q", & __key);
  atomic_set(& pinstance->outstanding_cmds, 0);
  atomic_set(& pinstance->last_message_id, 0);
  atomic_set(& pinstance->expose_resources, 0);
  INIT_LIST_HEAD(& pinstance->free_res_q);
  INIT_LIST_HEAD(& pinstance->used_res_q);
  INIT_LIST_HEAD(& pinstance->free_cmd_pool);
  INIT_LIST_HEAD(& pinstance->pending_cmd_pool);
  spinlock_check(& pinstance->free_pool_lock);
  __raw_spin_lock_init(& pinstance->free_pool_lock.__annonCompField18.rlock, "&(&pinstance->free_pool_lock)->rlock",
                       & __key___0);
  spinlock_check(& pinstance->pending_pool_lock);
  __raw_spin_lock_init(& pinstance->pending_pool_lock.__annonCompField18.rlock, "&(&pinstance->pending_pool_lock)->rlock",
                       & __key___1);
  spinlock_check(& pinstance->resource_lock);
  __raw_spin_lock_init(& pinstance->resource_lock.__annonCompField18.rlock, "&(&pinstance->resource_lock)->rlock",
                       & __key___2);
  __mutex_init(& pinstance->aen_queue_lock, "&pinstance->aen_queue_lock", & __key___3);
  __init_work(& pinstance->worker_q, 0);
  __constr_expr_0.counter = 137438953408L;
  pinstance->worker_q.data = __constr_expr_0;
  lockdep_init_map(& pinstance->worker_q.lockdep_map, "(&pinstance->worker_q)", & __key___4,
                   0);
  INIT_LIST_HEAD(& pinstance->worker_q.entry);
  pinstance->worker_q.func = & pmcraid_worker_function;
  pinstance->current_log_level = (u8 )pmcraid_log_level;
  pinstance->ioa_state = 1U;
  pinstance->reset_cmd = (struct pmcraid_cmd *)0;
  }
  return (0);
}
}
static void pmcraid_shutdown(struct pci_dev *pdev )
{
  struct pmcraid_instance *pinstance ;
  void *tmp ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  pinstance = (struct pmcraid_instance *)tmp;
  pmcraid_reset_bringdown(pinstance);
  }
  return;
}
}
static unsigned short pmcraid_get_minor(void)
{
  int minor ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_find_first_zero_bit_224((unsigned long const *)(& pmcraid_minor), 128UL);
  minor = (int )tmp;
  __set_bit((long )minor, (unsigned long volatile *)(& pmcraid_minor));
  }
  return ((unsigned short )minor);
}
}
static void pmcraid_release_minor(unsigned short minor )
{
  {
  {
  __clear_bit((long )minor, (unsigned long volatile *)(& pmcraid_minor));
  }
  return;
}
}
static int pmcraid_setup_chrdev(struct pmcraid_instance *pinstance )
{
  int minor ;
  int error ;
  unsigned short tmp ;
  {
  {
  tmp = pmcraid_get_minor();
  minor = (int )tmp;
  ldv_cdev_init_225(& pinstance->cdev, & pmcraid_fops);
  pinstance->cdev.owner = & __this_module;
  error = cdev_add(& pinstance->cdev, (pmcraid_major << 20) | (unsigned int )minor,
                   1U);
  }
  if (error != 0) {
    {
    pmcraid_release_minor((int )((unsigned short )minor));
    }
  } else {
    {
    device_create(pmcraid_class, (struct device *)0, (pmcraid_major << 20) | (unsigned int )minor,
                  (void *)0, "%s%u", (char *)"pmcsas", minor);
    }
  }
  return (error);
}
}
static void pmcraid_release_chrdev(struct pmcraid_instance *pinstance )
{
  {
  {
  pmcraid_release_minor((int )((unsigned short )pinstance->cdev.dev));
  device_destroy(pmcraid_class, (pmcraid_major << 20) | (pinstance->cdev.dev & 1048575U));
  ldv_cdev_del_226(& pinstance->cdev);
  }
  return;
}
}
static void pmcraid_remove(struct pci_dev *pdev )
{
  struct pmcraid_instance *pinstance ;
  void *tmp ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  pinstance = (struct pmcraid_instance *)tmp;
  pmcraid_release_chrdev(pinstance);
  ldv_scsi_remove_host_227(pinstance->host);
  scsi_block_requests(pinstance->host);
  pmcraid_shutdown(pdev);
  pmcraid_disable_interrupts(pinstance, 4294967295U);
  flush_work(& pinstance->worker_q);
  pmcraid_kill_tasklets(pinstance);
  pmcraid_unregister_interrupt_handler(pinstance);
  pmcraid_release_buffers(pinstance);
  ldv_iounmap_228((void volatile *)pinstance->mapped_dma_addr);
  pci_release_regions(pdev);
  scsi_host_put(pinstance->host);
  pci_disable_device(pdev);
  }
  return;
}
}
static int pmcraid_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct pmcraid_instance *pinstance ;
  void *tmp ;
  pci_power_t tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  pinstance = (struct pmcraid_instance *)tmp;
  pmcraid_shutdown(pdev);
  pmcraid_disable_interrupts(pinstance, 4294967295U);
  pmcraid_kill_tasklets(pinstance);
  pci_set_drvdata(pinstance->pdev, (void *)pinstance);
  pmcraid_unregister_interrupt_handler(pinstance);
  pci_save_state(pdev);
  pci_disable_device(pdev);
  tmp___0 = pci_choose_state(pdev, state);
  pci_set_power_state(pdev, tmp___0);
  }
  return (0);
}
}
static int pmcraid_resume(struct pci_dev *pdev )
{
  struct pmcraid_instance *pinstance ;
  void *tmp ;
  struct Scsi_Host *host ;
  int rc ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  pinstance = (struct pmcraid_instance *)tmp;
  host = pinstance->host;
  pci_set_power_state(pdev, 0);
  pci_enable_wake(pdev, 0, 0);
  pci_restore_state(pdev);
  rc = pci_enable_device(pdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "resume: Enable device failed\n");
    }
    return (rc);
  } else {
  }
  {
  pci_set_master(pdev);
  tmp___0 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  }
  if (tmp___0 != 0) {
    {
    rc = pci_set_dma_mask(pdev, 4294967295ULL);
    }
  } else {
  }
  if (rc == 0) {
    {
    rc = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
    }
  } else {
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "resume: Failed to set PCI DMA mask\n");
    }
    goto disable_device;
  } else {
  }
  {
  pmcraid_disable_interrupts(pinstance, 4294967295U);
  atomic_set(& pinstance->outstanding_cmds, 0);
  rc = pmcraid_register_interrupt_handler(pinstance);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "resume: couldn\'t register interrupt handlers\n");
    rc = -19;
    }
    goto release_host;
  } else {
  }
  {
  pmcraid_init_tasklets(pinstance);
  pmcraid_enable_interrupts(pinstance, 2617245727U);
  pinstance->ioa_hard_reset = 1U;
  tmp___1 = pmcraid_reset_bringup(pinstance);
  }
  if (tmp___1 != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "couldn\'t initialize IOA\n");
    rc = -19;
    }
    goto release_tasklets;
  } else {
  }
  return (0);
  release_tasklets:
  {
  pmcraid_disable_interrupts(pinstance, 4294967295U);
  pmcraid_kill_tasklets(pinstance);
  pmcraid_unregister_interrupt_handler(pinstance);
  }
  release_host:
  {
  scsi_host_put(host);
  }
  disable_device:
  {
  pci_disable_device(pdev);
  }
  return (rc);
}
}
static void pmcraid_complete_ioa_reset(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  unsigned long flags ;
  {
  {
  pinstance = cmd->drv_inst;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_229((pinstance->host)->host_lock);
  pmcraid_ioa_reset(cmd);
  ldv_spin_unlock_irqrestore_135((pinstance->host)->host_lock, flags);
  scsi_unblock_requests(pinstance->host);
  schedule_work(& pinstance->worker_q);
  }
  return;
}
}
static void pmcraid_set_supported_devs(struct pmcraid_cmd *cmd )
{
  struct pmcraid_ioarcb *ioarcb ;
  void (*cmd_done)(struct pmcraid_cmd * ) ;
  {
  {
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  cmd_done = & pmcraid_complete_ioa_reset;
  pmcraid_reinit_cmdblk(cmd);
  ioarcb->resource_handle = 4294967295U;
  ioarcb->request_type = 1U;
  ioarcb->cdb[0] = 251U;
  ioarcb->cdb[1] = 128U;
  }
  if ((unsigned int )*((unsigned char *)cmd->drv_inst + 12201UL) != 0U) {
    (cmd->drv_inst)->reinit_cfg_table = 0U;
    cmd->release = 1U;
    cmd_done = & pmcraid_reinit_cfgtable_done;
  } else {
  }
  {
  pmcraid_send_cmd(cmd, cmd_done, 30000UL, & pmcraid_timeout_handler);
  }
  return;
}
}
static void pmcraid_set_timestamp(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  struct pmcraid_ioarcb *ioarcb ;
  __be32 time_stamp_len ;
  struct pmcraid_ioadl_desc *ioadl ;
  struct timeval tv ;
  __le64 timestamp ;
  {
  {
  pinstance = cmd->drv_inst;
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  time_stamp_len = 201326592U;
  ioadl = (struct pmcraid_ioadl_desc *)(& ioarcb->add_data.u.ioadl);
  do_gettimeofday(& tv);
  timestamp = (__le64 )(tv.tv_sec * 1000L);
  (pinstance->timestamp_data)->timestamp[0] = (unsigned char )timestamp;
  (pinstance->timestamp_data)->timestamp[1] = (unsigned char )(timestamp >> 8);
  (pinstance->timestamp_data)->timestamp[2] = (unsigned char )(timestamp >> 16);
  (pinstance->timestamp_data)->timestamp[3] = (unsigned char )(timestamp >> 24);
  (pinstance->timestamp_data)->timestamp[4] = (unsigned char )(timestamp >> 32);
  (pinstance->timestamp_data)->timestamp[5] = (unsigned char )(timestamp >> 40);
  pmcraid_reinit_cmdblk(cmd);
  ioarcb->request_type = 0U;
  ioarcb->resource_handle = 4294967295U;
  ioarcb->cdb[0] = 164U;
  ioarcb->cdb[1] = 15U;
  memcpy((void *)(& ioarcb->cdb) + 6U, (void const *)(& time_stamp_len), 4UL);
  ioarcb->ioadl_bus_addr = cmd->ioa_cb_bus_addr + 80ULL;
  ioarcb->ioadl_length = 16U;
  ioarcb->ioarcb_bus_addr = ioarcb->ioarcb_bus_addr & 0xffffffffffffffe0ULL;
  ioarcb->request_flags0 = (__u8 )((unsigned int )ioarcb->request_flags0 | 4U);
  ioarcb->request_flags0 = (__u8 )((unsigned int )ioarcb->request_flags0 | 128U);
  ioarcb->data_transfer_length = 12U;
  ioadl = (struct pmcraid_ioadl_desc *)(& ioarcb->add_data.u.ioadl);
  ioadl->flags = 64U;
  ioadl->address = pinstance->timestamp_data_baddr;
  ioadl->data_len = 12U;
  }
  if ((unsigned int )*((unsigned char *)pinstance + 12201UL) == 0U) {
    {
    pinstance->timestamp_error = 0U;
    pmcraid_send_cmd(cmd, & pmcraid_set_supported_devs, 15000UL, & pmcraid_timeout_handler);
    }
  } else {
    {
    pmcraid_send_cmd(cmd, & pmcraid_return_cmd, 15000UL, & pmcraid_timeout_handler);
    }
    return;
  }
  return;
}
}
static void pmcraid_init_res_table(struct pmcraid_cmd *cmd )
{
  struct pmcraid_instance *pinstance ;
  struct pmcraid_resource_entry *res ;
  struct pmcraid_resource_entry *temp ;
  struct pmcraid_config_table_entry *cfgte ;
  unsigned long lock_flags ;
  int found ;
  int rc ;
  int i ;
  u16 fw_version ;
  struct list_head old_res ;
  __u16 tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  __u16 tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  int tmp___2 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  struct list_head const *__mptr___7 ;
  struct list_head const *__mptr___8 ;
  {
  {
  pinstance = cmd->drv_inst;
  old_res.next = & old_res;
  old_res.prev = & old_res;
  tmp = __fswab16((int )(pinstance->inq_data)->fw_version);
  fw_version = tmp;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_231(& pinstance->resource_lock);
  __mptr = (struct list_head const *)pinstance->used_res_q.next;
  res = (struct pmcraid_resource_entry *)__mptr;
  __mptr___0 = (struct list_head const *)res->queue.next;
  temp = (struct pmcraid_resource_entry *)__mptr___0;
  }
  goto ldv_63507;
  ldv_63506:
  {
  list_move_tail(& res->queue, & old_res);
  res = temp;
  __mptr___1 = (struct list_head const *)temp->queue.next;
  temp = (struct pmcraid_resource_entry *)__mptr___1;
  }
  ldv_63507: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& pinstance->used_res_q)) {
    goto ldv_63506;
  } else {
  }
  i = 0;
  goto ldv_63523;
  ldv_63522:
  {
  tmp___0 = __fswab16((int )(pinstance->inq_data)->fw_version);
  }
  if ((int )tmp___0 <= 2) {
    cfgte = (struct pmcraid_config_table_entry *)(& (pinstance->cfg_table)->__annonCompField111.entries) + (unsigned long )i;
  } else {
    cfgte = (struct pmcraid_config_table_entry *)(& (pinstance->cfg_table)->__annonCompField111.entries_ext) + (unsigned long )i;
  }
  {
  tmp___1 = pmcraid_expose_resource((int )fw_version, cfgte);
  }
  if (tmp___1 == 0) {
    goto ldv_63509;
  } else {
  }
  found = 0;
  __mptr___2 = (struct list_head const *)old_res.next;
  res = (struct pmcraid_resource_entry *)__mptr___2;
  __mptr___3 = (struct list_head const *)res->queue.next;
  temp = (struct pmcraid_resource_entry *)__mptr___3;
  goto ldv_63518;
  ldv_63517:
  {
  rc = memcmp((void const *)(& res->__annonCompField114.cfg_entry.resource_address),
              (void const *)(& cfgte->resource_address), 4UL);
  }
  if (rc == 0) {
    {
    list_move_tail(& res->queue, & pinstance->used_res_q);
    found = 1;
    }
    goto ldv_63516;
  } else {
  }
  res = temp;
  __mptr___4 = (struct list_head const *)temp->queue.next;
  temp = (struct pmcraid_resource_entry *)__mptr___4;
  ldv_63518: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& old_res)) {
    goto ldv_63517;
  } else {
  }
  ldv_63516: ;
  if (found == 0) {
    {
    tmp___2 = list_empty((struct list_head const *)(& pinstance->free_res_q));
    }
    if (tmp___2 != 0) {
      {
      printk("\vMaxRAID: Too many devices attached\n");
      }
      goto ldv_63519;
    } else {
    }
    {
    found = 1;
    __mptr___5 = (struct list_head const *)pinstance->free_res_q.next;
    res = (struct pmcraid_resource_entry *)__mptr___5;
    res->scsi_dev = (struct scsi_device *)0;
    res->change_detected = 1U;
    res->reset_progress = 0U;
    list_move_tail(& res->queue, & pinstance->used_res_q);
    }
  } else {
  }
  if (found != 0) {
    {
    memcpy((void *)(& res->__annonCompField114.cfg_entry), (void const *)cfgte,
             (size_t )pinstance->config_table_entry_size);
    }
    if (pmcraid_debug_log != 0U) {
      {
      printk("\016MaxRAID: New res type:%x, vset:%x, addr:%x:\n", (int )res->__annonCompField114.cfg_entry.resource_type,
             (unsigned int )fw_version <= 2U ? (int )res->__annonCompField114.cfg_entry.unique_flags1 : (int )res->__annonCompField114.cfg_entry.array_id & 255,
             res->__annonCompField114.cfg_entry.resource_address);
      }
    } else {
    }
  } else {
  }
  ldv_63509:
  i = i + 1;
  ldv_63523: ;
  if (i < (int )(pinstance->cfg_table)->num_entries) {
    goto ldv_63522;
  } else {
  }
  ldv_63519:
  __mptr___6 = (struct list_head const *)old_res.next;
  res = (struct pmcraid_resource_entry *)__mptr___6;
  __mptr___7 = (struct list_head const *)res->queue.next;
  temp = (struct pmcraid_resource_entry *)__mptr___7;
  goto ldv_63531;
  ldv_63530: ;
  if ((unsigned long )res->scsi_dev != (unsigned long )((struct scsi_device *)0)) {
    {
    res->change_detected = 2U;
    res->__annonCompField114.cfg_entry.resource_handle = 0U;
    list_move_tail(& res->queue, & pinstance->used_res_q);
    }
  } else {
    {
    list_move_tail(& res->queue, & pinstance->free_res_q);
    }
  }
  res = temp;
  __mptr___8 = (struct list_head const *)temp->queue.next;
  temp = (struct pmcraid_resource_entry *)__mptr___8;
  ldv_63531: ;
  if ((unsigned long )(& res->queue) != (unsigned long )(& old_res)) {
    goto ldv_63530;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_128(& pinstance->resource_lock, lock_flags);
  pmcraid_set_timestamp(cmd);
  }
  return;
}
}
static void pmcraid_querycfg(struct pmcraid_cmd *cmd )
{
  struct pmcraid_ioarcb *ioarcb ;
  struct pmcraid_ioadl_desc *ioadl ;
  struct pmcraid_instance *pinstance ;
  int cfg_table_size ;
  __u16 tmp ;
  {
  {
  ioarcb = & (cmd->ioa_cb)->ioarcb;
  ioadl = (struct pmcraid_ioadl_desc *)(& ioarcb->add_data.u.ioadl);
  pinstance = cmd->drv_inst;
  cfg_table_size = 270532608;
  tmp = __fswab16((int )(pinstance->inq_data)->fw_version);
  }
  if ((int )tmp <= 2) {
    pinstance->config_table_entry_size = 32U;
  } else {
    pinstance->config_table_entry_size = 32U;
  }
  {
  ioarcb->request_type = 1U;
  ioarcb->resource_handle = 4294967295U;
  ioarcb->cdb[0] = 197U;
  memcpy((void *)(& ioarcb->cdb) + 10U, (void const *)(& cfg_table_size), 4UL);
  ioarcb->ioadl_bus_addr = cmd->ioa_cb_bus_addr + 80ULL;
  ioarcb->ioadl_length = 16U;
  ioarcb->ioarcb_bus_addr = ioarcb->ioarcb_bus_addr & 0xffffffffffffffe0ULL;
  ioarcb->request_flags0 = (__u8 )((unsigned int )ioarcb->request_flags0 | 4U);
  ioarcb->data_transfer_length = 8208U;
  ioadl = (struct pmcraid_ioadl_desc *)(& ioarcb->add_data.u.ioadl);
  ioadl->flags = 64U;
  ioadl->address = pinstance->cfg_table_bus_addr;
  ioadl->data_len = 8208U;
  pmcraid_send_cmd(cmd, & pmcraid_init_res_table, 15000UL, & pmcraid_timeout_handler);
  }
  return;
}
}
static int pmcraid_probe(struct pci_dev *pdev , struct pci_device_id const *dev_id )
{
  struct pmcraid_instance *pinstance ;
  struct Scsi_Host *host ;
  void *mapped_pci_addr ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  rc = 0;
  tmp___0 = atomic_read((atomic_t const *)(& pmcraid_adapter_count));
  }
  if (tmp___0 > 1023) {
    {
    tmp = atomic_read((atomic_t const *)(& pmcraid_adapter_count));
    printk("\vMaxRAID: maximum number(%d) of supported adapters reached\n", tmp);
    }
    return (-12);
  } else {
  }
  {
  atomic_inc(& pmcraid_adapter_count);
  rc = pci_enable_device(pdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Cannot enable adapter\n");
    atomic_dec(& pmcraid_adapter_count);
    }
    return (rc);
  } else {
  }
  {
  tmp___1 = atomic_read((atomic_t const *)(& pmcraid_adapter_count));
  _dev_info((struct device const *)(& pdev->dev), "Found new IOA(%x:%x), Total IOA count: %d\n",
            (int )pdev->vendor, (int )pdev->device, tmp___1);
  rc = pci_request_regions(pdev, "PMC MaxRAID");
  }
  if (rc < 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Couldn\'t register memory range of registers\n");
    }
    goto out_disable_device;
  } else {
  }
  {
  mapped_pci_addr = pci_iomap(pdev, 0, 0UL);
  }
  if ((unsigned long )mapped_pci_addr == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "Couldn\'t map PCI registers memory\n");
    rc = -12;
    }
    goto out_release_regions;
  } else {
  }
  {
  pci_set_master(pdev);
  tmp___2 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  }
  if (tmp___2 != 0) {
    {
    rc = pci_set_dma_mask(pdev, 4294967295ULL);
    }
  } else {
  }
  if (rc == 0) {
    {
    rc = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
    }
  } else {
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Failed to set PCI DMA mask\n");
    }
    goto cleanup_nomem;
  } else {
  }
  {
  host = ldv_scsi_host_alloc_233(& pmcraid_host_template, 12208);
  }
  if ((unsigned long )host == (unsigned long )((struct Scsi_Host *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "scsi_host_alloc failed!\n");
    rc = -12;
    }
    goto cleanup_nomem;
  } else {
  }
  {
  host->max_id = 256U;
  host->max_lun = 8ULL;
  host->unique_id = host->host_no;
  host->max_channel = 1U;
  host->max_cmd_len = 16U;
  pinstance = (struct pmcraid_instance *)(& host->hostdata);
  memset((void *)pinstance, 0, 12208UL);
  pinstance->chip_cfg = (struct pmcraid_chip_details *)dev_id->driver_data;
  rc = pmcraid_init_instance(pdev, host, mapped_pci_addr);
  }
  if (rc < 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "failed to initialize adapter instance\n");
    }
    goto out_scsi_host_put;
  } else {
  }
  {
  pci_set_drvdata(pdev, (void *)pinstance);
  rc = pci_save_state(pinstance->pdev);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "Failed to save PCI config space\n");
    }
    goto out_scsi_host_put;
  } else {
  }
  {
  pmcraid_disable_interrupts(pinstance, 4294967295U);
  rc = pmcraid_register_interrupt_handler(pinstance);
  }
  if (rc != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "couldn\'t register interrupt handler\n");
    }
    goto out_scsi_host_put;
  } else {
  }
  {
  pmcraid_init_tasklets(pinstance);
  rc = pmcraid_init_buffers(pinstance);
  }
  if (rc != 0) {
    {
    printk("\vMaxRAID: couldn\'t allocate memory blocks\n");
    }
    goto out_unregister_isr;
  } else {
  }
  {
  pmcraid_reset_type(pinstance);
  pmcraid_enable_interrupts(pinstance, 2617245727U);
  }
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: starting IOA initialization sequence\n");
    }
  } else {
  }
  {
  tmp___3 = pmcraid_reset_bringup(pinstance);
  }
  if (tmp___3 != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "couldn\'t initialize IOA\n");
    rc = 1;
    }
    goto out_release_bufs;
  } else {
  }
  {
  rc = ldv_scsi_add_host_234(pinstance->host, & pdev->dev);
  }
  if (rc != 0) {
    {
    printk("\vMaxRAID: couldn\'t add host into mid-layer: %d\n", rc);
    }
    goto out_release_bufs;
  } else {
  }
  {
  scsi_scan_host(pinstance->host);
  rc = pmcraid_setup_chrdev(pinstance);
  }
  if (rc != 0) {
    {
    printk("\vMaxRAID: couldn\'t create mgmt interface, error: %x\n", rc);
    }
    goto out_remove_host;
  } else {
  }
  {
  atomic_set(& pinstance->expose_resources, 1);
  schedule_work(& pinstance->worker_q);
  }
  return (rc);
  out_remove_host:
  {
  ldv_scsi_remove_host_235(host);
  }
  out_release_bufs:
  {
  pmcraid_release_buffers(pinstance);
  }
  out_unregister_isr:
  {
  pmcraid_kill_tasklets(pinstance);
  pmcraid_unregister_interrupt_handler(pinstance);
  }
  out_scsi_host_put:
  {
  scsi_host_put(host);
  }
  cleanup_nomem:
  {
  ldv_iounmap_236((void volatile *)mapped_pci_addr);
  }
  out_release_regions:
  {
  pci_release_regions(pdev);
  }
  out_disable_device:
  {
  atomic_dec(& pmcraid_adapter_count);
  pci_disable_device(pdev);
  }
  return (-19);
}
}
static struct pci_driver pmcraid_driver =
     {{0, 0}, "PMC MaxRAID", (struct pci_device_id const *)(& pmcraid_pci_table),
    & pmcraid_probe, & pmcraid_remove, & pmcraid_suspend, 0, 0, & pmcraid_resume,
    & pmcraid_shutdown, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}};
static int pmcraid_init(void)
{
  dev_t dev ;
  int error ;
  void *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  if (pmcraid_debug_log != 0U) {
    {
    printk("\016MaxRAID: %s Device Driver version: %s\n", (char *)"PMC MaxRAID", (char *)"1.0.3");
    }
  } else {
  }
  {
  error = ldv_alloc_chrdev_region_237(& dev, 0U, 1024U, "pmcsas");
  }
  if (error != 0) {
    {
    printk("\vMaxRAID: failed to get a major number for adapters\n");
    }
    goto out_init;
  } else {
  }
  {
  pmcraid_major = dev >> 20;
  tmp = ldv_create_class();
  pmcraid_class = (struct class *)tmp;
  tmp___1 = IS_ERR((void const *)pmcraid_class);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = PTR_ERR((void const *)pmcraid_class);
    error = (int )tmp___0;
    printk("\vMaxRAID: failed to register with sysfs, error = %x\n", error);
    }
    goto out_unreg_chrdev;
  } else {
  }
  {
  error = pmcraid_netlink_init();
  }
  if (error != 0) {
    goto out_unreg_chrdev;
  } else {
  }
  {
  error = ldv___pci_register_driver_238(& pmcraid_driver, & __this_module, "pmcraid");
  }
  if (error == 0) {
    goto out_init;
  } else {
  }
  {
  printk("\vMaxRAID: failed to register pmcraid driver, error = %x\n", error);
  ldv_class_destroy_239(pmcraid_class);
  pmcraid_netlink_release();
  }
  out_unreg_chrdev:
  {
  ldv_unregister_chrdev_region_240(pmcraid_major << 20, 1024U);
  }
  out_init: ;
  return (error);
}
}
static void pmcraid_exit(void)
{
  {
  {
  pmcraid_netlink_release();
  ldv_unregister_chrdev_region_241(pmcraid_major << 20, 1024U);
  ldv_pci_unregister_driver_242(& pmcraid_driver);
  ldv_class_destroy_243(pmcraid_class);
  }
  return;
}
}
void ldv_EMGentry_exit_pmcraid_exit_21_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_pmcraid_init_21_11(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_cdev_del(void *arg0 , struct cdev *arg1 ) ;
void ldv_cdev_init(void *arg0 , struct cdev *arg1 , struct file_operations *arg2 ) ;
int ldv_del_timer(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_deregister_10_1(struct file_operations *arg0 ) ;
void ldv_dispatch_deregister_18_1(struct Scsi_Host *arg0 ) ;
void ldv_dispatch_deregister_19_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_factory_17_21_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_15_21_5(void) ;
void ldv_dispatch_instance_deregister_12_1(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_9_3(struct timer_list *arg0 ) ;
void ldv_dispatch_irq_deregister_13_1(int arg0 ) ;
void ldv_dispatch_irq_register_14_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_irq_register_15_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_11_1(struct file_operations *arg0 ) ;
void ldv_dispatch_register_16_2(struct Scsi_Host *arg0 ) ;
void ldv_dispatch_register_20_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_dummy_factory_17_21_6(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_15_21_7(void) ;
void ldv_dummy_resourceless_instance_callback_5_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 ) ;
void ldv_entry_EMGentry_21(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_2_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_instance_thread_2_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_1(void *arg0 ) ;
void ldv_interrupt_interrupt_instance_2(void *arg0 ) ;
int ldv_pci_instance_probe_3_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_3_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_3_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_3_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_3_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_3_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_3_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_3(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
int ldv_scsi_add_host(int arg0 , struct Scsi_Host *arg1 , struct device *arg2 ) ;
struct Scsi_Host *ldv_scsi_host_alloc(struct Scsi_Host *arg0 , struct scsi_host_template *arg1 ,
                                      int arg2 ) ;
void ldv_scsi_host_template_instance_callback_4_17(long (*arg0)(struct file * , unsigned int ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 ) ;
void ldv_scsi_host_template_instance_callback_4_20(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_21(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_22(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_23(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_24(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_25(int (*arg0)(int , struct file * ,
                                                               int ) , int arg1 ,
                                                   struct file *arg2 , int arg3 ) ;
void ldv_scsi_host_template_instance_callback_4_28(long long (*arg0)(struct file * ,
                                                                     long long ,
                                                                     int ) , struct file *arg1 ,
                                                   long long arg2 , int arg3 ) ;
void ldv_scsi_host_template_instance_callback_4_31(int (*arg0)(struct inode * , struct file * ) ,
                                                   struct inode *arg1 , struct file *arg2 ) ;
void ldv_scsi_host_template_instance_callback_4_34(int (*arg0)(struct Scsi_Host * ,
                                                               struct scsi_cmnd * ) ,
                                                   struct Scsi_Host *arg1 , struct scsi_cmnd *arg2 ) ;
void ldv_scsi_host_template_instance_callback_4_35(int (*arg0)(struct scsi_device * ) ,
                                                   struct scsi_device *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_36(int (*arg0)(struct scsi_device * ) ,
                                                   struct scsi_device *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_37(void (*arg0)(struct scsi_device * ) ,
                                                   struct scsi_device *arg1 ) ;
void ldv_scsi_host_template_instance_callback_4_38(long (*arg0)(struct file * , unsigned int ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 ) ;
void ldv_scsi_host_template_instance_callback_4_4(int (*arg0)(struct scsi_device * ,
                                                              int ) , struct scsi_device *arg1 ,
                                                  int arg2 ) ;
int ldv_scsi_host_template_instance_probe_4_10(int (*arg0)(struct Scsi_Host * ) ,
                                               struct Scsi_Host *arg1 ) ;
void ldv_scsi_host_template_instance_release_4_2(int (*arg0)(struct Scsi_Host * ) ,
                                                 struct Scsi_Host *arg1 ) ;
void ldv_scsi_host_template_scsi_host_template_instance_4(void *arg0 ) ;
void ldv_scsi_remove_host(void *arg0 , struct Scsi_Host *arg1 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_7(void *arg0 ) ;
void ldv_timer_dummy_factory_9(void *arg0 ) ;
void ldv_timer_instance_callback_8_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_8(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_21 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
struct ldv_thread ldv_thread_9 ;
void ldv_EMGentry_exit_pmcraid_exit_21_2(void (*arg0)(void) )
{
  {
  {
  pmcraid_exit();
  }
  return;
}
}
int ldv_EMGentry_init_pmcraid_init_21_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = pmcraid_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_20_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_20_pci_driver_pci_driver = arg1;
    ldv_dispatch_register_20_2(ldv_20_pci_driver_pci_driver);
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
  struct cdev *ldv_10_cdev_cdev ;
  struct file_operations *ldv_10_file_operations_file_operations ;
  {
  {
  ldv_10_cdev_cdev = arg1;
  ldv_10_file_operations_file_operations = (struct file_operations *)ldv_10_cdev_cdev->ops;
  ldv_dispatch_deregister_10_1(ldv_10_file_operations_file_operations);
  }
  return;
  return;
}
}
void ldv_cdev_init(void *arg0 , struct cdev *arg1 , struct file_operations *arg2 )
{
  struct cdev *ldv_11_cdev_cdev ;
  struct file_operations *ldv_11_file_operations_file_operations ;
  {
  {
  ldv_11_cdev_cdev = arg1;
  ldv_11_file_operations_file_operations = arg2;
  ldv_11_cdev_cdev->ops = (struct file_operations const *)ldv_11_file_operations_file_operations;
  ldv_dispatch_register_11_1(ldv_11_file_operations_file_operations);
  }
  return;
  return;
}
}
int ldv_del_timer(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_12_timer_list_timer_list ;
  {
  {
  ldv_12_timer_list_timer_list = arg1;
  ldv_dispatch_instance_deregister_12_1(ldv_12_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_deregister_10_1(struct file_operations *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_18_1(struct Scsi_Host *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_19_1(struct pci_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_factory_17_21_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_15_21_5(void)
{
  {
  return;
}
}
void ldv_dispatch_instance_deregister_12_1(struct timer_list *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_register_9_3(struct timer_list *arg0 )
{
  struct ldv_struct_timer_instance_8 *cf_arg_8 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_8 = (struct ldv_struct_timer_instance_8 *)tmp;
  cf_arg_8->arg0 = arg0;
  ldv_timer_timer_instance_8((void *)cf_arg_8);
  }
  return;
}
}
void ldv_dispatch_irq_deregister_13_1(int arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  return;
}
}
void ldv_dispatch_irq_register_14_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_1 *cf_arg_1 ;
  struct ldv_struct_interrupt_instance_1 *cf_arg_2 ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = ldv_xmalloc(40UL);
    cf_arg_1 = (struct ldv_struct_interrupt_instance_1 *)tmp;
    cf_arg_1->arg0 = arg0;
    cf_arg_1->arg1 = arg1;
    cf_arg_1->arg2 = arg2;
    cf_arg_1->arg3 = arg3;
    ldv_interrupt_interrupt_instance_1((void *)cf_arg_1);
    }
  } else {
    {
    tmp___0 = ldv_xmalloc(40UL);
    cf_arg_2 = (struct ldv_struct_interrupt_instance_1 *)tmp___0;
    cf_arg_2->arg0 = arg0;
    cf_arg_2->arg1 = arg1;
    cf_arg_2->arg2 = arg2;
    cf_arg_2->arg3 = arg3;
    ldv_interrupt_interrupt_instance_2((void *)cf_arg_2);
    }
  }
  return;
}
}
void ldv_dispatch_irq_register_15_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_1 *cf_arg_1 ;
  struct ldv_struct_interrupt_instance_1 *cf_arg_2 ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = ldv_xmalloc(40UL);
    cf_arg_1 = (struct ldv_struct_interrupt_instance_1 *)tmp;
    cf_arg_1->arg0 = arg0;
    cf_arg_1->arg1 = arg1;
    cf_arg_1->arg2 = arg2;
    cf_arg_1->arg3 = arg3;
    ldv_interrupt_interrupt_instance_1((void *)cf_arg_1);
    }
  } else {
    {
    tmp___0 = ldv_xmalloc(40UL);
    cf_arg_2 = (struct ldv_struct_interrupt_instance_1 *)tmp___0;
    cf_arg_2->arg0 = arg0;
    cf_arg_2->arg1 = arg1;
    cf_arg_2->arg2 = arg2;
    cf_arg_2->arg3 = arg3;
    ldv_interrupt_interrupt_instance_2((void *)cf_arg_2);
    }
  }
  return;
}
}
void ldv_dispatch_register_11_1(struct file_operations *arg0 )
{
  struct ldv_struct_file_operations_instance_0 *cf_arg_0 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_0 = (struct ldv_struct_file_operations_instance_0 *)tmp;
  cf_arg_0->arg0 = arg0;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  }
  return;
}
}
void ldv_dispatch_register_16_2(struct Scsi_Host *arg0 )
{
  struct ldv_struct_scsi_host_template_instance_4 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_scsi_host_template_instance_4 *)tmp;
  cf_arg_4->arg0 = arg0;
  ldv_scsi_host_template_scsi_host_template_instance_4((void *)cf_arg_4);
  }
  return;
}
}
void ldv_dispatch_register_20_2(struct pci_driver *arg0 )
{
  struct ldv_struct_pci_instance_3 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_pci_instance_3 *)tmp;
  cf_arg_3->arg0 = arg0;
  ldv_pci_pci_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dispatch_register_dummy_factory_17_21_6(void)
{
  struct ldv_struct_EMGentry_21 *cf_arg_9 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_9 = (struct ldv_struct_EMGentry_21 *)tmp;
  ldv_timer_dummy_factory_9((void *)cf_arg_9);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_15_21_7(void)
{
  struct ldv_struct_EMGentry_21 *cf_arg_5 ;
  struct ldv_struct_EMGentry_21 *cf_arg_6 ;
  struct ldv_struct_EMGentry_21 *cf_arg_7 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_EMGentry_21 *)tmp;
  ldv_struct_device_attribute_dummy_resourceless_instance_5((void *)cf_arg_5);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_EMGentry_21 *)tmp___0;
  ldv_struct_device_attribute_dummy_resourceless_instance_6((void *)cf_arg_6);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_7 = (struct ldv_struct_EMGentry_21 *)tmp___1;
  ldv_struct_device_attribute_dummy_resourceless_instance_7((void *)cf_arg_7);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  pmcraid_show_adapter_id(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_9(long (*arg0)(struct device * , struct device_attribute * ,
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
void ldv_dummy_resourceless_instance_callback_6_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  pmcraid_show_drv_version(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_9(long (*arg0)(struct device * , struct device_attribute * ,
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
void ldv_dummy_resourceless_instance_callback_7_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  pmcraid_show_log_level(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_9(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * , unsigned long ) ,
                                                  struct device *arg1 , struct device_attribute *arg2 ,
                                                  char *arg3 , unsigned long arg4 )
{
  {
  {
  pmcraid_store_log_level(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_entry_EMGentry_21(void *arg0 )
{
  void (*ldv_21_exit_pmcraid_exit_default)(void) ;
  int (*ldv_21_init_pmcraid_init_default)(void) ;
  int ldv_21_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_21_ret_default = ldv_EMGentry_init_pmcraid_init_21_11(ldv_21_init_pmcraid_init_default);
  ldv_21_ret_default = ldv_ldv_post_init_244(ldv_21_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_21_ret_default != 0);
    ldv_ldv_check_final_state_245();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_21_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_dummy_resourceless_instance_15_21_7();
      ldv_dispatch_register_dummy_factory_17_21_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_15_21_5();
      ldv_dispatch_deregister_dummy_factory_17_21_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_pmcraid_exit_21_2(ldv_21_exit_pmcraid_exit_default);
    ldv_ldv_check_final_state_246();
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
  ldv_ldv_initialize_247();
  ldv_entry_EMGentry_21((void *)0);
  }
return 0;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  struct file_operations *ldv_0_container_file_operations ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
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
  ldv_0_size_cnt_write_size = (unsigned long )tmp___1;
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
  goto switch_default;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___6;
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
  }
  goto ldv_call_0;
  case_2: ;
  goto ldv_call_0;
  goto ldv_call_0;
  case_3: ;
  goto ldv_main_0;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
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
  tmp = pmcraid_chr_open(arg1, arg2);
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
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_13_line_line ;
  {
  {
  ldv_13_line_line = arg1;
  ldv_dispatch_irq_deregister_13_1(ldv_13_line_line);
  }
  return;
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = pmcraid_isr(arg1, arg2);
  }
  return (tmp);
}
}
enum irqreturn ldv_interrupt_instance_handler_2_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = pmcraid_isr_msix(arg1, arg2);
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
void ldv_interrupt_instance_thread_2_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
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
  enum irqreturn (*ldv_1_callback_handler)(int , void * ) ;
  void *ldv_1_data_data ;
  int ldv_1_line_line ;
  enum irqreturn ldv_1_ret_val_default ;
  enum irqreturn (*ldv_1_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_1 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_1 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_1 *)0)) {
    {
    ldv_1_line_line = data->arg0;
    ldv_1_callback_handler = data->arg1;
    ldv_1_thread_thread = data->arg2;
    ldv_1_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  ldv_1_ret_val_default = ldv_interrupt_instance_handler_1_5(ldv_1_callback_handler,
                                                             ldv_1_line_line, ldv_1_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
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
  } else {
    {
    ldv_assume((unsigned int )ldv_1_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
void ldv_interrupt_interrupt_instance_2(void *arg0 )
{
  enum irqreturn (*ldv_2_callback_handler)(int , void * ) ;
  void *ldv_2_data_data ;
  int ldv_2_line_line ;
  enum irqreturn ldv_2_ret_val_default ;
  enum irqreturn (*ldv_2_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_1 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_1 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_1 *)0)) {
    {
    ldv_2_line_line = data->arg0;
    ldv_2_callback_handler = data->arg1;
    ldv_2_thread_thread = data->arg2;
    ldv_2_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  ldv_2_ret_val_default = ldv_interrupt_instance_handler_2_5(ldv_2_callback_handler,
                                                             ldv_2_line_line, ldv_2_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume((unsigned int )ldv_2_ret_val_default == 2U);
    }
    if ((unsigned long )ldv_2_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                    void * ))0)) {
      {
      ldv_interrupt_instance_thread_2_3(ldv_2_thread_thread, ldv_2_line_line, ldv_2_data_data);
      }
    } else {
    }
  } else {
    {
    ldv_assume((unsigned int )ldv_2_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
int ldv_pci_instance_probe_3_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = pmcraid_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_3_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  pmcraid_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_3_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  pmcraid_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_3_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_3_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  pmcraid_shutdown(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_3_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = pmcraid_suspend(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_pci_instance_suspend_late_3_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
void ldv_pci_pci_instance_3(void *arg0 )
{
  struct pci_driver *ldv_3_container_pci_driver ;
  struct pci_dev *ldv_3_resource_dev ;
  struct pm_message ldv_3_resource_pm_message ;
  struct pci_device_id *ldv_3_resource_struct_pci_device_id_ptr ;
  int ldv_3_ret_default ;
  struct ldv_struct_pci_instance_3 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_pci_instance_3 *)arg0;
  ldv_3_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_instance_3 *)0)) {
    {
    ldv_3_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(2968UL);
  ldv_3_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_3_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_3;
  return;
  ldv_main_3:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_ldv_pre_probe_248();
    ldv_3_ret_default = ldv_pci_instance_probe_3_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_3_container_pci_driver->probe,
                                                    ldv_3_resource_dev, ldv_3_resource_struct_pci_device_id_ptr);
    ldv_3_ret_default = ldv_ldv_post_probe_249(ldv_3_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
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
    ldv_free((void *)ldv_3_resource_dev);
    ldv_free((void *)ldv_3_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_3:
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
  goto ldv_call_3;
  case_2:
  {
  ldv_3_ret_default = ldv_pci_instance_suspend_3_8(ldv_3_container_pci_driver->suspend,
                                                   ldv_3_resource_dev, ldv_3_resource_pm_message);
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  }
  if ((unsigned long )ldv_3_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_3_ret_default = ldv_pci_instance_suspend_late_3_7(ldv_3_container_pci_driver->suspend_late,
                                                          ldv_3_resource_dev, ldv_3_resource_pm_message);
    }
  } else {
  }
  {
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  }
  if ((unsigned long )ldv_3_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_3_6(ldv_3_container_pci_driver->resume_early, ldv_3_resource_dev);
    }
  } else {
  }
  {
  ldv_pci_instance_resume_3_5(ldv_3_container_pci_driver->resume, ldv_3_resource_dev);
  }
  goto ldv_call_3;
  case_3:
  {
  ldv_pci_instance_shutdown_3_3(ldv_3_container_pci_driver->shutdown, ldv_3_resource_dev);
  ldv_pci_instance_release_3_2(ldv_3_container_pci_driver->remove, ldv_3_resource_dev);
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
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_19_pci_driver_pci_driver ;
  {
  {
  ldv_19_pci_driver_pci_driver = arg1;
  ldv_dispatch_deregister_19_1(ldv_19_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_15_callback_handler)(int , void * ) ;
  void *ldv_15_data_data ;
  int ldv_15_line_line ;
  enum irqreturn (*ldv_15_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_15_line_line = (int )arg1;
    ldv_15_callback_handler = arg2;
    ldv_15_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_15_data_data = arg5;
    ldv_dispatch_irq_register_15_2(ldv_15_line_line, ldv_15_callback_handler, ldv_15_thread_thread,
                                   ldv_15_data_data);
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
int ldv_scsi_add_host(int arg0 , struct Scsi_Host *arg1 , struct device *arg2 )
{
  struct Scsi_Host *ldv_16_host_host ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_dispatch_register_16_2(ldv_16_host_host);
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
struct Scsi_Host *ldv_scsi_host_alloc(struct Scsi_Host *arg0 , struct scsi_host_template *arg1 ,
                                      int arg2 )
{
  struct Scsi_Host *ldv_17_host_host ;
  struct scsi_host_template *ldv_17_scsi_host_template_scsi_host_template ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3800UL);
    ldv_17_host_host = (struct Scsi_Host *)tmp;
    ldv_17_scsi_host_template_scsi_host_template = arg1;
    ldv_17_host_host->hostt = ldv_17_scsi_host_template_scsi_host_template;
    }
    return (ldv_17_host_host);
    return (arg0);
  } else {
    return ((struct Scsi_Host *)0);
    return (arg0);
  }
  return (arg0);
}
}
void ldv_scsi_host_template_instance_callback_4_17(long (*arg0)(struct file * , unsigned int ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 )
{
  {
  {
  pmcraid_chr_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_20(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  pmcraid_eh_abort_handler(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_21(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  pmcraid_eh_bus_reset_handler(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_22(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  pmcraid_eh_device_reset_handler(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_23(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  pmcraid_eh_host_reset_handler(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_24(int (*arg0)(struct scsi_cmnd * ) ,
                                                   struct scsi_cmnd *arg1 )
{
  {
  {
  pmcraid_eh_target_reset_handler(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_25(int (*arg0)(int , struct file * ,
                                                               int ) , int arg1 ,
                                                   struct file *arg2 , int arg3 )
{
  {
  {
  pmcraid_chr_fasync(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_28(long long (*arg0)(struct file * ,
                                                                     long long ,
                                                                     int ) , struct file *arg1 ,
                                                   long long arg2 , int arg3 )
{
  {
  {
  noop_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_31(int (*arg0)(struct inode * , struct file * ) ,
                                                   struct inode *arg1 , struct file *arg2 )
{
  {
  {
  pmcraid_chr_open(arg1, arg2);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_34(int (*arg0)(struct Scsi_Host * ,
                                                               struct scsi_cmnd * ) ,
                                                   struct Scsi_Host *arg1 , struct scsi_cmnd *arg2 )
{
  {
  {
  pmcraid_queuecommand(arg1, arg2);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_35(int (*arg0)(struct scsi_device * ) ,
                                                   struct scsi_device *arg1 )
{
  {
  {
  pmcraid_slave_alloc(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_36(int (*arg0)(struct scsi_device * ) ,
                                                   struct scsi_device *arg1 )
{
  {
  {
  pmcraid_slave_configure(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_37(void (*arg0)(struct scsi_device * ) ,
                                                   struct scsi_device *arg1 )
{
  {
  {
  pmcraid_slave_destroy(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_38(long (*arg0)(struct file * , unsigned int ,
                                                                unsigned long ) ,
                                                   struct file *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 )
{
  {
  {
  pmcraid_chr_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_scsi_host_template_instance_callback_4_4(int (*arg0)(struct scsi_device * ,
                                                              int ) , struct scsi_device *arg1 ,
                                                  int arg2 )
{
  {
  {
  pmcraid_change_queue_depth(arg1, arg2);
  }
  return;
}
}
int ldv_scsi_host_template_instance_probe_4_10(int (*arg0)(struct Scsi_Host * ) ,
                                               struct Scsi_Host *arg1 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
void ldv_scsi_host_template_instance_release_4_2(int (*arg0)(struct Scsi_Host * ) ,
                                                 struct Scsi_Host *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_scsi_host_template_scsi_host_template_instance_4(void *arg0 )
{
  int (*ldv_4_callback_change_queue_depth)(struct scsi_device * , int ) ;
  long (*ldv_4_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_4_callback_eh_abort_handler)(struct scsi_cmnd * ) ;
  int (*ldv_4_callback_eh_bus_reset_handler)(struct scsi_cmnd * ) ;
  int (*ldv_4_callback_eh_device_reset_handler)(struct scsi_cmnd * ) ;
  int (*ldv_4_callback_eh_host_reset_handler)(struct scsi_cmnd * ) ;
  int (*ldv_4_callback_eh_target_reset_handler)(struct scsi_cmnd * ) ;
  int (*ldv_4_callback_fasync)(int , struct file * , int ) ;
  long long (*ldv_4_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_4_callback_open)(struct inode * , struct file * ) ;
  int (*ldv_4_callback_queuecommand)(struct Scsi_Host * , struct scsi_cmnd * ) ;
  int (*ldv_4_callback_slave_alloc)(struct scsi_device * ) ;
  int (*ldv_4_callback_slave_configure)(struct scsi_device * ) ;
  void (*ldv_4_callback_slave_destroy)(struct scsi_device * ) ;
  long (*ldv_4_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct Scsi_Host *ldv_4_host_host ;
  struct file *ldv_4_host_struct_file_ptr ;
  struct scsi_cmnd *ldv_4_host_struct_scsi_cmnd_ptr ;
  struct scsi_device *ldv_4_host_struct_scsi_device_ptr ;
  unsigned int ldv_4_ldv_param_17_1_default ;
  unsigned long ldv_4_ldv_param_17_2_default ;
  int ldv_4_ldv_param_25_0_default ;
  int ldv_4_ldv_param_25_2_default ;
  long long ldv_4_ldv_param_28_1_default ;
  int ldv_4_ldv_param_28_2_default ;
  struct inode *ldv_4_ldv_param_31_0_default ;
  unsigned int ldv_4_ldv_param_38_1_default ;
  unsigned long ldv_4_ldv_param_38_2_default ;
  int ldv_4_ldv_param_4_1_default ;
  int ldv_4_ret_default ;
  struct ldv_struct_scsi_host_template_instance_4 *data ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_scsi_host_template_instance_4 *)arg0;
  ldv_4_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_scsi_host_template_instance_4 *)0)) {
    {
    ldv_4_host_host = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_main_4;
  return;
  ldv_main_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_ldv_pre_probe_250();
    }
    if ((unsigned long )(ldv_4_host_host->hostt)->detect != (unsigned long )((int (*)(struct scsi_host_template * ))0)) {
      {
      ldv_4_ret_default = ldv_scsi_host_template_instance_probe_4_10((int (*)(struct Scsi_Host * ))(ldv_4_host_host->hostt)->detect,
                                                                     ldv_4_host_host);
      }
    } else {
    }
    {
    ldv_4_ret_default = ldv_ldv_post_probe_251(ldv_4_ret_default);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
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
    return;
  }
  return;
  ldv_call_4:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    if ((unsigned long )(ldv_4_host_host->hostt)->release != (unsigned long )((int (*)(struct Scsi_Host * ))0)) {
      {
      ldv_scsi_host_template_instance_release_4_2((ldv_4_host_host->hostt)->release,
                                                  ldv_4_host_host);
      }
    } else {
    }
    goto ldv_main_4;
  } else {
    {
    tmp___1 = ldv_undef_int();
    }
    {
    if (tmp___1 == 1) {
      goto case_1;
    } else {
    }
    if (tmp___1 == 2) {
      goto case_2;
    } else {
    }
    if (tmp___1 == 3) {
      goto case_3;
    } else {
    }
    if (tmp___1 == 4) {
      goto case_4;
    } else {
    }
    if (tmp___1 == 5) {
      goto case_5;
    } else {
    }
    if (tmp___1 == 6) {
      goto case_6;
    } else {
    }
    if (tmp___1 == 7) {
      goto case_7;
    } else {
    }
    if (tmp___1 == 8) {
      goto case_8;
    } else {
    }
    if (tmp___1 == 9) {
      goto case_9;
    } else {
    }
    if (tmp___1 == 10) {
      goto case_10;
    } else {
    }
    if (tmp___1 == 11) {
      goto case_11;
    } else {
    }
    if (tmp___1 == 12) {
      goto case_12;
    } else {
    }
    if (tmp___1 == 13) {
      goto case_13;
    } else {
    }
    if (tmp___1 == 14) {
      goto case_14;
    } else {
    }
    if (tmp___1 == 15) {
      goto case_15;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ldv_scsi_host_template_instance_callback_4_38(ldv_4_callback_unlocked_ioctl, ldv_4_host_struct_file_ptr,
                                                  ldv_4_ldv_param_38_1_default, ldv_4_ldv_param_38_2_default);
    }
    goto ldv_64504;
    case_2:
    {
    ldv_scsi_host_template_instance_callback_4_37(ldv_4_callback_slave_destroy, ldv_4_host_struct_scsi_device_ptr);
    }
    goto ldv_64504;
    case_3:
    {
    ldv_scsi_host_template_instance_callback_4_36(ldv_4_callback_slave_configure,
                                                  ldv_4_host_struct_scsi_device_ptr);
    }
    goto ldv_64504;
    case_4:
    {
    ldv_scsi_host_template_instance_callback_4_35(ldv_4_callback_slave_alloc, ldv_4_host_struct_scsi_device_ptr);
    }
    goto ldv_64504;
    case_5:
    {
    ldv_scsi_host_template_instance_callback_4_34(ldv_4_callback_queuecommand, ldv_4_host_host,
                                                  ldv_4_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_64504;
    case_6:
    {
    tmp___2 = ldv_xmalloc(976UL);
    ldv_4_ldv_param_31_0_default = (struct inode *)tmp___2;
    ldv_scsi_host_template_instance_callback_4_31(ldv_4_callback_open, ldv_4_ldv_param_31_0_default,
                                                  ldv_4_host_struct_file_ptr);
    ldv_free((void *)ldv_4_ldv_param_31_0_default);
    }
    goto ldv_64504;
    case_7:
    {
    ldv_scsi_host_template_instance_callback_4_28(ldv_4_callback_llseek, ldv_4_host_struct_file_ptr,
                                                  ldv_4_ldv_param_28_1_default, ldv_4_ldv_param_28_2_default);
    }
    goto ldv_64504;
    case_8:
    {
    ldv_scsi_host_template_instance_callback_4_25(ldv_4_callback_fasync, ldv_4_ldv_param_25_0_default,
                                                  ldv_4_host_struct_file_ptr, ldv_4_ldv_param_25_2_default);
    }
    goto ldv_64504;
    case_9:
    {
    ldv_scsi_host_template_instance_callback_4_24(ldv_4_callback_eh_target_reset_handler,
                                                  ldv_4_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_64504;
    case_10:
    {
    ldv_scsi_host_template_instance_callback_4_23(ldv_4_callback_eh_host_reset_handler,
                                                  ldv_4_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_64504;
    case_11:
    {
    ldv_scsi_host_template_instance_callback_4_22(ldv_4_callback_eh_device_reset_handler,
                                                  ldv_4_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_64504;
    case_12:
    {
    ldv_scsi_host_template_instance_callback_4_21(ldv_4_callback_eh_bus_reset_handler,
                                                  ldv_4_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_64504;
    case_13:
    {
    ldv_scsi_host_template_instance_callback_4_20(ldv_4_callback_eh_abort_handler,
                                                  ldv_4_host_struct_scsi_cmnd_ptr);
    }
    goto ldv_64504;
    case_14:
    {
    ldv_scsi_host_template_instance_callback_4_17(ldv_4_callback_compat_ioctl, ldv_4_host_struct_file_ptr,
                                                  ldv_4_ldv_param_17_1_default, ldv_4_ldv_param_17_2_default);
    }
    goto ldv_64504;
    case_15:
    {
    ldv_scsi_host_template_instance_callback_4_4(ldv_4_callback_change_queue_depth,
                                                 ldv_4_host_struct_scsi_device_ptr,
                                                 ldv_4_ldv_param_4_1_default);
    }
    goto ldv_64504;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_64504: ;
  }
  goto ldv_call_4;
  return;
}
}
void ldv_scsi_remove_host(void *arg0 , struct Scsi_Host *arg1 )
{
  struct Scsi_Host *ldv_18_host_host ;
  {
  {
  ldv_18_host_host = arg1;
  ldv_dispatch_deregister_18_1(ldv_18_host_host);
  }
  return;
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_5(void *arg0 )
{
  long (*ldv_5_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_5_callback_store)(struct device * , struct device_attribute * , char * ,
                               unsigned long ) ;
  struct device_attribute *ldv_5_container_struct_device_attribute ;
  struct device *ldv_5_container_struct_device_ptr ;
  char *ldv_5_ldv_param_3_2_default ;
  char *ldv_5_ldv_param_9_2_default ;
  unsigned long ldv_5_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_5;
  return;
  ldv_call_5:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_5_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_5_ldv_param_9_2_default = (char *)tmp___0;
      }
      if ((unsigned long )ldv_5_callback_store != (unsigned long )((long (*)(struct device * ,
                                                                             struct device_attribute * ,
                                                                             char * ,
                                                                             unsigned long ))0)) {
        {
        ldv_dummy_resourceless_instance_callback_5_9(ldv_5_callback_store, ldv_5_container_struct_device_ptr,
                                                     ldv_5_container_struct_device_attribute,
                                                     ldv_5_ldv_param_9_2_default,
                                                     ldv_5_ldv_param_9_3_default);
        }
      } else {
      }
      {
      ldv_free((void *)ldv_5_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_show, ldv_5_container_struct_device_ptr,
                                                   ldv_5_container_struct_device_attribute,
                                                   ldv_5_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_5_ldv_param_3_2_default);
    }
    goto ldv_call_5;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_6(void *arg0 )
{
  long (*ldv_6_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_6_callback_store)(struct device * , struct device_attribute * , char * ,
                               unsigned long ) ;
  struct device_attribute *ldv_6_container_struct_device_attribute ;
  struct device *ldv_6_container_struct_device_ptr ;
  char *ldv_6_ldv_param_3_2_default ;
  char *ldv_6_ldv_param_9_2_default ;
  unsigned long ldv_6_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_6;
  return;
  ldv_call_6:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_6_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_6_ldv_param_9_2_default = (char *)tmp___0;
      }
      if ((unsigned long )ldv_6_callback_store != (unsigned long )((long (*)(struct device * ,
                                                                             struct device_attribute * ,
                                                                             char * ,
                                                                             unsigned long ))0)) {
        {
        ldv_dummy_resourceless_instance_callback_6_9(ldv_6_callback_store, ldv_6_container_struct_device_ptr,
                                                     ldv_6_container_struct_device_attribute,
                                                     ldv_6_ldv_param_9_2_default,
                                                     ldv_6_ldv_param_9_3_default);
        }
      } else {
      }
      {
      ldv_free((void *)ldv_6_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_show, ldv_6_container_struct_device_ptr,
                                                   ldv_6_container_struct_device_attribute,
                                                   ldv_6_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_6_ldv_param_3_2_default);
    }
    goto ldv_call_6;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_7(void *arg0 )
{
  long (*ldv_7_callback_show)(struct device * , struct device_attribute * , char * ) ;
  long (*ldv_7_callback_store)(struct device * , struct device_attribute * , char * ,
                               unsigned long ) ;
  struct device_attribute *ldv_7_container_struct_device_attribute ;
  struct device *ldv_7_container_struct_device_ptr ;
  char *ldv_7_ldv_param_3_2_default ;
  char *ldv_7_ldv_param_9_2_default ;
  unsigned long ldv_7_ldv_param_9_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_7;
  return;
  ldv_call_7:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_7_ldv_param_3_2_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_7_ldv_param_9_2_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_7_9(ldv_7_callback_store, ldv_7_container_struct_device_ptr,
                                                   ldv_7_container_struct_device_attribute,
                                                   ldv_7_ldv_param_9_2_default, ldv_7_ldv_param_9_3_default);
      ldv_free((void *)ldv_7_ldv_param_9_2_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_show, ldv_7_container_struct_device_ptr,
                                                   ldv_7_container_struct_device_attribute,
                                                   ldv_7_ldv_param_3_2_default);
      }
    }
    {
    ldv_free((void *)ldv_7_ldv_param_3_2_default);
    }
    goto ldv_call_7;
  } else {
    return;
  }
  return;
}
}
void ldv_timer_dummy_factory_9(void *arg0 )
{
  struct timer_list *ldv_9_container_timer_list ;
  {
  {
  ldv_dispatch_instance_register_9_3(ldv_9_container_timer_list);
  }
  return;
  return;
}
}
void ldv_timer_instance_callback_8_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_8(void *arg0 )
{
  struct timer_list *ldv_8_container_timer_list ;
  struct ldv_struct_timer_instance_8 *data ;
  {
  data = (struct ldv_struct_timer_instance_8 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_instance_8 *)0)) {
    {
    ldv_8_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_8_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_8_2(ldv_8_container_timer_list->function, ldv_8_container_timer_list->data);
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
__inline static void atomic_inc(atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_inc(v);
  }
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_dec(v);
  }
  return;
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_usb_dev_atomic_add_return(i, v);
  }
  return (tmp);
}
}
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct page));
  }
  return ((struct page *)tmp);
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
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  }
  return ((struct sk_buff *)tmp);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_127(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_resource_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_128(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_resource_lock_of_pmcraid_instance();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_129(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_free_pool_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_130(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_free_pool_lock_of_pmcraid_instance();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_131(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_free_pool_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_del_timer_133(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_134(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_135(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_host_lock_of_Scsi_Host();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_136(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_138(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_140(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_143(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_pending_pool_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_144(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_pending_pool_lock_of_pmcraid_instance();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_145(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_147(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_149(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_resource_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_152(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_155(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_157(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_159(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_pending_pool_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_del_timer_161(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_162(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_pending_pool_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_164(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_166(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_170(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_init_completion_173(struct completion *x )
{
  {
  {
  ldv_linux_kernel_sched_completion_init_completion_wait_for_completion_of_pmcraid_cmd();
  }
  return;
}
}
static void ldv_wait_for_completion_175(struct completion *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_sched_completion_wait_for_completion_wait_for_completion_of_pmcraid_cmd();
  wait_for_completion(ldv_func_arg1);
  }
  return;
}
}
static void ldv_wait_for_completion_177(struct completion *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_sched_completion_wait_for_completion_wait_for_completion_of_pmcraid_cmd();
  wait_for_completion(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_178(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_180(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_pending_pool_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_183(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_185(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_aen_queue_lock_of_pmcraid_instance(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_186(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_aen_queue_lock_of_pmcraid_instance(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_188(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_wait_for_completion_190(struct completion *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_sched_completion_wait_for_completion_wait_for_completion_of_pmcraid_cmd();
  wait_for_completion(ldv_func_arg1);
  }
  return;
}
}
static unsigned long ldv_wait_for_completion_timeout_191(struct completion *ldv_func_arg1 ,
                                                         unsigned long ldv_func_arg2 )
{
  unsigned long tmp ;
  {
  {
  ldv_linux_kernel_sched_completion_wait_for_completion_wait_for_completion_of_pmcraid_cmd();
  tmp = wait_for_completion_timeout(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_192(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_wait_for_completion_194(struct completion *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_sched_completion_wait_for_completion_wait_for_completion_of_pmcraid_cmd();
  wait_for_completion(ldv_func_arg1);
  }
  return;
}
}
static unsigned long ldv_wait_for_completion_timeout_195(struct completion *ldv_func_arg1 ,
                                                         unsigned long ldv_func_arg2 )
{
  unsigned long tmp ;
  {
  {
  ldv_linux_kernel_sched_completion_wait_for_completion_wait_for_completion_of_pmcraid_cmd();
  tmp = wait_for_completion_timeout(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_196(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_198(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_200(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_resource_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_201(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_204(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_resource_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_207(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_resource_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_209(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lockp();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_210(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lockp();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_211(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_pending_pool_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_del_timer_213(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_214(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_216(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lockp();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_irq_218(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
__inline static int ldv_request_irq_219(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___4 ldv_func_res ;
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
static void ldv_free_irq_220(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
__inline static int ldv_request_irq_221(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___5 ldv_func_res ;
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
static void *ldv_kmem_cache_alloc_222(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(328UL);
  }
  return (tmp);
}
}
static void *ldv_dma_pool_alloc_223(struct dma_pool *ldv_func_arg1 , gfp_t flags ,
                                    dma_addr_t *ldv_func_arg3 )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(1472UL);
  }
  return (tmp);
}
}
static unsigned long ldv_find_first_zero_bit_224(unsigned long const *addr , unsigned long size )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_first_bit(size);
  }
  return (tmp);
}
}
static void ldv_cdev_init_225(struct cdev *ldv_func_arg1 , struct file_operations const *ldv_func_arg2 )
{
  {
  {
  cdev_init(ldv_func_arg1, ldv_func_arg2);
  ldv_cdev_init((void *)0, ldv_func_arg1, (struct file_operations *)ldv_func_arg2);
  }
  return;
}
}
static void ldv_cdev_del_226(struct cdev *ldv_func_arg1 )
{
  {
  {
  cdev_del(ldv_func_arg1);
  ldv_cdev_del((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_scsi_remove_host_227(struct Scsi_Host *ldv_func_arg1 )
{
  {
  {
  scsi_remove_host(ldv_func_arg1);
  ldv_scsi_remove_host((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_iounmap_228(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_229(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_231(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_resource_lock_of_pmcraid_instance();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static struct Scsi_Host *ldv_scsi_host_alloc_233(struct scsi_host_template *ldv_func_arg1 ,
                                                 int ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  struct Scsi_Host *tmp ;
  struct Scsi_Host *tmp___0 ;
  {
  {
  tmp = scsi_host_alloc(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_scsi_host_alloc(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static int ldv_scsi_add_host_234(struct Scsi_Host *host , struct device *dev )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = scsi_add_host(host, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_scsi_add_host(ldv_func_res, host, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_scsi_remove_host_235(struct Scsi_Host *ldv_func_arg1 )
{
  {
  {
  scsi_remove_host(ldv_func_arg1);
  ldv_scsi_remove_host((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_iounmap_236(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static int ldv_alloc_chrdev_region_237(dev_t *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                       unsigned int ldv_func_arg3 , char const *ldv_func_arg4 )
{
  ldv_func_ret_type___8 ldv_func_res ;
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
static int ldv___pci_register_driver_238(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 )
{
  ldv_func_ret_type___9 ldv_func_res ;
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
static void ldv_class_destroy_239(struct class *cls )
{
  {
  {
  ldv_linux_drivers_base_class_destroy_class(cls);
  ldv_linux_usb_gadget_destroy_class(cls);
  }
  return;
}
}
static void ldv_unregister_chrdev_region_240(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 )
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
static void ldv_unregister_chrdev_region_241(dev_t ldv_func_arg1 , unsigned int ldv_func_arg2 )
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
static void ldv_pci_unregister_driver_242(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_class_destroy_243(struct class *cls )
{
  {
  {
  ldv_linux_drivers_base_class_destroy_class(cls);
  ldv_linux_usb_gadget_destroy_class(cls);
  }
  return;
}
}
static int ldv_ldv_post_init_244(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_245(void)
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
static void ldv_ldv_check_final_state_246(void)
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
static void ldv_ldv_initialize_247(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
static void ldv_ldv_pre_probe_248(void)
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
static int ldv_ldv_post_probe_249(int retval )
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
static void ldv_ldv_pre_probe_250(void)
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
static int ldv_ldv_post_probe_251(int retval )
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
struct gendisk *ldv_linux_block_genhd_alloc_disk(void)
{
  struct gendisk *res ;
  void *tmp ;
  {
  {
  tmp = ldv_malloc(sizeof(struct gendisk));
  res = (struct gendisk *)tmp;
  ldv_assert_linux_block_genhd__double_allocation(ldv_linux_block_genhd_disk_state == 0);
  }
  if ((unsigned long )res != (unsigned long )((struct gendisk *)0)) {
    ldv_linux_block_genhd_disk_state = 1;
    return (res);
  } else {
  }
  return (res);
}
}
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
struct request_queue *ldv_linux_block_queue_request_queue(void)
{
  struct request_queue *res ;
  void *tmp ;
  {
  {
  tmp = ldv_malloc(sizeof(struct request_queue));
  res = (struct request_queue *)tmp;
  ldv_assert_linux_block_queue__double_allocation(ldv_linux_block_queue_queue_state == 0);
  }
  if ((unsigned long )res != (unsigned long )((struct request_queue *)0)) {
    ldv_linux_block_queue_queue_state = 1;
    return (res);
  } else {
  }
  return (res);
}
}
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
struct request *ldv_linux_block_request_blk_get_request(gfp_t mask )
{
  struct request *res ;
  void *tmp ;
  {
  {
  ldv_assert_linux_block_request__double_get(ldv_linux_block_request_blk_rq == 0);
  tmp = ldv_malloc(sizeof(struct request));
  res = (struct request *)tmp;
  }
  if ((mask == 16U || mask == 208U) || mask == 16U) {
    {
    ldv_assume((unsigned long )res != (unsigned long )((struct request *)0));
    }
  } else {
  }
  if ((unsigned long )res != (unsigned long )((struct request *)0)) {
    ldv_linux_block_request_blk_rq = 1;
  } else {
  }
  return (res);
}
}
struct request *ldv_linux_block_request_blk_make_request(gfp_t mask )
{
  struct request *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  ldv_assert_linux_block_request__double_get(ldv_linux_block_request_blk_rq == 0);
  tmp = ldv_malloc(sizeof(struct request));
  res = (struct request *)tmp;
  ldv_assume((unsigned long )res != (unsigned long )((struct request *)0));
  tmp___0 = ldv_is_err((void const *)res);
  }
  if (tmp___0 == 0L) {
    ldv_linux_block_request_blk_rq = 1;
  } else {
  }
  return (res);
}
}
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_aen_queue_lock_of_pmcraid_instance ;
void ldv_linux_kernel_locking_mutex_mutex_lock_aen_queue_lock_of_pmcraid_instance(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_aen_queue_lock_of_pmcraid_instance);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_aen_queue_lock_of_pmcraid_instance = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_aen_queue_lock_of_pmcraid_instance(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_aen_queue_lock_of_pmcraid_instance);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_aen_queue_lock_of_pmcraid_instance = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_aen_queue_lock_of_pmcraid_instance(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_aen_queue_lock_of_pmcraid_instance) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_aen_queue_lock_of_pmcraid_instance(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_aen_queue_lock_of_pmcraid_instance);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_aen_queue_lock_of_pmcraid_instance(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_aen_queue_lock_of_pmcraid_instance = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_aen_queue_lock_of_pmcraid_instance(atomic_t *cnt ,
                                                                                                struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_aen_queue_lock_of_pmcraid_instance(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_aen_queue_lock_of_pmcraid_instance(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_aen_queue_lock_of_pmcraid_instance);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_aen_queue_lock_of_pmcraid_instance = 0;
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
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_aen_queue_lock_of_pmcraid_instance = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_aen_queue_lock_of_pmcraid_instance);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 2);
  ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock__xmit_lock_of_netdev_queue(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked__xmit_lock_of_netdev_queue();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended__xmit_lock_of_netdev_queue(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock__xmit_lock_of_netdev_queue(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 2);
  ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_addr_list_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_addr_list_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_addr_list_lock_of_net_device(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_addr_list_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
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
static int ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_free_pool_lock_of_pmcraid_instance(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 1);
  ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_free_pool_lock_of_pmcraid_instance(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 2);
  ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_free_pool_lock_of_pmcraid_instance(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_free_pool_lock_of_pmcraid_instance(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_free_pool_lock_of_pmcraid_instance(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_free_pool_lock_of_pmcraid_instance(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_free_pool_lock_of_pmcraid_instance();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_free_pool_lock_of_pmcraid_instance(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_free_pool_lock_of_pmcraid_instance(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_host_lock_of_Scsi_Host(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_host_lock_of_Scsi_Host(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 2);
  ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_host_lock_of_Scsi_Host(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_host_lock_of_Scsi_Host(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_host_lock_of_Scsi_Host(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_host_lock_of_Scsi_Host(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_host_lock_of_Scsi_Host();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_host_lock_of_Scsi_Host(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_host_lock_of_Scsi_Host(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_lockp = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lockp(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lockp == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lockp == 1);
  ldv_linux_kernel_locking_spinlock_spin_lockp = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lockp(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lockp == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lockp == 2);
  ldv_linux_kernel_locking_spinlock_spin_lockp = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lockp(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lockp == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lockp == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lockp = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lockp(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lockp == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lockp == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lockp(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lockp == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lockp(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lockp();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lockp(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lockp(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lockp == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lockp == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lockp = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_pending_pool_lock_of_pmcraid_instance(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 1);
  ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_pending_pool_lock_of_pmcraid_instance(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 2);
  ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_pending_pool_lock_of_pmcraid_instance(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_pending_pool_lock_of_pmcraid_instance(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_pending_pool_lock_of_pmcraid_instance(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_pending_pool_lock_of_pmcraid_instance(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_pending_pool_lock_of_pmcraid_instance();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_pending_pool_lock_of_pmcraid_instance(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_pending_pool_lock_of_pmcraid_instance(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_resource_lock_of_pmcraid_instance(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 1);
  ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_resource_lock_of_pmcraid_instance(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 2);
  ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_resource_lock_of_pmcraid_instance(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_resource_lock_of_pmcraid_instance(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_resource_lock_of_pmcraid_instance(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_resource_lock_of_pmcraid_instance(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_resource_lock_of_pmcraid_instance();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_resource_lock_of_pmcraid_instance(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_resource_lock_of_pmcraid_instance(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_slock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_slock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_slock_of_NOT_ARG_SIGN(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_slock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 2);
  ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_tx_global_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_tx_global_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_tx_global_lock_of_net_device(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_tx_global_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 2;
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
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lockp == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_free_pool_lock_of_pmcraid_instance == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_host_lock_of_Scsi_Host == 2) {
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
  if (ldv_linux_kernel_locking_spinlock_spin_lockp == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_pending_pool_lock_of_pmcraid_instance == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_resource_lock_of_pmcraid_instance == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_assert_linux_kernel_sched_completion__double_init(int expr ) ;
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr ) ;
static int ldv_linux_kernel_sched_completion_completion_wait_for_completion_of_pmcraid_cmd = 0;
void ldv_linux_kernel_sched_completion_init_completion_wait_for_completion_of_pmcraid_cmd(void)
{
  {
  ldv_linux_kernel_sched_completion_completion_wait_for_completion_of_pmcraid_cmd = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro_wait_for_completion_of_pmcraid_cmd(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion_wait_for_completion_of_pmcraid_cmd != 0);
  ldv_linux_kernel_sched_completion_completion_wait_for_completion_of_pmcraid_cmd = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion_wait_for_completion_of_pmcraid_cmd(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion_wait_for_completion_of_pmcraid_cmd != 0);
  ldv_linux_kernel_sched_completion_completion_wait_for_completion_of_pmcraid_cmd = 2;
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
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __genl_register_family(struct genl_family *arg0) {
  return __VERIFIER_nondet_int();
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
int __pci_enable_wake(struct pci_dev *arg0, pci_power_t arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
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
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int alloc_chrdev_region(dev_t *arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
void blk_queue_max_hw_sectors(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_rq_timeout(struct request_queue *arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
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
void complete(struct completion *arg0) {
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3, int arg4) {
  return;
}
void debug_dma_unmap_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
struct device *device_create(struct class *arg0, struct device *arg1, dev_t arg2, void *arg3, const char *arg4, ...) {
  return ldv_malloc(sizeof(struct device));
}
void device_destroy(struct class *arg0, dev_t arg1) {
  return;
}
struct dma_pool *dma_pool_create(const char *arg0, struct device *arg1, size_t arg2, size_t arg3, size_t arg4) {
  return ldv_malloc(0UL);
}
void dma_pool_destroy(struct dma_pool *arg0) {
  return;
}
void dma_pool_free(struct dma_pool *arg0, void *arg1, dma_addr_t arg2) {
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
void do_gettimeofday(struct timeval *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int fasync_helper(int arg0, struct file *arg1, int arg2, struct fasync_struct **arg3) {
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
int __VERIFIER_nondet_int(void);
int genl_unregister_family(struct genl_family *arg0) {
  return __VERIFIER_nondet_int();
}
void *genlmsg_put(struct sk_buff *arg0, u32 arg1, u32 arg2, struct genl_family *arg3, int arg4, u8 arg5) {
  return ldv_malloc(0UL);
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
void kfree_skb(struct sk_buff *arg0) {
  return;
}
struct kmem_cache *kmem_cache_create(const char *arg0, size_t arg1, size_t arg2, unsigned long arg3, void (*arg4)(void *)) {
  return ldv_malloc(0UL);
}
void kmem_cache_destroy(struct kmem_cache *arg0) {
  return;
}
void kmem_cache_free(struct kmem_cache *arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtou8(const char *arg0, unsigned int arg1, u8 *arg2) {
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
int __VERIFIER_nondet_int(void);
int netlink_broadcast(struct sock *arg0, struct sk_buff *arg1, __u32 arg2, __u32 arg3, gfp_t arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int nla_put(struct sk_buff *arg0, int arg1, int arg2, const void *arg3) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
loff_t noop_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
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
int pci_enable_msix_range(struct pci_dev *arg0, struct msix_entry *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *pci_iomap(struct pci_dev *arg0, int arg1, unsigned long arg2) {
  return ldv_malloc(arg2);
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
void scmd_printk(const char *arg0, const struct scsi_cmnd *arg1, const char *arg2, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_add_device(struct Scsi_Host *arg0, uint arg1, uint arg2, u64 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
void scsi_block_requests(struct Scsi_Host *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_change_queue_depth(struct scsi_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void scsi_cmd_get_serial(struct Scsi_Host *arg0, struct scsi_cmnd *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_device_get(struct scsi_device *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_device_put(struct scsi_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_dma_map(struct scsi_cmnd *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_dma_unmap(struct scsi_cmnd *arg0) {
  return;
}
struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *arg0, int arg1) {
  return ldv_malloc(sizeof(struct Scsi_Host));
}
void scsi_host_put(struct Scsi_Host *arg0) {
  return;
}
void scsi_remove_device(struct scsi_device *arg0) {
  return;
}
void scsi_remove_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_report_bus_reset(struct Scsi_Host *arg0, int arg1) {
  return;
}
void scsi_scan_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_unblock_requests(struct Scsi_Host *arg0) {
  return;
}
void sdev_prefix_printk(const char *arg0, const struct scsi_device *arg1, const char *arg2, const char *arg3, ...) {
  return;
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1) {
  return;
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void unregister_chrdev_region(dev_t arg0, unsigned int arg1) {
  return;
}
void wait_for_completion(struct completion *arg0) {
  return;
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
