typedef signed char __s8;
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef int s32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_ino_t;
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
typedef __u32 __le32;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef __kernel_ino_t ino_t;
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
struct completion;
struct gendisk;
struct module;
struct mutex;
struct request_queue;
typedef __u16 __ticket_t;
typedef __u32 __ticketpair_t;
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
   __u16 limit0 ;
   __u16 base0 ;
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
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct i387_fsave_struct {
   __u32 cwd ;
   __u32 swd ;
   __u32 twd ;
   __u32 fip ;
   __u32 fcs ;
   __u32 foo ;
   __u32 fos ;
   __u32 st_space[20U] ;
   __u32 status ;
};
struct __anonstruct____missing_field_name_21 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_22 {
   __u32 fip ;
   __u32 fcs ;
   __u32 foo ;
   __u32 fos ;
};
union __anonunion____missing_field_name_20 {
   struct __anonstruct____missing_field_name_21 __annonCompField12 ;
   struct __anonstruct____missing_field_name_22 __annonCompField13 ;
};
union __anonunion____missing_field_name_23 {
   __u32 padding1[12U] ;
   __u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   __u16 cwd ;
   __u16 swd ;
   __u16 twd ;
   __u16 fop ;
   union __anonunion____missing_field_name_20 __annonCompField14 ;
   __u32 mxcsr ;
   __u32 mxcsr_mask ;
   __u32 st_space[32U] ;
   __u32 xmm_space[64U] ;
   __u32 padding[12U] ;
   union __anonunion____missing_field_name_23 __annonCompField15 ;
};
struct i387_soft_struct {
   __u32 cwd ;
   __u32 swd ;
   __u32 twd ;
   __u32 fip ;
   __u32 fcs ;
   __u32 foo ;
   __u32 fos ;
   __u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   __u32 entry_eip ;
};
struct ymmh_struct {
   __u32 ymmh_space[64U] ;
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
   __u32 *uaddr ;
   __u32 val ;
   __u32 flags ;
   __u32 bitset ;
   u64 time ;
   __u32 *uaddr2 ;
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
struct timezone {
   int tz_minuteswest ;
   int tz_dsttime ;
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
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_51 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_50 {
   struct __anonstruct____missing_field_name_51 __annonCompField22 ;
};
struct lockref {
   union __anonunion____missing_field_name_50 __annonCompField23 ;
};
struct path;
struct vfsmount;
struct __anonstruct____missing_field_name_53 {
   __u32 hash ;
   __u32 len ;
};
union __anonunion____missing_field_name_52 {
   struct __anonstruct____missing_field_name_53 __annonCompField24 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_52 __annonCompField25 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_54 {
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
   union __anonunion_d_u_54 d_u ;
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
struct __anonstruct_nodemask_t_55 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_55 nodemask_t;
struct mem_cgroup;
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
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct __anonstruct____missing_field_name_57 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_56 {
   struct __anonstruct____missing_field_name_57 __annonCompField26 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_56 __annonCompField27 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
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
struct __anonstruct_mm_context_t_123 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_123 mm_context_t;
struct bio_vec;
struct block_device;
struct io_context;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct backing_dev_info;
struct export_operations;
struct iovec;
struct nameidata;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
struct swap_info_struct;
struct iov_iter;
struct vm_fault;
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
struct __anonstruct_kprojid_t_151 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_151 kprojid_t;
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
union __anonunion____missing_field_name_152 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_152 __annonCompField39 ;
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
struct address_space;
struct writeback_control;
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
union __anonunion____missing_field_name_155 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_156 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
union __anonunion____missing_field_name_157 {
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
   union __anonunion____missing_field_name_155 __annonCompField40 ;
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
   union __anonunion____missing_field_name_156 __annonCompField41 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_157 __annonCompField42 ;
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
union __anonunion_f_u_158 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_158 f_u ;
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
   __u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_160 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_159 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_160 afs ;
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
   union __anonunion_fl_u_159 fl_u ;
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
   __u32 s_time_gran ;
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
struct __anonstruct____missing_field_name_166 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_167 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_165 {
   struct __anonstruct____missing_field_name_166 __annonCompField45 ;
   struct __anonstruct____missing_field_name_167 __annonCompField46 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_165 __annonCompField47 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_168 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_170 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_174 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_173 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_174 __annonCompField50 ;
   int units ;
};
struct __anonstruct____missing_field_name_172 {
   union __anonunion____missing_field_name_173 __annonCompField51 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_171 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_172 __annonCompField52 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_169 {
   union __anonunion____missing_field_name_170 __annonCompField49 ;
   union __anonunion____missing_field_name_171 __annonCompField53 ;
};
struct __anonstruct____missing_field_name_176 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_177 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_175 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_176 __annonCompField55 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_177 __annonCompField56 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_178 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_168 __annonCompField48 ;
   struct __anonstruct____missing_field_name_169 __annonCompField54 ;
   union __anonunion____missing_field_name_175 __annonCompField57 ;
   union __anonunion____missing_field_name_178 __annonCompField58 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_179 {
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
   struct __anonstruct_shared_179 shared ;
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
   __u32 vmacache_seqnum ;
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
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct user_struct;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_185 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_185 __annonCompField62 ;
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
struct ncp_inode_info {
   __le32 dirEntNum ;
   __le32 DosDirNum ;
   __u8 volNumber ;
   __le32 nwattr ;
   struct mutex open_mutex ;
   atomic_t opened ;
   int access ;
   int flags ;
   __u8 file_handle[6U] ;
   struct inode vfs_inode ;
};
struct ncp_volume_info {
   __u32 total_blocks ;
   __u32 free_blocks ;
   __u32 purgeable_blocks ;
   __u32 not_yet_purgeable_blocks ;
   __u32 total_dir_entries ;
   __u32 available_dir_entries ;
   __u8 sectors_per_block ;
   char volume_name[17U] ;
};
struct nw_nfs_info {
   __u32 mode ;
   __u32 rdev ;
};
struct nw_info_struct {
   __u32 spaceAlloc ;
   __le32 attributes ;
   __u16 flags ;
   __le32 dataStreamSize ;
   __le32 totalStreamSize ;
   __u16 numberOfStreams ;
   __le16 creationTime ;
   __le16 creationDate ;
   __u32 creatorID ;
   __le16 modifyTime ;
   __le16 modifyDate ;
   __u32 modifierID ;
   __le16 lastAccessDate ;
   __u16 archiveTime ;
   __u16 archiveDate ;
   __u32 archiverID ;
   __u16 inheritedRightsMask ;
   __le32 dirEntNum ;
   __le32 DosDirNum ;
   __u32 volNumber ;
   __u32 EADataSize ;
   __u32 EAKeyCount ;
   __u32 EAKeySize ;
   __u32 NSCreator ;
   __u8 nameLen ;
   __u8 entryName[256U] ;
   struct nw_nfs_info nfs ;
};
struct nw_modify_dos_info {
   __le32 attributes ;
   __le16 creationDate ;
   __le16 creationTime ;
   __u32 creatorID ;
   __le16 modifyDate ;
   __le16 modifyTime ;
   __u32 modifierID ;
   __u16 archiveDate ;
   __u16 archiveTime ;
   __u32 archiverID ;
   __le16 lastAccessDate ;
   __u16 inheritanceGrantMask ;
   __u16 inheritanceRevokeMask ;
   __u32 maximumSpace ;
};
struct nw_search_sequence {
   __u8 volNumber ;
   __u32 dirBase ;
   __u32 sequence ;
};
enum ldv_21801 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_21801 socket_state;
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
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
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
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_186 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_186 sigset_t;
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
struct __anonstruct__kill_188 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_189 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_190 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_191 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_193 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_192 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_193 _addr_bnd ;
};
struct __anonstruct__sigpoll_194 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_195 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_187 {
   int _pad[28U] ;
   struct __anonstruct__kill_188 _kill ;
   struct __anonstruct__timer_189 _timer ;
   struct __anonstruct__rt_190 _rt ;
   struct __anonstruct__sigchld_191 _sigchld ;
   struct __anonstruct__sigfault_192 _sigfault ;
   struct __anonstruct__sigpoll_194 _sigpoll ;
   struct __anonstruct__sigsys_195 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_187 _sifields ;
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
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_200 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_201 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_203 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_202 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_203 __annonCompField67 ;
};
union __anonunion_type_data_204 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_206 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_205 {
   union __anonunion_payload_206 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_200 __annonCompField65 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_201 __annonCompField66 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_202 __annonCompField68 ;
   union __anonunion_type_data_204 type_data ;
   union __anonunion____missing_field_name_205 __annonCompField69 ;
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
   __u32 error ;
   __u32 incr_error ;
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
   __u32 blkio_count ;
   __u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   __u32 freepages_count ;
};
struct load_weight {
   unsigned long weight ;
   __u32 inv_weight ;
};
struct sched_avg {
   __u32 runnable_avg_sum ;
   __u32 runnable_avg_period ;
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
   __u32 vmacache_seqnum ;
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
   __u32 parent_exec_id ;
   __u32 self_exec_id ;
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
struct ncp_mount_data_kernel {
   unsigned long flags ;
   unsigned int int_flags ;
   kuid_t mounted_uid ;
   struct pid *wdog_pid ;
   unsigned int ncp_fd ;
   unsigned int time_out ;
   unsigned int retry_count ;
   unsigned char mounted_vol[17U] ;
   kuid_t uid ;
   kgid_t gid ;
   umode_t file_mode ;
   umode_t dir_mode ;
   int info_fd ;
};
struct __anonstruct_auth_209 {
   int auth_type ;
   size_t object_name_len ;
   void *object_name ;
   int object_type ;
};
struct __anonstruct_priv_210 {
   size_t len ;
   void *data ;
};
struct nls_table;
struct ncp_request_reply;
struct __anonstruct_buf_212 {
   __u32 magic ;
   __u32 len ;
   __u16 type ;
   __u16 p1 ;
   __u16 p2 ;
   __u16 p3 ;
   __u16 type2 ;
};
struct __anonstruct_rcv_211 {
   struct work_struct tq ;
   struct ncp_request_reply *creq ;
   struct mutex creq_mutex ;
   unsigned int state ;
   struct __anonstruct_buf_212 buf ;
   unsigned char *ptr ;
   size_t len ;
};
struct __anonstruct_tx_213 {
   struct list_head requests ;
   struct work_struct tq ;
   struct ncp_request_reply *creq ;
};
struct __anonstruct_unexpected_packet_214 {
   size_t len ;
   __u8 data[128U] ;
};
struct ncp_server {
   struct callback_head rcu ;
   struct ncp_mount_data_kernel m ;
   __u8 name_space[258U] ;
   struct socket *ncp_sock ;
   struct socket *info_sock ;
   u8 sequence ;
   u8 task ;
   __u16 connection ;
   u8 completion ;
   u8 conn_status ;
   int buffer_size ;
   int reply_size ;
   int packet_size ;
   unsigned char *packet ;
   unsigned char *txbuf ;
   unsigned char *rxbuf ;
   int lock ;
   struct mutex mutex ;
   int current_size ;
   int has_subfunction ;
   int ncp_reply_size ;
   int root_setuped ;
   struct mutex root_setup_lock ;
   int sign_wanted ;
   int sign_active ;
   char sign_root[8U] ;
   char sign_last[16U] ;
   struct __anonstruct_auth_209 auth ;
   struct __anonstruct_priv_210 priv ;
   struct rw_semaphore auth_rwsem ;
   struct nls_table *nls_vol ;
   struct nls_table *nls_io ;
   atomic_t dentry_ttl ;
   unsigned int flags ;
   spinlock_t requests_lock ;
   void (*data_ready)(struct sock * ) ;
   void (*error_report)(struct sock * ) ;
   void (*write_space)(struct sock * ) ;
   struct __anonstruct_rcv_211 rcv ;
   struct __anonstruct_tx_213 tx ;
   struct timer_list timeout_tm ;
   struct work_struct timeout_tq ;
   int timeout_last ;
   int timeout_retries ;
   struct __anonstruct_unexpected_packet_214 unexpected_packet ;
   struct backing_dev_info bdi ;
};
struct ncp_entry_info {
   struct nw_info_struct i ;
   ino_t ino ;
   int opened ;
   int access ;
   unsigned int volume ;
   __u8 file_handle[6U] ;
};
typedef __u16 wchar_t;
struct nls_table {
   char const *charset ;
   char const *alias ;
   int (*uni2char)(wchar_t , unsigned char * , int ) ;
   int (*char2uni)(unsigned char const * , int , wchar_t * ) ;
   unsigned char const *charset2lower ;
   unsigned char const *charset2upper ;
   struct module *owner ;
   struct nls_table *next ;
};
struct ncp_cache_head {
   time_t mtime ;
   unsigned long time ;
   unsigned long end ;
   int eof ;
};
union ncp_dir_cache {
   struct ncp_cache_head head ;
   struct dentry *dentry[512U] ;
};
struct ncp_cache_control {
   struct ncp_cache_head head ;
   struct page *page ;
   union ncp_dir_cache *cache ;
   unsigned long fpos ;
   unsigned long ofs ;
   int filled ;
   int valid ;
   int idx ;
};
typedef __kernel_long_t __kernel_off_t;
typedef __kernel_off_t off_t;
enum hrtimer_restart;
typedef short __s16;
typedef signed char s8;
typedef unsigned int __kernel_mode_t;
typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;
struct __anonstruct___kernel_fsid_t_5 {
   int val[2U] ;
};
typedef struct __anonstruct___kernel_fsid_t_5 __kernel_fsid_t;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
typedef __u8 uint8_t;
typedef __u64 uint64_t;
typedef u64 dma_addr_t;
struct class;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
typedef void (*ctor_fn_t)(void);
struct net_device;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct seq_operations;
struct jump_entry;
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct notifier_block;
struct bin_attribute;
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
enum hrtimer_restart;
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
struct device_node;
struct cgroup_subsys_state;
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
struct net;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct proc_dir_entry;
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
struct __anonstruct____missing_field_name_186 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_185___0 {
   struct __anonstruct____missing_field_name_186 __annonCompField62 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_185___0 __annonCompField63 ;
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
union __anonunion____missing_field_name_191 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   __u16 perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_191 __annonCompField64 ;
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
struct plist_head {
   struct list_head node_list ;
};
struct uts_namespace;
struct kstatfs {
   long f_type ;
   long f_bsize ;
   u64 f_blocks ;
   u64 f_bfree ;
   u64 f_bavail ;
   u64 f_files ;
   u64 f_ffree ;
   __kernel_fsid_t f_fsid ;
   long f_namelen ;
   long f_frsize ;
   long f_flags ;
   long f_spare[4U] ;
};
struct mnt_namespace;
struct vfsmount {
   struct dentry *mnt_root ;
   struct super_block *mnt_sb ;
   int mnt_flags ;
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
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
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
   __u32 id ;
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
union __anonunion_data_215 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_215 data ;
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
struct __anonstruct_sync_serial_settings_218 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_218 sync_serial_settings;
struct __anonstruct_te1_settings_219 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_219 te1_settings;
struct __anonstruct_raw_hdlc_proto_220 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_220 raw_hdlc_proto;
struct __anonstruct_fr_proto_221 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_221 fr_proto;
struct __anonstruct_fr_proto_pvc_222 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_222 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_223 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_223 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_224 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_224 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_225 {
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
   union __anonunion_ifs_ifsu_225 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_226 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_227 {
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
   union __anonunion_ifr_ifrn_226 ifr_ifrn ;
   union __anonunion_ifr_ifru_227 ifr_ifru ;
};
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef __u32 compat_uptr_t;
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
struct __anonstruct____missing_field_name_246 {
   __u32 stamp_us ;
   __u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_245 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_246 __annonCompField75 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_245 __annonCompField76 ;
};
union __anonunion____missing_field_name_249 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_248 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_249 __annonCompField77 ;
};
union __anonunion____missing_field_name_247 {
   struct __anonstruct____missing_field_name_248 __annonCompField78 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_251 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_250 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_251 __annonCompField80 ;
};
union __anonunion____missing_field_name_252 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_253 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_254 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_247 __annonCompField79 ;
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
   union __anonunion____missing_field_name_250 __annonCompField81 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_252 __annonCompField82 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_253 __annonCompField83 ;
   union __anonunion____missing_field_name_254 __annonCompField84 ;
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
   __u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , __u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   __u32 (*get_link)(struct net_device * ) ;
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
   void (*get_strings)(struct net_device * , __u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   __u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , __u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , __u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , __u32 * ) ;
   __u32 (*get_rxfh_key_size)(struct net_device * ) ;
   __u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , __u32 * , u8 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , __u32 const * , u8 const * , u8 const ) ;
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
union __anonunion_in6_u_257 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_257 in6_u ;
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
   __u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , __u32 ) ;
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
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   __u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   __u32 hash_shift ;
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
   __u32 sysctl_aevent_etime ;
   __u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   __u32 sysctl_acq_expires ;
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
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2
} ;
struct fwnode_handle {
   enum fwnode_type type ;
};
typedef __u32 phandle;
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
enum ldv_28594 {
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
typedef enum ldv_28594 phy_interface_t;
enum ldv_28647 {
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
   int (*write)(struct mii_bus * , int , int , __u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_28647 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   __u32 phy_mask ;
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
   __u32 devices_in_package ;
   __u32 device_ids[8U] ;
};
struct phy_driver;
struct phy_device {
   struct phy_driver *drv ;
   struct mii_bus *bus ;
   struct device dev ;
   __u32 phy_id ;
   struct phy_c45_device_ids c45_ids ;
   bool is_c45 ;
   bool is_internal ;
   bool has_fixups ;
   bool suspended ;
   enum phy_state state ;
   __u32 dev_flags ;
   phy_interface_t interface ;
   int addr ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
   int link ;
   __u32 interrupts ;
   __u32 supported ;
   __u32 advertising ;
   __u32 lp_advertising ;
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
   __u32 phy_id ;
   char *name ;
   unsigned int phy_id_mask ;
   __u32 features ;
   __u32 flags ;
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
   void (*write_mmd_indirect)(struct phy_device * , int , int , int , __u32 ) ;
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
   __u32 dsa_port_mask ;
   __u32 phys_port_mask ;
   __u32 phys_mii_mask ;
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
   __u32 (*get_phy_flags)(struct dsa_switch * , int ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , __u16 ) ;
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
   void (*getbcncfg)(struct net_device * , int , __u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , __u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   int (*setapp)(struct net_device * , u8 , __u16 , u8 ) ;
   int (*getapp)(struct net_device * , u8 , __u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , __u16 * ) ;
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
struct netprio_map {
   struct callback_head rcu ;
   __u32 priomap_len ;
   __u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
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
   __u16 family ;
   __u16 min_dump_alloc ;
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
   __u16 hh_len ;
   __u16 __pad ;
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
   __u16 cpus[0U] ;
};
struct rps_dev_flow {
   __u16 cpu ;
   __u16 filter ;
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
   __u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   __u16 count ;
   __u16 offset ;
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
   __u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , __u16 (*)(struct net_device * ,
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
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , __u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , __u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , __u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , __u16 , struct scatterlist * ,
                             unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , __u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , __u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , __u16 ,
                            __u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      __u16 , __u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      __u16 ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       struct net_device * , int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * , __u16 ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , __u32 , __u32 , struct net_device * ,
                             __u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * , __u16 ) ;
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
struct __anonstruct_adj_list_269 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_270 {
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
union __anonunion____missing_field_name_271 {
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
   struct __anonstruct_adj_list_269 adj_list ;
   struct __anonstruct_all_adj_list_270 all_adj_list ;
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
   union __anonunion____missing_field_name_271 __annonCompField87 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   __u16 gso_max_segs ;
   __u16 gso_min_segs ;
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
union __anonunion_ki_obj_272 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_272 ki_obj ;
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
   __u16 len ;
   struct sock_filter *filter ;
};
union __anonunion____missing_field_name_277 {
   struct sock_filter insns[0U] ;
   struct bpf_insn insnsi[0U] ;
};
struct bpf_prog {
   __u16 pages ;
   bool jited ;
   __u32 len ;
   struct sock_fprog_kern *orig_prog ;
   struct bpf_prog_aux *aux ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct bpf_insn const * ) ;
   union __anonunion____missing_field_name_277 __annonCompField92 ;
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
struct nla_policy {
   __u16 type ;
   __u16 len ;
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
union __anonunion____missing_field_name_282 {
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
   union __anonunion____missing_field_name_282 __annonCompField93 ;
};
struct __anonstruct_socket_lock_t_283 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_283 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_285 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_284 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_285 __annonCompField94 ;
};
union __anonunion____missing_field_name_286 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_288 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_287 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_288 __annonCompField97 ;
};
union __anonunion____missing_field_name_289 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_290 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_284 __annonCompField95 ;
   union __anonunion____missing_field_name_286 __annonCompField96 ;
   union __anonunion____missing_field_name_287 __annonCompField98 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_289 __annonCompField99 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_290 __annonCompField100 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_291 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_291 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   __u16 sk_incoming_cpu ;
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
   __u32 sk_pacing_rate ;
   __u32 sk_max_pacing_rate ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   __u16 sk_gso_max_segs ;
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
   __u16 sk_tsflags ;
   __u32 sk_tskey ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   __u32 sk_classid ;
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
union __anonunion_h_292 {
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
   union __anonunion_h_292 h ;
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
struct ncp_mount_data {
   int version ;
   unsigned int ncp_fd ;
   __kernel_uid_t mounted_uid ;
   __kernel_pid_t wdog_pid ;
   unsigned char mounted_vol[17U] ;
   unsigned int time_out ;
   unsigned int retry_count ;
   unsigned int flags ;
   __kernel_uid_t uid ;
   __kernel_gid_t gid ;
   __kernel_mode_t file_mode ;
   __kernel_mode_t dir_mode ;
};
struct ncp_mount_data_v4 {
   int version ;
   unsigned long flags ;
   unsigned long mounted_uid ;
   long wdog_pid ;
   unsigned int ncp_fd ;
   unsigned int time_out ;
   unsigned int retry_count ;
   unsigned long uid ;
   unsigned long gid ;
   unsigned long file_mode ;
   unsigned long dir_mode ;
};
struct ncp_option {
   char const *name ;
   unsigned int has_arg ;
   int val ;
};
struct ldv_struct_EMGentry_13 {
   int signal_pending ;
};
struct ldv_struct_dummy_resourceless_instance_5 {
   struct file_system_type *arg0 ;
   int signal_pending ;
};
struct ldv_struct_timer_instance_7 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef __u32 u_int32_t;
enum hrtimer_restart;
typedef __u32 compat_caddr_t;
struct sockaddr_ipx {
   __kernel_sa_family_t sipx_family ;
   __be16 sipx_port ;
   __be32 sipx_network ;
   unsigned char sipx_node[6U] ;
   __u8 sipx_type ;
   unsigned char sipx_zero ;
};
struct ncp_ioctl_request {
   unsigned int function ;
   unsigned int size ;
   char *data ;
};
struct ncp_fs_info {
   int version ;
   struct sockaddr_ipx addr ;
   __kernel_uid_t mounted_uid ;
   int connection ;
   int buffer_size ;
   int volume_number ;
   __le32 directory_id ;
};
struct ncp_fs_info_v2 {
   int version ;
   unsigned long mounted_uid ;
   unsigned int connection ;
   unsigned int buffer_size ;
   unsigned int volume_number ;
   __le32 directory_id ;
   __u32 dummy1 ;
   __u32 dummy2 ;
   __u32 dummy3 ;
};
struct ncp_sign_init {
   char sign_root[8U] ;
   char sign_last[16U] ;
};
struct ncp_lock_ioctl {
   int cmd ;
   int origin ;
   unsigned int offset ;
   unsigned int length ;
   int timeout ;
};
struct ncp_setroot_ioctl {
   int volNumber ;
   int namespace ;
   __le32 dirEntNum ;
};
struct ncp_objectname_ioctl {
   int auth_type ;
   size_t object_name_len ;
   void *object_name ;
};
struct ncp_privatedata_ioctl {
   size_t len ;
   void *data ;
};
struct ncp_nls_ioctl {
   unsigned char codepage[21U] ;
   unsigned char iocharset[21U] ;
};
struct compat_ncp_objectname_ioctl {
   s32 auth_type ;
   __u32 object_name_len ;
   compat_caddr_t object_name ;
};
struct compat_ncp_fs_info_v2 {
   s32 version ;
   __u32 mounted_uid ;
   __u32 connection ;
   __u32 buffer_size ;
   __u32 volume_number ;
   __u32 directory_id ;
   __u32 dummy1 ;
   __u32 dummy2 ;
   __u32 dummy3 ;
};
struct compat_ncp_ioctl_request {
   __u32 function ;
   __u32 size ;
   compat_caddr_t data ;
};
struct compat_ncp_privatedata_ioctl {
   __u32 len ;
   compat_caddr_t data ;
};
enum hrtimer_restart;
enum vm_event_item {
    PGPGIN = 0,
    PGPGOUT = 1,
    PSWPIN = 2,
    PSWPOUT = 3,
    PGALLOC_DMA = 4,
    PGALLOC_DMA32 = 5,
    PGALLOC_NORMAL = 6,
    PGALLOC_MOVABLE = 7,
    PGFREE = 8,
    PGACTIVATE = 9,
    PGDEACTIVATE = 10,
    PGFAULT = 11,
    PGMAJFAULT = 12,
    PGREFILL_DMA = 13,
    PGREFILL_DMA32 = 14,
    PGREFILL_NORMAL = 15,
    PGREFILL_MOVABLE = 16,
    PGSTEAL_KSWAPD_DMA = 17,
    PGSTEAL_KSWAPD_DMA32 = 18,
    PGSTEAL_KSWAPD_NORMAL = 19,
    PGSTEAL_KSWAPD_MOVABLE = 20,
    PGSTEAL_DIRECT_DMA = 21,
    PGSTEAL_DIRECT_DMA32 = 22,
    PGSTEAL_DIRECT_NORMAL = 23,
    PGSTEAL_DIRECT_MOVABLE = 24,
    PGSCAN_KSWAPD_DMA = 25,
    PGSCAN_KSWAPD_DMA32 = 26,
    PGSCAN_KSWAPD_NORMAL = 27,
    PGSCAN_KSWAPD_MOVABLE = 28,
    PGSCAN_DIRECT_DMA = 29,
    PGSCAN_DIRECT_DMA32 = 30,
    PGSCAN_DIRECT_NORMAL = 31,
    PGSCAN_DIRECT_MOVABLE = 32,
    PGSCAN_DIRECT_THROTTLE = 33,
    PGSCAN_ZONE_RECLAIM_FAILED = 34,
    PGINODESTEAL = 35,
    SLABS_SCANNED = 36,
    KSWAPD_INODESTEAL = 37,
    KSWAPD_LOW_WMARK_HIT_QUICKLY = 38,
    KSWAPD_HIGH_WMARK_HIT_QUICKLY = 39,
    PAGEOUTRUN = 40,
    ALLOCSTALL = 41,
    PGROTATED = 42,
    DROP_PAGECACHE = 43,
    DROP_SLAB = 44,
    NUMA_PTE_UPDATES = 45,
    NUMA_HUGE_PTE_UPDATES = 46,
    NUMA_HINT_FAULTS = 47,
    NUMA_HINT_FAULTS_LOCAL = 48,
    NUMA_PAGE_MIGRATE = 49,
    PGMIGRATE_SUCCESS = 50,
    PGMIGRATE_FAIL = 51,
    COMPACTMIGRATE_SCANNED = 52,
    COMPACTFREE_SCANNED = 53,
    COMPACTISOLATED = 54,
    COMPACTSTALL = 55,
    COMPACTFAIL = 56,
    COMPACTSUCCESS = 57,
    HTLB_BUDDY_PGALLOC = 58,
    HTLB_BUDDY_PGALLOC_FAIL = 59,
    UNEVICTABLE_PGCULLED = 60,
    UNEVICTABLE_PGSCANNED = 61,
    UNEVICTABLE_PGRESCUED = 62,
    UNEVICTABLE_PGMLOCKED = 63,
    UNEVICTABLE_PGMUNLOCKED = 64,
    UNEVICTABLE_PGCLEARED = 65,
    UNEVICTABLE_PGSTRANDED = 66,
    THP_FAULT_ALLOC = 67,
    THP_FAULT_FALLBACK = 68,
    THP_COLLAPSE_ALLOC = 69,
    THP_COLLAPSE_ALLOC_FAILED = 70,
    THP_SPLIT = 71,
    THP_ZERO_PAGE_ALLOC = 72,
    THP_ZERO_PAGE_ALLOC_FAILED = 73,
    BALLOON_INFLATE = 74,
    BALLOON_DEFLATE = 75,
    BALLOON_MIGRATE = 76,
    NR_TLB_REMOTE_FLUSH = 77,
    NR_TLB_REMOTE_FLUSH_RECEIVED = 78,
    NR_TLB_LOCAL_FLUSH_ALL = 79,
    NR_TLB_LOCAL_FLUSH_ONE = 80,
    VMACACHE_FIND_CALLS = 81,
    VMACACHE_FIND_HITS = 82,
    VMACACHE_FULL_FLUSHES = 83,
    NR_VM_EVENT_ITEMS = 84
} ;
struct vm_event_state {
   unsigned long event[84U] ;
};
typedef unsigned long pao_T_____5;
typedef unsigned long pao_T_____6;
typedef unsigned long pao_T_____7;
typedef unsigned long pao_T_____8;
typedef __u64 __le64;
enum hrtimer_restart;
typedef __u32 unicode_t;
typedef __u16 u_int16_t;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
struct ncp_request_header {
   __u16 type ;
   __u8 sequence ;
   __u8 conn_low ;
   __u8 task ;
   __u8 conn_high ;
   __u8 function ;
   __u8 data[0U] ;
};
struct ncp_reply_header {
   __u16 type ;
   __u8 sequence ;
   __u8 conn_low ;
   __u8 task ;
   __u8 conn_high ;
   __u8 completion_code ;
   __u8 connection_state ;
   __u8 data[0U] ;
};
enum ldv_34834 {
    RQ_DONE = 0,
    RQ_INPROGRESS = 1,
    RQ_QUEUED = 2,
    RQ_IDLE = 3,
    RQ_ABANDONED = 4
} ;
struct ncp_request_reply {
   struct list_head req ;
   wait_queue_head_t wq ;
   atomic_t refs ;
   unsigned char *reply_buf ;
   size_t datalen ;
   int result ;
   enum ldv_34834 status ;
   struct kvec *tx_ciov ;
   size_t tx_totallen ;
   size_t tx_iovlen ;
   struct kvec tx_iov[3U] ;
   u_int16_t tx_type ;
   u_int32_t sign[6U] ;
};
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
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
   __u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   __u16 mode ;
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
   __u16 num_chipselect ;
   __u16 dma_alignment ;
   __u16 mode_bits ;
   __u32 bits_per_word_mask ;
   __u32 min_speed_hz ;
   __u32 max_speed_hz ;
   __u16 flags ;
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
   __u16 delay_usecs ;
   __u32 speed_hz ;
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
   __u32 task_filter ;
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
   __u32 opcode ;
   __u32 arg ;
   __u32 resp[4U] ;
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
   __u32 ocr ;
   unsigned int rca ;
   unsigned int type ;
   unsigned int state ;
   unsigned int quirks ;
   unsigned int erase_size ;
   unsigned int erase_shift ;
   unsigned int pref_erase ;
   u8 erased_byte ;
   __u32 raw_cid[4U] ;
   __u32 raw_csd[4U] ;
   __u32 raw_scr[2U] ;
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
   int (*execute_tuning)(struct mmc_host * , __u32 ) ;
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
   __u32 ocr_avail ;
   __u32 ocr_avail_sdio ;
   __u32 ocr_avail_sd ;
   __u32 ocr_avail_mmc ;
   struct notifier_block pm_notify ;
   __u32 max_current_330 ;
   __u32 max_current_300 ;
   __u32 max_current_180 ;
   __u32 caps ;
   __u32 caps2 ;
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
   __u32 dsr ;
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
void *ldv_linux_drivers_base_class_create_class(void) ;
int ldv_linux_drivers_base_class_register_class(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void) ;
void *ldv_linux_usb_gadget_create_class(void *is_got ) ;
int ldv_linux_usb_gadget_register_class(void) ;
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
void *ldv_err_ptr(long error ) ;
int ldv_undef_int(void) ;
int ldv_filter_err_code(int ret_val ) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
static void ldv_mutex_lock_92(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern void __might_sleep(char const * , int , int ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
__inline static void *ERR_PTR(long error ) ;
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
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN(void) ;
static void ldv_mutex_lock_nested_104(struct mutex *ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
static void ldv_mutex_unlock_93(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 ) ;
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
__inline static void ldv_spin_lock_74(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_74(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_74(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_74(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_74(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_75(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_75(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_75(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_75(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_75(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_75(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_75(spinlock_t *lock ) ;
extern struct timezone sys_tz ;
extern unsigned long volatile jiffies ;
__inline static int new_valid_dev(dev_t dev )
{
  {
  return (1);
}
}
__inline static __u32 new_encode_dev(dev_t dev )
{
  unsigned int major ;
  unsigned int minor ;
  {
  major = dev >> 20;
  minor = dev & 1048575U;
  return (((minor & 255U) | (major << 8)) | ((minor & 4294967040U) << 12));
}
}
extern int lockref_get_not_dead(struct lockref * ) ;
__inline static unsigned long partial_name_hash(unsigned long c , unsigned long prevhash )
{
  {
  return (((prevhash + (c << 4)) + (c >> 4)) * 11UL);
}
}
__inline static unsigned long end_name_hash(unsigned long hash )
{
  {
  return ((unsigned long )((unsigned int )hash));
}
}
extern void d_instantiate(struct dentry * , struct inode * ) ;
extern struct dentry *d_alloc(struct dentry * , struct qstr const * ) ;
extern void shrink_dcache_parent(struct dentry * ) ;
extern void d_rehash(struct dentry * ) ;
__inline static void d_add(struct dentry *entry , struct inode *inode )
{
  {
  {
  d_instantiate(entry, inode);
  d_rehash(entry);
  }
  return;
}
}
extern void dentry_update_name_case(struct dentry * , struct qstr * ) ;
extern struct dentry *d_hash_and_lookup(struct dentry * , struct qstr * ) ;
extern struct dentry *dget_parent(struct dentry * ) ;
extern void dput(struct dentry * ) ;
static void *ldv_vmalloc_106(unsigned long ldv_func_arg1 ) ;
extern void vfree(void const * ) ;
__inline static struct inode *file_inode(struct file const *f )
{
  {
  return ((struct inode *)f->f_inode);
}
}
extern int is_bad_inode(struct inode * ) ;
extern ino_t iunique(struct super_block * , ino_t ) ;
extern loff_t generic_file_llseek(struct file * , loff_t , int ) ;
extern ssize_t generic_read_dir(struct file * , char * , size_t , loff_t * ) ;
__inline static ino_t parent_ino(struct dentry *dentry )
{
  ino_t res ;
  {
  {
  ldv_spin_lock_74(& dentry->d_lockref.__annonCompField23.__annonCompField22.lock);
  res = ((dentry->d_parent)->d_inode)->i_ino;
  ldv_spin_unlock_75(& dentry->d_lockref.__annonCompField23.__annonCompField22.lock);
  }
  return (res);
}
}
__inline static bool is_root_inode(struct inode *inode )
{
  {
  return ((unsigned long )inode == (unsigned long )((inode->i_sb)->s_root)->d_inode);
}
}
__inline static bool dir_emit(struct dir_context *ctx , char const *name , int namelen ,
                              u64 ino , unsigned int type )
{
  int tmp ;
  {
  {
  tmp = (*(ctx->actor))(ctx, name, namelen, ctx->pos, ino, type);
  }
  return (tmp == 0);
}
}
__inline static bool dir_emit_dot(struct file *file , struct dir_context *ctx )
{
  int tmp ;
  {
  {
  tmp = (*(ctx->actor))(ctx, ".", 1, ctx->pos, (u64 )((file->f_path.dentry)->d_inode)->i_ino,
                        4U);
  }
  return (tmp == 0);
}
}
__inline static bool dir_emit_dotdot(struct file *file , struct dir_context *ctx )
{
  ino_t tmp ;
  int tmp___0 ;
  {
  {
  tmp = parent_ino(file->f_path.dentry);
  tmp___0 = (*(ctx->actor))(ctx, "..", 2, ctx->pos, (u64 )tmp, 4U);
  }
  return (tmp___0 == 0);
}
}
__inline static bool dir_emit_dots(struct file *file , struct dir_context *ctx )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  if (ctx->pos == 0LL) {
    {
    tmp = dir_emit_dot(file, ctx);
    }
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      return (0);
    } else {
    }
    ctx->pos = 1LL;
  } else {
  }
  if (ctx->pos == 1LL) {
    {
    tmp___1 = dir_emit_dotdot(file, ctx);
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
    ctx->pos = 2LL;
  } else {
  }
  return (1);
}
}
__inline static int PageUptodate(struct page *page )
{
  int ret ;
  int tmp ;
  {
  {
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& page->flags));
  ret = tmp;
  }
  if (ret != 0) {
    __asm__ volatile ("": : : "memory");
  } else {
  }
  return (ret);
}
}
__inline static void SetPageUptodate(struct page *page )
{
  {
  {
  __asm__ volatile ("": : : "memory");
  set_bit(3L, (unsigned long volatile *)(& page->flags));
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
__inline static gfp_t mapping_gfp_mask(struct address_space *mapping )
{
  {
  return ((gfp_t )mapping->flags & 33554431U);
}
}
extern struct page *pagecache_get_page(struct address_space * , unsigned long , int ,
                                       gfp_t ) ;
__inline static struct page *find_lock_page(struct address_space *mapping , unsigned long offset )
{
  struct page *tmp ;
  {
  {
  tmp = pagecache_get_page(mapping, offset, 2, 0U);
  }
  return (tmp);
}
}
__inline static struct page *find_or_create_page(struct address_space *mapping , unsigned long offset ,
                                                 gfp_t gfp_mask )
{
  struct page *tmp ;
  {
  {
  tmp = pagecache_get_page(mapping, offset, 7, gfp_mask);
  }
  return (tmp);
}
}
__inline static struct page *grab_cache_page(struct address_space *mapping , unsigned long index )
{
  gfp_t tmp ;
  struct page *tmp___0 ;
  {
  {
  tmp = mapping_gfp_mask(mapping);
  tmp___0 = find_or_create_page(mapping, index, tmp);
  }
  return (tmp___0);
}
}
extern void unlock_page(struct page * ) ;
__inline static int ncp_conn_valid(struct ncp_server *server )
{
  {
  return (((int )server->conn_status & 17) == 0);
}
}
__inline static struct ncp_server *NCP_SBP(struct super_block const *sb )
{
  {
  return ((struct ncp_server *)sb->s_fs_info);
}
}
__inline static struct ncp_inode_info *NCP_FINFO(struct inode const *inode )
{
  struct inode const *__mptr ;
  {
  __mptr = inode;
  return ((struct ncp_inode_info *)__mptr + 0xffffffffffffff38UL);
}
}
int ncp_notify_change(struct dentry *dentry , struct iattr *attr ) ;
struct inode *ncp_iget(struct super_block *sb , struct ncp_entry_info *info ) ;
void ncp_update_inode2(struct inode *inode , struct ncp_entry_info *nwinfo ) ;
struct inode_operations const ncp_dir_inode_operations ;
struct file_operations const ncp_dir_operations ;
struct dentry_operations const ncp_dentry_operations ;
int ncp_conn_logged_in(struct super_block *sb ) ;
int ncp_date_dos2unix(__le16 t , __le16 d ) ;
void ncp_date_unix2dos(int unix_date , __le16 *time , __le16 *date ) ;
long ncp_ioctl(struct file *filp , unsigned int cmd , unsigned long arg ) ;
long ncp_compat_ioctl(struct file *file , unsigned int cmd , unsigned long arg ) ;
int ncp_symlink(struct inode *dir , struct dentry *dentry , char const *symname ) ;
int ncp_make_closed(struct inode *inode ) ;
__inline static unsigned char nls_tolower(struct nls_table *t , unsigned char c )
{
  unsigned char nc ;
  {
  nc = *(t->charset2lower + (unsigned long )c);
  return ((unsigned int )nc != 0U ? nc : c);
}
}
__inline static int nls_strnicmp(struct nls_table *t , unsigned char const *s1 ,
                                 unsigned char const *s2 , int len )
{
  unsigned char const *tmp ;
  unsigned char tmp___0 ;
  unsigned char const *tmp___1 ;
  unsigned char tmp___2 ;
  int tmp___3 ;
  {
  goto ldv_30294;
  ldv_30293:
  {
  tmp = s1;
  s1 = s1 + 1;
  tmp___0 = nls_tolower(t, (int )*tmp);
  tmp___1 = s2;
  s2 = s2 + 1;
  tmp___2 = nls_tolower(t, (int )*tmp___1);
  }
  if ((int )tmp___0 != (int )tmp___2) {
    return (1);
  } else {
  }
  ldv_30294:
  tmp___3 = len;
  len = len - 1;
  if (tmp___3 != 0) {
    goto ldv_30293;
  } else {
  }
  return (0);
}
}
int ncp_get_volume_info_with_number(struct ncp_server *server , int n , struct ncp_volume_info *target ) ;
int ncp_close_file(struct ncp_server *server , char const *file_id ) ;
void ncp_extract_file_info(void const *structure , struct nw_info_struct *target ) ;
int ncp_obtain_info(struct ncp_server *server , struct inode *dir , char const *path ,
                    struct nw_info_struct *target ) ;
int ncp_obtain_nfs_info(struct ncp_server *server , struct nw_info_struct *target ) ;
int ncp_update_known_namespace(struct ncp_server *server , __u8 volume , int *ret_ns ) ;
int ncp_get_volume_root(struct ncp_server *server , char const *volname , __u32 *volume ,
                        __le32 *dirent , __le32 *dosdirent ) ;
int ncp_lookup_volume(struct ncp_server *server , char const *volname , struct nw_info_struct *target ) ;
int ncp_modify_file_or_subdir_dos_info_path(struct ncp_server *server , struct inode *dir ,
                                            char const *path , __le32 info_mask ,
                                            struct nw_modify_dos_info const *info ) ;
int ncp_modify_nfs_info(struct ncp_server *server , __u8 volnum , __le32 dirent ,
                        __u32 mode , __u32 rdev ) ;
int ncp_del_file_or_subdir2(struct ncp_server *server , struct dentry *dentry ) ;
int ncp_del_file_or_subdir(struct ncp_server *server , struct inode *dir , char const *name ) ;
int ncp_open_create_file_or_subdir(struct ncp_server *server , struct inode *dir ,
                                   char const *name , int open_create_mode , __le32 create_attributes ,
                                   __le16 desired_acc_rights , struct ncp_entry_info *target ) ;
int ncp_initialize_search(struct ncp_server *server , struct inode *dir , struct nw_search_sequence *target ) ;
int ncp_search_for_fileset(struct ncp_server *server , struct nw_search_sequence *seq ,
                           int *more , int *cnt , char *buffer , size_t bufsize ,
                           char **rbuf , size_t *rsize ) ;
int ncp_ren_or_mov_file_or_subdir(struct ncp_server *server , struct inode *old_dir ,
                                  char const *old_name , struct inode *new_dir ,
                                  char const *new_name ) ;
int ncp_create_new(struct inode *dir , struct dentry *dentry , umode_t mode , dev_t rdev ,
                   __le32 attributes ) ;
__inline static int ncp_is_nfs_extras(struct ncp_server *server , unsigned int volnum )
{
  {
  return ((server->m.flags & 128UL) != 0UL && (unsigned int )server->name_space[volnum] == 2U);
}
}
int ncp__io2vol(struct ncp_server *server , unsigned char *vname , unsigned int *vlen ,
                unsigned char const *iname , unsigned int ilen , int cc ) ;
int ncp__vol2io(struct ncp_server *server , unsigned char *iname , unsigned int *ilen ,
                unsigned char const *vname , unsigned int vlen , int cc ) ;
__inline static void ncp_age_dentry(struct ncp_server *server , struct dentry *dentry )
{
  int tmp ;
  {
  {
  tmp = atomic_read((atomic_t const *)(& server->dentry_ttl));
  dentry->d_time = (unsigned long )jiffies - (unsigned long )tmp;
  }
  return;
}
}
__inline static void ncp_new_dentry(struct dentry *dentry )
{
  {
  dentry->d_time = jiffies;
  return;
}
}
static void ncp_read_volume_list(struct file *file , struct dir_context *ctx , struct ncp_cache_control *ctl ) ;
static void ncp_do_readdir(struct file *file , struct dir_context *ctx , struct ncp_cache_control *ctl ) ;
static int ncp_readdir(struct file *file , struct dir_context *ctx ) ;
static int ncp_create(struct inode *dir , struct dentry *dentry , umode_t mode , bool excl ) ;
static struct dentry *ncp_lookup(struct inode *dir , struct dentry *dentry , unsigned int flags ) ;
static int ncp_unlink(struct inode *dir , struct dentry *dentry ) ;
static int ncp_mkdir(struct inode *dir , struct dentry *dentry , umode_t mode ) ;
static int ncp_rmdir(struct inode *dir , struct dentry *dentry ) ;
static int ncp_rename(struct inode *old_dir , struct dentry *old_dentry , struct inode *new_dir ,
                      struct dentry *new_dentry ) ;
static int ncp_mknod(struct inode *dir , struct dentry *dentry , umode_t mode , dev_t rdev ) ;
struct file_operations const ncp_dir_operations =
     {0, & generic_file_llseek, & generic_read_dir, 0, 0, 0, 0, 0, & ncp_readdir, 0,
    & ncp_ioctl, & ncp_compat_ioctl, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0};
struct inode_operations const ncp_dir_inode_operations =
     {& ncp_lookup, 0, 0, 0, 0, 0, & ncp_create, 0, & ncp_unlink, & ncp_symlink, & ncp_mkdir,
    & ncp_rmdir, & ncp_mknod, & ncp_rename, 0, & ncp_notify_change, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0};
static int ncp_lookup_validate(struct dentry *dentry , unsigned int flags ) ;
static int ncp_hash_dentry(struct dentry const *dentry , struct qstr *this ) ;
static int ncp_compare_dentry(struct dentry const *parent , struct dentry const *dentry ,
                              unsigned int len , char const *str , struct qstr const *name ) ;
static int ncp_delete_dentry(struct dentry const *dentry ) ;
static void ncp_d_prune(struct dentry *dentry ) ;
struct dentry_operations const ncp_dentry_operations =
     {& ncp_lookup_validate, 0, & ncp_hash_dentry, & ncp_compare_dentry, & ncp_delete_dentry,
    0, & ncp_d_prune, 0, 0, 0, 0};
__inline static int ncp_preserve_entry_case(struct inode *i , __u32 nscreator )
{
  int ns ;
  struct ncp_server *tmp ;
  struct ncp_inode_info *tmp___0 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)i->i_sb);
  tmp___0 = NCP_FINFO((struct inode const *)i);
  ns = (int )tmp->name_space[(int )tmp___0->volNumber];
  }
  if (ns == 0 || (ns == 4 && nscreator == 0U)) {
    return (0);
  } else {
  }
  return (1);
}
}
__inline static int ncp_case_sensitive(struct inode const *i )
{
  struct ncp_server *tmp ;
  struct ncp_inode_info *tmp___0 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)i->i_sb);
  tmp___0 = NCP_FINFO(i);
  }
  return ((unsigned int )tmp->name_space[(int )tmp___0->volNumber] == 2U);
}
}
static int ncp_hash_dentry(struct dentry const *dentry , struct qstr *this )
{
  struct inode *inode ;
  struct inode *__var ;
  struct super_block *sb ;
  struct nls_table *t ;
  unsigned long hash ;
  int i ;
  struct ncp_server *tmp ;
  unsigned char tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  {
  __var = (struct inode *)0;
  inode = *((struct inode * const volatile *)(& dentry->d_inode));
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    return (0);
  } else {
  }
  {
  tmp___2 = ncp_case_sensitive((struct inode const *)inode);
  }
  if (tmp___2 == 0) {
    {
    sb = dentry->d_sb;
    tmp = NCP_SBP((struct super_block const *)sb);
    t = tmp->nls_io;
    hash = 0UL;
    i = 0;
    }
    goto ldv_30586;
    ldv_30585:
    {
    tmp___0 = nls_tolower(t, (int )*(this->name + (unsigned long )i));
    hash = partial_name_hash((unsigned long )tmp___0, hash);
    i = i + 1;
    }
    ldv_30586: ;
    if ((__u32 )i < this->__annonCompField25.__annonCompField24.len) {
      goto ldv_30585;
    } else {
    }
    {
    tmp___1 = end_name_hash(hash);
    this->__annonCompField25.__annonCompField24.hash = (__u32 )tmp___1;
    }
  } else {
  }
  return (0);
}
}
static int ncp_compare_dentry(struct dentry const *parent , struct dentry const *dentry ,
                              unsigned int len , char const *str , struct qstr const *name )
{
  struct inode *pinode ;
  struct inode *__var ;
  int tmp ;
  int tmp___0 ;
  struct ncp_server *tmp___1 ;
  int tmp___2 ;
  {
  if (len != (unsigned int )name->__annonCompField25.__annonCompField24.len) {
    return (1);
  } else {
  }
  __var = (struct inode *)0;
  pinode = *((struct inode * const volatile *)(& parent->d_inode));
  if ((unsigned long )pinode == (unsigned long )((struct inode *)0)) {
    return (1);
  } else {
  }
  {
  tmp___0 = ncp_case_sensitive((struct inode const *)pinode);
  }
  if (tmp___0 != 0) {
    {
    tmp = strncmp(str, (char const *)name->name, (__kernel_size_t )len);
    }
    return (tmp);
  } else {
  }
  {
  tmp___1 = NCP_SBP((struct super_block const *)pinode->i_sb);
  tmp___2 = nls_strnicmp(tmp___1->nls_io, (unsigned char const *)str, name->name,
                         (int )len);
  }
  return (tmp___2);
}
}
static int ncp_delete_dentry(struct dentry const *dentry )
{
  struct inode *inode ;
  int tmp ;
  {
  inode = dentry->d_inode;
  if ((unsigned long )inode != (unsigned long )((struct inode *)0)) {
    {
    tmp = is_bad_inode(inode);
    }
    if (tmp != 0) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
__inline static int ncp_single_volume(struct ncp_server *server )
{
  {
  return ((unsigned int )server->m.mounted_vol[0] != 0U);
}
}
__inline static int ncp_is_server_root(struct inode *inode )
{
  struct ncp_server *tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)inode->i_sb);
  tmp___0 = ncp_single_volume(tmp);
  }
  if (tmp___0 == 0) {
    {
    tmp___1 = is_root_inode(inode);
    }
    if ((int )tmp___1) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return (tmp___2);
}
}
static int ncp_force_unlink(struct inode *dir , struct dentry *dentry )
{
  int res ;
  int res2 ;
  struct nw_modify_dos_info info ;
  __le32 old_nwattr ;
  struct inode *inode ;
  struct ncp_inode_info *tmp ;
  struct ncp_server *tmp___0 ;
  struct ncp_server *tmp___1 ;
  struct ncp_server *tmp___2 ;
  {
  {
  res = 156;
  memset((void *)(& info), 0, 38UL);
  inode = dentry->d_inode;
  tmp = NCP_FINFO((struct inode const *)inode);
  old_nwattr = tmp->nwattr;
  info.attributes = old_nwattr & 4294574078U;
  tmp___0 = NCP_SBP((struct super_block const *)inode->i_sb);
  res2 = ncp_modify_file_or_subdir_dos_info_path(tmp___0, inode, (char const *)0,
                                                 2U, (struct nw_modify_dos_info const *)(& info));
  }
  if (res2 != 0) {
    goto leave_me;
  } else {
  }
  {
  tmp___1 = NCP_SBP((struct super_block const *)dir->i_sb);
  res = ncp_del_file_or_subdir2(tmp___1, dentry);
  }
  if (res != 0) {
    {
    info.attributes = old_nwattr;
    tmp___2 = NCP_SBP((struct super_block const *)inode->i_sb);
    res2 = ncp_modify_file_or_subdir_dos_info_path(tmp___2, inode, (char const *)0,
                                                   2U, (struct nw_modify_dos_info const *)(& info));
    }
    if (res2 != 0) {
      goto leave_me;
    } else {
    }
  } else {
  }
  leave_me: ;
  return (res);
}
}
static int ncp_force_rename(struct inode *old_dir , struct dentry *old_dentry , char *_old_name ,
                            struct inode *new_dir , struct dentry *new_dentry , char *_new_name )
{
  struct nw_modify_dos_info info ;
  int res ;
  int res2 ;
  struct inode *old_inode ;
  __le32 old_nwattr ;
  struct ncp_inode_info *tmp ;
  __le32 new_nwattr ;
  int old_nwattr_changed ;
  int new_nwattr_changed ;
  struct ncp_server *tmp___0 ;
  struct ncp_inode_info *tmp___1 ;
  struct ncp_server *tmp___2 ;
  struct ncp_server *tmp___3 ;
  struct ncp_server *tmp___4 ;
  struct ncp_server *tmp___5 ;
  {
  {
  res = 144;
  old_inode = old_dentry->d_inode;
  tmp = NCP_FINFO((struct inode const *)old_inode);
  old_nwattr = tmp->nwattr;
  new_nwattr = 0U;
  old_nwattr_changed = 0;
  new_nwattr_changed = 0;
  memset((void *)(& info), 0, 38UL);
  info.attributes = old_nwattr & 4294574078U;
  tmp___0 = NCP_SBP((struct super_block const *)old_inode->i_sb);
  res2 = ncp_modify_file_or_subdir_dos_info_path(tmp___0, old_inode, (char const *)0,
                                                 2U, (struct nw_modify_dos_info const *)(& info));
  }
  if (res2 == 0) {
    old_nwattr_changed = 1;
  } else {
  }
  if ((unsigned long )new_dentry != (unsigned long )((struct dentry *)0) && (unsigned long )new_dentry->d_inode != (unsigned long )((struct inode *)0)) {
    {
    tmp___1 = NCP_FINFO((struct inode const *)new_dentry->d_inode);
    new_nwattr = tmp___1->nwattr;
    info.attributes = new_nwattr & 4294574078U;
    tmp___2 = NCP_SBP((struct super_block const *)new_dir->i_sb);
    res2 = ncp_modify_file_or_subdir_dos_info_path(tmp___2, new_dir, (char const *)_new_name,
                                                   2U, (struct nw_modify_dos_info const *)(& info));
    }
    if (res2 == 0) {
      new_nwattr_changed = 1;
    } else {
    }
  } else {
  }
  if ((new_nwattr_changed | old_nwattr_changed) != 0) {
    {
    tmp___3 = NCP_SBP((struct super_block const *)old_dir->i_sb);
    res = ncp_ren_or_mov_file_or_subdir(tmp___3, old_dir, (char const *)_old_name,
                                        new_dir, (char const *)_new_name);
    }
  } else {
  }
  if (res != 0) {
    goto leave_me;
  } else {
  }
  new_nwattr_changed = old_nwattr_changed;
  new_nwattr = old_nwattr;
  old_nwattr_changed = 0;
  leave_me: ;
  if (old_nwattr_changed != 0) {
    {
    info.attributes = old_nwattr;
    tmp___4 = NCP_SBP((struct super_block const *)old_inode->i_sb);
    res2 = ncp_modify_file_or_subdir_dos_info_path(tmp___4, old_inode, (char const *)0,
                                                   2U, (struct nw_modify_dos_info const *)(& info));
    }
  } else {
  }
  if (new_nwattr_changed != 0) {
    {
    info.attributes = new_nwattr;
    tmp___5 = NCP_SBP((struct super_block const *)new_dir->i_sb);
    res2 = ncp_modify_file_or_subdir_dos_info_path(tmp___5, new_dir, (char const *)_new_name,
                                                   2U, (struct nw_modify_dos_info const *)(& info));
    }
  } else {
  }
  return (res);
}
}
static int ncp_lookup_validate(struct dentry *dentry , unsigned int flags )
{
  struct ncp_server *server ;
  struct dentry *parent ;
  struct inode *dir ;
  struct ncp_entry_info finfo ;
  int res ;
  int val ;
  int len ;
  __u8 __name[256U] ;
  int tmp ;
  struct ncp_server *tmp___1 ;
  struct ncp_inode_info *tmp___2 ;
  int tmp___3 ;
  struct inode *inode ;
  struct ncp_inode_info *tmp___6 ;
  {
  val = 0;
  if ((unsigned long )dentry == (unsigned long )(dentry->d_sb)->s_root) {
    return (1);
  } else {
  }
  if ((flags & 64U) != 0U) {
    return (-10);
  } else {
  }
  {
  parent = dget_parent(dentry);
  dir = parent->d_inode;
  }
  if ((unsigned long )dentry->d_inode == (unsigned long )((struct inode *)0)) {
    goto finished;
  } else {
  }
  {
  server = NCP_SBP((struct super_block const *)dir->i_sb);
  tmp = atomic_read((atomic_t const *)(& server->dentry_ttl));
  val = (unsigned long )jiffies - dentry->d_time < (unsigned long )tmp;
  }
  if (val != 0) {
    goto finished;
  } else {
  }
  {
  len = 256;
  tmp___3 = ncp_is_server_root(dir);
  }
  if (tmp___3 != 0) {
    {
    res = ncp__io2vol(server, (unsigned char *)(& __name), (unsigned int *)(& len),
                      dentry->d_name.name, dentry->d_name.__annonCompField25.__annonCompField24.len,
                      1);
    }
    if (res == 0) {
      {
      res = ncp_lookup_volume(server, (char const *)(& __name), & finfo.i);
      }
      if (res == 0) {
        {
        ncp_update_known_namespace(server, (int )((__u8 )finfo.i.volNumber), (int *)0);
        }
      } else {
      }
    } else {
    }
  } else {
    {
    tmp___1 = NCP_SBP((struct super_block const *)dir->i_sb);
    tmp___2 = NCP_FINFO((struct inode const *)dir);
    res = ncp__io2vol(server, (unsigned char *)(& __name), (unsigned int *)(& len),
                      dentry->d_name.name, dentry->d_name.__annonCompField25.__annonCompField24.len,
                      (unsigned int )tmp___1->name_space[(int )tmp___2->volNumber] == 0U);
    }
    if (res == 0) {
      {
      res = ncp_obtain_info(server, dir, (char const *)(& __name), & finfo.i);
      }
    } else {
    }
  }
  finfo.volume = finfo.i.volNumber;
  if (res == 0) {
    {
    inode = dentry->d_inode;
    ldv_mutex_lock_92(& inode->i_mutex);
    tmp___6 = NCP_FINFO((struct inode const *)inode);
    }
    if (finfo.i.dirEntNum == tmp___6->dirEntNum) {
      {
      ncp_new_dentry(dentry);
      val = 1;
      }
    } else {
    }
    {
    ncp_update_inode2(inode, & finfo);
    ldv_mutex_unlock_93(& inode->i_mutex);
    }
  } else {
  }
  finished:
  {
  dput(parent);
  }
  return (val);
}
}
static time_t ncp_obtain_mtime(struct dentry *dentry )
{
  struct inode *inode ;
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  struct nw_info_struct i ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  inode = dentry->d_inode;
  tmp = NCP_SBP((struct super_block const *)inode->i_sb);
  server = tmp;
  tmp___0 = ncp_conn_valid(server);
  }
  if (tmp___0 == 0) {
    return (0L);
  } else {
    {
    tmp___1 = ncp_is_server_root(inode);
    }
    if (tmp___1 != 0) {
      return (0L);
    } else {
    }
  }
  {
  tmp___2 = ncp_obtain_info(server, inode, (char const *)0, & i);
  }
  if (tmp___2 != 0) {
    return (0L);
  } else {
  }
  {
  tmp___3 = ncp_date_dos2unix((int )i.modifyTime, (int )i.modifyDate);
  }
  return ((time_t )tmp___3);
}
}
__inline static void ncp_invalidate_dircache_entries(struct dentry *parent )
{
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  struct dentry *dentry ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)(parent->d_inode)->i_sb);
  server = tmp;
  ldv_spin_lock_74(& parent->d_lockref.__annonCompField23.__annonCompField22.lock);
  __mptr = (struct list_head const *)parent->d_subdirs.next;
  dentry = (struct dentry *)__mptr + 0xfffffffffffffef0UL;
  }
  goto ldv_30670;
  ldv_30669:
  {
  dentry->d_fsdata = (void *)0;
  ncp_age_dentry(server, dentry);
  __mptr___0 = (struct list_head const *)dentry->d_child.next;
  dentry = (struct dentry *)__mptr___0 + 0xfffffffffffffef0UL;
  }
  ldv_30670: ;
  if ((unsigned long )(& dentry->d_child) != (unsigned long )(& parent->d_subdirs)) {
    goto ldv_30669;
  } else {
  }
  {
  ldv_spin_unlock_75(& parent->d_lockref.__annonCompField23.__annonCompField22.lock);
  }
  return;
}
}
static int ncp_readdir(struct file *file , struct dir_context *ctx )
{
  struct dentry *dentry ;
  struct inode *inode ;
  struct page *page ;
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  union ncp_dir_cache *cache ;
  struct ncp_cache_control ctl ;
  int result ;
  int mtime_valid ;
  time_t mtime ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  void *tmp___7 ;
  int tmp___8 ;
  struct dentry *dent ;
  bool over ;
  struct ncp_inode_info *tmp___9 ;
  int tmp___10 ;
  long tmp___11 ;
  bool tmp___12 ;
  int tmp___13 ;
  struct ncp_inode_info *tmp___14 ;
  int tmp___15 ;
  {
  {
  dentry = file->f_path.dentry;
  inode = dentry->d_inode;
  page = (struct page *)0;
  tmp = NCP_SBP((struct super_block const *)inode->i_sb);
  server = tmp;
  cache = (union ncp_dir_cache *)0;
  mtime_valid = 0;
  mtime = 0L;
  ctl.page = (struct page *)0;
  ctl.cache = (union ncp_dir_cache *)0;
  result = -5;
  tmp___1 = ncp_conn_valid(server);
  }
  if (tmp___1 == 0) {
    goto out;
  } else {
  }
  {
  result = 0;
  tmp___2 = dir_emit_dots(file, ctx);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    goto out;
  } else {
  }
  {
  page = grab_cache_page(& inode->i_data, 0UL);
  }
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    goto read_really;
  } else {
  }
  {
  tmp___4 = kmap(page);
  cache = (union ncp_dir_cache *)tmp___4;
  ctl.cache = cache;
  ctl.head = cache->head;
  tmp___5 = PageUptodate(page);
  }
  if (tmp___5 == 0 || ctl.head.eof == 0) {
    goto init_cache;
  } else {
  }
  if (ctx->pos == 2LL) {
    {
    tmp___6 = atomic_read((atomic_t const *)(& server->dentry_ttl));
    }
    if ((unsigned long )jiffies - ctl.head.time >= (unsigned long )tmp___6) {
      goto init_cache;
    } else {
    }
    {
    mtime = ncp_obtain_mtime(dentry);
    mtime_valid = 1;
    }
    if (mtime == 0L || mtime != ctl.head.mtime) {
      goto init_cache;
    } else {
    }
  } else {
  }
  if ((unsigned long long )ctx->pos > (unsigned long long )ctl.head.end) {
    goto finished;
  } else {
  }
  ctl.fpos = (unsigned long )(ctx->pos + 2LL);
  ctl.ofs = ctl.fpos / 512UL;
  ctl.idx = (int )ctl.fpos & 511;
  ldv_30697: ;
  if (ctl.ofs != 0UL) {
    {
    ctl.page = find_lock_page(& inode->i_data, ctl.ofs);
    }
    if ((unsigned long )ctl.page == (unsigned long )((struct page *)0)) {
      goto invalid_cache;
    } else {
    }
    {
    tmp___7 = kmap(ctl.page);
    ctl.cache = (union ncp_dir_cache *)tmp___7;
    tmp___8 = PageUptodate(ctl.page);
    }
    if (tmp___8 == 0) {
      goto invalid_cache;
    } else {
    }
  } else {
  }
  goto ldv_30695;
  ldv_30694:
  {
  ldv_spin_lock_74(& dentry->d_lockref.__annonCompField23.__annonCompField22.lock);
  tmp___9 = NCP_FINFO((struct inode const *)inode);
  }
  if ((tmp___9->flags & 2) == 0) {
    {
    ldv_spin_unlock_75(& dentry->d_lockref.__annonCompField23.__annonCompField22.lock);
    }
    goto invalid_cache;
  } else {
  }
  {
  dent = (ctl.cache)->dentry[ctl.idx];
  tmp___10 = lockref_get_not_dead(& dent->d_lockref);
  tmp___11 = ldv__builtin_expect(tmp___10 == 0, 0L);
  }
  if (tmp___11 != 0L) {
    {
    ldv_spin_unlock_75(& dentry->d_lockref.__annonCompField23.__annonCompField22.lock);
    }
    goto invalid_cache;
  } else {
  }
  {
  ldv_spin_unlock_75(& dentry->d_lockref.__annonCompField23.__annonCompField22.lock);
  }
  if ((unsigned long )dent->d_inode == (unsigned long )((struct inode *)0)) {
    {
    dput(dent);
    }
    goto invalid_cache;
  } else {
  }
  {
  tmp___12 = dir_emit(ctx, (char const *)dent->d_name.name, (int )dent->d_name.__annonCompField25.__annonCompField24.len,
                      (u64 )(dent->d_inode)->i_ino, 0U);
  }
  if ((int )tmp___12 != 0) {
    tmp___13 = 0;
  } else {
    tmp___13 = 1;
  }
  {
  over = (bool )tmp___13;
  dput(dent);
  }
  if ((int )over) {
    goto finished;
  } else {
  }
  ctx->pos = ctx->pos + 1LL;
  ctl.idx = ctl.idx + 1;
  if ((unsigned long long )ctx->pos > (unsigned long long )ctl.head.end) {
    goto finished;
  } else {
  }
  ldv_30695: ;
  if (ctl.idx <= 511) {
    goto ldv_30694;
  } else {
  }
  if ((unsigned long )ctl.page != (unsigned long )((struct page *)0)) {
    {
    kunmap(ctl.page);
    SetPageUptodate(ctl.page);
    unlock_page(ctl.page);
    put_page(ctl.page);
    ctl.page = (struct page *)0;
    }
  } else {
  }
  ctl.idx = 0;
  ctl.ofs = ctl.ofs + 1UL;
  goto ldv_30697;
  invalid_cache: ;
  if ((unsigned long )ctl.page != (unsigned long )((struct page *)0)) {
    {
    kunmap(ctl.page);
    unlock_page(ctl.page);
    put_page(ctl.page);
    ctl.page = (struct page *)0;
    }
  } else {
  }
  ctl.cache = cache;
  init_cache:
  {
  ncp_invalidate_dircache_entries(dentry);
  }
  if (mtime_valid == 0) {
    {
    mtime = ncp_obtain_mtime(dentry);
    mtime_valid = 1;
    }
  } else {
  }
  ctl.head.mtime = mtime;
  ctl.head.time = jiffies;
  ctl.head.eof = 0;
  ctl.fpos = 2UL;
  ctl.ofs = 0UL;
  ctl.idx = 4;
  ctl.filled = 0;
  ctl.valid = 1;
  read_really:
  {
  ldv_spin_lock_74(& dentry->d_lockref.__annonCompField23.__annonCompField22.lock);
  tmp___14 = NCP_FINFO((struct inode const *)inode);
  tmp___14->flags = tmp___14->flags | 2;
  ldv_spin_unlock_75(& dentry->d_lockref.__annonCompField23.__annonCompField22.lock);
  tmp___15 = ncp_is_server_root(inode);
  }
  if (tmp___15 != 0) {
    {
    ncp_read_volume_list(file, ctx, & ctl);
    }
  } else {
    {
    ncp_do_readdir(file, ctx, & ctl);
    }
  }
  ctl.head.end = ctl.fpos - 1UL;
  ctl.head.eof = ctl.valid;
  finished: ;
  if ((unsigned long )ctl.page != (unsigned long )((struct page *)0)) {
    {
    kunmap(ctl.page);
    SetPageUptodate(ctl.page);
    unlock_page(ctl.page);
    put_page(ctl.page);
    }
  } else {
  }
  if ((unsigned long )page != (unsigned long )((struct page *)0)) {
    {
    cache->head = ctl.head;
    kunmap(page);
    SetPageUptodate(page);
    unlock_page(page);
    put_page(page);
    }
  } else {
  }
  out: ;
  return (result);
}
}
static void ncp_d_prune(struct dentry *dentry )
{
  struct ncp_inode_info *tmp ;
  {
  if ((unsigned long )dentry->d_fsdata == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  {
  tmp = NCP_FINFO((struct inode const *)(dentry->d_parent)->d_inode);
  tmp->flags = tmp->flags & -3;
  }
  return;
}
}
static int ncp_fill_cache(struct file *file , struct dir_context *ctx , struct ncp_cache_control *ctrl ,
                          struct ncp_entry_info *entry , int inval_childs )
{
  struct dentry *newdent ;
  struct dentry *dentry ;
  struct inode *dir ;
  struct ncp_cache_control ctl ;
  struct qstr qname ;
  int valid ;
  int hashed ;
  ino_t ino ;
  __u8 __name[256U] ;
  int tmp ;
  struct ncp_server *tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  long tmp___3 ;
  struct inode *inode ;
  struct ncp_inode_info *tmp___4 ;
  struct inode *inode___0 ;
  void *tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  {
  {
  dentry = file->f_path.dentry;
  dir = dentry->d_inode;
  ctl = *ctrl;
  valid = 0;
  hashed = 0;
  ino = 0UL;
  qname.__annonCompField25.__annonCompField24.len = 256U;
  tmp = ncp_preserve_entry_case(dir, entry->i.NSCreator);
  tmp___0 = NCP_SBP((struct super_block const *)dir->i_sb);
  tmp___1 = ncp__vol2io(tmp___0, (unsigned char *)(& __name), & qname.__annonCompField25.__annonCompField24.len,
                        (unsigned char const *)(& entry->i.entryName), (unsigned int )entry->i.nameLen,
                        tmp == 0);
  }
  if (tmp___1 != 0) {
    return (1);
  } else {
  }
  {
  qname.name = (unsigned char const *)(& __name);
  newdent = d_hash_and_lookup(dentry, & qname);
  tmp___2 = IS_ERR((void const *)newdent);
  tmp___3 = ldv__builtin_expect((long )tmp___2, 0L);
  }
  if (tmp___3 != 0L) {
    goto end_advance;
  } else {
  }
  if ((unsigned long )newdent == (unsigned long )((struct dentry *)0)) {
    {
    newdent = d_alloc(dentry, (struct qstr const *)(& qname));
    }
    if ((unsigned long )newdent == (unsigned long )((struct dentry *)0)) {
      goto end_advance;
    } else {
    }
  } else {
    hashed = 1;
    if (inval_childs != 0) {
      {
      shrink_dcache_parent(newdent);
      }
    } else {
    }
    {
    dentry_update_name_case(newdent, & qname);
    }
  }
  if ((unsigned long )newdent->d_inode == (unsigned long )((struct inode *)0)) {
    {
    entry->opened = 0;
    entry->ino = iunique(dir->i_sb, 2UL);
    inode = ncp_iget(dir->i_sb, entry);
    }
    if ((unsigned long )inode != (unsigned long )((struct inode *)0)) {
      {
      d_instantiate(newdent, inode);
      }
      if (hashed == 0) {
        {
        d_rehash(newdent);
        }
      } else {
      }
    } else {
      {
      ldv_spin_lock_74(& dentry->d_lockref.__annonCompField23.__annonCompField22.lock);
      tmp___4 = NCP_FINFO((struct inode const *)inode);
      tmp___4->flags = tmp___4->flags & -3;
      ldv_spin_unlock_75(& dentry->d_lockref.__annonCompField23.__annonCompField22.lock);
      }
    }
  } else {
    {
    inode___0 = newdent->d_inode;
    ldv_mutex_lock_nested_104(& inode___0->i_mutex, 2U);
    ncp_update_inode2(inode___0, entry);
    ldv_mutex_unlock_105(& inode___0->i_mutex);
    }
  }
  if (ctl.idx > 511) {
    if ((unsigned long )ctl.page != (unsigned long )((struct page *)0)) {
      {
      kunmap(ctl.page);
      SetPageUptodate(ctl.page);
      unlock_page(ctl.page);
      put_page(ctl.page);
      }
    } else {
    }
    {
    ctl.cache = (union ncp_dir_cache *)0;
    ctl.idx = ctl.idx + -512;
    ctl.ofs = ctl.ofs + 1UL;
    ctl.page = grab_cache_page(& dir->i_data, ctl.ofs);
    }
    if ((unsigned long )ctl.page != (unsigned long )((struct page *)0)) {
      {
      tmp___5 = kmap(ctl.page);
      ctl.cache = (union ncp_dir_cache *)tmp___5;
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )ctl.cache != (unsigned long )((union ncp_dir_cache *)0)) {
    if ((unsigned long )newdent->d_inode != (unsigned long )((struct inode *)0)) {
      {
      newdent->d_fsdata = (void *)newdent;
      (ctl.cache)->dentry[ctl.idx] = newdent;
      ino = (newdent->d_inode)->i_ino;
      ncp_new_dentry(newdent);
      }
    } else {
    }
    valid = 1;
  } else {
  }
  {
  dput(newdent);
  }
  end_advance: ;
  if (valid == 0) {
    ctl.valid = 0;
  } else {
  }
  if (ctl.filled == 0 && (unsigned long long )ctl.fpos == (unsigned long long )ctx->pos) {
    if (ino == 0UL) {
      {
      ino = iunique(dir->i_sb, 2UL);
      }
    } else {
    }
    {
    tmp___6 = dir_emit(ctx, (char const *)qname.name, (int )qname.__annonCompField25.__annonCompField24.len,
                       (u64 )ino, 0U);
    }
    if (tmp___6) {
      tmp___7 = 0;
    } else {
      tmp___7 = 1;
    }
    ctl.filled = tmp___7;
    if (ctl.filled == 0) {
      ctx->pos = ctx->pos + 1LL;
    } else {
    }
  } else {
  }
  ctl.fpos = ctl.fpos + 1UL;
  ctl.idx = ctl.idx + 1;
  *ctrl = ctl;
  return (ctl.valid != 0 || ctl.filled == 0);
}
}
static void ncp_read_volume_list(struct file *file , struct dir_context *ctx , struct ncp_cache_control *ctl )
{
  struct inode *inode ;
  struct inode *tmp ;
  struct ncp_server *server ;
  struct ncp_server *tmp___0 ;
  struct ncp_volume_info info ;
  struct ncp_entry_info entry ;
  int i ;
  int inval_dentry ;
  int tmp___2 ;
  size_t tmp___3 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  {
  tmp = file_inode((struct file const *)file);
  inode = tmp;
  tmp___0 = NCP_SBP((struct super_block const *)inode->i_sb);
  server = tmp___0;
  i = 0;
  }
  goto ldv_30737;
  ldv_30736:
  {
  tmp___2 = ncp_get_volume_info_with_number(server, i, & info);
  }
  if (tmp___2 != 0) {
    return;
  } else {
  }
  {
  tmp___3 = strlen((char const *)(& info.volume_name));
  }
  if (tmp___3 == 0UL) {
    goto ldv_30733;
  } else {
  }
  {
  tmp___6 = ncp_lookup_volume(server, (char const *)(& info.volume_name), & entry.i);
  }
  if (tmp___6 != 0) {
    goto ldv_30733;
  } else {
  }
  {
  inval_dentry = ncp_update_known_namespace(server, (int )((__u8 )entry.i.volNumber),
                                            (int *)0);
  entry.volume = entry.i.volNumber;
  tmp___7 = ncp_fill_cache(file, ctx, ctl, & entry, inval_dentry);
  }
  if (tmp___7 == 0) {
    return;
  } else {
  }
  ldv_30733:
  i = i + 1;
  ldv_30737: ;
  if (i <= 255) {
    goto ldv_30736;
  } else {
  }
  return;
}
}
static void ncp_do_readdir(struct file *file , struct dir_context *ctx , struct ncp_cache_control *ctl )
{
  struct inode *dir ;
  struct inode *tmp ;
  struct ncp_server *server ;
  struct ncp_server *tmp___0 ;
  struct nw_search_sequence seq ;
  struct ncp_entry_info entry ;
  int err ;
  void *buf ;
  int more ;
  size_t bufsize ;
  int cnt ;
  char *rpl ;
  size_t rpls ;
  size_t onerpl ;
  int tmp___6 ;
  int tmp___7 ;
  {
  {
  tmp = file_inode((struct file const *)file);
  dir = tmp;
  tmp___0 = NCP_SBP((struct super_block const *)dir->i_sb);
  server = tmp___0;
  err = ncp_initialize_search(server, dir, & seq);
  }
  if (err != 0) {
    return;
  } else {
  }
  {
  bufsize = 131072UL;
  buf = ldv_vmalloc_106(bufsize);
  }
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  ldv_30764:
  {
  err = ncp_search_for_fileset(server, & seq, & more, & cnt, (char *)buf, bufsize,
                               & rpl, & rpls);
  }
  if (err != 0) {
    goto ldv_30759;
  } else {
  }
  if (cnt == 0) {
    goto ldv_30759;
  } else {
  }
  goto ldv_30763;
  ldv_30762: ;
  if (rpls <= 76UL) {
    goto ldv_30761;
  } else {
  }
  {
  ncp_extract_file_info((void const *)rpl, & entry.i);
  onerpl = (unsigned long )entry.i.nameLen + 77UL;
  }
  if (rpls < onerpl) {
    goto ldv_30761;
  } else {
  }
  {
  ncp_obtain_nfs_info(server, & entry.i);
  rpl = rpl + onerpl;
  rpls = rpls - onerpl;
  entry.volume = entry.i.volNumber;
  tmp___6 = ncp_fill_cache(file, ctx, ctl, & entry, 0);
  }
  if (tmp___6 == 0) {
    goto ldv_30761;
  } else {
  }
  ldv_30763:
  tmp___7 = cnt;
  cnt = cnt - 1;
  if (tmp___7 != 0) {
    goto ldv_30762;
  } else {
  }
  ldv_30761: ;
  if (more != 0) {
    goto ldv_30764;
  } else {
  }
  ldv_30759:
  {
  vfree((void const *)buf);
  }
  return;
}
}
int ncp_conn_logged_in(struct super_block *sb )
{
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  int result ;
  int len ;
  struct dentry *dent ;
  __u32 volNumber ;
  __le32 dirEntNum ;
  __le32 DosDirNum ;
  __u8 __name[256U] ;
  size_t tmp___0 ;
  int tmp___2 ;
  struct inode *ino ;
  struct ncp_inode_info *tmp___3 ;
  struct ncp_inode_info *tmp___4 ;
  struct ncp_inode_info *tmp___5 ;
  int tmp___8 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)sb);
  server = tmp;
  tmp___8 = ncp_single_volume(server);
  }
  if (tmp___8 != 0) {
    {
    len = 256;
    tmp___0 = strlen((char const *)(& server->m.mounted_vol));
    result = ncp__io2vol(server, (unsigned char *)(& __name), (unsigned int *)(& len),
                         (unsigned char const *)(& server->m.mounted_vol), (unsigned int )tmp___0,
                         1);
    }
    if (result != 0) {
      goto out;
    } else {
    }
    {
    result = -2;
    tmp___2 = ncp_get_volume_root(server, (char const *)(& __name), & volNumber,
                                  & dirEntNum, & DosDirNum);
    }
    if (tmp___2 != 0) {
      goto out;
    } else {
    }
    dent = sb->s_root;
    if ((unsigned long )dent != (unsigned long )((struct dentry *)0)) {
      ino = dent->d_inode;
      if ((unsigned long )ino != (unsigned long )((struct inode *)0)) {
        {
        ncp_update_known_namespace(server, (int )((__u8 )volNumber), (int *)0);
        tmp___3 = NCP_FINFO((struct inode const *)ino);
        tmp___3->volNumber = (__u8 )volNumber;
        tmp___4 = NCP_FINFO((struct inode const *)ino);
        tmp___4->dirEntNum = dirEntNum;
        tmp___5 = NCP_FINFO((struct inode const *)ino);
        tmp___5->DosDirNum = DosDirNum;
        result = 0;
        }
      } else {
      }
    } else {
    }
  } else {
    result = 0;
  }
  out: ;
  return (result);
}
}
static struct dentry *ncp_lookup(struct inode *dir , struct dentry *dentry , unsigned int flags )
{
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  struct inode *inode ;
  struct ncp_entry_info finfo ;
  int error ;
  int res ;
  int len ;
  __u8 __name[256U] ;
  int tmp___0 ;
  struct ncp_server *tmp___2 ;
  struct ncp_inode_info *tmp___3 ;
  int tmp___4 ;
  void *tmp___7 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)dir->i_sb);
  server = tmp;
  inode = (struct inode *)0;
  error = -5;
  tmp___0 = ncp_conn_valid(server);
  }
  if (tmp___0 == 0) {
    goto finished;
  } else {
  }
  {
  len = 256;
  tmp___4 = ncp_is_server_root(dir);
  }
  if (tmp___4 != 0) {
    {
    res = ncp__io2vol(server, (unsigned char *)(& __name), (unsigned int *)(& len),
                      dentry->d_name.name, dentry->d_name.__annonCompField25.__annonCompField24.len,
                      1);
    }
    if (res == 0) {
      {
      res = ncp_lookup_volume(server, (char const *)(& __name), & finfo.i);
      }
    } else {
    }
    if (res == 0) {
      {
      ncp_update_known_namespace(server, (int )((__u8 )finfo.i.volNumber), (int *)0);
      }
    } else {
    }
  } else {
    {
    tmp___2 = NCP_SBP((struct super_block const *)dir->i_sb);
    tmp___3 = NCP_FINFO((struct inode const *)dir);
    res = ncp__io2vol(server, (unsigned char *)(& __name), (unsigned int *)(& len),
                      dentry->d_name.name, dentry->d_name.__annonCompField25.__annonCompField24.len,
                      (unsigned int )tmp___2->name_space[(int )tmp___3->volNumber] == 0U);
    }
    if (res == 0) {
      {
      res = ncp_obtain_info(server, dir, (char const *)(& __name), & finfo.i);
      }
    } else {
    }
  }
  if (res != 0) {
    goto add_entry;
  } else {
  }
  {
  finfo.opened = 0;
  finfo.ino = iunique(dir->i_sb, 2UL);
  finfo.volume = finfo.i.volNumber;
  error = -13;
  inode = ncp_iget(dir->i_sb, & finfo);
  }
  if ((unsigned long )inode != (unsigned long )((struct inode *)0)) {
    {
    ncp_new_dentry(dentry);
    }
    add_entry:
    {
    d_add(dentry, inode);
    error = 0;
    }
  } else {
  }
  finished:
  {
  tmp___7 = ERR_PTR((long )error);
  }
  return ((struct dentry *)tmp___7);
}
}
static int ncp_instantiate(struct inode *dir , struct dentry *dentry , struct ncp_entry_info *finfo )
{
  struct inode *inode ;
  int error ;
  struct ncp_server *tmp___0 ;
  {
  {
  error = -22;
  finfo->ino = iunique(dir->i_sb, 2UL);
  inode = ncp_iget(dir->i_sb, finfo);
  }
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    goto out_close;
  } else {
  }
  {
  d_instantiate(dentry, inode);
  error = 0;
  }
  out: ;
  return (error);
  out_close:
  {
  tmp___0 = NCP_SBP((struct super_block const *)dir->i_sb);
  ncp_close_file(tmp___0, (char const *)(& finfo->file_handle));
  }
  goto out;
}
}
int ncp_create_new(struct inode *dir , struct dentry *dentry , umode_t mode , dev_t rdev ,
                   __le32 attributes )
{
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  struct ncp_entry_info finfo ;
  int error ;
  int result ;
  int len ;
  int opmode ;
  __u8 __name[256U] ;
  struct ncp_server *tmp___1 ;
  struct ncp_inode_info *tmp___2 ;
  __u32 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)dir->i_sb);
  server = tmp;
  ncp_age_dentry(server, dentry);
  len = 256;
  tmp___1 = NCP_SBP((struct super_block const *)dir->i_sb);
  tmp___2 = NCP_FINFO((struct inode const *)dir);
  error = ncp__io2vol(server, (unsigned char *)(& __name), (unsigned int *)(& len),
                      dentry->d_name.name, dentry->d_name.__annonCompField25.__annonCompField24.len,
                      (unsigned int )tmp___1->name_space[(int )tmp___2->volNumber] == 0U);
  }
  if (error != 0) {
    goto out;
  } else {
  }
  error = -13;
  if ((((int )mode & 61440) == 32768 && (server->m.flags & 32UL) != 0UL) && ((int )mode & 73) != 0) {
    attributes = attributes | 132U;
  } else {
  }
  {
  result = ncp_open_create_file_or_subdir(server, dir, (char const *)(& __name),
                                          11, attributes, 3, & finfo);
  opmode = 2;
  }
  if (result != 0) {
    {
    result = ncp_open_create_file_or_subdir(server, dir, (char const *)(& __name),
                                            11, attributes, 2, & finfo);
    }
    if (result != 0) {
      if (result == 135) {
        error = -36;
      } else
      if (result < 0) {
        error = result;
      } else {
      }
      goto out;
    } else {
    }
    opmode = 1;
  } else {
  }
  {
  finfo.access = opmode;
  tmp___6 = ncp_is_nfs_extras(server, finfo.volume);
  }
  if (tmp___6 != 0) {
    {
    finfo.i.nfs.mode = (__u32 )mode;
    finfo.i.nfs.rdev = new_encode_dev(rdev);
    tmp___4 = new_encode_dev(rdev);
    tmp___5 = ncp_modify_nfs_info(server, (int )((__u8 )finfo.volume), finfo.i.dirEntNum,
                                  (__u32 )mode, tmp___4);
    }
    if (tmp___5 != 0) {
      goto out;
    } else {
    }
  } else {
  }
  {
  error = ncp_instantiate(dir, dentry, & finfo);
  }
  out: ;
  return (error);
}
}
static int ncp_create(struct inode *dir , struct dentry *dentry , umode_t mode , bool excl )
{
  int tmp ;
  {
  {
  tmp = ncp_create_new(dir, dentry, (int )mode, 0U, 0U);
  }
  return (tmp);
}
}
static int ncp_mkdir(struct inode *dir , struct dentry *dentry , umode_t mode )
{
  struct ncp_entry_info finfo ;
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  int error ;
  int len ;
  __u8 __name[256U] ;
  struct ncp_server *tmp___1 ;
  struct ncp_inode_info *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)dir->i_sb);
  server = tmp;
  ncp_age_dentry(server, dentry);
  len = 256;
  tmp___1 = NCP_SBP((struct super_block const *)dir->i_sb);
  tmp___2 = NCP_FINFO((struct inode const *)dir);
  error = ncp__io2vol(server, (unsigned char *)(& __name), (unsigned int *)(& len),
                      dentry->d_name.name, dentry->d_name.__annonCompField25.__annonCompField24.len,
                      (unsigned int )tmp___1->name_space[(int )tmp___2->volNumber] == 0U);
  }
  if (error != 0) {
    goto out;
  } else {
  }
  {
  error = ncp_open_create_file_or_subdir(server, dir, (char const *)(& __name),
                                         8, 16U, 65535, & finfo);
  }
  if (error == 0) {
    {
    tmp___4 = ncp_is_nfs_extras(server, finfo.volume);
    }
    if (tmp___4 != 0) {
      {
      mode = (umode_t )((unsigned int )mode | 16384U);
      finfo.i.nfs.mode = (__u32 )mode;
      tmp___3 = ncp_modify_nfs_info(server, (int )((__u8 )finfo.volume), finfo.i.dirEntNum,
                                    (__u32 )mode, 0U);
      }
      if (tmp___3 != 0) {
        goto out;
      } else {
      }
    } else {
    }
    {
    error = ncp_instantiate(dir, dentry, & finfo);
    }
  } else
  if (error > 0) {
    error = -13;
  } else {
  }
  out: ;
  return (error);
}
}
static int ncp_rmdir(struct inode *dir , struct dentry *dentry )
{
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  int error ;
  int result ;
  int len ;
  __u8 __name[256U] ;
  struct ncp_server *tmp___1 ;
  struct ncp_inode_info *tmp___2 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)dir->i_sb);
  server = tmp;
  len = 256;
  tmp___1 = NCP_SBP((struct super_block const *)dir->i_sb);
  tmp___2 = NCP_FINFO((struct inode const *)dir);
  error = ncp__io2vol(server, (unsigned char *)(& __name), (unsigned int *)(& len),
                      dentry->d_name.name, dentry->d_name.__annonCompField25.__annonCompField24.len,
                      (unsigned int )tmp___1->name_space[(int )tmp___2->volNumber] == 0U);
  }
  if (error != 0) {
    goto out;
  } else {
  }
  {
  result = ncp_del_file_or_subdir(server, dir, (char const *)(& __name));
  }
  {
  if (result == 0) {
    goto case_0;
  } else {
  }
  if (result == 133) {
    goto case_133;
  } else {
  }
  if (result == 138) {
    goto case_138;
  } else {
  }
  if (result == 143) {
    goto case_143;
  } else {
  }
  if (result == 144) {
    goto case_144;
  } else {
  }
  if (result == 159) {
    goto case_159;
  } else {
  }
  if (result == 160) {
    goto case_160;
  } else {
  }
  if (result == 255) {
    goto case_255;
  } else {
  }
  goto switch_default;
  case_0:
  error = 0;
  goto ldv_30861;
  case_133: ;
  case_138:
  error = -13;
  goto ldv_30861;
  case_143: ;
  case_144:
  error = -1;
  goto ldv_30861;
  case_159:
  error = -16;
  goto ldv_30861;
  case_160:
  error = -39;
  goto ldv_30861;
  case_255:
  error = -2;
  goto ldv_30861;
  switch_default:
  error = result < 0 ? result : -13;
  goto ldv_30861;
  switch_break: ;
  }
  ldv_30861: ;
  out: ;
  return (error);
}
}
static int ncp_unlink(struct inode *dir , struct dentry *dentry )
{
  struct inode *inode ;
  struct ncp_server *server ;
  int error ;
  {
  {
  inode = dentry->d_inode;
  server = NCP_SBP((struct super_block const *)dir->i_sb);
  }
  if ((unsigned long )inode != (unsigned long )((struct inode *)0)) {
    {
    ncp_make_closed(inode);
    }
  } else {
  }
  {
  error = ncp_del_file_or_subdir2(server, dentry);
  }
  if ((error == 156 || error == 144) && (server->m.flags & 4UL) != 0UL) {
    {
    error = ncp_force_unlink(dir, dentry);
    }
  } else {
  }
  {
  if (error == 0) {
    goto case_0;
  } else {
  }
  if (error == 133) {
    goto case_133;
  } else {
  }
  if (error == 138) {
    goto case_138;
  } else {
  }
  if (error == 141) {
    goto case_141;
  } else {
  }
  if (error == 142) {
    goto case_142;
  } else {
  }
  if (error == 143) {
    goto case_143;
  } else {
  }
  if (error == 144) {
    goto case_144;
  } else {
  }
  if (error == 156) {
    goto case_156;
  } else {
  }
  if (error == 255) {
    goto case_255;
  } else {
  }
  goto switch_default;
  case_0: ;
  goto ldv_30882;
  case_133: ;
  case_138:
  error = -13;
  goto ldv_30882;
  case_141: ;
  case_142:
  error = -16;
  goto ldv_30882;
  case_143: ;
  case_144: ;
  case_156:
  error = -1;
  goto ldv_30882;
  case_255:
  error = -2;
  goto ldv_30882;
  switch_default:
  error = error < 0 ? error : -13;
  goto ldv_30882;
  switch_break: ;
  }
  ldv_30882: ;
  return (error);
}
}
static int ncp_rename(struct inode *old_dir , struct dentry *old_dentry , struct inode *new_dir ,
                      struct dentry *new_dentry )
{
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  int error ;
  int old_len ;
  int new_len ;
  __u8 __old_name[256U] ;
  __u8 __new_name[256U] ;
  struct ncp_server *tmp___1 ;
  struct ncp_inode_info *tmp___2 ;
  struct ncp_server *tmp___3 ;
  struct ncp_inode_info *tmp___4 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)old_dir->i_sb);
  server = tmp;
  ncp_age_dentry(server, old_dentry);
  ncp_age_dentry(server, new_dentry);
  old_len = 256;
  tmp___1 = NCP_SBP((struct super_block const *)old_dir->i_sb);
  tmp___2 = NCP_FINFO((struct inode const *)old_dir);
  error = ncp__io2vol(server, (unsigned char *)(& __old_name), (unsigned int *)(& old_len),
                      old_dentry->d_name.name, old_dentry->d_name.__annonCompField25.__annonCompField24.len,
                      (unsigned int )tmp___1->name_space[(int )tmp___2->volNumber] == 0U);
  }
  if (error != 0) {
    goto out;
  } else {
  }
  {
  new_len = 256;
  tmp___3 = NCP_SBP((struct super_block const *)new_dir->i_sb);
  tmp___4 = NCP_FINFO((struct inode const *)new_dir);
  error = ncp__io2vol(server, (unsigned char *)(& __new_name), (unsigned int *)(& new_len),
                      new_dentry->d_name.name, new_dentry->d_name.__annonCompField25.__annonCompField24.len,
                      (unsigned int )tmp___3->name_space[(int )tmp___4->volNumber] == 0U);
  }
  if (error != 0) {
    goto out;
  } else {
  }
  {
  error = ncp_ren_or_mov_file_or_subdir(server, old_dir, (char const *)(& __old_name),
                                        new_dir, (char const *)(& __new_name));
  }
  if (((error == 144 || error == 139) || error == -13) && (server->m.flags & 4UL) != 0UL) {
    {
    error = ncp_force_rename(old_dir, old_dentry, (char *)(& __old_name), new_dir,
                             new_dentry, (char *)(& __new_name));
    }
  } else {
  }
  {
  if (error == 0) {
    goto case_0;
  } else {
  }
  if (error == 158) {
    goto case_158;
  } else {
  }
  if (error == 255) {
    goto case_255;
  } else {
  }
  goto switch_default;
  case_0: ;
  goto ldv_30909;
  case_158:
  error = -36;
  goto ldv_30909;
  case_255:
  error = -2;
  goto ldv_30909;
  switch_default:
  error = error < 0 ? error : -13;
  goto ldv_30909;
  switch_break: ;
  }
  ldv_30909: ;
  out: ;
  return (error);
}
}
static int ncp_mknod(struct inode *dir , struct dentry *dentry , umode_t mode , dev_t rdev )
{
  int tmp ;
  int tmp___1 ;
  struct ncp_inode_info *tmp___2 ;
  struct ncp_server *tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = new_valid_dev(rdev);
  }
  if (tmp == 0) {
    return (-22);
  } else {
  }
  {
  tmp___2 = NCP_FINFO((struct inode const *)dir);
  tmp___3 = NCP_SBP((struct super_block const *)dir->i_sb);
  tmp___4 = ncp_is_nfs_extras(tmp___3, (unsigned int )tmp___2->volNumber);
  }
  if (tmp___4 != 0) {
    {
    tmp___1 = ncp_create_new(dir, dentry, (int )mode, rdev, 0U);
    }
    return (tmp___1);
  } else {
  }
  return (-1);
}
}
static int day_n[16U] =
  { 0, 31, 59, 90,
        120, 151, 181, 212,
        243, 273, 304, 334,
        0, 0, 0, 0};
static int utc2local(int time )
{
  {
  return (time + sys_tz.tz_minuteswest * -60);
}
}
static int local2utc(int time )
{
  {
  return (time + sys_tz.tz_minuteswest * 60);
}
}
int ncp_date_dos2unix(__le16 t , __le16 d )
{
  unsigned short time ;
  unsigned short date ;
  int month ;
  int year ;
  int secs ;
  int tmp ;
  {
  {
  time = t;
  date = d;
  month = (((int )date >> 5) + -1) & 15;
  year = (int )date >> 9;
  secs = (((((((((int )date & 31) + -1) + day_n[month]) + year / 4) + year * 365) - ((year & 3) == 0 && month <= 1)) * 43200 + (((int )time & 31) + (((int )time >> 11) * 1800 + (((int )time >> 5) & 63) * 30))) + 157809600) * 2;
  tmp = local2utc(secs);
  }
  return (tmp);
}
}
void ncp_date_unix2dos(int unix_date , __le16 *time , __le16 *date )
{
  int day ;
  int year ;
  int nl_day ;
  int month ;
  {
  {
  unix_date = utc2local(unix_date);
  *time = ((int )((unsigned short )((unix_date % 60) / 2)) + ((int )((unsigned short )((unix_date / 60) % 60)) << 5U)) + ((int )((unsigned short )((unix_date / 3600) % 24)) << 11U);
  day = unix_date / 86400 + -3652;
  year = day / 365;
  }
  if ((year + 3) / 4 + year * 365 > day) {
    year = year - 1;
  } else {
  }
  day = day + (year * -365 - (year + 3) / 4);
  if (day == 59 && (year & 3) == 0) {
    nl_day = day;
    month = 2;
  } else {
    nl_day = (year & 3) != 0 || day <= 59 ? day : day + -1;
    month = 1;
    goto ldv_30948;
    ldv_30947: ;
    if (day_n[month] > nl_day) {
      goto ldv_30946;
    } else {
    }
    month = month + 1;
    ldv_30948: ;
    if (month <= 11) {
      goto ldv_30947;
    } else {
    }
    ldv_30946: ;
  }
  *date = (unsigned int )((((int )((unsigned short )nl_day) - (int )((unsigned short )day_n[month + -1])) + ((int )((unsigned short )month) << 5U)) + ((int )((unsigned short )year) << 9U)) + 1U;
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_10(int (*arg0)(struct dentry * , struct qstr * ) ,
                                                   struct dentry *arg1 , struct qstr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_11(void (*arg0)(struct dentry * ) ,
                                                   struct dentry *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_12(int (*arg0)(struct dentry * , unsigned int ) ,
                                                   struct dentry *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct dentry * , struct dentry * ,
                                                              unsigned int , char * ,
                                                              struct qstr * ) , struct dentry *arg1 ,
                                                  struct dentry *arg2 , unsigned int arg3 ,
                                                  char *arg4 , struct qstr *arg5 ) ;
void ldv_dummy_resourceless_instance_callback_3_9(int (*arg0)(struct dentry * ) ,
                                                  struct dentry *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_10(struct dentry *(*arg0)(struct inode * ,
                                                                          struct dentry * ,
                                                                          unsigned int ) ,
                                                   struct inode *arg1 , struct dentry *arg2 ,
                                                   unsigned int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_13(int (*arg0)(struct inode * , struct dentry * ,
                                                               unsigned short ) ,
                                                   struct inode *arg1 , struct dentry *arg2 ,
                                                   unsigned short arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_16(int (*arg0)(struct inode * , struct dentry * ,
                                                               unsigned short , unsigned int ) ,
                                                   struct inode *arg1 , struct dentry *arg2 ,
                                                   unsigned short arg3 , unsigned int arg4 ) ;
void ldv_dummy_resourceless_instance_callback_4_23(int (*arg0)(struct inode * , struct dentry * ,
                                                               struct inode * , struct dentry * ) ,
                                                   struct inode *arg1 , struct dentry *arg2 ,
                                                   struct inode *arg3 , struct dentry *arg4 ) ;
void ldv_dummy_resourceless_instance_callback_4_26(int (*arg0)(struct inode * , struct dentry * ) ,
                                                   struct inode *arg1 , struct dentry *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_28(int (*arg0)(struct inode * , struct dentry * ,
                                                               char * ) , struct inode *arg1 ,
                                                   struct dentry *arg2 , char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct inode * , struct dentry * ,
                                                              unsigned short , _Bool ) ,
                                                  struct inode *arg1 , struct dentry *arg2 ,
                                                  unsigned short arg3 , _Bool arg4 ) ;
void ldv_dummy_resourceless_instance_callback_4_31(int (*arg0)(struct inode * , struct dentry * ) ,
                                                   struct inode *arg1 , struct dentry *arg2 ) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_22(int (*arg0)(struct file * , long long ,
                                                            long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                long long arg3 , int arg4 ) ;
void ldv_file_operations_instance_callback_0_25(int (*arg0)(struct file * , struct dir_context * ) ,
                                                struct file *arg1 , struct dir_context *arg2 ) ;
void ldv_file_operations_instance_callback_0_26(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_0_29(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_0_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_0_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
struct ldv_thread ldv_thread_0 ;
void ldv_dummy_resourceless_instance_callback_3_10(int (*arg0)(struct dentry * , struct qstr * ) ,
                                                   struct dentry *arg1 , struct qstr *arg2 )
{
  {
  {
  ncp_hash_dentry((struct dentry const *)arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_11(void (*arg0)(struct dentry * ) ,
                                                   struct dentry *arg1 )
{
  {
  {
  ncp_d_prune(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_12(int (*arg0)(struct dentry * , unsigned int ) ,
                                                   struct dentry *arg1 , unsigned int arg2 )
{
  {
  {
  ncp_lookup_validate(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct dentry * , struct dentry * ,
                                                              unsigned int , char * ,
                                                              struct qstr * ) , struct dentry *arg1 ,
                                                  struct dentry *arg2 , unsigned int arg3 ,
                                                  char *arg4 , struct qstr *arg5 )
{
  {
  {
  ncp_compare_dentry((struct dentry const *)arg1, (struct dentry const *)arg2,
                     arg3, (char const *)arg4, (struct qstr const *)arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_9(int (*arg0)(struct dentry * ) ,
                                                  struct dentry *arg1 )
{
  {
  {
  ncp_delete_dentry((struct dentry const *)arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_10(struct dentry *(*arg0)(struct inode * ,
                                                                          struct dentry * ,
                                                                          unsigned int ) ,
                                                   struct inode *arg1 , struct dentry *arg2 ,
                                                   unsigned int arg3 )
{
  {
  {
  ncp_lookup(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_13(int (*arg0)(struct inode * , struct dentry * ,
                                                               unsigned short ) ,
                                                   struct inode *arg1 , struct dentry *arg2 ,
                                                   unsigned short arg3 )
{
  {
  {
  ncp_mkdir(arg1, arg2, (int )arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_16(int (*arg0)(struct inode * , struct dentry * ,
                                                               unsigned short , unsigned int ) ,
                                                   struct inode *arg1 , struct dentry *arg2 ,
                                                   unsigned short arg3 , unsigned int arg4 )
{
  {
  {
  ncp_mknod(arg1, arg2, (int )arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_23(int (*arg0)(struct inode * , struct dentry * ,
                                                               struct inode * , struct dentry * ) ,
                                                   struct inode *arg1 , struct dentry *arg2 ,
                                                   struct inode *arg3 , struct dentry *arg4 )
{
  {
  {
  ncp_rename(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_26(int (*arg0)(struct inode * , struct dentry * ) ,
                                                   struct inode *arg1 , struct dentry *arg2 )
{
  {
  {
  ncp_rmdir(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_28(int (*arg0)(struct inode * , struct dentry * ,
                                                               char * ) , struct inode *arg1 ,
                                                   struct dentry *arg2 , char *arg3 )
{
  {
  {
  ncp_symlink(arg1, arg2, (char const *)arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct inode * , struct dentry * ,
                                                              unsigned short , _Bool ) ,
                                                  struct inode *arg1 , struct dentry *arg2 ,
                                                  unsigned short arg3 , _Bool arg4 )
{
  {
  {
  ncp_create(arg1, arg2, (int )arg3, (int )arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_31(int (*arg0)(struct inode * , struct dentry * ) ,
                                                   struct inode *arg1 , struct dentry *arg2 )
{
  {
  {
  ncp_unlink(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  long (*ldv_0_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_0_callback_fsync)(struct file * , long long , long long , int ) ;
  int (*ldv_0_callback_iterate)(struct file * , struct dir_context * ) ;
  long long (*ldv_0_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_0_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_0_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_0_container_file_operations ;
  long long ldv_0_ldv_param_22_1_default ;
  long long ldv_0_ldv_param_22_2_default ;
  int ldv_0_ldv_param_22_3_default ;
  long long ldv_0_ldv_param_26_1_default ;
  int ldv_0_ldv_param_26_2_default ;
  char *ldv_0_ldv_param_30_1_default ;
  long long *ldv_0_ldv_param_30_3_default ;
  unsigned int ldv_0_ldv_param_33_1_default ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  unsigned int ldv_0_ldv_param_5_1_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
  struct dir_context *ldv_0_size_cnt_struct_dir_context_ptr ;
  struct vm_area_struct *ldv_0_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_0_size_cnt_write_size ;
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
  {
  ldv_0_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_0_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_0_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_0_size_cnt_struct_dir_context_ptr = (struct dir_context *)((long )tmp___1);
  }
  goto ldv_main_0;
  return;
  ldv_main_0:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
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
  ldv_assume((unsigned long )ldv_0_size_cnt_struct_dir_context_ptr <= (unsigned long )((struct dir_context *)2147479552));
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
  if ((unsigned long )ldv_0_container_file_operations->release != (unsigned long )((int (*)(struct inode * ,
                                                                                            struct file * ))0)) {
    {
    ldv_file_operations_instance_release_0_2(ldv_0_container_file_operations->release,
                                             ldv_0_resource_inode, ldv_0_resource_file);
    }
  } else {
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
  if (tmp___7 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___7 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_file_operations_instance_callback_0_33(ldv_0_callback_unlocked_ioctl, ldv_0_resource_file,
                                             ldv_0_ldv_param_33_1_default, ldv_0_size_cnt_write_size);
  }
  goto ldv_31302;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_30_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_30_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_0_30(ldv_0_callback_read, ldv_0_resource_file,
                                             ldv_0_ldv_param_30_1_default, ldv_0_size_cnt_write_size,
                                             ldv_0_ldv_param_30_3_default);
  ldv_free((void *)ldv_0_ldv_param_30_1_default);
  ldv_free((void *)ldv_0_ldv_param_30_3_default);
  }
  goto ldv_31302;
  case_3___0: ;
  if ((unsigned long )ldv_0_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_0_29(ldv_0_callback_mmap, ldv_0_resource_file,
                                               ldv_0_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_31302;
  case_4:
  {
  ldv_file_operations_instance_callback_0_26(ldv_0_callback_llseek, ldv_0_resource_file,
                                             ldv_0_ldv_param_26_1_default, ldv_0_ldv_param_26_2_default);
  }
  goto ldv_31302;
  case_5:
  {
  ldv_file_operations_instance_callback_0_25(ldv_0_callback_iterate, ldv_0_resource_file,
                                             ldv_0_size_cnt_struct_dir_context_ptr);
  }
  goto ldv_31302;
  case_6: ;
  if ((unsigned long )ldv_0_callback_fsync != (unsigned long )((int (*)(struct file * ,
                                                                        long long ,
                                                                        long long ,
                                                                        int ))0)) {
    {
    ldv_file_operations_instance_callback_0_22(ldv_0_callback_fsync, ldv_0_resource_file,
                                               ldv_0_ldv_param_22_1_default, ldv_0_ldv_param_22_2_default,
                                               ldv_0_ldv_param_22_3_default);
    }
  } else {
  }
  goto ldv_31302;
  case_7:
  {
  ldv_file_operations_instance_callback_0_5(ldv_0_callback_compat_ioctl, ldv_0_resource_file,
                                            ldv_0_ldv_param_5_1_default, ldv_0_size_cnt_write_size);
  }
  goto ldv_31302;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_31302: ;
  goto ldv_31310;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_31310: ;
  goto ldv_call_0;
  goto ldv_call_0;
  return;
}
}
void ldv_file_operations_instance_callback_0_25(int (*arg0)(struct file * , struct dir_context * ) ,
                                                struct file *arg1 , struct dir_context *arg2 )
{
  {
  {
  ncp_readdir(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  generic_read_dir(arg1, arg2, arg3, arg4);
  }
  return;
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
__inline static void ldv_spin_lock_74(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_75(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN();
  spin_unlock(lock);
  }
  return;
}
}
static void ldv_mutex_lock_92(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_93(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_nested_104(struct mutex *ldv_func_arg1 , unsigned int ldv_func_arg2 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_vmalloc_106(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  }
  return (tmp);
}
}
void ldv_linux_usb_dev_atomic_inc(atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_dec(atomic_t *v ) ;
static void ldv_mutex_lock_92___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_96(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_open_mutex_of_ncp_inode_info(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_ncp_inode_info(struct mutex *lock ) ;
extern int printk(char const * , ...) ;
extern void might_fault(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v ) ;
__inline static void atomic_dec(atomic_t *v ) ;
static void ldv_mutex_unlock_93___0(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_97(struct mutex *ldv_func_arg1 ) ;
static void *ldv_vmalloc_94(unsigned long ldv_func_arg1 ) ;
static void *ldv_vmalloc_95(unsigned long ldv_func_arg1 ) ;
__inline static loff_t i_size_read(struct inode const *inode )
{
  {
  return ((loff_t )inode->i_size);
}
}
__inline static void i_size_write(struct inode *inode , loff_t i_size )
{
  {
  inode->i_size = i_size;
  return;
}
}
extern void touch_atime(struct path const * ) ;
__inline static void file_accessed(struct file *file )
{
  {
  if ((file->f_flags & 262144U) == 0U) {
    {
    touch_atime((struct path const *)(& file->f_path));
    }
  } else {
  }
  return;
}
}
extern int filemap_write_and_wait_range(struct address_space * , loff_t , loff_t ) ;
extern int file_update_time(struct file * ) ;
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
void ncp_update_inode(struct inode *inode , struct ncp_entry_info *nwinfo ) ;
struct inode_operations const ncp_file_inode_operations ;
struct file_operations const ncp_file_operations ;
int ncp_make_open(struct inode *inode , int right ) ;
int ncp_mmap(struct file *file , struct vm_area_struct *vma ) ;
__inline static int ncp_read_bounce_size(__u32 size )
{
  {
  return ((int )(size + 20U));
}
}
int ncp_read_bounce(struct ncp_server *server , char const *file_id , __u32 offset ,
                    __u16 to_read , char *target , int *bytes_read , void *bounce ,
                    __u32 bufsize ) ;
int ncp_write_kernel(struct ncp_server *server , char const *file_id , __u32 offset ,
                     __u16 to_write , char const *source , int *bytes_written ) ;
__inline static void ncp_inode_close(struct inode *inode )
{
  struct ncp_inode_info *tmp ;
  {
  {
  tmp = NCP_FINFO((struct inode const *)inode);
  atomic_dec(& tmp->opened);
  }
  return;
}
}
static int ncp_fsync(struct file *file , loff_t start , loff_t end , int datasync )
{
  int tmp ;
  {
  {
  tmp = filemap_write_and_wait_range(file->f_mapping, start, end);
  }
  return (tmp);
}
}
int ncp_make_open(struct inode *inode , int right )
{
  int error ;
  int access ;
  struct ncp_inode_info *tmp___4 ;
  struct ncp_entry_info finfo ;
  int result ;
  struct ncp_server *tmp___5 ;
  struct ncp_server *tmp___6 ;
  struct ncp_server *tmp___7 ;
  struct ncp_inode_info *tmp___9 ;
  struct ncp_inode_info *tmp___10 ;
  int tmp___11 ;
  struct ncp_inode_info *tmp___12 ;
  struct ncp_inode_info *tmp___14 ;
  struct ncp_inode_info *tmp___15 ;
  {
  error = -22;
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    {
    printk("\vncpfs: %s: got NULL inode\n", "ncp_make_open");
    }
    goto out;
  } else {
  }
  {
  error = -13;
  tmp___4 = NCP_FINFO((struct inode const *)inode);
  ldv_mutex_lock_92___0(& tmp___4->open_mutex);
  tmp___10 = NCP_FINFO((struct inode const *)inode);
  tmp___11 = atomic_read((atomic_t const *)(& tmp___10->opened));
  }
  if (tmp___11 == 0) {
    {
    finfo.access = 2;
    tmp___5 = NCP_SBP((struct super_block const *)inode->i_sb);
    result = ncp_open_create_file_or_subdir(tmp___5, inode, (char const *)0, 1,
                                            0U, 3, & finfo);
    }
    if (result == 0) {
      goto update;
    } else {
    }
    {
    if (right == 0) {
      goto case_0;
    } else {
    }
    if (right == 1) {
      goto case_1;
    } else {
    }
    goto switch_break;
    case_0:
    {
    finfo.access = 0;
    tmp___6 = NCP_SBP((struct super_block const *)inode->i_sb);
    result = ncp_open_create_file_or_subdir(tmp___6, inode, (char const *)0, 1,
                                            0U, 1, & finfo);
    }
    goto ldv_30394;
    case_1:
    {
    finfo.access = 1;
    tmp___7 = NCP_SBP((struct super_block const *)inode->i_sb);
    result = ncp_open_create_file_or_subdir(tmp___7, inode, (char const *)0, 1,
                                            0U, 2, & finfo);
    }
    goto ldv_30394;
    switch_break: ;
    }
    ldv_30394: ;
    if (result != 0) {
      goto out_unlock;
    } else {
    }
    update:
    {
    ncp_update_inode(inode, & finfo);
    tmp___9 = NCP_FINFO((struct inode const *)inode);
    atomic_set(& tmp___9->opened, 1);
    }
  } else {
  }
  {
  tmp___12 = NCP_FINFO((struct inode const *)inode);
  access = tmp___12->access;
  }
  if (access == right || access == 2) {
    {
    tmp___14 = NCP_FINFO((struct inode const *)inode);
    atomic_inc(& tmp___14->opened);
    error = 0;
    }
  } else {
  }
  out_unlock:
  {
  tmp___15 = NCP_FINFO((struct inode const *)inode);
  ldv_mutex_unlock_93___0(& tmp___15->open_mutex);
  }
  out: ;
  return (error);
}
}
static ssize_t ncp_file_read(struct file *file , char *buf , size_t count , loff_t *ppos )
{
  struct inode *inode ;
  struct inode *tmp ;
  size_t already_read ;
  off_t pos ;
  size_t bufsize ;
  int error ;
  void *freepage ;
  size_t freelen ;
  struct ncp_server *tmp___2 ;
  int tmp___3 ;
  int read_this_time ;
  size_t to_read ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  struct ncp_inode_info *tmp___4 ;
  struct ncp_server *tmp___5 ;
  {
  {
  tmp = file_inode((struct file const *)file);
  inode = tmp;
  already_read = 0UL;
  pos = (off_t )*ppos;
  }
  if ((long )count < 0L) {
    return (-22L);
  } else {
  }
  if (count == 0UL) {
    return (0L);
  } else {
  }
  if ((long long )pos > (inode->i_sb)->s_maxbytes) {
    return (0L);
  } else {
  }
  if ((unsigned long long )((unsigned long )pos + count) > (unsigned long long )(inode->i_sb)->s_maxbytes) {
    count = (size_t )((inode->i_sb)->s_maxbytes - (long long )pos);
  } else {
  }
  {
  error = ncp_make_open(inode, 0);
  }
  if (error != 0) {
    return ((ssize_t )error);
  } else {
  }
  {
  tmp___2 = NCP_SBP((struct super_block const *)inode->i_sb);
  bufsize = (size_t )tmp___2->buffer_size;
  error = -5;
  tmp___3 = ncp_read_bounce_size((__u32 )bufsize);
  freelen = (size_t )tmp___3;
  freepage = ldv_vmalloc_94(freelen);
  }
  if ((unsigned long )freepage == (unsigned long )((void *)0)) {
    goto outrel;
  } else {
  }
  error = 0;
  goto ldv_30423;
  ldv_30422:
  {
  __min1 = (unsigned int )bufsize - (unsigned int )((unsigned long )pos % bufsize);
  __min2 = (unsigned int )count - (unsigned int )already_read;
  to_read = (size_t )(__min1 < __min2 ? __min1 : __min2);
  tmp___4 = NCP_FINFO((struct inode const *)inode);
  tmp___5 = NCP_SBP((struct super_block const *)inode->i_sb);
  error = ncp_read_bounce(tmp___5, (char const *)(& tmp___4->file_handle), (__u32 )pos,
                          (int )((__u16 )to_read), buf, & read_this_time, freepage,
                          (__u32 )freelen);
  }
  if (error != 0) {
    error = -5;
    goto ldv_30421;
  } else {
  }
  pos = pos + (off_t )read_this_time;
  buf = buf + (unsigned long )read_this_time;
  already_read = already_read + (size_t )read_this_time;
  if ((size_t )read_this_time != to_read) {
    goto ldv_30421;
  } else {
  }
  ldv_30423: ;
  if (already_read < count) {
    goto ldv_30422;
  } else {
  }
  ldv_30421:
  {
  vfree((void const *)freepage);
  *ppos = (loff_t )pos;
  file_accessed(file);
  }
  outrel:
  {
  ncp_inode_close(inode);
  }
  return ((ssize_t )(already_read != 0UL ? already_read : (size_t )error));
}
}
static ssize_t ncp_file_write(struct file *file , char const *buf , size_t count ,
                              loff_t *ppos )
{
  struct inode *inode ;
  struct inode *tmp ;
  size_t already_written ;
  off_t pos ;
  size_t bufsize ;
  int errno ;
  void *bouncebuffer ;
  loff_t tmp___1 ;
  struct ncp_server *tmp___3 ;
  int written_this_time ;
  size_t to_write ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  unsigned long tmp___4 ;
  struct ncp_inode_info *tmp___5 ;
  struct ncp_server *tmp___6 ;
  int tmp___7 ;
  loff_t tmp___8 ;
  loff_t tmp___9 ;
  {
  {
  tmp = file_inode((struct file const *)file);
  inode = tmp;
  already_written = 0UL;
  }
  if ((long )count < 0L) {
    return (-22L);
  } else {
  }
  pos = (off_t )*ppos;
  if ((file->f_flags & 1024U) != 0U) {
    {
    tmp___1 = i_size_read((struct inode const *)inode);
    pos = (off_t )tmp___1;
    }
  } else {
  }
  if ((unsigned long )pos + count > 2147483647UL && (file->f_flags & 32768U) == 0U) {
    if ((unsigned long )pos > 2147483646UL) {
      return (-27L);
    } else {
    }
    if (count > 2147483647UL - (unsigned long )((unsigned int )pos)) {
      count = 2147483647UL - (unsigned long )((unsigned int )pos);
    } else {
    }
  } else {
  }
  if ((long long )pos >= (inode->i_sb)->s_maxbytes) {
    if (count != 0UL || (long long )pos > (inode->i_sb)->s_maxbytes) {
      return (-27L);
    } else {
    }
  } else {
  }
  if ((unsigned long long )((unsigned long )pos + count) > (unsigned long long )(inode->i_sb)->s_maxbytes) {
    count = (size_t )((inode->i_sb)->s_maxbytes - (long long )pos);
  } else {
  }
  if (count == 0UL) {
    return (0L);
  } else {
  }
  {
  errno = ncp_make_open(inode, 1);
  }
  if (errno != 0) {
    return ((ssize_t )errno);
  } else {
  }
  {
  tmp___3 = NCP_SBP((struct super_block const *)inode->i_sb);
  bufsize = (size_t )tmp___3->buffer_size;
  already_written = 0UL;
  errno = file_update_time(file);
  }
  if (errno != 0) {
    goto outrel;
  } else {
  }
  {
  bouncebuffer = ldv_vmalloc_95(bufsize);
  }
  if ((unsigned long )bouncebuffer == (unsigned long )((void *)0)) {
    errno = -5;
    goto outrel;
  } else {
  }
  goto ldv_30448;
  ldv_30447:
  {
  __min1 = (unsigned int )bufsize - (unsigned int )((unsigned long )pos % bufsize);
  __min2 = (unsigned int )count - (unsigned int )already_written;
  to_write = (size_t )(__min1 < __min2 ? __min1 : __min2);
  tmp___4 = copy_from_user(bouncebuffer, (void const *)buf, to_write);
  }
  if (tmp___4 != 0UL) {
    errno = -14;
    goto ldv_30446;
  } else {
  }
  {
  tmp___5 = NCP_FINFO((struct inode const *)inode);
  tmp___6 = NCP_SBP((struct super_block const *)inode->i_sb);
  tmp___7 = ncp_write_kernel(tmp___6, (char const *)(& tmp___5->file_handle), (__u32 )pos,
                             (int )((__u16 )to_write), (char const *)bouncebuffer,
                             & written_this_time);
  }
  if (tmp___7 != 0) {
    errno = -5;
    goto ldv_30446;
  } else {
  }
  pos = pos + (off_t )written_this_time;
  buf = buf + (unsigned long )written_this_time;
  already_written = already_written + (size_t )written_this_time;
  if ((size_t )written_this_time != to_write) {
    goto ldv_30446;
  } else {
  }
  ldv_30448: ;
  if (already_written < count) {
    goto ldv_30447;
  } else {
  }
  ldv_30446:
  {
  vfree((void const *)bouncebuffer);
  *ppos = (loff_t )pos;
  tmp___9 = i_size_read((struct inode const *)inode);
  }
  if ((long long )pos > tmp___9) {
    {
    ldv_mutex_lock_96(& inode->i_mutex);
    tmp___8 = i_size_read((struct inode const *)inode);
    }
    if ((long long )pos > tmp___8) {
      {
      i_size_write(inode, (loff_t )pos);
      }
    } else {
    }
    {
    ldv_mutex_unlock_97(& inode->i_mutex);
    }
  } else {
  }
  outrel:
  {
  ncp_inode_close(inode);
  }
  return ((ssize_t )(already_written != 0UL ? already_written : (size_t )errno));
}
}
static int ncp_release(struct inode *inode , struct file *file )
{
  int tmp___0 ;
  {
  {
  tmp___0 = ncp_make_closed(inode);
  }
  return (0);
}
}
struct file_operations const ncp_file_operations =
     {0, & generic_file_llseek, & ncp_file_read, & ncp_file_write, 0, 0, 0, 0, 0, 0,
    & ncp_ioctl, & ncp_compat_ioctl, & ncp_mmap, 0, 0, 0, & ncp_release, & ncp_fsync,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
struct inode_operations const ncp_file_inode_operations =
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ncp_notify_change, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0};
void ldv_file_operations_file_operations_instance_1(void *arg0 ) ;
void ldv_file_operations_instance_callback_1_22(int (*arg0)(struct file * , long long ,
                                                            long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                long long arg3 , int arg4 ) ;
void ldv_file_operations_instance_callback_1_25(int (*arg0)(struct file * , struct dir_context * ) ,
                                                struct file *arg1 , struct dir_context *arg2 ) ;
void ldv_file_operations_instance_callback_1_26(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_1_29(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_1_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_1_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_1_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 ) ;
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
struct ldv_thread ldv_thread_1 ;
void ldv_file_operations_file_operations_instance_1(void *arg0 )
{
  long (*ldv_1_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  int (*ldv_1_callback_fsync)(struct file * , long long , long long , int ) ;
  int (*ldv_1_callback_iterate)(struct file * , struct dir_context * ) ;
  long long (*ldv_1_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_1_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  long (*ldv_1_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_1_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_1_container_file_operations ;
  long long ldv_1_ldv_param_22_1_default ;
  long long ldv_1_ldv_param_22_2_default ;
  int ldv_1_ldv_param_22_3_default ;
  long long ldv_1_ldv_param_26_1_default ;
  int ldv_1_ldv_param_26_2_default ;
  char *ldv_1_ldv_param_30_1_default ;
  long long *ldv_1_ldv_param_30_3_default ;
  unsigned int ldv_1_ldv_param_33_1_default ;
  char *ldv_1_ldv_param_4_1_default ;
  long long *ldv_1_ldv_param_4_3_default ;
  unsigned int ldv_1_ldv_param_5_1_default ;
  struct file *ldv_1_resource_file ;
  struct inode *ldv_1_resource_inode ;
  int ldv_1_ret_default ;
  struct dir_context *ldv_1_size_cnt_struct_dir_context_ptr ;
  struct vm_area_struct *ldv_1_size_cnt_struct_vm_area_struct_ptr ;
  unsigned long ldv_1_size_cnt_write_size ;
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
  {
  ldv_1_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_1_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_1_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_1_size_cnt_struct_dir_context_ptr = (struct dir_context *)((long )tmp___1);
  }
  goto ldv_main_1;
  return;
  ldv_main_1:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    if ((unsigned long )ldv_1_container_file_operations->open != (unsigned long )((int (*)(struct inode * ,
                                                                                           struct file * ))0)) {
      {
      ldv_1_ret_default = ldv_file_operations_instance_probe_1_12(ldv_1_container_file_operations->open,
                                                                  ldv_1_resource_inode,
                                                                  ldv_1_resource_file);
      }
    } else {
    }
    {
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
  ldv_assume((unsigned long )ldv_1_size_cnt_struct_dir_context_ptr <= (unsigned long )((struct dir_context *)2147479552));
  ldv_file_operations_instance_write_1_4((long (*)(struct file * , char * , unsigned long ,
                                                   long long * ))ldv_1_container_file_operations->write,
                                         ldv_1_resource_file, ldv_1_ldv_param_4_1_default,
                                         ldv_1_size_cnt_write_size, ldv_1_ldv_param_4_3_default);
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
  if (tmp___7 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___7 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1___0:
  {
  ldv_file_operations_instance_callback_1_33(ldv_1_callback_unlocked_ioctl, ldv_1_resource_file,
                                             ldv_1_ldv_param_33_1_default, ldv_1_size_cnt_write_size);
  }
  goto ldv_30626;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_30_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_30_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_1_30(ldv_1_callback_read, ldv_1_resource_file,
                                             ldv_1_ldv_param_30_1_default, ldv_1_size_cnt_write_size,
                                             ldv_1_ldv_param_30_3_default);
  ldv_free((void *)ldv_1_ldv_param_30_1_default);
  ldv_free((void *)ldv_1_ldv_param_30_3_default);
  }
  goto ldv_30626;
  case_3___0:
  {
  ldv_file_operations_instance_callback_1_29(ldv_1_callback_mmap, ldv_1_resource_file,
                                             ldv_1_size_cnt_struct_vm_area_struct_ptr);
  }
  goto ldv_30626;
  case_4:
  {
  ldv_file_operations_instance_callback_1_26(ldv_1_callback_llseek, ldv_1_resource_file,
                                             ldv_1_ldv_param_26_1_default, ldv_1_ldv_param_26_2_default);
  }
  goto ldv_30626;
  case_5: ;
  if ((unsigned long )ldv_1_callback_iterate != (unsigned long )((int (*)(struct file * ,
                                                                          struct dir_context * ))0)) {
    {
    ldv_file_operations_instance_callback_1_25(ldv_1_callback_iterate, ldv_1_resource_file,
                                               ldv_1_size_cnt_struct_dir_context_ptr);
    }
  } else {
  }
  goto ldv_30626;
  case_6:
  {
  ldv_file_operations_instance_callback_1_22(ldv_1_callback_fsync, ldv_1_resource_file,
                                             ldv_1_ldv_param_22_1_default, ldv_1_ldv_param_22_2_default,
                                             ldv_1_ldv_param_22_3_default);
  }
  goto ldv_30626;
  case_7:
  {
  ldv_file_operations_instance_callback_1_5(ldv_1_callback_compat_ioctl, ldv_1_resource_file,
                                            ldv_1_ldv_param_5_1_default, ldv_1_size_cnt_write_size);
  }
  goto ldv_30626;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_30626: ;
  goto ldv_30634;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_30634: ;
  goto ldv_call_1;
  goto ldv_call_1;
  return;
}
}
void ldv_file_operations_instance_callback_0_26(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 )
{
  {
  {
  generic_file_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  ncp_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  ncp_compat_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_22(int (*arg0)(struct file * , long long ,
                                                            long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                long long arg3 , int arg4 )
{
  {
  {
  ncp_fsync(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_26(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 )
{
  {
  {
  generic_file_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_29(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  ncp_mmap(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_30(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  ncp_file_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_33(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  ncp_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  ncp_compat_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  ncp_release(arg1, arg2);
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
  ncp_file_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
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
static void ldv_mutex_lock_92___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_open_mutex_of_ncp_inode_info(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_93___0(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_ncp_inode_info(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_vmalloc_94(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  }
  return (tmp);
}
}
static void *ldv_vmalloc_95(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_96(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_97(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  }
  return;
}
}
void ldv_linux_arch_io_check_final_state(void) ;
void ldv_linux_block_genhd_check_final_state(void) ;
void ldv_linux_block_queue_check_final_state(void) ;
void ldv_linux_block_request_check_final_state(void) ;
void ldv_linux_drivers_base_class_check_final_state(void) ;
void ldv_linux_fs_char_dev_check_final_state(void) ;
void ldv_linux_fs_sysfs_check_final_state(void) ;
void ldv_linux_kernel_locking_rwlock_check_final_state(void) ;
void ldv_linux_kernel_module_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_check_final_state(void) ;
void ldv_linux_kernel_rcu_srcu_check_final_state(void) ;
void ldv_linux_lib_find_bit_initialize(void) ;
void ldv_linux_lib_idr_check_final_state(void) ;
void ldv_linux_mmc_sdio_func_check_final_state(void) ;
void ldv_linux_net_register_reset_error_counter(void) ;
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
void ldv_linux_usb_urb_check_final_state(void) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_ldv_initialize_140(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_137(int ldv_func_arg1 ) ;
static void ldv_ldv_check_final_state_138(void) ;
static void ldv_ldv_check_final_state_139(void) ;
void ldv_linux_net_sock_before_release_sock(void) ;
void ldv_linux_net_sock_past_lock_sock_nested(void) ;
extern struct module __this_module ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
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
  goto ldv_3594;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3594;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3594;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3594;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3594: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
__inline static void atomic_dec(atomic_t *v ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
extern void mutex_destroy(struct mutex * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_call_rcu_sched_126(struct callback_head *ldv_func_arg1 , void (*ldv_func_arg2)(struct callback_head * ) ) ;
static void ldv_call_rcu_sched_134(struct callback_head *ldv_func_arg1 , void (*ldv_func_arg2)(struct callback_head * ) ) ;
static void ldv_rcu_barrier_127(void) ;
extern int debug_lockdep_rcu_enabled(void) ;
extern struct user_namespace init_user_ns ;
__inline static uid_t __kuid_val(kuid_t uid )
{
  {
  return (uid.val);
}
}
__inline static gid_t __kgid_val(kgid_t gid )
{
  {
  return (gid.val);
}
}
__inline static bool uid_eq(kuid_t left , kuid_t right )
{
  uid_t tmp ;
  uid_t tmp___0 ;
  {
  {
  tmp = __kuid_val(left);
  tmp___0 = __kuid_val(right);
  }
  return (tmp == tmp___0);
}
}
__inline static bool gid_eq(kgid_t left , kgid_t right )
{
  gid_t tmp ;
  gid_t tmp___0 ;
  {
  {
  tmp = __kgid_val(left);
  tmp___0 = __kgid_val(right);
  }
  return (tmp == tmp___0);
}
}
__inline static bool uid_valid(kuid_t uid )
{
  kuid_t __constr_expr_0 ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  __constr_expr_0.val = 4294967295U;
  tmp = uid_eq(uid, __constr_expr_0);
  }
  if ((int )tmp != 0) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  return ((bool )tmp___0);
}
}
__inline static bool gid_valid(kgid_t gid )
{
  kgid_t __constr_expr_0 ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  __constr_expr_0.val = 4294967295U;
  tmp = gid_eq(gid, __constr_expr_0);
  }
  if ((int )tmp != 0) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  return ((bool )tmp___0);
}
}
extern kuid_t make_kuid(struct user_namespace * , uid_t ) ;
extern kgid_t make_kgid(struct user_namespace * , gid_t ) ;
extern uid_t from_kuid_munged(struct user_namespace * , kuid_t ) ;
extern gid_t from_kgid_munged(struct user_namespace * , kgid_t ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_129(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern bool flush_work(struct work_struct * ) ;
__inline static dev_t new_decode_dev(__u32 dev )
{
  unsigned int major ;
  unsigned int minor ;
  {
  major = (dev & 1048320U) >> 8;
  minor = (dev & 255U) | ((dev >> 12) & 1048320U);
  return ((major << 20) | minor);
}
}
extern struct dentry *d_make_root(struct inode * ) ;
extern void put_pid(struct pid * ) ;
extern struct pid *find_get_pid(int ) ;
extern pid_t pid_vnr(struct pid * ) ;
extern void __init_rwsem(struct rw_semaphore * , char const * , struct lock_class_key * ) ;
static void *ldv_vmalloc_130(unsigned long ldv_func_arg1 ) ;
static void *ldv_vmalloc_131(unsigned long ldv_func_arg1 ) ;
static void *ldv_vmalloc_132(unsigned long ldv_func_arg1 ) ;
extern void __mark_inode_dirty(struct inode * , int ) ;
__inline static void mark_inode_dirty(struct inode *inode )
{
  {
  {
  __mark_inode_dirty(inode, 7);
  }
  return;
}
}
extern void set_nlink(struct inode * , unsigned int ) ;
extern struct dentry *mount_nodev(struct file_system_type * , int , void * , int (*)(struct super_block * ,
                                                                                      void * ,
                                                                                      int ) ) ;
extern void kill_anon_super(struct super_block * ) ;
extern int register_filesystem(struct file_system_type * ) ;
static int ldv_register_filesystem_135(struct file_system_type *ldv_func_arg1 ) ;
extern int unregister_filesystem(struct file_system_type * ) ;
static int ldv_unregister_filesystem_136(struct file_system_type *ldv_func_arg1 ) ;
extern int sync_filesystem(struct super_block * ) ;
extern void init_special_inode(struct inode * , umode_t , dev_t ) ;
extern void make_bad_inode(struct inode * ) ;
extern void inode_init_once(struct inode * ) ;
extern int generic_delete_inode(struct inode * ) ;
extern void clear_inode(struct inode * ) ;
extern struct inode *new_inode(struct super_block * ) ;
extern void __insert_inode_hash(struct inode * , unsigned long ) ;
__inline static void insert_inode_hash(struct inode *inode )
{
  {
  {
  __insert_inode_hash(inode, inode->i_ino);
  }
  return;
}
}
extern void *page_follow_link_light(struct dentry * , struct nameidata * ) ;
extern void page_put_link(struct dentry * , struct nameidata * , void * ) ;
extern int generic_readlink(struct dentry * , char * , int ) ;
extern int inode_change_ok(struct inode const * , struct iattr * ) ;
extern void setattr_copy(struct inode * , struct iattr const * ) ;
extern void truncate_setsize(struct inode * , loff_t ) ;
extern void truncate_inode_pages_final(struct address_space * ) ;
extern void fput(struct file * ) ;
extern int kill_pid(struct pid * , int , int ) ;
extern struct kmem_cache *kmem_cache_create(char const * , size_t , size_t , unsigned long ,
                                            void (*)(void * ) ) ;
extern void kmem_cache_destroy(struct kmem_cache * ) ;
extern void kfree(void const * ) ;
static void *ldv_kmem_cache_alloc_125(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern void kmem_cache_free(struct kmem_cache * , void * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern struct socket *sockfd_lookup(int , int * ) ;
extern void lock_sock_nested(struct sock * , int ) ;
static void ldv_lock_sock_nested_121(struct sock *ldv_func_arg1 , int ldv_func_arg2 ) ;
__inline static void lock_sock(struct sock *sk )
{
  {
  {
  ldv_lock_sock_nested_121(sk, 0);
  }
  return;
}
}
extern void release_sock(struct sock * ) ;
static void ldv_release_sock_128(struct sock *ldv_func_arg1 ) ;
static void ldv_release_sock_133(struct sock *ldv_func_arg1 ) ;
extern void bdi_destroy(struct backing_dev_info * ) ;
extern int bdi_setup_and_register(struct backing_dev_info * , char * ) ;
void ncp_tcp_rcv_proc(struct work_struct *work ) ;
void ncp_tcp_tx_proc(struct work_struct *work ) ;
void ncpdgram_rcv_proc(struct work_struct *work ) ;
void ncpdgram_timeout_proc(struct work_struct *work ) ;
void ncpdgram_timeout_call(unsigned long v ) ;
void ncp_tcp_data_ready(struct sock *sk ) ;
void ncp_tcp_write_space(struct sock *sk ) ;
void ncp_tcp_error_report(struct sock *sk ) ;
int ncp_connect(struct ncp_server *server ) ;
int ncp_disconnect(struct ncp_server *server ) ;
void ncp_lock_server(struct ncp_server *server ) ;
void ncp_unlock_server(struct ncp_server *server ) ;
struct address_space_operations const ncp_symlink_aops ;
extern void unload_nls(struct nls_table * ) ;
extern struct nls_table *load_nls_default(void) ;
int ncp_negotiate_buffersize(struct ncp_server *server , int size , int *target ) ;
int ncp_negotiate_size_and_options(struct ncp_server *server , int size , int options ,
                                   int *ret_size , int *ret_options ) ;
int ncp_get_directory_info(struct ncp_server *server , __u8 n , struct ncp_volume_info *target ) ;
__inline static void ncp_inode_close___0(struct inode *inode )
{
  struct ncp_inode_info *tmp ;
  {
  {
  tmp = NCP_FINFO((struct inode const *)inode);
  atomic_dec(& tmp->opened);
  }
  return;
}
}
int ncp_modify_file_or_subdir_dos_info(struct ncp_server *server , struct inode *dir ,
                                       __le32 info_mask , struct nw_modify_dos_info const *info ) ;
int ncp_dirhandle_alloc(struct ncp_server *server , __u8 volnum , __le32 dirent ,
                        __u8 *dirhandle ) ;
int ncp_dirhandle_free(struct ncp_server *server , __u8 dirhandle ) ;
int ncp_getopt(char const *caller , char **options , struct ncp_option const *opts ,
               char **optopt , char **optarg , unsigned long *value ) ;
static void ncp_evict_inode(struct inode *inode ) ;
static void ncp_put_super(struct super_block *sb ) ;
static int ncp_statfs(struct dentry *dentry , struct kstatfs *buf ) ;
static int ncp_show_options(struct seq_file *seq , struct dentry *root ) ;
static struct kmem_cache *ncp_inode_cachep ;
static struct inode *ncp_alloc_inode(struct super_block *sb )
{
  struct ncp_inode_info *ei ;
  void *tmp ;
  {
  {
  tmp = ldv_kmem_cache_alloc_125(ncp_inode_cachep, 208U);
  ei = (struct ncp_inode_info *)tmp;
  }
  if ((unsigned long )ei == (unsigned long )((struct ncp_inode_info *)0)) {
    return ((struct inode *)0);
  } else {
  }
  return (& ei->vfs_inode);
}
}
static void ncp_i_callback(struct callback_head *head )
{
  struct inode *inode ;
  struct callback_head const *__mptr ;
  struct ncp_inode_info *tmp ;
  {
  {
  __mptr = (struct callback_head const *)head;
  inode = (struct inode *)__mptr + 0xfffffffffffffe30UL;
  tmp = NCP_FINFO((struct inode const *)inode);
  kmem_cache_free(ncp_inode_cachep, (void *)tmp);
  }
  return;
}
}
static void ncp_destroy_inode(struct inode *inode )
{
  {
  {
  ldv_call_rcu_sched_126(& inode->__annonCompField41.i_rcu, & ncp_i_callback);
  }
  return;
}
}
static void init_once(void *foo )
{
  struct ncp_inode_info *ei ;
  struct lock_class_key __key ;
  {
  {
  ei = (struct ncp_inode_info *)foo;
  __mutex_init(& ei->open_mutex, "&ei->open_mutex", & __key);
  inode_init_once(& ei->vfs_inode);
  }
  return;
}
}
static int init_inodecache(void)
{
  {
  {
  ncp_inode_cachep = kmem_cache_create("ncp_inode_cache", 1176UL, 0UL, 1179648UL,
                                       & init_once);
  }
  if ((unsigned long )ncp_inode_cachep == (unsigned long )((struct kmem_cache *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static void destroy_inodecache(void)
{
  {
  {
  ldv_rcu_barrier_127();
  kmem_cache_destroy(ncp_inode_cachep);
  }
  return;
}
}
static int ncp_remount(struct super_block *sb , int *flags , char *data )
{
  {
  {
  sync_filesystem(sb);
  *flags = *flags | 2048;
  }
  return (0);
}
}
static struct super_operations const ncp_sops =
     {& ncp_alloc_inode, & ncp_destroy_inode, 0, 0, & generic_delete_inode, & ncp_evict_inode,
    & ncp_put_super, 0, 0, 0, 0, 0, & ncp_statfs, & ncp_remount, 0, & ncp_show_options,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static void ncp_update_dirent(struct inode *inode , struct ncp_entry_info *nwinfo )
{
  struct ncp_inode_info *tmp ;
  struct ncp_inode_info *tmp___0 ;
  struct ncp_inode_info *tmp___1 ;
  {
  {
  tmp = NCP_FINFO((struct inode const *)inode);
  tmp->DosDirNum = nwinfo->i.DosDirNum;
  tmp___0 = NCP_FINFO((struct inode const *)inode);
  tmp___0->dirEntNum = nwinfo->i.dirEntNum;
  tmp___1 = NCP_FINFO((struct inode const *)inode);
  tmp___1->volNumber = (__u8 )nwinfo->volume;
  }
  return;
}
}
void ncp_update_inode(struct inode *inode , struct ncp_entry_info *nwinfo )
{
  struct ncp_inode_info *tmp ;
  struct ncp_inode_info *tmp___0 ;
  struct ncp_inode_info *tmp___1 ;
  {
  {
  ncp_update_dirent(inode, nwinfo);
  tmp = NCP_FINFO((struct inode const *)inode);
  tmp->nwattr = nwinfo->i.attributes;
  tmp___0 = NCP_FINFO((struct inode const *)inode);
  tmp___0->access = nwinfo->access;
  tmp___1 = NCP_FINFO((struct inode const *)inode);
  memcpy((void *)(& tmp___1->file_handle), (void const *)(& nwinfo->file_handle),
           6UL);
  }
  return;
}
}
static void ncp_update_dates(struct inode *inode , struct nw_info_struct *nwi )
{
  loff_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  if (nwi->nfs.mode != 0U) {
    inode->i_mode = (umode_t )nwi->nfs.mode;
  } else {
  }
  {
  tmp___0 = i_size_read((struct inode const *)inode);
  inode->i_blocks = (blkcnt_t )((tmp___0 + 511LL) >> 9);
  tmp___1 = ncp_date_dos2unix((int )nwi->modifyTime, (int )nwi->modifyDate);
  inode->i_mtime.tv_sec = (__kernel_time_t )tmp___1;
  tmp___2 = ncp_date_dos2unix((int )nwi->creationTime, (int )nwi->creationDate);
  inode->i_ctime.tv_sec = (__kernel_time_t )tmp___2;
  tmp___3 = ncp_date_dos2unix(0, (int )nwi->lastAccessDate);
  inode->i_atime.tv_sec = (__kernel_time_t )tmp___3;
  inode->i_atime.tv_nsec = 0L;
  inode->i_mtime.tv_nsec = 0L;
  inode->i_ctime.tv_nsec = 0L;
  }
  return;
}
}
static void ncp_update_attrs(struct inode *inode , struct ncp_entry_info *nwinfo )
{
  struct nw_info_struct *nwi ;
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  __u32 size ;
  struct ncp_inode_info *tmp___0 ;
  {
  {
  nwi = & nwinfo->i;
  tmp = NCP_SBP((struct super_block const *)inode->i_sb);
  server = tmp;
  }
  if ((nwi->attributes & 16U) != 0U) {
    {
    inode->i_mode = server->m.dir_mode;
    i_size_write(inode, 512LL);
    }
  } else {
    {
    inode->i_mode = server->m.file_mode;
    size = nwi->dataStreamSize;
    i_size_write(inode, (loff_t )size);
    }
    if ((server->m.flags & 96UL) != 0UL && (nwi->attributes & 128U) != 0U) {
      {
      if ((nwi->attributes & 6U) == 2U) {
        goto case_2;
      } else {
      }
      if ((nwi->attributes & 6U) == 0U) {
        goto case_0;
      } else {
      }
      if ((nwi->attributes & 6U) == 4U) {
        goto case_4;
      } else {
      }
      goto switch_default;
      case_2: ;
      if ((server->m.flags & 64UL) != 0UL) {
        if (size <= 512U) {
          {
          inode->i_mode = (umode_t )(((int )((short )inode->i_mode) & 4095) | -24576);
          tmp___0 = NCP_FINFO((struct inode const *)inode);
          tmp___0->flags = tmp___0->flags | 1;
          }
          goto ldv_50842;
        } else {
        }
      } else {
      }
      case_0: ;
      if ((server->m.flags & 32UL) != 0UL) {
        inode->i_mode = (umode_t )((unsigned int )inode->i_mode | 292U);
      } else {
      }
      goto ldv_50842;
      case_4: ;
      if ((server->m.flags & 32UL) != 0UL) {
        inode->i_mode = (umode_t )((int )((short )inode->i_mode) | ((int )((short )((int )inode->i_mode >> 2)) & 73));
      } else {
      }
      goto ldv_50842;
      switch_default: ;
      goto ldv_50842;
      switch_break: ;
      }
      ldv_50842: ;
    } else {
    }
  }
  if ((int )nwi->attributes & 1) {
    inode->i_mode = (unsigned int )inode->i_mode & 65389U;
  } else {
  }
  return;
}
}
void ncp_update_inode2(struct inode *inode , struct ncp_entry_info *nwinfo )
{
  struct ncp_inode_info *tmp ;
  struct ncp_inode_info *tmp___0 ;
  struct ncp_inode_info *tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = NCP_FINFO((struct inode const *)inode);
  tmp->flags = 0;
  tmp___1 = NCP_FINFO((struct inode const *)inode);
  tmp___2 = atomic_read((atomic_t const *)(& tmp___1->opened));
  }
  if (tmp___2 == 0) {
    {
    tmp___0 = NCP_FINFO((struct inode const *)inode);
    tmp___0->nwattr = nwinfo->i.attributes;
    ncp_update_attrs(inode, nwinfo);
    }
  } else {
  }
  {
  ncp_update_dates(inode, & nwinfo->i);
  ncp_update_dirent(inode, nwinfo);
  }
  return;
}
}
static void ncp_set_attr(struct inode *inode , struct ncp_entry_info *nwinfo )
{
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  struct ncp_inode_info *tmp___0 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)inode->i_sb);
  server = tmp;
  tmp___0 = NCP_FINFO((struct inode const *)inode);
  tmp___0->flags = 0;
  ncp_update_attrs(inode, nwinfo);
  set_nlink(inode, 1U);
  inode->i_uid = server->m.uid;
  inode->i_gid = server->m.gid;
  ncp_update_dates(inode, & nwinfo->i);
  ncp_update_inode(inode, nwinfo);
  }
  return;
}
}
static struct inode_operations const ncp_symlink_inode_operations =
     {0, & page_follow_link_light, 0, 0, & generic_readlink, & page_put_link, 0, 0,
    0, 0, 0, 0, 0, 0, 0, & ncp_notify_change, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
struct inode *ncp_iget(struct super_block *sb , struct ncp_entry_info *info )
{
  struct inode *inode ;
  struct ncp_inode_info *tmp ;
  dev_t tmp___0 ;
  {
  if ((unsigned long )info == (unsigned long )((struct ncp_entry_info *)0)) {
    {
    printk("\vncpfs: %s: info is NULL\n", "ncp_iget");
    }
    return ((struct inode *)0);
  } else {
  }
  {
  inode = new_inode(sb);
  }
  if ((unsigned long )inode != (unsigned long )((struct inode *)0)) {
    {
    tmp = NCP_FINFO((struct inode const *)inode);
    atomic_set(& tmp->opened, info->opened);
    inode->i_ino = info->ino;
    ncp_set_attr(inode, info);
    }
    if (((int )inode->i_mode & 61440) == 32768) {
      inode->i_op = & ncp_file_inode_operations;
      inode->i_fop = & ncp_file_operations;
    } else
    if (((int )inode->i_mode & 61440) == 16384) {
      inode->i_op = & ncp_dir_inode_operations;
      inode->i_fop = & ncp_dir_operations;
    } else
    if (((((int )inode->i_mode & 61440) == 8192 || ((int )inode->i_mode & 61440) == 24576) || ((int )inode->i_mode & 61440) == 4096) || ((int )inode->i_mode & 61440) == 49152) {
      {
      tmp___0 = new_decode_dev(info->i.nfs.rdev);
      init_special_inode(inode, (int )inode->i_mode, tmp___0);
      }
    } else
    if (((int )inode->i_mode & 61440) == 40960) {
      inode->i_op = & ncp_symlink_inode_operations;
      inode->i_data.a_ops = & ncp_symlink_aops;
    } else {
      {
      make_bad_inode(inode);
      }
    }
    {
    insert_inode_hash(inode);
    }
  } else {
    {
    printk("\vncpfs: %s: iget failed!\n", "ncp_iget");
    }
  }
  return (inode);
}
}
static void ncp_evict_inode(struct inode *inode )
{
  int tmp___0 ;
  {
  {
  truncate_inode_pages_final(& inode->i_data);
  clear_inode(inode);
  tmp___0 = ncp_make_closed(inode);
  }
  if (tmp___0 != 0) {
    {
    printk("\vncpfs: %s: could not close\n", "ncp_evict_inode");
    }
  } else {
  }
  return;
}
}
static void ncp_stop_tasks(struct ncp_server *server )
{
  struct sock *sk ;
  {
  {
  sk = (server->ncp_sock)->sk;
  lock_sock(sk);
  sk->sk_error_report = server->error_report;
  sk->sk_data_ready = server->data_ready;
  sk->sk_write_space = server->write_space;
  ldv_release_sock_128(sk);
  ldv_del_timer_sync_129(& server->timeout_tm);
  flush_work(& server->rcv.tq);
  }
  if ((int )(sk->sk_socket)->type == 1) {
    {
    flush_work(& server->tx.tq);
    }
  } else {
    {
    flush_work(& server->timeout_tq);
    }
  }
  return;
}
}
static int ncp_show_options(struct seq_file *seq , struct dentry *root )
{
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  unsigned int tmp___0 ;
  uid_t tmp___1 ;
  kuid_t __constr_expr_0 ;
  bool tmp___2 ;
  int tmp___3 ;
  gid_t tmp___4 ;
  kgid_t __constr_expr_1 ;
  bool tmp___5 ;
  int tmp___6 ;
  uid_t tmp___7 ;
  kuid_t __constr_expr_2 ;
  bool tmp___8 ;
  int tmp___9 ;
  pid_t tmp___10 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)root->d_sb);
  server = tmp;
  __constr_expr_0.val = 0U;
  tmp___2 = uid_eq(server->m.uid, __constr_expr_0);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    {
    tmp___1 = from_kuid_munged(& init_user_ns, server->m.uid);
    seq_printf(seq, ",uid=%u", tmp___1);
    }
  } else {
  }
  {
  __constr_expr_1.val = 0U;
  tmp___5 = gid_eq(server->m.gid, __constr_expr_1);
  }
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    {
    tmp___4 = from_kgid_munged(& init_user_ns, server->m.gid);
    seq_printf(seq, ",gid=%u", tmp___4);
    }
  } else {
  }
  {
  __constr_expr_2.val = 0U;
  tmp___8 = uid_eq(server->m.mounted_uid, __constr_expr_2);
  }
  if (tmp___8) {
    tmp___9 = 0;
  } else {
    tmp___9 = 1;
  }
  if (tmp___9) {
    {
    tmp___7 = from_kuid_munged(& init_user_ns, server->m.mounted_uid);
    seq_printf(seq, ",owner=%u", tmp___7);
    }
  } else {
  }
  tmp___0 = (unsigned int )server->m.file_mode & 4095U;
  if (tmp___0 != 384U) {
    {
    seq_printf(seq, ",mode=0%o", tmp___0);
    }
  } else {
  }
  tmp___0 = (unsigned int )server->m.dir_mode & 4095U;
  if (tmp___0 != 448U) {
    {
    seq_printf(seq, ",dirmode=0%o", tmp___0);
    }
  } else {
  }
  if (server->m.time_out != 25U) {
    {
    tmp___0 = (server->m.time_out * 100U) / 250U;
    seq_printf(seq, ",timeout=%u", tmp___0);
    }
  } else {
  }
  if (server->m.retry_count != 20U) {
    {
    seq_printf(seq, ",retry=%u", server->m.retry_count);
    }
  } else {
  }
  if (server->m.flags != 0UL) {
    {
    seq_printf(seq, ",flags=%lu", server->m.flags);
    }
  } else {
  }
  if ((unsigned long )server->m.wdog_pid != (unsigned long )((struct pid *)0)) {
    {
    tmp___10 = pid_vnr(server->m.wdog_pid);
    seq_printf(seq, ",wdogpid=%u", tmp___10);
    }
  } else {
  }
  return (0);
}
}
static struct ncp_option const ncp_opts[13U] =
  { {"uid", 2U, 117},
        {"gid", 2U, 103},
        {"owner", 2U, 111},
        {"mode", 2U, 109},
        {"dirmode", 2U, 100},
        {"timeout", 2U, 116},
        {"retry", 2U, 114},
        {"flags", 2U, 102},
        {"wdogpid", 2U, 119},
        {"ncpfd", 2U, 110},
        {"infofd", 2U, 105},
        {"version", 2U, 118},
        {(char const *)0, 0U, 0}};
static int ncp_parse_options(struct ncp_mount_data_kernel *data , char *options )
{
  int optval ;
  char *optarg ;
  unsigned long optint ;
  int version ;
  int ret ;
  kuid_t __constr_expr_0 ;
  kuid_t __constr_expr_1 ;
  kgid_t __constr_expr_2 ;
  int tmp ;
  struct task_struct *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct task_struct *tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  struct task_struct *tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  {
  version = 0;
  data->flags = 0UL;
  data->int_flags = 0U;
  __constr_expr_0.val = 0U;
  data->mounted_uid = __constr_expr_0;
  data->wdog_pid = (struct pid *)0;
  data->ncp_fd = 4294967295U;
  data->time_out = 10U;
  data->retry_count = 20U;
  __constr_expr_1.val = 0U;
  data->uid = __constr_expr_1;
  __constr_expr_2.val = 0U;
  data->gid = __constr_expr_2;
  data->file_mode = 384U;
  data->dir_mode = 448U;
  data->info_fd = -1;
  data->mounted_vol[0] = 0U;
  goto ldv_50916;
  ldv_50915:
  ret = optval;
  if (ret < 0) {
    goto err;
  } else {
  }
  {
  if (optval == 117) {
    goto case_117;
  } else {
  }
  if (optval == 103) {
    goto case_103;
  } else {
  }
  if (optval == 111) {
    goto case_111;
  } else {
  }
  if (optval == 109) {
    goto case_109;
  } else {
  }
  if (optval == 100) {
    goto case_100;
  } else {
  }
  if (optval == 116) {
    goto case_116;
  } else {
  }
  if (optval == 114) {
    goto case_114;
  } else {
  }
  if (optval == 102) {
    goto case_102;
  } else {
  }
  if (optval == 119) {
    goto case_119;
  } else {
  }
  if (optval == 110) {
    goto case_110;
  } else {
  }
  if (optval == 105) {
    goto case_105;
  } else {
  }
  if (optval == 118) {
    goto case_118;
  } else {
  }
  goto switch_break;
  case_117:
  {
  tmp = debug_lockdep_rcu_enabled();
  tmp___0 = get_current();
  data->uid = make_kuid((tmp___0->cred)->user_ns, (uid_t )optint);
  tmp___1 = uid_valid(data->uid);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    ret = -22;
    goto err;
  } else {
  }
  goto ldv_50899;
  case_103:
  {
  tmp___3 = debug_lockdep_rcu_enabled();
  tmp___4 = get_current();
  data->gid = make_kgid((tmp___4->cred)->user_ns, (gid_t )optint);
  tmp___5 = gid_valid(data->gid);
  }
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    ret = -22;
    goto err;
  } else {
  }
  goto ldv_50899;
  case_111:
  {
  tmp___7 = debug_lockdep_rcu_enabled();
  tmp___8 = get_current();
  data->mounted_uid = make_kuid((tmp___8->cred)->user_ns, (uid_t )optint);
  tmp___9 = uid_valid(data->mounted_uid);
  }
  if (tmp___9) {
    tmp___10 = 0;
  } else {
    tmp___10 = 1;
  }
  if (tmp___10) {
    ret = -22;
    goto err;
  } else {
  }
  goto ldv_50899;
  case_109:
  data->file_mode = (umode_t )optint;
  goto ldv_50899;
  case_100:
  data->dir_mode = (umode_t )optint;
  goto ldv_50899;
  case_116:
  data->time_out = (unsigned int )optint;
  goto ldv_50899;
  case_114:
  data->retry_count = (unsigned int )optint;
  goto ldv_50899;
  case_102:
  data->flags = optint;
  goto ldv_50899;
  case_119:
  {
  data->wdog_pid = find_get_pid((int )optint);
  }
  goto ldv_50899;
  case_110:
  data->ncp_fd = (unsigned int )optint;
  goto ldv_50899;
  case_105:
  data->info_fd = (int )optint;
  goto ldv_50899;
  case_118:
  ret = -44;
  if (optint <= 3UL) {
    goto err;
  } else {
  }
  if (optint > 5UL) {
    goto err;
  } else {
  }
  version = (int )optint;
  goto ldv_50899;
  switch_break: ;
  }
  ldv_50899: ;
  ldv_50916:
  {
  optval = ncp_getopt("ncpfs", & options, (struct ncp_option const *)(& ncp_opts),
                      (char **)0, & optarg, & optint);
  }
  if (optval != 0) {
    goto ldv_50915;
  } else {
  }
  return (0);
  err:
  {
  put_pid(data->wdog_pid);
  data->wdog_pid = (struct pid *)0;
  }
  return (ret);
}
}
static int ncp_fill_super(struct super_block *sb , void *raw_data , int silent )
{
  struct ncp_mount_data_kernel data ;
  struct ncp_server *server ;
  struct inode *root_inode ;
  struct socket *sock ;
  int error ;
  int default_bufsize ;
  int options ;
  struct ncp_entry_info finfo ;
  void *tmp ;
  struct ncp_mount_data *md ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  struct task_struct *tmp___3 ;
  int tmp___4 ;
  struct task_struct *tmp___5 ;
  struct ncp_mount_data_v4 *md___0 ;
  int tmp___6 ;
  struct task_struct *tmp___7 ;
  int tmp___8 ;
  struct task_struct *tmp___9 ;
  int tmp___10 ;
  struct task_struct *tmp___11 ;
  int tmp___12 ;
  bool tmp___13 ;
  int tmp___14 ;
  bool tmp___15 ;
  int tmp___16 ;
  bool tmp___17 ;
  int tmp___18 ;
  struct socket *info_sock ;
  struct socket *tmp___19 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  void *tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  struct lock_class_key __key___4 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___5 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___6 ;
  atomic_long_t __constr_expr_2 ;
  struct lock_class_key __key___7 ;
  atomic_long_t __constr_expr_3 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  {
  {
  memset((void *)(& data), 0, 72UL);
  tmp = kzalloc(3216UL, 208U);
  server = (struct ncp_server *)tmp;
  }
  if ((unsigned long )server == (unsigned long )((struct ncp_server *)0)) {
    return (-12);
  } else {
  }
  sb->s_fs_info = (void *)server;
  error = -14;
  if ((unsigned long )raw_data == (unsigned long )((void *)0)) {
    goto out;
  } else {
  }
  {
  if (*((int *)raw_data) == 3) {
    goto case_3;
  } else {
  }
  if (*((int *)raw_data) == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_3:
  {
  md = (struct ncp_mount_data *)raw_data;
  data.flags = (unsigned long )md->flags;
  data.int_flags = 1U;
  tmp___0 = debug_lockdep_rcu_enabled();
  tmp___1 = get_current();
  data.mounted_uid = make_kuid((tmp___1->cred)->user_ns, md->mounted_uid);
  data.wdog_pid = find_get_pid(md->wdog_pid);
  data.ncp_fd = md->ncp_fd;
  data.time_out = md->time_out;
  data.retry_count = md->retry_count;
  tmp___2 = debug_lockdep_rcu_enabled();
  tmp___3 = get_current();
  data.uid = make_kuid((tmp___3->cred)->user_ns, md->uid);
  tmp___4 = debug_lockdep_rcu_enabled();
  tmp___5 = get_current();
  data.gid = make_kgid((tmp___5->cred)->user_ns, md->gid);
  data.file_mode = (umode_t )md->file_mode;
  data.dir_mode = (umode_t )md->dir_mode;
  data.info_fd = -1;
  memcpy((void *)(& data.mounted_vol), (void const *)(& md->mounted_vol), 17UL);
  }
  goto ldv_50940;
  case_4:
  {
  md___0 = (struct ncp_mount_data_v4 *)raw_data;
  data.flags = md___0->flags;
  tmp___6 = debug_lockdep_rcu_enabled();
  tmp___7 = get_current();
  data.mounted_uid = make_kuid((tmp___7->cred)->user_ns, (uid_t )md___0->mounted_uid);
  data.wdog_pid = find_get_pid((int )md___0->wdog_pid);
  data.ncp_fd = md___0->ncp_fd;
  data.time_out = md___0->time_out;
  data.retry_count = md___0->retry_count;
  tmp___8 = debug_lockdep_rcu_enabled();
  tmp___9 = get_current();
  data.uid = make_kuid((tmp___9->cred)->user_ns, (uid_t )md___0->uid);
  tmp___10 = debug_lockdep_rcu_enabled();
  tmp___11 = get_current();
  data.gid = make_kgid((tmp___11->cred)->user_ns, (gid_t )md___0->gid);
  data.file_mode = (umode_t )md___0->file_mode;
  data.dir_mode = (umode_t )md___0->dir_mode;
  data.info_fd = -1;
  }
  goto ldv_50940;
  switch_default:
  {
  error = -44;
  tmp___12 = memcmp((void const *)raw_data, (void const *)"vers", 4UL);
  }
  if (tmp___12 == 0) {
    {
    error = ncp_parse_options(& data, (char *)raw_data);
    }
  } else {
  }
  if (error != 0) {
    goto out;
  } else {
  }
  goto ldv_50940;
  switch_break: ;
  }
  ldv_50940:
  {
  error = -22;
  tmp___13 = uid_valid(data.mounted_uid);
  }
  if (tmp___13) {
    tmp___14 = 0;
  } else {
    tmp___14 = 1;
  }
  if (tmp___14) {
    goto out;
  } else {
    {
    tmp___15 = uid_valid(data.uid);
    }
    if (tmp___15) {
      tmp___16 = 0;
    } else {
      tmp___16 = 1;
    }
    if (tmp___16) {
      goto out;
    } else {
      {
      tmp___17 = gid_valid(data.gid);
      }
      if (tmp___17) {
        tmp___18 = 0;
      } else {
        tmp___18 = 1;
      }
      if (tmp___18) {
        goto out;
      } else {
      }
    }
  }
  {
  sock = sockfd_lookup((int )data.ncp_fd, & error);
  }
  if ((unsigned long )sock == (unsigned long )((struct socket *)0)) {
    goto out;
  } else {
  }
  if ((int )sock->type == 1) {
    default_bufsize = 61440;
  } else {
    default_bufsize = 1024;
  }
  {
  sb->s_flags = sb->s_flags | 2048UL;
  sb->s_maxbytes = 4294967295LL;
  sb->s_blocksize = 1024UL;
  sb->s_blocksize_bits = 10U;
  sb->s_magic = 22092UL;
  sb->s_op = & ncp_sops;
  sb->s_d_op = & ncp_dentry_operations;
  sb->s_bdi = & server->bdi;
  server = NCP_SBP((struct super_block const *)sb);
  memset((void *)server, 0, 3216UL);
  error = bdi_setup_and_register(& server->bdi, (char *)"ncpfs");
  }
  if (error != 0) {
    goto out_fput;
  } else {
  }
  server->ncp_sock = sock;
  if (data.info_fd != -1) {
    {
    tmp___19 = sockfd_lookup(data.info_fd, & error);
    info_sock = tmp___19;
    }
    if ((unsigned long )info_sock == (unsigned long )((struct socket *)0)) {
      goto out_bdi;
    } else {
    }
    server->info_sock = info_sock;
    error = -77;
    if ((int )info_sock->type != 1) {
      goto out_fput2;
    } else {
    }
  } else {
  }
  {
  __mutex_init(& server->mutex, "&server->mutex", & __key);
  server->packet = (unsigned char *)0U;
  __mutex_init(& server->root_setup_lock, "&server->root_setup_lock", & __key___0);
  __init_rwsem(& server->auth_rwsem, "&server->auth_rwsem", & __key___1);
  server->auth.auth_type = 0;
  server->m = data;
  }
  if (server->m.time_out == 0U) {
    {
    server->m.time_out = 10U;
    printk("\016ncpfs: You need to recompile your ncpfs utils..\n");
    }
  } else {
  }
  {
  server->m.time_out = (server->m.time_out * 250U) / 100U;
  server->m.file_mode = (umode_t )(((int )((short )server->m.file_mode) & 511) | -32768);
  server->m.dir_mode = (umode_t )(((int )((short )server->m.dir_mode) & 511) | 16384);
  server->nls_vol = load_nls_default();
  server->nls_io = load_nls_default();
  atomic_set(& server->dentry_ttl, 0);
  INIT_LIST_HEAD(& server->tx.requests);
  __mutex_init(& server->rcv.creq_mutex, "&server->rcv.creq_mutex", & __key___2);
  server->tx.creq = (struct ncp_request_reply *)0;
  server->rcv.creq = (struct ncp_request_reply *)0;
  init_timer_key(& server->timeout_tm, 0U, "(&server->timeout_tm)", & __key___3);
  error = -12;
  server->packet_size = 131072;
  tmp___20 = ldv_vmalloc_130(131072UL);
  server->packet = (unsigned char *)tmp___20;
  }
  if ((unsigned long )server->packet == (unsigned long )((unsigned char *)0U)) {
    goto out_nls;
  } else {
  }
  {
  tmp___21 = ldv_vmalloc_131(131072UL);
  server->txbuf = (unsigned char *)tmp___21;
  }
  if ((unsigned long )server->txbuf == (unsigned long )((unsigned char *)0U)) {
    goto out_packet;
  } else {
  }
  {
  tmp___22 = ldv_vmalloc_132(131072UL);
  server->rxbuf = (unsigned char *)tmp___22;
  }
  if ((unsigned long )server->rxbuf == (unsigned long )((unsigned char *)0U)) {
    goto out_txbuf;
  } else {
  }
  {
  lock_sock(sock->sk);
  server->data_ready = (sock->sk)->sk_data_ready;
  server->write_space = (sock->sk)->sk_write_space;
  server->error_report = (sock->sk)->sk_error_report;
  (sock->sk)->sk_user_data = (void *)server;
  (sock->sk)->sk_data_ready = & ncp_tcp_data_ready;
  (sock->sk)->sk_error_report = & ncp_tcp_error_report;
  }
  if ((int )sock->type == 1) {
    {
    server->rcv.ptr = (unsigned char *)(& server->rcv.buf);
    server->rcv.len = 10UL;
    server->rcv.state = 0U;
    __init_work(& server->rcv.tq, 0);
    __constr_expr_0.counter = 137438953408L;
    server->rcv.tq.data = __constr_expr_0;
    lockdep_init_map(& server->rcv.tq.lockdep_map, "(&server->rcv.tq)", & __key___4,
                     0);
    INIT_LIST_HEAD(& server->rcv.tq.entry);
    server->rcv.tq.func = & ncp_tcp_rcv_proc;
    __init_work(& server->tx.tq, 0);
    __constr_expr_1.counter = 137438953408L;
    server->tx.tq.data = __constr_expr_1;
    lockdep_init_map(& server->tx.tq.lockdep_map, "(&server->tx.tq)", & __key___5,
                     0);
    INIT_LIST_HEAD(& server->tx.tq.entry);
    server->tx.tq.func = & ncp_tcp_tx_proc;
    (sock->sk)->sk_write_space = & ncp_tcp_write_space;
    }
  } else {
    {
    __init_work(& server->rcv.tq, 0);
    __constr_expr_2.counter = 137438953408L;
    server->rcv.tq.data = __constr_expr_2;
    lockdep_init_map(& server->rcv.tq.lockdep_map, "(&server->rcv.tq)", & __key___6,
                     0);
    INIT_LIST_HEAD(& server->rcv.tq.entry);
    server->rcv.tq.func = & ncpdgram_rcv_proc;
    __init_work(& server->timeout_tq, 0);
    __constr_expr_3.counter = 137438953408L;
    server->timeout_tq.data = __constr_expr_3;
    lockdep_init_map(& server->timeout_tq.lockdep_map, "(&server->timeout_tq)", & __key___7,
                     0);
    INIT_LIST_HEAD(& server->timeout_tq.entry);
    server->timeout_tq.func = & ncpdgram_timeout_proc;
    server->timeout_tm.data = (unsigned long )server;
    server->timeout_tm.function = & ncpdgram_timeout_call;
    }
  }
  {
  ldv_release_sock_133(sock->sk);
  ncp_lock_server(server);
  error = ncp_connect(server);
  ncp_unlock_server(server);
  }
  if (error < 0) {
    goto out_rxbuf;
  } else {
  }
  {
  error = -90;
  tmp___27 = ncp_negotiate_size_and_options(server, default_bufsize, 0, & server->buffer_size,
                                            & options);
  }
  if (tmp___27 == 0) {
    if (options != 0) {
      {
      tmp___25 = ncp_negotiate_size_and_options(server, default_bufsize, options & 2,
                                                & server->buffer_size, & options);
      }
      if (tmp___25 != 0) {
        goto out_disconnect;
      } else {
      }
    } else {
    }
    {
    ncp_lock_server(server);
    }
    if ((options & 2) != 0) {
      server->sign_wanted = 1;
    } else {
    }
    {
    ncp_unlock_server(server);
    }
  } else {
    {
    tmp___26 = ncp_negotiate_buffersize(server, default_bufsize, & server->buffer_size);
    }
    if (tmp___26 != 0) {
      goto out_disconnect;
    } else {
    }
  }
  {
  memset((void *)(& finfo), 0, 376UL);
  finfo.i.attributes = 16U;
  finfo.i.dataStreamSize = 0U;
  finfo.i.dirEntNum = 0U;
  finfo.i.DosDirNum = 0U;
  finfo.i.NSCreator = 0U;
  finfo.volume = 256U;
  finfo.i.modifyTime = 0U;
  finfo.i.creationTime = finfo.i.modifyTime;
  finfo.i.lastAccessDate = 3105U;
  finfo.i.modifyDate = finfo.i.lastAccessDate;
  finfo.i.creationDate = finfo.i.modifyDate;
  finfo.i.nameLen = 0U;
  finfo.i.entryName[0] = 0U;
  finfo.opened = 0;
  finfo.ino = 2UL;
  server->name_space[finfo.volume] = 0U;
  error = -12;
  root_inode = ncp_iget(sb, & finfo);
  }
  if ((unsigned long )root_inode == (unsigned long )((struct inode *)0)) {
    goto out_disconnect;
  } else {
  }
  {
  sb->s_root = d_make_root(root_inode);
  }
  if ((unsigned long )sb->s_root == (unsigned long )((struct dentry *)0)) {
    goto out_disconnect;
  } else {
  }
  return (0);
  out_disconnect:
  {
  ncp_lock_server(server);
  ncp_disconnect(server);
  ncp_unlock_server(server);
  }
  out_rxbuf:
  {
  ncp_stop_tasks(server);
  vfree((void const *)server->rxbuf);
  }
  out_txbuf:
  {
  vfree((void const *)server->txbuf);
  }
  out_packet:
  {
  vfree((void const *)server->packet);
  }
  out_nls:
  {
  unload_nls(server->nls_io);
  unload_nls(server->nls_vol);
  mutex_destroy(& server->rcv.creq_mutex);
  mutex_destroy(& server->root_setup_lock);
  mutex_destroy(& server->mutex);
  }
  out_fput2: ;
  if ((unsigned long )server->info_sock != (unsigned long )((struct socket *)0)) {
    {
    fput((server->info_sock)->file);
    }
  } else {
  }
  out_bdi:
  {
  bdi_destroy(& server->bdi);
  }
  out_fput:
  {
  fput(sock->file);
  }
  out:
  {
  put_pid(data.wdog_pid);
  sb->s_fs_info = (void *)0;
  kfree((void const *)server);
  }
  return (error);
}
}
static void delayed_free(struct callback_head *p )
{
  struct ncp_server *server ;
  struct callback_head const *__mptr ;
  {
  {
  __mptr = (struct callback_head const *)p;
  server = (struct ncp_server *)__mptr;
  unload_nls(server->nls_vol);
  unload_nls(server->nls_io);
  kfree((void const *)server);
  }
  return;
}
}
static void ncp_put_super(struct super_block *sb )
{
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)sb);
  server = tmp;
  ncp_lock_server(server);
  ncp_disconnect(server);
  ncp_unlock_server(server);
  ncp_stop_tasks(server);
  mutex_destroy(& server->rcv.creq_mutex);
  mutex_destroy(& server->root_setup_lock);
  mutex_destroy(& server->mutex);
  }
  if ((unsigned long )server->info_sock != (unsigned long )((struct socket *)0)) {
    {
    fput((server->info_sock)->file);
    }
  } else {
  }
  {
  fput((server->ncp_sock)->file);
  kill_pid(server->m.wdog_pid, 15, 1);
  put_pid(server->m.wdog_pid);
  bdi_destroy(& server->bdi);
  kfree((void const *)server->priv.data);
  kfree((void const *)server->auth.object_name);
  vfree((void const *)server->rxbuf);
  vfree((void const *)server->txbuf);
  vfree((void const *)server->packet);
  ldv_call_rcu_sched_134(& server->rcu, & delayed_free);
  }
  return;
}
}
static int ncp_statfs(struct dentry *dentry , struct kstatfs *buf )
{
  struct dentry *d ;
  struct inode *i ;
  struct ncp_inode_info *ni ;
  struct ncp_server *s ;
  struct ncp_volume_info vi ;
  struct super_block *sb ;
  int err ;
  __u8 dh ;
  {
  sb = dentry->d_sb;
  d = sb->s_root;
  if ((unsigned long )d == (unsigned long )((struct dentry *)0)) {
    goto dflt;
  } else {
  }
  i = d->d_inode;
  if ((unsigned long )i == (unsigned long )((struct inode *)0)) {
    goto dflt;
  } else {
  }
  {
  ni = NCP_FINFO((struct inode const *)i);
  }
  if ((unsigned long )ni == (unsigned long )((struct ncp_inode_info *)0)) {
    goto dflt;
  } else {
  }
  {
  s = NCP_SBP((struct super_block const *)sb);
  }
  if ((unsigned long )s == (unsigned long )((struct ncp_server *)0)) {
    goto dflt;
  } else {
  }
  if ((unsigned int )s->m.mounted_vol[0] == 0U) {
    goto dflt;
  } else {
  }
  {
  err = ncp_dirhandle_alloc(s, (int )ni->volNumber, ni->DosDirNum, & dh);
  }
  if (err != 0) {
    goto dflt;
  } else {
  }
  {
  err = ncp_get_directory_info(s, (int )dh, & vi);
  ncp_dirhandle_free(s, (int )dh);
  }
  if (err != 0) {
    goto dflt;
  } else {
  }
  buf->f_type = 22092L;
  buf->f_bsize = (long )((int )vi.sectors_per_block * 512);
  buf->f_blocks = (u64 )vi.total_blocks;
  buf->f_bfree = (u64 )vi.free_blocks;
  buf->f_bavail = (u64 )vi.free_blocks;
  buf->f_files = (u64 )vi.total_dir_entries;
  buf->f_ffree = (u64 )vi.available_dir_entries;
  buf->f_namelen = 12L;
  return (0);
  dflt:
  buf->f_type = 22092L;
  buf->f_bsize = 512L;
  buf->f_blocks = 0ULL;
  buf->f_bfree = 0ULL;
  buf->f_bavail = 0ULL;
  buf->f_namelen = 12L;
  return (0);
}
}
int ncp_notify_change(struct dentry *dentry , struct iattr *attr )
{
  struct inode *inode ;
  int result ;
  __le32 info_mask ;
  struct nw_modify_dos_info info ;
  struct ncp_server *server ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  umode_t newmode ;
  struct ncp_inode_info *tmp___3 ;
  struct ncp_inode_info *tmp___4 ;
  struct iattr tmpattr ;
  struct ncp_inode_info *tmp___5 ;
  int tmp___6 ;
  int written ;
  struct ncp_inode_info *tmp___8 ;
  struct ncp_server *tmp___9 ;
  loff_t tmp___10 ;
  __le16 dummy ;
  struct ncp_server *tmp___11 ;
  struct ncp_inode_info *tmp___12 ;
  {
  {
  inode = dentry->d_inode;
  result = 0;
  result = -5;
  server = NCP_SBP((struct super_block const *)inode->i_sb);
  }
  if ((unsigned long )server == (unsigned long )((struct ncp_server *)0)) {
    goto out;
  } else {
  }
  result = -1;
  if (((dentry->d_inode)->i_flags & 16U) != 0U) {
    goto out;
  } else {
  }
  {
  ncp_age_dentry(server, dentry);
  result = inode_change_ok((struct inode const *)inode, attr);
  }
  if (result < 0) {
    goto out;
  } else {
  }
  result = -1;
  if ((attr->ia_valid & 2U) != 0U) {
    {
    tmp = uid_eq(attr->ia_uid, server->m.uid);
    }
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      goto out;
    } else {
    }
  } else {
  }
  if ((attr->ia_valid & 4U) != 0U) {
    {
    tmp___1 = gid_eq(attr->ia_gid, server->m.gid);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      goto out;
    } else {
    }
  } else {
  }
  if ((int )attr->ia_valid & 1 && ((int )attr->ia_mode & -49664) != 0) {
    goto out;
  } else {
  }
  {
  info_mask = 0U;
  memset((void *)(& info), 0, 38UL);
  }
  if ((int )attr->ia_valid & 1) {
    newmode = attr->ia_mode;
    info_mask = info_mask | 2U;
    if (((int )inode->i_mode & 61440) == 16384) {
      newmode = (umode_t )((int )newmode & (int )server->m.dir_mode);
    } else
    if ((server->m.flags & 32UL) != 0UL) {
      if ((((int )newmode & ~ ((int )server->m.file_mode)) & 73) != 0) {
        info.attributes = info.attributes | 132U;
      } else
      if ((((int )newmode & ~ ((int )server->m.file_mode)) & 292) != 0) {
        info.attributes = info.attributes | 128U;
      } else {
      }
    } else {
      newmode = (umode_t )((int )newmode & (int )server->m.file_mode);
    }
    if (((int )newmode & 146) != 0) {
      info.attributes = info.attributes & 4294574078U;
    } else {
      info.attributes = info.attributes | 393217U;
    }
    {
    tmp___5 = NCP_FINFO((struct inode const *)inode);
    tmp___6 = ncp_is_nfs_extras(server, (unsigned int )tmp___5->volNumber);
    }
    if (tmp___6 != 0) {
      {
      tmp___3 = NCP_FINFO((struct inode const *)inode);
      tmp___4 = NCP_FINFO((struct inode const *)inode);
      result = ncp_modify_nfs_info(server, (int )tmp___4->volNumber, tmp___3->dirEntNum,
                                   (__u32 )attr->ia_mode, 0U);
      }
      if (result != 0) {
        goto out;
      } else {
      }
      {
      info.attributes = info.attributes & 4294967163U;
      tmpattr.ia_valid = 1U;
      tmpattr.ia_mode = attr->ia_mode;
      setattr_copy(inode, (struct iattr const *)(& tmpattr));
      mark_inode_dirty(inode);
      }
    } else {
    }
  } else {
  }
  if ((attr->ia_valid & 8U) != 0U) {
    {
    result = ncp_make_open(inode, 1);
    }
    if (result < 0) {
      result = -13;
      goto out;
    } else {
    }
    {
    tmp___8 = NCP_FINFO((struct inode const *)inode);
    tmp___9 = NCP_SBP((struct super_block const *)inode->i_sb);
    ncp_write_kernel(tmp___9, (char const *)(& tmp___8->file_handle), (__u32 )attr->ia_size,
                     0, "", & written);
    ncp_inode_close___0(inode);
    result = ncp_make_closed(inode);
    }
    if (result != 0) {
      goto out;
    } else {
    }
    {
    tmp___10 = i_size_read((struct inode const *)inode);
    }
    if (attr->ia_size != tmp___10) {
      {
      truncate_setsize(inode, attr->ia_size);
      mark_inode_dirty(inode);
      }
    } else {
    }
  } else {
  }
  if ((attr->ia_valid & 64U) != 0U) {
    {
    info_mask = info_mask | 12U;
    ncp_date_unix2dos((int )attr->ia_ctime.tv_sec, & info.creationTime, & info.creationDate);
    }
  } else {
  }
  if ((attr->ia_valid & 32U) != 0U) {
    {
    info_mask = info_mask | 768U;
    ncp_date_unix2dos((int )attr->ia_mtime.tv_sec, & info.modifyTime, & info.modifyDate);
    }
  } else {
  }
  if ((attr->ia_valid & 16U) != 0U) {
    {
    info_mask = info_mask | 2048U;
    ncp_date_unix2dos((int )attr->ia_atime.tv_sec, & dummy, & info.lastAccessDate);
    }
  } else {
  }
  if (info_mask != 0U) {
    {
    tmp___11 = NCP_SBP((struct super_block const *)inode->i_sb);
    result = ncp_modify_file_or_subdir_dos_info(tmp___11, inode, info_mask, (struct nw_modify_dos_info const *)(& info));
    }
    if (result != 0) {
      if (info_mask == 12U) {
        result = 0;
      } else {
        goto out;
      }
    } else {
    }
    if (result == 0 && (info_mask & 2U) != 0U) {
      {
      tmp___12 = NCP_FINFO((struct inode const *)inode);
      tmp___12->nwattr = info.attributes;
      }
    } else {
    }
  } else {
  }
  if (result != 0) {
    goto out;
  } else {
  }
  {
  setattr_copy(inode, (struct iattr const *)attr);
  mark_inode_dirty(inode);
  }
  out: ;
  if (result > 0) {
    result = -13;
  } else {
  }
  return (result);
}
}
static struct dentry *ncp_mount(struct file_system_type *fs_type , int flags , char const *dev_name___0 ,
                                void *data )
{
  struct dentry *tmp ;
  {
  {
  tmp = mount_nodev(fs_type, flags, data, & ncp_fill_super);
  }
  return (tmp);
}
}
static struct file_system_type ncp_fs_type =
     {"ncpfs", 2, & ncp_mount, & kill_anon_super, & __this_module, 0, {0}, {{{(char)0},
                                                                           {(char)0},
                                                                           {(char)0},
                                                                           {(char)0},
                                                                           {(char)0},
                                                                           {(char)0},
                                                                           {(char)0},
                                                                           {(char)0}}},
    {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
      {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                     {(char)0}, {(char)0}}}, {{{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}},
                                              {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}},
                                              {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
      {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                     {(char)0}, {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}};
static int init_ncp_fs(void)
{
  int err ;
  {
  {
  err = init_inodecache();
  }
  if (err != 0) {
    goto out1;
  } else {
  }
  {
  err = ldv_register_filesystem_135(& ncp_fs_type);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  return (0);
  out:
  {
  destroy_inodecache();
  }
  out1: ;
  return (err);
}
}
static void exit_ncp_fs(void)
{
  {
  {
  ldv_unregister_filesystem_136(& ncp_fs_type);
  destroy_inodecache();
  }
  return;
}
}
void ldv_EMGentry_exit_exit_ncp_fs_13_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_init_ncp_fs_13_17(int (*arg0)(void) ) ;
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_deregister_11_1(struct file_system_type *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_11_13_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_5_13_5(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_6_13_6(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_7_13_7(void) ;
void ldv_dispatch_deregister_file_operations_instance_4_13_8(void) ;
void ldv_dispatch_register_12_2(struct file_system_type *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_11_13_9(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_5_13_10(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_6_13_11(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_7_13_12(void) ;
void ldv_dispatch_register_file_operations_instance_4_13_13(void) ;
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct file * , struct page * ) ,
                                                  struct file *arg1 , struct page *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_19(void (*arg0)(struct dentry * ,
                                                                struct nameidata * ,
                                                                void * ) , struct dentry *arg1 ,
                                                   struct nameidata *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_20(int (*arg0)(struct dentry * , char * ,
                                                               int ) , struct dentry *arg1 ,
                                                   char *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_27(int (*arg0)(struct dentry * , struct iattr * ) ,
                                                   struct dentry *arg1 , struct iattr *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_9(void *(*arg0)(struct dentry * ,
                                                                struct nameidata * ) ,
                                                  struct dentry *arg1 , struct nameidata *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_10(void (*arg0)(struct super_block * ) ,
                                                   struct super_block *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_11(struct dentry *(*arg0)(struct file_system_type * ,
                                                                          int , char * ,
                                                                          void * ) ,
                                                   struct file_system_type *arg1 ,
                                                   int arg2 , char *arg3 , void *arg4 ) ;
void ldv_dummy_resourceless_instance_callback_5_14(void (*arg0)(struct super_block * ) ,
                                                   struct super_block *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_15(int (*arg0)(struct super_block * ,
                                                               int * , char * ) ,
                                                   struct super_block *arg1 , int *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_18(int (*arg0)(struct seq_file * ,
                                                               struct dentry * ) ,
                                                   struct seq_file *arg1 , struct dentry *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_19(int (*arg0)(struct dentry * , struct kstatfs * ) ,
                                                   struct dentry *arg1 , struct kstatfs *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(struct inode *(*arg0)(struct super_block * ) ,
                                                  struct super_block *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_7(void (*arg0)(struct inode * ) ,
                                                  struct inode *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_8(int (*arg0)(struct inode * ) , struct inode *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_9(void (*arg0)(struct inode * ) ,
                                                  struct inode *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct vm_area_struct * ,
                                                              struct vm_fault * ) ,
                                                  struct vm_area_struct *arg1 , struct vm_fault *arg2 ) ;
void ldv_entry_EMGentry_13(void *arg0 ) ;
int main(void) ;
int ldv_register_filesystem(int arg0 , struct file_system_type *arg1 ) ;
void ldv_struct_address_space_operations_dummy_resourceless_instance_2(void *arg0 ) ;
void ldv_struct_dentry_operations_dummy_resourceless_instance_3(void *arg0 ) ;
void ldv_struct_inode_operations_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_struct_super_operations_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_vm_operations_struct_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_timer_instance_callback_7_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_7(void *arg0 ) ;
int ldv_unregister_filesystem(int arg0 , struct file_system_type *arg1 ) ;
struct ldv_thread ldv_thread_13 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
void ldv_EMGentry_exit_exit_ncp_fs_13_2(void (*arg0)(void) )
{
  {
  {
  exit_ncp_fs();
  }
  return;
}
}
int ldv_EMGentry_init_init_ncp_fs_13_17(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = init_ncp_fs();
  }
  return (tmp);
}
}
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_9_timer_list_timer_list ;
  {
  ldv_9_timer_list_timer_list = arg1;
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_deregister_11_1(struct file_system_type *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_11_13_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_5_13_5(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_6_13_6(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_7_13_7(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_4_13_8(void)
{
  {
  return;
}
}
void ldv_dispatch_register_12_2(struct file_system_type *arg0 )
{
  struct ldv_struct_dummy_resourceless_instance_5 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_5 = (struct ldv_struct_dummy_resourceless_instance_5 *)tmp;
  cf_arg_5->arg0 = arg0;
  ldv_struct_super_operations_dummy_resourceless_instance_5((void *)cf_arg_5);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_11_13_9(void)
{
  struct ldv_struct_EMGentry_13 *cf_arg_6 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_EMGentry_13 *)tmp;
  ldv_struct_vm_operations_struct_dummy_resourceless_instance_6((void *)cf_arg_6);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_5_13_10(void)
{
  struct ldv_struct_EMGentry_13 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_EMGentry_13 *)tmp;
  ldv_struct_address_space_operations_dummy_resourceless_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_6_13_11(void)
{
  struct ldv_struct_EMGentry_13 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_EMGentry_13 *)tmp;
  ldv_struct_dentry_operations_dummy_resourceless_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_7_13_12(void)
{
  struct ldv_struct_EMGentry_13 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_EMGentry_13 *)tmp;
  ldv_struct_inode_operations_dummy_resourceless_instance_4((void *)cf_arg_4);
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_4_13_13(void)
{
  struct ldv_struct_EMGentry_13 *cf_arg_0 ;
  struct ldv_struct_EMGentry_13 *cf_arg_1 ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_0 = (struct ldv_struct_EMGentry_13 *)tmp;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_1 = (struct ldv_struct_EMGentry_13 *)tmp___0;
  ldv_file_operations_file_operations_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_19(void (*arg0)(struct dentry * ,
                                                                struct nameidata * ,
                                                                void * ) , struct dentry *arg1 ,
                                                   struct nameidata *arg2 , void *arg3 )
{
  {
  {
  page_put_link(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_20(int (*arg0)(struct dentry * , char * ,
                                                               int ) , struct dentry *arg1 ,
                                                   char *arg2 , int arg3 )
{
  {
  {
  generic_readlink(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_27(int (*arg0)(struct dentry * , struct iattr * ) ,
                                                   struct dentry *arg1 , struct iattr *arg2 )
{
  {
  {
  ncp_notify_change(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_9(void *(*arg0)(struct dentry * ,
                                                                struct nameidata * ) ,
                                                  struct dentry *arg1 , struct nameidata *arg2 )
{
  {
  {
  page_follow_link_light(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_10(void (*arg0)(struct super_block * ) ,
                                                   struct super_block *arg1 )
{
  {
  {
  kill_anon_super(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_11(struct dentry *(*arg0)(struct file_system_type * ,
                                                                          int , char * ,
                                                                          void * ) ,
                                                   struct file_system_type *arg1 ,
                                                   int arg2 , char *arg3 , void *arg4 )
{
  {
  {
  ncp_mount(arg1, arg2, (char const *)arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_14(void (*arg0)(struct super_block * ) ,
                                                   struct super_block *arg1 )
{
  {
  {
  ncp_put_super(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_15(int (*arg0)(struct super_block * ,
                                                               int * , char * ) ,
                                                   struct super_block *arg1 , int *arg2 ,
                                                   char *arg3 )
{
  {
  {
  ncp_remount(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_18(int (*arg0)(struct seq_file * ,
                                                               struct dentry * ) ,
                                                   struct seq_file *arg1 , struct dentry *arg2 )
{
  {
  {
  ncp_show_options(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_19(int (*arg0)(struct dentry * , struct kstatfs * ) ,
                                                   struct dentry *arg1 , struct kstatfs *arg2 )
{
  {
  {
  ncp_statfs(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(struct inode *(*arg0)(struct super_block * ) ,
                                                  struct super_block *arg1 )
{
  {
  {
  ncp_alloc_inode(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_7(void (*arg0)(struct inode * ) ,
                                                  struct inode *arg1 )
{
  {
  {
  ncp_destroy_inode(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_8(int (*arg0)(struct inode * ) , struct inode *arg1 )
{
  {
  {
  generic_delete_inode(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_9(void (*arg0)(struct inode * ) ,
                                                  struct inode *arg1 )
{
  {
  {
  ncp_evict_inode(arg1);
  }
  return;
}
}
void ldv_entry_EMGentry_13(void *arg0 )
{
  void (*ldv_13_exit_exit_ncp_fs_default)(void) ;
  int (*ldv_13_init_init_ncp_fs_default)(void) ;
  int ldv_13_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_13_ret_default = ldv_EMGentry_init_init_ncp_fs_13_17(ldv_13_init_init_ncp_fs_default);
  ldv_13_ret_default = ldv_ldv_post_init_137(ldv_13_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_13_ret_default != 0);
    ldv_ldv_check_final_state_138();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_13_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_file_operations_instance_4_13_13();
      ldv_dispatch_register_dummy_resourceless_instance_7_13_12();
      ldv_dispatch_register_dummy_resourceless_instance_6_13_11();
      ldv_dispatch_register_dummy_resourceless_instance_5_13_10();
      ldv_dispatch_register_dummy_resourceless_instance_11_13_9();
      ldv_dispatch_deregister_file_operations_instance_4_13_8();
      ldv_dispatch_deregister_dummy_resourceless_instance_7_13_7();
      ldv_dispatch_deregister_dummy_resourceless_instance_6_13_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_5_13_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_11_13_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_exit_ncp_fs_13_2(ldv_13_exit_exit_ncp_fs_default);
    ldv_ldv_check_final_state_139();
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
  ldv_ldv_initialize_140();
  ldv_entry_EMGentry_13((void *)0);
  }
return 0;
}
}
void ldv_file_operations_instance_callback_0_22(int (*arg0)(struct file * , long long ,
                                                            long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                long long arg3 , int arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_29(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_25(int (*arg0)(struct file * , struct dir_context * ) ,
                                                struct file *arg1 , struct dir_context *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
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
  tmp = (*arg0)(arg1, arg2);
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
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
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
int ldv_register_filesystem(int arg0 , struct file_system_type *arg1 )
{
  struct file_system_type *ldv_12_struct_file_system_type_struct_file_system_type ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_12_struct_file_system_type_struct_file_system_type = arg1;
    ldv_dispatch_register_12_2(ldv_12_struct_file_system_type_struct_file_system_type);
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
void ldv_struct_address_space_operations_dummy_resourceless_instance_2(void *arg0 )
{
  int (*ldv_2_callback_readpage)(struct file * , struct page * ) ;
  struct file *ldv_2_container_struct_file_ptr ;
  struct page *ldv_2_container_struct_page_ptr ;
  int tmp ;
  {
  goto ldv_call_2;
  return;
  ldv_call_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_2_3(ldv_2_callback_readpage, ldv_2_container_struct_file_ptr,
                                                 ldv_2_container_struct_page_ptr);
    }
    goto ldv_call_2;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_dentry_operations_dummy_resourceless_instance_3(void *arg0 )
{
  int (*ldv_3_callback_d_compare)(struct dentry * , struct dentry * , unsigned int ,
                                  char * , struct qstr * ) ;
  int (*ldv_3_callback_d_delete)(struct dentry * ) ;
  int (*ldv_3_callback_d_hash)(struct dentry * , struct qstr * ) ;
  void (*ldv_3_callback_d_prune)(struct dentry * ) ;
  int (*ldv_3_callback_d_revalidate)(struct dentry * , unsigned int ) ;
  struct dentry *ldv_3_container_struct_dentry_ptr ;
  struct qstr *ldv_3_container_struct_qstr_ptr ;
  unsigned int ldv_3_ldv_param_12_1_default ;
  struct dentry *ldv_3_ldv_param_3_1_default ;
  unsigned int ldv_3_ldv_param_3_2_default ;
  char *ldv_3_ldv_param_3_3_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_3;
  return;
  ldv_call_3:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(320UL);
    ldv_3_ldv_param_3_1_default = (struct dentry *)tmp;
    tmp___0 = ldv_xmalloc(1UL);
    ldv_3_ldv_param_3_3_default = (char *)tmp___0;
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
    goto switch_default;
    case_1:
    {
    ldv_dummy_resourceless_instance_callback_3_12(ldv_3_callback_d_revalidate, ldv_3_container_struct_dentry_ptr,
                                                  ldv_3_ldv_param_12_1_default);
    }
    goto ldv_51643;
    case_2:
    {
    ldv_dummy_resourceless_instance_callback_3_11(ldv_3_callback_d_prune, ldv_3_container_struct_dentry_ptr);
    }
    goto ldv_51643;
    case_3:
    {
    ldv_dummy_resourceless_instance_callback_3_10(ldv_3_callback_d_hash, ldv_3_container_struct_dentry_ptr,
                                                  ldv_3_container_struct_qstr_ptr);
    }
    goto ldv_51643;
    case_4:
    {
    ldv_dummy_resourceless_instance_callback_3_9(ldv_3_callback_d_delete, ldv_3_container_struct_dentry_ptr);
    }
    goto ldv_51643;
    case_5:
    {
    ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_d_compare, ldv_3_container_struct_dentry_ptr,
                                                 ldv_3_ldv_param_3_1_default, ldv_3_ldv_param_3_2_default,
                                                 ldv_3_ldv_param_3_3_default, ldv_3_container_struct_qstr_ptr);
    }
    goto ldv_51643;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_51643:
    {
    ldv_free((void *)ldv_3_ldv_param_3_1_default);
    ldv_free((void *)ldv_3_ldv_param_3_3_default);
    }
    goto ldv_call_3;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_inode_operations_dummy_resourceless_instance_4(void *arg0 )
{
  int (*ldv_4_callback_create)(struct inode * , struct dentry * , unsigned short ,
                               _Bool ) ;
  void *(*ldv_4_callback_follow_link)(struct dentry * , struct nameidata * ) ;
  struct dentry *(*ldv_4_callback_lookup)(struct inode * , struct dentry * , unsigned int ) ;
  int (*ldv_4_callback_mkdir)(struct inode * , struct dentry * , unsigned short ) ;
  int (*ldv_4_callback_mknod)(struct inode * , struct dentry * , unsigned short ,
                              unsigned int ) ;
  void (*ldv_4_callback_put_link)(struct dentry * , struct nameidata * , void * ) ;
  int (*ldv_4_callback_readlink)(struct dentry * , char * , int ) ;
  int (*ldv_4_callback_rename)(struct inode * , struct dentry * , struct inode * ,
                               struct dentry * ) ;
  int (*ldv_4_callback_rmdir)(struct inode * , struct dentry * ) ;
  int (*ldv_4_callback_setattr)(struct dentry * , struct iattr * ) ;
  int (*ldv_4_callback_symlink)(struct inode * , struct dentry * , char * ) ;
  int (*ldv_4_callback_unlink)(struct inode * , struct dentry * ) ;
  struct dentry *ldv_4_container_struct_dentry_ptr ;
  struct iattr *ldv_4_container_struct_iattr_ptr ;
  struct inode *ldv_4_container_struct_inode_ptr ;
  struct nameidata *ldv_4_container_struct_nameidata_ptr ;
  unsigned int ldv_4_ldv_param_10_2_default ;
  unsigned short ldv_4_ldv_param_13_2_default ;
  unsigned short ldv_4_ldv_param_16_2_default ;
  unsigned int ldv_4_ldv_param_16_3_default ;
  char *ldv_4_ldv_param_20_1_default ;
  int ldv_4_ldv_param_20_2_default ;
  struct inode *ldv_4_ldv_param_23_2_default ;
  struct dentry *ldv_4_ldv_param_23_3_default ;
  char *ldv_4_ldv_param_28_2_default ;
  unsigned short ldv_4_ldv_param_3_2_default ;
  _Bool ldv_4_ldv_param_3_3_default ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  goto ldv_call_4;
  return;
  ldv_call_4:
  {
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
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
    goto switch_default;
    case_1:
    {
    ldv_dummy_resourceless_instance_callback_4_31(ldv_4_callback_unlink, ldv_4_container_struct_inode_ptr,
                                                  ldv_4_container_struct_dentry_ptr);
    }
    goto ldv_51716;
    case_2:
    {
    tmp___0 = ldv_xmalloc(1UL);
    ldv_4_ldv_param_28_2_default = (char *)tmp___0;
    ldv_dummy_resourceless_instance_callback_4_28(ldv_4_callback_symlink, ldv_4_container_struct_inode_ptr,
                                                  ldv_4_container_struct_dentry_ptr,
                                                  ldv_4_ldv_param_28_2_default);
    ldv_free((void *)ldv_4_ldv_param_28_2_default);
    }
    goto ldv_51716;
    case_3:
    {
    ldv_dummy_resourceless_instance_callback_4_27(ldv_4_callback_setattr, ldv_4_container_struct_dentry_ptr,
                                                  ldv_4_container_struct_iattr_ptr);
    }
    goto ldv_51716;
    case_4:
    {
    ldv_dummy_resourceless_instance_callback_4_26(ldv_4_callback_rmdir, ldv_4_container_struct_inode_ptr,
                                                  ldv_4_container_struct_dentry_ptr);
    }
    goto ldv_51716;
    case_5:
    {
    tmp___1 = ldv_xmalloc(976UL);
    ldv_4_ldv_param_23_2_default = (struct inode *)tmp___1;
    tmp___2 = ldv_xmalloc(320UL);
    ldv_4_ldv_param_23_3_default = (struct dentry *)tmp___2;
    ldv_dummy_resourceless_instance_callback_4_23(ldv_4_callback_rename, ldv_4_container_struct_inode_ptr,
                                                  ldv_4_container_struct_dentry_ptr,
                                                  ldv_4_ldv_param_23_2_default, ldv_4_ldv_param_23_3_default);
    ldv_free((void *)ldv_4_ldv_param_23_2_default);
    ldv_free((void *)ldv_4_ldv_param_23_3_default);
    }
    goto ldv_51716;
    case_6:
    {
    tmp___3 = ldv_xmalloc(1UL);
    ldv_4_ldv_param_20_1_default = (char *)tmp___3;
    ldv_dummy_resourceless_instance_callback_4_20(ldv_4_callback_readlink, ldv_4_container_struct_dentry_ptr,
                                                  ldv_4_ldv_param_20_1_default, ldv_4_ldv_param_20_2_default);
    ldv_free((void *)ldv_4_ldv_param_20_1_default);
    }
    goto ldv_51716;
    case_7:
    {
    ldv_dummy_resourceless_instance_callback_4_19(ldv_4_callback_put_link, ldv_4_container_struct_dentry_ptr,
                                                  ldv_4_container_struct_nameidata_ptr,
                                                  (void *)ldv_4_container_struct_iattr_ptr);
    }
    goto ldv_51716;
    case_8:
    {
    ldv_dummy_resourceless_instance_callback_4_16(ldv_4_callback_mknod, ldv_4_container_struct_inode_ptr,
                                                  ldv_4_container_struct_dentry_ptr,
                                                  (int )ldv_4_ldv_param_16_2_default,
                                                  ldv_4_ldv_param_16_3_default);
    }
    goto ldv_51716;
    case_9:
    {
    ldv_dummy_resourceless_instance_callback_4_13(ldv_4_callback_mkdir, ldv_4_container_struct_inode_ptr,
                                                  ldv_4_container_struct_dentry_ptr,
                                                  (int )ldv_4_ldv_param_13_2_default);
    }
    goto ldv_51716;
    case_10:
    {
    ldv_dummy_resourceless_instance_callback_4_10(ldv_4_callback_lookup, ldv_4_container_struct_inode_ptr,
                                                  ldv_4_container_struct_dentry_ptr,
                                                  ldv_4_ldv_param_10_2_default);
    }
    goto ldv_51716;
    case_11:
    {
    ldv_dummy_resourceless_instance_callback_4_9(ldv_4_callback_follow_link, ldv_4_container_struct_dentry_ptr,
                                                 ldv_4_container_struct_nameidata_ptr);
    }
    goto ldv_51716;
    case_12:
    {
    ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_create, ldv_4_container_struct_inode_ptr,
                                                 ldv_4_container_struct_dentry_ptr,
                                                 (int )ldv_4_ldv_param_3_2_default,
                                                 (int )ldv_4_ldv_param_3_3_default);
    }
    goto ldv_51716;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_51716: ;
    goto ldv_call_4;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_super_operations_dummy_resourceless_instance_5(void *arg0 )
{
  struct inode *(*ldv_5_callback_alloc_inode)(struct super_block * ) ;
  void (*ldv_5_callback_destroy_inode)(struct inode * ) ;
  int (*ldv_5_callback_drop_inode)(struct inode * ) ;
  void (*ldv_5_callback_evict_inode)(struct inode * ) ;
  void (*ldv_5_callback_kill_sb)(struct super_block * ) ;
  struct dentry *(*ldv_5_callback_mount)(struct file_system_type * , int , char * ,
                                         void * ) ;
  void (*ldv_5_callback_put_super)(struct super_block * ) ;
  int (*ldv_5_callback_remount_fs)(struct super_block * , int * , char * ) ;
  int (*ldv_5_callback_show_options)(struct seq_file * , struct dentry * ) ;
  int (*ldv_5_callback_statfs)(struct dentry * , struct kstatfs * ) ;
  struct dentry *ldv_5_container_struct_dentry_ptr ;
  struct file_system_type *ldv_5_container_struct_file_system_type ;
  struct inode *ldv_5_container_struct_inode_ptr ;
  struct kstatfs *ldv_5_container_struct_kstatfs_ptr ;
  struct seq_file *ldv_5_container_struct_seq_file_ptr ;
  struct super_block *ldv_5_container_struct_super_block_ptr ;
  int ldv_5_ldv_param_11_1_default ;
  char *ldv_5_ldv_param_11_2_default ;
  int *ldv_5_ldv_param_15_1_default ;
  char *ldv_5_ldv_param_15_2_default ;
  struct ldv_struct_dummy_resourceless_instance_5 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_5 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_5 *)0)) {
    {
    ldv_5_container_struct_file_system_type = data->arg0;
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_5_19(ldv_5_callback_statfs, ldv_5_container_struct_dentry_ptr,
                                                ldv_5_container_struct_kstatfs_ptr);
  }
  goto ldv_call_5;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_5_18(ldv_5_callback_show_options, ldv_5_container_struct_seq_file_ptr,
                                                ldv_5_container_struct_dentry_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  case_3:
  {
  tmp___0 = ldv_xmalloc(4UL);
  ldv_5_ldv_param_15_1_default = (int *)tmp___0;
  tmp___1 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_15_2_default = (char *)tmp___1;
  ldv_dummy_resourceless_instance_callback_5_15(ldv_5_callback_remount_fs, ldv_5_container_struct_super_block_ptr,
                                                ldv_5_ldv_param_15_1_default, ldv_5_ldv_param_15_2_default);
  ldv_free((void *)ldv_5_ldv_param_15_1_default);
  ldv_free((void *)ldv_5_ldv_param_15_2_default);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_5_14(ldv_5_callback_put_super, ldv_5_container_struct_super_block_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_5:
  {
  tmp___2 = ldv_xmalloc(1UL);
  ldv_5_ldv_param_11_2_default = (char *)tmp___2;
  ldv_dummy_resourceless_instance_callback_5_11(ldv_5_callback_mount, ldv_5_container_struct_file_system_type,
                                                ldv_5_ldv_param_11_1_default, ldv_5_ldv_param_11_2_default,
                                                (void *)ldv_5_container_struct_dentry_ptr);
  ldv_free((void *)ldv_5_ldv_param_11_2_default);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_5_10(ldv_5_callback_kill_sb, ldv_5_container_struct_super_block_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_5_9(ldv_5_callback_evict_inode, ldv_5_container_struct_inode_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_5_8(ldv_5_callback_drop_inode, ldv_5_container_struct_inode_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_5_7(ldv_5_callback_destroy_inode, ldv_5_container_struct_inode_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_alloc_inode, ldv_5_container_struct_super_block_ptr);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_11: ;
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
void ldv_struct_vm_operations_struct_dummy_resourceless_instance_6(void *arg0 )
{
  int (*ldv_6_callback_fault)(struct vm_area_struct * , struct vm_fault * ) ;
  struct vm_area_struct *ldv_6_container_struct_vm_area_struct_ptr ;
  struct vm_fault *ldv_6_container_struct_vm_fault_ptr ;
  int tmp ;
  {
  goto ldv_call_6;
  return;
  ldv_call_6:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_fault, ldv_6_container_struct_vm_area_struct_ptr,
                                                 ldv_6_container_struct_vm_fault_ptr);
    }
    goto ldv_call_6;
  } else {
    return;
  }
  return;
}
}
void ldv_timer_instance_callback_7_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_7(void *arg0 )
{
  struct timer_list *ldv_7_container_timer_list ;
  struct ldv_struct_timer_instance_7 *data ;
  {
  data = (struct ldv_struct_timer_instance_7 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_instance_7 *)0)) {
    {
    ldv_7_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_7_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_7_2(ldv_7_container_timer_list->function, ldv_7_container_timer_list->data);
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
int ldv_unregister_filesystem(int arg0 , struct file_system_type *arg1 )
{
  struct file_system_type *ldv_11_struct_file_system_type_struct_file_system_type ;
  {
  {
  ldv_11_struct_file_system_type_struct_file_system_type = arg1;
  ldv_dispatch_deregister_11_1(ldv_11_struct_file_system_type_struct_file_system_type);
  }
  return (arg0);
  return (arg0);
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
static void ldv_lock_sock_nested_121(struct sock *ldv_func_arg1 , int ldv_func_arg2 )
{
  {
  {
  lock_sock_nested(ldv_func_arg1, ldv_func_arg2);
  ldv_linux_net_sock_past_lock_sock_nested();
  }
  return;
}
}
static void *ldv_kmem_cache_alloc_125(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(1176UL);
  }
  return (tmp);
}
}
static void ldv_call_rcu_sched_126(struct callback_head *ldv_func_arg1 , void (*ldv_func_arg2)(struct callback_head * ) )
{
  {
  {
  ldv_check_for_read_section();
  }
  return;
}
}
static void ldv_rcu_barrier_127(void)
{
  {
  {
  ldv_check_for_read_section();
  }
  return;
}
}
static void ldv_release_sock_128(struct sock *ldv_func_arg1 )
{
  {
  {
  ldv_linux_net_sock_before_release_sock();
  release_sock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_del_timer_sync_129(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
static void *ldv_vmalloc_130(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  }
  return (tmp);
}
}
static void *ldv_vmalloc_131(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  }
  return (tmp);
}
}
static void *ldv_vmalloc_132(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_release_sock_133(struct sock *ldv_func_arg1 )
{
  {
  {
  ldv_linux_net_sock_before_release_sock();
  release_sock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_call_rcu_sched_134(struct callback_head *ldv_func_arg1 , void (*ldv_func_arg2)(struct callback_head * ) )
{
  {
  {
  ldv_check_for_read_section();
  }
  return;
}
}
static int ldv_register_filesystem_135(struct file_system_type *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_filesystem(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_filesystem(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_unregister_filesystem_136(struct file_system_type *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = unregister_filesystem(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_unregister_filesystem(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_ldv_post_init_137(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_138(void)
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
static void ldv_ldv_check_final_state_139(void)
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
static void ldv_ldv_initialize_140(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
long ldv_ptr_err(void const *ptr ) ;
static void ldv_mutex_lock_92___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_94(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_101(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_103(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_creq_mutex_of_NOT_ARG_SIGN(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_creq_mutex_of_NOT_ARG_SIGN(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_root_setup_lock_of_ncp_server(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_root_setup_lock_of_ncp_server(struct mutex *lock ) ;
__inline static struct task_struct *get_current___0(void)
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
  goto ldv_3598;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3598;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3598;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3598;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3598: ;
  return (pfo_ret__);
}
}
extern void *memdup_user(void const * , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static void atomic_dec(atomic_t *v ) ;
static void ldv_mutex_unlock_93___1(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_95(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_100(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_102(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_104(struct mutex *ldv_func_arg1 ) ;
extern int overflowuid ;
extern void down_read(struct rw_semaphore * ) ;
extern void down_write(struct rw_semaphore * ) ;
extern void up_read(struct rw_semaphore * ) ;
extern void up_write(struct rw_semaphore * ) ;
extern bool capable(int ) ;
static void *ldv_vmalloc_96(unsigned long ldv_func_arg1 ) ;
extern int inode_permission(struct inode * , int ) ;
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
__inline static void *compat_ptr(compat_uptr_t uptr )
{
  {
  return ((void *)((unsigned long )uptr));
}
}
extern int mnt_want_write_file(struct file * ) ;
extern void mnt_drop_write_file(struct file * ) ;
int ncp_request2(struct ncp_server *server , int function , void *rpl , int size ) ;
extern struct nls_table *load_nls(char * ) ;
__inline static void ncp_inode_close___1(struct inode *inode )
{
  struct ncp_inode_info *tmp ;
  {
  {
  tmp = NCP_FINFO((struct inode const *)inode);
  atomic_dec(& tmp->opened);
  }
  return;
}
}
int ncp_LogPhysicalRecord(struct ncp_server *server , char const *file_id , __u8 locktype ,
                          __u32 offset , __u32 length , __u16 timeout ) ;
int ncp_ClearPhysicalRecord(struct ncp_server *server , char const *file_id , __u32 offset ,
                            __u32 length ) ;
int ncp_mount_subdir(struct ncp_server *server , __u8 volNumber , __u8 srcNS , __le32 dirEntNum ,
                     __u32 *volume , __le32 *newDirEnt , __le32 *newDosEnt ) ;
static int ncp_get_fs_info(struct ncp_server *server , struct inode *inode , struct ncp_fs_info *arg )
{
  struct ncp_fs_info info ;
  unsigned long tmp ;
  int tmp___1 ;
  struct task_struct *tmp___2 ;
  struct ncp_inode_info *tmp___3 ;
  struct ncp_inode_info *tmp___4 ;
  unsigned long tmp___5 ;
  {
  {
  tmp = copy_from_user((void *)(& info), (void const *)arg, 40UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if (info.version != 1) {
    return (-22);
  } else {
  }
  {
  tmp___1 = debug_lockdep_rcu_enabled();
  tmp___2 = get_current___0();
  info.mounted_uid = from_kuid_munged((tmp___2->cred)->user_ns, server->m.mounted_uid);
  info.connection = (int )server->connection;
  info.buffer_size = server->buffer_size;
  tmp___3 = NCP_FINFO((struct inode const *)inode);
  info.volume_number = (int )tmp___3->volNumber;
  tmp___4 = NCP_FINFO((struct inode const *)inode);
  info.directory_id = tmp___4->DosDirNum;
  tmp___5 = copy_to_user((void *)arg, (void const *)(& info), 40UL);
  }
  if (tmp___5 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int ncp_get_fs_info_v2(struct ncp_server *server , struct inode *inode , struct ncp_fs_info_v2 *arg )
{
  struct ncp_fs_info_v2 info2 ;
  unsigned long tmp ;
  int tmp___1 ;
  struct task_struct *tmp___2 ;
  uid_t tmp___3 ;
  struct ncp_inode_info *tmp___4 ;
  struct ncp_inode_info *tmp___5 ;
  unsigned long tmp___6 ;
  {
  {
  tmp = copy_from_user((void *)(& info2), (void const *)arg, 48UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if (info2.version != 2) {
    return (-22);
  } else {
  }
  {
  tmp___1 = debug_lockdep_rcu_enabled();
  tmp___2 = get_current___0();
  tmp___3 = from_kuid_munged((tmp___2->cred)->user_ns, server->m.mounted_uid);
  info2.mounted_uid = (unsigned long )tmp___3;
  info2.connection = (unsigned int )server->connection;
  info2.buffer_size = (unsigned int )server->buffer_size;
  tmp___4 = NCP_FINFO((struct inode const *)inode);
  info2.volume_number = (unsigned int )tmp___4->volNumber;
  tmp___5 = NCP_FINFO((struct inode const *)inode);
  info2.directory_id = tmp___5->DosDirNum;
  info2.dummy3 = 0U;
  info2.dummy2 = info2.dummy3;
  info2.dummy1 = info2.dummy2;
  tmp___6 = copy_to_user((void *)arg, (void const *)(& info2), 48UL);
  }
  if (tmp___6 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int ncp_get_compat_fs_info_v2(struct ncp_server *server , struct inode *inode ,
                                     struct compat_ncp_fs_info_v2 *arg )
{
  struct compat_ncp_fs_info_v2 info2 ;
  unsigned long tmp ;
  int tmp___1 ;
  struct task_struct *tmp___2 ;
  struct ncp_inode_info *tmp___3 ;
  struct ncp_inode_info *tmp___4 ;
  unsigned long tmp___5 ;
  {
  {
  tmp = copy_from_user((void *)(& info2), (void const *)arg, 36UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if (info2.version != 2) {
    return (-22);
  } else {
  }
  {
  tmp___1 = debug_lockdep_rcu_enabled();
  tmp___2 = get_current___0();
  info2.mounted_uid = from_kuid_munged((tmp___2->cred)->user_ns, server->m.mounted_uid);
  info2.connection = (__u32 )server->connection;
  info2.buffer_size = (__u32 )server->buffer_size;
  tmp___3 = NCP_FINFO((struct inode const *)inode);
  info2.volume_number = (__u32 )tmp___3->volNumber;
  tmp___4 = NCP_FINFO((struct inode const *)inode);
  info2.directory_id = tmp___4->DosDirNum;
  info2.dummy3 = 0U;
  info2.dummy2 = info2.dummy3;
  info2.dummy1 = info2.dummy2;
  tmp___5 = copy_to_user((void *)arg, (void const *)(& info2), 36UL);
  }
  if (tmp___5 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int ncp_set_charsets(struct ncp_server *server , struct ncp_nls_ioctl *arg )
{
  struct ncp_nls_ioctl user ;
  struct nls_table *codepage ;
  struct nls_table *iocharset ;
  struct nls_table *oldset_io ;
  struct nls_table *oldset_cp ;
  int utf8 ;
  int err ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = copy_from_user((void *)(& user), (void const *)arg, 42UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  codepage = (struct nls_table *)0;
  user.codepage[20] = 0U;
  if ((unsigned int )user.codepage[0] == 0U) {
    {
    codepage = load_nls_default();
    }
  } else {
    {
    tmp___0 = strcmp((char const *)(& user.codepage), "default");
    }
    if (tmp___0 == 0) {
      {
      codepage = load_nls_default();
      }
    } else {
      {
      codepage = load_nls((char *)(& user.codepage));
      }
      if ((unsigned long )codepage == (unsigned long )((struct nls_table *)0)) {
        return (-56);
      } else {
      }
    }
  }
  iocharset = (struct nls_table *)0;
  user.iocharset[20] = 0U;
  if ((unsigned int )user.iocharset[0] == 0U) {
    {
    iocharset = load_nls_default();
    utf8 = 0;
    }
  } else {
    {
    tmp___2 = strcmp((char const *)(& user.iocharset), "default");
    }
    if (tmp___2 == 0) {
      {
      iocharset = load_nls_default();
      utf8 = 0;
      }
    } else {
      {
      tmp___1 = strcmp((char const *)(& user.iocharset), "utf8");
      }
      if (tmp___1 == 0) {
        {
        iocharset = load_nls_default();
        utf8 = 1;
        }
      } else {
        {
        iocharset = load_nls((char *)(& user.iocharset));
        }
        if ((unsigned long )iocharset == (unsigned long )((struct nls_table *)0)) {
          {
          unload_nls(codepage);
          }
          return (-56);
        } else {
        }
        utf8 = 0;
      }
    }
  }
  {
  ldv_mutex_lock_92___1(& server->root_setup_lock);
  }
  if (server->root_setuped != 0) {
    oldset_cp = codepage;
    oldset_io = iocharset;
    err = -16;
  } else {
    if (utf8 != 0) {
      server->flags = server->flags | 1U;
    } else {
      server->flags = server->flags & 4294967294U;
    }
    oldset_cp = server->nls_vol;
    server->nls_vol = codepage;
    oldset_io = server->nls_io;
    server->nls_io = iocharset;
    err = 0;
  }
  {
  ldv_mutex_unlock_93___1(& server->root_setup_lock);
  unload_nls(oldset_cp);
  unload_nls(oldset_io);
  }
  return (err);
}
}
static int ncp_get_charsets(struct ncp_server *server , struct ncp_nls_ioctl *arg )
{
  struct ncp_nls_ioctl user ;
  int len ;
  size_t tmp ;
  size_t tmp___0 ;
  unsigned long tmp___1 ;
  {
  {
  memset((void *)(& user), 0, 42UL);
  ldv_mutex_lock_94(& server->root_setup_lock);
  }
  if ((unsigned long )server->nls_vol != (unsigned long )((struct nls_table *)0) && (unsigned long )(server->nls_vol)->charset != (unsigned long )((char const *)0)) {
    {
    tmp = strlen((server->nls_vol)->charset);
    len = (int )tmp;
    }
    if (len > 20) {
      len = 20;
    } else {
    }
    {
    strncpy((char *)(& user.codepage), (server->nls_vol)->charset, (__kernel_size_t )len);
    user.codepage[len] = 0U;
    }
  } else {
  }
  if ((int )server->flags & 1) {
    {
    strcpy((char *)(& user.iocharset), "utf8");
    }
  } else
  if ((unsigned long )server->nls_io != (unsigned long )((struct nls_table *)0) && (unsigned long )(server->nls_io)->charset != (unsigned long )((char const *)0)) {
    {
    tmp___0 = strlen((server->nls_io)->charset);
    len = (int )tmp___0;
    }
    if (len > 20) {
      len = 20;
    } else {
    }
    {
    strncpy((char *)(& user.iocharset), (server->nls_io)->charset, (__kernel_size_t )len);
    user.iocharset[len] = 0U;
    }
  } else {
  }
  {
  ldv_mutex_unlock_95(& server->root_setup_lock);
  tmp___1 = copy_to_user((void *)arg, (void const *)(& user), 42UL);
  }
  if (tmp___1 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static long __ncp_ioctl(struct inode *inode , unsigned int cmd , unsigned long arg )
{
  struct ncp_server *server ;
  struct ncp_server *tmp ;
  int result ;
  struct ncp_ioctl_request request ;
  char *bouncebuffer ;
  void *argp ;
  struct compat_ncp_ioctl_request request32 ;
  unsigned long tmp___0 ;
  void *tmp___1 ;
  unsigned long tmp___2 ;
  void *tmp___3 ;
  unsigned long tmp___4 ;
  unsigned long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  __u16 uid ;
  int tmp___13 ;
  struct task_struct *tmp___14 ;
  uid_t tmp___15 ;
  int tmp___16 ;
  struct task_struct *tmp___17 ;
  uid_t tmp___18 ;
  int __ret_pu ;
  __u16 __pu_val ;
  uid_t uid___0 ;
  int tmp___19 ;
  struct task_struct *tmp___20 ;
  uid_t tmp___21 ;
  int __ret_pu___0 ;
  __u32 __pu_val___0 ;
  uid_t uid___1 ;
  int tmp___22 ;
  struct task_struct *tmp___23 ;
  uid_t tmp___24 ;
  int __ret_pu___1 ;
  u64 __pu_val___1 ;
  struct ncp_setroot_ioctl sr ;
  struct dentry *dentry ;
  struct inode *s_inode ;
  struct ncp_inode_info *tmp___25 ;
  struct ncp_inode_info *tmp___26 ;
  unsigned long tmp___29 ;
  struct ncp_setroot_ioctl sr___0 ;
  __u32 vnum ;
  __le32 de ;
  __le32 dosde ;
  struct dentry *dentry___0 ;
  unsigned long tmp___30 ;
  int tmp___31 ;
  struct inode *s_inode___0 ;
  struct ncp_inode_info *tmp___32 ;
  struct ncp_inode_info *tmp___33 ;
  struct ncp_inode_info *tmp___34 ;
  struct ncp_sign_init sign ;
  unsigned long tmp___37 ;
  int state ;
  int __ret_pu___2 ;
  int __pu_val___2 ;
  int newstate ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  struct ncp_lock_ioctl rqdata ;
  unsigned long tmp___38 ;
  struct ncp_inode_info *tmp___39 ;
  struct ncp_server *tmp___40 ;
  int lockcmd ;
  struct ncp_inode_info *tmp___41 ;
  struct ncp_server *tmp___42 ;
  struct compat_ncp_objectname_ioctl user ;
  size_t outl___0 ;
  unsigned long tmp___43 ;
  void *tmp___44 ;
  unsigned long tmp___45 ;
  unsigned long tmp___46 ;
  struct ncp_objectname_ioctl user___0 ;
  size_t outl___1 ;
  unsigned long tmp___47 ;
  unsigned long tmp___48 ;
  unsigned long tmp___49 ;
  struct ncp_objectname_ioctl user___1 ;
  void *newname ;
  void *oldname ;
  size_t oldnamelen ;
  void *oldprivate ;
  size_t oldprivatelen ;
  struct compat_ncp_objectname_ioctl user32 ;
  unsigned long tmp___50 ;
  unsigned long tmp___51 ;
  long tmp___52 ;
  bool tmp___53 ;
  struct ncp_privatedata_ioctl user___2 ;
  size_t outl___2 ;
  struct compat_ncp_privatedata_ioctl user32___0 ;
  unsigned long tmp___54 ;
  unsigned long tmp___55 ;
  unsigned long tmp___56 ;
  struct compat_ncp_privatedata_ioctl user32___1 ;
  unsigned long tmp___57 ;
  unsigned long tmp___58 ;
  struct ncp_privatedata_ioctl user___3 ;
  void *new ;
  void *old ;
  size_t oldlen ;
  struct compat_ncp_privatedata_ioctl user32___2 ;
  unsigned long tmp___59 ;
  unsigned long tmp___60 ;
  long tmp___61 ;
  bool tmp___62 ;
  int tmp___63 ;
  int tmp___64 ;
  u_int32_t user___4 ;
  unsigned long tmp___65 ;
  u_int32_t user___5 ;
  int tmp___66 ;
  unsigned long tmp___67 ;
  {
  {
  tmp = NCP_SBP((struct super_block const *)inode->i_sb);
  server = tmp;
  argp = (void *)arg;
  }
  {
  if (cmd == 2148298241U) {
    goto case_2148298241;
  } else {
  }
  if (cmd == 2148560385U) {
    goto case_2148560385;
  } else {
  }
  if (cmd == 28163U) {
    goto case_28163;
  } else {
  }
  if (cmd == 3223875076U) {
    goto case_3223875076;
  } else {
  }
  if (cmd == 3224399364U) {
    goto case_3224399364;
  } else {
  }
  if (cmd == 3223612932U) {
    goto case_3223612932;
  } else {
  }
  if (cmd == 1073901058U) {
    goto case_1073901058;
  } else {
  }
  if (cmd == 1074032130U) {
    goto case_1074032130;
  } else {
  }
  if (cmd == 1074294274U) {
    goto case_1074294274;
  } else {
  }
  if (cmd == 1074556424U) {
    goto case_1074556424;
  } else {
  }
  if (cmd == 2148298248U) {
    goto case_2148298248;
  } else {
  }
  if (cmd == 2149084677U) {
    goto case_2149084677;
  } else {
  }
  if (cmd == 2147773958U) {
    goto case_2147773958;
  } else {
  }
  if (cmd == 1074032134U) {
    goto case_1074032134;
  } else {
  }
  if (cmd == 2148822535U) {
    goto case_2148822535;
  } else {
  }
  if (cmd == 3222040073U) {
    goto case_3222040073;
  } else {
  }
  if (cmd == 3222826505U) {
    goto case_3222826505;
  } else {
  }
  if (cmd == 2148298249U) {
    goto case_2148298249;
  } else {
  }
  if (cmd == 2149084681U) {
    goto case_2149084681;
  } else {
  }
  if (cmd == 3221777930U) {
    goto case_3221777930;
  } else {
  }
  if (cmd == 3222302218U) {
    goto case_3222302218;
  } else {
  }
  if (cmd == 2148036106U) {
    goto case_2148036106;
  } else {
  }
  if (cmd == 2148560394U) {
    goto case_2148560394;
  } else {
  }
  if (cmd == 2150264331U) {
    goto case_2150264331;
  } else {
  }
  if (cmd == 3224006155U) {
    goto case_3224006155;
  } else {
  }
  if (cmd == 2147773964U) {
    goto case_2147773964;
  } else {
  }
  if (cmd == 1074032140U) {
    goto case_1074032140;
  } else {
  }
  goto switch_break;
  case_2148298241: ;
  case_2148560385: ;
  if (cmd == 2148298241U) {
    {
    tmp___0 = copy_from_user((void *)(& request32), (void const *)argp, 12UL);
    }
    if (tmp___0 != 0UL) {
      return (-14L);
    } else {
    }
    {
    request.function = request32.function;
    request.size = request32.size;
    tmp___1 = compat_ptr(request32.data);
    request.data = (char *)tmp___1;
    }
  } else {
    {
    tmp___2 = copy_from_user((void *)(& request), (void const *)argp, 16UL);
    }
    if (tmp___2 != 0UL) {
      return (-14L);
    } else {
    }
  }
  if (request.function > 255U || request.size > 4063U) {
    return (-22L);
  } else {
  }
  {
  tmp___3 = ldv_vmalloc_96(65536UL);
  bouncebuffer = (char *)tmp___3;
  }
  if ((unsigned long )bouncebuffer == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  {
  tmp___4 = copy_from_user((void *)bouncebuffer, (void const *)request.data, (unsigned long )request.size);
  }
  if (tmp___4 != 0UL) {
    {
    vfree((void const *)bouncebuffer);
    }
    return (-14L);
  } else {
  }
  {
  ncp_lock_server(server);
  server->has_subfunction = 0;
  server->current_size = (int )request.size;
  memcpy((void *)server->packet, (void const *)bouncebuffer, (size_t )request.size);
  result = ncp_request2(server, (int )request.function, (void *)bouncebuffer, 65536);
  }
  if (result < 0) {
    result = -5;
  } else {
    result = server->reply_size;
  }
  {
  ncp_unlock_server(server);
  }
  if (result >= 0) {
    {
    tmp___6 = copy_to_user((void *)request.data, (void const *)bouncebuffer, (unsigned long )result);
    }
    if (tmp___6 != 0UL) {
      result = -14;
    } else {
    }
  } else {
  }
  {
  vfree((void const *)bouncebuffer);
  }
  return ((long )result);
  case_28163: ;
  if ((server->m.int_flags & 1U) == 0U) {
    return (-22L);
  } else {
  }
  {
  ldv_mutex_lock_97(& server->root_setup_lock);
  }
  if (server->root_setuped != 0) {
    result = -16;
  } else {
    {
    result = ncp_conn_logged_in(inode->i_sb);
    }
    if (result == 0) {
      server->root_setuped = 1;
    } else {
    }
  }
  {
  ldv_mutex_unlock_98(& server->root_setup_lock);
  }
  return ((long )result);
  case_3223875076:
  {
  tmp___7 = ncp_get_fs_info(server, inode, (struct ncp_fs_info *)argp);
  }
  return ((long )tmp___7);
  case_3224399364:
  {
  tmp___8 = ncp_get_fs_info_v2(server, inode, (struct ncp_fs_info_v2 *)argp);
  }
  return ((long )tmp___8);
  case_3223612932:
  {
  tmp___9 = ncp_get_compat_fs_info_v2(server, inode, (struct compat_ncp_fs_info_v2 *)argp);
  }
  return ((long )tmp___9);
  case_1073901058:
  {
  tmp___16 = debug_lockdep_rcu_enabled();
  tmp___17 = get_current___0();
  tmp___18 = from_kuid_munged((tmp___17->cred)->user_ns, server->m.mounted_uid);
  }
  if ((tmp___18 & 4294901760U) != 0U) {
    uid = (__u16 )overflowuid;
  } else {
    {
    tmp___13 = debug_lockdep_rcu_enabled();
    tmp___14 = get_current___0();
    tmp___15 = from_kuid_munged((tmp___14->cred)->user_ns, server->m.mounted_uid);
    uid = (__u16 )tmp___15;
    }
  }
  {
  might_fault();
  __pu_val = uid;
  }
  {
  if (2UL == 1UL) {
    goto case_1;
  } else {
  }
  if (2UL == 2UL) {
    goto case_2;
  } else {
  }
  if (2UL == 4UL) {
    goto case_4;
  } else {
  }
  if (2UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" ((__u16 *)argp): "ebx");
  goto ldv_31774;
  case_2:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" ((__u16 *)argp): "ebx");
  goto ldv_31774;
  case_4:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" ((__u16 *)argp): "ebx");
  goto ldv_31774;
  case_8:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" ((__u16 *)argp): "ebx");
  goto ldv_31774;
  switch_default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" ((__u16 *)argp): "ebx");
  goto ldv_31774;
  switch_break___0: ;
  }
  ldv_31774: ;
  if (__ret_pu != 0) {
    return (-14L);
  } else {
  }
  return (0L);
  case_1074032130:
  {
  tmp___19 = debug_lockdep_rcu_enabled();
  tmp___20 = get_current___0();
  tmp___21 = from_kuid_munged((tmp___20->cred)->user_ns, server->m.mounted_uid);
  uid___0 = tmp___21;
  might_fault();
  __pu_val___0 = uid___0;
  }
  {
  if (4UL == 1UL) {
    goto case_1___0;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___0;
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
  case_1___0:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((__u32 *)argp): "ebx");
  goto ldv_31787;
  case_2___0:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((__u32 *)argp): "ebx");
  goto ldv_31787;
  case_4___0:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((__u32 *)argp): "ebx");
  goto ldv_31787;
  case_8___0:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((__u32 *)argp): "ebx");
  goto ldv_31787;
  switch_default___0:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((__u32 *)argp): "ebx");
  goto ldv_31787;
  switch_break___1: ;
  }
  ldv_31787: ;
  if (__ret_pu___0 != 0) {
    return (-14L);
  } else {
  }
  return (0L);
  case_1074294274:
  {
  tmp___22 = debug_lockdep_rcu_enabled();
  tmp___23 = get_current___0();
  tmp___24 = from_kuid_munged((tmp___23->cred)->user_ns, server->m.mounted_uid);
  uid___1 = tmp___24;
  might_fault();
  __pu_val___1 = (u64 )uid___1;
  }
  {
  if (8UL == 1UL) {
    goto case_1___1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2___1;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4___1;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8___1;
  } else {
  }
  goto switch_default___1;
  case_1___1:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((u64 *)argp): "ebx");
  goto ldv_31800;
  case_2___1:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((u64 *)argp): "ebx");
  goto ldv_31800;
  case_4___1:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((u64 *)argp): "ebx");
  goto ldv_31800;
  case_8___1:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((u64 *)argp): "ebx");
  goto ldv_31800;
  switch_default___1:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((u64 *)argp): "ebx");
  goto ldv_31800;
  switch_break___2: ;
  }
  ldv_31800: ;
  if (__ret_pu___1 != 0) {
    return (-14L);
  } else {
  }
  return (0L);
  case_1074556424:
  {
  result = -13;
  ldv_mutex_lock_99(& server->root_setup_lock);
  }
  if ((unsigned int )server->m.mounted_vol[0] != 0U) {
    dentry = (inode->i_sb)->s_root;
    if ((unsigned long )dentry != (unsigned long )((struct dentry *)0)) {
      s_inode = dentry->d_inode;
      if ((unsigned long )s_inode != (unsigned long )((struct inode *)0)) {
        {
        tmp___25 = NCP_FINFO((struct inode const *)s_inode);
        sr.volNumber = (int )tmp___25->volNumber;
        tmp___26 = NCP_FINFO((struct inode const *)s_inode);
        sr.dirEntNum = tmp___26->dirEntNum;
        sr.namespace = (int )server->name_space[sr.volNumber];
        result = 0;
        }
      } else {
      }
    } else {
    }
  } else {
    sr.volNumber = -1;
    sr.namespace = 0;
    sr.dirEntNum = 0U;
    result = 0;
  }
  {
  ldv_mutex_unlock_100(& server->root_setup_lock);
  }
  if (result == 0) {
    {
    tmp___29 = copy_to_user(argp, (void const *)(& sr), 12UL);
    }
    if (tmp___29 != 0UL) {
      result = -14;
    } else {
    }
  } else {
  }
  return ((long )result);
  case_2148298248:
  {
  tmp___30 = copy_from_user((void *)(& sr___0), (void const *)argp, 12UL);
  }
  if (tmp___30 != 0UL) {
    return (-14L);
  } else {
  }
  {
  ldv_mutex_lock_101(& server->root_setup_lock);
  }
  if (server->root_setuped != 0) {
    result = -16;
  } else {
    if (sr___0.volNumber < 0) {
      server->m.mounted_vol[0] = 0U;
      vnum = 256U;
      de = 0U;
      dosde = 0U;
      result = 0;
    } else
    if (sr___0.volNumber > 255) {
      result = -22;
    } else {
      {
      tmp___31 = ncp_mount_subdir(server, (int )((__u8 )sr___0.volNumber), (int )((__u8 )sr___0.namespace),
                                  sr___0.dirEntNum, & vnum, & de, & dosde);
      }
      if (tmp___31 != 0) {
        result = -2;
      } else {
        result = 0;
      }
    }
    if (result == 0) {
      dentry___0 = (inode->i_sb)->s_root;
      if ((unsigned long )dentry___0 != (unsigned long )((struct dentry *)0)) {
        s_inode___0 = dentry___0->d_inode;
        if ((unsigned long )s_inode___0 != (unsigned long )((struct inode *)0)) {
          {
          tmp___32 = NCP_FINFO((struct inode const *)s_inode___0);
          tmp___32->volNumber = (__u8 )vnum;
          tmp___33 = NCP_FINFO((struct inode const *)s_inode___0);
          tmp___33->dirEntNum = de;
          tmp___34 = NCP_FINFO((struct inode const *)s_inode___0);
          tmp___34->DosDirNum = dosde;
          server->root_setuped = 1;
          }
        } else {
          result = -5;
        }
      } else {
        result = -5;
      }
    } else {
    }
  }
  {
  ldv_mutex_unlock_102(& server->root_setup_lock);
  }
  return ((long )result);
  case_2149084677: ;
  if ((unsigned long )argp != (unsigned long )((void *)0)) {
    {
    tmp___37 = copy_from_user((void *)(& sign), (void const *)argp, 24UL);
    }
    if (tmp___37 != 0UL) {
      return (-14L);
    } else {
    }
  } else {
  }
  {
  ncp_lock_server(server);
  ldv_mutex_lock_103(& server->rcv.creq_mutex);
  }
  if ((unsigned long )argp != (unsigned long )((void *)0)) {
    if (server->sign_wanted != 0) {
      {
      memcpy((void *)(& server->sign_root), (void const *)(& sign.sign_root),
               8UL);
      memcpy((void *)(& server->sign_last), (void const *)(& sign.sign_last),
               16UL);
      server->sign_active = 1;
      }
    } else {
    }
  } else {
    server->sign_active = 0;
  }
  {
  ldv_mutex_unlock_104(& server->rcv.creq_mutex);
  ncp_unlock_server(server);
  }
  return (0L);
  case_2147773958:
  {
  ncp_lock_server(server);
  state = server->sign_wanted;
  ncp_unlock_server(server);
  might_fault();
  __pu_val___2 = state;
  }
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
    goto case_8___2;
  } else {
  }
  goto switch_default___2;
  case_1___2:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" ((int *)argp): "ebx");
  goto ldv_31828;
  case_2___2:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" ((int *)argp): "ebx");
  goto ldv_31828;
  case_4___2:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" ((int *)argp): "ebx");
  goto ldv_31828;
  case_8___2:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" ((int *)argp): "ebx");
  goto ldv_31828;
  switch_default___2:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" ((int *)argp): "ebx");
  goto ldv_31828;
  switch_break___3: ;
  }
  ldv_31828: ;
  if (__ret_pu___2 != 0) {
    return (-14L);
  } else {
  }
  return (0L);
  case_1074032134:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" ((unsigned char *)argp),
                       "i" (1UL));
  newstate = (int )((unsigned char )__val_gu);
  }
  if (__ret_gu != 0) {
    return (-14L);
  } else {
  }
  {
  result = 0;
  ncp_lock_server(server);
  }
  if (server->sign_active != 0) {
    if (newstate == 0) {
      result = -22;
    } else {
    }
  } else {
    server->sign_wanted = newstate != 0;
  }
  {
  ncp_unlock_server(server);
  }
  return ((long )result);
  case_2148822535:
  {
  tmp___38 = copy_from_user((void *)(& rqdata), (void const *)argp, 20UL);
  }
  if (tmp___38 != 0UL) {
    return (-14L);
  } else {
  }
  if (rqdata.origin != 0) {
    return (-22L);
  } else {
  }
  {
  if (rqdata.cmd == 2) {
    goto case_2___3;
  } else {
  }
  if (rqdata.cmd == 1) {
    goto case_1___3;
  } else {
  }
  if (rqdata.cmd == 0) {
    goto case_0;
  } else {
  }
  if (rqdata.cmd == 256) {
    goto case_256;
  } else {
  }
  goto switch_default___3;
  case_2___3: ;
  case_1___3: ;
  if (rqdata.timeout == 0) {
    rqdata.timeout = 18;
  } else
  if (rqdata.timeout > 180) {
    rqdata.timeout = 180;
  } else {
  }
  goto ldv_31843;
  case_0:
  rqdata.timeout = 18;
  case_256: ;
  goto ldv_31843;
  switch_default___3: ;
  return (-22L);
  switch_break___4: ;
  }
  ldv_31843:
  {
  result = ncp_make_open(inode, 2);
  }
  if (result != 0) {
    return ((long )result);
  } else {
  }
  result = -21;
  if (((int )inode->i_mode & 61440) != 32768) {
    goto outrel;
  } else {
  }
  if (rqdata.cmd == 256) {
    {
    tmp___39 = NCP_FINFO((struct inode const *)inode);
    tmp___40 = NCP_SBP((struct super_block const *)inode->i_sb);
    result = ncp_ClearPhysicalRecord(tmp___40, (char const *)(& tmp___39->file_handle),
                                     rqdata.offset, rqdata.length);
    }
    if (result > 0) {
      result = 0;
    } else {
    }
  } else {
    {
    if (rqdata.cmd == 2) {
      goto case_2___4;
    } else {
    }
    if (rqdata.cmd == 1) {
      goto case_1___4;
    } else {
    }
    goto switch_default___4;
    case_2___4:
    lockcmd = 1;
    goto ldv_31850;
    case_1___4:
    lockcmd = 3;
    goto ldv_31850;
    switch_default___4:
    lockcmd = 0;
    goto ldv_31850;
    switch_break___5: ;
    }
    ldv_31850:
    {
    tmp___41 = NCP_FINFO((struct inode const *)inode);
    tmp___42 = NCP_SBP((struct super_block const *)inode->i_sb);
    result = ncp_LogPhysicalRecord(tmp___42, (char const *)(& tmp___41->file_handle),
                                   (int )((__u8 )lockcmd), rqdata.offset, rqdata.length,
                                   (int )((__u16 )rqdata.timeout));
    }
    if (result > 0) {
      result = -11;
    } else {
    }
  }
  outrel:
  {
  ncp_inode_close___1(inode);
  }
  return ((long )result);
  case_3222040073:
  {
  tmp___43 = copy_from_user((void *)(& user), (void const *)argp, 12UL);
  }
  if (tmp___43 != 0UL) {
    return (-14L);
  } else {
  }
  {
  down_read(& server->auth_rwsem);
  user.auth_type = server->auth.auth_type;
  outl___0 = (size_t )user.object_name_len;
  user.object_name_len = (__u32 )server->auth.object_name_len;
  }
  if (outl___0 > (size_t )user.object_name_len) {
    outl___0 = (size_t )user.object_name_len;
  } else {
  }
  result = 0;
  if (outl___0 != 0UL) {
    {
    tmp___44 = compat_ptr(user.object_name);
    tmp___45 = copy_to_user(tmp___44, (void const *)server->auth.object_name, outl___0);
    }
    if (tmp___45 != 0UL) {
      result = -14;
    } else {
    }
  } else {
  }
  {
  up_read(& server->auth_rwsem);
  }
  if (result == 0) {
    {
    tmp___46 = copy_to_user(argp, (void const *)(& user), 12UL);
    }
    if (tmp___46 != 0UL) {
      result = -14;
    } else {
    }
  } else {
  }
  return ((long )result);
  case_3222826505:
  {
  tmp___47 = copy_from_user((void *)(& user___0), (void const *)argp, 24UL);
  }
  if (tmp___47 != 0UL) {
    return (-14L);
  } else {
  }
  {
  down_read(& server->auth_rwsem);
  user___0.auth_type = server->auth.auth_type;
  outl___1 = user___0.object_name_len;
  user___0.object_name_len = server->auth.object_name_len;
  }
  if (outl___1 > user___0.object_name_len) {
    outl___1 = user___0.object_name_len;
  } else {
  }
  result = 0;
  if (outl___1 != 0UL) {
    {
    tmp___48 = copy_to_user(user___0.object_name, (void const *)server->auth.object_name,
                            outl___1);
    }
    if (tmp___48 != 0UL) {
      result = -14;
    } else {
    }
  } else {
  }
  {
  up_read(& server->auth_rwsem);
  }
  if (result == 0) {
    {
    tmp___49 = copy_to_user(argp, (void const *)(& user___0), 24UL);
    }
    if (tmp___49 != 0UL) {
      result = -14;
    } else {
    }
  } else {
  }
  return ((long )result);
  case_2148298249: ;
  case_2149084681: ;
  if (cmd == 2148298249U) {
    {
    tmp___50 = copy_from_user((void *)(& user32), (void const *)argp, 12UL);
    }
    if (tmp___50 != 0UL) {
      return (-14L);
    } else {
    }
    {
    user___1.auth_type = user32.auth_type;
    user___1.object_name_len = (size_t )user32.object_name_len;
    user___1.object_name = compat_ptr(user32.object_name);
    }
  } else {
    {
    tmp___51 = copy_from_user((void *)(& user___1), (void const *)argp, 24UL);
    }
    if (tmp___51 != 0UL) {
      return (-14L);
    } else {
    }
  }
  if (user___1.object_name_len > 4096UL) {
    return (-12L);
  } else {
  }
  if (user___1.object_name_len != 0UL) {
    {
    newname = memdup_user((void const *)user___1.object_name, user___1.object_name_len);
    tmp___53 = IS_ERR((void const *)newname);
    }
    if ((int )tmp___53) {
      {
      tmp___52 = PTR_ERR((void const *)newname);
      }
      return (tmp___52);
    } else {
    }
  } else {
    newname = (void *)0;
  }
  {
  down_write(& server->auth_rwsem);
  oldname = server->auth.object_name;
  oldnamelen = server->auth.object_name_len;
  oldprivate = server->priv.data;
  oldprivatelen = server->priv.len;
  server->auth.auth_type = user___1.auth_type;
  server->auth.object_name_len = user___1.object_name_len;
  server->auth.object_name = newname;
  server->priv.len = 0UL;
  server->priv.data = (void *)0;
  up_write(& server->auth_rwsem);
  kfree((void const *)oldprivate);
  kfree((void const *)oldname);
  }
  return (0L);
  case_3221777930: ;
  case_3222302218: ;
  if (cmd == 3221777930U) {
    {
    tmp___54 = copy_from_user((void *)(& user32___0), (void const *)argp, 8UL);
    }
    if (tmp___54 != 0UL) {
      return (-14L);
    } else {
    }
    {
    user___2.len = (size_t )user32___0.len;
    user___2.data = compat_ptr(user32___0.data);
    }
  } else {
    {
    tmp___55 = copy_from_user((void *)(& user___2), (void const *)argp, 16UL);
    }
    if (tmp___55 != 0UL) {
      return (-14L);
    } else {
    }
  }
  {
  down_read(& server->auth_rwsem);
  outl___2 = user___2.len;
  user___2.len = server->priv.len;
  }
  if (outl___2 > user___2.len) {
    outl___2 = user___2.len;
  } else {
  }
  result = 0;
  if (outl___2 != 0UL) {
    {
    tmp___56 = copy_to_user(user___2.data, (void const *)server->priv.data, outl___2);
    }
    if (tmp___56 != 0UL) {
      result = -14;
    } else {
    }
  } else {
  }
  {
  up_read(& server->auth_rwsem);
  }
  if (result != 0) {
    return ((long )result);
  } else {
  }
  if (cmd == 3221777930U) {
    {
    user32___1.len = (__u32 )user___2.len;
    user32___1.data = (compat_caddr_t )((long )user___2.data);
    tmp___57 = copy_to_user(argp, (void const *)(& user32___1), 8UL);
    }
    if (tmp___57 != 0UL) {
      return (-14L);
    } else {
    }
  } else {
    {
    tmp___58 = copy_to_user(argp, (void const *)(& user___2), 16UL);
    }
    if (tmp___58 != 0UL) {
      return (-14L);
    } else {
    }
  }
  return (0L);
  case_2148036106: ;
  case_2148560394: ;
  if (cmd == 2148036106U) {
    {
    tmp___59 = copy_from_user((void *)(& user32___2), (void const *)argp, 8UL);
    }
    if (tmp___59 != 0UL) {
      return (-14L);
    } else {
    }
    {
    user___3.len = (size_t )user32___2.len;
    user___3.data = compat_ptr(user32___2.data);
    }
  } else {
    {
    tmp___60 = copy_from_user((void *)(& user___3), (void const *)argp, 16UL);
    }
    if (tmp___60 != 0UL) {
      return (-14L);
    } else {
    }
  }
  if (user___3.len > 8192UL) {
    return (-12L);
  } else {
  }
  if (user___3.len != 0UL) {
    {
    new = memdup_user((void const *)user___3.data, user___3.len);
    tmp___62 = IS_ERR((void const *)new);
    }
    if ((int )tmp___62) {
      {
      tmp___61 = PTR_ERR((void const *)new);
      }
      return (tmp___61);
    } else {
    }
  } else {
    new = (void *)0;
  }
  {
  down_write(& server->auth_rwsem);
  old = server->priv.data;
  oldlen = server->priv.len;
  server->priv.len = user___3.len;
  server->priv.data = new;
  up_write(& server->auth_rwsem);
  kfree((void const *)old);
  }
  return (0L);
  case_2150264331:
  {
  tmp___63 = ncp_set_charsets(server, (struct ncp_nls_ioctl *)argp);
  }
  return ((long )tmp___63);
  case_3224006155:
  {
  tmp___64 = ncp_get_charsets(server, (struct ncp_nls_ioctl *)argp);
  }
  return ((long )tmp___64);
  case_2147773964:
  {
  tmp___65 = copy_from_user((void *)(& user___4), (void const *)argp, 4UL);
  }
  if (tmp___65 != 0UL) {
    return (-14L);
  } else {
  }
  if (user___4 > 20000U) {
    return (-22L);
  } else {
  }
  {
  user___4 = (user___4 * 250U) / 1000U;
  atomic_set(& server->dentry_ttl, (int )user___4);
  }
  return (0L);
  case_1074032140:
  {
  tmp___66 = atomic_read((atomic_t const *)(& server->dentry_ttl));
  user___5 = (u_int32_t )((tmp___66 * 1000) / 250);
  tmp___67 = copy_to_user(argp, (void const *)(& user___5), 4UL);
  }
  if (tmp___67 != 0UL) {
    return (-14L);
  } else {
  }
  return (0L);
  switch_break: ;
  }
  return (-22L);
}
}
long ncp_ioctl(struct file *filp , unsigned int cmd , unsigned long arg )
{
  struct inode *inode ;
  struct inode *tmp ;
  struct ncp_server *server ;
  struct ncp_server *tmp___0 ;
  kuid_t uid ;
  int tmp___1 ;
  struct task_struct *tmp___2 ;
  int need_drop_write ;
  long ret ;
  bool tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  bool tmp___8 ;
  int tmp___9 ;
  {
  {
  tmp = file_inode((struct file const *)filp);
  inode = tmp;
  tmp___0 = NCP_SBP((struct super_block const *)inode->i_sb);
  server = tmp___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  tmp___2 = get_current___0();
  uid = (tmp___2->cred)->uid;
  need_drop_write = 0;
  }
  {
  if (cmd == 2150264331U) {
    goto case_2150264331;
  } else {
  }
  if (cmd == 28163U) {
    goto case_28163;
  } else {
  }
  if (cmd == 2148298248U) {
    goto case_2148298248;
  } else {
  }
  goto switch_break;
  case_2150264331: ;
  case_28163: ;
  case_2148298248:
  {
  tmp___3 = capable(21);
  }
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    ret = -1L;
    goto out;
  } else {
  }
  goto ldv_31903;
  switch_break: ;
  }
  ldv_31903:
  {
  tmp___8 = uid_eq(server->m.mounted_uid, uid);
  }
  if (tmp___8) {
    tmp___9 = 0;
  } else {
    tmp___9 = 1;
  }
  if (tmp___9) {
    {
    if (cmd == 3222826505U) {
      goto case_3222826505;
    } else {
    }
    if (cmd == 2149084681U) {
      goto case_2149084681;
    } else {
    }
    if (cmd == 3222302218U) {
      goto case_3222302218;
    } else {
    }
    if (cmd == 2148560394U) {
      goto case_2148560394;
    } else {
    }
    if (cmd == 3222040073U) {
      goto case_3222040073;
    } else {
    }
    if (cmd == 2148298249U) {
      goto case_2148298249;
    } else {
    }
    if (cmd == 3221777930U) {
      goto case_3221777930;
    } else {
    }
    if (cmd == 2148036106U) {
      goto case_2148036106;
    } else {
    }
    if (cmd == 3223875076U) {
      goto case_3223875076;
    } else {
    }
    if (cmd == 3224399364U) {
      goto case_3224399364;
    } else {
    }
    if (cmd == 2148560385U) {
      goto case_2148560385;
    } else {
    }
    if (cmd == 2147773964U) {
      goto case_2147773964;
    } else {
    }
    if (cmd == 2149084677U) {
      goto case_2149084677;
    } else {
    }
    if (cmd == 2148822535U) {
      goto case_2148822535;
    } else {
    }
    if (cmd == 1074032134U) {
      goto case_1074032134;
    } else {
    }
    if (cmd == 3223612932U) {
      goto case_3223612932;
    } else {
    }
    if (cmd == 2148298241U) {
      goto case_2148298241;
    } else {
    }
    if (cmd == 1073901058U) {
      goto case_1073901058;
    } else {
    }
    if (cmd == 1074032130U) {
      goto case_1074032130;
    } else {
    }
    if (cmd == 1074294274U) {
      goto case_1074294274;
    } else {
    }
    if (cmd == 1074556424U) {
      goto case_1074556424;
    } else {
    }
    if (cmd == 2147773958U) {
      goto case_2147773958;
    } else {
    }
    if (cmd == 3224006155U) {
      goto case_3224006155;
    } else {
    }
    if (cmd == 1074032140U) {
      goto case_1074032140;
    } else {
    }
    if (cmd == 2150264331U) {
      goto case_2150264331___0;
    } else {
    }
    if (cmd == 28163U) {
      goto case_28163___0;
    } else {
    }
    if (cmd == 2148298248U) {
      goto case_2148298248___0;
    } else {
    }
    goto switch_default;
    case_3222826505: ;
    case_2149084681: ;
    case_3222302218: ;
    case_2148560394: ;
    case_3222040073: ;
    case_2148298249: ;
    case_3221777930: ;
    case_2148036106:
    ret = -13L;
    goto out;
    case_3223875076: ;
    case_3224399364: ;
    case_2148560385: ;
    case_2147773964: ;
    case_2149084677: ;
    case_2148822535: ;
    case_1074032134: ;
    case_3223612932: ;
    case_2148298241:
    {
    tmp___5 = mnt_want_write_file(filp);
    ret = (long )tmp___5;
    }
    if (ret != 0L) {
      goto out;
    } else {
    }
    {
    need_drop_write = 1;
    tmp___6 = inode_permission(inode, 2);
    ret = (long )tmp___6;
    }
    if (ret != 0L) {
      goto outDropWrite;
    } else {
    }
    goto ldv_31922;
    case_1073901058: ;
    case_1074032130: ;
    case_1074294274: ;
    case_1074556424: ;
    case_2147773958:
    {
    tmp___7 = inode_permission(inode, 4);
    ret = (long )tmp___7;
    }
    if (ret != 0L) {
      goto out;
    } else {
    }
    goto ldv_31922;
    case_3224006155: ;
    case_1074032140: ;
    switch_default: ;
    case_2150264331___0: ;
    case_28163___0: ;
    case_2148298248___0: ;
    goto ldv_31922;
    switch_break___0: ;
    }
    ldv_31922: ;
  } else {
  }
  {
  ret = __ncp_ioctl(inode, cmd, arg);
  }
  outDropWrite: ;
  if (need_drop_write != 0) {
    {
    mnt_drop_write_file(filp);
    }
  } else {
  }
  out: ;
  return (ret);
}
}
long ncp_compat_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  long ret ;
  void *tmp ;
  {
  {
  tmp = compat_ptr((compat_uptr_t )arg);
  arg = (unsigned long )tmp;
  ret = ncp_ioctl(file, cmd, arg);
  }
  return (ret);
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
static void ldv_mutex_lock_92___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_root_setup_lock_of_ncp_server(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_93___1(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_root_setup_lock_of_ncp_server(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_94(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_root_setup_lock_of_ncp_server(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_95(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_root_setup_lock_of_ncp_server(ldv_func_arg1);
  }
  return;
}
}
static void *ldv_vmalloc_96(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_root_setup_lock_of_ncp_server(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_root_setup_lock_of_ncp_server(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_root_setup_lock_of_ncp_server(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_100(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_root_setup_lock_of_ncp_server(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_101(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_root_setup_lock_of_ncp_server(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_102(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_root_setup_lock_of_ncp_server(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_103(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_104(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
extern void __bad_size_call_parameter(void) ;
__inline static void atomic_dec(atomic_t *v ) ;
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order ) ;
extern struct vm_event_state vm_event_states ;
__inline static void count_vm_event(enum vm_event_item item )
{
  void const *__vpp_verify ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  {
  __vpp_verify = (void const *)0;
  {
  if (8UL == 1UL) {
    goto case_1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2___0;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4___1;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8___2;
  } else {
  }
  goto switch_default___3;
  case_1:
  pao_ID__ = 1;
  {
  if (8UL == 1UL) {
    goto case_1___0;
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
  case_1___0:
  __asm__ ("incb %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21274;
  case_2:
  __asm__ ("incw %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21274;
  case_4:
  __asm__ ("incl %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21274;
  case_8:
  __asm__ ("incq %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21274;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_21274: ;
  goto ldv_21279;
  case_2___0:
  pao_ID_____0 = 1;
  {
  if (8UL == 1UL) {
    goto case_1___1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2___1;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4___0;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8___0;
  } else {
  }
  goto switch_default___0;
  case_1___1:
  __asm__ ("incb %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21285;
  case_2___1:
  __asm__ ("incw %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21285;
  case_4___0:
  __asm__ ("incl %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21285;
  case_8___0:
  __asm__ ("incq %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21285;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_21285: ;
  goto ldv_21279;
  case_4___1:
  pao_ID_____1 = 1;
  {
  if (8UL == 1UL) {
    goto case_1___2;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2___2;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4___2;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8___1;
  } else {
  }
  goto switch_default___1;
  case_1___2:
  __asm__ ("incb %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21295;
  case_2___2:
  __asm__ ("incw %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21295;
  case_4___2:
  __asm__ ("incl %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21295;
  case_8___1:
  __asm__ ("incq %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21295;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_21295: ;
  goto ldv_21279;
  case_8___2:
  pao_ID_____2 = 1;
  {
  if (8UL == 1UL) {
    goto case_1___3;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2___3;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4___3;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8___3;
  } else {
  }
  goto switch_default___2;
  case_1___3:
  __asm__ ("incb %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21305;
  case_2___3:
  __asm__ ("incw %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21305;
  case_4___3:
  __asm__ ("incl %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21305;
  case_8___3:
  __asm__ ("incq %%gs:%0": "+m" (vm_event_states.event[(unsigned int )item]));
  goto ldv_21305;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_21305: ;
  goto ldv_21279;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_21279;
  switch_break: ;
  }
  ldv_21279: ;
  return;
}
}
__inline static unsigned long vma_pages(struct vm_area_struct *vma )
{
  {
  return ((vma->vm_end - vma->vm_start) >> 12);
}
}
extern struct cgroup_subsys memory_cgrp_subsys ;
__inline static bool mem_cgroup_disabled(void)
{
  {
  if (memory_cgrp_subsys.disabled != 0) {
    return (1);
  } else {
  }
  return (0);
}
}
extern void __mem_cgroup_count_vm_event(struct mm_struct * , enum vm_event_item ) ;
__inline static void mem_cgroup_count_vm_event(struct mm_struct *mm , enum vm_event_item idx )
{
  bool tmp ;
  {
  {
  tmp = mem_cgroup_disabled();
  }
  if ((int )tmp) {
    return;
  } else {
  }
  {
  __mem_cgroup_count_vm_event(mm, idx);
  }
  return;
}
}
int ncp_read_kernel(struct ncp_server *server , char const *file_id , __u32 offset ,
                    __u16 to_read , char *target , int *bytes_read ) ;
__inline static void ncp_inode_close___2(struct inode *inode )
{
  struct ncp_inode_info *tmp ;
  {
  {
  tmp = NCP_FINFO((struct inode const *)inode);
  atomic_dec(& tmp->opened);
  }
  return;
}
}
static int ncp_file_mmap_fault(struct vm_area_struct *area , struct vm_fault *vmf )
{
  struct inode *inode ;
  struct inode *tmp ;
  char *pg_addr ;
  unsigned int already_read ;
  unsigned int count ;
  int bufsize ;
  int pos ;
  void *tmp___0 ;
  struct ncp_server *tmp___1 ;
  int read_this_time ;
  int to_read ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  struct ncp_inode_info *tmp___2 ;
  struct ncp_server *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = file_inode((struct file const *)area->vm_file);
  inode = tmp;
  vmf->page = alloc_pages(131282U, 0U);
  }
  if ((unsigned long )vmf->page == (unsigned long )((struct page *)0)) {
    return (1);
  } else {
  }
  {
  tmp___0 = kmap(vmf->page);
  pg_addr = (char *)tmp___0;
  pos = (int )(vmf->pgoff << 12);
  count = 4096U;
  tmp___1 = NCP_SBP((struct super_block const *)inode->i_sb);
  bufsize = tmp___1->buffer_size;
  already_read = 0U;
  tmp___5 = ncp_make_open(inode, 0);
  }
  if (tmp___5 >= 0) {
    goto ldv_31483;
    ldv_31482:
    {
    to_read = bufsize - pos % bufsize;
    __min1 = (unsigned int )to_read;
    __min2 = count - already_read;
    to_read = (int )(__min1 < __min2 ? __min1 : __min2);
    tmp___2 = NCP_FINFO((struct inode const *)inode);
    tmp___3 = NCP_SBP((struct super_block const *)inode->i_sb);
    tmp___4 = ncp_read_kernel(tmp___3, (char const *)(& tmp___2->file_handle), (__u32 )pos,
                              (int )((__u16 )to_read), pg_addr + (unsigned long )already_read,
                              & read_this_time);
    }
    if (tmp___4 != 0) {
      read_this_time = 0;
    } else {
    }
    pos = pos + read_this_time;
    already_read = already_read + (unsigned int )read_this_time;
    if (read_this_time < to_read) {
      goto ldv_31481;
    } else {
    }
    ldv_31483: ;
    if (already_read < count) {
      goto ldv_31482;
    } else {
    }
    ldv_31481:
    {
    ncp_inode_close___2(inode);
    }
  } else {
  }
  if (already_read <= 4095U) {
    {
    memset((void *)pg_addr + (unsigned long )already_read, 0, 4096UL - (unsigned long )already_read);
    }
  } else {
  }
  {
  kunmap(vmf->page);
  count_vm_event(12);
  mem_cgroup_count_vm_event(area->vm_mm, 12);
  }
  return (4);
}
}
static struct vm_operations_struct const ncp_file_mmap =
     {0, 0, & ncp_file_mmap_fault, 0, 0, 0, 0, 0, 0, 0};
int ncp_mmap(struct file *file , struct vm_area_struct *vma )
{
  struct inode *inode ;
  struct inode *tmp ;
  struct ncp_server *tmp___1 ;
  int tmp___2 ;
  unsigned long tmp___3 ;
  {
  {
  tmp = file_inode((struct file const *)file);
  inode = tmp;
  tmp___1 = NCP_SBP((struct super_block const *)inode->i_sb);
  tmp___2 = ncp_conn_valid(tmp___1);
  }
  if (tmp___2 == 0) {
    return (-5);
  } else {
  }
  if ((vma->vm_flags & 8UL) != 0UL) {
    return (-22);
  } else {
  }
  {
  tmp___3 = vma_pages(vma);
  }
  if (tmp___3 + vma->vm_pgoff > 1048576UL) {
    return (-27);
  } else {
  }
  {
  vma->vm_ops = & ncp_file_mmap;
  file_accessed(file);
  }
  return (0);
}
}
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct vm_area_struct * ,
                                                              struct vm_fault * ) ,
                                                  struct vm_area_struct *arg1 , struct vm_fault *arg2 )
{
  {
  {
  ncp_file_mmap_fault(arg1, arg2);
  }
  return;
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
extern void ldv_after_alloc(void * ) ;
static void ldv_mutex_lock_92___2(struct mutex *ldv_func_arg1 ) ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u32 __fswab32(__u32 val )
{
  int tmp ;
  {
  {
  tmp = __builtin_bswap32(val);
  }
  return ((__u32 )tmp);
}
}
__inline static __u16 __swab16p(__u16 const *p )
{
  __u16 tmp ;
  {
  {
  tmp = __fswab16((int )*p);
  }
  return (tmp);
}
}
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
}
}
__inline static __u16 __be16_to_cpup(__be16 const *p )
{
  __u16 tmp ;
  {
  {
  tmp = __swab16p(p);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_93___2(struct mutex *ldv_func_arg1 ) ;
__inline static int ncp_request(struct ncp_server *server , int function )
{
  int tmp ;
  {
  {
  tmp = ncp_request2(server, function, (void *)server->packet, server->packet_size);
  }
  return (tmp);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static __u16 get_unaligned_le16(void const *p )
{
  __u16 tmp ;
  {
  {
  tmp = __le16_to_cpup((__le16 const *)p);
  }
  return (tmp);
}
}
__inline static __u32 get_unaligned_le32(void const *p )
{
  __u32 tmp ;
  {
  {
  tmp = __le32_to_cpup((__le32 const *)p);
  }
  return (tmp);
}
}
__inline static __u16 get_unaligned_be16(void const *p )
{
  __u16 tmp ;
  {
  {
  tmp = __be16_to_cpup((__be16 const *)p);
  }
  return (tmp);
}
}
__inline static void put_unaligned_le16(__u16 val , void *p )
{
  {
  *((__le16 *)p) = val;
  return;
}
}
__inline static void put_unaligned_le32(__u32 val , void *p )
{
  {
  *((__le32 *)p) = val;
  return;
}
}
__inline static void put_unaligned_le64(u64 val , void *p )
{
  {
  *((__le64 *)p) = val;
  return;
}
}
extern void __bad_unaligned_access_size(void) ;
extern int utf8_to_utf32(u8 const * , int , unicode_t * ) ;
extern int utf32_to_utf8(unicode_t , u8 * , int ) ;
__inline static unsigned char nls_toupper(struct nls_table *t , unsigned char c )
{
  unsigned char nc ;
  {
  nc = *(t->charset2upper + (unsigned long )c);
  return ((unsigned int )nc != 0U ? nc : c);
}
}
__inline static void assert_server_locked(struct ncp_server *server )
{
  {
  return;
}
}
static void ncp_add_byte(struct ncp_server *server , __u8 x )
{
  {
  {
  assert_server_locked(server);
  *(server->packet + (unsigned long )server->current_size) = x;
  server->current_size = server->current_size + 1;
  }
  return;
}
}
static void ncp_add_word(struct ncp_server *server , __le16 x )
{
  void *__gu_p ;
  {
  {
  assert_server_locked(server);
  __gu_p = (void *)server->packet + (unsigned long )server->current_size;
  }
  {
  if (2UL == 1UL) {
    goto case_1;
  } else {
  }
  if (2UL == 2UL) {
    goto case_2;
  } else {
  }
  if (2UL == 4UL) {
    goto case_4;
  } else {
  }
  if (2UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  *((u8 *)__gu_p) = (unsigned char )x;
  goto ldv_30374;
  case_2:
  {
  put_unaligned_le16((int )x, __gu_p);
  }
  goto ldv_30374;
  case_4:
  {
  put_unaligned_le32((unsigned int )x, __gu_p);
  }
  goto ldv_30374;
  case_8:
  {
  put_unaligned_le64((unsigned long long )x, __gu_p);
  }
  goto ldv_30374;
  switch_default:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_30374;
  switch_break: ;
  }
  ldv_30374:
  server->current_size = server->current_size + 2;
  return;
}
}
static void ncp_add_be16(struct ncp_server *server , __u16 x )
{
  void *__gu_p ;
  __u16 tmp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  {
  {
  assert_server_locked(server);
  __gu_p = (void *)server->packet + (unsigned long )server->current_size;
  }
  {
  if (2UL == 1UL) {
    goto case_1;
  } else {
  }
  if (2UL == 2UL) {
    goto case_2;
  } else {
  }
  if (2UL == 4UL) {
    goto case_4;
  } else {
  }
  if (2UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = __fswab16((int )x);
  *((u8 *)__gu_p) = (unsigned char )tmp;
  }
  goto ldv_30385;
  case_2:
  {
  tmp___0 = __fswab16((int )x);
  put_unaligned_le16((int )tmp___0, __gu_p);
  }
  goto ldv_30385;
  case_4:
  {
  tmp___1 = __fswab16((int )x);
  put_unaligned_le32((unsigned int )tmp___1, __gu_p);
  }
  goto ldv_30385;
  case_8:
  {
  tmp___2 = __fswab16((int )x);
  put_unaligned_le64((unsigned long long )tmp___2, __gu_p);
  }
  goto ldv_30385;
  switch_default:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_30385;
  switch_break: ;
  }
  ldv_30385:
  server->current_size = server->current_size + 2;
  return;
}
}
static void ncp_add_dword(struct ncp_server *server , __le32 x )
{
  void *__gu_p ;
  {
  {
  assert_server_locked(server);
  __gu_p = (void *)server->packet + (unsigned long )server->current_size;
  }
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
  *((u8 *)__gu_p) = (unsigned char )x;
  goto ldv_30396;
  case_2:
  {
  put_unaligned_le16((int )((unsigned short )x), __gu_p);
  }
  goto ldv_30396;
  case_4:
  {
  put_unaligned_le32(x, __gu_p);
  }
  goto ldv_30396;
  case_8:
  {
  put_unaligned_le64((unsigned long long )x, __gu_p);
  }
  goto ldv_30396;
  switch_default:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_30396;
  switch_break: ;
  }
  ldv_30396:
  server->current_size = server->current_size + 4;
  return;
}
}
static void ncp_add_be32(struct ncp_server *server , __u32 x )
{
  void *__gu_p ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  {
  {
  assert_server_locked(server);
  __gu_p = (void *)server->packet + (unsigned long )server->current_size;
  }
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
  {
  tmp = __fswab32(x);
  *((u8 *)__gu_p) = (unsigned char )tmp;
  }
  goto ldv_30407;
  case_2:
  {
  tmp___0 = __fswab32(x);
  put_unaligned_le16((unsigned short )tmp___0, __gu_p);
  }
  goto ldv_30407;
  case_4:
  {
  tmp___1 = __fswab32(x);
  put_unaligned_le32(tmp___1, __gu_p);
  }
  goto ldv_30407;
  case_8:
  {
  tmp___2 = __fswab32(x);
  put_unaligned_le64((unsigned long long )tmp___2, __gu_p);
  }
  goto ldv_30407;
  switch_default:
  {
  __bad_unaligned_access_size();
  }
  goto ldv_30407;
  switch_break: ;
  }
  ldv_30407:
  server->current_size = server->current_size + 4;
  return;
}
}
__inline static void ncp_add_dword_lh(struct ncp_server *server , __u32 x )
{
  {
  {
  ncp_add_dword(server, x);
  }
  return;
}
}
static void ncp_add_mem(struct ncp_server *server , void const *source , int size )
{
  {
  {
  assert_server_locked(server);
  memcpy((void *)server->packet + (unsigned long )server->current_size, source,
           (size_t )size);
  server->current_size = server->current_size + size;
  }
  return;
}
}
static void ncp_add_pstring(struct ncp_server *server , char const *s )
{
  int len ;
  size_t tmp ;
  {
  {
  tmp = strlen(s);
  len = (int )tmp;
  assert_server_locked(server);
  }
  if (len > 255) {
    len = 255;
  } else {
  }
  {
  ncp_add_byte(server, (int )((__u8 )len));
  ncp_add_mem(server, (void const *)s, len);
  }
  return;
}
}
__inline static void ncp_init_request(struct ncp_server *server )
{
  {
  {
  ncp_lock_server(server);
  server->current_size = 7;
  server->has_subfunction = 0;
  }
  return;
}
}
__inline static void ncp_init_request_s(struct ncp_server *server , int subfunction )
{
  {
  {
  ncp_lock_server(server);
  server->current_size = 9;
  ncp_add_byte(server, (int )((__u8 )subfunction));
  server->has_subfunction = 1;
  }
  return;
}
}
__inline static char *ncp_reply_data(struct ncp_server *server , int offset )
{
  {
  return ((char *)(server->packet + ((unsigned long )offset + 8UL)));
}
}
__inline static u8 BVAL(void const *data )
{
  {
  return ((u8 )*((u8 const *)data));
}
}
static u8 ncp_reply_byte(struct ncp_server *server , int offset )
{
  char *tmp ;
  {
  {
  tmp = ncp_reply_data(server, offset);
  }
  return ((u8 )*((u8 const *)tmp));
}
}
__inline static __u16 WVAL_LH(void const *data )
{
  __u16 tmp ;
  {
  {
  tmp = get_unaligned_le16(data);
  }
  return (tmp);
}
}
static __u16 ncp_reply_le16(struct ncp_server *server , int offset )
{
  char *tmp ;
  __u16 tmp___0 ;
  {
  {
  tmp = ncp_reply_data(server, offset);
  tmp___0 = get_unaligned_le16((void const *)tmp);
  }
  return (tmp___0);
}
}
static __u16 ncp_reply_be16(struct ncp_server *server , int offset )
{
  char *tmp ;
  __u16 tmp___0 ;
  {
  {
  tmp = ncp_reply_data(server, offset);
  tmp___0 = get_unaligned_be16((void const *)tmp);
  }
  return (tmp___0);
}
}
__inline static __u32 DVAL_LH(void const *data )
{
  __u32 tmp ;
  {
  {
  tmp = get_unaligned_le32(data);
  }
  return (tmp);
}
}
static __le32 ncp_reply_dword(struct ncp_server *server , int offset )
{
  char *tmp ;
  __u32 tmp___0 ;
  {
  {
  tmp = ncp_reply_data(server, offset);
  tmp___0 = get_unaligned_le32((void const *)tmp);
  }
  return (tmp___0);
}
}
__inline static __u32 ncp_reply_dword_lh(struct ncp_server *server , int offset )
{
  __le32 tmp ;
  {
  {
  tmp = ncp_reply_dword(server, offset);
  }
  return (tmp);
}
}
int ncp_negotiate_buffersize(struct ncp_server *server , int size , int *target )
{
  int result ;
  unsigned int __min1 ;
  __u16 tmp ;
  unsigned int __min2 ;
  {
  {
  ncp_init_request(server);
  ncp_add_be16(server, (int )((__u16 )size));
  result = ncp_request(server, 33);
  }
  if (result != 0) {
    {
    ncp_unlock_server(server);
    }
    return (result);
  } else {
  }
  {
  tmp = ncp_reply_be16(server, 0);
  __min1 = (unsigned int )tmp;
  __min2 = (unsigned int )size;
  *target = (int )(__min1 < __min2 ? __min1 : __min2);
  ncp_unlock_server(server);
  }
  return (0);
}
}
int ncp_negotiate_size_and_options(struct ncp_server *server , int size , int options ,
                                   int *ret_size , int *ret_options )
{
  int result ;
  __u16 tmp ;
  int _min1 ;
  int _min2 ;
  u8 tmp___0 ;
  {
  if (size <= 511) {
    size = 512;
  } else {
  }
  {
  ncp_init_request(server);
  ncp_add_be16(server, (int )((__u16 )size));
  ncp_add_byte(server, (int )((__u8 )options));
  result = ncp_request(server, 97);
  }
  if (result != 0) {
    {
    ncp_unlock_server(server);
    }
    return (result);
  } else {
  }
  {
  tmp = ncp_reply_be16(server, 0);
  result = (int )tmp;
  }
  if (result > 511) {
    _min1 = result;
    _min2 = size;
    size = _min1 < _min2 ? _min1 : _min2;
  } else {
  }
  {
  *ret_size = size;
  tmp___0 = ncp_reply_byte(server, 4);
  *ret_options = (int )tmp___0;
  ncp_unlock_server(server);
  }
  return (0);
}
}
int ncp_get_volume_info_with_number(struct ncp_server *server , int n , struct ncp_volume_info *target )
{
  int result ;
  int len ;
  u8 tmp ;
  char *tmp___1 ;
  {
  {
  ncp_init_request_s(server, 44);
  ncp_add_byte(server, (int )((__u8 )n));
  result = ncp_request(server, 22);
  }
  if (result != 0) {
    goto out;
  } else {
  }
  {
  target->total_blocks = ncp_reply_dword_lh(server, 0);
  target->free_blocks = ncp_reply_dword_lh(server, 4);
  target->purgeable_blocks = ncp_reply_dword_lh(server, 8);
  target->not_yet_purgeable_blocks = ncp_reply_dword_lh(server, 12);
  target->total_dir_entries = ncp_reply_dword_lh(server, 16);
  target->available_dir_entries = ncp_reply_dword_lh(server, 20);
  target->sectors_per_block = ncp_reply_byte(server, 28);
  memset((void *)(& target->volume_name), 0, 17UL);
  result = -5;
  tmp = ncp_reply_byte(server, 29);
  len = (int )tmp;
  }
  if (len > 16) {
    goto out;
  } else {
  }
  {
  tmp___1 = ncp_reply_data(server, 30);
  memcpy((void *)(& target->volume_name), (void const *)tmp___1, (size_t )len);
  result = 0;
  }
  out:
  {
  ncp_unlock_server(server);
  }
  return (result);
}
}
int ncp_get_directory_info(struct ncp_server *server , __u8 n , struct ncp_volume_info *target )
{
  int result ;
  int len ;
  u8 tmp ;
  char *tmp___1 ;
  {
  {
  ncp_init_request_s(server, 45);
  ncp_add_byte(server, (int )n);
  result = ncp_request(server, 22);
  }
  if (result != 0) {
    goto out;
  } else {
  }
  {
  target->total_blocks = ncp_reply_dword_lh(server, 0);
  target->free_blocks = ncp_reply_dword_lh(server, 4);
  target->purgeable_blocks = 0U;
  target->not_yet_purgeable_blocks = 0U;
  target->total_dir_entries = ncp_reply_dword_lh(server, 8);
  target->available_dir_entries = ncp_reply_dword_lh(server, 12);
  target->sectors_per_block = ncp_reply_byte(server, 20);
  memset((void *)(& target->volume_name), 0, 17UL);
  result = -5;
  tmp = ncp_reply_byte(server, 21);
  len = (int )tmp;
  }
  if (len > 16) {
    goto out;
  } else {
  }
  {
  tmp___1 = ncp_reply_data(server, 22);
  memcpy((void *)(& target->volume_name), (void const *)tmp___1, (size_t )len);
  result = 0;
  }
  out:
  {
  ncp_unlock_server(server);
  }
  return (result);
}
}
int ncp_close_file(struct ncp_server *server , char const *file_id )
{
  int result ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, 0);
  ncp_add_mem(server, (void const *)file_id, 6);
  result = ncp_request(server, 66);
  ncp_unlock_server(server);
  }
  return (result);
}
}
int ncp_make_closed(struct inode *inode )
{
  int err ;
  struct ncp_inode_info *tmp ;
  struct ncp_inode_info *tmp___0 ;
  struct ncp_inode_info *tmp___1 ;
  struct ncp_server *tmp___2 ;
  struct ncp_inode_info *tmp___6 ;
  int tmp___7 ;
  struct ncp_inode_info *tmp___8 ;
  {
  {
  err = 0;
  tmp = NCP_FINFO((struct inode const *)inode);
  ldv_mutex_lock_92___2(& tmp->open_mutex);
  tmp___6 = NCP_FINFO((struct inode const *)inode);
  tmp___7 = atomic_read((atomic_t const *)(& tmp___6->opened));
  }
  if (tmp___7 == 1) {
    {
    tmp___0 = NCP_FINFO((struct inode const *)inode);
    atomic_set(& tmp___0->opened, 0);
    tmp___1 = NCP_FINFO((struct inode const *)inode);
    tmp___2 = NCP_SBP((struct super_block const *)inode->i_sb);
    err = ncp_close_file(tmp___2, (char const *)(& tmp___1->file_handle));
    }
  } else {
  }
  {
  tmp___8 = NCP_FINFO((struct inode const *)inode);
  ldv_mutex_unlock_93___2(& tmp___8->open_mutex);
  }
  return (err);
}
}
static void ncp_add_handle_path(struct ncp_server *server , __u8 vol_num , __le32 dir_base ,
                                int have_dir_base , char const *path )
{
  {
  {
  ncp_add_byte(server, (int )vol_num);
  ncp_add_dword(server, dir_base);
  }
  if (have_dir_base != 0) {
    {
    ncp_add_byte(server, 1);
    }
  } else {
    {
    ncp_add_byte(server, 255);
    }
  }
  if ((unsigned long )path != (unsigned long )((char const *)0)) {
    {
    ncp_add_byte(server, 1);
    ncp_add_pstring(server, path);
    }
  } else {
    {
    ncp_add_byte(server, 0);
    }
  }
  return;
}
}
int ncp_dirhandle_alloc(struct ncp_server *server , __u8 volnum , __le32 dirent ,
                        __u8 *dirhandle )
{
  int result ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, 12);
  ncp_add_byte(server, 0);
  ncp_add_byte(server, 0);
  ncp_add_word(server, 0);
  ncp_add_handle_path(server, (int )volnum, dirent, 1, (char const *)0);
  result = ncp_request(server, 87);
  }
  if (result == 0) {
    {
    *dirhandle = ncp_reply_byte(server, 0);
    }
  } else {
  }
  {
  ncp_unlock_server(server);
  }
  return (result);
}
}
int ncp_dirhandle_free(struct ncp_server *server , __u8 dirhandle )
{
  int result ;
  {
  {
  ncp_init_request_s(server, 20);
  ncp_add_byte(server, (int )dirhandle);
  result = ncp_request(server, 22);
  ncp_unlock_server(server);
  }
  return (result);
}
}
void ncp_extract_file_info(void const *structure , struct nw_info_struct *target )
{
  __u8 const *name_len ;
  int info_struct_size ;
  {
  {
  info_struct_size = 76;
  memcpy((void *)target, structure, (size_t )info_struct_size);
  name_len = (__u8 const *)structure + 76U;
  target->nameLen = *name_len;
  memcpy((void *)(& target->entryName), (void const *)name_len + 1U, (size_t )*name_len);
  target->entryName[(int )*name_len] = 0U;
  target->volNumber = target->volNumber;
  }
  return;
}
}
__inline static void ncp_extract_nfs_info(unsigned char const *structure , struct nw_nfs_info *target )
{
  {
  {
  target->mode = DVAL_LH((void const *)structure);
  target->rdev = DVAL_LH((void const *)structure + 8U);
  }
  return;
}
}
int ncp_obtain_nfs_info(struct ncp_server *server , struct nw_info_struct *target )
{
  int result ;
  __u32 volnum ;
  char *tmp ;
  int tmp___1 ;
  {
  {
  result = 0;
  volnum = target->volNumber;
  tmp___1 = ncp_is_nfs_extras(server, volnum);
  }
  if (tmp___1 != 0) {
    {
    ncp_init_request(server);
    ncp_add_byte(server, 19);
    ncp_add_byte(server, (int )server->name_space[volnum]);
    ncp_add_byte(server, 2);
    ncp_add_byte(server, 0);
    ncp_add_byte(server, (int )((__u8 )volnum));
    ncp_add_dword(server, target->dirEntNum);
    ncp_add_dword_lh(server, 26U);
    result = ncp_request(server, 87);
    }
    if (result == 0) {
      {
      tmp = ncp_reply_data(server, 0);
      ncp_extract_nfs_info((unsigned char const *)tmp, & target->nfs);
      }
    } else {
      target->nfs.mode = 0U;
      target->nfs.rdev = 0U;
    }
    {
    ncp_unlock_server(server);
    }
  } else {
    target->nfs.mode = 0U;
    target->nfs.rdev = 0U;
  }
  return (result);
}
}
int ncp_obtain_info(struct ncp_server *server , struct inode *dir , char const *path ,
                    struct nw_info_struct *target )
{
  __u8 volnum ;
  struct ncp_inode_info *tmp ;
  __le32 dirent ;
  struct ncp_inode_info *tmp___0 ;
  int result ;
  char *tmp___1 ;
  {
  {
  tmp = NCP_FINFO((struct inode const *)dir);
  volnum = tmp->volNumber;
  tmp___0 = NCP_FINFO((struct inode const *)dir);
  dirent = tmp___0->dirEntNum;
  }
  if ((unsigned long )target == (unsigned long )((struct nw_info_struct *)0)) {
    {
    printk("\vncpfs: %s: invalid call\n", "ncp_obtain_info");
    }
    return (-22);
  } else {
  }
  {
  ncp_init_request(server);
  ncp_add_byte(server, 6);
  ncp_add_byte(server, (int )server->name_space[(int )volnum]);
  ncp_add_byte(server, (int )server->name_space[(int )volnum]);
  ncp_add_word(server, 32774);
  ncp_add_dword(server, 4095U);
  ncp_add_handle_path(server, (int )volnum, dirent, 1, path);
  result = ncp_request(server, 87);
  }
  if (result != 0) {
    goto out;
  } else {
  }
  {
  tmp___1 = ncp_reply_data(server, 0);
  ncp_extract_file_info((void const *)tmp___1, target);
  ncp_unlock_server(server);
  result = ncp_obtain_nfs_info(server, target);
  }
  return (result);
  out:
  {
  ncp_unlock_server(server);
  }
  return (result);
}
}
static int ncp_obtain_DOS_dir_base(struct ncp_server *server , __u8 ns , __u8 volnum ,
                                   __le32 dirent , char const *path , __le32 *DOS_dir_base )
{
  int result ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, 6);
  ncp_add_byte(server, (int )ns);
  ncp_add_byte(server, (int )ns);
  ncp_add_word(server, 32774);
  ncp_add_dword(server, 1024U);
  ncp_add_handle_path(server, (int )volnum, dirent, 1, path);
  result = ncp_request(server, 87);
  }
  if (result == 0) {
    if ((unsigned long )DOS_dir_base != (unsigned long )((__le32 *)0U)) {
      {
      *DOS_dir_base = ncp_reply_dword(server, 52);
      }
    } else {
    }
  } else {
  }
  {
  ncp_unlock_server(server);
  }
  return (result);
}
}
__inline static int ncp_get_known_namespace(struct ncp_server *server , __u8 volume )
{
  int result ;
  __u8 *namespace ;
  __u16 no_namespaces ;
  char *tmp ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, 24);
  ncp_add_word(server, 0);
  ncp_add_byte(server, (int )volume);
  result = ncp_request(server, 87);
  }
  if (result != 0) {
    {
    ncp_unlock_server(server);
    }
    return (0);
  } else {
  }
  {
  result = 0;
  no_namespaces = ncp_reply_le16(server, 0);
  tmp = ncp_reply_data(server, 2);
  namespace = (__u8 *)tmp;
  }
  goto ldv_30587;
  ldv_30586: ;
  if ((unsigned int )*namespace == 2U && (server->m.flags & 16UL) == 0UL) {
    result = 2;
    goto ldv_30585;
  } else {
  }
  if ((unsigned int )*namespace == 4U && (server->m.flags & 8UL) == 0UL) {
    result = 4;
  } else {
  }
  namespace = namespace + 1UL;
  no_namespaces = (unsigned int )no_namespaces + 65535U;
  ldv_30587: ;
  if ((unsigned int )no_namespaces != 0U) {
    goto ldv_30586;
  } else {
  }
  ldv_30585:
  {
  ncp_unlock_server(server);
  }
  return (result);
}
}
int ncp_update_known_namespace(struct ncp_server *server , __u8 volume , int *ret_ns )
{
  int ns ;
  int tmp ;
  {
  {
  tmp = ncp_get_known_namespace(server, (int )volume);
  ns = tmp;
  }
  if ((unsigned long )ret_ns != (unsigned long )((int *)0)) {
    *ret_ns = ns;
  } else {
  }
  if ((int )server->name_space[(int )volume] == ns) {
    return (0);
  } else {
  }
  server->name_space[(int )volume] = (__u8 )ns;
  return (1);
}
}
static int ncp_ObtainSpecificDirBase(struct ncp_server *server , __u8 nsSrc , __u8 nsDst ,
                                     __u8 vol_num , __le32 dir_base , char const *path ,
                                     __le32 *dirEntNum , __le32 *DosDirNum )
{
  int result ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, 6);
  ncp_add_byte(server, (int )nsSrc);
  ncp_add_byte(server, (int )nsDst);
  ncp_add_word(server, 32774);
  ncp_add_dword(server, 4095U);
  ncp_add_handle_path(server, (int )vol_num, dir_base, 1, path);
  result = ncp_request(server, 87);
  }
  if (result != 0) {
    {
    ncp_unlock_server(server);
    }
    return (result);
  } else {
  }
  if ((unsigned long )dirEntNum != (unsigned long )((__le32 *)0U)) {
    {
    *dirEntNum = ncp_reply_dword(server, 48);
    }
  } else {
  }
  if ((unsigned long )DosDirNum != (unsigned long )((__le32 *)0U)) {
    {
    *DosDirNum = ncp_reply_dword(server, 52);
    }
  } else {
  }
  {
  ncp_unlock_server(server);
  }
  return (0);
}
}
int ncp_mount_subdir(struct ncp_server *server , __u8 volNumber , __u8 srcNS , __le32 dirEntNum ,
                     __u32 *volume , __le32 *newDirEnt , __le32 *newDosEnt )
{
  int dstNS ;
  int result ;
  {
  {
  ncp_update_known_namespace(server, (int )volNumber, & dstNS);
  result = ncp_ObtainSpecificDirBase(server, (int )srcNS, (int )((__u8 )dstNS), (int )volNumber,
                                     dirEntNum, (char const *)0, newDirEnt, newDosEnt);
  }
  if (result != 0) {
    return (result);
  } else {
  }
  *volume = (__u32 )volNumber;
  server->m.mounted_vol[1] = 0U;
  server->m.mounted_vol[0] = 88U;
  return (0);
}
}
int ncp_get_volume_root(struct ncp_server *server , char const *volname , __u32 *volume ,
                        __le32 *dirent , __le32 *dosdirent )
{
  int result ;
  __le32 tmp___0 ;
  u8 tmp___1 ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, 22);
  ncp_add_byte(server, 0);
  ncp_add_byte(server, 0);
  ncp_add_byte(server, 0);
  ncp_add_byte(server, 0);
  ncp_add_byte(server, 0);
  ncp_add_dword(server, 0U);
  ncp_add_byte(server, 255);
  ncp_add_byte(server, 1);
  ncp_add_pstring(server, volname);
  result = ncp_request(server, 87);
  }
  if (result != 0) {
    {
    ncp_unlock_server(server);
    }
    return (result);
  } else {
  }
  {
  tmp___0 = ncp_reply_dword(server, 4);
  *dosdirent = tmp___0;
  *dirent = tmp___0;
  tmp___1 = ncp_reply_byte(server, 8);
  *volume = (__u32 )tmp___1;
  ncp_unlock_server(server);
  }
  return (0);
}
}
int ncp_lookup_volume(struct ncp_server *server , char const *volname , struct nw_info_struct *target )
{
  int result ;
  size_t tmp ;
  __le16 tmp___0 ;
  __le16 tmp___1 ;
  __le16 tmp___2 ;
  {
  {
  memset((void *)target, 0, 341UL);
  result = ncp_get_volume_root(server, volname, & target->volNumber, & target->dirEntNum,
                               & target->DosDirNum);
  }
  if (result != 0) {
    return (result);
  } else {
  }
  {
  ncp_update_known_namespace(server, (int )((__u8 )target->volNumber), (int *)0);
  tmp = strlen(volname);
  target->nameLen = (__u8 )tmp;
  memcpy((void *)(& target->entryName), (void const *)volname, (size_t )((int )target->nameLen + 1));
  target->attributes = 16U;
  tmp___0 = 0U;
  target->modifyTime = tmp___0;
  target->creationTime = tmp___0;
  tmp___2 = 3105U;
  target->lastAccessDate = tmp___2;
  tmp___1 = tmp___2;
  target->modifyDate = tmp___1;
  target->creationDate = tmp___1;
  target->nfs.mode = 0U;
  }
  return (0);
}
}
int ncp_modify_file_or_subdir_dos_info_path(struct ncp_server *server , struct inode *dir ,
                                            char const *path , __le32 info_mask ,
                                            struct nw_modify_dos_info const *info )
{
  __u8 volnum ;
  struct ncp_inode_info *tmp ;
  __le32 dirent ;
  struct ncp_inode_info *tmp___0 ;
  int result ;
  {
  {
  tmp = NCP_FINFO((struct inode const *)dir);
  volnum = tmp->volNumber;
  tmp___0 = NCP_FINFO((struct inode const *)dir);
  dirent = tmp___0->dirEntNum;
  ncp_init_request(server);
  ncp_add_byte(server, 7);
  ncp_add_byte(server, (int )server->name_space[(int )volnum]);
  ncp_add_byte(server, 0);
  ncp_add_word(server, 32774);
  ncp_add_dword(server, info_mask);
  ncp_add_mem(server, (void const *)info, 38);
  ncp_add_handle_path(server, (int )volnum, dirent, 1, path);
  result = ncp_request(server, 87);
  ncp_unlock_server(server);
  }
  return (result);
}
}
int ncp_modify_file_or_subdir_dos_info(struct ncp_server *server , struct inode *dir ,
                                       __le32 info_mask , struct nw_modify_dos_info const *info )
{
  int tmp ;
  {
  {
  tmp = ncp_modify_file_or_subdir_dos_info_path(server, dir, (char const *)0, info_mask,
                                                info);
  }
  return (tmp);
}
}
int ncp_modify_nfs_info(struct ncp_server *server , __u8 volnum , __le32 dirent ,
                        __u32 mode , __u32 rdev )
{
  int result ;
  {
  {
  result = 0;
  ncp_init_request(server);
  }
  if ((unsigned int )server->name_space[(int )volnum] == 2U) {
    {
    ncp_add_byte(server, 25);
    ncp_add_byte(server, (int )server->name_space[(int )volnum]);
    ncp_add_byte(server, 2);
    ncp_add_byte(server, (int )volnum);
    ncp_add_dword(server, dirent);
    ncp_add_dword_lh(server, 26U);
    ncp_add_dword_lh(server, mode);
    ncp_add_dword_lh(server, 1U);
    ncp_add_dword_lh(server, rdev);
    result = ncp_request(server, 87);
    }
  } else {
  }
  {
  ncp_unlock_server(server);
  }
  return (result);
}
}
static int ncp_DeleteNSEntry(struct ncp_server *server , __u8 have_dir_base , __u8 volnum ,
                             __le32 dirent , char const *name , __u8 ns , __le16 attr )
{
  int result ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, 8);
  ncp_add_byte(server, (int )ns);
  ncp_add_byte(server, 0);
  ncp_add_word(server, (int )attr);
  ncp_add_handle_path(server, (int )volnum, dirent, (int )have_dir_base, name);
  result = ncp_request(server, 87);
  ncp_unlock_server(server);
  }
  return (result);
}
}
int ncp_del_file_or_subdir2(struct ncp_server *server , struct dentry *dentry )
{
  struct inode *inode ;
  __u8 volnum ;
  __le32 dirent ;
  struct ncp_inode_info *tmp ;
  struct ncp_inode_info *tmp___0 ;
  int tmp___1 ;
  {
  inode = dentry->d_inode;
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    return (255);
  } else {
  }
  {
  tmp = NCP_FINFO((struct inode const *)inode);
  volnum = tmp->volNumber;
  tmp___0 = NCP_FINFO((struct inode const *)inode);
  dirent = tmp___0->DosDirNum;
  tmp___1 = ncp_DeleteNSEntry(server, 1, (int )volnum, dirent, (char const *)0,
                              0, 32774);
  }
  return (tmp___1);
}
}
int ncp_del_file_or_subdir(struct ncp_server *server , struct inode *dir , char const *name )
{
  __u8 volnum ;
  struct ncp_inode_info *tmp ;
  __le32 dirent ;
  struct ncp_inode_info *tmp___0 ;
  int name_space ;
  int result ;
  int tmp___1 ;
  {
  {
  tmp = NCP_FINFO((struct inode const *)dir);
  volnum = tmp->volNumber;
  tmp___0 = NCP_FINFO((struct inode const *)dir);
  dirent = tmp___0->dirEntNum;
  name_space = (int )server->name_space[(int )volnum];
  }
  if (name_space == 2) {
    {
    result = ncp_obtain_DOS_dir_base(server, (int )((__u8 )name_space), (int )volnum,
                                     dirent, name, & dirent);
    }
    if (result != 0) {
      return (result);
    } else {
    }
    name = (char const *)0;
    name_space = 0;
  } else {
  }
  {
  tmp___1 = ncp_DeleteNSEntry(server, 1, (int )volnum, dirent, name, (int )((__u8 )name_space),
                              32774);
  }
  return (tmp___1);
}
}
__inline static void ConvertToNWfromDWORD(__u16 v0 , __u16 v1 , __u8 *ret )
{
  __le16 *dest ;
  {
  dest = (__le16 *)ret;
  *(dest + 1UL) = v0;
  *(dest + 2UL) = v1;
  *dest = (unsigned int )v0 + 1U;
  return;
}
}
int ncp_open_create_file_or_subdir(struct ncp_server *server , struct inode *dir ,
                                   char const *name , int open_create_mode , __le32 create_attributes ,
                                   __le16 desired_acc_rights , struct ncp_entry_info *target )
{
  __le16 search_attribs ;
  __u8 volnum ;
  __le32 dirent ;
  int result ;
  struct ncp_inode_info *tmp ;
  struct ncp_inode_info *tmp___0 ;
  char *tmp___1 ;
  __u16 tmp___2 ;
  __u16 tmp___3 ;
  {
  {
  search_attribs = 6U;
  tmp = NCP_FINFO((struct inode const *)dir);
  volnum = tmp->volNumber;
  tmp___0 = NCP_FINFO((struct inode const *)dir);
  dirent = tmp___0->dirEntNum;
  }
  if ((create_attributes & 16U) != 0U) {
    search_attribs = (__le16 )((unsigned int )search_attribs | 32768U);
  } else {
  }
  {
  ncp_init_request(server);
  ncp_add_byte(server, 1);
  ncp_add_byte(server, (int )server->name_space[(int )volnum]);
  ncp_add_byte(server, (int )((__u8 )open_create_mode));
  ncp_add_word(server, (int )search_attribs);
  ncp_add_dword(server, 4095U);
  ncp_add_dword(server, create_attributes);
  ncp_add_word(server, (int )desired_acc_rights);
  ncp_add_handle_path(server, (int )volnum, dirent, 1, name);
  result = ncp_request(server, 87);
  }
  if (result != 0) {
    goto out;
  } else {
  }
  if ((create_attributes & 16U) == 0U) {
    target->opened = 1;
  } else {
  }
  {
  tmp___1 = ncp_reply_data(server, 6);
  ncp_extract_file_info((void const *)tmp___1, & target->i);
  target->volume = target->i.volNumber;
  tmp___2 = ncp_reply_le16(server, 2);
  tmp___3 = ncp_reply_le16(server, 0);
  ConvertToNWfromDWORD((int )tmp___3, (int )tmp___2, (__u8 *)(& target->file_handle));
  ncp_unlock_server(server);
  ncp_obtain_nfs_info(server, & target->i);
  }
  return (0);
  out:
  {
  ncp_unlock_server(server);
  }
  return (result);
}
}
int ncp_initialize_search(struct ncp_server *server , struct inode *dir , struct nw_search_sequence *target )
{
  __u8 volnum ;
  struct ncp_inode_info *tmp ;
  __le32 dirent ;
  struct ncp_inode_info *tmp___0 ;
  int result ;
  char *tmp___1 ;
  {
  {
  tmp = NCP_FINFO((struct inode const *)dir);
  volnum = tmp->volNumber;
  tmp___0 = NCP_FINFO((struct inode const *)dir);
  dirent = tmp___0->dirEntNum;
  ncp_init_request(server);
  ncp_add_byte(server, 2);
  ncp_add_byte(server, (int )server->name_space[(int )volnum]);
  ncp_add_byte(server, 0);
  ncp_add_handle_path(server, (int )volnum, dirent, 1, (char const *)0);
  result = ncp_request(server, 87);
  }
  if (result != 0) {
    goto out;
  } else {
  }
  {
  tmp___1 = ncp_reply_data(server, 0);
  memcpy((void *)target, (void const *)tmp___1, 9UL);
  }
  out:
  {
  ncp_unlock_server(server);
  }
  return (result);
}
}
int ncp_search_for_fileset(struct ncp_server *server , struct nw_search_sequence *seq ,
                           int *more , int *cnt , char *buffer , size_t bufsize ,
                           char **rbuf , size_t *rsize )
{
  int result ;
  __u16 tmp ;
  u8 tmp___0 ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, 20);
  ncp_add_byte(server, (int )server->name_space[(int )seq->volNumber]);
  ncp_add_byte(server, 0);
  ncp_add_word(server, 32774);
  ncp_add_dword(server, 4095U);
  ncp_add_word(server, 32767);
  ncp_add_mem(server, (void const *)seq, 9);
  }
  if ((unsigned int )server->name_space[(int )seq->volNumber] == 2U) {
    {
    ncp_add_byte(server, 0);
    }
  } else {
    {
    ncp_add_byte(server, 2);
    ncp_add_byte(server, 255);
    ncp_add_byte(server, 42);
    }
  }
  {
  result = ncp_request2(server, 87, (void *)buffer, (int )bufsize);
  }
  if (result != 0) {
    {
    ncp_unlock_server(server);
    }
    return (result);
  } else {
  }
  if (server->ncp_reply_size <= 11) {
    {
    ncp_unlock_server(server);
    }
    return (255);
  } else {
  }
  {
  *rsize = (size_t )(server->ncp_reply_size + -12);
  ncp_unlock_server(server);
  buffer = buffer + 8UL;
  *rbuf = buffer + 12UL;
  tmp = WVAL_LH((void const *)buffer + 10U);
  *cnt = (int )tmp;
  tmp___0 = BVAL((void const *)buffer + 9U);
  *more = (int )tmp___0;
  memcpy((void *)seq, (void const *)buffer, 9UL);
  }
  return (0);
}
}
static int ncp_RenameNSEntry(struct ncp_server *server , struct inode *old_dir , char const *old_name ,
                             __le16 old_type , struct inode *new_dir , char const *new_name )
{
  int result ;
  struct ncp_inode_info *tmp ;
  struct ncp_inode_info *tmp___0 ;
  struct ncp_inode_info *tmp___1 ;
  struct ncp_inode_info *tmp___2 ;
  struct ncp_inode_info *tmp___3 ;
  {
  result = -22;
  if (((unsigned long )old_dir == (unsigned long )((struct inode *)0) || (unsigned long )old_name == (unsigned long )((char const *)0)) || ((unsigned long )new_dir == (unsigned long )((struct inode *)0) || (unsigned long )new_name == (unsigned long )((char const *)0))) {
    goto out;
  } else {
  }
  {
  ncp_init_request(server);
  ncp_add_byte(server, 4);
  tmp = NCP_FINFO((struct inode const *)old_dir);
  ncp_add_byte(server, (int )server->name_space[(int )tmp->volNumber]);
  ncp_add_byte(server, 1);
  ncp_add_word(server, (int )old_type);
  tmp___0 = NCP_FINFO((struct inode const *)old_dir);
  ncp_add_byte(server, (int )tmp___0->volNumber);
  tmp___1 = NCP_FINFO((struct inode const *)old_dir);
  ncp_add_dword(server, tmp___1->dirEntNum);
  ncp_add_byte(server, 1);
  ncp_add_byte(server, 1);
  tmp___2 = NCP_FINFO((struct inode const *)new_dir);
  ncp_add_byte(server, (int )tmp___2->volNumber);
  tmp___3 = NCP_FINFO((struct inode const *)new_dir);
  ncp_add_dword(server, tmp___3->dirEntNum);
  ncp_add_byte(server, 1);
  ncp_add_byte(server, 1);
  ncp_add_pstring(server, old_name);
  ncp_add_pstring(server, new_name);
  result = ncp_request(server, 87);
  ncp_unlock_server(server);
  }
  out: ;
  return (result);
}
}
int ncp_ren_or_mov_file_or_subdir(struct ncp_server *server , struct inode *old_dir ,
                                  char const *old_name , struct inode *new_dir ,
                                  char const *new_name )
{
  int result ;
  __le16 old_type ;
  {
  {
  old_type = 6U;
  result = ncp_RenameNSEntry(server, old_dir, old_name, (int )old_type, new_dir, new_name);
  }
  if (result == 255) {
    {
    old_type = 22U;
    result = ncp_RenameNSEntry(server, old_dir, old_name, (int )old_type, new_dir,
                               new_name);
    }
  } else {
  }
  if (result != 146) {
    return (result);
  } else {
  }
  {
  result = ncp_del_file_or_subdir(server, new_dir, new_name);
  }
  if (result != 0) {
    return (-13);
  } else {
  }
  {
  result = ncp_RenameNSEntry(server, old_dir, old_name, (int )old_type, new_dir, new_name);
  }
  return (result);
}
}
int ncp_read_kernel(struct ncp_server *server , char const *file_id , __u32 offset ,
                    __u16 to_read , char *target , int *bytes_read )
{
  char const *source ;
  int result ;
  __u16 tmp ;
  char *tmp___0 ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, 0);
  ncp_add_mem(server, (void const *)file_id, 6);
  ncp_add_be32(server, offset);
  ncp_add_be16(server, (int )to_read);
  result = ncp_request(server, 72);
  }
  if (result != 0) {
    goto out;
  } else {
  }
  {
  tmp = ncp_reply_be16(server, 0);
  *bytes_read = (int )tmp;
  tmp___0 = ncp_reply_data(server, (int )((offset & 1U) + 2U));
  source = (char const *)tmp___0;
  memcpy((void *)target, (void const *)source, (size_t )*bytes_read);
  }
  out:
  {
  ncp_unlock_server(server);
  }
  return (result);
}
}
int ncp_read_bounce(struct ncp_server *server , char const *file_id , __u32 offset ,
                    __u16 to_read , char *target , int *bytes_read , void *bounce ,
                    __u32 bufsize )
{
  int result ;
  int len ;
  __u16 tmp ;
  char *source ;
  unsigned long tmp___0 ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, 0);
  ncp_add_mem(server, (void const *)file_id, 6);
  ncp_add_be32(server, offset);
  ncp_add_be16(server, (int )to_read);
  result = ncp_request2(server, 72, bounce, (int )bufsize);
  ncp_unlock_server(server);
  }
  if (result == 0) {
    {
    tmp = get_unaligned_be16((void const *)bounce + 8U);
    len = (int )tmp;
    result = -5;
    }
    if (len <= (int )to_read) {
      {
      source = (char *)bounce + (((unsigned long )offset & 1UL) + 10UL);
      *bytes_read = len;
      result = 0;
      tmp___0 = copy_to_user((void *)target, (void const *)source, (unsigned long )len);
      }
      if (tmp___0 != 0UL) {
        result = -14;
      } else {
      }
    } else {
    }
  } else {
  }
  return (result);
}
}
int ncp_write_kernel(struct ncp_server *server , char const *file_id , __u32 offset ,
                     __u16 to_write , char const *source , int *bytes_written )
{
  int result ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, 0);
  ncp_add_mem(server, (void const *)file_id, 6);
  ncp_add_be32(server, offset);
  ncp_add_be16(server, (int )to_write);
  ncp_add_mem(server, (void const *)source, (int )to_write);
  result = ncp_request(server, 73);
  }
  if (result == 0) {
    *bytes_written = (int )to_write;
  } else {
  }
  {
  ncp_unlock_server(server);
  }
  return (result);
}
}
int ncp_LogPhysicalRecord(struct ncp_server *server , char const *file_id , __u8 locktype ,
                          __u32 offset , __u32 length , __u16 timeout )
{
  int result ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, (int )locktype);
  ncp_add_mem(server, (void const *)file_id, 6);
  ncp_add_be32(server, offset);
  ncp_add_be32(server, length);
  ncp_add_be16(server, (int )timeout);
  result = ncp_request(server, 26);
  }
  if (result != 0) {
    {
    ncp_unlock_server(server);
    }
    return (result);
  } else {
  }
  {
  ncp_unlock_server(server);
  }
  return (0);
}
}
int ncp_ClearPhysicalRecord(struct ncp_server *server , char const *file_id , __u32 offset ,
                            __u32 length )
{
  int result ;
  {
  {
  ncp_init_request(server);
  ncp_add_byte(server, 0);
  ncp_add_mem(server, (void const *)file_id, 6);
  ncp_add_be32(server, offset);
  ncp_add_be32(server, length);
  result = ncp_request(server, 30);
  }
  if (result != 0) {
    {
    ncp_unlock_server(server);
    }
    return (result);
  } else {
  }
  {
  ncp_unlock_server(server);
  }
  return (0);
}
}
int ncp__io2vol(struct ncp_server *server , unsigned char *vname , unsigned int *vlen ,
                unsigned char const *iname , unsigned int ilen , int cc )
{
  struct nls_table *in ;
  struct nls_table *out ;
  unsigned char *vname_start ;
  unsigned char *vname_end ;
  unsigned char const *iname_end ;
  int chl ;
  wchar_t ec ;
  int k ;
  unicode_t u ;
  int k___0 ;
  unsigned char nc ;
  int chi ;
  {
  in = server->nls_io;
  out = server->nls_vol;
  iname_end = iname + (unsigned long )ilen;
  vname_start = vname;
  vname_end = vname + ((unsigned long )*vlen + 0xffffffffffffffffUL);
  goto ldv_30820;
  ldv_30819: ;
  if ((int )server->flags & 1) {
    {
    k = utf8_to_utf32(iname, (int )((unsigned int )((long )iname_end) - (unsigned int )((long )iname)),
                      & u);
    }
    if (k < 0 || u > 65535U) {
      return (-22);
    } else {
    }
    iname = iname + (unsigned long )k;
    ec = (wchar_t )u;
  } else
  if ((unsigned int )((unsigned char )*iname) == 58U) {
    if ((long )iname_end - (long )iname <= 4L) {
      goto nospec;
    } else {
    }
    ec = 0U;
    k___0 = 1;
    goto ldv_30813;
    ldv_30812:
    nc = (unsigned int )((unsigned char )*(iname + (unsigned long )k___0)) + 208U;
    if ((unsigned int )nc > 9U) {
      nc = (unsigned int )nc + 249U;
      if ((unsigned int )nc - 10U > 5U) {
        goto nospec;
      } else {
      }
    } else {
    }
    ec = (wchar_t )((int )((short )((int )ec << 4)) | (int )((short )nc));
    k___0 = k___0 + 1;
    ldv_30813: ;
    if (k___0 <= 4) {
      goto ldv_30812;
    } else {
    }
    iname = iname + 5UL;
  } else {
    nospec:
    {
    chl = (*(in->char2uni))(iname, (int )((unsigned int )((long )iname_end) - (unsigned int )((long )iname)),
                            & ec);
    }
    if (chl < 0) {
      return (chl);
    } else {
    }
    iname = iname + (unsigned long )chl;
  }
  {
  chl = (*(out->uni2char))((int )ec, vname, (int )((unsigned int )((long )vname_end) - (unsigned int )((long )vname)));
  }
  if (chl < 0) {
    return (chl);
  } else {
  }
  if (cc != 0) {
    chi = 0;
    goto ldv_30817;
    ldv_30816:
    {
    *(vname + (unsigned long )chi) = nls_toupper(out, (int )*(vname + (unsigned long )chi));
    chi = chi + 1;
    }
    ldv_30817: ;
    if (chi < chl) {
      goto ldv_30816;
    } else {
    }
  } else {
  }
  vname = vname + (unsigned long )chl;
  ldv_30820: ;
  if ((unsigned long )iname < (unsigned long )iname_end) {
    goto ldv_30819;
  } else {
  }
  *vname = 0U;
  *vlen = (unsigned int )((long )vname) - (unsigned int )((long )vname_start);
  return (0);
}
}
int ncp__vol2io(struct ncp_server *server , unsigned char *iname , unsigned int *ilen ,
                unsigned char const *vname , unsigned int vlen , int cc )
{
  struct nls_table *in ;
  struct nls_table *out ;
  unsigned char const *vname_end ;
  unsigned char *iname_start ;
  unsigned char *iname_end ;
  unsigned char *vname_cc ;
  int err ;
  int i ;
  void *tmp ;
  wchar_t ec ;
  int chl ;
  int k ;
  int k___0 ;
  unsigned char v ;
  {
  in = server->nls_vol;
  out = server->nls_io;
  vname_cc = (unsigned char *)0U;
  if (cc != 0) {
    {
    tmp = kmalloc((size_t )vlen, 208U);
    vname_cc = (unsigned char *)tmp;
    }
    if ((unsigned long )vname_cc == (unsigned long )((unsigned char *)0U)) {
      return (-12);
    } else {
    }
    i = 0;
    goto ldv_30839;
    ldv_30838:
    {
    *(vname_cc + (unsigned long )i) = nls_tolower(in, (int )*(vname + (unsigned long )i));
    i = i + 1;
    }
    ldv_30839: ;
    if ((unsigned int )i < vlen) {
      goto ldv_30838;
    } else {
    }
    vname = (unsigned char const *)vname_cc;
  } else {
  }
  iname_start = iname;
  iname_end = iname + ((unsigned long )*ilen + 0xffffffffffffffffUL);
  vname_end = vname + (unsigned long )vlen;
  goto ldv_30851;
  ldv_30850:
  {
  chl = (*(in->char2uni))(vname, (int )((unsigned int )((long )vname_end) - (unsigned int )((long )vname)),
                          & ec);
  }
  if (chl < 0) {
    err = chl;
    goto quit;
  } else {
  }
  vname = vname + (unsigned long )chl;
  if ((int )server->flags & 1) {
    {
    k = utf32_to_utf8((unicode_t )ec, iname, (int )((unsigned int )((long )iname_end) - (unsigned int )((long )iname)));
    }
    if (k < 0) {
      err = -36;
      goto quit;
    } else {
    }
    iname = iname + (unsigned long )k;
  } else {
    {
    chl = (*(out->uni2char))((int )ec, iname, (int )((unsigned int )((long )iname_end) - (unsigned int )((long )iname)));
    }
    if (chl >= 0) {
      iname = iname + (unsigned long )chl;
    } else {
      if ((long )iname_end - (long )iname <= 4L) {
        err = -36;
        goto quit;
      } else {
      }
      *iname = 58U;
      k___0 = 4;
      goto ldv_30848;
      ldv_30847:
      v = ((unsigned int )((unsigned char )ec) & 15U) + 48U;
      if ((unsigned int )v > 57U) {
        v = (unsigned int )v + 7U;
      } else {
      }
      *(iname + (unsigned long )k___0) = v;
      ec = (wchar_t )((int )ec >> 4);
      k___0 = k___0 - 1;
      ldv_30848: ;
      if (k___0 > 0) {
        goto ldv_30847;
      } else {
      }
      iname = iname + 5UL;
    }
  }
  ldv_30851: ;
  if ((unsigned long )vname < (unsigned long )vname_end) {
    goto ldv_30850;
  } else {
  }
  *iname = 0U;
  *ilen = (unsigned int )((long )iname) - (unsigned int )((long )iname_start);
  err = 0;
  quit: ;
  if (cc != 0) {
    {
    kfree((void const *)vname_cc);
    }
  } else {
  }
  return (err);
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
static void ldv_mutex_lock_92___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_open_mutex_of_ncp_inode_info(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_93___2(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_ncp_inode_info(ldv_func_arg1);
  }
  return;
}
}
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v ) ;
static void ldv_mutex_lock_126(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_129(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_133(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_139(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_141(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_143(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_149(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_ncp_server(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_ncp_server(struct mutex *lock ) ;
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
__inline static void list_del_init(struct list_head *entry )
{
  {
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
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
__inline static struct task_struct *get_current___1(void)
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
  goto ldv_3606;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3606;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3606;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3606;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3606: ;
  return (pfo_ret__);
}
}
__inline static void atomic_inc(atomic_t *v ) ;
__inline static int atomic_dec_and_test(atomic_t *v ) ;
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_145(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_147(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_siglock_of_sighand_struct(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_siglock_of_sighand_struct(void) ;
static void ldv_mutex_unlock_127(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_130(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_131(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_132(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_136(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_137(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_140(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_142(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_144(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_150(struct mutex *ldv_func_arg1 ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_146(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_146(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int del_timer(struct timer_list * ) ;
static int ldv_del_timer_125(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_135(struct timer_list *ldv_func_arg1 ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_128(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_134(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_138(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
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
extern int kernel_sendmsg(struct socket * , struct msghdr * , struct kvec * , size_t ,
                          size_t ) ;
extern int kernel_recvmsg(struct socket * , struct msghdr * , struct kvec * , size_t ,
                          size_t , int ) ;
__inline static void siginitsetinv(sigset_t *set , unsigned long mask )
{
  {
  set->sig[0] = ~ mask;
  {
  if (1 == 2) {
    goto case_2;
  } else {
  }
  if (1 == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  switch_default:
  {
  memset((void *)(& set->sig) + 1U, -1, 0UL);
  }
  goto ldv_28083;
  case_2:
  set->sig[1] = 0xffffffffffffffffUL;
  case_1: ;
  switch_break: ;
  }
  ldv_28083: ;
  return;
}
}
extern void schedule(void) ;
extern void recalc_sigpending(void) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void ncp_invalidate_conn(struct ncp_server *server )
{
  {
  server->conn_status = (u8 )((unsigned int )server->conn_status | 1U);
  return;
}
}
void __sign_packet(struct ncp_server *server , char const *packet , size_t size ,
                   __u32 totalsize , void *sign_buff ) ;
int sign_verify_reply(struct ncp_server *server , char const *packet , size_t size ,
                      __u32 totalsize , void const *sign_buff ) ;
__inline static size_t sign_packet(struct ncp_server *server , char const *data ,
                                   size_t size , __u32 totalsize , void *sign_buff )
{
  {
  if (server->sign_active != 0) {
    {
    __sign_packet(server, data, size, totalsize, sign_buff);
    }
    return (8UL);
  } else {
  }
  return (0UL);
}
}
static int _recv(struct socket *sock , void *buf , int size , unsigned int flags )
{
  struct msghdr msg ;
  struct kvec iov ;
  int tmp ;
  {
  {
  msg.msg_name = (void *)0;
  msg.msg_namelen = 0;
  msg.msg_iter.type = 0;
  msg.msg_iter.iov_offset = 0UL;
  msg.msg_iter.count = 0UL;
  msg.msg_iter.__annonCompField62.iov = 0;
  msg.msg_iter.nr_segs = 0UL;
  msg.msg_control = 0;
  msg.msg_controllen = 0UL;
  msg.msg_flags = 0U;
  iov.iov_base = buf;
  iov.iov_len = (unsigned long )size;
  tmp = kernel_recvmsg(sock, & msg, & iov, 1UL, (size_t )size, (int )flags);
  }
  return (tmp);
}
}
__inline static int do_send(struct socket *sock , struct kvec *vec , int count , int len ,
                            unsigned int flags )
{
  struct msghdr msg ;
  int tmp ;
  {
  {
  msg.msg_name = 0;
  msg.msg_namelen = 0;
  msg.msg_iter.type = 0;
  msg.msg_iter.iov_offset = 0UL;
  msg.msg_iter.count = 0UL;
  msg.msg_iter.__annonCompField62.iov = 0;
  msg.msg_iter.nr_segs = 0UL;
  msg.msg_control = 0;
  msg.msg_controllen = 0UL;
  msg.msg_flags = flags;
  tmp = kernel_sendmsg(sock, & msg, vec, (size_t )count, (size_t )len);
  }
  return (tmp);
}
}
static int _send(struct socket *sock , void const *buff , int len )
{
  struct kvec vec ;
  int tmp ;
  {
  {
  vec.iov_base = (void *)buff;
  vec.iov_len = (size_t )len;
  tmp = do_send(sock, & vec, 1, len, 0U);
  }
  return (tmp);
}
}
__inline static struct ncp_request_reply *ncp_alloc_req(void)
{
  struct ncp_request_reply *req ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  {
  tmp = kmalloc(240UL, 208U);
  req = (struct ncp_request_reply *)tmp;
  }
  if ((unsigned long )req == (unsigned long )((struct ncp_request_reply *)0)) {
    return ((struct ncp_request_reply *)0);
  } else {
  }
  {
  __init_waitqueue_head(& req->wq, "&req->wq", & __key);
  atomic_set(& req->refs, 1);
  req->status = 3;
  }
  return (req);
}
}
static void ncp_req_get(struct ncp_request_reply *req )
{
  {
  {
  atomic_inc(& req->refs);
  }
  return;
}
}
static void ncp_req_put(struct ncp_request_reply *req )
{
  int tmp ;
  {
  {
  tmp = atomic_dec_and_test(& req->refs);
  }
  if (tmp != 0) {
    {
    kfree((void const *)req);
    }
  } else {
  }
  return;
}
}
void ncp_tcp_data_ready(struct sock *sk )
{
  struct ncp_server *server ;
  {
  {
  server = (struct ncp_server *)sk->sk_user_data;
  (*(server->data_ready))(sk);
  schedule_work(& server->rcv.tq);
  }
  return;
}
}
void ncp_tcp_error_report(struct sock *sk )
{
  struct ncp_server *server ;
  {
  {
  server = (struct ncp_server *)sk->sk_user_data;
  (*(server->error_report))(sk);
  schedule_work(& server->rcv.tq);
  }
  return;
}
}
void ncp_tcp_write_space(struct sock *sk )
{
  struct ncp_server *server ;
  {
  {
  server = (struct ncp_server *)sk->sk_user_data;
  (*(server->write_space))(sk);
  }
  if ((unsigned long )server->tx.creq != (unsigned long )((struct ncp_request_reply *)0)) {
    {
    schedule_work(& server->tx.tq);
    }
  } else {
  }
  return;
}
}
void ncpdgram_timeout_call(unsigned long v )
{
  struct ncp_server *server ;
  {
  {
  server = (struct ncp_server *)v;
  schedule_work(& server->timeout_tq);
  }
  return;
}
}
__inline static void ncp_finish_request(struct ncp_server *server , struct ncp_request_reply *req ,
                                        int result )
{
  {
  req->result = result;
  if ((unsigned int )req->status != 4U) {
    {
    memcpy((void *)req->reply_buf, (void const *)server->rxbuf, req->datalen);
    }
  } else {
  }
  {
  req->status = 0;
  __wake_up(& req->wq, 3U, 0, (void *)0);
  ncp_req_put(req);
  }
  return;
}
}
static void __abort_ncp_connection(struct ncp_server *server )
{
  struct ncp_request_reply *req ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  {
  ncp_invalidate_conn(server);
  ldv_del_timer_125(& server->timeout_tm);
  }
  goto ldv_49969;
  ldv_49968:
  {
  __mptr = (struct list_head const *)server->tx.requests.next;
  req = (struct ncp_request_reply *)__mptr;
  list_del_init(& req->req);
  ncp_finish_request(server, req, -5);
  }
  ldv_49969:
  {
  tmp = list_empty((struct list_head const *)(& server->tx.requests));
  }
  if (tmp == 0) {
    goto ldv_49968;
  } else {
  }
  req = server->rcv.creq;
  if ((unsigned long )req != (unsigned long )((struct ncp_request_reply *)0)) {
    {
    server->rcv.creq = (struct ncp_request_reply *)0;
    ncp_finish_request(server, req, -5);
    server->rcv.ptr = (unsigned char *)0U;
    server->rcv.state = 0U;
    }
  } else {
  }
  req = server->tx.creq;
  if ((unsigned long )req != (unsigned long )((struct ncp_request_reply *)0)) {
    {
    server->tx.creq = (struct ncp_request_reply *)0;
    ncp_finish_request(server, req, -5);
    }
  } else {
  }
  return;
}
}
__inline static int get_conn_number(struct ncp_reply_header *rp )
{
  {
  return ((int )rp->conn_low | ((int )rp->conn_high << 8));
}
}
__inline static void __ncp_abort_request(struct ncp_server *server , struct ncp_request_reply *req ,
                                         int err )
{
  {
  {
  if ((unsigned int )req->status == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )req->status == 0U) {
    goto case_0;
  } else {
  }
  if ((unsigned int )req->status == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )req->status == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )req->status == 4U) {
    goto case_4;
  } else {
  }
  goto switch_break;
  case_3: ;
  case_0: ;
  goto ldv_49981;
  case_2:
  {
  list_del_init(& req->req);
  ncp_finish_request(server, req, err);
  }
  goto ldv_49981;
  case_1:
  req->status = 4;
  goto ldv_49981;
  case_4: ;
  goto ldv_49981;
  switch_break: ;
  }
  ldv_49981: ;
  return;
}
}
__inline static void ncp_abort_request(struct ncp_server *server , struct ncp_request_reply *req ,
                                       int err )
{
  {
  {
  ldv_mutex_lock_126(& server->rcv.creq_mutex);
  __ncp_abort_request(server, req, err);
  ldv_mutex_unlock_127(& server->rcv.creq_mutex);
  }
  return;
}
}
__inline static void __ncptcp_abort(struct ncp_server *server )
{
  {
  {
  __abort_ncp_connection(server);
  }
  return;
}
}
static int ncpdgram_send(struct socket *sock , struct ncp_request_reply *req )
{
  struct kvec vec[3U] ;
  int tmp ;
  {
  {
  memcpy((void *)(& vec), (void const *)req->tx_ciov, req->tx_iovlen * 16UL);
  tmp = do_send(sock, (struct kvec *)(& vec), (int )req->tx_iovlen, (int )req->tx_totallen,
                64U);
  }
  return (tmp);
}
}
static void __ncptcp_try_send(struct ncp_server *server )
{
  struct ncp_request_reply *rq ;
  struct kvec *iov ;
  struct kvec iovc[3U] ;
  int result ;
  {
  rq = server->tx.creq;
  if ((unsigned long )rq == (unsigned long )((struct ncp_request_reply *)0)) {
    return;
  } else {
  }
  {
  memcpy((void *)(& iovc), (void const *)rq->tx_ciov, rq->tx_iovlen * 16UL);
  result = do_send(server->ncp_sock, (struct kvec *)(& iovc), (int )rq->tx_iovlen,
                   (int )rq->tx_totallen, 16448U);
  }
  if (result == -11) {
    return;
  } else {
  }
  if (result < 0) {
    {
    printk("\vncpfs: tcp: Send failed: %d\n", result);
    __ncp_abort_request(server, rq, result);
    }
    return;
  } else {
  }
  if ((size_t )result >= rq->tx_totallen) {
    server->rcv.creq = rq;
    server->tx.creq = (struct ncp_request_reply *)0;
    return;
  } else {
  }
  rq->tx_totallen = rq->tx_totallen - (size_t )result;
  iov = rq->tx_ciov;
  goto ldv_50006;
  ldv_50005:
  result = (int )((unsigned int )result - (unsigned int )iov->iov_len);
  iov = iov + 1;
  rq->tx_iovlen = rq->tx_iovlen - 1UL;
  ldv_50006: ;
  if (iov->iov_len <= (size_t )result) {
    goto ldv_50005;
  } else {
  }
  iov->iov_base = iov->iov_base + (unsigned long )result;
  iov->iov_len = iov->iov_len - (size_t )result;
  rq->tx_ciov = iov;
  return;
}
}
__inline static void ncp_init_header(struct ncp_server *server , struct ncp_request_reply *req ,
                                     struct ncp_request_header *h )
{
  {
  req->status = 1;
  h->conn_low = (__u8 )server->connection;
  h->conn_high = (__u8 )((int )server->connection >> 8);
  server->sequence = (u8 )((int )server->sequence + 1);
  h->sequence = server->sequence;
  return;
}
}
static void ncpdgram_start_request(struct ncp_server *server , struct ncp_request_reply *req )
{
  size_t signlen ;
  struct ncp_request_header *h ;
  {
  {
  req->tx_ciov = (struct kvec *)(& req->tx_iov) + 1UL;
  h = (struct ncp_request_header *)req->tx_iov[1].iov_base;
  ncp_init_header(server, req, h);
  signlen = sign_packet(server, (char const *)req->tx_iov[1].iov_base + 6U, req->tx_iov[1].iov_len - 6UL,
                        (unsigned int )req->tx_totallen, (void *)(& req->sign));
  }
  if (signlen != 0UL) {
    (req->tx_ciov + 1UL)->iov_base = (void *)(& req->sign);
    (req->tx_ciov + 1UL)->iov_len = signlen;
    req->tx_iovlen = req->tx_iovlen + 1UL;
    req->tx_totallen = req->tx_totallen + signlen;
  } else {
  }
  {
  server->rcv.creq = req;
  server->timeout_last = (int )server->m.time_out;
  server->timeout_retries = (int )server->m.retry_count;
  ncpdgram_send(server->ncp_sock, req);
  ldv_mod_timer_128(& server->timeout_tm, (unsigned long )jiffies + (unsigned long )server->m.time_out);
  }
  return;
}
}
static void ncptcp_start_request(struct ncp_server *server , struct ncp_request_reply *req )
{
  size_t signlen ;
  struct ncp_request_header *h ;
  __u32 tmp ;
  size_t tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  {
  {
  req->tx_ciov = (struct kvec *)(& req->tx_iov);
  h = (struct ncp_request_header *)req->tx_iov[1].iov_base;
  ncp_init_header(server, req, h);
  tmp = __fswab32((__u32 )req->tx_totallen + 24U);
  tmp___0 = sign_packet(server, (char const *)req->tx_iov[1].iov_base + 6U, req->tx_iov[1].iov_len - 6UL,
                        tmp, (void *)(& req->sign) + 4U);
  signlen = tmp___0 + 16UL;
  req->sign[0] = 1415867716U;
  tmp___1 = __fswab32((__u32 )req->tx_totallen + (__u32 )signlen);
  req->sign[1] = tmp___1;
  req->sign[2] = 16777216U;
  tmp___2 = __fswab32((__u32 )req->datalen + 8U);
  req->sign[3] = tmp___2;
  req->tx_iov[0].iov_base = (void *)(& req->sign);
  req->tx_iov[0].iov_len = signlen;
  req->tx_iovlen = req->tx_iovlen + 1UL;
  req->tx_totallen = req->tx_totallen + signlen;
  server->tx.creq = req;
  __ncptcp_try_send(server);
  }
  return;
}
}
__inline static void __ncp_start_request(struct ncp_server *server , struct ncp_request_reply *req )
{
  {
  {
  memcpy((void *)server->txbuf, (void const *)req->tx_iov[1].iov_base, req->tx_iov[1].iov_len);
  req->tx_iov[1].iov_base = (void *)server->txbuf;
  }
  if ((int )(server->ncp_sock)->type == 1) {
    {
    ncptcp_start_request(server, req);
    }
  } else {
    {
    ncpdgram_start_request(server, req);
    }
  }
  return;
}
}
static int ncp_add_request(struct ncp_server *server , struct ncp_request_reply *req )
{
  int tmp ;
  {
  {
  ldv_mutex_lock_129(& server->rcv.creq_mutex);
  tmp = ncp_conn_valid(server);
  }
  if (tmp == 0) {
    {
    ldv_mutex_unlock_130(& server->rcv.creq_mutex);
    printk("\vncpfs: tcp: Server died\n");
    }
    return (-5);
  } else {
  }
  {
  ncp_req_get(req);
  }
  if ((unsigned long )server->tx.creq != (unsigned long )((struct ncp_request_reply *)0) || (unsigned long )server->rcv.creq != (unsigned long )((struct ncp_request_reply *)0)) {
    {
    req->status = 2;
    list_add_tail(& req->req, & server->tx.requests);
    ldv_mutex_unlock_131(& server->rcv.creq_mutex);
    }
    return (0);
  } else {
  }
  {
  __ncp_start_request(server, req);
  ldv_mutex_unlock_132(& server->rcv.creq_mutex);
  }
  return (0);
}
}
static void __ncp_next_request(struct ncp_server *server )
{
  struct ncp_request_reply *req ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  {
  server->rcv.creq = (struct ncp_request_reply *)0;
  tmp = list_empty((struct list_head const *)(& server->tx.requests));
  }
  if (tmp != 0) {
    return;
  } else {
  }
  {
  __mptr = (struct list_head const *)server->tx.requests.next;
  req = (struct ncp_request_reply *)__mptr;
  list_del_init(& req->req);
  __ncp_start_request(server, req);
  }
  return;
}
}
static void info_server(struct ncp_server *server , unsigned int id , void const *data ,
                        size_t len )
{
  struct kvec iov[2U] ;
  __be32 hdr[2U] ;
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  if ((unsigned long )server->info_sock != (unsigned long )((struct socket *)0)) {
    {
    tmp = __fswab32((__u32 )len + 8U);
    hdr[0] = tmp;
    tmp___0 = __fswab32(id);
    hdr[1] = tmp___0;
    iov[0].iov_base = (void *)(& hdr);
    iov[0].iov_len = 8UL;
    iov[1].iov_base = (void *)data;
    iov[1].iov_len = len;
    do_send(server->info_sock, (struct kvec *)(& iov), 2, (int )((unsigned int )len + 8U),
            16384U);
    }
  } else {
  }
  return;
}
}
void ncpdgram_rcv_proc(struct work_struct *work )
{
  struct ncp_server *server ;
  struct work_struct const *__mptr ;
  struct socket *sock ;
  struct ncp_reply_header reply ;
  int result ;
  struct ncp_request_reply *req ;
  unsigned char buf[10U] ;
  int tmp ;
  unsigned int hdrl ;
  int tmp___3 ;
  int tmp___4 ;
  {
  __mptr = (struct work_struct const *)work;
  server = (struct ncp_server *)__mptr + 0xfffffffffffffba0UL;
  sock = server->ncp_sock;
  ldv_50066:
  {
  result = _recv(sock, (void *)(& reply), 8, 66U);
  }
  if (result < 0) {
    goto ldv_50056;
  } else {
  }
  if ((unsigned int )result > 7U) {
    if ((unsigned int )reply.type == 15934U) {
      {
      tmp = get_conn_number(& reply);
      }
      if ((int )server->connection != tmp) {
        goto drop;
      } else {
      }
      {
      result = _recv(sock, (void *)(& buf), 10, 64U);
      }
      if (result < 0) {
        goto ldv_50062;
      } else {
      }
      if (result <= 9) {
        goto ldv_50062;
      } else {
      }
      if ((unsigned int )buf[9] != 63U) {
        goto ldv_50062;
      } else {
      }
      {
      buf[9] = 89U;
      _send(sock, (void const *)(& buf), 10);
      }
      goto ldv_50062;
    } else {
    }
    if ((unsigned int )reply.type != 39321U && (unsigned int )reply.type != 13107U) {
      {
      result = _recv(sock, (void *)(& server->unexpected_packet.data), 128, 64U);
      }
      if (result < 0) {
        goto ldv_50062;
      } else {
      }
      {
      info_server(server, 0U, (void const *)(& server->unexpected_packet.data),
                  (size_t )result);
      }
      goto ldv_50062;
    } else {
    }
    {
    ldv_mutex_lock_133(& server->rcv.creq_mutex);
    req = server->rcv.creq;
    }
    if ((unsigned long )req != (unsigned long )((struct ncp_request_reply *)0)) {
      if ((unsigned int )req->tx_type == 4369U) {
        goto _L;
      } else
      if ((int )server->sequence == (int )reply.sequence) {
        {
        tmp___4 = get_conn_number(& reply);
        }
        if ((int )server->connection == tmp___4) {
          _L:
          if ((unsigned int )reply.type == 39321U) {
            {
            server->timeout_retries = (int )server->m.retry_count;
            server->timeout_last = 1500;
            ldv_mod_timer_134(& server->timeout_tm, (unsigned long )jiffies + 1500UL);
            }
          } else
          if ((unsigned int )reply.type == 13107U) {
            {
            result = _recv(sock, (void *)server->rxbuf, (int )req->datalen, 64U);
            }
            if ((result >= 0 && server->sign_active != 0) && (unsigned int )req->tx_type != 21845U) {
              if (result <= 15) {
                result = -5;
              } else {
                {
                result = result + -8;
                hdrl = (unsigned int )(sock->sk)->__sk_common.skc_family == 2U ? 8U : 6U;
                tmp___3 = sign_verify_reply(server, (char const *)server->rxbuf + (unsigned long )hdrl,
                                            (size_t )((unsigned int )result - hdrl),
                                            (unsigned int )result, (void const *)server->rxbuf + (unsigned long )result);
                }
                if (tmp___3 != 0) {
                  {
                  printk("\016ncpfs: Signature violation\n");
                  result = -5;
                  }
                } else {
                }
              }
            } else {
            }
            {
            ldv_del_timer_135(& server->timeout_tm);
            server->rcv.creq = (struct ncp_request_reply *)0;
            ncp_finish_request(server, req, result);
            __ncp_next_request(server);
            ldv_mutex_unlock_136(& server->rcv.creq_mutex);
            }
            goto ldv_50062;
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
    {
    ldv_mutex_unlock_137(& server->rcv.creq_mutex);
    }
  } else {
  }
  drop:
  {
  _recv(sock, (void *)(& reply), 8, 64U);
  }
  ldv_50062: ;
  goto ldv_50066;
  ldv_50056: ;
  return;
}
}
static void __ncpdgram_timeout_proc(struct ncp_server *server )
{
  struct ncp_request_reply *req ;
  int timeout ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = timer_pending((struct timer_list const *)(& server->timeout_tm));
  }
  if (tmp___0 == 0) {
    req = server->rcv.creq;
    if ((unsigned long )req != (unsigned long )((struct ncp_request_reply *)0)) {
      if ((int )server->m.flags & 1) {
        tmp = server->timeout_retries;
        server->timeout_retries = server->timeout_retries - 1;
        if (tmp == 0) {
          {
          __ncp_abort_request(server, req, -110);
          }
          return;
        } else {
        }
      } else {
      }
      {
      ncpdgram_send(server->ncp_sock, req);
      timeout = server->timeout_last << 1;
      }
      if (timeout > 1500) {
        timeout = 1500;
      } else {
      }
      {
      server->timeout_last = timeout;
      ldv_mod_timer_138(& server->timeout_tm, (unsigned long )jiffies + (unsigned long )timeout);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void ncpdgram_timeout_proc(struct work_struct *work )
{
  struct ncp_server *server ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  server = (struct ncp_server *)__mptr + 0xfffffffffffff998UL;
  ldv_mutex_lock_139(& server->rcv.creq_mutex);
  __ncpdgram_timeout_proc(server);
  ldv_mutex_unlock_140(& server->rcv.creq_mutex);
  }
  return;
}
}
static int do_tcp_rcv(struct ncp_server *server , void *buffer , size_t len )
{
  int result ;
  unsigned char dummy[1024U] ;
  {
  if ((unsigned long )buffer != (unsigned long )((void *)0)) {
    {
    result = _recv(server->ncp_sock, buffer, (int )len, 64U);
    }
  } else {
    if (len > 1024UL) {
      len = 1024UL;
    } else {
    }
    {
    result = _recv(server->ncp_sock, (void *)(& dummy), (int )len, 64U);
    }
  }
  if (result < 0) {
    return (result);
  } else {
  }
  if ((size_t )result > len) {
    {
    printk("\vncpfs: tcp: bug in recvmsg (%u > %Zu)\n", result, len);
    }
    return (-5);
  } else {
  }
  return (result);
}
}
static int __ncptcp_rcv_proc(struct ncp_server *server )
{
  int result ;
  struct ncp_request_reply *req ;
  int datalen ;
  int type ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u16 tmp___2 ;
  __u16 tmp___3 ;
  __u16 tmp___6 ;
  __u32 tmp___7 ;
  int tmp___8 ;
  {
  ldv_50111: ;
  goto ldv_50095;
  ldv_50094:
  {
  result = do_tcp_rcv(server, (void *)server->rcv.ptr, server->rcv.len);
  }
  if (result == -11) {
    return (0);
  } else {
  }
  if (result <= 0) {
    req = server->rcv.creq;
    if ((unsigned long )req != (unsigned long )((struct ncp_request_reply *)0)) {
      {
      __ncp_abort_request(server, req, -5);
      }
    } else {
      {
      __ncptcp_abort(server);
      }
    }
    if (result < 0) {
      {
      printk("\vncpfs: tcp: error in recvmsg: %d\n", result);
      }
    } else {
    }
    return (-5);
  } else {
  }
  if ((unsigned long )server->rcv.ptr != (unsigned long )((unsigned char *)0U)) {
    server->rcv.ptr = server->rcv.ptr + (unsigned long )result;
  } else {
  }
  server->rcv.len = server->rcv.len - (size_t )result;
  ldv_50095: ;
  if (server->rcv.len != 0UL) {
    goto ldv_50094;
  } else {
  }
  {
  if (server->rcv.state == 0U) {
    goto case_0;
  } else {
  }
  if (server->rcv.state == 4U) {
    goto case_4;
  } else {
  }
  if (server->rcv.state == 1U) {
    goto case_1;
  } else {
  }
  if (server->rcv.state == 2U) {
    goto case_2;
  } else {
  }
  if (server->rcv.state == 3U) {
    goto case_3;
  } else {
  }
  if (server->rcv.state == 5U) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_0: ;
  if (server->rcv.buf.magic != 1348685428U) {
    {
    tmp___0 = __fswab32(server->rcv.buf.magic);
    printk("\vncpfs: tcp: Unexpected reply type %08X\n", tmp___0);
    __ncptcp_abort(server);
    }
    return (-5);
  } else {
  }
  {
  tmp___1 = __fswab32(server->rcv.buf.len);
  datalen = (int )tmp___1 & 268435455;
  }
  if (datalen <= 9) {
    {
    printk("\vncpfs: tcp: Unexpected reply len %d\n", datalen);
    __ncptcp_abort(server);
    }
    return (-5);
  } else {
  }
  if (server->sign_active != 0) {
    if (datalen <= 17) {
      {
      printk("\vncpfs: tcp: Unexpected reply len %d\n", datalen);
      __ncptcp_abort(server);
      }
      return (-5);
    } else {
    }
    server->rcv.buf.len = (__u32 )(datalen + -8);
    server->rcv.ptr = (unsigned char *)(& server->rcv.buf.p1);
    server->rcv.len = 8UL;
    server->rcv.state = 4U;
    goto ldv_50098;
  } else {
  }
  {
  tmp___2 = __fswab16((int )server->rcv.buf.type);
  type = (int )tmp___2;
  }
  cont: ;
  if (type != 13107) {
    if ((unsigned int )(datalen + -8) <= 128U) {
      {
      tmp___3 = __fswab16((int )((__u16 )type));
      *((__u16 *)(& server->unexpected_packet.data)) = tmp___3;
      server->unexpected_packet.len = (size_t )(datalen + -8);
      server->rcv.state = 5U;
      server->rcv.ptr = (unsigned char *)(& server->unexpected_packet.data) + 2U;
      server->rcv.len = (size_t )(datalen + -10);
      }
      goto ldv_50098;
    } else {
    }
    skipdata2:
    server->rcv.state = 2U;
    skipdata:
    server->rcv.ptr = (unsigned char *)0U;
    server->rcv.len = (size_t )(datalen + -10);
    goto ldv_50098;
  } else {
  }
  req = server->rcv.creq;
  if ((unsigned long )req == (unsigned long )((struct ncp_request_reply *)0)) {
    goto skipdata2;
  } else {
  }
  if ((size_t )datalen > req->datalen + 8UL) {
    {
    printk("\vncpfs: tcp: Unexpected reply len %d (expected at most %Zd)\n", datalen,
           req->datalen + 8UL);
    server->rcv.state = 3U;
    }
    goto skipdata;
  } else {
  }
  req->datalen = (size_t )(datalen + -8);
  ((struct ncp_reply_header *)server->rxbuf)->type = 13107U;
  server->rcv.ptr = server->rxbuf + 2UL;
  server->rcv.len = (size_t )(datalen + -10);
  server->rcv.state = 1U;
  goto ldv_50098;
  case_4:
  {
  datalen = (int )server->rcv.buf.len;
  tmp___6 = __fswab16((int )server->rcv.buf.type2);
  type = (int )tmp___6;
  }
  goto cont;
  case_1:
  req = server->rcv.creq;
  if ((unsigned int )req->tx_type != 4369U) {
    if ((int )((struct ncp_reply_header *)server->rxbuf)->sequence != (int )server->sequence) {
      {
      printk("\vncpfs: tcp: Bad sequence number\n");
      __ncp_abort_request(server, req, -5);
      }
      return (-5);
    } else {
    }
    if (((int )((struct ncp_reply_header *)server->rxbuf)->conn_low | ((int )((struct ncp_reply_header *)server->rxbuf)->conn_high << 8)) != (int )server->connection) {
      {
      printk("\vncpfs: tcp: Connection number mismatch\n");
      __ncp_abort_request(server, req, -5);
      }
      return (-5);
    } else {
    }
  } else {
  }
  if (server->sign_active != 0 && (unsigned int )req->tx_type != 21845U) {
    {
    tmp___7 = __fswab32((__u32 )req->datalen + 16U);
    tmp___8 = sign_verify_reply(server, (char const *)server->rxbuf + 6U, req->datalen - 6UL,
                                tmp___7, (void const *)(& server->rcv.buf.type));
    }
    if (tmp___8 != 0) {
      {
      printk("\vncpfs: tcp: Signature violation\n");
      __ncp_abort_request(server, req, -5);
      }
      return (-5);
    } else {
    }
  } else {
  }
  {
  ncp_finish_request(server, req, (int )req->datalen);
  }
  nextreq:
  {
  __ncp_next_request(server);
  }
  case_2: ;
  next:
  server->rcv.ptr = (unsigned char *)(& server->rcv.buf);
  server->rcv.len = 10UL;
  server->rcv.state = 0U;
  goto ldv_50098;
  case_3:
  {
  ncp_finish_request(server, server->rcv.creq, -5);
  }
  goto nextreq;
  case_5:
  {
  info_server(server, 0U, (void const *)(& server->unexpected_packet.data), server->unexpected_packet.len);
  }
  goto next;
  switch_break: ;
  }
  ldv_50098: ;
  goto ldv_50111;
}
}
void ncp_tcp_rcv_proc(struct work_struct *work )
{
  struct ncp_server *server ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  server = (struct ncp_server *)__mptr + 0xfffffffffffffba0UL;
  ldv_mutex_lock_141(& server->rcv.creq_mutex);
  __ncptcp_rcv_proc(server);
  ldv_mutex_unlock_142(& server->rcv.creq_mutex);
  }
  return;
}
}
void ncp_tcp_tx_proc(struct work_struct *work )
{
  struct ncp_server *server ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  server = (struct ncp_server *)__mptr + 0xfffffffffffffa70UL;
  ldv_mutex_lock_143(& server->rcv.creq_mutex);
  __ncptcp_try_send(server);
  ldv_mutex_unlock_144(& server->rcv.creq_mutex);
  }
  return;
}
}
static int do_ncp_rpc_call(struct ncp_server *server , int size , unsigned char *reply_buf ,
                           int max_reply_size )
{
  int result ;
  struct ncp_request_reply *req ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  {
  {
  req = ncp_alloc_req();
  }
  if ((unsigned long )req == (unsigned long )((struct ncp_request_reply *)0)) {
    return (-12);
  } else {
  }
  {
  req->reply_buf = reply_buf;
  req->datalen = (size_t )max_reply_size;
  req->tx_iov[1].iov_base = (void *)server->packet;
  req->tx_iov[1].iov_len = (size_t )size;
  req->tx_iovlen = 1UL;
  req->tx_totallen = (size_t )size;
  req->tx_type = *((u_int16_t *)server->packet);
  result = ncp_add_request(server, req);
  }
  if (result < 0) {
    goto out;
  } else {
  }
  {
  __ret = 0;
  __might_sleep("fs/ncpfs/sock.c", 722, 0);
  }
  if ((unsigned int )req->status != 0U) {
    {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_50139:
    {
    tmp = prepare_to_wait_event(& req->wq, & __wait, 1);
    __int = tmp;
    }
    if ((unsigned int )req->status == 0U) {
      goto ldv_50138;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_50138;
    } else {
    }
    {
    schedule();
    }
    goto ldv_50139;
    ldv_50138:
    {
    finish_wait(& req->wq, & __wait);
    }
    __ret = (int )__ret___0;
  } else {
  }
  if (__ret != 0) {
    {
    ncp_abort_request(server, req, -4);
    result = -4;
    }
    goto out;
  } else {
  }
  result = req->result;
  out:
  {
  ncp_req_put(req);
  }
  return (result);
}
}
static int ncp_do_request(struct ncp_server *server , int size , void *reply , int max_reply_size )
{
  int result ;
  int tmp ;
  sigset_t old_set ;
  unsigned long mask ;
  unsigned long flags ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  struct task_struct *tmp___5 ;
  struct task_struct *tmp___6 ;
  struct task_struct *tmp___7 ;
  struct task_struct *tmp___8 ;
  struct task_struct *tmp___9 ;
  {
  if (server->lock == 0) {
    {
    printk("\vncpfs: Server not locked!\n");
    }
    return (-5);
  } else {
  }
  {
  tmp = ncp_conn_valid(server);
  }
  if (tmp == 0) {
    return (-5);
  } else {
  }
  {
  tmp___0 = get_current___1();
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_145(& (tmp___0->sighand)->siglock);
  tmp___1 = get_current___1();
  old_set = tmp___1->blocked;
  tmp___2 = get_current___1();
  }
  if ((tmp___2->flags & 4U) != 0U) {
    mask = 0UL;
  } else {
    mask = 256UL;
  }
  if ((server->m.flags & 2UL) != 0UL) {
    {
    tmp___3 = get_current___1();
    }
    if ((unsigned long )(tmp___3->sighand)->action[1].sa.sa_handler == (unsigned long )((void (*)(int ))0)) {
      mask = mask | 2UL;
    } else {
    }
    {
    tmp___4 = get_current___1();
    }
    if ((unsigned long )(tmp___4->sighand)->action[2].sa.sa_handler == (unsigned long )((void (*)(int ))0)) {
      mask = mask | 4UL;
    } else {
    }
  } else {
  }
  {
  tmp___5 = get_current___1();
  siginitsetinv(& tmp___5->blocked, mask);
  recalc_sigpending();
  tmp___6 = get_current___1();
  ldv_spin_unlock_irqrestore_146(& (tmp___6->sighand)->siglock, flags);
  result = do_ncp_rpc_call(server, size, (unsigned char *)reply, max_reply_size);
  tmp___7 = get_current___1();
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_147(& (tmp___7->sighand)->siglock);
  tmp___8 = get_current___1();
  tmp___8->blocked = old_set;
  recalc_sigpending();
  tmp___9 = get_current___1();
  ldv_spin_unlock_irqrestore_146(& (tmp___9->sighand)->siglock, flags);
  }
  return (result);
}
}
int ncp_request2(struct ncp_server *server , int function , void *rpl , int size )
{
  struct ncp_request_header *h ;
  struct ncp_reply_header *reply ;
  int result ;
  __u16 tmp ;
  {
  reply = (struct ncp_reply_header *)rpl;
  h = (struct ncp_request_header *)server->packet;
  if (server->has_subfunction != 0) {
    {
    tmp = __fswab16((int )((unsigned int )((__u16 )server->current_size) - 9U));
    *((__u16 *)(& h->data)) = tmp;
    }
  } else {
  }
  {
  h->type = 8738U;
  h->task = 2U;
  h->function = (__u8 )function;
  result = ncp_do_request(server, server->current_size, (void *)reply, size);
  }
  if (result < 0) {
    goto out;
  } else {
  }
  server->completion = reply->completion_code;
  server->conn_status = reply->connection_state;
  server->reply_size = result;
  server->ncp_reply_size = (int )((unsigned int )result - 8U);
  result = (int )reply->completion_code;
  out: ;
  return (result);
}
}
int ncp_connect(struct ncp_server *server )
{
  struct ncp_request_header *h ;
  int result ;
  {
  {
  server->connection = 65535U;
  server->sequence = 255U;
  h = (struct ncp_request_header *)server->packet;
  h->type = 4369U;
  h->task = 2U;
  h->function = 0U;
  result = ncp_do_request(server, 7, (void *)server->packet, server->packet_size);
  }
  if (result < 0) {
    goto out;
  } else {
  }
  server->connection = (unsigned int )((__u16 )h->conn_low) + (unsigned int )((__u16 )h->conn_high) * 256U;
  result = 0;
  out: ;
  return (result);
}
}
int ncp_disconnect(struct ncp_server *server )
{
  struct ncp_request_header *h ;
  int tmp ;
  {
  {
  h = (struct ncp_request_header *)server->packet;
  h->type = 21845U;
  h->task = 2U;
  h->function = 0U;
  tmp = ncp_do_request(server, 7, (void *)server->packet, server->packet_size);
  }
  return (tmp);
}
}
void ncp_lock_server(struct ncp_server *server )
{
  {
  {
  ldv_mutex_lock_149(& server->mutex);
  }
  if (server->lock != 0) {
    {
    printk("\fncpfs: %s: was locked!\n", "ncp_lock_server");
    }
  } else {
  }
  server->lock = 1;
  return;
}
}
void ncp_unlock_server(struct ncp_server *server )
{
  {
  if (server->lock == 0) {
    {
    printk("\fncpfs: %s: was not locked!\n", "ncp_unlock_server");
    }
    return;
  } else {
  }
  {
  server->lock = 0;
  ldv_mutex_unlock_150(& server->mutex);
  }
  return;
}
}
extern int ldv_del_timer(int , struct timer_list * ) ;
extern int ldv_mod_timer(int , struct timer_list * , unsigned long ) ;
__inline static int atomic_dec_and_test(atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_usb_dev_atomic_dec_and_test(v);
  }
  return (tmp);
}
}
static int ldv_del_timer_125(struct timer_list *ldv_func_arg1 )
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
static void ldv_mutex_lock_126(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_127(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_128(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
static void ldv_mutex_lock_129(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_130(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_131(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_132(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_133(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_134(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
static int ldv_del_timer_135(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
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
static void ldv_mutex_unlock_136(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_137(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_138(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
static void ldv_mutex_lock_139(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_140(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_141(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_142(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_143(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_144(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_creq_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_145(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_siglock_of_sighand_struct();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_146(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_siglock_of_sighand_struct();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_147(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_siglock_of_sighand_struct();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_149(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_ncp_server(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_150(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_ncp_server(ldv_func_arg1);
  }
  return;
}
}
__inline static __u32 rol32(__u32 word , unsigned int shift )
{
  {
  return ((word << shift) | (word >> (8UL * sizeof(word) - (unsigned long )shift)));
}
}
__inline static __u16 WVAL_LH___0(__u8 const *buf , int pos )
{
  {
  return ((int )((__u16 )*(buf + (unsigned long )pos)) | ((int )((__u16 )*(buf + ((unsigned long )pos + 1UL))) << 8U));
}
}
__inline static __u32 DVAL_LH___0(__u8 const *buf , int pos )
{
  __u16 tmp ;
  __u16 tmp___0 ;
  {
  {
  tmp = WVAL_LH___0(buf, pos);
  tmp___0 = WVAL_LH___0(buf, pos + 2);
  }
  return ((__u32 )((int )tmp | ((int )tmp___0 << 16)));
}
}
__inline static void WSET_LH(__u8 *buf , int pos , __u16 val )
{
  {
  *(buf + (unsigned long )pos) = (__u8 )val;
  *(buf + ((unsigned long )pos + 1UL)) = (__u8 )((int )val >> 8);
  return;
}
}
__inline static void DSET_LH(__u8 *buf , int pos , __u32 val )
{
  {
  {
  WSET_LH(buf, pos, (int )((__u16 )val));
  WSET_LH(buf, pos + 2, (int )((__u16 )(val >> 16)));
  }
  return;
}
}
static void nwsign(char *r_data1 , char *r_data2 , char *outdata )
{
  int i ;
  unsigned int w0 ;
  unsigned int w1 ;
  unsigned int w2 ;
  unsigned int w3 ;
  int rbit[4U] ;
  unsigned int data2[16U] ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  {
  rbit[0] = 0;
  rbit[1] = 2;
  rbit[2] = 1;
  rbit[3] = 3;
  i = 0;
  goto ldv_30401;
  ldv_30400:
  {
  data2[i] = DVAL_LH___0((__u8 const *)r_data2 + (unsigned long )(i << 2), 0);
  i = i + 1;
  }
  ldv_30401: ;
  if (i <= 15) {
    goto ldv_30400;
  } else {
  }
  {
  w0 = DVAL_LH___0((__u8 const *)r_data1, 0);
  w1 = DVAL_LH___0((__u8 const *)r_data1 + 4U, 0);
  w2 = DVAL_LH___0((__u8 const *)r_data1 + 8U, 0);
  w3 = DVAL_LH___0((__u8 const *)r_data1 + 12U, 0);
  i = 0;
  }
  goto ldv_30404;
  ldv_30403:
  {
  w0 = rol32((w0 + ((w1 & w2) | (~ w1 & w3))) + data2[i], 3U);
  w3 = rol32((w3 + ((w0 & w1) | (~ w0 & w2))) + data2[i + 1], 7U);
  w2 = rol32((w2 + ((w3 & w0) | (~ w3 & w1))) + data2[i + 2], 11U);
  w1 = rol32((w1 + ((w2 & w3) | (~ w2 & w0))) + data2[i + 3], 19U);
  i = i + 4;
  }
  ldv_30404: ;
  if (i <= 15) {
    goto ldv_30403;
  } else {
  }
  i = 0;
  goto ldv_30407;
  ldv_30406:
  {
  w0 = rol32(((w0 + (((w2 | w3) & w1) | (w2 & w3))) + data2[i]) + 1518500249U, 3U);
  w3 = rol32(((w3 + (((w1 | w2) & w0) | (w1 & w2))) + data2[i + 4]) + 1518500249U,
             5U);
  w2 = rol32(((w2 + (((w0 | w1) & w3) | (w0 & w1))) + data2[i + 8]) + 1518500249U,
             9U);
  w1 = rol32(((w1 + (((w3 | w0) & w2) | (w3 & w0))) + data2[i + 12]) + 1518500249U,
             13U);
  i = i + 1;
  }
  ldv_30407: ;
  if (i <= 3) {
    goto ldv_30406;
  } else {
  }
  i = 0;
  goto ldv_30410;
  ldv_30409:
  {
  w0 = rol32(((w0 + ((w1 ^ w2) ^ w3)) + data2[rbit[i]]) + 1859775393U, 3U);
  w3 = rol32(((w3 + ((w0 ^ w1) ^ w2)) + data2[rbit[i] + 8]) + 1859775393U, 9U);
  w2 = rol32(((w2 + ((w3 ^ w0) ^ w1)) + data2[rbit[i] + 4]) + 1859775393U, 11U);
  w1 = rol32(((w1 + ((w2 ^ w3) ^ w0)) + data2[rbit[i] + 12]) + 1859775393U, 15U);
  i = i + 1;
  }
  ldv_30410: ;
  if (i <= 3) {
    goto ldv_30409;
  } else {
  }
  {
  tmp = DVAL_LH___0((__u8 const *)r_data1, 0);
  DSET_LH((__u8 *)outdata, 0, w0 + tmp);
  tmp___0 = DVAL_LH___0((__u8 const *)r_data1 + 4U, 0);
  DSET_LH((__u8 *)outdata + 4U, 0, w1 + tmp___0);
  tmp___1 = DVAL_LH___0((__u8 const *)r_data1 + 8U, 0);
  DSET_LH((__u8 *)outdata + 8U, 0, w2 + tmp___1);
  tmp___2 = DVAL_LH___0((__u8 const *)r_data1 + 12U, 0);
  DSET_LH((__u8 *)outdata + 12U, 0, w3 + tmp___2);
  }
  return;
}
}
void __sign_packet(struct ncp_server *server , char const *packet , size_t size ,
                   __u32 totalsize , void *sign_buff )
{
  unsigned char data[64U] ;
  {
  {
  memcpy((void *)(& data), (void const *)(& server->sign_root), 8UL);
  *((__u32 *)(& data) + 8U) = totalsize;
  }
  if (size <= 51UL) {
    {
    memcpy((void *)(& data) + 12U, (void const *)packet, size);
    memset((void *)(& data) + (size + 12UL), 0, 52UL - size);
    }
  } else {
    {
    memcpy((void *)(& data) + 12U, (void const *)packet, 52UL);
    }
  }
  {
  nwsign((char *)(& server->sign_last), (char *)(& data), (char *)(& server->sign_last));
  memcpy(sign_buff, (void const *)(& server->sign_last), 8UL);
  }
  return;
}
}
int sign_verify_reply(struct ncp_server *server , char const *packet , size_t size ,
                      __u32 totalsize , void const *sign_buff )
{
  unsigned char data[64U] ;
  unsigned char hash[16U] ;
  int tmp ;
  {
  {
  memcpy((void *)(& data), (void const *)(& server->sign_root), 8UL);
  *((__u32 *)(& data) + 8U) = totalsize;
  }
  if (size <= 51UL) {
    {
    memcpy((void *)(& data) + 12U, (void const *)packet, size);
    memset((void *)(& data) + (size + 12UL), 0, 52UL - size);
    }
  } else {
    {
    memcpy((void *)(& data) + 12U, (void const *)packet, 52UL);
    }
  }
  {
  nwsign((char *)(& server->sign_last), (char *)(& data), (char *)(& hash));
  tmp = memcmp(sign_buff, (void const *)(& hash), 8UL);
  }
  return (tmp);
}
}
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
extern char *strchr(char const * , int ) ;
extern char *strsep(char ** , char const * ) ;
int ncp_getopt(char const *caller , char **options , struct ncp_option const *opts ,
               char **optopt , char **optarg , unsigned long *value )
{
  char *token ;
  char *val ;
  char *tmp ;
  int rc ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_24493:
  {
  token = strsep(options, ",");
  }
  if ((unsigned long )token == (unsigned long )((char *)0)) {
    return (0);
  } else {
  }
  if ((int )((signed char )*token) == 0) {
    goto ldv_24493;
  } else {
  }
  if ((unsigned long )optopt != (unsigned long )((char **)0)) {
    *optopt = token;
  } else {
  }
  {
  val = strchr((char const *)token, 61);
  }
  if ((unsigned long )val != (unsigned long )((char *)0)) {
    tmp = val;
    val = val + 1;
    *tmp = 0;
  } else {
  }
  *optarg = val;
  goto ldv_24497;
  ldv_24496:
  {
  tmp___1 = strcmp(opts->name, (char const *)token);
  }
  if (tmp___1 == 0) {
    if ((unsigned long )val == (unsigned long )((char *)0)) {
      if ((int )opts->has_arg & 1) {
        return ((int )opts->val);
      } else {
      }
      {
      printk("\016ncpfs: %s: the %s option requires an argument\n", caller, token);
      }
      return (-22);
    } else {
    }
    if (((unsigned int )opts->has_arg & 2U) != 0U) {
      {
      tmp___0 = kstrtoul((char const *)val, 0U, value);
      rc = tmp___0;
      }
      if (rc != 0) {
        {
        printk("\016ncpfs: %s: invalid numeric value in %s=%s\n", caller, token, val);
        }
        return (rc);
      } else {
      }
      return ((int )opts->val);
    } else {
    }
    if (((unsigned int )opts->has_arg & 4U) != 0U) {
      return ((int )opts->val);
    } else {
    }
    {
    printk("\016ncpfs: %s: unexpected argument %s to the %s option\n", caller, val,
           token);
    }
    return (-22);
  } else {
  }
  opts = opts + 1;
  ldv_24497: ;
  if ((unsigned long )opts->name != (unsigned long )((char const * )0)) {
    goto ldv_24496;
  } else {
  }
  {
  printk("\016ncpfs: %s: Unrecognized mount option %s\n", caller, token);
  }
  return (-95);
}
}
__inline static void atomic_dec(atomic_t *v ) ;
__inline static void SetPageError(struct page *page )
{
  {
  {
  set_bit(1L, (unsigned long volatile *)(& page->flags));
  }
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void ncp_inode_close___3(struct inode *inode )
{
  struct ncp_inode_info *tmp ;
  {
  {
  tmp = NCP_FINFO((struct inode const *)inode);
  atomic_dec(& tmp->opened);
  }
  return;
}
}
static int ncp_symlink_readpage(struct file *file , struct page *page )
{
  struct inode *inode ;
  int error ;
  int length ;
  int len ;
  char *link ;
  char *rawlink ;
  char *buf ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  struct ncp_inode_info *tmp___2 ;
  struct ncp_server *tmp___3 ;
  struct ncp_inode_info *tmp___4 ;
  struct ncp_server *tmp___5 ;
  {
  {
  inode = (page->__annonCompField48.mapping)->host;
  tmp = kmap(page);
  buf = (char *)tmp;
  error = -12;
  tmp___0 = kmalloc(512UL, 208U);
  rawlink = (char *)tmp___0;
  }
  if ((unsigned long )rawlink == (unsigned long )((char *)0)) {
    goto fail;
  } else {
  }
  {
  tmp___1 = ncp_make_open(inode, 0);
  }
  if (tmp___1 != 0) {
    goto failEIO;
  } else {
  }
  {
  tmp___2 = NCP_FINFO((struct inode const *)inode);
  tmp___3 = NCP_SBP((struct super_block const *)inode->i_sb);
  error = ncp_read_kernel(tmp___3, (char const *)(& tmp___2->file_handle), 0U, 512,
                          rawlink, & length);
  ncp_inode_close___3(inode);
  ncp_make_closed(inode);
  }
  if (error != 0) {
    goto failEIO;
  } else {
  }
  {
  tmp___4 = NCP_FINFO((struct inode const *)inode);
  }
  if (tmp___4->flags & 1) {
    if ((length <= 7 || *((__le32 *)rawlink) != 1819113843U) || *((__le32 *)rawlink + 1UL) != 1043164014U) {
      goto failEIO;
    } else {
    }
    link = rawlink + 8UL;
    length = length + -8;
  } else {
    link = rawlink;
  }
  {
  len = 512;
  tmp___5 = NCP_SBP((struct super_block const *)inode->i_sb);
  error = ncp__vol2io(tmp___5, (unsigned char *)buf, (unsigned int *)(& len), (unsigned char const *)link,
                      (unsigned int )length, 0);
  kfree((void const *)rawlink);
  }
  if (error != 0) {
    goto fail;
  } else {
  }
  {
  SetPageUptodate(page);
  kunmap(page);
  unlock_page(page);
  }
  return (0);
  failEIO:
  {
  error = -5;
  kfree((void const *)rawlink);
  }
  fail:
  {
  SetPageError(page);
  kunmap(page);
  unlock_page(page);
  }
  return (error);
}
}
struct address_space_operations const ncp_symlink_aops =
     {0, & ncp_symlink_readpage, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int ncp_symlink(struct inode *dir , struct dentry *dentry , char const *symname )
{
  struct inode *inode ;
  char *rawlink ;
  int length ;
  int err ;
  int i ;
  int outlen ;
  int kludge ;
  umode_t mode ;
  __le32 attr ;
  unsigned int hdr ;
  struct ncp_server *tmp___0 ;
  struct ncp_inode_info *tmp___1 ;
  struct ncp_server *tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  size_t tmp___5 ;
  struct ncp_server *tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  struct ncp_inode_info *tmp___9 ;
  struct ncp_server *tmp___10 ;
  int tmp___11 ;
  {
  {
  tmp___1 = NCP_FINFO((struct inode const *)dir);
  tmp___2 = NCP_SBP((struct super_block const *)dir->i_sb);
  tmp___3 = ncp_is_nfs_extras(tmp___2, (unsigned int )tmp___1->volNumber);
  }
  if (tmp___3 != 0) {
    kludge = 0;
  } else {
    {
    tmp___0 = NCP_SBP((struct super_block const *)dir->i_sb);
    }
    if ((tmp___0->m.flags & 64UL) != 0UL) {
      kludge = 1;
    } else {
      return (-1);
    }
  }
  {
  tmp___4 = kmalloc(512UL, 208U);
  rawlink = (char *)tmp___4;
  }
  if ((unsigned long )rawlink == (unsigned long )((char *)0)) {
    return (-12);
  } else {
  }
  if (kludge != 0) {
    mode = 0U;
    attr = 130U;
    *((__le32 *)rawlink) = 1819113843U;
    *((__le32 *)rawlink + 1UL) = 1043164014U;
    hdr = 8U;
  } else {
    mode = 41471U;
    attr = 0U;
    hdr = 0U;
  }
  {
  tmp___5 = strlen(symname);
  length = (int )tmp___5;
  outlen = (int )(512U - hdr);
  tmp___6 = NCP_SBP((struct super_block const *)dir->i_sb);
  err = ncp__io2vol(tmp___6, (unsigned char *)rawlink + (unsigned long )hdr, (unsigned int *)(& outlen),
                    (unsigned char const *)symname, (unsigned int )length, 0);
  }
  if (err != 0) {
    goto failfree;
  } else {
  }
  {
  outlen = (int )((unsigned int )outlen + hdr);
  err = -5;
  tmp___7 = ncp_create_new(dir, dentry, (int )mode, 0U, attr);
  }
  if (tmp___7 != 0) {
    goto failfree;
  } else {
  }
  {
  inode = dentry->d_inode;
  tmp___8 = ncp_make_open(inode, 1);
  }
  if (tmp___8 != 0) {
    goto failfree;
  } else {
  }
  {
  tmp___9 = NCP_FINFO((struct inode const *)inode);
  tmp___10 = NCP_SBP((struct super_block const *)inode->i_sb);
  tmp___11 = ncp_write_kernel(tmp___10, (char const *)(& tmp___9->file_handle),
                              0U, (int )((__u16 )outlen), (char const *)rawlink,
                              & i);
  }
  if (tmp___11 != 0 || i != outlen) {
    goto fail;
  } else {
  }
  {
  ncp_inode_close___3(inode);
  ncp_make_closed(inode);
  kfree((void const *)rawlink);
  }
  return (0);
  fail:
  {
  ncp_inode_close___3(inode);
  ncp_make_closed(inode);
  }
  failfree:
  {
  kfree((void const *)rawlink);
  }
  return (err);
}
}
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct file * , struct page * ) ,
                                                  struct file *arg1 , struct page *arg2 )
{
  {
  {
  ncp_symlink_readpage(arg1, arg2);
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_creq_mutex_of_NOT_ARG_SIGN ;
void ldv_linux_kernel_locking_mutex_mutex_lock_creq_mutex_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_creq_mutex_of_NOT_ARG_SIGN);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_creq_mutex_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_creq_mutex_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_creq_mutex_of_NOT_ARG_SIGN);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_creq_mutex_of_NOT_ARG_SIGN = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_creq_mutex_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_creq_mutex_of_NOT_ARG_SIGN) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_creq_mutex_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_creq_mutex_of_NOT_ARG_SIGN);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_creq_mutex_of_NOT_ARG_SIGN(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_creq_mutex_of_NOT_ARG_SIGN = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_creq_mutex_of_NOT_ARG_SIGN(atomic_t *cnt ,
                                                                                        struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_creq_mutex_of_NOT_ARG_SIGN(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_creq_mutex_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_creq_mutex_of_NOT_ARG_SIGN);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_creq_mutex_of_NOT_ARG_SIGN = 0;
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_ncp_server ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_ncp_server(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_ncp_server);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_ncp_server = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mutex_of_ncp_server(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_ncp_server);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_ncp_server = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_ncp_server(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_ncp_server) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_mutex_of_ncp_server(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_ncp_server);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_ncp_server(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_ncp_server = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mutex_of_ncp_server(atomic_t *cnt ,
                                                                                 struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_ncp_server(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_ncp_server(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_ncp_server);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_ncp_server = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_ncp_inode_info ;
void ldv_linux_kernel_locking_mutex_mutex_lock_open_mutex_of_ncp_inode_info(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_ncp_inode_info);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_ncp_inode_info = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_open_mutex_of_ncp_inode_info(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_ncp_inode_info);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_ncp_inode_info = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_open_mutex_of_ncp_inode_info(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_ncp_inode_info) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_open_mutex_of_ncp_inode_info(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_ncp_inode_info);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_open_mutex_of_ncp_inode_info(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_ncp_inode_info = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_open_mutex_of_ncp_inode_info(atomic_t *cnt ,
                                                                                          struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_open_mutex_of_ncp_inode_info(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_open_mutex_of_ncp_inode_info(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_ncp_inode_info);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_ncp_inode_info = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_root_setup_lock_of_ncp_server ;
void ldv_linux_kernel_locking_mutex_mutex_lock_root_setup_lock_of_ncp_server(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_root_setup_lock_of_ncp_server);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_root_setup_lock_of_ncp_server = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_root_setup_lock_of_ncp_server(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_root_setup_lock_of_ncp_server);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_root_setup_lock_of_ncp_server = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_root_setup_lock_of_ncp_server(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_root_setup_lock_of_ncp_server) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_root_setup_lock_of_ncp_server(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_root_setup_lock_of_ncp_server);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_root_setup_lock_of_ncp_server(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_root_setup_lock_of_ncp_server = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_root_setup_lock_of_ncp_server(atomic_t *cnt ,
                                                                                           struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_root_setup_lock_of_ncp_server(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_root_setup_lock_of_ncp_server(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_root_setup_lock_of_ncp_server);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_root_setup_lock_of_ncp_server = 0;
  }
  return;
}
}
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_creq_mutex_of_NOT_ARG_SIGN = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_ncp_server = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_ncp_inode_info = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_root_setup_lock_of_ncp_server = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_creq_mutex_of_NOT_ARG_SIGN);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_ncp_server);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_open_mutex_of_ncp_inode_info);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_root_setup_lock_of_ncp_server);
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
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
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
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __init_rwsem(struct rw_semaphore *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __insert_inode_hash(struct inode *arg0, unsigned long arg1) {
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
void __mark_inode_dirty(struct inode *arg0, int arg1) {
  return;
}
void __mem_cgroup_count_vm_event(struct mm_struct *arg0, enum vm_event_item arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
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
void bdi_destroy(struct backing_dev_info *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int bdi_setup_and_register(struct backing_dev_info *arg0, char *arg1) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void clear_inode(struct inode *arg0) {
  return;
}
struct dentry *d_alloc(struct dentry *arg0, const struct qstr *arg1) {
  return ldv_malloc(sizeof(struct dentry));
}
struct dentry *d_hash_and_lookup(struct dentry *arg0, struct qstr *arg1) {
  return ldv_malloc(sizeof(struct dentry));
}
void d_instantiate(struct dentry *arg0, struct inode *arg1) {
  return;
}
struct dentry *d_make_root(struct inode *arg0) {
  return ldv_malloc(sizeof(struct dentry));
}
void d_rehash(struct dentry *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void dentry_update_name_case(struct dentry *arg0, struct qstr *arg1) {
  return;
}
struct dentry *dget_parent(struct dentry *arg0) {
  return ldv_malloc(sizeof(struct dentry));
}
void down_read(struct rw_semaphore *arg0) {
  return;
}
void down_write(struct rw_semaphore *arg0) {
  return;
}
void dput(struct dentry *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int file_update_time(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int filemap_write_and_wait_range(struct address_space *arg0, loff_t arg1, loff_t arg2) {
  return __VERIFIER_nondet_int();
}
struct pid *find_get_pid(int arg0) {
  return ldv_malloc(sizeof(struct pid));
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void fput(struct file *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
gid_t from_kgid_munged(struct user_namespace *arg0, kgid_t arg1) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
uid_t from_kuid_munged(struct user_namespace *arg0, kuid_t arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int generic_delete_inode(struct inode *arg0) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
loff_t generic_file_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
ssize_t generic_read_dir(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int generic_readlink(struct dentry *arg0, char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void init_special_inode(struct inode *arg0, umode_t arg1, dev_t arg2) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int inode_change_ok(const struct inode *arg0, struct iattr *arg1) {
  return __VERIFIER_nondet_int();
}
void inode_init_once(struct inode *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int inode_permission(struct inode *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int is_bad_inode(struct inode *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
ino_t iunique(struct super_block *arg0, ino_t arg1) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int kernel_recvmsg(struct socket *arg0, struct msghdr *arg1, struct kvec *arg2, size_t arg3, size_t arg4, int arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kernel_sendmsg(struct socket *arg0, struct msghdr *arg1, struct kvec *arg2, size_t arg3, size_t arg4) {
  return __VERIFIER_nondet_int();
}
void kill_anon_super(struct super_block *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int kill_pid(struct pid *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
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
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_del_timer(int arg0, struct timer_list *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_mod_timer(int arg0, struct timer_list *arg1, unsigned long arg2) {
  return __VERIFIER_nondet_int();
}
struct nls_table *load_nls(char *arg0) {
  return ldv_malloc(sizeof(struct nls_table));
}
struct nls_table *load_nls_default() {
  return ldv_malloc(sizeof(struct nls_table));
}
void lock_sock_nested(struct sock *arg0, int arg1) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int lockref_get_not_dead(struct lockref *arg0) {
  return __VERIFIER_nondet_int();
}
void make_bad_inode(struct inode *arg0) {
  return;
}
kgid_t make_kgid(struct user_namespace *arg0, gid_t arg1) {
  return *(struct __anonstruct_kgid_t_49 *)ldv_xmalloc(sizeof(struct __anonstruct_kgid_t_49));
}
kuid_t make_kuid(struct user_namespace *arg0, uid_t arg1) {
  return *(struct __anonstruct_kuid_t_48 *)ldv_xmalloc(sizeof(struct __anonstruct_kuid_t_48));
}
void *memdup_user(const void *arg0, size_t arg1) {
  return ldv_malloc(0UL);
}
void might_fault() {
  return;
}
void mnt_drop_write_file(struct file *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mnt_want_write_file(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
struct dentry *mount_nodev(struct file_system_type *arg0, int arg1, void *arg2, int (*arg3)(struct super_block *, void *, int)) {
  return ldv_malloc(sizeof(struct dentry));
}
void mutex_destroy(struct mutex *arg0) {
  return;
}
struct inode *new_inode(struct super_block *arg0) {
  return ldv_malloc(sizeof(struct inode));
}
void *page_follow_link_light(struct dentry *arg0, struct nameidata *arg1) {
  return ldv_malloc(0UL);
}
void page_put_link(struct dentry *arg0, struct nameidata *arg1, void *arg2) {
  return;
}
struct page *pagecache_get_page(struct address_space *arg0, unsigned long arg1, int arg2, gfp_t arg3) {
  return ldv_malloc(sizeof(struct page));
}
int __VERIFIER_nondet_int(void);
pid_t pid_vnr(struct pid *arg0) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_page(struct page *arg0) {
  return;
}
void put_pid(struct pid *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void recalc_sigpending() {
  return;
}
int __VERIFIER_nondet_int(void);
int register_filesystem(struct file_system_type *arg0) {
  return __VERIFIER_nondet_int();
}
void release_sock(struct sock *arg0) {
  return;
}
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void set_nlink(struct inode *arg0, unsigned int arg1) {
  return;
}
void setattr_copy(struct inode *arg0, const struct iattr *arg1) {
  return;
}
void shrink_dcache_parent(struct dentry *arg0) {
  return;
}
struct socket *sockfd_lookup(int arg0, int *arg1) {
  return ldv_malloc(sizeof(struct socket));
}
char *strsep(char **arg0, const char *arg1) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int sync_filesystem(struct super_block *arg0) {
  return __VERIFIER_nondet_int();
}
void touch_atime(const struct path *arg0) {
  return;
}
void truncate_inode_pages_final(struct address_space *arg0) {
  return;
}
void truncate_setsize(struct inode *arg0, loff_t arg1) {
  return;
}
void unload_nls(struct nls_table *arg0) {
  return;
}
void unlock_page(struct page *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_filesystem(struct file_system_type *arg0) {
  return __VERIFIER_nondet_int();
}
void up_read(struct rw_semaphore *arg0) {
  return;
}
void up_write(struct rw_semaphore *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int utf32_to_utf8(unicode_t arg0, u8 *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int utf8_to_utf32(const u8 *arg0, int arg1, unicode_t *arg2) {
  return __VERIFIER_nondet_int();
}
void vfree(const void *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
