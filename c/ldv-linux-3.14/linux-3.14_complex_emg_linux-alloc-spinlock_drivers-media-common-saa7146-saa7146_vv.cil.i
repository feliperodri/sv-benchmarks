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
struct device;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
};
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_41 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_40 {
   struct __anonstruct____missing_field_name_41 __annonCompField22 ;
};
struct lockref {
   union __anonunion____missing_field_name_40 __annonCompField23 ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct____missing_field_name_43 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_42 {
   struct __anonstruct____missing_field_name_43 __annonCompField24 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_42 __annonCompField25 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_44 {
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
   union __anonunion_d_u_44 d_u ;
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
struct __anonstruct_nodemask_t_45 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_45 nodemask_t;
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
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
struct pci_dev;
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
struct pci_bus;
struct __anonstruct_mm_context_t_112 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_112 mm_context_t;
struct device_node;
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
struct __anonstruct_kprojid_t_139 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_139 kprojid_t;
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
union __anonunion____missing_field_name_140 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_140 __annonCompField37 ;
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
union __anonunion_arg_142 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_141 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_142 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_141 read_descriptor_t;
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
union __anonunion____missing_field_name_143 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_144 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
union __anonunion____missing_field_name_145 {
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
   union __anonunion____missing_field_name_143 __annonCompField38 ;
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
   union __anonunion____missing_field_name_144 __annonCompField39 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_145 __annonCompField40 ;
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
union __anonunion_f_u_146 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_146 f_u ;
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
struct __anonstruct_afs_148 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_147 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_148 afs ;
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
   union __anonunion_fl_u_147 fl_u ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
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
union __anonunion____missing_field_name_152 {
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
   union __anonunion____missing_field_name_152 __annonCompField41 ;
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
struct __anonstruct____missing_field_name_155 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_156 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_154 {
   struct __anonstruct____missing_field_name_155 __annonCompField43 ;
   struct __anonstruct____missing_field_name_156 __annonCompField44 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_154 __annonCompField45 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion____missing_field_name_157 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_159 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_163 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_162 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_163 __annonCompField48 ;
   int units ;
};
struct __anonstruct____missing_field_name_161 {
   union __anonunion____missing_field_name_162 __annonCompField49 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_160 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_161 __annonCompField50 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_158 {
   union __anonunion____missing_field_name_159 __annonCompField47 ;
   union __anonunion____missing_field_name_160 __annonCompField51 ;
};
struct __anonstruct____missing_field_name_165 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_164 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_165 __annonCompField53 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_166 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_157 __annonCompField46 ;
   struct __anonstruct____missing_field_name_158 __annonCompField52 ;
   union __anonunion____missing_field_name_164 __annonCompField54 ;
   union __anonunion____missing_field_name_166 __annonCompField55 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_168 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_167 {
   struct __anonstruct_linear_168 linear ;
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
   union __anonunion_shared_167 shared ;
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
struct __anonstruct____missing_field_name_170 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_171 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_169 {
   struct __anonstruct____missing_field_name_170 __annonCompField56 ;
   struct __anonstruct____missing_field_name_171 __annonCompField57 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_169 __annonCompField58 ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct nsproxy;
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
enum v4l2_field {
    V4L2_FIELD_ANY = 0,
    V4L2_FIELD_NONE = 1,
    V4L2_FIELD_TOP = 2,
    V4L2_FIELD_BOTTOM = 3,
    V4L2_FIELD_INTERLACED = 4,
    V4L2_FIELD_SEQ_TB = 5,
    V4L2_FIELD_SEQ_BT = 6,
    V4L2_FIELD_ALTERNATE = 7,
    V4L2_FIELD_INTERLACED_TB = 8,
    V4L2_FIELD_INTERLACED_BT = 9
} ;
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
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3,
    V4L2_MEMORY_DMABUF = 4
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
union __anonunion____missing_field_name_177 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_177 __annonCompField62 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_178 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_178 __annonCompField63 ;
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
union __anonunion_m_179 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_179 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_180 {
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
   union __anonunion_m_180 m ;
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
union __anonunion____missing_field_name_181 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_181 __annonCompField64 ;
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
union __anonunion____missing_field_name_182 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion____missing_field_name_182 __annonCompField65 ;
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
union __anonunion____missing_field_name_183 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_183 __annonCompField66 ;
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
union __anonunion____missing_field_name_184 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_184 __annonCompField67 ;
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
struct __anonstruct_raw_186 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_185 {
   struct __anonstruct_raw_186 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_185 __annonCompField68 ;
};
struct __anonstruct_stop_188 {
   __u64 pts ;
};
struct __anonstruct_start_189 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_190 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_187 {
   struct __anonstruct_stop_188 stop ;
   struct __anonstruct_start_189 start ;
   struct __anonstruct_raw_190 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_187 __annonCompField69 ;
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
union __anonunion_fmt_192 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_192 fmt ;
};
union __anonunion_parm_193 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_193 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_196 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_196 __annonCompField72 ;
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
struct __anonstruct_v4l_202 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_203 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_204 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_201 {
   struct __anonstruct_v4l_202 v4l ;
   struct __anonstruct_fb_203 fb ;
   struct __anonstruct_alsa_204 alsa ;
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
   union __anonunion_info_201 info ;
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
struct __anonstruct_sigset_t_206 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_206 sigset_t;
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
struct __anonstruct__kill_208 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_209 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_210 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_211 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_212 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_213 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_214 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_207 {
   int _pad[28U] ;
   struct __anonstruct__kill_208 _kill ;
   struct __anonstruct__timer_209 _timer ;
   struct __anonstruct__rt_210 _rt ;
   struct __anonstruct__sigchld_211 _sigchld ;
   struct __anonstruct__sigfault_212 _sigfault ;
   struct __anonstruct__sigpoll_213 _sigpoll ;
   struct __anonstruct__sigsys_214 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_207 _sifields ;
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
union __anonunion____missing_field_name_217 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_218 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_220 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_219 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_220 __annonCompField76 ;
};
union __anonunion_type_data_221 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_223 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_222 {
   union __anonunion_payload_223 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_217 __annonCompField74 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_218 __annonCompField75 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_219 __annonCompField77 ;
   union __anonunion_type_data_221 type_data ;
   union __anonunion____missing_field_name_222 __annonCompField78 ;
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
struct __anonstruct_of_226 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_227 {
   char const *name ;
};
struct __anonstruct_i2c_228 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_229 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_225 {
   struct __anonstruct_of_226 of ;
   struct __anonstruct_device_name_227 device_name ;
   struct __anonstruct_i2c_228 i2c ;
   struct __anonstruct_custom_229 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_225 match ;
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
struct __anonstruct_pad_230 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_230 *pad ;
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
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion____missing_field_name_231 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion____missing_field_name_232 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_233 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion____missing_field_name_234 {
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
   union __anonunion____missing_field_name_231 __annonCompField80 ;
   union __anonunion____missing_field_name_232 __annonCompField81 ;
   unsigned long flags ;
   union __anonunion_cur_233 cur ;
   union __anonunion____missing_field_name_234 __annonCompField82 ;
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
struct saa7146_dev;
struct saa7146_extension;
struct saa7146_vv;
struct saa7146_pgtable {
   unsigned int size ;
   __le32 *cpu ;
   dma_addr_t dma ;
   unsigned long offset ;
   struct scatterlist *slist ;
   int nents ;
};
struct saa7146_pci_extension_data {
   struct saa7146_extension *ext ;
   void *ext_priv ;
};
struct saa7146_extension {
   char name[32U] ;
   int flags ;
   struct module *module ;
   struct pci_driver driver ;
   struct pci_device_id *pci_tbl ;
   int (*probe)(struct saa7146_dev * ) ;
   int (*attach)(struct saa7146_dev * , struct saa7146_pci_extension_data * ) ;
   int (*detach)(struct saa7146_dev * ) ;
   u32 irq_mask ;
   void (*irq_func)(struct saa7146_dev * , u32 * ) ;
};
struct saa7146_dma {
   dma_addr_t dma_handle ;
   __le32 *cpu_addr ;
};
struct saa7146_ext_vv;
struct saa7146_dev {
   struct module *module ;
   struct v4l2_device v4l2_dev ;
   struct v4l2_ctrl_handler ctrl_handler ;
   spinlock_t slock ;
   struct mutex v4l2_lock ;
   unsigned char *mem ;
   u32 revision ;
   char name[32U] ;
   struct pci_dev *pci ;
   u32 int_todo ;
   spinlock_t int_slock ;
   struct saa7146_extension *ext ;
   void *ext_priv ;
   struct saa7146_ext_vv *ext_vv_data ;
   struct saa7146_vv *vv_data ;
   void (*vv_callback)(struct saa7146_dev * , unsigned long ) ;
   struct mutex i2c_lock ;
   u32 i2c_bitrate ;
   struct saa7146_dma d_i2c ;
   wait_queue_head_t i2c_wq ;
   int i2c_op ;
   struct saa7146_dma d_rps0 ;
   struct saa7146_dma d_rps1 ;
};
struct saa7146_format;
struct videobuf_buffer;
struct videobuf_queue;
struct videobuf_mapping {
   unsigned int count ;
   struct videobuf_queue *q ;
};
enum videobuf_state {
    VIDEOBUF_NEEDS_INIT = 0,
    VIDEOBUF_PREPARED = 1,
    VIDEOBUF_QUEUED = 2,
    VIDEOBUF_ACTIVE = 3,
    VIDEOBUF_DONE = 4,
    VIDEOBUF_ERROR = 5,
    VIDEOBUF_IDLE = 6
} ;
struct videobuf_buffer {
   unsigned int i ;
   u32 magic ;
   unsigned int width ;
   unsigned int height ;
   unsigned int bytesperline ;
   unsigned long size ;
   enum v4l2_field field ;
   enum videobuf_state state ;
   struct list_head stream ;
   struct list_head queue ;
   wait_queue_head_t done ;
   unsigned int field_count ;
   struct timeval ts ;
   enum v4l2_memory memory ;
   size_t bsize ;
   size_t boff ;
   unsigned long baddr ;
   struct videobuf_mapping *map ;
   int privsize ;
   void *priv ;
};
struct videobuf_queue_ops {
   int (*buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
   int (*buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * , enum v4l2_field ) ;
   void (*buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   void (*buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
};
struct videobuf_qtype_ops {
   u32 magic ;
   struct videobuf_buffer *(*alloc_vb)(size_t ) ;
   void *(*vaddr)(struct videobuf_buffer * ) ;
   int (*iolock)(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
   int (*sync)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   int (*mmap_mapper)(struct videobuf_queue * , struct videobuf_buffer * , struct vm_area_struct * ) ;
};
struct videobuf_queue {
   struct mutex vb_lock ;
   struct mutex *ext_lock ;
   spinlock_t *irqlock ;
   struct device *dev ;
   wait_queue_head_t wait ;
   enum v4l2_buf_type type ;
   unsigned int msize ;
   enum v4l2_field field ;
   enum v4l2_field last ;
   struct videobuf_buffer *bufs[32U] ;
   struct videobuf_queue_ops const *ops ;
   struct videobuf_qtype_ops *int_ops ;
   unsigned int streaming : 1 ;
   unsigned int reading : 1 ;
   struct list_head stream ;
   unsigned int read_off ;
   struct videobuf_buffer *read_buf ;
   void *priv_data ;
};
struct videobuf_dmabuf {
   u32 magic ;
   int offset ;
   size_t size ;
   struct page **pages ;
   void *vaddr ;
   dma_addr_t bus_addr ;
   struct scatterlist *sglist ;
   int sglen ;
   int nr_pages ;
   int direction ;
};
struct saa7146_format {
   char *name ;
   u32 pixelformat ;
   u32 trans ;
   u8 depth ;
   u8 flags ;
   u8 swap ;
};
struct saa7146_standard {
   char *name ;
   v4l2_std_id id ;
   int v_offset ;
   int v_field ;
   int h_offset ;
   int h_pixels ;
   int v_max_out ;
   int h_max_out ;
};
struct saa7146_buf {
   struct videobuf_buffer vb ;
   struct v4l2_pix_format *fmt ;
   int (*activate)(struct saa7146_dev * , struct saa7146_buf * , struct saa7146_buf * ) ;
   struct saa7146_pgtable pt[3U] ;
};
struct saa7146_dmaqueue {
   struct saa7146_dev *dev ;
   struct saa7146_buf *curr ;
   struct list_head queue ;
   struct timer_list timeout ;
};
struct saa7146_fh;
struct saa7146_overlay {
   struct saa7146_fh *fh ;
   struct v4l2_window win ;
   struct v4l2_clip clips[16U] ;
   int nclips ;
};
struct saa7146_fh {
   struct v4l2_fh fh ;
   struct saa7146_dev *dev ;
   struct videobuf_queue video_q ;
   struct videobuf_queue vbi_q ;
   unsigned int resources ;
};
struct saa7146_vv {
   struct saa7146_dmaqueue vbi_dmaq ;
   struct v4l2_vbi_format vbi_fmt ;
   struct timer_list vbi_read_timeout ;
   wait_queue_head_t vbi_wq ;
   int vbi_fieldcount ;
   struct saa7146_fh *vbi_streaming ;
   int video_status ;
   struct saa7146_fh *video_fh ;
   struct saa7146_overlay ov ;
   struct v4l2_framebuffer ov_fb ;
   struct saa7146_format *ov_fmt ;
   struct saa7146_fh *ov_suspend ;
   struct saa7146_dmaqueue video_dmaq ;
   struct v4l2_pix_format video_fmt ;
   enum v4l2_field last_field ;
   struct saa7146_standard *standard ;
   int vflip ;
   int hflip ;
   int current_hps_source ;
   int current_hps_sync ;
   struct saa7146_dma d_clipping ;
   unsigned int resources ;
};
struct saa7146_ext_vv {
   int inputs ;
   int audios ;
   u32 capabilities ;
   int flags ;
   struct saa7146_standard *stds ;
   int num_stds ;
   int (*std_callback)(struct saa7146_dev * , struct saa7146_standard * ) ;
   struct v4l2_ioctl_ops vid_ops ;
   struct v4l2_ioctl_ops vbi_ops ;
   struct v4l2_ioctl_ops const *core_ops ;
   struct v4l2_file_operations vbi_fops ;
};
struct saa7146_use_ops {
   void (*init)(struct saa7146_dev * , struct saa7146_vv * ) ;
   int (*open)(struct saa7146_dev * , struct file * ) ;
   void (*release)(struct saa7146_dev * , struct file * ) ;
   void (*irq_done)(struct saa7146_dev * , unsigned long ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
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
union __anonunion____missing_field_name_239 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_239 __annonCompField83 ;
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
typedef int ldv_func_ret_type___0;
enum hrtimer_restart;
enum hrtimer_restart;
struct saa7146_video_dma {
   u32 base_odd ;
   u32 base_even ;
   u32 prot_addr ;
   u32 pitch ;
   u32 base_page ;
   u32 num_line_byte ;
};
struct __anonstruct_hps_h_coeff_tab_235 {
   u16 hps_coeff ;
   u16 weight_sum ;
};
struct __anonstruct_hps_v_coeff_tab_236 {
   u16 hps_coeff ;
   u16 weight_sum ;
};
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
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
struct compat_timespec;
struct __anonstruct_futex_32 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_33 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_34 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_31 __annonCompField20 ;
};
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned int sig_on_uaccess_error : 1 ;
   unsigned int uaccess_err : 1 ;
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
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
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
long ldv__builtin_expect(long exp , long c ) ;
extern void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
void ldv_check_final_state(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
int ldv_undef_int(void) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
extern struct module __this_module ;
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
extern struct pv_irq_ops pv_irq_ops ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void __bad_percpu_size(void) ;
extern void *memset(void * , int , size_t ) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/de2fed6/linux-alloc-spinlock/lkbce/arch/x86/include/asm/paravirt.h"),
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
extern void __ldv_spin_lock(spinlock_t * ) ;
static void ldv___ldv_spin_lock_68(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_slock_of_saa7146_dev(void) ;
void ldv_spin_unlock_slock_of_saa7146_dev(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern int __preempt_count ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
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
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6402;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6402;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6402;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6402;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6402: ;
  return (pfo_ret__ & 2147483647);
}
}
__inline static int arch_spin_is_locked(arch_spinlock_t *lock )
{
  struct __raw_tickets tmp ;
  {
  tmp = *((struct __raw_tickets volatile *)(& lock->__annonCompField4.tickets));
  return ((int )tmp.tail != (int )tmp.head);
}
}
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_69(spinlock_t *lock , unsigned long flags ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int del_timer(struct timer_list * ) ;
static int ldv_del_timer_67(struct timer_list *ldv_func_arg1 ) ;
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
static void *ldv_dev_get_drvdata_48(struct device const *dev ) ;
static int ldv_dev_set_drvdata_49(struct device *dev , void *data ) ;
extern void kfree(void const * ) ;
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
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/de2fed6/linux-alloc-spinlock/lkbce/arch/x86/include/asm/dma-mapping.h",
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
  tmp = ldv_dev_get_drvdata_48((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_49(& vdev->dev, data);
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
__inline static char const *video_device_node_name(struct video_device *vdev )
{
  char const *tmp ;
  {
  {
  tmp = dev_name((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
extern void v4l2_get_timestamp(struct timeval * ) ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern void v4l2_fh_init(struct v4l2_fh * , struct video_device * ) ;
extern void v4l2_fh_add(struct v4l2_fh * ) ;
extern void v4l2_fh_del(struct v4l2_fh * ) ;
extern void v4l2_fh_exit(struct v4l2_fh * ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s32 , s32 , u32 , s32 ) ;
extern unsigned int v4l2_ctrl_poll(struct file * , struct poll_table_struct * ) ;
extern unsigned int saa7146_debug ;
extern int videobuf_waiton(struct videobuf_queue * , struct videobuf_buffer * , int ,
                           int ) ;
extern unsigned int videobuf_poll_stream(struct file * , struct videobuf_queue * ,
                                         poll_table * ) ;
extern int videobuf_mmap_mapper(struct videobuf_queue * , struct vm_area_struct * ) ;
extern int videobuf_dma_free(struct videobuf_dmabuf * ) ;
extern int videobuf_dma_unmap(struct device * , struct videobuf_dmabuf * ) ;
extern struct videobuf_dmabuf *videobuf_to_dma(struct videobuf_buffer * ) ;
int saa7146_register_device(struct video_device **vid , struct saa7146_dev *dev ,
                            char *name , int type ) ;
int saa7146_unregister_device(struct video_device **vid , struct saa7146_dev *dev ) ;
void saa7146_buffer_finish(struct saa7146_dev *dev , struct saa7146_dmaqueue *q ,
                           int state ) ;
void saa7146_buffer_next(struct saa7146_dev *dev , struct saa7146_dmaqueue *q , int vbi ) ;
int saa7146_buffer_queue(struct saa7146_dev *dev , struct saa7146_dmaqueue *q , struct saa7146_buf *buf ) ;
void saa7146_buffer_timeout(unsigned long data ) ;
void saa7146_dma_free(struct saa7146_dev *dev , struct videobuf_queue *q , struct saa7146_buf *buf ) ;
int saa7146_vv_init(struct saa7146_dev *dev , struct saa7146_ext_vv *ext_vv ) ;
int saa7146_vv_release(struct saa7146_dev *dev ) ;
struct v4l2_ioctl_ops const saa7146_video_ioctl_ops ;
struct v4l2_ioctl_ops const saa7146_vbi_ioctl_ops ;
struct saa7146_use_ops saa7146_video_uops ;
int saa7146_s_ctrl(struct v4l2_ctrl *ctrl ) ;
struct saa7146_use_ops saa7146_vbi_uops ;
int saa7146_res_get(struct saa7146_fh *fh , unsigned int bit ) ;
void saa7146_res_free(struct saa7146_fh *fh , unsigned int bits ) ;
extern bool try_module_get(struct module * ) ;
extern void module_put(struct module * ) ;
int saa7146_res_get(struct saa7146_fh *fh , unsigned int bit )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  {
  dev = fh->dev;
  vv = dev->vv_data;
  if ((fh->resources & bit) != 0U) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor.modname = "saa7146_vv";
      descriptor.function = "saa7146_res_get";
      descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor.format = "%s(): already allocated! want: 0x%02x, cur:0x%02x\n";
      descriptor.lineno = 16U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp != 0L) {
        {
        __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): already allocated! want: 0x%02x, cur:0x%02x\n",
                           "saa7146_res_get", bit, vv->resources);
        }
      } else {
      }
    } else {
    }
    return (1);
  } else {
  }
  if ((vv->resources & bit) != 0U) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "saa7146_res_get";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___0.format = "%s(): locked! vv->resources:0x%02x, we want:0x%02x\n";
      descriptor___0.lineno = 24U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): locked! vv->resources:0x%02x, we want:0x%02x\n",
                           "saa7146_res_get", vv->resources, bit);
        }
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  fh->resources = fh->resources | bit;
  vv->resources = vv->resources | bit;
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor___1.modname = "saa7146_vv";
    descriptor___1.function = "saa7146_res_get";
    descriptor___1.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor___1.format = "%s(): res: get 0x%02x, cur:0x%02x\n";
    descriptor___1.lineno = 31U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): res: get 0x%02x, cur:0x%02x\n",
                         "saa7146_res_get", bit, vv->resources);
      }
    } else {
    }
  } else {
  }
  return (1);
}
}
void saa7146_res_free(struct saa7146_fh *fh , unsigned int bits )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  long tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  dev = fh->dev;
  vv = dev->vv_data;
  tmp = ldv__builtin_expect((fh->resources & bits) != bits, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_fops.c"),
                         "i" (40), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  fh->resources = fh->resources & ~ bits;
  vv->resources = vv->resources & ~ bits;
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_res_free";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): res: put 0x%02x, cur:0x%02x\n";
    descriptor.lineno = 44U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): res: put 0x%02x, cur:0x%02x\n",
                         "saa7146_res_free", bits, vv->resources);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void saa7146_dma_free(struct saa7146_dev *dev , struct videobuf_queue *q , struct saa7146_buf *buf )
{
  struct videobuf_dmabuf *dma ;
  struct videobuf_dmabuf *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = videobuf_to_dma(& buf->vb);
  dma = tmp;
  }
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_dma_free";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): dev:%p, buf:%p\n";
    descriptor.lineno = 55U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p, buf:%p\n", "saa7146_dma_free",
                         dev, buf);
      }
    } else {
    }
  } else {
  }
  {
  tmp___1 = preempt_count();
  tmp___2 = ldv__builtin_expect(((unsigned long )tmp___1 & 2096896UL) != 0UL, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_fops.c"),
                         "i" (57), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  videobuf_waiton(q, & buf->vb, 0, 0);
  videobuf_dma_unmap(q->dev, dma);
  videobuf_dma_free(dma);
  buf->vb.state = 0;
  }
  return;
}
}
int saa7146_buffer_queue(struct saa7146_dev *dev , struct saa7146_dmaqueue *q , struct saa7146_buf *buf )
{
  int tmp ;
  long tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  {
  {
  tmp = arch_spin_is_locked(& dev->slock.__annonCompField19.rlock.raw_lock);
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_fops.c"),
                         "i" (73), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_buffer_queue";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): dev:%p, dmaq:%p, buf:%p\n";
    descriptor.lineno = 74U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p, dmaq:%p, buf:%p\n",
                         "saa7146_buffer_queue", dev, q, buf);
      }
    } else {
    }
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect((unsigned long )q == (unsigned long )((struct saa7146_dmaqueue *)0),
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_fops.c"),
                         "i" (76), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )q->curr == (unsigned long )((struct saa7146_buf *)0)) {
    q->curr = buf;
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "saa7146_buffer_queue";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___0.format = "%s(): immediately activating buffer %p\n";
      descriptor___0.lineno = 80U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): immediately activating buffer %p\n",
                           "saa7146_buffer_queue", buf);
        }
      } else {
      }
    } else {
    }
    {
    (*(buf->activate))(dev, buf, (struct saa7146_buf *)0);
    }
  } else {
    {
    list_add_tail(& buf->vb.queue, & q->queue);
    buf->vb.state = 2;
    }
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "saa7146_buffer_queue";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___1.format = "%s(): adding buffer %p to queue. (active buffer present)\n";
      descriptor___1.lineno = 86U;
      descriptor___1.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___4 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): adding buffer %p to queue. (active buffer present)\n",
                           "saa7146_buffer_queue", buf);
        }
      } else {
      }
    } else {
    }
  }
  return (0);
}
}
void saa7146_buffer_finish(struct saa7146_dev *dev , struct saa7146_dmaqueue *q ,
                           int state )
{
  int tmp ;
  long tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  {
  {
  tmp = arch_spin_is_locked(& dev->slock.__annonCompField19.rlock.raw_lock);
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_fops.c"),
                         "i" (95), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_buffer_finish";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): dev:%p, dmaq:%p, state:%d\n";
    descriptor.lineno = 96U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p, dmaq:%p, state:%d\n",
                         "saa7146_buffer_finish", dev, q, state);
      }
    } else {
    }
  } else {
  }
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor___0.modname = "saa7146_vv";
    descriptor___0.function = "saa7146_buffer_finish";
    descriptor___0.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor___0.format = "%s(): q->curr:%p\n";
    descriptor___0.lineno = 97U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): q->curr:%p\n", "saa7146_buffer_finish",
                         q->curr);
      }
    } else {
    }
  } else {
  }
  {
  tmp___3 = ldv__builtin_expect((unsigned long )q->curr == (unsigned long )((struct saa7146_buf *)0),
                             0L);
  }
  if (tmp___3 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_fops.c"),
                         "i" (99), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )q->curr == (unsigned long )((struct saa7146_buf *)0)) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "saa7146_buffer_finish";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___1.format = "%s(): aiii. no current buffer\n";
      descriptor___1.lineno = 103U;
      descriptor___1.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___4 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): aiii. no current buffer\n",
                           "saa7146_buffer_finish");
        }
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  {
  (q->curr)->vb.state = (enum videobuf_state )state;
  v4l2_get_timestamp(& (q->curr)->vb.ts);
  __wake_up(& (q->curr)->vb.done, 3U, 1, (void *)0);
  q->curr = (struct saa7146_buf *)0;
  }
  return;
}
}
void saa7146_buffer_next(struct saa7146_dev *dev , struct saa7146_dmaqueue *q , int vbi )
{
  struct saa7146_buf *buf ;
  struct saa7146_buf *next ;
  long tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  int tmp___6 ;
  {
  {
  next = (struct saa7146_buf *)0;
  tmp = ldv__builtin_expect((unsigned long )q == (unsigned long )((struct saa7146_dmaqueue *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_fops.c"),
                         "i" (119), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((saa7146_debug & 32U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_buffer_next";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): dev:%p, dmaq:%p, vbi:%d\n";
    descriptor.lineno = 121U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p, dmaq:%p, vbi:%d\n",
                         "saa7146_buffer_next", dev, q, vbi);
      }
    } else {
    }
  } else {
  }
  {
  tmp___1 = arch_spin_is_locked(& dev->slock.__annonCompField19.rlock.raw_lock);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_fops.c"),
                         "i" (123), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___6 = list_empty((struct list_head const *)(& q->queue));
  }
  if (tmp___6 == 0) {
    {
    __mptr = (struct list_head const *)q->queue.next;
    buf = (struct saa7146_buf *)__mptr + 0xffffffffffffffc8UL;
    list_del(& buf->vb.queue);
    tmp___3 = list_empty((struct list_head const *)(& q->queue));
    }
    if (tmp___3 == 0) {
      __mptr___0 = (struct list_head const *)q->queue.next;
      next = (struct saa7146_buf *)__mptr___0 + 0xffffffffffffffc8UL;
    } else {
    }
    q->curr = buf;
    if ((saa7146_debug & 32U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "saa7146_buffer_next";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___0.format = "%s(): next buffer: buf:%p, prev:%p, next:%p\n";
      descriptor___0.lineno = 132U;
      descriptor___0.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___4 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): next buffer: buf:%p, prev:%p, next:%p\n",
                           "saa7146_buffer_next", buf, q->queue.prev, q->queue.next);
        }
      } else {
      }
    } else {
    }
    {
    (*(buf->activate))(dev, buf, next);
    }
  } else {
    if ((saa7146_debug & 32U) != 0U) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "saa7146_buffer_next";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___1.format = "%s(): no next buffer. stopping.\n";
      descriptor___1.lineno = 135U;
      descriptor___1.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___5 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): no next buffer. stopping.\n",
                           "saa7146_buffer_next");
        }
      } else {
      }
    } else {
    }
    if (vbi != 0) {
      {
      writel(1048576U, (void volatile *)dev->mem + 252U);
      }
    } else {
      {
      writel(0U, (void volatile *)dev->mem + 8U);
      writel(262148U, (void volatile *)dev->mem + 256U);
      writel((unsigned int )dev->d_rps0.dma_handle, (void volatile *)dev->mem + 260U);
      writel(268439552U, (void volatile *)dev->mem + 252U);
      }
    }
    {
    ldv_del_timer_67(& q->timeout);
    }
  }
  return;
}
}
void saa7146_buffer_timeout(unsigned long data )
{
  struct saa7146_dmaqueue *q ;
  struct saa7146_dev *dev ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  q = (struct saa7146_dmaqueue *)data;
  dev = q->dev;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_buffer_timeout";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): dev:%p, dmaq:%p\n";
    descriptor.lineno = 172U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p, dmaq:%p\n", "saa7146_buffer_timeout",
                         dev, q);
      }
    } else {
    }
  } else {
  }
  {
  ldv___ldv_spin_lock_68(& dev->slock);
  }
  if ((unsigned long )q->curr != (unsigned long )((struct saa7146_buf *)0)) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "saa7146_buffer_timeout";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___0.format = "%s(): timeout on %p\n";
      descriptor___0.lineno = 176U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): timeout on %p\n",
                           "saa7146_buffer_timeout", q->curr);
        }
      } else {
      }
    } else {
    }
    {
    saa7146_buffer_finish(dev, q, 5);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_69(& dev->slock, flags);
  }
  return;
}
}
static int fops_open(struct file *file )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct saa7146_dev *dev ;
  void *tmp___0 ;
  struct saa7146_fh *fh ;
  int result ;
  struct _ddebug descriptor ;
  char const *tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  void *tmp___6 ;
  struct _ddebug descriptor___2 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  long tmp___9 ;
  bool tmp___10 ;
  int tmp___11 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  tmp___0 = video_drvdata(file);
  dev = (struct saa7146_dev *)tmp___0;
  fh = (struct saa7146_fh *)0;
  result = 0;
  }
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "fops_open";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): file:%p, dev:%s\n";
    descriptor.lineno = 202U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      tmp___1 = video_device_node_name(vdev);
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): file:%p, dev:%s\n", "fops_open",
                         file, tmp___1);
      }
    } else {
    }
  } else {
  }
  {
  tmp___3 = mutex_lock_interruptible_nested(vdev->lock, 0U);
  }
  if (tmp___3 != 0) {
    return (-512);
  } else {
  }
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor___0.modname = "saa7146_vv";
    descriptor___0.function = "fops_open";
    descriptor___0.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor___0.format = "%s(): using: %p\n";
    descriptor___0.lineno = 207U;
    descriptor___0.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): using: %p\n", "fops_open",
                         dev);
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )dev->ext == (unsigned long )((struct saa7146_extension *)0)) {
    if ((int )saa7146_debug & 1) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "fops_open";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___1.format = "%s(): no extension registered for this device\n";
      descriptor___1.lineno = 211U;
      descriptor___1.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___5 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): no extension registered for this device\n",
                           "fops_open");
        }
      } else {
      }
    } else {
    }
    result = -19;
    goto out;
  } else {
  }
  {
  tmp___6 = kzalloc(1424UL, 208U);
  fh = (struct saa7146_fh *)tmp___6;
  }
  if ((unsigned long )fh == (unsigned long )((struct saa7146_fh *)0)) {
    if ((int )saa7146_debug & 1) {
      {
      descriptor___2.modname = "saa7146_vv";
      descriptor___2.function = "fops_open";
      descriptor___2.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___2.format = "%s(): cannot allocate memory for per open data\n";
      descriptor___2.lineno = 219U;
      descriptor___2.flags = 0U;
      tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___7 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___2, "saa7146_vv: %s(): cannot allocate memory for per open data\n",
                           "fops_open");
        }
      } else {
      }
    } else {
    }
    result = -12;
    goto out;
  } else {
  }
  {
  v4l2_fh_init(& fh->fh, vdev);
  file->private_data = (void *)(& fh->fh);
  fh->dev = dev;
  }
  if (vdev->vfl_type == 1) {
    if ((int )saa7146_debug & 1) {
      {
      descriptor___3.modname = "saa7146_vv";
      descriptor___3.function = "fops_open";
      descriptor___3.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___3.format = "%s(): initializing vbi...\n";
      descriptor___3.lineno = 230U;
      descriptor___3.flags = 0U;
      tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      }
      if (tmp___8 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___3, "saa7146_vv: %s(): initializing vbi...\n",
                           "fops_open");
        }
      } else {
      }
    } else {
    }
    if (((dev->ext_vv_data)->capabilities & 16U) != 0U) {
      {
      result = (*(saa7146_vbi_uops.open))(dev, file);
      }
    } else {
    }
    if ((unsigned long )(dev->ext_vv_data)->vbi_fops.open != (unsigned long )((int (*)(struct file * ))0)) {
      {
      (*((dev->ext_vv_data)->vbi_fops.open))(file);
      }
    } else {
    }
  } else {
    if ((int )saa7146_debug & 1) {
      {
      descriptor___4.modname = "saa7146_vv";
      descriptor___4.function = "fops_open";
      descriptor___4.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___4.format = "%s(): initializing video...\n";
      descriptor___4.lineno = 236U;
      descriptor___4.flags = 0U;
      tmp___9 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      }
      if (tmp___9 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___4, "saa7146_vv: %s(): initializing video...\n",
                           "fops_open");
        }
      } else {
      }
    } else {
    }
    {
    result = (*(saa7146_video_uops.open))(dev, file);
    }
  }
  if (result != 0) {
    goto out;
  } else {
  }
  {
  tmp___10 = try_module_get((dev->ext)->module);
  }
  if (tmp___10) {
    tmp___11 = 0;
  } else {
    tmp___11 = 1;
  }
  if (tmp___11) {
    result = -22;
    goto out;
  } else {
  }
  {
  result = 0;
  v4l2_fh_add(& fh->fh);
  }
  out: ;
  if ((unsigned long )fh != (unsigned long )((struct saa7146_fh *)0) && result != 0) {
    {
    kfree((void const *)fh);
    file->private_data = (void *)0;
    }
  } else {
  }
  {
  mutex_unlock(vdev->lock);
  }
  return (result);
}
}
static int fops_release(struct file *file )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  fh = (struct saa7146_fh *)file->private_data;
  dev = fh->dev;
  }
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "fops_release";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): file:%p\n";
    descriptor.lineno = 266U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): file:%p\n", "fops_release",
                         file);
      }
    } else {
    }
  } else {
  }
  {
  mutex_lock_nested(vdev->lock, 0U);
  }
  if (vdev->vfl_type == 1) {
    if (((dev->ext_vv_data)->capabilities & 16U) != 0U) {
      {
      (*(saa7146_vbi_uops.release))(dev, file);
      }
    } else {
    }
    if ((unsigned long )(dev->ext_vv_data)->vbi_fops.release != (unsigned long )((int (*)(struct file * ))0)) {
      {
      (*((dev->ext_vv_data)->vbi_fops.release))(file);
      }
    } else {
    }
  } else {
    {
    (*(saa7146_video_uops.release))(dev, file);
    }
  }
  {
  v4l2_fh_del(& fh->fh);
  v4l2_fh_exit(& fh->fh);
  module_put((dev->ext)->module);
  file->private_data = (void *)0;
  kfree((void const *)fh);
  mutex_unlock(vdev->lock);
  }
  return (0);
}
}
static int fops_mmap(struct file *file , struct vm_area_struct *vma )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct saa7146_fh *fh ;
  struct videobuf_queue *q ;
  int res ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  fh = (struct saa7146_fh *)file->private_data;
  }
  {
  if (vdev->vfl_type == 0) {
    goto case_0;
  } else {
  }
  if (vdev->vfl_type == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "fops_mmap";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): V4L2_BUF_TYPE_VIDEO_CAPTURE: file:%p, vma:%p\n";
    descriptor.lineno = 300U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): V4L2_BUF_TYPE_VIDEO_CAPTURE: file:%p, vma:%p\n",
                         "fops_mmap", file, vma);
      }
    } else {
    }
  } else {
  }
  q = & fh->video_q;
  goto ldv_36131;
  case_1: ;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor___0.modname = "saa7146_vv";
    descriptor___0.function = "fops_mmap";
    descriptor___0.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor___0.format = "%s(): V4L2_BUF_TYPE_VBI_CAPTURE: file:%p, vma:%p\n";
    descriptor___0.lineno = 306U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): V4L2_BUF_TYPE_VBI_CAPTURE: file:%p, vma:%p\n",
                         "fops_mmap", file, vma);
      }
    } else {
    }
  } else {
  }
  if ((((fh->dev)->ext_vv_data)->capabilities & 128U) != 0U) {
    return (-19);
  } else {
  }
  q = & fh->vbi_q;
  goto ldv_36131;
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_fops.c"),
                       "i" (313), "i" (12UL));
  __builtin_unreachable();
  }
  return (0);
  switch_break: ;
  }
  ldv_36131:
  {
  tmp___2 = mutex_lock_interruptible_nested(vdev->lock, 0U);
  }
  if (tmp___2 != 0) {
    return (-512);
  } else {
  }
  {
  res = videobuf_mmap_mapper(q, vma);
  mutex_unlock(vdev->lock);
  }
  return (res);
}
}
static unsigned int __fops_poll(struct file *file , struct poll_table_struct *wait )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct saa7146_fh *fh ;
  struct videobuf_buffer *buf ;
  struct videobuf_queue *q ;
  unsigned int res ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct list_head const *__mptr ;
  int tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  long tmp___7 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  fh = (struct saa7146_fh *)file->private_data;
  buf = (struct videobuf_buffer *)0;
  tmp___0 = v4l2_ctrl_poll(file, wait);
  res = tmp___0;
  }
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "__fops_poll";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): file:%p, poll:%p\n";
    descriptor.lineno = 332U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): file:%p, poll:%p\n", "__fops_poll",
                         file, wait);
      }
    } else {
    }
  } else {
  }
  if (vdev->vfl_type == 1) {
    if ((((fh->dev)->ext_vv_data)->capabilities & 128U) != 0U) {
      return (res | 260U);
    } else {
    }
    if ((unsigned int )*((unsigned char *)fh + 1368UL) == 0U) {
      {
      tmp___2 = videobuf_poll_stream(file, & fh->vbi_q, wait);
      }
      return (res | tmp___2);
    } else {
    }
    q = & fh->vbi_q;
  } else {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "__fops_poll";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___0.format = "%s(): using video queue\n";
      descriptor___0.lineno = 341U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): using video queue\n",
                           "__fops_poll");
        }
      } else {
      }
    } else {
    }
    q = & fh->video_q;
  }
  {
  tmp___4 = list_empty((struct list_head const *)(& q->stream));
  }
  if (tmp___4 == 0) {
    __mptr = (struct list_head const *)q->stream.next;
    buf = (struct videobuf_buffer *)__mptr + 0xffffffffffffffd8UL;
  } else {
  }
  if ((unsigned long )buf == (unsigned long )((struct videobuf_buffer *)0)) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "__fops_poll";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___1.format = "%s(): buf == NULL!\n";
      descriptor___1.lineno = 349U;
      descriptor___1.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___5 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): buf == NULL!\n", "__fops_poll");
        }
      } else {
      }
    } else {
    }
    return (res | 8U);
  } else {
  }
  {
  poll_wait(file, & buf->done, wait);
  }
  if ((unsigned int )buf->state - 4U <= 1U) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___2.modname = "saa7146_vv";
      descriptor___2.function = "__fops_poll";
      descriptor___2.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___2.format = "%s(): poll succeeded!\n";
      descriptor___2.lineno = 355U;
      descriptor___2.flags = 0U;
      tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___6 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___2, "saa7146_vv: %s(): poll succeeded!\n",
                           "__fops_poll");
        }
      } else {
      }
    } else {
    }
    return (res | 65U);
  } else {
  }
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor___3.modname = "saa7146_vv";
    descriptor___3.function = "__fops_poll";
    descriptor___3.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor___3.format = "%s(): nothing to poll for, buf->state:%d\n";
    descriptor___3.lineno = 359U;
    descriptor___3.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___7 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___3, "saa7146_vv: %s(): nothing to poll for, buf->state:%d\n",
                         "__fops_poll", (unsigned int )buf->state);
      }
    } else {
    }
  } else {
  }
  return (res);
}
}
static unsigned int fops_poll(struct file *file , struct poll_table_struct *wait )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  unsigned int res ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  mutex_lock_nested(vdev->lock, 0U);
  res = __fops_poll(file, wait);
  mutex_unlock(vdev->lock);
  }
  return (res);
}
}
static ssize_t fops_read(struct file *file , char *data , size_t count , loff_t *ppos )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct saa7146_fh *fh ;
  int ret ;
  ssize_t tmp___0 ;
  int tmp___1 ;
  ssize_t tmp___2 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  fh = (struct saa7146_fh *)file->private_data;
  }
  {
  if (vdev->vfl_type == 0) {
    goto case_0;
  } else {
  }
  if (vdev->vfl_type == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0:
  {
  tmp___0 = (*(saa7146_video_uops.read))(file, data, count, ppos);
  }
  return (tmp___0);
  case_1: ;
  if ((((fh->dev)->ext_vv_data)->capabilities & 16U) != 0U) {
    {
    tmp___1 = mutex_lock_interruptible_nested(vdev->lock, 0U);
    }
    if (tmp___1 != 0) {
      return (-512L);
    } else {
    }
    {
    tmp___2 = (*(saa7146_vbi_uops.read))(file, data, count, ppos);
    ret = (int )tmp___2;
    mutex_unlock(vdev->lock);
    }
    return ((ssize_t )ret);
  } else {
  }
  return (-22L);
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_fops.c"),
                       "i" (401), "i" (12UL));
  __builtin_unreachable();
  }
  return (0L);
  switch_break: ;
  }
}
}
static ssize_t fops_write(struct file *file , char const *data , size_t count ,
                          loff_t *ppos )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct saa7146_fh *fh ;
  int ret ;
  int tmp___0 ;
  ssize_t tmp___1 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  fh = (struct saa7146_fh *)file->private_data;
  }
  {
  if (vdev->vfl_type == 0) {
    goto case_0;
  } else {
  }
  if (vdev->vfl_type == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (-22L);
  case_1: ;
  if ((unsigned long )((fh->dev)->ext_vv_data)->vbi_fops.write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                                char const * ,
                                                                                                size_t ,
                                                                                                loff_t * ))0)) {
    {
    tmp___0 = mutex_lock_interruptible_nested(vdev->lock, 0U);
    }
    if (tmp___0 != 0) {
      return (-512L);
    } else {
    }
    {
    tmp___1 = (*(((fh->dev)->ext_vv_data)->vbi_fops.write))(file, data, count, ppos);
    ret = (int )tmp___1;
    mutex_unlock(vdev->lock);
    }
    return ((ssize_t )ret);
  } else {
  }
  return (-22L);
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_fops.c"),
                       "i" (425), "i" (12UL));
  __builtin_unreachable();
  }
  return (-22L);
  switch_break: ;
  }
}
}
static struct v4l2_file_operations const video_fops =
     {& __this_module, & fops_read, & fops_write, & fops_poll, 0, & video_ioctl2, 0,
    0, & fops_mmap, & fops_open, & fops_release};
