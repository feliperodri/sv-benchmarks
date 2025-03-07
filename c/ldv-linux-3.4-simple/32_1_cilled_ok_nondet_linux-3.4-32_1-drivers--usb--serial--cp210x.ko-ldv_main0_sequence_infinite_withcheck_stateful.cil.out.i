extern void __VERIFIER_error() __attribute__ ((__noreturn__));
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
typedef __u16 __le16;
typedef __u32 __le32;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct __anonstruct_atomic64_t_8 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_8 atomic64_t;
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
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head *head ) ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct completion;
struct completion;
struct pt_regs;
struct pt_regs;
struct pid;
struct pid;
struct timespec;
struct timespec;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct task_struct;
struct mm_struct;
struct mm_struct;
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
struct __anonstruct____missing_field_name_15 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_16 {
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
union __anonunion____missing_field_name_14 {
   struct __anonstruct____missing_field_name_15 __annonCompField5 ;
   struct __anonstruct____missing_field_name_16 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_14 __annonCompField7 ;
} __attribute__((__packed__)) ;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_20 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_20 pgd_t;
typedef struct page *pgtable_t;
struct file;
struct file;
struct seq_file;
struct seq_file;
struct page;
struct thread_struct;
struct thread_struct;
struct mm_struct;
struct desc_struct;
struct task_struct;
struct cpumask;
struct cpumask;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
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
union __anonunion____missing_field_name_24 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_24 __annonCompField8 ;
};
struct task_struct;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct pt_regs;
struct cpumask {
   unsigned long bits[((4096UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct static_key;
struct pt_regs;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_31 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_32 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_30 {
   struct __anonstruct____missing_field_name_31 __annonCompField12 ;
   struct __anonstruct____missing_field_name_32 __annonCompField13 ;
};
union __anonunion____missing_field_name_33 {
   u32 padding1[12] ;
   u32 sw_reserved[12] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_30 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32] ;
   u32 xmm_space[64] ;
   u32 padding[12] ;
   union __anonunion____missing_field_name_33 __annonCompField15 ;
} __attribute__((__aligned__(16))) ;
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20] ;
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
   u32 ymmh_space[64] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2] ;
   u64 reserved2[5] ;
} __attribute__((__packed__)) ;
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
} __attribute__((__packed__, __aligned__(64))) ;
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
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_36 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_36 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_38 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_37 {
   s64 lock ;
   struct __anonstruct____missing_field_name_38 __annonCompField18 ;
};
typedef union __anonunion_arch_rwlock_t_37 arch_rwlock_t;
struct task_struct;
struct lock_class_key {
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct raw_spinlock raw_spinlock_t;
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_40 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct __anonstruct_rwlock_t_40 rwlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct task_struct;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_nodemask_t_42 {
   unsigned long bits[(((unsigned long )(1 << 10) + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct __anonstruct_nodemask_t_42 nodemask_t;
struct page;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct page;
struct device;
struct device;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
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
   char start_comm[16] ;
};
struct hrtimer;
struct hrtimer;
enum hrtimer_restart;
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
};
struct device;
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device *dev ) ;
   void (*complete)(struct device *dev ) ;
   int (*suspend)(struct device *dev ) ;
   int (*resume)(struct device *dev ) ;
   int (*freeze)(struct device *dev ) ;
   int (*thaw)(struct device *dev ) ;
   int (*poweroff)(struct device *dev ) ;
   int (*restore)(struct device *dev ) ;
   int (*suspend_late)(struct device *dev ) ;
   int (*resume_early)(struct device *dev ) ;
   int (*freeze_late)(struct device *dev ) ;
   int (*thaw_early)(struct device *dev ) ;
   int (*poweroff_late)(struct device *dev ) ;
   int (*restore_early)(struct device *dev ) ;
   int (*suspend_noirq)(struct device *dev ) ;
   int (*resume_noirq)(struct device *dev ) ;
   int (*freeze_noirq)(struct device *dev ) ;
   int (*thaw_noirq)(struct device *dev ) ;
   int (*poweroff_noirq)(struct device *dev ) ;
   int (*restore_noirq)(struct device *dev ) ;
   int (*runtime_suspend)(struct device *dev ) ;
   int (*runtime_resume)(struct device *dev ) ;
   int (*runtime_idle)(struct device *dev ) ;
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
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos_request;
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
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
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_mm_context_t_112 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_112 mm_context_t;
struct vm_area_struct;
struct vm_area_struct;
struct page;
struct vm_area_struct;
struct sock;
struct sock;
struct kobject;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock *sk ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct kobject;
struct module;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   umode_t mode ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct file;
struct vm_area_struct;
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
struct sysfs_dirent;
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
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject *kobj ) ;
   void const *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset *kset , struct kobject *kobj ) ;
   char const *(* const name)(struct kset *kset , struct kobject *kobj ) ;
   int (* const uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct sock;
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int objsize ;
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
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct page;
struct block_device;
struct block_device;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct nameidata;
struct path;
struct path;
struct vfsmount;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_139 {
   struct list_head d_child ;
   struct rcu_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_139 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
} __attribute__((__aligned__((1) << (6) ))) ;
struct dentry;
struct vfsmount;
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   uid_t uid ;
   gid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct prio_tree_node;
struct raw_prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
};
struct prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
   unsigned long start ;
   unsigned long last ;
};
struct prio_tree_root {
   struct prio_tree_node *prio_tree_node ;
   unsigned short index_bits ;
   unsigned short raw ;
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
   struct hlist_head tasks[3] ;
   struct rcu_head rcu ;
   struct upid numbers[1] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct pid_namespace;
struct task_struct;
struct kernel_cap_struct {
   __u32 cap[2] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct dentry;
struct user_namespace;
struct user_namespace;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3] ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control *sc ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct export_operations;
struct export_operations;
struct iovec;
struct iovec;
struct nameidata;
struct kiocb;
struct kiocb;
struct kobject;
struct pipe_inode_info;
struct pipe_inode_info;
struct poll_table_struct;
struct poll_table_struct;
struct kstatfs;
struct kstatfs;
struct vm_area_struct;
struct vfsmount;
struct cred;
struct cred;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   uid_t ia_uid ;
   gid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
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
   char d_padding4[8] ;
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
struct dquot;
struct dquot;
typedef __kernel_uid32_t qid_t;
typedef long long qsize_t;
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
struct super_block;
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   unsigned int dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   short dq_type ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block *sb , int type ) ;
   int (*read_file_info)(struct super_block *sb , int type ) ;
   int (*write_file_info)(struct super_block *sb , int type ) ;
   int (*free_file_info)(struct super_block *sb , int type ) ;
   int (*read_dqblk)(struct dquot *dquot ) ;
   int (*commit_dqblk)(struct dquot *dquot ) ;
   int (*release_dqblk)(struct dquot *dquot ) ;
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
struct path;
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
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
   struct inode *files[2] ;
   struct mem_dqinfo info[2] ;
   struct quota_format_ops const *ops[2] ;
};
struct page;
struct address_space;
struct address_space;
struct writeback_control;
struct writeback_control;
union __anonunion_arg_147 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_146 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_147 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_146 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page *page , struct writeback_control *wbc ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page *page ) ;
   int (*readpages)(struct file *filp , struct address_space *mapping , struct list_head *pages ,
                    unsigned int nr_pages ) ;
   int (*write_begin)(struct file * , struct address_space *mapping , loff_t pos ,
                      unsigned int len , unsigned int flags , struct page **pagep ,
                      void **fsdata ) ;
   int (*write_end)(struct file * , struct address_space *mapping , loff_t pos , unsigned int len ,
                    unsigned int copied , struct page *page , void *fsdata ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const *iov , loff_t offset ,
                        unsigned long nr_segs ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
};
struct backing_dev_info;
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct request_queue;
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
struct posix_acl;
struct inode_operations;
union __anonunion____missing_field_name_148 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_149 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_150 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   uid_t i_uid ;
   gid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_148 __annonCompField30 ;
   dev_t i_rdev ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   blkcnt_t i_blocks ;
   loff_t i_size ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_149 __annonCompField31 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_150 __annonCompField32 ;
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
   uid_t uid ;
   uid_t euid ;
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
union __anonunion_f_u_151 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_151 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
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
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_release_private)(struct file_lock * ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_153 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_152 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_153 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
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
   union __anonunion_fl_u_152 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct rcu_head fa_rcu ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_dirt ;
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
   struct mutex s_lock ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock __attribute__((__aligned__((1) << (6) ))) ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32] ;
   u8 s_uuid[16] ;
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
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
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
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t id ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int datasync ) ;
   int (*aio_fsync)(struct kiocb * , int datasync ) ;
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
   long (*fallocate)(struct file *file , int mode , loff_t offset , loff_t len ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   void (*truncate)(struct inode * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount *mnt , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 start , u64 len ) ;
} __attribute__((__aligned__((1) << (6) ))) ;
struct seq_file;
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block *sb ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int flags ) ;
   int (*write_inode)(struct inode * , struct writeback_control *wbc ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block *sb , int wait ) ;
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
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
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
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5] ;
   __u16 x_sflag ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct file_operations;
