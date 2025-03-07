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
   u32 hash ;
   u32 len ;
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
struct __anonstruct_mm_context_t_123 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_123 mm_context_t;
struct device_node;
struct block_device;
struct io_context;
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
   u32 state ;
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
union __anonunion____missing_field_name_191 {
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
struct __anonstruct_sigset_t_192 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_192 sigset_t;
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
struct __anonstruct__kill_194 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_195 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_196 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_197 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_199 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_198 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_199 _addr_bnd ;
};
struct __anonstruct__sigpoll_200 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_201 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_193 {
   int _pad[28U] ;
   struct __anonstruct__kill_194 _kill ;
   struct __anonstruct__timer_195 _timer ;
   struct __anonstruct__rt_196 _rt ;
   struct __anonstruct__sigchld_197 _sigchld ;
   struct __anonstruct__sigfault_198 _sigfault ;
   struct __anonstruct__sigpoll_200 _sigpoll ;
   struct __anonstruct__sigsys_201 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_193 _sifields ;
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
union __anonunion____missing_field_name_204 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_205 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_207 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_206 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_207 __annonCompField67 ;
};
union __anonunion_type_data_208 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_210 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_209 {
   union __anonunion_payload_210 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_204 __annonCompField65 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_205 __annonCompField66 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_206 __annonCompField68 ;
   union __anonunion_type_data_208 type_data ;
   union __anonunion____missing_field_name_209 __annonCompField69 ;
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
struct snd_card;
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
struct snd_seq_addr {
   unsigned char client ;
   unsigned char port ;
};
struct snd_seq_oss_arg {
   int app_index ;
   int file_mode ;
   int seq_mode ;
   struct snd_seq_addr addr ;
   void *private_data ;
   int event_passing ;
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
struct snd_seq_dev_ops {
   int (*init_device)(struct snd_seq_device * ) ;
   int (*free_device)(struct snd_seq_device * ) ;
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
union __anonunion_c_234 {
   struct snd_info_entry_text text ;
   struct snd_info_entry_ops *ops ;
};
struct snd_info_entry {
   char const *name ;
   umode_t mode ;
   long size ;
   unsigned short content ;
   union __anonunion_c_234 c ;
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
struct seq_oss_chinfo {
   int note ;
   int vel ;
};
struct seq_oss_synth_sysex;
struct seq_oss_synthinfo {
   struct snd_seq_oss_arg arg ;
   struct seq_oss_chinfo *ch ;
   struct seq_oss_synth_sysex *sysex ;
   int nr_voices ;
   int opened ;
   int is_midi ;
   int midi_mapped ;
};
struct seq_oss_writeq;
struct seq_oss_readq;
struct seq_oss_timer;
struct seq_oss_devinfo {
   int index ;
   int cseq ;
   int port ;
   int queue ;
   struct snd_seq_addr addr ;
   int seq_mode ;
   int file_mode ;
   int max_mididev ;
   int max_synthdev ;
   struct seq_oss_synthinfo synths[16U] ;
   int synth_opened ;
   struct seq_oss_writeq *writeq ;
   struct seq_oss_readq *readq ;
   struct seq_oss_timer *timer ;
};
struct ldv_struct_EMGentry_3 {
   int signal_pending ;
};
struct ldv_struct_file_operations_instance_0 {
   struct file_operations *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
enum hrtimer_restart;
typedef unsigned char snd_seq_event_type_t;
struct snd_seq_connect {
   struct snd_seq_addr sender ;
   struct snd_seq_addr dest ;
};
struct snd_seq_ev_note {
   unsigned char channel ;
   unsigned char note ;
   unsigned char velocity ;
   unsigned char off_velocity ;
   unsigned int duration ;
};
struct snd_seq_ev_ctrl {
   unsigned char channel ;
   unsigned char unused1 ;
   unsigned char unused2 ;
   unsigned char unused3 ;
   unsigned int param ;
   int value ;
};
struct snd_seq_ev_raw8 {
   unsigned char d[12U] ;
};
struct snd_seq_ev_raw32 {
   unsigned int d[3U] ;
};
struct snd_seq_ev_ext {
   unsigned int len ;
   void *ptr ;
};
struct snd_seq_result {
   int event ;
   int result ;
};
struct snd_seq_real_time {
   unsigned int tv_sec ;
   unsigned int tv_nsec ;
};
typedef unsigned int snd_seq_tick_time_t;
union snd_seq_timestamp {
   snd_seq_tick_time_t tick ;
   struct snd_seq_real_time time ;
};
struct snd_seq_queue_skew {
   unsigned int value ;
   unsigned int base ;
};
union __anonunion_param_224 {
   int value ;
   union snd_seq_timestamp time ;
   unsigned int position ;
   struct snd_seq_queue_skew skew ;
   unsigned int d32[2U] ;
   unsigned char d8[8U] ;
};
struct snd_seq_ev_queue_control {
   unsigned char queue ;
   unsigned char pad[3U] ;
   union __anonunion_param_224 param ;
};
struct snd_seq_event;
struct snd_seq_ev_quote {
   struct snd_seq_addr origin ;
   unsigned short value ;
   struct snd_seq_event *event ;
};
union __anonunion_data_225 {
   struct snd_seq_ev_note note ;
   struct snd_seq_ev_ctrl control ;
   struct snd_seq_ev_raw8 raw8 ;
   struct snd_seq_ev_raw32 raw32 ;
   struct snd_seq_ev_ext ext ;
   struct snd_seq_ev_queue_control queue ;
   union snd_seq_timestamp time ;
   struct snd_seq_addr addr ;
   struct snd_seq_connect connect ;
   struct snd_seq_result result ;
   struct snd_seq_ev_quote quote ;
};
struct snd_seq_event {
   snd_seq_event_type_t type ;
   unsigned char flags ;
   char tag ;
   unsigned char queue ;
   union snd_seq_timestamp time ;
   struct snd_seq_addr source ;
   struct snd_seq_addr dest ;
   union __anonunion_data_225 data ;
};
struct snd_seq_port_info {
   struct snd_seq_addr addr ;
   char name[64U] ;
   unsigned int capability ;
   unsigned int type ;
   int midi_channels ;
   int midi_voices ;
   int synth_voices ;
   int read_use ;
   int write_use ;
   void *kernel ;
   unsigned int flags ;
   unsigned char time_queue ;
   char reserved[59U] ;
};
struct snd_seq_queue_info {
   int queue ;
   int owner ;
   unsigned char locked : 1 ;
   char name[64U] ;
   unsigned int flags ;
   char reserved[60U] ;
};
struct snd_seq_port_subscribe {
   struct snd_seq_addr sender ;
   struct snd_seq_addr dest ;
   unsigned int voices ;
   unsigned int flags ;
   unsigned char queue ;
   unsigned char pad[3U] ;
   char reserved[64U] ;
};
struct snd_seq_port_callback {
   struct module *owner ;
   void *private_data ;
   int (*subscribe)(void * , struct snd_seq_port_subscribe * ) ;
   int (*unsubscribe)(void * , struct snd_seq_port_subscribe * ) ;
   int (*use)(void * , struct snd_seq_port_subscribe * ) ;
   int (*unuse)(void * , struct snd_seq_port_subscribe * ) ;
   int (*event_input)(struct snd_seq_event * , int , void * , int , int ) ;
   void (*private_free)(void * ) ;
};
typedef unsigned int reltime_t;
typedef unsigned int abstime_t;
struct seq_oss_writeq {
   struct seq_oss_devinfo *dp ;
   int maxlen ;
   abstime_t sync_time ;
   int sync_event_put ;
   wait_queue_head_t sync_sleep ;
   spinlock_t sync_lock ;
};
union evrec;
struct seq_oss_readq {
   union evrec *q ;
   int qlen ;
   int maxlen ;
   int head ;
   int tail ;
   unsigned long pre_event_timeout ;
   unsigned long input_time ;
   wait_queue_head_t midi_sleep ;
   spinlock_t lock ;
};
struct seq_oss_timer {
   struct seq_oss_devinfo *dp ;
   reltime_t cur_tick ;
   int realtime ;
   int running ;
   int tempo ;
   int ppq ;
   int oss_tempo ;
   int oss_timebase ;
};
struct evrec_short {
   unsigned char code ;
   unsigned char parm1 ;
   unsigned char dev ;
   unsigned char parm2 ;
};
struct evrec_note {
   unsigned char code ;
   unsigned char chn ;
   unsigned char note ;
   unsigned char vel ;
};
struct evrec_timer {
   unsigned char code ;
   unsigned char cmd ;
   unsigned char dummy1 ;
   unsigned char dummy2 ;
   unsigned int time ;
};
struct evrec_extended {
   unsigned char code ;
   unsigned char cmd ;
   unsigned char dev ;
   unsigned char chn ;
   unsigned char p1 ;
   unsigned char p2 ;
   unsigned char p3 ;
   unsigned char p4 ;
};
struct evrec_long {
   unsigned char code ;
   unsigned char dev ;
   unsigned char cmd ;
   unsigned char chn ;
   unsigned char p1 ;
   unsigned char p2 ;
   unsigned short val ;
};
struct evrec_voice {
   unsigned char code ;
   unsigned char dev ;
   unsigned char cmd ;
   unsigned char chn ;
   unsigned char note ;
   unsigned char parm ;
   unsigned short dummy ;
};
struct evrec_sysex {
   unsigned char code ;
   unsigned char dev ;
   unsigned char buf[6U] ;
};
union evrec {
   struct evrec_short s ;
   struct evrec_note n ;
   struct evrec_long l ;
   struct evrec_voice v ;
   struct evrec_timer t ;
   struct evrec_extended e ;
   struct evrec_sysex x ;
   unsigned int echo ;
   unsigned char c[8U] ;
};
struct snd_seq_queue_tempo {
   int queue ;
   unsigned int tempo ;
   int ppq ;
   unsigned int skew_value ;
   unsigned int skew_base ;
   char reserved[24U] ;
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
struct __anonstruct_mm_segment_t_25 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_25 mm_segment_t;
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
enum hrtimer_restart;
struct synth_info {
   char name[30U] ;
   int device ;
   int synth_type ;
   int synth_subtype ;
   int perc_mode ;
   int nr_voices ;
   int nr_drums ;
   int instr_bank_size ;
   unsigned int capabilities ;
   int dummies[19U] ;
};
struct midi_info {
   char name[30U] ;
   int device ;
   unsigned int capabilities ;
   int dev_type ;
   int dummies[18U] ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct snd_seq_oss_callback {
   struct module *owner ;
   int (*open)(struct snd_seq_oss_arg * , void * ) ;
   int (*close)(struct snd_seq_oss_arg * ) ;
   int (*ioctl)(struct snd_seq_oss_arg * , unsigned int , unsigned long ) ;
   int (*load_patch)(struct snd_seq_oss_arg * , int , char const * , int , int ) ;
   int (*reset)(struct snd_seq_oss_arg * ) ;
   int (*raw_event)(struct snd_seq_oss_arg * , unsigned char * ) ;
};
struct snd_seq_oss_reg {
   int type ;
   int subtype ;
   int nvoices ;
   struct snd_seq_oss_callback oper ;
   void *private_data ;
};
typedef atomic_t snd_use_lock_t;
struct seq_oss_synth_sysex {
   int len ;
   int skip ;
   unsigned char buf[128U] ;
};
struct seq_oss_synth {
   int seq_device ;
   int synth_type ;
   int synth_subtype ;
   int nr_voices ;
   char name[30U] ;
   struct snd_seq_oss_callback oper ;
   int opened ;
   void *private_data ;
   snd_use_lock_t use_lock ;
};
typedef int snd_seq_client_type_t;
struct snd_seq_client_info {
   int client ;
   snd_seq_client_type_t type ;
   char name[64U] ;
   unsigned int filter ;
   unsigned char multicast_filter[8U] ;
   unsigned char event_filter[32U] ;
   int num_ports ;
   int event_lost ;
   char reserved[64U] ;
};
struct snd_midi_event {
   int qlen ;
   int read ;
   int type ;
   unsigned char lastcmd ;
   unsigned char nostat ;
   int bufsize ;
   unsigned char *buf ;
   spinlock_t lock ;
};
struct seq_oss_midi {
   int seq_device ;
   int client ;
   int port ;
   unsigned int flags ;
   int opened ;
   unsigned char name[30U] ;
   struct snd_midi_event *coder ;
   struct seq_oss_devinfo *devinfo ;
   snd_use_lock_t use_lock ;
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
enum hrtimer_restart;
struct snd_seq_client_pool {
   int client ;
   int output_pool ;
   int input_pool ;
   int output_room ;
   int output_free ;
   int input_free ;
   char reserved[64U] ;
};
struct snd_seq_remove_events {
   unsigned int remove_mode ;
   union snd_seq_timestamp time ;
   unsigned char queue ;
   struct snd_seq_addr dest ;
   unsigned char channel ;
   int type ;
   char tag ;
   int reserved[10U] ;
};
struct request;
struct device_private {
   void *driver_data ;
};
typedef short s16;
typedef u64 dma_addr_t;
enum hrtimer_restart;
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
struct notifier_block;
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
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
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void *ldv_linux_usb_gadget_create_class(void *is_got ) ;
int ldv_linux_usb_gadget_register_class(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
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
int ldv_undef_int(void) ;
static void ldv_ldv_initialize_114(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_111(int ldv_func_arg1 ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_112(void) ;
static void ldv_ldv_check_final_state_113(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_101(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_107(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_register_mutex(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_register_mutex(struct mutex *lock ) ;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
static void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_100(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_106(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 ) ;
__inline static unsigned int iminor(struct inode const *inode )
{
  {
  return ((unsigned int )inode->i_rdev & 1048575U);
}
}
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
extern int snd_register_oss_device(int , struct snd_card * , int , struct file_operations const * ,
                                   void * ) ;
static int ldv_snd_register_oss_device_102(int ldv_func_arg1 , struct snd_card *ldv_func_arg2 ,
                                           int ldv_func_arg3 , struct file_operations const *ldv_func_arg4 ,
                                           void *ldv_func_arg5 ) ;
static int ldv_snd_register_oss_device_104(int ldv_func_arg1 , struct snd_card *ldv_func_arg2 ,
                                           int ldv_func_arg3 , struct file_operations const *ldv_func_arg4 ,
                                           void *ldv_func_arg5 ) ;
extern int snd_unregister_oss_device(int , struct snd_card * , int ) ;
extern void snd_seq_autoload_lock(void) ;
extern void snd_seq_autoload_unlock(void) ;
extern int snd_seq_device_register_driver(char * , struct snd_seq_dev_ops * , int ) ;
extern int snd_seq_device_unregister_driver(char * ) ;
extern struct snd_info_entry *snd_seq_root ;
extern int snd_iprintf(struct snd_info_buffer * , char const * , ...) ;
extern struct snd_info_entry *snd_info_create_module_entry(struct module * , char const * ,
                                                           struct snd_info_entry * ) ;
extern void snd_info_free_entry(struct snd_info_entry * ) ;
extern int snd_info_register(struct snd_info_entry * ) ;
int snd_seq_oss_create_client(void) ;
int snd_seq_oss_delete_client(void) ;
int snd_seq_oss_open(struct file *file , int level ) ;
void snd_seq_oss_release(struct seq_oss_devinfo *dp ) ;
int snd_seq_oss_ioctl(struct seq_oss_devinfo *dp , unsigned int cmd , unsigned long carg ) ;
int snd_seq_oss_read(struct seq_oss_devinfo *dp , char *buf , int count ) ;
int snd_seq_oss_write(struct seq_oss_devinfo *dp , char const *buf , int count ,
                      struct file *opt ) ;
unsigned int snd_seq_oss_poll(struct seq_oss_devinfo *dp , struct file *file , poll_table *wait ) ;
void snd_seq_oss_drain_write(struct seq_oss_devinfo *dp ) ;
void snd_seq_oss_system_info_read(struct snd_info_buffer *buf ) ;
void snd_seq_oss_midi_info_read(struct snd_info_buffer *buf ) ;
void snd_seq_oss_synth_info_read(struct snd_info_buffer *buf ) ;
void snd_seq_oss_synth_init(void) ;
int snd_seq_oss_synth_register(struct snd_seq_device *dev ) ;
int snd_seq_oss_synth_unregister(struct snd_seq_device *dev ) ;
static int register_device(void) ;
static void unregister_device(void) ;
static int register_proc(void) ;
static void unregister_proc(void) ;
static int odev_open(struct inode *inode , struct file *file ) ;
static int odev_release(struct inode *inode , struct file *file ) ;
static ssize_t odev_read(struct file *file , char *buf , size_t count , loff_t *offset ) ;
static ssize_t odev_write(struct file *file , char const *buf , size_t count , loff_t *offset ) ;
static long odev_ioctl(struct file *file , unsigned int cmd , unsigned long arg ) ;
static unsigned int odev_poll(struct file *file , poll_table *wait ) ;
static int alsa_seq_oss_init(void)
{
  int rc ;
  struct snd_seq_dev_ops ops ;
  {
  {
  ops.init_device = & snd_seq_oss_synth_register;
  ops.free_device = & snd_seq_oss_synth_unregister;
  snd_seq_autoload_lock();
  rc = register_device();
  }
  if (rc < 0) {
    goto error;
  } else {
  }
  {
  rc = register_proc();
  }
  if (rc < 0) {
    {
    unregister_device();
    }
    goto error;
  } else {
  }
  {
  rc = snd_seq_oss_create_client();
  }
  if (rc < 0) {
    {
    unregister_proc();
    unregister_device();
    }
    goto error;
  } else {
  }
  {
  rc = snd_seq_device_register_driver((char *)"seq-oss", & ops, 80);
  }
  if (rc < 0) {
    {
    snd_seq_oss_delete_client();
    unregister_proc();
    unregister_device();
    }
    goto error;
  } else {
  }
  {
  snd_seq_oss_synth_init();
  }
  error:
  {
  snd_seq_autoload_unlock();
  }
  return (rc);
}
}
static void alsa_seq_oss_exit(void)
{
  {
  {
  snd_seq_device_unregister_driver((char *)"seq-oss");
  snd_seq_oss_delete_client();
  unregister_proc();
  unregister_device();
  }
  return;
}
}
static struct mutex register_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "register_mutex.wait_lock",
                                                           0, 0UL}}}}, {& register_mutex.wait_list,
                                                                        & register_mutex.wait_list},
    0, (void *)(& register_mutex), {0, {0, 0}, "register_mutex", 0, 0UL}};
static int odev_open(struct inode *inode , struct file *file )
{
  int level ;
  int rc ;
  unsigned int tmp ;
  {
  {
  tmp = iminor((struct inode const *)inode);
  }
  if (tmp == 8U) {
    level = 1;
  } else {
    level = 0;
  }
  {
  ldv_mutex_lock_97(& register_mutex);
  rc = snd_seq_oss_open(file, level);
  ldv_mutex_unlock_98(& register_mutex);
  }
  return (rc);
}
}
static int odev_release(struct inode *inode , struct file *file )
{
  struct seq_oss_devinfo *dp ;
  {
  dp = (struct seq_oss_devinfo *)file->private_data;
  if ((unsigned long )dp == (unsigned long )((struct seq_oss_devinfo *)0)) {
    return (0);
  } else {
  }
  {
  snd_seq_oss_drain_write(dp);
  ldv_mutex_lock_99(& register_mutex);
  snd_seq_oss_release(dp);
  ldv_mutex_unlock_100(& register_mutex);
  }
  return (0);
}
}
static ssize_t odev_read(struct file *file , char *buf , size_t count , loff_t *offset )
{
  struct seq_oss_devinfo *dp ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  dp = (struct seq_oss_devinfo *)file->private_data;
  __ret_warn_on = (unsigned long )dp == (unsigned long )((struct seq_oss_devinfo *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("sound/core/seq/oss/seq_oss.c", 161);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (-6L);
  } else {
  }
  {
  tmp___1 = snd_seq_oss_read(dp, buf, (int )count);
  }
  return ((ssize_t )tmp___1);
}
}
static ssize_t odev_write(struct file *file , char const *buf , size_t count , loff_t *offset )
{
  struct seq_oss_devinfo *dp ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  dp = (struct seq_oss_devinfo *)file->private_data;
  __ret_warn_on = (unsigned long )dp == (unsigned long )((struct seq_oss_devinfo *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("sound/core/seq/oss/seq_oss.c", 172);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (-6L);
  } else {
  }
  {
  tmp___1 = snd_seq_oss_write(dp, buf, (int )count, file);
  }
  return ((ssize_t )tmp___1);
}
}
static long odev_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  struct seq_oss_devinfo *dp ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  dp = (struct seq_oss_devinfo *)file->private_data;
  __ret_warn_on = (unsigned long )dp == (unsigned long )((struct seq_oss_devinfo *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("sound/core/seq/oss/seq_oss.c", 182);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (-6L);
  } else {
  }
  {
  tmp___1 = snd_seq_oss_ioctl(dp, cmd, arg);
  }
  return ((long )tmp___1);
}
}
static unsigned int odev_poll(struct file *file , poll_table *wait )
{
  struct seq_oss_devinfo *dp ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  dp = (struct seq_oss_devinfo *)file->private_data;
  __ret_warn_on = (unsigned long )dp == (unsigned long )((struct seq_oss_devinfo *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("sound/core/seq/oss/seq_oss.c", 198);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    return (4294967290U);
  } else {
  }
  {
  tmp___1 = snd_seq_oss_poll(dp, file, wait);
  }
  return (tmp___1);
}
}
static struct file_operations const seq_oss_f_ops =
     {& __this_module, & noop_llseek, & odev_read, & odev_write, 0, 0, 0, 0, 0, & odev_poll,
    & odev_ioctl, & odev_ioctl, 0, 0, & odev_open, 0, & odev_release, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static int register_device(void)
{
  int rc ;
  {
  {
  ldv_mutex_lock_101(& register_mutex);
  rc = ldv_snd_register_oss_device_102(1, (struct snd_card *)0, 0, & seq_oss_f_ops,
                                       (void *)0);
  }
  if (rc < 0) {
    {
    printk("\vALSA: seq_oss: can\'t register device seq\n");
    ldv_mutex_unlock_103(& register_mutex);
    }
    return (rc);
  } else {
  }
  {
  rc = ldv_snd_register_oss_device_104(6, (struct snd_card *)0, 0, & seq_oss_f_ops,
                                       (void *)0);
  }
  if (rc < 0) {
    {
    printk("\vALSA: seq_oss: can\'t register device music\n");
    snd_unregister_oss_device(1, (struct snd_card *)0, 0);
    ldv_mutex_unlock_105(& register_mutex);
    }
    return (rc);
  } else {
  }
  {
  ldv_mutex_unlock_106(& register_mutex);
  }
  return (0);
}
}
static void unregister_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_mutex_lock_107(& register_mutex);
  tmp = snd_unregister_oss_device(6, (struct snd_card *)0, 0);
  }
  if (tmp < 0) {
    {
    printk("\vALSA: seq_oss: error unregister device music\n");
    }
  } else {
  }
  {
  tmp___0 = snd_unregister_oss_device(1, (struct snd_card *)0, 0);
  }
  if (tmp___0 < 0) {
    {
    printk("\vALSA: seq_oss: error unregister device seq\n");
    }
  } else {
  }
  {
  ldv_mutex_unlock_108(& register_mutex);
  }
  return;
}
}
static struct snd_info_entry *info_entry ;
static void info_read(struct snd_info_entry *entry , struct snd_info_buffer *buf )
{
  {
  {
  ldv_mutex_lock_109(& register_mutex);
  snd_iprintf(buf, "OSS sequencer emulation version %s\n", (char *)"0.1.8");
  snd_seq_oss_system_info_read(buf);
  snd_seq_oss_synth_info_read(buf);
  snd_seq_oss_midi_info_read(buf);
  ldv_mutex_unlock_110(& register_mutex);
  }
  return;
}
}
static int register_proc(void)
{
  struct snd_info_entry *entry ;
  int tmp ;
  {
  {
  entry = snd_info_create_module_entry(& __this_module, "oss", snd_seq_root);
  }
  if ((unsigned long )entry == (unsigned long )((struct snd_info_entry *)0)) {
    return (-12);
  } else {
  }
  {
  entry->content = 0U;
  entry->private_data = (void *)0;
  entry->c.text.read = & info_read;
  tmp = snd_info_register(entry);
  }
  if (tmp < 0) {
    {
    snd_info_free_entry(entry);
    }
    return (-12);
  } else {
  }
  info_entry = entry;
  return (0);
}
}
static void unregister_proc(void)
{
  {
  {
  snd_info_free_entry(info_entry);
  info_entry = (struct snd_info_entry *)0;
  }
  return;
}
}
void ldv_EMGentry_exit_alsa_seq_oss_exit_3_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_alsa_seq_oss_init_3_10(int (*arg0)(void) ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_3_3_4(void) ;
void ldv_dispatch_deregister_file_operations_instance_1_3_5(void) ;
void ldv_dispatch_register_2_2(struct file_operations *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_3_3_6(void) ;
void ldv_entry_EMGentry_3(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_22(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 ) ;
void ldv_file_operations_instance_callback_0_25(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_file_operations_instance_callback_0_26(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_29(long (*arg0)(struct file * , unsigned int ,
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
int ldv_snd_register_oss_device(int arg0 , int arg1 , struct snd_card *arg2 , int arg3 ,
                                struct file_operations *arg4 , void *arg5 ) ;
void ldv_struct_work_struct_dummy_resourceless_instance_1(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_3 ;
void ldv_EMGentry_exit_alsa_seq_oss_exit_3_2(void (*arg0)(void) )
{
  {
  {
  alsa_seq_oss_exit();
  }
  return;
}
}
int ldv_EMGentry_init_alsa_seq_oss_init_3_10(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = alsa_seq_oss_init();
  }
  return (tmp);
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_3_3_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_1_3_5(void)
{
  {
  return;
}
}
void ldv_dispatch_register_2_2(struct file_operations *arg0 )
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
void ldv_dispatch_register_dummy_resourceless_instance_3_3_6(void)
{
  struct ldv_struct_EMGentry_3 *cf_arg_1 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_1 = (struct ldv_struct_EMGentry_3 *)tmp;
  ldv_struct_work_struct_dummy_resourceless_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_entry_EMGentry_3(void *arg0 )
{
  void (*ldv_3_exit_alsa_seq_oss_exit_default)(void) ;
  int (*ldv_3_init_alsa_seq_oss_init_default)(void) ;
  int ldv_3_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_3_ret_default = ldv_EMGentry_init_alsa_seq_oss_init_3_10(ldv_3_init_alsa_seq_oss_init_default);
  ldv_3_ret_default = ldv_ldv_post_init_111(ldv_3_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_3_ret_default != 0);
    ldv_ldv_check_final_state_112();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_3_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_dummy_resourceless_instance_3_3_6();
      ldv_dispatch_deregister_file_operations_instance_1_3_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_3_3_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_alsa_seq_oss_exit_3_2(ldv_3_exit_alsa_seq_oss_exit_default);
    ldv_ldv_check_final_state_113();
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
  ldv_ldv_initialize_114();
  ldv_entry_EMGentry_3((void *)0);
  }
return 0;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  long (*ldv_0_callback_compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
  long long (*ldv_0_callback_llseek)(struct file * , long long , int ) ;
  unsigned int (*ldv_0_callback_poll)(struct file * , struct poll_table_struct * ) ;
  long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_0_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_0_container_file_operations ;
  long long ldv_0_ldv_param_22_1_default ;
  int ldv_0_ldv_param_22_2_default ;
  char *ldv_0_ldv_param_26_1_default ;
  long long *ldv_0_ldv_param_26_3_default ;
  unsigned int ldv_0_ldv_param_29_1_default ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  unsigned int ldv_0_ldv_param_5_1_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
  struct poll_table_struct *ldv_0_size_cnt_struct_poll_table_struct_ptr ;
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
  ldv_file_operations_instance_write_0_4((long (*)(struct file * , char * , unsigned long ,
                                                   long long * ))ldv_0_container_file_operations->write,
                                         ldv_0_resource_file, ldv_0_ldv_param_4_1_default,
                                         ldv_0_size_cnt_write_size, ldv_0_ldv_param_4_3_default);
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
  case_1___0:
  {
  ldv_file_operations_instance_callback_0_29(ldv_0_callback_unlocked_ioctl, ldv_0_resource_file,
                                             ldv_0_ldv_param_29_1_default, ldv_0_size_cnt_write_size);
  }
  goto ldv_32753;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_26_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_26_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_0_26(ldv_0_callback_read, ldv_0_resource_file,
                                             ldv_0_ldv_param_26_1_default, ldv_0_size_cnt_write_size,
                                             ldv_0_ldv_param_26_3_default);
  ldv_free((void *)ldv_0_ldv_param_26_1_default);
  ldv_free((void *)ldv_0_ldv_param_26_3_default);
  }
  goto ldv_32753;
  case_3___0:
  {
  ldv_file_operations_instance_callback_0_25(ldv_0_callback_poll, ldv_0_resource_file,
                                             ldv_0_size_cnt_struct_poll_table_struct_ptr);
  }
  goto ldv_32753;
  case_4:
  {
  ldv_file_operations_instance_callback_0_22(ldv_0_callback_llseek, ldv_0_resource_file,
                                             ldv_0_ldv_param_22_1_default, ldv_0_ldv_param_22_2_default);
  }
  goto ldv_32753;
  case_5:
  {
  ldv_file_operations_instance_callback_0_5(ldv_0_callback_compat_ioctl, ldv_0_resource_file,
                                            ldv_0_ldv_param_5_1_default, ldv_0_size_cnt_write_size);
  }
  goto ldv_32753;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_32753: ;
  goto ldv_32759;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_32759: ;
  goto ldv_call_0;
  goto ldv_call_0;
  return;
}
}
void ldv_file_operations_instance_callback_0_22(long long (*arg0)(struct file * ,
                                                                  long long , int ) ,
                                                struct file *arg1 , long long arg2 ,
                                                int arg3 )
{
  {
  {
  noop_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_25(unsigned int (*arg0)(struct file * ,
                                                                     struct poll_table_struct * ) ,
                                                struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  odev_poll(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_26(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  odev_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_29(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  odev_ioctl(arg1, arg2, arg3);
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
  odev_ioctl(arg1, arg2, arg3);
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
  tmp = odev_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  odev_release(arg1, arg2);
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
  odev_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
int ldv_snd_register_oss_device(int arg0 , int arg1 , struct snd_card *arg2 , int arg3 ,
                                struct file_operations *arg4 , void *arg5 )
{
  struct file_operations *ldv_2_file_operations_file_operations ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_2_file_operations_file_operations = arg4;
    ldv_dispatch_register_2_2(ldv_2_file_operations_file_operations);
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
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_register_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_register_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_register_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_100(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_register_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_101(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_register_mutex(ldv_func_arg1);
  }
  return;
}
}
static int ldv_snd_register_oss_device_102(int ldv_func_arg1 , struct snd_card *ldv_func_arg2 ,
                                           int ldv_func_arg3 , struct file_operations const *ldv_func_arg4 ,
                                           void *ldv_func_arg5 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = snd_register_oss_device(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4,
                                ldv_func_arg5);
  ldv_func_res = tmp;
  tmp___0 = ldv_snd_register_oss_device(ldv_func_res, ldv_func_arg1, ldv_func_arg2,
                                        ldv_func_arg3, (struct file_operations *)ldv_func_arg4,
                                        ldv_func_arg5);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_register_mutex(ldv_func_arg1);
  }
  return;
}
}
static int ldv_snd_register_oss_device_104(int ldv_func_arg1 , struct snd_card *ldv_func_arg2 ,
                                           int ldv_func_arg3 , struct file_operations const *ldv_func_arg4 ,
                                           void *ldv_func_arg5 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = snd_register_oss_device(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4,
                                ldv_func_arg5);
  ldv_func_res = tmp;
  tmp___0 = ldv_snd_register_oss_device(ldv_func_res, ldv_func_arg1, ldv_func_arg2,
                                        ldv_func_arg3, (struct file_operations *)ldv_func_arg4,
                                        ldv_func_arg5);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_register_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_106(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_register_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_107(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_register_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_register_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_register_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_register_mutex(ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_init_111(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_112(void)
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
static void ldv_ldv_check_final_state_113(void)
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
static void ldv_ldv_initialize_114(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
extern void ldv_after_alloc(void * ) ;
extern int sprintf(char * , char const * , ...) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
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
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int snd_seq_create_kernel_client(struct snd_card * , int , char const *
                                        , ...) ;
extern int snd_seq_delete_kernel_client(int ) ;
extern int snd_seq_kernel_client_ctl(int , unsigned int , void * ) ;
extern int snd_seq_event_port_detach(int , int ) ;
void snd_seq_oss_reset(struct seq_oss_devinfo *dp ) ;
void snd_seq_oss_readq_info_read(struct seq_oss_readq *q , struct snd_info_buffer *buf ) ;
char *enabled_str(int bool___0 ) ;
void snd_seq_oss_synth_setup(struct seq_oss_devinfo *dp ) ;
void snd_seq_oss_synth_setup_midi(struct seq_oss_devinfo *dp ) ;
void snd_seq_oss_synth_cleanup(struct seq_oss_devinfo *dp ) ;
void snd_seq_oss_synth_reset(struct seq_oss_devinfo *dp , int dev ) ;
int snd_seq_oss_midi_lookup_ports(int client ) ;
int snd_seq_oss_midi_check_new_port(struct snd_seq_port_info *pinfo ) ;
int snd_seq_oss_midi_check_exit_port(int client , int port ) ;
void snd_seq_oss_midi_clear_all(void) ;
void snd_seq_oss_midi_setup(struct seq_oss_devinfo *dp ) ;
void snd_seq_oss_midi_cleanup(struct seq_oss_devinfo *dp ) ;
void snd_seq_oss_midi_open_all(struct seq_oss_devinfo *dp , int file_mode ) ;
void snd_seq_oss_midi_reset(struct seq_oss_devinfo *dp , int dev ) ;
struct seq_oss_writeq *snd_seq_oss_writeq_new(struct seq_oss_devinfo *dp , int maxlen ) ;
void snd_seq_oss_writeq_delete(struct seq_oss_writeq *q ) ;
void snd_seq_oss_writeq_clear(struct seq_oss_writeq *q ) ;
int snd_seq_oss_writeq_sync(struct seq_oss_writeq *q ) ;
struct seq_oss_readq *snd_seq_oss_readq_new(struct seq_oss_devinfo *dp , int maxlen ) ;
void snd_seq_oss_readq_delete(struct seq_oss_readq *q ) ;
void snd_seq_oss_readq_clear(struct seq_oss_readq *q ) ;
struct seq_oss_timer *snd_seq_oss_timer_new(struct seq_oss_devinfo *dp ) ;
void snd_seq_oss_timer_delete(struct seq_oss_timer *rec ) ;
int snd_seq_oss_timer_stop(struct seq_oss_timer *timer ) ;
int snd_seq_oss_event_input(struct snd_seq_event *ev , int direct , void *private_data ,
                            int atomic , int hop ) ;
static int maxqlen = 1024;
static int system_client = -1;
static int system_port = -1;
static int num_clients ;
static struct seq_oss_devinfo *client_table[16U] ;
static int receive_announce(struct snd_seq_event *ev , int direct , void *private ,
                            int atomic , int hop ) ;
static int translate_mode(struct file *file ) ;
static int create_port(struct seq_oss_devinfo *dp ) ;
static int delete_port(struct seq_oss_devinfo *dp ) ;
static int alloc_seq_queue(struct seq_oss_devinfo *dp ) ;
static int delete_seq_queue(int queue ) ;
static void free_devinfo(void *private ) ;
static void async_call_lookup_ports(struct work_struct *work )
{
  {
  {
  snd_seq_oss_midi_lookup_ports(system_client);
  }
  return;
}
}
static struct work_struct async_lookup_work = {{137438953424L}, {& async_lookup_work.entry, & async_lookup_work.entry}, & async_call_lookup_ports,
    {(struct lock_class_key *)(& async_lookup_work), {0, 0}, "async_lookup_work",
     0, 0UL}};
int snd_seq_oss_create_client(void)
{
  int rc ;
  struct snd_seq_port_info *port ;
  struct snd_seq_port_callback port_callback ;
  void *tmp ;
  struct snd_seq_port_subscribe subs ;
  {
  {
  tmp = kmalloc(168UL, 208U);
  port = (struct snd_seq_port_info *)tmp;
  }
  if ((unsigned long )port == (unsigned long )((struct snd_seq_port_info *)0)) {
    rc = -12;
    goto __error;
  } else {
  }
  {
  rc = snd_seq_create_kernel_client((struct snd_card *)0, 15, "OSS sequencer");
  }
  if (rc < 0) {
    goto __error;
  } else {
  }
  {
  system_client = rc;
  memset((void *)port, 0, 168UL);
  strcpy((char *)(& port->name), "Receiver");
  port->addr.client = (unsigned char )system_client;
  port->capability = 2U;
  port->type = 0U;
  memset((void *)(& port_callback), 0, 64UL);
  port_callback.event_input = & receive_announce;
  port->kernel = (void *)(& port_callback);
  snd_seq_kernel_client_ctl(system_client, 3232256800U, (void *)port);
  system_port = (int )port->addr.port;
  memset((void *)(& subs), 0, 80UL);
  subs.sender.client = 0U;
  subs.sender.port = 1U;
  subs.dest.client = (unsigned char )system_client;
  subs.dest.port = (unsigned char )system_port;
  snd_seq_kernel_client_ctl(system_client, 1079006000U, (void *)(& subs));
  rc = 0;
  schedule_work(& async_lookup_work);
  }
  __error:
  {
  kfree((void const *)port);
  }
  return (rc);
}
}
static int receive_announce(struct snd_seq_event *ev , int direct , void *private ,
                            int atomic , int hop )
{
  struct snd_seq_port_info pinfo ;
  int tmp ;
  {
  if (atomic != 0) {
    return (0);
  } else {
  }
  {
  if ((int )ev->type == 63) {
    goto case_63;
  } else {
  }
  if ((int )ev->type == 65) {
    goto case_65;
  } else {
  }
  if ((int )ev->type == 64) {
    goto case_64;
  } else {
  }
  goto switch_break;
  case_63: ;
  case_65: ;
  if ((int )ev->data.addr.client == system_client) {
    goto ldv_32012;
  } else {
  }
  {
  memset((void *)(& pinfo), 0, 168UL);
  pinfo.addr = ev->data.addr;
  tmp = snd_seq_kernel_client_ctl(system_client, 3232256802U, (void *)(& pinfo));
  }
  if (tmp >= 0) {
    {
    snd_seq_oss_midi_check_new_port(& pinfo);
    }
  } else {
  }
  goto ldv_32012;
  case_64: ;
  if ((int )ev->data.addr.client == system_client) {
    goto ldv_32012;
  } else {
  }
  {
  snd_seq_oss_midi_check_exit_port((int )ev->data.addr.client, (int )ev->data.addr.port);
  }
  goto ldv_32012;
  switch_break: ;
  }
  ldv_32012: ;
  return (0);
}
}
int snd_seq_oss_delete_client(void)
{
  {
  {
  cancel_work_sync(& async_lookup_work);
  }
  if (system_client >= 0) {
    {
    snd_seq_delete_kernel_client(system_client);
    }
  } else {
  }
  {
  snd_seq_oss_midi_clear_all();
  }
  return (0);
}
}
int snd_seq_oss_open(struct file *file , int level )
{
  int i ;
  int rc ;
  struct seq_oss_devinfo *dp ;
  void *tmp ;
  {
  {
  tmp = kzalloc(1096UL, 208U);
  dp = (struct seq_oss_devinfo *)tmp;
  }
  if ((unsigned long )dp == (unsigned long )((struct seq_oss_devinfo *)0)) {
    {
    printk("\vALSA: seq_oss: can\'t malloc device info\n");
    }
    return (-12);
  } else {
  }
  dp->cseq = system_client;
  dp->port = -1;
  dp->queue = -1;
  i = 0;
  goto ldv_32026;
  ldv_32025: ;
  if ((unsigned long )client_table[i] == (unsigned long )((struct seq_oss_devinfo *)0)) {
    goto ldv_32024;
  } else {
  }
  i = i + 1;
  ldv_32026: ;
  if (i <= 15) {
    goto ldv_32025;
  } else {
  }
  ldv_32024:
  dp->index = i;
  if (i > 15) {
    {
    printk("\vALSA: seq_oss: too many applications\n");
    rc = -12;
    }
    goto _error;
  } else {
  }
  {
  snd_seq_oss_synth_setup(dp);
  snd_seq_oss_midi_setup(dp);
  }
  if (dp->synth_opened == 0 && dp->max_mididev == 0) {
    rc = -19;
    goto _error;
  } else {
  }
  {
  rc = create_port(dp);
  }
  if (rc < 0) {
    {
    printk("\vALSA: seq_oss: can\'t create port\n");
    }
    goto _error;
  } else {
  }
  {
  rc = alloc_seq_queue(dp);
  }
  if (rc < 0) {
    goto _error;
  } else {
  }
  {
  dp->addr.client = (unsigned char )dp->cseq;
  dp->addr.port = (unsigned char )dp->port;
  dp->seq_mode = level;
  dp->file_mode = translate_mode(file);
  }
  if (dp->file_mode & 1) {
    {
    dp->readq = snd_seq_oss_readq_new(dp, maxqlen);
    }
    if ((unsigned long )dp->readq == (unsigned long )((struct seq_oss_readq *)0)) {
      rc = -12;
      goto _error;
    } else {
    }
  } else {
  }
  if ((dp->file_mode & 2) != 0) {
    {
    dp->writeq = snd_seq_oss_writeq_new(dp, maxqlen);
    }
    if ((unsigned long )dp->writeq == (unsigned long )((struct seq_oss_writeq *)0)) {
      rc = -12;
      goto _error;
    } else {
    }
  } else {
  }
  {
  dp->timer = snd_seq_oss_timer_new(dp);
  }
  if ((unsigned long )dp->timer == (unsigned long )((struct seq_oss_timer *)0)) {
    {
    printk("\vALSA: seq_oss: can\'t alloc timer\n");
    rc = -12;
    }
    goto _error;
  } else {
  }
  file->private_data = (void *)dp;
  if (level == 1) {
    {
    snd_seq_oss_synth_setup_midi(dp);
    }
  } else
  if (dp->file_mode & 1) {
    {
    snd_seq_oss_midi_open_all(dp, 1);
    }
  } else {
  }
  client_table[dp->index] = dp;
  num_clients = num_clients + 1;
  return (0);
  _error:
  {
  snd_seq_oss_synth_cleanup(dp);
  snd_seq_oss_midi_cleanup(dp);
  delete_seq_queue(dp->queue);
  delete_port(dp);
  }
  return (rc);
}
}
static int translate_mode(struct file *file )
{
  int file_mode ;
  {
  file_mode = 0;
  if ((file->f_flags & 3U) != 0U) {
    file_mode = file_mode | 2;
  } else {
  }
  if ((file->f_flags & 3U) != 1U) {
    file_mode = file_mode | 1;
  } else {
  }
  if ((file->f_flags & 2048U) != 0U) {
    file_mode = file_mode | 4;
  } else {
  }
  return (file_mode);
}
}
static int create_port(struct seq_oss_devinfo *dp )
{
  int rc ;
  struct snd_seq_port_info port ;
  struct snd_seq_port_callback callback ;
  {
  {
  memset((void *)(& port), 0, 168UL);
  port.addr.client = (unsigned char )dp->cseq;
  sprintf((char *)(& port.name), "Sequencer-%d", dp->index);
  port.capability = 3U;
  port.type = 1U;
  port.midi_channels = 128;
  port.synth_voices = 128;
  memset((void *)(& callback), 0, 64UL);
  callback.owner = & __this_module;
  callback.private_data = (void *)dp;
  callback.event_input = & snd_seq_oss_event_input;
  callback.private_free = & free_devinfo;
  port.kernel = (void *)(& callback);
  rc = snd_seq_kernel_client_ctl(system_client, 3232256800U, (void *)(& port));
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  dp->port = (int )port.addr.port;
  return (0);
}
}
static int delete_port(struct seq_oss_devinfo *dp )
{
  int tmp ;
  {
  if (dp->port < 0) {
    {
    kfree((void const *)dp);
    }
    return (0);
  } else {
  }
  {
  tmp = snd_seq_event_port_detach(dp->cseq, dp->port);
  }
  return (tmp);
}
}
static int alloc_seq_queue(struct seq_oss_devinfo *dp )
{
  struct snd_seq_queue_info qinfo ;
  int rc ;
  {
  {
  memset((void *)(& qinfo), 0, 140UL);
  qinfo.owner = system_client;
  qinfo.locked = 1U;
  strcpy((char *)(& qinfo.name), "OSS Sequencer Emulation");
  rc = snd_seq_kernel_client_ctl(system_client, 3230421810U, (void *)(& qinfo));
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  dp->queue = qinfo.queue;
  return (0);
}
}
static int delete_seq_queue(int queue )
{
  struct snd_seq_queue_info qinfo ;
  int rc ;
  {
  if (queue < 0) {
    return (0);
  } else {
  }
  {
  memset((void *)(& qinfo), 0, 140UL);
  qinfo.queue = queue;
  rc = snd_seq_kernel_client_ctl(system_client, 1082938163U, (void *)(& qinfo));
  }
  if (rc < 0) {
    {
    printk("\vALSA: seq_oss: unable to delete queue %d (%d)\n", queue, rc);
    }
  } else {
  }
  return (rc);
}
}
static void free_devinfo(void *private )
{
  struct seq_oss_devinfo *dp ;
  {
  {
  dp = (struct seq_oss_devinfo *)private;
  snd_seq_oss_timer_delete(dp->timer);
  snd_seq_oss_writeq_delete(dp->writeq);
  snd_seq_oss_readq_delete(dp->readq);
  kfree((void const *)dp);
  }
  return;
}
}
void snd_seq_oss_release(struct seq_oss_devinfo *dp )
{
  int queue ;
  {
  {
  client_table[dp->index] = (struct seq_oss_devinfo *)0;
  num_clients = num_clients - 1;
  snd_seq_oss_reset(dp);
  snd_seq_oss_synth_cleanup(dp);
  snd_seq_oss_midi_cleanup(dp);
  queue = dp->queue;
  }
  if (dp->port >= 0) {
    {
    delete_port(dp);
    }
  } else {
  }
  {
  delete_seq_queue(queue);
  }
  return;
}
}
void snd_seq_oss_drain_write(struct seq_oss_devinfo *dp )
{
  int tmp ;
  {
  if ((dp->timer)->running == 0) {
    return;
  } else {
  }
  if (*((unsigned int *)dp + 6UL) == 2U && (unsigned long )dp->writeq != (unsigned long )((struct seq_oss_writeq *)0)) {
    goto ldv_32063;
    ldv_32062: ;
    ldv_32063:
    {
    tmp = snd_seq_oss_writeq_sync(dp->writeq);
    }
    if (tmp != 0) {
      goto ldv_32062;
    } else {
    }
  } else {
  }
  return;
}
}
void snd_seq_oss_reset(struct seq_oss_devinfo *dp )
{
  int i ;
  {
  i = 0;
  goto ldv_32070;
  ldv_32069:
  {
  snd_seq_oss_synth_reset(dp, i);
  i = i + 1;
  }
  ldv_32070: ;
  if (i < dp->max_synthdev) {
    goto ldv_32069;
  } else {
  }
  if (dp->seq_mode != 1) {
    i = 0;
    goto ldv_32073;
    ldv_32072:
    {
    snd_seq_oss_midi_reset(dp, i);
    i = i + 1;
    }
    ldv_32073: ;
    if (i < dp->max_mididev) {
      goto ldv_32072;
    } else {
    }
  } else {
  }
  if ((unsigned long )dp->readq != (unsigned long )((struct seq_oss_readq *)0)) {
    {
    snd_seq_oss_readq_clear(dp->readq);
    }
  } else {
  }
  if ((unsigned long )dp->writeq != (unsigned long )((struct seq_oss_writeq *)0)) {
    {
    snd_seq_oss_writeq_clear(dp->writeq);
    }
  } else {
  }
  {
  snd_seq_oss_timer_stop(dp->timer);
  }
  return;
}
}
char *enabled_str(int bool___0 )
{
  {
  return (bool___0 != 0 ? (char *)"enabled" : (char *)"disabled");
}
}
static char *filemode_str(int val )
{
  char *str[4U] ;
  {
  str[0] = (char *)"none";
  str[1] = (char *)"read";
  str[2] = (char *)"write";
  str[3] = (char *)"read/write";
  return (str[val & 3]);
}
}
void snd_seq_oss_system_info_read(struct snd_info_buffer *buf )
{
  int i ;
  struct seq_oss_devinfo *dp ;
  char *tmp ;
  {
  {
  snd_iprintf(buf, "ALSA client number %d\n", system_client);
  snd_iprintf(buf, "ALSA receiver port %d\n", system_port);
  snd_iprintf(buf, "\nNumber of applications: %d\n", num_clients);
  i = 0;
  }
  goto ldv_32089;
  ldv_32088:
  {
  snd_iprintf(buf, "\nApplication %d: ", i);
  dp = client_table[i];
  }
  if ((unsigned long )dp == (unsigned long )((struct seq_oss_devinfo *)0)) {
    {
    snd_iprintf(buf, "*empty*\n");
    }
    goto ldv_32087;
  } else {
  }
  {
  snd_iprintf(buf, "port %d : queue %d\n", dp->port, dp->queue);
  tmp = filemode_str(dp->file_mode);
  snd_iprintf(buf, "  sequencer mode = %s : file open mode = %s\n", dp->seq_mode != 0 ? (char *)"music" : (char *)"synth",
              tmp);
  }
  if (dp->seq_mode != 0) {
    {
    snd_iprintf(buf, "  timer tempo = %d, timebase = %d\n", (dp->timer)->oss_tempo,
                (dp->timer)->oss_timebase);
    }
  } else {
  }
  {
  snd_iprintf(buf, "  max queue length %d\n", maxqlen);
  }
  if (dp->file_mode & 1 && (unsigned long )dp->readq != (unsigned long )((struct seq_oss_readq *)0)) {
    {
    snd_seq_oss_readq_info_read(dp->readq, buf);
    }
  } else {
  }
  ldv_32087:
  i = i + 1;
  ldv_32089: ;
  if (i < num_clients) {
    goto ldv_32088;
  } else {
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct work_struct * ) ,
                                                  struct work_struct *arg1 ) ;
struct ldv_thread ldv_thread_1 ;
void ldv_dummy_resourceless_instance_callback_1_3(void (*arg0)(struct work_struct * ) ,
                                                  struct work_struct *arg1 )
{
  {
  {
  async_call_lookup_ports(arg1);
  }
  return;
}
}
void ldv_struct_work_struct_dummy_resourceless_instance_1(void *arg0 )
{
  void (*ldv_1_callback_func)(struct work_struct * ) ;
  struct work_struct *ldv_1_container_struct_work_struct ;
  int tmp ;
  {
  goto ldv_call_1;
  return;
  ldv_call_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_1_3(ldv_1_callback_func, ldv_1_container_struct_work_struct);
    }
    goto ldv_call_1;
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
extern void might_fault(void) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int snd_seq_kernel_client_dispatch(int , struct snd_seq_event * , int , int ) ;
extern int snd_seq_set_queue_tempo(int , struct snd_seq_queue_tempo * ) ;
int snd_seq_oss_timer_start(struct seq_oss_timer *timer ) ;
int snd_seq_oss_timer_continue(struct seq_oss_timer *timer ) ;
int snd_seq_oss_timer_tempo(struct seq_oss_timer *timer , int value ) ;
int snd_seq_oss_timer_ioctl(struct seq_oss_timer *timer , unsigned int cmd , int *arg ) ;
int snd_seq_oss_process_timer_event(struct seq_oss_timer *rec , union evrec *ev ) ;
static void calc_alsa_tempo(struct seq_oss_timer *timer ) ;
static int send_timer_event(struct seq_oss_devinfo *dp , int type , int value ) ;
struct seq_oss_timer *snd_seq_oss_timer_new(struct seq_oss_devinfo *dp )
{
  struct seq_oss_timer *rec ;
  void *tmp ;
  {
  {
  tmp = kzalloc(40UL, 208U);
  rec = (struct seq_oss_timer *)tmp;
  }
  if ((unsigned long )rec == (unsigned long )((struct seq_oss_timer *)0)) {
    return ((struct seq_oss_timer *)0);
  } else {
  }
  {
  rec->dp = dp;
  rec->cur_tick = 0U;
  rec->realtime = 0;
  rec->running = 0;
  rec->oss_tempo = 60;
  rec->oss_timebase = 100;
  calc_alsa_tempo(rec);
  }
  return (rec);
}
}
void snd_seq_oss_timer_delete(struct seq_oss_timer *rec )
{
  {
  if ((unsigned long )rec != (unsigned long )((struct seq_oss_timer *)0)) {
    {
    snd_seq_oss_timer_stop(rec);
    kfree((void const *)rec);
    }
  } else {
  }
  return;
}
}
int snd_seq_oss_process_timer_event(struct seq_oss_timer *rec , union evrec *ev )
{
  abstime_t parm ;
  {
  parm = ev->t.time;
  if ((unsigned int )ev->t.code == 129U) {
    {
    if ((int )ev->t.cmd == 1) {
      goto case_1;
    } else {
    }
    if ((int )ev->t.cmd == 2) {
      goto case_2;
    } else {
    }
    if ((int )ev->t.cmd == 4) {
      goto case_4;
    } else {
    }
    goto switch_break;
    case_1:
    parm = parm + rec->cur_tick;
    rec->realtime = 0;
    case_2: ;
    if (parm == 0U) {
      rec->realtime = 1;
    } else
    if (parm >= rec->cur_tick) {
      rec->realtime = 0;
      rec->cur_tick = parm;
    } else {
    }
    return (1);
    case_4:
    {
    snd_seq_oss_timer_start(rec);
    }
    return (1);
    switch_break: ;
    }
  } else
  if ((unsigned int )ev->s.code == 2U) {
    parm = ev->echo >> 8;
    if (parm > rec->cur_tick) {
      rec->cur_tick = parm;
      rec->realtime = 0;
    } else {
    }
    return (1);
  } else {
  }
  return (0);
}
}
static void calc_alsa_tempo(struct seq_oss_timer *timer )
{
  {
  timer->tempo = 60000000 / timer->oss_tempo;
  timer->ppq = timer->oss_timebase;
  return;
}
}
static int send_timer_event(struct seq_oss_devinfo *dp , int type , int value )
{
  struct snd_seq_event ev ;
  int tmp ;
  {
  {
  memset((void *)(& ev), 0, 28UL);
  ev.type = (snd_seq_event_type_t )type;
  ev.source.client = (unsigned char )dp->cseq;
  ev.source.port = 0U;
  ev.dest.client = 0U;
  ev.dest.port = 0U;
  ev.queue = (unsigned char )dp->queue;
  ev.data.queue.queue = (unsigned char )dp->queue;
  ev.data.queue.param.value = value;
  tmp = snd_seq_kernel_client_dispatch(dp->cseq, & ev, 1, 0);
  }
  return (tmp);
}
}
int snd_seq_oss_timer_start(struct seq_oss_timer *timer )
{
  struct seq_oss_devinfo *dp ;
  struct snd_seq_queue_tempo tmprec ;
  {
  dp = timer->dp;
  if (timer->running != 0) {
    {
    snd_seq_oss_timer_stop(timer);
    }
  } else {
  }
  {
  memset((void *)(& tmprec), 0, 44UL);
  tmprec.queue = dp->queue;
  tmprec.ppq = timer->ppq;
  tmprec.tempo = (unsigned int )timer->tempo;
  snd_seq_set_queue_tempo(dp->cseq, & tmprec);
  send_timer_event(dp, 30, 0);
  timer->running = 1;
  timer->cur_tick = 0U;
  }
  return (0);
}
}
int snd_seq_oss_timer_stop(struct seq_oss_timer *timer )
{
  {
  if (timer->running == 0) {
    return (0);
  } else {
  }
  {
  send_timer_event(timer->dp, 32, 0);
  timer->running = 0;
  }
  return (0);
}
}
int snd_seq_oss_timer_continue(struct seq_oss_timer *timer )
{
  {
  if (timer->running != 0) {
    return (0);
  } else {
  }
  {
  send_timer_event(timer->dp, 31, 0);
  timer->running = 1;
  }
  return (0);
}
}
int snd_seq_oss_timer_tempo(struct seq_oss_timer *timer , int value )
{
  {
  if (value <= 7) {
    value = 8;
  } else
  if (value > 360) {
    value = 360;
  } else {
  }
  {
  timer->oss_tempo = value;
  calc_alsa_tempo(timer);
  }
  if (timer->running != 0) {
    {
    send_timer_event(timer->dp, 35, timer->tempo);
    }
  } else {
  }
  return (0);
}
}
int snd_seq_oss_timer_ioctl(struct seq_oss_timer *timer , unsigned int cmd , int *arg )
{
  int value ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int __ret_pu ;
  int __pu_val ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int __ret_gu___0 ;
  register unsigned long __val_gu___0 ;
  int tmp___2 ;
  int __ret_gu___1 ;
  register unsigned long __val_gu___1 ;
  {
  if (cmd == 3221508355U) {
    {
    might_fault();
    __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (arg),
                         "i" (4UL));
    value = (int )__val_gu;
    }
    if (__ret_gu != 0) {
      return (-14);
    } else {
    }
    if (value != 0) {
      return (-22);
    } else {
    }
    {
    value = (timer->oss_tempo * timer->oss_timebase + 30) / 60;
    might_fault();
    __pu_val = value;
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
    __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (arg): "ebx");
    goto ldv_31690;
    case_2:
    __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (arg): "ebx");
    goto ldv_31690;
    case_4:
    __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (arg): "ebx");
    goto ldv_31690;
    case_8:
    __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (arg): "ebx");
    goto ldv_31690;
    switch_default:
    __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (arg): "ebx");
    goto ldv_31690;
    switch_break: ;
    }
    ldv_31690: ;
    return (__ret_pu != 0 ? -14 : 0);
  } else {
  }
  if ((timer->dp)->seq_mode == 0) {
    return (0);
  } else {
  }
  {
  if (cmd == 21506U) {
    goto case_21506;
  } else {
  }
  if (cmd == 21507U) {
    goto case_21507;
  } else {
  }
  if (cmd == 21508U) {
    goto case_21508;
  } else {
  }
  if (cmd == 3221509125U) {
    goto case_3221509125;
  } else {
  }
  if (cmd == 3221509121U) {
    goto case_3221509121;
  } else {
  }
  if (cmd == 1074025479U) {
    goto case_1074025479;
  } else {
  }
  if (cmd == 1074025480U) {
    goto case_1074025480;
  } else {
  }
  if (cmd == 3221509126U) {
    goto case_3221509126;
  } else {
  }
  goto switch_break___0;
  case_21506:
  {
  tmp = snd_seq_oss_timer_start(timer);
  }
  return (tmp);
  case_21507:
  {
  tmp___0 = snd_seq_oss_timer_stop(timer);
  }
  return (tmp___0);
  case_21508:
  {
  tmp___1 = snd_seq_oss_timer_continue(timer);
  }
  return (tmp___1);
  case_3221509125:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___0), "=r" (__val_gu___0): "0" (arg),
                       "i" (4UL));
  value = (int )__val_gu___0;
  }
  if (__ret_gu___0 != 0) {
    return (-14);
  } else {
  }
  {
  tmp___2 = snd_seq_oss_timer_tempo(timer, value);
  }
  return (tmp___2);
  case_3221509121:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___1), "=r" (__val_gu___1): "0" (arg),
                       "i" (4UL));
  value = (int )__val_gu___1;
  }
  if (__ret_gu___1 != 0) {
    return (-14);
  } else {
  }
  if (value <= 0) {
    value = 1;
  } else
  if (value > 1000) {
    value = 1000;
  } else {
  }
  {
  timer->oss_timebase = value;
  calc_alsa_tempo(timer);
  }
  return (0);
  case_1074025479: ;
  case_1074025480: ;
  case_3221509126: ;
  return (0);
  switch_break___0: ;
  }
  return (0);
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
  goto ldv_3550;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3550;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3550;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3550;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3550: ;
  return (pfo_ret__);
}
}
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
__inline static int snd_seq_oss_dispatch(struct seq_oss_devinfo *dp , struct snd_seq_event *ev ,
                                         int atomic , int hop )
{
  int tmp ;
  {
  {
  tmp = snd_seq_kernel_client_dispatch(dp->cseq, ev, atomic, hop);
  }
  return (tmp);
}
}
__inline static void snd_seq_oss_fill_addr(struct seq_oss_devinfo *dp , struct snd_seq_event *ev ,
                                           int dest_client , int dest_port )
{
  {
  ev->queue = (unsigned char )dp->queue;
  ev->source = dp->addr;
  ev->dest.client = (unsigned char )dest_client;
  ev->dest.port = (unsigned char )dest_port;
  return;
}
}
int snd_seq_oss_writeq_get_free_size(struct seq_oss_writeq *q ) ;
void snd_seq_oss_writeq_set_output(struct seq_oss_writeq *q , int val ) ;
__inline static abstime_t snd_seq_oss_timer_cur_tick(struct seq_oss_timer *timer )
{
  {
  return (timer->cur_tick);
}
}
int snd_seq_oss_synth_ioctl(struct seq_oss_devinfo *dp , int dev , unsigned int cmd ,
                            unsigned long addr ) ;
int snd_seq_oss_synth_make_info(struct seq_oss_devinfo *dp , int dev , struct synth_info *inf ) ;
int snd_seq_oss_midi_open(struct seq_oss_devinfo *dp , int dev , int fmode ) ;
int snd_seq_oss_midi_make_info(struct seq_oss_devinfo *dp , int dev , struct midi_info *inf ) ;
int snd_seq_oss_process_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev ) ;
static int snd_seq_oss_synth_info_user(struct seq_oss_devinfo *dp , void *arg )
{
  struct synth_info info ;
  unsigned long tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  {
  {
  tmp = copy_from_user((void *)(& info), (void const *)arg, 140UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  {
  tmp___0 = snd_seq_oss_synth_make_info(dp, info.device, & info);
  }
  if (tmp___0 < 0) {
    return (-22);
  } else {
  }
  {
  tmp___1 = copy_to_user(arg, (void const *)(& info), 140UL);
  }
  if (tmp___1 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int snd_seq_oss_midi_info_user(struct seq_oss_devinfo *dp , void *arg )
{
  struct midi_info info ;
  unsigned long tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  {
  {
  tmp = copy_from_user((void *)(& info), (void const *)arg, 116UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  {
  tmp___0 = snd_seq_oss_midi_make_info(dp, info.device, & info);
  }
  if (tmp___0 < 0) {
    return (-22);
  } else {
  }
  {
  tmp___1 = copy_to_user(arg, (void const *)(& info), 116UL);
  }
  if (tmp___1 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int snd_seq_oss_oob_user(struct seq_oss_devinfo *dp , void *arg )
{
  unsigned char ev[8U] ;
  struct snd_seq_event tmpev ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  {
  tmp = copy_from_user((void *)(& ev), (void const *)arg, 8UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  {
  memset((void *)(& tmpev), 0, 28UL);
  snd_seq_oss_fill_addr(dp, & tmpev, (int )dp->addr.port, (int )dp->addr.client);
  tmpev.time.tick = 0U;
  tmp___0 = snd_seq_oss_process_event(dp, (union evrec *)(& ev), & tmpev);
  }
  if (tmp___0 == 0) {
    {
    snd_seq_oss_dispatch(dp, & tmpev, 0, 0);
    }
  } else {
  }
  return (0);
}
}
int snd_seq_oss_ioctl(struct seq_oss_devinfo *dp , unsigned int cmd , unsigned long carg )
{
  int dev ;
  int val ;
  void *arg ;
  int *p ;
  int tmp ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int tmp___3 ;
  int __ret_pu ;
  int __pu_val ;
  int __ret_pu___0 ;
  int __pu_val___0 ;
  int __ret_pu___1 ;
  int __pu_val___1 ;
  abstime_t tmp___4 ;
  int __ret_gu___0 ;
  register unsigned long __val_gu___0 ;
  int tmp___5 ;
  int __ret_pu___2 ;
  int __pu_val___2 ;
  int __ret_pu___3 ;
  int __pu_val___3 ;
  int __ret_gu___1 ;
  register unsigned long __val_gu___1 ;
  int __ret_pu___4 ;
  int __pu_val___4 ;
  int __ret_gu___2 ;
  register unsigned long __val_gu___2 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int __ret_gu___3 ;
  register unsigned long __val_gu___3 ;
  int __ret_gu___4 ;
  register unsigned long __val_gu___4 ;
  int __ret_pu___5 ;
  int __pu_val___5 ;
  int tmp___9 ;
  {
  arg = (void *)carg;
  p = (int *)arg;
  {
  if (cmd == 3221509121U) {
    goto case_3221509121;
  } else {
  }
  if (cmd == 3221509125U) {
    goto case_3221509125;
  } else {
  }
  if (cmd == 21506U) {
    goto case_21506;
  } else {
  }
  if (cmd == 21507U) {
    goto case_21507;
  } else {
  }
  if (cmd == 21508U) {
    goto case_21508;
  } else {
  }
  if (cmd == 1074025479U) {
    goto case_1074025479;
  } else {
  }
  if (cmd == 3221509126U) {
    goto case_3221509126;
  } else {
  }
  if (cmd == 1074025480U) {
    goto case_1074025480;
  } else {
  }
  if (cmd == 3221508355U) {
    goto case_3221508355;
  } else {
  }
  if (cmd == 20753U) {
    goto case_20753;
  } else {
  }
  if (cmd == 20737U) {
    goto case_20737;
  } else {
  }
  if (cmd == 20736U) {
    goto case_20736;
  } else {
  }
  if (cmd == 1074024712U) {
    goto case_1074024712;
  } else {
  }
  if (cmd == 2147766533U) {
    goto case_2147766533;
  } else {
  }
  if (cmd == 2147766532U) {
    goto case_2147766532;
  } else {
  }
  if (cmd == 2147766547U) {
    goto case_2147766547;
  } else {
  }
  if (cmd == 1074024713U) {
    goto case_1074024713;
  } else {
  }
  if (cmd == 2147766538U) {
    goto case_2147766538;
  } else {
  }
  if (cmd == 2147766539U) {
    goto case_2147766539;
  } else {
  }
  if (cmd == 3221508366U) {
    goto case_3221508366;
  } else {
  }
  if (cmd == 1074024719U) {
    goto case_1074024719;
  } else {
  }
  if (cmd == 3230421250U) {
    goto case_3230421250;
  } else {
  }
  if (cmd == 3230421268U) {
    goto case_3230421268;
  } else {
  }
  if (cmd == 1074286866U) {
    goto case_1074286866;
  } else {
  }
  if (cmd == 3228848396U) {
    goto case_3228848396;
  } else {
  }
  if (cmd == 1074024717U) {
    goto case_1074024717;
  } else {
  }
  if (cmd == 3221515520U) {
    goto case_3221515520;
  } else {
  }
  goto switch_default___6;
  case_3221509121: ;
  case_3221509125: ;
  case_21506: ;
  case_21507: ;
  case_21508: ;
  case_1074025479: ;
  case_3221509126: ;
  case_1074025480: ;
  case_3221508355:
  {
  tmp = snd_seq_oss_timer_ioctl(dp->timer, cmd, (int *)arg);
  }
  return (tmp);
  case_20753:
  {
  snd_seq_oss_reset(dp);
  }
  return (-22);
  case_20737: ;
  if ((dp->file_mode & 2) == 0 || (unsigned long )dp->writeq == (unsigned long )((struct seq_oss_writeq *)0)) {
    return (0);
  } else {
  }
  goto ldv_31826;
  ldv_31825: ;
  ldv_31826:
  {
  tmp___0 = snd_seq_oss_writeq_sync(dp->writeq);
  }
  if (tmp___0 != 0) {
    goto ldv_31825;
  } else {
  }
  {
  tmp___1 = get_current();
  tmp___2 = signal_pending(tmp___1);
  }
  if (tmp___2 != 0) {
    return (-512);
  } else {
  }
  return (0);
  case_20736:
  {
  snd_seq_oss_reset(dp);
  }
  return (0);
  case_1074024712:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (p),
                       "i" (4UL));
  dev = (int )__val_gu;
  }
  if (__ret_gu != 0) {
    return (-14);
  } else {
  }
  {
  tmp___3 = snd_seq_oss_midi_open(dp, dev, dp->file_mode);
  }
  return (tmp___3);
  case_2147766533: ;
  if ((unsigned long )dp->readq == (unsigned long )((struct seq_oss_readq *)0) || (dp->file_mode & 1) == 0) {
    return (0);
  } else {
  }
  {
  might_fault();
  __pu_val = (dp->readq)->qlen;
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
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (p): "ebx");
  goto ldv_31837;
  case_2:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (p): "ebx");
  goto ldv_31837;
  case_4:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (p): "ebx");
  goto ldv_31837;
  case_8:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (p): "ebx");
  goto ldv_31837;
  switch_default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (p): "ebx");
  goto ldv_31837;
  switch_break___0: ;
  }
  ldv_31837: ;
  return (__ret_pu != 0 ? -14 : 0);
  case_2147766532: ;
  if ((dp->file_mode & 2) == 0 || (unsigned long )dp->writeq == (unsigned long )((struct seq_oss_writeq *)0)) {
    return (0);
  } else {
  }
  {
  might_fault();
  __pu_val___0 = snd_seq_oss_writeq_get_free_size(dp->writeq);
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
                       "c" (p): "ebx");
  goto ldv_31847;
  case_2___0:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" (p): "ebx");
  goto ldv_31847;
  case_4___0:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" (p): "ebx");
  goto ldv_31847;
  case_8___0:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" (p): "ebx");
  goto ldv_31847;
  switch_default___0:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" (p): "ebx");
  goto ldv_31847;
  switch_break___1: ;
  }
  ldv_31847: ;
  return (__ret_pu___0 != 0 ? -14 : 0);
  case_2147766547:
  {
  might_fault();
  tmp___4 = snd_seq_oss_timer_cur_tick(dp->timer);
  __pu_val___1 = (int )tmp___4;
  }
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
    goto case_4___1;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___1;
  } else {
  }
  goto switch_default___1;
  case_1___1:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" (p): "ebx");
  goto ldv_31857;
  case_2___1:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" (p): "ebx");
  goto ldv_31857;
  case_4___1:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" (p): "ebx");
  goto ldv_31857;
  case_8___1:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" (p): "ebx");
  goto ldv_31857;
  switch_default___1:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" (p): "ebx");
  goto ldv_31857;
  switch_break___2: ;
  }
  ldv_31857: ;
  return (__ret_pu___1 != 0 ? -14 : 0);
  case_1074024713:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___0), "=r" (__val_gu___0): "0" (p),
                       "i" (4UL));
  dev = (int )__val_gu___0;
  }
  if (__ret_gu___0 != 0) {
    return (-14);
  } else {
  }
  {
  tmp___5 = snd_seq_oss_synth_ioctl(dp, dev, cmd, carg);
  }
  return (tmp___5);
  case_2147766538:
  {
  might_fault();
  __pu_val___2 = dp->max_synthdev;
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
                       "c" (p): "ebx");
  goto ldv_31871;
  case_2___2:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" (p): "ebx");
  goto ldv_31871;
  case_4___2:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" (p): "ebx");
  goto ldv_31871;
  case_8___2:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" (p): "ebx");
  goto ldv_31871;
  switch_default___2:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___2): "0" (__pu_val___2),
                       "c" (p): "ebx");
  goto ldv_31871;
  switch_break___3: ;
  }
  ldv_31871: ;
  return (__ret_pu___2 != 0 ? -14 : 0);
  case_2147766539:
  {
  might_fault();
  __pu_val___3 = dp->max_mididev;
  }
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
  goto switch_default___3;
  case_1___3:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___3): "0" (__pu_val___3),
                       "c" (p): "ebx");
  goto ldv_31881;
  case_2___3:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___3): "0" (__pu_val___3),
                       "c" (p): "ebx");
  goto ldv_31881;
  case_4___3:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___3): "0" (__pu_val___3),
                       "c" (p): "ebx");
  goto ldv_31881;
  case_8___3:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___3): "0" (__pu_val___3),
                       "c" (p): "ebx");
  goto ldv_31881;
  switch_default___3:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___3): "0" (__pu_val___3),
                       "c" (p): "ebx");
  goto ldv_31881;
  switch_break___4: ;
  }
  ldv_31881: ;
  return (__ret_pu___3 != 0 ? -14 : 0);
  case_3221508366:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___1), "=r" (__val_gu___1): "0" (p),
                       "i" (4UL));
  dev = (int )__val_gu___1;
  }
  if (__ret_gu___1 != 0) {
    return (-14);
  } else {
  }
  {
  val = snd_seq_oss_synth_ioctl(dp, dev, cmd, carg);
  might_fault();
  __pu_val___4 = val;
  }
  {
  if (4UL == 1UL) {
    goto case_1___4;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___4;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___4;
  } else {
  }
  goto switch_default___4;
  case_1___4:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___4): "0" (__pu_val___4),
                       "c" (p): "ebx");
  goto ldv_31894;
  case_2___4:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___4): "0" (__pu_val___4),
                       "c" (p): "ebx");
  goto ldv_31894;
  case_4___4:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___4): "0" (__pu_val___4),
                       "c" (p): "ebx");
  goto ldv_31894;
  case_8___4:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___4): "0" (__pu_val___4),
                       "c" (p): "ebx");
  goto ldv_31894;
  switch_default___4:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___4): "0" (__pu_val___4),
                       "c" (p): "ebx");
  goto ldv_31894;
  switch_break___5: ;
  }
  ldv_31894: ;
  return (__ret_pu___4 != 0 ? -14 : 0);
  case_1074024719:
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___2), "=r" (__val_gu___2): "0" (p),
                       "i" (4UL));
  dev = (int )__val_gu___2;
  }
  if (__ret_gu___2 != 0) {
    return (-14);
  } else {
  }
  {
  snd_seq_oss_synth_ioctl(dp, dev, cmd, carg);
  }
  return (0);
  case_3230421250: ;
  case_3230421268:
  {
  tmp___6 = snd_seq_oss_synth_info_user(dp, arg);
  }
  return (tmp___6);
  case_1074286866:
  {
  tmp___7 = snd_seq_oss_oob_user(dp, arg);
  }
  return (tmp___7);
  case_3228848396:
  {
  tmp___8 = snd_seq_oss_midi_info_user(dp, arg);
  }
  return (tmp___8);
  case_1074024717: ;
  if ((dp->file_mode & 2) == 0) {
    return (0);
  } else {
  }
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___3), "=r" (__val_gu___3): "0" (p),
                       "i" (4UL));
  val = (int )__val_gu___3;
  }
  if (__ret_gu___3 != 0) {
    return (-14);
  } else {
  }
  if (val <= 0) {
    val = 1;
  } else {
  }
  if (val >= (dp->writeq)->maxlen) {
    val = (dp->writeq)->maxlen + -1;
  } else {
  }
  {
  snd_seq_oss_writeq_set_output(dp->writeq, val);
  }
  return (0);
  case_3221515520: ;
  if ((unsigned long )dp->readq == (unsigned long )((struct seq_oss_readq *)0) || (dp->file_mode & 1) == 0) {
    return (0);
  } else {
  }
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___4), "=r" (__val_gu___4): "0" (p),
                       "i" (4UL));
  val = (int )__val_gu___4;
  }
  if (__ret_gu___4 != 0) {
    return (-14);
  } else {
  }
  if (val <= 0) {
    val = -1;
  } else {
    val = (val * 250) / 10;
  }
  {
  (dp->readq)->pre_event_timeout = (unsigned long )val;
  might_fault();
  __pu_val___5 = val;
  }
  {
  if (4UL == 1UL) {
    goto case_1___5;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___5;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___5;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___5;
  } else {
  }
  goto switch_default___5;
  case_1___5:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___5): "0" (__pu_val___5),
                       "c" (p): "ebx");
  goto ldv_31919;
  case_2___5:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___5): "0" (__pu_val___5),
                       "c" (p): "ebx");
  goto ldv_31919;
  case_4___5:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___5): "0" (__pu_val___5),
                       "c" (p): "ebx");
  goto ldv_31919;
  case_8___5:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___5): "0" (__pu_val___5),
                       "c" (p): "ebx");
  goto ldv_31919;
  switch_default___5:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___5): "0" (__pu_val___5),
                       "c" (p): "ebx");
  goto ldv_31919;
  switch_break___6: ;
  }
  ldv_31919: ;
  return (__ret_pu___5 != 0 ? -14 : 0);
  switch_default___6: ;
  if ((dp->file_mode & 2) == 0) {
    return (-5);
  } else {
  }
  {
  tmp___9 = snd_seq_oss_synth_ioctl(dp, 0, cmd, carg);
  }
  return (tmp___9);
  switch_break: ;
  }
  return (0);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