static void vv_callback(struct saa7146_dev *dev , unsigned long status )
{
  u32 isr ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  u32 mc2 ;
  unsigned int tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  {
  isr = (u32 )status;
  if ((saa7146_debug & 32U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vv_callback";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): dev:%p, isr:0x%08x\n";
    descriptor.lineno = 446U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p, isr:0x%08x\n", "vv_callback",
                         dev, (unsigned int )status);
      }
    } else {
    }
  } else {
  }
  if ((isr & 134217728U) != 0U) {
    if ((saa7146_debug & 32U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "vv_callback";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___0.format = "%s(): irq: RPS0 (0x%08x)\n";
      descriptor___0.lineno = 449U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): irq: RPS0 (0x%08x)\n",
                           "vv_callback", isr);
        }
      } else {
      }
    } else {
    }
    {
    (*(saa7146_video_uops.irq_done))(dev, (unsigned long )isr);
    }
  } else {
  }
  if ((isr & 268435456U) != 0U) {
    {
    tmp___1 = readl((void const volatile *)dev->mem + 256U);
    mc2 = tmp___1;
    }
    if ((mc2 & 32768U) != 0U) {
      if ((saa7146_debug & 32U) != 0U) {
        {
        descriptor___1.modname = "saa7146_vv";
        descriptor___1.function = "vv_callback";
        descriptor___1.filename = "drivers/media/common/saa7146/saa7146_fops.c";
        descriptor___1.format = "%s(): irq: RPS1 vbi workaround (0x%08x)\n";
        descriptor___1.lineno = 456U;
        descriptor___1.flags = 0U;
        tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
        }
        if (tmp___2 != 0L) {
          {
          __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): irq: RPS1 vbi workaround (0x%08x)\n",
                             "vv_callback", isr);
          }
        } else {
        }
      } else {
      }
      {
      __wake_up(& (dev->vv_data)->vbi_wq, 3U, 1, (void *)0);
      writel(2147483648U, (void volatile *)dev->mem + 256U);
      }
      return;
    } else {
    }
    if ((saa7146_debug & 32U) != 0U) {
      {
      descriptor___2.modname = "saa7146_vv";
      descriptor___2.function = "vv_callback";
      descriptor___2.filename = "drivers/media/common/saa7146/saa7146_fops.c";
      descriptor___2.format = "%s(): irq: RPS1 (0x%08x)\n";
      descriptor___2.lineno = 461U;
      descriptor___2.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___2, "saa7146_vv: %s(): irq: RPS1 (0x%08x)\n",
                           "vv_callback", isr);
        }
      } else {
      }
    } else {
    }
    {
    (*(saa7146_vbi_uops.irq_done))(dev, (unsigned long )isr);
    }
  } else {
  }
  return;
}
}
static struct v4l2_ctrl_ops const saa7146_ctrl_ops = {0, 0, & saa7146_s_ctrl};
int saa7146_vv_init(struct saa7146_dev *dev , struct saa7146_ext_vv *ext_vv )
{
  struct v4l2_ctrl_handler *hdl ;
  struct v4l2_pix_format *fmt ;
  struct v4l2_vbi_format *vbi ;
  struct saa7146_vv *vv ;
  int err ;
  struct lock_class_key _key ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  {
  {
  hdl = & dev->ctrl_handler;
  err = v4l2_device_register(& (dev->pci)->dev, & dev->v4l2_dev);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  v4l2_ctrl_handler_init_class(hdl, 6U, & _key, "saa7146_fops:482:(hdl)->_lock");
  v4l2_ctrl_new_std(hdl, & saa7146_ctrl_ops, 9963776U, 0, 255, 1U, 128);
  v4l2_ctrl_new_std(hdl, & saa7146_ctrl_ops, 9963777U, 0, 127, 1U, 64);
  v4l2_ctrl_new_std(hdl, & saa7146_ctrl_ops, 9963778U, 0, 127, 1U, 64);
  v4l2_ctrl_new_std(hdl, & saa7146_ctrl_ops, 9963797U, 0, 1, 1U, 0);
  v4l2_ctrl_new_std(hdl, & saa7146_ctrl_ops, 9963796U, 0, 1, 1U, 0);
  }
  if (hdl->error != 0) {
    {
    err = hdl->error;
    v4l2_ctrl_handler_free(hdl);
    }
    return (err);
  } else {
  }
  {
  dev->v4l2_dev.ctrl_handler = hdl;
  tmp = kzalloc(1224UL, 208U);
  vv = (struct saa7146_vv *)tmp;
  }
  if ((unsigned long )vv == (unsigned long )((struct saa7146_vv *)0)) {
    {
    printk("\vsaa7146_vv: %s: out of memory. aborting.\n", "saa7146_vv_init");
    v4l2_ctrl_handler_free(hdl);
    }
    return (-12);
  } else {
  }
  ext_vv->vid_ops = saa7146_video_ioctl_ops;
  ext_vv->vbi_ops = saa7146_vbi_ioctl_ops;
  ext_vv->core_ops = & saa7146_video_ioctl_ops;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_vv_init";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): dev:%p\n";
    descriptor.lineno = 510U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p\n", "saa7146_vv_init",
                         dev);
      }
    } else {
    }
  } else {
  }
  {
  writel(2151678016U, (void volatile *)dev->mem + 112U);
  writel(67109888U, (void volatile *)dev->mem + 252U);
  dev->ext_vv_data = ext_vv;
  tmp___1 = pci_alloc_consistent(dev->pci, 256UL, & vv->d_clipping.dma_handle);
  vv->d_clipping.cpu_addr = (__le32 *)tmp___1;
  }
  if ((unsigned long )vv->d_clipping.cpu_addr == (unsigned long )((__le32 *)0U)) {
    {
    printk("\vsaa7146_vv: %s: out of memory. aborting.\n", "saa7146_vv_init");
    kfree((void const *)vv);
    v4l2_ctrl_handler_free(hdl);
    }
    return (-1);
  } else {
  }
  {
  memset((void *)vv->d_clipping.cpu_addr, 0, 256UL);
  (*(saa7146_video_uops.init))(dev, vv);
  }
  if (((dev->ext_vv_data)->capabilities & 16U) != 0U) {
    {
    (*(saa7146_vbi_uops.init))(dev, vv);
    }
  } else {
  }
  {
  fmt = & vv->ov_fb.fmt;
  fmt->width = (__u32 )(vv->standard)->h_max_out;
  fmt->height = (__u32 )(vv->standard)->v_max_out;
  fmt->pixelformat = 1346520914U;
  fmt->bytesperline = fmt->width * 2U;
  fmt->sizeimage = fmt->bytesperline * fmt->height;
  fmt->colorspace = 8U;
  fmt = & vv->video_fmt;
  fmt->width = 384U;
  fmt->height = 288U;
  fmt->pixelformat = 861030210U;
  fmt->field = 0U;
  fmt->colorspace = 1U;
  fmt->bytesperline = fmt->width * 3U;
  fmt->sizeimage = fmt->bytesperline * fmt->height;
  vbi = & vv->vbi_fmt;
  vbi->sampling_rate = 27000000U;
  vbi->offset = 248U;
  vbi->samples_per_line = 1440U;
  vbi->sample_format = 1497715271U;
  vbi->start[0] = 5;
  vbi->count[0] = 16U;
  vbi->start[1] = 312;
  vbi->count[1] = 16U;
  init_timer_key(& vv->vbi_read_timeout, 0U, "(&vv->vbi_read_timeout)", & __key);
  vv->ov_fb.capability = 4U;
  vv->ov_fb.flags = 1U;
  dev->vv_data = vv;
  dev->vv_callback = & vv_callback;
  }
  return (0);
}
}
static char const __kstrtab_saa7146_vv_init[16U] =
  { 's', 'a', 'a', '7',
        '1', '4', '6', '_',
        'v', 'v', '_', 'i',
        'n', 'i', 't', '\000'};
struct kernel_symbol const __ksymtab_saa7146_vv_init ;
struct kernel_symbol const __ksymtab_saa7146_vv_init = {(unsigned long )(& saa7146_vv_init), (char const *)(& __kstrtab_saa7146_vv_init)};
int saa7146_vv_release(struct saa7146_dev *dev )
{
  struct saa7146_vv *vv ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  vv = dev->vv_data;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_vv_release";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): dev:%p\n";
    descriptor.lineno = 580U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p\n", "saa7146_vv_release",
                         dev);
      }
    } else {
    }
  } else {
  }
  {
  v4l2_device_unregister(& dev->v4l2_dev);
  pci_free_consistent(dev->pci, 256UL, (void *)vv->d_clipping.cpu_addr, vv->d_clipping.dma_handle);
  v4l2_ctrl_handler_free(& dev->ctrl_handler);
  kfree((void const *)vv);
  dev->vv_data = (struct saa7146_vv *)0;
  dev->vv_callback = (void (*)(struct saa7146_dev * , unsigned long ))0;
  }
  return (0);
}
}
static char const __kstrtab_saa7146_vv_release[19U] =
  { 's', 'a', 'a', '7',
        '1', '4', '6', '_',
        'v', 'v', '_', 'r',
        'e', 'l', 'e', 'a',
        's', 'e', '\000'};
struct kernel_symbol const __ksymtab_saa7146_vv_release ;
struct kernel_symbol const __ksymtab_saa7146_vv_release = {(unsigned long )(& saa7146_vv_release), (char const *)(& __kstrtab_saa7146_vv_release)};
int saa7146_register_device(struct video_device **vid , struct saa7146_dev *dev ,
                            char *name , int type )
{
  struct video_device *vfd ;
  int err ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  char const *tmp___0 ;
  {
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_register_device";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): dev:%p, name:\'%s\', type:%d\n";
    descriptor.lineno = 600U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p, name:\'%s\', type:%d\n",
                         "saa7146_register_device", dev, name, type);
      }
    } else {
    }
  } else {
  }
  {
  vfd = video_device_alloc();
  }
  if ((unsigned long )vfd == (unsigned long )((struct video_device *)0)) {
    return (-12);
  } else {
  }
  vfd->fops = & video_fops;
  if (type == 0) {
    vfd->ioctl_ops = (struct v4l2_ioctl_ops const *)(& (dev->ext_vv_data)->vid_ops);
  } else {
    vfd->ioctl_ops = (struct v4l2_ioctl_ops const *)(& (dev->ext_vv_data)->vbi_ops);
  }
  {
  vfd->release = & video_device_release;
  vfd->lock = & dev->v4l2_lock;
  vfd->v4l2_dev = & dev->v4l2_dev;
  vfd->tvnorms = 0ULL;
  set_bit(2L, (unsigned long volatile *)(& vfd->flags));
  i = 0;
  }
  goto ldv_36242;
  ldv_36241:
  vfd->tvnorms = vfd->tvnorms | ((dev->ext_vv_data)->stds + (unsigned long )i)->id;
  i = i + 1;
  ldv_36242: ;
  if (i < (dev->ext_vv_data)->num_stds) {
    goto ldv_36241;
  } else {
  }
  {
  strlcpy((char *)(& vfd->name), (char const *)name, 32UL);
  video_set_drvdata(vfd, (void *)dev);
  err = video_register_device(vfd, type, -1);
  }
  if (err < 0) {
    {
    printk("\vsaa7146_vv: %s: cannot register v4l2 device. skipping.\n", "saa7146_register_device");
    video_device_release(vfd);
    }
    return (err);
  } else {
  }
  {
  tmp___0 = video_device_node_name(vfd);
  printk("\016saa7146_vv: %s: registered device %s [v4l2]\n", (char *)(& dev->name),
         tmp___0);
  *vid = vfd;
  }
  return (0);
}
}
static char const __kstrtab_saa7146_register_device[24U] =
  { 's', 'a', 'a', '7',
        '1', '4', '6', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'd', 'e', 'v',
        'i', 'c', 'e', '\000'};
struct kernel_symbol const __ksymtab_saa7146_register_device ;
struct kernel_symbol const __ksymtab_saa7146_register_device = {(unsigned long )(& saa7146_register_device), (char const *)(& __kstrtab_saa7146_register_device)};
int saa7146_unregister_device(struct video_device **vid , struct saa7146_dev *dev )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_unregister_device";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_fops.c";
    descriptor.format = "%s(): dev:%p\n";
    descriptor.lineno = 639U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p\n", "saa7146_unregister_device",
                         dev);
      }
    } else {
    }
  } else {
  }
  {
  video_unregister_device(*vid);
  *vid = (struct video_device *)0;
  }
  return (0);
}
}
static char const __kstrtab_saa7146_unregister_device[26U] =
  { 's', 'a', 'a', '7',
        '1', '4', '6', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'd',
        'e', 'v', 'i', 'c',
        'e', '\000'};