struct inode;
struct module;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_struct;
struct tty_struct;
struct tty_driver;
struct tty_driver;
struct serial_icounter_struct;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver *driver , struct inode *inode ,
                                int idx ) ;
   int (*install)(struct tty_driver *driver , struct tty_struct *tty ) ;
   void (*remove)(struct tty_driver *driver , struct tty_struct *tty ) ;
   int (*open)(struct tty_struct *tty , struct file *filp ) ;
   void (*close)(struct tty_struct *tty , struct file *filp ) ;
   void (*shutdown)(struct tty_struct *tty ) ;
   void (*cleanup)(struct tty_struct *tty ) ;
   int (*write)(struct tty_struct *tty , unsigned char const *buf , int count ) ;
   int (*put_char)(struct tty_struct *tty , unsigned char ch ) ;
   void (*flush_chars)(struct tty_struct *tty ) ;
   int (*write_room)(struct tty_struct *tty ) ;
   int (*chars_in_buffer)(struct tty_struct *tty ) ;
   int (*ioctl)(struct tty_struct *tty , unsigned int cmd , unsigned long arg ) ;
   long (*compat_ioctl)(struct tty_struct *tty , unsigned int cmd , unsigned long arg ) ;
   void (*set_termios)(struct tty_struct *tty , struct ktermios *old ) ;
   void (*throttle)(struct tty_struct *tty ) ;
   void (*unthrottle)(struct tty_struct *tty ) ;
   void (*stop)(struct tty_struct *tty ) ;
   void (*start)(struct tty_struct *tty ) ;
   void (*hangup)(struct tty_struct *tty ) ;
   int (*break_ctl)(struct tty_struct *tty , int state ) ;
   void (*flush_buffer)(struct tty_struct *tty ) ;
   void (*set_ldisc)(struct tty_struct *tty ) ;
   void (*wait_until_sent)(struct tty_struct *tty , int timeout ) ;
   void (*send_xchar)(struct tty_struct *tty , char ch ) ;
   int (*tiocmget)(struct tty_struct *tty ) ;
   int (*tiocmset)(struct tty_struct *tty , unsigned int set , unsigned int clear ) ;
   int (*resize)(struct tty_struct *tty , struct winsize *ws ) ;
   int (*set_termiox)(struct tty_struct *tty , struct termiox *tnew ) ;
   int (*get_icount)(struct tty_struct *tty , struct serial_icounter_struct *icount ) ;
   int (*poll_init)(struct tty_driver *driver , int line , char *options ) ;
   int (*poll_get_char)(struct tty_driver *driver , int line ) ;
   void (*poll_put_char)(struct tty_driver *driver , int line , char ch ) ;
   struct file_operations const *proc_fops ;
};
struct proc_dir_entry;
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev cdev ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   int flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct klist_node;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device;
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct module;
struct class;
struct class;
struct subsys_private;
struct subsys_private;
struct bus_type;
struct bus_type;
struct device_node;
struct device_node;
struct iommu_ops;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type *bus , char *buf ) ;
   ssize_t (*store)(struct bus_type *bus , char const *buf , size_t count ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device *dev , struct device_driver *drv ) ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct of_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver *driver , char *buf ) ;
   ssize_t (*store)(struct device_driver *driver , char const *buf , size_t count ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*class_release)(struct class *class ) ;
   void (*dev_release)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class *class , struct class_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct class *class , struct class_attribute *attr , char const *buf ,
                    size_t count ) ;
   void const *(*namespace)(struct class *class , struct class_attribute const *attr ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*release)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device *dev , struct device_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct device *dev , struct device_attribute *attr , char const *buf ,
                    size_t count ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
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
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device *dev ) ;
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
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned int active : 1 ;
};
struct pps_event_time {
   struct timespec ts_real ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct *tty ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct *tty ) ;
   ssize_t (*read)(struct tty_struct *tty , struct file *file , unsigned char *buf ,
                   size_t nr ) ;
   ssize_t (*write)(struct tty_struct *tty , struct file *file , unsigned char const *buf ,
                    size_t nr ) ;
   int (*ioctl)(struct tty_struct *tty , struct file *file , unsigned int cmd , unsigned long arg ) ;
   long (*compat_ioctl)(struct tty_struct *tty , struct file *file , unsigned int cmd ,
                        unsigned long arg ) ;
   void (*set_termios)(struct tty_struct *tty , struct ktermios *old ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct *tty ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const *cp , char *fp ,
                       int count ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int , struct pps_event_time * ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   atomic_t users ;
};
struct tty_buffer {
   struct tty_buffer *next ;
   char *char_buf_ptr ;
   unsigned char *flag_buf_ptr ;
   int used ;
   int size ;
   int commit ;
   int read ;
   unsigned long data[0] ;
};
struct tty_bufhead {
   struct work_struct work ;
   spinlock_t lock ;
   struct tty_buffer *head ;
   struct tty_buffer *tail ;
   struct tty_buffer *free ;
   int memory_used ;
};
struct device;
struct signal_struct;
struct signal_struct;
struct tty_port;
struct tty_port;
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port *port ) ;
   void (*dtr_rts)(struct tty_port *port , int raise ) ;
   void (*shutdown)(struct tty_port *port ) ;
   void (*drop)(struct tty_port *port ) ;
   int (*activate)(struct tty_port *port , struct tty_struct *tty ) ;
   void (*destruct)(struct tty_port *port ) ;
};
struct tty_port {
   struct tty_struct *tty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_operations;
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct mutex ldisc_mutex ;
   struct tty_ldisc *ldisc ;
   struct mutex termios_mutex ;
   spinlock_t ctrl_lock ;
   struct ktermios *termios ;
   struct ktermios *termios_locked ;
   struct termiox *termiox ;
   char name[64] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char hw_stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned char packet : 1 ;
   unsigned char low_latency : 1 ;
   unsigned char warned : 1 ;
   unsigned char ctrl_status ;
   unsigned int receive_room ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   struct tty_bufhead buf ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   unsigned int column ;
   unsigned char lnext : 1 ;
   unsigned char erasing : 1 ;
   unsigned char raw : 1 ;
   unsigned char real_raw : 1 ;
   unsigned char icanon : 1 ;
   unsigned char closing : 1 ;
   unsigned char echo_overrun : 1 ;
   unsigned short minimum_to_wake ;
   unsigned long overrun_time ;
   int num_overrun ;
   unsigned long process_char_map[256UL / (8UL * sizeof(unsigned long ))] ;
   char *read_buf ;
   int read_head ;
   int read_tail ;
   int read_cnt ;
   unsigned long read_flags[4096UL / (8UL * sizeof(unsigned long ))] ;
   unsigned char *echo_buf ;
   unsigned int echo_pos ;
   unsigned int echo_cnt ;
   int canon_data ;
   unsigned long canon_head ;
   unsigned int canon_column ;
   struct mutex atomic_read_lock ;
   struct mutex atomic_write_lock ;
   struct mutex output_lock ;
   struct mutex echo_lock ;
   unsigned char *write_buf ;
   int write_cnt ;
   spinlock_t read_lock ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
struct completion;
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
struct nsproxy;
struct cred;
struct file;
struct task_struct;
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
struct file;
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const *val , struct kernel_param const *kp ) ;
   int (*get)(char *buffer , struct kernel_param const *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_216 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_216 __annonCompField35 ;
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
struct module;
struct module;
struct static_key {
   atomic_t enabled ;
};
struct module;
struct tracepoint;
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
struct module;
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t count ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
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
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t *ctors ;
   unsigned int num_ctors ;
};
typedef unsigned long kernel_ulong_t;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   kernel_ulong_t driver_info ;
};
struct of_device_id {
   char name[32] ;
   char type[32] ;
   char compatible[128] ;
   void *data ;
};
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
} __attribute__((__packed__)) ;
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
} __attribute__((__packed__)) ;
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
} __attribute__((__packed__)) ;
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
} __attribute__((__packed__)) ;
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
} __attribute__((__packed__)) ;
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
} __attribute__((__packed__)) ;
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
} __attribute__((__packed__)) ;
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
} __attribute__((__packed__)) ;
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
} __attribute__((__packed__)) ;
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16] ;
} __attribute__((__packed__)) ;
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct seq_file;
struct module;
struct proc_dir_entry;
struct module;
struct proc_dir_entry;
struct pt_regs;
struct task_struct;
struct mm_struct;
struct pt_regs;
struct task_struct;
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
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
   char start_comm[16] ;
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
   unsigned long active_bases ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3] ;
};
struct device;
struct seq_file;
struct address_space;
union __anonunion____missing_field_name_228 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct____missing_field_name_232 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_231 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_232 __annonCompField37 ;
};
struct __anonstruct____missing_field_name_230 {
   union __anonunion____missing_field_name_231 __annonCompField38 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_229 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_230 __annonCompField39 ;
};
struct __anonstruct____missing_field_name_227 {
   union __anonunion____missing_field_name_228 __annonCompField36 ;
   union __anonunion____missing_field_name_229 __annonCompField40 ;
};
struct __anonstruct____missing_field_name_234 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_233 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_234 __annonCompField42 ;
};
union __anonunion____missing_field_name_235 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct____missing_field_name_227 __annonCompField41 ;
   union __anonunion____missing_field_name_233 __annonCompField43 ;
   union __anonunion____missing_field_name_235 __annonCompField44 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct __anonstruct_vm_set_237 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_236 {
   struct __anonstruct_vm_set_237 vm_set ;
   struct raw_prio_tree_node prio_tree_node ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   struct mm_struct *vm_mm ;
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct rb_node vm_rb ;
   union __anonunion_shared_236 shared ;
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
struct mm_rss_stat {
   atomic_long_t count[3] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file *filp , unsigned long addr , unsigned long len ,
                                      unsigned long pgoff , unsigned long flags ) ;
   void (*unmap_area)(struct mm_struct *mm , unsigned long addr ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
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
   unsigned long reserved_vm ;
   unsigned long def_flags ;
   unsigned long nr_ptes ;
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
   unsigned long saved_auxv[44] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned int faultstamp ;
   unsigned int token_priority ;
   unsigned int last_interval ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   unsigned long num_exe_file_vmas ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
};
typedef unsigned long cputime_t;
struct task_struct;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct siginfo;
struct __anonstruct_sigset_t_239 {
   unsigned long sig[1] ;
};
typedef struct __anonstruct_sigset_t_239 sigset_t;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_241 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_242 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[sizeof(__kernel_uid32_t ) - sizeof(int )] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_243 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_244 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_245 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_246 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_240 {
   int _pad[(128UL - 4UL * sizeof(int )) / sizeof(int )] ;
   struct __anonstruct__kill_241 _kill ;
   struct __anonstruct__timer_242 _timer ;
   struct __anonstruct__rt_243 _rt ;
   struct __anonstruct__sigchld_244 _sigchld ;
   struct __anonstruct__sigfault_245 _sigfault ;
   struct __anonstruct__sigpoll_246 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_240 _sifields ;
};
typedef struct siginfo siginfo_t;
struct siginfo;
struct task_struct;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct timespec;
struct pt_regs;
struct __anonstruct_seccomp_t_249 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_249 seccomp_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct task_struct;
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct task_struct;
struct latency_record {
   unsigned long backtrace[12] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct key;
struct seq_file;
struct user_struct;
struct signal_struct;
struct cred;
struct key_type;
struct key_type;
struct keyring_list;
struct keyring_list;
struct key_user;
union __anonunion____missing_field_name_250 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_251 {
   struct list_head link ;
   unsigned long x[2] ;
   void *p[2] ;
   int reject_error ;
};
union __anonunion_payload_252 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   struct rb_node serial_node ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_250 __annonCompField45 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_251 type_data ;
   union __anonunion_payload_252 payload ;
};
struct audit_context;
struct audit_context;
struct user_struct;
struct cred;
struct inode;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   gid_t small_block[32] ;
   gid_t *blocks[0] ;
};
struct thread_group_cred {
   atomic_t usage ;
   pid_t tgid ;
   spinlock_t lock ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct rcu_head rcu ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   uid_t uid ;
   gid_t gid ;
   uid_t suid ;
   gid_t sgid ;
   uid_t euid ;
   gid_t egid ;
   uid_t fsuid ;
   gid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct rcu_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct futex_pi_state;
struct robust_list_head;
struct robust_list_head;
struct bio_list;
struct bio_list;
struct fs_struct;
struct fs_struct;
struct perf_event_context;
struct perf_event_context;
struct blk_plug;
struct blk_plug;
struct seq_file;
struct cfs_rq;
struct cfs_rq;
struct task_struct;
struct nsproxy;
struct user_namespace;
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kioctx;
struct kioctx;
union __anonunion_ki_obj_254 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_254 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct rcu_head rcu_head ;
};
struct mm_struct;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64] ;
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
struct autogroup;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
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
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3] ;
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
   cputime_t prev_utime ;
   cputime_t prev_stime ;
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
   struct rlimit rlim[16] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   int oom_adj ;
   int oom_score_adj ;
   int oom_score_adj_min ;
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
   uid_t uid ;
   struct user_namespace *user_ns ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
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
struct io_context;
struct io_context;
struct audit_context;
struct mempolicy;
struct pipe_inode_info;
struct rq;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq *rq , struct task_struct *p , int flags ) ;
   void (*dequeue_task)(struct rq *rq , struct task_struct *p , int flags ) ;
   void (*yield_task)(struct rq *rq ) ;
   bool (*yield_to_task)(struct rq *rq , struct task_struct *p , bool preempt ) ;
   void (*check_preempt_curr)(struct rq *rq , struct task_struct *p , int flags ) ;
   struct task_struct *(*pick_next_task)(struct rq *rq ) ;
   void (*put_prev_task)(struct rq *rq , struct task_struct *p ) ;
   int (*select_task_rq)(struct task_struct *p , int sd_flag , int flags ) ;
   void (*pre_schedule)(struct rq *this_rq , struct task_struct *task ) ;
   void (*post_schedule)(struct rq *this_rq ) ;
   void (*task_waking)(struct task_struct *task ) ;
   void (*task_woken)(struct rq *this_rq , struct task_struct *task ) ;
   void (*set_cpus_allowed)(struct task_struct *p , struct cpumask const *newmask ) ;
   void (*rq_online)(struct rq *rq ) ;
   void (*rq_offline)(struct rq *rq ) ;
   void (*set_curr_task)(struct rq *rq ) ;
   void (*task_tick)(struct rq *rq , struct task_struct *p , int queued ) ;
   void (*task_fork)(struct task_struct *p ) ;
   void (*switched_from)(struct rq *this_rq , struct task_struct *task ) ;
   void (*switched_to)(struct rq *this_rq , struct task_struct *task ) ;
   void (*prio_changed)(struct rq *this_rq , struct task_struct *task , int oldprio ) ;
   unsigned int (*get_rr_interval)(struct rq *rq , struct task_struct *task ) ;
   void (*task_move_group)(struct task_struct *p , int on_rq ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
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
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   int nr_cpus_allowed ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct css_set;
struct compat_robust_list_head;
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int did_exec : 1 ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   unsigned int irq_thread : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   struct cred *replacement_session_keyring ;
   char comm[16] ;
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
   int (*notifier)(void *priv ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct audit_context *audit_context ;
   uid_t loginuid ;
   unsigned int sessionid ;
   seccomp_t seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct plist_head pi_waiters ;
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
   struct perf_event_context *perf_event_ctxp[2] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   struct list_head *scm_work_list ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   atomic_t ptrace_bp_refcnt ;
};
struct pid_namespace;
struct usb_device;
struct usb_device;
struct usb_driver;
struct usb_driver;
struct wusb_dev;
struct wusb_dev;
struct ep_device;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
   unsigned char *extra ;
   int extralen ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned int sysfs_files_created : 1 ;
   unsigned int ep_devs_created : 1 ;
   unsigned int unregistering : 1 ;
   unsigned int needs_remote_wakeup : 1 ;
   unsigned int needs_altsetting0 : 1 ;
   unsigned int needs_binding : 1 ;
   unsigned int reset_running : 1 ;
   unsigned int resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16] ;
   struct usb_interface *interface[32] ;
   struct usb_interface_cache *intf_cache[32] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[128UL / (8UL * sizeof(unsigned long ))] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned int is_b_host : 1 ;
   unsigned int b_hnp_enable : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   struct dentry *usbfs_dentry ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb_device {
   int devnum ;
   char devpath[16] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16] ;
   struct usb_host_endpoint *ep_out[16] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned int can_submit : 1 ;
   unsigned int persist_enabled : 1 ;
   unsigned int have_langid : 1 ;
   unsigned int authorized : 1 ;
   unsigned int authenticated : 1 ;
   unsigned int wusb : 1 ;
   unsigned int lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   struct device *usb_classdev ;
   struct dentry *usbfs_dentry ;
   int maxchild ;
   struct usb_device **children ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned int do_remote_wakeup : 1 ;
   unsigned int reset_resume : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface *intf , struct usb_device_id const *id ) ;
   void (*disconnect)(struct usb_interface *intf ) ;
   int (*unlocked_ioctl)(struct usb_interface *intf , unsigned int code , void *buf ) ;
   int (*suspend)(struct usb_interface *intf , pm_message_t message ) ;
   int (*resume)(struct usb_interface *intf ) ;
   int (*reset_resume)(struct usb_interface *intf ) ;
   int (*pre_reset)(struct usb_interface *intf ) ;
   int (*post_reset)(struct usb_interface *intf ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned int no_dynamic_id : 1 ;
   unsigned int supports_autosuspend : 1 ;
   unsigned int soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   unsigned int poisoned : 1 ;
};
struct scatterlist;
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0] ;
};
struct scatterlist;
struct task_struct;
struct task_struct;
struct mempolicy;
struct anon_vma;
struct file_ra_state;
struct user_struct;
struct writeback_control;
struct mm_struct;
struct vm_area_struct;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct *area ) ;
   void (*close)(struct vm_area_struct *area ) ;
   int (*fault)(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
   int (*page_mkwrite)(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
   int (*access)(struct vm_area_struct *vma , unsigned long addr , void *buf , int len ,
                 int write ) ;
   int (*set_policy)(struct vm_area_struct *vma , struct mempolicy *new ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct *vma , unsigned long addr ) ;
   int (*migrate)(struct vm_area_struct *vma , nodemask_t const *from , nodemask_t const *to ,
                  unsigned long flags ) ;
};
struct inode;
struct page;
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct __kfifo {
   unsigned int in ;
   unsigned int out ;
   unsigned int mask ;
   unsigned int esize ;
   void *data ;
};
union __anonunion____missing_field_name_256 {
   struct __kfifo kfifo ;
   unsigned char *type ;
   char (*rectype)[0] ;
   void *ptr ;
   void const *ptr_const ;
};
struct kfifo {
   union __anonunion____missing_field_name_256 __annonCompField47 ;
   unsigned char buf[0] ;
};
struct usb_serial;
struct usb_serial_port {
   struct usb_serial *serial ;
   struct tty_port port ;
   spinlock_t lock ;
   unsigned char number ;
   unsigned char *interrupt_in_buffer ;
   struct urb *interrupt_in_urb ;
   __u8 interrupt_in_endpointAddress ;
   unsigned char *interrupt_out_buffer ;
   int interrupt_out_size ;
   struct urb *interrupt_out_urb ;
   __u8 interrupt_out_endpointAddress ;
   unsigned char *bulk_in_buffer ;
   int bulk_in_size ;
   struct urb *read_urb ;
   __u8 bulk_in_endpointAddress ;
   unsigned char *bulk_in_buffers[2] ;
   struct urb *read_urbs[2] ;
   unsigned long read_urbs_free ;
   unsigned char *bulk_out_buffer ;
   int bulk_out_size ;
   struct urb *write_urb ;
   struct kfifo write_fifo ;
   unsigned char *bulk_out_buffers[2] ;
   struct urb *write_urbs[2] ;
   unsigned long write_urbs_free ;
   __u8 bulk_out_endpointAddress ;
   int tx_bytes ;
   unsigned long flags ;
   wait_queue_head_t write_wait ;
   struct work_struct work ;
   char throttled ;
   char throttle_req ;
   unsigned long sysrq ;
   struct device dev ;
};
struct usb_serial_driver;
struct usb_serial {
   struct usb_device *dev ;
   struct usb_serial_driver *type ;
   struct usb_interface *interface ;
   unsigned char disconnected : 1 ;
   unsigned char suspending : 1 ;
   unsigned char attached : 1 ;
   unsigned char minor ;
   unsigned char num_ports ;
   unsigned char num_port_pointers ;
   char num_interrupt_in ;
   char num_interrupt_out ;
   char num_bulk_in ;
   char num_bulk_out ;
   struct usb_serial_port *port[8] ;
   struct kref kref ;
   struct mutex disc_mutex ;
   void *private ;
};
struct usb_serial_driver {
   char const *description ;
   struct usb_device_id const *id_table ;
   char num_ports ;
   struct list_head driver_list ;
   struct device_driver driver ;
   struct usb_driver *usb_driver ;
   struct usb_dynids dynids ;
   size_t bulk_in_size ;
   size_t bulk_out_size ;
   int (*probe)(struct usb_serial *serial , struct usb_device_id const *id ) ;
   int (*attach)(struct usb_serial *serial ) ;
   int (*calc_num_ports)(struct usb_serial *serial ) ;
   void (*disconnect)(struct usb_serial *serial ) ;
   void (*release)(struct usb_serial *serial ) ;
   int (*port_probe)(struct usb_serial_port *port ) ;
   int (*port_remove)(struct usb_serial_port *port ) ;
   int (*suspend)(struct usb_serial *serial , pm_message_t message ) ;
   int (*resume)(struct usb_serial *serial ) ;
   int (*open)(struct tty_struct *tty , struct usb_serial_port *port ) ;
   void (*close)(struct usb_serial_port *port ) ;
   int (*write)(struct tty_struct *tty , struct usb_serial_port *port , unsigned char const *buf ,
                int count ) ;
   int (*write_room)(struct tty_struct *tty ) ;
   int (*ioctl)(struct tty_struct *tty , unsigned int cmd , unsigned long arg ) ;
   void (*set_termios)(struct tty_struct *tty , struct usb_serial_port *port , struct ktermios *old ) ;
   void (*break_ctl)(struct tty_struct *tty , int break_state ) ;
   int (*chars_in_buffer)(struct tty_struct *tty ) ;
   void (*throttle)(struct tty_struct *tty ) ;
   void (*unthrottle)(struct tty_struct *tty ) ;
   int (*tiocmget)(struct tty_struct *tty ) ;
   int (*tiocmset)(struct tty_struct *tty , unsigned int set , unsigned int clear ) ;
   int (*get_icount)(struct tty_struct *tty , struct serial_icounter_struct *icount ) ;
   void (*dtr_rts)(struct usb_serial_port *port , int on ) ;
   int (*carrier_raised)(struct usb_serial_port *port ) ;
   void (*init_termios)(struct tty_struct *tty ) ;
   void (*read_int_callback)(struct urb *urb ) ;
   void (*write_int_callback)(struct urb *urb ) ;
   void (*read_bulk_callback)(struct urb *urb ) ;
   void (*write_bulk_callback)(struct urb *urb ) ;
   void (*process_read_urb)(struct urb *urb ) ;
   int (*prepare_write_buffer)(struct usb_serial_port *port , void *dest , size_t size ) ;
};
struct cp210x_port_private {
   __u8 bInterfaceNumber ;
};
long ldv__builtin_expect(long val , long res ) ;
extern int ( printk)(char const *fmt , ...) ;
extern void *memset(void *s , int c , size_t n ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags )
{ void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{ void *tmp ;
  unsigned long __cil_tmp5 ;
  size_t __cil_tmp6 ;
  {
  if (size != 0UL) {
    {
    __cil_tmp5 = 0xffffffffffffffffUL / size;
    if (n > __cil_tmp5) {
      return ((void *)0);
    } else {
    }
    }
  } else {
  }
  {
  __cil_tmp6 = n * size;
  tmp = __kmalloc(__cil_tmp6, flags);
  }
  return (tmp);
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) __attribute__((__no_instrument_function__)) ;
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{ void *tmp ;
  unsigned int __cil_tmp5 ;
  {
  {
  __cil_tmp5 = flags | 32768U;
  tmp = kmalloc_array(n, size, __cil_tmp5);
  }
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) __attribute__((__no_instrument_function__)) ;
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  unsigned int __cil_tmp4 ;
  {
  {
  __cil_tmp4 = flags | 32768U;
  tmp = kmalloc(size, __cil_tmp4);
  }
  return (tmp);
}
}
extern struct module __this_module ;
extern void *dev_get_drvdata(struct device const *dev ) ;
extern int dev_set_drvdata(struct device *dev , void *data ) ;
extern int ( dev_err)(struct device const *dev , char const *fmt
                                              , ...) ;
extern int ( dev_warn)(struct device const *dev , char const *fmt
                                               , ...) ;
extern void tty_encode_baud_rate(struct tty_struct *tty , speed_t ibaud , speed_t obaud ) ;
extern struct kernel_param_ops param_ops_bool ;
int init_module(void) ;
void cleanup_module(void) ;
extern int usb_reset_device(struct usb_device *dev ) ;
extern int usb_control_msg(struct usb_device *dev , unsigned int pipe , __u8 request ,
                           __u8 requesttype , __u16 value , __u16 index , void *data ,
                           __u16 size , int timeout ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{ unsigned int __cil_tmp3 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  {
  {
  __cil_tmp3 = endpoint << 15;
  __cil_tmp4 = *((int *)dev);
  __cil_tmp5 = __cil_tmp4 << 8;
  __cil_tmp6 = (unsigned int )__cil_tmp5;
  return (__cil_tmp6 | __cil_tmp3);
  }
}
}
__inline static void *usb_get_serial_port_data(struct usb_serial_port *port ) __attribute__((__no_instrument_function__)) ;
__inline static void *usb_get_serial_port_data(struct usb_serial_port *port )
{ void *tmp___7 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  struct device const *__cil_tmp6 ;
  {
  {
  __cil_tmp3 = (unsigned long )port;
  __cil_tmp4 = __cil_tmp3 + 712;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  __cil_tmp6 = (struct device const *)__cil_tmp5;
  tmp___7 = dev_get_drvdata(__cil_tmp6);
  }
  return (tmp___7);
}
}
__inline static void usb_set_serial_port_data(struct usb_serial_port *port , void *data ) __attribute__((__no_instrument_function__)) ;
__inline static void usb_set_serial_port_data(struct usb_serial_port *port , void *data )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )port;
  __cil_tmp4 = __cil_tmp3 + 712;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  dev_set_drvdata(__cil_tmp5, data);
  }
  return;
}
}
extern int usb_serial_register_drivers(struct usb_driver *udriver , struct usb_serial_driver * const *serial_drivers ) ;
extern void usb_serial_deregister_drivers(struct usb_driver *udriver , struct usb_serial_driver * const *serial_drivers ) ;
extern int usb_serial_probe(struct usb_interface *iface , struct usb_device_id const *id ) ;
extern void usb_serial_disconnect(struct usb_interface *iface ) ;
extern int usb_serial_generic_open(struct tty_struct *tty , struct usb_serial_port *port ) ;
extern void usb_serial_generic_close(struct usb_serial_port *port ) ;
static int cp210x_open(struct tty_struct *tty , struct usb_serial_port *port ) ;
static void cp210x_close(struct usb_serial_port *port ) ;
static void cp210x_get_termios(struct tty_struct *tty , struct usb_serial_port *port ) ;
static void cp210x_get_termios_port(struct usb_serial_port *port , unsigned int *cflagp ,
                                    unsigned int *baudp ) ;
