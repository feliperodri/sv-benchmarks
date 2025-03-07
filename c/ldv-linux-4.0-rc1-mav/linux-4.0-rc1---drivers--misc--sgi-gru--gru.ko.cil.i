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
enum node_states {
    N_POSSIBLE = 0,
    N_ONLINE = 1,
    N_NORMAL_MEMORY = 2,
    N_HIGH_MEMORY = 2,
    N_MEMORY = 3,
    N_CPU = 4,
    NR_NODE_STATES = 5
} ;
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
struct cgroup_subsys_state;
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
struct free_area {
   struct list_head free_list[6U] ;
   unsigned long nr_free ;
};
struct pglist_data;
struct zone_padding {
   char x[0U] ;
};
struct zone_reclaim_stat {
   unsigned long recent_rotated[2U] ;
   unsigned long recent_scanned[2U] ;
};
struct zone;
struct lruvec {
   struct list_head lists[5U] ;
   struct zone_reclaim_stat reclaim_stat ;
   struct zone *zone ;
};
struct per_cpu_pages {
   int count ;
   int high ;
   int batch ;
   struct list_head lists[3U] ;
};
struct per_cpu_pageset {
   struct per_cpu_pages pcp ;
   s8 expire ;
   s8 stat_threshold ;
   s8 vm_stat_diff[39U] ;
};
enum zone_type {
    ZONE_DMA = 0,
    ZONE_DMA32 = 1,
    ZONE_NORMAL = 2,
    ZONE_MOVABLE = 3,
    __MAX_NR_ZONES = 4
} ;
struct zone {
   unsigned long watermark[3U] ;
   long lowmem_reserve[4U] ;
   int node ;
   unsigned int inactive_ratio ;
   struct pglist_data *zone_pgdat ;
   struct per_cpu_pageset *pageset ;
   unsigned long dirty_balance_reserve ;
   unsigned long min_unmapped_pages ;
   unsigned long min_slab_pages ;
   unsigned long zone_start_pfn ;
   unsigned long managed_pages ;
   unsigned long spanned_pages ;
   unsigned long present_pages ;
   char const *name ;
   int nr_migrate_reserve_block ;
   unsigned long nr_isolate_pageblock ;
   seqlock_t span_seqlock ;
   wait_queue_head_t *wait_table ;
   unsigned long wait_table_hash_nr_entries ;
   unsigned long wait_table_bits ;
   struct zone_padding _pad1_ ;
   spinlock_t lock ;
   struct free_area free_area[11U] ;
   unsigned long flags ;
   struct zone_padding _pad2_ ;
   spinlock_t lru_lock ;
   struct lruvec lruvec ;
   atomic_long_t inactive_age ;
   unsigned long percpu_drift_mark ;
   unsigned long compact_cached_free_pfn ;
   unsigned long compact_cached_migrate_pfn[2U] ;
   unsigned int compact_considered ;
   unsigned int compact_defer_shift ;
   int compact_order_failed ;
   bool compact_blockskip_flush ;
   struct zone_padding _pad3_ ;
   atomic_long_t vm_stat[39U] ;
};
struct zonelist_cache {
   unsigned short z_to_n[4096U] ;
   unsigned long fullzones[64U] ;
   unsigned long last_full_zap ;
};
struct zoneref {
   struct zone *zone ;
   int zone_idx ;
};
struct zonelist {
   struct zonelist_cache *zlcache_ptr ;
   struct zoneref _zonerefs[4097U] ;
   struct zonelist_cache zlcache ;
};
struct pglist_data {
   struct zone node_zones[4U] ;
   struct zonelist node_zonelists[2U] ;
   int nr_zones ;
   spinlock_t node_size_lock ;
   unsigned long node_start_pfn ;
   unsigned long node_present_pages ;
   unsigned long node_spanned_pages ;
   int node_id ;
   wait_queue_head_t kswapd_wait ;
   wait_queue_head_t pfmemalloc_wait ;
   struct task_struct *kswapd ;
   int kswapd_max_order ;
   enum zone_type classzone_idx ;
   spinlock_t numabalancing_migrate_lock ;
   unsigned long numabalancing_migrate_next_window ;
   unsigned long numabalancing_migrate_nr_pages ;
};
typedef struct pglist_data pg_data_t;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
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
struct miscdevice {
   int minor ;
   char const *name ;
   struct file_operations const *fops ;
   struct list_head list ;
   struct device *parent ;
   struct device *this_device ;
   char const *nodename ;
   umode_t mode ;
};
struct gru_gseg_statistics {
   unsigned long fmm_tlbmiss ;
   unsigned long upm_tlbmiss ;
   unsigned long tlbdropin ;
   unsigned long context_stolen ;
   unsigned long reserved[10U] ;
};
struct gru_create_context_req {
   unsigned long gseg ;
   unsigned int data_segment_bytes ;
   unsigned int control_blocks ;
   unsigned int maximum_thread_count ;
   unsigned int options ;
   unsigned char tlb_preload_count ;
};
struct gru_config_info {
   int cpus ;
   int blades ;
   int nodes ;
   int chiplets ;
   int fill[16U] ;
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
struct anon_vma {
   struct anon_vma *root ;
   struct rw_semaphore rwsem ;
   atomic_t refcount ;
   unsigned int degree ;
   struct anon_vma *parent ;
   struct rb_root rb_root ;
};
struct mmu_notifier;
struct mmu_notifier_ops;
struct mmu_notifier_mm {
   struct hlist_head list ;
   spinlock_t lock ;
};
struct mmu_notifier_ops {
   void (*release)(struct mmu_notifier * , struct mm_struct * ) ;
   int (*clear_flush_young)(struct mmu_notifier * , struct mm_struct * , unsigned long ,
                            unsigned long ) ;
   int (*test_young)(struct mmu_notifier * , struct mm_struct * , unsigned long ) ;
   void (*change_pte)(struct mmu_notifier * , struct mm_struct * , unsigned long ,
                      pte_t ) ;
   void (*invalidate_page)(struct mmu_notifier * , struct mm_struct * , unsigned long ) ;
   void (*invalidate_range_start)(struct mmu_notifier * , struct mm_struct * , unsigned long ,
                                  unsigned long ) ;
   void (*invalidate_range_end)(struct mmu_notifier * , struct mm_struct * , unsigned long ,
                                unsigned long ) ;
   void (*invalidate_range)(struct mmu_notifier * , struct mm_struct * , unsigned long ,
                            unsigned long ) ;
};
struct mmu_notifier {
   struct hlist_node hlist ;
   struct mmu_notifier_ops const *ops ;
};
struct gru_stats_s;
struct gru_blade_state;
struct gru_stats_s {
   atomic_long_t vdata_alloc ;
   atomic_long_t vdata_free ;
   atomic_long_t gts_alloc ;
   atomic_long_t gts_free ;
   atomic_long_t gms_alloc ;
   atomic_long_t gms_free ;
   atomic_long_t gts_double_allocate ;
   atomic_long_t assign_context ;
   atomic_long_t assign_context_failed ;
   atomic_long_t free_context ;
   atomic_long_t load_user_context ;
   atomic_long_t load_kernel_context ;
   atomic_long_t lock_kernel_context ;
   atomic_long_t unlock_kernel_context ;
   atomic_long_t steal_user_context ;
   atomic_long_t steal_kernel_context ;
   atomic_long_t steal_context_failed ;
   atomic_long_t nopfn ;
   atomic_long_t asid_new ;
   atomic_long_t asid_next ;
   atomic_long_t asid_wrap ;
   atomic_long_t asid_reuse ;
   atomic_long_t intr ;
   atomic_long_t intr_cbr ;
   atomic_long_t intr_tfh ;
   atomic_long_t intr_spurious ;
   atomic_long_t intr_mm_lock_failed ;
   atomic_long_t call_os ;
   atomic_long_t call_os_wait_queue ;
   atomic_long_t user_flush_tlb ;
   atomic_long_t user_unload_context ;
   atomic_long_t user_exception ;
   atomic_long_t set_context_option ;
   atomic_long_t check_context_retarget_intr ;
   atomic_long_t check_context_unload ;
   atomic_long_t tlb_dropin ;
   atomic_long_t tlb_preload_page ;
   atomic_long_t tlb_dropin_fail_no_asid ;
   atomic_long_t tlb_dropin_fail_upm ;
   atomic_long_t tlb_dropin_fail_invalid ;
   atomic_long_t tlb_dropin_fail_range_active ;
   atomic_long_t tlb_dropin_fail_idle ;
   atomic_long_t tlb_dropin_fail_fmm ;
   atomic_long_t tlb_dropin_fail_no_exception ;
   atomic_long_t tfh_stale_on_fault ;
   atomic_long_t mmu_invalidate_range ;
   atomic_long_t mmu_invalidate_page ;
   atomic_long_t flush_tlb ;
   atomic_long_t flush_tlb_gru ;
   atomic_long_t flush_tlb_gru_tgh ;
   atomic_long_t flush_tlb_gru_zero_asid ;
   atomic_long_t copy_gpa ;
   atomic_long_t read_gpa ;
   atomic_long_t mesq_receive ;
   atomic_long_t mesq_receive_none ;
   atomic_long_t mesq_send ;
   atomic_long_t mesq_send_failed ;
   atomic_long_t mesq_noop ;
   atomic_long_t mesq_send_unexpected_error ;
   atomic_long_t mesq_send_lb_overflow ;
   atomic_long_t mesq_send_qlimit_reached ;
   atomic_long_t mesq_send_amo_nacked ;
   atomic_long_t mesq_send_put_nacked ;
   atomic_long_t mesq_page_overflow ;
   atomic_long_t mesq_qf_locked ;
   atomic_long_t mesq_qf_noop_not_full ;
   atomic_long_t mesq_qf_switch_head_failed ;
   atomic_long_t mesq_qf_unexpected_error ;
   atomic_long_t mesq_noop_unexpected_error ;
   atomic_long_t mesq_noop_lb_overflow ;
   atomic_long_t mesq_noop_qlimit_reached ;
   atomic_long_t mesq_noop_amo_nacked ;
   atomic_long_t mesq_noop_put_nacked ;
   atomic_long_t mesq_noop_page_overflow ;
};
struct gru_state;
struct gru_mm_tracker {
   unsigned int mt_asid_gen : 24 ;
   unsigned int mt_asid : 24 ;
   unsigned short mt_ctxbitmap ;
};
struct gru_mm_struct {
   struct mmu_notifier ms_notifier ;
   atomic_t ms_refcnt ;
   spinlock_t ms_asid_lock ;
   atomic_t ms_range_active ;
   char ms_released ;
   wait_queue_head_t ms_wait_queue ;
   unsigned long ms_asidmap[32U] ;
   struct gru_mm_tracker ms_asids[2048U] ;
};
struct gru_vma_data {
   spinlock_t vd_lock ;
   struct list_head vd_head ;
   long vd_user_options ;
   int vd_cbr_au_count ;
   int vd_dsr_au_count ;
   unsigned char vd_tlb_preload_count ;
};
struct gru_thread_state {
   struct list_head ts_next ;
   struct mutex ts_ctxlock ;
   struct mm_struct *ts_mm ;
   struct vm_area_struct *ts_vma ;
   struct gru_state *ts_gru ;
   struct gru_mm_struct *ts_gms ;
   unsigned char ts_tlb_preload_count ;
   unsigned long ts_cbr_map ;
   unsigned long ts_dsr_map ;
   unsigned long ts_steal_jiffies ;
   long ts_user_options ;
   pid_t ts_tgid_owner ;
   short ts_user_blade_id ;
   char ts_user_chiplet_id ;
   unsigned short ts_sizeavail ;
   int ts_tsid ;
   int ts_tlb_int_select ;
   int ts_ctxnum ;
   atomic_t ts_refcnt ;
   unsigned char ts_dsr_au_count ;
   unsigned char ts_cbr_au_count ;
   char ts_cch_req_slice ;
   char ts_blade ;
   char ts_force_cch_reload ;
   char ts_cbr_idx[64U] ;
   int ts_data_valid ;
   struct gru_gseg_statistics ustats ;
   unsigned long ts_gdata[0U] ;
};
struct gru_state {
   struct gru_blade_state *gs_blade ;
   unsigned long gs_gru_base_paddr ;
   void *gs_gru_base_vaddr ;
   unsigned short gs_gid ;
   unsigned short gs_blade_id ;
   unsigned char gs_chiplet_id ;
   unsigned char gs_tgh_local_shift ;
   unsigned char gs_tgh_first_remote ;
   spinlock_t gs_asid_lock ;
   spinlock_t gs_lock ;
   unsigned int gs_asid ;
   unsigned int gs_asid_limit ;
   unsigned int gs_asid_gen ;
   unsigned long gs_context_map ;
   unsigned long gs_cbr_map ;
   unsigned long gs_dsr_map ;
   unsigned int gs_reserved_cbrs ;
   unsigned int gs_reserved_dsr_bytes ;
   unsigned short gs_active_contexts ;
   struct gru_thread_state *gs_gts[16U] ;
   int gs_irq[16U] ;
};
struct gru_blade_state {
   void *kernel_cb ;
   void *kernel_dsr ;
   struct rw_semaphore bs_kgts_sema ;
   struct gru_thread_state *bs_kgts ;
   int bs_async_dsr_bytes ;
   int bs_async_cbrs ;
   struct completion *bs_async_wq ;
   spinlock_t bs_lock ;
   int bs_lru_ctxnum ;
   struct gru_state *bs_lru_gru ;
   struct gru_state bs_grus[2U] ;
};
struct uv_scir_s {
   struct timer_list timer ;
   unsigned long offset ;
   unsigned long last ;
   unsigned long idle_on ;
   unsigned long idle_off ;
   unsigned char state ;
   unsigned char enabled ;
};
struct uv_hub_info_s {
   unsigned long global_mmr_base ;
   unsigned long gpa_mask ;
   unsigned int gnode_extra ;
   unsigned char hub_revision ;
   unsigned char apic_pnode_shift ;
   unsigned char m_shift ;
   unsigned char n_lshift ;
   unsigned long gnode_upper ;
   unsigned long lowmem_remap_top ;
   unsigned long lowmem_remap_base ;
   unsigned short pnode ;
   unsigned short pnode_mask ;
   unsigned short coherency_domain_number ;
   unsigned short numa_blade_id ;
   unsigned char blade_processor_id ;
   unsigned char m_val ;
   unsigned char n_val ;
   struct uv_scir_s scir ;
};
struct uv_blade_info {
   unsigned short nr_possible_cpus ;
   unsigned short nr_online_cpus ;
   unsigned short pnode ;
   short memory_nid ;
   spinlock_t nmi_lock ;
   unsigned long nmi_count ;
};
struct ldv_struct_EMGentry_20 {
   int signal_pending ;
};
struct ldv_struct_dummy_resourceless_instance_11 {
   struct mmu_notifier *arg0 ;
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
struct ldv_struct_interrupt_instance_5 {
   int arg0 ;
   enum irqreturn (*arg1)(int , void * ) ;
   enum irqreturn (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int pao_T__;
typedef int pao_T_____0;
enum hrtimer_restart;
struct gru_context_configuration_handle;
struct gru_context_configuration_handle {
   unsigned char cmd : 1 ;
   unsigned char delresp : 1 ;
   unsigned char opc : 3 ;
   unsigned char unmap_enable : 1 ;
   unsigned char req_slice_set_enable : 1 ;
   unsigned char req_slice : 2 ;
   unsigned char cb_int_enable : 1 ;
   unsigned char tlb_int_enable : 1 ;
   unsigned char tfm_fault_bit_enable : 1 ;
   unsigned char tlb_int_select : 4 ;
   unsigned char status : 2 ;
   unsigned char state : 2 ;
   unsigned char reserved2 : 4 ;
   unsigned char cause : 4 ;
   unsigned char tfm_done_bit_enable : 1 ;
   unsigned char unused : 3 ;
   unsigned int dsr_allocation_map ;
   unsigned long cbr_allocation_map ;
   unsigned int asid[8U] ;
   unsigned short sizeavail[8U] ;
};
typedef u64 phys_addr_t;
typedef unsigned long pmdval_t;
typedef unsigned long pudval_t;
struct __anonstruct_pud_t_14 {
   pudval_t pud ;
};
typedef struct __anonstruct_pud_t_14 pud_t;
struct __anonstruct_pmd_t_15 {
   pmdval_t pmd ;
};
typedef struct __anonstruct_pmd_t_15 pmd_t;
struct paravirt_callee_save {
   void *func ;
};
struct pv_lazy_ops {
   void (*enter)(void) ;
   void (*leave)(void) ;
   void (*flush)(void) ;
};
struct pv_mmu_ops {
   unsigned long (*read_cr2)(void) ;
   void (*write_cr2)(unsigned long ) ;
   unsigned long (*read_cr3)(void) ;
   void (*write_cr3)(unsigned long ) ;
   void (*activate_mm)(struct mm_struct * , struct mm_struct * ) ;
   void (*dup_mmap)(struct mm_struct * , struct mm_struct * ) ;
   void (*exit_mmap)(struct mm_struct * ) ;
   void (*flush_tlb_user)(void) ;
   void (*flush_tlb_kernel)(void) ;
   void (*flush_tlb_single)(unsigned long ) ;
   void (*flush_tlb_others)(struct cpumask const * , struct mm_struct * , unsigned long ,
                            unsigned long ) ;
   int (*pgd_alloc)(struct mm_struct * ) ;
   void (*pgd_free)(struct mm_struct * , pgd_t * ) ;
   void (*alloc_pte)(struct mm_struct * , unsigned long ) ;
   void (*alloc_pmd)(struct mm_struct * , unsigned long ) ;
   void (*alloc_pud)(struct mm_struct * , unsigned long ) ;
   void (*release_pte)(unsigned long ) ;
   void (*release_pmd)(unsigned long ) ;
   void (*release_pud)(unsigned long ) ;
   void (*set_pte)(pte_t * , pte_t ) ;
   void (*set_pte_at)(struct mm_struct * , unsigned long , pte_t * , pte_t ) ;
   void (*set_pmd)(pmd_t * , pmd_t ) ;
   void (*set_pmd_at)(struct mm_struct * , unsigned long , pmd_t * , pmd_t ) ;
   void (*pte_update)(struct mm_struct * , unsigned long , pte_t * ) ;
   void (*pte_update_defer)(struct mm_struct * , unsigned long , pte_t * ) ;
   void (*pmd_update)(struct mm_struct * , unsigned long , pmd_t * ) ;
   void (*pmd_update_defer)(struct mm_struct * , unsigned long , pmd_t * ) ;
   pte_t (*ptep_modify_prot_start)(struct mm_struct * , unsigned long , pte_t * ) ;
   void (*ptep_modify_prot_commit)(struct mm_struct * , unsigned long , pte_t * ,
                                   pte_t ) ;
   struct paravirt_callee_save pte_val ;
   struct paravirt_callee_save make_pte ;
   struct paravirt_callee_save pgd_val ;
   struct paravirt_callee_save make_pgd ;
   void (*set_pud)(pud_t * , pud_t ) ;
   struct paravirt_callee_save pmd_val ;
   struct paravirt_callee_save make_pmd ;
   struct paravirt_callee_save pud_val ;
   struct paravirt_callee_save make_pud ;
   void (*set_pgd)(pgd_t * , pgd_t ) ;
   struct pv_lazy_ops lazy_mode ;
   void (*set_fixmap)(unsigned int , phys_addr_t , pgprot_t ) ;
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
union __anonunion_v_210 {
   short preferred_node ;
   nodemask_t nodes ;
};
union __anonunion_w_211 {
   nodemask_t cpuset_mems_allowed ;
   nodemask_t user_nodemask ;
};
struct mempolicy {
   atomic_t refcnt ;
   unsigned short mode ;
   unsigned short flags ;
   union __anonunion_v_210 v ;
   union __anonunion_w_211 w ;
};
struct gru_get_gseg_statistics_req {
   unsigned long gseg ;
   struct gru_gseg_statistics stats ;
};
struct gru_unload_context_req {
   unsigned long gseg ;
};
struct gru_set_context_option_req {
   unsigned long gseg ;
   int op ;
   int val0 ;
   long val1 ;
};
struct gru_flush_tlb_req {
   unsigned long gseg ;
   unsigned long vaddr ;
   size_t len ;
};
struct control_block_extended_exc_detail {
   unsigned long cb ;
   int opc ;
   int ecause ;
   int exopc ;
   long exceptdet0 ;
   int exceptdet1 ;
   int cbrstate ;
   int cbrexecstatus ;
};
struct gru_instruction_bits {
   unsigned char icmd : 1 ;
   unsigned char ima : 3 ;
   unsigned char reserved0 : 4 ;
   unsigned char xtype : 3 ;
   unsigned char iaa0 : 2 ;
   unsigned char iaa1 : 2 ;
   unsigned char reserved1 : 1 ;
   unsigned char opc ;
   unsigned char exopc ;
   unsigned int idef2 : 22 ;
   unsigned char reserved2 : 2 ;
   unsigned char istatus : 2 ;
   unsigned char isubstatus : 4 ;
   unsigned char reserved3 : 1 ;
   unsigned char tlb_fault_color : 1 ;
   unsigned long idef4 ;
   unsigned long idef1 ;
   unsigned long idef5 ;
   unsigned long idef6 ;
   unsigned long idef3 ;
   unsigned long reserved4 ;
   unsigned long avalue ;
};
struct gru_tlb_fault_map;
struct gru_control_block_extended;
struct gru_tlb_fault_handle;
struct gru_tlb_fault_map {
   unsigned long fault_bits[2U] ;
   unsigned long fill0[2U] ;
   unsigned long done_bits[2U] ;
   unsigned long fill1[2U] ;
};
struct gru_tlb_fault_handle {
   unsigned char cmd : 1 ;
   unsigned char delresp : 1 ;
   unsigned char fill0 : 2 ;
   unsigned char opc : 3 ;
   unsigned short fill1 : 9 ;
   unsigned char status : 2 ;
   unsigned char fill2 : 2 ;
   unsigned char state : 3 ;
   unsigned char fill3 : 1 ;
   unsigned char cause : 6 ;
   unsigned char cb_int : 1 ;
   unsigned char fill4 : 1 ;
   unsigned short indexway : 12 ;
   unsigned char fill5 : 4 ;
   unsigned char ctxnum : 4 ;
   unsigned short fill6 : 12 ;
   unsigned long missvaddr ;
   unsigned int missasid : 24 ;
   unsigned char fill7 ;
   unsigned int fillasid : 24 ;
   unsigned char dirty : 1 ;
   unsigned char gaa : 2 ;
   unsigned char fill8 : 5 ;
   unsigned long pfn : 41 ;
   unsigned char fill9 : 7 ;
   unsigned char pagesize : 5 ;
   unsigned short fill10 : 11 ;
   unsigned long fillvaddr ;
   unsigned long fill11[3U] ;
};
struct gru_control_block_extended {
   unsigned char reserved0 : 1 ;
   unsigned char imacpy : 3 ;
   unsigned char reserved1 : 4 ;
   unsigned char xtypecpy : 3 ;
   unsigned char iaa0cpy : 2 ;
   unsigned char iaa1cpy : 2 ;
   unsigned char reserved2 : 1 ;
   unsigned char opccpy ;
   unsigned char exopccpy ;
   unsigned int idef2cpy : 22 ;
   unsigned short reserved3 : 10 ;
   unsigned int idef4cpy : 22 ;
   unsigned short reserved4 : 10 ;
   unsigned int idef4upd : 22 ;
   unsigned short reserved5 : 10 ;
   unsigned long idef1upd ;
   unsigned long idef5cpy ;
   unsigned long idef6cpy ;
   unsigned long idef3upd ;
   unsigned long idef5upd ;
   unsigned int idef2upd : 22 ;
   unsigned short reserved6 : 10 ;
   unsigned int ecause : 20 ;
   unsigned char cbrstate : 4 ;
   unsigned char cbrexecstatus ;
};
struct gate_struct64 {
   u16 offset_low ;
   u16 segment ;
   unsigned char ist : 3 ;
   unsigned char zero0 : 5 ;
   unsigned char type : 5 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   u16 offset_middle ;
   u32 offset_high ;
   u32 zero1 ;
};
typedef struct gate_struct64 gate_desc;
struct desc_ptr {
   unsigned short size ;
   unsigned long address ;
};
struct tss_struct;
struct pv_cpu_ops {
   unsigned long (*get_debugreg)(int ) ;
   void (*set_debugreg)(int , unsigned long ) ;
   void (*clts)(void) ;
   unsigned long (*read_cr0)(void) ;
   void (*write_cr0)(unsigned long ) ;
   unsigned long (*read_cr4_safe)(void) ;
   unsigned long (*read_cr4)(void) ;
   void (*write_cr4)(unsigned long ) ;
   unsigned long (*read_cr8)(void) ;
   void (*write_cr8)(unsigned long ) ;
   void (*load_tr_desc)(void) ;
   void (*load_gdt)(struct desc_ptr const * ) ;
   void (*load_idt)(struct desc_ptr const * ) ;
   void (*store_idt)(struct desc_ptr * ) ;
   void (*set_ldt)(void const * , unsigned int ) ;
   unsigned long (*store_tr)(void) ;
   void (*load_tls)(struct thread_struct * , unsigned int ) ;
   void (*load_gs_index)(unsigned int ) ;
   void (*write_ldt_entry)(struct desc_struct * , int , void const * ) ;
   void (*write_gdt_entry)(struct desc_struct * , int , void const * , int ) ;
   void (*write_idt_entry)(gate_desc * , int , gate_desc const * ) ;
   void (*alloc_ldt)(struct desc_struct * , unsigned int ) ;
   void (*free_ldt)(struct desc_struct * , unsigned int ) ;
   void (*load_sp0)(struct tss_struct * , struct thread_struct * ) ;
   void (*set_iopl_mask)(unsigned int ) ;
   void (*wbinvd)(void) ;
   void (*io_delay)(void) ;
   void (*cpuid)(unsigned int * , unsigned int * , unsigned int * , unsigned int * ) ;
   u64 (*read_msr)(unsigned int , int * ) ;
   int (*write_msr)(unsigned int , unsigned int , unsigned int ) ;
   u64 (*read_tsc)(void) ;
   u64 (*read_pmc)(int ) ;
   unsigned long long (*read_tscp)(unsigned int * ) ;
   void (*irq_enable_sysexit)(void) ;
   void (*usergs_sysret64)(void) ;
   void (*usergs_sysret32)(void) ;
   void (*iret)(void) ;
   void (*swapgs)(void) ;
   void (*start_context_switch)(struct task_struct * ) ;
   void (*end_context_switch)(struct task_struct * ) ;
};
struct x86_hw_tss {
   u32 reserved1 ;
   u64 sp0 ;
   u64 sp1 ;
   u64 sp2 ;
   u64 reserved2 ;
   u64 ist[7U] ;
   u32 reserved3 ;
   u32 reserved4 ;
   u16 reserved5 ;
   u16 io_bitmap_base ;
};
struct tss_struct {
   struct x86_hw_tss x86_tss ;
   unsigned long io_bitmap[1025U] ;
   unsigned long stack[64U] ;
};
typedef unsigned long long cycles_t;
enum hrtimer_restart;
struct gru_tlb_global_handle;
struct gru_tlb_global_handle {
   unsigned char cmd : 1 ;
   unsigned char delresp : 1 ;
   unsigned char opc : 1 ;
   unsigned char fill1 : 5 ;
   unsigned char fill2 ;
   unsigned char status : 2 ;
   unsigned char fill3 : 2 ;
   unsigned char state : 3 ;
   unsigned char fill4 : 1 ;
   unsigned char cause : 3 ;
   unsigned long fill5 : 37 ;
   unsigned long vaddr ;
   unsigned int asid : 24 ;
   unsigned char fill6 ;
   unsigned char pagesize : 5 ;
   unsigned short fill7 : 11 ;
   unsigned char global : 1 ;
   unsigned short fill8 : 15 ;
   unsigned long vaddrmask : 39 ;
   unsigned short fill9 : 9 ;
   unsigned short n : 10 ;
   unsigned char fill10 : 6 ;
   unsigned short ctxbitmap ;
   unsigned long fill11[3U] ;
};
enum hrtimer_restart;
struct proc_dir_entry;
struct mcs_op_statistic {
   atomic_long_t count ;
   atomic_long_t total ;
   unsigned long max ;
};
struct proc_entry {
   char *name ;
   umode_t mode ;
   struct file_operations const *fops ;
   struct proc_dir_entry *entry ;
};
struct ldv_struct_seq_instance_6 {
   struct seq_file *arg0 ;
   struct seq_operations *arg1 ;
   int signal_pending ;
};
enum hrtimer_restart;
struct __anonstruct____missing_field_name_211 {
   unsigned int op32 ;
   unsigned int tri0 ;
};
union __anonunion____missing_field_name_210 {
   unsigned long op64 ;
   struct __anonstruct____missing_field_name_211 __annonCompField72 ;
};
struct gru_instruction {
   union __anonunion____missing_field_name_210 __annonCompField73 ;
   unsigned long tri1_bufsize ;
   unsigned long baddr0 ;
   unsigned long nelem ;
   unsigned long op1_stride ;
   unsigned long op2_value_baddr1 ;
   unsigned long reserved0 ;
   unsigned long avalue ;
};
struct __anonstruct____missing_field_name_212 {
   unsigned int head ;
   unsigned int limit ;
};
union gru_mesqhead {
   unsigned long val ;
   struct __anonstruct____missing_field_name_212 __annonCompField74 ;
};
struct gru_control_block_status {
   unsigned char icmd : 1 ;
   unsigned char ima : 3 ;
   unsigned char reserved0 : 4 ;
   unsigned int unused1 : 24 ;
   unsigned int unused2 : 24 ;
   unsigned char istatus : 2 ;
   unsigned char isubstatus : 4 ;
   unsigned char unused3 : 2 ;
};
struct gru_message_queue_desc {
   void *mq ;
   unsigned long mq_gpa ;
   int qlines ;
   int interrupt_vector ;
   int interrupt_pnode ;
   int interrupt_apicid ;
};
struct message_queue {
   union gru_mesqhead head ;
   int qlines ;
   long hstatus[2U] ;
   void *next ;
   void *limit ;
   void *start ;
   void *start2 ;
   char data ;
};
struct message_header {
   char present ;
   char present2 ;
   char lines ;
   char fill ;
};
enum hrtimer_restart;
enum mcs_op {
    cchop_allocate = 0,
    cchop_start = 1,
    cchop_interrupt = 2,
    cchop_interrupt_sync = 3,
    cchop_deallocate = 4,
    tfhop_write_only = 5,
    tfhop_write_restart = 6,
    tghop_invalidate = 7,
    mcsop_last = 8
} ;
enum hrtimer_restart;
struct gru_dump_chiplet_state_req {
   unsigned int op ;
   unsigned int gid ;
   int ctxnum ;
   char data_opt ;
   char lock_cch ;
   char flush_cbrs ;
   char fill[10U] ;
   pid_t pid ;
   void *buf ;
   size_t buflen ;
   unsigned int num_contexts ;
};
struct gru_dump_context_header {
   unsigned int magic ;
   unsigned int gid ;
   unsigned char ctxnum ;
   unsigned char cbrcnt ;
   unsigned char dsrcnt ;
   pid_t pid ;
   unsigned long vaddr ;
   int cch_locked ;
   unsigned long data[0U] ;
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
unsigned long ldv_linux_lib_find_bit_find_next_bit(unsigned long size , unsigned long offset ) ;
int ldv_undef_int(void) ;
static void ldv_ldv_initialize_105(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_102(int ldv_func_arg1 ) ;
static void ldv_ldv_check_final_state_103(void) ;
static void ldv_ldv_check_final_state_104(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
static void ldv_mutex_lock_95(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_ts_ctxlock_of_gru_thread_state(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_ts_ctxlock_of_gru_thread_state(struct mutex *lock ) ;
extern struct module __this_module ;
static unsigned long ldv_find_next_bit_5(unsigned long const *addr , unsigned long size ,
                                         unsigned long offset ) ;
__inline static unsigned long __arch_hweight64(__u64 w )
{
  unsigned long res ;
  {
  res = 0UL;
  __asm__ ("661:\n\tcall __sw_hweight64\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 4*32+23)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0xf3,0x48,0x0f,0xb8,0xc7\n6641:\n\t.popsection": "=a" (res): "D" (w));
  return (res);
}
}
extern int printk(char const * , ...) ;
extern void might_fault(void) ;
extern void list_del(struct list_head * ) ;
extern void __bad_percpu_size(void) ;
extern void __bad_size_call_parameter(void) ;
extern unsigned long __per_cpu_offset[8192U] ;
extern unsigned long this_cpu_off ;
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
extern void *memset(void * , int , size_t ) ;
extern int __bitmap_weight(unsigned long const * , unsigned int ) ;
__inline static int bitmap_weight(unsigned long const *src , unsigned int nbits )
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
__inline static unsigned int cpumask_check(unsigned int cpu )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  {
  __ret_warn_once = cpu >= (unsigned int )nr_cpu_ids;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_null("include/linux/cpumask.h", 116);
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
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  return (cpu);
}
}
__inline static unsigned int cpumask_next(int n , struct cpumask const *srcp )
{
  unsigned long tmp ;
  {
  if (n != -1) {
    {
    cpumask_check((unsigned int )n);
    }
  } else {
  }
  {
  tmp = ldv_find_next_bit_5((unsigned long const *)(& srcp->bits), (unsigned long )nr_cpu_ids,
                            (unsigned long )(n + 1));
  }
  return ((unsigned int )tmp);
}
}
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), (unsigned int )nr_cpu_ids);
  }
  return ((unsigned int )tmp);
}
}
__inline static void atomic64_inc(atomic64_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incq %0": "=m" (v->counter): "m" (v->counter));
  return;
}
}
__inline static void atomic_long_inc(atomic_long_t *l )
{
  atomic64_t *v ;
  {
  {
  v = l;
  atomic64_inc(v);
  }
  return;
}
}
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
static void ldv_mutex_unlock_96(struct mutex *ldv_func_arg1 ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static int __nodes_weight(nodemask_t const *srcp , unsigned int nbits )
{
  int tmp ;
  {
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), nbits);
  }
  return (tmp);
}
}
extern nodemask_t node_states[5U] ;
__inline static int num_node_state(enum node_states state )
{
  int tmp ;
  {
  {
  tmp = __nodes_weight((nodemask_t const *)(& node_states) + (unsigned long )state,
                       1024U);
  }
  return (tmp);
}
}
extern void __init_rwsem(struct rw_semaphore * , char const * , struct lock_class_key * ) ;
extern void down_write(struct rw_semaphore * ) ;
extern void up_write(struct rw_semaphore * ) ;
__inline static unsigned long readq(void const volatile *addr )
{
  unsigned long ret ;
  {
  __asm__ volatile ("movq %1,%0": "=r" (ret): "m" (*((unsigned long volatile *)addr)): "memory");
  return (ret);
}
}
extern int cpu_number ;
extern u16 x86_cpu_to_apicid ;
extern pg_data_t *node_data[] ;
extern int numa_node ;
__inline static int numa_node_id(void)
{
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  __vpp_verify = (void const *)0;
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
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (numa_node));
  goto ldv_16154;
  case_2:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (numa_node));
  goto ldv_16154;
  case_4:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (numa_node));
  goto ldv_16154;
  case_8:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (numa_node));
  goto ldv_16154;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_16154:
  pscr_ret__ = pfo_ret__;
  goto ldv_16160;
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
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (numa_node));
  goto ldv_16164;
  case_2___1:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (numa_node));
  goto ldv_16164;
  case_4___0:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (numa_node));
  goto ldv_16164;
  case_8___0:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (numa_node));
  goto ldv_16164;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_16164:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_16160;
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
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (numa_node));
  goto ldv_16173;
  case_2___2:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (numa_node));
  goto ldv_16173;
  case_4___2:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (numa_node));
  goto ldv_16173;
  case_8___1:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (numa_node));
  goto ldv_16173;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_16173:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_16160;
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
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (numa_node));
  goto ldv_16182;
  case_2___3:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (numa_node));
  goto ldv_16182;
  case_4___3:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (numa_node));
  goto ldv_16182;
  case_8___3:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (numa_node));
  goto ldv_16182;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_16182:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_16160;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_16160;
  switch_break: ;
  }
  ldv_16160: ;
  return (pscr_ret__);
}
}
__inline static int gfp_zonelist(gfp_t flags )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((flags & 262144U) != 0U, 0L);
  }
  if (tmp != 0L) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static struct zonelist *node_zonelist(int nid , gfp_t flags )
{
  int tmp ;
  {
  {
  tmp = gfp_zonelist(flags);
  }
  return ((struct zonelist *)(& (node_data[nid])->node_zonelists) + (unsigned long )tmp);
}
}
extern struct page *__alloc_pages_nodemask(gfp_t , unsigned int , struct zonelist * ,
                                           nodemask_t * ) ;
__inline static struct page *__alloc_pages(gfp_t gfp_mask , unsigned int order , struct zonelist *zonelist )
{
  struct page *tmp ;
  {
  {
  tmp = __alloc_pages_nodemask(gfp_mask, order, zonelist, (nodemask_t *)0);
  }
  return (tmp);
}
}
__inline static struct page *alloc_pages_node(int nid , gfp_t gfp_mask , unsigned int order )
{
  struct zonelist *tmp ;
  struct page *tmp___0 ;
  {
  if (nid < 0) {
    {
    nid = numa_node_id();
    }
  } else {
  }
  {
  tmp = node_zonelist(nid, gfp_mask);
  tmp___0 = __alloc_pages(gfp_mask, order, tmp);
  }
  return (tmp___0);
}
}
extern void free_pages(unsigned long , unsigned int ) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
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
extern void kfree(void const * ) ;
extern int misc_register(struct miscdevice * ) ;
static int ldv_misc_register_99(struct miscdevice *ldv_func_arg1 ) ;
extern int misc_deregister(struct miscdevice * ) ;
static int ldv_misc_deregister_100(struct miscdevice *ldv_func_arg1 ) ;
static int ldv_misc_deregister_101(struct miscdevice *ldv_func_arg1 ) ;
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
__inline static int ldv_request_irq_97(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_98(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern int uv_setup_irq(char * , int , int , unsigned long , int ) ;
extern void uv_teardown_irq(unsigned int ) ;
extern int is_uv_system(void) ;
__inline static unsigned long gru_chiplet_paddr(unsigned long paddr , int pnode ,
                                                int chiplet )
{
  {
  return (paddr + (unsigned long )(pnode * 2 + chiplet) * 134217728UL);
}
}
__inline static void *gru_chiplet_vaddr(void *vaddr , int pnode , int chiplet )
{
  {
  return (vaddr + (unsigned long )(pnode * 2 + chiplet) * 134217728UL);
}
}
struct gru_stats_s gru_stats ;
struct gru_blade_state *gru_base[1024U] ;
unsigned long gru_start_paddr ;
unsigned long gru_end_paddr ;
void *gru_start_vaddr ;
unsigned int gru_max_gids ;
struct vm_operations_struct const gru_vm_ops ;
struct gru_vma_data *gru_alloc_vma_data(struct vm_area_struct *vma , int tsid ) ;
void gru_unload_context(struct gru_thread_state *gts , int savestate ) ;
void gts_drop(struct gru_thread_state *gts ) ;
void gru_tgh_flush_init(struct gru_state *gru ) ;
int gru_kservices_init(void) ;
void gru_kservices_exit(void) ;
irqreturn_t gru0_intr(int irq , void *dev_id ) ;
irqreturn_t gru1_intr(int irq , void *dev_id ) ;
irqreturn_t gru_intr_mblade(int irq , void *dev_id ) ;
int gru_dump_chiplet_request(unsigned long arg ) ;
long gru_get_gseg_statistics(unsigned long arg ) ;
int gru_handle_user_call_os(unsigned long cb ) ;
int gru_user_flush_tlb(unsigned long arg ) ;
int gru_user_unload_context(unsigned long arg ) ;
int gru_get_exception_detail(unsigned long arg ) ;
int gru_set_context_option(unsigned long arg ) ;
struct vm_area_struct *gru_find_vma(unsigned long vaddr ) ;
int gru_proc_init(void) ;
void gru_proc_exit(void) ;
int gru_fault(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
int gru_ktest(unsigned long arg ) ;
unsigned long gru_options ;
extern struct uv_hub_info_s __uv_hub_info ;
__inline static int is_uv1_hub(void)
{
  void const *__vpp_verify ;
  unsigned long tcp_ptr__ ;
  {
  __vpp_verify = (void const *)0;
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off), "0" (& __uv_hub_info));
  return ((unsigned int )((struct uv_hub_info_s *)tcp_ptr__)->hub_revision <= 2U);
}
}
__inline static int is_uv2_hub(void)
{
  void const *__vpp_verify ;
  unsigned long tcp_ptr__ ;
  void const *__vpp_verify___0 ;
  unsigned long tcp_ptr_____0 ;
  int tmp ;
  {
  __vpp_verify = (void const *)0;
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off), "0" (& __uv_hub_info));
  if ((unsigned int )((struct uv_hub_info_s *)tcp_ptr__)->hub_revision > 2U) {
    __vpp_verify___0 = (void const *)0;
    __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr_____0): "m" (this_cpu_off),
                         "0" (& __uv_hub_info));
    if ((unsigned int )((struct uv_hub_info_s *)tcp_ptr_____0)->hub_revision <= 4U) {
      tmp = 1;
    } else {
      tmp = 0;
    }
  } else {
    tmp = 0;
  }
  return (tmp);
}
}
__inline static unsigned long *uv_local_mmr_address(unsigned long offset )
{
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = is_uv1_hub();
  }
  if (tmp___1 == 0) {
    {
    is_uv2_hub();
    tmp___0 = 4194304000UL;
    }
  } else {
    tmp___0 = 4093640704UL;
  }
  return ((unsigned long *)((tmp___0 | offset) + 0xffff880000000000UL));
}
}
__inline static unsigned long uv_read_local_mmr(unsigned long offset )
{
  unsigned long *tmp ;
  unsigned long tmp___0 ;
  {
  {
  tmp = uv_local_mmr_address(offset);
  tmp___0 = readq((void const volatile *)tmp);
  }
  return (tmp___0);
}
}
extern struct uv_blade_info *uv_blade_info ;
extern short *uv_node_to_blade ;
extern short *uv_cpu_to_blade ;
extern short uv_possible_blades ;
__inline static int uv_cpu_to_blade_id(int cpu )
{
  {
  return ((int )*(uv_cpu_to_blade + (unsigned long )cpu));
}
}
__inline static int uv_node_to_blade_id(int nid )
{
  {
  return ((int )*(uv_node_to_blade + (unsigned long )nid));
}
}
__inline static int uv_blade_to_pnode(int bid )
{
  {
  return ((int )(uv_blade_info + (unsigned long )bid)->pnode);
}
}
__inline static int uv_blade_to_memory_nid(int bid )
{
  {
  return ((int )(uv_blade_info + (unsigned long )bid)->memory_nid);
}
}
__inline static int uv_blade_nr_possible_cpus(int bid )
{
  {
  return ((int )(uv_blade_info + (unsigned long )bid)->nr_possible_cpus);
}
}
__inline static int uv_num_possible_blades(void)
{
  {
  return ((int )uv_possible_blades);
}
}
static int max_user_cbrs ;
static int max_user_dsr_bytes ;
static struct miscdevice gru_miscdev ;
static int gru_supported(void)
{
  int tmp ;
  void const *__vpp_verify ;
  unsigned long tcp_ptr__ ;
  int tmp___0 ;
  {
  {
  tmp = is_uv_system();
  }
  if (tmp != 0) {
    __vpp_verify = (void const *)0;
    __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off),
                         "0" (& __uv_hub_info));
    if ((unsigned int )((struct uv_hub_info_s *)tcp_ptr__)->hub_revision <= 4U) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
static void gru_vma_close(struct vm_area_struct *vma )
{
  struct gru_vma_data *vdata ;
  struct gru_thread_state *gts ;
  struct list_head *entry ;
  struct list_head *next ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  struct list_head const *__mptr ;
  {
  if ((unsigned long )vma->vm_private_data == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  vdata = (struct gru_vma_data *)vma->vm_private_data;
  vma->vm_private_data = (void *)0;
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34503;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34503;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34503;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34503;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34503:
    pscr_ret__ = pfo_ret__;
    goto ldv_34509;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34513;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34513;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34513;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34513;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34513:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34509;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34522;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34522;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34522;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34522;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34522:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34509;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34531;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34531;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34531;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34531;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34531:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34509;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34509;
    switch_break: ;
    }
    ldv_34509:
    {
    printk("\017GRU:%d %s: vma %p, file %p, vdata %p\n", pscr_ret__, "gru_vma_close",
           vma, vma->vm_file, vdata);
    }
  } else {
  }
  entry = vdata->vd_head.next;
  next = entry->next;
  goto ldv_34543;
  ldv_34542:
  {
  __mptr = (struct list_head const *)entry;
  gts = (struct gru_thread_state *)__mptr;
  list_del(& gts->ts_next);
  ldv_mutex_lock_95(& gts->ts_ctxlock);
  }
  if ((unsigned long )gts->ts_gru != (unsigned long )((struct gru_state *)0)) {
    {
    gru_unload_context(gts, 0);
    }
  } else {
  }
  {
  ldv_mutex_unlock_96(& gts->ts_ctxlock);
  gts_drop(gts);
  entry = next;
  next = entry->next;
  }
  ldv_34543: ;
  if ((unsigned long )entry != (unsigned long )(& vdata->vd_head)) {
    goto ldv_34542;
  } else {
  }
  {
  kfree((void const *)vdata);
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.vdata_free);
    }
  } else {
  }
  return;
}
}
static int gru_file_mmap(struct file *file , struct vm_area_struct *vma )
{
  pgprot_t __constr_expr_0 ;
  struct gru_vma_data *tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  if ((vma->vm_flags & 10UL) != 10UL) {
    return (-1);
  } else {
  }
  if ((vma->vm_start & 262143UL) != 0UL || (vma->vm_end & 262143UL) != 0UL) {
    return (-22);
  } else {
  }
  {
  vma->vm_flags = vma->vm_flags | 67527680UL;
  __constr_expr_0.pgprot = 0x8000000000000027UL;
  vma->vm_page_prot = __constr_expr_0;
  vma->vm_ops = & gru_vm_ops;
  tmp = gru_alloc_vma_data(vma, 0);
  vma->vm_private_data = (void *)tmp;
  }
  if ((unsigned long )vma->vm_private_data == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34555;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34555;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34555;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34555;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34555:
    pscr_ret__ = pfo_ret__;
    goto ldv_34561;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34565;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34565;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34565;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34565;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34565:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34561;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34574;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34574;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34574;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34574;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34574:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34561;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34583;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34583;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34583;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34583;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34583:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34561;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34561;
    switch_break: ;
    }
    ldv_34561:
    {
    printk("\017GRU:%d %s: file %p, vaddr 0x%lx, vma %p, vdata %p\n", pscr_ret__,
           "gru_file_mmap", file, vma->vm_start, vma, vma->vm_private_data);
    }
  } else {
  }
  return (0);
}
}
static int gru_create_new_context(unsigned long arg )
{
  struct gru_create_context_req req ;
  struct vm_area_struct *vma ;
  struct gru_vma_data *vdata ;
  int ret ;
  unsigned long tmp ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  {
  {
  ret = -22;
  tmp = copy_from_user((void *)(& req), (void const *)arg, 32UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if (req.data_segment_bytes > (unsigned int )max_user_dsr_bytes) {
    return (-22);
  } else {
  }
  if (req.control_blocks > (unsigned int )max_user_cbrs || req.maximum_thread_count == 0U) {
    return (-22);
  } else {
  }
  if ((req.options & 3U) == 0U) {
    req.options = req.options | 2U;
  } else {
  }
  {
  tmp___0 = get_current();
  down_write(& (tmp___0->mm)->mmap_sem);
  vma = gru_find_vma(req.gseg);
  }
  if ((unsigned long )vma != (unsigned long )((struct vm_area_struct *)0)) {
    vdata = (struct gru_vma_data *)vma->vm_private_data;
    vdata->vd_user_options = (long )req.options;
    vdata->vd_dsr_au_count = (int )((req.data_segment_bytes + 1023U) / 1024U);
    vdata->vd_cbr_au_count = (int )((req.control_blocks + 1U) / 2U);
    vdata->vd_tlb_preload_count = req.tlb_preload_count;
    ret = 0;
  } else {
  }
  {
  tmp___1 = get_current();
  up_write(& (tmp___1->mm)->mmap_sem);
  }
  return (ret);
}
}
static long gru_get_config_info(unsigned long arg )
{
  struct gru_config_info info ;
  int nodesperblade ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned long tmp___3 ;
  {
  {
  tmp = num_node_state(1);
  }
  if (tmp > 1) {
    {
    tmp___0 = uv_node_to_blade_id(1);
    tmp___1 = uv_node_to_blade_id(0);
    }
    if (tmp___0 == tmp___1) {
      nodesperblade = 2;
    } else {
      nodesperblade = 1;
    }
  } else {
    nodesperblade = 1;
  }
  {
  memset((void *)(& info), 0, 80UL);
  tmp___2 = cpumask_weight(cpu_online_mask);
  info.cpus = (int )tmp___2;
  info.nodes = num_node_state(1);
  info.blades = info.nodes / nodesperblade;
  info.chiplets = info.blades * 2;
  tmp___3 = copy_to_user((void *)arg, (void const *)(& info), 80UL);
  }
  if (tmp___3 != 0UL) {
    return (-14L);
  } else {
  }
  return (0L);
}
}
static long gru_file_unlocked_ioctl(struct file *file , unsigned int req , unsigned long arg )
{
  int err ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  long tmp ;
  long tmp___0 ;
  {
  err = -56;
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34615;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34615;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34615;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34615;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34615:
    pscr_ret__ = pfo_ret__;
    goto ldv_34621;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34625;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34625;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34625;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34625;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34625:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34621;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34634;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34634;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34634;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34634;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34634:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34621;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34643;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34643;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34643;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34643;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34643:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34621;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34621;
    switch_break: ;
    }
    ldv_34621:
    {
    printk("\017GRU:%d %s: file %p, req 0x%x, 0x%lx\n", pscr_ret__, "gru_file_unlocked_ioctl",
           file, req, arg);
    }
  } else {
  }
  {
  if (req == 3221767937U) {
    goto case_3221767937;
  } else {
  }
  if (req == 3221767940U) {
    goto case_3221767940;
  } else {
  }
  if (req == 3221767942U) {
    goto case_3221767942;
  } else {
  }
  if (req == 3221767945U) {
    goto case_3221767945;
  } else {
  }
  if (req == 3221767986U) {
    goto case_3221767986;
  } else {
  }
  if (req == 3221767944U) {
    goto case_3221767944;
  } else {
  }
  if (req == 3221767948U) {
    goto case_3221767948;
  } else {
  }
  if (req == 3221767988U) {
    goto case_3221767988;
  } else {
  }
  if (req == 3221767987U) {
    goto case_3221767987;
  } else {
  }
  if (req == 3221767947U) {
    goto case_3221767947;
  } else {
  }
  goto switch_break___4;
  case_3221767937:
  {
  err = gru_create_new_context(arg);
  }
  goto ldv_34653;
  case_3221767940:
  {
  err = gru_set_context_option(arg);
  }
  goto ldv_34653;
  case_3221767942:
  {
  err = gru_get_exception_detail(arg);
  }
  goto ldv_34653;
  case_3221767945:
  {
  err = gru_user_unload_context(arg);
  }
  goto ldv_34653;
  case_3221767986:
  {
  err = gru_user_flush_tlb(arg);
  }
  goto ldv_34653;
  case_3221767944:
  {
  err = gru_handle_user_call_os(arg);
  }
  goto ldv_34653;
  case_3221767948:
  {
  tmp = gru_get_gseg_statistics(arg);
  err = (int )tmp;
  }
  goto ldv_34653;
  case_3221767988:
  {
  err = gru_ktest(arg);
  }
  goto ldv_34653;
  case_3221767987:
  {
  tmp___0 = gru_get_config_info(arg);
  err = (int )tmp___0;
  }
  goto ldv_34653;
  case_3221767947:
  {
  err = gru_dump_chiplet_request(arg);
  }
  goto ldv_34653;
  switch_break___4: ;
  }
  ldv_34653: ;
  return ((long )err);
}
}
static void gru_init_chiplet(struct gru_state *gru , unsigned long paddr , void *vaddr ,
                             int blade_id , int chiplet_id )
{
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  {
  spinlock_check(& gru->gs_lock);
  __raw_spin_lock_init(& gru->gs_lock.__annonCompField18.rlock, "&(&gru->gs_lock)->rlock",
                       & __key);
  spinlock_check(& gru->gs_asid_lock);
  __raw_spin_lock_init(& gru->gs_asid_lock.__annonCompField18.rlock, "&(&gru->gs_asid_lock)->rlock",
                       & __key___0);
  gru->gs_gru_base_paddr = paddr;
  gru->gs_gru_base_vaddr = vaddr;
  gru->gs_gid = (unsigned int )((unsigned short )blade_id) * 2U + (unsigned int )((unsigned short )chiplet_id);
  gru->gs_blade = gru_base[blade_id];
  gru->gs_blade_id = (unsigned short )blade_id;
  gru->gs_chiplet_id = (unsigned char )chiplet_id;
  gru->gs_cbr_map = 0xffffffffffffffffUL;
  gru->gs_dsr_map = 4294967295UL;
  gru->gs_asid_limit = 16777200U;
  gru_tgh_flush_init(gru);
  }
  if ((unsigned int )gru->gs_gid >= gru_max_gids) {
    gru_max_gids = (unsigned int )((int )gru->gs_gid + 1);
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34677;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34677;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34677;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34677;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34677:
    pscr_ret__ = pfo_ret__;
    goto ldv_34683;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34687;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34687;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34687;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34687;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34687:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34683;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34696;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34696;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34696;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34696;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34696:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34683;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34705;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34705;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34705;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34705;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34705:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34683;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34683;
    switch_break: ;
    }
    ldv_34683:
    {
    printk("\017GRU:%d %s: bid %d, gid %d, vaddr %p (0x%lx)\n", pscr_ret__, "gru_init_chiplet",
           blade_id, (int )gru->gs_gid, gru->gs_gru_base_vaddr, gru->gs_gru_base_paddr);
    }
  } else {
  }
  return;
}
}
static int gru_init_tables(unsigned long gru_base_paddr , void *gru_base_vaddr )
{
  int pnode ;
  int nid ;
  int bid ;
  int chip ;
  int cbrs ;
  int dsrbytes ;
  int n ;
  int order ;
  struct page *page ;
  struct gru_state *gru ;
  unsigned long paddr ;
  void *vaddr ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  unsigned long tmp___0 ;
  int _max1 ;
  int _max2 ;
  unsigned long tmp___1 ;
  int _max1___0 ;
  int _max2___0 ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  int tmp___2 ;
  {
  order = 0;
  max_user_cbrs = 128;
  max_user_dsr_bytes = 32768;
  bid = 0;
  goto ldv_34749;
  ldv_34748:
  {
  pnode = uv_blade_to_pnode(bid);
  nid = uv_blade_to_memory_nid(bid);
  page = alloc_pages_node(nid, 208U, (unsigned int )order);
  }
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    goto fail;
  } else {
  }
  {
  tmp = lowmem_page_address((struct page const *)page);
  gru_base[bid] = (struct gru_blade_state *)tmp;
  memset((void *)gru_base[bid], 0, 1136UL);
  (gru_base[bid])->bs_lru_gru = (struct gru_state *)(& (gru_base[bid])->bs_grus);
  spinlock_check(& (gru_base[bid])->bs_lock);
  __raw_spin_lock_init(& (gru_base[bid])->bs_lock.__annonCompField18.rlock, "&(&gru_base[bid]->bs_lock)->rlock",
                       & __key);
  __init_rwsem(& (gru_base[bid])->bs_kgts_sema, "&gru_base[bid]->bs_kgts_sema", & __key___0);
  dsrbytes = 0;
  cbrs = 0;
  gru = (struct gru_state *)(& (gru_base[bid])->bs_grus);
  chip = 0;
  }
  goto ldv_34740;
  ldv_34739:
  {
  paddr = gru_chiplet_paddr(gru_base_paddr, pnode, chip);
  vaddr = gru_chiplet_vaddr(gru_base_vaddr, pnode, chip);
  gru_init_chiplet(gru, paddr, vaddr, bid, chip);
  tmp___0 = __arch_hweight64((__u64 )gru->gs_cbr_map);
  n = (int )((unsigned int )tmp___0 * 2U);
  _max1 = cbrs;
  _max2 = n;
  cbrs = _max1 > _max2 ? _max1 : _max2;
  tmp___1 = __arch_hweight64((__u64 )gru->gs_dsr_map);
  n = (int )((unsigned int )tmp___1 * 1024U);
  _max1___0 = dsrbytes;
  _max2___0 = n;
  dsrbytes = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
  chip = chip + 1;
  gru = gru + 1;
  }
  ldv_34740: ;
  if (chip <= 1) {
    goto ldv_34739;
  } else {
  }
  _min1 = max_user_cbrs;
  _min2 = cbrs;
  max_user_cbrs = _min1 < _min2 ? _min1 : _min2;
  _min1___0 = max_user_dsr_bytes;
  _min2___0 = dsrbytes;
  max_user_dsr_bytes = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  bid = bid + 1;
  ldv_34749:
  {
  tmp___2 = uv_num_possible_blades();
  }
  if (bid < tmp___2) {
    goto ldv_34748;
  } else {
  }
  return (0);
  fail:
  bid = bid - 1;
  goto ldv_34752;
  ldv_34751:
  {
  free_pages((unsigned long )gru_base[bid], (unsigned int )order);
  bid = bid - 1;
  }
  ldv_34752: ;
  if (bid >= 0) {
    goto ldv_34751;
  } else {
  }
  return (-12);
}
}
static void gru_free_tables(void)
{
  int bid ;
  int order ;
  {
  order = 0;
  bid = 0;
  goto ldv_34760;
  ldv_34759:
  {
  free_pages((unsigned long )gru_base[bid], (unsigned int )order);
  bid = bid + 1;
  }
  ldv_34760: ;
  if (bid <= 1023) {
    goto ldv_34759;
  } else {
  }
  return;
}
}
static unsigned long gru_chiplet_cpu_to_mmr(int chiplet , int cpu , int *corep )
{
  unsigned long mmr ;
  int core ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr___0 ;
  void const *__vpp_verify___1 ;
  unsigned long __ptr___1 ;
  void const *__vpp_verify___2 ;
  unsigned long __ptr___2 ;
  {
  mmr = 0UL;
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& x86_cpu_to_apicid));
  __vpp_verify___0 = (void const *)0;
  __asm__ ("": "=r" (__ptr___0): "0" (& x86_cpu_to_apicid));
  __vpp_verify___1 = (void const *)0;
  __asm__ ("": "=r" (__ptr___1): "0" (& x86_cpu_to_apicid));
  core = ((((int )*((u16 *)(__ptr + __per_cpu_offset[cpu])) >> 2) & 4) | (((int )*((u16 *)(__ptr___0 + __per_cpu_offset[cpu])) >> 1) & 3)) + (((int )*((u16 *)(__ptr___1 + __per_cpu_offset[cpu])) >> 5) & 1) * 8;
  if (core > 15) {
    return (0UL);
  } else {
    __vpp_verify___2 = (void const *)0;
    __asm__ ("": "=r" (__ptr___2): "0" (& x86_cpu_to_apicid));
    if ((int )*((u16 *)(__ptr___2 + __per_cpu_offset[cpu])) & 1) {
      return (0UL);
    } else {
    }
  }
  if (chiplet == 0) {
    mmr = ((unsigned long )core + 6252UL) * 64UL;
  } else
  if (chiplet == 1) {
    mmr = ((unsigned long )core + 6268UL) * 64UL;
  } else {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grufile.c"),
                         "i" (345), "i" (12UL));
    __builtin_unreachable();
    }
  }
  *corep = core;
  return (mmr);
}
}
static int gru_chiplet_setup_tlb_irq(int chiplet , char *irq_name , irqreturn_t (*irq_handler)(int ,
                                                                                               void * ) ,
                                     int cpu , int blade )
{
  unsigned long mmr ;
  int irq ;
  int core ;
  int ret ;
  {
  {
  mmr = gru_chiplet_cpu_to_mmr(chiplet, cpu, & core);
  }
  if (mmr == 0UL) {
    return (0);
  } else {
  }
  {
  irq = uv_setup_irq(irq_name, cpu, blade, mmr, 2);
  }
  if (irq < 0) {
    {
    printk("\v%s: uv_setup_irq failed, errno=%d\n", (char *)"SGI GRU Device Driver",
           - irq);
    }
    return (irq);
  } else {
  }
  {
  ret = ldv_request_irq_97((unsigned int )irq, irq_handler, 0UL, (char const *)irq_name,
                           (void *)0);
  }
  if (ret != 0) {
    {
    uv_teardown_irq((unsigned int )irq);
    printk("\v%s: request_irq failed, errno=%d\n", (char *)"SGI GRU Device Driver",
           - ret);
    }
    return (ret);
  } else {
  }
  (gru_base[blade])->bs_grus[chiplet].gs_irq[core] = irq;
  return (0);
}
}
static void gru_chiplet_teardown_tlb_irq(int chiplet , int cpu , int blade )
{
  int irq ;
  int core ;
  unsigned long mmr ;
  {
  {
  mmr = gru_chiplet_cpu_to_mmr(chiplet, cpu, & core);
  }
  if (mmr != 0UL) {
    irq = (gru_base[blade])->bs_grus[chiplet].gs_irq[core];
    if (irq != 0) {
      {
      ldv_free_irq_98((unsigned int )irq, (void *)0);
      uv_teardown_irq((unsigned int )irq);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void gru_teardown_tlb_irqs(void)
{
  int blade ;
  int cpu ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  cpu = -1;
  goto ldv_34810;
  ldv_34809:
  {
  blade = uv_cpu_to_blade_id(cpu);
  gru_chiplet_teardown_tlb_irq(0, cpu, blade);
  gru_chiplet_teardown_tlb_irq(1, cpu, blade);
  }
  ldv_34810:
  {
  tmp = cpumask_next(cpu, cpu_online_mask);
  cpu = (int )tmp;
  }
  if (cpu < nr_cpu_ids) {
    goto ldv_34809;
  } else {
  }
  blade = 0;
  goto ldv_34814;
  ldv_34813:
  {
  tmp___0 = uv_blade_nr_possible_cpus(blade);
  }
  if (tmp___0 != 0) {
    goto ldv_34812;
  } else {
  }
  {
  gru_chiplet_teardown_tlb_irq(0, 0, blade);
  gru_chiplet_teardown_tlb_irq(1, 0, blade);
  }
  ldv_34812:
  blade = blade + 1;
  ldv_34814:
  {
  tmp___1 = uv_num_possible_blades();
  }
  if (blade < tmp___1) {
    goto ldv_34813;
  } else {
  }
  return;
}
}
static int gru_setup_tlb_irqs(void)
{
  int blade ;
  int cpu ;
  int ret ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  cpu = -1;
  goto ldv_34824;
  ldv_34823:
  {
  blade = uv_cpu_to_blade_id(cpu);
  ret = gru_chiplet_setup_tlb_irq(0, (char *)"GRU0_TLB", & gru0_intr, cpu, blade);
  }
  if (ret != 0) {
    goto exit1;
  } else {
  }
  {
  ret = gru_chiplet_setup_tlb_irq(1, (char *)"GRU1_TLB", & gru1_intr, cpu, blade);
  }
  if (ret != 0) {
    goto exit1;
  } else {
  }
  ldv_34824:
  {
  tmp = cpumask_next(cpu, cpu_online_mask);
  cpu = (int )tmp;
  }
  if (cpu < nr_cpu_ids) {
    goto ldv_34823;
  } else {
  }
  blade = 0;
  goto ldv_34828;
  ldv_34827:
  {
  tmp___0 = uv_blade_nr_possible_cpus(blade);
  }
  if (tmp___0 != 0) {
    goto ldv_34826;
  } else {
  }
  {
  ret = gru_chiplet_setup_tlb_irq(0, (char *)"GRU0_TLB", & gru_intr_mblade, 0, blade);
  }
  if (ret != 0) {
    goto exit1;
  } else {
  }
  {
  ret = gru_chiplet_setup_tlb_irq(1, (char *)"GRU1_TLB", & gru_intr_mblade, 0, blade);
  }
  if (ret != 0) {
    goto exit1;
  } else {
  }
  ldv_34826:
  blade = blade + 1;
  ldv_34828:
  {
  tmp___1 = uv_num_possible_blades();
  }
  if (blade < tmp___1) {
    goto ldv_34827;
  } else {
  }
  return (0);
  exit1:
  {
  gru_teardown_tlb_irqs();
  }
  return (ret);
}
}
static int gru_init(void)
{
  int ret ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  {
  tmp = gru_supported();
  }
  if (tmp == 0) {
    return (0);
  } else {
  }
  {
  tmp___0 = uv_read_local_mmr(23068688UL);
  gru_start_paddr = tmp___0 & 140737488355327UL;
  gru_start_vaddr = (void *)(gru_start_paddr + 0xffff880000000000UL);
  gru_end_paddr = gru_start_paddr + 137438953472UL;
  printk("\016GRU space: 0x%lx - 0x%lx\n", gru_start_paddr, gru_end_paddr);
  ret = ldv_misc_register_99(& gru_miscdev);
  }
  if (ret != 0) {
    {
    printk("\v%s: misc_register failed\n", (char *)"SGI GRU Device Driver");
    }
    goto exit0;
  } else {
  }
  {
  ret = gru_proc_init();
  }
  if (ret != 0) {
    {
    printk("\v%s: proc init failed\n", (char *)"SGI GRU Device Driver");
    }
    goto exit1;
  } else {
  }
  {
  ret = gru_init_tables(gru_start_paddr, gru_start_vaddr);
  }
  if (ret != 0) {
    {
    printk("\v%s: init tables failed\n", (char *)"SGI GRU Device Driver");
    }
    goto exit2;
  } else {
  }
  {
  ret = gru_setup_tlb_irqs();
  }
  if (ret != 0) {
    goto exit3;
  } else {
  }
  {
  gru_kservices_init();
  printk("\016%s: v%s\n", (char *)"SGI GRU Device Driver", (char *)"0.85");
  }
  return (0);
  exit3:
  {
  gru_free_tables();
  }
  exit2:
  {
  gru_proc_exit();
  }
  exit1:
  {
  ldv_misc_deregister_100(& gru_miscdev);
  }
  exit0: ;
  return (ret);
}
}
static void gru_exit(void)
{
  int tmp ;
  {
  {
  tmp = gru_supported();
  }
  if (tmp == 0) {
    return;
  } else {
  }
  {
  gru_teardown_tlb_irqs();
  gru_kservices_exit();
  gru_free_tables();
  ldv_misc_deregister_101(& gru_miscdev);
  gru_proc_exit();
  }
  return;
}
}
static struct file_operations const gru_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, 0, 0, 0, & gru_file_unlocked_ioctl,
    0, & gru_file_mmap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct miscdevice gru_miscdev =
     {255, "gru", & gru_fops, {0, 0}, 0, 0, 0, (unsigned short)0};
struct vm_operations_struct const gru_vm_ops =
     {0, & gru_vma_close, & gru_fault, 0, 0, 0, 0, 0, 0, 0};
void ldv_EMGentry_exit_gru_exit_20_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_gru_init_20_10(int (*arg0)(void) ) ;
void ldv_dispatch_deregister_14_1(struct file_operations *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_12_20_4(void) ;
void ldv_dispatch_deregister_seq_instance_8_20_5(void) ;
void ldv_dispatch_irq_deregister_13_1(int arg0 ) ;
void ldv_dispatch_irq_register_16_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_15_2(struct file_operations *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_12_20_6(void) ;
void ldv_dummy_resourceless_instance_callback_11_12(void (*arg0)(struct mmu_notifier * ,
                                                                 struct mm_struct * ,
                                                                 unsigned long ,
                                                                 unsigned long ) ,
                                                    struct mmu_notifier *arg1 , struct mm_struct *arg2 ,
                                                    unsigned long arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_11_15(void (*arg0)(struct mmu_notifier * ,
                                                                 struct mm_struct * ) ,
                                                    struct mmu_notifier *arg1 , struct mm_struct *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_11_3(void (*arg0)(struct mmu_notifier * ,
                                                                struct mm_struct * ,
                                                                unsigned long ) ,
                                                   struct mmu_notifier *arg1 , struct mm_struct *arg2 ,
                                                   unsigned long arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_9(void (*arg0)(struct mmu_notifier * ,
                                                                struct mm_struct * ,
                                                                unsigned long , unsigned long ) ,
                                                   struct mmu_notifier *arg1 , struct mm_struct *arg2 ,
                                                   unsigned long arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_12_3(void (*arg0)(struct vm_area_struct * ) ,
                                                   struct vm_area_struct *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_12_7(int (*arg0)(struct vm_area_struct * ,
                                                               struct vm_fault * ) ,
                                                   struct vm_area_struct *arg1 , struct vm_fault *arg2 ) ;
void ldv_entry_EMGentry_20(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_1(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_2(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_3(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_4(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_0_26(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_1_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_1_26(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_1_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_2_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_2_26(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_3_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_3_26(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_callback_4_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_file_operations_instance_callback_4_26(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_5_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_5_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_5(void *arg0 ) ;
void ldv_misc_deregister(void *arg0 , struct miscdevice *arg1 ) ;
int ldv_misc_register(int arg0 , struct miscdevice *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_struct_mmu_notifier_ops_dummy_resourceless_instance_11(void *arg0 ) ;
void ldv_struct_vm_operations_struct_dummy_resourceless_instance_12(void *arg0 ) ;
struct ldv_thread ldv_thread_11 ;
struct ldv_thread ldv_thread_12 ;
struct ldv_thread ldv_thread_20 ;
struct ldv_thread ldv_thread_5 ;
void ldv_EMGentry_exit_gru_exit_20_2(void (*arg0)(void) )
{
  {
  {
  gru_exit();
  }
  return;
}
}
int ldv_EMGentry_init_gru_init_20_10(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = gru_init();
  }
  return (tmp);
}
}
void ldv_dispatch_deregister_14_1(struct file_operations *arg0 )
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
  goto ldv_35164;
  case_1: ;
  goto ldv_35164;
  case_2: ;
  goto ldv_35164;
  case_3: ;
  goto ldv_35164;
  case_4: ;
  goto ldv_35164;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_35164: ;
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_12_20_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_seq_instance_8_20_5(void)
{
  {
  return;
}
}
void ldv_dispatch_irq_deregister_13_1(int arg0 )
{
  {
  return;
}
}
void ldv_dispatch_irq_register_16_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_5 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(40UL);
  cf_arg_5 = (struct ldv_struct_interrupt_instance_5 *)tmp;
  cf_arg_5->arg0 = arg0;
  cf_arg_5->arg1 = arg1;
  cf_arg_5->arg2 = arg2;
  cf_arg_5->arg3 = arg3;
  ldv_interrupt_interrupt_instance_5((void *)cf_arg_5);
  }
  return;
}
}
void ldv_dispatch_register_15_2(struct file_operations *arg0 )
{
  struct ldv_struct_file_operations_instance_0 *cf_arg_0 ;
  struct ldv_struct_file_operations_instance_0 *cf_arg_1 ;
  struct ldv_struct_file_operations_instance_0 *cf_arg_2 ;
  struct ldv_struct_file_operations_instance_0 *cf_arg_3 ;
  struct ldv_struct_file_operations_instance_0 *cf_arg_4 ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
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
  case_0:
  {
  tmp___0 = ldv_xmalloc(16UL);
  cf_arg_0 = (struct ldv_struct_file_operations_instance_0 *)tmp___0;
  cf_arg_0->arg0 = arg0;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  }
  goto ldv_35209;
  case_1:
  {
  tmp___1 = ldv_xmalloc(16UL);
  cf_arg_1 = (struct ldv_struct_file_operations_instance_0 *)tmp___1;
  cf_arg_1->arg0 = arg0;
  ldv_file_operations_file_operations_instance_1((void *)cf_arg_1);
  }
  goto ldv_35209;
  case_2:
  {
  tmp___2 = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_file_operations_instance_0 *)tmp___2;
  cf_arg_2->arg0 = arg0;
  ldv_file_operations_file_operations_instance_2((void *)cf_arg_2);
  }
  goto ldv_35209;
  case_3:
  {
  tmp___3 = ldv_xmalloc(16UL);
  cf_arg_3 = (struct ldv_struct_file_operations_instance_0 *)tmp___3;
  cf_arg_3->arg0 = arg0;
  ldv_file_operations_file_operations_instance_3((void *)cf_arg_3);
  }
  goto ldv_35209;
  case_4:
  {
  tmp___4 = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_file_operations_instance_0 *)tmp___4;
  cf_arg_4->arg0 = arg0;
  ldv_file_operations_file_operations_instance_4((void *)cf_arg_4);
  }
  goto ldv_35209;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_35209: ;
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_12_20_6(void)
{
  struct ldv_struct_EMGentry_20 *cf_arg_12 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_12 = (struct ldv_struct_EMGentry_20 *)tmp;
  ldv_struct_vm_operations_struct_dummy_resourceless_instance_12((void *)cf_arg_12);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_3(void (*arg0)(struct vm_area_struct * ) ,
                                                   struct vm_area_struct *arg1 )
{
  {
  {
  gru_vma_close(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_7(int (*arg0)(struct vm_area_struct * ,
                                                               struct vm_fault * ) ,
                                                   struct vm_area_struct *arg1 , struct vm_fault *arg2 )
{
  {
  {
  gru_fault(arg1, arg2);
  }
  return;
}
}
void ldv_entry_EMGentry_20(void *arg0 )
{
  void (*ldv_20_exit_gru_exit_default)(void) ;
  int (*ldv_20_init_gru_init_default)(void) ;
  int ldv_20_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_20_ret_default = ldv_EMGentry_init_gru_init_20_10(ldv_20_init_gru_init_default);
  ldv_20_ret_default = ldv_ldv_post_init_102(ldv_20_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_20_ret_default != 0);
    ldv_ldv_check_final_state_103();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_20_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_dummy_resourceless_instance_12_20_6();
      ldv_dispatch_deregister_seq_instance_8_20_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_12_20_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_gru_exit_20_2(ldv_20_exit_gru_exit_default);
    ldv_ldv_check_final_state_104();
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
  ldv_ldv_initialize_105();
  ldv_entry_EMGentry_20((void *)0);
  }
return 0;
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
void ldv_file_operations_instance_callback_0_26(long (*arg0)(struct file * , unsigned int ,
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
  gru_file_mmap(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_26(long (*arg0)(struct file * , unsigned int ,
                                                             unsigned long ) , struct file *arg1 ,
                                                unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  gru_file_unlocked_ioctl(arg1, arg2, arg3);
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
  noop_llseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_22(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                                struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_26(long (*arg0)(struct file * , unsigned int ,
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
void ldv_file_operations_instance_callback_3_26(long (*arg0)(struct file * , unsigned int ,
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
void ldv_file_operations_instance_callback_4_26(long (*arg0)(struct file * , unsigned int ,
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
enum irqreturn ldv_interrupt_instance_handler_5_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  enum irqreturn tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_5_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_5(void *arg0 )
{
  enum irqreturn (*ldv_5_callback_handler)(int , void * ) ;
  void *ldv_5_data_data ;
  int ldv_5_line_line ;
  enum irqreturn ldv_5_ret_val_default ;
  enum irqreturn (*ldv_5_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_5 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_5 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_5 *)0)) {
    {
    ldv_5_line_line = data->arg0;
    ldv_5_callback_handler = data->arg1;
    ldv_5_thread_thread = data->arg2;
    ldv_5_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_5_callback_handler != (unsigned long )((enum irqreturn (*)(int ,
                                                                                     void * ))0)) {
    {
    ldv_5_ret_val_default = ldv_interrupt_instance_handler_5_5(ldv_5_callback_handler,
                                                               ldv_5_line_line, ldv_5_data_data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume((unsigned int )ldv_5_ret_val_default == 2U);
    }
    if ((unsigned long )ldv_5_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                    void * ))0)) {
      {
      ldv_interrupt_instance_thread_5_3(ldv_5_thread_thread, ldv_5_line_line, ldv_5_data_data);
      }
    } else {
    }
  } else {
    {
    ldv_assume((unsigned int )ldv_5_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
void ldv_misc_deregister(void *arg0 , struct miscdevice *arg1 )
{
  struct file_operations *ldv_14_file_operations_file_operations ;
  struct miscdevice *ldv_14_miscdevice_miscdevice ;
  {
  {
  ldv_14_miscdevice_miscdevice = arg1;
  ldv_14_file_operations_file_operations = (struct file_operations *)ldv_14_miscdevice_miscdevice->fops;
  ldv_dispatch_deregister_14_1(ldv_14_file_operations_file_operations);
  }
  return;
  return;
}
}
int ldv_misc_register(int arg0 , struct miscdevice *arg1 )
{
  struct file_operations *ldv_15_file_operations_file_operations ;
  struct miscdevice *ldv_15_miscdevice_miscdevice ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_15_miscdevice_miscdevice = arg1;
    ldv_15_file_operations_file_operations = (struct file_operations *)ldv_15_miscdevice_miscdevice->fops;
    ldv_dispatch_register_15_2(ldv_15_file_operations_file_operations);
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
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_16_callback_handler)(int , void * ) ;
  void *ldv_16_data_data ;
  int ldv_16_line_line ;
  enum irqreturn (*ldv_16_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_16_line_line = (int )arg1;
    ldv_16_callback_handler = arg2;
    ldv_16_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_16_data_data = arg5;
    ldv_dispatch_irq_register_16_2(ldv_16_line_line, ldv_16_callback_handler, ldv_16_thread_thread,
                                   ldv_16_data_data);
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
void ldv_struct_mmu_notifier_ops_dummy_resourceless_instance_11(void *arg0 )
{
  void (*ldv_11_callback_invalidate_page)(struct mmu_notifier * , struct mm_struct * ,
                                          unsigned long ) ;
  void (*ldv_11_callback_invalidate_range_end)(struct mmu_notifier * , struct mm_struct * ,
                                               unsigned long , unsigned long ) ;
  void (*ldv_11_callback_invalidate_range_start)(struct mmu_notifier * , struct mm_struct * ,
                                                 unsigned long , unsigned long ) ;
  void (*ldv_11_callback_release)(struct mmu_notifier * , struct mm_struct * ) ;
  struct mm_struct *ldv_11_container_struct_mm_struct_ptr ;
  struct mmu_notifier *ldv_11_container_struct_mmu_notifier_ptr ;
  unsigned long ldv_11_ldv_param_12_2_default ;
  unsigned long ldv_11_ldv_param_12_3_default ;
  unsigned long ldv_11_ldv_param_3_2_default ;
  unsigned long ldv_11_ldv_param_9_2_default ;
  unsigned long ldv_11_ldv_param_9_3_default ;
  struct ldv_struct_dummy_resourceless_instance_11 *data ;
  int tmp ;
  int tmp___0 ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_11 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_11 *)0)) {
    {
    ldv_11_container_struct_mmu_notifier_ptr = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
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
    ldv_dummy_resourceless_instance_callback_11_15(ldv_11_callback_release, ldv_11_container_struct_mmu_notifier_ptr,
                                                   ldv_11_container_struct_mm_struct_ptr);
    }
    goto ldv_35445;
    case_2:
    {
    ldv_dummy_resourceless_instance_callback_11_12(ldv_11_callback_invalidate_range_start,
                                                   ldv_11_container_struct_mmu_notifier_ptr,
                                                   ldv_11_container_struct_mm_struct_ptr,
                                                   ldv_11_ldv_param_12_2_default,
                                                   ldv_11_ldv_param_12_3_default);
    }
    goto ldv_35445;
    case_3:
    {
    ldv_dummy_resourceless_instance_callback_11_9(ldv_11_callback_invalidate_range_end,
                                                  ldv_11_container_struct_mmu_notifier_ptr,
                                                  ldv_11_container_struct_mm_struct_ptr,
                                                  ldv_11_ldv_param_9_2_default, ldv_11_ldv_param_9_3_default);
    }
    goto ldv_35445;
    case_4:
    {
    ldv_dummy_resourceless_instance_callback_11_3(ldv_11_callback_invalidate_page,
                                                  ldv_11_container_struct_mmu_notifier_ptr,
                                                  ldv_11_container_struct_mm_struct_ptr,
                                                  ldv_11_ldv_param_3_2_default);
    }
    goto ldv_35445;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_35445: ;
    goto ldv_call_11;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_vm_operations_struct_dummy_resourceless_instance_12(void *arg0 )
{
  void (*ldv_12_callback_close)(struct vm_area_struct * ) ;
  int (*ldv_12_callback_fault)(struct vm_area_struct * , struct vm_fault * ) ;
  struct vm_area_struct *ldv_12_container_struct_vm_area_struct_ptr ;
  struct vm_fault *ldv_12_container_struct_vm_fault_ptr ;
  int tmp ;
  {
  goto ldv_call_12;
  return;
  ldv_call_12:
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
  ldv_dummy_resourceless_instance_callback_12_7(ldv_12_callback_fault, ldv_12_container_struct_vm_area_struct_ptr,
                                                ldv_12_container_struct_vm_fault_ptr);
  }
  goto ldv_call_12;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_12_3(ldv_12_callback_close, ldv_12_container_struct_vm_area_struct_ptr);
  }
  goto ldv_call_12;
  goto ldv_call_12;
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
static unsigned long ldv_find_next_bit_5(unsigned long const *addr , unsigned long size ,
                                         unsigned long offset )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_next_bit(size, offset);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_95(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ts_ctxlock_of_gru_thread_state(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_96(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ts_ctxlock_of_gru_thread_state(ldv_func_arg1);
  }
  return;
}
}
__inline static int ldv_request_irq_97(unsigned int irq , irqreturn_t (*handler)(int ,
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
static void ldv_free_irq_98(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static int ldv_misc_register_99(struct miscdevice *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = misc_register(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_misc_register(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_misc_deregister_100(struct miscdevice *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  {
  tmp = misc_deregister(ldv_func_arg1);
  ldv_func_res = tmp;
  ldv_misc_deregister((void *)0, ldv_func_arg1);
  }
  return (ldv_func_res);
}
}
static int ldv_misc_deregister_101(struct miscdevice *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  {
  tmp = misc_deregister(ldv_func_arg1);
  ldv_func_res = tmp;
  ldv_misc_deregister((void *)0, ldv_func_arg1);
  }
  return (ldv_func_res);
}
}
static int ldv_ldv_post_init_102(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_103(void)
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
static void ldv_ldv_check_final_state_104(void)
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
static void ldv_ldv_initialize_105(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
void *ldv_err_ptr(long error ) ;
void ldv_linux_usb_dev_atomic_inc(atomic_t *v ) ;
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v ) ;
unsigned long ldv_linux_lib_find_bit_find_first_bit(unsigned long size ) ;
extern void ldv_after_alloc(void * ) ;
static void ldv_mutex_lock_128(struct mutex *ldv_func_arg1 ) ;
int ldv_linux_kernel_locking_mutex_mutex_trylock_ts_ctxlock_of_gru_thread_state(struct mutex *lock ) ;
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
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
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
static unsigned long ldv_find_next_bit_111(unsigned long const *addr , unsigned long size ,
                                           unsigned long offset ) ;
static unsigned long ldv_find_next_bit_113(unsigned long const *addr , unsigned long size ,
                                           unsigned long offset ) ;
static unsigned long ldv_find_next_bit_115(unsigned long const *addr , unsigned long size ,
                                           unsigned long offset ) ;
static unsigned long ldv_find_next_bit_117(unsigned long const *addr , unsigned long size ,
                                           unsigned long offset ) ;
static unsigned long ldv_find_first_bit_95(unsigned long const *addr , unsigned long size ) ;
static unsigned long ldv_find_first_bit_110(unsigned long const *addr , unsigned long size ) ;
static unsigned long ldv_find_first_bit_112(unsigned long const *addr , unsigned long size ) ;
static unsigned long ldv_find_first_bit_114(unsigned long const *addr , unsigned long size ) ;
static unsigned long ldv_find_first_bit_116(unsigned long const *addr , unsigned long size ) ;
static unsigned long ldv_find_first_zero_bit_124(unsigned long const *addr , unsigned long size ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head, head->next);
  }
  return;
}
}
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
  goto ldv_3602;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3602;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3602;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3602;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3602: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
__inline static void clflush(void volatile *__p )
{
  {
  __asm__ volatile ("clflush %0": "+m" (*((char volatile *)__p)));
  return;
}
}
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
__inline static void *ERR_CAST(void const *ptr )
{
  {
  return ((void *)ptr);
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
__inline static void prefetchw(void const *x )
{
  {
  __asm__ volatile ("661:\n\tprefetcht0 (%1)\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 1*32+31)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\tprefetchw (%1)\n6641:\n\t.popsection": : "i" (0),
                       "r" (x));
  return;
}
}
extern void __xchg_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v ) ;
__inline static int atomic_add_return(int i , atomic_t *v ) ;
__inline static int atomic_sub_return(int i , atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = atomic_add_return(- i, v);
  }
  return (tmp);
}
}
void ldv_linux_kernel_locking_spinlock_spin_lock_bs_lock_of_gru_blade_state(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_bs_lock_of_gru_blade_state(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_gs_asid_lock_of_gru_state(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_gs_asid_lock_of_gru_state(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_gs_lock_of_gru_state(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_gs_lock_of_gru_state(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_ms_asid_lock_of_gru_mm_struct(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_ms_asid_lock_of_gru_mm_struct(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_vd_lock_of_gru_vma_data(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_vd_lock_of_gru_vma_data(void) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static int ldv_mutex_trylock_118(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_129(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_130(struct mutex *ldv_func_arg1 ) ;
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
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_7262;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_7262;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_7262;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_7262;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7262: ;
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
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_7274;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_7274;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_7274;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_7274;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7274: ;
  return;
}
}
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
__inline static void ldv_spin_lock_96(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_97(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_96(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_97(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_104(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_108(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_120(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_108(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_108(spinlock_t *lock ) ;
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
__inline static void ldv_spin_unlock_99(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_98(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_99(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_105(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_109(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_109(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_123(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_109(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_109(spinlock_t *lock ) ;
extern unsigned long volatile jiffies ;
extern int down_write_trylock(struct rw_semaphore * ) ;
extern int zap_vma_ptes(struct vm_area_struct * , unsigned long , unsigned long ) ;
extern int remap_pfn_range(struct vm_area_struct * , unsigned long , unsigned long ,
                           unsigned long , pgprot_t ) ;
extern long schedule_timeout(long ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static int uv_numa_blade_id(void)
{
  void const *__vpp_verify ;
  unsigned long tcp_ptr__ ;
  {
  __vpp_verify = (void const *)0;
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off), "0" (& __uv_hub_info));
  return ((int )((struct uv_hub_info_s *)tcp_ptr__)->numa_blade_id);
}
}
__inline static void gru_flush_cache(void *p )
{
  {
  {
  clflush((void volatile *)p);
  }
  return;
}
}
__inline static struct gru_context_configuration_handle *get_cch(void *base , int ctxnum )
{
  {
  return ((struct gru_context_configuration_handle *)(base + ((unsigned long )(ctxnum * 256) + 67239936UL)));
}
}
int cch_allocate(struct gru_context_configuration_handle *cch ) ;
int cch_start(struct gru_context_configuration_handle *cch ) ;
int cch_interrupt(struct gru_context_configuration_handle *cch ) ;
int cch_deallocate(struct gru_context_configuration_handle *cch ) ;
int cch_interrupt_sync(struct gru_context_configuration_handle *cch ) ;
__inline static void __lock_handle(void *h )
{
  int tmp ;
  {
  goto ldv_33599;
  ldv_33598:
  {
  cpu_relax();
  }
  ldv_33599:
  {
  tmp = test_and_set_bit(1L, (unsigned long volatile *)h);
  }
  if (tmp != 0) {
    goto ldv_33598;
  } else {
  }
  return;
}
}
__inline static void __unlock_handle(void *h )
{
  {
  {
  clear_bit(1L, (unsigned long volatile *)h);
  }
  return;
}
}
__inline static void lock_cch_handle(struct gru_context_configuration_handle *cch )
{
  {
  {
  __lock_handle((void *)cch);
  }
  return;
}
}
__inline static void unlock_cch_handle(struct gru_context_configuration_handle *cch )
{
  {
  {
  __unlock_handle((void *)cch);
  }
  return;
}
}
__inline static int is_kernel_context(struct gru_thread_state *gts )
{
  {
  return ((unsigned long )gts->ts_mm == (unsigned long )((struct mm_struct *)0));
}
}
struct device *grudev ;
struct gru_thread_state *gru_find_thread_state(struct vm_area_struct *vma , int tsid ) ;
struct gru_thread_state *gru_alloc_thread_state(struct vm_area_struct *vma , int tsid ) ;
struct gru_state *gru_assign_gru_context(struct gru_thread_state *gts ) ;
void gru_load_context(struct gru_thread_state *gts ) ;
void gru_steal_context(struct gru_thread_state *gts ) ;
int gru_update_cch(struct gru_thread_state *gts ) ;
void gru_check_context_placement(struct gru_thread_state *gts ) ;
int gru_cpu_fault_map_id(void) ;
void gru_flush_all_tlb(struct gru_state *gru ) ;
struct gru_thread_state *gru_alloc_gts(struct vm_area_struct *vma , int cbr_au_count ,
                                       int dsr_au_count , unsigned char tlb_preload_count ,
                                       int options , int tsid ) ;
unsigned long gru_reserve_cb_resources(struct gru_state *gru , int cbr_au_count ,
                                       char *cbmap ) ;
unsigned long gru_reserve_ds_resources(struct gru_state *gru , int dsr_au_count ,
                                       char *dsmap ) ;
struct gru_mm_struct *gru_register_mmu_notifier(void) ;
void gru_drop_mmu_notifier(struct gru_mm_struct *gms ) ;
unsigned long gru_options ;
static struct device_driver gru_driver =
     {"gru", 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct device gru_device =
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
                                           {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, (unsigned char)0,
           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
    "", 0, {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
    0, & gru_driver, 0, 0, {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0, (_Bool)0,
                            (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}},
                                                                                 0U,
                                                                                 0U,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                            {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0,
                                                                 0UL}}}}, {0, 0}}},
                            0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0,
                                                    0, {(char)0, (char)0, (char)0,
                                                        (char)0, (char)0, (char)0,
                                                        (char)0, (char)0, (char)0,
                                                        (char)0, (char)0, (char)0,
                                                        (char)0, (char)0, (char)0,
                                                        (char)0}, {0, {0, 0}, 0, 0,
                                                                   0UL}}, 0UL, {{0L},
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
                            {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                               0}},
                            {0}, {0}, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                            (unsigned char)0, (unsigned char)0, (unsigned char)0,
                            (unsigned char)0, (unsigned char)0, (unsigned char)0,
                            (unsigned char)0, (unsigned char)0, 0, 0, 0, 0, 0UL, 0UL,
                            0UL, 0UL, 0, 0, 0}, 0, 0, 0, 0, 0ULL, 0UL, 0, {0, 0},
    0, 0, {0, 0}, 0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
    {0, 0}, {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0};
struct device *grudev = & gru_device;
int gru_cpu_fault_map_id(void)
{
  int cpu ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int id ;
  int core ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr ;
  void const *__vpp_verify___1 ;
  unsigned long __ptr___0 ;
  void const *__vpp_verify___2 ;
  unsigned long __ptr___1 ;
  {
  __vpp_verify = (void const *)0;
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
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_33729;
  case_2:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_33729;
  case_4:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_33729;
  case_8:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_33729;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_33729:
  pscr_ret__ = pfo_ret__;
  goto ldv_33735;
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
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_33739;
  case_2___1:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_33739;
  case_4___0:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_33739;
  case_8___0:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_33739;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_33739:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_33735;
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
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_33748;
  case_2___2:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_33748;
  case_4___2:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_33748;
  case_8___1:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_33748;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_33748:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_33735;
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
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_33757;
  case_2___3:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_33757;
  case_4___3:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_33757;
  case_8___3:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_33757;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_33757:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_33735;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_33735;
  switch_break: ;
  }
  ldv_33735:
  cpu = pscr_ret__;
  __vpp_verify___0 = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& x86_cpu_to_apicid));
  __vpp_verify___1 = (void const *)0;
  __asm__ ("": "=r" (__ptr___0): "0" (& x86_cpu_to_apicid));
  core = (((int )*((u16 *)(__ptr + __per_cpu_offset[cpu])) >> 2) & 4) | (((int )*((u16 *)(__ptr___0 + __per_cpu_offset[cpu])) >> 1) & 3);
  __vpp_verify___2 = (void const *)0;
  __asm__ ("": "=r" (__ptr___1): "0" (& x86_cpu_to_apicid));
  id = core + (((int )*((u16 *)(__ptr___1 + __per_cpu_offset[cpu])) >> 5) & 1) * 8;
  return (id);
}
}
static int gru_wrap_asid(struct gru_state *gru )
{
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_33787;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_33787;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_33787;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_33787;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_33787:
    pscr_ret__ = pfo_ret__;
    goto ldv_33793;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33797;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33797;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33797;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33797;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_33797:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_33793;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33806;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33806;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33806;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33806;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_33806:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_33793;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33815;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33815;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33815;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33815;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_33815:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_33793;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_33793;
    switch_break: ;
    }
    ldv_33793:
    {
    printk("\017GRU:%d %s: gid %d\n", pscr_ret__, "gru_wrap_asid", (int )gru->gs_gid);
    }
  } else {
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.asid_wrap);
    }
  } else {
  }
  gru->gs_asid_gen = gru->gs_asid_gen + 1U;
  return (8);
}
}
static int gru_reset_asid_limit(struct gru_state *gru , int asid )
{
  int i ;
  int gid ;
  int inuse_asid ;
  int limit ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int tmp ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___0 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  int pscr_ret_____1 ;
  void const *__vpp_verify___1 ;
  int pfo_ret_____7 ;
  int pfo_ret_____8 ;
  int pfo_ret_____9 ;
  int pfo_ret_____10 ;
  {
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_33837;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_33837;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_33837;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_33837;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_33837:
    pscr_ret__ = pfo_ret__;
    goto ldv_33843;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33847;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33847;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33847;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33847;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_33847:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_33843;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33856;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33856;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33856;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33856;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_33856:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_33843;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33865;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33865;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33865;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33865;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_33865:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_33843;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_33843;
    switch_break: ;
    }
    ldv_33843:
    {
    printk("\017GRU:%d %s: gid %d, asid 0x%x\n", pscr_ret__, "gru_reset_asid_limit",
           (int )gru->gs_gid, asid);
    }
  } else {
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.asid_next);
    }
  } else {
  }
  limit = 16777200;
  if (asid >= limit) {
    {
    asid = gru_wrap_asid(gru);
    }
  } else {
  }
  {
  gru_flush_all_tlb(gru);
  gid = (int )gru->gs_gid;
  }
  again:
  i = 0;
  goto ldv_33918;
  ldv_33917: ;
  if ((unsigned long )gru->gs_gts[i] == (unsigned long )((struct gru_thread_state *)0)) {
    goto ldv_33875;
  } else {
    {
    tmp = is_kernel_context(gru->gs_gts[i]);
    }
    if (tmp != 0) {
      goto ldv_33875;
    } else {
    }
  }
  inuse_asid = (int )((gru->gs_gts[i])->ts_gms)->ms_asids[gid].mt_asid;
  if ((int )gru_options & 1) {
    __vpp_verify___0 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___4;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___5;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___6;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___7;
    } else {
    }
    goto switch_default___8;
    case_1___4: ;
    {
    if (4UL == 1UL) {
      goto case_1___5;
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
    case_1___5:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_33881;
    case_2___4:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_33881;
    case_4___4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_33881;
    case_8___4:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_33881;
    switch_default___4:
    {
    __bad_percpu_size();
    }
    switch_break___5: ;
    }
    ldv_33881:
    pscr_ret_____0 = pfo_ret_____3;
    goto ldv_33887;
    case_2___5: ;
    {
    if (4UL == 1UL) {
      goto case_1___6;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___6;
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
    case_1___6:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_33891;
    case_2___6:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_33891;
    case_4___5:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_33891;
    case_8___5:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_33891;
    switch_default___5:
    {
    __bad_percpu_size();
    }
    switch_break___6: ;
    }
    ldv_33891:
    pscr_ret_____0 = pfo_ret_____4;
    goto ldv_33887;
    case_4___6: ;
    {
    if (4UL == 1UL) {
      goto case_1___7;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___7;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___7;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___6;
    } else {
    }
    goto switch_default___6;
    case_1___7:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_33900;
    case_2___7:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_33900;
    case_4___7:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_33900;
    case_8___6:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_33900;
    switch_default___6:
    {
    __bad_percpu_size();
    }
    switch_break___7: ;
    }
    ldv_33900:
    pscr_ret_____0 = pfo_ret_____5;
    goto ldv_33887;
    case_8___7: ;
    {
    if (4UL == 1UL) {
      goto case_1___8;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___8;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___8;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___8;
    } else {
    }
    goto switch_default___7;
    case_1___8:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_33909;
    case_2___8:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_33909;
    case_4___8:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_33909;
    case_8___8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_33909;
    switch_default___7:
    {
    __bad_percpu_size();
    }
    switch_break___8: ;
    }
    ldv_33909:
    pscr_ret_____0 = pfo_ret_____6;
    goto ldv_33887;
    switch_default___8:
    {
    __bad_size_call_parameter();
    }
    goto ldv_33887;
    switch_break___4: ;
    }
    ldv_33887:
    {
    printk("\017GRU:%d %s: gid %d, gts %p, gms %p, inuse 0x%x, cxt %d\n", pscr_ret_____0,
           "gru_reset_asid_limit", (int )gru->gs_gid, gru->gs_gts[i], (gru->gs_gts[i])->ts_gms,
           inuse_asid, i);
    }
  } else {
  }
  if (inuse_asid == asid) {
    asid = asid + 8;
    if (asid >= limit) {
      limit = 16777200;
      if (asid > 16777199) {
        {
        asid = gru_wrap_asid(gru);
        }
      } else {
      }
      goto again;
    } else {
    }
  } else {
  }
  if (inuse_asid > asid && inuse_asid < limit) {
    limit = inuse_asid;
  } else {
  }
  ldv_33875:
  i = i + 1;
  ldv_33918: ;
  if (i <= 15) {
    goto ldv_33917;
  } else {
  }
  gru->gs_asid_limit = (unsigned int )limit;
  gru->gs_asid = (unsigned int )asid;
  if ((int )gru_options & 1) {
    __vpp_verify___1 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___9;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___10;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___11;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___12;
    } else {
    }
    goto switch_default___13;
    case_1___9: ;
    {
    if (4UL == 1UL) {
      goto case_1___10;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___9;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___9;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___9;
    } else {
    }
    goto switch_default___9;
    case_1___10:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_33925;
    case_2___9:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_33925;
    case_4___9:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_33925;
    case_8___9:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_33925;
    switch_default___9:
    {
    __bad_percpu_size();
    }
    switch_break___10: ;
    }
    ldv_33925:
    pscr_ret_____1 = pfo_ret_____7;
    goto ldv_33931;
    case_2___10: ;
    {
    if (4UL == 1UL) {
      goto case_1___11;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___11;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___10;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___10;
    } else {
    }
    goto switch_default___10;
    case_1___11:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_33935;
    case_2___11:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_33935;
    case_4___10:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_33935;
    case_8___10:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_33935;
    switch_default___10:
    {
    __bad_percpu_size();
    }
    switch_break___11: ;
    }
    ldv_33935:
    pscr_ret_____1 = pfo_ret_____8;
    goto ldv_33931;
    case_4___11: ;
    {
    if (4UL == 1UL) {
      goto case_1___12;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___12;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___12;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___11;
    } else {
    }
    goto switch_default___11;
    case_1___12:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_33944;
    case_2___12:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_33944;
    case_4___12:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_33944;
    case_8___11:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_33944;
    switch_default___11:
    {
    __bad_percpu_size();
    }
    switch_break___12: ;
    }
    ldv_33944:
    pscr_ret_____1 = pfo_ret_____9;
    goto ldv_33931;
    case_8___12: ;
    {
    if (4UL == 1UL) {
      goto case_1___13;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___13;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___13;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___13;
    } else {
    }
    goto switch_default___12;
    case_1___13:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_33953;
    case_2___13:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_33953;
    case_4___13:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_33953;
    case_8___13:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_33953;
    switch_default___12:
    {
    __bad_percpu_size();
    }
    switch_break___13: ;
    }
    ldv_33953:
    pscr_ret_____1 = pfo_ret_____10;
    goto ldv_33931;
    switch_default___13:
    {
    __bad_size_call_parameter();
    }
    goto ldv_33931;
    switch_break___9: ;
    }
    ldv_33931:
    {
    printk("\017GRU:%d %s: gid %d, new asid 0x%x, new_limit 0x%x\n", pscr_ret_____1,
           "gru_reset_asid_limit", (int )gru->gs_gid, asid, limit);
    }
  } else {
  }
  return (asid);
}
}
static int gru_assign_asid(struct gru_state *gru )
{
  int asid ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  gru->gs_asid = gru->gs_asid + 8U;
  asid = (int )gru->gs_asid;
  if ((unsigned int )asid >= gru->gs_asid_limit) {
    {
    asid = gru_reset_asid_limit(gru, asid);
    }
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_33970;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_33970;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_33970;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_33970;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_33970:
    pscr_ret__ = pfo_ret__;
    goto ldv_33976;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33980;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33980;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33980;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33980;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_33980:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_33976;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33989;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33989;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33989;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33989;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_33989:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_33976;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33998;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33998;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33998;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33998;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_33998:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_33976;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_33976;
    switch_break: ;
    }
    ldv_33976:
    {
    printk("\017GRU:%d %s: gid %d, asid 0x%x\n", pscr_ret__, "gru_assign_asid", (int )gru->gs_gid,
           asid);
    }
  } else {
  }
  return (asid);
}
}
static unsigned long reserve_resources(unsigned long *p , int n , int mmax , char *idx )
{
  unsigned long bits ;
  int i ;
  unsigned long tmp ;
  char *tmp___0 ;
  int tmp___1 ;
  {
  bits = 0UL;
  goto ldv_34016;
  ldv_34015:
  {
  tmp = ldv_find_first_bit_95((unsigned long const *)p, (unsigned long )mmax);
  i = (int )tmp;
  }
  if (i == mmax) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grumain.c"),
                         "i" (176), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  __clear_bit((long )i, (unsigned long volatile *)p);
  __set_bit((long )i, (unsigned long volatile *)(& bits));
  }
  if ((unsigned long )idx != (unsigned long )((char *)0)) {
    tmp___0 = idx;
    idx = idx + 1;
    *tmp___0 = (char )i;
  } else {
  }
  ldv_34016:
  tmp___1 = n;
  n = n - 1;
  if (tmp___1 != 0) {
    goto ldv_34015;
  } else {
  }
  return (bits);
}
}
unsigned long gru_reserve_cb_resources(struct gru_state *gru , int cbr_au_count ,
                                       char *cbmap )
{
  unsigned long tmp ;
  {
  {
  tmp = reserve_resources(& gru->gs_cbr_map, cbr_au_count, 64, cbmap);
  }
  return (tmp);
}
}
unsigned long gru_reserve_ds_resources(struct gru_state *gru , int dsr_au_count ,
                                       char *dsmap )
{
  unsigned long tmp ;
  {
  {
  tmp = reserve_resources(& gru->gs_dsr_map, dsr_au_count, 32, dsmap);
  }
  return (tmp);
}
}
static void reserve_gru_resources(struct gru_state *gru , struct gru_thread_state *gts )
{
  {
  {
  gru->gs_active_contexts = (unsigned short )((int )gru->gs_active_contexts + 1);
  gts->ts_cbr_map = gru_reserve_cb_resources(gru, (int )gts->ts_cbr_au_count, (char *)(& gts->ts_cbr_idx));
  gts->ts_dsr_map = gru_reserve_ds_resources(gru, (int )gts->ts_dsr_au_count, (char *)0);
  }
  return;
}
}
static void free_gru_resources(struct gru_state *gru , struct gru_thread_state *gts )
{
  {
  gru->gs_active_contexts = (unsigned short )((int )gru->gs_active_contexts - 1);
  gru->gs_cbr_map = gru->gs_cbr_map | gts->ts_cbr_map;
  gru->gs_dsr_map = gru->gs_dsr_map | gts->ts_dsr_map;
  return;
}
}
static int check_gru_resources(struct gru_state *gru , int cbr_au_count , int dsr_au_count ,
                               int max_active_contexts )
{
  unsigned long tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = __arch_hweight64((__u64 )gru->gs_cbr_map);
  }
  if (tmp >= (unsigned long )cbr_au_count) {
    {
    tmp___0 = __arch_hweight64((__u64 )gru->gs_dsr_map);
    }
    if (tmp___0 >= (unsigned long )dsr_au_count) {
      if ((int )gru->gs_active_contexts < max_active_contexts) {
        tmp___1 = 1;
      } else {
        tmp___1 = 0;
      }
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
static int gru_load_mm_tracker(struct gru_state *gru , struct gru_thread_state *gts )
{
  struct gru_mm_struct *gms ;
  struct gru_mm_tracker *asids ;
  unsigned short ctxbitmap ;
  int asid ;
  long tmp ;
  int tmp___1 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  {
  gms = gts->ts_gms;
  asids = (struct gru_mm_tracker *)(& gms->ms_asids) + (unsigned long )gru->gs_gid;
  ctxbitmap = (unsigned short )(1 << gts->ts_ctxnum);
  ldv_spin_lock_96(& gms->ms_asid_lock);
  asid = (int )asids->mt_asid;
  ldv_spin_lock_97(& gru->gs_asid_lock);
  }
  if (asid == 0 || ((unsigned int )asids->mt_ctxbitmap == 0U && asids->mt_asid_gen != gru->gs_asid_gen)) {
    {
    asid = gru_assign_asid(gru);
    asids->mt_asid = (unsigned int )asid;
    asids->mt_asid_gen = gru->gs_asid_gen;
    }
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.asid_new);
      }
    } else {
    }
  } else
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.asid_reuse);
    }
  } else {
  }
  {
  ldv_spin_unlock_98(& gru->gs_asid_lock);
  tmp = ldv__builtin_expect((unsigned int )((int )asids->mt_ctxbitmap & (int )ctxbitmap) != 0U,
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grumain.c"),
                         "i" (260), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  asids->mt_ctxbitmap = (int )asids->mt_ctxbitmap | (int )ctxbitmap;
  tmp___1 = variable_test_bit((long )gru->gs_gid, (unsigned long const volatile *)(& gms->ms_asidmap));
  }
  if (tmp___1 == 0) {
    {
    __set_bit((long )gru->gs_gid, (unsigned long volatile *)(& gms->ms_asidmap));
    }
  } else {
  }
  {
  ldv_spin_unlock_99(& gms->ms_asid_lock);
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34055;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34055;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34055;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34055;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34055:
    pscr_ret__ = pfo_ret__;
    goto ldv_34061;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34065;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34065;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34065;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34065;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34065:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34061;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34074;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34074;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34074;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34074;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34074:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34061;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34083;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34083;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34083;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34083;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34083:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34061;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34061;
    switch_break: ;
    }
    ldv_34061:
    {
    printk("\017GRU:%d %s: gid %d, gts %p, gms %p, ctxnum %d, asid 0x%x, asidmap 0x%lx\n",
           pscr_ret__, "gru_load_mm_tracker", (int )gru->gs_gid, gts, gms, gts->ts_ctxnum,
           asid, gms->ms_asidmap[0]);
    }
  } else {
  }
  return (asid);
}
}
static void gru_unload_mm_tracker(struct gru_state *gru , struct gru_thread_state *gts )
{
  struct gru_mm_struct *gms ;
  struct gru_mm_tracker *asids ;
  unsigned short ctxbitmap ;
  long tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  {
  gms = gts->ts_gms;
  asids = (struct gru_mm_tracker *)(& gms->ms_asids) + (unsigned long )gru->gs_gid;
  ctxbitmap = (unsigned short )(1 << gts->ts_ctxnum);
  ldv_spin_lock_96(& gms->ms_asid_lock);
  ldv_spin_lock_97(& gru->gs_asid_lock);
  tmp = ldv__builtin_expect(((int )asids->mt_ctxbitmap & (int )ctxbitmap) != (int )ctxbitmap,
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grumain.c"),
                         "i" (284), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  asids->mt_ctxbitmap = (int )asids->mt_ctxbitmap ^ (int )ctxbitmap;
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34104;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34104;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34104;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34104;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34104:
    pscr_ret__ = pfo_ret__;
    goto ldv_34110;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34114;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34114;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34114;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34114;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34114:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34110;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34123;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34123;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34123;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34123;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34123:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34110;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34132;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34132;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34132;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34132;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34132:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34110;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34110;
    switch_break: ;
    }
    ldv_34110:
    {
    printk("\017GRU:%d %s: gid %d, gts %p, gms %p, ctxnum 0x%d, asidmap 0x%lx\n",
           pscr_ret__, "gru_unload_mm_tracker", (int )gru->gs_gid, gts, gms, gts->ts_ctxnum,
           gms->ms_asidmap[0]);
    }
  } else {
  }
  {
  ldv_spin_unlock_98(& gru->gs_asid_lock);
  ldv_spin_unlock_99(& gms->ms_asid_lock);
  }
  return;
}
}
void gts_drop(struct gru_thread_state *gts )
{
  int tmp ;
  {
  if ((unsigned long )gts != (unsigned long )((struct gru_thread_state *)0)) {
    {
    tmp = atomic_sub_return(1, & gts->ts_refcnt);
    }
    if (tmp == 0) {
      if ((unsigned long )gts->ts_gms != (unsigned long )((struct gru_mm_struct *)0)) {
        {
        gru_drop_mmu_notifier(gts->ts_gms);
        }
      } else {
      }
      {
      kfree((void const *)gts);
      }
      if ((gru_options & 2UL) != 0UL) {
        {
        atomic_long_inc(& gru_stats.gts_free);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static struct gru_thread_state *gru_find_current_gts_nolock(struct gru_vma_data *vdata ,
                                                            int tsid )
{
  struct gru_thread_state *gts ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)vdata->vd_head.next;
  gts = (struct gru_thread_state *)__mptr;
  goto ldv_34154;
  ldv_34153: ;
  if (gts->ts_tsid == tsid) {
    return (gts);
  } else {
  }
  __mptr___0 = (struct list_head const *)gts->ts_next.next;
  gts = (struct gru_thread_state *)__mptr___0;
  ldv_34154: ;
  if ((unsigned long )(& gts->ts_next) != (unsigned long )(& vdata->vd_head)) {
    goto ldv_34153;
  } else {
  }
  return ((struct gru_thread_state *)0);
}
}
struct gru_thread_state *gru_alloc_gts(struct vm_area_struct *vma , int cbr_au_count ,
                                       int dsr_au_count , unsigned char tlb_preload_count ,
                                       int options , int tsid )
{
  struct gru_thread_state *gts ;
  struct gru_mm_struct *gms ;
  int bytes ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct task_struct *tmp___1 ;
  bool tmp___2 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  void *tmp___3 ;
  {
  {
  bytes = (dsr_au_count * 4 + cbr_au_count) * 256;
  bytes = (int )((unsigned int )bytes + 464U);
  tmp = kmalloc((size_t )bytes, 208U);
  gts = (struct gru_thread_state *)tmp;
  }
  if ((unsigned long )gts == (unsigned long )((struct gru_thread_state *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((struct gru_thread_state *)tmp___0);
  } else {
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.gts_alloc);
    }
  } else {
  }
  {
  memset((void *)gts, 0, 464UL);
  atomic_set(& gts->ts_refcnt, 1);
  __mutex_init(& gts->ts_ctxlock, "&gts->ts_ctxlock", & __key);
  gts->ts_cbr_au_count = (unsigned char )cbr_au_count;
  gts->ts_dsr_au_count = (unsigned char )dsr_au_count;
  gts->ts_tlb_preload_count = tlb_preload_count;
  gts->ts_user_options = (long )options;
  gts->ts_user_blade_id = -1;
  gts->ts_user_chiplet_id = -1;
  gts->ts_tsid = tsid;
  gts->ts_ctxnum = -1;
  gts->ts_tlb_int_select = -1;
  gts->ts_cch_req_slice = -1;
  gts->ts_sizeavail = 1U;
  }
  if ((unsigned long )vma != (unsigned long )((struct vm_area_struct *)0)) {
    {
    tmp___1 = get_current___0();
    gts->ts_mm = tmp___1->mm;
    gts->ts_vma = vma;
    gms = gru_register_mmu_notifier();
    tmp___2 = IS_ERR((void const *)gms);
    }
    if ((int )tmp___2) {
      goto err;
    } else {
    }
    gts->ts_gms = gms;
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34174;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34174;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34174;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34174;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34174:
    pscr_ret__ = pfo_ret__;
    goto ldv_34180;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34184;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34184;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34184;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34184;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34184:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34180;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34193;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34193;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34193;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34193;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34193:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34180;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34202;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34202;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34202;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34202;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34202:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34180;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34180;
    switch_break: ;
    }
    ldv_34180:
    {
    printk("\017GRU:%d %s: alloc gts %p\n", pscr_ret__, "gru_alloc_gts", gts);
    }
  } else {
  }
  return (gts);
  err:
  {
  gts_drop(gts);
  tmp___3 = ERR_CAST((void const *)gms);
  }
  return ((struct gru_thread_state *)tmp___3);
}
}
struct gru_vma_data *gru_alloc_vma_data(struct vm_area_struct *vma , int tsid )
{
  struct gru_vma_data *vdata ;
  void *tmp ;
  struct lock_class_key __key ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  {
  vdata = (struct gru_vma_data *)0;
  tmp = kmalloc(112UL, 208U);
  vdata = (struct gru_vma_data *)tmp;
  }
  if ((unsigned long )vdata == (unsigned long )((struct gru_vma_data *)0)) {
    return ((struct gru_vma_data *)0);
  } else {
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.vdata_alloc);
    }
  } else {
  }
  {
  INIT_LIST_HEAD(& vdata->vd_head);
  spinlock_check(& vdata->vd_lock);
  __raw_spin_lock_init(& vdata->vd_lock.__annonCompField18.rlock, "&(&vdata->vd_lock)->rlock",
                       & __key);
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34222;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34222;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34222;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34222;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34222:
    pscr_ret__ = pfo_ret__;
    goto ldv_34228;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34232;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34232;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34232;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34232;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34232:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34228;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34241;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34241;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34241;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34241;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34241:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34228;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34250;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34250;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34250;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34250;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34250:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34228;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34228;
    switch_break: ;
    }
    ldv_34228:
    {
    printk("\017GRU:%d %s: alloc vdata %p\n", pscr_ret__, "gru_alloc_vma_data", vdata);
    }
  } else {
  }
  return (vdata);
}
}
struct gru_thread_state *gru_find_thread_state(struct vm_area_struct *vma , int tsid )
{
  struct gru_vma_data *vdata ;
  struct gru_thread_state *gts ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  {
  vdata = (struct gru_vma_data *)vma->vm_private_data;
  ldv_spin_lock_104(& vdata->vd_lock);
  gts = gru_find_current_gts_nolock(vdata, tsid);
  ldv_spin_unlock_105(& vdata->vd_lock);
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34270;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34270;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34270;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34270;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34270:
    pscr_ret__ = pfo_ret__;
    goto ldv_34276;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34280;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34280;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34280;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34280;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34280:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34276;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34289;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34289;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34289;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34289;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34289:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34276;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34298;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34298;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34298;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34298;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34298:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34276;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34276;
    switch_break: ;
    }
    ldv_34276:
    {
    printk("\017GRU:%d %s: vma %p, gts %p\n", pscr_ret__, "gru_find_thread_state",
           vma, gts);
    }
  } else {
  }
  return (gts);
}
}
struct gru_thread_state *gru_alloc_thread_state(struct vm_area_struct *vma , int tsid )
{
  struct gru_vma_data *vdata ;
  struct gru_thread_state *gts ;
  struct gru_thread_state *ngts ;
  bool tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  {
  vdata = (struct gru_vma_data *)vma->vm_private_data;
  gts = gru_alloc_gts(vma, vdata->vd_cbr_au_count, vdata->vd_dsr_au_count, (int )vdata->vd_tlb_preload_count,
                      (int )vdata->vd_user_options, tsid);
  tmp = IS_ERR((void const *)gts);
  }
  if ((int )tmp) {
    return (gts);
  } else {
  }
  {
  ldv_spin_lock_104(& vdata->vd_lock);
  ngts = gru_find_current_gts_nolock(vdata, tsid);
  }
  if ((unsigned long )ngts != (unsigned long )((struct gru_thread_state *)0)) {
    {
    gts_drop(gts);
    gts = ngts;
    }
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.gts_double_allocate);
      }
    } else {
    }
  } else {
    {
    list_add(& gts->ts_next, & vdata->vd_head);
    }
  }
  {
  ldv_spin_unlock_105(& vdata->vd_lock);
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34319;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34319;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34319;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34319;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34319:
    pscr_ret__ = pfo_ret__;
    goto ldv_34325;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34329;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34329;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34329;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34329;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34329:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34325;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34338;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34338;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34338;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34338;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34338:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34325;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34347;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34347;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34347;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34347;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34347:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34325;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34325;
    switch_break: ;
    }
    ldv_34325:
    {
    printk("\017GRU:%d %s: vma %p, gts %p\n", pscr_ret__, "gru_alloc_thread_state",
           vma, gts);
    }
  } else {
  }
  return (gts);
}
}
static void gru_free_gru_context(struct gru_thread_state *gts )
{
  struct gru_state *gru ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int tmp___0 ;
  long tmp___1 ;
  {
  gru = gts->ts_gru;
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34365;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34365;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34365;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34365;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34365:
    pscr_ret__ = pfo_ret__;
    goto ldv_34371;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34375;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34375;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34375;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34375;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34375:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34371;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34384;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34384;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34384;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34384;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34384:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34371;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34393;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34393;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34393;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34393;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34393:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34371;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34371;
    switch_break: ;
    }
    ldv_34371:
    {
    printk("\017GRU:%d %s: gts %p, gid %d\n", pscr_ret__, "gru_free_gru_context",
           gts, (int )gru->gs_gid);
    }
  } else {
  }
  {
  ldv_spin_lock_108(& gru->gs_lock);
  gru->gs_gts[gts->ts_ctxnum] = (struct gru_thread_state *)0;
  free_gru_resources(gru, gts);
  tmp___0 = variable_test_bit((long )gts->ts_ctxnum, (unsigned long const volatile *)(& gru->gs_context_map));
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grumain.c"),
                         "i" (447), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  __clear_bit((long )gts->ts_ctxnum, (unsigned long volatile *)(& gru->gs_context_map));
  gts->ts_ctxnum = -1;
  gts->ts_gru = (struct gru_state *)0;
  gts->ts_blade = -1;
  ldv_spin_unlock_109(& gru->gs_lock);
  gts_drop(gts);
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.free_context);
    }
  } else {
  }
  return;
}
}
static void prefetch_data(void *p , int num , int stride )
{
  int tmp ;
  {
  goto ldv_34408;
  ldv_34407:
  {
  prefetchw((void const *)p);
  p = p + (unsigned long )stride;
  }
  ldv_34408:
  tmp = num;
  num = num - 1;
  if (tmp > 0) {
    goto ldv_34407;
  } else {
  }
  return;
}
}
__inline static long gru_copy_handle(void *d , void *s )
{
  {
  {
  memcpy(d, (void const *)s, 64UL);
  }
  return (64L);
}
}
static void gru_prefetch_context(void *gseg , void *cb , void *cbe , unsigned long cbrmap ,
                                 unsigned long length )
{
  int i ;
  int scr ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  {
  prefetch_data(gseg + 131072UL, (int )(length / 64UL), 64);
  tmp = ldv_find_first_bit_110((unsigned long const *)(& cbrmap), 64UL);
  scr = (int )tmp;
  }
  goto ldv_34427;
  ldv_34426:
  i = scr * 2;
  goto ldv_34424;
  ldv_34423:
  {
  prefetch_data(cb, 1, 64);
  prefetch_data(cbe + (unsigned long )(i * 256), 1, 64);
  cb = cb + 256UL;
  i = i + 1;
  }
  ldv_34424: ;
  if (i < (scr + 1) * 2) {
    goto ldv_34423;
  } else {
  }
  {
  tmp___0 = ldv_find_next_bit_111((unsigned long const *)(& cbrmap), 64UL, (unsigned long )(scr + 1));
  scr = (int )tmp___0;
  }
  ldv_34427: ;
  if (scr <= 63) {
    goto ldv_34426;
  } else {
  }
  return;
}
}
static void gru_load_context_data(void *save , void *grubase , int ctxnum , unsigned long cbrmap ,
                                  unsigned long dsrmap , int data_valid )
{
  void *gseg ;
  void *cb ;
  void *cbe ;
  unsigned long length ;
  int i ;
  int scr ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  unsigned long tmp___3 ;
  {
  {
  gseg = grubase + (unsigned long )(ctxnum * 4194304);
  cb = gseg;
  cbe = grubase + 67174400UL;
  tmp = __arch_hweight64((__u64 )dsrmap);
  length = tmp * 1024UL;
  gru_prefetch_context(gseg, cb, cbe, cbrmap, length);
  tmp___0 = ldv_find_first_bit_112((unsigned long const *)(& cbrmap), 64UL);
  scr = (int )tmp___0;
  }
  goto ldv_34447;
  ldv_34446:
  i = scr * 2;
  goto ldv_34444;
  ldv_34443: ;
  if (data_valid != 0) {
    {
    tmp___1 = gru_copy_handle(cb, save);
    save = save + (unsigned long )tmp___1;
    tmp___2 = gru_copy_handle(cbe + (unsigned long )(i * 256), save);
    save = save + (unsigned long )tmp___2;
    }
  } else {
    {
    memset(cb, 0, 64UL);
    memset(cbe + (unsigned long )(i * 256), 0, 64UL);
    }
  }
  {
  __asm__ volatile ("mfence": : : "memory");
  gru_flush_cache(cbe + (unsigned long )(i * 256));
  cb = cb + 256UL;
  i = i + 1;
  }
  ldv_34444: ;
  if (i < (scr + 1) * 2) {
    goto ldv_34443;
  } else {
  }
  {
  tmp___3 = ldv_find_next_bit_113((unsigned long const *)(& cbrmap), 64UL, (unsigned long )(scr + 1));
  scr = (int )tmp___3;
  }
  ldv_34447: ;
  if (scr <= 63) {
    goto ldv_34446;
  } else {
  }
  if (data_valid != 0) {
    {
    memcpy(gseg + 131072UL, (void const *)save, length);
    }
  } else {
    {
    memset(gseg + 131072UL, 0, length);
    }
  }
  return;
}
}
static void gru_unload_context_data(void *save , void *grubase , int ctxnum , unsigned long cbrmap ,
                                    unsigned long dsrmap )
{
  void *gseg ;
  void *cb ;
  void *cbe ;
  unsigned long length ;
  int i ;
  int scr ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  unsigned long tmp___5 ;
  {
  {
  gseg = grubase + (unsigned long )(ctxnum * 4194304);
  cb = gseg;
  cbe = grubase + 67174400UL;
  tmp = __arch_hweight64((__u64 )dsrmap);
  length = tmp * 1024UL;
  tmp___0 = ldv_find_first_bit_114((unsigned long const *)(& cbrmap), 64UL);
  scr = (int )tmp___0;
  }
  goto ldv_34466;
  ldv_34465:
  i = scr * 2;
  goto ldv_34463;
  ldv_34462:
  {
  gru_flush_cache(cbe + (unsigned long )(i * 256));
  i = i + 1;
  }
  ldv_34463: ;
  if (i < (scr + 1) * 2) {
    goto ldv_34462;
  } else {
  }
  {
  tmp___1 = ldv_find_next_bit_115((unsigned long const *)(& cbrmap), 64UL, (unsigned long )(scr + 1));
  scr = (int )tmp___1;
  }
  ldv_34466: ;
  if (scr <= 63) {
    goto ldv_34465;
  } else {
  }
  {
  __asm__ volatile ("mfence": : : "memory");
  gru_prefetch_context(gseg, cb, cbe, cbrmap, length);
  tmp___2 = ldv_find_first_bit_116((unsigned long const *)(& cbrmap), 64UL);
  scr = (int )tmp___2;
  }
  goto ldv_34472;
  ldv_34471:
  i = scr * 2;
  goto ldv_34469;
  ldv_34468:
  {
  tmp___3 = gru_copy_handle(save, cb);
  save = save + (unsigned long )tmp___3;
  tmp___4 = gru_copy_handle(save, cbe + (unsigned long )(i * 256));
  save = save + (unsigned long )tmp___4;
  cb = cb + 256UL;
  i = i + 1;
  }
  ldv_34469: ;
  if (i < (scr + 1) * 2) {
    goto ldv_34468;
  } else {
  }
  {
  tmp___5 = ldv_find_next_bit_117((unsigned long const *)(& cbrmap), 64UL, (unsigned long )(scr + 1));
  scr = (int )tmp___5;
  }
  ldv_34472: ;
  if (scr <= 63) {
    goto ldv_34471;
  } else {
  }
  {
  memcpy(save, (void const *)gseg + 131072U, length);
  }
  return;
}
}
void gru_unload_context(struct gru_thread_state *gts , int savestate )
{
  struct gru_state *gru ;
  struct gru_context_configuration_handle *cch ;
  int ctxnum ;
  int tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  gru = gts->ts_gru;
  ctxnum = gts->ts_ctxnum;
  tmp = is_kernel_context(gts);
  }
  if (tmp == 0) {
    {
    zap_vma_ptes(gts->ts_vma, (gts->ts_vma)->vm_start + (unsigned long )gts->ts_tsid * 262144UL,
                 262144UL);
    }
  } else {
  }
  {
  cch = get_cch(gru->gs_gru_base_vaddr, ctxnum);
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34486;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34486;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34486;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34486;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34486:
    pscr_ret__ = pfo_ret__;
    goto ldv_34492;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34496;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34496;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34496;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34496;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34496:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34492;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34505;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34505;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34505;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34505;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34505:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34492;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34514;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34514;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34514;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34514;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34514:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34492;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34492;
    switch_break: ;
    }
    ldv_34492:
    {
    printk("\017GRU:%d %s: gts %p, cbrmap 0x%lx, dsrmap 0x%lx\n", pscr_ret__, "gru_unload_context",
           gts, gts->ts_cbr_map, gts->ts_dsr_map);
    }
  } else {
  }
  {
  lock_cch_handle(cch);
  tmp___0 = cch_interrupt_sync(cch);
  }
  if (tmp___0 != 0) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grumain.c"),
                         "i" (569), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___1 = is_kernel_context(gts);
  }
  if (tmp___1 == 0) {
    {
    gru_unload_mm_tracker(gru, gts);
    }
  } else {
  }
  if (savestate != 0) {
    {
    gru_unload_context_data((void *)(& gts->ts_gdata), gru->gs_gru_base_vaddr, ctxnum,
                            gts->ts_cbr_map, gts->ts_dsr_map);
    gts->ts_data_valid = 1;
    }
  } else {
  }
  {
  tmp___2 = cch_deallocate(cch);
  }
  if (tmp___2 != 0) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grumain.c"),
                         "i" (581), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  unlock_cch_handle(cch);
  gru_free_gru_context(gts);
  }
  return;
}
}
void gru_load_context(struct gru_thread_state *gts )
{
  struct gru_state *gru ;
  struct gru_context_configuration_handle *cch ;
  int i ;
  int err ;
  int asid ;
  int ctxnum ;
  int tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int tmp___0 ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___0 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  {
  {
  gru = gts->ts_gru;
  ctxnum = gts->ts_ctxnum;
  cch = get_cch(gru->gs_gru_base_vaddr, ctxnum);
  lock_cch_handle(cch);
  cch->tfm_fault_bit_enable = (unsigned long )gts->ts_user_options - 2UL <= 1UL;
  cch->tlb_int_enable = gts->ts_user_options == 2L;
  }
  if ((unsigned int )*((unsigned char *)cch + 1UL) != 0U) {
    {
    gts->ts_tlb_int_select = gru_cpu_fault_map_id();
    cch->tlb_int_select = (unsigned char )gts->ts_tlb_int_select;
    }
  } else {
  }
  if ((int )((signed char )gts->ts_cch_req_slice) >= 0) {
    cch->req_slice_set_enable = 1U;
    cch->req_slice = (unsigned char )gts->ts_cch_req_slice;
  } else {
    cch->req_slice_set_enable = 0U;
  }
  {
  cch->tfm_done_bit_enable = 0U;
  cch->dsr_allocation_map = (unsigned int )gts->ts_dsr_map;
  cch->cbr_allocation_map = gts->ts_cbr_map;
  tmp = is_kernel_context(gts);
  }
  if (tmp != 0) {
    cch->unmap_enable = 1U;
    cch->tfm_done_bit_enable = 1U;
    cch->cb_int_enable = 1U;
    cch->tlb_int_select = 0U;
  } else {
    {
    cch->unmap_enable = 0U;
    cch->tfm_done_bit_enable = 0U;
    cch->cb_int_enable = 0U;
    asid = gru_load_mm_tracker(gru, gts);
    i = 0;
    }
    goto ldv_34533;
    ldv_34532:
    cch->asid[i] = (unsigned int )(asid + i);
    cch->sizeavail[i] = gts->ts_sizeavail;
    i = i + 1;
    ldv_34533: ;
    if (i <= 7) {
      goto ldv_34532;
    } else {
    }
  }
  {
  err = cch_allocate(cch);
  }
  if (err != 0) {
    if ((int )gru_options & 1) {
      __vpp_verify = (void const *)0;
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
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
      goto ldv_34540;
      case_2:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_34540;
      case_4:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_34540;
      case_8:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_34540;
      switch_default:
      {
      __bad_percpu_size();
      }
      switch_break___0: ;
      }
      ldv_34540:
      pscr_ret__ = pfo_ret__;
      goto ldv_34546;
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
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_34550;
      case_2___1:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_34550;
      case_4___0:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_34550;
      case_8___0:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_34550;
      switch_default___0:
      {
      __bad_percpu_size();
      }
      switch_break___1: ;
      }
      ldv_34550:
      pscr_ret__ = pfo_ret_____0;
      goto ldv_34546;
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
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_34559;
      case_2___2:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_34559;
      case_4___2:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_34559;
      case_8___1:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_34559;
      switch_default___1:
      {
      __bad_percpu_size();
      }
      switch_break___2: ;
      }
      ldv_34559:
      pscr_ret__ = pfo_ret_____1;
      goto ldv_34546;
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
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_34568;
      case_2___3:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_34568;
      case_4___3:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_34568;
      case_8___3:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_34568;
      switch_default___2:
      {
      __bad_percpu_size();
      }
      switch_break___3: ;
      }
      ldv_34568:
      pscr_ret__ = pfo_ret_____2;
      goto ldv_34546;
      switch_default___3:
      {
      __bad_size_call_parameter();
      }
      goto ldv_34546;
      switch_break: ;
      }
      ldv_34546:
      {
      printk("\017GRU:%d %s: err %d: cch %p, gts %p, cbr 0x%lx, dsr 0x%lx\n", pscr_ret__,
             "gru_load_context", err, cch, gts, gts->ts_cbr_map, gts->ts_dsr_map);
      }
    } else {
    }
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grumain.c"),
                         "i" (638), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  gru_load_context_data((void *)(& gts->ts_gdata), gru->gs_gru_base_vaddr, ctxnum,
                        gts->ts_cbr_map, gts->ts_dsr_map, gts->ts_data_valid);
  tmp___0 = cch_start(cch);
  }
  if (tmp___0 != 0) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grumain.c"),
                         "i" (645), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  unlock_cch_handle(cch);
  }
  if ((int )gru_options & 1) {
    __vpp_verify___0 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___4;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___5;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___6;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___7;
    } else {
    }
    goto switch_default___8;
    case_1___4: ;
    {
    if (4UL == 1UL) {
      goto case_1___5;
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
    case_1___5:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34582;
    case_2___4:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34582;
    case_4___4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34582;
    case_8___4:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34582;
    switch_default___4:
    {
    __bad_percpu_size();
    }
    switch_break___5: ;
    }
    ldv_34582:
    pscr_ret_____0 = pfo_ret_____3;
    goto ldv_34588;
    case_2___5: ;
    {
    if (4UL == 1UL) {
      goto case_1___6;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___6;
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
    case_1___6:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34592;
    case_2___6:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34592;
    case_4___5:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34592;
    case_8___5:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34592;
    switch_default___5:
    {
    __bad_percpu_size();
    }
    switch_break___6: ;
    }
    ldv_34592:
    pscr_ret_____0 = pfo_ret_____4;
    goto ldv_34588;
    case_4___6: ;
    {
    if (4UL == 1UL) {
      goto case_1___7;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___7;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___7;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___6;
    } else {
    }
    goto switch_default___6;
    case_1___7:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34601;
    case_2___7:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34601;
    case_4___7:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34601;
    case_8___6:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34601;
    switch_default___6:
    {
    __bad_percpu_size();
    }
    switch_break___7: ;
    }
    ldv_34601:
    pscr_ret_____0 = pfo_ret_____5;
    goto ldv_34588;
    case_8___7: ;
    {
    if (4UL == 1UL) {
      goto case_1___8;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___8;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___8;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___8;
    } else {
    }
    goto switch_default___7;
    case_1___8:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34610;
    case_2___8:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34610;
    case_4___8:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34610;
    case_8___8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34610;
    switch_default___7:
    {
    __bad_percpu_size();
    }
    switch_break___8: ;
    }
    ldv_34610:
    pscr_ret_____0 = pfo_ret_____6;
    goto ldv_34588;
    switch_default___8:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34588;
    switch_break___4: ;
    }
    ldv_34588:
    {
    printk("\017GRU:%d %s: gid %d, gts %p, cbrmap 0x%lx, dsrmap 0x%lx, tie %d, tis %d\n",
           pscr_ret_____0, "gru_load_context", (int )(gts->ts_gru)->gs_gid, gts, gts->ts_cbr_map,
           gts->ts_dsr_map, gts->ts_user_options == 2L, gts->ts_tlb_int_select);
    }
  } else {
  }
  return;
}
}
int gru_update_cch(struct gru_thread_state *gts )
{
  struct gru_context_configuration_handle *cch ;
  struct gru_state *gru ;
  int i ;
  int ctxnum ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  gru = gts->ts_gru;
  ctxnum = gts->ts_ctxnum;
  ret = 0;
  cch = get_cch(gru->gs_gru_base_vaddr, ctxnum);
  lock_cch_handle(cch);
  }
  if ((unsigned int )*((unsigned char *)cch + 2UL) == 8U) {
    if ((unsigned long )gru->gs_gts[gts->ts_ctxnum] != (unsigned long )gts) {
      goto exit;
    } else {
    }
    {
    tmp = cch_interrupt(cch);
    }
    if (tmp != 0) {
      {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grumain.c"),
                           "i" (671), "i" (12UL));
      __builtin_unreachable();
      }
    } else {
    }
    i = 0;
    goto ldv_34628;
    ldv_34627:
    cch->sizeavail[i] = gts->ts_sizeavail;
    i = i + 1;
    ldv_34628: ;
    if (i <= 7) {
      goto ldv_34627;
    } else {
    }
    {
    gts->ts_tlb_int_select = gru_cpu_fault_map_id();
    tmp___0 = gru_cpu_fault_map_id();
    cch->tlb_int_select = (unsigned char )tmp___0;
    cch->tfm_fault_bit_enable = (unsigned long )gts->ts_user_options - 2UL <= 1UL;
    tmp___1 = cch_start(cch);
    }
    if (tmp___1 != 0) {
      {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grumain.c"),
                           "i" (680), "i" (12UL));
      __builtin_unreachable();
      }
    } else {
    }
    ret = 1;
  } else {
  }
  exit:
  {
  unlock_cch_handle(cch);
  }
  return (ret);
}
}
static int gru_retarget_intr(struct gru_thread_state *gts )
{
  int tmp ;
  int tmp___0 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int tmp___1 ;
  {
  if (gts->ts_tlb_int_select < 0) {
    return (0);
  } else {
    {
    tmp = gru_cpu_fault_map_id();
    }
    if (gts->ts_tlb_int_select == tmp) {
      return (0);
    } else {
    }
  }
  if ((int )gru_options & 1) {
    {
    tmp___0 = gru_cpu_fault_map_id();
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34638;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34638;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34638;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34638;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34638:
    pscr_ret__ = pfo_ret__;
    goto ldv_34644;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34648;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34648;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34648;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34648;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34648:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34644;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34657;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34657;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34657;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34657;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34657:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34644;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34666;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34666;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34666;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34666;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34666:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34644;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34644;
    switch_break: ;
    }
    ldv_34644:
    {
    printk("\017GRU:%d %s: retarget from %d to %d\n", pscr_ret__, "gru_retarget_intr",
           gts->ts_tlb_int_select, tmp___0);
    }
  } else {
  }
  {
  tmp___1 = gru_update_cch(gts);
  }
  return (tmp___1);
}
}
static int gru_check_chiplet_assignment(struct gru_state *gru , struct gru_thread_state *gts )
{
  int blade_id ;
  int chiplet_id ;
  {
  blade_id = (int )gts->ts_user_blade_id;
  if (blade_id < 0) {
    {
    blade_id = uv_numa_blade_id();
    }
  } else {
  }
  chiplet_id = (int )gts->ts_user_chiplet_id;
  return ((int )gru->gs_blade_id == blade_id && (chiplet_id < 0 || chiplet_id == (int )gru->gs_chiplet_id));
}
}
void gru_check_context_placement(struct gru_thread_state *gts )
{
  struct gru_state *gru ;
  struct task_struct *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  gru = gts->ts_gru;
  if ((unsigned long )gru == (unsigned long )((struct gru_state *)0)) {
    return;
  } else {
    {
    tmp = get_current___0();
    }
    if (gts->ts_tgid_owner != tmp->tgid) {
      return;
    } else {
    }
  }
  {
  tmp___1 = gru_check_chiplet_assignment(gru, gts);
  }
  if (tmp___1 == 0) {
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.check_context_unload);
      }
    } else {
    }
    {
    gru_unload_context(gts, 1);
    }
  } else {
    {
    tmp___0 = gru_retarget_intr(gts);
    }
    if (tmp___0 != 0) {
      if ((gru_options & 2UL) != 0UL) {
        {
        atomic_long_inc(& gru_stats.check_context_retarget_intr);
        }
      } else {
      }
    } else {
    }
  }
  return;
}
}
static int is_gts_stealable(struct gru_thread_state *gts , struct gru_blade_state *bs )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = is_kernel_context(gts);
  }
  if (tmp___1 != 0) {
    {
    tmp = down_write_trylock(& bs->bs_kgts_sema);
    }
    return (tmp);
  } else {
    {
    tmp___0 = ldv_mutex_trylock_118(& gts->ts_ctxlock);
    }
    return (tmp___0);
  }
}
}
static void gts_stolen(struct gru_thread_state *gts , struct gru_blade_state *bs )
{
  int tmp ;
  {
  {
  tmp = is_kernel_context(gts);
  }
  if (tmp != 0) {
    {
    up_write(& bs->bs_kgts_sema);
    }
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.steal_kernel_context);
      }
    } else {
    }
  } else {
    {
    ldv_mutex_unlock_119(& gts->ts_ctxlock);
    }
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.steal_user_context);
      }
    } else {
    }
  }
  return;
}
}
void gru_steal_context(struct gru_thread_state *gts )
{
  struct gru_blade_state *blade ;
  struct gru_state *gru ;
  struct gru_state *gru0 ;
  struct gru_thread_state *ngts ;
  int ctxnum ;
  int ctxnum0 ;
  int flag ;
  int cbr ;
  int dsr ;
  int blade_id ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  ngts = (struct gru_thread_state *)0;
  flag = 0;
  blade_id = (int )gts->ts_user_blade_id;
  if (blade_id < 0) {
    {
    blade_id = uv_numa_blade_id();
    }
  } else {
  }
  {
  cbr = (int )gts->ts_cbr_au_count;
  dsr = (int )gts->ts_dsr_au_count;
  blade = gru_base[blade_id];
  ldv_spin_lock_120(& blade->bs_lock);
  ctxnum = blade->bs_lru_ctxnum <= 13 ? blade->bs_lru_ctxnum + 1 : 0;
  gru = blade->bs_lru_gru;
  }
  if (ctxnum == 0) {
    gru = (unsigned long )gru < (unsigned long )((struct gru_state *)(& blade->bs_grus) + 1UL) ? gru + 1UL : (struct gru_state *)(& blade->bs_grus);
  } else {
  }
  blade->bs_lru_gru = gru;
  blade->bs_lru_ctxnum = ctxnum;
  ctxnum0 = ctxnum;
  gru0 = gru;
  ldv_34710:
  {
  tmp___1 = gru_check_chiplet_assignment(gru, gts);
  }
  if (tmp___1 != 0) {
    {
    tmp = check_gru_resources(gru, cbr, dsr, 16);
    }
    if (tmp != 0) {
      goto ldv_34706;
    } else {
    }
    {
    ldv_spin_lock_108(& gru->gs_lock);
    }
    goto ldv_34709;
    ldv_34708: ;
    if ((flag != 0 && (unsigned long )gru == (unsigned long )gru0) && ctxnum == ctxnum0) {
      goto ldv_34707;
    } else {
    }
    ngts = gru->gs_gts[ctxnum];
    if ((unsigned long )ngts != (unsigned long )((struct gru_thread_state *)0)) {
      {
      tmp___0 = is_gts_stealable(ngts, blade);
      }
      if (tmp___0 != 0) {
        goto ldv_34707;
      } else {
      }
    } else {
    }
    ngts = (struct gru_thread_state *)0;
    ctxnum = ctxnum + 1;
    ldv_34709: ;
    if (ctxnum <= 15) {
      goto ldv_34708;
    } else {
    }
    ldv_34707:
    {
    ldv_spin_unlock_109(& gru->gs_lock);
    }
    if ((unsigned long )ngts != (unsigned long )((struct gru_thread_state *)0) || ((flag != 0 && (unsigned long )gru == (unsigned long )gru0) && ctxnum == ctxnum0)) {
      goto ldv_34706;
    } else {
    }
  } else {
  }
  if (flag != 0 && (unsigned long )gru == (unsigned long )gru0) {
    goto ldv_34706;
  } else {
  }
  flag = 1;
  ctxnum = 0;
  gru = (unsigned long )gru < (unsigned long )((struct gru_state *)(& blade->bs_grus) + 1UL) ? gru + 1UL : (struct gru_state *)(& blade->bs_grus);
  goto ldv_34710;
  ldv_34706:
  {
  ldv_spin_unlock_123(& blade->bs_lock);
  }
  if ((unsigned long )ngts != (unsigned long )((struct gru_thread_state *)0)) {
    {
    gts->ustats.context_stolen = gts->ustats.context_stolen + 1UL;
    ngts->ts_steal_jiffies = jiffies;
    tmp___2 = is_kernel_context(ngts);
    gru_unload_context(ngts, tmp___2 == 0);
    gts_stolen(ngts, blade);
    }
  } else
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.steal_context_failed);
    }
  } else {
  }
  if ((int )gru_options & 1) {
    {
    tmp___3 = __arch_hweight64((__u64 )gru->gs_dsr_map);
    tmp___4 = __arch_hweight64((__u64 )gru->gs_cbr_map);
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34716;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34716;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34716;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34716;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34716:
    pscr_ret__ = pfo_ret__;
    goto ldv_34722;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34726;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34726;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34726;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34726;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34726:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34722;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34735;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34735;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34735;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34735;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34735:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34722;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34744;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34744;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34744;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34744;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34744:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34722;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34722;
    switch_break: ;
    }
    ldv_34722:
    {
    printk("\017GRU:%d %s: stole gid %d, ctxnum %d from gts %p. Need cb %d, ds %d; avail cb %ld, ds %ld\n",
           pscr_ret__, "gru_steal_context", (int )gru->gs_gid, ctxnum, ngts, cbr,
           dsr, tmp___4, tmp___3);
    }
  } else {
  }
  return;
}
}
static int gru_assign_context_number(struct gru_state *gru )
{
  int ctxnum ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_find_first_zero_bit_124((unsigned long const *)(& gru->gs_context_map),
                                    16UL);
  ctxnum = (int )tmp;
  __set_bit((long )ctxnum, (unsigned long volatile *)(& gru->gs_context_map));
  }
  return (ctxnum);
}
}
struct gru_state *gru_assign_gru_context(struct gru_thread_state *gts )
{
  struct gru_state *gru ;
  struct gru_state *grux ;
  int i ;
  int max_active_contexts ;
  int blade_id ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___0 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  {
  blade_id = (int )gts->ts_user_blade_id;
  if (blade_id < 0) {
    {
    blade_id = uv_numa_blade_id();
    }
  } else {
  }
  again:
  gru = (struct gru_state *)0;
  max_active_contexts = 16;
  grux = (struct gru_state *)(& (gru_base[blade_id])->bs_grus);
  i = 0;
  goto ldv_34769;
  ldv_34768:
  {
  tmp = gru_check_chiplet_assignment(grux, gts);
  }
  if (tmp == 0) {
    goto ldv_34766;
  } else {
  }
  {
  tmp___0 = check_gru_resources(grux, (int )gts->ts_cbr_au_count, (int )gts->ts_dsr_au_count,
                                max_active_contexts);
  }
  if (tmp___0 != 0) {
    gru = grux;
    max_active_contexts = (int )grux->gs_active_contexts;
    if (max_active_contexts == 0) {
      goto ldv_34767;
    } else {
    }
  } else {
  }
  ldv_34766:
  i = i + 1;
  grux = grux + 1;
  ldv_34769: ;
  if (i <= 1) {
    goto ldv_34768;
  } else {
  }
  ldv_34767: ;
  if ((unsigned long )gru != (unsigned long )((struct gru_state *)0)) {
    {
    ldv_spin_lock_108(& gru->gs_lock);
    tmp___1 = check_gru_resources(gru, (int )gts->ts_cbr_au_count, (int )gts->ts_dsr_au_count,
                                  16);
    }
    if (tmp___1 == 0) {
      {
      ldv_spin_unlock_109(& gru->gs_lock);
      }
      goto again;
    } else {
    }
    {
    reserve_gru_resources(gru, gts);
    gts->ts_gru = gru;
    gts->ts_blade = (char )gru->gs_blade_id;
    gts->ts_ctxnum = gru_assign_context_number(gru);
    atomic_inc(& gts->ts_refcnt);
    gru->gs_gts[gts->ts_ctxnum] = gts;
    ldv_spin_unlock_109(& gru->gs_lock);
    }
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.assign_context);
      }
    } else {
    }
    if ((int )gru_options & 1) {
      __vpp_verify = (void const *)0;
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
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
      goto ldv_34775;
      case_2:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_34775;
      case_4:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_34775;
      case_8:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_34775;
      switch_default:
      {
      __bad_percpu_size();
      }
      switch_break___0: ;
      }
      ldv_34775:
      pscr_ret__ = pfo_ret__;
      goto ldv_34781;
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
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_34785;
      case_2___1:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_34785;
      case_4___0:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_34785;
      case_8___0:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_34785;
      switch_default___0:
      {
      __bad_percpu_size();
      }
      switch_break___1: ;
      }
      ldv_34785:
      pscr_ret__ = pfo_ret_____0;
      goto ldv_34781;
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
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_34794;
      case_2___2:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_34794;
      case_4___2:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_34794;
      case_8___1:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_34794;
      switch_default___1:
      {
      __bad_percpu_size();
      }
      switch_break___2: ;
      }
      ldv_34794:
      pscr_ret__ = pfo_ret_____1;
      goto ldv_34781;
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
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_34803;
      case_2___3:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_34803;
      case_4___3:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_34803;
      case_8___3:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_34803;
      switch_default___2:
      {
      __bad_percpu_size();
      }
      switch_break___3: ;
      }
      ldv_34803:
      pscr_ret__ = pfo_ret_____2;
      goto ldv_34781;
      switch_default___3:
      {
      __bad_size_call_parameter();
      }
      goto ldv_34781;
      switch_break: ;
      }
      ldv_34781:
      {
      printk("\017GRU:%d %s: gseg %p, gts %p, gid %d, ctx %d, cbr %d, dsr %d\n", pscr_ret__,
             "gru_assign_gru_context", (gts->ts_gru)->gs_gru_base_vaddr + (unsigned long )(gts->ts_ctxnum * 4194304),
             gts, (int )(gts->ts_gru)->gs_gid, gts->ts_ctxnum, (int )gts->ts_cbr_au_count,
             (int )gts->ts_dsr_au_count);
      }
    } else {
    }
  } else {
    if ((int )gru_options & 1) {
      __vpp_verify___0 = (void const *)0;
      {
      if (4UL == 1UL) {
        goto case_1___4;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___5;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___6;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___7;
      } else {
      }
      goto switch_default___8;
      case_1___4: ;
      {
      if (4UL == 1UL) {
        goto case_1___5;
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
      case_1___5:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
      goto ldv_34817;
      case_2___4:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
      goto ldv_34817;
      case_4___4:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
      goto ldv_34817;
      case_8___4:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
      goto ldv_34817;
      switch_default___4:
      {
      __bad_percpu_size();
      }
      switch_break___5: ;
      }
      ldv_34817:
      pscr_ret_____0 = pfo_ret_____3;
      goto ldv_34823;
      case_2___5: ;
      {
      if (4UL == 1UL) {
        goto case_1___6;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___6;
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
      case_1___6:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
      goto ldv_34827;
      case_2___6:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
      goto ldv_34827;
      case_4___5:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
      goto ldv_34827;
      case_8___5:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
      goto ldv_34827;
      switch_default___5:
      {
      __bad_percpu_size();
      }
      switch_break___6: ;
      }
      ldv_34827:
      pscr_ret_____0 = pfo_ret_____4;
      goto ldv_34823;
      case_4___6: ;
      {
      if (4UL == 1UL) {
        goto case_1___7;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___7;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___7;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___6;
      } else {
      }
      goto switch_default___6;
      case_1___7:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
      goto ldv_34836;
      case_2___7:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
      goto ldv_34836;
      case_4___7:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
      goto ldv_34836;
      case_8___6:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
      goto ldv_34836;
      switch_default___6:
      {
      __bad_percpu_size();
      }
      switch_break___7: ;
      }
      ldv_34836:
      pscr_ret_____0 = pfo_ret_____5;
      goto ldv_34823;
      case_8___7: ;
      {
      if (4UL == 1UL) {
        goto case_1___8;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___8;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___8;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___8;
      } else {
      }
      goto switch_default___7;
      case_1___8:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
      goto ldv_34845;
      case_2___8:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
      goto ldv_34845;
      case_4___8:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
      goto ldv_34845;
      case_8___8:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
      goto ldv_34845;
      switch_default___7:
      {
      __bad_percpu_size();
      }
      switch_break___8: ;
      }
      ldv_34845:
      pscr_ret_____0 = pfo_ret_____6;
      goto ldv_34823;
      switch_default___8:
      {
      __bad_size_call_parameter();
      }
      goto ldv_34823;
      switch_break___4: ;
      }
      ldv_34823:
      {
      printk("\017GRU:%d %s: failed to allocate a GTS %s\n", pscr_ret_____0, "gru_assign_gru_context",
             (char *)"");
      }
    } else {
    }
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.assign_context_failed);
      }
    } else {
    }
  }
  return (gru);
}
}
int gru_fault(struct vm_area_struct *vma , struct vm_fault *vmf )
{
  struct gru_thread_state *gts ;
  unsigned long paddr ;
  unsigned long vaddr ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  struct task_struct *tmp ;
  long volatile __ret ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  struct gru_state *tmp___4 ;
  {
  vaddr = (unsigned long )vmf->virtual_address;
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34865;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34865;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34865;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34865;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34865:
    pscr_ret__ = pfo_ret__;
    goto ldv_34871;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34875;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34875;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34875;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34875;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34875:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34871;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34884;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34884;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34884;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34884;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34884:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34871;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34893;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34893;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34893;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34893;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34893:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34871;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34871;
    switch_break: ;
    }
    ldv_34871:
    {
    printk("\017GRU:%d %s: vma %p, vaddr 0x%lx (0x%lx)\n", pscr_ret__, "gru_fault",
           vma, vaddr, vaddr & 0xfffffffffffc0000UL);
    }
  } else {
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.nopfn);
    }
  } else {
  }
  {
  gts = gru_find_thread_state(vma, (int )((vaddr - vma->vm_start) / 262144UL));
  }
  if ((unsigned long )gts == (unsigned long )((struct gru_thread_state *)0)) {
    return (2);
  } else {
  }
  again:
  {
  ldv_mutex_lock_128(& gts->ts_ctxlock);
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  gru_check_context_placement(gts);
  }
  if ((unsigned long )gts->ts_gru == (unsigned long )((struct gru_state *)0)) {
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.load_user_context);
      }
    } else {
    }
    {
    tmp___4 = gru_assign_gru_context(gts);
    }
    if ((unsigned long )tmp___4 == (unsigned long )((struct gru_state *)0)) {
      {
      __asm__ volatile ("": : : "memory");
      __preempt_count_sub(1);
      ldv_mutex_unlock_129(& gts->ts_ctxlock);
      tmp = get_current___0();
      }
      tmp->task_state_change = (unsigned long )((void *)0);
      __ret = 1L;
      {
      if (8UL == 1UL) {
        goto case_1___4;
      } else {
      }
      if (8UL == 2UL) {
        goto case_2___4;
      } else {
      }
      if (8UL == 4UL) {
        goto case_4___4;
      } else {
      }
      if (8UL == 8UL) {
        goto case_8___4;
      } else {
      }
      goto switch_default___4;
      case_1___4:
      {
      tmp___0 = get_current___0();
      __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___0->state): : "memory",
                           "cc");
      }
      goto ldv_34907;
      case_2___4:
      {
      tmp___1 = get_current___0();
      __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___1->state): : "memory",
                           "cc");
      }
      goto ldv_34907;
      case_4___4:
      {
      tmp___2 = get_current___0();
      __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                           "cc");
      }
      goto ldv_34907;
      case_8___4:
      {
      tmp___3 = get_current___0();
      __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                           "cc");
      }
      goto ldv_34907;
      switch_default___4:
      {
      __xchg_wrong_size();
      }
      switch_break___4: ;
      }
      ldv_34907:
      {
      schedule_timeout(5L);
      }
      if (gts->ts_steal_jiffies + 50UL < (unsigned long )jiffies) {
        {
        gru_steal_context(gts);
        }
      } else {
      }
      goto again;
    } else {
    }
    {
    gru_load_context(gts);
    paddr = (gts->ts_gru)->gs_gru_base_paddr + (unsigned long )(gts->ts_ctxnum * 4194304);
    remap_pfn_range(vma, vaddr & 0xfffffffffffc0000UL, paddr >> 12, 262144UL, vma->vm_page_prot);
    }
  } else {
  }
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  ldv_mutex_unlock_130(& gts->ts_ctxlock);
  }
  return (256);
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
__inline static void atomic_inc(atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_inc(v);
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
static unsigned long ldv_find_first_bit_95(unsigned long const *addr , unsigned long size )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_first_bit(size);
  }
  return (tmp);
}
}
__inline static void ldv_spin_lock_96(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ms_asid_lock_of_gru_mm_struct();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_97(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_gs_asid_lock_of_gru_state();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_98(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_gs_asid_lock_of_gru_state();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_99(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_ms_asid_lock_of_gru_mm_struct();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_104(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_vd_lock_of_gru_vma_data();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_105(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_vd_lock_of_gru_vma_data();
  spin_unlock(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_108(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_gs_lock_of_gru_state();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_109(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_gs_lock_of_gru_state();
  spin_unlock(lock);
  }
  return;
}
}
static unsigned long ldv_find_first_bit_110(unsigned long const *addr , unsigned long size )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_first_bit(size);
  }
  return (tmp);
}
}
static unsigned long ldv_find_next_bit_111(unsigned long const *addr , unsigned long size ,
                                           unsigned long offset )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_next_bit(size, offset);
  }
  return (tmp);
}
}
static unsigned long ldv_find_first_bit_112(unsigned long const *addr , unsigned long size )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_first_bit(size);
  }
  return (tmp);
}
}
static unsigned long ldv_find_next_bit_113(unsigned long const *addr , unsigned long size ,
                                           unsigned long offset )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_next_bit(size, offset);
  }
  return (tmp);
}
}
static unsigned long ldv_find_first_bit_114(unsigned long const *addr , unsigned long size )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_first_bit(size);
  }
  return (tmp);
}
}
static unsigned long ldv_find_next_bit_115(unsigned long const *addr , unsigned long size ,
                                           unsigned long offset )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_next_bit(size, offset);
  }
  return (tmp);
}
}
static unsigned long ldv_find_first_bit_116(unsigned long const *addr , unsigned long size )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_first_bit(size);
  }
  return (tmp);
}
}
static unsigned long ldv_find_next_bit_117(unsigned long const *addr , unsigned long size ,
                                           unsigned long offset )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_next_bit(size, offset);
  }
  return (tmp);
}
}
static int ldv_mutex_trylock_118(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_trylock_ts_ctxlock_of_gru_thread_state(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_119(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ts_ctxlock_of_gru_thread_state(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_lock_120(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_bs_lock_of_gru_blade_state();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_123(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_bs_lock_of_gru_blade_state();
  spin_unlock(lock);
  }
  return;
}
}
static unsigned long ldv_find_first_zero_bit_124(unsigned long const *addr , unsigned long size )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_first_bit(size);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_128(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ts_ctxlock_of_gru_thread_state(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_129(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ts_ctxlock_of_gru_thread_state(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_130(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ts_ctxlock_of_gru_thread_state(ldv_func_arg1);
  }
  return;
}
}
long ldv_ptr_err(void const *ptr ) ;
static void ldv_mutex_lock_96(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 ) ;
__inline static pgdval_t native_pgd_val(pgd_t pgd )
{
  {
  return (pgd.pgd);
}
}
__inline static pudval_t native_pud_val(pud_t pud )
{
  {
  return (pud.pud);
}
}
__inline static pmdval_t native_pmd_val(pmd_t pmd )
{
  {
  return (pmd.pmd);
}
}
__inline static pmdval_t pmd_flags(pmd_t pmd )
{
  pmdval_t tmp ;
  {
  {
  tmp = native_pmd_val(pmd);
  }
  return (tmp & 0xffffc00000000fffUL);
}
}
__inline static pteval_t native_pte_val(pte_t pte )
{
  {
  return (pte.pte);
}
}
__inline static pteval_t pte_flags(pte_t pte )
{
  pteval_t tmp ;
  {
  {
  tmp = native_pte_val(pte);
  }
  return (tmp & 0xffffc00000000fffUL);
}
}
extern struct pv_mmu_ops pv_mmu_ops ;
static unsigned long ldv_find_next_bit_100(unsigned long const *addr , unsigned long size ,
                                           unsigned long offset ) ;
static unsigned long ldv_find_next_bit_102(unsigned long const *addr , unsigned long size ,
                                           unsigned long offset ) ;
static unsigned long ldv_find_first_bit_99(unsigned long const *addr , unsigned long size ) ;
static unsigned long ldv_find_first_bit_101(unsigned long const *addr , unsigned long size ) ;
extern void __might_sleep(char const * , int , int ) ;
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
  goto ldv_3566;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3566;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3566;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3566;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3566: ;
  return (pfo_ret__);
}
}
__inline static pteval_t pte_val(pte_t pte )
{
  pteval_t ret ;
  pteval_t __ret___0 ;
  unsigned long __edi___0 ;
  unsigned long __esi___0 ;
  unsigned long __edx___0 ;
  unsigned long __ecx___0 ;
  unsigned long __eax___0 ;
  long tmp___0 ;
  {
  {
  __edi___0 = __edi___0;
  __esi___0 = __esi___0;
  __edx___0 = __edx___0;
  __ecx___0 = __ecx___0;
  __eax___0 = __eax___0;
  tmp___0 = ldv__builtin_expect((unsigned long )pv_mmu_ops.pte_val.func == (unsigned long )((void *)0),
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (451), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax___0): [paravirt_typenum] "i" (81UL),
                       [paravirt_opptr] "i" (& pv_mmu_ops.pte_val.func), [paravirt_clobber] "i" (1),
                       "D" (pte.pte): "memory", "cc");
  __ret___0 = __eax___0;
  ret = __ret___0;
  return (ret);
}
}
__inline static pgdval_t pgd_val(pgd_t pgd )
{
  pgdval_t ret ;
  pgdval_t __ret___0 ;
  unsigned long __edi___0 ;
  unsigned long __esi___0 ;
  unsigned long __edx___0 ;
  unsigned long __ecx___0 ;
  unsigned long __eax___0 ;
  long tmp___0 ;
  {
  {
  __edi___0 = __edi___0;
  __esi___0 = __esi___0;
  __edx___0 = __edx___0;
  __ecx___0 = __ecx___0;
  __eax___0 = __eax___0;
  tmp___0 = ldv__builtin_expect((unsigned long )pv_mmu_ops.pgd_val.func == (unsigned long )((void *)0),
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (479), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax___0): [paravirt_typenum] "i" (83UL),
                       [paravirt_opptr] "i" (& pv_mmu_ops.pgd_val.func), [paravirt_clobber] "i" (1),
                       "D" (pgd.pgd): "memory", "cc");
  __ret___0 = __eax___0;
  ret = __ret___0;
  return (ret);
}
}
__inline static pmdval_t pmd_val(pmd_t pmd )
{
  pmdval_t ret ;
  pmdval_t __ret___0 ;
  unsigned long __edi___0 ;
  unsigned long __esi___0 ;
  unsigned long __edx___0 ;
  unsigned long __ecx___0 ;
  unsigned long __eax___0 ;
  long tmp___0 ;
  {
  {
  __edi___0 = __edi___0;
  __esi___0 = __esi___0;
  __edx___0 = __edx___0;
  __ecx___0 = __ecx___0;
  __eax___0 = __eax___0;
  tmp___0 = ldv__builtin_expect((unsigned long )pv_mmu_ops.pmd_val.func == (unsigned long )((void *)0),
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (572), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax___0): [paravirt_typenum] "i" (86UL),
                       [paravirt_opptr] "i" (& pv_mmu_ops.pmd_val.func), [paravirt_clobber] "i" (1),
                       "D" (pmd.pmd): "memory", "cc");
  __ret___0 = __eax___0;
  ret = __ret___0;
  return (ret);
}
}
__inline static pudval_t pud_val(pud_t pud )
{
  pudval_t ret ;
  pudval_t __ret___0 ;
  unsigned long __edi___0 ;
  unsigned long __esi___0 ;
  unsigned long __edx___0 ;
  unsigned long __ecx___0 ;
  unsigned long __eax___0 ;
  long tmp___0 ;
  {
  {
  __edi___0 = __edi___0;
  __esi___0 = __esi___0;
  __edx___0 = __edx___0;
  __ecx___0 = __ecx___0;
  __eax___0 = __eax___0;
  tmp___0 = ldv__builtin_expect((unsigned long )pv_mmu_ops.pud_val.func == (unsigned long )((void *)0),
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (612), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax___0): [paravirt_typenum] "i" (88UL),
                       [paravirt_opptr] "i" (& pv_mmu_ops.pud_val.func), [paravirt_clobber] "i" (1),
                       "D" (pud.pud): "memory", "cc");
  __ret___0 = __eax___0;
  ret = __ret___0;
  return (ret);
}
}
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static void sync_core(void)
{
  int tmp ;
  {
  __asm__ volatile ("cpuid": "=a" (tmp): "0" (1): "ebx", "ecx", "edx", "memory");
  return;
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
static int ldv_mutex_trylock_104(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_106(struct mutex *ldv_func_arg1 ) ;
__inline static void ldv_spin_lock_108(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_108(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_109(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_109(spinlock_t *lock ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern void complete(struct completion * ) ;
extern void down_read(struct rw_semaphore * ) ;
extern int down_read_trylock(struct rw_semaphore * ) ;
extern void up_read(struct rw_semaphore * ) ;
extern void downgrade_write(struct rw_semaphore * ) ;
extern bool capable(int ) ;
__inline static int pte_dirty(pte_t pte )
{
  pteval_t tmp ;
  {
  {
  tmp = pte_flags(pte);
  }
  return ((int )tmp & 64);
}
}
__inline static int pte_write(pte_t pte )
{
  pteval_t tmp ;
  {
  {
  tmp = pte_flags(pte);
  }
  return ((int )tmp & 2);
}
}
__inline static unsigned long pte_pfn(pte_t pte )
{
  pteval_t tmp ;
  {
  {
  tmp = pte_val(pte);
  }
  return ((tmp & 70368744173568UL) >> 12);
}
}
__inline static int pmd_large(pmd_t pte )
{
  pmdval_t tmp ;
  {
  {
  tmp = pmd_flags(pte);
  }
  return ((int )tmp & 128);
}
}
__inline static int pte_present(pte_t a )
{
  pteval_t tmp ;
  {
  {
  tmp = pte_flags(a);
  }
  return ((int )tmp & 257);
}
}
__inline static int pmd_none(pmd_t pmd )
{
  pmdval_t tmp ;
  {
  {
  tmp = native_pmd_val(pmd);
  }
  return (tmp == 0UL);
}
}
__inline static unsigned long pmd_page_vaddr(pmd_t pmd )
{
  pmdval_t tmp ;
  {
  {
  tmp = pmd_val(pmd);
  }
  return ((tmp & 70368744173568UL) + 0xffff880000000000UL);
}
}
__inline static unsigned long pmd_index(unsigned long address )
{
  {
  return ((address >> 21) & 511UL);
}
}
__inline static unsigned long pte_index(unsigned long address )
{
  {
  return ((address >> 12) & 511UL);
}
}
__inline static pte_t *pte_offset_kernel(pmd_t *pmd , unsigned long address )
{
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  {
  tmp = pte_index(address);
  tmp___0 = pmd_page_vaddr(*pmd);
  }
  return ((pte_t *)(tmp + tmp___0));
}
}
__inline static int pud_none(pud_t pud )
{
  pudval_t tmp ;
  {
  {
  tmp = native_pud_val(pud);
  }
  return (tmp == 0UL);
}
}
__inline static unsigned long pud_page_vaddr(pud_t pud )
{
  pudval_t tmp ;
  {
  {
  tmp = pud_val(pud);
  }
  return ((tmp & 70368744173568UL) + 0xffff880000000000UL);
}
}
__inline static pmd_t *pmd_offset(pud_t *pud , unsigned long address )
{
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  {
  tmp = pmd_index(address);
  tmp___0 = pud_page_vaddr(*pud);
  }
  return ((pmd_t *)(tmp + tmp___0));
}
}
__inline static unsigned long pgd_page_vaddr(pgd_t pgd )
{
  pgdval_t tmp ;
  {
  {
  tmp = pgd_val(pgd);
  }
  return ((tmp & 70368744173568UL) + 0xffff880000000000UL);
}
}
__inline static unsigned long pud_index(unsigned long address )
{
  {
  return ((address >> 30) & 511UL);
}
}
__inline static pud_t *pud_offset(pgd_t *pgd , unsigned long address )
{
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  {
  tmp = pud_index(address);
  tmp___0 = pgd_page_vaddr(*pgd);
  }
  return ((pud_t *)(tmp + tmp___0));
}
}
__inline static int pgd_none(pgd_t pgd )
{
  pgdval_t tmp ;
  {
  {
  tmp = native_pgd_val(pgd);
  }
  return (tmp == 0UL);
}
}
extern void put_page(struct page * ) ;
extern long get_user_pages(struct task_struct * , struct mm_struct * , unsigned long ,
                           unsigned long , int , int , struct page ** , struct vm_area_struct ** ) ;
extern struct vm_area_struct *find_vma(struct mm_struct * , unsigned long ) ;
__inline static int is_vm_hugetlb_page(struct vm_area_struct *vma )
{
  {
  return ((vma->vm_flags & 4194304UL) != 0UL);
}
}
extern void schedule(void) ;
extern void dev_err(struct device const * , char const * , ...) ;
__inline static void *get_gseg_base_address(void *base , int ctxnum )
{
  {
  return (base + (unsigned long )(ctxnum * 4194304));
}
}
__inline static void *get_gseg_base_address_cb(void *base , int ctxnum , int line )
{
  void *tmp ;
  {
  {
  tmp = get_gseg_base_address(base, ctxnum);
  }
  return (tmp + (unsigned long )(line * 256));
}
}
__inline static struct gru_tlb_fault_map *get_tfm(void *base , int ctxnum )
{
  {
  return ((struct gru_tlb_fault_map *)(base + ((unsigned long )(ctxnum * 256) + 67108864UL)));
}
}
__inline static struct gru_control_block_extended *get_cbe(void *base , int ctxnum )
{
  {
  return ((struct gru_control_block_extended *)(base + ((unsigned long )(ctxnum * 256) + 67174400UL)));
}
}
__inline static struct gru_tlb_fault_handle *get_tfh(void *base , int ctxnum )
{
  {
  return ((struct gru_tlb_fault_handle *)(base + ((unsigned long )(ctxnum * 256) + 67207168UL)));
}
}
__inline static unsigned long get_cb_number(void *cb )
{
  {
  return (((unsigned long )cb & 262143UL) / 256UL);
}
}
__inline static struct gru_control_block_extended *gru_tfh_to_cbe(struct gru_tlb_fault_handle *tfh )
{
  unsigned long cbe ;
  {
  cbe = (unsigned long )tfh - 32768UL;
  return ((struct gru_control_block_extended *)cbe);
}
}
int tfh_write_only(struct gru_tlb_fault_handle *tfh , unsigned long paddr , int gaa ,
                   unsigned long vaddr , int asid , int dirty , int pagesize ) ;
void tfh_write_restart(struct gru_tlb_fault_handle *tfh , unsigned long paddr , int gaa ,
                       unsigned long vaddr , int asid , int dirty , int pagesize ) ;
void tfh_user_polling_mode(struct gru_tlb_fault_handle *tfh ) ;
void tfh_exception(struct gru_tlb_fault_handle *tfh ) ;
void gru_flush_tlb_range(struct gru_mm_struct *gms , unsigned long start , unsigned long len ) ;
__inline static unsigned long uv_soc_phys_ram_to_gpa(unsigned long paddr )
{
  void const *__vpp_verify ;
  unsigned long tcp_ptr__ ;
  void const *__vpp_verify___0 ;
  unsigned long tcp_ptr_____0 ;
  void const *__vpp_verify___1 ;
  unsigned long tcp_ptr_____1 ;
  void const *__vpp_verify___2 ;
  unsigned long tcp_ptr_____2 ;
  void const *__vpp_verify___3 ;
  unsigned long tcp_ptr_____3 ;
  void const *__vpp_verify___4 ;
  unsigned long tcp_ptr_____4 ;
  void const *__vpp_verify___5 ;
  unsigned long tcp_ptr_____5 ;
  {
  __vpp_verify___0 = (void const *)0;
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr_____0): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  if (paddr < ((struct uv_hub_info_s *)tcp_ptr_____0)->lowmem_remap_top) {
    __vpp_verify = (void const *)0;
    __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off),
                         "0" (& __uv_hub_info));
    paddr = paddr | ((struct uv_hub_info_s *)tcp_ptr__)->lowmem_remap_base;
  } else {
  }
  __vpp_verify___1 = (void const *)0;
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr_____1): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  paddr = paddr | ((struct uv_hub_info_s *)tcp_ptr_____1)->gnode_upper;
  __vpp_verify___2 = (void const *)0;
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr_____2): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __vpp_verify___3 = (void const *)0;
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr_____3): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __vpp_verify___4 = (void const *)0;
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr_____4): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __vpp_verify___5 = (void const *)0;
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr_____5): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  paddr = ((paddr << (int )((struct uv_hub_info_s *)tcp_ptr_____2)->m_shift) >> (int )((struct uv_hub_info_s *)tcp_ptr_____3)->m_shift) | ((paddr >> (int )((struct uv_hub_info_s *)tcp_ptr_____4)->m_val) << (int )((struct uv_hub_info_s *)tcp_ptr_____5)->n_lshift);
  return (paddr);
}
}
__inline static int is_gru_paddr(unsigned long paddr )
{
  {
  return (paddr >= gru_start_paddr && paddr < gru_end_paddr);
}
}
struct vm_area_struct *gru_find_vma(unsigned long vaddr )
{
  struct vm_area_struct *vma ;
  struct task_struct *tmp ;
  {
  {
  tmp = get_current___1();
  vma = find_vma(tmp->mm, vaddr);
  }
  if (((unsigned long )vma != (unsigned long )((struct vm_area_struct *)0) && vma->vm_start <= vaddr) && (unsigned long )vma->vm_ops == (unsigned long )(& gru_vm_ops)) {
    return (vma);
  } else {
  }
  return ((struct vm_area_struct *)0);
}
}
static struct gru_thread_state *gru_find_lock_gts(unsigned long vaddr )
{
  struct mm_struct *mm ;
  struct task_struct *tmp ;
  struct vm_area_struct *vma ;
  struct gru_thread_state *gts ;
  {
  {
  tmp = get_current___1();
  mm = tmp->mm;
  gts = (struct gru_thread_state *)0;
  down_read(& mm->mmap_sem);
  vma = gru_find_vma(vaddr);
  }
  if ((unsigned long )vma != (unsigned long )((struct vm_area_struct *)0)) {
    {
    gts = gru_find_thread_state(vma, (int )((vaddr - vma->vm_start) / 262144UL));
    }
  } else {
  }
  if ((unsigned long )gts != (unsigned long )((struct gru_thread_state *)0)) {
    {
    ldv_mutex_lock_96(& gts->ts_ctxlock);
    }
  } else {
    {
    up_read(& mm->mmap_sem);
    }
  }
  return (gts);
}
}
static struct gru_thread_state *gru_alloc_locked_gts(unsigned long vaddr )
{
  struct mm_struct *mm ;
  struct task_struct *tmp ;
  struct vm_area_struct *vma ;
  struct gru_thread_state *gts ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = get_current___1();
  mm = tmp->mm;
  tmp___0 = ERR_PTR(-22L);
  gts = (struct gru_thread_state *)tmp___0;
  down_write(& mm->mmap_sem);
  vma = gru_find_vma(vaddr);
  }
  if ((unsigned long )vma == (unsigned long )((struct vm_area_struct *)0)) {
    goto err;
  } else {
  }
  {
  gts = gru_alloc_thread_state(vma, (int )((vaddr - vma->vm_start) / 262144UL));
  tmp___1 = IS_ERR((void const *)gts);
  }
  if ((int )tmp___1) {
    goto err;
  } else {
  }
  {
  ldv_mutex_lock_97(& gts->ts_ctxlock);
  downgrade_write(& mm->mmap_sem);
  }
  return (gts);
  err:
  {
  up_write(& mm->mmap_sem);
  }
  return (gts);
}
}
static void gru_unlock_gts(struct gru_thread_state *gts )
{
  struct task_struct *tmp ;
  {
  {
  ldv_mutex_unlock_98(& gts->ts_ctxlock);
  tmp = get_current___1();
  up_read(& (tmp->mm)->mmap_sem);
  }
  return;
}
}
static void gru_cb_set_istatus_active(struct gru_instruction_bits *cbk )
{
  {
  if ((unsigned long )cbk != (unsigned long )((struct gru_instruction_bits *)0)) {
    cbk->istatus = 2U;
  } else {
  }
  return;
}
}
static void get_clear_fault_map(struct gru_state *gru , struct gru_tlb_fault_map *imap ,
                                struct gru_tlb_fault_map *dmap )
{
  unsigned long i ;
  unsigned long k ;
  struct gru_tlb_fault_map *tfm ;
  int tmp ;
  unsigned long __ret ;
  unsigned long __ret___0 ;
  {
  {
  tmp = gru_cpu_fault_map_id();
  tfm = get_tfm(gru->gs_gru_base_vaddr, tmp);
  prefetchw((void const *)tfm);
  i = 0UL;
  }
  goto ldv_36064;
  ldv_36063:
  k = tfm->fault_bits[i];
  if (k != 0UL) {
    __ret = 0UL;
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
    __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (*((unsigned long *)(& tfm->fault_bits) + i)): : "memory",
                         "cc");
    goto ldv_36049;
    case_2:
    __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (*((unsigned long *)(& tfm->fault_bits) + i)): : "memory",
                         "cc");
    goto ldv_36049;
    case_4:
    __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (*((unsigned long *)(& tfm->fault_bits) + i)): : "memory",
                         "cc");
    goto ldv_36049;
    case_8:
    __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (*((unsigned long *)(& tfm->fault_bits) + i)): : "memory",
                         "cc");
    goto ldv_36049;
    switch_default:
    {
    __xchg_wrong_size();
    }
    switch_break: ;
    }
    ldv_36049:
    k = __ret;
  } else {
  }
  imap->fault_bits[i] = k;
  k = tfm->done_bits[i];
  if (k != 0UL) {
    __ret___0 = 0UL;
    {
    if (8UL == 1UL) {
      goto case_1___0;
    } else {
    }
    if (8UL == 2UL) {
      goto case_2___0;
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
    case_1___0:
    __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret___0), "+m" (*((unsigned long *)(& tfm->done_bits) + i)): : "memory",
                         "cc");
    goto ldv_36057;
    case_2___0:
    __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret___0), "+m" (*((unsigned long *)(& tfm->done_bits) + i)): : "memory",
                         "cc");
    goto ldv_36057;
    case_4___0:
    __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret___0), "+m" (*((unsigned long *)(& tfm->done_bits) + i)): : "memory",
                         "cc");
    goto ldv_36057;
    case_8___0:
    __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret___0), "+m" (*((unsigned long *)(& tfm->done_bits) + i)): : "memory",
                         "cc");
    goto ldv_36057;
    switch_default___0:
    {
    __xchg_wrong_size();
    }
    switch_break___0: ;
    }
    ldv_36057:
    k = __ret___0;
  } else {
  }
  dmap->fault_bits[i] = k;
  i = i + 1UL;
  ldv_36064: ;
  if (i <= 1UL) {
    goto ldv_36063;
  } else {
  }
  {
  gru_flush_cache((void *)tfm);
  }
  return;
}
}
static int non_atomic_pte_lookup(struct vm_area_struct *vma , unsigned long vaddr ,
                                 int write , unsigned long *paddr , int *pageshift )
{
  struct page *page ;
  int tmp ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = is_vm_hugetlb_page(vma);
  *pageshift = tmp != 0 ? 21 : 12;
  tmp___0 = get_current___1();
  tmp___1 = get_current___1();
  tmp___2 = get_user_pages(tmp___1, tmp___0->mm, vaddr, 1UL, write, 0, & page, (struct vm_area_struct **)0);
  }
  if (tmp___2 <= 0L) {
    return (-14);
  } else {
  }
  {
  *paddr = (unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12);
  put_page(page);
  }
  return (0);
}
}
static int atomic_pte_lookup(struct vm_area_struct *vma , unsigned long vaddr , int write ,
                             unsigned long *paddr , int *pageshift )
{
  pgd_t *pgdp ;
  pmd_t *pmdp ;
  pud_t *pudp ;
  pte_t pte ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  pte_t *tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  long tmp___12 ;
  int tmp___13 ;
  long tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  unsigned long tmp___17 ;
  int tmp___18 ;
  {
  {
  pgdp = (vma->vm_mm)->pgd + ((vaddr >> 39) & 511UL);
  tmp = pgd_none(*pgdp);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  }
  if (tmp___0 != 0L) {
    goto err;
  } else {
  }
  {
  pudp = pud_offset(pgdp, vaddr);
  tmp___1 = pud_none(*pudp);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  }
  if (tmp___2 != 0L) {
    goto err;
  } else {
  }
  {
  pmdp = pmd_offset(pudp, vaddr);
  tmp___3 = pmd_none(*pmdp);
  tmp___4 = ldv__builtin_expect(tmp___3 != 0, 0L);
  }
  if (tmp___4 != 0L) {
    goto err;
  } else {
  }
  {
  tmp___6 = pmd_large(*pmdp);
  tmp___7 = ldv__builtin_expect(tmp___6 != 0, 0L);
  }
  if (tmp___7 != 0L) {
    pte = *((pte_t *)pmdp);
  } else {
    {
    tmp___5 = pte_offset_kernel(pmdp, vaddr);
    pte = *tmp___5;
    }
  }
  {
  tmp___8 = pte_present(pte);
  tmp___9 = ldv__builtin_expect(tmp___8 == 0, 0L);
  }
  if (tmp___9 != 0L) {
    return (1);
  } else {
    {
    tmp___10 = ldv__builtin_expect(write != 0, 0L);
    }
    if (tmp___10 != 0L) {
      {
      tmp___11 = pte_write(pte);
      tmp___12 = ldv__builtin_expect(tmp___11 == 0, 0L);
      }
      if (tmp___12 != 0L) {
        tmp___15 = 1;
      } else {
        {
        tmp___13 = pte_dirty(pte);
        tmp___14 = ldv__builtin_expect(tmp___13 == 0, 0L);
        }
        if (tmp___14 != 0L) {
          tmp___15 = 1;
        } else {
          tmp___15 = 0;
        }
      }
      if (tmp___15 != 0) {
        tmp___16 = 1;
      } else {
        tmp___16 = 0;
      }
    } else {
      tmp___16 = 0;
    }
    if (tmp___16 != 0) {
      return (1);
    } else {
    }
  }
  {
  tmp___17 = pte_pfn(pte);
  *paddr = tmp___17 << 12;
  tmp___18 = is_vm_hugetlb_page(vma);
  *pageshift = tmp___18 != 0 ? 21 : 12;
  }
  return (0);
  err: ;
  return (1);
}
}
static int gru_vtop(struct gru_thread_state *gts , unsigned long vaddr , int write ,
                    int atomic , unsigned long *gpa , int *pageshift )
{
  struct mm_struct *mm ;
  struct vm_area_struct *vma ;
  unsigned long paddr ;
  int ret ;
  int ps ;
  int tmp ;
  int tmp___0 ;
  {
  {
  mm = gts->ts_mm;
  vma = find_vma(mm, vaddr);
  }
  if ((unsigned long )vma == (unsigned long )((struct vm_area_struct *)0)) {
    goto inval;
  } else {
  }
  {
  __asm__ volatile ("lfence": : : "memory");
  ret = atomic_pte_lookup(vma, vaddr, write, & paddr, & ps);
  }
  if (ret != 0) {
    if (atomic != 0) {
      goto upm;
    } else {
    }
    {
    tmp = non_atomic_pte_lookup(vma, vaddr, write, & paddr, & ps);
    }
    if (tmp != 0) {
      goto inval;
    } else {
    }
  } else {
  }
  {
  tmp___0 = is_gru_paddr(paddr);
  }
  if (tmp___0 != 0) {
    goto inval;
  } else {
  }
  {
  paddr = paddr & - (1UL << ps);
  *gpa = uv_soc_phys_ram_to_gpa(paddr);
  *pageshift = ps;
  }
  return (0);
  inval: ;
  return (-1);
  upm: ;
  return (-2);
}
}
static void gru_flush_cache_cbe(struct gru_control_block_extended *cbe )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )cbe != (unsigned long )((struct gru_control_block_extended *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    cbe->cbrexecstatus = 0U;
    gru_flush_cache((void *)cbe);
    }
  } else {
  }
  return;
}
}
static void gru_preload_tlb(struct gru_state *gru , struct gru_thread_state *gts ,
                            int atomic , unsigned long fault_vaddr , int asid , int write ,
                            unsigned char tlb_preload_count , struct gru_tlb_fault_handle *tfh ,
                            struct gru_control_block_extended *cbe )
{
  unsigned long vaddr ;
  unsigned long gpa ;
  int ret ;
  int pageshift ;
  unsigned long _min1 ;
  unsigned long _min2 ;
  int tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  vaddr = 0UL;
  if ((unsigned int )cbe->opccpy != 1U) {
    return;
  } else {
  }
  if (fault_vaddr == cbe->idef1upd) {
    vaddr = (fault_vaddr + cbe->idef6cpy * 64UL) - 1UL;
  } else
  if (fault_vaddr == cbe->idef3upd) {
    vaddr = (fault_vaddr + (unsigned long )(1 << (int )cbe->xtypecpy) * cbe->idef5upd) - 1UL;
  } else {
  }
  fault_vaddr = fault_vaddr & 0xfffffffffffff000UL;
  vaddr = vaddr & 0xfffffffffffff000UL;
  _min1 = vaddr;
  _min2 = fault_vaddr + (unsigned long )tlb_preload_count * 4096UL;
  vaddr = _min1 < _min2 ? _min1 : _min2;
  goto ldv_36165;
  ldv_36164:
  {
  ret = gru_vtop(gts, vaddr, write, atomic, & gpa, & pageshift);
  }
  if (ret != 0) {
    return;
  } else {
    {
    tmp = tfh_write_only(tfh, gpa, 0, vaddr, asid, write, pageshift > 20 ? ((pageshift + 2) >> 1) + -6 : (pageshift >> 1) + -6);
    }
    if (tmp != 0) {
      return;
    } else {
    }
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_36127;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36127;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36127;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36127;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_36127:
    pscr_ret__ = pfo_ret__;
    goto ldv_36133;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36137;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36137;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36137;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36137;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_36137:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_36133;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36146;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36146;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36146;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36146;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_36146:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_36133;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36155;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36155;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36155;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36155;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_36155:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_36133;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36133;
    switch_break: ;
    }
    ldv_36133:
    {
    printk("\017GRU:%d %s: %s: gid %d, gts 0x%p, tfh 0x%p, vaddr 0x%lx, asid 0x%x, rw %d, ps %d, gpa 0x%lx\n",
           pscr_ret__, "gru_preload_tlb", atomic != 0 ? (char *)"atomic" : (char *)"non-atomic",
           (int )gru->gs_gid, gts, tfh, vaddr, asid, write, pageshift, gpa);
    }
  } else {
  }
  vaddr = vaddr - 4096UL;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.tlb_preload_page);
    }
  } else {
  }
  ldv_36165: ;
  if (vaddr > fault_vaddr) {
    goto ldv_36164;
  } else {
  }
  return;
}
}
static int gru_try_dropin(struct gru_state *gru , struct gru_thread_state *gts , struct gru_tlb_fault_handle *tfh ,
                          struct gru_instruction_bits *cbk )
{
  struct gru_control_block_extended *cbe ;
  unsigned char tlb_preload_count ;
  int pageshift ;
  int asid ;
  int write ;
  int ret ;
  int atomic ;
  int indexway ;
  unsigned long gpa ;
  unsigned long vaddr ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___0 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  int pscr_ret_____1 ;
  void const *__vpp_verify___1 ;
  int pfo_ret_____7 ;
  int pfo_ret_____8 ;
  int pfo_ret_____9 ;
  int pfo_ret_____10 ;
  int pscr_ret_____2 ;
  void const *__vpp_verify___2 ;
  int pfo_ret_____11 ;
  int pfo_ret_____12 ;
  int pfo_ret_____13 ;
  int pfo_ret_____14 ;
  int pscr_ret_____3 ;
  void const *__vpp_verify___3 ;
  int pfo_ret_____15 ;
  int pfo_ret_____16 ;
  int pfo_ret_____17 ;
  int pfo_ret_____18 ;
  int pscr_ret_____4 ;
  void const *__vpp_verify___4 ;
  int pfo_ret_____19 ;
  int pfo_ret_____20 ;
  int pfo_ret_____21 ;
  int pfo_ret_____22 ;
  int pscr_ret_____5 ;
  void const *__vpp_verify___5 ;
  int pfo_ret_____23 ;
  int pfo_ret_____24 ;
  int pfo_ret_____25 ;
  int pfo_ret_____26 ;
  int pscr_ret_____6 ;
  void const *__vpp_verify___6 ;
  int pfo_ret_____27 ;
  int pfo_ret_____28 ;
  int pfo_ret_____29 ;
  int pfo_ret_____30 ;
  {
  {
  cbe = (struct gru_control_block_extended *)0;
  tlb_preload_count = gts->ts_tlb_preload_count;
  pageshift = 0;
  atomic = (unsigned long )cbk == (unsigned long )((struct gru_instruction_bits *)0);
  gpa = 0UL;
  vaddr = 0UL;
  tmp = ldv__builtin_expect((unsigned int )tlb_preload_count != 0U, 0L);
  }
  if (tmp != 0L) {
    {
    cbe = gru_tfh_to_cbe(tfh);
    prefetchw((void const *)cbe);
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)tfh + 2UL) != 1U) {
    {
    gru_flush_cache((void *)tfh);
    sync_core();
    }
    if ((unsigned int )*((unsigned char *)tfh + 2UL) != 1U) {
      goto failnoexception;
    } else {
    }
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.tfh_stale_on_fault);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)tfh + 2UL) == 16U) {
    goto failidle;
  } else {
  }
  if ((unsigned int )*((unsigned char *)tfh + 2UL) == 48U && (unsigned long )cbk != (unsigned long )((struct gru_instruction_bits *)0)) {
    goto failfmm;
  } else {
  }
  write = ((int )tfh->cause & 2) != 0;
  vaddr = tfh->missvaddr;
  asid = (int )tfh->missasid;
  indexway = (int )tfh->indexway;
  if (asid == 0) {
    goto failnoasid;
  } else {
  }
  {
  __asm__ volatile ("lfence": : : "memory");
  tmp___0 = atomic_read((atomic_t const *)(& (gts->ts_gms)->ms_range_active));
  }
  if (tmp___0 != 0) {
    goto failactive;
  } else {
  }
  {
  ret = gru_vtop(gts, vaddr, write, atomic, & gpa, & pageshift);
  }
  if (ret == -1) {
    goto failinval;
  } else {
  }
  if (ret == -2) {
    goto failupm;
  } else {
  }
  if (((unsigned long )gts->ts_sizeavail & (pageshift > 20 ? 1UL << (((pageshift + 2) >> 1) + -6) : 1UL << ((pageshift >> 1) + -6))) == 0UL) {
    gts->ts_sizeavail = (int )gts->ts_sizeavail | (pageshift > 20 ? (unsigned short )(1UL << (((pageshift + 2) >> 1) + -6)) : (unsigned short )(1UL << ((pageshift >> 1) + -6)));
    if (atomic != 0) {
      gts->ts_force_cch_reload = 1;
      goto failupm;
    } else {
      {
      tmp___1 = gru_update_cch(gts);
      }
      if (tmp___1 == 0) {
        gts->ts_force_cch_reload = 1;
        goto failupm;
      } else {
      }
    }
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect((unsigned long )cbe != (unsigned long )((struct gru_control_block_extended *)0),
                             0L);
  }
  if (tmp___2 != 0L && pageshift == 12) {
    {
    gru_preload_tlb(gru, gts, atomic, vaddr, asid, write, (int )tlb_preload_count,
                    tfh, cbe);
    gru_flush_cache_cbe(cbe);
    }
  } else {
  }
  {
  gru_cb_set_istatus_active(cbk);
  gts->ustats.tlbdropin = gts->ustats.tlbdropin + 1UL;
  tfh_write_restart(tfh, gpa, 0, vaddr, asid, write, pageshift > 20 ? ((pageshift + 2) >> 1) + -6 : (pageshift >> 1) + -6);
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_36195;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36195;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36195;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36195;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_36195:
    pscr_ret__ = pfo_ret__;
    goto ldv_36201;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36205;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36205;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36205;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36205;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_36205:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_36201;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36214;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36214;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36214;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36214;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_36214:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_36201;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36223;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36223;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36223;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36223;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_36223:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_36201;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36201;
    switch_break: ;
    }
    ldv_36201:
    {
    printk("\017GRU:%d %s: %s: gid %d, gts 0x%p, tfh 0x%p, vaddr 0x%lx, asid 0x%x, indexway 0x%x, rw %d, ps %d, gpa 0x%lx\n",
           pscr_ret__, "gru_try_dropin", atomic != 0 ? (char *)"atomic" : (char *)"non-atomic",
           (int )gru->gs_gid, gts, tfh, vaddr, asid, indexway, write, pageshift, gpa);
    }
  } else {
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.tlb_dropin);
    }
  } else {
  }
  return (0);
  failnoasid: ;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.tlb_dropin_fail_no_asid);
    }
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify___0 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___4;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___5;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___6;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___7;
    } else {
    }
    goto switch_default___8;
    case_1___4: ;
    {
    if (4UL == 1UL) {
      goto case_1___5;
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
    case_1___5:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_36237;
    case_2___4:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_36237;
    case_4___4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_36237;
    case_8___4:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_36237;
    switch_default___4:
    {
    __bad_percpu_size();
    }
    switch_break___5: ;
    }
    ldv_36237:
    pscr_ret_____0 = pfo_ret_____3;
    goto ldv_36243;
    case_2___5: ;
    {
    if (4UL == 1UL) {
      goto case_1___6;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___6;
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
    case_1___6:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_36247;
    case_2___6:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_36247;
    case_4___5:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_36247;
    case_8___5:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_36247;
    switch_default___5:
    {
    __bad_percpu_size();
    }
    switch_break___6: ;
    }
    ldv_36247:
    pscr_ret_____0 = pfo_ret_____4;
    goto ldv_36243;
    case_4___6: ;
    {
    if (4UL == 1UL) {
      goto case_1___7;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___7;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___7;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___6;
    } else {
    }
    goto switch_default___6;
    case_1___7:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_36256;
    case_2___7:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_36256;
    case_4___7:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_36256;
    case_8___6:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_36256;
    switch_default___6:
    {
    __bad_percpu_size();
    }
    switch_break___7: ;
    }
    ldv_36256:
    pscr_ret_____0 = pfo_ret_____5;
    goto ldv_36243;
    case_8___7: ;
    {
    if (4UL == 1UL) {
      goto case_1___8;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___8;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___8;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___8;
    } else {
    }
    goto switch_default___7;
    case_1___8:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_36265;
    case_2___8:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_36265;
    case_4___8:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_36265;
    case_8___8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_36265;
    switch_default___7:
    {
    __bad_percpu_size();
    }
    switch_break___8: ;
    }
    ldv_36265:
    pscr_ret_____0 = pfo_ret_____6;
    goto ldv_36243;
    switch_default___8:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36243;
    switch_break___4: ;
    }
    ldv_36243:
    {
    printk("\017GRU:%d %s: FAILED no_asid tfh: 0x%p, vaddr 0x%lx\n", pscr_ret_____0,
           "gru_try_dropin", tfh, vaddr);
    }
  } else {
  }
  if ((unsigned long )cbk == (unsigned long )((struct gru_instruction_bits *)0)) {
    {
    tfh_user_polling_mode(tfh);
    }
  } else {
    {
    gru_flush_cache((void *)tfh);
    }
  }
  {
  gru_flush_cache_cbe(cbe);
  }
  return (-11);
  failupm:
  {
  tfh_user_polling_mode(tfh);
  gru_flush_cache_cbe(cbe);
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.tlb_dropin_fail_upm);
    }
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify___1 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___9;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___10;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___11;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___12;
    } else {
    }
    goto switch_default___13;
    case_1___9: ;
    {
    if (4UL == 1UL) {
      goto case_1___10;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___9;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___9;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___9;
    } else {
    }
    goto switch_default___9;
    case_1___10:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_36278;
    case_2___9:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_36278;
    case_4___9:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_36278;
    case_8___9:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_36278;
    switch_default___9:
    {
    __bad_percpu_size();
    }
    switch_break___10: ;
    }
    ldv_36278:
    pscr_ret_____1 = pfo_ret_____7;
    goto ldv_36284;
    case_2___10: ;
    {
    if (4UL == 1UL) {
      goto case_1___11;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___11;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___10;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___10;
    } else {
    }
    goto switch_default___10;
    case_1___11:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_36288;
    case_2___11:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_36288;
    case_4___10:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_36288;
    case_8___10:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_36288;
    switch_default___10:
    {
    __bad_percpu_size();
    }
    switch_break___11: ;
    }
    ldv_36288:
    pscr_ret_____1 = pfo_ret_____8;
    goto ldv_36284;
    case_4___11: ;
    {
    if (4UL == 1UL) {
      goto case_1___12;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___12;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___12;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___11;
    } else {
    }
    goto switch_default___11;
    case_1___12:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_36297;
    case_2___12:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_36297;
    case_4___12:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_36297;
    case_8___11:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_36297;
    switch_default___11:
    {
    __bad_percpu_size();
    }
    switch_break___12: ;
    }
    ldv_36297:
    pscr_ret_____1 = pfo_ret_____9;
    goto ldv_36284;
    case_8___12: ;
    {
    if (4UL == 1UL) {
      goto case_1___13;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___13;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___13;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___13;
    } else {
    }
    goto switch_default___12;
    case_1___13:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_36306;
    case_2___13:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_36306;
    case_4___13:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_36306;
    case_8___13:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_36306;
    switch_default___12:
    {
    __bad_percpu_size();
    }
    switch_break___13: ;
    }
    ldv_36306:
    pscr_ret_____1 = pfo_ret_____10;
    goto ldv_36284;
    switch_default___13:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36284;
    switch_break___9: ;
    }
    ldv_36284:
    {
    printk("\017GRU:%d %s: FAILED upm tfh: 0x%p, vaddr 0x%lx\n", pscr_ret_____1, "gru_try_dropin",
           tfh, vaddr);
    }
  } else {
  }
  return (1);
  failfmm:
  {
  gru_flush_cache((void *)tfh);
  gru_flush_cache_cbe(cbe);
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.tlb_dropin_fail_fmm);
    }
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify___2 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___14;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___15;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___16;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___17;
    } else {
    }
    goto switch_default___18;
    case_1___14: ;
    {
    if (4UL == 1UL) {
      goto case_1___15;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___14;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___14;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___14;
    } else {
    }
    goto switch_default___14;
    case_1___15:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____11): "m" (cpu_number));
    goto ldv_36319;
    case_2___14:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____11): "m" (cpu_number));
    goto ldv_36319;
    case_4___14:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____11): "m" (cpu_number));
    goto ldv_36319;
    case_8___14:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____11): "m" (cpu_number));
    goto ldv_36319;
    switch_default___14:
    {
    __bad_percpu_size();
    }
    switch_break___15: ;
    }
    ldv_36319:
    pscr_ret_____2 = pfo_ret_____11;
    goto ldv_36325;
    case_2___15: ;
    {
    if (4UL == 1UL) {
      goto case_1___16;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___16;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___15;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___15;
    } else {
    }
    goto switch_default___15;
    case_1___16:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____12): "m" (cpu_number));
    goto ldv_36329;
    case_2___16:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____12): "m" (cpu_number));
    goto ldv_36329;
    case_4___15:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____12): "m" (cpu_number));
    goto ldv_36329;
    case_8___15:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____12): "m" (cpu_number));
    goto ldv_36329;
    switch_default___15:
    {
    __bad_percpu_size();
    }
    switch_break___16: ;
    }
    ldv_36329:
    pscr_ret_____2 = pfo_ret_____12;
    goto ldv_36325;
    case_4___16: ;
    {
    if (4UL == 1UL) {
      goto case_1___17;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___17;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___17;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___16;
    } else {
    }
    goto switch_default___16;
    case_1___17:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____13): "m" (cpu_number));
    goto ldv_36338;
    case_2___17:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____13): "m" (cpu_number));
    goto ldv_36338;
    case_4___17:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____13): "m" (cpu_number));
    goto ldv_36338;
    case_8___16:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____13): "m" (cpu_number));
    goto ldv_36338;
    switch_default___16:
    {
    __bad_percpu_size();
    }
    switch_break___17: ;
    }
    ldv_36338:
    pscr_ret_____2 = pfo_ret_____13;
    goto ldv_36325;
    case_8___17: ;
    {
    if (4UL == 1UL) {
      goto case_1___18;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___18;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___18;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___18;
    } else {
    }
    goto switch_default___17;
    case_1___18:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____14): "m" (cpu_number));
    goto ldv_36347;
    case_2___18:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____14): "m" (cpu_number));
    goto ldv_36347;
    case_4___18:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____14): "m" (cpu_number));
    goto ldv_36347;
    case_8___18:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____14): "m" (cpu_number));
    goto ldv_36347;
    switch_default___17:
    {
    __bad_percpu_size();
    }
    switch_break___18: ;
    }
    ldv_36347:
    pscr_ret_____2 = pfo_ret_____14;
    goto ldv_36325;
    switch_default___18:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36325;
    switch_break___14: ;
    }
    ldv_36325:
    {
    printk("\017GRU:%d %s: FAILED fmm tfh: 0x%p, state %d\n", pscr_ret_____2, "gru_try_dropin",
           tfh, (int )tfh->state);
    }
  } else {
  }
  return (0);
  failnoexception:
  {
  gru_flush_cache((void *)tfh);
  gru_flush_cache_cbe(cbe);
  }
  if ((unsigned long )cbk != (unsigned long )((struct gru_instruction_bits *)0)) {
    {
    gru_flush_cache((void *)cbk);
    }
  } else {
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.tlb_dropin_fail_no_exception);
    }
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify___3 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___19;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___20;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___21;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___22;
    } else {
    }
    goto switch_default___23;
    case_1___19: ;
    {
    if (4UL == 1UL) {
      goto case_1___20;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___19;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___19;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___19;
    } else {
    }
    goto switch_default___19;
    case_1___20:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____15): "m" (cpu_number));
    goto ldv_36360;
    case_2___19:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____15): "m" (cpu_number));
    goto ldv_36360;
    case_4___19:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____15): "m" (cpu_number));
    goto ldv_36360;
    case_8___19:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____15): "m" (cpu_number));
    goto ldv_36360;
    switch_default___19:
    {
    __bad_percpu_size();
    }
    switch_break___20: ;
    }
    ldv_36360:
    pscr_ret_____3 = pfo_ret_____15;
    goto ldv_36366;
    case_2___20: ;
    {
    if (4UL == 1UL) {
      goto case_1___21;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___21;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___20;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___20;
    } else {
    }
    goto switch_default___20;
    case_1___21:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____16): "m" (cpu_number));
    goto ldv_36370;
    case_2___21:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____16): "m" (cpu_number));
    goto ldv_36370;
    case_4___20:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____16): "m" (cpu_number));
    goto ldv_36370;
    case_8___20:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____16): "m" (cpu_number));
    goto ldv_36370;
    switch_default___20:
    {
    __bad_percpu_size();
    }
    switch_break___21: ;
    }
    ldv_36370:
    pscr_ret_____3 = pfo_ret_____16;
    goto ldv_36366;
    case_4___21: ;
    {
    if (4UL == 1UL) {
      goto case_1___22;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___22;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___22;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___21;
    } else {
    }
    goto switch_default___21;
    case_1___22:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____17): "m" (cpu_number));
    goto ldv_36379;
    case_2___22:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____17): "m" (cpu_number));
    goto ldv_36379;
    case_4___22:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____17): "m" (cpu_number));
    goto ldv_36379;
    case_8___21:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____17): "m" (cpu_number));
    goto ldv_36379;
    switch_default___21:
    {
    __bad_percpu_size();
    }
    switch_break___22: ;
    }
    ldv_36379:
    pscr_ret_____3 = pfo_ret_____17;
    goto ldv_36366;
    case_8___22: ;
    {
    if (4UL == 1UL) {
      goto case_1___23;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___23;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___23;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___23;
    } else {
    }
    goto switch_default___22;
    case_1___23:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____18): "m" (cpu_number));
    goto ldv_36388;
    case_2___23:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____18): "m" (cpu_number));
    goto ldv_36388;
    case_4___23:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____18): "m" (cpu_number));
    goto ldv_36388;
    case_8___23:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____18): "m" (cpu_number));
    goto ldv_36388;
    switch_default___22:
    {
    __bad_percpu_size();
    }
    switch_break___23: ;
    }
    ldv_36388:
    pscr_ret_____3 = pfo_ret_____18;
    goto ldv_36366;
    switch_default___23:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36366;
    switch_break___19: ;
    }
    ldv_36366:
    {
    printk("\017GRU:%d %s: FAILED non-exception tfh: 0x%p, status %d, state %d\n",
           pscr_ret_____3, "gru_try_dropin", tfh, (int )tfh->status, (int )tfh->state);
    }
  } else {
  }
  return (0);
  failidle:
  {
  gru_flush_cache((void *)tfh);
  gru_flush_cache_cbe(cbe);
  }
  if ((unsigned long )cbk != (unsigned long )((struct gru_instruction_bits *)0)) {
    {
    gru_flush_cache((void *)cbk);
    }
  } else {
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.tlb_dropin_fail_idle);
    }
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify___4 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___24;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___25;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___26;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___27;
    } else {
    }
    goto switch_default___28;
    case_1___24: ;
    {
    if (4UL == 1UL) {
      goto case_1___25;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___24;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___24;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___24;
    } else {
    }
    goto switch_default___24;
    case_1___25:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____19): "m" (cpu_number));
    goto ldv_36401;
    case_2___24:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____19): "m" (cpu_number));
    goto ldv_36401;
    case_4___24:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____19): "m" (cpu_number));
    goto ldv_36401;
    case_8___24:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____19): "m" (cpu_number));
    goto ldv_36401;
    switch_default___24:
    {
    __bad_percpu_size();
    }
    switch_break___25: ;
    }
    ldv_36401:
    pscr_ret_____4 = pfo_ret_____19;
    goto ldv_36407;
    case_2___25: ;
    {
    if (4UL == 1UL) {
      goto case_1___26;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___26;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___25;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___25;
    } else {
    }
    goto switch_default___25;
    case_1___26:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____20): "m" (cpu_number));
    goto ldv_36411;
    case_2___26:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____20): "m" (cpu_number));
    goto ldv_36411;
    case_4___25:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____20): "m" (cpu_number));
    goto ldv_36411;
    case_8___25:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____20): "m" (cpu_number));
    goto ldv_36411;
    switch_default___25:
    {
    __bad_percpu_size();
    }
    switch_break___26: ;
    }
    ldv_36411:
    pscr_ret_____4 = pfo_ret_____20;
    goto ldv_36407;
    case_4___26: ;
    {
    if (4UL == 1UL) {
      goto case_1___27;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___27;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___27;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___26;
    } else {
    }
    goto switch_default___26;
    case_1___27:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____21): "m" (cpu_number));
    goto ldv_36420;
    case_2___27:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____21): "m" (cpu_number));
    goto ldv_36420;
    case_4___27:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____21): "m" (cpu_number));
    goto ldv_36420;
    case_8___26:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____21): "m" (cpu_number));
    goto ldv_36420;
    switch_default___26:
    {
    __bad_percpu_size();
    }
    switch_break___27: ;
    }
    ldv_36420:
    pscr_ret_____4 = pfo_ret_____21;
    goto ldv_36407;
    case_8___27: ;
    {
    if (4UL == 1UL) {
      goto case_1___28;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___28;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___28;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___28;
    } else {
    }
    goto switch_default___27;
    case_1___28:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____22): "m" (cpu_number));
    goto ldv_36429;
    case_2___28:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____22): "m" (cpu_number));
    goto ldv_36429;
    case_4___28:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____22): "m" (cpu_number));
    goto ldv_36429;
    case_8___28:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____22): "m" (cpu_number));
    goto ldv_36429;
    switch_default___27:
    {
    __bad_percpu_size();
    }
    switch_break___28: ;
    }
    ldv_36429:
    pscr_ret_____4 = pfo_ret_____22;
    goto ldv_36407;
    switch_default___28:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36407;
    switch_break___24: ;
    }
    ldv_36407:
    {
    printk("\017GRU:%d %s: FAILED idle tfh: 0x%p, state %d\n", pscr_ret_____4, "gru_try_dropin",
           tfh, (int )tfh->state);
    }
  } else {
  }
  return (0);
  failinval:
  {
  tfh_exception(tfh);
  gru_flush_cache_cbe(cbe);
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.tlb_dropin_fail_invalid);
    }
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify___5 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___29;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___30;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___31;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___32;
    } else {
    }
    goto switch_default___33;
    case_1___29: ;
    {
    if (4UL == 1UL) {
      goto case_1___30;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___29;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___29;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___29;
    } else {
    }
    goto switch_default___29;
    case_1___30:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____23): "m" (cpu_number));
    goto ldv_36442;
    case_2___29:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____23): "m" (cpu_number));
    goto ldv_36442;
    case_4___29:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____23): "m" (cpu_number));
    goto ldv_36442;
    case_8___29:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____23): "m" (cpu_number));
    goto ldv_36442;
    switch_default___29:
    {
    __bad_percpu_size();
    }
    switch_break___30: ;
    }
    ldv_36442:
    pscr_ret_____5 = pfo_ret_____23;
    goto ldv_36448;
    case_2___30: ;
    {
    if (4UL == 1UL) {
      goto case_1___31;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___31;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___30;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___30;
    } else {
    }
    goto switch_default___30;
    case_1___31:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____24): "m" (cpu_number));
    goto ldv_36452;
    case_2___31:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____24): "m" (cpu_number));
    goto ldv_36452;
    case_4___30:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____24): "m" (cpu_number));
    goto ldv_36452;
    case_8___30:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____24): "m" (cpu_number));
    goto ldv_36452;
    switch_default___30:
    {
    __bad_percpu_size();
    }
    switch_break___31: ;
    }
    ldv_36452:
    pscr_ret_____5 = pfo_ret_____24;
    goto ldv_36448;
    case_4___31: ;
    {
    if (4UL == 1UL) {
      goto case_1___32;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___32;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___32;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___31;
    } else {
    }
    goto switch_default___31;
    case_1___32:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____25): "m" (cpu_number));
    goto ldv_36461;
    case_2___32:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____25): "m" (cpu_number));
    goto ldv_36461;
    case_4___32:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____25): "m" (cpu_number));
    goto ldv_36461;
    case_8___31:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____25): "m" (cpu_number));
    goto ldv_36461;
    switch_default___31:
    {
    __bad_percpu_size();
    }
    switch_break___32: ;
    }
    ldv_36461:
    pscr_ret_____5 = pfo_ret_____25;
    goto ldv_36448;
    case_8___32: ;
    {
    if (4UL == 1UL) {
      goto case_1___33;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___33;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___33;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___33;
    } else {
    }
    goto switch_default___32;
    case_1___33:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____26): "m" (cpu_number));
    goto ldv_36470;
    case_2___33:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____26): "m" (cpu_number));
    goto ldv_36470;
    case_4___33:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____26): "m" (cpu_number));
    goto ldv_36470;
    case_8___33:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____26): "m" (cpu_number));
    goto ldv_36470;
    switch_default___32:
    {
    __bad_percpu_size();
    }
    switch_break___33: ;
    }
    ldv_36470:
    pscr_ret_____5 = pfo_ret_____26;
    goto ldv_36448;
    switch_default___33:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36448;
    switch_break___29: ;
    }
    ldv_36448:
    {
    printk("\017GRU:%d %s: FAILED inval tfh: 0x%p, vaddr 0x%lx\n", pscr_ret_____5,
           "gru_try_dropin", tfh, vaddr);
    }
  } else {
  }
  return (-14);
  failactive: ;
  if ((unsigned long )cbk == (unsigned long )((struct gru_instruction_bits *)0)) {
    {
    tfh_user_polling_mode(tfh);
    }
  } else {
    {
    gru_flush_cache((void *)tfh);
    }
  }
  {
  gru_flush_cache_cbe(cbe);
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.tlb_dropin_fail_range_active);
    }
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify___6 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___34;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___35;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___36;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___37;
    } else {
    }
    goto switch_default___38;
    case_1___34: ;
    {
    if (4UL == 1UL) {
      goto case_1___35;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___34;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___34;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___34;
    } else {
    }
    goto switch_default___34;
    case_1___35:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____27): "m" (cpu_number));
    goto ldv_36483;
    case_2___34:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____27): "m" (cpu_number));
    goto ldv_36483;
    case_4___34:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____27): "m" (cpu_number));
    goto ldv_36483;
    case_8___34:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____27): "m" (cpu_number));
    goto ldv_36483;
    switch_default___34:
    {
    __bad_percpu_size();
    }
    switch_break___35: ;
    }
    ldv_36483:
    pscr_ret_____6 = pfo_ret_____27;
    goto ldv_36489;
    case_2___35: ;
    {
    if (4UL == 1UL) {
      goto case_1___36;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___36;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___35;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___35;
    } else {
    }
    goto switch_default___35;
    case_1___36:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____28): "m" (cpu_number));
    goto ldv_36493;
    case_2___36:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____28): "m" (cpu_number));
    goto ldv_36493;
    case_4___35:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____28): "m" (cpu_number));
    goto ldv_36493;
    case_8___35:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____28): "m" (cpu_number));
    goto ldv_36493;
    switch_default___35:
    {
    __bad_percpu_size();
    }
    switch_break___36: ;
    }
    ldv_36493:
    pscr_ret_____6 = pfo_ret_____28;
    goto ldv_36489;
    case_4___36: ;
    {
    if (4UL == 1UL) {
      goto case_1___37;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___37;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___37;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___36;
    } else {
    }
    goto switch_default___36;
    case_1___37:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____29): "m" (cpu_number));
    goto ldv_36502;
    case_2___37:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____29): "m" (cpu_number));
    goto ldv_36502;
    case_4___37:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____29): "m" (cpu_number));
    goto ldv_36502;
    case_8___36:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____29): "m" (cpu_number));
    goto ldv_36502;
    switch_default___36:
    {
    __bad_percpu_size();
    }
    switch_break___37: ;
    }
    ldv_36502:
    pscr_ret_____6 = pfo_ret_____29;
    goto ldv_36489;
    case_8___37: ;
    {
    if (4UL == 1UL) {
      goto case_1___38;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___38;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___38;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___38;
    } else {
    }
    goto switch_default___37;
    case_1___38:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____30): "m" (cpu_number));
    goto ldv_36511;
    case_2___38:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____30): "m" (cpu_number));
    goto ldv_36511;
    case_4___38:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____30): "m" (cpu_number));
    goto ldv_36511;
    case_8___38:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____30): "m" (cpu_number));
    goto ldv_36511;
    switch_default___37:
    {
    __bad_percpu_size();
    }
    switch_break___38: ;
    }
    ldv_36511:
    pscr_ret_____6 = pfo_ret_____30;
    goto ldv_36489;
    switch_default___38:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36489;
    switch_break___34: ;
    }
    ldv_36489:
    {
    printk("\017GRU:%d %s: FAILED range active: tfh 0x%p, vaddr 0x%lx\n", pscr_ret_____6,
           "gru_try_dropin", tfh, vaddr);
    }
  } else {
  }
  return (1);
}
}
static irqreturn_t gru_intr(int chiplet , int blade )
{
  struct gru_state *gru ;
  struct gru_tlb_fault_map imap ;
  struct gru_tlb_fault_map dmap ;
  struct gru_thread_state *gts ;
  struct gru_tlb_fault_handle *tfh ;
  struct completion *cmp ;
  int cbrnum ;
  int ctxnum ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___0 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  int pscr_ret_____1 ;
  void const *__vpp_verify___1 ;
  int pfo_ret_____7 ;
  int pfo_ret_____8 ;
  int pfo_ret_____9 ;
  int pfo_ret_____10 ;
  unsigned long tmp ;
  int pscr_ret_____2 ;
  void const *__vpp_verify___2 ;
  int pfo_ret_____11 ;
  int pfo_ret_____12 ;
  int pfo_ret_____13 ;
  int pfo_ret_____14 ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  unsigned long tmp___3 ;
  {
  tfh = (struct gru_tlb_fault_handle *)0;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.intr);
    }
  } else {
  }
  gru = (struct gru_state *)(& (gru_base[blade])->bs_grus) + (unsigned long )chiplet;
  if ((unsigned long )gru == (unsigned long )((struct gru_state *)0)) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_36536;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36536;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36536;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36536;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_36536:
    pscr_ret__ = pfo_ret__;
    goto ldv_36542;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36546;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36546;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36546;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36546;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_36546:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_36542;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36555;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36555;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36555;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36555;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_36555:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_36542;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36564;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36564;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36564;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36564;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_36564:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_36542;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36542;
    switch_break: ;
    }
    ldv_36542:
    {
    dev_err((struct device const *)grudev, "GRU: invalid interrupt: cpu %d, chiplet %d\n",
            pscr_ret__, chiplet);
    }
    return (0);
  } else {
  }
  {
  get_clear_fault_map(gru, & imap, & dmap);
  }
  if ((int )gru_options & 1) {
    __vpp_verify___0 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___4;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___5;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___6;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___7;
    } else {
    }
    goto switch_default___8;
    case_1___4: ;
    {
    if (4UL == 1UL) {
      goto case_1___5;
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
    case_1___5:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_36619;
    case_2___4:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_36619;
    case_4___4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_36619;
    case_8___4:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_36619;
    switch_default___4:
    {
    __bad_percpu_size();
    }
    switch_break___5: ;
    }
    ldv_36619:
    pscr_ret_____0 = pfo_ret_____3;
    goto ldv_36625;
    case_2___5: ;
    {
    if (4UL == 1UL) {
      goto case_1___6;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___6;
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
    case_1___6:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_36629;
    case_2___6:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_36629;
    case_4___5:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_36629;
    case_8___5:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_36629;
    switch_default___5:
    {
    __bad_percpu_size();
    }
    switch_break___6: ;
    }
    ldv_36629:
    pscr_ret_____0 = pfo_ret_____4;
    goto ldv_36625;
    case_4___6: ;
    {
    if (4UL == 1UL) {
      goto case_1___7;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___7;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___7;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___6;
    } else {
    }
    goto switch_default___6;
    case_1___7:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_36638;
    case_2___7:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_36638;
    case_4___7:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_36638;
    case_8___6:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_36638;
    switch_default___6:
    {
    __bad_percpu_size();
    }
    switch_break___7: ;
    }
    ldv_36638:
    pscr_ret_____0 = pfo_ret_____5;
    goto ldv_36625;
    case_8___7: ;
    {
    if (4UL == 1UL) {
      goto case_1___8;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___8;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___8;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___8;
    } else {
    }
    goto switch_default___7;
    case_1___8:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_36647;
    case_2___8:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_36647;
    case_4___8:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_36647;
    case_8___8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_36647;
    switch_default___7:
    {
    __bad_percpu_size();
    }
    switch_break___8: ;
    }
    ldv_36647:
    pscr_ret_____0 = pfo_ret_____6;
    goto ldv_36625;
    switch_default___8:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36625;
    switch_break___4: ;
    }
    ldv_36625:
    __vpp_verify___1 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___9;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___10;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___11;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___12;
    } else {
    }
    goto switch_default___13;
    case_1___9: ;
    {
    if (4UL == 1UL) {
      goto case_1___10;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___9;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___9;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___9;
    } else {
    }
    goto switch_default___9;
    case_1___10:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_36577;
    case_2___9:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_36577;
    case_4___9:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_36577;
    case_8___9:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_36577;
    switch_default___9:
    {
    __bad_percpu_size();
    }
    switch_break___10: ;
    }
    ldv_36577:
    pscr_ret_____1 = pfo_ret_____7;
    goto ldv_36583;
    case_2___10: ;
    {
    if (4UL == 1UL) {
      goto case_1___11;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___11;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___10;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___10;
    } else {
    }
    goto switch_default___10;
    case_1___11:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_36587;
    case_2___11:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_36587;
    case_4___10:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_36587;
    case_8___10:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_36587;
    switch_default___10:
    {
    __bad_percpu_size();
    }
    switch_break___11: ;
    }
    ldv_36587:
    pscr_ret_____1 = pfo_ret_____8;
    goto ldv_36583;
    case_4___11: ;
    {
    if (4UL == 1UL) {
      goto case_1___12;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___12;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___12;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___11;
    } else {
    }
    goto switch_default___11;
    case_1___12:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_36596;
    case_2___12:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_36596;
    case_4___12:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_36596;
    case_8___11:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_36596;
    switch_default___11:
    {
    __bad_percpu_size();
    }
    switch_break___12: ;
    }
    ldv_36596:
    pscr_ret_____1 = pfo_ret_____9;
    goto ldv_36583;
    case_8___12: ;
    {
    if (4UL == 1UL) {
      goto case_1___13;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___13;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___13;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___13;
    } else {
    }
    goto switch_default___12;
    case_1___13:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_36605;
    case_2___13:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_36605;
    case_4___13:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_36605;
    case_8___13:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_36605;
    switch_default___12:
    {
    __bad_percpu_size();
    }
    switch_break___13: ;
    }
    ldv_36605:
    pscr_ret_____1 = pfo_ret_____10;
    goto ldv_36583;
    switch_default___13:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36583;
    switch_break___9: ;
    }
    ldv_36583:
    {
    printk("\017GRU:%d %s: cpu %d, chiplet %d, gid %d, imap %016lx %016lx, dmap %016lx %016lx\n",
           pscr_ret_____1, "gru_intr", pscr_ret_____0, chiplet, (int )gru->gs_gid,
           imap.fault_bits[0], imap.fault_bits[1], dmap.fault_bits[0], dmap.fault_bits[1]);
    }
  } else {
  }
  {
  tmp = ldv_find_first_bit_99((unsigned long const *)(& dmap.fault_bits), 128UL);
  cbrnum = (int )tmp;
  }
  goto ldv_36697;
  ldv_36696: ;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.intr_cbr);
    }
  } else {
  }
  cmp = (gru->gs_blade)->bs_async_wq;
  if ((unsigned long )cmp != (unsigned long )((struct completion *)0)) {
    {
    complete(cmp);
    }
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify___2 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___14;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___15;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___16;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___17;
    } else {
    }
    goto switch_default___18;
    case_1___14: ;
    {
    if (4UL == 1UL) {
      goto case_1___15;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___14;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___14;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___14;
    } else {
    }
    goto switch_default___14;
    case_1___15:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____11): "m" (cpu_number));
    goto ldv_36660;
    case_2___14:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____11): "m" (cpu_number));
    goto ldv_36660;
    case_4___14:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____11): "m" (cpu_number));
    goto ldv_36660;
    case_8___14:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____11): "m" (cpu_number));
    goto ldv_36660;
    switch_default___14:
    {
    __bad_percpu_size();
    }
    switch_break___15: ;
    }
    ldv_36660:
    pscr_ret_____2 = pfo_ret_____11;
    goto ldv_36666;
    case_2___15: ;
    {
    if (4UL == 1UL) {
      goto case_1___16;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___16;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___15;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___15;
    } else {
    }
    goto switch_default___15;
    case_1___16:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____12): "m" (cpu_number));
    goto ldv_36670;
    case_2___16:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____12): "m" (cpu_number));
    goto ldv_36670;
    case_4___15:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____12): "m" (cpu_number));
    goto ldv_36670;
    case_8___15:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____12): "m" (cpu_number));
    goto ldv_36670;
    switch_default___15:
    {
    __bad_percpu_size();
    }
    switch_break___16: ;
    }
    ldv_36670:
    pscr_ret_____2 = pfo_ret_____12;
    goto ldv_36666;
    case_4___16: ;
    {
    if (4UL == 1UL) {
      goto case_1___17;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___17;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___17;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___16;
    } else {
    }
    goto switch_default___16;
    case_1___17:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____13): "m" (cpu_number));
    goto ldv_36679;
    case_2___17:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____13): "m" (cpu_number));
    goto ldv_36679;
    case_4___17:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____13): "m" (cpu_number));
    goto ldv_36679;
    case_8___16:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____13): "m" (cpu_number));
    goto ldv_36679;
    switch_default___16:
    {
    __bad_percpu_size();
    }
    switch_break___17: ;
    }
    ldv_36679:
    pscr_ret_____2 = pfo_ret_____13;
    goto ldv_36666;
    case_8___17: ;
    {
    if (4UL == 1UL) {
      goto case_1___18;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___18;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___18;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___18;
    } else {
    }
    goto switch_default___17;
    case_1___18:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____14): "m" (cpu_number));
    goto ldv_36688;
    case_2___18:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____14): "m" (cpu_number));
    goto ldv_36688;
    case_4___18:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____14): "m" (cpu_number));
    goto ldv_36688;
    case_8___18:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____14): "m" (cpu_number));
    goto ldv_36688;
    switch_default___17:
    {
    __bad_percpu_size();
    }
    switch_break___18: ;
    }
    ldv_36688:
    pscr_ret_____2 = pfo_ret_____14;
    goto ldv_36666;
    switch_default___18:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36666;
    switch_break___14: ;
    }
    ldv_36666:
    {
    printk("\017GRU:%d %s: gid %d, cbr_done %d, done %d\n", pscr_ret_____2, "gru_intr",
           (int )gru->gs_gid, cbrnum, (unsigned long )cmp != (unsigned long )((struct completion *)0) ? cmp->done : 4294967295U);
    }
  } else {
  }
  {
  tmp___0 = ldv_find_next_bit_100((unsigned long const *)(& dmap.fault_bits), 128UL,
                                  (unsigned long )(cbrnum + 1));
  cbrnum = (int )tmp___0;
  }
  ldv_36697: ;
  if (cbrnum <= 127) {
    goto ldv_36696;
  } else {
  }
  {
  tmp___1 = ldv_find_first_bit_101((unsigned long const *)(& imap.fault_bits), 128UL);
  cbrnum = (int )tmp___1;
  }
  goto ldv_36701;
  ldv_36700: ;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.intr_tfh);
    }
  } else {
  }
  {
  tfh = get_tfh(gru->gs_gru_base_vaddr, cbrnum);
  prefetchw((void const *)tfh);
  ctxnum = (int )tfh->ctxnum;
  gts = gru->gs_gts[ctxnum];
  }
  if ((unsigned long )gts == (unsigned long )((struct gru_thread_state *)0)) {
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.intr_spurious);
      }
    } else {
    }
    goto ldv_36699;
  } else {
  }
  gts->ustats.fmm_tlbmiss = gts->ustats.fmm_tlbmiss + 1UL;
  if ((int )((signed char )gts->ts_force_cch_reload) == 0) {
    {
    tmp___2 = down_read_trylock(& (gts->ts_mm)->mmap_sem);
    }
    if (tmp___2 != 0) {
      {
      gru_try_dropin(gru, gts, tfh, (struct gru_instruction_bits *)0);
      up_read(& (gts->ts_mm)->mmap_sem);
      }
    } else {
      goto _L;
    }
  } else {
    _L:
    {
    tfh_user_polling_mode(tfh);
    }
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.intr_mm_lock_failed);
      }
    } else {
    }
  }
  ldv_36699:
  {
  tmp___3 = ldv_find_next_bit_102((unsigned long const *)(& imap.fault_bits), 128UL,
                                  (unsigned long )(cbrnum + 1));
  cbrnum = (int )tmp___3;
  }
  ldv_36701: ;
  if (cbrnum <= 127) {
    goto ldv_36700;
  } else {
  }
  return (1);
}
}
irqreturn_t gru0_intr(int irq , void *dev_id )
{
  int tmp ;
  irqreturn_t tmp___0 ;
  {
  {
  tmp = uv_numa_blade_id();
  tmp___0 = gru_intr(0, tmp);
  }
  return (tmp___0);
}
}
irqreturn_t gru1_intr(int irq , void *dev_id )
{
  int tmp ;
  irqreturn_t tmp___0 ;
  {
  {
  tmp = uv_numa_blade_id();
  tmp___0 = gru_intr(1, tmp);
  }
  return (tmp___0);
}
}
irqreturn_t gru_intr_mblade(int irq , void *dev_id )
{
  int blade ;
  int tmp ;
  int tmp___0 ;
  {
  blade = 0;
  goto ldv_36718;
  ldv_36717:
  {
  tmp = uv_blade_nr_possible_cpus(blade);
  }
  if (tmp != 0) {
    goto ldv_36716;
  } else {
  }
  {
  gru_intr(0, blade);
  gru_intr(1, blade);
  }
  ldv_36716:
  blade = blade + 1;
  ldv_36718:
  {
  tmp___0 = uv_num_possible_blades();
  }
  if (blade < tmp___0) {
    goto ldv_36717;
  } else {
  }
  return (1);
}
}
static int gru_user_dropin(struct gru_thread_state *gts , struct gru_tlb_fault_handle *tfh ,
                           void *cb )
{
  struct gru_mm_struct *gms ;
  int ret ;
  int tmp ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___0 ;
  int tmp___1 ;
  {
  gms = gts->ts_gms;
  gts->ustats.upm_tlbmiss = gts->ustats.upm_tlbmiss + 1UL;
  ldv_36735:
  {
  __might_sleep("drivers/misc/sgi-gru/grufault.c", 632, 0);
  tmp = atomic_read((atomic_t const *)(& gms->ms_range_active));
  }
  if (tmp == 0) {
    goto ldv_36727;
  } else {
  }
  {
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  }
  ldv_36733:
  {
  tmp___0 = prepare_to_wait_event(& gms->ms_wait_queue, & __wait, 2);
  __int = tmp___0;
  tmp___1 = atomic_read((atomic_t const *)(& gms->ms_range_active));
  }
  if (tmp___1 == 0) {
    goto ldv_36732;
  } else {
  }
  {
  schedule();
  }
  goto ldv_36733;
  ldv_36732:
  {
  finish_wait(& gms->ms_wait_queue, & __wait);
  }
  ldv_36727:
  {
  prefetchw((void const *)tfh);
  ret = gru_try_dropin(gts->ts_gru, gts, tfh, (struct gru_instruction_bits *)cb);
  }
  if (ret <= 0) {
    return (ret);
  } else {
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.call_os_wait_queue);
    }
  } else {
  }
  goto ldv_36735;
}
}
int gru_handle_user_call_os(unsigned long cb )
{
  struct gru_tlb_fault_handle *tfh ;
  struct gru_thread_state *gts ;
  void *cbk ;
  int ucbnum ;
  int cbrnum ;
  int ret ;
  unsigned long tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  ret = -22;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.call_os);
    }
  } else {
  }
  {
  tmp = get_cb_number((void *)cb);
  ucbnum = (int )tmp;
  }
  if ((cb & 255UL) != 0UL || ucbnum > 127) {
    return (-22);
  } else {
  }
  {
  gts = gru_find_lock_gts(cb);
  }
  if ((unsigned long )gts == (unsigned long )((struct gru_thread_state *)0)) {
    return (-22);
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_36750;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36750;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36750;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36750;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_36750:
    pscr_ret__ = pfo_ret__;
    goto ldv_36756;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36760;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36760;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36760;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36760;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_36760:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_36756;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36769;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36769;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36769;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36769;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_36769:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_36756;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36778;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36778;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36778;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36778;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_36778:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_36756;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36756;
    switch_break: ;
    }
    ldv_36756:
    {
    printk("\017GRU:%d %s: address 0x%lx, gid %d, gts 0x%p\n", pscr_ret__, "gru_handle_user_call_os",
           cb, (unsigned long )gts->ts_gru != (unsigned long )((struct gru_state *)0) ? (int )(gts->ts_gru)->gs_gid : -1,
           gts);
    }
  } else {
  }
  if (ucbnum >= (int )gts->ts_cbr_au_count * 2) {
    goto exit;
  } else {
  }
  {
  gru_check_context_placement(gts);
  }
  if ((unsigned long )gts->ts_gru != (unsigned long )((struct gru_state *)0) && (int )((signed char )gts->ts_force_cch_reload) != 0) {
    {
    gts->ts_force_cch_reload = 0;
    gru_update_cch(gts);
    }
  } else {
  }
  ret = -11;
  cbrnum = (int )gts->ts_cbr_idx[ucbnum / 2] * 2 + ucbnum % 2;
  if ((unsigned long )gts->ts_gru != (unsigned long )((struct gru_state *)0)) {
    {
    tfh = get_tfh((gts->ts_gru)->gs_gru_base_vaddr, cbrnum);
    cbk = get_gseg_base_address_cb((gts->ts_gru)->gs_gru_base_vaddr, gts->ts_ctxnum,
                                   ucbnum);
    ret = gru_user_dropin(gts, tfh, cbk);
    }
  } else {
  }
  exit:
  {
  gru_unlock_gts(gts);
  }
  return (ret);
}
}
int gru_get_exception_detail(unsigned long arg )
{
  struct control_block_extended_exc_detail excdet ;
  struct gru_control_block_extended *cbe ;
  struct gru_thread_state *gts ;
  int ucbnum ;
  int cbrnum ;
  int ret ;
  unsigned long tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  unsigned long tmp___0 ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___0 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  unsigned long tmp___1 ;
  {
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.user_exception);
    }
  } else {
  }
  {
  tmp = copy_from_user((void *)(& excdet), (void const *)arg, 48UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  {
  gts = gru_find_lock_gts(excdet.cb);
  }
  if ((unsigned long )gts == (unsigned long )((struct gru_thread_state *)0)) {
    return (-22);
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_36802;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36802;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36802;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36802;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_36802:
    pscr_ret__ = pfo_ret__;
    goto ldv_36808;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36812;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36812;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36812;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36812;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_36812:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_36808;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36821;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36821;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36821;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36821;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_36821:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_36808;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36830;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36830;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36830;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36830;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_36830:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_36808;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36808;
    switch_break: ;
    }
    ldv_36808:
    {
    printk("\017GRU:%d %s: address 0x%lx, gid %d, gts 0x%p\n", pscr_ret__, "gru_get_exception_detail",
           excdet.cb, (unsigned long )gts->ts_gru != (unsigned long )((struct gru_state *)0) ? (int )(gts->ts_gru)->gs_gid : -1,
           gts);
    }
  } else {
  }
  {
  tmp___0 = get_cb_number((void *)excdet.cb);
  ucbnum = (int )tmp___0;
  }
  if (ucbnum >= (int )gts->ts_cbr_au_count * 2) {
    ret = -22;
  } else
  if ((unsigned long )gts->ts_gru != (unsigned long )((struct gru_state *)0)) {
    {
    cbrnum = (int )gts->ts_cbr_idx[ucbnum / 2] * 2 + ucbnum % 2;
    cbe = get_cbe((gts->ts_gru)->gs_gru_base_vaddr, cbrnum);
    gru_flush_cache((void *)cbe);
    sync_core();
    excdet.opc = (int )cbe->opccpy;
    excdet.exopc = (int )cbe->exopccpy;
    excdet.ecause = (int )cbe->ecause;
    excdet.exceptdet0 = (long )cbe->idef1upd;
    excdet.exceptdet1 = (int )cbe->idef3upd;
    excdet.cbrstate = (int )cbe->cbrstate;
    excdet.cbrexecstatus = (int )cbe->cbrexecstatus;
    gru_flush_cache_cbe(cbe);
    ret = 0;
    }
  } else {
    ret = -11;
  }
  {
  gru_unlock_gts(gts);
  }
  if ((int )gru_options & 1) {
    __vpp_verify___0 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___4;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___5;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___6;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___7;
    } else {
    }
    goto switch_default___8;
    case_1___4: ;
    {
    if (4UL == 1UL) {
      goto case_1___5;
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
    case_1___5:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_36844;
    case_2___4:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_36844;
    case_4___4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_36844;
    case_8___4:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_36844;
    switch_default___4:
    {
    __bad_percpu_size();
    }
    switch_break___5: ;
    }
    ldv_36844:
    pscr_ret_____0 = pfo_ret_____3;
    goto ldv_36850;
    case_2___5: ;
    {
    if (4UL == 1UL) {
      goto case_1___6;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___6;
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
    case_1___6:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_36854;
    case_2___6:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_36854;
    case_4___5:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_36854;
    case_8___5:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_36854;
    switch_default___5:
    {
    __bad_percpu_size();
    }
    switch_break___6: ;
    }
    ldv_36854:
    pscr_ret_____0 = pfo_ret_____4;
    goto ldv_36850;
    case_4___6: ;
    {
    if (4UL == 1UL) {
      goto case_1___7;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___7;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___7;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___6;
    } else {
    }
    goto switch_default___6;
    case_1___7:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_36863;
    case_2___7:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_36863;
    case_4___7:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_36863;
    case_8___6:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_36863;
    switch_default___6:
    {
    __bad_percpu_size();
    }
    switch_break___7: ;
    }
    ldv_36863:
    pscr_ret_____0 = pfo_ret_____5;
    goto ldv_36850;
    case_8___7: ;
    {
    if (4UL == 1UL) {
      goto case_1___8;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___8;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___8;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___8;
    } else {
    }
    goto switch_default___7;
    case_1___8:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_36872;
    case_2___8:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_36872;
    case_4___8:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_36872;
    case_8___8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_36872;
    switch_default___7:
    {
    __bad_percpu_size();
    }
    switch_break___8: ;
    }
    ldv_36872:
    pscr_ret_____0 = pfo_ret_____6;
    goto ldv_36850;
    switch_default___8:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36850;
    switch_break___4: ;
    }
    ldv_36850:
    {
    printk("\017GRU:%d %s: cb 0x%lx, op %d, exopc %d, cbrstate %d, cbrexecstatus 0x%x, ecause 0x%x, exdet0 0x%lx, exdet1 0x%x\n",
           pscr_ret_____0, "gru_get_exception_detail", excdet.cb, excdet.opc, excdet.exopc,
           excdet.cbrstate, excdet.cbrexecstatus, excdet.ecause, excdet.exceptdet0,
           excdet.exceptdet1);
    }
  } else {
  }
  if (ret == 0) {
    {
    tmp___1 = copy_to_user((void *)arg, (void const *)(& excdet), 48UL);
    }
    if (tmp___1 != 0UL) {
      ret = -14;
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int gru_unload_all_contexts(void)
{
  struct gru_thread_state *gts ;
  struct gru_state *gru ;
  int gid ;
  int ctxnum ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
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
    return (-1);
  } else {
  }
  gid = 0;
  goto ldv_36891;
  ldv_36890:
  {
  gru = (unsigned long )gru_base[gid / 2] != (unsigned long )((struct gru_blade_state *)0) ? (struct gru_state *)(& (gru_base[gid / 2])->bs_grus) + (unsigned long )(gid % 2) : (struct gru_state *)0;
  ldv_spin_lock_108(& gru->gs_lock);
  ctxnum = 0;
  }
  goto ldv_36888;
  ldv_36887:
  gts = gru->gs_gts[ctxnum];
  if ((unsigned long )gts != (unsigned long )((struct gru_thread_state *)0)) {
    {
    tmp___1 = ldv_mutex_trylock_104(& gts->ts_ctxlock);
    }
    if (tmp___1 != 0) {
      {
      ldv_spin_unlock_109(& gru->gs_lock);
      gru_unload_context(gts, 1);
      ldv_mutex_unlock_106(& gts->ts_ctxlock);
      ldv_spin_lock_108(& gru->gs_lock);
      }
    } else {
    }
  } else {
  }
  ctxnum = ctxnum + 1;
  ldv_36888: ;
  if (ctxnum <= 15) {
    goto ldv_36887;
  } else {
  }
  {
  ldv_spin_unlock_109(& gru->gs_lock);
  gid = gid + 1;
  }
  ldv_36891: ;
  if ((unsigned int )gid < gru_max_gids) {
    goto ldv_36890;
  } else {
  }
  return (0);
}
}
int gru_user_unload_context(unsigned long arg )
{
  struct gru_thread_state *gts ;
  struct gru_unload_context_req req ;
  unsigned long tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int tmp___0 ;
  {
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.user_unload_context);
    }
  } else {
  }
  {
  tmp = copy_from_user((void *)(& req), (void const *)arg, 8UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_36903;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36903;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36903;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36903;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_36903:
    pscr_ret__ = pfo_ret__;
    goto ldv_36909;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36913;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36913;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36913;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36913;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_36913:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_36909;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36922;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36922;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36922;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36922;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_36922:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_36909;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36931;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36931;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36931;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36931;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_36931:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_36909;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36909;
    switch_break: ;
    }
    ldv_36909:
    {
    printk("\017GRU:%d %s: gseg 0x%lx\n", pscr_ret__, "gru_user_unload_context", req.gseg);
    }
  } else {
  }
  if (req.gseg == 0UL) {
    {
    tmp___0 = gru_unload_all_contexts();
    }
    return (tmp___0);
  } else {
  }
  {
  gts = gru_find_lock_gts(req.gseg);
  }
  if ((unsigned long )gts == (unsigned long )((struct gru_thread_state *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned long )gts->ts_gru != (unsigned long )((struct gru_state *)0)) {
    {
    gru_unload_context(gts, 1);
    }
  } else {
  }
  {
  gru_unlock_gts(gts);
  }
  return (0);
}
}
int gru_user_flush_tlb(unsigned long arg )
{
  struct gru_thread_state *gts ;
  struct gru_flush_tlb_req req ;
  struct gru_mm_struct *gms ;
  unsigned long tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.user_flush_tlb);
    }
  } else {
  }
  {
  tmp = copy_from_user((void *)(& req), (void const *)arg, 24UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_36951;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36951;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36951;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_36951;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_36951:
    pscr_ret__ = pfo_ret__;
    goto ldv_36957;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36961;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36961;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36961;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_36961;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_36961:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_36957;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36970;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36970;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36970;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_36970;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_36970:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_36957;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36979;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36979;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36979;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_36979;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_36979:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_36957;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_36957;
    switch_break: ;
    }
    ldv_36957:
    {
    printk("\017GRU:%d %s: gseg 0x%lx, vaddr 0x%lx, len 0x%lx\n", pscr_ret__, "gru_user_flush_tlb",
           req.gseg, req.vaddr, req.len);
    }
  } else {
  }
  {
  gts = gru_find_lock_gts(req.gseg);
  }
  if ((unsigned long )gts == (unsigned long )((struct gru_thread_state *)0)) {
    return (-22);
  } else {
  }
  {
  gms = gts->ts_gms;
  gru_unlock_gts(gts);
  gru_flush_tlb_range(gms, req.vaddr, req.len);
  }
  return (0);
}
}
long gru_get_gseg_statistics(unsigned long arg )
{
  struct gru_thread_state *gts ;
  struct gru_get_gseg_statistics_req req ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  {
  tmp = copy_from_user((void *)(& req), (void const *)arg, 120UL);
  }
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  {
  gts = gru_find_lock_gts(req.gseg);
  }
  if ((unsigned long )gts != (unsigned long )((struct gru_thread_state *)0)) {
    {
    memcpy((void *)(& req.stats), (void const *)(& gts->ustats), 112UL);
    gru_unlock_gts(gts);
    }
  } else {
    {
    memset((void *)(& req.stats), 0, 112UL);
    }
  }
  {
  tmp___0 = copy_to_user((void *)arg, (void const *)(& req), 120UL);
  }
  if (tmp___0 != 0UL) {
    return (-14L);
  } else {
  }
  return (0L);
}
}
int gru_set_context_option(unsigned long arg )
{
  struct gru_thread_state *gts ;
  struct gru_set_context_option_req req ;
  int ret ;
  unsigned long tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  long tmp___0 ;
  bool tmp___1 ;
  struct task_struct *tmp___2 ;
  {
  ret = 0;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.set_context_option);
    }
  } else {
  }
  {
  tmp = copy_from_user((void *)(& req), (void const *)arg, 24UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_37004;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_37004;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_37004;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_37004;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_37004:
    pscr_ret__ = pfo_ret__;
    goto ldv_37010;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_37014;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_37014;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_37014;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_37014;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_37014:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_37010;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_37023;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_37023;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_37023;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_37023;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_37023:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_37010;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_37032;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_37032;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_37032;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_37032;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_37032:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_37010;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_37010;
    switch_break: ;
    }
    ldv_37010:
    {
    printk("\017GRU:%d %s: op %d, gseg 0x%lx, value1 0x%lx\n", pscr_ret__, "gru_set_context_option",
           req.op, req.gseg, req.val1);
    }
  } else {
  }
  {
  gts = gru_find_lock_gts(req.gseg);
  }
  if ((unsigned long )gts == (unsigned long )((struct gru_thread_state *)0)) {
    {
    gts = gru_alloc_locked_gts(req.gseg);
    tmp___1 = IS_ERR((void const *)gts);
    }
    if ((int )tmp___1) {
      {
      tmp___0 = PTR_ERR((void const *)gts);
      }
      return ((int )tmp___0);
    } else {
    }
  } else {
  }
  {
  if (req.op == 2) {
    goto case_2___4;
  } else {
  }
  if (req.op == 0) {
    goto case_0;
  } else {
  }
  if (req.op == 1) {
    goto case_1___4;
  } else {
  }
  goto switch_default___4;
  case_2___4: ;
  if ((((unsigned int )req.val0 - 4294967295U > 2U || req.val1 < -1L) || req.val1 > 1023L) || (req.val1 >= 0L && (unsigned long )gru_base[req.val1] == (unsigned long )((struct gru_blade_state *)0))) {
    ret = -22;
  } else {
    {
    gts->ts_user_blade_id = (short )req.val1;
    gts->ts_user_chiplet_id = (char )req.val0;
    gru_check_context_placement(gts);
    }
  }
  goto ldv_37042;
  case_0:
  {
  tmp___2 = get_current___1();
  gts->ts_tgid_owner = tmp___2->tgid;
  }
  goto ldv_37042;
  case_1___4:
  gts->ts_cch_req_slice = (int )((char )req.val1) & 3;
  goto ldv_37042;
  switch_default___4:
  ret = -22;
  switch_break___4: ;
  }
  ldv_37042:
  {
  gru_unlock_gts(gts);
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
static void ldv_mutex_lock_96(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ts_ctxlock_of_gru_thread_state(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ts_ctxlock_of_gru_thread_state(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ts_ctxlock_of_gru_thread_state(ldv_func_arg1);
  }
  return;
}
}
static unsigned long ldv_find_first_bit_99(unsigned long const *addr , unsigned long size )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_first_bit(size);
  }
  return (tmp);
}
}
static unsigned long ldv_find_next_bit_100(unsigned long const *addr , unsigned long size ,
                                           unsigned long offset )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_next_bit(size, offset);
  }
  return (tmp);
}
}
static unsigned long ldv_find_first_bit_101(unsigned long const *addr , unsigned long size )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_first_bit(size);
  }
  return (tmp);
}
}
static unsigned long ldv_find_next_bit_102(unsigned long const *addr , unsigned long size ,
                                           unsigned long offset )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_next_bit(size, offset);
  }
  return (tmp);
}
}
static int ldv_mutex_trylock_104(struct mutex *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_mutex_mutex_trylock_ts_ctxlock_of_gru_thread_state(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_mutex_unlock_106(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ts_ctxlock_of_gru_thread_state(ldv_func_arg1);
  }
  return;
}
}
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v ) ;
void ldv_linux_kernel_rcu_update_lock_rcu_read_lock(void) ;
void ldv_linux_kernel_rcu_update_lock_rcu_read_unlock(void) ;
extern struct pv_cpu_ops pv_cpu_ops ;
__inline static int fls(int x )
{
  int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
static unsigned long ldv_find_next_bit_98(unsigned long const *addr , unsigned long size ,
                                          unsigned long offset ) ;
static unsigned long ldv_find_first_bit_97(unsigned long const *addr , unsigned long size ) ;
__inline static struct task_struct *get_current___2(void)
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
  goto ldv_3544;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3544;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3544;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3544;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3544: ;
  return (pfo_ret__);
}
}
__inline static u64 paravirt_read_tsc(void)
{
  u64 __ret ;
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
  tmp = ldv__builtin_expect((unsigned long )pv_cpu_ops.read_tsc == (unsigned long )((u64 (*)(void))0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (179), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c6;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c5\n  .byte 772b-771b\n  .short %c7\n.popsection\n": "=D" (__edi),
                       "=S" (__esi), "=d" (__edx), "=c" (__ecx), "=a" (__eax): [paravirt_typenum] "i" (34UL),
                       [paravirt_opptr] "i" (& pv_cpu_ops.read_tsc), [paravirt_clobber] "i" (511): "memory",
                       "cc", "r8", "r9", "r10", "r11");
  __ret = (unsigned long long )__eax;
  return (__ret);
}
}
__inline static void *ERR_PTR(long error ) ;
__inline static void atomic_inc(atomic_t *v ) ;
__inline static int atomic_dec_and_test(atomic_t *v ) ;
__inline static int atomic_add_return(int i , atomic_t *v ) ;
__inline static int atomic_sub_return___0(int i , atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = atomic_add_return(- i, v);
  }
  return (tmp);
}
}
__inline static void __preempt_count_add___0(int val )
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
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_7188;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_7188;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_7188;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_7188;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7188: ;
  return;
}
}
__inline static void __preempt_count_sub___0(int val )
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
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_7200;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_7200;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_7200;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_7200;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7200: ;
  return;
}
}
__inline static void ldv_spin_lock_96(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_99(spinlock_t *lock ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern int debug_lockdep_rcu_enabled(void) ;
extern int rcu_read_lock_held(void) ;
__inline static void rcu_read_lock(void) ;
__inline static void rcu_read_unlock(void) ;
__inline static cycles_t get_cycles(void)
{
  unsigned long long ret ;
  {
  {
  ret = 0ULL;
  ret = paravirt_read_tsc();
  }
  return (ret);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int __mmu_notifier_register(struct mmu_notifier * , struct mm_struct * ) ;
static int ldv___mmu_notifier_register_100(struct mmu_notifier *ldv_func_arg1 , struct mm_struct *ldv_func_arg2 ) ;
extern void mmu_notifier_unregister(struct mmu_notifier * , struct mm_struct * ) ;
static void ldv_mmu_notifier_unregister_101(struct mmu_notifier *ldv_func_arg1 , struct mm_struct *ldv_func_arg2 ) ;
__inline static struct gru_tlb_global_handle *get_tgh(void *base , int ctxnum )
{
  {
  return ((struct gru_tlb_global_handle *)(base + ((unsigned long )(ctxnum * 256) + 67141632UL)));
}
}
int tgh_invalidate(struct gru_tlb_global_handle *tgh , unsigned long vaddr , unsigned long vaddrmask ,
                   int asid , int pagesize , int global , int n , unsigned short ctxbitmap ) ;
__inline static void __lock_handle___0(void *h )
{
  int tmp ;
  {
  goto ldv_33003;
  ldv_33002:
  {
  cpu_relax();
  }
  ldv_33003:
  {
  tmp = test_and_set_bit(1L, (unsigned long volatile *)h);
  }
  if (tmp != 0) {
    goto ldv_33002;
  } else {
  }
  return;
}
}
__inline static void lock_tgh_handle(struct gru_tlb_global_handle *tgh )
{
  {
  {
  __lock_handle___0((void *)tgh);
  }
  return;
}
}
__inline static void unlock_tgh_handle(struct gru_tlb_global_handle *tgh )
{
  {
  {
  __unlock_handle((void *)tgh);
  }
  return;
}
}
__inline static int uv_blade_processor_id(void)
{
  void const *__vpp_verify ;
  unsigned long tcp_ptr__ ;
  {
  __vpp_verify = (void const *)0;
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off), "0" (& __uv_hub_info));
  return ((int )((struct uv_hub_info_s *)tcp_ptr__)->blade_processor_id);
}
}
__inline static int get_off_blade_tgh(struct gru_state *gru )
{
  int n ;
  cycles_t tmp ;
  {
  {
  n = 24 - (int )gru->gs_tgh_first_remote;
  tmp = get_cycles();
  n = (int )(tmp % (cycles_t )n);
  n = n + (int )gru->gs_tgh_first_remote;
  }
  return (n);
}
}
__inline static int get_on_blade_tgh(struct gru_state *gru )
{
  int tmp ;
  {
  {
  tmp = uv_blade_processor_id();
  }
  return (tmp >> (int )gru->gs_tgh_local_shift);
}
}
static struct gru_tlb_global_handle *get_lock_tgh_handle(struct gru_state *gru )
{
  struct gru_tlb_global_handle *tgh ;
  int n ;
  int tmp ;
  {
  {
  __preempt_count_add___0(1);
  __asm__ volatile ("": : : "memory");
  tmp = uv_numa_blade_id();
  }
  if (tmp == (int )gru->gs_blade_id) {
    {
    n = get_on_blade_tgh(gru);
    }
  } else {
    {
    n = get_off_blade_tgh(gru);
    }
  }
  {
  tgh = get_tgh(gru->gs_gru_base_vaddr, n);
  lock_tgh_handle(tgh);
  }
  return (tgh);
}
}
static void get_unlock_tgh_handle(struct gru_tlb_global_handle *tgh )
{
  {
  {
  unlock_tgh_handle(tgh);
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub___0(1);
  }
  return;
}
}
void gru_flush_tlb_range(struct gru_mm_struct *gms , unsigned long start , unsigned long len )
{
  struct gru_state *gru ;
  struct gru_mm_tracker *asids ;
  struct gru_tlb_global_handle *tgh ;
  unsigned long num ;
  int grupagesize ;
  int pagesize ;
  int pageshift ;
  int gid ;
  int asid ;
  unsigned long _min1 ;
  unsigned long _min2 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  unsigned long tmp ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___0 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  int pscr_ret_____1 ;
  void const *__vpp_verify___1 ;
  int pfo_ret_____7 ;
  int pfo_ret_____8 ;
  int pfo_ret_____9 ;
  int pfo_ret_____10 ;
  unsigned long tmp___0 ;
  {
  pageshift = 12;
  pagesize = (int )(1UL << pageshift);
  grupagesize = pageshift > 20 ? ((pageshift + 2) >> 1) + -6 : (pageshift >> 1) + -6;
  _min1 = ((len + (unsigned long )pagesize) - 1UL) >> pageshift;
  _min2 = 1024UL;
  num = _min1 < _min2 ? _min1 : _min2;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.flush_tlb);
    }
  } else {
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34591;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34591;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34591;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34591;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34591:
    pscr_ret__ = pfo_ret__;
    goto ldv_34597;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34601;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34601;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34601;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34601;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34601:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34597;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34610;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34610;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34610;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34610;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34610:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34597;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34619;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34619;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34619;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34619;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34619:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34597;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34597;
    switch_break: ;
    }
    ldv_34597:
    {
    printk("\017GRU:%d %s: gms %p, start 0x%lx, len 0x%lx, asidmap 0x%lx\n", pscr_ret__,
           "gru_flush_tlb_range", gms, start, len, gms->ms_asidmap[0]);
    }
  } else {
  }
  {
  ldv_spin_lock_96(& gms->ms_asid_lock);
  tmp = ldv_find_first_bit_97((unsigned long const *)(& gms->ms_asidmap), 2048UL);
  gid = (int )tmp;
  }
  goto ldv_34711;
  ldv_34710: ;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.flush_tlb_gru);
    }
  } else {
  }
  gru = (unsigned long )gru_base[gid / 2] != (unsigned long )((struct gru_blade_state *)0) ? (struct gru_state *)(& (gru_base[gid / 2])->bs_grus) + (unsigned long )(gid % 2) : (struct gru_state *)0;
  asids = (struct gru_mm_tracker *)(& gms->ms_asids) + (unsigned long )gid;
  asid = (int )asids->mt_asid;
  if ((unsigned int )asids->mt_ctxbitmap != 0U && asid != 0) {
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.flush_tlb_gru_tgh);
      }
    } else {
    }
    asid = (int )((unsigned int )asid + ((unsigned int )(start >> 61) & 3U));
    if ((int )gru_options & 1) {
      __vpp_verify___0 = (void const *)0;
      {
      if (4UL == 1UL) {
        goto case_1___4;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___5;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___6;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___7;
      } else {
      }
      goto switch_default___8;
      case_1___4: ;
      {
      if (4UL == 1UL) {
        goto case_1___5;
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
      case_1___5:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
      goto ldv_34633;
      case_2___4:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
      goto ldv_34633;
      case_4___4:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
      goto ldv_34633;
      case_8___4:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
      goto ldv_34633;
      switch_default___4:
      {
      __bad_percpu_size();
      }
      switch_break___5: ;
      }
      ldv_34633:
      pscr_ret_____0 = pfo_ret_____3;
      goto ldv_34639;
      case_2___5: ;
      {
      if (4UL == 1UL) {
        goto case_1___6;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___6;
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
      case_1___6:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
      goto ldv_34643;
      case_2___6:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
      goto ldv_34643;
      case_4___5:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
      goto ldv_34643;
      case_8___5:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
      goto ldv_34643;
      switch_default___5:
      {
      __bad_percpu_size();
      }
      switch_break___6: ;
      }
      ldv_34643:
      pscr_ret_____0 = pfo_ret_____4;
      goto ldv_34639;
      case_4___6: ;
      {
      if (4UL == 1UL) {
        goto case_1___7;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___7;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___7;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___6;
      } else {
      }
      goto switch_default___6;
      case_1___7:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
      goto ldv_34652;
      case_2___7:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
      goto ldv_34652;
      case_4___7:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
      goto ldv_34652;
      case_8___6:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
      goto ldv_34652;
      switch_default___6:
      {
      __bad_percpu_size();
      }
      switch_break___7: ;
      }
      ldv_34652:
      pscr_ret_____0 = pfo_ret_____5;
      goto ldv_34639;
      case_8___7: ;
      {
      if (4UL == 1UL) {
        goto case_1___8;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___8;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___8;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___8;
      } else {
      }
      goto switch_default___7;
      case_1___8:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
      goto ldv_34661;
      case_2___8:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
      goto ldv_34661;
      case_4___8:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
      goto ldv_34661;
      case_8___8:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
      goto ldv_34661;
      switch_default___7:
      {
      __bad_percpu_size();
      }
      switch_break___8: ;
      }
      ldv_34661:
      pscr_ret_____0 = pfo_ret_____6;
      goto ldv_34639;
      switch_default___8:
      {
      __bad_size_call_parameter();
      }
      goto ldv_34639;
      switch_break___4: ;
      }
      ldv_34639:
      {
      printk("\017GRU:%d %s:   FLUSH gruid %d, asid 0x%x, vaddr 0x%lx, vamask 0x%x, num %ld, cbmap 0x%x\n",
             pscr_ret_____0, "gru_flush_tlb_range", gid, asid, start, grupagesize,
             num, (int )asids->mt_ctxbitmap);
      }
    } else {
    }
    {
    tgh = get_lock_tgh_handle(gru);
    tgh_invalidate(tgh, start, 0xffffffffffffffffUL, asid, grupagesize, 0, (int )((unsigned int )num - 1U),
                   (int )asids->mt_ctxbitmap);
    get_unlock_tgh_handle(tgh);
    }
  } else {
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.flush_tlb_gru_zero_asid);
      }
    } else {
    }
    {
    asids->mt_asid = 0U;
    __clear_bit((long )gru->gs_gid, (unsigned long volatile *)(& gms->ms_asidmap));
    }
    if ((int )gru_options & 1) {
      __vpp_verify___1 = (void const *)0;
      {
      if (4UL == 1UL) {
        goto case_1___9;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___10;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___11;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___12;
      } else {
      }
      goto switch_default___13;
      case_1___9: ;
      {
      if (4UL == 1UL) {
        goto case_1___10;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___9;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___9;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___9;
      } else {
      }
      goto switch_default___9;
      case_1___10:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____7): "m" (cpu_number));
      goto ldv_34674;
      case_2___9:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
      goto ldv_34674;
      case_4___9:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
      goto ldv_34674;
      case_8___9:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
      goto ldv_34674;
      switch_default___9:
      {
      __bad_percpu_size();
      }
      switch_break___10: ;
      }
      ldv_34674:
      pscr_ret_____1 = pfo_ret_____7;
      goto ldv_34680;
      case_2___10: ;
      {
      if (4UL == 1UL) {
        goto case_1___11;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___11;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___10;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___10;
      } else {
      }
      goto switch_default___10;
      case_1___11:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____8): "m" (cpu_number));
      goto ldv_34684;
      case_2___11:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
      goto ldv_34684;
      case_4___10:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
      goto ldv_34684;
      case_8___10:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
      goto ldv_34684;
      switch_default___10:
      {
      __bad_percpu_size();
      }
      switch_break___11: ;
      }
      ldv_34684:
      pscr_ret_____1 = pfo_ret_____8;
      goto ldv_34680;
      case_4___11: ;
      {
      if (4UL == 1UL) {
        goto case_1___12;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___12;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___12;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___11;
      } else {
      }
      goto switch_default___11;
      case_1___12:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____9): "m" (cpu_number));
      goto ldv_34693;
      case_2___12:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
      goto ldv_34693;
      case_4___12:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
      goto ldv_34693;
      case_8___11:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
      goto ldv_34693;
      switch_default___11:
      {
      __bad_percpu_size();
      }
      switch_break___12: ;
      }
      ldv_34693:
      pscr_ret_____1 = pfo_ret_____9;
      goto ldv_34680;
      case_8___12: ;
      {
      if (4UL == 1UL) {
        goto case_1___13;
      } else {
      }
      if (4UL == 2UL) {
        goto case_2___13;
      } else {
      }
      if (4UL == 4UL) {
        goto case_4___13;
      } else {
      }
      if (4UL == 8UL) {
        goto case_8___13;
      } else {
      }
      goto switch_default___12;
      case_1___13:
      __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____10): "m" (cpu_number));
      goto ldv_34702;
      case_2___13:
      __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
      goto ldv_34702;
      case_4___13:
      __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
      goto ldv_34702;
      case_8___13:
      __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
      goto ldv_34702;
      switch_default___12:
      {
      __bad_percpu_size();
      }
      switch_break___13: ;
      }
      ldv_34702:
      pscr_ret_____1 = pfo_ret_____10;
      goto ldv_34680;
      switch_default___13:
      {
      __bad_size_call_parameter();
      }
      goto ldv_34680;
      switch_break___9: ;
      }
      ldv_34680:
      {
      printk("\017GRU:%d %s:   CLEARASID gruid %d, asid 0x%x, cbtmap 0x%x, asidmap 0x%lx\n",
             pscr_ret_____1, "gru_flush_tlb_range", gid, asid, (int )asids->mt_ctxbitmap,
             gms->ms_asidmap[0]);
      }
    } else {
    }
  }
  {
  tmp___0 = ldv_find_next_bit_98((unsigned long const *)(& gms->ms_asidmap), 2048UL,
                                 (unsigned long )(gid + 1));
  gid = (int )tmp___0;
  }
  ldv_34711: ;
  if (gid <= 2047) {
    goto ldv_34710;
  } else {
  }
  {
  ldv_spin_unlock_99(& gms->ms_asid_lock);
  }
  return;
}
}
void gru_flush_all_tlb(struct gru_state *gru )
{
  struct gru_tlb_global_handle *tgh ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34722;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34722;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34722;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34722;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34722:
    pscr_ret__ = pfo_ret__;
    goto ldv_34728;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34732;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34732;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34732;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34732;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34732:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34728;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34741;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34741;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34741;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34741;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34741:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34728;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34750;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34750;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34750;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34750;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34750:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34728;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34728;
    switch_break: ;
    }
    ldv_34728:
    {
    printk("\017GRU:%d %s: gid %d\n", pscr_ret__, "gru_flush_all_tlb", (int )gru->gs_gid);
    }
  } else {
  }
  {
  tgh = get_lock_tgh_handle(gru);
  tgh_invalidate(tgh, 0UL, 0xffffffffffffffffUL, 0, 1, 1, 1023, 65535);
  get_unlock_tgh_handle(tgh);
  }
  return;
}
}
static void gru_invalidate_range_start(struct mmu_notifier *mn , struct mm_struct *mm ,
                                       unsigned long start , unsigned long end )
{
  struct gru_mm_struct *gms ;
  struct mmu_notifier const *__mptr ;
  int tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  __mptr = (struct mmu_notifier const *)mn;
  gms = (struct gru_mm_struct *)__mptr;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.mmu_invalidate_range);
    }
  } else {
  }
  {
  atomic_inc(& gms->ms_range_active);
  }
  if ((int )gru_options & 1) {
    {
    tmp = atomic_read((atomic_t const *)(& gms->ms_range_active));
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34773;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34773;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34773;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34773;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34773:
    pscr_ret__ = pfo_ret__;
    goto ldv_34779;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34783;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34783;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34783;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34783;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34783:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34779;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34792;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34792;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34792;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34792;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34792:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34779;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34801;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34801;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34801;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34801;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34801:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34779;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34779;
    switch_break: ;
    }
    ldv_34779:
    {
    printk("\017GRU:%d %s: gms %p, start 0x%lx, end 0x%lx, act %d\n", pscr_ret__,
           "gru_invalidate_range_start", gms, start, end, tmp);
    }
  } else {
  }
  {
  gru_flush_tlb_range(gms, start, end - start);
  }
  return;
}
}
static void gru_invalidate_range_end(struct mmu_notifier *mn , struct mm_struct *mm ,
                                     unsigned long start , unsigned long end )
{
  struct gru_mm_struct *gms ;
  struct mmu_notifier const *__mptr ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  {
  __mptr = (struct mmu_notifier const *)mn;
  gms = (struct gru_mm_struct *)__mptr;
  atomic_dec_and_test(& gms->ms_range_active);
  __wake_up(& gms->ms_wait_queue, 3U, 0, (void *)0);
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34824;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34824;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34824;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34824;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34824:
    pscr_ret__ = pfo_ret__;
    goto ldv_34830;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34834;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34834;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34834;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34834;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34834:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34830;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34843;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34843;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34843;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34843;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34843:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34830;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34852;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34852;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34852;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34852;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34852:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34830;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34830;
    switch_break: ;
    }
    ldv_34830:
    {
    printk("\017GRU:%d %s: gms %p, start 0x%lx, end 0x%lx\n", pscr_ret__, "gru_invalidate_range_end",
           gms, start, end);
    }
  } else {
  }
  return;
}
}
static void gru_invalidate_page(struct mmu_notifier *mn , struct mm_struct *mm , unsigned long address )
{
  struct gru_mm_struct *gms ;
  struct mmu_notifier const *__mptr ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  __mptr = (struct mmu_notifier const *)mn;
  gms = (struct gru_mm_struct *)__mptr;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.mmu_invalidate_page);
    }
  } else {
  }
  {
  gru_flush_tlb_range(gms, address, 4096UL);
  }
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34874;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34874;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34874;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34874;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34874:
    pscr_ret__ = pfo_ret__;
    goto ldv_34880;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34884;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34884;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34884;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34884;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34884:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34880;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34893;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34893;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34893;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34893;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34893:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34880;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34902;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34902;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34902;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34902;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34902:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34880;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34880;
    switch_break: ;
    }
    ldv_34880:
    {
    printk("\017GRU:%d %s: gms %p, address 0x%lx\n", pscr_ret__, "gru_invalidate_page",
           gms, address);
    }
  } else {
  }
  return;
}
}
static void gru_release(struct mmu_notifier *mn , struct mm_struct *mm )
{
  struct gru_mm_struct *gms ;
  struct mmu_notifier const *__mptr ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  __mptr = (struct mmu_notifier const *)mn;
  gms = (struct gru_mm_struct *)__mptr;
  gms->ms_released = 1;
  if ((int )gru_options & 1) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34923;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34923;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34923;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34923;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34923:
    pscr_ret__ = pfo_ret__;
    goto ldv_34929;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34933;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34933;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34933;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34933;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34933:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34929;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34942;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34942;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34942;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34942;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34942:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34929;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34951;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34951;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34951;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34951;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34951:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34929;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34929;
    switch_break: ;
    }
    ldv_34929:
    {
    printk("\017GRU:%d %s: gms %p\n", pscr_ret__, "gru_release", gms);
    }
  } else {
  }
  return;
}
}
static struct mmu_notifier_ops const gru_mmuops =
     {& gru_release, 0, 0, 0, & gru_invalidate_page, & gru_invalidate_range_start, & gru_invalidate_range_end,
    0};
static struct mmu_notifier *mmu_find_ops(struct mm_struct *mm , struct mmu_notifier_ops const *ops )
{
  struct mmu_notifier *mn ;
  struct mmu_notifier *gru_mn ;
  struct hlist_node *____ptr ;
  struct hlist_node *________p1 ;
  struct hlist_node *_________p1 ;
  struct hlist_node *__var ;
  bool __warned ;
  int tmp ;
  struct hlist_node const *__mptr ;
  struct mmu_notifier *tmp___0 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node *________p1___0 ;
  struct hlist_node *_________p1___0 ;
  struct hlist_node *__var___0 ;
  bool __warned___0 ;
  int tmp___1 ;
  struct hlist_node const *__mptr___0 ;
  struct mmu_notifier *tmp___2 ;
  {
  gru_mn = (struct mmu_notifier *)0;
  if ((unsigned long )mm->mmu_notifier_mm != (unsigned long )((struct mmu_notifier_mm *)0)) {
    {
    rcu_read_lock();
    __var = (struct hlist_node *)0;
    _________p1 = *((struct hlist_node * volatile *)(& (mm->mmu_notifier_mm)->list.first));
    ________p1 = _________p1;
    tmp = debug_lockdep_rcu_enabled();
    }
    if (tmp != 0 && ! __warned) {
      {
      rcu_read_lock_held();
      }
    } else {
    }
    ____ptr = ________p1;
    if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
      __mptr = (struct hlist_node const *)____ptr;
      tmp___0 = (struct mmu_notifier *)__mptr;
    } else {
      tmp___0 = (struct mmu_notifier *)0;
    }
    mn = tmp___0;
    goto ldv_35005;
    ldv_35004: ;
    if ((unsigned long )mn->ops == (unsigned long )ops) {
      gru_mn = mn;
      goto ldv_35003;
    } else {
    }
    {
    __var___0 = (struct hlist_node *)0;
    _________p1___0 = *((struct hlist_node * volatile *)(& mn->hlist.next));
    ________p1___0 = _________p1___0;
    tmp___1 = debug_lockdep_rcu_enabled();
    }
    if (tmp___1 != 0 && ! __warned___0) {
      {
      rcu_read_lock_held();
      }
    } else {
    }
    ____ptr___0 = ________p1___0;
    if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
      __mptr___0 = (struct hlist_node const *)____ptr___0;
      tmp___2 = (struct mmu_notifier *)__mptr___0;
    } else {
      tmp___2 = (struct mmu_notifier *)0;
    }
    mn = tmp___2;
    ldv_35005: ;
    if ((unsigned long )mn != (unsigned long )((struct mmu_notifier *)0)) {
      goto ldv_35004;
    } else {
    }
    ldv_35003:
    {
    rcu_read_unlock();
    }
  } else {
  }
  return (gru_mn);
}
}
struct gru_mm_struct *gru_register_mmu_notifier(void)
{
  struct gru_mm_struct *gms ;
  struct mmu_notifier *mn ;
  int err ;
  struct task_struct *tmp ;
  struct mmu_notifier const *__mptr ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  void *tmp___3 ;
  {
  {
  tmp = get_current___2();
  mn = mmu_find_ops(tmp->mm, & gru_mmuops);
  }
  if ((unsigned long )mn != (unsigned long )((struct mmu_notifier *)0)) {
    {
    __mptr = (struct mmu_notifier const *)mn;
    gms = (struct gru_mm_struct *)__mptr;
    atomic_inc(& gms->ms_refcnt);
    }
  } else {
    {
    tmp___0 = kzalloc(16840UL, 208U);
    gms = (struct gru_mm_struct *)tmp___0;
    }
    if ((unsigned long )gms != (unsigned long )((struct gru_mm_struct *)0)) {
      if ((gru_options & 2UL) != 0UL) {
        {
        atomic_long_inc(& gru_stats.gms_alloc);
        }
      } else {
      }
      {
      spinlock_check(& gms->ms_asid_lock);
      __raw_spin_lock_init(& gms->ms_asid_lock.__annonCompField18.rlock, "&(&gms->ms_asid_lock)->rlock",
                           & __key);
      gms->ms_notifier.ops = & gru_mmuops;
      atomic_set(& gms->ms_refcnt, 1);
      __init_waitqueue_head(& gms->ms_wait_queue, "&gms->ms_wait_queue", & __key___0);
      tmp___1 = get_current___2();
      err = ldv___mmu_notifier_register_100(& gms->ms_notifier, tmp___1->mm);
      }
      if (err != 0) {
        goto error;
      } else {
      }
    } else {
    }
  }
  if ((int )gru_options & 1) {
    {
    tmp___2 = atomic_read((atomic_t const *)(& gms->ms_refcnt));
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_35022;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_35022;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_35022;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_35022;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_35022:
    pscr_ret__ = pfo_ret__;
    goto ldv_35028;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_35032;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_35032;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_35032;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_35032;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_35032:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_35028;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_35041;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_35041;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_35041;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_35041;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_35041:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_35028;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_35050;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_35050;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_35050;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_35050;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_35050:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_35028;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_35028;
    switch_break: ;
    }
    ldv_35028:
    {
    printk("\017GRU:%d %s: gms %p, refcnt %d\n", pscr_ret__, "gru_register_mmu_notifier",
           gms, tmp___2);
    }
  } else {
  }
  return (gms);
  error:
  {
  kfree((void const *)gms);
  tmp___3 = ERR_PTR((long )err);
  }
  return ((struct gru_mm_struct *)tmp___3);
}
}
void gru_drop_mmu_notifier(struct gru_mm_struct *gms )
{
  int tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  {
  if ((int )gru_options & 1) {
    {
    tmp = atomic_read((atomic_t const *)(& gms->ms_refcnt));
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_35067;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_35067;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_35067;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_35067;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_35067:
    pscr_ret__ = pfo_ret__;
    goto ldv_35073;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_35077;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_35077;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_35077;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_35077;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_35077:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_35073;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_35086;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_35086;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_35086;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_35086;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_35086:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_35073;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_35095;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_35095;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_35095;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_35095;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_35095:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_35073;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_35073;
    switch_break: ;
    }
    ldv_35073:
    {
    printk("\017GRU:%d %s: gms %p, refcnt %d, released %d\n", pscr_ret__, "gru_drop_mmu_notifier",
           gms, tmp, (int )gms->ms_released);
    }
  } else {
  }
  {
  tmp___1 = atomic_sub_return___0(1, & gms->ms_refcnt);
  }
  if (tmp___1 == 0) {
    if ((int )((signed char )gms->ms_released) == 0) {
      {
      tmp___0 = get_current___2();
      ldv_mmu_notifier_unregister_101(& gms->ms_notifier, tmp___0->mm);
      }
    } else {
    }
    {
    kfree((void const *)gms);
    }
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.gms_free);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void gru_tgh_flush_init(struct gru_state *gru )
{
  int cpus ;
  int shift ;
  int n ;
  int tmp ;
  int _max1 ;
  int _max2 ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  shift = 0;
  cpus = uv_blade_nr_possible_cpus((int )gru->gs_blade_id);
  }
  if (cpus != 0) {
    {
    tmp = fls(cpus + -1);
    n = 1 << tmp;
    _max1 = 0;
    tmp___0 = fls(n + -1);
    tmp___1 = fls(15);
    _max2 = tmp___0 - tmp___1;
    shift = _max1 > _max2 ? _max1 : _max2;
    }
  } else {
  }
  gru->gs_tgh_local_shift = (unsigned char )shift;
  gru->gs_tgh_first_remote = (unsigned char )(((cpus + (1 << shift)) + -1) >> shift);
  return;
}
}
extern int ldv___mmu_notifier_register(int , struct mmu_notifier * , struct mm_struct * ) ;
extern void ldv_mmu_notifier_unregister(void * , struct mmu_notifier * , struct mm_struct * ) ;
void ldv_dummy_resourceless_instance_callback_11_12(void (*arg0)(struct mmu_notifier * ,
                                                                 struct mm_struct * ,
                                                                 unsigned long ,
                                                                 unsigned long ) ,
                                                    struct mmu_notifier *arg1 , struct mm_struct *arg2 ,
                                                    unsigned long arg3 , unsigned long arg4 )
{
  {
  {
  gru_invalidate_range_start(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_15(void (*arg0)(struct mmu_notifier * ,
                                                                 struct mm_struct * ) ,
                                                    struct mmu_notifier *arg1 , struct mm_struct *arg2 )
{
  {
  {
  gru_release(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_3(void (*arg0)(struct mmu_notifier * ,
                                                                struct mm_struct * ,
                                                                unsigned long ) ,
                                                   struct mmu_notifier *arg1 , struct mm_struct *arg2 ,
                                                   unsigned long arg3 )
{
  {
  {
  gru_invalidate_page(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_9(void (*arg0)(struct mmu_notifier * ,
                                                                struct mm_struct * ,
                                                                unsigned long , unsigned long ) ,
                                                   struct mmu_notifier *arg1 , struct mm_struct *arg2 ,
                                                   unsigned long arg3 , unsigned long arg4 )
{
  {
  {
  gru_invalidate_range_end(arg1, arg2, arg3, arg4);
  }
  return;
}
}
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
__inline static void rcu_read_lock(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_rcu_read_lock();
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_rcu_read_unlock();
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
static unsigned long ldv_find_first_bit_97(unsigned long const *addr , unsigned long size )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_first_bit(size);
  }
  return (tmp);
}
}
static unsigned long ldv_find_next_bit_98(unsigned long const *addr , unsigned long size ,
                                          unsigned long offset )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_next_bit(size, offset);
  }
  return (tmp);
}
}
static int ldv___mmu_notifier_register_100(struct mmu_notifier *ldv_func_arg1 , struct mm_struct *ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __mmu_notifier_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv___mmu_notifier_register(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_mmu_notifier_unregister_101(struct mmu_notifier *ldv_func_arg1 , struct mm_struct *ldv_func_arg2 )
{
  {
  {
  mmu_notifier_unregister(ldv_func_arg1, ldv_func_arg2);
  ldv_mmu_notifier_unregister((void *)0, ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
int ldv_filter_err_code(int ret_val ) ;
extern int kstrtoul_from_user(char const * , size_t , unsigned int , unsigned long * ) ;
__inline static long atomic64_read(atomic64_t const *v )
{
  long __var ;
  {
  __var = 0L;
  return ((long )*((long const volatile *)(& v->counter)));
}
}
__inline static long atomic_long_read(atomic_long_t *l )
{
  atomic64_t *v ;
  long tmp ;
  {
  {
  v = l;
  tmp = atomic64_read((atomic64_t const *)v);
  }
  return (tmp);
}
}
extern struct proc_dir_entry *proc_mkdir(char const * , struct proc_dir_entry * ) ;
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
__inline static struct proc_dir_entry *proc_create(char const *name , umode_t mode ,
                                                   struct proc_dir_entry *parent ,
                                                   struct file_operations const *proc_fops )
{
  struct proc_dir_entry *tmp ;
  {
  {
  tmp = proc_create_data(name, (int )mode, parent, proc_fops, (void *)0);
  }
  return (tmp);
}
}
extern void proc_remove(struct proc_dir_entry * ) ;
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
extern int seq_open(struct file * , struct seq_operations const * ) ;
static int ldv_seq_open_95(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
static int ldv_seq_open_96(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_release(struct inode * , struct file * ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
struct mcs_op_statistic mcs_op_statistics[8U] ;
static void printstat_val(struct seq_file *s , atomic_long_t *v , char *id )
{
  unsigned long val ;
  long tmp ;
  {
  {
  tmp = atomic_long_read(v);
  val = (unsigned long )tmp;
  seq_printf(s, "%16lu %s\n", val, id);
  }
  return;
}
}
static int statistics_show(struct seq_file *s , void *p )
{
  {
  {
  printstat_val(s, & gru_stats.vdata_alloc, (char *)"vdata_alloc");
  printstat_val(s, & gru_stats.vdata_free, (char *)"vdata_free");
  printstat_val(s, & gru_stats.gts_alloc, (char *)"gts_alloc");
  printstat_val(s, & gru_stats.gts_free, (char *)"gts_free");
  printstat_val(s, & gru_stats.gms_alloc, (char *)"gms_alloc");
  printstat_val(s, & gru_stats.gms_free, (char *)"gms_free");
  printstat_val(s, & gru_stats.gts_double_allocate, (char *)"gts_double_allocate");
  printstat_val(s, & gru_stats.assign_context, (char *)"assign_context");
  printstat_val(s, & gru_stats.assign_context_failed, (char *)"assign_context_failed");
  printstat_val(s, & gru_stats.free_context, (char *)"free_context");
  printstat_val(s, & gru_stats.load_user_context, (char *)"load_user_context");
  printstat_val(s, & gru_stats.load_kernel_context, (char *)"load_kernel_context");
  printstat_val(s, & gru_stats.lock_kernel_context, (char *)"lock_kernel_context");
  printstat_val(s, & gru_stats.unlock_kernel_context, (char *)"unlock_kernel_context");
  printstat_val(s, & gru_stats.steal_user_context, (char *)"steal_user_context");
  printstat_val(s, & gru_stats.steal_kernel_context, (char *)"steal_kernel_context");
  printstat_val(s, & gru_stats.steal_context_failed, (char *)"steal_context_failed");
  printstat_val(s, & gru_stats.nopfn, (char *)"nopfn");
  printstat_val(s, & gru_stats.asid_new, (char *)"asid_new");
  printstat_val(s, & gru_stats.asid_next, (char *)"asid_next");
  printstat_val(s, & gru_stats.asid_wrap, (char *)"asid_wrap");
  printstat_val(s, & gru_stats.asid_reuse, (char *)"asid_reuse");
  printstat_val(s, & gru_stats.intr, (char *)"intr");
  printstat_val(s, & gru_stats.intr_cbr, (char *)"intr_cbr");
  printstat_val(s, & gru_stats.intr_tfh, (char *)"intr_tfh");
  printstat_val(s, & gru_stats.intr_spurious, (char *)"intr_spurious");
  printstat_val(s, & gru_stats.intr_mm_lock_failed, (char *)"intr_mm_lock_failed");
  printstat_val(s, & gru_stats.call_os, (char *)"call_os");
  printstat_val(s, & gru_stats.call_os_wait_queue, (char *)"call_os_wait_queue");
  printstat_val(s, & gru_stats.user_flush_tlb, (char *)"user_flush_tlb");
  printstat_val(s, & gru_stats.user_unload_context, (char *)"user_unload_context");
  printstat_val(s, & gru_stats.user_exception, (char *)"user_exception");
  printstat_val(s, & gru_stats.set_context_option, (char *)"set_context_option");
  printstat_val(s, & gru_stats.check_context_retarget_intr, (char *)"check_context_retarget_intr");
  printstat_val(s, & gru_stats.check_context_unload, (char *)"check_context_unload");
  printstat_val(s, & gru_stats.tlb_dropin, (char *)"tlb_dropin");
  printstat_val(s, & gru_stats.tlb_preload_page, (char *)"tlb_preload_page");
  printstat_val(s, & gru_stats.tlb_dropin_fail_no_asid, (char *)"tlb_dropin_fail_no_asid");
  printstat_val(s, & gru_stats.tlb_dropin_fail_upm, (char *)"tlb_dropin_fail_upm");
  printstat_val(s, & gru_stats.tlb_dropin_fail_invalid, (char *)"tlb_dropin_fail_invalid");
  printstat_val(s, & gru_stats.tlb_dropin_fail_range_active, (char *)"tlb_dropin_fail_range_active");
  printstat_val(s, & gru_stats.tlb_dropin_fail_idle, (char *)"tlb_dropin_fail_idle");
  printstat_val(s, & gru_stats.tlb_dropin_fail_fmm, (char *)"tlb_dropin_fail_fmm");
  printstat_val(s, & gru_stats.tlb_dropin_fail_no_exception, (char *)"tlb_dropin_fail_no_exception");
  printstat_val(s, & gru_stats.tfh_stale_on_fault, (char *)"tfh_stale_on_fault");
  printstat_val(s, & gru_stats.mmu_invalidate_range, (char *)"mmu_invalidate_range");
  printstat_val(s, & gru_stats.mmu_invalidate_page, (char *)"mmu_invalidate_page");
  printstat_val(s, & gru_stats.flush_tlb, (char *)"flush_tlb");
  printstat_val(s, & gru_stats.flush_tlb_gru, (char *)"flush_tlb_gru");
  printstat_val(s, & gru_stats.flush_tlb_gru_tgh, (char *)"flush_tlb_gru_tgh");
  printstat_val(s, & gru_stats.flush_tlb_gru_zero_asid, (char *)"flush_tlb_gru_zero_asid");
  printstat_val(s, & gru_stats.copy_gpa, (char *)"copy_gpa");
  printstat_val(s, & gru_stats.read_gpa, (char *)"read_gpa");
  printstat_val(s, & gru_stats.mesq_receive, (char *)"mesq_receive");
  printstat_val(s, & gru_stats.mesq_receive_none, (char *)"mesq_receive_none");
  printstat_val(s, & gru_stats.mesq_send, (char *)"mesq_send");
  printstat_val(s, & gru_stats.mesq_send_failed, (char *)"mesq_send_failed");
  printstat_val(s, & gru_stats.mesq_noop, (char *)"mesq_noop");
  printstat_val(s, & gru_stats.mesq_send_unexpected_error, (char *)"mesq_send_unexpected_error");
  printstat_val(s, & gru_stats.mesq_send_lb_overflow, (char *)"mesq_send_lb_overflow");
  printstat_val(s, & gru_stats.mesq_send_qlimit_reached, (char *)"mesq_send_qlimit_reached");
  printstat_val(s, & gru_stats.mesq_send_amo_nacked, (char *)"mesq_send_amo_nacked");
  printstat_val(s, & gru_stats.mesq_send_put_nacked, (char *)"mesq_send_put_nacked");
  printstat_val(s, & gru_stats.mesq_qf_locked, (char *)"mesq_qf_locked");
  printstat_val(s, & gru_stats.mesq_qf_noop_not_full, (char *)"mesq_qf_noop_not_full");
  printstat_val(s, & gru_stats.mesq_qf_switch_head_failed, (char *)"mesq_qf_switch_head_failed");
  printstat_val(s, & gru_stats.mesq_qf_unexpected_error, (char *)"mesq_qf_unexpected_error");
  printstat_val(s, & gru_stats.mesq_noop_unexpected_error, (char *)"mesq_noop_unexpected_error");
  printstat_val(s, & gru_stats.mesq_noop_lb_overflow, (char *)"mesq_noop_lb_overflow");
  printstat_val(s, & gru_stats.mesq_noop_qlimit_reached, (char *)"mesq_noop_qlimit_reached");
  printstat_val(s, & gru_stats.mesq_noop_amo_nacked, (char *)"mesq_noop_amo_nacked");
  printstat_val(s, & gru_stats.mesq_noop_put_nacked, (char *)"mesq_noop_put_nacked");
  printstat_val(s, & gru_stats.mesq_noop_page_overflow, (char *)"mesq_noop_page_overflow");
  }
  return (0);
}
}
static ssize_t statistics_write(struct file *file , char const *userbuf , size_t count ,
                                loff_t *data )
{
  {
  {
  memset((void *)(& gru_stats), 0, 592UL);
  }
  return ((ssize_t )count);
}
}
static int mcs_statistics_show(struct seq_file *s , void *p )
{
  int op ;
  unsigned long total ;
  unsigned long count ;
  unsigned long max ;
  char *id[8U] ;
  long tmp ;
  long tmp___0 ;
  {
  {
  id[0] = (char *)"cch_allocate";
  id[1] = (char *)"cch_start";
  id[2] = (char *)"cch_interrupt";
  id[3] = (char *)"cch_interrupt_sync";
  id[4] = (char *)"cch_deallocate";
  id[5] = (char *)"tfh_write_only";
  id[6] = (char *)"tfh_write_restart";
  id[7] = (char *)"tgh_invalidate";
  seq_printf(s, "%-20s%12s%12s%12s\n", (char *)"#id", (char *)"count", (char *)"aver-clks",
             (char *)"max-clks");
  op = 0;
  }
  goto ldv_32179;
  ldv_32178:
  {
  tmp = atomic_long_read(& mcs_op_statistics[op].count);
  count = (unsigned long )tmp;
  tmp___0 = atomic_long_read(& mcs_op_statistics[op].total);
  total = (unsigned long )tmp___0;
  max = mcs_op_statistics[op].max;
  seq_printf(s, "%-20s%12ld%12ld%12ld\n", id[op], count, count != 0UL ? total / count : 0UL,
             max);
  op = op + 1;
  }
  ldv_32179: ;
  if (op <= 7) {
    goto ldv_32178;
  } else {
  }
  return (0);
}
}
static ssize_t mcs_statistics_write(struct file *file , char const *userbuf , size_t count ,
                                    loff_t *data )
{
  {
  {
  memset((void *)(& mcs_op_statistics), 0, 192UL);
  }
  return ((ssize_t )count);
}
}
static int options_show(struct seq_file *s , void *p )
{
  {
  {
  seq_printf(s, "#bitmask: 1=trace, 2=statistics\n");
  seq_printf(s, "0x%lx\n", gru_options);
  }
  return (0);
}
}
static ssize_t options_write(struct file *file , char const *userbuf , size_t count ,
                             loff_t *data )
{
  int ret ;
  {
  {
  ret = kstrtoul_from_user(userbuf, count, 0U, & gru_options);
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  return ((ssize_t )count);
}
}
static int cch_seq_show(struct seq_file *file , void *data )
{
  long gid ;
  int i ;
  struct gru_state *gru ;
  struct gru_thread_state *ts ;
  char const *mode[4U] ;
  int tmp ;
  int tmp___0 ;
  {
  gid = *((long *)data);
  gru = (unsigned long )gru_base[gid / 2L] != (unsigned long )((struct gru_blade_state *)0) ? (struct gru_state *)(& (gru_base[gid / 2L])->bs_grus) + (unsigned long )(gid % 2L) : (struct gru_state *)0;
  mode[0] = "??";
  mode[1] = "UPM";
  mode[2] = "INTR";
  mode[3] = "OS_POLL";
  if (gid == 0L) {
    {
    seq_printf(file, "#%5s%5s%6s%7s%9s%6s%8s%8s\n", (char *)"gid", (char *)"bid",
               (char *)"ctx#", (char *)"asid", (char *)"pid", (char *)"cbrs", (char *)"dsbytes",
               (char *)"mode");
    }
  } else {
  }
  if ((unsigned long )gru != (unsigned long )((struct gru_state *)0)) {
    i = 0;
    goto ldv_32209;
    ldv_32208:
    ts = gru->gs_gts[i];
    if ((unsigned long )ts == (unsigned long )((struct gru_thread_state *)0)) {
      goto ldv_32207;
    } else {
    }
    {
    tmp = is_kernel_context(ts);
    tmp___0 = is_kernel_context(ts);
    seq_printf(file, " %5d%5d%6d%7d%9d%6d%8d%8s\n", (int )gru->gs_gid, (int )gru->gs_blade_id,
               i, tmp___0 == 0 ? (int )(ts->ts_gms)->ms_asids[gid].mt_asid : 0, tmp == 0 ? ts->ts_tgid_owner : 0,
               (int )ts->ts_cbr_au_count * 2, (int )ts->ts_cbr_au_count * 1024, mode[ts->ts_user_options & 3L]);
    }
    ldv_32207:
    i = i + 1;
    ldv_32209: ;
    if (i <= 15) {
      goto ldv_32208;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int gru_seq_show(struct seq_file *file , void *data )
{
  long gid ;
  long ctxfree ;
  long cbrfree ;
  long dsrfree ;
  struct gru_state *gru ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  gid = *((long *)data);
  gru = (unsigned long )gru_base[gid / 2L] != (unsigned long )((struct gru_blade_state *)0) ? (struct gru_state *)(& (gru_base[gid / 2L])->bs_grus) + (unsigned long )(gid % 2L) : (struct gru_state *)0;
  if (gid == 0L) {
    {
    seq_printf(file, "#%5s%5s%7s%6s%6s%8s%6s%6s\n", (char *)"gid", (char *)"nid",
               (char *)"ctx", (char *)"cbr", (char *)"dsr", (char *)"ctx", (char *)"cbr",
               (char *)"dsr");
    seq_printf(file, "#%5s%5s%7s%6s%6s%8s%6s%6s\n", (char *)"", (char *)"", (char *)"busy",
               (char *)"busy", (char *)"busy", (char *)"free", (char *)"free", (char *)"free");
    }
  } else {
  }
  if ((unsigned long )gru != (unsigned long )((struct gru_state *)0)) {
    {
    ctxfree = (long )(16 - (int )gru->gs_active_contexts);
    tmp = __arch_hweight64((__u64 )gru->gs_cbr_map);
    cbrfree = (long )(tmp * 2UL);
    tmp___0 = __arch_hweight64((__u64 )gru->gs_dsr_map);
    dsrfree = (long )(tmp___0 * 1024UL);
    seq_printf(file, " %5d%5d%7ld%6ld%6ld%8ld%6ld%6ld\n", (int )gru->gs_gid, (int )gru->gs_blade_id,
               16L - ctxfree, 128L - cbrfree, 32768L - dsrfree, ctxfree, cbrfree,
               dsrfree);
    }
  } else {
  }
  return (0);
}
}
static void seq_stop(struct seq_file *file , void *data )
{
  {
  return;
}
}
static void *seq_start(struct seq_file *file , loff_t *gid )
{
  {
  if (*gid < (loff_t )gru_max_gids) {
    return ((void *)gid);
  } else {
  }
  return ((void *)0);
}
}
static void *seq_next(struct seq_file *file , void *data , loff_t *gid )
{
  {
  *gid = *gid + 1LL;
  if (*gid < (loff_t )gru_max_gids) {
    return ((void *)gid);
  } else {
  }
  return ((void *)0);
}
}
static struct seq_operations const cch_seq_ops = {& seq_start, & seq_stop, & seq_next, & cch_seq_show};
static struct seq_operations const gru_seq_ops = {& seq_start, & seq_stop, & seq_next, & gru_seq_show};
static int statistics_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & statistics_show, (void *)0);
  }
  return (tmp);
}
}
static int mcs_statistics_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & mcs_statistics_show, (void *)0);
  }
  return (tmp);
}
}
static int options_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = single_open(file, & options_show, (void *)0);
  }
  return (tmp);
}
}
static int cch_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = ldv_seq_open_95(file, & cch_seq_ops);
  }
  return (tmp);
}
}
static int gru_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = ldv_seq_open_96(file, & gru_seq_ops);
  }
  return (tmp);
}
}
static struct file_operations const statistics_fops =
     {0, & seq_lseek, & seq_read, & statistics_write, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & statistics_open, 0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const mcs_statistics_fops =
     {0, & seq_lseek, & seq_read, & mcs_statistics_write, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, & mcs_statistics_open, 0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0};
static struct file_operations const options_fops =
     {0, & seq_lseek, & seq_read, & options_write, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & options_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const cch_fops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & cch_open, 0, & seq_release,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const gru_fops___0 =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & gru_open, 0, & seq_release,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct proc_entry proc_files[6U] = { {(char *)"statistics", 420U, & statistics_fops, 0},
        {(char *)"mcs_statistics", 420U, & mcs_statistics_fops, 0},
        {(char *)"debug_options", 420U, & options_fops, 0},
        {(char *)"cch_status", 292U, & cch_fops, 0},
        {(char *)"gru_status", 292U, & gru_fops___0, 0},
        {(char *)0, (unsigned short)0, 0, 0}};
static struct proc_dir_entry *proc_gru ;
static int create_proc_file(struct proc_entry *p )
{
  {
  {
  p->entry = proc_create((char const *)p->name, (int )p->mode, proc_gru, p->fops);
  }
  if ((unsigned long )p->entry == (unsigned long )((struct proc_dir_entry *)0)) {
    return (-1);
  } else {
  }
  return (0);
}
}
static void delete_proc_files(void)
{
  struct proc_entry *p ;
  {
  if ((unsigned long )proc_gru != (unsigned long )((struct proc_dir_entry *)0)) {
    p = (struct proc_entry *)(& proc_files);
    goto ldv_32275;
    ldv_32274: ;
    if ((unsigned long )p->entry != (unsigned long )((struct proc_dir_entry *)0)) {
      {
      remove_proc_entry((char const *)p->name, proc_gru);
      }
    } else {
    }
    p = p + 1;
    ldv_32275: ;
    if ((unsigned long )p->name != (unsigned long )((char *)0)) {
      goto ldv_32274;
    } else {
    }
    {
    proc_remove(proc_gru);
    }
  } else {
  }
  return;
}
}
int gru_proc_init(void)
{
  struct proc_entry *p ;
  int tmp ;
  {
  {
  proc_gru = proc_mkdir("sgi_uv/gru", (struct proc_dir_entry *)0);
  p = (struct proc_entry *)(& proc_files);
  }
  goto ldv_32283;
  ldv_32282:
  {
  tmp = create_proc_file(p);
  }
  if (tmp != 0) {
    goto err;
  } else {
  }
  p = p + 1;
  ldv_32283: ;
  if ((unsigned long )p->name != (unsigned long )((char *)0)) {
    goto ldv_32282;
  } else {
  }
  return (0);
  err:
  {
  delete_proc_files();
  }
  return (-1);
}
}
void gru_proc_exit(void)
{
  {
  {
  delete_proc_files();
  }
  return;
}
}
void ldv_dispatch_register_17_1(struct seq_file *arg0 , struct seq_operations *arg1 ) ;
void ldv_file_operations_instance_callback_0_23(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_1_23(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_2_23(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_2_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_3_23(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_3_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_4_23(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_4_5(long long (*arg0)(struct file * , long long ,
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
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_3_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_4_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
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
void ldv_seq_instance_next_10_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_next_6_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_next_7_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_next_8_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_next_9_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_show_10_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
void ldv_seq_instance_show_6_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 ) ;
void ldv_seq_instance_show_7_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 ) ;
void ldv_seq_instance_show_8_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 ) ;
void ldv_seq_instance_show_9_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 ) ;
void ldv_seq_instance_start_10_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_start_6_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_start_7_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_start_8_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_start_9_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_stop_10_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 ) ;
void ldv_seq_instance_stop_6_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
void ldv_seq_instance_stop_7_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
void ldv_seq_instance_stop_8_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
void ldv_seq_instance_stop_9_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
int ldv_seq_open(int arg0 , struct file *arg1 , struct seq_operations *arg2 ) ;
void ldv_seq_operations_seq_instance_10(void *arg0 ) ;
void ldv_seq_operations_seq_instance_6(void *arg0 ) ;
void ldv_seq_operations_seq_instance_7(void *arg0 ) ;
void ldv_seq_operations_seq_instance_8(void *arg0 ) ;
void ldv_seq_operations_seq_instance_9(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_10 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
struct ldv_thread ldv_thread_9 ;
void ldv_dispatch_register_17_1(struct seq_file *arg0 , struct seq_operations *arg1 )
{
  struct ldv_struct_seq_instance_6 *cf_arg_8 ;
  struct ldv_struct_seq_instance_6 *cf_arg_9 ;
  struct ldv_struct_seq_instance_6 *cf_arg_10 ;
  struct ldv_struct_seq_instance_6 *cf_arg_6 ;
  struct ldv_struct_seq_instance_6 *cf_arg_7 ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
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
  case_0:
  {
  tmp___0 = ldv_xmalloc(24UL);
  cf_arg_8 = (struct ldv_struct_seq_instance_6 *)tmp___0;
  cf_arg_8->arg0 = arg0;
  cf_arg_8->arg1 = arg1;
  ldv_seq_operations_seq_instance_8((void *)cf_arg_8);
  }
  goto ldv_32761;
  case_1:
  {
  tmp___1 = ldv_xmalloc(24UL);
  cf_arg_9 = (struct ldv_struct_seq_instance_6 *)tmp___1;
  cf_arg_9->arg0 = arg0;
  cf_arg_9->arg1 = arg1;
  ldv_seq_operations_seq_instance_9((void *)cf_arg_9);
  }
  goto ldv_32761;
  case_2:
  {
  tmp___2 = ldv_xmalloc(24UL);
  cf_arg_10 = (struct ldv_struct_seq_instance_6 *)tmp___2;
  cf_arg_10->arg0 = arg0;
  cf_arg_10->arg1 = arg1;
  ldv_seq_operations_seq_instance_10((void *)cf_arg_10);
  }
  goto ldv_32761;
  case_3:
  {
  tmp___3 = ldv_xmalloc(24UL);
  cf_arg_6 = (struct ldv_struct_seq_instance_6 *)tmp___3;
  cf_arg_6->arg0 = arg0;
  cf_arg_6->arg1 = arg1;
  ldv_seq_operations_seq_instance_6((void *)cf_arg_6);
  }
  goto ldv_32761;
  case_4:
  {
  tmp___4 = ldv_xmalloc(24UL);
  cf_arg_7 = (struct ldv_struct_seq_instance_6 *)tmp___4;
  cf_arg_7->arg0 = arg0;
  cf_arg_7->arg1 = arg1;
  ldv_seq_operations_seq_instance_7((void *)cf_arg_7);
  }
  goto ldv_32761;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_32761: ;
  return;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  long long (*ldv_0_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_0_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_0_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_0_container_file_operations ;
  char *ldv_0_ldv_param_23_1_default ;
  long long *ldv_0_ldv_param_23_3_default ;
  unsigned int ldv_0_ldv_param_26_1_default ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  long long ldv_0_ldv_param_5_1_default ;
  int ldv_0_ldv_param_5_2_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
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
  ldv_0_size_cnt_struct_vm_area_struct_ptr = (struct vm_area_struct *)((long )tmp___1);
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
  ldv_assume((unsigned long )ldv_0_size_cnt_struct_vm_area_struct_ptr <= (unsigned long )((struct vm_area_struct *)2147479552));
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
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_0_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_0_26(ldv_0_callback_unlocked_ioctl, ldv_0_resource_file,
                                               ldv_0_ldv_param_26_1_default, ldv_0_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_32806;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_23_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_23_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_0_23(ldv_0_callback_read, ldv_0_resource_file,
                                             ldv_0_ldv_param_23_1_default, ldv_0_size_cnt_write_size,
                                             ldv_0_ldv_param_23_3_default);
  ldv_free((void *)ldv_0_ldv_param_23_1_default);
  ldv_free((void *)ldv_0_ldv_param_23_3_default);
  }
  goto ldv_32806;
  case_3___0: ;
  if ((unsigned long )ldv_0_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_0_22(ldv_0_callback_mmap, ldv_0_resource_file,
                                               ldv_0_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_32806;
  case_4:
  {
  ldv_file_operations_instance_callback_0_5(ldv_0_callback_llseek, ldv_0_resource_file,
                                            ldv_0_ldv_param_5_1_default, ldv_0_ldv_param_5_2_default);
  }
  goto ldv_32806;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_32806: ;
  goto ldv_32811;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_32811: ;
  goto ldv_call_0;
  goto ldv_call_0;
  return;
}
}
void ldv_file_operations_file_operations_instance_1(void *arg0 )
{
  long long (*ldv_1_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_1_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  long (*ldv_1_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_1_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_1_container_file_operations ;
  char *ldv_1_ldv_param_23_1_default ;
  long long *ldv_1_ldv_param_23_3_default ;
  unsigned int ldv_1_ldv_param_26_1_default ;
  char *ldv_1_ldv_param_4_1_default ;
  long long *ldv_1_ldv_param_4_3_default ;
  long long ldv_1_ldv_param_5_1_default ;
  int ldv_1_ldv_param_5_2_default ;
  struct file *ldv_1_resource_file ;
  struct inode *ldv_1_resource_inode ;
  int ldv_1_ret_default ;
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
  ldv_1_size_cnt_struct_vm_area_struct_ptr = (struct vm_area_struct *)((long )tmp___1);
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
  ldv_assume((unsigned long )ldv_1_size_cnt_struct_vm_area_struct_ptr <= (unsigned long )((struct vm_area_struct *)2147479552));
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
  goto switch_default;
  case_1___0:
  {
  ldv_file_operations_instance_callback_1_26(ldv_1_callback_unlocked_ioctl, ldv_1_resource_file,
                                             ldv_1_ldv_param_26_1_default, ldv_1_size_cnt_write_size);
  }
  goto ldv_32852;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_23_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_23_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_1_23(ldv_1_callback_read, ldv_1_resource_file,
                                             ldv_1_ldv_param_23_1_default, ldv_1_size_cnt_write_size,
                                             ldv_1_ldv_param_23_3_default);
  ldv_free((void *)ldv_1_ldv_param_23_1_default);
  ldv_free((void *)ldv_1_ldv_param_23_3_default);
  }
  goto ldv_32852;
  case_3___0:
  {
  ldv_file_operations_instance_callback_1_22(ldv_1_callback_mmap, ldv_1_resource_file,
                                             ldv_1_size_cnt_struct_vm_area_struct_ptr);
  }
  goto ldv_32852;
  case_4:
  {
  ldv_file_operations_instance_callback_1_5(ldv_1_callback_llseek, ldv_1_resource_file,
                                            ldv_1_ldv_param_5_1_default, ldv_1_ldv_param_5_2_default);
  }
  goto ldv_32852;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_32852: ;
  goto ldv_32857;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_32857: ;
  goto ldv_call_1;
  goto ldv_call_1;
  return;
}
}
void ldv_file_operations_file_operations_instance_2(void *arg0 )
{
  long long (*ldv_2_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_2_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  long (*ldv_2_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_2_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_2_container_file_operations ;
  char *ldv_2_ldv_param_23_1_default ;
  long long *ldv_2_ldv_param_23_3_default ;
  unsigned int ldv_2_ldv_param_26_1_default ;
  char *ldv_2_ldv_param_4_1_default ;
  long long *ldv_2_ldv_param_4_3_default ;
  long long ldv_2_ldv_param_5_1_default ;
  int ldv_2_ldv_param_5_2_default ;
  struct file *ldv_2_resource_file ;
  struct inode *ldv_2_resource_inode ;
  int ldv_2_ret_default ;
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
  ldv_2_size_cnt_struct_vm_area_struct_ptr = (struct vm_area_struct *)((long )tmp___1);
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
  ldv_assume((unsigned long )ldv_2_size_cnt_struct_vm_area_struct_ptr <= (unsigned long )((struct vm_area_struct *)2147479552));
  ldv_file_operations_instance_write_2_4((long (*)(struct file * , char * , unsigned long ,
                                                   long long * ))ldv_2_container_file_operations->write,
                                         ldv_2_resource_file, ldv_2_ldv_param_4_1_default,
                                         ldv_2_size_cnt_write_size, ldv_2_ldv_param_4_3_default);
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
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_2_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_2_26(ldv_2_callback_unlocked_ioctl, ldv_2_resource_file,
                                               ldv_2_ldv_param_26_1_default, ldv_2_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_32898;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_23_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_23_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_2_23(ldv_2_callback_read, ldv_2_resource_file,
                                             ldv_2_ldv_param_23_1_default, ldv_2_size_cnt_write_size,
                                             ldv_2_ldv_param_23_3_default);
  ldv_free((void *)ldv_2_ldv_param_23_1_default);
  ldv_free((void *)ldv_2_ldv_param_23_3_default);
  }
  goto ldv_32898;
  case_3___0: ;
  if ((unsigned long )ldv_2_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_2_22(ldv_2_callback_mmap, ldv_2_resource_file,
                                               ldv_2_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_32898;
  case_4:
  {
  ldv_file_operations_instance_callback_2_5(ldv_2_callback_llseek, ldv_2_resource_file,
                                            ldv_2_ldv_param_5_1_default, ldv_2_ldv_param_5_2_default);
  }
  goto ldv_32898;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_32898: ;
  goto ldv_32903;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_32903: ;
  goto ldv_call_2;
  goto ldv_call_2;
  return;
}
}
void ldv_file_operations_file_operations_instance_3(void *arg0 )
{
  long long (*ldv_3_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_3_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  long (*ldv_3_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_3_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_3_container_file_operations ;
  char *ldv_3_ldv_param_23_1_default ;
  long long *ldv_3_ldv_param_23_3_default ;
  unsigned int ldv_3_ldv_param_26_1_default ;
  char *ldv_3_ldv_param_4_1_default ;
  long long *ldv_3_ldv_param_4_3_default ;
  long long ldv_3_ldv_param_5_1_default ;
  int ldv_3_ldv_param_5_2_default ;
  struct file *ldv_3_resource_file ;
  struct inode *ldv_3_resource_inode ;
  int ldv_3_ret_default ;
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
  ldv_3_size_cnt_struct_vm_area_struct_ptr = (struct vm_area_struct *)((long )tmp___1);
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
  ldv_assume((unsigned long )ldv_3_size_cnt_struct_vm_area_struct_ptr <= (unsigned long )((struct vm_area_struct *)2147479552));
  ldv_file_operations_instance_write_3_4((long (*)(struct file * , char * , unsigned long ,
                                                   long long * ))ldv_3_container_file_operations->write,
                                         ldv_3_resource_file, ldv_3_ldv_param_4_1_default,
                                         ldv_3_size_cnt_write_size, ldv_3_ldv_param_4_3_default);
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
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_3_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_3_26(ldv_3_callback_unlocked_ioctl, ldv_3_resource_file,
                                               ldv_3_ldv_param_26_1_default, ldv_3_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_32944;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_23_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_23_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_3_23(ldv_3_callback_read, ldv_3_resource_file,
                                             ldv_3_ldv_param_23_1_default, ldv_3_size_cnt_write_size,
                                             ldv_3_ldv_param_23_3_default);
  ldv_free((void *)ldv_3_ldv_param_23_1_default);
  ldv_free((void *)ldv_3_ldv_param_23_3_default);
  }
  goto ldv_32944;
  case_3___0: ;
  if ((unsigned long )ldv_3_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_3_22(ldv_3_callback_mmap, ldv_3_resource_file,
                                               ldv_3_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_32944;
  case_4:
  {
  ldv_file_operations_instance_callback_3_5(ldv_3_callback_llseek, ldv_3_resource_file,
                                            ldv_3_ldv_param_5_1_default, ldv_3_ldv_param_5_2_default);
  }
  goto ldv_32944;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_32944: ;
  goto ldv_32949;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_32949: ;
  goto ldv_call_3;
  goto ldv_call_3;
  return;
}
}
void ldv_file_operations_file_operations_instance_4(void *arg0 )
{
  long long (*ldv_4_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_4_callback_mmap)(struct file * , struct vm_area_struct * ) ;
  long (*ldv_4_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  long (*ldv_4_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_4_container_file_operations ;
  char *ldv_4_ldv_param_23_1_default ;
  long long *ldv_4_ldv_param_23_3_default ;
  unsigned int ldv_4_ldv_param_26_1_default ;
  char *ldv_4_ldv_param_4_1_default ;
  long long *ldv_4_ldv_param_4_3_default ;
  long long ldv_4_ldv_param_5_1_default ;
  int ldv_4_ldv_param_5_2_default ;
  struct file *ldv_4_resource_file ;
  struct inode *ldv_4_resource_inode ;
  int ldv_4_ret_default ;
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
  ldv_4_size_cnt_struct_vm_area_struct_ptr = (struct vm_area_struct *)((long )tmp___1);
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
  ldv_assume((unsigned long )ldv_4_size_cnt_struct_vm_area_struct_ptr <= (unsigned long )((struct vm_area_struct *)2147479552));
  ldv_file_operations_instance_write_4_4((long (*)(struct file * , char * , unsigned long ,
                                                   long long * ))ldv_4_container_file_operations->write,
                                         ldv_4_resource_file, ldv_4_ldv_param_4_1_default,
                                         ldv_4_size_cnt_write_size, ldv_4_ldv_param_4_3_default);
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
  goto switch_default;
  case_1___0: ;
  if ((unsigned long )ldv_4_callback_unlocked_ioctl != (unsigned long )((long (*)(struct file * ,
                                                                                  unsigned int ,
                                                                                  unsigned long ))0)) {
    {
    ldv_file_operations_instance_callback_4_26(ldv_4_callback_unlocked_ioctl, ldv_4_resource_file,
                                               ldv_4_ldv_param_26_1_default, ldv_4_size_cnt_write_size);
    }
  } else {
  }
  goto ldv_32990;
  case_2___0:
  {
  tmp___8 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_23_1_default = (char *)tmp___8;
  tmp___9 = ldv_xmalloc(8UL);
  ldv_4_ldv_param_23_3_default = (long long *)tmp___9;
  ldv_file_operations_instance_callback_4_23(ldv_4_callback_read, ldv_4_resource_file,
                                             ldv_4_ldv_param_23_1_default, ldv_4_size_cnt_write_size,
                                             ldv_4_ldv_param_23_3_default);
  ldv_free((void *)ldv_4_ldv_param_23_1_default);
  ldv_free((void *)ldv_4_ldv_param_23_3_default);
  }
  goto ldv_32990;
  case_3___0: ;
  if ((unsigned long )ldv_4_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_file_operations_instance_callback_4_22(ldv_4_callback_mmap, ldv_4_resource_file,
                                               ldv_4_size_cnt_struct_vm_area_struct_ptr);
    }
  } else {
  }
  goto ldv_32990;
  case_4:
  {
  ldv_file_operations_instance_callback_4_5(ldv_4_callback_llseek, ldv_4_resource_file,
                                            ldv_4_ldv_param_5_1_default, ldv_4_ldv_param_5_2_default);
  }
  goto ldv_32990;
  switch_default:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  ldv_32990: ;
  goto ldv_32995;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_32995: ;
  goto ldv_call_4;
  goto ldv_call_4;
  return;
}
}
void ldv_file_operations_instance_callback_0_23(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_1_23(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_2_23(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_2_5(long long (*arg0)(struct file * , long long ,
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
void ldv_file_operations_instance_callback_3_23(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_callback_4_23(long (*arg0)(struct file * , char * ,
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
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = cch_open(arg1, arg2);
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
  tmp = gru_open(arg1, arg2);
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
  tmp = mcs_statistics_open(arg1, arg2);
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
  tmp = options_open(arg1, arg2);
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
  tmp = statistics_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  seq_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  seq_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_3_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_4_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
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
  mcs_statistics_write(arg1, (char const *)arg2, arg3, arg4);
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
  options_write(arg1, (char const *)arg2, arg3, arg4);
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
  statistics_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
void ldv_seq_instance_next_10_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  seq_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_next_6_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  seq_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_next_7_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  seq_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_next_8_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  seq_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_next_9_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  seq_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_show_10_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  statistics_show(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_show_6_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 )
{
  {
  {
  cch_seq_show(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_show_7_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 )
{
  {
  {
  gru_seq_show(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_show_8_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 )
{
  {
  {
  mcs_statistics_show(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_show_9_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 )
{
  {
  {
  options_show(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_10_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  seq_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_6_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  seq_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_7_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  seq_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_8_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  seq_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_9_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  seq_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_10_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 )
{
  {
  {
  seq_stop(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_6_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  seq_stop(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_7_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  seq_stop(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_8_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  seq_stop(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_9_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  seq_stop(arg1, arg2);
  }
  return;
}
}
int ldv_seq_open(int arg0 , struct file *arg1 , struct seq_operations *arg2 )
{
  struct seq_operations *ldv_17_ops_seq_operations ;
  struct seq_file *ldv_17_seq_file_seq_file ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(256UL);
  ldv_17_seq_file_seq_file = (struct seq_file *)tmp;
  ldv_17_ops_seq_operations = arg2;
  ldv_dispatch_register_17_1(ldv_17_seq_file_seq_file, ldv_17_ops_seq_operations);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_seq_operations_seq_instance_10(void *arg0 )
{
  void *ldv_10_ldv_param_10_1_default ;
  long long *ldv_10_ldv_param_4_1_default ;
  void *ldv_10_ldv_param_7_1_default ;
  long long *ldv_10_ldv_param_7_2_default ;
  void *ldv_10_ldv_param_8_1_default ;
  struct seq_operations *ldv_10_ops_seq_operations ;
  struct seq_file *ldv_10_seq_file_seq_file ;
  int ldv_10_started_default ;
  struct ldv_struct_seq_instance_6 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_6 *)arg0;
  ldv_10_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_6 *)0)) {
    {
    ldv_10_seq_file_seq_file = data->arg0;
    ldv_10_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_10;
  return;
  ldv_do_10:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_10_started_default == 1);
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
    ldv_10_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_10_10(ldv_10_ops_seq_operations->stop, ldv_10_seq_file_seq_file,
                                ldv_10_ldv_param_10_1_default);
    ldv_free(ldv_10_ldv_param_10_1_default);
    ldv_10_started_default = 0;
    }
    goto ldv_do_10;
    case_2:
    {
    ldv_10_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_10_8(ldv_10_ops_seq_operations->show, ldv_10_seq_file_seq_file,
                               ldv_10_ldv_param_8_1_default);
    ldv_free(ldv_10_ldv_param_8_1_default);
    }
    goto ldv_do_10;
    goto ldv_do_10;
    case_3:
    {
    ldv_10_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_10_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_10_7(ldv_10_ops_seq_operations->next, ldv_10_seq_file_seq_file,
                               ldv_10_ldv_param_7_1_default, ldv_10_ldv_param_7_2_default);
    ldv_free(ldv_10_ldv_param_7_1_default);
    ldv_free((void *)ldv_10_ldv_param_7_2_default);
    }
    goto ldv_do_10;
    goto ldv_do_10;
    goto ldv_do_10;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_10_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_10_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_10_4(ldv_10_ops_seq_operations->start, ldv_10_seq_file_seq_file,
                                  ldv_10_ldv_param_4_1_default);
      ldv_free((void *)ldv_10_ldv_param_4_1_default);
      ldv_10_started_default = 1;
      }
      goto ldv_do_10;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_seq_operations_seq_instance_6(void *arg0 )
{
  void *ldv_6_ldv_param_10_1_default ;
  long long *ldv_6_ldv_param_4_1_default ;
  void *ldv_6_ldv_param_7_1_default ;
  long long *ldv_6_ldv_param_7_2_default ;
  void *ldv_6_ldv_param_8_1_default ;
  struct seq_operations *ldv_6_ops_seq_operations ;
  struct seq_file *ldv_6_seq_file_seq_file ;
  int ldv_6_started_default ;
  struct ldv_struct_seq_instance_6 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_6 *)arg0;
  ldv_6_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_6 *)0)) {
    {
    ldv_6_seq_file_seq_file = data->arg0;
    ldv_6_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_6;
  return;
  ldv_do_6:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_6_started_default == 1);
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
    ldv_6_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_6_10(ldv_6_ops_seq_operations->stop, ldv_6_seq_file_seq_file,
                               ldv_6_ldv_param_10_1_default);
    ldv_free(ldv_6_ldv_param_10_1_default);
    ldv_6_started_default = 0;
    }
    goto ldv_do_6;
    case_2:
    {
    ldv_6_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_6_8(ldv_6_ops_seq_operations->show, ldv_6_seq_file_seq_file,
                              ldv_6_ldv_param_8_1_default);
    ldv_free(ldv_6_ldv_param_8_1_default);
    }
    goto ldv_do_6;
    goto ldv_do_6;
    case_3:
    {
    ldv_6_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_6_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_6_7(ldv_6_ops_seq_operations->next, ldv_6_seq_file_seq_file,
                              ldv_6_ldv_param_7_1_default, ldv_6_ldv_param_7_2_default);
    ldv_free(ldv_6_ldv_param_7_1_default);
    ldv_free((void *)ldv_6_ldv_param_7_2_default);
    }
    goto ldv_do_6;
    goto ldv_do_6;
    goto ldv_do_6;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_6_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_6_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_6_4(ldv_6_ops_seq_operations->start, ldv_6_seq_file_seq_file,
                                 ldv_6_ldv_param_4_1_default);
      ldv_free((void *)ldv_6_ldv_param_4_1_default);
      ldv_6_started_default = 1;
      }
      goto ldv_do_6;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_seq_operations_seq_instance_7(void *arg0 )
{
  void *ldv_7_ldv_param_10_1_default ;
  long long *ldv_7_ldv_param_4_1_default ;
  void *ldv_7_ldv_param_7_1_default ;
  long long *ldv_7_ldv_param_7_2_default ;
  void *ldv_7_ldv_param_8_1_default ;
  struct seq_operations *ldv_7_ops_seq_operations ;
  struct seq_file *ldv_7_seq_file_seq_file ;
  int ldv_7_started_default ;
  struct ldv_struct_seq_instance_6 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_6 *)arg0;
  ldv_7_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_6 *)0)) {
    {
    ldv_7_seq_file_seq_file = data->arg0;
    ldv_7_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_7;
  return;
  ldv_do_7:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_7_started_default == 1);
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
    ldv_7_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_7_10(ldv_7_ops_seq_operations->stop, ldv_7_seq_file_seq_file,
                               ldv_7_ldv_param_10_1_default);
    ldv_free(ldv_7_ldv_param_10_1_default);
    ldv_7_started_default = 0;
    }
    goto ldv_do_7;
    case_2:
    {
    ldv_7_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_7_8(ldv_7_ops_seq_operations->show, ldv_7_seq_file_seq_file,
                              ldv_7_ldv_param_8_1_default);
    ldv_free(ldv_7_ldv_param_8_1_default);
    }
    goto ldv_do_7;
    goto ldv_do_7;
    case_3:
    {
    ldv_7_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_7_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_7_7(ldv_7_ops_seq_operations->next, ldv_7_seq_file_seq_file,
                              ldv_7_ldv_param_7_1_default, ldv_7_ldv_param_7_2_default);
    ldv_free(ldv_7_ldv_param_7_1_default);
    ldv_free((void *)ldv_7_ldv_param_7_2_default);
    }
    goto ldv_do_7;
    goto ldv_do_7;
    goto ldv_do_7;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_7_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_7_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_7_4(ldv_7_ops_seq_operations->start, ldv_7_seq_file_seq_file,
                                 ldv_7_ldv_param_4_1_default);
      ldv_free((void *)ldv_7_ldv_param_4_1_default);
      ldv_7_started_default = 1;
      }
      goto ldv_do_7;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_seq_operations_seq_instance_8(void *arg0 )
{
  void *ldv_8_ldv_param_10_1_default ;
  long long *ldv_8_ldv_param_4_1_default ;
  void *ldv_8_ldv_param_7_1_default ;
  long long *ldv_8_ldv_param_7_2_default ;
  void *ldv_8_ldv_param_8_1_default ;
  struct seq_operations *ldv_8_ops_seq_operations ;
  struct seq_file *ldv_8_seq_file_seq_file ;
  int ldv_8_started_default ;
  struct ldv_struct_seq_instance_6 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_6 *)arg0;
  ldv_8_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_6 *)0)) {
    {
    ldv_8_seq_file_seq_file = data->arg0;
    ldv_8_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_8;
  return;
  ldv_do_8:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_8_started_default == 1);
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
    ldv_8_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_8_10(ldv_8_ops_seq_operations->stop, ldv_8_seq_file_seq_file,
                               ldv_8_ldv_param_10_1_default);
    ldv_free(ldv_8_ldv_param_10_1_default);
    ldv_8_started_default = 0;
    }
    goto ldv_do_8;
    case_2:
    {
    ldv_8_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_8_8(ldv_8_ops_seq_operations->show, ldv_8_seq_file_seq_file,
                              ldv_8_ldv_param_8_1_default);
    ldv_free(ldv_8_ldv_param_8_1_default);
    }
    goto ldv_do_8;
    goto ldv_do_8;
    case_3:
    {
    ldv_8_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_8_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_8_7(ldv_8_ops_seq_operations->next, ldv_8_seq_file_seq_file,
                              ldv_8_ldv_param_7_1_default, ldv_8_ldv_param_7_2_default);
    ldv_free(ldv_8_ldv_param_7_1_default);
    ldv_free((void *)ldv_8_ldv_param_7_2_default);
    }
    goto ldv_do_8;
    goto ldv_do_8;
    goto ldv_do_8;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_8_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_8_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_8_4(ldv_8_ops_seq_operations->start, ldv_8_seq_file_seq_file,
                                 ldv_8_ldv_param_4_1_default);
      ldv_free((void *)ldv_8_ldv_param_4_1_default);
      ldv_8_started_default = 1;
      }
      goto ldv_do_8;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_seq_operations_seq_instance_9(void *arg0 )
{
  void *ldv_9_ldv_param_10_1_default ;
  long long *ldv_9_ldv_param_4_1_default ;
  void *ldv_9_ldv_param_7_1_default ;
  long long *ldv_9_ldv_param_7_2_default ;
  void *ldv_9_ldv_param_8_1_default ;
  struct seq_operations *ldv_9_ops_seq_operations ;
  struct seq_file *ldv_9_seq_file_seq_file ;
  int ldv_9_started_default ;
  struct ldv_struct_seq_instance_6 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_6 *)arg0;
  ldv_9_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_6 *)0)) {
    {
    ldv_9_seq_file_seq_file = data->arg0;
    ldv_9_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_9;
  return;
  ldv_do_9:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_9_started_default == 1);
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
    ldv_9_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_9_10(ldv_9_ops_seq_operations->stop, ldv_9_seq_file_seq_file,
                               ldv_9_ldv_param_10_1_default);
    ldv_free(ldv_9_ldv_param_10_1_default);
    ldv_9_started_default = 0;
    }
    goto ldv_do_9;
    case_2:
    {
    ldv_9_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_9_8(ldv_9_ops_seq_operations->show, ldv_9_seq_file_seq_file,
                              ldv_9_ldv_param_8_1_default);
    ldv_free(ldv_9_ldv_param_8_1_default);
    }
    goto ldv_do_9;
    goto ldv_do_9;
    case_3:
    {
    ldv_9_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_9_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_9_7(ldv_9_ops_seq_operations->next, ldv_9_seq_file_seq_file,
                              ldv_9_ldv_param_7_1_default, ldv_9_ldv_param_7_2_default);
    ldv_free(ldv_9_ldv_param_7_1_default);
    ldv_free((void *)ldv_9_ldv_param_7_2_default);
    }
    goto ldv_do_9;
    goto ldv_do_9;
    goto ldv_do_9;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_9_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_9_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_9_4(ldv_9_ops_seq_operations->start, ldv_9_seq_file_seq_file,
                                 ldv_9_ldv_param_4_1_default);
      ldv_free((void *)ldv_9_ldv_param_4_1_default);
      ldv_9_started_default = 1;
      }
      goto ldv_do_9;
    } else {
      return;
    }
  }
  return;
}
}
static int ldv_seq_open_95(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_seq_open(ldv_func_res, ldv_func_arg1, (struct seq_operations *)ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_seq_open_96(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_seq_open(ldv_func_res, ldv_func_arg1, (struct seq_operations *)ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion_bs_async_wq_of_gru_blade_state(void) ;
extern void panic(char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern int memcmp(void const * , void const * , size_t ) ;
__inline static void __preempt_count_add___1(int val )
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
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_7174;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_7174;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_7174;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_7174;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7174: ;
  return;
}
}
__inline static void __preempt_count_sub___1(int val )
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
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_7186;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_7186;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_7186;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_7186;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_7186: ;
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
static void ldv_wait_for_completion_95(struct completion *ldv_func_arg1 ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
extern void msleep(unsigned int ) ;
int gru_check_status_proc(void *cb ) ;
int gru_wait_proc(void *cb ) ;
void gru_wait_abort_proc(void *cb ) ;
__inline static unsigned long __opdword(unsigned char opcode , unsigned char exopc ,
                                        unsigned char xtype , unsigned char iaa0 ,
                                        unsigned char iaa1 , unsigned long idef2 ,
                                        unsigned char ima )
{
  {
  return ((((((((idef2 << 32) | (unsigned long )((int )iaa0 << 11)) | (unsigned long )((int )iaa1 << 13)) | (unsigned long )((int )ima << 1)) | (unsigned long )((int )xtype << 8)) | (unsigned long )((int )opcode << 16)) | (unsigned long )((int )exopc << 24)) | 144115188075855873UL);
}
}
__inline static void gru_start_instruction(struct gru_instruction *ins , unsigned long op64 )
{
  {
  {
  __asm__ volatile ("": : : "memory");
  *((unsigned long *)ins) = op64;
  __asm__ volatile ("mfence": : : "memory");
  gru_flush_cache((void *)ins);
  }
  return;
}
}
__inline static void gru_vload_phys(void *cb , unsigned long gpa , unsigned int tri0 ,
                                    int iaa , unsigned long hints )
{
  struct gru_instruction *ins ;
  unsigned long tmp ;
  {
  {
  ins = (struct gru_instruction *)cb;
  ins->baddr0 = gpa | ((unsigned long )iaa << 62);
  ins->nelem = 1UL;
  ins->op1_stride = 1UL;
  tmp = __opdword(2, 0, 3, (int )((unsigned char )iaa), 0, (unsigned long )tri0, (int )((unsigned int )((unsigned char )hints) | 2U));
  gru_start_instruction(ins, tmp);
  }
  return;
}
}
__inline static void gru_vstore_phys(void *cb , unsigned long gpa , unsigned int tri0 ,
                                     int iaa , unsigned long hints )
{
  struct gru_instruction *ins ;
  unsigned long tmp ;
  {
  {
  ins = (struct gru_instruction *)cb;
  ins->baddr0 = gpa | ((unsigned long )iaa << 62);
  ins->nelem = 1UL;
  ins->op1_stride = 1UL;
  tmp = __opdword(4, 0, 3, (int )((unsigned char )iaa), 0, (unsigned long )tri0, (int )((unsigned int )((unsigned char )hints) | 2U));
  gru_start_instruction(ins, tmp);
  }
  return;
}
}
__inline static void gru_vload(void *cb , unsigned long mem_addr , unsigned int tri0 ,
                               unsigned char xtype , unsigned long nelem , unsigned long stride ,
                               unsigned long hints )
{
  struct gru_instruction *ins ;
  unsigned long tmp ;
  {
  {
  ins = (struct gru_instruction *)cb;
  ins->baddr0 = mem_addr;
  ins->nelem = nelem;
  ins->op1_stride = stride;
  tmp = __opdword(2, 0, (int )xtype, 0, 0, (unsigned long )tri0, (int )((unsigned int )((unsigned char )hints) | 2U));
  gru_start_instruction(ins, tmp);
  }
  return;
}
}
__inline static void gru_vstore(void *cb , unsigned long mem_addr , unsigned int tri0 ,
                                unsigned char xtype , unsigned long nelem , unsigned long stride ,
                                unsigned long hints )
{
  struct gru_instruction *ins ;
  unsigned long tmp ;
  {
  {
  ins = (struct gru_instruction *)cb;
  ins->baddr0 = mem_addr;
  ins->nelem = nelem;
  ins->op1_stride = stride;
  tmp = __opdword(4, 0, (int )xtype, 0, 0, (unsigned long )tri0, (int )((unsigned int )((unsigned char )hints) | 2U));
  gru_start_instruction(ins, tmp);
  }
  return;
}
}
__inline static void gru_vset(void *cb , unsigned long mem_addr , unsigned long value ,
                              unsigned char xtype , unsigned long nelem , unsigned long stride ,
                              unsigned long hints )
{
  struct gru_instruction *ins ;
  unsigned long tmp ;
  {
  {
  ins = (struct gru_instruction *)cb;
  ins->baddr0 = mem_addr;
  ins->op2_value_baddr1 = value;
  ins->nelem = nelem;
  ins->op1_stride = stride;
  tmp = __opdword(6, 0, (int )xtype, 0, 0, 0UL, (int )((unsigned int )((unsigned char )hints) | 2U));
  gru_start_instruction(ins, tmp);
  }
  return;
}
}
__inline static void gru_bcopy(void *cb , unsigned long const src , unsigned long dest ,
                               unsigned int tri0 , unsigned int xtype , unsigned long nelem ,
                               unsigned int bufsize , unsigned long hints )
{
  struct gru_instruction *ins ;
  unsigned long tmp ;
  {
  {
  ins = (struct gru_instruction *)cb;
  ins->baddr0 = (unsigned long )src;
  ins->op2_value_baddr1 = dest;
  ins->nelem = nelem;
  ins->tri1_bufsize = (unsigned long )bufsize;
  tmp = __opdword(1, 0, (int )((unsigned char )xtype), 0, 0, (unsigned long )tri0,
                  (int )((unsigned int )((unsigned char )hints) | 2U));
  gru_start_instruction(ins, tmp);
  }
  return;
}
}
__inline static void gru_gamir(void *cb , int exopc , unsigned long src , unsigned int xtype ,
                               unsigned long hints )
{
  struct gru_instruction *ins ;
  unsigned long tmp ;
  {
  {
  ins = (struct gru_instruction *)cb;
  ins->baddr0 = src;
  tmp = __opdword(10, (int )((unsigned char )exopc), (int )((unsigned char )xtype),
                  0, 0, 0UL, (int )((unsigned int )((unsigned char )hints) | 2U));
  gru_start_instruction(ins, tmp);
  }
  return;
}
}
__inline static void gru_gamer(void *cb , int exopc , unsigned long src , unsigned int xtype ,
                               unsigned long operand1 , unsigned long operand2 , unsigned long hints )
{
  struct gru_instruction *ins ;
  unsigned long tmp ;
  {
  {
  ins = (struct gru_instruction *)cb;
  ins->baddr0 = src;
  ins->op1_stride = operand1;
  ins->op2_value_baddr1 = operand2;
  tmp = __opdword(12, (int )((unsigned char )exopc), (int )((unsigned char )xtype),
                  0, 0, 0UL, (int )((unsigned int )((unsigned char )hints) | 2U));
  gru_start_instruction(ins, tmp);
  }
  return;
}
}
__inline static void gru_mesq(void *cb , unsigned long queue , unsigned long tri0 ,
                              unsigned long nelem , unsigned long hints )
{
  struct gru_instruction *ins ;
  unsigned long tmp ;
  {
  {
  ins = (struct gru_instruction *)cb;
  ins->baddr0 = queue;
  ins->nelem = nelem;
  tmp = __opdword(8, 0, 6, 0, 0, tri0, (int )((unsigned int )((unsigned char )hints) | 2U));
  gru_start_instruction(ins, tmp);
  }
  return;
}
}
__inline static unsigned long gru_get_amo_value(void *cb )
{
  struct gru_instruction *ins ;
  {
  ins = (struct gru_instruction *)cb;
  return (ins->avalue);
}
}
__inline static int gru_get_amo_value_head(void *cb )
{
  struct gru_instruction *ins ;
  {
  ins = (struct gru_instruction *)cb;
  return ((int )ins->avalue);
}
}
__inline static int gru_get_amo_value_limit(void *cb )
{
  struct gru_instruction *ins ;
  {
  ins = (struct gru_instruction *)cb;
  return ((int )(ins->avalue >> 32));
}
}
__inline static union gru_mesqhead gru_mesq_head(int head , int limit )
{
  union gru_mesqhead mqh ;
  {
  mqh.__annonCompField74.head = (unsigned int )head;
  mqh.__annonCompField74.limit = (unsigned int )limit;
  return (mqh);
}
}
int gru_get_cb_exception_detail(void *cb , struct control_block_extended_exc_detail *excdet ) ;
__inline static int gru_get_cb_message_queue_substatus(void *cb )
{
  struct gru_control_block_status *cbs ;
  {
  cbs = (struct gru_control_block_status *)cb;
  return ((int )cbs->isubstatus & 7);
}
}
__inline static int gru_check_status(void *cb )
{
  struct gru_control_block_status *cbs ;
  int ret ;
  {
  cbs = (struct gru_control_block_status *)cb;
  ret = (int )cbs->istatus;
  if (ret != 2) {
    {
    ret = gru_check_status_proc(cb);
    }
  } else {
  }
  return (ret);
}
}
__inline static int gru_wait(void *cb )
{
  int tmp ;
  {
  {
  tmp = gru_wait_proc(cb);
  }
  return (tmp);
}
}
__inline static int gru_get_tri(void *vaddr )
{
  {
  return ((int )(((unsigned int )((long )vaddr) & 262143U) - 131072U));
}
}
__inline static void *get_gseg_base_address_ds(void *base , int ctxnum , int line )
{
  void *tmp ;
  {
  {
  tmp = get_gseg_base_address(base, ctxnum);
  }
  return (tmp + ((unsigned long )(line * 64) + 131072UL));
}
}
int gru_create_message_queue(struct gru_message_queue_desc *mqd , void *p , unsigned int bytes ,
                             int nasid , int vector , int apicid ) ;
int gru_send_message_gpa(struct gru_message_queue_desc *mqd , void *mesg , unsigned int bytes ) ;
void gru_free_message(struct gru_message_queue_desc *mqd , void *mesg ) ;
void *gru_get_next_message(struct gru_message_queue_desc *mqd ) ;
int gru_read_gpa(unsigned long *value , unsigned long gpa ) ;
int gru_copy_gpa(unsigned long dest_gpa , unsigned long src_gpa , unsigned int bytes ) ;
unsigned long gru_reserve_async_resources(int blade_id , int cbrs , int dsr_bytes ,
                                          struct completion *cmp ) ;
void gru_release_async_resources(unsigned long han ) ;
void gru_wait_async_cbr(unsigned long han ) ;
void gru_lock_async_resource(unsigned long han , void **cb , void **dsr ) ;
void gru_unlock_async_resource(unsigned long han ) ;
__inline static unsigned long uv_gpa(void *v )
{
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  {
  tmp = __phys_addr((unsigned long )v);
  tmp___0 = uv_soc_phys_ram_to_gpa(tmp);
  }
  return (tmp___0);
}
}
__inline static unsigned long uv_global_gru_mmr_address(int pnode , unsigned long offset )
{
  void const *__vpp_verify ;
  unsigned long tcp_ptr__ ;
  {
  __vpp_verify = (void const *)0;
  __asm__ volatile ("add %%gs:%1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off), "0" (& __uv_hub_info));
  return ((offset | ((unsigned long )pnode << (int )((struct uv_hub_info_s *)tcp_ptr__)->m_val)) | 67108864UL);
}
}
extern unsigned int uv_apicid_hibits ;
static unsigned long uv_hub_ipi_value(int apicid , int vector , int mode )
{
  {
  apicid = (int )((unsigned int )apicid | uv_apicid_hibits);
  return ((((unsigned long )(apicid << 16) | (unsigned long )(mode << 8)) | (unsigned long )vector) | 0x8000000000000000UL);
}
}
static void gru_load_kernel_context(struct gru_blade_state *bs , int blade_id )
{
  struct gru_state *gru ;
  struct gru_thread_state *kgts ;
  void *vaddr ;
  int ctxnum ;
  int ncpus ;
  struct gru_state *tmp ;
  {
  {
  up_read(& bs->bs_kgts_sema);
  down_write(& bs->bs_kgts_sema);
  }
  if ((unsigned long )bs->bs_kgts == (unsigned long )((struct gru_thread_state *)0)) {
    {
    bs->bs_kgts = gru_alloc_gts((struct vm_area_struct *)0, 0, 0, 0, 0, 0);
    (bs->bs_kgts)->ts_user_blade_id = (short )blade_id;
    }
  } else {
  }
  kgts = bs->bs_kgts;
  if ((unsigned long )kgts->ts_gru == (unsigned long )((struct gru_state *)0)) {
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.load_kernel_context);
      }
    } else {
    }
    {
    ncpus = uv_blade_nr_possible_cpus(blade_id);
    kgts->ts_cbr_au_count = (unsigned char )(((ncpus + bs->bs_async_cbrs) + 1) / 2);
    kgts->ts_dsr_au_count = (unsigned char )(((ncpus * 256 + bs->bs_async_dsr_bytes) + 1023) / 1024);
    }
    goto ldv_33689;
    ldv_33688:
    {
    msleep(1U);
    gru_steal_context(kgts);
    }
    ldv_33689:
    {
    tmp = gru_assign_gru_context(kgts);
    }
    if ((unsigned long )tmp == (unsigned long )((struct gru_state *)0)) {
      goto ldv_33688;
    } else {
    }
    {
    gru_load_context(kgts);
    gru = (bs->bs_kgts)->ts_gru;
    vaddr = gru->gs_gru_base_vaddr;
    ctxnum = kgts->ts_ctxnum;
    bs->kernel_cb = get_gseg_base_address_cb(vaddr, ctxnum, 0);
    bs->kernel_dsr = get_gseg_base_address_ds(vaddr, ctxnum, 0);
    }
  } else {
  }
  {
  downgrade_write(& bs->bs_kgts_sema);
  }
  return;
}
}
static int gru_free_kernel_contexts(void)
{
  struct gru_blade_state *bs ;
  struct gru_thread_state *kgts ;
  int bid ;
  int ret ;
  int tmp ;
  {
  ret = 0;
  bid = 0;
  goto ldv_33700;
  ldv_33699:
  bs = gru_base[bid];
  if ((unsigned long )bs == (unsigned long )((struct gru_blade_state *)0)) {
    goto ldv_33698;
  } else {
  }
  {
  tmp = down_write_trylock(& bs->bs_kgts_sema);
  }
  if (tmp != 0) {
    kgts = bs->bs_kgts;
    if ((unsigned long )kgts != (unsigned long )((struct gru_thread_state *)0) && (unsigned long )kgts->ts_gru != (unsigned long )((struct gru_state *)0)) {
      {
      gru_unload_context(kgts, 0);
      }
    } else {
    }
    {
    bs->bs_kgts = (struct gru_thread_state *)0;
    up_write(& bs->bs_kgts_sema);
    kfree((void const *)kgts);
    }
  } else {
    ret = ret + 1;
  }
  ldv_33698:
  bid = bid + 1;
  ldv_33700: ;
  if (bid <= 1023) {
    goto ldv_33699;
  } else {
  }
  return (ret);
}
}
static struct gru_blade_state *gru_lock_kernel_context(int blade_id )
{
  struct gru_blade_state *bs ;
  int bid ;
  int tmp ;
  int tmp___0 ;
  {
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.lock_kernel_context);
    }
  } else {
  }
  again: ;
  if (blade_id < 0) {
    {
    tmp = uv_numa_blade_id();
    bid = tmp;
    }
  } else {
    bid = blade_id;
  }
  {
  bs = gru_base[bid];
  down_read(& bs->bs_kgts_sema);
  }
  if (blade_id < 0) {
    {
    tmp___0 = uv_numa_blade_id();
    }
    if (bid != tmp___0) {
      {
      up_read(& bs->bs_kgts_sema);
      }
      goto again;
    } else {
    }
  } else {
  }
  if ((unsigned long )bs->bs_kgts == (unsigned long )((struct gru_thread_state *)0) || (unsigned long )(bs->bs_kgts)->ts_gru == (unsigned long )((struct gru_state *)0)) {
    {
    gru_load_kernel_context(bs, bid);
    }
  } else {
  }
  return (bs);
}
}
static void gru_unlock_kernel_context(int blade_id )
{
  struct gru_blade_state *bs ;
  {
  {
  bs = gru_base[blade_id];
  up_read(& bs->bs_kgts_sema);
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.unlock_kernel_context);
    }
  } else {
  }
  return;
}
}
static int gru_get_cpu_resources(int dsr_bytes , void **cb , void **dsr )
{
  struct gru_blade_state *bs ;
  int lcpu ;
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect(dsr_bytes > 256, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grukservices.c"),
                         "i" (267), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  __preempt_count_add___1(1);
  __asm__ volatile ("": : : "memory");
  bs = gru_lock_kernel_context(-1);
  lcpu = uv_blade_processor_id();
  *cb = bs->kernel_cb + (unsigned long )(lcpu * 256);
  *dsr = bs->kernel_dsr + (unsigned long )(lcpu * 256);
  }
  return (0);
}
}
static void gru_free_cpu_resources(void *cb , void *dsr )
{
  int tmp ;
  {
  {
  tmp = uv_numa_blade_id();
  gru_unlock_kernel_context(tmp);
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub___1(1);
  }
  return;
}
}
unsigned long gru_reserve_async_resources(int blade_id , int cbrs , int dsr_bytes ,
                                          struct completion *cmp )
{
  struct gru_blade_state *bs ;
  struct gru_thread_state *kgts ;
  int ret ;
  {
  {
  ret = 0;
  bs = gru_base[blade_id];
  down_write(& bs->bs_kgts_sema);
  }
  if (bs->bs_async_dsr_bytes + bs->bs_async_cbrs != 0) {
    goto done;
  } else {
  }
  bs->bs_async_dsr_bytes = dsr_bytes;
  bs->bs_async_cbrs = cbrs;
  bs->bs_async_wq = cmp;
  kgts = bs->bs_kgts;
  if ((unsigned long )kgts != (unsigned long )((struct gru_thread_state *)0) && (unsigned long )kgts->ts_gru != (unsigned long )((struct gru_state *)0)) {
    {
    gru_unload_context(kgts, 0);
    }
  } else {
  }
  ret = blade_id + 1;
  done:
  {
  up_write(& bs->bs_kgts_sema);
  }
  return ((unsigned long )ret);
}
}
void gru_release_async_resources(unsigned long han )
{
  struct gru_blade_state *bs ;
  {
  {
  bs = gru_base[han - 1UL];
  down_write(& bs->bs_kgts_sema);
  bs->bs_async_dsr_bytes = 0;
  bs->bs_async_cbrs = 0;
  bs->bs_async_wq = (struct completion *)0;
  up_write(& bs->bs_kgts_sema);
  }
  return;
}
}
void gru_wait_async_cbr(unsigned long han )
{
  struct gru_blade_state *bs ;
  {
  {
  bs = gru_base[han - 1UL];
  ldv_wait_for_completion_95(bs->bs_async_wq);
  __asm__ volatile ("mfence": : : "memory");
  }
  return;
}
}
void gru_lock_async_resource(unsigned long han , void **cb , void **dsr )
{
  struct gru_blade_state *bs ;
  int blade_id ;
  int ncpus ;
  {
  {
  bs = gru_base[han - 1UL];
  blade_id = (int )((unsigned int )han - 1U);
  gru_lock_kernel_context(blade_id);
  ncpus = uv_blade_nr_possible_cpus(blade_id);
  }
  if ((unsigned long )cb != (unsigned long )((void **)0)) {
    *cb = bs->kernel_cb + (unsigned long )(ncpus * 256);
  } else {
  }
  if ((unsigned long )dsr != (unsigned long )((void **)0)) {
    *dsr = bs->kernel_dsr + (unsigned long )(ncpus * 256);
  } else {
  }
  return;
}
}
void gru_unlock_async_resource(unsigned long han )
{
  int blade_id ;
  {
  {
  blade_id = (int )((unsigned int )han - 1U);
  gru_unlock_kernel_context(blade_id);
  }
  return;
}
}
int gru_get_cb_exception_detail(void *cb , struct control_block_extended_exc_detail *excdet )
{
  struct gru_control_block_extended *cbe ;
  struct gru_thread_state *kgts ;
  unsigned long off ;
  int cbrnum ;
  int bid ;
  int tmp ;
  long tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  {
  kgts = (struct gru_thread_state *)0;
  bid = 0;
  goto ldv_33765;
  ldv_33764: ;
  if ((unsigned long )gru_base[bid] == (unsigned long )((struct gru_blade_state *)0)) {
    goto ldv_33762;
  } else {
  }
  kgts = (gru_base[bid])->bs_kgts;
  if ((unsigned long )kgts == (unsigned long )((struct gru_thread_state *)0) || (unsigned long )kgts->ts_gru == (unsigned long )((struct gru_state *)0)) {
    goto ldv_33763;
  } else {
  }
  off = (unsigned long )((long )cb - (long )(kgts->ts_gru)->gs_gru_base_vaddr);
  if (off <= 134217727UL) {
    goto ldv_33762;
  } else {
  }
  kgts = (struct gru_thread_state *)0;
  ldv_33763:
  bid = bid + 1;
  ldv_33765:
  {
  tmp = uv_num_possible_blades();
  }
  if (bid < tmp) {
    goto ldv_33764;
  } else {
  }
  ldv_33762:
  {
  tmp___0 = ldv__builtin_expect((unsigned long )kgts == (unsigned long )((struct gru_thread_state *)0),
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grukservices.c"),
                         "i" (418), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___1 = get_cb_number(cb);
  tmp___2 = get_cb_number(cb);
  cbrnum = (int )((unsigned int )((int )kgts->ts_cbr_idx[tmp___1 / 2UL] * 2) + ((unsigned int )tmp___2 & 1U));
  cbe = get_cbe((void *)((unsigned long )cb & 0xfffffffff8000000UL), cbrnum);
  gru_flush_cache((void *)cbe);
  sync_core();
  excdet->opc = (int )cbe->opccpy;
  excdet->exopc = (int )cbe->exopccpy;
  excdet->ecause = (int )cbe->ecause;
  excdet->exceptdet0 = (long )cbe->idef1upd;
  excdet->exceptdet1 = (int )cbe->idef3upd;
  gru_flush_cache((void *)cbe);
  }
  return (0);
}
}
char *gru_get_cb_exception_detail_str(int ret , void *cb , char *buf , int size )
{
  struct gru_control_block_status *gen ;
  struct control_block_extended_exc_detail excdet ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  gen = (struct gru_control_block_status *)cb;
  if (ret > 0 && (unsigned int )*((unsigned char *)gen + 7UL) == 1U) {
    {
    gru_get_cb_exception_detail(cb, & excdet);
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_33779;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_33779;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_33779;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_33779;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_33779:
    pscr_ret__ = pfo_ret__;
    goto ldv_33785;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33789;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33789;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33789;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_33789;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_33789:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_33785;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33798;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33798;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33798;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_33798;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_33798:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_33785;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33807;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33807;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33807;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_33807;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_33807:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_33785;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_33785;
    switch_break: ;
    }
    ldv_33785:
    {
    snprintf(buf, (size_t )size, "GRU:%d exception: cb %p, opc %d, exopc %d, ecause 0x%x,excdet0 0x%lx, excdet1 0x%x",
             pscr_ret__, gen, excdet.opc, excdet.exopc, excdet.ecause, excdet.exceptdet0,
             excdet.exceptdet1);
    }
  } else {
    {
    snprintf(buf, (size_t )size, "No exception");
    }
  }
  return (buf);
}
}
static int gru_wait_idle_or_exception(struct gru_control_block_status *gen )
{
  {
  goto ldv_33819;
  ldv_33818:
  {
  cpu_relax();
  __asm__ volatile ("": : : "memory");
  }
  ldv_33819: ;
  if ((int )gen->istatus > 1) {
    goto ldv_33818;
  } else {
  }
  return ((int )gen->istatus);
}
}
static int gru_retry_exception(void *cb )
{
  struct gru_control_block_status *gen ;
  struct control_block_extended_exc_detail excdet ;
  int retry ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  gen = (struct gru_control_block_status *)cb;
  retry = 3;
  ldv_33828:
  {
  tmp = gru_wait_idle_or_exception(gen);
  }
  if (tmp == 0) {
    return (0);
  } else {
  }
  {
  tmp___0 = gru_get_cb_message_queue_substatus(cb);
  }
  if (tmp___0 != 0) {
    return (1);
  } else {
  }
  {
  gru_get_cb_exception_detail(cb, & excdet);
  }
  if ((excdet.ecause & -414593) != 0 || excdet.cbrexecstatus & 1) {
    goto ldv_33827;
  } else {
  }
  tmp___1 = retry;
  retry = retry - 1;
  if (tmp___1 == 0) {
    goto ldv_33827;
  } else {
  }
  {
  gen->icmd = 1U;
  gru_flush_cache((void *)gen);
  }
  goto ldv_33828;
  ldv_33827: ;
  return (1);
}
}
int gru_check_status_proc(void *cb )
{
  struct gru_control_block_status *gen ;
  int ret ;
  {
  gen = (struct gru_control_block_status *)cb;
  ret = (int )gen->istatus;
  if (ret == 1) {
    {
    ret = gru_retry_exception(cb);
    }
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  return (ret);
}
}
int gru_wait_proc(void *cb )
{
  struct gru_control_block_status *gen ;
  int ret ;
  {
  {
  gen = (struct gru_control_block_status *)cb;
  ret = gru_wait_idle_or_exception(gen);
  }
  if (ret == 1) {
    {
    ret = gru_retry_exception(cb);
    }
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  return (ret);
}
}
void gru_abort(int ret , void *cb , char *str )
{
  char buf[256U] ;
  char *tmp ;
  {
  {
  tmp = gru_get_cb_exception_detail_str(ret, cb, (char *)(& buf), 256);
  panic("GRU FATAL ERROR: %s - %s\n", str, tmp);
  }
  return;
}
}
void gru_wait_abort_proc(void *cb )
{
  int ret ;
  {
  {
  ret = gru_wait_proc(cb);
  }
  if (ret != 0) {
    {
    gru_abort(ret, cb, (char *)"gru_wait_abort");
    }
  } else {
  }
  return;
}
}
__inline static int get_present2(void *p )
{
  struct message_header *mhdr ;
  {
  mhdr = (struct message_header *)p + 64U;
  return ((int )mhdr->present);
}
}
__inline static void restore_present2(void *p , int val )
{
  struct message_header *mhdr ;
  {
  mhdr = (struct message_header *)p + 64U;
  mhdr->present = (char )val;
  return;
}
}
int gru_create_message_queue(struct gru_message_queue_desc *mqd , void *p , unsigned int bytes ,
                             int nasid , int vector , int apicid )
{
  struct message_queue *mq ;
  unsigned int qlines ;
  {
  {
  mq = (struct message_queue *)p;
  qlines = bytes / 64U - 2U;
  memset((void *)mq, 0, (size_t )bytes);
  mq->start = (void *)(& mq->data);
  mq->start2 = (void *)(& mq->data) + (unsigned long )((qlines / 2U + 67108863U) * 64U);
  mq->next = (void *)(& mq->data);
  mq->limit = (void *)(& mq->data) + (unsigned long )((qlines + 67108862U) * 64U);
  mq->qlines = (int )qlines;
  mq->hstatus[0] = 0L;
  mq->hstatus[1] = 1L;
  mq->head = gru_mesq_head(2, (int )(qlines / 2U + 1U));
  mqd->mq = (void *)mq;
  mqd->mq_gpa = uv_gpa((void *)mq);
  mqd->qlines = (int )qlines;
  mqd->interrupt_pnode = nasid >> 1;
  mqd->interrupt_vector = vector;
  mqd->interrupt_apicid = apicid;
  }
  return (0);
}
}
static char const __kstrtab_gru_create_message_queue[25U] =
  { 'g', 'r', 'u', '_',
        'c', 'r', 'e', 'a',
        't', 'e', '_', 'm',
        'e', 's', 's', 'a',
        'g', 'e', '_', 'q',
        'u', 'e', 'u', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_gru_create_message_queue ;
struct kernel_symbol const __ksymtab_gru_create_message_queue = {(unsigned long )(& gru_create_message_queue), (char const *)(& __kstrtab_gru_create_message_queue)};
static int send_noop_message(void *cb , struct gru_message_queue_desc *mqd , void *mesg )
{
  struct message_header noop_header ;
  unsigned long m ;
  int substatus ;
  int ret ;
  struct message_header save_mhdr ;
  struct message_header *mhdr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  noop_header.present = 2;
  noop_header.present2 = (char)0;
  noop_header.lines = 1;
  noop_header.fill = (char)0;
  mhdr = (struct message_header *)mesg;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.mesq_noop);
    }
  } else {
  }
  {
  save_mhdr = *mhdr;
  *mhdr = noop_header;
  tmp = gru_get_tri((void *)mhdr);
  gru_mesq(cb, mqd->mq_gpa, (unsigned long )tmp, 1UL, 1UL);
  ret = gru_wait(cb);
  }
  if (ret != 0) {
    {
    substatus = gru_get_cb_message_queue_substatus(cb);
    }
    {
    if (substatus == 0) {
      goto case_0;
    } else {
    }
    if (substatus == 1) {
      goto case_1;
    } else {
    }
    if (substatus == 2) {
      goto case_2;
    } else {
    }
    if (substatus == 4) {
      goto case_4;
    } else {
    }
    if (substatus == 5) {
      goto case_5;
    } else {
    }
    if (substatus == 3) {
      goto case_3;
    } else {
    }
    goto switch_default;
    case_0: ;
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.mesq_noop_unexpected_error);
      }
    } else {
    }
    ret = 3;
    goto ldv_33892;
    case_1: ;
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.mesq_noop_lb_overflow);
      }
    } else {
    }
    ret = 1;
    goto ldv_33892;
    case_2: ;
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.mesq_noop_qlimit_reached);
      }
    } else {
    }
    ret = 0;
    goto ldv_33892;
    case_4: ;
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.mesq_noop_amo_nacked);
      }
    } else {
    }
    ret = 1;
    goto ldv_33892;
    case_5: ;
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.mesq_noop_put_nacked);
      }
    } else {
    }
    {
    tmp___0 = gru_get_amo_value_head(cb);
    m = mqd->mq_gpa + (unsigned long )(tmp___0 << 6);
    tmp___1 = gru_get_tri(mesg);
    gru_vstore(cb, m, (unsigned int )tmp___1, 6, 1UL, 1UL, 1UL);
    tmp___2 = gru_wait(cb);
    }
    if (tmp___2 == 0) {
      ret = -1;
    } else {
      ret = 3;
    }
    goto ldv_33892;
    case_3: ;
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.mesq_noop_page_overflow);
      }
    } else {
    }
    switch_default:
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grukservices.c"),
                         "i" (634), "i" (12UL));
    __builtin_unreachable();
    }
    switch_break: ;
    }
    ldv_33892: ;
  } else {
  }
  *mhdr = save_mhdr;
  return (ret);
}
}
static int send_message_queue_full(void *cb , struct gru_message_queue_desc *mqd ,
                                   void *mesg , int lines )
{
  union gru_mesqhead mqh ;
  unsigned int limit ;
  unsigned int head ;
  unsigned long avalue ;
  int half ;
  int qlines ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  unsigned long tmp___7 ;
  {
  {
  avalue = gru_get_amo_value(cb);
  tmp = gru_get_amo_value_head(cb);
  head = (unsigned int )tmp;
  tmp___0 = gru_get_amo_value_limit(cb);
  limit = (unsigned int )tmp___0;
  qlines = mqd->qlines;
  half = limit != (unsigned int )qlines;
  }
  if (half != 0) {
    {
    mqh = gru_mesq_head(qlines / 2 + 1, qlines);
    }
  } else {
    {
    mqh = gru_mesq_head(2, qlines / 2 + 1);
    }
  }
  {
  gru_gamir(cb, 2, mqd->mq_gpa + ((unsigned long )half + 2UL) * 8UL, 3U, 1UL);
  tmp___1 = gru_wait(cb);
  }
  if (tmp___1 != 0) {
    goto cberr;
  } else {
  }
  {
  tmp___2 = gru_get_amo_value(cb);
  }
  if (tmp___2 == 0UL) {
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.mesq_qf_locked);
      }
    } else {
    }
    return (2);
  } else {
  }
  if (head != limit) {
    {
    tmp___4 = send_noop_message(cb, mqd, mesg);
    }
    if (tmp___4 != 0) {
      {
      gru_gamir(cb, 5, mqd->mq_gpa + ((unsigned long )half + 2UL) * 8UL, 3U, 1UL);
      tmp___3 = gru_wait(cb);
      }
      if (tmp___3 != 0) {
        goto cberr;
      } else {
      }
      if ((gru_options & 2UL) != 0UL) {
        {
        atomic_long_inc(& gru_stats.mesq_qf_noop_not_full);
        }
      } else {
      }
      return (-1);
    } else {
    }
    avalue = avalue + 1UL;
  } else {
  }
  {
  gru_gamer(cb, 8, mqd->mq_gpa, 3U, mqh.val, avalue, 1UL);
  tmp___5 = gru_wait(cb);
  }
  if (tmp___5 != 0) {
    goto cberr;
  } else {
  }
  {
  tmp___7 = gru_get_amo_value(cb);
  }
  if (tmp___7 != avalue) {
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.mesq_qf_switch_head_failed);
      }
    } else {
    }
    {
    gru_gamir(cb, 5, mqd->mq_gpa + ((unsigned long )half + 2UL) * 8UL, 3U, 1UL);
    tmp___6 = gru_wait(cb);
    }
    if (tmp___6 != 0) {
      goto cberr;
    } else {
    }
  } else {
  }
  return (-1);
  cberr: ;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.mesq_qf_unexpected_error);
    }
  } else {
  }
  return (3);
}
}
static int send_message_put_nacked(void *cb , struct gru_message_queue_desc *mqd ,
                                   void *mesg , int lines )
{
  unsigned long m ;
  unsigned long *val ;
  unsigned long gpa ;
  unsigned long save ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  val = (unsigned long *)mesg;
  tmp = gru_get_amo_value_head(cb);
  m = mqd->mq_gpa + (unsigned long )(tmp << 6);
  }
  if (lines == 2) {
    {
    gru_vset(cb, m, 0UL, 6, (unsigned long )lines, 1UL, 1UL);
    tmp___0 = gru_wait(cb);
    }
    if (tmp___0 != 0) {
      return (3);
    } else {
    }
  } else {
  }
  {
  tmp___1 = gru_get_tri(mesg);
  gru_vstore(cb, m, (unsigned int )tmp___1, 6, (unsigned long )lines, 1UL, 1UL);
  tmp___2 = gru_wait(cb);
  }
  if (tmp___2 != 0) {
    return (3);
  } else {
  }
  if (mqd->interrupt_vector == 0) {
    return (0);
  } else {
  }
  {
  gpa = uv_global_gru_mmr_address(mqd->interrupt_pnode, 394496UL);
  save = *val;
  *val = uv_hub_ipi_value(mqd->interrupt_apicid, mqd->interrupt_vector, 0);
  tmp___3 = gru_get_tri(mesg);
  gru_vstore_phys(cb, gpa, (unsigned int )tmp___3, 3, 1UL);
  ret = gru_wait(cb);
  *val = save;
  }
  if (ret != 0) {
    return (3);
  } else {
  }
  return (0);
}
}
static int send_message_failure(void *cb , struct gru_message_queue_desc *mqd , void *mesg ,
                                int lines )
{
  int substatus ;
  int ret ;
  {
  {
  ret = 0;
  substatus = gru_get_cb_message_queue_substatus(cb);
  }
  {
  if (substatus == 0) {
    goto case_0;
  } else {
  }
  if (substatus == 1) {
    goto case_1;
  } else {
  }
  if (substatus == 2) {
    goto case_2;
  } else {
  }
  if (substatus == 4) {
    goto case_4;
  } else {
  }
  if (substatus == 5) {
    goto case_5;
  } else {
  }
  if (substatus == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0: ;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.mesq_send_unexpected_error);
    }
  } else {
  }
  ret = 3;
  goto ldv_33932;
  case_1: ;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.mesq_send_lb_overflow);
    }
  } else {
  }
  ret = 1;
  goto ldv_33932;
  case_2: ;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.mesq_send_qlimit_reached);
    }
  } else {
  }
  {
  ret = send_message_queue_full(cb, mqd, mesg, lines);
  }
  goto ldv_33932;
  case_4: ;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.mesq_send_amo_nacked);
    }
  } else {
  }
  ret = 1;
  goto ldv_33932;
  case_5: ;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.mesq_send_put_nacked);
    }
  } else {
  }
  {
  ret = send_message_put_nacked(cb, mqd, mesg, lines);
  }
  goto ldv_33932;
  case_3: ;
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.mesq_page_overflow);
    }
  } else {
  }
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grukservices.c"),
                       "i" (786), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  ldv_33932: ;
  return (ret);
}
}
int gru_send_message_gpa(struct gru_message_queue_desc *mqd , void *mesg , unsigned int bytes )
{
  struct message_header *mhdr ;
  void *cb ;
  void *dsr ;
  int istatus ;
  int clines ;
  int ret ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.mesq_send);
    }
  } else {
  }
  {
  tmp = ldv__builtin_expect(bytes - 4U > 124U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grukservices.c"),
                         "i" (806), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  clines = (int )((bytes + 63U) / 64U);
  tmp___0 = gru_get_cpu_resources((int )bytes, & cb, & dsr);
  }
  if (tmp___0 != 0) {
    return (11);
  } else {
  }
  {
  memcpy(dsr, (void const *)mesg, (size_t )bytes);
  mhdr = (struct message_header *)dsr;
  mhdr->present = 1;
  mhdr->lines = (char )clines;
  }
  if (clines == 2) {
    {
    tmp___1 = get_present2((void *)mhdr);
    mhdr->present2 = (char )tmp___1;
    restore_present2((void *)mhdr, 1);
    }
  } else {
  }
  ldv_33950:
  {
  ret = 0;
  tmp___2 = gru_get_tri((void *)mhdr);
  gru_mesq(cb, mqd->mq_gpa, (unsigned long )tmp___2, (unsigned long )clines, 1UL);
  istatus = gru_wait(cb);
  }
  if (istatus != 0) {
    {
    ret = send_message_failure(cb, mqd, dsr, clines);
    }
  } else {
  }
  if (ret == -1) {
    goto ldv_33950;
  } else {
  }
  {
  gru_free_cpu_resources(cb, dsr);
  }
  if (ret != 0) {
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.mesq_send_failed);
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
static char const __kstrtab_gru_send_message_gpa[21U] =
  { 'g', 'r', 'u', '_',
        's', 'e', 'n', 'd',
        '_', 'm', 'e', 's',
        's', 'a', 'g', 'e',
        '_', 'g', 'p', 'a',
        '\000'};
struct kernel_symbol const __ksymtab_gru_send_message_gpa ;
struct kernel_symbol const __ksymtab_gru_send_message_gpa = {(unsigned long )(& gru_send_message_gpa), (char const *)(& __kstrtab_gru_send_message_gpa)};
void gru_free_message(struct gru_message_queue_desc *mqd , void *mesg )
{
  struct message_queue *mq ;
  struct message_header *mhdr ;
  void *next ;
  void *pnext ;
  int half ;
  int lines ;
  {
  mq = (struct message_queue *)mqd->mq;
  mhdr = (struct message_header *)mq->next;
  half = -1;
  lines = (int )mhdr->lines;
  if (lines == 2) {
    {
    restore_present2((void *)mhdr, 0);
    }
  } else {
  }
  mhdr->present = 0;
  pnext = mq->next;
  next = pnext + (unsigned long )(lines * 64);
  if ((unsigned long )next == (unsigned long )mq->limit) {
    next = mq->start;
    half = 1;
  } else
  if ((unsigned long )pnext < (unsigned long )mq->start2 && (unsigned long )next >= (unsigned long )mq->start2) {
    half = 0;
  } else {
  }
  if (half >= 0) {
    mq->hstatus[half] = 1L;
  } else {
  }
  mq->next = next;
  return;
}
}
static char const __kstrtab_gru_free_message[17U] =
  { 'g', 'r', 'u', '_',
        'f', 'r', 'e', 'e',
        '_', 'm', 'e', 's',
        's', 'a', 'g', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_gru_free_message ;
struct kernel_symbol const __ksymtab_gru_free_message = {(unsigned long )(& gru_free_message), (char const *)(& __kstrtab_gru_free_message)};
void *gru_get_next_message(struct gru_message_queue_desc *mqd )
{
  struct message_queue *mq ;
  struct message_header *mhdr ;
  int present ;
  int tmp ;
  {
  mq = (struct message_queue *)mqd->mq;
  mhdr = (struct message_header *)mq->next;
  present = (int )mhdr->present;
  goto ldv_33986;
  ldv_33985:
  {
  gru_free_message(mqd, (void *)mhdr);
  mhdr = (struct message_header *)mq->next;
  present = (int )mhdr->present;
  }
  ldv_33986: ;
  if (present == 2) {
    goto ldv_33985;
  } else {
  }
  if (present == 1 && (int )((signed char )mhdr->lines) == 2) {
    {
    tmp = get_present2((void *)mhdr);
    }
    if (tmp == 0) {
      present = 0;
    } else {
    }
  } else {
  }
  if (present == 0) {
    if ((gru_options & 2UL) != 0UL) {
      {
      atomic_long_inc(& gru_stats.mesq_receive_none);
      }
    } else {
    }
    return ((void *)0);
  } else {
  }
  if ((int )((signed char )mhdr->lines) == 2) {
    {
    restore_present2((void *)mhdr, (int )mhdr->present2);
    }
  } else {
  }
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.mesq_receive);
    }
  } else {
  }
  return ((void *)mhdr);
}
}
static char const __kstrtab_gru_get_next_message[21U] =
  { 'g', 'r', 'u', '_',
        'g', 'e', 't', '_',
        'n', 'e', 'x', 't',
        '_', 'm', 'e', 's',
        's', 'a', 'g', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_gru_get_next_message ;
struct kernel_symbol const __ksymtab_gru_get_next_message = {(unsigned long )(& gru_get_next_message), (char const *)(& __kstrtab_gru_get_next_message)};
int gru_read_gpa(unsigned long *value , unsigned long gpa )
{
  void *cb ;
  void *dsr ;
  int ret ;
  int iaa ;
  int tmp ;
  int tmp___0 ;
  {
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.read_gpa);
    }
  } else {
  }
  {
  tmp = gru_get_cpu_resources(256, & cb, & dsr);
  }
  if (tmp != 0) {
    return (11);
  } else {
  }
  {
  iaa = (int )(gpa >> 62);
  tmp___0 = gru_get_tri(dsr);
  gru_vload_phys(cb, gpa, (unsigned int )tmp___0, iaa, 1UL);
  ret = gru_wait(cb);
  }
  if (ret == 0) {
    *value = *((unsigned long *)dsr);
  } else {
  }
  {
  gru_free_cpu_resources(cb, dsr);
  }
  return (ret);
}
}
static char const __kstrtab_gru_read_gpa[13U] =
  { 'g', 'r', 'u', '_',
        'r', 'e', 'a', 'd',
        '_', 'g', 'p', 'a',
        '\000'};
struct kernel_symbol const __ksymtab_gru_read_gpa ;
struct kernel_symbol const __ksymtab_gru_read_gpa = {(unsigned long )(& gru_read_gpa), (char const *)(& __kstrtab_gru_read_gpa)};
int gru_copy_gpa(unsigned long dest_gpa , unsigned long src_gpa , unsigned int bytes )
{
  void *cb ;
  void *dsr ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  {
  if ((gru_options & 2UL) != 0UL) {
    {
    atomic_long_inc(& gru_stats.copy_gpa);
    }
  } else {
  }
  {
  tmp = gru_get_cpu_resources(256, & cb, & dsr);
  }
  if (tmp != 0) {
    return (11);
  } else {
  }
  {
  tmp___0 = gru_get_tri(dsr);
  gru_bcopy(cb, src_gpa, dest_gpa, (unsigned int )tmp___0, 0U, (unsigned long )bytes,
            4U, 1UL);
  ret = gru_wait(cb);
  gru_free_cpu_resources(cb, dsr);
  }
  return (ret);
}
}
static char const __kstrtab_gru_copy_gpa[13U] =
  { 'g', 'r', 'u', '_',
        'c', 'o', 'p', 'y',
        '_', 'g', 'p', 'a',
        '\000'};
struct kernel_symbol const __ksymtab_gru_copy_gpa ;
struct kernel_symbol const __ksymtab_gru_copy_gpa = {(unsigned long )(& gru_copy_gpa), (char const *)(& __kstrtab_gru_copy_gpa)};
static int quicktest0(unsigned long arg )
{
  unsigned long word0 ;
  unsigned long word1 ;
  void *cb ;
  void *dsr ;
  unsigned long *p ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int tmp___2 ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___0 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  int tmp___3 ;
  unsigned long tmp___4 ;
  int pscr_ret_____1 ;
  void const *__vpp_verify___1 ;
  int pfo_ret_____7 ;
  int pfo_ret_____8 ;
  int pfo_ret_____9 ;
  int pfo_ret_____10 ;
  int tmp___5 ;
  int pscr_ret_____2 ;
  void const *__vpp_verify___2 ;
  int pfo_ret_____11 ;
  int pfo_ret_____12 ;
  int pfo_ret_____13 ;
  int pfo_ret_____14 ;
  {
  {
  ret = -5;
  tmp = gru_get_cpu_resources(64, & cb, & dsr);
  }
  if (tmp != 0) {
    return (11);
  } else {
  }
  {
  p = (unsigned long *)dsr;
  word0 = 1311768467139281697UL;
  word1 = 0UL;
  tmp___0 = gru_get_tri(dsr);
  tmp___1 = uv_gpa((void *)(& word0));
  gru_vload(cb, tmp___1, (unsigned int )tmp___0, 3, 1UL, 1UL, 1UL);
  tmp___2 = gru_wait(cb);
  }
  if (tmp___2 != 0) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34042;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34042;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34042;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34042;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34042:
    pscr_ret__ = pfo_ret__;
    goto ldv_34048;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34052;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34052;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34052;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34052;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34052:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34048;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34061;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34061;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34061;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34061;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34061:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34048;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34070;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34070;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34070;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34070;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34070:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34048;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34048;
    switch_break: ;
    }
    ldv_34048:
    {
    printk("\017GRU:%d quicktest0: CBR failure 1\n", pscr_ret__);
    }
    goto done;
  } else {
  }
  if (*p != 1311768467139281697UL) {
    __vpp_verify___0 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___4;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___5;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___6;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___7;
    } else {
    }
    goto switch_default___8;
    case_1___4: ;
    {
    if (4UL == 1UL) {
      goto case_1___5;
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
    case_1___5:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34084;
    case_2___4:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34084;
    case_4___4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34084;
    case_8___4:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34084;
    switch_default___4:
    {
    __bad_percpu_size();
    }
    switch_break___5: ;
    }
    ldv_34084:
    pscr_ret_____0 = pfo_ret_____3;
    goto ldv_34090;
    case_2___5: ;
    {
    if (4UL == 1UL) {
      goto case_1___6;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___6;
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
    case_1___6:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34094;
    case_2___6:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34094;
    case_4___5:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34094;
    case_8___5:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34094;
    switch_default___5:
    {
    __bad_percpu_size();
    }
    switch_break___6: ;
    }
    ldv_34094:
    pscr_ret_____0 = pfo_ret_____4;
    goto ldv_34090;
    case_4___6: ;
    {
    if (4UL == 1UL) {
      goto case_1___7;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___7;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___7;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___6;
    } else {
    }
    goto switch_default___6;
    case_1___7:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34103;
    case_2___7:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34103;
    case_4___7:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34103;
    case_8___6:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34103;
    switch_default___6:
    {
    __bad_percpu_size();
    }
    switch_break___7: ;
    }
    ldv_34103:
    pscr_ret_____0 = pfo_ret_____5;
    goto ldv_34090;
    case_8___7: ;
    {
    if (4UL == 1UL) {
      goto case_1___8;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___8;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___8;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___8;
    } else {
    }
    goto switch_default___7;
    case_1___8:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34112;
    case_2___8:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34112;
    case_4___8:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34112;
    case_8___8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34112;
    switch_default___7:
    {
    __bad_percpu_size();
    }
    switch_break___8: ;
    }
    ldv_34112:
    pscr_ret_____0 = pfo_ret_____6;
    goto ldv_34090;
    switch_default___8:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34090;
    switch_break___4: ;
    }
    ldv_34090:
    {
    printk("\017GRU:%d quicktest0 bad magic 0x%lx\n", pscr_ret_____0, *p);
    }
    goto done;
  } else {
  }
  {
  tmp___3 = gru_get_tri(dsr);
  tmp___4 = uv_gpa((void *)(& word1));
  gru_vstore(cb, tmp___4, (unsigned int )tmp___3, 3, 1UL, 1UL, 1UL);
  tmp___5 = gru_wait(cb);
  }
  if (tmp___5 != 0) {
    __vpp_verify___1 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___9;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___10;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___11;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___12;
    } else {
    }
    goto switch_default___13;
    case_1___9: ;
    {
    if (4UL == 1UL) {
      goto case_1___10;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___9;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___9;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___9;
    } else {
    }
    goto switch_default___9;
    case_1___10:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_34125;
    case_2___9:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_34125;
    case_4___9:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_34125;
    case_8___9:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____7): "m" (cpu_number));
    goto ldv_34125;
    switch_default___9:
    {
    __bad_percpu_size();
    }
    switch_break___10: ;
    }
    ldv_34125:
    pscr_ret_____1 = pfo_ret_____7;
    goto ldv_34131;
    case_2___10: ;
    {
    if (4UL == 1UL) {
      goto case_1___11;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___11;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___10;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___10;
    } else {
    }
    goto switch_default___10;
    case_1___11:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_34135;
    case_2___11:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_34135;
    case_4___10:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_34135;
    case_8___10:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____8): "m" (cpu_number));
    goto ldv_34135;
    switch_default___10:
    {
    __bad_percpu_size();
    }
    switch_break___11: ;
    }
    ldv_34135:
    pscr_ret_____1 = pfo_ret_____8;
    goto ldv_34131;
    case_4___11: ;
    {
    if (4UL == 1UL) {
      goto case_1___12;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___12;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___12;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___11;
    } else {
    }
    goto switch_default___11;
    case_1___12:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_34144;
    case_2___12:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_34144;
    case_4___12:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_34144;
    case_8___11:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____9): "m" (cpu_number));
    goto ldv_34144;
    switch_default___11:
    {
    __bad_percpu_size();
    }
    switch_break___12: ;
    }
    ldv_34144:
    pscr_ret_____1 = pfo_ret_____9;
    goto ldv_34131;
    case_8___12: ;
    {
    if (4UL == 1UL) {
      goto case_1___13;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___13;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___13;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___13;
    } else {
    }
    goto switch_default___12;
    case_1___13:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_34153;
    case_2___13:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_34153;
    case_4___13:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_34153;
    case_8___13:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____10): "m" (cpu_number));
    goto ldv_34153;
    switch_default___12:
    {
    __bad_percpu_size();
    }
    switch_break___13: ;
    }
    ldv_34153:
    pscr_ret_____1 = pfo_ret_____10;
    goto ldv_34131;
    switch_default___13:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34131;
    switch_break___9: ;
    }
    ldv_34131:
    {
    printk("\017GRU:%d quicktest0: CBR failure 2\n", pscr_ret_____1);
    }
    goto done;
  } else {
  }
  if (word0 != word1 || word1 != 1311768467139281697UL) {
    __vpp_verify___2 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___14;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___15;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___16;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___17;
    } else {
    }
    goto switch_default___18;
    case_1___14: ;
    {
    if (4UL == 1UL) {
      goto case_1___15;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___14;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___14;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___14;
    } else {
    }
    goto switch_default___14;
    case_1___15:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____11): "m" (cpu_number));
    goto ldv_34166;
    case_2___14:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____11): "m" (cpu_number));
    goto ldv_34166;
    case_4___14:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____11): "m" (cpu_number));
    goto ldv_34166;
    case_8___14:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____11): "m" (cpu_number));
    goto ldv_34166;
    switch_default___14:
    {
    __bad_percpu_size();
    }
    switch_break___15: ;
    }
    ldv_34166:
    pscr_ret_____2 = pfo_ret_____11;
    goto ldv_34172;
    case_2___15: ;
    {
    if (4UL == 1UL) {
      goto case_1___16;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___16;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___15;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___15;
    } else {
    }
    goto switch_default___15;
    case_1___16:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____12): "m" (cpu_number));
    goto ldv_34176;
    case_2___16:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____12): "m" (cpu_number));
    goto ldv_34176;
    case_4___15:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____12): "m" (cpu_number));
    goto ldv_34176;
    case_8___15:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____12): "m" (cpu_number));
    goto ldv_34176;
    switch_default___15:
    {
    __bad_percpu_size();
    }
    switch_break___16: ;
    }
    ldv_34176:
    pscr_ret_____2 = pfo_ret_____12;
    goto ldv_34172;
    case_4___16: ;
    {
    if (4UL == 1UL) {
      goto case_1___17;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___17;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___17;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___16;
    } else {
    }
    goto switch_default___16;
    case_1___17:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____13): "m" (cpu_number));
    goto ldv_34185;
    case_2___17:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____13): "m" (cpu_number));
    goto ldv_34185;
    case_4___17:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____13): "m" (cpu_number));
    goto ldv_34185;
    case_8___16:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____13): "m" (cpu_number));
    goto ldv_34185;
    switch_default___16:
    {
    __bad_percpu_size();
    }
    switch_break___17: ;
    }
    ldv_34185:
    pscr_ret_____2 = pfo_ret_____13;
    goto ldv_34172;
    case_8___17: ;
    {
    if (4UL == 1UL) {
      goto case_1___18;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___18;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___18;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___18;
    } else {
    }
    goto switch_default___17;
    case_1___18:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____14): "m" (cpu_number));
    goto ldv_34194;
    case_2___18:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____14): "m" (cpu_number));
    goto ldv_34194;
    case_4___18:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____14): "m" (cpu_number));
    goto ldv_34194;
    case_8___18:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____14): "m" (cpu_number));
    goto ldv_34194;
    switch_default___17:
    {
    __bad_percpu_size();
    }
    switch_break___18: ;
    }
    ldv_34194:
    pscr_ret_____2 = pfo_ret_____14;
    goto ldv_34172;
    switch_default___18:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34172;
    switch_break___14: ;
    }
    ldv_34172:
    {
    printk("\017GRU:%d quicktest0 err: found 0x%lx, expected 0x%lx\n", pscr_ret_____2,
           word1, 1311768467139281697UL);
    }
    goto done;
  } else {
  }
  ret = 0;
  done:
  {
  gru_free_cpu_resources(cb, dsr);
  }
  return (ret);
}
}
static int quicktest1(unsigned long arg )
{
  struct gru_message_queue_desc mqd ;
  void *p ;
  void *mq ;
  unsigned long *dw ;
  int i ;
  int ret ;
  char mes[64U] ;
  char *m ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  void *tmp ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___0 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  {
  {
  ret = -5;
  p = kmalloc(4096UL, 0U);
  }
  if ((unsigned long )p == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  {
  mq = (void *)(((unsigned long )p + 1023UL) & 0xfffffffffffffc00UL);
  memset((void *)(& mes), 238, 64UL);
  dw = (unsigned long *)mq;
  gru_create_message_queue(& mqd, mq, 512U, 0, 0, 0);
  i = 0;
  }
  goto ldv_34217;
  ldv_34216:
  mes[8] = (char )i;
  ldv_34213:
  {
  ret = gru_send_message_gpa(& mqd, (void *)(& mes), 64U);
  }
  if (ret == 1) {
    goto ldv_34213;
  } else {
  }
  if (ret != 0) {
    goto ldv_34215;
  } else {
  }
  i = i + 1;
  ldv_34217: ;
  if (i <= 5) {
    goto ldv_34216;
  } else {
  }
  ldv_34215: ;
  if (ret != 2 || i != 4) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34223;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34223;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34223;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34223;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34223:
    pscr_ret__ = pfo_ret__;
    goto ldv_34229;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34233;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34233;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34233;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34233;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34233:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34229;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34242;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34242;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34242;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34242;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34242:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34229;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34251;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34251;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34251;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34251;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34251:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34229;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34229;
    switch_break: ;
    }
    ldv_34229:
    {
    printk("\017GRU:%d quicktest1: unexpect status %d, i %d\n", pscr_ret__, ret, i);
    }
    goto done;
  } else {
  }
  i = 0;
  goto ldv_34262;
  ldv_34261:
  {
  tmp = gru_get_next_message(& mqd);
  m = (char *)tmp;
  }
  if ((unsigned long )m == (unsigned long )((char *)0) || (int )*(m + 8UL) != i) {
    goto ldv_34260;
  } else {
  }
  {
  gru_free_message(& mqd, (void *)m);
  i = i + 1;
  }
  ldv_34262: ;
  if (i <= 5) {
    goto ldv_34261;
  } else {
  }
  ldv_34260: ;
  if (i != 4) {
    __vpp_verify___0 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___4;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___5;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___6;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___7;
    } else {
    }
    goto switch_default___8;
    case_1___4: ;
    {
    if (4UL == 1UL) {
      goto case_1___5;
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
    case_1___5:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34268;
    case_2___4:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34268;
    case_4___4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34268;
    case_8___4:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34268;
    switch_default___4:
    {
    __bad_percpu_size();
    }
    switch_break___5: ;
    }
    ldv_34268:
    pscr_ret_____0 = pfo_ret_____3;
    goto ldv_34274;
    case_2___5: ;
    {
    if (4UL == 1UL) {
      goto case_1___6;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___6;
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
    case_1___6:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34278;
    case_2___6:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34278;
    case_4___5:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34278;
    case_8___5:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34278;
    switch_default___5:
    {
    __bad_percpu_size();
    }
    switch_break___6: ;
    }
    ldv_34278:
    pscr_ret_____0 = pfo_ret_____4;
    goto ldv_34274;
    case_4___6: ;
    {
    if (4UL == 1UL) {
      goto case_1___7;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___7;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___7;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___6;
    } else {
    }
    goto switch_default___6;
    case_1___7:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34287;
    case_2___7:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34287;
    case_4___7:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34287;
    case_8___6:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34287;
    switch_default___6:
    {
    __bad_percpu_size();
    }
    switch_break___7: ;
    }
    ldv_34287:
    pscr_ret_____0 = pfo_ret_____5;
    goto ldv_34274;
    case_8___7: ;
    {
    if (4UL == 1UL) {
      goto case_1___8;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___8;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___8;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___8;
    } else {
    }
    goto switch_default___7;
    case_1___8:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34296;
    case_2___8:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34296;
    case_4___8:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34296;
    case_8___8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34296;
    switch_default___7:
    {
    __bad_percpu_size();
    }
    switch_break___8: ;
    }
    ldv_34296:
    pscr_ret_____0 = pfo_ret_____6;
    goto ldv_34274;
    switch_default___8:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34274;
    switch_break___4: ;
    }
    ldv_34274:
    {
    printk("\017GRU:%d quicktest2: bad message, i %d, m %p, m8 %d\n", pscr_ret_____0,
           i, m, (unsigned long )m != (unsigned long )((char *)0) ? (int )*(m + 8UL) : -1);
    }
    goto done;
  } else {
  }
  ret = 0;
  done:
  {
  kfree((void const *)p);
  }
  return (ret);
}
}
static int quicktest2(unsigned long arg )
{
  struct completion cmp ;
  unsigned long han ;
  int blade_id ;
  int numcb ;
  int ret ;
  unsigned long *buf ;
  void *cb0 ;
  void *cb ;
  struct gru_control_block_status *gen ;
  int i ;
  int k ;
  int istatus ;
  int bytes ;
  void *tmp ;
  unsigned long tmp___0 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___0 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  long tmp___1 ;
  {
  {
  cmp.done = 0U;
  cmp.wait.lock.__annonCompField18.rlock.raw_lock.__annonCompField4.head_tail = 0U;
  cmp.wait.lock.__annonCompField18.rlock.magic = 3735899821U;
  cmp.wait.lock.__annonCompField18.rlock.owner_cpu = 4294967295U;
  cmp.wait.lock.__annonCompField18.rlock.owner = (void *)-1;
  cmp.wait.lock.__annonCompField18.rlock.dep_map.key = 0;
  cmp.wait.lock.__annonCompField18.rlock.dep_map.class_cache[0] = 0;
  cmp.wait.lock.__annonCompField18.rlock.dep_map.class_cache[1] = 0;
  cmp.wait.lock.__annonCompField18.rlock.dep_map.name = "(cmp).wait.lock";
  cmp.wait.lock.__annonCompField18.rlock.dep_map.cpu = 0;
  cmp.wait.lock.__annonCompField18.rlock.dep_map.ip = 0UL;
  cmp.wait.task_list.next = & cmp.wait.task_list;
  cmp.wait.task_list.prev = & cmp.wait.task_list;
  blade_id = 0;
  numcb = 4;
  ret = 0;
  bytes = numcb * 32;
  tmp = kmalloc((size_t )bytes, 208U);
  buf = (unsigned long *)tmp;
  }
  if ((unsigned long )buf == (unsigned long )((unsigned long *)0UL)) {
    return (-12);
  } else {
  }
  {
  ret = -16;
  han = gru_reserve_async_resources(blade_id, numcb, 0, & cmp);
  }
  if (han == 0UL) {
    goto done;
  } else {
  }
  {
  gru_lock_async_resource(han, & cb0, (void **)0);
  memset((void *)buf, 238, (size_t )bytes);
  i = 0;
  }
  goto ldv_34323;
  ldv_34322:
  {
  tmp___0 = uv_gpa((void *)buf + (unsigned long )(i * 4));
  gru_vset(cb0 + (unsigned long )(i * 256), tmp___0, 0UL, 3, 4UL, 1UL, 4UL);
  i = i + 1;
  }
  ldv_34323: ;
  if (i < numcb) {
    goto ldv_34322;
  } else {
  }
  ret = 0;
  k = numcb;
  ldv_34411:
  {
  gru_wait_async_cbr(han);
  i = 0;
  }
  goto ldv_34327;
  ldv_34326:
  {
  cb = cb0 + (unsigned long )(i * 256);
  istatus = gru_check_status(cb);
  }
  if ((unsigned int )istatus - 2U > 1U) {
    goto ldv_34325;
  } else {
  }
  i = i + 1;
  ldv_34327: ;
  if (i < numcb) {
    goto ldv_34326;
  } else {
  }
  ldv_34325: ;
  if (i == numcb) {
    goto ldv_34328;
  } else {
  }
  if (istatus != 0) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34334;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34334;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34334;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34334;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34334:
    pscr_ret__ = pfo_ret__;
    goto ldv_34340;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34344;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34344;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34344;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34344;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34344:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34340;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34353;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34353;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34353;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34353;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34353:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34340;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34362;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34362;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34362;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34362;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34362:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34340;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34340;
    switch_break: ;
    }
    ldv_34340:
    {
    printk("\017GRU:%d quicktest2: cb %d, exception\n", pscr_ret__, i);
    ret = -14;
    }
  } else
  if (((*(buf + (unsigned long )(i * 4)) != 0UL || *(buf + ((unsigned long )(i * 4) + 1UL)) != 0UL) || *(buf + ((unsigned long )(i * 4) + 2UL)) != 0UL) || *(buf + ((unsigned long )(i * 4) + 3UL)) != 0UL) {
    __vpp_verify___0 = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1___4;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___5;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___6;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___7;
    } else {
    }
    goto switch_default___8;
    case_1___4: ;
    {
    if (4UL == 1UL) {
      goto case_1___5;
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
    case_1___5:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34375;
    case_2___4:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34375;
    case_4___4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34375;
    case_8___4:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
    goto ldv_34375;
    switch_default___4:
    {
    __bad_percpu_size();
    }
    switch_break___5: ;
    }
    ldv_34375:
    pscr_ret_____0 = pfo_ret_____3;
    goto ldv_34381;
    case_2___5: ;
    {
    if (4UL == 1UL) {
      goto case_1___6;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___6;
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
    case_1___6:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34385;
    case_2___6:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34385;
    case_4___5:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34385;
    case_8___5:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
    goto ldv_34385;
    switch_default___5:
    {
    __bad_percpu_size();
    }
    switch_break___6: ;
    }
    ldv_34385:
    pscr_ret_____0 = pfo_ret_____4;
    goto ldv_34381;
    case_4___6: ;
    {
    if (4UL == 1UL) {
      goto case_1___7;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___7;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___7;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___6;
    } else {
    }
    goto switch_default___6;
    case_1___7:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34394;
    case_2___7:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34394;
    case_4___7:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34394;
    case_8___6:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
    goto ldv_34394;
    switch_default___6:
    {
    __bad_percpu_size();
    }
    switch_break___7: ;
    }
    ldv_34394:
    pscr_ret_____0 = pfo_ret_____5;
    goto ldv_34381;
    case_8___7: ;
    {
    if (4UL == 1UL) {
      goto case_1___8;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___8;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___8;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___8;
    } else {
    }
    goto switch_default___7;
    case_1___8:
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34403;
    case_2___8:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34403;
    case_4___8:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34403;
    case_8___8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
    goto ldv_34403;
    switch_default___7:
    {
    __bad_percpu_size();
    }
    switch_break___8: ;
    }
    ldv_34403:
    pscr_ret_____0 = pfo_ret_____6;
    goto ldv_34381;
    switch_default___8:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34381;
    switch_break___4: ;
    }
    ldv_34381:
    {
    printk("\017GRU:%d quicktest2:cb %d,  buf 0x%lx, 0x%lx, 0x%lx, 0x%lx\n", pscr_ret_____0,
           i, *(buf + (unsigned long )(i * 4)), *(buf + ((unsigned long )(i * 4) + 1UL)),
           *(buf + ((unsigned long )(i * 4) + 2UL)), *(buf + ((unsigned long )(i * 4) + 3UL)));
    ret = -5;
    }
  } else {
  }
  k = k - 1;
  gen = (struct gru_control_block_status *)cb;
  gen->istatus = 3U;
  ldv_34328: ;
  if (k != 0) {
    goto ldv_34411;
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(cmp.done != 0U, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grukservices.c"),
                         "i" (1098), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  gru_unlock_async_resource(han);
  gru_release_async_resources(han);
  }
  done:
  {
  kfree((void const *)buf);
  }
  return (ret);
}
}
static int quicktest3(unsigned long arg )
{
  char buf1[200U] ;
  char buf2[200U] ;
  int ret ;
  cycles_t tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int tmp___2 ;
  {
  {
  ret = 0;
  memset((void *)(& buf2), 0, 200UL);
  tmp = get_cycles();
  memset((void *)(& buf1), (int )tmp & 255, 200UL);
  tmp___0 = uv_gpa((void *)(& buf1));
  tmp___1 = uv_gpa((void *)(& buf2));
  gru_copy_gpa(tmp___1, tmp___0, 200U);
  tmp___2 = memcmp((void const *)(& buf1), (void const *)(& buf2), 200UL);
  }
  if (tmp___2 != 0) {
    __vpp_verify = (void const *)0;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_34424;
    case_2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34424;
    case_4:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34424;
    case_8:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_34424;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_34424:
    pscr_ret__ = pfo_ret__;
    goto ldv_34430;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34434;
    case_2___1:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34434;
    case_4___0:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34434;
    case_8___0:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_34434;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_34434:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_34430;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34443;
    case_2___2:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34443;
    case_4___2:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34443;
    case_8___1:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_34443;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_34443:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_34430;
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
    __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34452;
    case_2___3:
    __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34452;
    case_4___3:
    __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34452;
    case_8___3:
    __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_34452;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_34452:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_34430;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_34430;
    switch_break: ;
    }
    ldv_34430:
    {
    printk("\017GRU:%d quicktest3 error\n", pscr_ret__);
    ret = -5;
    }
  } else {
  }
  return (ret);
}
}
int gru_ktest(unsigned long arg )
{
  int ret ;
  {
  ret = -22;
  {
  if ((arg & 255UL) == 0UL) {
    goto case_0;
  } else {
  }
  if ((arg & 255UL) == 1UL) {
    goto case_1;
  } else {
  }
  if ((arg & 255UL) == 2UL) {
    goto case_2;
  } else {
  }
  if ((arg & 255UL) == 3UL) {
    goto case_3;
  } else {
  }
  if ((arg & 255UL) == 99UL) {
    goto case_99;
  } else {
  }
  goto switch_break;
  case_0:
  {
  ret = quicktest0(arg);
  }
  goto ldv_34465;
  case_1:
  {
  ret = quicktest1(arg);
  }
  goto ldv_34465;
  case_2:
  {
  ret = quicktest2(arg);
  }
  goto ldv_34465;
  case_3:
  {
  ret = quicktest3(arg);
  }
  goto ldv_34465;
  case_99:
  {
  ret = gru_free_kernel_contexts();
  }
  goto ldv_34465;
  switch_break: ;
  }
  ldv_34465: ;
  return (ret);
}
}
int gru_kservices_init(void)
{
  {
  return (0);
}
}
void gru_kservices_exit(void)
{
  int tmp ;
  {
  {
  tmp = gru_free_kernel_contexts();
  }
  if (tmp != 0) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/misc/sgi-gru/grukservices.c"),
                         "i" (1160), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return;
}
}
static void ldv_wait_for_completion_95(struct completion *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_sched_completion_wait_for_completion_bs_async_wq_of_gru_blade_state();
  wait_for_completion(ldv_func_arg1);
  }
  return;
}
}
__inline static void atomic64_add(long i , atomic64_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; addq %1,%0": "=m" (v->counter): "er" (i),
                       "m" (v->counter));
  return;
}
}
__inline static void atomic_long_add(long i , atomic_long_t *l )
{
  atomic64_t *v ;
  {
  {
  v = l;
  atomic64_add(i, v);
  }
  return;
}
}
extern unsigned int tsc_khz ;
void tfh_restart(struct gru_tlb_fault_handle *tfh ) ;
struct mcs_op_statistic mcs_op_statistics[8U] ;
static void update_mcs_stats(enum mcs_op op , unsigned long clks )
{
  unsigned long nsec ;
  {
  {
  nsec = (clks * 1000000UL) / (unsigned long )tsc_khz;
  atomic_long_inc(& mcs_op_statistics[(unsigned int )op].count);
  atomic_long_add((long )nsec, & mcs_op_statistics[(unsigned int )op].total);
  }
  if (mcs_op_statistics[(unsigned int )op].max < nsec) {
    mcs_op_statistics[(unsigned int )op].max = nsec;
  } else {
  }
  return;
}
}
static void start_instruction(void *h )
{
  unsigned long *w0 ;
  {
  {
  w0 = (unsigned long *)h;
  __asm__ volatile ("sfence": : : "memory");
  *w0 = *w0 | 131073UL;
  gru_flush_cache(h);
  }
  return;
}
}
static void report_instruction_timeout(void *h )
{
  unsigned long goff ;
  char *id ;
  {
  goff = (unsigned long )h & 134217727UL;
  id = (char *)"???";
  if (goff - 67239936UL <= 4095UL && (goff & 255UL) == 0UL) {
    id = (char *)"CCH";
  } else
  if (goff - 67141632UL <= 6143UL && (goff & 255UL) == 0UL) {
    id = (char *)"TGH";
  } else
  if (goff - 67207168UL <= 32767UL && (goff & 255UL) == 0UL) {
    id = (char *)"TFH";
  } else {
  }
  {
  panic("\tGRU %p (%s) is malfunctioning\n", h, id);
  }
  return;
}
}
static int wait_instruction_complete(void *h , enum mcs_op opc )
{
  int status ;
  unsigned long start_time ;
  cycles_t tmp ;
  cycles_t tmp___0 ;
  cycles_t tmp___1 ;
  cycles_t tmp___2 ;
  {
  {
  tmp = get_cycles();
  start_time = (unsigned long )tmp;
  }
  ldv_31116:
  {
  cpu_relax();
  status = (int )(*((unsigned long *)h) >> 16) & 3;
  }
  if (status != 2) {
    goto ldv_31115;
  } else {
  }
  {
  tmp___1 = get_cycles();
  }
  if ((unsigned long long )tsc_khz * 10000ULL < tmp___1 - (unsigned long long )start_time) {
    {
    report_instruction_timeout(h);
    tmp___0 = get_cycles();
    start_time = (unsigned long )tmp___0;
    }
  } else {
  }
  goto ldv_31116;
  ldv_31115: ;
  if ((gru_options & 2UL) != 0UL) {
    {
    tmp___2 = get_cycles();
    update_mcs_stats(opc, (unsigned long )(tmp___2 - (unsigned long long )start_time));
    }
  } else {
  }
  return (status);
}
}
int cch_allocate(struct gru_context_configuration_handle *cch )
{
  int ret ;
  {
  {
  cch->opc = 2U;
  start_instruction((void *)cch);
  ret = wait_instruction_complete((void *)cch, 0);
  sync_core();
  }
  return (ret);
}
}
int cch_start(struct gru_context_configuration_handle *cch )
{
  int tmp ;
  {
  {
  cch->opc = 1U;
  start_instruction((void *)cch);
  tmp = wait_instruction_complete((void *)cch, 1);
  }
  return (tmp);
}
}
int cch_interrupt(struct gru_context_configuration_handle *cch )
{
  int tmp ;
  {
  {
  cch->opc = 3U;
  start_instruction((void *)cch);
  tmp = wait_instruction_complete((void *)cch, 2);
  }
  return (tmp);
}
}
int cch_deallocate(struct gru_context_configuration_handle *cch )
{
  int ret ;
  {
  {
  cch->opc = 4U;
  start_instruction((void *)cch);
  ret = wait_instruction_complete((void *)cch, 4);
  sync_core();
  }
  return (ret);
}
}
int cch_interrupt_sync(struct gru_context_configuration_handle *cch )
{
  int tmp ;
  {
  {
  cch->opc = 5U;
  start_instruction((void *)cch);
  tmp = wait_instruction_complete((void *)cch, 3);
  }
  return (tmp);
}
}
int tgh_invalidate(struct gru_tlb_global_handle *tgh , unsigned long vaddr , unsigned long vaddrmask ,
                   int asid , int pagesize , int global , int n , unsigned short ctxbitmap )
{
  int tmp ;
  {
  {
  tgh->vaddr = vaddr;
  tgh->asid = (unsigned int )asid;
  tgh->pagesize = (unsigned char )pagesize;
  tgh->n = (unsigned short )n;
  tgh->global = (unsigned char )global;
  tgh->vaddrmask = vaddrmask;
  tgh->ctxbitmap = ctxbitmap;
  tgh->opc = 1U;
  start_instruction((void *)tgh);
  tmp = wait_instruction_complete((void *)tgh, 7);
  }
  return (tmp);
}
}
int tfh_write_only(struct gru_tlb_fault_handle *tfh , unsigned long paddr , int gaa ,
                   unsigned long vaddr , int asid , int dirty , int pagesize )
{
  int tmp ;
  {
  {
  tfh->fillasid = (unsigned int )asid;
  tfh->fillvaddr = vaddr;
  tfh->pfn = paddr >> 12;
  tfh->gaa = (unsigned char )gaa;
  tfh->dirty = (unsigned char )dirty;
  tfh->pagesize = (unsigned char )pagesize;
  tfh->opc = 2U;
  start_instruction((void *)tfh);
  tmp = wait_instruction_complete((void *)tfh, 5);
  }
  return (tmp);
}
}
void tfh_write_restart(struct gru_tlb_fault_handle *tfh , unsigned long paddr , int gaa ,
                       unsigned long vaddr , int asid , int dirty , int pagesize )
{
  {
  {
  tfh->fillasid = (unsigned int )asid;
  tfh->fillvaddr = vaddr;
  tfh->pfn = paddr >> 12;
  tfh->gaa = (unsigned char )gaa;
  tfh->dirty = (unsigned char )dirty;
  tfh->pagesize = (unsigned char )pagesize;
  tfh->opc = 3U;
  start_instruction((void *)tfh);
  }
  return;
}
}
void tfh_restart(struct gru_tlb_fault_handle *tfh )
{
  {
  {
  tfh->opc = 1U;
  start_instruction((void *)tfh);
  }
  return;
}
}
void tfh_user_polling_mode(struct gru_tlb_fault_handle *tfh )
{
  {
  {
  tfh->opc = 7U;
  start_instruction((void *)tfh);
  }
  return;
}
}
void tfh_exception(struct gru_tlb_fault_handle *tfh )
{
  {
  {
  tfh->opc = 4U;
  start_instruction((void *)tfh);
  }
  return;
}
}
static unsigned long ldv_find_next_bit_93(unsigned long const *addr , unsigned long size ,
                                          unsigned long offset ) ;
static unsigned long ldv_find_first_bit_92(unsigned long const *addr , unsigned long size ) ;
__inline static unsigned int __arch_hweight32(unsigned int w )
{
  unsigned int res ;
  {
  res = 0U;
  __asm__ ("661:\n\tcall __sw_hweight32\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word ( 4*32+23)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0xf3,0x40,0x0f,0xb8,0xc7\n6641:\n\t.popsection": "=a" (res): "D" (w));
  return (res);
}
}
__inline static int __trylock_handle(void *h )
{
  int tmp ;
  {
  {
  tmp = test_and_set_bit(1L, (unsigned long volatile *)h);
  }
  return (tmp == 0);
}
}
__inline static int trylock_cch_handle(struct gru_context_configuration_handle *cch )
{
  int tmp ;
  {
  {
  tmp = __trylock_handle((void *)cch);
  }
  return (tmp);
}
}
static int gru_user_copy_handle(void **dp , void *s )
{
  unsigned long tmp ;
  {
  {
  tmp = copy_to_user(*dp, (void const *)s, 64UL);
  }
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  *dp = *dp + 64UL;
  return (0);
}
}
static int gru_dump_context_data(void *grubase , struct gru_context_configuration_handle *cch ,
                                 void *ubuf , int ctxnum , int dsrcnt , int flush_cbrs )
{
  void *cb ;
  void *cbe ;
  void *tfh ;
  void *gseg ;
  int i ;
  int scr ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned long tmp___3 ;
  {
  {
  gseg = grubase + (unsigned long )(ctxnum * 4194304);
  cb = gseg;
  cbe = grubase + 67174400UL;
  tfh = grubase + 67207168UL;
  tmp = ldv_find_first_bit_92((unsigned long const *)(& cch->cbr_allocation_map),
                              64UL);
  scr = (int )tmp;
  }
  goto ldv_32593;
  ldv_32592:
  i = scr * 2;
  goto ldv_32590;
  ldv_32589: ;
  if (flush_cbrs != 0) {
    {
    gru_flush_cache(cb);
    }
  } else {
  }
  {
  tmp___0 = gru_user_copy_handle(& ubuf, cb);
  }
  if (tmp___0 != 0) {
    goto fail;
  } else {
  }
  {
  tmp___1 = gru_user_copy_handle(& ubuf, tfh + (unsigned long )(i * 256));
  }
  if (tmp___1 != 0) {
    goto fail;
  } else {
  }
  {
  tmp___2 = gru_user_copy_handle(& ubuf, cbe + (unsigned long )(i * 256));
  }
  if (tmp___2 != 0) {
    goto fail;
  } else {
  }
  cb = cb + 256UL;
  i = i + 1;
  ldv_32590: ;
  if (i < (scr + 1) * 2) {
    goto ldv_32589;
  } else {
  }
  {
  tmp___3 = ldv_find_next_bit_93((unsigned long const *)(& cch->cbr_allocation_map),
                                 64UL, (unsigned long )(scr + 1));
  scr = (int )tmp___3;
  }
  ldv_32593: ;
  if (scr <= 63) {
    goto ldv_32592;
  } else {
  }
  if (dsrcnt != 0) {
    {
    memcpy(ubuf, (void const *)gseg + 131072U, (size_t )(dsrcnt * 256));
    }
  } else {
  }
  return (0);
  fail: ;
  return (-14);
}
}
static int gru_dump_tfm(struct gru_state *gru , void *ubuf , void *ubufend )
{
  struct gru_tlb_fault_map *tfm ;
  int i ;
  int ret ;
  int bytes ;
  int tmp ;
  {
  bytes = 1024;
  if ((long )bytes > (long )ubufend - (long )ubuf) {
    ret = -27;
  } else {
  }
  i = 0;
  goto ldv_32606;
  ldv_32605:
  {
  tfm = get_tfm(gru->gs_gru_base_vaddr, i);
  tmp = gru_user_copy_handle(& ubuf, (void *)tfm);
  }
  if (tmp != 0) {
    goto fail;
  } else {
  }
  i = i + 1;
  ldv_32606: ;
  if (i <= 15) {
    goto ldv_32605;
  } else {
  }
  return (1024);
  fail: ;
  return (-14);
}
}
static int gru_dump_tgh(struct gru_state *gru , void *ubuf , void *ubufend )
{
  struct gru_tlb_global_handle *tgh ;
  int i ;
  int ret ;
  int bytes ;
  int tmp ;
  {
  bytes = 1536;
  if ((long )bytes > (long )ubufend - (long )ubuf) {
    ret = -27;
  } else {
  }
  i = 0;
  goto ldv_32619;
  ldv_32618:
  {
  tgh = get_tgh(gru->gs_gru_base_vaddr, i);
  tmp = gru_user_copy_handle(& ubuf, (void *)tgh);
  }
  if (tmp != 0) {
    goto fail;
  } else {
  }
  i = i + 1;
  ldv_32619: ;
  if (i <= 23) {
    goto ldv_32618;
  } else {
  }
  return (1536);
  fail: ;
  return (-14);
}
}
static int gru_dump_context(struct gru_state *gru , int ctxnum , void *ubuf , void *ubufend ,
                            char data_opt , char lock_cch , char flush_cbrs )
{
  struct gru_dump_context_header hdr ;
  struct gru_dump_context_header *uhdr ;
  struct gru_context_configuration_handle *cch ;
  struct gru_context_configuration_handle *ubufcch ;
  struct gru_thread_state *gts ;
  int try ;
  int cch_locked ;
  int cbrcnt ;
  int dsrcnt ;
  int bytes ;
  int ret ;
  void *grubase ;
  int tmp ;
  unsigned long tmp___0 ;
  unsigned int tmp___1 ;
  unsigned long tmp___2 ;
  {
  {
  uhdr = (struct gru_dump_context_header *)ubuf;
  cbrcnt = 0;
  dsrcnt = 0;
  bytes = 0;
  ret = 0;
  memset((void *)(& hdr), 0, 32UL);
  grubase = gru->gs_gru_base_vaddr;
  cch = get_cch(grubase, ctxnum);
  try = 0;
  }
  goto ldv_32644;
  ldv_32643:
  {
  cch_locked = trylock_cch_handle(cch);
  }
  if (cch_locked != 0) {
    goto ldv_32642;
  } else {
  }
  {
  msleep(1U);
  try = try + 1;
  }
  ldv_32644: ;
  if (try <= 9) {
    goto ldv_32643;
  } else {
  }
  ldv_32642:
  {
  ubuf = ubuf + 32UL;
  ubufcch = (struct gru_context_configuration_handle *)ubuf;
  tmp = gru_user_copy_handle(& ubuf, (void *)cch);
  }
  if (tmp != 0) {
    if (cch_locked != 0) {
      {
      unlock_cch_handle(cch);
      }
    } else {
    }
    return (-14);
  } else {
  }
  if (cch_locked != 0) {
    ubufcch->delresp = 0U;
  } else {
  }
  bytes = 96;
  if (cch_locked != 0 || (int )((signed char )lock_cch) == 0) {
    gts = gru->gs_gts[ctxnum];
    if ((unsigned long )gts != (unsigned long )((struct gru_thread_state *)0) && (unsigned long )gts->ts_vma != (unsigned long )((struct vm_area_struct *)0)) {
      hdr.pid = gts->ts_tgid_owner;
      hdr.vaddr = (gts->ts_vma)->vm_start;
    } else {
    }
    if ((unsigned int )*((unsigned char *)cch + 2UL) != 0U) {
      {
      tmp___0 = __arch_hweight64((__u64 )cch->cbr_allocation_map);
      cbrcnt = (int )((unsigned int )tmp___0 * 2U);
      }
      if ((int )((signed char )data_opt) != 0) {
        {
        tmp___1 = __arch_hweight32(cch->dsr_allocation_map);
        dsrcnt = (int )(tmp___1 * 16U);
        }
      } else {
        dsrcnt = 0;
      }
    } else {
    }
    bytes = bytes + (cbrcnt * 3 + dsrcnt) * 64;
    if ((long )bytes > (long )ubufend - (long )ubuf) {
      ret = -27;
    } else {
      {
      ret = gru_dump_context_data(grubase, cch, ubuf, ctxnum, dsrcnt, (int )flush_cbrs);
      }
    }
  } else {
  }
  if (cch_locked != 0) {
    {
    unlock_cch_handle(cch);
    }
  } else {
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  hdr.magic = 880061292U;
  hdr.gid = (unsigned int )gru->gs_gid;
  hdr.ctxnum = (unsigned char )ctxnum;
  hdr.cbrcnt = (unsigned char )cbrcnt;
  hdr.dsrcnt = (unsigned char )dsrcnt;
  hdr.cch_locked = cch_locked;
  tmp___2 = copy_to_user((void *)uhdr, (void const *)(& hdr), 32UL);
  }
  if (tmp___2 != 0UL) {
    return (-14);
  } else {
  }
  return (bytes);
}
}
int gru_dump_chiplet_request(unsigned long arg )
{
  struct gru_state *gru ;
  struct gru_dump_chiplet_state_req req ;
  void *ubuf ;
  void *ubufend ;
  int ctxnum ;
  int ret ;
  int cnt ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  {
  cnt = 0;
  tmp = copy_from_user((void *)(& req), (void const *)arg, 56UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if (req.gid >= gru_max_gids) {
    return (-22);
  } else {
  }
  {
  gru = (unsigned long )gru_base[req.gid / 2U] != (unsigned long )((struct gru_blade_state *)0) ? (struct gru_state *)(& (gru_base[req.gid / 2U])->bs_grus) + ((unsigned long )req.gid & 1UL) : (struct gru_state *)0;
  ubuf = req.buf;
  ubufend = req.buf + req.buflen;
  ret = gru_dump_tfm(gru, ubuf, ubufend);
  }
  if (ret < 0) {
    goto fail;
  } else {
  }
  {
  ubuf = ubuf + (unsigned long )ret;
  ret = gru_dump_tgh(gru, ubuf, ubufend);
  }
  if (ret < 0) {
    goto fail;
  } else {
  }
  ubuf = ubuf + (unsigned long )ret;
  ctxnum = 0;
  goto ldv_32657;
  ldv_32656: ;
  if (req.ctxnum == ctxnum || req.ctxnum < 0) {
    {
    ret = gru_dump_context(gru, ctxnum, ubuf, ubufend, (int )req.data_opt, (int )req.lock_cch,
                           (int )req.flush_cbrs);
    }
    if (ret < 0) {
      goto fail;
    } else {
    }
    ubuf = ubuf + (unsigned long )ret;
    cnt = cnt + 1;
  } else {
  }
  ctxnum = ctxnum + 1;
  ldv_32657: ;
  if (ctxnum <= 15) {
    goto ldv_32656;
  } else {
  }
  {
  tmp___0 = copy_to_user((void *)arg, (void const *)(& req), 56UL);
  }
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  return (cnt);
  fail: ;
  return (ret);
}
}
static unsigned long ldv_find_first_bit_92(unsigned long const *addr , unsigned long size )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_first_bit(size);
  }
  return (tmp);
}
}
static unsigned long ldv_find_next_bit_93(unsigned long const *addr , unsigned long size ,
                                          unsigned long offset )
{
  unsigned long tmp ;
  {
  {
  tmp = ldv_linux_lib_find_bit_find_next_bit(size, offset);
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
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ts_ctxlock_of_gru_thread_state ;
void ldv_linux_kernel_locking_mutex_mutex_lock_ts_ctxlock_of_gru_thread_state(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ts_ctxlock_of_gru_thread_state);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ts_ctxlock_of_gru_thread_state = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_ts_ctxlock_of_gru_thread_state(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ts_ctxlock_of_gru_thread_state);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ts_ctxlock_of_gru_thread_state = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_ts_ctxlock_of_gru_thread_state(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ts_ctxlock_of_gru_thread_state) {
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
int ldv_linux_kernel_locking_mutex_mutex_trylock_ts_ctxlock_of_gru_thread_state(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ts_ctxlock_of_gru_thread_state);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_ts_ctxlock_of_gru_thread_state(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ts_ctxlock_of_gru_thread_state = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_ts_ctxlock_of_gru_thread_state(atomic_t *cnt ,
                                                                                            struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_ts_ctxlock_of_gru_thread_state(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_ts_ctxlock_of_gru_thread_state(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ts_ctxlock_of_gru_thread_state);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ts_ctxlock_of_gru_thread_state = 0;
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
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ts_ctxlock_of_gru_thread_state = 0;
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
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ts_ctxlock_of_gru_thread_state);
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
static int ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_bs_lock_of_gru_blade_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 1);
  ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_bs_lock_of_gru_blade_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 2);
  ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_bs_lock_of_gru_blade_state(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_bs_lock_of_gru_blade_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_bs_lock_of_gru_blade_state(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_bs_lock_of_gru_blade_state(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_bs_lock_of_gru_blade_state();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_bs_lock_of_gru_blade_state(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_bs_lock_of_gru_blade_state(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_gs_asid_lock_of_gru_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 1);
  ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_gs_asid_lock_of_gru_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 2);
  ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_gs_asid_lock_of_gru_state(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_gs_asid_lock_of_gru_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_gs_asid_lock_of_gru_state(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_gs_asid_lock_of_gru_state(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_gs_asid_lock_of_gru_state();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_gs_asid_lock_of_gru_state(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_gs_asid_lock_of_gru_state(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_gs_lock_of_gru_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 1);
  ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_gs_lock_of_gru_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 2);
  ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_gs_lock_of_gru_state(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_gs_lock_of_gru_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_gs_lock_of_gru_state(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_gs_lock_of_gru_state(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_gs_lock_of_gru_state();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_gs_lock_of_gru_state(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_gs_lock_of_gru_state(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_ms_asid_lock_of_gru_mm_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_ms_asid_lock_of_gru_mm_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_ms_asid_lock_of_gru_mm_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_ms_asid_lock_of_gru_mm_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_ms_asid_lock_of_gru_mm_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_ms_asid_lock_of_gru_mm_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_ms_asid_lock_of_gru_mm_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_ms_asid_lock_of_gru_mm_struct(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_ms_asid_lock_of_gru_mm_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_vd_lock_of_gru_vma_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 1);
  ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_vd_lock_of_gru_vma_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 2);
  ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_vd_lock_of_gru_vma_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_vd_lock_of_gru_vma_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_vd_lock_of_gru_vma_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_vd_lock_of_gru_vma_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_vd_lock_of_gru_vma_data();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_vd_lock_of_gru_vma_data(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_vd_lock_of_gru_vma_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data = 2;
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
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 1);
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
  if (ldv_linux_kernel_locking_spinlock_spin_bs_lock_of_gru_blade_state == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_gs_asid_lock_of_gru_state == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_gs_lock_of_gru_state == 2) {
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
  if (ldv_linux_kernel_locking_spinlock_spin_ms_asid_lock_of_gru_mm_struct == 2) {
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
  if (ldv_linux_kernel_locking_spinlock_spin_vd_lock_of_gru_vma_data == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_assert_linux_kernel_sched_completion__double_init(int expr ) ;
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr ) ;
static int ldv_linux_kernel_sched_completion_completion_bs_async_wq_of_gru_blade_state = 0;
void ldv_linux_kernel_sched_completion_init_completion_bs_async_wq_of_gru_blade_state(void)
{
  {
  ldv_linux_kernel_sched_completion_completion_bs_async_wq_of_gru_blade_state = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro_bs_async_wq_of_gru_blade_state(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion_bs_async_wq_of_gru_blade_state != 0);
  ldv_linux_kernel_sched_completion_completion_bs_async_wq_of_gru_blade_state = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion_bs_async_wq_of_gru_blade_state(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion_bs_async_wq_of_gru_blade_state != 0);
  ldv_linux_kernel_sched_completion_completion_bs_async_wq_of_gru_blade_state = 2;
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
struct page *__alloc_pages_nodemask(gfp_t arg0, unsigned int arg1, struct zonelist *arg2, nodemask_t *arg3) {
  return ldv_malloc(sizeof(struct page));
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
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
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __mmu_notifier_register(struct mmu_notifier *arg0, struct mm_struct *arg1) {
  return __VERIFIER_nondet_int();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
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
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void down_read(struct rw_semaphore *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int down_read_trylock(struct rw_semaphore *arg0) {
  return __VERIFIER_nondet_int();
}
void down_write(struct rw_semaphore *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int down_write_trylock(struct rw_semaphore *arg0) {
  return __VERIFIER_nondet_int();
}
void downgrade_write(struct rw_semaphore *arg0) {
  return;
}
struct vm_area_struct *find_vma(struct mm_struct *arg0, unsigned long arg1) {
  return ldv_malloc(sizeof(struct vm_area_struct));
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
long __VERIFIER_nondet_long(void);
long int get_user_pages(struct task_struct *arg0, struct mm_struct *arg1, unsigned long arg2, unsigned long arg3, int arg4, int arg5, struct page **arg6, struct vm_area_struct **arg7) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int is_uv_system() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kstrtoul_from_user(const char *arg0, size_t arg1, unsigned int arg2, unsigned long *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv___mmu_notifier_register(int arg0, struct mmu_notifier *arg1, struct mm_struct *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_mmu_notifier_unregister(void *arg0, struct mmu_notifier *arg1, struct mm_struct *arg2) {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int misc_deregister(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int misc_register(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
void mmu_notifier_unregister(struct mmu_notifier *arg0, struct mm_struct *arg1) {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t noop_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
void panic(const char *arg0, ...) {
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
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return ldv_malloc(0UL);
}
struct proc_dir_entry *proc_mkdir(const char *arg0, struct proc_dir_entry *arg1) {
  return ldv_malloc(0UL);
}
void proc_remove(struct proc_dir_entry *arg0) {
  return;
}
void put_page(struct page *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int rcu_read_lock_held() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int remap_pfn_range(struct vm_area_struct *arg0, unsigned long arg1, unsigned long arg2, unsigned long arg3, pgprot_t arg4) {
  return __VERIFIER_nondet_int();
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
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
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_open(struct file *arg0, const struct seq_operations *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_release(struct inode *arg0, struct file *arg1) {
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
void up_read(struct rw_semaphore *arg0) {
  return;
}
void up_write(struct rw_semaphore *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int uv_setup_irq(char *arg0, int arg1, int arg2, unsigned long arg3, int arg4) {
  return __VERIFIER_nondet_int();
}
void uv_teardown_irq(unsigned int arg0) {
  return;
}
void wait_for_completion(struct completion *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int zap_vma_ptes(struct vm_area_struct *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