struct kernel_symbol const __ksymtab_saa7146_unregister_device ;
struct kernel_symbol const __ksymtab_saa7146_unregister_device = {(unsigned long )(& saa7146_unregister_device), (char const *)(& __kstrtab_saa7146_unregister_device)};
static int saa7146_vv_init_module(void)
{
  {
  return (0);
}
}
static void saa7146_vv_cleanup_module(void)
{
  {
  return;
}
}
void ldv_EMGentry_exit_saa7146_vv_cleanup_module_9_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_saa7146_vv_init_module_9_17(int (*arg0)(void) ) ;
void ldv_allocate_external_0(void) ;
int ldv_del_timer(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_4_9_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_5_9_5(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_6_9_6(void) ;
void ldv_dispatch_deregister_file_operations_instance_3_9_7(void) ;
void ldv_dispatch_deregister_io_instance_8_9_8(void) ;
void ldv_dispatch_instance_deregister_7_1(struct timer_list *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_4_9_9(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_5_9_10(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_6_9_11(void) ;
void ldv_dispatch_register_file_operations_instance_3_9_12(void) ;
void ldv_dispatch_register_io_instance_8_9_13(void) ;
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_2_10(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_fmtdesc * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_fmtdesc *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_11(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_framebuffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_framebuffer *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_12(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_13(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_14(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_15(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_streamparm * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_streamparm *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_16(int (*arg0)(struct file * , void * ,
                                                               unsigned long long * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_19(int (*arg0)(struct file * , void * ,
                                                               unsigned int ) , struct file *arg1 ,
                                                   void *arg2 , unsigned int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_22(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_25(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_28(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_capability * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_capability *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_29(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_requestbuffers * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_requestbuffers *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_buffer * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_buffer *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_30(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_framebuffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_framebuffer *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_31(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_32(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_33(int (*arg0)(struct file * , void * ,
                                                               unsigned long long ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   unsigned long long arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_36(int (*arg0)(struct file * , void * ,
                                                               enum v4l2_buf_type ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   enum v4l2_buf_type arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_37(int (*arg0)(struct file * , void * ,
                                                               enum v4l2_buf_type ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   enum v4l2_buf_type arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_38(int (*arg0)(struct v4l2_fh * ,
                                                               struct v4l2_event_subscription * ) ,
                                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_39(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_40(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_2_41(int (*arg0)(struct v4l2_fh * ,
                                                               struct v4l2_event_subscription * ) ,
                                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_2_9(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_fmtdesc * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_fmtdesc *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct videobuf_queue * ,
                                                              struct videobuf_buffer * ,
                                                              enum v4l2_field ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ,
                                                  enum v4l2_field arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_7(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_8(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_9(int (*arg0)(struct videobuf_queue * ,
                                                              unsigned int * , unsigned int * ) ,
                                                  struct videobuf_queue *arg1 , unsigned int *arg2 ,
                                                  unsigned int *arg3 ) ;
void ldv_entry_EMGentry_9(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_initialize_external_data(void) ;
void ldv_io_instance_callback_5_18(void (*arg0)(struct saa7146_dev * , unsigned long ) ,
                                   struct saa7146_dev *arg1 , unsigned long arg2 ) ;
void ldv_io_instance_callback_5_21(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_io_instance_callback_5_22(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_5_23(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_5_26(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_5_29(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_5_4(void (*arg0)(struct saa7146_dev * , struct saa7146_vv * ) ,
                                  struct saa7146_dev *arg1 , struct saa7146_vv *arg2 ) ;
void ldv_io_instance_callback_6_18(void (*arg0)(struct saa7146_dev * , unsigned long ) ,
                                   struct saa7146_dev *arg1 , unsigned long arg2 ) ;
void ldv_io_instance_callback_6_21(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_io_instance_callback_6_22(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_6_23(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_6_26(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_6_29(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_6_4(void (*arg0)(struct saa7146_dev * , struct saa7146_vv * ) ,
                                  struct saa7146_dev *arg1 , struct saa7146_vv *arg2 ) ;
int ldv_io_instance_probe_5_11(int (*arg0)(struct saa7146_dev * , struct file * ) ,
                               struct saa7146_dev *arg1 , struct file *arg2 ) ;
int ldv_io_instance_probe_5_32(int (*arg0)(struct file * ) , struct file *arg1 ) ;
int ldv_io_instance_probe_6_11(int (*arg0)(struct saa7146_dev * , struct file * ) ,
                               struct saa7146_dev *arg1 , struct file *arg2 ) ;
int ldv_io_instance_probe_6_32(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_5_17(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_5_2(void (*arg0)(struct saa7146_dev * , struct file * ) ,
                                 struct saa7146_dev *arg1 , struct file *arg2 ) ;
void ldv_io_instance_release_6_17(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_6_2(void (*arg0)(struct saa7146_dev * , struct file * ) ,
                                 struct saa7146_dev *arg1 , struct file *arg2 ) ;
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_1(void *arg0 ) ;
void ldv_struct_v4l2_ioctl_ops_dummy_resourceless_instance_2(void *arg0 ) ;
void ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_3(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
int ldv_switch_3(void) ;
int ldv_switch_4(void) ;
void ldv_switch_automaton_state_0_15(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_5(void) ;
void ldv_switch_automaton_state_2_1(void) ;
void ldv_switch_automaton_state_2_5(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_5(void) ;
void ldv_switch_automaton_state_4_1(void) ;
void ldv_switch_automaton_state_4_3(void) ;
void ldv_switch_automaton_state_5_14(void) ;
void ldv_switch_automaton_state_5_5(void) ;
void ldv_switch_automaton_state_6_14(void) ;
void ldv_switch_automaton_state_6_5(void) ;
void ldv_timer_instance_callback_4_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_4(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_5(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_6(void *arg0 ) ;
struct file_operations *ldv_0_container_file_operations ;
char *ldv_0_ldv_param_4_1_default ;
long long *ldv_0_ldv_param_4_3_default ;
struct file *ldv_0_resource_file ;
struct inode *ldv_0_resource_inode ;
int ldv_0_ret_default ;
unsigned long ldv_0_size_cnt_write_size ;
int (*ldv_1_callback_s_ctrl)(struct v4l2_ctrl * ) ;
struct v4l2_ctrl *ldv_1_container_struct_v4l2_ctrl_ptr ;
int (*ldv_2_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_2_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
int (*ldv_2_callback_vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
int (*ldv_2_callback_vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
int (*ldv_2_callback_vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_2_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_2_callback_vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_2_callback_vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
int (*ldv_2_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) ;
int (*ldv_2_callback_vidioc_overlay)(struct file * , void * , unsigned int ) ;
int (*ldv_2_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_2_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_2_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
int (*ldv_2_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
int (*ldv_2_callback_vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
int (*ldv_2_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_2_callback_vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_2_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) ;
int (*ldv_2_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_2_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_2_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
int (*ldv_2_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_2_callback_vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_2_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
enum v4l2_buf_type ldv_2_container_enum_v4l2_buf_type ;
struct file *ldv_2_container_struct_file_ptr ;
struct v4l2_buffer *ldv_2_container_struct_v4l2_buffer_ptr ;
struct v4l2_capability *ldv_2_container_struct_v4l2_capability_ptr ;
struct v4l2_event_subscription *ldv_2_container_struct_v4l2_event_subscription_ptr ;
struct v4l2_fh *ldv_2_container_struct_v4l2_fh_ptr ;
struct v4l2_fmtdesc *ldv_2_container_struct_v4l2_fmtdesc_ptr ;
struct v4l2_format *ldv_2_container_struct_v4l2_format_ptr ;
struct v4l2_framebuffer *ldv_2_container_struct_v4l2_framebuffer_ptr ;
struct v4l2_requestbuffers *ldv_2_container_struct_v4l2_requestbuffers_ptr ;
struct v4l2_streamparm *ldv_2_container_struct_v4l2_streamparm_ptr ;
unsigned long long *ldv_2_ldv_param_16_2_default ;
unsigned int ldv_2_ldv_param_19_2_default ;
struct v4l2_buffer *ldv_2_ldv_param_22_2_default ;
struct v4l2_buffer *ldv_2_ldv_param_25_2_default ;
unsigned long long ldv_2_ldv_param_33_2_default ;
struct v4l2_buffer *ldv_2_ldv_param_3_2_default ;
int (*ldv_3_callback_buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * ,
                                  enum v4l2_field ) ;
void (*ldv_3_callback_buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
void (*ldv_3_callback_buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
int (*ldv_3_callback_buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
enum v4l2_field ldv_3_container_enum_v4l2_field ;
struct videobuf_buffer *ldv_3_container_struct_videobuf_buffer_ptr ;
struct videobuf_queue *ldv_3_container_struct_videobuf_queue_ptr ;
unsigned int *ldv_3_ldv_param_9_1_default ;
unsigned int *ldv_3_ldv_param_9_2_default ;
struct timer_list *ldv_4_container_timer_list ;
void (*ldv_5_callback_init)(struct saa7146_dev * , struct saa7146_vv * ) ;
void (*ldv_5_callback_irq_done)(struct saa7146_dev * , unsigned long ) ;
int (*ldv_5_callback_mmap)(struct file * , struct vm_area_struct * ) ;
unsigned int (*ldv_5_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_5_callback_read)(struct file * , char * , unsigned long , long long * ) ;
long (*ldv_5_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
long (*ldv_5_callback_write)(struct file * , char * , unsigned long , long long * ) ;
struct saa7146_use_ops *ldv_5_container_struct_saa7146_use_ops ;
struct v4l2_file_operations *ldv_5_container_v4l2_file_operations ;
unsigned long ldv_5_ldv_param_18_1_default ;
char *ldv_5_ldv_param_23_1_default ;
unsigned long ldv_5_ldv_param_23_2_default ;
long long *ldv_5_ldv_param_23_3_default ;
unsigned int ldv_5_ldv_param_26_1_default ;
unsigned long ldv_5_ldv_param_26_2_default ;
char *ldv_5_ldv_param_29_1_default ;
unsigned long ldv_5_ldv_param_29_2_default ;
long long *ldv_5_ldv_param_29_3_default ;
struct file *ldv_5_resource_file ;
struct poll_table_struct *ldv_5_resource_struct_poll_table_struct_ptr ;
struct saa7146_dev *ldv_5_resource_struct_saa7146_dev_ptr ;
struct saa7146_vv *ldv_5_resource_struct_saa7146_vv_ptr ;
struct vm_area_struct *ldv_5_resource_struct_vm_area_struct_ptr ;
int ldv_5_ret_default ;
void (*ldv_6_callback_init)(struct saa7146_dev * , struct saa7146_vv * ) ;
void (*ldv_6_callback_irq_done)(struct saa7146_dev * , unsigned long ) ;
int (*ldv_6_callback_mmap)(struct file * , struct vm_area_struct * ) ;
unsigned int (*ldv_6_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_6_callback_read)(struct file * , char * , unsigned long , long long * ) ;
long (*ldv_6_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
long (*ldv_6_callback_write)(struct file * , char * , unsigned long , long long * ) ;
struct saa7146_use_ops *ldv_6_container_struct_saa7146_use_ops ;
struct v4l2_file_operations *ldv_6_container_v4l2_file_operations ;
unsigned long ldv_6_ldv_param_18_1_default ;
char *ldv_6_ldv_param_23_1_default ;
unsigned long ldv_6_ldv_param_23_2_default ;
long long *ldv_6_ldv_param_23_3_default ;
unsigned int ldv_6_ldv_param_26_1_default ;
unsigned long ldv_6_ldv_param_26_2_default ;
char *ldv_6_ldv_param_29_1_default ;
unsigned long ldv_6_ldv_param_29_2_default ;
long long *ldv_6_ldv_param_29_3_default ;
struct file *ldv_6_resource_file ;
struct poll_table_struct *ldv_6_resource_struct_poll_table_struct_ptr ;
struct saa7146_dev *ldv_6_resource_struct_saa7146_dev_ptr ;
struct saa7146_vv *ldv_6_resource_struct_saa7146_vv_ptr ;
struct vm_area_struct *ldv_6_resource_struct_vm_area_struct_ptr ;
int ldv_6_ret_default ;
void (*ldv_9_exit_saa7146_vv_cleanup_module_default)(void) ;
int (*ldv_9_init_saa7146_vv_init_module_default)(void) ;
int ldv_9_ret_default ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_4 ;
int ldv_statevar_5 ;
int ldv_statevar_6 ;
int ldv_statevar_9 ;
int (*ldv_1_callback_s_ctrl)(struct v4l2_ctrl * ) = & saa7146_s_ctrl;
int (*ldv_5_callback_mmap)(struct file * , struct vm_area_struct * ) = & fops_mmap;
unsigned int (*ldv_5_callback_poll)(struct file * , struct poll_table_struct * ) = & fops_poll;
long (*ldv_5_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
long (*ldv_5_callback_write)(struct file * , char * , unsigned long , long long * ) = (long (*)(struct file * ,
             char * , unsigned long , long long * ))(& fops_write);
int (*ldv_6_callback_mmap)(struct file * , struct vm_area_struct * ) = & fops_mmap;
unsigned int (*ldv_6_callback_poll)(struct file * , struct poll_table_struct * ) = & fops_poll;
long (*ldv_6_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
long (*ldv_6_callback_write)(struct file * , char * , unsigned long , long long * ) = (long (*)(struct file * ,
             char * , unsigned long , long long * ))(& fops_write);
void (*ldv_9_exit_saa7146_vv_cleanup_module_default)(void) = & saa7146_vv_cleanup_module;
int (*ldv_9_init_saa7146_vv_init_module_default)(void) = & saa7146_vv_init_module;
void ldv_EMGentry_exit_saa7146_vv_cleanup_module_9_2(void (*arg0)(void) )
{
  {
  {
  saa7146_vv_cleanup_module();
  }
  return;
}
}
int ldv_EMGentry_init_saa7146_vv_init_module_9_17(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = saa7146_vv_init_module();
  }
  return (tmp);
}
}
void *ldv_malloc(size_t size ) ;
void ldv_allocate_external_0(void)
{
  {
  {
  ldv_0_container_file_operations = ldv_malloc(sizeof(struct file_operations));
  ldv_0_ldv_param_4_1_default = ldv_malloc(sizeof(char));
  ldv_0_ldv_param_4_3_default = ldv_malloc(sizeof(long long));
  ldv_0_resource_file = ldv_malloc(sizeof(struct file));
  ldv_0_resource_inode = ldv_malloc(sizeof(struct inode));
  ldv_1_container_struct_v4l2_ctrl_ptr = ldv_malloc(sizeof(struct v4l2_ctrl));
  ldv_2_container_struct_file_ptr = ldv_malloc(sizeof(struct file));
  ldv_2_container_struct_v4l2_buffer_ptr = ldv_malloc(sizeof(struct v4l2_buffer));
  ldv_2_container_struct_v4l2_capability_ptr = ldv_malloc(sizeof(struct v4l2_capability));
  ldv_2_container_struct_v4l2_event_subscription_ptr = ldv_malloc(sizeof(struct v4l2_event_subscription));
  ldv_2_container_struct_v4l2_fh_ptr = ldv_malloc(sizeof(struct v4l2_fh));
  ldv_2_container_struct_v4l2_fmtdesc_ptr = ldv_malloc(sizeof(struct v4l2_fmtdesc));
  ldv_2_container_struct_v4l2_format_ptr = ldv_malloc(sizeof(struct v4l2_format));
  ldv_2_container_struct_v4l2_framebuffer_ptr = ldv_malloc(sizeof(struct v4l2_framebuffer));
  ldv_2_container_struct_v4l2_requestbuffers_ptr = ldv_malloc(sizeof(struct v4l2_requestbuffers));
  ldv_2_container_struct_v4l2_streamparm_ptr = ldv_malloc(sizeof(struct v4l2_streamparm));
  ldv_2_ldv_param_16_2_default = ldv_malloc(sizeof(unsigned long long));
  ldv_2_ldv_param_22_2_default = ldv_malloc(sizeof(struct v4l2_buffer));
  ldv_2_ldv_param_25_2_default = ldv_malloc(sizeof(struct v4l2_buffer));
  ldv_2_ldv_param_3_2_default = ldv_malloc(sizeof(struct v4l2_buffer));
  ldv_3_container_struct_videobuf_buffer_ptr = ldv_malloc(sizeof(struct videobuf_buffer));
  ldv_3_container_struct_videobuf_queue_ptr = ldv_malloc(sizeof(struct videobuf_queue));
  ldv_3_ldv_param_9_1_default = ldv_malloc(sizeof(unsigned int));
  ldv_3_ldv_param_9_2_default = ldv_malloc(sizeof(unsigned int));
  ldv_4_container_timer_list = ldv_malloc(sizeof(struct timer_list));
  ldv_5_ldv_param_23_1_default = ldv_malloc(sizeof(char));
  ldv_5_ldv_param_23_3_default = ldv_malloc(sizeof(long long));
  ldv_5_ldv_param_29_1_default = ldv_malloc(sizeof(char));
  ldv_5_ldv_param_29_3_default = ldv_malloc(sizeof(long long));
  ldv_5_resource_file = ldv_malloc(sizeof(struct file));
  ldv_5_resource_struct_poll_table_struct_ptr = ldv_malloc(sizeof(struct poll_table_struct));
  ldv_5_resource_struct_saa7146_dev_ptr = ldv_malloc(sizeof(struct saa7146_dev));
  ldv_5_resource_struct_saa7146_vv_ptr = ldv_malloc(sizeof(struct saa7146_vv));
  ldv_5_resource_struct_vm_area_struct_ptr = ldv_malloc(sizeof(struct vm_area_struct));
  ldv_6_ldv_param_23_1_default = ldv_malloc(sizeof(char));
  ldv_6_ldv_param_23_3_default = ldv_malloc(sizeof(long long));
  ldv_6_ldv_param_29_1_default = ldv_malloc(sizeof(char));
  ldv_6_ldv_param_29_3_default = ldv_malloc(sizeof(long long));
  ldv_6_resource_file = ldv_malloc(sizeof(struct file));
  ldv_6_resource_struct_poll_table_struct_ptr = ldv_malloc(sizeof(struct poll_table_struct));
  ldv_6_resource_struct_saa7146_dev_ptr = ldv_malloc(sizeof(struct saa7146_dev));
  ldv_6_resource_struct_saa7146_vv_ptr = ldv_malloc(sizeof(struct saa7146_vv));
  ldv_6_resource_struct_vm_area_struct_ptr = ldv_malloc(sizeof(struct vm_area_struct));
  }
  return;
}
}
int ldv_del_timer(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_7_timer_list_timer_list ;
  {
  {
  ldv_7_timer_list_timer_list = arg1;
  ldv_assume(ldv_statevar_4 == 2);
  ldv_dispatch_instance_deregister_7_1(ldv_7_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_4_9_4(void)
{
  {
  {
  ldv_switch_automaton_state_1_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_5_9_5(void)
{
  {
  {
  ldv_switch_automaton_state_2_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_6_9_6(void)
{
  {
  {
  ldv_switch_automaton_state_3_1();
  }
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_3_9_7(void)
{
  {
  {
  ldv_switch_automaton_state_0_6();
  }
  return;
}
}
void ldv_dispatch_deregister_io_instance_8_9_8(void)
{
  {
  {
  ldv_switch_automaton_state_5_5();
  ldv_switch_automaton_state_6_5();
  }
  return;
}
}
void ldv_dispatch_instance_deregister_7_1(struct timer_list *arg0 )
{
  {
  {
  ldv_4_container_timer_list = arg0;
  ldv_switch_automaton_state_4_1();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_4_9_9(void)
{
  {
  {
  ldv_switch_automaton_state_1_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_5_9_10(void)
{
  {
  {
  ldv_switch_automaton_state_2_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_6_9_11(void)
{
  {
  {
  ldv_switch_automaton_state_3_5();
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_3_9_12(void)
{
  {
  {
  ldv_switch_automaton_state_0_15();
  }
  return;
}
}
void ldv_dispatch_register_io_instance_8_9_13(void)
{
  {
  {
  ldv_switch_automaton_state_5_14();
  ldv_switch_automaton_state_6_14();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  saa7146_s_ctrl(arg1);
  }
  return;
}
}
void ldv_entry_EMGentry_9(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
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
  if (ldv_statevar_9 == 6) {
    goto case_6;
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
  if (ldv_statevar_9 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_9 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_9 == 12) {
    goto case_12;
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
  if (ldv_statevar_9 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_9 == 17) {
    goto case_17;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_EMGentry_exit_saa7146_vv_cleanup_module_9_2(ldv_9_exit_saa7146_vv_cleanup_module_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_9 = 17;
  }
  goto ldv_37100;
  case_3:
  {
  ldv_EMGentry_exit_saa7146_vv_cleanup_module_9_2(ldv_9_exit_saa7146_vv_cleanup_module_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_9 = 17;
  }
  goto ldv_37100;
  case_4:
  {
  ldv_assume(ldv_statevar_1 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_4_9_4();
  ldv_statevar_9 = 2;
  }
  goto ldv_37100;
  case_5:
  {
  ldv_assume(ldv_statevar_2 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_5_9_5();
  ldv_statevar_9 = 4;
  }
  goto ldv_37100;
  case_6:
  {
  ldv_assume(ldv_statevar_3 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_6_9_6();
  ldv_statevar_9 = 5;
  }
  goto ldv_37100;
  case_7:
  {
  ldv_assume(ldv_statevar_0 == 7);
  ldv_dispatch_deregister_file_operations_instance_3_9_7();
  ldv_statevar_9 = 6;
  }
  goto ldv_37100;
  case_8:
  {
  ldv_assume(ldv_statevar_5 == 6 || ldv_statevar_6 == 6);
  ldv_dispatch_deregister_io_instance_8_9_8();
  ldv_statevar_9 = 7;
  }
  goto ldv_37100;
  case_9:
  {
  ldv_assume(ldv_statevar_1 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_4_9_9();
  ldv_statevar_9 = 8;
  }
  goto ldv_37100;
  case_10:
  {
  ldv_assume(ldv_statevar_2 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_5_9_10();
  ldv_statevar_9 = 9;
  }
  goto ldv_37100;
  case_11:
  {
  ldv_assume(ldv_statevar_3 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_6_9_11();
  ldv_statevar_9 = 10;
  }
  goto ldv_37100;
  case_12:
  {
  ldv_assume(ldv_statevar_0 == 15);
  ldv_dispatch_register_file_operations_instance_3_9_12();
  ldv_statevar_9 = 11;
  }
  goto ldv_37100;
  case_13:
  {
  ldv_assume(ldv_statevar_5 == 14 || ldv_statevar_6 == 14);
  ldv_dispatch_register_io_instance_8_9_13();
  ldv_statevar_9 = 12;
  }
  goto ldv_37100;
  case_14:
  {
  ldv_assume(ldv_9_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_9 = 3;
  } else {
    ldv_statevar_9 = 13;
  }
  goto ldv_37100;
  case_16:
  {
  ldv_assume(ldv_9_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_9 = 17;
  }
  goto ldv_37100;
  case_17:
  {
  ldv_9_ret_default = ldv_EMGentry_init_saa7146_vv_init_module_9_17(ldv_9_init_saa7146_vv_init_module_default);
  ldv_9_ret_default = ldv_post_init(ldv_9_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_9 = 14;
  } else {
    ldv_statevar_9 = 16;
  }
  goto ldv_37100;
  switch_default: ;
  switch_break: ;
  }
  ldv_37100: ;
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
  ldv_statevar_9 = 17;
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  ldv_statevar_1 = 5;
  ldv_statevar_2 = 5;
  ldv_statevar_3 = 5;
  ldv_statevar_4 = 3;
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 14;
  ldv_6_ret_default = 1;
  ldv_statevar_6 = 14;
  }
  ldv_37128:
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
  ldv_entry_EMGentry_9((void *)0);
  }
  goto ldv_37119;
  case_1:
  {
  ldv_file_operations_file_operations_instance_0((void *)0);
  }
  goto ldv_37119;
  case_2:
  {
  ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_1((void *)0);
  }
  goto ldv_37119;
  case_3:
  {
  ldv_struct_v4l2_ioctl_ops_dummy_resourceless_instance_2((void *)0);
  }
  goto ldv_37119;
  case_4:
  {
  ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_3((void *)0);
  }
  goto ldv_37119;
  case_5:
  {
  ldv_timer_timer_instance_4((void *)0);
  }
  goto ldv_37119;
  case_6:
  {
  ldv_v4l2_file_operations_io_instance_5((void *)0);
  }
  goto ldv_37119;
  case_7:
  {
  ldv_v4l2_file_operations_io_instance_6((void *)0);
  }
  goto ldv_37119;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_37119: ;
  goto ldv_37128;
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
  goto ldv_37133;
  case_2:
  ldv_statevar_0 = 1;
  goto ldv_37133;
  case_3:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_37133;
  case_5:
  ldv_statevar_0 = 3;
  goto ldv_37133;
  case_7:
  {
  ldv_free((void *)ldv_0_resource_file);
  ldv_free((void *)ldv_0_resource_inode);
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  }
  goto ldv_37133;
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
  goto ldv_37133;
  case_11:
  {
  ldv_assume(ldv_0_ret_default == 0);
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_37133;
  case_12: ;
  if ((unsigned long )ldv_0_container_file_operations->open != (unsigned long )((int (*)(struct inode * ,
                                                                                         struct file * ))0)) {
    {
    ldv_0_ret_default = ldv_file_operations_instance_probe_0_12(ldv_0_container_file_operations->open,
                                                                ldv_0_resource_inode,
                                                                ldv_0_resource_file);
    }
  } else {
  }
  {
  ldv_0_ret_default = ldv_filter_err_code(ldv_0_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_0 = 9;
  } else {
    ldv_statevar_0 = 11;
  }
  goto ldv_37133;
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
  goto ldv_37133;
  case_15: ;
  goto ldv_37133;
  case_18:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___7;
  ldv_assume(ldv_0_size_cnt_write_size <= 2147479552UL);
  ldv_file_operations_instance_write_0_4((long (*)(struct file * , char * , unsigned long ,
                                                   long long * ))ldv_0_container_file_operations->write,
                                         ldv_0_resource_file, ldv_0_ldv_param_4_1_default,
                                         ldv_0_size_cnt_write_size, ldv_0_ldv_param_4_3_default);
  ldv_free((void *)ldv_0_ldv_param_4_1_default);
  ldv_free((void *)ldv_0_ldv_param_4_3_default);
  ldv_statevar_0 = 3;
  }
  goto ldv_37133;
  switch_default: ;
  switch_break: ;
  }
  ldv_37133: ;
  return;
}
}
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
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
  fops_write(arg1, (char const *)arg2, arg3, arg4);
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
void ldv_io_instance_callback_5_21(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  fops_mmap(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_5_22(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  fops_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_5_26(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_5_29(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  fops_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_6_21(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  fops_mmap(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_6_22(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  fops_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_6_26(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_6_29(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  fops_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
int ldv_io_instance_probe_5_32(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = fops_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_6_32(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = fops_open(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_5_17(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  fops_release(arg1);
  }
  return;
}
}
void ldv_io_instance_release_6_17(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  fops_release(arg1);
  }
  return;
}
}
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_1(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
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
  goto switch_default;
  case_1: ;
  goto ldv_37257;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_1 = 1;
  } else {
    ldv_statevar_1 = 3;
  }
  goto ldv_37257;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_s_ctrl, ldv_1_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_1 = 2;
  }
  goto ldv_37257;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_1 = 1;
  } else {
    ldv_statevar_1 = 3;
  }
  goto ldv_37257;
  case_5: ;
  goto ldv_37257;
  switch_default: ;
  switch_break: ;
  }
  ldv_37257: ;
  return;
}
}
void ldv_struct_v4l2_ioctl_ops_dummy_resourceless_instance_2(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
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
  if (ldv_statevar_2 == 7) {
    goto case_7;
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
  if (ldv_statevar_2 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_2 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_2 == 13) {
    goto case_13;
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
  if (ldv_statevar_2 == 17) {
    goto case_17;
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
  if (ldv_statevar_2 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_2 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_2 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_2 == 30) {
    goto case_30;
  } else {
  }
  if (ldv_statevar_2 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_2 == 32) {
    goto case_32;
  } else {
  }
  if (ldv_statevar_2 == 34) {
    goto case_34;
  } else {
  }
  if (ldv_statevar_2 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_2 == 37) {
    goto case_37;
  } else {
  }
  if (ldv_statevar_2 == 38) {
    goto case_38;
  } else {
  }
  if (ldv_statevar_2 == 39) {
    goto case_39;
  } else {
  }
  if (ldv_statevar_2 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_2 == 41) {
    goto case_41;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_37267;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 1;
  } else {
    ldv_statevar_2 = 7;
  }
  goto ldv_37267;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_2_3(ldv_2_callback_vidioc_dqbuf, ldv_2_container_struct_file_ptr,
                                               (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                               ldv_2_ldv_param_3_2_default);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 1;
  } else {
    ldv_statevar_2 = 7;
  }
  goto ldv_37267;
  case_5: ;
  goto ldv_37267;
  case_7:
  {
  tmp___1 = ldv_xmalloc(88UL);
  ldv_2_ldv_param_3_2_default = (struct v4l2_buffer *)tmp___1;
  ldv_statevar_2 = ldv_switch_1();
  }
  goto ldv_37267;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_2_9(ldv_2_callback_vidioc_enum_fmt_vid_cap,
                                               ldv_2_container_struct_file_ptr, (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                               ldv_2_container_struct_v4l2_fmtdesc_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_2_10(ldv_2_callback_vidioc_enum_fmt_vid_overlay,
                                                ldv_2_container_struct_file_ptr, (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_fmtdesc_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_2_11(ldv_2_callback_vidioc_g_fbuf, ldv_2_container_struct_file_ptr,
                                                (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_framebuffer_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_2_12(ldv_2_callback_vidioc_g_fmt_vbi_cap,
                                                ldv_2_container_struct_file_ptr, (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_2_13(ldv_2_callback_vidioc_g_fmt_vid_cap,
                                                ldv_2_container_struct_file_ptr, (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_2_14(ldv_2_callback_vidioc_g_fmt_vid_overlay,
                                                ldv_2_container_struct_file_ptr, (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_15:
  {
  ldv_dummy_resourceless_instance_callback_2_15(ldv_2_callback_vidioc_g_parm, ldv_2_container_struct_file_ptr,
                                                (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_streamparm_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_17:
  {
  tmp___2 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_16_2_default = (unsigned long long *)tmp___2;
  ldv_dummy_resourceless_instance_callback_2_16(ldv_2_callback_vidioc_g_std, ldv_2_container_struct_file_ptr,
                                                (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_ldv_param_16_2_default);
  ldv_free((void *)ldv_2_ldv_param_16_2_default);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_20:
  {
  ldv_dummy_resourceless_instance_callback_2_19(ldv_2_callback_vidioc_overlay, ldv_2_container_struct_file_ptr,
                                                (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_ldv_param_19_2_default);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_23:
  {
  tmp___3 = ldv_xmalloc(88UL);
  ldv_2_ldv_param_22_2_default = (struct v4l2_buffer *)tmp___3;
  ldv_dummy_resourceless_instance_callback_2_22(ldv_2_callback_vidioc_qbuf, ldv_2_container_struct_file_ptr,
                                                (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_ldv_param_22_2_default);
  ldv_free((void *)ldv_2_ldv_param_22_2_default);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_26:
  {
  tmp___4 = ldv_xmalloc(88UL);
  ldv_2_ldv_param_25_2_default = (struct v4l2_buffer *)tmp___4;
  ldv_dummy_resourceless_instance_callback_2_25(ldv_2_callback_vidioc_querybuf, ldv_2_container_struct_file_ptr,
                                                (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_ldv_param_25_2_default);
  ldv_free((void *)ldv_2_ldv_param_25_2_default);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_2_28(ldv_2_callback_vidioc_querycap, ldv_2_container_struct_file_ptr,
                                                (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_capability_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_29:
  {
  ldv_dummy_resourceless_instance_callback_2_29(ldv_2_callback_vidioc_reqbufs, ldv_2_container_struct_file_ptr,
                                                (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_requestbuffers_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_30:
  {
  ldv_dummy_resourceless_instance_callback_2_30(ldv_2_callback_vidioc_s_fbuf, ldv_2_container_struct_file_ptr,
                                                (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_framebuffer_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_31:
  {
  ldv_dummy_resourceless_instance_callback_2_31(ldv_2_callback_vidioc_s_fmt_vid_cap,
                                                ldv_2_container_struct_file_ptr, (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_32:
  {
  ldv_dummy_resourceless_instance_callback_2_32(ldv_2_callback_vidioc_s_fmt_vid_overlay,
                                                ldv_2_container_struct_file_ptr, (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_34:
  {
  ldv_dummy_resourceless_instance_callback_2_33(ldv_2_callback_vidioc_s_std, ldv_2_container_struct_file_ptr,
                                                (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_ldv_param_33_2_default);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_36:
  {
  ldv_dummy_resourceless_instance_callback_2_36(ldv_2_callback_vidioc_streamoff, ldv_2_container_struct_file_ptr,
                                                (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_enum_v4l2_buf_type);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_37:
  {
  ldv_dummy_resourceless_instance_callback_2_37(ldv_2_callback_vidioc_streamon, ldv_2_container_struct_file_ptr,
                                                (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_enum_v4l2_buf_type);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_38:
  {
  ldv_dummy_resourceless_instance_callback_2_38(ldv_2_callback_vidioc_subscribe_event,
                                                ldv_2_container_struct_v4l2_fh_ptr,
                                                ldv_2_container_struct_v4l2_event_subscription_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_39:
  {
  ldv_dummy_resourceless_instance_callback_2_39(ldv_2_callback_vidioc_try_fmt_vid_cap,
                                                ldv_2_container_struct_file_ptr, (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_40:
  {
  ldv_dummy_resourceless_instance_callback_2_40(ldv_2_callback_vidioc_try_fmt_vid_overlay,
                                                ldv_2_container_struct_file_ptr, (void *)ldv_2_container_struct_v4l2_buffer_ptr,
                                                ldv_2_container_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  case_41:
  {
  ldv_dummy_resourceless_instance_callback_2_41(ldv_2_callback_vidioc_unsubscribe_event,
                                                ldv_2_container_struct_v4l2_fh_ptr,
                                                ldv_2_container_struct_v4l2_event_subscription_ptr);
  ldv_free((void *)ldv_2_ldv_param_3_2_default);
  ldv_statevar_2 = 2;
  }
  goto ldv_37267;
  switch_default: ;
  switch_break: ;
  }
  ldv_37267: ;
  return;
}
}
void ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_3(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
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
  if (ldv_statevar_3 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_3 == 7) {
    goto case_7;
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
  goto switch_default;
  case_1: ;
  goto ldv_37301;
  case_2:
  {
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_37301;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_buf_prepare, ldv_3_container_struct_videobuf_queue_ptr,
                                               ldv_3_container_struct_videobuf_buffer_ptr,
                                               ldv_3_container_enum_v4l2_field);
  ldv_statevar_3 = 2;
  }
  goto ldv_37301;
  case_4:
  {
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_37301;
  case_5: ;
  goto ldv_37301;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_3_7(ldv_3_callback_buf_queue, ldv_3_container_struct_videobuf_queue_ptr,
                                               ldv_3_container_struct_videobuf_buffer_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_37301;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_3_8(ldv_3_callback_buf_release, ldv_3_container_struct_videobuf_queue_ptr,
                                               ldv_3_container_struct_videobuf_buffer_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_37301;
  case_10:
  {
  tmp = ldv_xmalloc(4UL);
  ldv_3_ldv_param_9_1_default = (unsigned int *)tmp;
  tmp___0 = ldv_xmalloc(4UL);
  ldv_3_ldv_param_9_2_default = (unsigned int *)tmp___0;
  ldv_dummy_resourceless_instance_callback_3_9(ldv_3_callback_buf_setup, ldv_3_container_struct_videobuf_queue_ptr,
                                               ldv_3_ldv_param_9_1_default, ldv_3_ldv_param_9_2_default);
  ldv_free((void *)ldv_3_ldv_param_9_1_default);
  ldv_free((void *)ldv_3_ldv_param_9_2_default);
  ldv_statevar_3 = 2;
  }
  goto ldv_37301;
  switch_default: ;
  switch_break: ;
  }
  ldv_37301: ;
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
  return (5);
  case_2: ;
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
  goto switch_default;
  case_0: ;
  return (3);
  case_1: ;
  return (9);
  case_2: ;
  return (10);
  case_3: ;
  return (11);
  case_4: ;
  return (12);
  case_5: ;
  return (13);
  case_6: ;
  return (14);
  case_7: ;
  return (15);
  case_8: ;
  return (17);
  case_9: ;
  return (20);
  case_10: ;
  return (23);
  case_11: ;
  return (26);
  case_12: ;
  return (28);
  case_13: ;
  return (29);
  case_14: ;
  return (30);
  case_15: ;
  return (31);
  case_16: ;
  return (32);
  case_17: ;
  return (34);
  case_18: ;
  return (36);
  case_19: ;
  return (37);
  case_20: ;
  return (38);
  case_21: ;
  return (39);
  case_22: ;
  return (40);
  case_23: ;
  return (41);
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
  return (6);
  case_1: ;
  return (11);
  case_2: ;
  return (32);
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
  return (21);
  case_5: ;
  return (22);
  case_6: ;
  return (24);
  case_7: ;
  return (27);
  case_8: ;
  return (30);
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
void ldv_switch_automaton_state_2_1(void)
{
  {
  ldv_statevar_2 = 5;
  return;
}
}
void ldv_switch_automaton_state_2_5(void)
{
  {
  ldv_statevar_2 = 4;
  return;
}
}
void ldv_switch_automaton_state_3_1(void)
{
  {
  ldv_statevar_3 = 5;
  return;
}
}
void ldv_switch_automaton_state_3_5(void)
{
  {
  ldv_statevar_3 = 4;
  return;
}
}
void ldv_switch_automaton_state_4_1(void)
{
  {
  ldv_statevar_4 = 3;
  return;
}
}
void ldv_switch_automaton_state_4_3(void)
{
  {
  ldv_statevar_4 = 2;
  return;
}
}
void ldv_switch_automaton_state_5_14(void)
{
  {
  ldv_statevar_5 = 13;
  return;
}
}
void ldv_switch_automaton_state_5_5(void)
{
  {
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 14;
  return;
}
}
void ldv_switch_automaton_state_6_14(void)
{
  {
  ldv_statevar_6 = 13;
  return;
}
}
void ldv_switch_automaton_state_6_5(void)
{
  {
  ldv_6_ret_default = 1;
  ldv_statevar_6 = 14;
  return;
}
}
void ldv_timer_instance_callback_4_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_4(void *arg0 )
{
  {
  {
  if (ldv_statevar_4 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_4_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_4_2(ldv_4_container_timer_list->function, ldv_4_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  ldv_statevar_4 = 3;
  }
  goto ldv_37406;
  case_3: ;
  goto ldv_37406;
  switch_default: ;
  switch_break: ;
  }
  ldv_37406: ;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_5(void *arg0 )
{
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  int tmp___9 ;
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
  if (ldv_statevar_5 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_5 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_5 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_5 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_5 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_5 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_5 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_5 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_5 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_5 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_5 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_5 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_5 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_5 == 30) {
    goto case_30;
  } else {
  }
  if (ldv_statevar_5 == 32) {
    goto case_32;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_statevar_5 = ldv_switch_3();
  }
  goto ldv_37413;
  case_2:
  {
  ldv_assume(ldv_statevar_4 == 2);
  ldv_io_instance_release_5_2(ldv_5_container_struct_saa7146_use_ops->release, ldv_5_resource_struct_saa7146_dev_ptr,
                              ldv_5_resource_file);
  ldv_statevar_5 = 1;
  }
  goto ldv_37413;
  case_3:
  {
  ldv_statevar_5 = ldv_switch_4();
  }
  goto ldv_37413;
  case_4:
  {
  ldv_io_instance_callback_5_4(ldv_5_callback_init, ldv_5_resource_struct_saa7146_dev_ptr,
                               ldv_5_resource_struct_saa7146_vv_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_37413;
  case_6:
  {
  ldv_free((void *)ldv_5_resource_file);
  ldv_free((void *)ldv_5_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_5_resource_struct_saa7146_dev_ptr);
  ldv_free((void *)ldv_5_resource_struct_saa7146_vv_ptr);
  ldv_free((void *)ldv_5_resource_struct_vm_area_struct_ptr);
  ldv_5_ret_default = 1;
  ldv_statevar_5 = 14;
  }
  goto ldv_37413;
  case_8:
  {
  ldv_assume(ldv_5_ret_default != 0);
  ldv_statevar_5 = ldv_switch_3();
  }
  goto ldv_37413;
  case_10:
  {
  ldv_assume(ldv_5_ret_default == 0);
  ldv_statevar_5 = ldv_switch_4();
  }
  goto ldv_37413;
  case_11:
  {
  ldv_5_ret_default = ldv_io_instance_probe_5_11(ldv_5_container_struct_saa7146_use_ops->open,
                                                 ldv_5_resource_struct_saa7146_dev_ptr,
                                                 ldv_5_resource_file);
  ldv_5_ret_default = ldv_filter_err_code(ldv_5_ret_default);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_5 = 8;
  } else {
    ldv_statevar_5 = 10;
  }
  goto ldv_37413;
  case_13:
  {
  tmp___0 = ldv_xmalloc(520UL);
  ldv_5_resource_file = (struct file *)tmp___0;
  tmp___1 = ldv_xmalloc(16UL);
  ldv_5_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___1;
  tmp___2 = ldv_xmalloc(1352UL);
  ldv_5_resource_struct_saa7146_dev_ptr = (struct saa7146_dev *)tmp___2;
  tmp___3 = ldv_xmalloc(1224UL);
  ldv_5_resource_struct_saa7146_vv_ptr = (struct saa7146_vv *)tmp___3;
  tmp___4 = ldv_xmalloc(184UL);
  ldv_5_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___4;
  ldv_statevar_5 = ldv_switch_3();
  }
  goto ldv_37413;
  case_14: ;
  goto ldv_37413;
  case_17:
  {
  ldv_io_instance_release_5_17(ldv_5_container_v4l2_file_operations->release, ldv_5_resource_file);
  ldv_statevar_5 = 1;
  }
  goto ldv_37413;
  case_19:
  {
  ldv_assume(ldv_statevar_4 == 2);
  ldv_io_instance_callback_5_18(ldv_5_callback_irq_done, ldv_5_resource_struct_saa7146_dev_ptr,
                                ldv_5_ldv_param_18_1_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_37413;
  case_21:
  {
  ldv_io_instance_callback_5_21(ldv_5_callback_mmap, ldv_5_resource_file, ldv_5_resource_struct_vm_area_struct_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_37413;
  case_22:
  {
  ldv_io_instance_callback_5_22(ldv_5_callback_poll, ldv_5_resource_file, ldv_5_resource_struct_poll_table_struct_ptr);
  ldv_statevar_5 = 3;
  }
  goto ldv_37413;
  case_24:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_23_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_5_ldv_param_23_3_default = (long long *)tmp___6;
  ldv_assume(ldv_statevar_4 == 3);
  ldv_io_instance_callback_5_23(ldv_5_callback_read, ldv_5_resource_file, ldv_5_ldv_param_23_1_default,
                                ldv_5_ldv_param_23_2_default, ldv_5_ldv_param_23_3_default);
  ldv_free((void *)ldv_5_ldv_param_23_1_default);
  ldv_free((void *)ldv_5_ldv_param_23_3_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_37413;
  case_27:
  {
  ldv_io_instance_callback_5_26(ldv_5_callback_unlocked_ioctl, ldv_5_resource_file,
                                ldv_5_ldv_param_26_1_default, ldv_5_ldv_param_26_2_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_37413;
  case_30:
  {
  tmp___7 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_29_1_default = (char *)tmp___7;
  tmp___8 = ldv_xmalloc(8UL);
  ldv_5_ldv_param_29_3_default = (long long *)tmp___8;
  ldv_io_instance_callback_5_29(ldv_5_callback_write, ldv_5_resource_file, ldv_5_ldv_param_29_1_default,
                                ldv_5_ldv_param_29_2_default, ldv_5_ldv_param_29_3_default);
  ldv_free((void *)ldv_5_ldv_param_29_1_default);
  ldv_free((void *)ldv_5_ldv_param_29_3_default);
  ldv_statevar_5 = 3;
  }
  goto ldv_37413;
  case_32:
  {
  ldv_5_ret_default = ldv_io_instance_probe_5_32(ldv_5_container_v4l2_file_operations->open,
                                                 ldv_5_resource_file);
  ldv_5_ret_default = ldv_filter_err_code(ldv_5_ret_default);
  tmp___9 = ldv_undef_int();
  }
  if (tmp___9 != 0) {
    ldv_statevar_5 = 8;
  } else {
    ldv_statevar_5 = 10;
  }
  goto ldv_37413;
  switch_default: ;
  switch_break: ;
  }
  ldv_37413: ;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_6(void *arg0 )
{
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  int tmp___9 ;
  {
  {
  if (ldv_statevar_6 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_6 == 2) {
    goto case_2;
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
  if (ldv_statevar_6 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_6 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_6 == 10) {
    goto case_10;
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
  if (ldv_statevar_6 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_6 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_6 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_6 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_6 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_6 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_6 == 30) {
    goto case_30;
  } else {
  }
  if (ldv_statevar_6 == 32) {
    goto case_32;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_statevar_6 = ldv_switch_3();
  }
  goto ldv_37436;
  case_2:
  {
  ldv_io_instance_release_6_2(ldv_6_container_struct_saa7146_use_ops->release, ldv_6_resource_struct_saa7146_dev_ptr,
                              ldv_6_resource_file);
  ldv_statevar_6 = 1;
  }
  goto ldv_37436;
  case_3:
  {
  ldv_statevar_6 = ldv_switch_4();
  }
  goto ldv_37436;
  case_4:
  {
  ldv_io_instance_callback_6_4(ldv_6_callback_init, ldv_6_resource_struct_saa7146_dev_ptr,
                               ldv_6_resource_struct_saa7146_vv_ptr);
  ldv_statevar_6 = 3;
  }
  goto ldv_37436;
  case_6:
  {
  ldv_free((void *)ldv_6_resource_file);
  ldv_free((void *)ldv_6_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_6_resource_struct_saa7146_dev_ptr);
  ldv_free((void *)ldv_6_resource_struct_saa7146_vv_ptr);
  ldv_free((void *)ldv_6_resource_struct_vm_area_struct_ptr);
  ldv_6_ret_default = 1;
  ldv_statevar_6 = 14;
  }
  goto ldv_37436;
  case_8:
  {
  ldv_assume(ldv_6_ret_default != 0);
  ldv_statevar_6 = ldv_switch_3();
  }
  goto ldv_37436;
  case_10:
  {
  ldv_assume(ldv_6_ret_default == 0);
  ldv_statevar_6 = ldv_switch_4();
  }
  goto ldv_37436;
  case_11:
  {
  ldv_6_ret_default = ldv_io_instance_probe_6_11(ldv_6_container_struct_saa7146_use_ops->open,
                                                 ldv_6_resource_struct_saa7146_dev_ptr,
                                                 ldv_6_resource_file);
  ldv_6_ret_default = ldv_filter_err_code(ldv_6_ret_default);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_6 = 8;
  } else {
    ldv_statevar_6 = 10;
  }
  goto ldv_37436;
  case_13:
  {
  tmp___0 = ldv_xmalloc(520UL);
  ldv_6_resource_file = (struct file *)tmp___0;
  tmp___1 = ldv_xmalloc(16UL);
  ldv_6_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___1;
  tmp___2 = ldv_xmalloc(1352UL);
  ldv_6_resource_struct_saa7146_dev_ptr = (struct saa7146_dev *)tmp___2;
  tmp___3 = ldv_xmalloc(1224UL);
  ldv_6_resource_struct_saa7146_vv_ptr = (struct saa7146_vv *)tmp___3;
  tmp___4 = ldv_xmalloc(184UL);
  ldv_6_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___4;
  ldv_statevar_6 = ldv_switch_3();
  }
  goto ldv_37436;
  case_14: ;
  goto ldv_37436;
  case_17:
  {
  ldv_io_instance_release_6_17(ldv_6_container_v4l2_file_operations->release, ldv_6_resource_file);
  ldv_statevar_6 = 1;
  }
  goto ldv_37436;
  case_19:
  {
  ldv_assume(ldv_statevar_4 == 2);
  ldv_io_instance_callback_6_18(ldv_6_callback_irq_done, ldv_6_resource_struct_saa7146_dev_ptr,
                                ldv_6_ldv_param_18_1_default);
  ldv_statevar_6 = 3;
  }
  goto ldv_37436;
  case_21:
  {
  ldv_io_instance_callback_6_21(ldv_6_callback_mmap, ldv_6_resource_file, ldv_6_resource_struct_vm_area_struct_ptr);
  ldv_statevar_6 = 3;
  }
  goto ldv_37436;
  case_22:
  {
  ldv_io_instance_callback_6_22(ldv_6_callback_poll, ldv_6_resource_file, ldv_6_resource_struct_poll_table_struct_ptr);
  ldv_statevar_6 = 3;
  }
  goto ldv_37436;
  case_24:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_6_ldv_param_23_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_6_ldv_param_23_3_default = (long long *)tmp___6;
  ldv_io_instance_callback_6_23(ldv_6_callback_read, ldv_6_resource_file, ldv_6_ldv_param_23_1_default,
                                ldv_6_ldv_param_23_2_default, ldv_6_ldv_param_23_3_default);
  ldv_free((void *)ldv_6_ldv_param_23_1_default);
  ldv_free((void *)ldv_6_ldv_param_23_3_default);
  ldv_statevar_6 = 3;
  }
  goto ldv_37436;
  case_27:
  {
  ldv_io_instance_callback_6_26(ldv_6_callback_unlocked_ioctl, ldv_6_resource_file,
                                ldv_6_ldv_param_26_1_default, ldv_6_ldv_param_26_2_default);
  ldv_statevar_6 = 3;
  }
  goto ldv_37436;
  case_30:
  {
  tmp___7 = ldv_xmalloc(1UL);
  ldv_6_ldv_param_29_1_default = (char *)tmp___7;
  tmp___8 = ldv_xmalloc(8UL);
  ldv_6_ldv_param_29_3_default = (long long *)tmp___8;
  ldv_io_instance_callback_6_29(ldv_6_callback_write, ldv_6_resource_file, ldv_6_ldv_param_29_1_default,
                                ldv_6_ldv_param_29_2_default, ldv_6_ldv_param_29_3_default);
  ldv_free((void *)ldv_6_ldv_param_29_1_default);
  ldv_free((void *)ldv_6_ldv_param_29_3_default);
  ldv_statevar_6 = 3;
  }
  goto ldv_37436;
  case_32:
  {
  ldv_6_ret_default = ldv_io_instance_probe_6_32(ldv_6_container_v4l2_file_operations->open,
                                                 ldv_6_resource_file);
  ldv_6_ret_default = ldv_filter_err_code(ldv_6_ret_default);
  tmp___9 = ldv_undef_int();
  }
  if (tmp___9 != 0) {
    ldv_statevar_6 = 8;
  } else {
    ldv_statevar_6 = 10;
  }
  goto ldv_37436;
  switch_default: ;
  switch_break: ;
  }
  ldv_37436: ;
  return;
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
static void *ldv_dev_get_drvdata_48(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_49(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static int ldv_del_timer_67(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
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
static void ldv___ldv_spin_lock_68(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_slock_of_saa7146_dev();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_69(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_slock_of_saa7146_dev();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
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
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
extern char *strcpy(char * , char const * ) ;
static void ldv___ldv_spin_lock_63(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_65(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_67(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_int_slock_of_saa7146_dev(void) ;
void ldv_spin_unlock_int_slock_of_saa7146_dev(void) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_70(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_71(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_64(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_64(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_69(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long volatile jiffies ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_69(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern bool capable(int ) ;
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
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
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
extern void v4l2_video_std_frame_period(int , struct v4l2_fract * ) ;
extern char const *v4l2_field_names[] ;
extern int v4l2_ctrl_subscribe_event(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
struct saa7146_format *saa7146_format_by_fourcc(struct saa7146_dev *dev , int fourcc ) ;
extern int saa7146_pgtable_alloc(struct pci_dev * , struct saa7146_pgtable * ) ;
extern void saa7146_pgtable_free(struct pci_dev * , struct saa7146_pgtable * ) ;
extern int saa7146_pgtable_build_single(struct pci_dev * , struct saa7146_pgtable * ,
                                        struct scatterlist * , int ) ;
__inline static void SAA7146_IER_DISABLE(struct saa7146_dev *x , unsigned int y )
{
  unsigned long flags ;
  unsigned int tmp ;
  {
  {
  ldv___ldv_spin_lock_63(& x->int_slock);
  tmp = readl((void const volatile *)x->mem + 220U);
  writel(tmp & ~ y, (void volatile *)x->mem + 220U);
  ldv_spin_unlock_irqrestore_64(& x->int_slock, flags);
  }
  return;
}
}
__inline static void SAA7146_IER_ENABLE(struct saa7146_dev *x , unsigned int y )
{
  unsigned long flags ;
  unsigned int tmp ;
  {
  {
  ldv___ldv_spin_lock_65(& x->int_slock);
  tmp = readl((void const volatile *)x->mem + 220U);
  writel(tmp | y, (void volatile *)x->mem + 220U);
  ldv_spin_unlock_irqrestore_64(& x->int_slock, flags);
  }
  return;
}
}
extern int videobuf_iolock(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
extern int videobuf_reqbufs(struct videobuf_queue * , struct v4l2_requestbuffers * ) ;
extern int videobuf_querybuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_qbuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_dqbuf(struct videobuf_queue * , struct v4l2_buffer * , int ) ;
extern int videobuf_streamon(struct videobuf_queue * ) ;
extern int videobuf_streamoff(struct videobuf_queue * ) ;
extern void videobuf_stop(struct videobuf_queue * ) ;
extern ssize_t videobuf_read_one(struct videobuf_queue * , char * , size_t , loff_t * ,
                                 int ) ;
extern void videobuf_queue_sg_init(struct videobuf_queue * , struct videobuf_queue_ops const * ,
                                   struct device * , spinlock_t * , enum v4l2_buf_type ,
                                   enum v4l2_field , unsigned int , void * , struct mutex * ) ;
int saa7146_enable_overlay(struct saa7146_fh *fh ) ;
void saa7146_disable_overlay(struct saa7146_fh *fh ) ;
void saa7146_set_capture(struct saa7146_dev *dev , struct saa7146_buf *buf , struct saa7146_buf *next ) ;
int saa7146_start_preview(struct saa7146_fh *fh ) ;
int saa7146_stop_preview(struct saa7146_fh *fh ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
static int max_memory = 32;
static struct saa7146_format formats[10U] =
  { {(char *)"RGB-8 (3-3-2)", 826427218U, 535U, 8U, 0U, (unsigned char)0},
        {(char *)"RGB-16 (5/B-6/G-5/R)", 1346520914U, 528U, 16U, 0U, (unsigned char)0},
        {(char *)"RGB-24 (B-G-R)",
      861030210U, 513U, 24U, 0U, (unsigned char)0},
        {(char *)"RGB-32 (B-G-R)", 877807426U, 514U, 32U, 0U, (unsigned char)0},
        {(char *)"RGB-32 (R-G-B)", 876758866U, 514U, 32U, 0U, 2U},
        {(char *)"Greyscale-8", 1497715271U, 6U, 8U, 0U, (unsigned char)0},
        {(char *)"YUV 4:2:2 planar (Y-Cb-Cr)", 1345466932U, 4105U, 16U, 3U, (unsigned char)0},
        {(char *)"YVU 4:2:0 planar (Y-Cb-Cr)",
      842094169U, 4106U, 12U, 3U, (unsigned char)0},
        {(char *)"YUV 4:2:0 planar (Y-Cb-Cr)", 842093913U, 4106U, 12U, 2U, (unsigned char)0},
        {(char *)"YUV 4:2:2 (U-Y-V-Y)",
      1498831189U, 0U, 16U, 0U, (unsigned char)0}};
static int NUM_FORMATS = 10;
struct saa7146_format *saa7146_format_by_fourcc(struct saa7146_dev *dev , int fourcc )
{
  int i ;
  int j ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  j = NUM_FORMATS;
  i = 0;
  goto ldv_36115;
  ldv_36114: ;
  if (formats[i].pixelformat == (u32 )fourcc) {
    return ((struct saa7146_format *)(& formats) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_36115: ;
  if (i < j) {
    goto ldv_36114;
  } else {
  }
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_format_by_fourcc";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): unknown pixelformat:\'%4.4s\'\n";
    descriptor.lineno = 101U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): unknown pixelformat:\'%4.4s\'\n",
                         "saa7146_format_by_fourcc", (char *)(& fourcc));
      }
    } else {
    }
  } else {
  }
  return ((struct saa7146_format *)0);
}
}
static int vidioc_try_fmt_vid_overlay(struct file *file , void *fh , struct v4l2_format *f ) ;
int saa7146_start_preview(struct saa7146_fh *fh )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  struct v4l2_format fmt ;
  int ret ;
  int err ;
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
  int tmp___5 ;
  struct _ddebug descriptor___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___6 ;
  long tmp___7 ;
  {
  dev = fh->dev;
  vv = dev->vv_data;
  ret = 0;
  err = 0;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_start_preview";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): dev:%p, fh:%p\n";
    descriptor.lineno = 114U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p, fh:%p\n", "saa7146_start_preview",
                         dev, fh);
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )vv->ov.fh == (unsigned long )((struct saa7146_fh *)0)) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "saa7146_start_preview";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___0.format = "%s(): no overlay data available. try S_FMT first.\n";
      descriptor___0.lineno = 118U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): no overlay data available. try S_FMT first.\n",
                           "saa7146_start_preview");
        }
      } else {
      }
    } else {
    }
    return (-11);
  } else {
  }
  if (((vv->video_status & 2) != 0 && (unsigned long )vv->video_fh == (unsigned long )fh) != 0) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "saa7146_start_preview";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___1.format = "%s(): streaming capture is active\n";
      descriptor___1.lineno = 124U;
      descriptor___1.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): streaming capture is active\n",
                           "saa7146_start_preview");
        }
      } else {
      }
    } else {
    }
    return (-16);
  } else {
  }
  if ((vv->video_status & 1 && (unsigned long )vv->video_fh == (unsigned long )fh) != 0) {
    if ((unsigned long )vv->video_fh == (unsigned long )fh) {
      if ((saa7146_debug & 2U) != 0U) {
        {
        descriptor___2.modname = "saa7146_vv";
        descriptor___2.function = "saa7146_start_preview";
        descriptor___2.filename = "drivers/media/common/saa7146/saa7146_video.c";
        descriptor___2.format = "%s(): overlay is already active\n";
        descriptor___2.lineno = 131U;
        descriptor___2.flags = 0U;
        tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
        }
        if (tmp___2 != 0L) {
          {
          __dynamic_pr_debug(& descriptor___2, "saa7146_vv: %s(): overlay is already active\n",
                             "saa7146_start_preview");
          }
        } else {
        }
      } else {
      }
      return (0);
    } else {
    }
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___3.modname = "saa7146_vv";
      descriptor___3.function = "saa7146_start_preview";
      descriptor___3.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___3.format = "%s(): overlay is already active in another open\n";
      descriptor___3.lineno = 134U;
      descriptor___3.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___3, "saa7146_vv: %s(): overlay is already active in another open\n",
                           "saa7146_start_preview");
        }
      } else {
      }
    } else {
    }
    return (-16);
  } else {
  }
  {
  tmp___5 = saa7146_res_get(fh, 3U);
  }
  if (tmp___5 == 0) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___4.modname = "saa7146_vv";
      descriptor___4.function = "saa7146_start_preview";
      descriptor___4.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___4.format = "%s(): cannot get necessary overlay resources\n";
      descriptor___4.lineno = 139U;
      descriptor___4.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      }
      if (tmp___4 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___4, "saa7146_vv: %s(): cannot get necessary overlay resources\n",
                           "saa7146_start_preview");
        }
      } else {
      }
    } else {
    }
    return (-16);
  } else {
  }
  {
  fmt.fmt.win = vv->ov.win;
  err = vidioc_try_fmt_vid_overlay((struct file *)0, (void *)fh, & fmt);
  }
  if (err != 0) {
    {
    saa7146_res_free(vv->video_fh, 3U);
    }
    return (-16);
  } else {
  }
  vv->ov.win = fmt.fmt.win;
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor___5.modname = "saa7146_vv";
    descriptor___5.function = "saa7146_start_preview";
    descriptor___5.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor___5.format = "%s(): %dx%d+%d+%d %s field=%s\n";
    descriptor___5.lineno = 154U;
    descriptor___5.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    }
    if (tmp___6 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___5, "saa7146_vv: %s(): %dx%d+%d+%d %s field=%s\n",
                         "saa7146_start_preview", vv->ov.win.w.width, vv->ov.win.w.height,
                         vv->ov.win.w.left, vv->ov.win.w.top, (vv->ov_fmt)->name,
                         v4l2_field_names[vv->ov.win.field]);
      }
    } else {
    }
  } else {
  }
  {
  ret = saa7146_enable_overlay(fh);
  }
  if (ret != 0) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___6.modname = "saa7146_vv";
      descriptor___6.function = "saa7146_start_preview";
      descriptor___6.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___6.format = "%s(): enabling overlay failed: %d\n";
      descriptor___6.lineno = 157U;
      descriptor___6.flags = 0U;
      tmp___7 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
      }
      if (tmp___7 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___6, "saa7146_vv: %s(): enabling overlay failed: %d\n",
                           "saa7146_start_preview", ret);
        }
      } else {
      }
    } else {
    }
    {
    saa7146_res_free(vv->video_fh, 3U);
    }
    return (ret);
  } else {
  }
  vv->video_status = 1;
  vv->video_fh = fh;
  return (0);
}
}
static char const __kstrtab_saa7146_start_preview[22U] =
  { 's', 'a', 'a', '7',
        '1', '4', '6', '_',
        's', 't', 'a', 'r',
        't', '_', 'p', 'r',
        'e', 'v', 'i', 'e',
        'w', '\000'};
struct kernel_symbol const __ksymtab_saa7146_start_preview ;
struct kernel_symbol const __ksymtab_saa7146_start_preview = {(unsigned long )(& saa7146_start_preview), (char const *)(& __kstrtab_saa7146_start_preview)};
int saa7146_stop_preview(struct saa7146_fh *fh )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  {
  dev = fh->dev;
  vv = dev->vv_data;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_stop_preview";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): dev:%p, fh:%p\n";
    descriptor.lineno = 174U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p, fh:%p\n", "saa7146_stop_preview",
                         dev, fh);
      }
    } else {
    }
  } else {
  }
  if (((vv->video_status & 2) != 0 && (unsigned long )vv->video_fh == (unsigned long )fh) != 0) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "saa7146_stop_preview";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___0.format = "%s(): streaming capture is active\n";
      descriptor___0.lineno = 178U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): streaming capture is active\n",
                           "saa7146_stop_preview");
        }
      } else {
      }
    } else {
    }
    return (-16);
  } else {
  }
  if ((vv->video_status & 1) == 0) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "saa7146_stop_preview";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___1.format = "%s(): no active overlay\n";
      descriptor___1.lineno = 184U;
      descriptor___1.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): no active overlay\n",
                           "saa7146_stop_preview");
        }
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  if ((unsigned long )vv->video_fh != (unsigned long )fh) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___2.modname = "saa7146_vv";
      descriptor___2.function = "saa7146_stop_preview";
      descriptor___2.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___2.format = "%s(): overlay is active, but in another open\n";
      descriptor___2.lineno = 189U;
      descriptor___2.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___2 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___2, "saa7146_vv: %s(): overlay is active, but in another open\n",
                           "saa7146_stop_preview");
        }
      } else {
      }
    } else {
    }
    return (-16);
  } else {
  }
  {
  vv->video_status = 0;
  vv->video_fh = (struct saa7146_fh *)0;
  saa7146_disable_overlay(fh);
  saa7146_res_free(fh, 3U);
  }
  return (0);
}
}
static char const __kstrtab_saa7146_stop_preview[21U] =
  { 's', 'a', 'a', '7',
        '1', '4', '6', '_',
        's', 't', 'o', 'p',
        '_', 'p', 'r', 'e',
        'v', 'i', 'e', 'w',
        '\000'};
struct kernel_symbol const __ksymtab_saa7146_stop_preview ;
struct kernel_symbol const __ksymtab_saa7146_stop_preview = {(unsigned long )(& saa7146_stop_preview), (char const *)(& __kstrtab_saa7146_stop_preview)};
static int saa7146_pgtable_build(struct saa7146_dev *dev , struct saa7146_buf *buf )
{
  struct pci_dev *pci ;
  struct videobuf_dmabuf *dma ;
  struct videobuf_dmabuf *tmp ;
  struct scatterlist *list ;
  int length ;
  struct saa7146_format *sfmt ;
  struct saa7146_format *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct saa7146_pgtable *pt1 ;
  struct saa7146_pgtable *pt2 ;
  struct saa7146_pgtable *pt3 ;
  __le32 *ptr1 ;
  __le32 *ptr2 ;
  __le32 *ptr3 ;
  __le32 fill ;
  int size ;
  int i ;
  int p ;
  int m1 ;
  int m2 ;
  int m3 ;
  int o1 ;
  int o2 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  struct saa7146_pgtable *pt ;
  int tmp___4 ;
  {
  {
  pci = dev->pci;
  tmp = videobuf_to_dma(& buf->vb);
  dma = tmp;
  list = dma->sglist;
  length = dma->sglen;
  tmp___0 = saa7146_format_by_fourcc(dev, (int )(buf->fmt)->pixelformat);
  sfmt = tmp___0;
  }
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_pgtable_build";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): dev:%p, buf:%p, sg_len:%d\n";
    descriptor.lineno = 215U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p, buf:%p, sg_len:%d\n",
                         "saa7146_pgtable_build", dev, buf, length);
      }
    } else {
    }
  } else {
  }
  if ((sfmt->trans & 61440U) != 0U) {
    pt1 = (struct saa7146_pgtable *)(& buf->pt);
    pt2 = (struct saa7146_pgtable *)(& buf->pt) + 1UL;
    pt3 = (struct saa7146_pgtable *)(& buf->pt) + 2UL;
    size = (int )((buf->fmt)->width * (buf->fmt)->height);
    {
    if ((int )sfmt->depth == 12) {
      goto case_12;
    } else {
    }
    if ((int )sfmt->depth == 16) {
      goto case_16;
    } else {
    }
    goto switch_default;
    case_12:
    m1 = (int )((unsigned int )(((unsigned long )size + 4096UL) / 4096UL) - 1U);
    m2 = (int )((unsigned int )(((unsigned long )(size + size / 4) + 4096UL) / 4096UL) - 1U);
    m3 = (int )((unsigned int )(((unsigned long )(size + size / 2) + 4096UL) / 4096UL) - 1U);
    o1 = size & 4095;
    o2 = (size + size / 4) & 4095;
    if ((saa7146_debug & 64U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "saa7146_pgtable_build";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___0.format = "%s(): size:%d, m1:%d, m2:%d, m3:%d, o1:%d, o2:%d\n";
      descriptor___0.lineno = 236U;
      descriptor___0.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___2 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): size:%d, m1:%d, m2:%d, m3:%d, o1:%d, o2:%d\n",
                           "saa7146_pgtable_build", size, m1, m2, m3, o1, o2);
        }
      } else {
      }
    } else {
    }
    goto ldv_36192;
    case_16:
    m1 = (int )((unsigned int )(((unsigned long )size + 4096UL) / 4096UL) - 1U);
    m2 = (int )((unsigned int )(((unsigned long )(size + size / 2) + 4096UL) / 4096UL) - 1U);
    m3 = (int )((unsigned int )(((unsigned long )(size * 2) + 4096UL) / 4096UL) - 1U);
    o1 = size & 4095;
    o2 = (size + size / 2) & 4095;
    if ((saa7146_debug & 64U) != 0U) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "saa7146_pgtable_build";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___1.format = "%s(): size:%d, m1:%d, m2:%d, m3:%d, o1:%d, o2:%d\n";
      descriptor___1.lineno = 247U;
      descriptor___1.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): size:%d, m1:%d, m2:%d, m3:%d, o1:%d, o2:%d\n",
                           "saa7146_pgtable_build", size, m1, m2, m3, o1, o2);
        }
      } else {
      }
    } else {
    }
    goto ldv_36192;
    switch_default: ;
    return (-1);
    switch_break: ;
    }
    ldv_36192:
    ptr1 = pt1->cpu;
    ptr2 = pt2->cpu;
    ptr3 = pt3->cpu;
    i = 0;
    goto ldv_36200;
    ldv_36199:
    p = 0;
    goto ldv_36197;
    ldv_36196:
    *ptr1 = (unsigned int )list->dma_address - list->offset;
    p = p + 1;
    ptr1 = ptr1 + 1;
    ldv_36197: ;
    if ((unsigned int )(p * 4096) < list->length) {
      goto ldv_36196;
    } else {
    }
    i = i + 1;
    list = list + 1;
    ldv_36200: ;
    if (i < length) {
      goto ldv_36199;
    } else {
    }
    pt1->offset = (unsigned long )(dma->sglist)->offset;
    pt2->offset = pt1->offset + (unsigned long )o1;
    pt3->offset = pt1->offset + (unsigned long )o2;
    ptr1 = pt1->cpu;
    i = m1;
    goto ldv_36203;
    ldv_36202:
    *ptr2 = *(ptr1 + (unsigned long )i);
    i = i + 1;
    ptr2 = ptr2 + 1;
    ldv_36203: ;
    if (i <= m2) {
      goto ldv_36202;
    } else {
    }
    fill = *(ptr2 + 0xffffffffffffffffUL);
    goto ldv_36206;
    ldv_36205:
    *ptr2 = fill;
    i = i + 1;
    ptr2 = ptr2 + 1;
    ldv_36206: ;
    if (i <= 1023) {
      goto ldv_36205;
    } else {
    }
    ptr1 = pt1->cpu;
    i = m2;
    goto ldv_36209;
    ldv_36208:
    *ptr3 = *(ptr1 + (unsigned long )i);
    i = i + 1;
    ptr3 = ptr3 + 1;
    ldv_36209: ;
    if (i <= m3) {
      goto ldv_36208;
    } else {
    }
    fill = *(ptr3 + 0xffffffffffffffffUL);
    goto ldv_36212;
    ldv_36211:
    *ptr3 = fill;
    i = i + 1;
    ptr3 = ptr3 + 1;
    ldv_36212: ;
    if (i <= 1023) {
      goto ldv_36211;
    } else {
    }
    ptr1 = pt1->cpu + (unsigned long )m1;
    fill = *(pt1->cpu + (unsigned long )m1);
    i = m1;
    goto ldv_36215;
    ldv_36214:
    *ptr1 = fill;
    i = i + 1;
    ptr1 = ptr1 + 1;
    ldv_36215: ;
    if (i <= 1023) {
      goto ldv_36214;
    } else {
    }
  } else {
    {
    pt = (struct saa7146_pgtable *)(& buf->pt);
    tmp___4 = saa7146_pgtable_build_single(pci, pt, list, length);
    }
    return (tmp___4);
  }
  return (0);
}
}
static int video_begin(struct saa7146_fh *fh )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  struct saa7146_format *fmt ;
  unsigned int resource ;
  int ret ;
  int err ;
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
  long tmp___4 ;
  struct _ddebug descriptor___4 ;
  long tmp___5 ;
  {
  dev = fh->dev;
  vv = dev->vv_data;
  fmt = (struct saa7146_format *)0;
  ret = 0;
  err = 0;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "video_begin";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): dev:%p, fh:%p\n";
    descriptor.lineno = 336U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p, fh:%p\n", "video_begin",
                         dev, fh);
      }
    } else {
    }
  } else {
  }
  if ((vv->video_status & 2) != 0) {
    if ((unsigned long )vv->video_fh == (unsigned long )fh) {
      if ((int )saa7146_debug & 1) {
        {
        descriptor___0.modname = "saa7146_vv";
        descriptor___0.function = "video_begin";
        descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
        descriptor___0.format = "%s(): already capturing\n";
        descriptor___0.lineno = 340U;
        descriptor___0.flags = 0U;
        tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        }
        if (tmp___0 != 0L) {
          {
          __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): already capturing\n",
                             "video_begin");
          }
        } else {
        }
      } else {
      }
      return (0);
    } else {
    }
    if ((int )saa7146_debug & 1) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "video_begin";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___1.format = "%s(): already capturing in another open\n";
      descriptor___1.lineno = 343U;
      descriptor___1.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): already capturing in another open\n",
                           "video_begin");
        }
      } else {
      }
    } else {
    }
    return (-16);
  } else {
  }
  if (vv->video_status & 1) {
    if ((int )saa7146_debug & 1) {
      {
      descriptor___2.modname = "saa7146_vv";
      descriptor___2.function = "video_begin";
      descriptor___2.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___2.format = "%s(): warning: suspending overlay video for streaming capture\n";
      descriptor___2.lineno = 348U;
      descriptor___2.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___2 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___2, "saa7146_vv: %s(): warning: suspending overlay video for streaming capture\n",
                           "video_begin");
        }
      } else {
      }
    } else {
    }
    {
    vv->ov_suspend = vv->video_fh;
    err = saa7146_stop_preview(vv->video_fh);
    }
    if (err != 0) {
      if ((saa7146_debug & 2U) != 0U) {
        {
        descriptor___3.modname = "saa7146_vv";
        descriptor___3.function = "video_begin";
        descriptor___3.filename = "drivers/media/common/saa7146/saa7146_video.c";
        descriptor___3.format = "%s(): suspending video failed. aborting\n";
        descriptor___3.lineno = 352U;
        descriptor___3.flags = 0U;
        tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
        }
        if (tmp___3 != 0L) {
          {
          __dynamic_pr_debug(& descriptor___3, "saa7146_vv: %s(): suspending video failed. aborting\n",
                             "video_begin");
          }
        } else {
        }
      } else {
      }
      return (err);
    } else {
    }
  } else {
  }
  {
  fmt = saa7146_format_by_fourcc(dev, (int )vv->video_fmt.pixelformat);
  tmp___4 = ldv__builtin_expect((unsigned long )fmt == (unsigned long )((struct saa7146_format *)0),
                             0L);
  }
  if (tmp___4 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_video.c"),
                         "i" (359), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if (((int )fmt->flags & 2) != 0) {
    resource = 7U;
  } else {
    resource = 1U;
  }
  {
  ret = saa7146_res_get(fh, resource);
  }
  if (ret == 0) {
    if ((int )saa7146_debug & 1) {
      {
      descriptor___4.modname = "saa7146_vv";
      descriptor___4.function = "video_begin";
      descriptor___4.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___4.format = "%s(): cannot get capture resource %d\n";
      descriptor___4.lineno = 369U;
      descriptor___4.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      }
      if (tmp___5 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___4, "saa7146_vv: %s(): cannot get capture resource %d\n",
                           "video_begin", resource);
        }
      } else {
      }
    } else {
    }
    if ((unsigned long )vv->ov_suspend != (unsigned long )((struct saa7146_fh *)0)) {
      {
      saa7146_start_preview(vv->ov_suspend);
      vv->ov_suspend = (struct saa7146_fh *)0;
      }
    } else {
    }
    return (-16);
  } else {
  }
  {
  writel(134217728U, (void volatile *)dev->mem + 256U);
  SAA7146_IER_ENABLE(dev, 134217728U);
  vv->video_fh = fh;
  vv->video_status = 2;
  }
  return (0);
}
}
static int video_end(struct saa7146_fh *fh , struct file *file )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  struct saa7146_format *fmt ;
  unsigned long flags ;
  unsigned int resource ;
  u32 dmas ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  dev = fh->dev;
  vv = dev->vv_data;
  fmt = (struct saa7146_format *)0;
  dmas = 0U;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "video_end";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): dev:%p, fh:%p\n";
    descriptor.lineno = 397U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p, fh:%p\n", "video_end",
                         dev, fh);
      }
    } else {
    }
  } else {
  }
  if ((vv->video_status & 2) == 0) {
    if ((int )saa7146_debug & 1) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "video_end";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___0.format = "%s(): not capturing\n";
      descriptor___0.lineno = 400U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): not capturing\n",
                           "video_end");
        }
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  if ((unsigned long )vv->video_fh != (unsigned long )fh) {
    if ((int )saa7146_debug & 1) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "video_end";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___1.format = "%s(): capturing, but in another open\n";
      descriptor___1.lineno = 405U;
      descriptor___1.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): capturing, but in another open\n",
                           "video_end");
        }
      } else {
      }
    } else {
    }
    return (-16);
  } else {
  }
  {
  fmt = saa7146_format_by_fourcc(dev, (int )vv->video_fmt.pixelformat);
  tmp___2 = ldv__builtin_expect((unsigned long )fmt == (unsigned long )((struct saa7146_format *)0),
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_video.c"),
                         "i" (411), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if (((int )fmt->flags & 2) != 0) {
    resource = 7U;
    dmas = 7340032U;
  } else {
    resource = 1U;
    dmas = 4194304U;
  }
  {
  ldv___ldv_spin_lock_67(& dev->slock);
  writel(268435456U, (void volatile *)dev->mem + 252U);
  SAA7146_IER_DISABLE(dev, 134217728U);
  writel(dmas, (void volatile *)dev->mem + 252U);
  ldv_spin_unlock_irqrestore_69(& dev->slock, flags);
  vv->video_fh = (struct saa7146_fh *)0;
  vv->video_status = 0;
  saa7146_res_free(fh, resource);
  }
  if ((unsigned long )vv->ov_suspend != (unsigned long )((struct saa7146_fh *)0)) {
    {
    saa7146_start_preview(vv->ov_suspend);
    vv->ov_suspend = (struct saa7146_fh *)0;
    }
  } else {
  }
  return (0);
}
}
static int vidioc_querycap(struct file *file , void *fh , struct v4l2_capability *cap )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct saa7146_dev *dev ;
  char const *tmp___0 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  dev = ((struct saa7146_fh *)fh)->dev;
  strcpy((char *)(& cap->driver), "saa7146 v4l2");
  strlcpy((char *)(& cap->card), (char const *)(& (dev->ext)->name), 32UL);
  tmp___0 = pci_name((struct pci_dev const *)dev->pci);
  sprintf((char *)(& cap->bus_info), "PCI:%s", tmp___0);
  cap->device_caps = 83886085U;
  cap->device_caps = cap->device_caps | (dev->ext_vv_data)->capabilities;
  cap->capabilities = cap->device_caps | 2147483648U;
  }
  if (vdev->vfl_type == 0) {
    cap->device_caps = cap->device_caps & 4294967151U;
  } else {
    cap->device_caps = cap->device_caps & 4294836218U;
  }
  return (0);
}
}
static int vidioc_g_fbuf(struct file *file , void *fh , struct v4l2_framebuffer *fb )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  {
  dev = ((struct saa7146_fh *)fh)->dev;
  vv = dev->vv_data;
  *fb = vv->ov_fb;
  fb->capability = 4U;
  fb->flags = 1U;
  return (0);
}
}
static int vidioc_s_fbuf(struct file *file , void *fh , struct v4l2_framebuffer const *fb )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  struct saa7146_format *fmt ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  {
  dev = ((struct saa7146_fh *)fh)->dev;
  vv = dev->vv_data;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vidioc_s_fbuf";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): VIDIOC_S_FBUF\n";
    descriptor.lineno = 487U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): VIDIOC_S_FBUF\n", "vidioc_s_fbuf");
      }
    } else {
    }
  } else {
  }
  {
  tmp___0 = capable(21);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    {
    tmp___2 = capable(17);
    }
    if (tmp___2) {
      tmp___3 = 0;
    } else {
      tmp___3 = 1;
    }
    if (tmp___3) {
      return (-1);
    } else {
    }
  } else {
  }
  {
  fmt = saa7146_format_by_fourcc(dev, (int )fb->fmt.pixelformat);
  }
  if ((unsigned long )fmt == (unsigned long )((struct saa7146_format *)0)) {
    return (-22);
  } else {
  }
  if (((int )fmt->flags & 2) != 0) {
    if ((int )saa7146_debug & 1) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "vidioc_s_fbuf";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___0.format = "%s(): planar pixelformat \'%4.4s\' not allowed for overlay\n";
      descriptor___0.lineno = 500U;
      descriptor___0.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___4 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): planar pixelformat \'%4.4s\' not allowed for overlay\n",
                           "vidioc_s_fbuf", (char *)(& fmt->pixelformat));
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((vv->video_status & 1 && (unsigned long )((void *)vv->video_fh) == (unsigned long )fh) != 0) {
    if ((unsigned long )((void *)vv->video_fh) != (unsigned long )fh) {
      if ((saa7146_debug & 2U) != 0U) {
        {
        descriptor___1.modname = "saa7146_vv";
        descriptor___1.function = "vidioc_s_fbuf";
        descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
        descriptor___1.format = "%s(): refusing to change framebuffer informations while overlay is active in another open\n";
        descriptor___1.lineno = 505U;
        descriptor___1.flags = 0U;
        tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
        }
        if (tmp___5 != 0L) {
          {
          __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): refusing to change framebuffer informations while overlay is active in another open\n",
                             "vidioc_s_fbuf");
          }
        } else {
        }
      } else {
      }
      return (-16);
    } else {
    }
  } else {
  }
  vv->ov_fb = *fb;
  vv->ov_fmt = fmt;
  if (vv->ov_fb.fmt.bytesperline < vv->ov_fb.fmt.width) {
    vv->ov_fb.fmt.bytesperline = (vv->ov_fb.fmt.width * (__u32 )fmt->depth) / 8U;
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___2.modname = "saa7146_vv";
      descriptor___2.function = "vidioc_s_fbuf";
      descriptor___2.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___2.format = "%s(): setting bytesperline to %d\n";
      descriptor___2.lineno = 516U;
      descriptor___2.flags = 0U;
      tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___6 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___2, "saa7146_vv: %s(): setting bytesperline to %d\n",
                           "vidioc_s_fbuf", vv->ov_fb.fmt.bytesperline);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int vidioc_enum_fmt_vid_cap(struct file *file , void *fh , struct v4l2_fmtdesc *f )
{
  {
  if (f->index >= (__u32 )NUM_FORMATS) {
    return (-22);
  } else {
  }
  {
  strlcpy((char *)(& f->description), (char const *)formats[f->index].name, 32UL);
  f->pixelformat = formats[f->index].pixelformat;
  }
  return (0);
}
}
int saa7146_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct saa7146_dev *dev ;
  struct v4l2_ctrl_handler const *__mptr ;
  struct saa7146_vv *vv ;
  u32 val ;
  struct saa7146_fh *fh ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  dev = (struct saa7146_dev *)__mptr + 0xfffffffffffffe90UL;
  vv = dev->vv_data;
  {
  if (ctrl->id == 9963776U) {
    goto case_9963776;
  } else {
  }
  if (ctrl->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  if (ctrl->id == 9963778U) {
    goto case_9963778;
  } else {
  }
  if (ctrl->id == 9963796U) {
    goto case_9963796;
  } else {
  }
  if (ctrl->id == 9963797U) {
    goto case_9963797;
  } else {
  }
  goto switch_default;
  case_9963776:
  {
  val = readl((void const volatile *)dev->mem + 112U);
  val = val & 16777215U;
  val = val | (u32 )(ctrl->__annonCompField82.val << 24);
  writel(val, (void volatile *)dev->mem + 112U);
  writel(4194368U, (void volatile *)dev->mem + 256U);
  }
  goto ldv_36289;
  case_9963777:
  {
  val = readl((void const volatile *)dev->mem + 112U);
  val = val & 4278255615U;
  val = val | (u32 )(ctrl->__annonCompField82.val << 16);
  writel(val, (void volatile *)dev->mem + 112U);
  writel(4194368U, (void volatile *)dev->mem + 256U);
  }
  goto ldv_36289;
  case_9963778:
  {
  val = readl((void const volatile *)dev->mem + 112U);
  val = val & 4294967040U;
  val = val | (u32 )ctrl->__annonCompField82.val;
  writel(val, (void volatile *)dev->mem + 112U);
  writel(4194368U, (void volatile *)dev->mem + 256U);
  }
  goto ldv_36289;
  case_9963796: ;
  if ((vv->video_status & 2) != 0) {
    return (-16);
  } else {
  }
  vv->hflip = ctrl->__annonCompField82.val;
  goto ldv_36289;
  case_9963797: ;
  if ((vv->video_status & 2) != 0) {
    return (-16);
  } else {
  }
  vv->vflip = ctrl->__annonCompField82.val;
  goto ldv_36289;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_36289: ;
  if (vv->video_status & 1) {
    {
    fh = vv->video_fh;
    saa7146_stop_preview(fh);
    saa7146_start_preview(fh);
    }
  } else {
  }
  return (0);
}
}
static int vidioc_g_parm(struct file *file , void *fh , struct v4l2_streamparm *parm )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  {
  dev = ((struct saa7146_fh *)fh)->dev;
  vv = dev->vv_data;
  if (parm->type != 1U) {
    return (-22);
  } else {
  }
  {
  parm->parm.capture.readbuffers = 1U;
  v4l2_video_std_frame_period((int )(vv->standard)->id, & parm->parm.capture.timeperframe);
  }
  return (0);
}
}
static int vidioc_g_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *f )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  {
  dev = ((struct saa7146_fh *)fh)->dev;
  vv = dev->vv_data;
  f->fmt.pix = vv->video_fmt;
  return (0);
}
}
static int vidioc_g_fmt_vid_overlay(struct file *file , void *fh , struct v4l2_format *f )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  {
  dev = ((struct saa7146_fh *)fh)->dev;
  vv = dev->vv_data;
  f->fmt.win = vv->ov.win;
  return (0);
}
}
static int vidioc_g_fmt_vbi_cap(struct file *file , void *fh , struct v4l2_format *f )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  {
  dev = ((struct saa7146_fh *)fh)->dev;
  vv = dev->vv_data;
  f->fmt.vbi = vv->vbi_fmt;
  return (0);
}
}
static int vidioc_try_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *f )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  struct saa7146_format *fmt ;
  enum v4l2_field field ;
  int maxw ;
  int maxh ;
  int calc_bpl ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  {
  dev = ((struct saa7146_fh *)fh)->dev;
  vv = dev->vv_data;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vidioc_try_fmt_vid_cap";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): V4L2_BUF_TYPE_VIDEO_CAPTURE: dev:%p, fh:%p\n";
    descriptor.lineno = 639U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): V4L2_BUF_TYPE_VIDEO_CAPTURE: dev:%p, fh:%p\n",
                         "vidioc_try_fmt_vid_cap", dev, fh);
      }
    } else {
    }
  } else {
  }
  {
  fmt = saa7146_format_by_fourcc(dev, (int )f->fmt.pix.pixelformat);
  }
  if ((unsigned long )fmt == (unsigned long )((struct saa7146_format *)0)) {
    return (-22);
  } else {
  }
  field = (enum v4l2_field )f->fmt.pix.field;
  maxw = (vv->standard)->h_max_out;
  maxh = (vv->standard)->v_max_out;
  if ((unsigned int )field == 0U) {
    field = f->fmt.pix.height > (__u32 )(maxh / 2) ? 4 : 3;
  } else {
  }
  {
  if ((unsigned int )field == 7U) {
    goto case_7;
  } else {
  }
  if ((unsigned int )field == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )field == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )field == 4U) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_7:
  vv->last_field = 2;
  maxh = maxh / 2;
  goto ldv_36339;
  case_2: ;
  case_3:
  vv->last_field = 4;
  maxh = maxh / 2;
  goto ldv_36339;
  case_4:
  vv->last_field = 4;
  goto ldv_36339;
  switch_default: ;
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor___0.modname = "saa7146_vv";
    descriptor___0.function = "vidioc_try_fmt_vid_cap";
    descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor___0.format = "%s(): no known field mode \'%d\'\n";
    descriptor___0.lineno = 668U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): no known field mode \'%d\'\n",
                         "vidioc_try_fmt_vid_cap", (unsigned int )field);
      }
    } else {
    }
  } else {
  }
  return (-22);
  switch_break: ;
  }
  ldv_36339:
  f->fmt.pix.field = (__u32 )field;
  f->fmt.pix.colorspace = 1U;
  if (f->fmt.pix.width > (__u32 )maxw) {
    f->fmt.pix.width = (__u32 )maxw;
  } else {
  }
  if (f->fmt.pix.height > (__u32 )maxh) {
    f->fmt.pix.height = (__u32 )maxh;
  } else {
  }
  calc_bpl = (int )((f->fmt.pix.width * (__u32 )fmt->depth) / 8U);
  if (f->fmt.pix.bytesperline < (__u32 )calc_bpl) {
    f->fmt.pix.bytesperline = (__u32 )calc_bpl;
  } else {
  }
  if ((unsigned long )f->fmt.pix.bytesperline > ((unsigned long )fmt->depth * 8192UL) / 8UL) {
    f->fmt.pix.bytesperline = (__u32 )calc_bpl;
  } else {
  }
  f->fmt.pix.sizeimage = f->fmt.pix.bytesperline * f->fmt.pix.height;
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor___1.modname = "saa7146_vv";
    descriptor___1.function = "vidioc_try_fmt_vid_cap";
    descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor___1.format = "%s(): w:%d, h:%d, bytesperline:%d, sizeimage:%d\n";
    descriptor___1.lineno = 690U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): w:%d, h:%d, bytesperline:%d, sizeimage:%d\n",
                         "vidioc_try_fmt_vid_cap", f->fmt.pix.width, f->fmt.pix.height,
                         f->fmt.pix.bytesperline, f->fmt.pix.sizeimage);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int vidioc_try_fmt_vid_overlay(struct file *file , void *fh , struct v4l2_format *f )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  struct v4l2_window *win ;
  enum v4l2_field field ;
  int maxw ;
  int maxh ;
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
  {
  dev = ((struct saa7146_fh *)fh)->dev;
  vv = dev->vv_data;
  win = & f->fmt.win;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vidioc_try_fmt_vid_overlay";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): dev:%p\n";
    descriptor.lineno = 704U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): dev:%p\n", "vidioc_try_fmt_vid_overlay",
                         dev);
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )vv->ov_fb.base == (unsigned long )((void *)0)) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "vidioc_try_fmt_vid_overlay";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___0.format = "%s(): no fb base set\n";
      descriptor___0.lineno = 707U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): no fb base set\n",
                           "vidioc_try_fmt_vid_overlay");
        }
      } else {
      }
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned long )vv->ov_fmt == (unsigned long )((struct saa7146_format *)0)) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "vidioc_try_fmt_vid_overlay";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___1.format = "%s(): no fb fmt set\n";
      descriptor___1.lineno = 711U;
      descriptor___1.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): no fb fmt set\n",
                           "vidioc_try_fmt_vid_overlay");
        }
      } else {
      }
    } else {
    }
    return (-22);
  } else {
  }
  if (win->w.width <= 47U || win->w.height <= 31U) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___2.modname = "saa7146_vv";
      descriptor___2.function = "vidioc_try_fmt_vid_overlay";
      descriptor___2.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___2.format = "%s(): min width/height. (%d,%d)\n";
      descriptor___2.lineno = 716U;
      descriptor___2.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___2 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___2, "saa7146_vv: %s(): min width/height. (%d,%d)\n",
                           "vidioc_try_fmt_vid_overlay", win->w.width, win->w.height);
        }
      } else {
      }
    } else {
    }
    return (-22);
  } else {
  }
  if (win->clipcount > 16U) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___3.modname = "saa7146_vv";
      descriptor___3.function = "vidioc_try_fmt_vid_overlay";
      descriptor___3.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___3.format = "%s(): clipcount too big\n";
      descriptor___3.lineno = 720U;
      descriptor___3.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___3, "saa7146_vv: %s(): clipcount too big\n",
                           "vidioc_try_fmt_vid_overlay");
        }
      } else {
      }
    } else {
    }
    return (-22);
  } else {
  }
  field = (enum v4l2_field )win->field;
  maxw = (vv->standard)->h_max_out;
  maxh = (vv->standard)->v_max_out;
  if ((unsigned int )field == 0U) {
    field = win->w.height > (__u32 )(maxh / 2) ? 4 : 2;
  } else {
  }
  {
  if ((unsigned int )field == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )field == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )field == 7U) {
    goto case_7;
  } else {
  }
  if ((unsigned int )field == 4U) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_2: ;
  case_3: ;
  case_7:
  maxh = maxh / 2;
  goto ldv_36366;
  case_4: ;
  goto ldv_36366;
  switch_default: ;
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor___4.modname = "saa7146_vv";
    descriptor___4.function = "vidioc_try_fmt_vid_overlay";
    descriptor___4.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor___4.format = "%s(): no known field mode \'%d\'\n";
    descriptor___4.lineno = 742U;
    descriptor___4.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___4, "saa7146_vv: %s(): no known field mode \'%d\'\n",
                         "vidioc_try_fmt_vid_overlay", (unsigned int )field);
      }
    } else {
    }
  } else {
  }
  return (-22);
  switch_break: ;
  }
  ldv_36366:
  win->field = (__u32 )field;
  if (win->w.width > (__u32 )maxw) {
    win->w.width = (__u32 )maxw;
  } else {
  }
  if (win->w.height > (__u32 )maxh) {
    win->w.height = (__u32 )maxh;
  } else {
  }
  return (0);
}
}
static int vidioc_s_fmt_vid_cap(struct file *file , void *__fh , struct v4l2_format *f )
{
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  {
  fh = (struct saa7146_fh *)__fh;
  dev = fh->dev;
  vv = dev->vv_data;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vidioc_s_fmt_vid_cap";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): V4L2_BUF_TYPE_VIDEO_CAPTURE: dev:%p, fh:%p\n";
    descriptor.lineno = 762U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): V4L2_BUF_TYPE_VIDEO_CAPTURE: dev:%p, fh:%p\n",
                         "vidioc_s_fmt_vid_cap", dev, fh);
      }
    } else {
    }
  } else {
  }
  if (((vv->video_status & 2) != 0 && (unsigned long )vv->video_fh == (unsigned long )fh) != 0) {
    if ((saa7146_debug & 4U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "vidioc_s_fmt_vid_cap";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___0.format = "%s(): streaming capture is active\n";
      descriptor___0.lineno = 764U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): streaming capture is active\n",
                           "vidioc_s_fmt_vid_cap");
        }
      } else {
      }
    } else {
    }
    return (-16);
  } else {
  }
  {
  err = vidioc_try_fmt_vid_cap(file, (void *)fh, f);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  vv->video_fmt = f->fmt.pix;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor___1.modname = "saa7146_vv";
    descriptor___1.function = "vidioc_s_fmt_vid_cap";
    descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor___1.format = "%s(): set to pixelformat \'%4.4s\'\n";
    descriptor___1.lineno = 772U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): set to pixelformat \'%4.4s\'\n",
                         "vidioc_s_fmt_vid_cap", (char *)(& vv->video_fmt.pixelformat));
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int vidioc_s_fmt_vid_overlay(struct file *file , void *__fh , struct v4l2_format *f )
{
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long tmp___0 ;
  {
  fh = (struct saa7146_fh *)__fh;
  dev = fh->dev;
  vv = dev->vv_data;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vidioc_s_fmt_vid_overlay";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): V4L2_BUF_TYPE_VIDEO_OVERLAY: dev:%p, fh:%p\n";
    descriptor.lineno = 783U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): V4L2_BUF_TYPE_VIDEO_OVERLAY: dev:%p, fh:%p\n",
                         "vidioc_s_fmt_vid_overlay", dev, fh);
      }
    } else {
    }
  } else {
  }
  {
  err = vidioc_try_fmt_vid_overlay(file, (void *)fh, f);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  vv->ov.win = f->fmt.win;
  vv->ov.nclips = (int )f->fmt.win.clipcount;
  if (vv->ov.nclips > 16) {
    vv->ov.nclips = 16;
  } else {
  }
  {
  tmp___0 = copy_from_user((void *)(& vv->ov.clips), (void const *)f->fmt.win.clips,
                           (unsigned long )vv->ov.nclips * 24UL);
  }
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  vv->ov.fh = fh;
  if ((vv->video_status & 1 && (unsigned long )vv->video_fh == (unsigned long )fh) != 0) {
    {
    saa7146_stop_preview(fh);
    saa7146_start_preview(fh);
    }
  } else {
  }
  return (0);
}
}
static int vidioc_g_std(struct file *file , void *fh , v4l2_std_id *norm )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  {
  dev = ((struct saa7146_fh *)fh)->dev;
  vv = dev->vv_data;
  *norm = (vv->standard)->id;
  return (0);
}
}
static int vidioc_s_std(struct file *file , void *fh , v4l2_std_id id )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  int found ;
  int err ;
  int i ;
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
  {
  dev = ((struct saa7146_fh *)fh)->dev;
  vv = dev->vv_data;
  found = 0;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vidioc_s_std";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): VIDIOC_S_STD\n";
    descriptor.lineno = 841U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): VIDIOC_S_STD\n", "vidioc_s_std");
      }
    } else {
    }
  } else {
  }
  if ((vv->video_status & 2) != 0) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "vidioc_s_std";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___0.format = "%s(): cannot change video standard while streaming capture is active\n";
      descriptor___0.lineno = 844U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): cannot change video standard while streaming capture is active\n",
                           "vidioc_s_std");
        }
      } else {
      }
    } else {
    }
    return (-16);
  } else {
  }
  if (vv->video_status & 1) {
    {
    vv->ov_suspend = vv->video_fh;
    err = saa7146_stop_preview(vv->video_fh);
    }
    if (err != 0) {
      if ((saa7146_debug & 2U) != 0U) {
        {
        descriptor___1.modname = "saa7146_vv";
        descriptor___1.function = "vidioc_s_std";
        descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
        descriptor___1.format = "%s(): suspending video failed. aborting\n";
        descriptor___1.lineno = 852U;
        descriptor___1.flags = 0U;
        tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
        }
        if (tmp___1 != 0L) {
          {
          __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): suspending video failed. aborting\n",
                             "vidioc_s_std");
          }
        } else {
        }
      } else {
      }
      return (err);
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_36417;
  ldv_36416: ;
  if ((id & ((dev->ext_vv_data)->stds + (unsigned long )i)->id) != 0ULL) {
    goto ldv_36415;
  } else {
  }
  i = i + 1;
  ldv_36417: ;
  if (i < (dev->ext_vv_data)->num_stds) {
    goto ldv_36416;
  } else {
  }
  ldv_36415: ;
  if (i != (dev->ext_vv_data)->num_stds) {
    vv->standard = (dev->ext_vv_data)->stds + (unsigned long )i;
    if ((unsigned long )(dev->ext_vv_data)->std_callback != (unsigned long )((int (*)(struct saa7146_dev * ,
                                                                                      struct saa7146_standard * ))0)) {
      {
      (*((dev->ext_vv_data)->std_callback))(dev, vv->standard);
      }
    } else {
    }
    found = 1;
  } else {
  }
  if ((unsigned long )vv->ov_suspend != (unsigned long )((struct saa7146_fh *)0)) {
    {
    saa7146_start_preview(vv->ov_suspend);
    vv->ov_suspend = (struct saa7146_fh *)0;
    }
  } else {
  }
  if (found == 0) {
    if ((saa7146_debug & 4U) != 0U) {
      {
      descriptor___2.modname = "saa7146_vv";
      descriptor___2.function = "vidioc_s_std";
      descriptor___2.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___2.format = "%s(): VIDIOC_S_STD: standard not found\n";
      descriptor___2.lineno = 873U;
      descriptor___2.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___2 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___2, "saa7146_vv: %s(): VIDIOC_S_STD: standard not found\n",
                           "vidioc_s_std");
        }
      } else {
      }
    } else {
    }
    return (-22);
  } else {
  }
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor___3.modname = "saa7146_vv";
    descriptor___3.function = "vidioc_s_std";
    descriptor___3.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor___3.format = "%s(): VIDIOC_S_STD: set to standard to \'%s\'\n";
    descriptor___3.lineno = 877U;
    descriptor___3.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___3, "saa7146_vv: %s(): VIDIOC_S_STD: set to standard to \'%s\'\n",
                         "vidioc_s_std", (vv->standard)->name);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int vidioc_overlay(struct file *file , void *fh , unsigned int on )
{
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vidioc_overlay";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): VIDIOC_OVERLAY on:%d\n";
    descriptor.lineno = 885U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): VIDIOC_OVERLAY on:%d\n",
                         "vidioc_overlay", on);
      }
    } else {
    }
  } else {
  }
  if (on != 0U) {
    {
    err = saa7146_start_preview((struct saa7146_fh *)fh);
    }
  } else {
    {
    err = saa7146_stop_preview((struct saa7146_fh *)fh);
    }
  }
  return (err);
}
}
static int vidioc_reqbufs(struct file *file , void *__fh , struct v4l2_requestbuffers *b )
{
  struct saa7146_fh *fh ;
  int tmp ;
  int tmp___0 ;
  {
  fh = (struct saa7146_fh *)__fh;
  if (b->type == 1U) {
    {
    tmp = videobuf_reqbufs(& fh->video_q, b);
    }
    return (tmp);
  } else {
  }
  if (b->type == 4U) {
    {
    tmp___0 = videobuf_reqbufs(& fh->vbi_q, b);
    }
    return (tmp___0);
  } else {
  }
  return (-22);
}
}
static int vidioc_querybuf(struct file *file , void *__fh , struct v4l2_buffer *buf )
{
  struct saa7146_fh *fh ;
  int tmp ;
  int tmp___0 ;
  {
  fh = (struct saa7146_fh *)__fh;
  if (buf->type == 1U) {
    {
    tmp = videobuf_querybuf(& fh->video_q, buf);
    }
    return (tmp);
  } else {
  }
  if (buf->type == 4U) {
    {
    tmp___0 = videobuf_querybuf(& fh->vbi_q, buf);
    }
    return (tmp___0);
  } else {
  }
  return (-22);
}
}
static int vidioc_qbuf(struct file *file , void *__fh , struct v4l2_buffer *buf )
{
  struct saa7146_fh *fh ;
  int tmp ;
  int tmp___0 ;
  {
  fh = (struct saa7146_fh *)__fh;
  if (buf->type == 1U) {
    {
    tmp = videobuf_qbuf(& fh->video_q, buf);
    }
    return (tmp);
  } else {
  }
  if (buf->type == 4U) {
    {
    tmp___0 = videobuf_qbuf(& fh->vbi_q, buf);
    }
    return (tmp___0);
  } else {
  }
  return (-22);
}
}
static int vidioc_dqbuf(struct file *file , void *__fh , struct v4l2_buffer *buf )
{
  struct saa7146_fh *fh ;
  int tmp ;
  int tmp___0 ;
  {
  fh = (struct saa7146_fh *)__fh;
  if (buf->type == 1U) {
    {
    tmp = videobuf_dqbuf(& fh->video_q, buf, (int )file->f_flags & 2048);
    }
    return (tmp);
  } else {
  }
  if (buf->type == 4U) {
    {
    tmp___0 = videobuf_dqbuf(& fh->vbi_q, buf, (int )file->f_flags & 2048);
    }
    return (tmp___0);
  } else {
  }
  return (-22);
}
}
static int vidioc_streamon(struct file *file , void *__fh , enum v4l2_buf_type type )
{
  struct saa7146_fh *fh ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  fh = (struct saa7146_fh *)__fh;
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vidioc_streamon";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): VIDIOC_STREAMON, type:%d\n";
    descriptor.lineno = 942U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): VIDIOC_STREAMON, type:%d\n",
                         "vidioc_streamon", (unsigned int )type);
      }
    } else {
    }
  } else {
  }
  {
  err = video_begin(fh);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned int )type == 1U) {
    {
    tmp___0 = videobuf_streamon(& fh->video_q);
    }
    return (tmp___0);
  } else {
  }
  if ((unsigned int )type == 4U) {
    {
    tmp___1 = videobuf_streamon(& fh->vbi_q);
    }
    return (tmp___1);
  } else {
  }
  return (-22);
}
}
static int vidioc_streamoff(struct file *file , void *__fh , enum v4l2_buf_type type )
{
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  {
  fh = (struct saa7146_fh *)__fh;
  dev = fh->dev;
  vv = dev->vv_data;
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vidioc_streamoff";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): VIDIOC_STREAMOFF, type:%d\n";
    descriptor.lineno = 961U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): VIDIOC_STREAMOFF, type:%d\n",
                         "vidioc_streamoff", (unsigned int )type);
      }
    } else {
    }
  } else {
  }
  if ((vv->video_status & 2) == 0) {
    if ((int )saa7146_debug & 1) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "vidioc_streamoff";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___0.format = "%s(): not capturing\n";
      descriptor___0.lineno = 967U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): not capturing\n",
                           "vidioc_streamoff");
        }
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  if ((unsigned long )vv->video_fh != (unsigned long )fh) {
    if ((int )saa7146_debug & 1) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "vidioc_streamoff";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___1.format = "%s(): capturing, but in another open\n";
      descriptor___1.lineno = 972U;
      descriptor___1.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): capturing, but in another open\n",
                           "vidioc_streamoff");
        }
      } else {
      }
    } else {
    }
    return (-16);
  } else {
  }
  err = -22;
  if ((unsigned int )type == 1U) {
    {
    err = videobuf_streamoff(& fh->video_q);
    }
  } else
  if ((unsigned int )type == 4U) {
    {
    err = videobuf_streamoff(& fh->vbi_q);
    }
  } else {
  }
  if (err != 0) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___2.modname = "saa7146_vv";
      descriptor___2.function = "vidioc_streamoff";
      descriptor___2.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___2.format = "%s(): warning: videobuf_streamoff() failed\n";
      descriptor___2.lineno = 982U;
      descriptor___2.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___2 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___2, "saa7146_vv: %s(): warning: videobuf_streamoff() failed\n",
                           "vidioc_streamoff");
        }
      } else {
      }
    } else {
    }
    {
    video_end(fh, file);
    }
  } else {
    {
    err = video_end(fh, file);
    }
  }
  return (err);
}
}
struct v4l2_ioctl_ops const saa7146_video_ioctl_ops =
     {& vidioc_querycap, 0, 0, & vidioc_enum_fmt_vid_cap, & vidioc_enum_fmt_vid_cap,
    0, 0, 0, & vidioc_g_fmt_vid_cap, & vidioc_g_fmt_vid_overlay, 0, 0, 0, 0, 0, 0,
    0, 0, & vidioc_s_fmt_vid_cap, & vidioc_s_fmt_vid_overlay, 0, 0, 0, 0, 0, 0, 0,
    0, & vidioc_try_fmt_vid_cap, & vidioc_try_fmt_vid_overlay, 0, 0, 0, 0, 0, 0, 0,
    0, & vidioc_reqbufs, & vidioc_querybuf, & vidioc_qbuf, 0, & vidioc_dqbuf, 0, 0,
    & vidioc_overlay, & vidioc_g_fbuf, & vidioc_s_fbuf, & vidioc_streamon, & vidioc_streamoff,
    & vidioc_g_std, & vidioc_s_std, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_g_parm, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_subscribe_event, & v4l2_event_unsubscribe,
    0};