static void cp210x_change_speed(struct tty_struct *tty , struct usb_serial_port *port ,
                                struct ktermios *old_termios ) ;
static void cp210x_set_termios(struct tty_struct *tty , struct usb_serial_port *port ,
                               struct ktermios *old_termios ) ;
static int cp210x_tiocmget(struct tty_struct *tty ) ;
static int cp210x_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear ) ;
static int cp210x_tiocmset_port(struct usb_serial_port *port , unsigned int set ,
                                unsigned int clear ) ;
static void cp210x_break_ctl(struct tty_struct *tty , int break_state ) ;
static int cp210x_startup(struct usb_serial *serial ) ;
static void cp210x_release(struct usb_serial *serial ) ;
static void cp210x_dtr_rts(struct usb_serial_port *p , int on ) ;
static bool debug ;
static struct usb_device_id const id_table[92] =
  { {(__u16 )3, (__u16 )1115, (__u16 )83, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {(__u16 )3, (__u16 )1137, (__u16 )1642, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )1161, (__u16 )57344, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )1161, (__u16 )57347, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )1861, (__u16 )4096, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )2278, (__u16 )21761, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )2301, (__u16 )10, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {(__u16 )3, (__u16 )3053, (__u16 )4352, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )3053, (__u16 )4353, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4047, (__u16 )4099, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4047, (__u16 )4100, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4047, (__u16 )4102, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4262, (__u16 )43558, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4267, (__u16 )4293, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4277, (__u16 )44144, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )3985, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )4353, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )5633, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )32778, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )32827, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )32836, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )32846, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )32851, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )32852, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )32870, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )32879, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )32890, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )32970, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )32989, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33014, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33045, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33085, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33087, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33098, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33099, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33110, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33118, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33163, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33183, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33190, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33193, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33196, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33197, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33224, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33250, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33255, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33256, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33266, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33304, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33323, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33387, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33427, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33529, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33601, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33666, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33704, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33752, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33809, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33816, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33902, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )33911, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )34282, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )34283, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )34404, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )34405, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )60000, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )60001, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )60016, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )60032, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )60017, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )61441, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )61442, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )61443, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4292, (__u16 )61444, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4293, (__u16 )60001, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )4302, (__u16 )60010, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )5037, (__u16 )39321, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )5461, (__u16 )4, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {(__u16 )3, (__u16 )5738, (__u16 )771, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )5846, (__u16 )1, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {(__u16 )3, (__u16 )5852, (__u16 )16, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {(__u16 )3, (__u16 )5852, (__u16 )17, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {(__u16 )3, (__u16 )5852, (__u16 )18, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {(__u16 )3, (__u16 )5852, (__u16 )21, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {(__u16 )3, (__u16 )6056, (__u16 )1, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {(__u16 )3, (__u16 )6056, (__u16 )5, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {(__u16 )3, (__u16 )6132, (__u16 )43690, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )6211, (__u16 )512, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )6383, (__u16 )57359, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )7139, (__u16 )1958, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )12693, (__u16 )61840, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )16700, (__u16 )38144, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL}};
extern struct usb_device_id const __mod_usb_device_table __attribute__((__unused__,
__alias__("id_table"))) ;
static struct usb_driver cp210x_driver =
     {"cp210x", & usb_serial_probe, & usb_serial_disconnect, (int (*)(struct usb_interface *intf ,
                                                                    unsigned int code ,
                                                                    void *buf ))0,
    (int (*)(struct usb_interface *intf , pm_message_t message ))0, (int (*)(struct usb_interface *intf ))0,
    (int (*)(struct usb_interface *intf ))0, (int (*)(struct usb_interface *intf ))0,
    (int (*)(struct usb_interface *intf ))0, id_table, {{{{{{0U}}, 0U, 0U, (void *)0}}},
                                                        {(struct list_head *)0, (struct list_head *)0}},
    {{(char const *)0, (struct bus_type *)0, (struct module *)0, (char const *)0,
      (_Bool)0, (struct of_device_id const *)0, (int (*)(struct device *dev ))0,
      (int (*)(struct device *dev ))0, (void (*)(struct device *dev ))0, (int (*)(struct device *dev ,
                                                                                  pm_message_t state ))0,
      (int (*)(struct device *dev ))0, (struct attribute_group const **)0, (struct dev_pm_ops const *)0,
      (struct driver_private *)0}, 0}, 0U, 0U, 0U};