int snd_seq_oss_synth_is_valid(struct seq_oss_devinfo *dp , int dev ) ;
int snd_seq_oss_synth_sysex(struct seq_oss_devinfo *dp , int dev , unsigned char *buf ,
                            struct snd_seq_event *ev ) ;
int snd_seq_oss_synth_addr(struct seq_oss_devinfo *dp , int dev , struct snd_seq_event *ev ) ;
int snd_seq_oss_synth_raw_event(struct seq_oss_devinfo *dp , int dev , unsigned char *data ,
                                struct snd_seq_event *ev ) ;
int snd_seq_oss_midi_putc(struct seq_oss_devinfo *dp , int dev , unsigned char c ,
                          struct snd_seq_event *ev ) ;
int snd_seq_oss_midi_input(struct snd_seq_event *ev , int direct , void *private_data ) ;
int snd_seq_oss_midi_filemode(struct seq_oss_devinfo *dp , int dev ) ;
int snd_seq_oss_readq_put_event(struct seq_oss_readq *q , union evrec *ev ) ;
void snd_seq_oss_writeq_wakeup(struct seq_oss_writeq *q , abstime_t time ) ;
static int extended_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev ) ;
static int chn_voice_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev ) ;
static int chn_common_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev ) ;
static int timing_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev ) ;
static int local_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev ) ;
static int old_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev ) ;
static int note_on_event(struct seq_oss_devinfo *dp , int dev , int ch , int note ,
                         int vel , struct snd_seq_event *ev ) ;