struct v4l2_ioctl_ops const saa7146_vbi_ioctl_ops =
     {& vidioc_querycap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_g_fmt_vbi_cap, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_reqbufs,
    & vidioc_querybuf, & vidioc_qbuf, 0, & vidioc_dqbuf, 0, 0, 0, 0, 0, & vidioc_streamon,
    & vidioc_streamoff, & vidioc_g_std, & vidioc_s_std, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_g_parm,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_subscribe_event,
    & v4l2_event_unsubscribe, 0};
static int buffer_activate(struct saa7146_dev *dev , struct saa7146_buf *buf , struct saa7146_buf *next )
{
  struct saa7146_vv *vv ;
  {
  {
  vv = dev->vv_data;
  buf->vb.state = 3;
  saa7146_set_capture(dev, buf, next);
  ldv_mod_timer_69(& vv->video_dmaq.timeout, (unsigned long )jiffies + 125UL);
  }
  return (0);
}
}
static void release_all_pagetables(struct saa7146_dev *dev , struct saa7146_buf *buf )
{
  {
  {
  saa7146_pgtable_free(dev->pci, (struct saa7146_pgtable *)(& buf->pt));
  saa7146_pgtable_free(dev->pci, (struct saa7146_pgtable *)(& buf->pt) + 1UL);
  saa7146_pgtable_free(dev->pci, (struct saa7146_pgtable *)(& buf->pt) + 2UL);
  }
  return;
}
}
static int buffer_prepare(struct videobuf_queue *q , struct videobuf_buffer *vb ,
                          enum v4l2_field field )
{
  struct file *file ;
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  struct saa7146_buf *buf ;
  int size ;
  int err ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct saa7146_format *sfmt ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  {
  file = (struct file *)q->priv_data;
  fh = (struct saa7146_fh *)file->private_data;
  dev = fh->dev;
  vv = dev->vv_data;
  buf = (struct saa7146_buf *)vb;
  err = 0;
  if ((saa7146_debug & 64U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "buffer_prepare";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): vbuf:%p\n";
    descriptor.lineno = 1067U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): vbuf:%p\n", "buffer_prepare",
                         vb);
      }
    } else {
    }
  } else {
  }
  if (((vv->video_fmt.width <= 47U || vv->video_fmt.height <= 31U) || vv->video_fmt.width > (__u32 )(vv->standard)->h_max_out) || vv->video_fmt.height > (__u32 )(vv->standard)->v_max_out) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "buffer_prepare";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___0.format = "%s(): w (%d) / h (%d) out of bounds\n";
      descriptor___0.lineno = 1075U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): w (%d) / h (%d) out of bounds\n",
                           "buffer_prepare", vv->video_fmt.width, vv->video_fmt.height);
        }
      } else {
      }
    } else {
    }
    return (-22);
  } else {
  }
  size = (int )vv->video_fmt.sizeimage;
  if (buf->vb.baddr != 0UL && buf->vb.bsize < (size_t )size) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "buffer_prepare";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___1.format = "%s(): size mismatch\n";
      descriptor___1.lineno = 1081U;
      descriptor___1.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): size mismatch\n",
                           "buffer_prepare");
        }
      } else {
      }
    } else {
    }
    return (-22);
  } else {
  }
  if ((saa7146_debug & 64U) != 0U) {
    {
    descriptor___2.modname = "saa7146_vv";
    descriptor___2.function = "buffer_prepare";
    descriptor___2.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor___2.format = "%s(): buffer_prepare [size=%dx%d,bytes=%d,fields=%s]\n";
    descriptor___2.lineno = 1087U;
    descriptor___2.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "saa7146_vv: %s(): buffer_prepare [size=%dx%d,bytes=%d,fields=%s]\n",
                         "buffer_prepare", vv->video_fmt.width, vv->video_fmt.height,
                         size, v4l2_field_names[vv->video_fmt.field]);
      }
    } else {
    }
  } else {
  }
  if ((((((buf->vb.width != vv->video_fmt.width || buf->vb.bytesperline != vv->video_fmt.bytesperline) || buf->vb.height != vv->video_fmt.height) || buf->vb.size != (unsigned long )size) || (unsigned int )buf->vb.field != (unsigned int )field) || (unsigned int )buf->vb.field != vv->video_fmt.field) || (unsigned long )buf->fmt != (unsigned long )(& vv->video_fmt)) {
    {
    saa7146_dma_free(dev, q, buf);
    }
  } else {
  }
  if ((unsigned int )buf->vb.state == 0U) {
    {
    buf->vb.bytesperline = vv->video_fmt.bytesperline;
    buf->vb.width = vv->video_fmt.width;
    buf->vb.height = vv->video_fmt.height;
    buf->vb.size = (unsigned long )size;
    buf->vb.field = field;
    buf->fmt = & vv->video_fmt;
    buf->vb.field = (enum v4l2_field )vv->video_fmt.field;
    sfmt = saa7146_format_by_fourcc(dev, (int )(buf->fmt)->pixelformat);
    release_all_pagetables(dev, buf);
    }
    if ((sfmt->trans & 61440U) != 0U) {
      {
      saa7146_pgtable_alloc(dev->pci, (struct saa7146_pgtable *)(& buf->pt));
      saa7146_pgtable_alloc(dev->pci, (struct saa7146_pgtable *)(& buf->pt) + 1UL);
      saa7146_pgtable_alloc(dev->pci, (struct saa7146_pgtable *)(& buf->pt) + 2UL);
      }
    } else {
      {
      saa7146_pgtable_alloc(dev->pci, (struct saa7146_pgtable *)(& buf->pt));
      }
    }
    {
    err = videobuf_iolock(q, & buf->vb, & vv->ov_fb);
    }
    if (err != 0) {
      goto oops;
    } else {
    }
    {
    err = saa7146_pgtable_build(dev, buf);
    }
    if (err != 0) {
      goto oops;
    } else {
    }
  } else {
  }
  buf->vb.state = 1;
  buf->activate = & buffer_activate;
  return (0);
  oops: ;
  if ((saa7146_debug & 2U) != 0U) {
    {
    descriptor___3.modname = "saa7146_vv";
    descriptor___3.function = "buffer_prepare";
    descriptor___3.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor___3.format = "%s(): error out\n";
    descriptor___3.lineno = 1133U;
    descriptor___3.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___3, "saa7146_vv: %s(): error out\n", "buffer_prepare");
      }
    } else {
    }
  } else {
  }
  {
  saa7146_dma_free(dev, q, buf);
  }
  return (err);
}
}
static int buffer_setup(struct videobuf_queue *q , unsigned int *count , unsigned int *size )
{
  struct file *file ;
  struct saa7146_fh *fh ;
  struct saa7146_vv *vv ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  file = (struct file *)q->priv_data;
  fh = (struct saa7146_fh *)file->private_data;
  vv = (fh->dev)->vv_data;
  if (*count - 1U > 31U) {
    *count = 32U;
  } else {
  }
  *size = vv->video_fmt.sizeimage;
  if (*count * *size > (unsigned int )(max_memory * 1048576)) {
    *count = (unsigned int )(max_memory * 1048576) / *size;
  } else {
  }
  if ((saa7146_debug & 64U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "buffer_setup";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): %d buffers, %d bytes each\n";
    descriptor.lineno = 1155U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): %d buffers, %d bytes each\n",
                         "buffer_setup", *count, *size);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static void buffer_queue(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  struct file *file ;
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  struct saa7146_buf *buf ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  file = (struct file *)q->priv_data;
  fh = (struct saa7146_fh *)file->private_data;
  dev = fh->dev;
  vv = dev->vv_data;
  buf = (struct saa7146_buf *)vb;
  if ((saa7146_debug & 64U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "buffer_queue";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): vbuf:%p\n";
    descriptor.lineno = 1168U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): vbuf:%p\n", "buffer_queue",
                         vb);
      }
    } else {
    }
  } else {
  }
  {
  saa7146_buffer_queue(fh->dev, & vv->video_dmaq, buf);
  }
  return;
}
}
static void buffer_release(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  struct file *file ;
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct saa7146_buf *buf ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  file = (struct file *)q->priv_data;
  fh = (struct saa7146_fh *)file->private_data;
  dev = fh->dev;
  buf = (struct saa7146_buf *)vb;
  if ((saa7146_debug & 64U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "buffer_release";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): vbuf:%p\n";
    descriptor.lineno = 1179U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): vbuf:%p\n", "buffer_release",
                         vb);
      }
    } else {
    }
  } else {
  }
  {
  saa7146_dma_free(dev, q, buf);
  release_all_pagetables(dev, buf);
  }
  return;
}
}
static struct videobuf_queue_ops video_qops = {& buffer_setup, & buffer_prepare, & buffer_queue, & buffer_release};
static void video_init(struct saa7146_dev *dev , struct saa7146_vv *vv )
{
  struct lock_class_key __key ;
  {
  {
  INIT_LIST_HEAD(& vv->video_dmaq.queue);
  init_timer_key(& vv->video_dmaq.timeout, 0U, "(&vv->video_dmaq.timeout)", & __key);
  vv->video_dmaq.timeout.function = & saa7146_buffer_timeout;
  vv->video_dmaq.timeout.data = (unsigned long )(& vv->video_dmaq);
  vv->video_dmaq.dev = dev;
  vv->standard = (dev->ext_vv_data)->stds;
  vv->current_hps_source = 0;
  vv->current_hps_sync = 0;
  }
  return;
}
}
static int video_open(struct saa7146_dev *dev , struct file *file )
{
  struct saa7146_fh *fh ;
  {
  {
  fh = (struct saa7146_fh *)file->private_data;
  videobuf_queue_sg_init(& fh->video_q, (struct videobuf_queue_ops const *)(& video_qops),
                         & (dev->pci)->dev, & dev->slock, 1, 4, 400U, (void *)file,
                         & dev->v4l2_lock);
  }
  return (0);
}
}
static void video_close(struct saa7146_dev *dev , struct file *file )
{
  struct saa7146_fh *fh ;
  struct saa7146_vv *vv ;
  struct videobuf_queue *q ;
  {
  fh = (struct saa7146_fh *)file->private_data;
  vv = dev->vv_data;
  q = & fh->video_q;
  if (((vv->video_status & 2) != 0 && (unsigned long )vv->video_fh == (unsigned long )fh) != 0) {
    {
    video_end(fh, file);
    }
  } else
  if ((vv->video_status & 1 && (unsigned long )vv->video_fh == (unsigned long )fh) != 0) {
    {
    saa7146_stop_preview(fh);
    }
  } else {
  }
  {
  videobuf_stop(q);
  }
  return;
}
}
static void video_irq_done(struct saa7146_dev *dev , unsigned long st )
{
  struct saa7146_vv *vv ;
  struct saa7146_dmaqueue *q ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  vv = dev->vv_data;
  q = & vv->video_dmaq;
  ldv_spin_lock_70(& dev->slock);
  }
  if ((saa7146_debug & 64U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "video_irq_done";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): called\n";
    descriptor.lineno = 1251U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): called\n", "video_irq_done");
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )q->curr != (unsigned long )((struct saa7146_buf *)0)) {
    {
    saa7146_buffer_finish(dev, q, 4);
    }
  } else {
  }
  {
  saa7146_buffer_next(dev, q, 0);
  ldv_spin_unlock_71(& dev->slock);
  }
  return;
}
}
static ssize_t video_read(struct file *file , char *data , size_t count , loff_t *ppos )
{
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  ssize_t ret ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  fh = (struct saa7146_fh *)file->private_data;
  dev = fh->dev;
  vv = dev->vv_data;
  ret = 0L;
  if ((saa7146_debug & 4U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "video_read";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_video.c";
    descriptor.format = "%s(): called\n";
    descriptor.lineno = 1269U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): called\n", "video_read");
      }
    } else {
    }
  } else {
  }
  if ((vv->video_status & 2) != 0) {
    if ((unsigned long )vv->video_fh == (unsigned long )fh) {
      if ((int )saa7146_debug & 1) {
        {
        descriptor___0.modname = "saa7146_vv";
        descriptor___0.function = "video_read";
        descriptor___0.filename = "drivers/media/common/saa7146/saa7146_video.c";
        descriptor___0.format = "%s(): already capturing\n";
        descriptor___0.lineno = 1274U;
        descriptor___0.flags = 0U;
        tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        }
        if (tmp___0 != 0L) {
          {
          __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): already capturing\n",
                             "video_read");
          }
        } else {
        }
      } else {
      }
      return (-16L);
    } else {
    }
    if ((int )saa7146_debug & 1) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "video_read";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_video.c";
      descriptor___1.format = "%s(): already capturing in another open\n";
      descriptor___1.lineno = 1277U;
      descriptor___1.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "saa7146_vv: %s(): already capturing in another open\n",
                           "video_read");
        }
      } else {
      }
    } else {
    }
    return (-16L);
  } else {
  }
  {
  tmp___2 = video_begin(fh);
  ret = (ssize_t )tmp___2;
  }
  if (ret != 0L) {
    goto out;
  } else {
  }
  {
  ret = videobuf_read_one(& fh->video_q, data, count, ppos, (int )file->f_flags & 2048);
  }
  if (ret != 0L) {
    {
    video_end(fh, file);
    }
  } else {
    {
    tmp___3 = video_end(fh, file);
    ret = (ssize_t )tmp___3;
    }
  }
  out: ;
  if ((unsigned long )vv->ov_suspend != (unsigned long )((struct saa7146_fh *)0)) {
    {
    saa7146_start_preview(vv->ov_suspend);
    vv->ov_suspend = (struct saa7146_fh *)0;
    }
  } else {
  }
  return (ret);
}
}
struct saa7146_use_ops saa7146_video_uops = {& video_init, & video_open, & video_close, & video_irq_done, & video_read};
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 ) ;
struct saa7146_use_ops *ldv_6_container_struct_saa7146_use_ops ;
int (*ldv_2_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_dqbuf;
int (*ldv_2_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) = & vidioc_enum_fmt_vid_cap;
int (*ldv_2_callback_vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) = & vidioc_enum_fmt_vid_cap;
int (*ldv_2_callback_vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) = & vidioc_g_fbuf;
int (*ldv_2_callback_vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_g_fmt_vbi_cap;
int (*ldv_2_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_g_fmt_vid_cap;
int (*ldv_2_callback_vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) = & vidioc_g_fmt_vid_overlay;
int (*ldv_2_callback_vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) = & vidioc_g_parm;
int (*ldv_2_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) = & vidioc_g_std;
int (*ldv_2_callback_vidioc_overlay)(struct file * , void * , unsigned int ) = & vidioc_overlay;
int (*ldv_2_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_qbuf;
int (*ldv_2_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_querybuf;
int (*ldv_2_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) = & vidioc_querycap;
int (*ldv_2_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) = & vidioc_reqbufs;
int (*ldv_2_callback_vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) = (int (*)(struct file * ,
            void * , struct v4l2_framebuffer * ))(& vidioc_s_fbuf);
int (*ldv_2_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_s_fmt_vid_cap;
int (*ldv_2_callback_vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) = & vidioc_s_fmt_vid_overlay;
int (*ldv_2_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) = & vidioc_s_std;
int (*ldv_2_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) = & vidioc_streamoff;
int (*ldv_2_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) = & vidioc_streamon;
int (*ldv_2_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_ctrl_subscribe_event);
int (*ldv_2_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_try_fmt_vid_cap;
int (*ldv_2_callback_vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) = & vidioc_try_fmt_vid_overlay;
int (*ldv_2_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_event_unsubscribe);
int (*ldv_3_callback_buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * ,
                                  enum v4l2_field ) = & buffer_prepare;
void (*ldv_3_callback_buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) = & buffer_queue;
void (*ldv_3_callback_buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) = & buffer_release;
int (*ldv_3_callback_buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) = & buffer_setup;
void (*ldv_6_callback_init)(struct saa7146_dev * , struct saa7146_vv * ) = & video_init;
void (*ldv_6_callback_irq_done)(struct saa7146_dev * , unsigned long ) = & video_irq_done;
long (*ldv_6_callback_read)(struct file * , char * , unsigned long , long long * ) = & video_read;
void ldv_dummy_resourceless_instance_callback_2_10(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_fmtdesc * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_fmtdesc *arg3 )
{
  {
  {
  vidioc_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_11(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_framebuffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_framebuffer *arg3 )
{
  {
  {
  vidioc_g_fbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_12(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vidioc_g_fmt_vbi_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_13(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_14(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vidioc_g_fmt_vid_overlay(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_15(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_streamparm * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_streamparm *arg3 )
{
  {
  {
  vidioc_g_parm(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_16(int (*arg0)(struct file * , void * ,
                                                               unsigned long long * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   unsigned long long *arg3 )
{
  {
  {
  vidioc_g_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_19(int (*arg0)(struct file * , void * ,
                                                               unsigned int ) , struct file *arg1 ,
                                                   void *arg2 , unsigned int arg3 )
{
  {
  {
  vidioc_overlay(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_22(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_qbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_25(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_querybuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_28(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_capability * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_capability *arg3 )
{
  {
  {
  vidioc_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_29(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_requestbuffers * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_requestbuffers *arg3 )
{
  {
  {
  vidioc_reqbufs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_buffer * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_dqbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_30(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_framebuffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_framebuffer *arg3 )
{
  {
  {
  vidioc_s_fbuf(arg1, arg2, (struct v4l2_framebuffer const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_31(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vidioc_s_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_32(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vidioc_s_fmt_vid_overlay(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_33(int (*arg0)(struct file * , void * ,
                                                               unsigned long long ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   unsigned long long arg3 )
{
  {
  {
  vidioc_s_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_36(int (*arg0)(struct file * , void * ,
                                                               enum v4l2_buf_type ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamoff(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_37(int (*arg0)(struct file * , void * ,
                                                               enum v4l2_buf_type ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamon(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_38(int (*arg0)(struct v4l2_fh * ,
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
void ldv_dummy_resourceless_instance_callback_2_39(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vidioc_try_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_40(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vidioc_try_fmt_vid_overlay(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_41(int (*arg0)(struct v4l2_fh * ,
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
void ldv_dummy_resourceless_instance_callback_2_9(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_fmtdesc * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_fmtdesc *arg3 )
{
  {
  {
  vidioc_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct videobuf_queue * ,
                                                              struct videobuf_buffer * ,
                                                              enum v4l2_field ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ,
                                                  enum v4l2_field arg3 )
{
  {
  {
  buffer_prepare(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_7(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 )
{
  {
  {
  buffer_queue(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_8(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 )
{
  {
  {
  buffer_release(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_9(int (*arg0)(struct videobuf_queue * ,
                                                              unsigned int * , unsigned int * ) ,
                                                  struct videobuf_queue *arg1 , unsigned int *arg2 ,
                                                  unsigned int *arg3 )
{
  {
  {
  buffer_setup(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_6_18(void (*arg0)(struct saa7146_dev * , unsigned long ) ,
                                   struct saa7146_dev *arg1 , unsigned long arg2 )
{
  {
  {
  video_irq_done(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_6_23(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  video_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_6_4(void (*arg0)(struct saa7146_dev * , struct saa7146_vv * ) ,
                                  struct saa7146_dev *arg1 , struct saa7146_vv *arg2 )
{
  {
  {
  video_init(arg1, arg2);
  }
  return;
}
}
int ldv_io_instance_probe_6_11(int (*arg0)(struct saa7146_dev * , struct file * ) ,
                               struct saa7146_dev *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = video_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_io_instance_release_6_2(void (*arg0)(struct saa7146_dev * , struct file * ) ,
                                 struct saa7146_dev *arg1 , struct file *arg2 )
{
  {
  {
  video_close(arg1, arg2);
  }
  return;
}
}
static void ldv___ldv_spin_lock_63(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_int_slock_of_saa7146_dev();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_64(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_int_slock_of_saa7146_dev();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_65(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_int_slock_of_saa7146_dev();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_67(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_slock_of_saa7146_dev();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_69(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
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
__inline static void ldv_spin_lock_70(spinlock_t *lock )
{
  {
  {
  ldv_spin_lock_slock_of_saa7146_dev();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_71(spinlock_t *lock )
{
  {
  {
  ldv_spin_unlock_slock_of_saa7146_dev();
  spin_unlock(lock);
  }
  return;
}
}
void saa7146_write_out_dma(struct saa7146_dev *dev , int which , struct saa7146_video_dma *vdma ) ;
void saa7146_set_hps_source_and_sync(struct saa7146_dev *dev , int source , int sync ) ;
static void calculate_output_format_register(struct saa7146_dev *saa , u32 palette ,
                                             u32 *clip_format )
{
  {
  *clip_format = *clip_format & 65535U;
  *clip_format = *clip_format | (((((palette & 3840U) >> 8) << 30) | ((palette & 15U) << 24)) | (((palette & 240U) >> 4) << 16));
  return;
}
}
static void calculate_hps_source_and_sync(struct saa7146_dev *dev , int source , int sync ,
                                          u32 *hps_ctrl )
{
  {
  *hps_ctrl = *hps_ctrl & 805306367U;
  *hps_ctrl = *hps_ctrl | (u32 )((source << 30) | (sync << 28));
  return;
}
}
static void calculate_hxo_and_hyo(struct saa7146_vv *vv , u32 *hps_h_scale , u32 *hps_ctrl )
{
  int hyo ;
  int hxo ;
  {
  hyo = 0;
  hxo = 0;
  hyo = (vv->standard)->v_offset;
  hxo = (vv->standard)->h_offset;
  *hps_h_scale = *hps_h_scale & 4294963200U;
  *hps_h_scale = *hps_h_scale | (u32 )hxo;
  *hps_ctrl = *hps_ctrl & 4278190080U;
  *hps_ctrl = *hps_ctrl | (u32 )(hyo << 12);
  return;
}
}
static struct __anonstruct_hps_h_coeff_tab_235 hps_h_coeff_tab[64U] =
  { {0U, 2U},
        {2U, 4U},
        {0U, 4U},
        {6U, 8U},
        {2U, 8U},
        {8U, 8U},
        {0U, 8U},
        {30U, 16U},
        {14U, 8U},
        {38U, 8U},
        {6U, 8U},
        {66U, 8U},
        {2U, 8U},
        {128U, 8U},
        {0U, 8U},
        {254U, 16U},
        {254U, 8U},
        {126U, 8U},
        {126U, 8U},
        {62U, 8U},
        {62U, 8U},
        {30U, 8U},
        {30U, 8U},
        {14U, 8U},
        {14U, 8U},
        {6U, 8U},
        {6U, 8U},
        {2U, 8U},
        {2U, 8U},
        {0U, 8U},
        {0U, 8U},
        {254U, 16U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {254U, 8U},
        {126U, 8U},
        {126U, 8U},
        {62U, 8U},
        {62U, 8U},
        {30U, 8U},
        {30U, 8U},
        {14U, 8U},
        {14U, 8U},
        {6U, 8U},
        {6U, 8U},
        {2U, 8U},
        {2U, 8U},
        {0U, 8U},
        {0U, 8U},
        {254U, 16U}};
static u8 h_attenuation[9U] =
  { 1U, 2U, 4U, 8U,
        2U, 4U, 8U, 16U,
        0U};
static int calculate_h_scale_registers(struct saa7146_dev *dev , int in_x , int out_x ,
                                       int flip_lr , u32 *hps_ctrl , u32 *hps_v_gain ,
                                       u32 *hps_h_prescale , u32 *hps_h_scale )
{
  u32 dcgx ;
  u32 xpsc ;
  u32 xacm ;
  u32 cxy ;
  u32 cxuv ;
  u32 xim ;
  u32 xp ;
  u32 xsci ;
  u32 pfuv ;
  u32 h_atten ;
  u32 i ;
  {
  dcgx = 0U;
  xpsc = 0U;
  xacm = 0U;
  cxy = 0U;
  cxuv = 0U;
  xim = 0U;
  xp = 0U;
  xsci = 0U;
  pfuv = 0U;
  h_atten = 0U;
  i = 0U;
  if (out_x == 0) {
    return (-22);
  } else {
  }
  *hps_ctrl = *hps_ctrl & 3758096383U;
  if (in_x > out_x) {
    xpsc = (u32 )(in_x / out_x);
  } else {
    xpsc = 1U;
  }
  if (flip_lr != 0) {
    *hps_ctrl = *hps_ctrl | 536870912U;
    goto ldv_35318;
    ldv_35317:
    xpsc = xpsc + 1U;
    ldv_35318: ;
    if ((u32 )in_x / xpsc > 383U) {
      goto ldv_35317;
    } else {
    }
  } else {
    goto ldv_35321;
    ldv_35320:
    xpsc = xpsc + 1U;
    ldv_35321: ;
    if ((u32 )in_x / xpsc > 767U) {
      goto ldv_35320;
    } else {
    }
  }
  if (xpsc > 64U) {
    xpsc = 64U;
  } else {
  }
  xacm = 0U;
  cxy = (u32 )hps_h_coeff_tab[63U < xpsc - 1U ? 63U : xpsc - 1U].hps_coeff;
  cxuv = cxy;
  if (in_x == out_x && xpsc == 1U) {
    xsci = 1024U;
  } else {
    xsci = (u32 )(in_x * 1024) / ((u32 )out_x * xpsc) + xpsc;
  }
  xp = 0U;
  if (xsci == 1024U) {
    xim = 1U;
  } else {
    xim = 0U;
  }
  if (xpsc == 1U) {
    xacm = 1U;
    dcgx = 0U;
  } else {
    xacm = 0U;
    h_atten = (u32 )hps_h_coeff_tab[63U < xpsc - 1U ? 63U : xpsc - 1U].weight_sum;
    i = 0U;
    goto ldv_35325;
    ldv_35324: ;
    if ((u32 )h_attenuation[i] >= h_atten) {
      goto ldv_35323;
    } else {
    }
    i = i + 1U;
    ldv_35325: ;
    if ((unsigned int )h_attenuation[i] != 0U) {
      goto ldv_35324;
    } else {
    }
    ldv_35323:
    dcgx = i;
  }
  if (xsci == 1024U) {
    pfuv = 0U;
  } else
  if (xsci <= 1535U) {
    pfuv = 1U;
  } else
  if (xsci <= 1663U) {
    pfuv = 17U;
  } else
  if (xsci <= 1791U) {
    pfuv = 34U;
  } else {
    pfuv = 51U;
  }
  *hps_v_gain = *hps_v_gain & 16777215U;
  *hps_v_gain = *hps_v_gain | (pfuv << 24);
  *hps_h_scale = *hps_h_scale & 4095U;
  *hps_h_scale = *hps_h_scale | (((xim << 31) | (xp << 24)) | (xsci << 12));
  *hps_h_prescale = *hps_h_prescale | (((((dcgx << 27) | ((xpsc - 1U) << 18)) | (xacm << 17)) | (cxy << 8)) | cxuv);
  return (0);
}
}
static struct __anonstruct_hps_v_coeff_tab_236 hps_v_coeff_tab[64U] =
  { {256U, 2U},
        {258U, 4U},
        {768U, 4U},
        {262U, 8U},
        {1282U, 8U},
        {1800U, 8U},
        {3840U, 8U},
        {286U, 16U},
        {4366U, 16U},
        {6438U, 16U},
        {14598U, 16U},
        {15682U, 16U},
        {32002U, 16U},
        {32640U, 16U},
        {65280U, 16U},
        {510U, 32U},
        {510U, 32U},
        {33150U, 32U},
        {33150U, 32U},
        {49470U, 32U},
        {49470U, 32U},
        {57630U, 32U},
        {57630U, 32U},
        {61710U, 32U},
        {61710U, 32U},
        {63750U, 32U},
        {63750U, 32U},
        {64770U, 32U},
        {64770U, 32U},
        {65280U, 32U},
        {65280U, 32U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {510U, 64U},
        {33150U, 64U},
        {33150U, 64U},
        {49470U, 64U},
        {49470U, 64U},
        {57630U, 64U},
        {57630U, 64U},
        {61710U, 64U},
        {61710U, 64U},
        {63750U, 64U},
        {63750U, 64U},
        {64770U, 64U},
        {64770U, 64U},
        {65280U, 64U},
        {65280U, 64U},
        {510U, 128U}};
static u16 v_attenuation[9U] =
  { 2U, 4U, 8U, 16U,
        32U, 64U, 128U, 256U,
        0U};
static int calculate_v_scale_registers(struct saa7146_dev *dev , enum v4l2_field field ,
                                       int in_y , int out_y , u32 *hps_v_scale , u32 *hps_v_gain )
{
  int lpi ;
  u32 yacm ;
  u32 ysci ;
  u32 yacl ;
  u32 ypo ;
  u32 ype ;
  u32 dcgy ;
  u32 cya_cyb ;
  u32 v_atten ;
  u32 i ;
  {
  lpi = 0;
  yacm = 0U;
  ysci = 0U;
  yacl = 0U;
  ypo = 0U;
  ype = 0U;
  dcgy = 0U;
  cya_cyb = 0U;
  v_atten = 0U;
  i = 0U;
  if (in_y < out_y) {
    return (-22);
  } else {
  }
  if ((((unsigned int )field == 4U || (unsigned int )field == 8U) || ((unsigned int )field == 9U || (unsigned int )field == 5U)) || (unsigned int )field == 6U) {
    if (out_y * 2 >= in_y) {
      lpi = 1;
    } else {
    }
  } else
  if (((unsigned int )field == 2U || (unsigned int )field == 7U) || (unsigned int )field == 3U) {
    if (out_y * 4 >= in_y) {
      lpi = 1;
    } else {
    }
    out_y = out_y * 2;
  } else {
  }
  if (lpi != 0) {
    yacm = 0U;
    yacl = 0U;
    cya_cyb = 255U;
    if (in_y > out_y) {
      ysci = (u32 )((in_y * 1024) / (out_y + 1) + -1024);
    } else {
      ysci = 0U;
    }
    dcgy = 0U;
    ype = ysci / 16U;
    ypo = ype + ysci / 64U;
  } else {
    yacm = 1U;
    ysci = (u32 )(((((in_y - out_y) + -1) * 10240) / in_y + 9) / 10);
    ype = (ysci + 15U) / 16U;
    ypo = ype;
    if (ysci <= 511U) {
      yacl = 0U;
    } else {
      yacl = ysci / (1024U - ysci);
    }
    cya_cyb = (u32 )hps_v_coeff_tab[63U < yacl ? 63U : yacl].hps_coeff;
    v_atten = (u32 )hps_v_coeff_tab[63U < yacl ? 63U : yacl].weight_sum;
    i = 0U;
    goto ldv_35351;
    ldv_35350: ;
    if ((u32 )v_attenuation[i] >= v_atten) {
      goto ldv_35349;
    } else {
    }
    i = i + 1U;
    ldv_35351: ;
    if ((unsigned int )v_attenuation[i] != 0U) {
      goto ldv_35350;
    } else {
    }
    ldv_35349:
    dcgy = i;
  }
  *hps_v_scale = *hps_v_scale | (((((yacm << 31) | (ysci << 21)) | (yacl << 15)) | (ypo << 8)) | (ype << 1));
  *hps_v_gain = *hps_v_gain & 4278190080U;
  *hps_v_gain = *hps_v_gain | ((dcgy << 16) | cya_cyb);
  return (0);
}
}
static int sort_and_eliminate(u32 *values , int *count )
{
  int low ;
  int high ;
  int top ;
  int temp ;
  int cur ;
  int next ;
  {
  low = 0;
  high = 0;
  top = 0;
  temp = 0;
  cur = 0;
  next = 0;
  if (*count < 0 || (unsigned long )values == (unsigned long )((u32 *)0U)) {
    return (-22);
  } else {
  }
  top = *count;
  goto ldv_35366;
  ldv_35365:
  low = 0;
  high = 1;
  goto ldv_35363;
  ldv_35362: ;
  if (*(values + (unsigned long )low) > *(values + (unsigned long )high)) {
    temp = (int )*(values + (unsigned long )low);
    *(values + (unsigned long )low) = *(values + (unsigned long )high);
    *(values + (unsigned long )high) = (u32 )temp;
  } else {
  }
  low = low + 1;
  high = high + 1;
  ldv_35363: ;
  if (high < top) {
    goto ldv_35362;
  } else {
  }
  top = top - 1;
  ldv_35366: ;
  if (top > 0) {
    goto ldv_35365;
  } else {
  }
  cur = 0;
  next = 1;
  goto ldv_35369;
  ldv_35368: ;
  if (*(values + (unsigned long )cur) != *(values + (unsigned long )next)) {
    cur = cur + 1;
    *(values + (unsigned long )cur) = *(values + (unsigned long )next);
  } else {
  }
  next = next + 1;
  ldv_35369: ;
  if (next < *count) {
    goto ldv_35368;
  } else {
  }
  *count = cur + 1;
  return (0);
}
}
static void calculate_clipping_registers_rect(struct saa7146_dev *dev , struct saa7146_fh *fh ,
                                              struct saa7146_video_dma *vdma2 , u32 *clip_format ,
                                              u32 *arbtr_ctrl , enum v4l2_field field )
{
  struct saa7146_vv *vv ;
  __le32 *clipping ;
  int width ;
  int height ;
  int clipcount ;
  u32 line_list[32U] ;
  u32 pixel_list[32U] ;
  int numdwords ;
  int i ;
  int j ;
  int cnt_line ;
  int cnt_pixel ;
  int x[32U] ;
  int y[32U] ;
  int w[32U] ;
  int h[32U] ;
  int l ;
  int r ;
  int t ;
  int b ;
  int __min1 ;
  int __min2 ;
  int __min1___0 ;
  int __min2___0 ;
  int __min1___1 ;
  int __min2___1 ;
  int __min1___2 ;
  int __min2___2 ;
  int __max1 ;
  int __max2 ;
  int __max1___0 ;
  int __max2___0 ;
  int __min1___3 ;
  int __min2___3 ;
  {
  {
  vv = dev->vv_data;
  clipping = vv->d_clipping.cpu_addr;
  width = (int )vv->ov.win.w.width;
  height = (int )vv->ov.win.w.height;
  clipcount = vv->ov.nclips;
  numdwords = 0;
  i = 0;
  j = 0;
  cnt_line = 0;
  cnt_pixel = 0;
  memset((void *)(& line_list), 0, 128UL);
  memset((void *)(& pixel_list), 0, 128UL);
  memset((void *)clipping, 0, 256UL);
  i = 0;
  }
  goto ldv_35412;
  ldv_35411:
  l = 0;
  r = 0;
  t = 0;
  b = 0;
  x[i] = vv->ov.clips[i].c.left;
  y[i] = vv->ov.clips[i].c.top;
  w[i] = (int )vv->ov.clips[i].c.width;
  h[i] = (int )vv->ov.clips[i].c.height;
  if (w[i] < 0) {
    x[i] = x[i] + w[i];
    w[i] = - w[i];
  } else {
  }
  if (h[i] < 0) {
    y[i] = y[i] + h[i];
    h[i] = - h[i];
  } else {
  }
  if (x[i] < 0) {
    w[i] = w[i] + x[i];
    x[i] = 0;
  } else {
  }
  if (y[i] < 0) {
    h[i] = h[i] + y[i];
    y[i] = 0;
  } else {
  }
  if (vv->vflip != 0) {
    y[i] = (height - y[i]) - h[i];
  } else {
  }
  l = x[i];
  r = x[i] + w[i];
  t = y[i];
  b = y[i] + h[i];
  __min1 = l;
  __min2 = width;
  pixel_list[i * 2] = (u32 )(__min1 < __min2 ? __min1 : __min2);
  __min1___0 = r;
  __min2___0 = width;
  pixel_list[i * 2 + 1] = (u32 )(__min1___0 < __min2___0 ? __min1___0 : __min2___0);
  __min1___1 = t;
  __min2___1 = height;
  line_list[i * 2] = (u32 )(__min1___1 < __min2___1 ? __min1___1 : __min2___1);
  __min1___2 = b;
  __min2___2 = height;
  line_list[i * 2 + 1] = (u32 )(__min1___2 < __min2___2 ? __min1___2 : __min2___2);
  i = i + 1;
  ldv_35412: ;
  if (i < clipcount) {
    goto ldv_35411;
  } else {
  }
  {
  cnt_pixel = clipcount * 2;
  cnt_line = cnt_pixel;
  sort_and_eliminate((u32 *)(& pixel_list), & cnt_pixel);
  sort_and_eliminate((u32 *)(& line_list), & cnt_line);
  __max1 = cnt_line + 1;
  __max2 = cnt_pixel + 1;
  numdwords = (__max1 > __max2 ? __max1 : __max2) * 2;
  __max1___0 = 4;
  __max2___0 = numdwords;
  numdwords = __max1___0 > __max2___0 ? __max1___0 : __max2___0;
  __min1___3 = 64;
  __min2___3 = numdwords;
  numdwords = __min1___3 < __min2___3 ? __min1___3 : __min2___3;
  i = 0;
  }
  goto ldv_35424;
  ldv_35423:
  *(clipping + (unsigned long )(i * 2)) = *(clipping + (unsigned long )(i * 2)) | (pixel_list[i] << 16);
  i = i + 1;
  ldv_35424: ;
  if (i < cnt_pixel) {
    goto ldv_35423;
  } else {
  }
  i = 0;
  goto ldv_35427;
  ldv_35426:
  *(clipping + ((unsigned long )(i * 2) + 1UL)) = *(clipping + ((unsigned long )(i * 2) + 1UL)) | (line_list[i] << 16);
  i = i + 1;
  ldv_35427: ;
  if (i < cnt_line) {
    goto ldv_35426;
  } else {
  }
  j = 0;
  goto ldv_35436;
  ldv_35435:
  i = 0;
  goto ldv_35430;
  ldv_35429: ;
  if (x[j] < 0) {
    x[j] = 0;
  } else {
  }
  if (pixel_list[i] < (u32 )(x[j] + w[j])) {
    if (pixel_list[i] >= (u32 )x[j]) {
      *(clipping + (unsigned long )(i * 2)) = *(clipping + (unsigned long )(i * 2)) | (__le32 )(1 << j);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_35430: ;
  if (i < cnt_pixel) {
    goto ldv_35429;
  } else {
  }
  i = 0;
  goto ldv_35433;
  ldv_35432: ;
  if (y[j] < 0) {
    y[j] = 0;
  } else {
  }
  if (line_list[i] < (u32 )(y[j] + h[j])) {
    if (line_list[i] >= (u32 )y[j]) {
      *(clipping + ((unsigned long )(i * 2) + 1UL)) = *(clipping + ((unsigned long )(i * 2) + 1UL)) | (__le32 )(1 << j);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_35433: ;
  if (i < cnt_line) {
    goto ldv_35432;
  } else {
  }
  j = j + 1;
  ldv_35436: ;
  if (j < clipcount) {
    goto ldv_35435;
  } else {
  }
  *arbtr_ctrl = *arbtr_ctrl & 4294902015U;
  *arbtr_ctrl = *arbtr_ctrl | 7168U;
  vdma2->base_even = (u32 )vv->d_clipping.dma_handle;
  vdma2->base_odd = (u32 )vv->d_clipping.dma_handle;
  vdma2->prot_addr = (u32 )vv->d_clipping.dma_handle + (u32 )((unsigned long )numdwords) * 4U;
  vdma2->base_page = 4U;
  vdma2->pitch = 0U;
  vdma2->num_line_byte = (u32 )((unsigned long )(numdwords + -1)) * 4U;
  *clip_format = *clip_format & 4294967287U;
  if ((((unsigned int )field == 4U || (unsigned int )field == 8U) || ((unsigned int )field == 9U || (unsigned int )field == 5U)) || (unsigned int )field == 6U) {
    *clip_format = *clip_format | 8U;
  } else {
    *clip_format = *clip_format;
  }
  return;
}
}
static void saa7146_disable_clipping(struct saa7146_dev *dev )
{
  u32 clip_format ;
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)dev->mem + 120U);
  clip_format = tmp;
  clip_format = clip_format & 4294901760U;
  writel(clip_format, (void volatile *)dev->mem + 120U);
  writel(2097184U, (void volatile *)dev->mem + 256U);
  writel(2097152U, (void volatile *)dev->mem + 252U);
  }
  return;
}
}
static void saa7146_set_clipping_rect(struct saa7146_fh *fh )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  enum v4l2_field field ;
  struct saa7146_video_dma vdma2 ;
  u32 clip_format ;
  u32 arbtr_ctrl ;
  {
  dev = fh->dev;
  vv = dev->vv_data;
  field = vv->ov.win.field;
  if (vv->ov.nclips == 0) {
    {
    saa7146_disable_clipping(dev);
    }
    return;
  } else {
  }
  {
  clip_format = readl((void const volatile *)dev->mem + 120U);
  arbtr_ctrl = readl((void const volatile *)dev->mem + 72U);
  calculate_clipping_registers_rect(dev, fh, & vdma2, & clip_format, & arbtr_ctrl,
                                    field);
  clip_format = clip_format & 4294901768U;
  clip_format = clip_format | 64U;
  writel(vdma2.base_even, (void volatile *)dev->mem + 28U);
  writel(vdma2.base_odd, (void volatile *)dev->mem + 24U);
  writel(vdma2.prot_addr, (void volatile *)dev->mem + 32U);
  writel(vdma2.base_page, (void volatile *)dev->mem + 40U);
  writel(vdma2.pitch, (void volatile *)dev->mem + 36U);
  writel(vdma2.num_line_byte, (void volatile *)dev->mem + 44U);
  writel(clip_format, (void volatile *)dev->mem + 120U);
  writel(arbtr_ctrl, (void volatile *)dev->mem + 72U);
  writel(2621480U, (void volatile *)dev->mem + 256U);
  writel(2097184U, (void volatile *)dev->mem + 252U);
  }
  return;
}
}
static void saa7146_set_window(struct saa7146_dev *dev , int width , int height ,
                               enum v4l2_field field )
{
  struct saa7146_vv *vv ;
  int source ;
  int sync ;
  u32 hps_v_scale ;
  u32 hps_v_gain ;
  u32 hps_ctrl ;
  u32 hps_h_prescale ;
  u32 hps_h_scale ;
  {
  {
  vv = dev->vv_data;
  source = vv->current_hps_source;
  sync = vv->current_hps_sync;
  hps_v_scale = 0U;
  hps_v_gain = 0U;
  hps_ctrl = 0U;
  hps_h_prescale = 0U;
  hps_h_scale = 0U;
  hps_v_scale = 0U;
  hps_v_gain = 0U;
  calculate_v_scale_registers(dev, field, (vv->standard)->v_field * 2, height, & hps_v_scale,
                              & hps_v_gain);
  hps_ctrl = 0U;
  hps_h_prescale = 0U;
  hps_h_scale = 0U;
  calculate_h_scale_registers(dev, (vv->standard)->h_pixels, width, vv->hflip, & hps_ctrl,
                              & hps_v_gain, & hps_h_prescale, & hps_h_scale);
  calculate_hxo_and_hyo(vv, & hps_h_scale, & hps_ctrl);
  calculate_hps_source_and_sync(dev, source, sync, & hps_ctrl);
  writel(hps_v_scale, (void volatile *)dev->mem + 96U);
  writel(hps_v_gain, (void volatile *)dev->mem + 100U);
  writel(hps_ctrl, (void volatile *)dev->mem + 92U);
  writel(hps_h_prescale, (void volatile *)dev->mem + 104U);
  writel(hps_h_scale, (void volatile *)dev->mem + 108U);
  writel(6291552U, (void volatile *)dev->mem + 256U);
  }
  return;
}
}
static void saa7146_set_position(struct saa7146_dev *dev , int w_x , int w_y , int w_height ,
                                 enum v4l2_field field , u32 pixelformat )
{
  struct saa7146_vv *vv ;
  struct saa7146_format *sfmt ;
  struct saa7146_format *tmp ;
  int b_depth ;
  int b_bpl ;
  u32 base ;
  struct saa7146_video_dma vdma1 ;
  {
  {
  vv = dev->vv_data;
  tmp = saa7146_format_by_fourcc(dev, (int )pixelformat);
  sfmt = tmp;
  b_depth = (int )(vv->ov_fmt)->depth;
  b_bpl = (int )vv->ov_fb.fmt.bytesperline;
  base = (unsigned int )((long )vv->ov_fb.base);
  vdma1.pitch = (u32 )(b_bpl * 2);
  }
  if (vv->vflip == 0) {
    vdma1.base_even = base + ((u32 )(w_x * (b_depth / 8)) + (u32 )w_y * (vdma1.pitch / 2U));
    vdma1.base_odd = vdma1.base_even + vdma1.pitch / 2U;
    vdma1.prot_addr = vdma1.base_even + (u32 )w_height * (vdma1.pitch / 2U);
  } else {
    vdma1.base_even = base + ((u32 )(w_x * (b_depth / 8)) + (u32 )(w_y + w_height) * (vdma1.pitch / 2U));
    vdma1.base_odd = vdma1.base_even - vdma1.pitch / 2U;
    vdma1.prot_addr = vdma1.base_odd - (u32 )w_height * (vdma1.pitch / 2U);
  }
  if ((((unsigned int )field == 4U || (unsigned int )field == 8U) || ((unsigned int )field == 9U || (unsigned int )field == 5U)) || (unsigned int )field == 6U) {
  } else
  if ((unsigned int )field == 7U) {
    vdma1.base_odd = vdma1.prot_addr;
    vdma1.pitch = vdma1.pitch / 2U;
  } else
  if ((unsigned int )field == 2U) {
    vdma1.base_odd = vdma1.prot_addr;
    vdma1.pitch = vdma1.pitch / 2U;
  } else
  if ((unsigned int )field == 3U) {
    vdma1.base_odd = vdma1.base_even;
    vdma1.base_even = vdma1.prot_addr;
    vdma1.pitch = vdma1.pitch / 2U;
  } else {
  }
  if (vv->vflip != 0) {
    vdma1.pitch = - vdma1.pitch;
  } else {
  }
  {
  vdma1.base_page = (u32 )sfmt->swap;
  vdma1.num_line_byte = (u32 )(((vv->standard)->v_field << 16) + (vv->standard)->h_pixels);
  saa7146_write_out_dma(dev, 1, & vdma1);
  }
  return;
}
}
static void saa7146_set_output_format(struct saa7146_dev *dev , unsigned long palette )
{
  u32 clip_format ;
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)dev->mem + 120U);
  clip_format = tmp;
  calculate_output_format_register(dev, (u32 )palette, & clip_format);
  writel(clip_format, (void volatile *)dev->mem + 120U);
  writel(2097184U, (void volatile *)dev->mem + 256U);
  }
  return;
}
}
void saa7146_set_hps_source_and_sync(struct saa7146_dev *dev , int source , int sync )
{
  struct saa7146_vv *vv ;
  u32 hps_ctrl ;
  {
  {
  vv = dev->vv_data;
  hps_ctrl = 0U;
  hps_ctrl = readl((void const volatile *)dev->mem + 92U);
  hps_ctrl = hps_ctrl & 805306367U;
  hps_ctrl = hps_ctrl | (u32 )((source << 30) | (sync << 28));
  writel(hps_ctrl, (void volatile *)dev->mem + 92U);
  writel(2097184U, (void volatile *)dev->mem + 256U);
  vv->current_hps_source = source;
  vv->current_hps_sync = sync;
  }
  return;
}
}
static char const __kstrtab_saa7146_set_hps_source_and_sync[32U] =
  { 's', 'a', 'a', '7',
        '1', '4', '6', '_',
        's', 'e', 't', '_',
        'h', 'p', 's', '_',
        's', 'o', 'u', 'r',
        'c', 'e', '_', 'a',
        'n', 'd', '_', 's',
        'y', 'n', 'c', '\000'};
struct kernel_symbol const __ksymtab_saa7146_set_hps_source_and_sync ;
struct kernel_symbol const __ksymtab_saa7146_set_hps_source_and_sync = {(unsigned long )(& saa7146_set_hps_source_and_sync), (char const *)(& __kstrtab_saa7146_set_hps_source_and_sync)};
int saa7146_enable_overlay(struct saa7146_fh *fh )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  {
  {
  dev = fh->dev;
  vv = dev->vv_data;
  saa7146_set_window(dev, (int )vv->ov.win.w.width, (int )vv->ov.win.w.height, (enum v4l2_field )vv->ov.win.field);
  saa7146_set_position(dev, vv->ov.win.w.left, vv->ov.win.w.top, (int )vv->ov.win.w.height,
                       (enum v4l2_field )vv->ov.win.field, (vv->ov_fmt)->pixelformat);
  saa7146_set_output_format(dev, (unsigned long )(vv->ov_fmt)->trans);
  saa7146_set_clipping_rect(fh);
  writel(4194368U, (void volatile *)dev->mem + 252U);
  }
  return (0);
}
}
void saa7146_disable_overlay(struct saa7146_fh *fh )
{
  struct saa7146_dev *dev ;
  {
  {
  dev = fh->dev;
  saa7146_disable_clipping(dev);
  writel(4194304U, (void volatile *)dev->mem + 252U);
  }
  return;
}
}
void saa7146_write_out_dma(struct saa7146_dev *dev , int which , struct saa7146_video_dma *vdma )
{
  int where ;
  {
  where = 0;
  if ((unsigned int )which - 1U > 2U) {
    return;
  } else {
  }
  {
  where = (which + -1) * 24;
  writel(vdma->base_odd, (void volatile *)dev->mem + (unsigned long )where);
  writel(vdma->base_even, (void volatile *)(dev->mem + ((unsigned long )where + 4UL)));
  writel(vdma->prot_addr, (void volatile *)(dev->mem + ((unsigned long )where + 8UL)));
  writel(vdma->pitch, (void volatile *)(dev->mem + ((unsigned long )where + 12UL)));
  writel(vdma->base_page, (void volatile *)(dev->mem + ((unsigned long )where + 16UL)));
  writel(vdma->num_line_byte, (void volatile *)(dev->mem + ((unsigned long )where + 20UL)));
  writel((unsigned int )((4 << (which + -1)) | (262144 << (which + -1))), (void volatile *)dev->mem + 256U);
  }
  return;
}
}
static int calculate_video_dma_grab_packed(struct saa7146_dev *dev , struct saa7146_buf *buf )
{
  struct saa7146_vv *vv ;
  struct saa7146_video_dma vdma1 ;
  struct saa7146_format *sfmt ;
  struct saa7146_format *tmp ;
  int width ;
  int height ;
  int bytesperline ;
  enum v4l2_field field ;
  int depth ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  vv = dev->vv_data;
  tmp = saa7146_format_by_fourcc(dev, (int )(buf->fmt)->pixelformat);
  sfmt = tmp;
  width = (int )(buf->fmt)->width;
  height = (int )(buf->fmt)->height;
  bytesperline = (int )(buf->fmt)->bytesperline;
  field = (buf->fmt)->field;
  depth = (int )sfmt->depth;
  }
  if ((saa7146_debug & 64U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "calculate_video_dma_grab_packed";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_hlp.c";
    descriptor.format = "%s(): [size=%dx%d,fields=%s]\n";
    descriptor.lineno = 719U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): [size=%dx%d,fields=%s]\n",
                         "calculate_video_dma_grab_packed", width, height, v4l2_field_names[(unsigned int )field]);
      }
    } else {
    }
  } else {
  }
  if (bytesperline != 0) {
    vdma1.pitch = (u32 )(bytesperline * 2);
  } else {
    vdma1.pitch = (u32 )(((width * depth) * 2) / 8);
  }
  vdma1.num_line_byte = (u32 )(((vv->standard)->v_field << 16) + (vv->standard)->h_pixels);
  vdma1.base_page = ((u32 )buf->pt[0].dma | (u32 )sfmt->swap) | 2048U;
  if (vv->vflip != 0) {
    vdma1.prot_addr = (u32 )buf->pt[0].offset;
    vdma1.base_even = (u32 )buf->pt[0].offset + (vdma1.pitch / 2U) * (u32 )height;
    vdma1.base_odd = vdma1.base_even - vdma1.pitch / 2U;
  } else {
    vdma1.base_even = (u32 )buf->pt[0].offset;
    vdma1.base_odd = vdma1.base_even + vdma1.pitch / 2U;
    vdma1.prot_addr = (u32 )buf->pt[0].offset + (vdma1.pitch / 2U) * (u32 )height;
  }
  if ((((unsigned int )field == 4U || (unsigned int )field == 8U) || ((unsigned int )field == 9U || (unsigned int )field == 5U)) || (unsigned int )field == 6U) {
  } else
  if ((unsigned int )field == 7U) {
    if ((unsigned int )vv->last_field == 2U) {
      vdma1.base_odd = vdma1.prot_addr;
      vdma1.pitch = vdma1.pitch / 2U;
    } else
    if ((unsigned int )vv->last_field == 3U) {
      vdma1.base_odd = vdma1.base_even;
      vdma1.base_even = vdma1.prot_addr;
      vdma1.pitch = vdma1.pitch / 2U;
    } else {
    }
  } else
  if ((unsigned int )field == 2U) {
    vdma1.base_odd = vdma1.prot_addr;
    vdma1.pitch = vdma1.pitch / 2U;
  } else
  if ((unsigned int )field == 3U) {
    vdma1.base_odd = vdma1.base_even;
    vdma1.base_even = vdma1.prot_addr;
    vdma1.pitch = vdma1.pitch / 2U;
  } else {
  }
  if (vv->vflip != 0) {
    vdma1.pitch = - vdma1.pitch;
  } else {
  }
  {
  saa7146_write_out_dma(dev, 1, & vdma1);
  }
  return (0);
}
}
static int calc_planar_422(struct saa7146_vv *vv , struct saa7146_buf *buf , struct saa7146_video_dma *vdma2 ,
                           struct saa7146_video_dma *vdma3 )
{
  int height ;
  int width ;
  {
  height = (int )(buf->fmt)->height;
  width = (int )(buf->fmt)->width;
  vdma2->pitch = (u32 )width;
  vdma3->pitch = (u32 )width;
  if (vv->vflip != 0) {
    vdma2->prot_addr = (u32 )buf->pt[1].offset;
    vdma2->base_even = (vdma2->pitch / 2U) * (u32 )height + (u32 )buf->pt[1].offset;
    vdma2->base_odd = vdma2->base_even - vdma2->pitch / 2U;
    vdma3->prot_addr = (u32 )buf->pt[2].offset;
    vdma3->base_even = (vdma3->pitch / 2U) * (u32 )height + (u32 )buf->pt[2].offset;
    vdma3->base_odd = vdma3->base_even - vdma3->pitch / 2U;
  } else {
    vdma3->base_even = (u32 )buf->pt[2].offset;
    vdma3->base_odd = vdma3->base_even + vdma3->pitch / 2U;
    vdma3->prot_addr = (vdma3->pitch / 2U) * (u32 )height + (u32 )buf->pt[2].offset;
    vdma2->base_even = (u32 )buf->pt[1].offset;
    vdma2->base_odd = vdma2->base_even + vdma2->pitch / 2U;
    vdma2->prot_addr = (vdma2->pitch / 2U) * (u32 )height + (u32 )buf->pt[1].offset;
  }
  return (0);
}
}
static int calc_planar_420(struct saa7146_vv *vv , struct saa7146_buf *buf , struct saa7146_video_dma *vdma2 ,
                           struct saa7146_video_dma *vdma3 )
{
  int height ;
  int width ;
  {
  height = (int )(buf->fmt)->height;
  width = (int )(buf->fmt)->width;
  vdma2->pitch = (u32 )(width / 2);
  vdma3->pitch = (u32 )(width / 2);
  if (vv->vflip != 0) {
    vdma2->prot_addr = (u32 )buf->pt[2].offset;
    vdma2->base_even = (vdma2->pitch / 2U) * (u32 )height + (u32 )buf->pt[2].offset;
    vdma2->base_odd = vdma2->base_even - vdma2->pitch / 2U;
    vdma3->prot_addr = (u32 )buf->pt[1].offset;
    vdma3->base_even = (vdma3->pitch / 2U) * (u32 )height + (u32 )buf->pt[1].offset;
    vdma3->base_odd = vdma3->base_even - vdma3->pitch / 2U;
  } else {
    vdma3->base_even = (u32 )buf->pt[2].offset;
    vdma3->base_odd = vdma3->base_even + vdma3->pitch;
    vdma3->prot_addr = (vdma3->pitch / 2U) * (u32 )height + (u32 )buf->pt[2].offset;
    vdma2->base_even = (u32 )buf->pt[1].offset;
    vdma2->base_odd = vdma2->base_even + vdma2->pitch;
    vdma2->prot_addr = (vdma2->pitch / 2U) * (u32 )height + (u32 )buf->pt[1].offset;
  }
  return (0);
}
}
static int calculate_video_dma_grab_planar(struct saa7146_dev *dev , struct saa7146_buf *buf )
{
  struct saa7146_vv *vv ;
  struct saa7146_video_dma vdma1 ;
  struct saa7146_video_dma vdma2 ;
  struct saa7146_video_dma vdma3 ;
  struct saa7146_format *sfmt ;
  struct saa7146_format *tmp ;
  int width ;
  int height ;
  enum v4l2_field field ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  {
  {
  vv = dev->vv_data;
  tmp = saa7146_format_by_fourcc(dev, (int )(buf->fmt)->pixelformat);
  sfmt = tmp;
  width = (int )(buf->fmt)->width;
  height = (int )(buf->fmt)->height;
  field = (buf->fmt)->field;
  tmp___0 = ldv__builtin_expect(buf->pt[0].dma == 0ULL, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_hlp.c"),
                         "i" (840), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(buf->pt[1].dma == 0ULL, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_hlp.c"),
                         "i" (841), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect(buf->pt[2].dma == 0ULL, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/common/saa7146/saa7146_hlp.c"),
                         "i" (842), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((saa7146_debug & 64U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "calculate_video_dma_grab_planar";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_hlp.c";
    descriptor.format = "%s(): [size=%dx%d,fields=%s]\n";
    descriptor.lineno = 845U;
    descriptor.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): [size=%dx%d,fields=%s]\n",
                         "calculate_video_dma_grab_planar", width, height, v4l2_field_names[(unsigned int )field]);
      }
    } else {
    }
  } else {
  }
  vdma1.pitch = (u32 )(width * 2);
  vdma1.num_line_byte = (u32 )(((vv->standard)->v_field << 16) + (vv->standard)->h_pixels);
  vdma1.base_page = (u32 )buf->pt[0].dma | 2048U;
  if (vv->vflip != 0) {
    vdma1.prot_addr = (u32 )buf->pt[0].offset;
    vdma1.base_even = (vdma1.pitch / 2U) * (u32 )height + (u32 )buf->pt[0].offset;
    vdma1.base_odd = vdma1.base_even - vdma1.pitch / 2U;
  } else {
    vdma1.base_even = (u32 )buf->pt[0].offset;
    vdma1.base_odd = vdma1.base_even + vdma1.pitch / 2U;
    vdma1.prot_addr = (vdma1.pitch / 2U) * (u32 )height + (u32 )buf->pt[0].offset;
  }
  vdma2.num_line_byte = 0U;
  vdma2.base_page = (u32 )buf->pt[1].dma | 2048U;
  vdma3.num_line_byte = 0U;
  vdma3.base_page = (u32 )buf->pt[2].dma | 2048U;
  {
  if ((int )sfmt->depth == 12) {
    goto case_12;
  } else {
  }
  if ((int )sfmt->depth == 16) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_12:
  {
  calc_planar_420(vv, buf, & vdma2, & vdma3);
  }
  goto ldv_35560;
  case_16:
  {
  calc_planar_422(vv, buf, & vdma2, & vdma3);
  }
  goto ldv_35560;
  switch_default: ;
  return (-1);
  switch_break: ;
  }
  ldv_35560: ;
  if ((((unsigned int )field == 4U || (unsigned int )field == 8U) || ((unsigned int )field == 9U || (unsigned int )field == 5U)) || (unsigned int )field == 6U) {
  } else
  if ((unsigned int )field == 7U) {
    vdma1.base_odd = vdma1.prot_addr;
    vdma1.pitch = vdma1.pitch / 2U;
    vdma2.base_odd = vdma2.prot_addr;
    vdma2.pitch = vdma2.pitch / 2U;
    vdma3.base_odd = vdma3.prot_addr;
    vdma3.pitch = vdma3.pitch / 2U;
  } else
  if ((unsigned int )field == 2U) {
    vdma1.base_odd = vdma1.prot_addr;
    vdma1.pitch = vdma1.pitch / 2U;
    vdma2.base_odd = vdma2.prot_addr;
    vdma2.pitch = vdma2.pitch / 2U;
    vdma3.base_odd = vdma3.prot_addr;
    vdma3.pitch = vdma3.pitch / 2U;
  } else
  if ((unsigned int )field == 3U) {
    vdma1.base_odd = vdma1.base_even;
    vdma1.base_even = vdma1.prot_addr;
    vdma1.pitch = vdma1.pitch / 2U;
    vdma2.base_odd = vdma2.base_even;
    vdma2.base_even = vdma2.prot_addr;
    vdma2.pitch = vdma2.pitch / 2U;
    vdma3.base_odd = vdma3.base_even;
    vdma3.base_even = vdma3.prot_addr;
    vdma3.pitch = vdma3.pitch / 2U;
  } else {
  }
  if (vv->vflip != 0) {
    vdma1.pitch = - vdma1.pitch;
    vdma2.pitch = - vdma2.pitch;
    vdma3.pitch = - vdma3.pitch;
  } else {
  }
  {
  saa7146_write_out_dma(dev, 1, & vdma1);
  }
  if ((int )sfmt->flags & 1) {
    {
    saa7146_write_out_dma(dev, 3, & vdma2);
    saa7146_write_out_dma(dev, 2, & vdma3);
    }
  } else {
    {
    saa7146_write_out_dma(dev, 2, & vdma2);
    saa7146_write_out_dma(dev, 3, & vdma3);
    }
  }
  return (0);
}
}
static void program_capture_engine(struct saa7146_dev *dev , int planar )
{
  struct saa7146_vv *vv ;
  int count ;
  unsigned long e_wait ;
  unsigned long o_wait ;
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
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  {
  vv = dev->vv_data;
  count = 0;
  e_wait = vv->current_hps_sync == 0 ? 2048UL : 8192UL;
  o_wait = vv->current_hps_sync == 0 ? 4096UL : 16384UL;
  tmp = count;
  count = count + 1;
  *(dev->d_rps0.cpu_addr + (unsigned long )tmp) = (unsigned int )o_wait | 673185792U;
  tmp___0 = count;
  count = count + 1;
  *(dev->d_rps0.cpu_addr + (unsigned long )tmp___0) = (unsigned int )e_wait | 673185792U;
  tmp___1 = count;
  count = count + 1;
  *(dev->d_rps0.cpu_addr + (unsigned long )tmp___1) = 2415919424U;
  tmp___2 = count;
  count = count + 1;
  *(dev->d_rps0.cpu_addr + (unsigned long )tmp___2) = 134219776U;
  tmp___3 = count;
  count = count + 1;
  *(dev->d_rps0.cpu_addr + (unsigned long )tmp___3) = 3221225535U;
  tmp___4 = count;
  count = count + 1;
  *(dev->d_rps0.cpu_addr + (unsigned long )tmp___4) = 4194368U;
  tmp___5 = count;
  count = count + 1;
  *(dev->d_rps0.cpu_addr + (unsigned long )tmp___5) = 4194368U;
  if (planar != 0) {
    tmp___6 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___6) = 3221225535U;
    tmp___7 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___7) = 2097184U;
    tmp___8 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___8) = 2097184U;
    tmp___9 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___9) = 3221225535U;
    tmp___10 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___10) = 1048592U;
    tmp___11 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___11) = 1048592U;
  } else {
  }
  if ((unsigned int )vv->last_field == 4U) {
    tmp___12 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___12) = (unsigned int )o_wait | 536870912U;
    tmp___13 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___13) = (unsigned int )e_wait | 536870912U;
  } else
  if ((unsigned int )vv->last_field == 2U) {
    tmp___14 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___14) = vv->current_hps_sync == 0 ? 536871936U : 536871424U;
    tmp___15 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___15) = (unsigned int )o_wait | 536870912U;
  } else
  if ((unsigned int )vv->last_field == 3U) {
    tmp___16 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___16) = vv->current_hps_sync == 0 ? 536871936U : 536871424U;
    tmp___17 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___17) = (unsigned int )e_wait | 536870912U;
  } else {
  }
  tmp___18 = count;
  count = count + 1;
  *(dev->d_rps0.cpu_addr + (unsigned long )tmp___18) = 3221225535U;
  tmp___19 = count;
  count = count + 1;
  *(dev->d_rps0.cpu_addr + (unsigned long )tmp___19) = 4194368U;
  tmp___20 = count;
  count = count + 1;
  *(dev->d_rps0.cpu_addr + (unsigned long )tmp___20) = 4194304U;
  if (planar != 0) {
    tmp___21 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___21) = 3221225535U;
    tmp___22 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___22) = 2097184U;
    tmp___23 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___23) = 2097152U;
    tmp___24 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___24) = 3221225535U;
    tmp___25 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___25) = 1048592U;
    tmp___26 = count;
    count = count + 1;
    *(dev->d_rps0.cpu_addr + (unsigned long )tmp___26) = 1048576U;
  } else {
  }
  tmp___27 = count;
  count = count + 1;
  *(dev->d_rps0.cpu_addr + (unsigned long )tmp___27) = 1610612736U;
  tmp___28 = count;
  count = count + 1;
  *(dev->d_rps0.cpu_addr + (unsigned long )tmp___28) = 1342177280U;
  return;
}
}
void saa7146_set_capture(struct saa7146_dev *dev , struct saa7146_buf *buf , struct saa7146_buf *next )
{
  struct saa7146_format *sfmt ;
  struct saa7146_format *tmp ;
  struct saa7146_vv *vv ;
  u32 vdma1_prot_addr ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  {
  tmp = saa7146_format_by_fourcc(dev, (int )(buf->fmt)->pixelformat);
  sfmt = tmp;
  vv = dev->vv_data;
  }
  if ((saa7146_debug & 64U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "saa7146_set_capture";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_hlp.c";
    descriptor.format = "%s(): buf:%p, next:%p\n";
    descriptor.lineno = 1005U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "saa7146_vv: %s(): buf:%p, next:%p\n", "saa7146_set_capture",
                         buf, next);
      }
    } else {
    }
  } else {
  }
  {
  vdma1_prot_addr = readl((void const volatile *)dev->mem + 8U);
  }
  if (vdma1_prot_addr == 0U) {
    if ((saa7146_debug & 64U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "saa7146_set_capture";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_hlp.c";
      descriptor___0.format = "%s(): forcing sync to new frame\n";
      descriptor___0.lineno = 1010U;
      descriptor___0.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "saa7146_vv: %s(): forcing sync to new frame\n",
                           "saa7146_set_capture");
        }
      } else {
      }
    } else {
    }
    {
    writel(134217728U, (void volatile *)dev->mem + 256U);
    }
  } else {
  }
  {
  saa7146_set_window(dev, (int )(buf->fmt)->width, (int )(buf->fmt)->height, (enum v4l2_field )(buf->fmt)->field);
  saa7146_set_output_format(dev, (unsigned long )sfmt->trans);
  saa7146_disable_clipping(dev);
  }
  if ((unsigned int )vv->last_field == 4U) {
  } else
  if ((unsigned int )vv->last_field == 2U) {
    vv->last_field = 3;
  } else
  if ((unsigned int )vv->last_field == 3U) {
    vv->last_field = 2;
  } else {
  }
  if ((sfmt->trans & 61440U) != 0U) {
    {
    calculate_video_dma_grab_planar(dev, buf);
    program_capture_engine(dev, 1);
    }
  } else {
    {
    calculate_video_dma_grab_packed(dev, buf);
    program_capture_engine(dev, 0);
    }
  }
  {
  writel((unsigned int )dev->d_rps0.dma_handle, (void volatile *)dev->mem + 260U);
  writel(268439552U, (void volatile *)dev->mem + 252U);
  }
  return;
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
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
  goto ldv_2978;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2978;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2978;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2978;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_2978: ;
  return (pfo_ret__);
}
}
static void ldv___ldv_spin_lock_63___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_65___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_68___0(spinlock_t *ldv_func_arg1 ) ;
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp___0 ;
  {
  {
  tmp___0 = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  }
  return (tmp___0);
}
}
__inline static void ldv_spin_lock_70(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_71(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_64(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_64(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_69(spinlock_t *lock , unsigned long flags ) ;
extern int default_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void add_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void remove_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
static int ldv_del_timer_69(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_70(struct timer_list *ldv_func_arg1 ) ;
static int ldv_mod_timer_67(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_74(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern void schedule(void) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  }
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  }
  return ((int )tmp___0);
}
}
__inline static void SAA7146_IER_DISABLE___0(struct saa7146_dev *x , unsigned int y )
{
  unsigned long flags ;
  unsigned int tmp ;
  {
  {
  ldv___ldv_spin_lock_63___0(& x->int_slock);
  tmp = readl((void const volatile *)x->mem + 220U);
  writel(tmp & ~ y, (void volatile *)x->mem + 220U);
  ldv_spin_unlock_irqrestore_64(& x->int_slock, flags);
  }
  return;
}
}
__inline static void SAA7146_IER_ENABLE___0(struct saa7146_dev *x , unsigned int y )
{
  unsigned long flags ;
  unsigned int tmp ;
  {
  {
  ldv___ldv_spin_lock_65___0(& x->int_slock);
  tmp = readl((void const volatile *)x->mem + 220U);
  writel(tmp | y, (void volatile *)x->mem + 220U);
  ldv_spin_unlock_irqrestore_64(& x->int_slock, flags);
  }
  return;
}
}
extern void videobuf_queue_cancel(struct videobuf_queue * ) ;
extern ssize_t videobuf_read_stream(struct videobuf_queue * , char * , size_t , loff_t * ,
                                    int , int ) ;
static int vbi_pixel_to_capture = 1440;
static int vbi_workaround(struct saa7146_dev *dev )
{
  struct saa7146_vv *vv ;
  u32 *cpu ;
  dma_addr_t dma_addr ;
  int count ;
  int i ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___1 ;
  long tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  struct task_struct *tmp___24 ;
  struct _ddebug descriptor___2 ;
  long tmp___25 ;
  struct task_struct *tmp___26 ;
  struct _ddebug descriptor___3 ;
  unsigned int tmp___27 ;
  long tmp___28 ;
  struct task_struct *tmp___29 ;
  int tmp___30 ;
  {
  {
  vv = dev->vv_data;
  count = 0;
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & default_wake_function;
  wait.task_list.next = (struct list_head *)0;
  wait.task_list.prev = (struct list_head *)0;
  }
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vbi_workaround";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor.format = "%s(): dev:%p\n";
    descriptor.lineno = 17U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s(): dev:%p\n", "vbi_workaround", dev);
      }
    } else {
    }
  } else {
  }
  {
  tmp___1 = pci_alloc_consistent(dev->pci, 4096UL, & dma_addr);
  cpu = (u32 *)tmp___1;
  }
  if ((unsigned long )cpu == (unsigned long )((u32 *)0U)) {
    return (-12);
  } else {
  }
  {
  writel((unsigned int )dma_addr, (void volatile *)dev->mem + 52U);
  writel((unsigned int )dma_addr + (unsigned int )vbi_pixel_to_capture, (void volatile *)dev->mem + 48U);
  writel((unsigned int )dma_addr + 4096U, (void volatile *)dev->mem + 56U);
  writel((unsigned int )vbi_pixel_to_capture, (void volatile *)dev->mem + 60U);
  writel(0U, (void volatile *)dev->mem + 64U);
  writel((unsigned int )(vbi_pixel_to_capture | 131072), (void volatile *)dev->mem + 68U);
  writel(1048592U, (void volatile *)dev->mem + 256U);
  tmp___2 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___2) = 2415919382U;
  tmp___3 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___3) = 3221225612U;
  }
  if (((dev->ext_vv_data)->flags & 2) != 0) {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "vbi_workaround";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
      descriptor___0.format = "%s(): ...using port b\n";
      descriptor___0.lineno = 43U;
      descriptor___0.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___4 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "%s(): ...using port b\n", "vbi_workaround");
        }
      } else {
      }
    } else {
    }
    tmp___5 = count;
    count = count + 1;
    *(dev->d_rps1.cpu_addr + (unsigned long )tmp___5) = 675291136U;
    tmp___6 = count;
    count = count + 1;
    *(dev->d_rps1.cpu_addr + (unsigned long )tmp___6) = 675299328U;
  } else {
    if ((saa7146_debug & 2U) != 0U) {
      {
      descriptor___1.modname = "saa7146_vv";
      descriptor___1.function = "vbi_workaround";
      descriptor___1.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
      descriptor___1.format = "%s(): ...using port a\n";
      descriptor___1.lineno = 50U;
      descriptor___1.flags = 0U;
      tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___7 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___1, "%s(): ...using port a\n", "vbi_workaround");
        }
      } else {
      }
    } else {
    }
    tmp___8 = count;
    count = count + 1;
    *(dev->d_rps1.cpu_addr + (unsigned long )tmp___8) = 536871936U;
  }
  tmp___9 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___9) = 1073742080U;
  tmp___10 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___10) = 2415919382U;
  tmp___11 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___11) = (unsigned int )(((1728 - vbi_pixel_to_capture) << 7) | 524288);
  tmp___12 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___12) = 536871168U;
  tmp___13 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___13) = 1073742080U;
  tmp___14 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___14) = 2415919377U;
  tmp___15 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___15) = (unsigned int )(vbi_pixel_to_capture | 131072);
  tmp___16 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___16) = 2415919382U;
  tmp___17 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___17) = 2690560U;
  tmp___18 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___18) = 536871168U;
  tmp___19 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___19) = 1073742096U;
  tmp___20 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___20) = 2415919423U;
  tmp___21 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___21) = 1048592U;
  tmp___22 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___22) = 1610612736U;
  tmp___23 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___23) = 1342177280U;
  i = 0;
  goto ldv_35332;
  ldv_35331:
  {
  writel(2147516416U, (void volatile *)dev->mem + 256U);
  writel(65538U, (void volatile *)dev->mem + 68U);
  writel(1048592U, (void volatile *)dev->mem + 256U);
  SAA7146_IER_ENABLE___0(dev, 268435456U);
  add_wait_queue(& vv->vbi_wq, & wait);
  tmp___24 = get_current();
  tmp___24->state = 1L;
  writel((unsigned int )dev->d_rps1.dma_handle, (void volatile *)dev->mem + 264U);
  writel(536879104U, (void volatile *)dev->mem + 252U);
  schedule();
  }
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor___2.modname = "saa7146_vv";
    descriptor___2.function = "vbi_workaround";
    descriptor___2.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor___2.format = "%s(): brs bug workaround %d/1\n";
    descriptor___2.lineno = 106U;
    descriptor___2.flags = 0U;
    tmp___25 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___25 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___2, "%s(): brs bug workaround %d/1\n", "vbi_workaround",
                         i);
      }
    } else {
    }
  } else {
  }
  {
  remove_wait_queue(& vv->vbi_wq, & wait);
  tmp___26 = get_current();
  tmp___26->state = 0L;
  SAA7146_IER_DISABLE___0(dev, 268435456U);
  writel(1048576U, (void volatile *)dev->mem + 252U);
  tmp___29 = get_current();
  tmp___30 = signal_pending(tmp___29);
  }
  if (tmp___30 != 0) {
    if ((saa7146_debug & 16U) != 0U) {
      {
      descriptor___3.modname = "saa7146_vv";
      descriptor___3.function = "vbi_workaround";
      descriptor___3.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
      descriptor___3.format = "%s(): aborted (rps:0x%08x)\n";
      descriptor___3.lineno = 120U;
      descriptor___3.flags = 0U;
      tmp___28 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      }
      if (tmp___28 != 0L) {
        {
        tmp___27 = readl((void const volatile *)dev->mem + 264U);
        __dynamic_pr_debug(& descriptor___3, "%s(): aborted (rps:0x%08x)\n", "vbi_workaround",
                           tmp___27);
        }
      } else {
      }
    } else {
    }
    {
    writel(536870912U, (void volatile *)dev->mem + 252U);
    pci_free_consistent(dev->pci, 4096UL, (void *)cpu, dma_addr);
    }
    return (-4);
  } else {
  }
  i = i + 1;
  ldv_35332: ;
  if (i <= 1) {
    goto ldv_35331;
  } else {
  }
  {
  pci_free_consistent(dev->pci, 4096UL, (void *)cpu, dma_addr);
  }
  return (0);
}
}
static void saa7146_set_vbi_capture(struct saa7146_dev *dev , struct saa7146_buf *buf ,
                                    struct saa7146_buf *next )
{
  struct saa7146_vv *vv ;
  struct saa7146_video_dma vdma3 ;
  int count ;
  unsigned long e_wait ;
  unsigned long o_wait ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  {
  vv = dev->vv_data;
  count = 0;
  e_wait = vv->current_hps_sync == 0 ? 2048UL : 8192UL;
  o_wait = vv->current_hps_sync == 0 ? 4096UL : 16384UL;
  vdma3.base_even = (u32 )buf->pt[2].offset;
  vdma3.base_odd = (u32 )buf->pt[2].offset + (u32 )(vbi_pixel_to_capture * 16);
  vdma3.prot_addr = (u32 )buf->pt[2].offset + (u32 )(vbi_pixel_to_capture * 32);
  vdma3.pitch = (u32 )vbi_pixel_to_capture;
  vdma3.base_page = (u32 )buf->pt[2].dma | 2048U;
  vdma3.num_line_byte = (u32 )(vbi_pixel_to_capture | 1048576);
  saa7146_write_out_dma(dev, 3, & vdma3);
  count = 0;
  tmp = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp) = 2415919424U;
  tmp___0 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___0) = 268439552U;
  tmp___1 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___1) = 3221225535U;
  tmp___2 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___2) = 1048592U;
  tmp___3 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___3) = 1048592U;
  tmp___4 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___4) = (unsigned int )o_wait | 536870912U;
  tmp___5 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___5) = (unsigned int )e_wait | 536870912U;
  tmp___6 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___6) = 1610612736U;
  tmp___7 = count;
  count = count + 1;
  *(dev->d_rps1.cpu_addr + (unsigned long )tmp___7) = 1342177280U;
  SAA7146_IER_ENABLE___0(dev, 268435456U);
  writel((unsigned int )dev->d_rps1.dma_handle, (void volatile *)dev->mem + 264U);
  writel(536879104U, (void volatile *)dev->mem + 252U);
  }
  return;
}
}
static int buffer_activate___0(struct saa7146_dev *dev , struct saa7146_buf *buf ,
                               struct saa7146_buf *next )
{
  struct saa7146_vv *vv ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  vv = dev->vv_data;
  buf->vb.state = 3;
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "buffer_activate";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor.format = "%s(): dev:%p, buf:%p, next:%p\n";
    descriptor.lineno = 211U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s(): dev:%p, buf:%p, next:%p\n", "buffer_activate",
                         dev, buf, next);
      }
    } else {
    }
  } else {
  }
  {
  saa7146_set_vbi_capture(dev, buf, next);
  ldv_mod_timer_67(& vv->vbi_dmaq.timeout, (unsigned long )jiffies + 125UL);
  }
  return (0);
}
}
static int buffer_prepare___0(struct videobuf_queue *q , struct videobuf_buffer *vb ,
                              enum v4l2_field field )
{
  struct file *file ;
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct saa7146_buf *buf ;
  int err ;
  int lines ;
  int llength ;
  int size ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct videobuf_dmabuf *dma ;
  struct videobuf_dmabuf *tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  {
  file = (struct file *)q->priv_data;
  fh = (struct saa7146_fh *)file->private_data;
  dev = fh->dev;
  buf = (struct saa7146_buf *)vb;
  err = 0;
  lines = 32;
  llength = vbi_pixel_to_capture;
  size = lines * llength;
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "buffer_prepare";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor.format = "%s(): vb:%p\n";
    descriptor.lineno = 232U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s(): vb:%p\n", "buffer_prepare", vb);
      }
    } else {
    }
  } else {
  }
  if (buf->vb.baddr != 0UL && buf->vb.bsize < (size_t )size) {
    if ((saa7146_debug & 16U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "buffer_prepare";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
      descriptor___0.format = "%s(): size mismatch\n";
      descriptor___0.lineno = 235U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "%s(): size mismatch\n", "buffer_prepare");
        }
      } else {
      }
    } else {
    }
    return (-22);
  } else {
  }
  if (buf->vb.size != (unsigned long )size) {
    {
    saa7146_dma_free(dev, q, buf);
    }
  } else {
  }
  if ((unsigned int )buf->vb.state == 0U) {
    {
    tmp___1 = videobuf_to_dma(& buf->vb);
    dma = tmp___1;
    buf->vb.width = (unsigned int )llength;
    buf->vb.height = (unsigned int )lines;
    buf->vb.size = (unsigned long )size;
    buf->vb.field = field;
    saa7146_pgtable_free(dev->pci, (struct saa7146_pgtable *)(& buf->pt) + 2UL);
    saa7146_pgtable_alloc(dev->pci, (struct saa7146_pgtable *)(& buf->pt) + 2UL);
    err = videobuf_iolock(q, & buf->vb, (struct v4l2_framebuffer *)0);
    }
    if (err != 0) {
      goto oops;
    } else {
    }
    {
    err = saa7146_pgtable_build_single(dev->pci, (struct saa7146_pgtable *)(& buf->pt) + 2UL,
                                       dma->sglist, dma->sglen);
    }
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  buf->vb.state = 1;
  buf->activate = & buffer_activate___0;
  return (0);
  oops: ;
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor___1.modname = "saa7146_vv";
    descriptor___1.function = "buffer_prepare";
    descriptor___1.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor___1.format = "%s(): error out\n";
    descriptor___1.lineno = 267U;
    descriptor___1.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___1, "%s(): error out\n", "buffer_prepare");
      }
    } else {
    }
  } else {
  }
  {
  saa7146_dma_free(dev, q, buf);
  }
  return (err);
}
}
static int buffer_setup___0(struct videobuf_queue *q , unsigned int *count , unsigned int *size )
{
  int llength ;
  int lines ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  lines = 32;
  llength = vbi_pixel_to_capture;
  *size = (unsigned int )(lines * llength);
  *count = 2U;
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "buffer_setup";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor.format = "%s(): count:%d, size:%d\n";
    descriptor.lineno = 283U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s(): count:%d, size:%d\n", "buffer_setup",
                         *count, *size);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static void buffer_queue___0(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  struct file *file ;
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  struct saa7146_buf *buf ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  file = (struct file *)q->priv_data;
  fh = (struct saa7146_fh *)file->private_data;
  dev = fh->dev;
  vv = dev->vv_data;
  buf = (struct saa7146_buf *)vb;
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "buffer_queue";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor.format = "%s(): vb:%p\n";
    descriptor.lineno = 296U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s(): vb:%p\n", "buffer_queue", vb);
      }
    } else {
    }
  } else {
  }
  {
  saa7146_buffer_queue(dev, & vv->vbi_dmaq, buf);
  }
  return;
}
}
static void buffer_release___0(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  struct file *file ;
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct saa7146_buf *buf ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  file = (struct file *)q->priv_data;
  fh = (struct saa7146_fh *)file->private_data;
  dev = fh->dev;
  buf = (struct saa7146_buf *)vb;
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "buffer_release";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor.format = "%s(): vb:%p\n";
    descriptor.lineno = 307U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s(): vb:%p\n", "buffer_release", vb);
      }
    } else {
    }
  } else {
  }
  {
  saa7146_dma_free(dev, q, buf);
  }
  return;
}
}
static struct videobuf_queue_ops vbi_qops = {& buffer_setup___0, & buffer_prepare___0, & buffer_queue___0, & buffer_release___0};
static void vbi_stop(struct saa7146_fh *fh , struct file *file )
{
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  dev = fh->dev;
  vv = dev->vv_data;
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vbi_stop";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor.format = "%s(): dev:%p, fh:%p\n";
    descriptor.lineno = 325U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s(): dev:%p, fh:%p\n", "vbi_stop", dev, fh);
      }
    } else {
    }
  } else {
  }
  {
  ldv___ldv_spin_lock_68___0(& dev->slock);
  writel(536870912U, (void volatile *)dev->mem + 252U);
  SAA7146_IER_DISABLE___0(dev, 268435456U);
  writel(1048576U, (void volatile *)dev->mem + 252U);
  }
  if ((unsigned long )vv->vbi_dmaq.curr != (unsigned long )((struct saa7146_buf *)0)) {
    {
    saa7146_buffer_finish(dev, & vv->vbi_dmaq, 4);
    }
  } else {
  }
  {
  videobuf_queue_cancel(& fh->vbi_q);
  vv->vbi_streaming = (struct saa7146_fh *)0;
  ldv_del_timer_69(& vv->vbi_dmaq.timeout);
  ldv_del_timer_70(& vv->vbi_read_timeout);
  ldv_spin_unlock_irqrestore_69(& dev->slock, flags);
  }
  return;
}
}
static void vbi_read_timeout(unsigned long data )
{
  struct file *file ;
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  file = (struct file *)data;
  fh = (struct saa7146_fh *)file->private_data;
  dev = fh->dev;
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vbi_read_timeout";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor.format = "%s(): dev:%p, fh:%p\n";
    descriptor.lineno = 357U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s(): dev:%p, fh:%p\n", "vbi_read_timeout",
                         dev, fh);
      }
    } else {
    }
  } else {
  }
  {
  vbi_stop(fh, file);
  }
  return;
}
}
static void vbi_init(struct saa7146_dev *dev , struct saa7146_vv *vv )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vbi_init";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor.format = "%s(): dev:%p\n";
    descriptor.lineno = 364U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s(): dev:%p\n", "vbi_init", dev);
      }
    } else {
    }
  } else {
  }
  {
  INIT_LIST_HEAD(& vv->vbi_dmaq.queue);
  init_timer_key(& vv->vbi_dmaq.timeout, 0U, "(&vv->vbi_dmaq.timeout)", & __key);
  vv->vbi_dmaq.timeout.function = & saa7146_buffer_timeout;
  vv->vbi_dmaq.timeout.data = (unsigned long )(& vv->vbi_dmaq);
  vv->vbi_dmaq.dev = dev;
  __init_waitqueue_head(& vv->vbi_wq, "&vv->vbi_wq", & __key___0);
  }
  return;
}
}
static int vbi_open(struct saa7146_dev *dev , struct file *file )
{
  struct saa7146_fh *fh ;
  struct saa7146_vv *vv ;
  u32 arbtr_ctrl ;
  unsigned int tmp ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  {
  {
  fh = (struct saa7146_fh *)file->private_data;
  vv = (fh->dev)->vv_data;
  tmp = readl((void const volatile *)dev->mem + 72U);
  arbtr_ctrl = tmp;
  ret = 0;
  }
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vbi_open";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor.format = "%s(): dev:%p, fh:%p\n";
    descriptor.lineno = 384U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s(): dev:%p, fh:%p\n", "vbi_open", dev, fh);
      }
    } else {
    }
  } else {
  }
  {
  ret = saa7146_res_get(fh, 4U);
  }
  if (ret == 0) {
    if ((int )saa7146_debug & 1) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "vbi_open";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
      descriptor___0.format = "%s(): cannot get vbi RESOURCE_DMA3_BRS resource\n";
      descriptor___0.lineno = 388U;
      descriptor___0.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "%s(): cannot get vbi RESOURCE_DMA3_BRS resource\n",
                           "vbi_open");
        }
      } else {
      }
    } else {
    }
    return (-16);
  } else {
  }
  {
  arbtr_ctrl = arbtr_ctrl & 4292935679U;
  arbtr_ctrl = arbtr_ctrl | 1900544U;
  writel(arbtr_ctrl, (void volatile *)dev->mem + 72U);
  writel(1048592U, (void volatile *)dev->mem + 256U);
  videobuf_queue_sg_init(& fh->vbi_q, (struct videobuf_queue_ops const *)(& vbi_qops),
                         & (dev->pci)->dev, & dev->slock, 4, 5, 400U, (void *)file,
                         & dev->v4l2_lock);
  vv->vbi_read_timeout.function = & vbi_read_timeout;
  vv->vbi_read_timeout.data = (unsigned long )file;
  }
  if (((dev->ext_vv_data)->flags & 2) != 0) {
    {
    writel(1614282752U, (void volatile *)dev->mem + 88U);
    }
  } else {
    {
    writel(1U, (void volatile *)dev->mem + 88U);
    ret = vbi_workaround(dev);
    }
    if (ret != 0) {
      if ((saa7146_debug & 16U) != 0U) {
        {
        descriptor___1.modname = "saa7146_vv";
        descriptor___1.function = "vbi_open";
        descriptor___1.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
        descriptor___1.format = "%s(): vbi workaround failed!\n";
        descriptor___1.lineno = 415U;
        descriptor___1.flags = 0U;
        tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
        }
        if (tmp___2 != 0L) {
          {
          __dynamic_pr_debug(& descriptor___1, "%s(): vbi workaround failed!\n", "vbi_open");
          }
        } else {
        }
      } else {
      }
    } else {
    }
  }
  {
  writel(16777472U, (void volatile *)dev->mem + 256U);
  }
  return (0);
}
}
static void vbi_close(struct saa7146_dev *dev , struct file *file )
{
  struct saa7146_fh *fh ;
  struct saa7146_vv *vv ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  fh = (struct saa7146_fh *)file->private_data;
  vv = dev->vv_data;
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vbi_close";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor.format = "%s(): dev:%p, fh:%p\n";
    descriptor.lineno = 429U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s(): dev:%p, fh:%p\n", "vbi_close", dev,
                         fh);
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )fh == (unsigned long )vv->vbi_streaming) {
    {
    vbi_stop(fh, file);
    }
  } else {
  }
  {
  saa7146_res_free(fh, 4U);
  }
  return;
}
}
static void vbi_irq_done(struct saa7146_dev *dev , unsigned long status )
{
  struct saa7146_vv *vv ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  {
  vv = dev->vv_data;
  ldv_spin_lock_70(& dev->slock);
  }
  if ((unsigned long )vv->vbi_dmaq.curr != (unsigned long )((struct saa7146_buf *)0)) {
    if ((saa7146_debug & 16U) != 0U) {
      {
      descriptor.modname = "saa7146_vv";
      descriptor.function = "vbi_irq_done";
      descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
      descriptor.format = "%s(): dev:%p, curr:%p\n";
      descriptor.lineno = 443U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp != 0L) {
        {
        __dynamic_pr_debug(& descriptor, "%s(): dev:%p, curr:%p\n", "vbi_irq_done",
                           dev, vv->vbi_dmaq.curr);
        }
      } else {
      }
    } else {
    }
    {
    vv->vbi_fieldcount = vv->vbi_fieldcount + 2;
    (vv->vbi_dmaq.curr)->vb.field_count = (unsigned int )vv->vbi_fieldcount;
    saa7146_buffer_finish(dev, & vv->vbi_dmaq, 4);
    }
  } else
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor___0.modname = "saa7146_vv";
    descriptor___0.function = "vbi_irq_done";
    descriptor___0.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor___0.format = "%s(): dev:%p\n";
    descriptor___0.lineno = 449U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_pr_debug(& descriptor___0, "%s(): dev:%p\n", "vbi_irq_done", dev);
      }
    } else {
    }
  } else {
  }
  {
  saa7146_buffer_next(dev, & vv->vbi_dmaq, 1);
  ldv_spin_unlock_71(& dev->slock);
  }
  return;
}
}
static ssize_t vbi_read(struct file *file , char *data , size_t count , loff_t *ppos )
{
  struct saa7146_fh *fh ;
  struct saa7146_dev *dev ;
  struct saa7146_vv *vv ;
  ssize_t ret ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  fh = (struct saa7146_fh *)file->private_data;
  dev = fh->dev;
  vv = dev->vv_data;
  ret = 0L;
  if ((saa7146_debug & 16U) != 0U) {
    {
    descriptor.modname = "saa7146_vv";
    descriptor.function = "vbi_read";
    descriptor.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
    descriptor.format = "%s(): dev:%p, fh:%p\n";
    descriptor.lineno = 463U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_pr_debug(& descriptor, "%s(): dev:%p, fh:%p\n", "vbi_read", dev, fh);
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )vv->vbi_streaming == (unsigned long )((struct saa7146_fh *)0)) {
    vv->vbi_streaming = fh;
  } else {
  }
  if ((unsigned long )fh != (unsigned long )vv->vbi_streaming) {
    if ((saa7146_debug & 16U) != 0U) {
      {
      descriptor___0.modname = "saa7146_vv";
      descriptor___0.function = "vbi_read";
      descriptor___0.filename = "drivers/media/common/saa7146/saa7146_vbi.c";
      descriptor___0.format = "%s(): open %p is already using vbi capture\n";
      descriptor___0.lineno = 473U;
      descriptor___0.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_pr_debug(& descriptor___0, "%s(): open %p is already using vbi capture\n",
                           "vbi_read", vv->vbi_streaming);
        }
      } else {
      }
    } else {
    }
    return (-16L);
  } else {
  }
  {
  ldv_mod_timer_74(& vv->vbi_read_timeout, (unsigned long )jiffies + 125UL);
  ret = videobuf_read_stream(& fh->vbi_q, data, count, ppos, 1, (int )file->f_flags & 2048);
  }
  return (ret);
}
}
struct saa7146_use_ops saa7146_vbi_uops = {& vbi_init, & vbi_open, & vbi_close, & vbi_irq_done, & vbi_read};
void ldv_dispatch_instance_register_8_2(struct timer_list *arg0 ) ;
struct saa7146_use_ops *ldv_5_container_struct_saa7146_use_ops ;
void (*ldv_5_callback_init)(struct saa7146_dev * , struct saa7146_vv * ) = & vbi_init;
void (*ldv_5_callback_irq_done)(struct saa7146_dev * , unsigned long ) = & vbi_irq_done;
long (*ldv_5_callback_read)(struct file * , char * , unsigned long , long long * ) = & vbi_read;
void ldv_dispatch_instance_register_8_2(struct timer_list *arg0 )
{
  {
  {
  ldv_4_container_timer_list = arg0;
  ldv_switch_automaton_state_4_3();
  }
  return;
}
}
void ldv_io_instance_callback_5_18(void (*arg0)(struct saa7146_dev * , unsigned long ) ,
                                   struct saa7146_dev *arg1 , unsigned long arg2 )
{
  {
  {
  vbi_irq_done(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_5_23(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  vbi_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_5_4(void (*arg0)(struct saa7146_dev * , struct saa7146_vv * ) ,
                                  struct saa7146_dev *arg1 , struct saa7146_vv *arg2 )
{
  {
  {
  vbi_init(arg1, arg2);
  }
  return;
}
}
int ldv_io_instance_probe_5_11(int (*arg0)(struct saa7146_dev * , struct file * ) ,
                               struct saa7146_dev *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = vbi_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_io_instance_release_5_2(void (*arg0)(struct saa7146_dev * , struct file * ) ,
                                 struct saa7146_dev *arg1 , struct file *arg2 )
{
  {
  {
  vbi_close(arg1, arg2);
  }
  return;
}
}
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 )
{
  struct timer_list *ldv_8_timer_list_timer_list ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_8_timer_list_timer_list = arg1;
    ldv_assume(ldv_statevar_4 == 3);
    ldv_dispatch_instance_register_8_2(ldv_8_timer_list_timer_list);
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
static void ldv___ldv_spin_lock_63___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_int_slock_of_saa7146_dev();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_65___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_int_slock_of_saa7146_dev();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_67(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
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
static void ldv___ldv_spin_lock_68___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_slock_of_saa7146_dev();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_del_timer_69(struct timer_list *ldv_func_arg1 )
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
static int ldv_del_timer_70(struct timer_list *ldv_func_arg1 )
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
static int ldv_mod_timer_74(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr ) ;
int ldv_exclusive_spin_is_locked(void) ;
void ldv_check_alloc_flags(gfp_t flags )
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
void ldv_check_alloc_nonatomic(void)
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
int ldv_post_probe(int probe_ret_val ) ;
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
static int ldv_spin_alloc_lock_of_task_struct = 1;
void ldv_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock", ldv_spin_alloc_lock_of_task_struct == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double unlock", ldv_spin_alloc_lock_of_task_struct == 2);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_alloc_lock_of_task_struct == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_alloc_lock_of_task_struct == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_alloc_lock_of_task_struct == 1);
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
static int ldv_spin_i_lock_of_inode = 1;
void ldv_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock", ldv_spin_i_lock_of_inode == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double unlock", ldv_spin_i_lock_of_inode == 2);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_i_lock_of_inode == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_i_lock_of_inode == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_i_lock_of_inode == 1);
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
static int ldv_spin_int_slock_of_saa7146_dev = 1;
void ldv_spin_lock_int_slock_of_saa7146_dev(void)
{
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock", ldv_spin_int_slock_of_saa7146_dev == 1);
  ldv_assume(ldv_spin_int_slock_of_saa7146_dev == 1);
  ldv_spin_int_slock_of_saa7146_dev = 2;
  }
  return;
}
}
void ldv_spin_unlock_int_slock_of_saa7146_dev(void)
{
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double unlock", ldv_spin_int_slock_of_saa7146_dev == 2);
  ldv_assume(ldv_spin_int_slock_of_saa7146_dev == 2);
  ldv_spin_int_slock_of_saa7146_dev = 1;
  }
  return;
}
}
int ldv_spin_trylock_int_slock_of_saa7146_dev(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_int_slock_of_saa7146_dev == 1);
  ldv_assume(ldv_spin_int_slock_of_saa7146_dev == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_int_slock_of_saa7146_dev = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_int_slock_of_saa7146_dev(void)
{
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_int_slock_of_saa7146_dev == 1);
  ldv_assume(ldv_spin_int_slock_of_saa7146_dev == 1);
  }
  return;
}
}
int ldv_spin_is_locked_int_slock_of_saa7146_dev(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_int_slock_of_saa7146_dev == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_int_slock_of_saa7146_dev(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_int_slock_of_saa7146_dev();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_int_slock_of_saa7146_dev(void)
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
int ldv_atomic_dec_and_lock_int_slock_of_saa7146_dev(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_int_slock_of_saa7146_dev == 1);
  ldv_assume(ldv_spin_int_slock_of_saa7146_dev == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_int_slock_of_saa7146_dev = 2;
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock", ldv_spin_lock == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double unlock", ldv_spin_lock == 2);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_lock == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_lock == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_lock == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock", ldv_spin_lock_of_NOT_ARG_SIGN == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double unlock", ldv_spin_lock_of_NOT_ARG_SIGN == 2);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_lock_of_NOT_ARG_SIGN == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_lock_of_NOT_ARG_SIGN == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_lock_of_NOT_ARG_SIGN == 1);
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
static int ldv_spin_node_size_lock_of_pglist_data = 1;
void ldv_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock", ldv_spin_node_size_lock_of_pglist_data == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double unlock", ldv_spin_node_size_lock_of_pglist_data == 2);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_node_size_lock_of_pglist_data == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_node_size_lock_of_pglist_data == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_node_size_lock_of_pglist_data == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock", ldv_spin_ptl == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double unlock", ldv_spin_ptl == 2);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_ptl == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_ptl == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_ptl == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock", ldv_spin_siglock_of_sighand_struct == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double unlock", ldv_spin_siglock_of_sighand_struct == 2);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_siglock_of_sighand_struct == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_siglock_of_sighand_struct == 1);
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_siglock_of_sighand_struct == 1);
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
static int ldv_spin_slock_of_saa7146_dev = 1;
void ldv_spin_lock_slock_of_saa7146_dev(void)
{
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock", ldv_spin_slock_of_saa7146_dev == 1);
  ldv_assume(ldv_spin_slock_of_saa7146_dev == 1);
  ldv_spin_slock_of_saa7146_dev = 2;
  }
  return;
}
}
void ldv_spin_unlock_slock_of_saa7146_dev(void)
{
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double unlock", ldv_spin_slock_of_saa7146_dev == 2);
  ldv_assume(ldv_spin_slock_of_saa7146_dev == 2);
  ldv_spin_slock_of_saa7146_dev = 1;
  }
  return;
}
}
int ldv_spin_trylock_slock_of_saa7146_dev(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_slock_of_saa7146_dev == 1);
  ldv_assume(ldv_spin_slock_of_saa7146_dev == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_slock_of_saa7146_dev = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_slock_of_saa7146_dev(void)
{
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_slock_of_saa7146_dev == 1);
  ldv_assume(ldv_spin_slock_of_saa7146_dev == 1);
  }
  return;
}
}
int ldv_spin_is_locked_slock_of_saa7146_dev(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_slock_of_saa7146_dev == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_slock_of_saa7146_dev(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_slock_of_saa7146_dev();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_slock_of_saa7146_dev(void)
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
int ldv_atomic_dec_and_lock_slock_of_saa7146_dev(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert("linux:kernel:locking:spinlock::one thread:double lock try", ldv_spin_slock_of_saa7146_dev == 1);
  ldv_assume(ldv_spin_slock_of_saa7146_dev == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_slock_of_saa7146_dev = 2;
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
  ldv_assert("linux:kernel:locking:spinlock::one thread:locked at exit", ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assert("linux:kernel:locking:spinlock::one thread:locked at exit", ldv_spin_i_lock_of_inode == 1);
  ldv_assert("linux:kernel:locking:spinlock::one thread:locked at exit", ldv_spin_int_slock_of_saa7146_dev == 1);
  ldv_assert("linux:kernel:locking:spinlock::one thread:locked at exit", ldv_spin_lock == 1);
  ldv_assert("linux:kernel:locking:spinlock::one thread:locked at exit", ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert("linux:kernel:locking:spinlock::one thread:locked at exit", ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert("linux:kernel:locking:spinlock::one thread:locked at exit", ldv_spin_ptl == 1);
  ldv_assert("linux:kernel:locking:spinlock::one thread:locked at exit", ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assert("linux:kernel:locking:spinlock::one thread:locked at exit", ldv_spin_slock_of_saa7146_dev == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_int_slock_of_saa7146_dev == 2) {
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
  if (ldv_spin_slock_of_saa7146_dev == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
extern void __VERIFIER_error(void) ;
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
void __copy_from_user_overflow() {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __ldv_spin_lock(spinlock_t *arg0) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
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
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
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
void add_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
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
void ldv_initialize() {
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
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void module_put(struct module *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible_nested(struct mutex *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void remove_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int saa7146_pgtable_alloc(struct pci_dev *arg0, struct saa7146_pgtable *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int saa7146_pgtable_build_single(struct pci_dev *arg0, struct saa7146_pgtable *arg1, struct scatterlist *arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void saa7146_pgtable_free(struct pci_dev *arg0, struct saa7146_pgtable *arg1) {
  return;
}
void schedule() {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool try_module_get(struct module *arg0) {
  return __VERIFIER_nondet_bool();
}
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, u32 arg5, s32 arg6) {
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
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_fh_add(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_del(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_exit(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_init(struct v4l2_fh *arg0, struct video_device *arg1) {
  return;
}
void v4l2_get_timestamp(struct timeval *arg0) {
  return;
}
void v4l2_video_std_frame_period(int arg0, struct v4l2_fract *arg1) {
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
int videobuf_dma_free(struct videobuf_dmabuf *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_dma_unmap(struct device *arg0, struct videobuf_dmabuf *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_dqbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_iolock(struct videobuf_queue *arg0, struct videobuf_buffer *arg1, struct v4l2_framebuffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_mapper(struct videobuf_queue *arg0, struct vm_area_struct *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int videobuf_poll_stream(struct file *arg0, struct videobuf_queue *arg1, poll_table *arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int videobuf_qbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_querybuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
void videobuf_queue_cancel(struct videobuf_queue *arg0) {
  return;
}
void videobuf_queue_sg_init(struct videobuf_queue *arg0, const struct videobuf_queue_ops *arg1, struct device *arg2, spinlock_t *arg3, enum v4l2_buf_type arg4, enum v4l2_field arg5, unsigned int arg6, void *arg7, struct mutex *arg8) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t videobuf_read_one(struct videobuf_queue *arg0, char *arg1, size_t arg2, loff_t *arg3, int arg4) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
ssize_t videobuf_read_stream(struct videobuf_queue *arg0, char *arg1, size_t arg2, loff_t *arg3, int arg4, int arg5) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int videobuf_reqbufs(struct videobuf_queue *arg0, struct v4l2_requestbuffers *arg1) {
  return __VERIFIER_nondet_int();
}
void videobuf_stop(struct videobuf_queue *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_streamoff(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_streamon(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
struct videobuf_dmabuf *videobuf_to_dma(struct videobuf_buffer *arg0) {
  return ldv_malloc(sizeof(struct videobuf_dmabuf));
}
int __VERIFIER_nondet_int(void);
int videobuf_waiton(struct videobuf_queue *arg0, struct videobuf_buffer *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int default_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