static struct usb_serial_driver cp210x_device =
     {(char const *)0, id_table, (char)1, {(struct list_head *)0, (struct list_head *)0},
    {"cp210x", (struct bus_type *)0, & __this_module, (char const *)0, (_Bool)0,
     (struct of_device_id const *)0, (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0,
     (void (*)(struct device *dev ))0, (int (*)(struct device *dev , pm_message_t state ))0,
     (int (*)(struct device *dev ))0, (struct attribute_group const **)0, (struct dev_pm_ops const *)0,
     (struct driver_private *)0}, (struct usb_driver *)0, {{{{{{0U}}, 0U, 0U, (void *)0}}},
                                                           {(struct list_head *)0,
                                                            (struct list_head *)0}},
    (size_t )256, (size_t )256, (int (*)(struct usb_serial *serial , struct usb_device_id const *id ))0,
    & cp210x_startup, (int (*)(struct usb_serial *serial ))0, (void (*)(struct usb_serial *serial ))0,
    & cp210x_release, (int (*)(struct usb_serial_port *port ))0, (int (*)(struct usb_serial_port *port ))0,
    (int (*)(struct usb_serial *serial , pm_message_t message ))0, (int (*)(struct usb_serial *serial ))0,
    & cp210x_open, & cp210x_close, (int (*)(struct tty_struct *tty , struct usb_serial_port *port ,
                                            unsigned char const *buf , int count ))0,
    (int (*)(struct tty_struct *tty ))0, (int (*)(struct tty_struct *tty , unsigned int cmd ,
                                                  unsigned long arg ))0, & cp210x_set_termios,
    & cp210x_break_ctl, (int (*)(struct tty_struct *tty ))0, (void (*)(struct tty_struct *tty ))0,
    (void (*)(struct tty_struct *tty ))0, & cp210x_tiocmget, & cp210x_tiocmset, (int (*)(struct tty_struct *tty ,
                                                                                         struct serial_icounter_struct *icount ))0,
    & cp210x_dtr_rts, (int (*)(struct usb_serial_port *port ))0, (void (*)(struct tty_struct *tty ))0,
    (void (*)(struct urb *urb ))0, (void (*)(struct urb *urb ))0, (void (*)(struct urb *urb ))0,
    (void (*)(struct urb *urb ))0, (void (*)(struct urb *urb ))0, (int (*)(struct usb_serial_port *port ,
                                                                           void *dest ,
                                                                           size_t size ))0};
static struct usb_serial_driver * const serial_drivers[2] = { (struct usb_serial_driver * const )(& cp210x_device), (struct usb_serial_driver * const )((void *)0)};
static int cp210x_get_config(struct usb_serial_port *port , u8 request , unsigned int *data ,
                             int size )
{ struct usb_serial *serial ;
  struct cp210x_port_private *port_priv ;
  void *tmp___7 ;
  __le32 *buf ;
  int result ;
  int i ;
  int length ;
  void *tmp___8 ;
  unsigned int tmp___9 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  size_t __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct device *__cil_tmp20 ;
  struct device const *__cil_tmp21 ;
  struct usb_device *__cil_tmp22 ;
  struct usb_device *__cil_tmp23 ;
  int __cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  unsigned int __cil_tmp27 ;
  __u8 __cil_tmp28 ;
  __u16 __cil_tmp29 ;
  __u8 __cil_tmp30 ;
  __u16 __cil_tmp31 ;
  void *__cil_tmp32 ;
  __u16 __cil_tmp33 ;
  unsigned int *__cil_tmp34 ;
  __le32 *__cil_tmp35 ;
  void const *__cil_tmp36 ;
  bool *__cil_tmp37 ;
  int __cil_tmp38 ;
  {
  {
  serial = *((struct usb_serial **)port);
  tmp___7 = usb_get_serial_port_data(port);
  port_priv = (struct cp210x_port_private *)tmp___7;
  __cil_tmp14 = size - 1;
  __cil_tmp15 = __cil_tmp14 | 3;
  __cil_tmp16 = __cil_tmp15 + 1;
  length = __cil_tmp16 / 4;
  __cil_tmp17 = (size_t )length;
  tmp___8 = kcalloc(__cil_tmp17, 4UL, 208U);
  buf = (__le32 *)tmp___8;
  }
  if (! buf) {
    {
    __cil_tmp18 = (unsigned long )port;
    __cil_tmp19 = __cil_tmp18 + 712;
    __cil_tmp20 = (struct device *)__cil_tmp19;
    __cil_tmp21 = (struct device const *)__cil_tmp20;
    dev_err(__cil_tmp21, "%s - out of memory.\n", "cp210x_get_config");
    }
    return (-12);
  } else {
  }
  {
  __cil_tmp22 = *((struct usb_device **)serial);
  tmp___9 = __create_pipe(__cil_tmp22, 0U);
  __cil_tmp23 = *((struct usb_device **)serial);
  __cil_tmp24 = 2 << 30;
  __cil_tmp25 = (unsigned int )__cil_tmp24;
  __cil_tmp26 = __cil_tmp25 | tmp___9;
  __cil_tmp27 = __cil_tmp26 | 128U;
  __cil_tmp28 = (__u8 )193;
  __cil_tmp29 = (__u16 )0;
  __cil_tmp30 = *((__u8 *)port_priv);
  __cil_tmp31 = (__u16 )__cil_tmp30;
  __cil_tmp32 = (void *)buf;
  __cil_tmp33 = (__u16 )size;
  result = usb_control_msg(__cil_tmp23, __cil_tmp27, request, __cil_tmp28, __cil_tmp29,
                           __cil_tmp31, __cil_tmp32, __cil_tmp33, 5000);
  i = 0;
  }
  {
  while (1) {
    while_continue: ;
    if (i < length) {
    } else {
      goto while_break;
    }
    __cil_tmp34 = data + i;
    __cil_tmp35 = buf + i;
    *__cil_tmp34 = *__cil_tmp35;
    i = i + 1;
  }
  while_break: ;
  }
  {
  __cil_tmp36 = (void const *)buf;
  kfree(__cil_tmp36);
  }
  if (result != size) {
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp37 = & debug;
      if (*__cil_tmp37) {
        {
        __cil_tmp38 = (int )request;
        printk("<7>%s: %s - Unable to send config request, request=0x%x size=%d result=%d\n",
               "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
               "cp210x_get_config", __cil_tmp38, size, result);
        }
      } else {
      }
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    if (result > 0) {
      result = -71;
    } else {
    }
    return (result);
  } else {
  }
  return (0);
}
}
static int cp210x_set_config(struct usb_serial_port *port , u8 request , unsigned int *data ,
                             int size )
{ struct usb_serial *serial ;
  struct cp210x_port_private *port_priv ;
  void *tmp___7 ;
  __le32 *buf ;
  int result ;
  int i ;
  int length ;
  void *tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct device *__cil_tmp22 ;
  struct device const *__cil_tmp23 ;
  __le32 *__cil_tmp24 ;
  unsigned int *__cil_tmp25 ;
  struct usb_device *__cil_tmp26 ;
  struct usb_device *__cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  unsigned int __cil_tmp30 ;
  __u8 __cil_tmp31 ;
  __u16 __cil_tmp32 ;
  __u8 __cil_tmp33 ;
  __u16 __cil_tmp34 ;
  void *__cil_tmp35 ;
  __u16 __cil_tmp36 ;
  struct usb_device *__cil_tmp37 ;
  struct usb_device *__cil_tmp38 ;
  int __cil_tmp39 ;
  unsigned int __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  __u8 __cil_tmp42 ;
  unsigned int *__cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  __u16 __cil_tmp45 ;
  __u8 __cil_tmp46 ;
  __u16 __cil_tmp47 ;
  void *__cil_tmp48 ;
  __u16 __cil_tmp49 ;
  void const *__cil_tmp50 ;
  bool *__cil_tmp51 ;
  int __cil_tmp52 ;
  {
  {
  serial = *((struct usb_serial **)port);
  tmp___7 = usb_get_serial_port_data(port);
  port_priv = (struct cp210x_port_private *)tmp___7;
  __cil_tmp15 = size - 1;
  __cil_tmp16 = __cil_tmp15 | 3;
  __cil_tmp17 = __cil_tmp16 + 1;
  length = __cil_tmp17 / 4;
  __cil_tmp18 = (unsigned long )length;
  __cil_tmp19 = __cil_tmp18 * 4UL;
  tmp___8 = kmalloc(__cil_tmp19, 208U);
  buf = (__le32 *)tmp___8;
  }
  if (! buf) {
    {
    __cil_tmp20 = (unsigned long )port;
    __cil_tmp21 = __cil_tmp20 + 712;
    __cil_tmp22 = (struct device *)__cil_tmp21;
    __cil_tmp23 = (struct device const *)__cil_tmp22;
    dev_err(__cil_tmp23, "%s - out of memory.\n", "cp210x_set_config");
    }
    return (-12);
  } else {
  }
  i = 0;
  {
  while (1) {
    while_continue: ;
    if (i < length) {
    } else {
      goto while_break;
    }
    __cil_tmp24 = buf + i;
    __cil_tmp25 = data + i;
    *__cil_tmp24 = *__cil_tmp25;
    i = i + 1;
  }
  while_break: ;
  }
  if (size > 2) {
    {
    __cil_tmp26 = *((struct usb_device **)serial);
    tmp___9 = __create_pipe(__cil_tmp26, 0U);
    __cil_tmp27 = *((struct usb_device **)serial);
    __cil_tmp28 = 2 << 30;
    __cil_tmp29 = (unsigned int )__cil_tmp28;
    __cil_tmp30 = __cil_tmp29 | tmp___9;
    __cil_tmp31 = (__u8 )65;
    __cil_tmp32 = (__u16 )0;
    __cil_tmp33 = *((__u8 *)port_priv);
    __cil_tmp34 = (__u16 )__cil_tmp33;
    __cil_tmp35 = (void *)buf;
    __cil_tmp36 = (__u16 )size;
    result = usb_control_msg(__cil_tmp27, __cil_tmp30, request, __cil_tmp31, __cil_tmp32,
                             __cil_tmp34, __cil_tmp35, __cil_tmp36, 5000);
    }
  } else {
    {
    __cil_tmp37 = *((struct usb_device **)serial);
    tmp___10 = __create_pipe(__cil_tmp37, 0U);
    __cil_tmp38 = *((struct usb_device **)serial);
    __cil_tmp39 = 2 << 30;
    __cil_tmp40 = (unsigned int )__cil_tmp39;
    __cil_tmp41 = __cil_tmp40 | tmp___10;
    __cil_tmp42 = (__u8 )65;
    __cil_tmp43 = data + 0;
    __cil_tmp44 = *__cil_tmp43;
    __cil_tmp45 = (__u16 )__cil_tmp44;
    __cil_tmp46 = *((__u8 *)port_priv);
    __cil_tmp47 = (__u16 )__cil_tmp46;
    __cil_tmp48 = (void *)0;
    __cil_tmp49 = (__u16 )0;
    result = usb_control_msg(__cil_tmp38, __cil_tmp41, request, __cil_tmp42, __cil_tmp45,
                             __cil_tmp47, __cil_tmp48, __cil_tmp49, 5000);
    }
  }
  {
  __cil_tmp50 = (void const *)buf;
  kfree(__cil_tmp50);
  }
  if (size > 2) {
    if (result != size) {
      goto _L;
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if (result < 0) {
    _L:
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp51 = & debug;
      if (*__cil_tmp51) {
        {
        __cil_tmp52 = (int )request;
        printk("<7>%s: %s - Unable to send request, request=0x%x size=%d result=%d\n",
               "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
               "cp210x_set_config", __cil_tmp52, size, result);
        }
      } else {
      }
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    if (result > 0) {
      result = -71;
    } else {
    }
    return (result);
  } else {
  }
  return (0);
}
}
__inline static int cp210x_set_config_single(struct usb_serial_port *port , u8 request ,
                                             unsigned int data ) __attribute__((__no_instrument_function__)) ;
__inline static int cp210x_set_config_single(struct usb_serial_port *port , u8 request ,
                                             unsigned int data )
{ int tmp___7 ;
  {
  {
  tmp___7 = cp210x_set_config(port, request, & data, 2);
  }
  return (tmp___7);
}
}
static unsigned int cp210x_quantise_baudrate(unsigned int baud )
{
  {
  if (baud <= 300U) {
    baud = 300U;
  } else
  if (baud <= 600U) {
    baud = 600U;
  } else
  if (baud <= 1200U) {
    baud = 1200U;
  } else
  if (baud <= 1800U) {
    baud = 1800U;
  } else
  if (baud <= 2400U) {
    baud = 2400U;
  } else
  if (baud <= 4000U) {
    baud = 4000U;
  } else
  if (baud <= 4803U) {
    baud = 4800U;
  } else
  if (baud <= 7207U) {
    baud = 7200U;
  } else
  if (baud <= 9612U) {
    baud = 9600U;
  } else
  if (baud <= 14428U) {
    baud = 14400U;
  } else
  if (baud <= 16062U) {
    baud = 16000U;
  } else
  if (baud <= 19250U) {
    baud = 19200U;
  } else
  if (baud <= 28912U) {
    baud = 28800U;
  } else
  if (baud <= 38601U) {
    baud = 38400U;
  } else
  if (baud <= 51558U) {
    baud = 51200U;
  } else
  if (baud <= 56280U) {
    baud = 56000U;
  } else
  if (baud <= 58053U) {
    baud = 57600U;
  } else
  if (baud <= 64111U) {
    baud = 64000U;
  } else
  if (baud <= 77608U) {
    baud = 76800U;
  } else
  if (baud <= 117028U) {
    baud = 115200U;
  } else
  if (baud <= 129347U) {
    baud = 128000U;
  } else
  if (baud <= 156868U) {
    baud = 153600U;
  } else
  if (baud <= 237832U) {
    baud = 230400U;
  } else
  if (baud <= 254234U) {
    baud = 250000U;
  } else
  if (baud <= 273066U) {
    baud = 256000U;
  } else
  if (baud <= 491520U) {
    baud = 460800U;
  } else
  if (baud <= 567138U) {
    baud = 500000U;
  } else
  if (baud <= 670254U) {
    baud = 576000U;
  } else
  if (baud < 1000000U) {
    baud = 921600U;
  } else
  if (baud > 2000000U) {
    baud = 2000000U;
  } else {
  }
  return (baud);
}
}
static int cp210x_open(struct tty_struct *tty , struct usb_serial_port *port )
{ int result ;
  int tmp___7 ;
  bool *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned char __cil_tmp8 ;
  int __cil_tmp9 ;
  u8 __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct device *__cil_tmp13 ;
  struct device const *__cil_tmp14 ;
  void *__cil_tmp15 ;
  struct ktermios *__cil_tmp16 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp5 = & debug;
    if (*__cil_tmp5) {
      {
      __cil_tmp6 = (unsigned long )port;
      __cil_tmp7 = __cil_tmp6 + 384;
      __cil_tmp8 = *((unsigned char *)__cil_tmp7);
      __cil_tmp9 = (int )__cil_tmp8;
      printk("<7>%s: %s - port %d\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
             "cp210x_open", __cil_tmp9);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp10 = (u8 )0;
  result = cp210x_set_config_single(port, __cil_tmp10, 1U);
  }
  if (result) {
    {
    __cil_tmp11 = (unsigned long )port;
    __cil_tmp12 = __cil_tmp11 + 712;
    __cil_tmp13 = (struct device *)__cil_tmp12;
    __cil_tmp14 = (struct device const *)__cil_tmp13;
    dev_err(__cil_tmp14, "%s - Unable to enable UART\n", "cp210x_open");
    }
    return (result);
  } else {
  }
  {
  cp210x_get_termios(tty, port);
  }
  if (tty) {
    {
    __cil_tmp15 = (void *)0;
    __cil_tmp16 = (struct ktermios *)__cil_tmp15;
    cp210x_change_speed(tty, port, __cil_tmp16);
    }
  } else {
  }
  {
  tmp___7 = usb_serial_generic_open(tty, port);
  }
  return (tmp___7);
}
}
static void cp210x_close(struct usb_serial_port *port )
{ bool *__cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned char __cil_tmp5 ;
  int __cil_tmp6 ;
  struct usb_serial *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct mutex *__cil_tmp10 ;
  struct usb_serial *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned char __cil_tmp14 ;
  u8 __cil_tmp15 ;
  struct usb_serial *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct mutex *__cil_tmp19 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp2 = & debug;
    if (*__cil_tmp2) {
      {
      __cil_tmp3 = (unsigned long )port;
      __cil_tmp4 = __cil_tmp3 + 384;
      __cil_tmp5 = *((unsigned char *)__cil_tmp4);
      __cil_tmp6 = (int )__cil_tmp5;
      printk("<7>%s: %s - port %d\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
             "cp210x_close", __cil_tmp6);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  usb_serial_generic_close(port);
  __cil_tmp7 = *((struct usb_serial **)port);
  __cil_tmp8 = (unsigned long )__cil_tmp7;
  __cil_tmp9 = __cil_tmp8 + 104;
  __cil_tmp10 = (struct mutex *)__cil_tmp9;
  mutex_lock(__cil_tmp10);
  }
  {
  __cil_tmp11 = *((struct usb_serial **)port);
  __cil_tmp12 = (unsigned long )__cil_tmp11;
  __cil_tmp13 = __cil_tmp12 + 24;
  __cil_tmp14 = *((unsigned char *)__cil_tmp13);
  if (! __cil_tmp14) {
    {
    __cil_tmp15 = (u8 )0;
    cp210x_set_config_single(port, __cil_tmp15, 0U);
    }
  } else {
  }
  }
  {
  __cil_tmp16 = *((struct usb_serial **)port);
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  __cil_tmp18 = __cil_tmp17 + 104;
  __cil_tmp19 = (struct mutex *)__cil_tmp18;
  mutex_unlock(__cil_tmp19);
  }
  return;
}
}
static void cp210x_get_termios(struct tty_struct *tty , struct usb_serial_port *port )
{ unsigned int baud ;
  unsigned int cflag ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  void *__cil_tmp7 ;
  struct usb_serial_port *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct ktermios *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  tcflag_t *__cil_tmp14 ;
  unsigned int *__cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned int *__cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  unsigned int *__cil_tmp19 ;
  {
  if (tty) {
    {
    __cil_tmp5 = (unsigned long )tty;
    __cil_tmp6 = __cil_tmp5 + 584;
    __cil_tmp7 = *((void **)__cil_tmp6);
    __cil_tmp8 = (struct usb_serial_port *)__cil_tmp7;
    __cil_tmp9 = (unsigned long )tty;
    __cil_tmp10 = __cil_tmp9 + 216;
    __cil_tmp11 = *((struct ktermios **)__cil_tmp10);
    __cil_tmp12 = (unsigned long )__cil_tmp11;
    __cil_tmp13 = __cil_tmp12 + 8;
    __cil_tmp14 = (tcflag_t *)__cil_tmp13;
    cp210x_get_termios_port(__cil_tmp8, __cil_tmp14, & baud);
    __cil_tmp15 = & baud;
    __cil_tmp16 = *__cil_tmp15;
    __cil_tmp17 = & baud;
    __cil_tmp18 = *__cil_tmp17;
    tty_encode_baud_rate(tty, __cil_tmp16, __cil_tmp18);
    }
  } else {
    {
    __cil_tmp19 = & cflag;
    *__cil_tmp19 = 0U;
    cp210x_get_termios_port(port, & cflag, & baud);
    }
  }
  return;
}
}
static void cp210x_get_termios_port(struct usb_serial_port *port , unsigned int *cflagp ,
                                    unsigned int *baudp )
{ unsigned int cflag ;
  unsigned int modem_ctl[4] ;
  unsigned int baud ;
  unsigned int bits ;
  bool *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned char __cil_tmp11 ;
  int __cil_tmp12 ;
  u8 __cil_tmp13 ;
  bool *__cil_tmp14 ;
  unsigned int *__cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned int *__cil_tmp17 ;
  u8 __cil_tmp18 ;
  unsigned int *__cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  bool *__cil_tmp22 ;
  bool *__cil_tmp23 ;
  bool *__cil_tmp24 ;
  bool *__cil_tmp25 ;
  bool *__cil_tmp26 ;
  unsigned int *__cil_tmp27 ;
  unsigned int *__cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  unsigned int *__cil_tmp30 ;
  unsigned int *__cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  u8 __cil_tmp33 ;
  bool *__cil_tmp34 ;
  unsigned int *__cil_tmp35 ;
  unsigned int *__cil_tmp36 ;
  unsigned int __cil_tmp37 ;
  unsigned int *__cil_tmp38 ;
  unsigned int *__cil_tmp39 ;
  unsigned int __cil_tmp40 ;
  u8 __cil_tmp41 ;
  unsigned int *__cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  bool *__cil_tmp45 ;
  bool *__cil_tmp46 ;
  bool *__cil_tmp47 ;
  bool *__cil_tmp48 ;
  bool *__cil_tmp49 ;
  bool *__cil_tmp50 ;
  unsigned int *__cil_tmp51 ;
  unsigned int *__cil_tmp52 ;
  unsigned int __cil_tmp53 ;
  u8 __cil_tmp54 ;
  unsigned int *__cil_tmp55 ;
  unsigned int __cil_tmp56 ;
  unsigned int __cil_tmp57 ;
  bool *__cil_tmp58 ;
  bool *__cil_tmp59 ;
  unsigned int *__cil_tmp60 ;
  unsigned int *__cil_tmp61 ;
  unsigned int __cil_tmp62 ;
  u8 __cil_tmp63 ;
  bool *__cil_tmp64 ;
  bool *__cil_tmp65 ;
  unsigned int *__cil_tmp66 ;
  unsigned int *__cil_tmp67 ;
  unsigned int __cil_tmp68 ;
  u8 __cil_tmp69 ;
  u8 __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned int *__cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned int __cil_tmp76 ;
  bool *__cil_tmp77 ;
  bool *__cil_tmp78 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp8 = & debug;
    if (*__cil_tmp8) {
      {
      __cil_tmp9 = (unsigned long )port;
      __cil_tmp10 = __cil_tmp9 + 384;
      __cil_tmp11 = *((unsigned char *)__cil_tmp10);
      __cil_tmp12 = (int )__cil_tmp11;
      printk("<7>%s: %s - port %d\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
             "cp210x_get_termios_port", __cil_tmp12);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp13 = (u8 )29;
  cp210x_get_config(port, __cil_tmp13, & baud, 4);
  }
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp14 = & debug;
    if (*__cil_tmp14) {
      {
      __cil_tmp15 = & baud;
      __cil_tmp16 = *__cil_tmp15;
      printk("<7>%s: %s - baud rate = %d\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
             "cp210x_get_termios_port", __cil_tmp16);
      }
    } else {
    }
    }
    goto while_break___0;
  }
  while_break___0: ;
  }
  {
  __cil_tmp17 = & baud;
  *baudp = *__cil_tmp17;
  cflag = *cflagp;
  __cil_tmp18 = (u8 )4;
  cp210x_get_config(port, __cil_tmp18, & bits, 2);
  cflag = cflag & 4294967247U;
  }
  {
  __cil_tmp19 = & bits;
  __cil_tmp20 = *__cil_tmp19;
  __cil_tmp21 = __cil_tmp20 & 3840U;
  if ((int )__cil_tmp21 == 1280) {
    goto case_1280;
  } else
  if ((int )__cil_tmp21 == 1536) {
    goto case_1536;
  } else
  if ((int )__cil_tmp21 == 1792) {
    goto case_1792;
  } else
  if ((int )__cil_tmp21 == 2048) {
    goto case_2048;
  } else
  if ((int )__cil_tmp21 == 2304) {
    goto case_2304;
  } else {
    {
    goto switch_default;
    if (0) {
      case_1280:
      {
      while (1) {
        while_continue___1: ;
        {
        __cil_tmp22 = & debug;
        if (*__cil_tmp22) {
          {
          printk("<7>%s: %s - data bits = 5\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___1;
      }
      while_break___1: ;
      }
      cflag = cflag;
      goto switch_break;
      case_1536:
      {
      while (1) {
        while_continue___2: ;
        {
        __cil_tmp23 = & debug;
        if (*__cil_tmp23) {
          {
          printk("<7>%s: %s - data bits = 6\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___2;
      }
      while_break___2: ;
      }
      cflag = cflag | 16U;
      goto switch_break;
      case_1792:
      {
      while (1) {
        while_continue___3: ;
        {
        __cil_tmp24 = & debug;
        if (*__cil_tmp24) {
          {
          printk("<7>%s: %s - data bits = 7\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___3;
      }
      while_break___3: ;
      }
      cflag = cflag | 32U;
      goto switch_break;
      case_2048:
      {
      while (1) {
        while_continue___4: ;
        {
        __cil_tmp25 = & debug;
        if (*__cil_tmp25) {
          {
          printk("<7>%s: %s - data bits = 8\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___4;
      }
      while_break___4: ;
      }
      cflag = cflag | 48U;
      goto switch_break;
      case_2304:
      {
      while (1) {
        while_continue___5: ;
        {
        __cil_tmp26 = & debug;
        if (*__cil_tmp26) {
          {
          printk("<7>%s: %s - data bits = 9 (not supported, using 8 data bits)\n",
                 "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___5;
      }
      while_break___5: ;
      }
      {
      cflag = cflag | 48U;
      __cil_tmp27 = & bits;
      __cil_tmp28 = & bits;
      __cil_tmp29 = *__cil_tmp28;
      *__cil_tmp27 = __cil_tmp29 & 4294963455U;
      __cil_tmp30 = & bits;
      __cil_tmp31 = & bits;
      __cil_tmp32 = *__cil_tmp31;
      *__cil_tmp30 = __cil_tmp32 | 2048U;
      __cil_tmp33 = (u8 )3;
      cp210x_set_config(port, __cil_tmp33, & bits, 2);
      }
      goto switch_break;
      switch_default:
      {
      while (1) {
        while_continue___6: ;
        {
        __cil_tmp34 = & debug;
        if (*__cil_tmp34) {
          {
          printk("<7>%s: %s - Unknown number of data bits, using 8\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___6;
      }
      while_break___6: ;
      }
      {
      cflag = cflag | 48U;
      __cil_tmp35 = & bits;
      __cil_tmp36 = & bits;
      __cil_tmp37 = *__cil_tmp36;
      *__cil_tmp35 = __cil_tmp37 & 4294963455U;
      __cil_tmp38 = & bits;
      __cil_tmp39 = & bits;
      __cil_tmp40 = *__cil_tmp39;
      *__cil_tmp38 = __cil_tmp40 | 2048U;
      __cil_tmp41 = (u8 )3;
      cp210x_set_config(port, __cil_tmp41, & bits, 2);
      }
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  }
  {
  __cil_tmp42 = & bits;
  __cil_tmp43 = *__cil_tmp42;
  __cil_tmp44 = __cil_tmp43 & 240U;
  if ((int )__cil_tmp44 == 0) {
    goto case_0;
  } else
  if ((int )__cil_tmp44 == 16) {
    goto case_16;
  } else
  if ((int )__cil_tmp44 == 32) {
    goto case_32;
  } else
  if ((int )__cil_tmp44 == 48) {
    goto case_48;
  } else
  if ((int )__cil_tmp44 == 64) {
    goto case_64;
  } else {
    {
    goto switch_default___0;
    if (0) {
      case_0:
      {
      while (1) {
        while_continue___7: ;
        {
        __cil_tmp45 = & debug;
        if (*__cil_tmp45) {
          {
          printk("<7>%s: %s - parity = NONE\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___7;
      }
      while_break___7: ;
      }
      cflag = cflag & 4294967039U;
      goto switch_break___0;
      case_16:
      {
      while (1) {
        while_continue___8: ;
        {
        __cil_tmp46 = & debug;
        if (*__cil_tmp46) {
          {
          printk("<7>%s: %s - parity = ODD\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___8;
      }
      while_break___8: ;
      }
      cflag = cflag | 768U;
      goto switch_break___0;
      case_32:
      {
      while (1) {
        while_continue___9: ;
        {
        __cil_tmp47 = & debug;
        if (*__cil_tmp47) {
          {
          printk("<7>%s: %s - parity = EVEN\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___9;
      }
      while_break___9: ;
      }
      cflag = cflag & 4294966783U;
      cflag = cflag | 256U;
      goto switch_break___0;
      case_48:
      {
      while (1) {
        while_continue___10: ;
        {
        __cil_tmp48 = & debug;
        if (*__cil_tmp48) {
          {
          printk("<7>%s: %s - parity = MARK\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___10;
      }
      while_break___10: ;
      }
      cflag = cflag | 1073742592U;
      goto switch_break___0;
      case_64:
      {
      while (1) {
        while_continue___11: ;
        {
        __cil_tmp49 = & debug;
        if (*__cil_tmp49) {
          {
          printk("<7>%s: %s - parity = SPACE\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___11;
      }
      while_break___11: ;
      }
      cflag = cflag & 4294966783U;
      cflag = cflag | 1073742080U;
      goto switch_break___0;
      switch_default___0:
      {
      while (1) {
        while_continue___12: ;
        {
        __cil_tmp50 = & debug;
        if (*__cil_tmp50) {
          {
          printk("<7>%s: %s - Unknown parity mode, disabling parity\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___12;
      }
      while_break___12: ;
      }
      {
      cflag = cflag & 4294967039U;
      __cil_tmp51 = & bits;
      __cil_tmp52 = & bits;
      __cil_tmp53 = *__cil_tmp52;
      *__cil_tmp51 = __cil_tmp53 & 4294967055U;
      __cil_tmp54 = (u8 )3;
      cp210x_set_config(port, __cil_tmp54, & bits, 2);
      }
      goto switch_break___0;
    } else {
      switch_break___0: ;
    }
    }
  }
  }
  cflag = cflag & 4294967231U;
  {
  __cil_tmp55 = & bits;
  __cil_tmp56 = *__cil_tmp55;
  __cil_tmp57 = __cil_tmp56 & 15U;
  if ((int )__cil_tmp57 == 0) {
    goto case_0___0;
  } else
  if ((int )__cil_tmp57 == 1) {
    goto case_1;
  } else
  if ((int )__cil_tmp57 == 2) {
    goto case_2;
  } else {
    {
    goto switch_default___1;
    if (0) {
      case_0___0:
      {
      while (1) {
        while_continue___13: ;
        {
        __cil_tmp58 = & debug;
        if (*__cil_tmp58) {
          {
          printk("<7>%s: %s - stop bits = 1\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___13;
      }
      while_break___13: ;
      }
      goto switch_break___1;
      case_1:
      {
      while (1) {
        while_continue___14: ;
        {
        __cil_tmp59 = & debug;
        if (*__cil_tmp59) {
          {
          printk("<7>%s: %s - stop bits = 1.5 (not supported, using 1 stop bit)\n",
                 "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___14;
      }
      while_break___14: ;
      }
      {
      __cil_tmp60 = & bits;
      __cil_tmp61 = & bits;
      __cil_tmp62 = *__cil_tmp61;
      *__cil_tmp60 = __cil_tmp62 & 4294967280U;
      __cil_tmp63 = (u8 )3;
      cp210x_set_config(port, __cil_tmp63, & bits, 2);
      }
      goto switch_break___1;
      case_2:
      {
      while (1) {
        while_continue___15: ;
        {
        __cil_tmp64 = & debug;
        if (*__cil_tmp64) {
          {
          printk("<7>%s: %s - stop bits = 2\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___15;
      }
      while_break___15: ;
      }
      cflag = cflag | 64U;
      goto switch_break___1;
      switch_default___1:
      {
      while (1) {
        while_continue___16: ;
        {
        __cil_tmp65 = & debug;
        if (*__cil_tmp65) {
          {
          printk("<7>%s: %s - Unknown number of stop bits, using 1 stop bit\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_get_termios_port");
          }
        } else {
        }
        }
        goto while_break___16;
      }
      while_break___16: ;
      }
      {
      __cil_tmp66 = & bits;
      __cil_tmp67 = & bits;
      __cil_tmp68 = *__cil_tmp67;
      *__cil_tmp66 = __cil_tmp68 & 4294967280U;
      __cil_tmp69 = (u8 )3;
      cp210x_set_config(port, __cil_tmp69, & bits, 2);
      }
      goto switch_break___1;
    } else {
      switch_break___1: ;
    }
    }
  }
  }
  {
  __cil_tmp70 = (u8 )20;
  __cil_tmp71 = 0 * 4UL;
  __cil_tmp72 = (unsigned long )(modem_ctl) + __cil_tmp71;
  __cil_tmp73 = (unsigned int *)__cil_tmp72;
  cp210x_get_config(port, __cil_tmp70, __cil_tmp73, 16);
  }
  {
  __cil_tmp74 = 0 * 4UL;
  __cil_tmp75 = (unsigned long )(modem_ctl) + __cil_tmp74;
  __cil_tmp76 = *((unsigned int *)__cil_tmp75);
  if (__cil_tmp76 & 8U) {
    {
    while (1) {
      while_continue___17: ;
      {
      __cil_tmp77 = & debug;
      if (*__cil_tmp77) {
        {
        printk("<7>%s: %s - flow control = CRTSCTS\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
               "cp210x_get_termios_port");
        }
      } else {
      }
      }
      goto while_break___17;
    }
    while_break___17: ;
    }
    cflag = cflag | 2147483648U;
  } else {
    {
    while (1) {
      while_continue___18: ;
      {
      __cil_tmp78 = & debug;
      if (*__cil_tmp78) {
        {
        printk("<7>%s: %s - flow control = NONE\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
               "cp210x_get_termios_port");
        }
      } else {
      }
      }
      goto while_break___18;
    }
    while_break___18: ;
    }
    cflag = cflag & 2147483647U;
  }
  }
  *cflagp = cflag;
  return;
}
}
static void cp210x_change_speed(struct tty_struct *tty , struct usb_serial_port *port ,
                                struct ktermios *old_termios )
{ u32 baud ;
  int tmp___7 ;
  u32 *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct ktermios *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  u32 *__cil_tmp12 ;
  u32 *__cil_tmp13 ;
  u32 __cil_tmp14 ;
  bool *__cil_tmp15 ;
  u32 *__cil_tmp16 ;
  u32 __cil_tmp17 ;
  u8 __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct device *__cil_tmp22 ;
  struct device const *__cil_tmp23 ;
  u32 *__cil_tmp24 ;
  u32 __cil_tmp25 ;
  u32 *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  u32 *__cil_tmp29 ;
  u32 *__cil_tmp30 ;
  u32 __cil_tmp31 ;
  u32 *__cil_tmp32 ;
  u32 __cil_tmp33 ;
  {
  {
  __cil_tmp6 = & baud;
  __cil_tmp7 = (unsigned long )tty;
  __cil_tmp8 = __cil_tmp7 + 216;
  __cil_tmp9 = *((struct ktermios **)__cil_tmp8);
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  __cil_tmp11 = __cil_tmp10 + 40;
  *__cil_tmp6 = *((speed_t *)__cil_tmp11);
  __cil_tmp12 = & baud;
  __cil_tmp13 = & baud;
  __cil_tmp14 = *__cil_tmp13;
  *__cil_tmp12 = cp210x_quantise_baudrate(__cil_tmp14);
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp15 = & debug;
    if (*__cil_tmp15) {
      {
      __cil_tmp16 = & baud;
      __cil_tmp17 = *__cil_tmp16;
      printk("<7>%s: %s - setting baud rate to %u\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
             "cp210x_change_speed", __cil_tmp17);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp18 = (u8 )30;
  __cil_tmp19 = (int )4UL;
  tmp___7 = cp210x_set_config(port, __cil_tmp18, & baud, __cil_tmp19);
  }
  if (tmp___7) {
    {
    __cil_tmp20 = (unsigned long )port;
    __cil_tmp21 = __cil_tmp20 + 712;
    __cil_tmp22 = (struct device *)__cil_tmp21;
    __cil_tmp23 = (struct device const *)__cil_tmp22;
    __cil_tmp24 = & baud;
    __cil_tmp25 = *__cil_tmp24;
    dev_warn(__cil_tmp23, "failed to set baud rate to %u\n", __cil_tmp25);
    }
    if (old_termios) {
      __cil_tmp26 = & baud;
      __cil_tmp27 = (unsigned long )old_termios;
      __cil_tmp28 = __cil_tmp27 + 40;
      *__cil_tmp26 = *((speed_t *)__cil_tmp28);
    } else {
      __cil_tmp29 = & baud;
      *__cil_tmp29 = (u32 )9600;
    }
  } else {
  }
  {
  __cil_tmp30 = & baud;
  __cil_tmp31 = *__cil_tmp30;
  __cil_tmp32 = & baud;
  __cil_tmp33 = *__cil_tmp32;
  tty_encode_baud_rate(tty, __cil_tmp31, __cil_tmp33);
  }
  return;
}
}
static void cp210x_set_termios(struct tty_struct *tty , struct usb_serial_port *port ,
                               struct ktermios *old_termios )
{ unsigned int cflag ;
  unsigned int old_cflag ;
  unsigned int bits ;
  unsigned int modem_ctl[4] ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  bool *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned char __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct ktermios *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  speed_t __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct ktermios *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  speed_t __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  unsigned int __cil_tmp33 ;
  u8 __cil_tmp34 ;
  unsigned int *__cil_tmp35 ;
  unsigned int *__cil_tmp36 ;
  unsigned int __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  unsigned int *__cil_tmp39 ;
  unsigned int *__cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  bool *__cil_tmp42 ;
  unsigned int *__cil_tmp43 ;
  unsigned int *__cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  bool *__cil_tmp46 ;
  unsigned int *__cil_tmp47 ;
  unsigned int *__cil_tmp48 ;
  unsigned int __cil_tmp49 ;
  bool *__cil_tmp50 ;
  unsigned int *__cil_tmp51 ;
  unsigned int *__cil_tmp52 ;
  unsigned int __cil_tmp53 ;
  bool *__cil_tmp54 ;
  bool *__cil_tmp55 ;
  unsigned int *__cil_tmp56 ;
  unsigned int *__cil_tmp57 ;
  unsigned int __cil_tmp58 ;
  u8 __cil_tmp59 ;
  bool *__cil_tmp60 ;
  unsigned int __cil_tmp61 ;
  unsigned int __cil_tmp62 ;
  u8 __cil_tmp63 ;
  unsigned int *__cil_tmp64 ;
  unsigned int *__cil_tmp65 ;
  unsigned int __cil_tmp66 ;
  unsigned int *__cil_tmp67 ;
  unsigned int *__cil_tmp68 ;
  unsigned int __cil_tmp69 ;
  bool *__cil_tmp70 ;
  unsigned int *__cil_tmp71 ;
  unsigned int *__cil_tmp72 ;
  unsigned int __cil_tmp73 ;
  bool *__cil_tmp74 ;
  unsigned int *__cil_tmp75 ;
  unsigned int *__cil_tmp76 ;
  unsigned int __cil_tmp77 ;
  bool *__cil_tmp78 ;
  unsigned int *__cil_tmp79 ;
  unsigned int *__cil_tmp80 ;
  unsigned int __cil_tmp81 ;
  bool *__cil_tmp82 ;
  u8 __cil_tmp83 ;
  bool *__cil_tmp84 ;
  unsigned int __cil_tmp85 ;
  unsigned int __cil_tmp86 ;
  u8 __cil_tmp87 ;
  unsigned int *__cil_tmp88 ;
  unsigned int *__cil_tmp89 ;
  unsigned int __cil_tmp90 ;
  unsigned int *__cil_tmp91 ;
  unsigned int *__cil_tmp92 ;
  unsigned int __cil_tmp93 ;
  bool *__cil_tmp94 ;
  unsigned int *__cil_tmp95 ;
  unsigned int *__cil_tmp96 ;
  bool *__cil_tmp97 ;
  u8 __cil_tmp98 ;
  bool *__cil_tmp99 ;
  unsigned int __cil_tmp100 ;
  unsigned int __cil_tmp101 ;
  u8 __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned int *__cil_tmp105 ;
  bool *__cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned int __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned int __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned int __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned int __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned int __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned int __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  bool *__cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned int __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned int __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned int __cil_tmp146 ;
  bool *__cil_tmp147 ;
  bool *__cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned int __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned int __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned int __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  unsigned int __cil_tmp160 ;
  u8 __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  unsigned int *__cil_tmp164 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp11 = & debug;
    if (*__cil_tmp11) {
      {
      __cil_tmp12 = (unsigned long )port;
      __cil_tmp13 = __cil_tmp12 + 384;
      __cil_tmp14 = *((unsigned char *)__cil_tmp13);
      __cil_tmp15 = (int )__cil_tmp14;
      printk("<7>%s: %s - port %d\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
             "cp210x_set_termios", __cil_tmp15);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  if (! tty) {
    return;
  } else {
  }
  __cil_tmp16 = (unsigned long )tty;
  __cil_tmp17 = __cil_tmp16 + 216;
  __cil_tmp18 = *((struct ktermios **)__cil_tmp17);
  __cil_tmp19 = (unsigned long )__cil_tmp18;
  __cil_tmp20 = __cil_tmp19 + 8;
  cflag = *((tcflag_t *)__cil_tmp20);
  __cil_tmp21 = (unsigned long )old_termios;
  __cil_tmp22 = __cil_tmp21 + 8;
  old_cflag = *((tcflag_t *)__cil_tmp22);
  {
  __cil_tmp23 = (unsigned long )old_termios;
  __cil_tmp24 = __cil_tmp23 + 40;
  __cil_tmp25 = *((speed_t *)__cil_tmp24);
  __cil_tmp26 = (unsigned long )tty;
  __cil_tmp27 = __cil_tmp26 + 216;
  __cil_tmp28 = *((struct ktermios **)__cil_tmp27);
  __cil_tmp29 = (unsigned long )__cil_tmp28;
  __cil_tmp30 = __cil_tmp29 + 40;
  __cil_tmp31 = *((speed_t *)__cil_tmp30);
  if (__cil_tmp31 != __cil_tmp25) {
    {
    cp210x_change_speed(tty, port, old_termios);
    }
  } else {
  }
  }
  {
  __cil_tmp32 = old_cflag & 48U;
  __cil_tmp33 = cflag & 48U;
  if (__cil_tmp33 != __cil_tmp32) {
    {
    __cil_tmp34 = (u8 )4;
    cp210x_get_config(port, __cil_tmp34, & bits, 2);
    __cil_tmp35 = & bits;
    __cil_tmp36 = & bits;
    __cil_tmp37 = *__cil_tmp36;
    *__cil_tmp35 = __cil_tmp37 & 4294963455U;
    }
    {
    __cil_tmp38 = cflag & 48U;
    if ((int )__cil_tmp38 == 0) {
      goto case_0;
    } else
    if ((int )__cil_tmp38 == 16) {
      goto case_16;
    } else
    if ((int )__cil_tmp38 == 32) {
      goto case_32;
    } else
    if ((int )__cil_tmp38 == 48) {
      goto case_48;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        __cil_tmp39 = & bits;
        __cil_tmp40 = & bits;
        __cil_tmp41 = *__cil_tmp40;
        *__cil_tmp39 = __cil_tmp41 | 1280U;
        {
        while (1) {
          while_continue___0: ;
          {
          __cil_tmp42 = & debug;
          if (*__cil_tmp42) {
            {
            printk("<7>%s: %s - data bits = 5\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                   "cp210x_set_termios");
            }
          } else {
          }
          }
          goto while_break___0;
        }
        while_break___0: ;
        }
        goto switch_break;
        case_16:
        __cil_tmp43 = & bits;
        __cil_tmp44 = & bits;
        __cil_tmp45 = *__cil_tmp44;
        *__cil_tmp43 = __cil_tmp45 | 1536U;
        {
        while (1) {
          while_continue___1: ;
          {
          __cil_tmp46 = & debug;
          if (*__cil_tmp46) {
            {
            printk("<7>%s: %s - data bits = 6\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                   "cp210x_set_termios");
            }
          } else {
          }
          }
          goto while_break___1;
        }
        while_break___1: ;
        }
        goto switch_break;
        case_32:
        __cil_tmp47 = & bits;
        __cil_tmp48 = & bits;
        __cil_tmp49 = *__cil_tmp48;
        *__cil_tmp47 = __cil_tmp49 | 1792U;
        {
        while (1) {
          while_continue___2: ;
          {
          __cil_tmp50 = & debug;
          if (*__cil_tmp50) {
            {
            printk("<7>%s: %s - data bits = 7\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                   "cp210x_set_termios");
            }
          } else {
          }
          }
          goto while_break___2;
        }
        while_break___2: ;
        }
        goto switch_break;
        case_48:
        __cil_tmp51 = & bits;
        __cil_tmp52 = & bits;
        __cil_tmp53 = *__cil_tmp52;
        *__cil_tmp51 = __cil_tmp53 | 2048U;
        {
        while (1) {
          while_continue___3: ;
          {
          __cil_tmp54 = & debug;
          if (*__cil_tmp54) {
            {
            printk("<7>%s: %s - data bits = 8\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                   "cp210x_set_termios");
            }
          } else {
          }
          }
          goto while_break___3;
        }
        while_break___3: ;
        }
        goto switch_break;
        switch_default:
        {
        while (1) {
          while_continue___4: ;
          {
          __cil_tmp55 = & debug;
          if (*__cil_tmp55) {
            {
            printk("<7>%s: cp210x driver does not support the number of bits requested, using 8 bit mode\n",
                   "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c");
            }
          } else {
          }
          }
          goto while_break___4;
        }
        while_break___4: ;
        }
        __cil_tmp56 = & bits;
        __cil_tmp57 = & bits;
        __cil_tmp58 = *__cil_tmp57;
        *__cil_tmp56 = __cil_tmp58 | 2048U;
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
    }
    {
    __cil_tmp59 = (u8 )3;
    tmp___7 = cp210x_set_config(port, __cil_tmp59, & bits, 2);
    }
    if (tmp___7) {
      {
      while (1) {
        while_continue___5: ;
        {
        __cil_tmp60 = & debug;
        if (*__cil_tmp60) {
          {
          printk("<7>%s: Number of data bits requested not supported by device\n",
                 "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c");
          }
        } else {
        }
        }
        goto while_break___5;
      }
      while_break___5: ;
      }
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp61 = old_cflag & 1073742592U;
  __cil_tmp62 = cflag & 1073742592U;
  if (__cil_tmp62 != __cil_tmp61) {
    {
    __cil_tmp63 = (u8 )4;
    cp210x_get_config(port, __cil_tmp63, & bits, 2);
    __cil_tmp64 = & bits;
    __cil_tmp65 = & bits;
    __cil_tmp66 = *__cil_tmp65;
    *__cil_tmp64 = __cil_tmp66 & 4294967055U;
    }
    if (cflag & 256U) {
      if (cflag & 1073741824U) {
        if (cflag & 512U) {
          __cil_tmp67 = & bits;
          __cil_tmp68 = & bits;
          __cil_tmp69 = *__cil_tmp68;
          *__cil_tmp67 = __cil_tmp69 | 48U;
          {
          while (1) {
            while_continue___6: ;
            {
            __cil_tmp70 = & debug;
            if (*__cil_tmp70) {
              {
              printk("<7>%s: %s - parity = MARK\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                     "cp210x_set_termios");
              }
            } else {
            }
            }
            goto while_break___6;
          }
          while_break___6: ;
          }
        } else {
          __cil_tmp71 = & bits;
          __cil_tmp72 = & bits;
          __cil_tmp73 = *__cil_tmp72;
          *__cil_tmp71 = __cil_tmp73 | 64U;
          {
          while (1) {
            while_continue___7: ;
            {
            __cil_tmp74 = & debug;
            if (*__cil_tmp74) {
              {
              printk("<7>%s: %s - parity = SPACE\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                     "cp210x_set_termios");
              }
            } else {
            }
            }
            goto while_break___7;
          }
          while_break___7: ;
          }
        }
      } else
      if (cflag & 512U) {
        __cil_tmp75 = & bits;
        __cil_tmp76 = & bits;
        __cil_tmp77 = *__cil_tmp76;
        *__cil_tmp75 = __cil_tmp77 | 16U;
        {
        while (1) {
          while_continue___8: ;
          {
          __cil_tmp78 = & debug;
          if (*__cil_tmp78) {
            {
            printk("<7>%s: %s - parity = ODD\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                   "cp210x_set_termios");
            }
          } else {
          }
          }
          goto while_break___8;
        }
        while_break___8: ;
        }
      } else {
        __cil_tmp79 = & bits;
        __cil_tmp80 = & bits;
        __cil_tmp81 = *__cil_tmp80;
        *__cil_tmp79 = __cil_tmp81 | 32U;
        {
        while (1) {
          while_continue___9: ;
          {
          __cil_tmp82 = & debug;
          if (*__cil_tmp82) {
            {
            printk("<7>%s: %s - parity = EVEN\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                   "cp210x_set_termios");
            }
          } else {
          }
          }
          goto while_break___9;
        }
        while_break___9: ;
        }
      }
    } else {
    }
    {
    __cil_tmp83 = (u8 )3;
    tmp___8 = cp210x_set_config(port, __cil_tmp83, & bits, 2);
    }
    if (tmp___8) {
      {
      while (1) {
        while_continue___10: ;
        {
        __cil_tmp84 = & debug;
        if (*__cil_tmp84) {
          {
          printk("<7>%s: Parity mode not supported by device\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c");
          }
        } else {
        }
        }
        goto while_break___10;
      }
      while_break___10: ;
      }
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp85 = old_cflag & 64U;
  __cil_tmp86 = cflag & 64U;
  if (__cil_tmp86 != __cil_tmp85) {
    {
    __cil_tmp87 = (u8 )4;
    cp210x_get_config(port, __cil_tmp87, & bits, 2);
    __cil_tmp88 = & bits;
    __cil_tmp89 = & bits;
    __cil_tmp90 = *__cil_tmp89;
    *__cil_tmp88 = __cil_tmp90 & 4294967280U;
    }
    if (cflag & 64U) {
      __cil_tmp91 = & bits;
      __cil_tmp92 = & bits;
      __cil_tmp93 = *__cil_tmp92;
      *__cil_tmp91 = __cil_tmp93 | 2U;
      {
      while (1) {
        while_continue___11: ;
        {
        __cil_tmp94 = & debug;
        if (*__cil_tmp94) {
          {
          printk("<7>%s: %s - stop bits = 2\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_set_termios");
          }
        } else {
        }
        }
        goto while_break___11;
      }
      while_break___11: ;
      }
    } else {
      __cil_tmp95 = & bits;
      __cil_tmp96 = & bits;
      *__cil_tmp95 = *__cil_tmp96;
      {
      while (1) {
        while_continue___12: ;
        {
        __cil_tmp97 = & debug;
        if (*__cil_tmp97) {
          {
          printk("<7>%s: %s - stop bits = 1\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_set_termios");
          }
        } else {
        }
        }
        goto while_break___12;
      }
      while_break___12: ;
      }
    }
    {
    __cil_tmp98 = (u8 )3;
    tmp___9 = cp210x_set_config(port, __cil_tmp98, & bits, 2);
    }
    if (tmp___9) {
      {
      while (1) {
        while_continue___13: ;
        {
        __cil_tmp99 = & debug;
        if (*__cil_tmp99) {
          {
          printk("<7>%s: Number of stop bits requested not supported by device\n",
                 "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c");
          }
        } else {
        }
        }
        goto while_break___13;
      }
      while_break___13: ;
      }
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp100 = old_cflag & 2147483648U;
  __cil_tmp101 = cflag & 2147483648U;
  if (__cil_tmp101 != __cil_tmp100) {
    {
    __cil_tmp102 = (u8 )20;
    __cil_tmp103 = 0 * 4UL;
    __cil_tmp104 = (unsigned long )(modem_ctl) + __cil_tmp103;
    __cil_tmp105 = (unsigned int *)__cil_tmp104;
    cp210x_get_config(port, __cil_tmp102, __cil_tmp105, 16);
    }
    {
    while (1) {
      while_continue___14: ;
      {
      __cil_tmp106 = & debug;
      if (*__cil_tmp106) {
        {
        __cil_tmp107 = 0 * 4UL;
        __cil_tmp108 = (unsigned long )(modem_ctl) + __cil_tmp107;
        __cil_tmp109 = *((unsigned int *)__cil_tmp108);
        __cil_tmp110 = 1 * 4UL;
        __cil_tmp111 = (unsigned long )(modem_ctl) + __cil_tmp110;
        __cil_tmp112 = *((unsigned int *)__cil_tmp111);
        __cil_tmp113 = 2 * 4UL;
        __cil_tmp114 = (unsigned long )(modem_ctl) + __cil_tmp113;
        __cil_tmp115 = *((unsigned int *)__cil_tmp114);
        __cil_tmp116 = 3 * 4UL;
        __cil_tmp117 = (unsigned long )(modem_ctl) + __cil_tmp116;
        __cil_tmp118 = *((unsigned int *)__cil_tmp117);
        printk("<7>%s: %s - read modem controls = 0x%.4x 0x%.4x 0x%.4x 0x%.4x\n",
               "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
               "cp210x_set_termios", __cil_tmp109, __cil_tmp112, __cil_tmp115, __cil_tmp118);
        }
      } else {
      }
      }
      goto while_break___14;
    }
    while_break___14: ;
    }
    if (cflag & 2147483648U) {
      __cil_tmp119 = 0 * 4UL;
      __cil_tmp120 = (unsigned long )(modem_ctl) + __cil_tmp119;
      __cil_tmp121 = 0 * 4UL;
      __cil_tmp122 = (unsigned long )(modem_ctl) + __cil_tmp121;
      __cil_tmp123 = *((unsigned int *)__cil_tmp122);
      *((unsigned int *)__cil_tmp120) = __cil_tmp123 & 4294967172U;
      __cil_tmp124 = 0 * 4UL;
      __cil_tmp125 = (unsigned long )(modem_ctl) + __cil_tmp124;
      __cil_tmp126 = 0 * 4UL;
      __cil_tmp127 = (unsigned long )(modem_ctl) + __cil_tmp126;
      __cil_tmp128 = *((unsigned int *)__cil_tmp127);
      *((unsigned int *)__cil_tmp125) = __cil_tmp128 | 9U;
      __cil_tmp129 = 1 * 4UL;
      __cil_tmp130 = (unsigned long )(modem_ctl) + __cil_tmp129;
      *((unsigned int *)__cil_tmp130) = 128U;
      {
      while (1) {
        while_continue___15: ;
        {
        __cil_tmp131 = & debug;
        if (*__cil_tmp131) {
          {
          printk("<7>%s: %s - flow control = CRTSCTS\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_set_termios");
          }
        } else {
        }
        }
        goto while_break___15;
      }
      while_break___15: ;
      }
    } else {
      __cil_tmp132 = 0 * 4UL;
      __cil_tmp133 = (unsigned long )(modem_ctl) + __cil_tmp132;
      __cil_tmp134 = 0 * 4UL;
      __cil_tmp135 = (unsigned long )(modem_ctl) + __cil_tmp134;
      __cil_tmp136 = *((unsigned int *)__cil_tmp135);
      *((unsigned int *)__cil_tmp133) = __cil_tmp136 & 4294967172U;
      __cil_tmp137 = 0 * 4UL;
      __cil_tmp138 = (unsigned long )(modem_ctl) + __cil_tmp137;
      __cil_tmp139 = 0 * 4UL;
      __cil_tmp140 = (unsigned long )(modem_ctl) + __cil_tmp139;
      __cil_tmp141 = *((unsigned int *)__cil_tmp140);
      *((unsigned int *)__cil_tmp138) = __cil_tmp141 | 1U;
      __cil_tmp142 = 1 * 4UL;
      __cil_tmp143 = (unsigned long )(modem_ctl) + __cil_tmp142;
      __cil_tmp144 = 1 * 4UL;
      __cil_tmp145 = (unsigned long )(modem_ctl) + __cil_tmp144;
      __cil_tmp146 = *((unsigned int *)__cil_tmp145);
      *((unsigned int *)__cil_tmp143) = __cil_tmp146 | 64U;
      {
      while (1) {
        while_continue___16: ;
        {
        __cil_tmp147 = & debug;
        if (*__cil_tmp147) {
          {
          printk("<7>%s: %s - flow control = NONE\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
                 "cp210x_set_termios");
          }
        } else {
        }
        }
        goto while_break___16;
      }
      while_break___16: ;
      }
    }
    {
    while (1) {
      while_continue___17: ;
      {
      __cil_tmp148 = & debug;
      if (*__cil_tmp148) {
        {
        __cil_tmp149 = 0 * 4UL;
        __cil_tmp150 = (unsigned long )(modem_ctl) + __cil_tmp149;
        __cil_tmp151 = *((unsigned int *)__cil_tmp150);
        __cil_tmp152 = 1 * 4UL;
        __cil_tmp153 = (unsigned long )(modem_ctl) + __cil_tmp152;
        __cil_tmp154 = *((unsigned int *)__cil_tmp153);
        __cil_tmp155 = 2 * 4UL;
        __cil_tmp156 = (unsigned long )(modem_ctl) + __cil_tmp155;
        __cil_tmp157 = *((unsigned int *)__cil_tmp156);
        __cil_tmp158 = 3 * 4UL;
        __cil_tmp159 = (unsigned long )(modem_ctl) + __cil_tmp158;
        __cil_tmp160 = *((unsigned int *)__cil_tmp159);
        printk("<7>%s: %s - write modem controls = 0x%.4x 0x%.4x 0x%.4x 0x%.4x\n",
               "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
               "cp210x_set_termios", __cil_tmp151, __cil_tmp154, __cil_tmp157, __cil_tmp160);
        }
      } else {
      }
      }
      goto while_break___17;
    }
    while_break___17: ;
    }
    {
    __cil_tmp161 = (u8 )19;
    __cil_tmp162 = 0 * 4UL;
    __cil_tmp163 = (unsigned long )(modem_ctl) + __cil_tmp162;
    __cil_tmp164 = (unsigned int *)__cil_tmp163;
    cp210x_set_config(port, __cil_tmp161, __cil_tmp164, 16);
    }
  } else {
  }
  }
  return;
}
}
static int cp210x_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear )
{ struct usb_serial_port *port ;
  int tmp___7 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  void *__cil_tmp8 ;
  {
  {
  __cil_tmp6 = (unsigned long )tty;
  __cil_tmp7 = __cil_tmp6 + 584;
  __cil_tmp8 = *((void **)__cil_tmp7);
  port = (struct usb_serial_port *)__cil_tmp8;
  tmp___7 = cp210x_tiocmset_port(port, set, clear);
  }
  return (tmp___7);
}
}
static int cp210x_tiocmset_port(struct usb_serial_port *port , unsigned int set ,
                                unsigned int clear )
{ unsigned int control ;
  int tmp___7 ;
  unsigned int *__cil_tmp6 ;
  bool *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned char __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned int *__cil_tmp12 ;
  unsigned int *__cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  unsigned int *__cil_tmp15 ;
  unsigned int *__cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  unsigned int *__cil_tmp18 ;
  unsigned int *__cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  unsigned int *__cil_tmp21 ;
  unsigned int *__cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  unsigned int *__cil_tmp24 ;
  unsigned int *__cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  unsigned int *__cil_tmp27 ;
  unsigned int *__cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  unsigned int *__cil_tmp30 ;
  unsigned int *__cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  unsigned int *__cil_tmp33 ;
  unsigned int *__cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  bool *__cil_tmp36 ;
  unsigned int *__cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  u8 __cil_tmp39 ;
  {
  __cil_tmp6 = & control;
  *__cil_tmp6 = 0U;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp7 = & debug;
    if (*__cil_tmp7) {
      {
      __cil_tmp8 = (unsigned long )port;
      __cil_tmp9 = __cil_tmp8 + 384;
      __cil_tmp10 = *((unsigned char *)__cil_tmp9);
      __cil_tmp11 = (int )__cil_tmp10;
      printk("<7>%s: %s - port %d\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
             "cp210x_tiocmset_port", __cil_tmp11);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  if (set & 4U) {
    __cil_tmp12 = & control;
    __cil_tmp13 = & control;
    __cil_tmp14 = *__cil_tmp13;
    *__cil_tmp12 = __cil_tmp14 | 2U;
    __cil_tmp15 = & control;
    __cil_tmp16 = & control;
    __cil_tmp17 = *__cil_tmp16;
    *__cil_tmp15 = __cil_tmp17 | 512U;
  } else {
  }
  if (set & 2U) {
    __cil_tmp18 = & control;
    __cil_tmp19 = & control;
    __cil_tmp20 = *__cil_tmp19;
    *__cil_tmp18 = __cil_tmp20 | 1U;
    __cil_tmp21 = & control;
    __cil_tmp22 = & control;
    __cil_tmp23 = *__cil_tmp22;
    *__cil_tmp21 = __cil_tmp23 | 256U;
  } else {
  }
  if (clear & 4U) {
    __cil_tmp24 = & control;
    __cil_tmp25 = & control;
    __cil_tmp26 = *__cil_tmp25;
    *__cil_tmp24 = __cil_tmp26 & 4294967293U;
    __cil_tmp27 = & control;
    __cil_tmp28 = & control;
    __cil_tmp29 = *__cil_tmp28;
    *__cil_tmp27 = __cil_tmp29 | 512U;
  } else {
  }
  if (clear & 2U) {
    __cil_tmp30 = & control;
    __cil_tmp31 = & control;
    __cil_tmp32 = *__cil_tmp31;
    *__cil_tmp30 = __cil_tmp32 & 4294967294U;
    __cil_tmp33 = & control;
    __cil_tmp34 = & control;
    __cil_tmp35 = *__cil_tmp34;
    *__cil_tmp33 = __cil_tmp35 | 256U;
  } else {
  }
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp36 = & debug;
    if (*__cil_tmp36) {
      {
      __cil_tmp37 = & control;
      __cil_tmp38 = *__cil_tmp37;
      printk("<7>%s: %s - control = 0x%.4x\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
             "cp210x_tiocmset_port", __cil_tmp38);
      }
    } else {
    }
    }
    goto while_break___0;
  }
  while_break___0: ;
  }
  {
  __cil_tmp39 = (u8 )7;
  tmp___7 = cp210x_set_config(port, __cil_tmp39, & control, 2);
  }
  return (tmp___7);
}
}
static void cp210x_dtr_rts(struct usb_serial_port *p , int on )
{
  {
  if (on) {
    {
    cp210x_tiocmset_port(p, 6U, 0U);
    }
  } else {
    {
    cp210x_tiocmset_port(p, 0U, 6U);
    }
  }
  return;
}
}
static int cp210x_tiocmget(struct tty_struct *tty )
{ struct usb_serial_port *port ;
  unsigned int control ;
  int result ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  void *__cil_tmp13 ;
  bool *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned char __cil_tmp17 ;
  int __cil_tmp18 ;
  u8 __cil_tmp19 ;
  unsigned int *__cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  unsigned int *__cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  unsigned int *__cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  unsigned int *__cil_tmp26 ;
  unsigned int __cil_tmp27 ;
  unsigned int *__cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  unsigned int *__cil_tmp30 ;
  unsigned int __cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  bool *__cil_tmp36 ;
  unsigned int *__cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  {
  __cil_tmp11 = (unsigned long )tty;
  __cil_tmp12 = __cil_tmp11 + 584;
  __cil_tmp13 = *((void **)__cil_tmp12);
  port = (struct usb_serial_port *)__cil_tmp13;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp14 = & debug;
    if (*__cil_tmp14) {
      {
      __cil_tmp15 = (unsigned long )port;
      __cil_tmp16 = __cil_tmp15 + 384;
      __cil_tmp17 = *((unsigned char *)__cil_tmp16);
      __cil_tmp18 = (int )__cil_tmp17;
      printk("<7>%s: %s - port %d\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
             "cp210x_tiocmget", __cil_tmp18);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp19 = (u8 )8;
  cp210x_get_config(port, __cil_tmp19, & control, 1);
  }
  {
  __cil_tmp20 = & control;
  __cil_tmp21 = *__cil_tmp20;
  if (__cil_tmp21 & 1U) {
    tmp___7 = 2;
  } else {
    tmp___7 = 0;
  }
  }
  {
  __cil_tmp22 = & control;
  __cil_tmp23 = *__cil_tmp22;
  if (__cil_tmp23 & 2U) {
    tmp___8 = 4;
  } else {
    tmp___8 = 0;
  }
  }
  {
  __cil_tmp24 = & control;
  __cil_tmp25 = *__cil_tmp24;
  if (__cil_tmp25 & 16U) {
    tmp___9 = 32;
  } else {
    tmp___9 = 0;
  }
  }
  {
  __cil_tmp26 = & control;
  __cil_tmp27 = *__cil_tmp26;
  if (__cil_tmp27 & 32U) {
    tmp___10 = 256;
  } else {
    tmp___10 = 0;
  }
  }
  {
  __cil_tmp28 = & control;
  __cil_tmp29 = *__cil_tmp28;
  if (__cil_tmp29 & 64U) {
    tmp___11 = 128;
  } else {
    tmp___11 = 0;
  }
  }
  {
  __cil_tmp30 = & control;
  __cil_tmp31 = *__cil_tmp30;
  if (__cil_tmp31 & 128U) {
    tmp___12 = 64;
  } else {
    tmp___12 = 0;
  }
  }
  __cil_tmp32 = tmp___7 | tmp___8;
  __cil_tmp33 = __cil_tmp32 | tmp___9;
  __cil_tmp34 = __cil_tmp33 | tmp___10;
  __cil_tmp35 = __cil_tmp34 | tmp___11;
  result = __cil_tmp35 | tmp___12;
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp36 = & debug;
    if (*__cil_tmp36) {
      {
      __cil_tmp37 = & control;
      __cil_tmp38 = *__cil_tmp37;
      printk("<7>%s: %s - control = 0x%.2x\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
             "cp210x_tiocmget", __cil_tmp38);
      }
    } else {
    }
    }
    goto while_break___0;
  }
  while_break___0: ;
  }
  return (result);
}
}
static void cp210x_break_ctl(struct tty_struct *tty , int break_state )
{ struct usb_serial_port *port ;
  unsigned int state ;
  char const *tmp___7 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  void *__cil_tmp8 ;
  bool *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned char __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned int *__cil_tmp14 ;
  unsigned int *__cil_tmp15 ;
  bool *__cil_tmp16 ;
  unsigned int *__cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  u8 __cil_tmp19 ;
  {
  __cil_tmp6 = (unsigned long )tty;
  __cil_tmp7 = __cil_tmp6 + 584;
  __cil_tmp8 = *((void **)__cil_tmp7);
  port = (struct usb_serial_port *)__cil_tmp8;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp9 = & debug;
    if (*__cil_tmp9) {
      {
      __cil_tmp10 = (unsigned long )port;
      __cil_tmp11 = __cil_tmp10 + 384;
      __cil_tmp12 = *((unsigned char *)__cil_tmp11);
      __cil_tmp13 = (int )__cil_tmp12;
      printk("<7>%s: %s - port %d\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
             "cp210x_break_ctl", __cil_tmp13);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  if (break_state == 0) {
    __cil_tmp14 = & state;
    *__cil_tmp14 = 0U;
  } else {
    __cil_tmp15 = & state;
    *__cil_tmp15 = 1U;
  }
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp16 = & debug;
    if (*__cil_tmp16) {
      {
      __cil_tmp17 = & state;
      __cil_tmp18 = *__cil_tmp17;
      if (__cil_tmp18 == 0U) {
        tmp___7 = "off";
      } else {
        tmp___7 = "on";
      }
      }
      {
      printk("<7>%s: %s - turning break %s\n", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/7522/dscv_tempdir/dscv/ri/32_1/drivers/usb/serial/cp210x.c.common.c",
             "cp210x_break_ctl", tmp___7);
      }
    } else {
    }
    }
    goto while_break___0;
  }
  while_break___0: ;
  }
  {
  __cil_tmp19 = (u8 )5;
  cp210x_set_config(port, __cil_tmp19, & state, 2);
  }
  return;
}
}
static int cp210x_startup(struct usb_serial *serial )
{ struct cp210x_port_private *port_priv ;
  int i ;
  void *tmp___7 ;
  struct usb_device *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned char __cil_tmp8 ;
  int __cil_tmp9 ;
  void *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  struct usb_interface *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct usb_host_interface *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct usb_serial_port *__cil_tmp24 ;
  void *__cil_tmp25 ;
  {
  {
  __cil_tmp5 = *((struct usb_device **)serial);
  usb_reset_device(__cil_tmp5);
  i = 0;
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp6 = (unsigned long )serial;
    __cil_tmp7 = __cil_tmp6 + 26;
    __cil_tmp8 = *((unsigned char *)__cil_tmp7);
    __cil_tmp9 = (int )__cil_tmp8;
    if (i < __cil_tmp9) {
    } else {
      goto while_break;
    }
    }
    {
    tmp___7 = kzalloc(1UL, 208U);
    port_priv = (struct cp210x_port_private *)tmp___7;
    }
    if (! port_priv) {
      return (-12);
    } else {
    }
    {
    __cil_tmp10 = (void *)port_priv;
    memset(__cil_tmp10, 0, 1UL);
    __cil_tmp11 = 0 + 2;
    __cil_tmp12 = (unsigned long )serial;
    __cil_tmp13 = __cil_tmp12 + 16;
    __cil_tmp14 = *((struct usb_interface **)__cil_tmp13);
    __cil_tmp15 = (unsigned long )__cil_tmp14;
    __cil_tmp16 = __cil_tmp15 + 8;
    __cil_tmp17 = *((struct usb_host_interface **)__cil_tmp16);
    __cil_tmp18 = (unsigned long )__cil_tmp17;
    __cil_tmp19 = __cil_tmp18 + __cil_tmp11;
    *((__u8 *)port_priv) = *((__u8 *)__cil_tmp19);
    __cil_tmp20 = i * 8UL;
    __cil_tmp21 = 32 + __cil_tmp20;
    __cil_tmp22 = (unsigned long )serial;
    __cil_tmp23 = __cil_tmp22 + __cil_tmp21;
    __cil_tmp24 = *((struct usb_serial_port **)__cil_tmp23);
    __cil_tmp25 = (void *)port_priv;
    usb_set_serial_port_data(__cil_tmp24, __cil_tmp25);
    i = i + 1;
    }
  }
  while_break: ;
  }
  return (0);
}
}
static void cp210x_release(struct usb_serial *serial )
{ struct cp210x_port_private *port_priv ;
  int i ;
  void *tmp___7 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned char __cil_tmp7 ;
  int __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct usb_serial_port *__cil_tmp13 ;
  void const *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct usb_serial_port *__cil_tmp19 ;
  void *__cil_tmp20 ;
  {
  i = 0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp5 = (unsigned long )serial;
    __cil_tmp6 = __cil_tmp5 + 26;
    __cil_tmp7 = *((unsigned char *)__cil_tmp6);
    __cil_tmp8 = (int )__cil_tmp7;
    if (i < __cil_tmp8) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp9 = i * 8UL;
    __cil_tmp10 = 32 + __cil_tmp9;
    __cil_tmp11 = (unsigned long )serial;
    __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
    __cil_tmp13 = *((struct usb_serial_port **)__cil_tmp12);
    tmp___7 = usb_get_serial_port_data(__cil_tmp13);
    port_priv = (struct cp210x_port_private *)tmp___7;
    __cil_tmp14 = (void const *)port_priv;
    kfree(__cil_tmp14);
    __cil_tmp15 = i * 8UL;
    __cil_tmp16 = 32 + __cil_tmp15;
    __cil_tmp17 = (unsigned long )serial;
    __cil_tmp18 = __cil_tmp17 + __cil_tmp16;
    __cil_tmp19 = *((struct usb_serial_port **)__cil_tmp18);
    __cil_tmp20 = (void *)0;
    usb_set_serial_port_data(__cil_tmp19, __cil_tmp20);
    i = i + 1;
    }
  }
  while_break: ;
  }
  return;
}
}
static int cp210x_driver_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int cp210x_driver_init(void)
{ int tmp___7 ;
  unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  struct usb_serial_driver * const *__cil_tmp4 ;
  {
  {
  __cil_tmp2 = 0 * 8UL;
  __cil_tmp3 = (unsigned long )(serial_drivers) + __cil_tmp2;
  __cil_tmp4 = (struct usb_serial_driver * const *)__cil_tmp3;
  tmp___7 = usb_serial_register_drivers(& cp210x_driver, __cil_tmp4);
  }
  return (tmp___7);
}
}
int init_module(void)
{ int tmp___7 ;
  {
  {
  tmp___7 = cp210x_driver_init();
  }
  return (tmp___7);
}
}
static void cp210x_driver_exit(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void cp210x_driver_exit(void)
{ unsigned long __cil_tmp1 ;
  unsigned long __cil_tmp2 ;
  struct usb_serial_driver * const *__cil_tmp3 ;
  {
  {
  __cil_tmp1 = 0 * 8UL;
  __cil_tmp2 = (unsigned long )(serial_drivers) + __cil_tmp1;
  __cil_tmp3 = (struct usb_serial_driver * const *)__cil_tmp2;
  usb_serial_deregister_drivers(& cp210x_driver, __cil_tmp3);
  }
  return;
}
}
void cleanup_module(void)
{
  {
  {
  cp210x_driver_exit();
  }
  return;
}
}
static char const __mod_description897[60] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'S', (char const )'i', (char const )'l', (char const )'i',
        (char const )'c', (char const )'o', (char const )'n', (char const )' ',
        (char const )'L', (char const )'a', (char const )'b', (char const )'s',
        (char const )' ', (char const )'C', (char const )'P', (char const )'2',
        (char const )'1', (char const )'0', (char const )'x', (char const )' ',
        (char const )'R', (char const )'S', (char const )'2', (char const )'3',
        (char const )'2', (char const )' ', (char const )'s', (char const )'e',
        (char const )'r', (char const )'i', (char const )'a', (char const )'l',
        (char const )' ', (char const )'a', (char const )'d', (char const )'a',
        (char const )'p', (char const )'t', (char const )'o', (char const )'r',
        (char const )' ', (char const )'d', (char const )'r', (char const )'i',
        (char const )'v', (char const )'e', (char const )'r', (char const )'\000'};
static char const __mod_version898[14] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'v', (char const )'e', (char const )'r', (char const )'s',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'v', (char const )'0', (char const )'.', (char const )'0',
        (char const )'9', (char const )'\000'};
static char const __mod_license899[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static char const __param_str_debug[6] = { (char const )'d', (char const )'e', (char const )'b', (char const )'u',
        (char const )'g', (char const )'\000'};
static struct kernel_param const __param_debug __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_debug, (struct kernel_param_ops const *)(& param_ops_bool), (u16 )420,
    (s16 )0, {(void *)(& debug)}};
static char const __mod_debugtype901[20] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'t', (char const )'y', (char const )'p', (char const )'e',
        (char const )'=', (char const )'d', (char const )'e', (char const )'b',
        (char const )'u', (char const )'g', (char const )':', (char const )'b',
        (char const )'o', (char const )'o', (char const )'l', (char const )'\000'};
static char const __mod_debug902[45] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'=', (char const )'d', (char const )'e', (char const )'b',
        (char const )'u', (char const )'g', (char const )':', (char const )'E',
        (char const )'n', (char const )'a', (char const )'b', (char const )'l',
        (char const )'e', (char const )' ', (char const )'v', (char const )'e',
        (char const )'r', (char const )'b', (char const )'o', (char const )'s',
        (char const )'e', (char const )' ', (char const )'d', (char const )'e',
        (char const )'b', (char const )'u', (char const )'g', (char const )'g',
        (char const )'i', (char const )'n', (char const )'g', (char const )' ',
        (char const )'m', (char const )'e', (char const )'s', (char const )'s',
        (char const )'a', (char const )'g', (char const )'e', (char const )'s',
        (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int res ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
static int res_cp210x_open_4 ;
void main(void)
{ struct tty_struct *var_group1 ;
  struct usb_serial_port *var_group2 ;
  int var_cp210x_break_ctl_14_p1 ;
  struct ktermios *var_cp210x_set_termios_9_p2 ;
  unsigned int var_cp210x_tiocmset_10_p1 ;
  unsigned int var_cp210x_tiocmset_10_p2 ;
  struct usb_serial *var_group3 ;
  int var_cp210x_dtr_rts_12_p1 ;
  int ldv_s_cp210x_device_usb_serial_driver ;
  int tmp___7 ;
  int tmp___8 ;
  int __cil_tmp12 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_s_cp210x_device_usb_serial_driver = 0;
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___8 = __VERIFIER_nondet_int();
    }
    if (tmp___8) {
    } else {
      {
      __cil_tmp12 = ldv_s_cp210x_device_usb_serial_driver == 0;
      if (! __cil_tmp12) {
      } else {
        goto while_break;
      }
      }
    }
    {
    tmp___7 = __VERIFIER_nondet_int();
    }
    if (tmp___7 == 0) {
      goto case_0;
    } else
    if (tmp___7 == 1) {
      goto case_1;
    } else
    if (tmp___7 == 2) {
      goto case_2;
    } else
    if (tmp___7 == 3) {
      goto case_3;
    } else
    if (tmp___7 == 4) {
      goto case_4;
    } else
    if (tmp___7 == 5) {
      goto case_5;
    } else
    if (tmp___7 == 6) {
      goto case_6;
    } else
    if (tmp___7 == 7) {
      goto case_7;
    } else
    if (tmp___7 == 8) {
      goto case_8;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        if (ldv_s_cp210x_device_usb_serial_driver == 0) {
          {
          res_cp210x_open_4 = cp210x_open(var_group1, var_group2);
          ldv_check_return_value(res_cp210x_open_4);
          }
          if (res_cp210x_open_4) {
            goto ldv_module_exit;
          } else {
          }
          ldv_s_cp210x_device_usb_serial_driver = ldv_s_cp210x_device_usb_serial_driver + 1;
        } else {
        }
        goto switch_break;
        case_1:
        if (ldv_s_cp210x_device_usb_serial_driver == 1) {
          {
          cp210x_close(var_group2);
          ldv_s_cp210x_device_usb_serial_driver = ldv_s_cp210x_device_usb_serial_driver + 1;
          }
        } else {
        }
        goto switch_break;
        case_2:
        if (ldv_s_cp210x_device_usb_serial_driver == 2) {
          {
          cp210x_release(var_group3);
          ldv_s_cp210x_device_usb_serial_driver = 0;
          }
        } else {
        }
        goto switch_break;
        case_3:
        {
        cp210x_break_ctl(var_group1, var_cp210x_break_ctl_14_p1);
        }
        goto switch_break;
        case_4:
        {
        cp210x_set_termios(var_group1, var_group2, var_cp210x_set_termios_9_p2);
        }
        goto switch_break;
        case_5:
        {
        cp210x_tiocmget(var_group1);
        }
        goto switch_break;
        case_6:
        {
        cp210x_tiocmset(var_group1, var_cp210x_tiocmset_10_p1, var_cp210x_tiocmset_10_p2);
        }
        goto switch_break;
        case_7:
        {
        cp210x_startup(var_group3);
        }
        goto switch_break;
        case_8:
        {
        cp210x_dtr_rts(var_group2, var_cp210x_dtr_rts_12_p1);
        }
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  }
  while_break: ;
  }
  ldv_module_exit:
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_mutex = 1;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  atomic_value_after_dec = __VERIFIER_nondet_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void mutex_lock(struct mutex *lock )
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock )
{
  {
  if (ldv_mutex == 2) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  return;
}
}
long ldv__builtin_expect(long val , long res )
{
  {
  return (val);
}
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void tty_encode_baud_rate(struct tty_struct *arg0, speed_t arg1, speed_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_reset_device(struct usb_device *arg0) {
  return __VERIFIER_nondet_int();
}
void usb_serial_deregister_drivers(struct usb_driver *arg0, struct usb_serial_driver * const *arg1) {
  return;
}
void usb_serial_generic_close(struct usb_serial_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_serial_generic_open(struct tty_struct *arg0, struct usb_serial_port *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_serial_register_drivers(struct usb_driver *arg0, struct usb_serial_driver * const *arg1) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