static int note_off_event(struct seq_oss_devinfo *dp , int dev , int ch , int note ,
                          int vel , struct snd_seq_event *ev ) ;
static int set_note_event(struct seq_oss_devinfo *dp , int dev , int type , int ch ,
                          int note , int vel , struct snd_seq_event *ev ) ;
static int set_control_event(struct seq_oss_devinfo *dp , int dev , int type , int ch ,
                             int param , int val , struct snd_seq_event *ev ) ;
static int set_echo_event(struct seq_oss_devinfo *dp , union evrec *rec , struct snd_seq_event *ev ) ;
int snd_seq_oss_process_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev )
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
  {
  {
  if ((int )q->s.code == 255) {
    goto case_255;
  } else {
  }
  if ((int )q->s.code == 147) {
    goto case_147;
  } else {
  }
  if ((int )q->s.code == 146) {
    goto case_146;
  } else {
  }
  if ((int )q->s.code == 129) {
    goto case_129;
  } else {
  }
  if ((int )q->s.code == 128) {
    goto case_128;
  } else {
  }
  if ((int )q->s.code == 148) {
    goto case_148;
  } else {
  }
  if ((int )q->s.code == 5) {
    goto case_5;
  } else {
  }
  if ((int )q->s.code == 8) {
    goto case_8;
  } else {
  }
  if ((int )q->s.code == 254) {
    goto case_254;
  } else {
  }
  goto switch_default;
  case_255:
  {
  tmp = extended_event(dp, q, ev);
  }
  return (tmp);
  case_147:
  {
  tmp___0 = chn_voice_event(dp, q, ev);
  }
  return (tmp___0);
  case_146:
  {
  tmp___1 = chn_common_event(dp, q, ev);
  }
  return (tmp___1);
  case_129:
  {
  tmp___2 = timing_event(dp, q, ev);
  }
  return (tmp___2);
  case_128:
  {
  tmp___3 = local_event(dp, q, ev);
  }
  return (tmp___3);
  case_148:
  {
  tmp___4 = snd_seq_oss_synth_sysex(dp, (int )q->x.dev, (unsigned char *)(& q->x.buf),
                                    ev);
  }
  return (tmp___4);
  case_5: ;
  if (dp->seq_mode == 1) {
    return (-22);
  } else {
  }
  if ((dp->file_mode & 2) == 0) {
    goto ldv_31859;
  } else {
  }
  {
  tmp___5 = snd_seq_oss_midi_open(dp, (int )q->s.dev, 2);
  }
  if (tmp___5 != 0) {
    goto ldv_31859;
  } else {
  }
  {
  tmp___7 = snd_seq_oss_midi_filemode(dp, (int )q->s.dev);
  }
  if ((tmp___7 & 2) != 0) {
    {
    tmp___6 = snd_seq_oss_midi_putc(dp, (int )q->s.dev, (int )q->s.parm1, ev);
    }
    return (tmp___6);
  } else {
  }
  goto ldv_31859;
  case_8: ;
  if (dp->seq_mode == 1) {
    return (-22);
  } else {
  }
  {
  tmp___8 = set_echo_event(dp, q, ev);
  }
  return (tmp___8);
  case_254: ;
  if (dp->seq_mode == 1) {
    return (-22);
  } else {
  }
  {
  tmp___9 = snd_seq_oss_synth_raw_event(dp, (int )q->c[1], (unsigned char *)(& q->c),
                                        ev);
  }
  return (tmp___9);
  switch_default: ;
  if (dp->seq_mode == 1) {
    return (-22);
  } else {
  }
  {
  tmp___10 = old_event(dp, q, ev);
  }
  return (tmp___10);
  switch_break: ;
  }
  ldv_31859: ;
  return (-22);
}
}
static int old_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  if ((int )q->s.code == 0) {
    goto case_0;
  } else {
  }
  if ((int )q->s.code == 1) {
    goto case_1;
  } else {
  }
  if ((int )q->s.code == 2) {
    goto case_2;
  } else {
  }
  if ((int )q->s.code == 3) {
    goto case_3;
  } else {
  }
  if ((int )q->s.code == 4) {
    goto case_4;
  } else {
  }
  goto switch_break;
  case_0:
  {
  tmp = note_off_event(dp, 0, (int )q->n.chn, (int )q->n.note, (int )q->n.vel, ev);
  }
  return (tmp);
  case_1:
  {
  tmp___0 = note_on_event(dp, 0, (int )q->n.chn, (int )q->n.note, (int )q->n.vel,
                          ev);
  }
  return (tmp___0);
  case_2: ;
  goto ldv_31871;
  case_3:
  {
  tmp___1 = set_control_event(dp, 0, 11, (int )q->n.chn, 0, (int )q->n.note, ev);
  }
  return (tmp___1);
  case_4:
  {
  tmp___2 = snd_seq_oss_timer_start(dp->timer);
  }
  return (tmp___2);
  switch_break: ;
  }
  ldv_31871: ;
  return (-22);
}
}
static int extended_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev )
{
  int val ;
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
  if ((int )q->e.cmd == 0) {
    goto case_0;
  } else {
  }
  if ((int )q->e.cmd == 1) {
    goto case_1;
  } else {
  }
  if ((int )q->e.cmd == 3) {
    goto case_3;
  } else {
  }
  if ((int )q->e.cmd == 9) {
    goto case_9;
  } else {
  }
  if ((int )q->e.cmd == 11) {
    goto case_11;
  } else {
  }
  if ((int )q->e.cmd == 10) {
    goto case_10;
  } else {
  }
  if ((int )q->e.cmd == 12) {
    goto case_12;
  } else {
  }
  goto switch_break;
  case_0:
  {
  tmp = note_off_event(dp, (int )q->e.dev, (int )q->e.chn, (int )q->e.p1, (int )q->e.p2,
                       ev);
  }
  return (tmp);
  case_1:
  {
  tmp___0 = note_on_event(dp, (int )q->e.dev, (int )q->e.chn, (int )q->e.p1, (int )q->e.p2,
                          ev);
  }
  return (tmp___0);
  case_3:
  {
  tmp___1 = set_control_event(dp, (int )q->e.dev, 11, (int )q->e.chn, 0, (int )q->e.p1,
                              ev);
  }
  return (tmp___1);
  case_9:
  {
  tmp___2 = set_control_event(dp, (int )q->e.dev, 12, (int )q->e.chn, 0, (int )q->e.p1,
                              ev);
  }
  return (tmp___2);
  case_11:
  {
  val = (int )((char )q->e.p1);
  val = (val + 128) / 2;
  tmp___3 = set_control_event(dp, (int )q->e.dev, 10, (int )q->e.chn, 10, val, ev);
  }
  return (tmp___3);
  case_10:
  val = ((int )q->e.p3 << 8) | (int )q->e.p2;
  {
  if ((int )q->e.p1 == 255) {
    goto case_255;
  } else {
  }
  if ((int )q->e.p1 == 254) {
    goto case_254;
  } else {
  }
  goto switch_default;
  case_255:
  {
  tmp___4 = set_control_event(dp, (int )q->e.dev, 13, (int )q->e.chn, 0, val, ev);
  }
  return (tmp___4);
  case_254:
  {
  tmp___5 = set_control_event(dp, (int )q->e.dev, 16, (int )q->e.chn, 0, (val * 128) / 100,
                              ev);
  }
  return (tmp___5);
  switch_default:
  {
  tmp___6 = set_control_event(dp, (int )q->e.dev, 14, (int )q->e.chn, (int )q->e.p1,
                              val, ev);
  }
  return (tmp___6);
  switch_break___0: ;
  }
  case_12:
  {
  tmp___7 = snd_seq_oss_synth_raw_event(dp, (int )q->e.dev, (unsigned char *)(& q->c),
                                        ev);
  }
  return (tmp___7);
  switch_break: ;
  }
  return (-22);
}
}
static int chn_voice_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )q->v.chn > 31U) {
    return (-22);
  } else {
  }
  {
  if ((int )q->v.cmd == 144) {
    goto case_144;
  } else {
  }
  if ((int )q->v.cmd == 128) {
    goto case_128;
  } else {
  }
  if ((int )q->v.cmd == 160) {
    goto case_160;
  } else {
  }
  goto switch_break;
  case_144:
  {
  tmp = note_on_event(dp, (int )q->v.dev, (int )q->v.chn, (int )q->v.note, (int )q->v.parm,
                      ev);
  }
  return (tmp);
  case_128:
  {
  tmp___0 = note_off_event(dp, (int )q->v.dev, (int )q->v.chn, (int )q->v.note, (int )q->v.parm,
                           ev);
  }
  return (tmp___0);
  case_160:
  {
  tmp___1 = set_note_event(dp, (int )q->v.dev, 8, (int )q->v.chn, (int )q->v.note,
                           (int )q->v.parm, ev);
  }
  return (tmp___1);
  switch_break: ;
  }
  return (-22);
}
}
static int chn_common_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if ((unsigned int )q->l.chn > 31U) {
    return (-22);
  } else {
  }
  {
  if ((int )q->l.cmd == 192) {
    goto case_192;
  } else {
  }
  if ((int )q->l.cmd == 176) {
    goto case_176;
  } else {
  }
  if ((int )q->l.cmd == 224) {
    goto case_224;
  } else {
  }
  if ((int )q->l.cmd == 208) {
    goto case_208;
  } else {
  }
  goto switch_break;
  case_192:
  {
  tmp = set_control_event(dp, (int )q->l.dev, 11, (int )q->l.chn, 0, (int )q->l.p1,
                          ev);
  }
  return (tmp);
  case_176:
  {
  tmp___0 = set_control_event(dp, (int )q->l.dev, 10, (int )q->l.chn, (int )q->l.p1,
                              (int )q->l.val, ev);
  }
  return (tmp___0);
  case_224:
  {
  tmp___1 = set_control_event(dp, (int )q->l.dev, 13, (int )q->l.chn, 0, (int )q->l.val + -8192,
                              ev);
  }
  return (tmp___1);
  case_208:
  {
  tmp___2 = set_control_event(dp, (int )q->l.dev, 12, (int )q->l.chn, 0, (int )q->l.val,
                              ev);
  }
  return (tmp___2);
  switch_break: ;
  }
  return (-22);
}
}
static int timing_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev )
{
  int tmp ;
  union evrec tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  if ((int )q->t.cmd == 8) {
    goto case_8;
  } else {
  }
  if ((int )q->t.cmd == 3) {
    goto case_3;
  } else {
  }
  if ((int )q->t.cmd == 5) {
    goto case_5;
  } else {
  }
  if ((int )q->t.cmd == 6) {
    goto case_6;
  } else {
  }
  goto switch_break;
  case_8: ;
  if (dp->seq_mode == 1) {
    {
    tmp = set_echo_event(dp, q, ev);
    }
    return (tmp);
  } else {
    {
    memset((void *)(& tmp___0), 0, 8UL);
    tmp___0.echo = (q->t.time << 8) | 8U;
    tmp___1 = set_echo_event(dp, & tmp___0, ev);
    }
    return (tmp___1);
  }
  case_3: ;
  if (dp->seq_mode != 0) {
    {
    tmp___2 = snd_seq_oss_timer_stop(dp->timer);
    }
    return (tmp___2);
  } else {
  }
  return (0);
  case_5: ;
  if (dp->seq_mode != 0) {
    {
    tmp___3 = snd_seq_oss_timer_continue(dp->timer);
    }
    return (tmp___3);
  } else {
  }
  return (0);
  case_6: ;
  if (dp->seq_mode != 0) {
    {
    tmp___4 = snd_seq_oss_timer_tempo(dp->timer, (int )q->t.time);
    }
    return (tmp___4);
  } else {
  }
  return (0);
  switch_break: ;
  }
  return (-22);
}
}
static int local_event(struct seq_oss_devinfo *dp , union evrec *q , struct snd_seq_event *ev )
{
  {
  return (-22);
}
}
static int note_on_event(struct seq_oss_devinfo *dp , int dev , int ch , int note ,
                         int vel , struct snd_seq_event *ev )
{
  struct seq_oss_synthinfo *info ;
  int tmp ;
  int tmp___0 ;
  int type ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = snd_seq_oss_synth_is_valid(dp, dev);
  }
  if (tmp == 0) {
    return (-6);
  } else {
  }
  info = (struct seq_oss_synthinfo *)(& dp->synths) + (unsigned long )dev;
  {
  if (info->arg.event_passing == 0) {
    goto case_0;
  } else {
  }
  if (info->arg.event_passing == 1) {
    goto case_1;
  } else {
  }
  if (info->arg.event_passing == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_0: ;
  if (((unsigned long )info->ch == (unsigned long )((struct seq_oss_chinfo *)0) || ch < 0) || ch >= info->nr_voices) {
    {
    tmp___0 = set_note_event(dp, dev, 6, ch, note, vel, ev);
    }
    return (tmp___0);
  } else {
  }
  if (note == 255 && (info->ch + (unsigned long )ch)->note >= 0) {
    if ((info->ch + (unsigned long )ch)->vel != 0) {
      type = 8;
    } else {
      type = 6;
    }
    {
    (info->ch + (unsigned long )ch)->vel = vel;
    tmp___1 = set_note_event(dp, dev, type, ch, (info->ch + (unsigned long )ch)->note,
                             vel, ev);
    }
    return (tmp___1);
  } else
  if (note > 127) {
    return (-22);
  } else {
  }
  if (note != (info->ch + (unsigned long )ch)->note && (info->ch + (unsigned long )ch)->note >= 0) {
    {
    set_note_event(dp, dev, 7, ch, (info->ch + (unsigned long )ch)->note, 0, ev);
    }
  } else {
  }
  (info->ch + (unsigned long )ch)->note = note;
  (info->ch + (unsigned long )ch)->vel = vel;
  if (vel != 0) {
    {
    tmp___2 = set_note_event(dp, dev, 6, ch, note, vel, ev);
    }
    return (tmp___2);
  } else {
  }
  return (-22);
  case_1:
  {
  tmp___3 = set_note_event(dp, dev, 6, ch, note, vel, ev);
  }
  return (tmp___3);
  case_2: ;
  if (note > 127) {
    {
    tmp___4 = set_note_event(dp, dev, 8, ch, note + -128, vel, ev);
    }
    return (tmp___4);
  } else {
    {
    tmp___5 = set_note_event(dp, dev, 6, ch, note, vel, ev);
    }
    return (tmp___5);
  }
  switch_break: ;
  }
  return (-22);
}
}
static int note_off_event(struct seq_oss_devinfo *dp , int dev , int ch , int note ,
                          int vel , struct snd_seq_event *ev )
{
  struct seq_oss_synthinfo *info ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = snd_seq_oss_synth_is_valid(dp, dev);
  }
  if (tmp == 0) {
    return (-6);
  } else {
  }
  info = (struct seq_oss_synthinfo *)(& dp->synths) + (unsigned long )dev;
  {
  if (info->arg.event_passing == 0) {
    goto case_0;
  } else {
  }
  if (info->arg.event_passing == 1) {
    goto case_1;
  } else {
  }
  if (info->arg.event_passing == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_0: ;
  if (((unsigned long )info->ch == (unsigned long )((struct seq_oss_chinfo *)0) || ch < 0) || ch >= info->nr_voices) {
    {
    tmp___0 = set_note_event(dp, dev, 6, ch, note, vel, ev);
    }
    return (tmp___0);
  } else {
  }
  if ((info->ch + (unsigned long )ch)->note >= 0) {
    {
    note = (info->ch + (unsigned long )ch)->note;
    (info->ch + (unsigned long )ch)->vel = 0;
    (info->ch + (unsigned long )ch)->note = -1;
    tmp___1 = set_note_event(dp, dev, 7, ch, note, vel, ev);
    }
    return (tmp___1);
  } else {
  }
  return (-22);
  case_1: ;
  case_2:
  {
  tmp___2 = set_note_event(dp, dev, 7, ch, note, vel, ev);
  }
  return (tmp___2);
  switch_break: ;
  }
  return (-22);
}
}
static int set_note_event(struct seq_oss_devinfo *dp , int dev , int type , int ch ,
                          int note , int vel , struct snd_seq_event *ev )
{
  int tmp ;
  {
  {
  tmp = snd_seq_oss_synth_is_valid(dp, dev);
  }
  if (tmp == 0) {
    return (-6);
  } else {
  }
  {
  ev->type = (snd_seq_event_type_t )type;
  snd_seq_oss_synth_addr(dp, dev, ev);
  ev->data.note.channel = (unsigned char )ch;
  ev->data.note.note = (unsigned char )note;
  ev->data.note.velocity = (unsigned char )vel;
  }
  return (0);
}
}
static int set_control_event(struct seq_oss_devinfo *dp , int dev , int type , int ch ,
                             int param , int val , struct snd_seq_event *ev )
{
  int tmp ;
  {
  {
  tmp = snd_seq_oss_synth_is_valid(dp, dev);
  }
  if (tmp == 0) {
    return (-6);
  } else {
  }
  {
  ev->type = (snd_seq_event_type_t )type;
  snd_seq_oss_synth_addr(dp, dev, ev);
  ev->data.control.channel = (unsigned char )ch;
  ev->data.control.param = (unsigned int )param;
  ev->data.control.value = val;
  }
  return (0);
}
}
static int set_echo_event(struct seq_oss_devinfo *dp , union evrec *rec , struct snd_seq_event *ev )
{
  {
  {
  ev->type = 50U;
  snd_seq_oss_fill_addr(dp, ev, (int )dp->addr.client, (int )dp->addr.port);
  memcpy((void *)(& ev->data), (void const *)rec, 8UL);
  }
  return (0);
}
}
int snd_seq_oss_event_input(struct snd_seq_event *ev , int direct , void *private_data ,
                            int atomic , int hop )
{
  struct seq_oss_devinfo *dp ;
  union evrec *rec ;
  int tmp ;
  {
  dp = (struct seq_oss_devinfo *)private_data;
  if ((unsigned int )ev->type != 50U) {
    {
    tmp = snd_seq_oss_midi_input(ev, direct, private_data);
    }
    return (tmp);
  } else {
  }
  if ((int )ev->source.client != dp->cseq) {
    return (0);
  } else {
  }
  rec = (union evrec *)(& ev->data);
  if ((unsigned int )rec->s.code == 4U) {
    {
    snd_seq_oss_writeq_wakeup(dp->writeq, rec->t.time);
    }
  } else {
    if ((unsigned long )dp->readq == (unsigned long )((struct seq_oss_readq *)0)) {
      return (0);
    } else {
    }
    {
    snd_seq_oss_readq_put_event(dp->readq, rec);
    }
  }
  return (0);
}
}
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_seq_oss_readq(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_seq_oss_readq(void) ;
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
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
extern int snd_seq_kernel_client_enqueue(int , struct snd_seq_event * , int , int ) ;
unsigned int snd_seq_oss_readq_poll(struct seq_oss_readq *q , struct file *file ,
                                    poll_table *wait ) ;
int snd_seq_oss_readq_pick(struct seq_oss_readq *q , union evrec *rec ) ;
void snd_seq_oss_readq_wait(struct seq_oss_readq *q ) ;
void snd_seq_oss_readq_free(struct seq_oss_readq *q ) ;
int snd_seq_oss_synth_load_patch(struct seq_oss_devinfo *dp , int dev , int fmt ,
                                 char const *buf , int p , int c ) ;
extern int snd_seq_kernel_client_enqueue_blocking(int , struct snd_seq_event * ,
                                                  struct file * , int , int ) ;
extern int snd_seq_kernel_client_write_poll(int , struct file * , poll_table * ) ;
static int insert_queue(struct seq_oss_devinfo *dp , union evrec *rec , struct file *opt ) ;
int snd_seq_oss_read(struct seq_oss_devinfo *dp , char *buf , int count )
{
  struct seq_oss_readq *readq___0 ;
  int result ;
  int err ;
  int ev_len ;
  union evrec rec ;
  unsigned long flags ;
  struct task_struct *tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  {
  readq___0 = dp->readq;
  result = 0;
  err = 0;
  if ((unsigned long )readq___0 == (unsigned long )((struct seq_oss_readq *)0) || (dp->file_mode & 1) == 0) {
    return (-6);
  } else {
  }
  goto ldv_32033;
  ldv_32032:
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97(& readq___0->lock);
  err = snd_seq_oss_readq_pick(readq___0, & rec);
  }
  if (err == -11 && ((dp->file_mode & 4) | result) == 0) {
    {
    ldv_spin_unlock_irqrestore_98(& readq___0->lock, flags);
    snd_seq_oss_readq_wait(readq___0);
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99(& readq___0->lock);
    tmp = get_current();
    tmp___0 = signal_pending(tmp);
    }
    if (tmp___0 != 0) {
      err = -512;
    } else {
      {
      err = snd_seq_oss_readq_pick(readq___0, & rec);
      }
    }
  } else {
  }
  if (err < 0) {
    {
    ldv_spin_unlock_irqrestore_98(& readq___0->lock, flags);
    }
    goto ldv_32031;
  } else {
  }
  ev_len = (int )((signed char )rec.s.code) < 0 ? 8 : 4;
  if (ev_len < count) {
    {
    ldv_spin_unlock_irqrestore_98(& readq___0->lock, flags);
    }
    goto ldv_32031;
  } else {
  }
  {
  snd_seq_oss_readq_free(readq___0);
  ldv_spin_unlock_irqrestore_98(& readq___0->lock, flags);
  tmp___1 = copy_to_user((void *)buf, (void const *)(& rec), (unsigned long )ev_len);
  }
  if (tmp___1 != 0UL) {
    err = -14;
    goto ldv_32031;
  } else {
  }
  result = result + ev_len;
  buf = buf + (unsigned long )ev_len;
  count = count - ev_len;
  ldv_32033: ;
  if (count > 3) {
    goto ldv_32032;
  } else {
  }
  ldv_32031: ;
  return (result > 0 ? result : err);
}
}
int snd_seq_oss_write(struct seq_oss_devinfo *dp , char const *buf , int count ,
                      struct file *opt )
{
  int result ;
  int err ;
  int ev_size ;
  int fmt ;
  union evrec rec ;
  unsigned long tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  {
  result = 0;
  err = 0;
  if ((dp->file_mode & 2) == 0 || (unsigned long )dp->writeq == (unsigned long )((struct seq_oss_writeq *)0)) {
    return (-6);
  } else {
  }
  goto ldv_32047;
  ldv_32046:
  {
  tmp = copy_from_user((void *)(& rec), (void const *)buf, 4UL);
  }
  if (tmp != 0UL) {
    err = -14;
    goto ldv_32045;
  } else {
  }
  if ((unsigned int )rec.s.code == 253U) {
    if (result > 0) {
      err = -22;
      goto ldv_32045;
    } else {
    }
    {
    fmt = (int )*((unsigned short *)(& rec.c));
    tmp___0 = snd_seq_oss_synth_load_patch(dp, (int )rec.s.dev, fmt, buf, 0, count);
    }
    return (tmp___0);
  } else {
  }
  if ((int )((signed char )rec.s.code) < 0) {
    if ((unsigned int )rec.s.code == 255U && dp->seq_mode == 1) {
      err = -22;
      goto ldv_32045;
    } else {
    }
    ev_size = 8;
    if (count < ev_size) {
      goto ldv_32045;
    } else {
    }
    {
    tmp___1 = copy_from_user((void *)(& rec.c) + 4U, (void const *)buf + 4U, 4UL);
    }
    if (tmp___1 != 0UL) {
      err = -14;
      goto ldv_32045;
    } else {
    }
  } else {
    if (dp->seq_mode == 1) {
      err = -22;
      goto ldv_32045;
    } else {
    }
    ev_size = 4;
  }
  {
  err = insert_queue(dp, & rec, opt);
  }
  if (err < 0) {
    goto ldv_32045;
  } else {
  }
  result = result + ev_size;
  buf = buf + (unsigned long )ev_size;
  count = count - ev_size;
  ldv_32047: ;
  if (count > 3) {
    goto ldv_32046;
  } else {
  }
  ldv_32045: ;
  return (result > 0 ? result : err);
}
}
static int insert_queue(struct seq_oss_devinfo *dp , union evrec *rec , struct file *opt )
{
  int rc ;
  struct snd_seq_event event ;
  int tmp ;
  int tmp___0 ;
  {
  {
  rc = 0;
  tmp = snd_seq_oss_process_timer_event(dp->timer, rec);
  }
  if (tmp != 0) {
    return (0);
  } else {
  }
  {
  memset((void *)(& event), 0, 28UL);
  event.type = 7U;
  snd_seq_oss_fill_addr(dp, & event, (int )dp->addr.port, (int )dp->addr.client);
  tmp___0 = snd_seq_oss_process_event(dp, rec, & event);
  }
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  {
  event.time.tick = snd_seq_oss_timer_cur_tick(dp->timer);
  }
  if ((dp->timer)->realtime != 0 || (dp->timer)->running == 0) {
    {
    snd_seq_oss_dispatch(dp, & event, 0, 0);
    }
  } else
  if ((dp->file_mode & 4) != 0) {
    {
    rc = snd_seq_kernel_client_enqueue(dp->cseq, & event, 0, 0);
    }
  } else {
    {
    rc = snd_seq_kernel_client_enqueue_blocking(dp->cseq, & event, opt, 0, 0);
    }
  }
  return (rc);
}
}
unsigned int snd_seq_oss_poll(struct seq_oss_devinfo *dp , struct file *file , poll_table *wait )
{
  unsigned int mask ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  mask = 0U;
  if ((unsigned long )dp->readq != (unsigned long )((struct seq_oss_readq *)0) && dp->file_mode & 1) {
    {
    tmp = snd_seq_oss_readq_poll(dp->readq, file, wait);
    }
    if (tmp != 0U) {
      mask = mask | 65U;
    } else {
    }
  } else {
  }
  if ((unsigned long )dp->writeq != (unsigned long )((struct seq_oss_writeq *)0) && (dp->file_mode & 2) != 0) {
    {
    tmp___0 = snd_seq_kernel_client_write_poll(dp->cseq, file, wait);
    }
    if (tmp___0 != 0) {
      mask = mask | 260U;
    } else {
    }
  } else {
  }
  return (mask);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_seq_oss_readq();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_seq_oss_readq();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_seq_oss_readq();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
void ldv_linux_usb_dev_atomic_inc(atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_dec(atomic_t *v ) ;
int ldv_linux_kernel_module_try_module_get(struct module *module ) ;
void ldv_linux_kernel_module_module_put(struct module *module ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v ) ;
__inline static void atomic_dec(atomic_t *v ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_register_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_register_lock(void) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int snd_oss_info_register(int , int , char * ) ;
int snd_seq_oss_midi_close(struct seq_oss_devinfo *dp , int dev ) ;
void snd_seq_oss_midi_get_addr(struct seq_oss_devinfo *dp , int dev , struct snd_seq_addr *addr ) ;
extern void snd_use_lock_sync_helper(snd_use_lock_t * , char const * , int ) ;
static bool ldv_try_module_get_105(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_106(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_107(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_108(struct module *ldv_func_arg1 ) ;
static int max_synth_devs ;
static struct seq_oss_synth *synth_devs[16U] ;
static struct seq_oss_synth midi_synth_dev =
     {-1, 2, 0, 16, {'M', 'I', 'D', 'I', '\000'}, {0, 0, 0, 0, 0, 0, 0}, 0, 0, {0}};
static spinlock_t register_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "register_lock", 0,
                                                     0UL}}}};
static struct seq_oss_synth *get_synthdev(struct seq_oss_devinfo *dp , int dev ) ;
static void reset_channels(struct seq_oss_synthinfo *info ) ;
void snd_seq_oss_synth_init(void)
{
  {
  {
  atomic_set(& midi_synth_dev.use_lock, 0);
  }
  return;
}
}
int snd_seq_oss_synth_register(struct snd_seq_device *dev )
{
  int i ;
  struct seq_oss_synth *rec ;
  struct snd_seq_oss_reg *reg ;
  unsigned long flags ;
  void *tmp ;
  {
  {
  reg = (struct snd_seq_oss_reg *)dev + 176U;
  tmp = kzalloc(128UL, 208U);
  rec = (struct seq_oss_synth *)tmp;
  }
  if ((unsigned long )rec == (unsigned long )((struct seq_oss_synth *)0)) {
    {
    printk("\vALSA: seq_oss: can\'t malloc synth info\n");
    }
    return (-12);
  } else {
  }
  {
  rec->seq_device = -1;
  rec->synth_type = reg->type;
  rec->synth_subtype = reg->subtype;
  rec->nr_voices = reg->nvoices;
  rec->oper = reg->oper;
  rec->private_data = reg->private_data;
  rec->opened = 0;
  atomic_set(& rec->use_lock, 0);
  strlcpy((char *)(& rec->name), (char const *)(& dev->name), 30UL);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97___0(& register_lock);
  i = 0;
  }
  goto ldv_32512;
  ldv_32511: ;
  if ((unsigned long )synth_devs[i] == (unsigned long )((struct seq_oss_synth *)0)) {
    goto ldv_32510;
  } else {
  }
  i = i + 1;
  ldv_32512: ;
  if (i < max_synth_devs) {
    goto ldv_32511;
  } else {
  }
  ldv_32510: ;
  if (i >= max_synth_devs) {
    if (max_synth_devs > 15) {
      {
      ldv_spin_unlock_irqrestore_98___0(& register_lock, flags);
      printk("\vALSA: seq_oss: no more synth slot\n");
      kfree((void const *)rec);
      }
      return (-12);
    } else {
    }
    max_synth_devs = max_synth_devs + 1;
  } else {
  }
  {
  rec->seq_device = i;
  synth_devs[i] = rec;
  ldv_spin_unlock_irqrestore_98___0(& register_lock, flags);
  dev->driver_data = (void *)rec;
  }
  if (i <= 31) {
    {
    snd_oss_info_register(1, i, (char *)(& rec->name));
    }
  } else {
  }
  return (0);
}
}
int snd_seq_oss_synth_unregister(struct snd_seq_device *dev )
{
  int index ;
  struct seq_oss_synth *rec ;
  unsigned long flags ;
  {
  {
  rec = (struct seq_oss_synth *)dev->driver_data;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(& register_lock);
  index = 0;
  }
  goto ldv_32521;
  ldv_32520: ;
  if ((unsigned long )synth_devs[index] == (unsigned long )rec) {
    goto ldv_32519;
  } else {
  }
  index = index + 1;
  ldv_32521: ;
  if (index < max_synth_devs) {
    goto ldv_32520;
  } else {
  }
  ldv_32519: ;
  if (index >= max_synth_devs) {
    {
    ldv_spin_unlock_irqrestore_98___0(& register_lock, flags);
    printk("\vALSA: seq_oss: can\'t unregister synth\n");
    }
    return (-22);
  } else {
  }
  synth_devs[index] = (struct seq_oss_synth *)0;
  if (index == max_synth_devs + -1) {
    index = index - 1;
    goto ldv_32524;
    ldv_32523: ;
    if ((unsigned long )synth_devs[index] != (unsigned long )((struct seq_oss_synth *)0)) {
      goto ldv_32522;
    } else {
    }
    index = index - 1;
    ldv_32524: ;
    if (index >= 0) {
      goto ldv_32523;
    } else {
    }
    ldv_32522:
    max_synth_devs = index + 1;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_98___0(& register_lock, flags);
  }
  if (rec->seq_device <= 31) {
    {
    snd_oss_info_register(1, rec->seq_device, (char *)0);
    }
  } else {
  }
  {
  snd_use_lock_sync_helper(& rec->use_lock, "sound/core/seq/oss/seq_oss_synth.c",
                           182);
  kfree((void const *)rec);
  }
  return (0);
}
}
static struct seq_oss_synth *get_sdev(int dev )
{
  struct seq_oss_synth *rec ;
  unsigned long flags ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103(& register_lock);
  rec = synth_devs[dev];
  }
  if ((unsigned long )rec != (unsigned long )((struct seq_oss_synth *)0)) {
    {
    atomic_inc(& rec->use_lock);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_98___0(& register_lock, flags);
  }
  return (rec);
}
}
void snd_seq_oss_synth_setup(struct seq_oss_devinfo *dp )
{
  int i ;
  struct seq_oss_synth *rec ;
  struct seq_oss_synthinfo *info ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  {
  {
  dp->max_synthdev = max_synth_devs;
  dp->synth_opened = 0;
  memset((void *)(& dp->synths), 0, 1024UL);
  i = 0;
  }
  goto ldv_32538;
  ldv_32537:
  {
  rec = get_sdev(i);
  }
  if ((unsigned long )rec == (unsigned long )((struct seq_oss_synth *)0)) {
    goto ldv_32536;
  } else {
  }
  if ((unsigned long )rec->oper.open == (unsigned long )((int (*)(struct snd_seq_oss_arg * ,
                                                                  void * ))0) || (unsigned long )rec->oper.close == (unsigned long )((int (*)(struct snd_seq_oss_arg * ))0)) {
    {
    atomic_dec(& rec->use_lock);
    }
    goto ldv_32536;
  } else {
  }
  info = (struct seq_oss_synthinfo *)(& dp->synths) + (unsigned long )i;
  info->arg.app_index = dp->port;
  info->arg.file_mode = dp->file_mode;
  info->arg.seq_mode = dp->seq_mode;
  if (dp->seq_mode == 0) {
    info->arg.event_passing = 0;
  } else {
    info->arg.event_passing = 1;
  }
  {
  info->opened = 0;
  tmp = ldv_try_module_get_105(rec->oper.owner);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    atomic_dec(& rec->use_lock);
    }
    goto ldv_32536;
  } else {
  }
  {
  tmp___1 = (*(rec->oper.open))(& info->arg, rec->private_data);
  }
  if (tmp___1 < 0) {
    {
    ldv_module_put_106(rec->oper.owner);
    atomic_dec(& rec->use_lock);
    }
    goto ldv_32536;
  } else {
  }
  info->nr_voices = rec->nr_voices;
  if (info->nr_voices > 0) {
    {
    tmp___2 = kcalloc((size_t )info->nr_voices, 8UL, 208U);
    info->ch = (struct seq_oss_chinfo *)tmp___2;
    }
    if ((unsigned long )info->ch == (unsigned long )((struct seq_oss_chinfo *)0)) {
      {
      printk("\vALSA: seq_oss: Cannot malloc voices\n");
      (*(rec->oper.close))(& info->arg);
      ldv_module_put_107(rec->oper.owner);
      atomic_dec(& rec->use_lock);
      }
      goto ldv_32536;
    } else {
    }
    {
    reset_channels(info);
    }
  } else {
  }
  {
  info->opened = info->opened + 1;
  rec->opened = rec->opened + 1;
  dp->synth_opened = dp->synth_opened + 1;
  atomic_dec(& rec->use_lock);
  }
  ldv_32536:
  i = i + 1;
  ldv_32538: ;
  if (i < dp->max_synthdev) {
    goto ldv_32537;
  } else {
  }
  return;
}
}
void snd_seq_oss_synth_setup_midi(struct seq_oss_devinfo *dp )
{
  int i ;
  struct seq_oss_synthinfo *info ;
  int tmp ;
  {
  if (dp->max_synthdev > 15) {
    return;
  } else {
  }
  i = 0;
  goto ldv_32548;
  ldv_32547:
  {
  info = (struct seq_oss_synthinfo *)(& dp->synths) + (unsigned long )dp->max_synthdev;
  tmp = snd_seq_oss_midi_open(dp, i, dp->file_mode);
  }
  if (tmp < 0) {
    goto ldv_32545;
  } else {
  }
  {
  info->arg.app_index = dp->port;
  info->arg.file_mode = dp->file_mode;
  info->arg.seq_mode = dp->seq_mode;
  info->arg.private_data = (void *)info;
  info->is_midi = 1;
  info->midi_mapped = i;
  info->arg.event_passing = 1;
  snd_seq_oss_midi_get_addr(dp, i, & info->arg.addr);
  info->opened = 1;
  midi_synth_dev.opened = midi_synth_dev.opened + 1;
  dp->max_synthdev = dp->max_synthdev + 1;
  }
  if (dp->max_synthdev > 15) {
    goto ldv_32546;
  } else {
  }
  ldv_32545:
  i = i + 1;
  ldv_32548: ;
  if (i < dp->max_mididev) {
    goto ldv_32547;
  } else {
  }
  ldv_32546: ;
  return;
}
}
void snd_seq_oss_synth_cleanup(struct seq_oss_devinfo *dp )
{
  int i ;
  struct seq_oss_synth *rec ;
  struct seq_oss_synthinfo *info ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  {
  __ret_warn_on = dp->max_synthdev > 15;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("sound/core/seq/oss/seq_oss_synth.c", 311);
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
  i = 0;
  goto ldv_32559;
  ldv_32558:
  info = (struct seq_oss_synthinfo *)(& dp->synths) + (unsigned long )i;
  if (info->opened == 0) {
    goto ldv_32557;
  } else {
  }
  if (info->is_midi != 0) {
    if (midi_synth_dev.opened > 0) {
      {
      snd_seq_oss_midi_close(dp, info->midi_mapped);
      midi_synth_dev.opened = midi_synth_dev.opened - 1;
      }
    } else {
    }
  } else {
    {
    rec = get_sdev(i);
    }
    if ((unsigned long )rec == (unsigned long )((struct seq_oss_synth *)0)) {
      goto ldv_32557;
    } else {
    }
    if (rec->opened > 0) {
      {
      (*(rec->oper.close))(& info->arg);
      ldv_module_put_108(rec->oper.owner);
      rec->opened = 0;
      }
    } else {
    }
    {
    atomic_dec(& rec->use_lock);
    }
  }
  {
  kfree((void const *)info->sysex);
  info->sysex = (struct seq_oss_synth_sysex *)0;
  kfree((void const *)info->ch);
  info->ch = (struct seq_oss_chinfo *)0;
  }
  ldv_32557:
  i = i + 1;
  ldv_32559: ;
  if (i < dp->max_synthdev) {
    goto ldv_32558;
  } else {
  }
  dp->synth_opened = 0;
  dp->max_synthdev = 0;
  return;
}
}
static int is_midi_dev(struct seq_oss_devinfo *dp , int dev )
{
  {
  if (dev < 0 || dev >= dp->max_synthdev) {
    return (0);
  } else {
  }
  if (dp->synths[dev].is_midi != 0) {
    return (1);
  } else {
  }
  return (0);
}
}
static struct seq_oss_synth *get_synthdev(struct seq_oss_devinfo *dp , int dev )
{
  struct seq_oss_synth *rec ;
  {
  if (dev < 0 || dev >= dp->max_synthdev) {
    return ((struct seq_oss_synth *)0);
  } else {
  }
  if (dp->synths[dev].opened == 0) {
    return ((struct seq_oss_synth *)0);
  } else {
  }
  if (dp->synths[dev].is_midi != 0) {
    return (& midi_synth_dev);
  } else {
  }
  {
  rec = get_sdev(dev);
  }
  if ((unsigned long )rec == (unsigned long )((struct seq_oss_synth *)0)) {
    return ((struct seq_oss_synth *)0);
  } else {
  }
  if (rec->opened == 0) {
    {
    atomic_dec(& rec->use_lock);
    }
    return ((struct seq_oss_synth *)0);
  } else {
  }
  return (rec);
}
}
static void reset_channels(struct seq_oss_synthinfo *info )
{
  int i ;
  {
  if ((unsigned long )info->ch == (unsigned long )((struct seq_oss_chinfo *)0) || info->nr_voices == 0) {
    return;
  } else {
  }
  i = 0;
  goto ldv_32575;
  ldv_32574:
  (info->ch + (unsigned long )i)->note = -1;
  (info->ch + (unsigned long )i)->vel = 0;
  i = i + 1;
  ldv_32575: ;
  if (i < info->nr_voices) {
    goto ldv_32574;
  } else {
  }
  return;
}
}
void snd_seq_oss_synth_reset(struct seq_oss_devinfo *dp , int dev )
{
  struct seq_oss_synth *rec ;
  struct seq_oss_synthinfo *info ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  struct snd_seq_event ev ;
  {
  {
  __ret_warn_on = dev < 0 || dev >= dp->max_synthdev;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("sound/core/seq/oss/seq_oss_synth.c", 405);
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
  info = (struct seq_oss_synthinfo *)(& dp->synths) + (unsigned long )dev;
  if (info->opened == 0) {
    return;
  } else {
  }
  if ((unsigned long )info->sysex != (unsigned long )((struct seq_oss_synth_sysex *)0)) {
    (info->sysex)->len = 0;
  } else {
  }
  {
  reset_channels(info);
  }
  if (info->is_midi != 0) {
    if (midi_synth_dev.opened <= 0) {
      return;
    } else {
    }
    {
    snd_seq_oss_midi_reset(dp, info->midi_mapped);
    snd_seq_oss_midi_close(dp, dev);
    tmp___1 = snd_seq_oss_midi_open(dp, info->midi_mapped, dp->file_mode);
    }
    if (tmp___1 < 0) {
      {
      midi_synth_dev.opened = midi_synth_dev.opened - 1;
      info->opened = 0;
      kfree((void const *)info->sysex);
      info->sysex = (struct seq_oss_synth_sysex *)0;
      kfree((void const *)info->ch);
      info->ch = (struct seq_oss_chinfo *)0;
      }
    } else {
    }
    return;
  } else {
  }
  {
  rec = get_sdev(dev);
  }
  if ((unsigned long )rec == (unsigned long )((struct seq_oss_synth *)0)) {
    return;
  } else {
  }
  if ((unsigned long )rec->oper.reset != (unsigned long )((int (*)(struct snd_seq_oss_arg * ))0)) {
    {
    (*(rec->oper.reset))(& info->arg);
    }
  } else {
    {
    memset((void *)(& ev), 0, 28UL);
    snd_seq_oss_fill_addr(dp, & ev, (int )info->arg.addr.client, (int )info->arg.addr.port);
    ev.type = 41U;
    snd_seq_oss_dispatch(dp, & ev, 0, 0);
    }
  }
  {
  atomic_dec(& rec->use_lock);
  }
  return;
}
}
int snd_seq_oss_synth_load_patch(struct seq_oss_devinfo *dp , int dev , int fmt ,
                                 char const *buf , int p , int c )
{
  struct seq_oss_synth *rec ;
  int rc ;
  int tmp ;
  {
  if (dev < 0 || dev >= dp->max_synthdev) {
    return (-6);
  } else {
  }
  {
  tmp = is_midi_dev(dp, dev);
  }
  if (tmp != 0) {
    return (0);
  } else {
  }
  {
  rec = get_synthdev(dp, dev);
  }
  if ((unsigned long )rec == (unsigned long )((struct seq_oss_synth *)0)) {
    return (-6);
  } else {
  }
  if ((unsigned long )rec->oper.load_patch == (unsigned long )((int (*)(struct snd_seq_oss_arg * ,
                                                                        int , char const * ,
                                                                        int , int ))0)) {
    rc = -6;
  } else {
    {
    rc = (*(rec->oper.load_patch))(& dp->synths[dev].arg, fmt, buf, p, c);
    }
  }
  {
  atomic_dec(& rec->use_lock);
  }
  return (rc);
}
}
int snd_seq_oss_synth_is_valid(struct seq_oss_devinfo *dp , int dev )
{
  struct seq_oss_synth *rec ;
  {
  {
  rec = get_synthdev(dp, dev);
  }
  if ((unsigned long )rec != (unsigned long )((struct seq_oss_synth *)0)) {
    {
    atomic_dec(& rec->use_lock);
    }
    return (1);
  } else {
  }
  return (0);
}
}
int snd_seq_oss_synth_sysex(struct seq_oss_devinfo *dp , int dev , unsigned char *buf ,
                            struct snd_seq_event *ev )
{
  int i ;
  int send ;
  unsigned char *dest ;
  struct seq_oss_synth_sysex *sysex ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = snd_seq_oss_synth_is_valid(dp, dev);
  }
  if (tmp == 0) {
    return (-6);
  } else {
  }
  sysex = dp->synths[dev].sysex;
  if ((unsigned long )sysex == (unsigned long )((struct seq_oss_synth_sysex *)0)) {
    {
    tmp___0 = kzalloc(136UL, 208U);
    sysex = (struct seq_oss_synth_sysex *)tmp___0;
    }
    if ((unsigned long )sysex == (unsigned long )((struct seq_oss_synth_sysex *)0)) {
      return (-12);
    } else {
    }
    dp->synths[dev].sysex = sysex;
  } else {
  }
  send = 0;
  dest = (unsigned char *)(& sysex->buf) + (unsigned long )sysex->len;
  i = 0;
  goto ldv_32613;
  ldv_32612: ;
  if ((unsigned int )*(buf + (unsigned long )i) == 255U) {
    send = 1;
    goto ldv_32611;
  } else {
  }
  *(dest + (unsigned long )i) = *(buf + (unsigned long )i);
  sysex->len = sysex->len + 1;
  if (sysex->len > 127) {
    sysex->len = 0;
    sysex->skip = 1;
    goto ldv_32611;
  } else {
  }
  i = i + 1;
  ldv_32613: ;
  if (i <= 5) {
    goto ldv_32612;
  } else {
  }
  ldv_32611: ;
  if (sysex->len != 0 && send != 0) {
    if (sysex->skip != 0) {
      sysex->skip = 0;
      sysex->len = 0;
      return (-22);
    } else {
    }
    {
    ev->flags = 4U;
    tmp___1 = snd_seq_oss_synth_addr(dp, dev, ev);
    }
    if (tmp___1 != 0) {
      return (-22);
    } else {
    }
    ev->data.ext.len = (unsigned int )sysex->len;
    ev->data.ext.ptr = (void *)(& sysex->buf);
    sysex->len = 0;
    return (0);
  } else {
  }
  return (-22);
}
}
int snd_seq_oss_synth_addr(struct seq_oss_devinfo *dp , int dev , struct snd_seq_event *ev )
{
  int tmp ;
  {
  {
  tmp = snd_seq_oss_synth_is_valid(dp, dev);
  }
  if (tmp == 0) {
    return (-22);
  } else {
  }
  {
  snd_seq_oss_fill_addr(dp, ev, (int )dp->synths[dev].arg.addr.client, (int )dp->synths[dev].arg.addr.port);
  }
  return (0);
}
}
int snd_seq_oss_synth_ioctl(struct seq_oss_devinfo *dp , int dev , unsigned int cmd ,
                            unsigned long addr )
{
  struct seq_oss_synth *rec ;
  int rc ;
  int tmp ;
  {
  {
  tmp = is_midi_dev(dp, dev);
  }
  if (tmp != 0) {
    return (-6);
  } else {
  }
  {
  rec = get_synthdev(dp, dev);
  }
  if ((unsigned long )rec == (unsigned long )((struct seq_oss_synth *)0)) {
    return (-6);
  } else {
  }
  if ((unsigned long )rec->oper.ioctl == (unsigned long )((int (*)(struct snd_seq_oss_arg * ,
                                                                   unsigned int ,
                                                                   unsigned long ))0)) {
    rc = -6;
  } else {
    {
    rc = (*(rec->oper.ioctl))(& dp->synths[dev].arg, cmd, addr);
    }
  }
  {
  atomic_dec(& rec->use_lock);
  }
  return (rc);
}
}
int snd_seq_oss_synth_raw_event(struct seq_oss_devinfo *dp , int dev , unsigned char *data ,
                                struct snd_seq_event *ev )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = snd_seq_oss_synth_is_valid(dp, dev);
  }
  if (tmp == 0) {
    return (-6);
  } else {
    {
    tmp___0 = is_midi_dev(dp, dev);
    }
    if (tmp___0 != 0) {
      return (-6);
    } else {
    }
  }
  {
  ev->type = 51U;
  memcpy((void *)(& ev->data.raw8.d), (void const *)data, 8UL);
  tmp___1 = snd_seq_oss_synth_addr(dp, dev, ev);
  }
  return (tmp___1);
}
}
int snd_seq_oss_synth_make_info(struct seq_oss_devinfo *dp , int dev , struct synth_info *inf )
{
  struct seq_oss_synth *rec ;
  struct midi_info minf ;
  {
  if (dev < 0 || dev >= dp->max_synthdev) {
    return (-6);
  } else {
  }
  if (dp->synths[dev].is_midi != 0) {
    {
    snd_seq_oss_midi_make_info(dp, dp->synths[dev].midi_mapped, & minf);
    inf->synth_type = 2;
    inf->synth_subtype = 0;
    inf->nr_voices = 16;
    inf->device = dev;
    strlcpy((char *)(& inf->name), (char const *)(& minf.name), 30UL);
    }
  } else {
    {
    rec = get_synthdev(dp, dev);
    }
    if ((unsigned long )rec == (unsigned long )((struct seq_oss_synth *)0)) {
      return (-6);
    } else {
    }
    {
    inf->synth_type = rec->synth_type;
    inf->synth_subtype = rec->synth_subtype;
    inf->nr_voices = rec->nr_voices;
    inf->device = dev;
    strlcpy((char *)(& inf->name), (char const *)(& rec->name), 30UL);
    atomic_dec(& rec->use_lock);
    }
  }
  return (0);
}
}
void snd_seq_oss_synth_info_read(struct snd_info_buffer *buf )
{
  int i ;
  struct seq_oss_synth *rec ;
  char *tmp ;
  char *tmp___0 ;
  {
  {
  snd_iprintf(buf, "\nNumber of synth devices: %d\n", max_synth_devs);
  i = 0;
  }
  goto ldv_32647;
  ldv_32646:
  {
  snd_iprintf(buf, "\nsynth %d: ", i);
  rec = get_sdev(i);
  }
  if ((unsigned long )rec == (unsigned long )((struct seq_oss_synth *)0)) {
    {
    snd_iprintf(buf, "*empty*\n");
    }
    goto ldv_32645;
  } else {
  }
  {
  snd_iprintf(buf, "[%s]\n", (char *)(& rec->name));
  snd_iprintf(buf, "  type 0x%x : subtype 0x%x : voices %d\n", rec->synth_type, rec->synth_subtype,
              rec->nr_voices);
  tmp = enabled_str((int )((long )rec->oper.load_patch));
  tmp___0 = enabled_str((int )((long )rec->oper.ioctl));
  snd_iprintf(buf, "  capabilities : ioctl %s / load_patch %s\n", tmp___0, tmp);
  atomic_dec(& rec->use_lock);
  }
  ldv_32645:
  i = i + 1;
  ldv_32647: ;
  if (i < max_synth_devs) {
    goto ldv_32646;
  } else {
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
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_register_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_register_lock();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_register_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_register_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static bool ldv_try_module_get_105(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_module_try_module_get(ldv_func_arg1);
  }
  return (tmp != 0);
}
}
static void ldv_module_put_106(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_107(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_108(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
__inline static void atomic_inc(atomic_t *v ) ;
__inline static void atomic_dec(atomic_t *v ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97___1(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_107(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_109(spinlock_t *ldv_func_arg1 ) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
int snd_seq_oss_readq_puts(struct seq_oss_readq *q , int dev , unsigned char *data ,
                           int len ) ;
int snd_seq_oss_readq_put_timestamp(struct seq_oss_readq *q , unsigned long curt ,
                                    int seq_mode ) ;
extern int snd_midi_event_new(int , struct snd_midi_event ** ) ;
extern void snd_midi_event_free(struct snd_midi_event * ) ;
extern void snd_midi_event_no_status(struct snd_midi_event * , int ) ;
extern int snd_midi_event_encode_byte(struct snd_midi_event * , int , struct snd_seq_event * ) ;
extern long snd_midi_event_decode(struct snd_midi_event * , unsigned char * , long ,
                                  struct snd_seq_event * ) ;
static int max_midi_devs ;
static struct seq_oss_midi *midi_devs[32U] ;
static spinlock_t register_lock___0 = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "register_lock", 0,
                                                     0UL}}}};
static struct seq_oss_midi *get_mdev(int dev ) ;
static struct seq_oss_midi *get_mididev(struct seq_oss_devinfo *dp , int dev ) ;
static int send_synth_event(struct seq_oss_devinfo *dp , struct snd_seq_event *ev ,
                            int dev ) ;
static int send_midi_event(struct seq_oss_devinfo *dp , struct snd_seq_event *ev ,
                           struct seq_oss_midi *mdev ) ;
int snd_seq_oss_midi_lookup_ports(int client )
{
  struct snd_seq_client_info *clinfo ;
  struct snd_seq_port_info *pinfo ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = kzalloc(188UL, 208U);
  clinfo = (struct snd_seq_client_info *)tmp;
  tmp___0 = kzalloc(168UL, 208U);
  pinfo = (struct snd_seq_port_info *)tmp___0;
  }
  if ((unsigned long )clinfo == (unsigned long )((struct snd_seq_client_info *)0) || (unsigned long )pinfo == (unsigned long )((struct snd_seq_port_info *)0)) {
    {
    kfree((void const *)clinfo);
    kfree((void const *)pinfo);
    }
    return (-12);
  } else {
  }
  clinfo->client = -1;
  goto ldv_31878;
  ldv_31882: ;
  if (clinfo->client == client) {
    goto ldv_31878;
  } else {
  }
  pinfo->addr.client = (unsigned char )clinfo->client;
  pinfo->addr.port = 255U;
  goto ldv_31880;
  ldv_31879:
  {
  snd_seq_oss_midi_check_new_port(pinfo);
  }
  ldv_31880:
  {
  tmp___1 = snd_seq_kernel_client_ctl(client, 3232256850U, (void *)pinfo);
  }
  if (tmp___1 == 0) {
    goto ldv_31879;
  } else {
  }
  ldv_31878:
  {
  tmp___2 = snd_seq_kernel_client_ctl(client, 3233567569U, (void *)clinfo);
  }
  if (tmp___2 == 0) {
    goto ldv_31882;
  } else {
  }
  {
  kfree((void const *)clinfo);
  kfree((void const *)pinfo);
  }
  return (0);
}
}
static struct seq_oss_midi *get_mdev(int dev )
{
  struct seq_oss_midi *mdev ;
  unsigned long flags ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97___1(& register_lock___0);
  mdev = midi_devs[dev];
  }
  if ((unsigned long )mdev != (unsigned long )((struct seq_oss_midi *)0)) {
    {
    atomic_inc(& mdev->use_lock);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_98___0(& register_lock___0, flags);
  }
  return (mdev);
}
}
static struct seq_oss_midi *find_slot(int client , int port )
{
  int i ;
  struct seq_oss_midi *mdev ;
  unsigned long flags ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99___0(& register_lock___0);
  i = 0;
  }
  goto ldv_31897;
  ldv_31896:
  mdev = midi_devs[i];
  if (((unsigned long )mdev != (unsigned long )((struct seq_oss_midi *)0) && mdev->client == client) && mdev->port == port) {
    {
    atomic_inc(& mdev->use_lock);
    ldv_spin_unlock_irqrestore_98___0(& register_lock___0, flags);
    }
    return (mdev);
  } else {
  }
  i = i + 1;
  ldv_31897: ;
  if (i < max_midi_devs) {
    goto ldv_31896;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_98___0(& register_lock___0, flags);
  }
  return ((struct seq_oss_midi *)0);
}
}
int snd_seq_oss_midi_check_new_port(struct snd_seq_port_info *pinfo )
{
  int i ;
  struct seq_oss_midi *mdev ;
  unsigned long flags ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((pinfo->type & 2U) == 0U) {
    return (0);
  } else {
  }
  if ((pinfo->capability & 66U) != 66U && (pinfo->capability & 33U) != 33U) {
    return (0);
  } else {
  }
  {
  mdev = find_slot((int )pinfo->addr.client, (int )pinfo->addr.port);
  }
  if ((unsigned long )mdev != (unsigned long )((struct seq_oss_midi *)0)) {
    {
    atomic_dec(& mdev->use_lock);
    }
    return (0);
  } else {
  }
  {
  tmp = kzalloc(80UL, 208U);
  mdev = (struct seq_oss_midi *)tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct seq_oss_midi *)0)) {
    {
    printk("\vALSA: seq_oss: can\'t malloc midi info\n");
    }
    return (-12);
  } else {
  }
  {
  mdev->client = (int )pinfo->addr.client;
  mdev->port = (int )pinfo->addr.port;
  mdev->flags = pinfo->capability;
  mdev->opened = 0;
  atomic_set(& mdev->use_lock, 0);
  strlcpy((char *)(& mdev->name), (char const *)(& pinfo->name), 30UL);
  tmp___0 = snd_midi_event_new(256, & mdev->coder);
  }
  if (tmp___0 < 0) {
    {
    printk("\vALSA: seq_oss: can\'t malloc midi coder\n");
    kfree((void const *)mdev);
    }
    return (-12);
  } else {
  }
  {
  snd_midi_event_no_status(mdev->coder, 1);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(& register_lock___0);
  i = 0;
  }
  goto ldv_31907;
  ldv_31906: ;
  if ((unsigned long )midi_devs[i] == (unsigned long )((struct seq_oss_midi *)0)) {
    goto ldv_31905;
  } else {
  }
  i = i + 1;
  ldv_31907: ;
  if (i < max_midi_devs) {
    goto ldv_31906;
  } else {
  }
  ldv_31905: ;
  if (i >= max_midi_devs) {
    if (max_midi_devs > 31) {
      {
      ldv_spin_unlock_irqrestore_98___0(& register_lock___0, flags);
      snd_midi_event_free(mdev->coder);
      kfree((void const *)mdev);
      }
      return (-12);
    } else {
    }
    max_midi_devs = max_midi_devs + 1;
  } else {
  }
  {
  mdev->seq_device = i;
  midi_devs[mdev->seq_device] = mdev;
  ldv_spin_unlock_irqrestore_98___0(& register_lock___0, flags);
  }
  return (0);
}
}
int snd_seq_oss_midi_check_exit_port(int client , int port )
{
  struct seq_oss_midi *mdev ;
  unsigned long flags ;
  int index ;
  {
  {
  mdev = find_slot(client, port);
  }
  if ((unsigned long )mdev != (unsigned long )((struct seq_oss_midi *)0)) {
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105(& register_lock___0);
    midi_devs[mdev->seq_device] = (struct seq_oss_midi *)0;
    ldv_spin_unlock_irqrestore_98___0(& register_lock___0, flags);
    atomic_dec(& mdev->use_lock);
    snd_use_lock_sync_helper(& mdev->use_lock, "sound/core/seq/oss/seq_oss_midi.c",
                             239);
    snd_midi_event_free(mdev->coder);
    kfree((void const *)mdev);
    }
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_107(& register_lock___0);
  index = max_midi_devs + -1;
  }
  goto ldv_31917;
  ldv_31916: ;
  if ((unsigned long )midi_devs[index] != (unsigned long )((struct seq_oss_midi *)0)) {
    goto ldv_31915;
  } else {
  }
  index = index - 1;
  ldv_31917: ;
  if (index >= 0) {
    goto ldv_31916;
  } else {
  }
  ldv_31915:
  {
  max_midi_devs = index + 1;
  ldv_spin_unlock_irqrestore_98___0(& register_lock___0, flags);
  }
  return (0);
}
}
void snd_seq_oss_midi_clear_all(void)
{
  int i ;
  struct seq_oss_midi *mdev ;
  unsigned long flags ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_109(& register_lock___0);
  i = 0;
  }
  goto ldv_31925;
  ldv_31924:
  mdev = midi_devs[i];
  if ((unsigned long )mdev != (unsigned long )((struct seq_oss_midi *)0)) {
    {
    snd_midi_event_free(mdev->coder);
    kfree((void const *)mdev);
    midi_devs[i] = (struct seq_oss_midi *)0;
    }
  } else {
  }
  i = i + 1;
  ldv_31925: ;
  if (i < max_midi_devs) {
    goto ldv_31924;
  } else {
  }
  {
  max_midi_devs = 0;
  ldv_spin_unlock_irqrestore_98___0(& register_lock___0, flags);
  }
  return;
}
}
void snd_seq_oss_midi_setup(struct seq_oss_devinfo *dp )
{
  {
  dp->max_mididev = max_midi_devs;
  return;
}
}
void snd_seq_oss_midi_cleanup(struct seq_oss_devinfo *dp )
{
  int i ;
  {
  i = 0;
  goto ldv_31935;
  ldv_31934:
  {
  snd_seq_oss_midi_close(dp, i);
  i = i + 1;
  }
  ldv_31935: ;
  if (i < dp->max_mididev) {
    goto ldv_31934;
  } else {
  }
  dp->max_mididev = 0;
  return;
}
}
void snd_seq_oss_midi_open_all(struct seq_oss_devinfo *dp , int file_mode )
{
  int i ;
  {
  i = 0;
  goto ldv_31943;
  ldv_31942:
  {
  snd_seq_oss_midi_open(dp, i, file_mode);
  i = i + 1;
  }
  ldv_31943: ;
  if (i < dp->max_mididev) {
    goto ldv_31942;
  } else {
  }
  return;
}
}
static struct seq_oss_midi *get_mididev(struct seq_oss_devinfo *dp , int dev )
{
  struct seq_oss_midi *tmp ;
  {
  if (dev < 0 || dev >= dp->max_mididev) {
    return ((struct seq_oss_midi *)0);
  } else {
  }
  {
  tmp = get_mdev(dev);
  }
  return (tmp);
}
}
int snd_seq_oss_midi_open(struct seq_oss_devinfo *dp , int dev , int fmode )
{
  int perm ;
  struct seq_oss_midi *mdev ;
  struct snd_seq_port_subscribe subs ;
  int tmp ;
  int tmp___0 ;
  {
  {
  mdev = get_mididev(dp, dev);
  }
  if ((unsigned long )mdev == (unsigned long )((struct seq_oss_midi *)0)) {
    return (-19);
  } else {
  }
  if (mdev->opened != 0 && (unsigned long )mdev->devinfo != (unsigned long )dp) {
    {
    atomic_dec(& mdev->use_lock);
    }
    return (-16);
  } else {
  }
  perm = 0;
  if ((fmode & 2) != 0) {
    perm = perm | 66;
  } else {
  }
  if (fmode & 1) {
    perm = perm | 33;
  } else {
  }
  perm = (int )((unsigned int )perm & mdev->flags);
  if (perm == 0) {
    {
    atomic_dec(& mdev->use_lock);
    }
    return (-6);
  } else {
  }
  if ((mdev->opened & perm) == perm) {
    {
    atomic_dec(& mdev->use_lock);
    }
    return (0);
  } else {
  }
  {
  perm = perm & ~ mdev->opened;
  memset((void *)(& subs), 0, 80UL);
  }
  if ((perm & 66) != 0) {
    {
    subs.sender = dp->addr;
    subs.dest.client = (unsigned char )mdev->client;
    subs.dest.port = (unsigned char )mdev->port;
    tmp = snd_seq_kernel_client_ctl(dp->cseq, 1079006000U, (void *)(& subs));
    }
    if (tmp >= 0) {
      mdev->opened = mdev->opened | 66;
    } else {
    }
  } else {
  }
  if ((perm & 33) != 0) {
    {
    subs.sender.client = (unsigned char )mdev->client;
    subs.sender.port = (unsigned char )mdev->port;
    subs.dest = dp->addr;
    subs.flags = 2U;
    subs.queue = (unsigned char )dp->queue;
    tmp___0 = snd_seq_kernel_client_ctl(dp->cseq, 1079006000U, (void *)(& subs));
    }
    if (tmp___0 >= 0) {
      mdev->opened = mdev->opened | 33;
    } else {
    }
  } else {
  }
  if (mdev->opened == 0) {
    {
    atomic_dec(& mdev->use_lock);
    }
    return (-6);
  } else {
  }
  {
  mdev->devinfo = dp;
  atomic_dec(& mdev->use_lock);
  }
  return (0);
}
}
int snd_seq_oss_midi_close(struct seq_oss_devinfo *dp , int dev )
{
  struct seq_oss_midi *mdev ;
  struct snd_seq_port_subscribe subs ;
  {
  {
  mdev = get_mididev(dp, dev);
  }
  if ((unsigned long )mdev == (unsigned long )((struct seq_oss_midi *)0)) {
    return (-19);
  } else {
  }
  if (mdev->opened == 0 || (unsigned long )mdev->devinfo != (unsigned long )dp) {
    {
    atomic_dec(& mdev->use_lock);
    }
    return (0);
  } else {
  }
  {
  memset((void *)(& subs), 0, 80UL);
  }
  if ((mdev->opened & 66) != 0) {
    {
    subs.sender = dp->addr;
    subs.dest.client = (unsigned char )mdev->client;
    subs.dest.port = (unsigned char )mdev->port;
    snd_seq_kernel_client_ctl(dp->cseq, 1079006001U, (void *)(& subs));
    }
  } else {
  }
  if ((mdev->opened & 33) != 0) {
    {
    subs.sender.client = (unsigned char )mdev->client;
    subs.sender.port = (unsigned char )mdev->port;
    subs.dest = dp->addr;
    snd_seq_kernel_client_ctl(dp->cseq, 1079006001U, (void *)(& subs));
    }
  } else {
  }
  {
  mdev->opened = 0;
  mdev->devinfo = (struct seq_oss_devinfo *)0;
  atomic_dec(& mdev->use_lock);
  }
  return (0);
}
}
int snd_seq_oss_midi_filemode(struct seq_oss_devinfo *dp , int dev )
{
  struct seq_oss_midi *mdev ;
  int mode ;
  {
  {
  mdev = get_mididev(dp, dev);
  }
  if ((unsigned long )mdev == (unsigned long )((struct seq_oss_midi *)0)) {
    return (0);
  } else {
  }
  mode = 0;
  if ((mdev->opened & 66) != 0) {
    mode = mode | 2;
  } else {
  }
  if ((mdev->opened & 33) != 0) {
    mode = mode | 1;
  } else {
  }
  {
  atomic_dec(& mdev->use_lock);
  }
  return (mode);
}
}
void snd_seq_oss_midi_reset(struct seq_oss_devinfo *dp , int dev )
{
  struct seq_oss_midi *mdev ;
  struct snd_seq_event ev ;
  int c ;
  {
  {
  mdev = get_mididev(dp, dev);
  }
  if ((unsigned long )mdev == (unsigned long )((struct seq_oss_midi *)0)) {
    return;
  } else {
  }
  if (mdev->opened == 0) {
    {
    atomic_dec(& mdev->use_lock);
    }
    return;
  } else {
  }
  if ((mdev->opened & 66) != 0) {
    {
    memset((void *)(& ev), 0, 28UL);
    ev.dest.client = (unsigned char )mdev->client;
    ev.dest.port = (unsigned char )mdev->port;
    ev.queue = (unsigned char )dp->queue;
    ev.source.port = (unsigned char )dp->port;
    }
    if (dp->seq_mode == 0) {
      {
      ev.type = 42U;
      snd_seq_oss_dispatch(dp, & ev, 0, 0);
      }
    } else {
    }
    c = 0;
    goto ldv_31977;
    ldv_31976:
    {
    ev.type = 10U;
    ev.data.control.channel = (unsigned char )c;
    ev.data.control.param = 123U;
    snd_seq_oss_dispatch(dp, & ev, 0, 0);
    }
    if (dp->seq_mode == 1) {
      {
      ev.data.control.param = 121U;
      snd_seq_oss_dispatch(dp, & ev, 0, 0);
      ev.type = 13U;
      ev.data.control.value = 0;
      snd_seq_oss_dispatch(dp, & ev, 0, 0);
      }
    } else {
    }
    c = c + 1;
    ldv_31977: ;
    if (c <= 15) {
      goto ldv_31976;
    } else {
    }
  } else {
  }
  {
  atomic_dec(& mdev->use_lock);
  }
  return;
}
}
void snd_seq_oss_midi_get_addr(struct seq_oss_devinfo *dp , int dev , struct snd_seq_addr *addr )
{
  struct seq_oss_midi *mdev ;
  {
  {
  mdev = get_mididev(dp, dev);
  }
  if ((unsigned long )mdev == (unsigned long )((struct seq_oss_midi *)0)) {
    return;
  } else {
  }
  {
  addr->client = (unsigned char )mdev->client;
  addr->port = (unsigned char )mdev->port;
  atomic_dec(& mdev->use_lock);
  }
  return;
}
}
int snd_seq_oss_midi_input(struct snd_seq_event *ev , int direct , void *private_data )
{
  struct seq_oss_devinfo *dp ;
  struct seq_oss_midi *mdev ;
  int rc ;
  {
  dp = (struct seq_oss_devinfo *)private_data;
  if ((unsigned long )dp->readq == (unsigned long )((struct seq_oss_readq *)0)) {
    return (0);
  } else {
  }
  {
  mdev = find_slot((int )ev->source.client, (int )ev->source.port);
  }
  if ((unsigned long )mdev == (unsigned long )((struct seq_oss_midi *)0)) {
    return (0);
  } else {
  }
  if ((mdev->opened & 33) == 0) {
    {
    atomic_dec(& mdev->use_lock);
    }
    return (0);
  } else {
  }
  if (dp->seq_mode == 1) {
    {
    rc = send_synth_event(dp, ev, mdev->seq_device);
    }
  } else {
    {
    rc = send_midi_event(dp, ev, mdev);
    }
  }
  {
  atomic_dec(& mdev->use_lock);
  }
  return (rc);
}
}
static int send_synth_event(struct seq_oss_devinfo *dp , struct snd_seq_event *ev ,
                            int dev )
{
  union evrec ossev ;
  {
  {
  memset((void *)(& ossev), 0, 8UL);
  }
  {
  if ((int )ev->type == 6) {
    goto case_6;
  } else {
  }
  if ((int )ev->type == 7) {
    goto case_7;
  } else {
  }
  if ((int )ev->type == 8) {
    goto case_8;
  } else {
  }
  if ((int )ev->type == 10) {
    goto case_10;
  } else {
  }
  if ((int )ev->type == 11) {
    goto case_11;
  } else {
  }
  if ((int )ev->type == 12) {
    goto case_12;
  } else {
  }
  if ((int )ev->type == 13) {
    goto case_13;
  } else {
  }
  goto switch_default;
  case_6:
  ossev.v.cmd = 144U;
  goto ldv_32000;
  case_7:
  ossev.v.cmd = 128U;
  goto ldv_32000;
  case_8:
  ossev.v.cmd = 160U;
  goto ldv_32000;
  case_10:
  ossev.l.cmd = 176U;
  goto ldv_32000;
  case_11:
  ossev.l.cmd = 192U;
  goto ldv_32000;
  case_12:
  ossev.l.cmd = 208U;
  goto ldv_32000;
  case_13:
  ossev.l.cmd = 224U;
  goto ldv_32000;
  switch_default: ;
  return (0);
  switch_break: ;
  }
  ldv_32000:
  ossev.v.dev = (unsigned char )dev;
  {
  if ((int )ev->type == 6) {
    goto case_6___0;
  } else {
  }
  if ((int )ev->type == 7) {
    goto case_7___0;
  } else {
  }
  if ((int )ev->type == 8) {
    goto case_8___0;
  } else {
  }
  if ((int )ev->type == 10) {
    goto case_10___0;
  } else {
  }
  if ((int )ev->type == 11) {
    goto case_11___0;
  } else {
  }
  if ((int )ev->type == 12) {
    goto case_12___0;
  } else {
  }
  if ((int )ev->type == 13) {
    goto case_13___0;
  } else {
  }
  goto switch_break___0;
  case_6___0: ;
  case_7___0: ;
  case_8___0:
  ossev.v.code = 147U;
  ossev.v.note = ev->data.note.note;
  ossev.v.parm = ev->data.note.velocity;
  ossev.v.chn = ev->data.note.channel;
  goto ldv_32011;
  case_10___0: ;
  case_11___0: ;
  case_12___0:
  ossev.l.code = 146U;
  ossev.l.p1 = (unsigned char )ev->data.control.param;
  ossev.l.val = (unsigned short )ev->data.control.value;
  ossev.l.chn = ev->data.control.channel;
  goto ldv_32011;
  case_13___0:
  ossev.l.code = 146U;
  ossev.l.val = (unsigned int )((unsigned short )ev->data.control.value) + 8192U;
  ossev.l.chn = ev->data.control.channel;
  goto ldv_32011;
  switch_break___0: ;
  }
  ldv_32011:
  {
  snd_seq_oss_readq_put_timestamp(dp->readq, (unsigned long )ev->time.tick, dp->seq_mode);
  snd_seq_oss_readq_put_event(dp->readq, & ossev);
  }
  return (0);
}
}
static int send_midi_event(struct seq_oss_devinfo *dp , struct snd_seq_event *ev ,
                           struct seq_oss_midi *mdev )
{
  char msg[32U] ;
  int len ;
  long tmp ;
  {
  {
  snd_seq_oss_readq_put_timestamp(dp->readq, (unsigned long )ev->time.tick, dp->seq_mode);
  }
  if ((dp->timer)->running == 0) {
    {
    len = snd_seq_oss_timer_start(dp->timer);
    }
  } else {
  }
  if ((unsigned int )ev->type == 130U) {
    if (((int )ev->flags & 12) == 4) {
      {
      snd_seq_oss_readq_puts(dp->readq, mdev->seq_device, (unsigned char *)ev->data.ext.ptr,
                             (int )ev->data.ext.len);
      }
    } else {
    }
  } else {
    {
    tmp = snd_midi_event_decode(mdev->coder, (unsigned char *)(& msg), 32L, ev);
    len = (int )tmp;
    }
    if (len > 0) {
      {
      snd_seq_oss_readq_puts(dp->readq, mdev->seq_device, (unsigned char *)(& msg),
                             len);
      }
    } else {
    }
  }
  return (0);
}
}
int snd_seq_oss_midi_putc(struct seq_oss_devinfo *dp , int dev , unsigned char c ,
                          struct snd_seq_event *ev )
{
  struct seq_oss_midi *mdev ;
  int tmp ;
  {
  {
  mdev = get_mididev(dp, dev);
  }
  if ((unsigned long )mdev == (unsigned long )((struct seq_oss_midi *)0)) {
    return (-19);
  } else {
  }
  {
  tmp = snd_midi_event_encode_byte(mdev->coder, (int )c, ev);
  }
  if (tmp > 0) {
    {
    snd_seq_oss_fill_addr(dp, ev, mdev->client, mdev->port);
    atomic_dec(& mdev->use_lock);
    }
    return (0);
  } else {
  }
  {
  atomic_dec(& mdev->use_lock);
  }
  return (-22);
}
}
int snd_seq_oss_midi_make_info(struct seq_oss_devinfo *dp , int dev , struct midi_info *inf )
{
  struct seq_oss_midi *mdev ;
  {
  {
  mdev = get_mididev(dp, dev);
  }
  if ((unsigned long )mdev == (unsigned long )((struct seq_oss_midi *)0)) {
    return (-6);
  } else {
  }
  {
  inf->device = dev;
  inf->dev_type = 0;
  inf->capabilities = 0U;
  strlcpy((char *)(& inf->name), (char const *)(& mdev->name), 30UL);
  atomic_dec(& mdev->use_lock);
  }
  return (0);
}
}
static char *capmode_str(int val )
{
  {
  val = val & 99;
  if (val == 99) {
    return ((char *)"read/write");
  } else
  if (val == 33) {
    return ((char *)"read");
  } else
  if (val == 66) {
    return ((char *)"write");
  } else {
    return ((char *)"none");
  }
}
}
void snd_seq_oss_midi_info_read(struct snd_info_buffer *buf )
{
  int i ;
  struct seq_oss_midi *mdev ;
  char *tmp ;
  char *tmp___0 ;
  {
  {
  snd_iprintf(buf, "\nNumber of MIDI devices: %d\n", max_midi_devs);
  i = 0;
  }
  goto ldv_32046;
  ldv_32045:
  {
  snd_iprintf(buf, "\nmidi %d: ", i);
  mdev = get_mdev(i);
  }
  if ((unsigned long )mdev == (unsigned long )((struct seq_oss_midi *)0)) {
    {
    snd_iprintf(buf, "*empty*\n");
    }
    goto ldv_32044;
  } else {
  }
  {
  snd_iprintf(buf, "[%s] ALSA port %d:%d\n", (unsigned char *)(& mdev->name), mdev->client,
              mdev->port);
  tmp = capmode_str(mdev->opened);
  tmp___0 = capmode_str((int )mdev->flags);
  snd_iprintf(buf, "  capability %s / opened %s\n", tmp___0, tmp);
  atomic_dec(& mdev->use_lock);
  }
  ldv_32044:
  i = i + 1;
  ldv_32046: ;
  if (i < max_midi_devs) {
    goto ldv_32045;
  } else {
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97___1(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_register_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_register_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_register_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_register_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_107(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_register_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_109(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_register_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
extern void __might_sleep(char const * , int , int ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97___2(spinlock_t *ldv_func_arg1 ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_98(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static int waitqueue_active(wait_queue_head_t *q )
{
  int tmp ;
  {
  {
  tmp = list_empty((struct list_head const *)(& q->task_list));
  }
  return (tmp == 0);
}
}
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern long schedule_timeout(long ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
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
struct seq_oss_readq *snd_seq_oss_readq_new(struct seq_oss_devinfo *dp , int maxlen )
{
  struct seq_oss_readq *q ;
  void *tmp ;
  union evrec *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  {
  tmp = kzalloc(200UL, 208U);
  q = (struct seq_oss_readq *)tmp;
  }
  if ((unsigned long )q == (unsigned long )((struct seq_oss_readq *)0)) {
    {
    printk("\vALSA: seq_oss: can\'t malloc read queue\n");
    }
    return ((struct seq_oss_readq *)0);
  } else {
  }
  {
  tmp___1 = kcalloc((size_t )maxlen, 8UL, 208U);
  tmp___0 = (union evrec *)tmp___1;
  q->q = tmp___0;
  }
  if ((unsigned long )tmp___0 == (unsigned long )((union evrec *)0)) {
    {
    printk("\vALSA: seq_oss: can\'t malloc read queue buffer\n");
    kfree((void const *)q);
    }
    return ((struct seq_oss_readq *)0);
  } else {
  }
  {
  q->maxlen = maxlen;
  q->qlen = 0;
  tmp___2 = 0;
  q->tail = tmp___2;
  q->head = tmp___2;
  __init_waitqueue_head(& q->midi_sleep, "&q->midi_sleep", & __key);
  spinlock_check(& q->lock);
  __raw_spin_lock_init(& q->lock.__annonCompField18.rlock, "&(&q->lock)->rlock", & __key___0);
  q->pre_event_timeout = 900000UL;
  q->input_time = 0xffffffffffffffffUL;
  }
  return (q);
}
}
void snd_seq_oss_readq_delete(struct seq_oss_readq *q )
{
  {
  if ((unsigned long )q != (unsigned long )((struct seq_oss_readq *)0)) {
    {
    kfree((void const *)q->q);
    kfree((void const *)q);
    }
  } else {
  }
  return;
}
}
void snd_seq_oss_readq_clear(struct seq_oss_readq *q )
{
  int tmp ;
  int tmp___0 ;
  {
  if (q->qlen != 0) {
    q->qlen = 0;
    tmp = 0;
    q->tail = tmp;
    q->head = tmp;
  } else {
  }
  {
  tmp___0 = waitqueue_active(& q->midi_sleep);
  }
  if (tmp___0 != 0) {
    {
    __wake_up(& q->midi_sleep, 3U, 1, (void *)0);
    }
  } else {
  }
  q->input_time = 0xffffffffffffffffUL;
  return;
}
}
int snd_seq_oss_readq_puts(struct seq_oss_readq *q , int dev , unsigned char *data ,
                           int len )
{
  union evrec rec ;
  int result ;
  unsigned char *tmp ;
  int tmp___0 ;
  {
  {
  memset((void *)(& rec), 0, 8UL);
  rec.c[0] = 5U;
  rec.c[2] = (unsigned char )dev;
  }
  goto ldv_31688;
  ldv_31687:
  {
  tmp = data;
  data = data + 1;
  rec.c[1] = *tmp;
  result = snd_seq_oss_readq_put_event(q, & rec);
  }
  if (result < 0) {
    return (result);
  } else {
  }
  ldv_31688:
  tmp___0 = len;
  len = len - 1;
  if (tmp___0 > 0) {
    goto ldv_31687;
  } else {
  }
  return (0);
}
}
int snd_seq_oss_readq_put_event(struct seq_oss_readq *q , union evrec *ev )
{
  unsigned long flags ;
  int tmp ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97___2(& q->lock);
  }
  if (q->qlen >= q->maxlen + -1) {
    {
    ldv_spin_unlock_irqrestore_98(& q->lock, flags);
    }
    return (-12);
  } else {
  }
  {
  memcpy((void *)q->q + (unsigned long )q->tail, (void const *)ev, 8UL);
  q->tail = (q->tail + 1) % q->maxlen;
  q->qlen = q->qlen + 1;
  tmp = waitqueue_active(& q->midi_sleep);
  }
  if (tmp != 0) {
    {
    __wake_up(& q->midi_sleep, 3U, 1, (void *)0);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_98(& q->lock, flags);
  }
  return (0);
}
}
int snd_seq_oss_readq_pick(struct seq_oss_readq *q , union evrec *rec )
{
  {
  if (q->qlen == 0) {
    return (-11);
  } else {
  }
  {
  memcpy((void *)rec, (void const *)q->q + (unsigned long )q->head, 8UL);
  }
  return (0);
}
}
void snd_seq_oss_readq_wait(struct seq_oss_readq *q )
{
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  bool __cond ;
  bool __cond___0 ;
  {
  {
  __ret = (long )q->pre_event_timeout;
  __might_sleep("sound/core/seq/oss/seq_oss_readq.c", 172, 0);
  __cond___0 = (bool )(q->qlen > 0 || q->head == q->tail);
  }
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    {
    __ret___0 = (long )q->pre_event_timeout;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_31712:
    {
    tmp = prepare_to_wait_event(& q->midi_sleep, & __wait, 1);
    __int = tmp;
    __cond = (bool )(q->qlen > 0 || q->head == q->tail);
    }
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_31711;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_31711;
    } else {
    }
    {
    __ret___0 = schedule_timeout(__ret___0);
    }
    goto ldv_31712;
    ldv_31711:
    {
    finish_wait(& q->midi_sleep, & __wait);
    }
    __ret = __ret___0;
  } else {
  }
  return;
}
}
void snd_seq_oss_readq_free(struct seq_oss_readq *q )
{
  {
  if (q->qlen > 0) {
    q->head = (q->head + 1) % q->maxlen;
    q->qlen = q->qlen - 1;
  } else {
  }
  return;
}
}
unsigned int snd_seq_oss_readq_poll(struct seq_oss_readq *q , struct file *file ,
                                    poll_table *wait )
{
  {
  {
  poll_wait(file, & q->midi_sleep, wait);
  }
  return ((unsigned int )q->qlen);
}
}
int snd_seq_oss_readq_put_timestamp(struct seq_oss_readq *q , unsigned long curt ,
                                    int seq_mode )
{
  union evrec rec ;
  {
  if (curt != q->input_time) {
    {
    memset((void *)(& rec), 0, 8UL);
    }
    {
    if (seq_mode == 0) {
      goto case_0;
    } else {
    }
    if (seq_mode == 1) {
      goto case_1;
    } else {
    }
    goto switch_break;
    case_0:
    {
    rec.echo = ((unsigned int )curt << 8U) | 2U;
    snd_seq_oss_readq_put_event(q, & rec);
    }
    goto ldv_31730;
    case_1:
    {
    rec.t.code = 129U;
    rec.t.cmd = 2U;
    rec.t.time = (unsigned int )curt;
    snd_seq_oss_readq_put_event(q, & rec);
    }
    goto ldv_31730;
    switch_break: ;
    }
    ldv_31730:
    q->input_time = curt;
  } else {
  }
  return (0);
}
}
void snd_seq_oss_readq_info_read(struct seq_oss_readq *q , struct snd_info_buffer *buf )
{
  int tmp ;
  {
  {
  tmp = waitqueue_active(& q->midi_sleep);
  snd_iprintf(buf, "  read queue [%s] length = %d : tick = %ld\n", tmp != 0 ? (char *)"sleeping" : (char *)"running",
              q->qlen, q->input_time);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97___2(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_seq_oss_readq();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97___3(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_sync_lock_of_seq_oss_writeq(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_sync_lock_of_seq_oss_writeq(void) ;
__inline static void ldv_spin_unlock_irqrestore_98___3(spinlock_t *lock , unsigned long flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static int snd_seq_oss_control(struct seq_oss_devinfo *dp , unsigned int type ,
                                        void *arg )
{
  int tmp ;
  {
  {
  tmp = snd_seq_kernel_client_ctl(dp->cseq, type, arg);
  }
  return (tmp);
}
}
struct seq_oss_writeq *snd_seq_oss_writeq_new(struct seq_oss_devinfo *dp , int maxlen )
{
  struct seq_oss_writeq *q ;
  struct snd_seq_client_pool pool ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  {
  tmp = kzalloc(184UL, 208U);
  q = (struct seq_oss_writeq *)tmp;
  }
  if ((unsigned long )q == (unsigned long )((struct seq_oss_writeq *)0)) {
    return ((struct seq_oss_writeq *)0);
  } else {
  }
  {
  q->dp = dp;
  q->maxlen = maxlen;
  spinlock_check(& q->sync_lock);
  __raw_spin_lock_init(& q->sync_lock.__annonCompField18.rlock, "&(&q->sync_lock)->rlock",
                       & __key);
  q->sync_event_put = 0;
  q->sync_time = 0U;
  __init_waitqueue_head(& q->sync_sleep, "&q->sync_sleep", & __key___0);
  memset((void *)(& pool), 0, 88UL);
  pool.client = dp->cseq;
  pool.output_pool = maxlen;
  pool.output_room = maxlen / 2;
  snd_seq_oss_control(dp, 1079530316U, (void *)(& pool));
  }
  return (q);
}
}
void snd_seq_oss_writeq_delete(struct seq_oss_writeq *q )
{
  {
  if ((unsigned long )q != (unsigned long )((struct seq_oss_writeq *)0)) {
    {
    snd_seq_oss_writeq_clear(q);
    kfree((void const *)q);
    }
  } else {
  }
  return;
}
}
void snd_seq_oss_writeq_clear(struct seq_oss_writeq *q )
{
  struct snd_seq_remove_events reset ;
  {
  {
  memset((void *)(& reset), 0, 64UL);
  reset.remove_mode = 2U;
  snd_seq_oss_control(q->dp, 1077957454U, (void *)(& reset));
  snd_seq_oss_writeq_wakeup(q, 0U);
  }
  return;
}
}
int snd_seq_oss_writeq_sync(struct seq_oss_writeq *q )
{
  struct seq_oss_devinfo *dp ;
  abstime_t time ;
  struct snd_seq_event ev ;
  union evrec *rec ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  bool __cond ;
  bool __cond___0 ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  {
  {
  dp = q->dp;
  time = snd_seq_oss_timer_cur_tick(dp->timer);
  }
  if (q->sync_time >= time) {
    return (0);
  } else {
  }
  if (q->sync_event_put == 0) {
    {
    memset((void *)(& ev), 0, 28UL);
    ev.flags = 0U;
    ev.type = 50U;
    ev.time.tick = time;
    snd_seq_oss_fill_addr(dp, & ev, (int )dp->addr.client, (int )dp->addr.port);
    rec = (union evrec *)(& ev.data);
    rec->t.code = 4U;
    rec->t.time = time;
    q->sync_event_put = 1;
    snd_seq_kernel_client_enqueue_blocking(dp->cseq, & ev, (struct file *)0, 0, 0);
    }
  } else {
  }
  {
  __ret = 250L;
  __might_sleep("sound/core/seq/oss/seq_oss_writeq.c", 121, 0);
  __cond___0 = q->sync_event_put == 0;
  }
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    {
    __ret___0 = 250L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_31933:
    {
    tmp = prepare_to_wait_event(& q->sync_sleep, & __wait, 1);
    __int = tmp;
    __cond = q->sync_event_put == 0;
    }
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_31932;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_31932;
    } else {
    }
    {
    __ret___0 = schedule_timeout(__ret___0);
    }
    goto ldv_31933;
    ldv_31932:
    {
    finish_wait(& q->sync_sleep, & __wait);
    }
    __ret = __ret___0;
  } else {
  }
  {
  tmp___0 = get_current();
  tmp___1 = signal_pending(tmp___0);
  }
  if (tmp___1 != 0) {
    q->sync_event_put = 0;
  } else {
  }
  if (q->sync_event_put == 0 || q->sync_time >= time) {
    return (0);
  } else {
  }
  return (1);
}
}
void snd_seq_oss_writeq_wakeup(struct seq_oss_writeq *q , abstime_t time )
{
  unsigned long flags ;
  int tmp ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97___3(& q->sync_lock);
  q->sync_time = time;
  q->sync_event_put = 0;
  tmp = waitqueue_active(& q->sync_sleep);
  }
  if (tmp != 0) {
    {
    __wake_up(& q->sync_sleep, 3U, 1, (void *)0);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_98___3(& q->sync_lock, flags);
  }
  return;
}
}
int snd_seq_oss_writeq_get_free_size(struct seq_oss_writeq *q )
{
  struct snd_seq_client_pool pool ;
  {
  {
  pool.client = (q->dp)->cseq;
  snd_seq_oss_control(q->dp, 3227013963U, (void *)(& pool));
  }
  return (pool.output_free);
}
}
void snd_seq_oss_writeq_set_output(struct seq_oss_writeq *q , int val )
{
  struct snd_seq_client_pool pool ;
  {
  {
  pool.client = (q->dp)->cseq;
  snd_seq_oss_control(q->dp, 3227013963U, (void *)(& pool));
  pool.output_room = val;
  snd_seq_oss_control(q->dp, 1079530316U, (void *)(& pool));
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_97___3(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_sync_lock_of_seq_oss_writeq();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_98___3(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_sync_lock_of_seq_oss_writeq();
  spin_unlock_irqrestore(lock, flags);
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
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_register_mutex ;
void ldv_linux_kernel_locking_mutex_mutex_lock_register_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_register_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_register_mutex = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_register_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_register_mutex);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_register_mutex = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_register_mutex(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_register_mutex) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_register_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_register_mutex);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_register_mutex(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_register_mutex = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_register_mutex(atomic_t *cnt ,
                                                                            struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_register_mutex(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_register_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_register_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_register_mutex = 0;
  }
  return;
}
}
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_register_mutex = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_power_lock_of_snd_card);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_register_mutex);
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
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_seq_oss_readq(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_seq_oss_readq(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_seq_oss_readq(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_seq_oss_readq(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_seq_oss_readq(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_seq_oss_readq(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_seq_oss_readq();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_seq_oss_readq(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_seq_oss_readq(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_register_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_register_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_register_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_register_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_register_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_register_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_register_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_register_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_register_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_register_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_register_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_register_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_register_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_register_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_register_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_register_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_register_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_register_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_register_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_register_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_register_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_register_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_register_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_register_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_register_lock = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_sync_lock_of_seq_oss_writeq(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 1);
  ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_sync_lock_of_seq_oss_writeq(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 2);
  ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_sync_lock_of_seq_oss_writeq(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_sync_lock_of_seq_oss_writeq(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_sync_lock_of_seq_oss_writeq(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_sync_lock_of_seq_oss_writeq(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_sync_lock_of_seq_oss_writeq();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_sync_lock_of_seq_oss_writeq(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_sync_lock_of_seq_oss_writeq(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq = 2;
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
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_register_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 1);
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
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_seq_oss_readq == 2) {
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
  if (ldv_linux_kernel_locking_spinlock_spin_register_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_sync_lock_of_seq_oss_writeq == 2) {
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
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t *arg0) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
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
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
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
void might_fault() {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t noop_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
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
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
struct snd_info_entry *snd_info_create_module_entry(struct module *arg0, const char *arg1, struct snd_info_entry *arg2) {
  return ldv_malloc(sizeof(struct snd_info_entry));
}
void snd_info_free_entry(struct snd_info_entry *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int snd_info_register(struct snd_info_entry *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_iprintf(struct snd_info_buffer *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int snd_midi_event_decode(struct snd_midi_event *arg0, unsigned char *arg1, long arg2, struct snd_seq_event *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int snd_midi_event_encode_byte(struct snd_midi_event *arg0, int arg1, struct snd_seq_event *arg2) {
  return __VERIFIER_nondet_int();
}
void snd_midi_event_free(struct snd_midi_event *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int snd_midi_event_new(int arg0, struct snd_midi_event **arg1) {
  return __VERIFIER_nondet_int();
}
void snd_midi_event_no_status(struct snd_midi_event *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int snd_oss_info_register(int arg0, int arg1, char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_register_oss_device(int arg0, struct snd_card *arg1, int arg2, const struct file_operations *arg3, void *arg4) {
  return __VERIFIER_nondet_int();
}
void snd_seq_autoload_lock() {
  return;
}
void snd_seq_autoload_unlock() {
  return;
}
int __VERIFIER_nondet_int(void);
int snd_seq_create_kernel_client(struct snd_card *arg0, int arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_seq_delete_kernel_client(int arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_seq_device_register_driver(char *arg0, struct snd_seq_dev_ops *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_seq_device_unregister_driver(char *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_seq_event_port_detach(int arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_seq_kernel_client_ctl(int arg0, unsigned int arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_seq_kernel_client_dispatch(int arg0, struct snd_seq_event *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_seq_kernel_client_enqueue(int arg0, struct snd_seq_event *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_seq_kernel_client_enqueue_blocking(int arg0, struct snd_seq_event *arg1, struct file *arg2, int arg3, int arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_seq_kernel_client_write_poll(int arg0, struct file *arg1, poll_table *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_seq_set_queue_tempo(int arg0, struct snd_seq_queue_tempo *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_unregister_oss_device(int arg0, struct snd_card *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void snd_use_lock_sync_helper(snd_use_lock_t *arg0, const char *arg1, int arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
