extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
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
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __u16 uint16_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
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
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct completion;
struct completion;
struct pid;
struct pid;
struct timespec;
struct timespec;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct file;
struct file;
struct seq_file;
struct seq_file;
struct arch_spinlock;
struct arch_spinlock;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct static_key;
struct kmem_cache;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_5907_29 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_5907_29 ldv_5907 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_5914_31 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_30 {
   s64 lock ;
   struct __anonstruct_ldv_5914_31 ldv_5914 ;
};
typedef union __anonunion_arch_rwlock_t_30 arch_rwlock_t;
struct lockdep_map;
struct lockdep_map;
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
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6122_33 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6123_32 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6122_33 ldv_6122 ;
};
struct spinlock {
   union __anonunion_ldv_6123_32 ldv_6123 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_34 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_34 rwlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct rw_semaphore;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
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
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
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
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos_request;
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
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
struct vm_area_struct;
struct vm_area_struct;
struct cred;
struct cred;
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
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct attribute {
   char const *name ;
   umode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
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
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_13363_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13363_134 ldv_13363 ;
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
struct static_key {
   atomic_t enabled ;
};
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
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
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
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
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
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26U] ;
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
   struct kmem_cache_node *node[1024U] ;
};
struct file_operations;
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
struct watchdog_info {
   __u32 options ;
   __u32 firmware_version ;
   __u8 identity[32U] ;
};
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
union __anonunion_d_u_135 {
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
   unsigned char d_iname[32U] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_135 d_u ;
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
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct prio_tree_node;
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
   struct hlist_head tasks[3U] ;
   struct rcu_head rcu ;
   struct upid numbers[1U] ;
};
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
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control * ) ;
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
struct kiocb;
struct kiocb;
struct pipe_inode_info;
struct pipe_inode_info;
struct poll_table_struct;
struct poll_table_struct;
struct kstatfs;
struct kstatfs;
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
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space;
struct address_space;
struct writeback_control;
struct writeback_control;
union __anonunion_arg_138 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_137 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_138 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_137 read_descriptor_t;
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
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
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
};
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
union __anonunion_ldv_15809_139 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_15828_140 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_15845_141 {
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
   union __anonunion_ldv_15809_139 ldv_15809 ;
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
   union __anonunion_ldv_15828_140 ldv_15828 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_15845_141 ldv_15845 ;
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
union __anonunion_f_u_142 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_142 f_u ;
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
struct __anonstruct_afs_144 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_143 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_144 afs ;
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
   union __anonunion_fl_u_143 fl_u ;
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
   spinlock_t s_inode_lru_lock ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
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
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
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
struct pdev_archdata {
};
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
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
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
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
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
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
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
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
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
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
   void (*release)(struct device * ) ;
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
   unsigned char active : 1 ;
};
typedef unsigned long kernel_ulong_t;
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void *data ;
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_device_info {
   struct device *parent ;
   char const *name ;
   int id ;
   struct resource const *res ;
   unsigned int num_res ;
   void const *data ;
   size_t size_data ;
   u64 dma_mask ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct cs5535_mfgpt_timer;
struct cs5535_mfgpt_timer;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{ long volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (long volatile *)addr;
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; bts %1,%0": "+m" (*__cil_tmp3): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(int nr , unsigned long volatile *addr )
{ long volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (long volatile *)addr;
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; btr %1,%0": "+m" (*__cil_tmp3): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  long volatile *__cil_tmp4 ;
  {
  __cil_tmp4 = (long volatile *)addr;
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*__cil_tmp4): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  long volatile *__cil_tmp4 ;
  {
  __cil_tmp4 = (long volatile *)addr;
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; btr %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*__cil_tmp4): "Ir" (nr): "memory");
  return (oldbit);
}
}
extern int printk(char const * , ...) ;
extern void might_fault(void) ;
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR(void const *ptr )
{ long tmp ;
  unsigned long __cil_tmp3 ;
  int __cil_tmp4 ;
  long __cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )ptr;
  __cil_tmp4 = __cil_tmp3 > 0xfffffffffffff000UL;
  __cil_tmp5 = (long )__cil_tmp4;
  tmp = __builtin_expect(__cil_tmp5, 0L);
  }
  return (tmp);
}
}
extern struct module __this_module ;
extern void __module_get(struct module * ) ;
extern void module_put(struct module * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern int misc_register(struct miscdevice * ) ;
extern int misc_deregister(struct miscdevice * ) ;
extern loff_t no_llseek(struct file * , loff_t , int ) ;
extern int nonseekable_open(struct inode * , struct file * ) ;
extern void platform_device_unregister(struct platform_device * ) ;
extern struct platform_device *platform_device_register_full(struct platform_device_info const * ) ;
__inline static struct platform_device *platform_device_register_resndata(struct device *parent ,
                                                                          char const *name ,
                                                                          int id ,
                                                                          struct resource const *res ,
                                                                          unsigned int num ,
                                                                          void const *data ,
                                                                          size_t size )
{ struct platform_device_info pdevinfo ;
  struct platform_device *tmp ;
  struct platform_device_info *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct platform_device_info const *__cil_tmp18 ;
  {
  {
  __cil_tmp10 = & pdevinfo;
  *((struct device **)__cil_tmp10) = parent;
  __cil_tmp11 = (unsigned long )(& pdevinfo) + 8;
  *((char const **)__cil_tmp11) = name;
  __cil_tmp12 = (unsigned long )(& pdevinfo) + 16;
  *((int *)__cil_tmp12) = id;
  __cil_tmp13 = (unsigned long )(& pdevinfo) + 24;
  *((struct resource const **)__cil_tmp13) = res;
  __cil_tmp14 = (unsigned long )(& pdevinfo) + 32;
  *((unsigned int *)__cil_tmp14) = num;
  __cil_tmp15 = (unsigned long )(& pdevinfo) + 40;
  *((void const **)__cil_tmp15) = data;
  __cil_tmp16 = (unsigned long )(& pdevinfo) + 48;
  *((size_t *)__cil_tmp16) = size;
  __cil_tmp17 = (unsigned long )(& pdevinfo) + 56;
  *((u64 *)__cil_tmp17) = 0ULL;
  __cil_tmp18 = (struct platform_device_info const *)(& pdevinfo);
  tmp = platform_device_register_full(__cil_tmp18);
  }
  return (tmp);
}
}
__inline static struct platform_device *platform_device_register_simple(char const *name ,
                                                                        int id , struct resource const *res ,
                                                                        unsigned int num )
{ struct platform_device *tmp ;
  struct device *__cil_tmp6 ;
  void const *__cil_tmp7 ;
  {
  {
  __cil_tmp6 = (struct device *)0;
  __cil_tmp7 = (void const *)0;
  tmp = platform_device_register_resndata(__cil_tmp6, name, id, res, num, __cil_tmp7,
                                          0UL);
  }
  return (tmp);
}
}
extern int platform_driver_register(struct platform_driver * ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{ unsigned long tmp ;
  {
  {
  might_fault();
  tmp = _copy_to_user(dst, src, size);
  }
  return ((int )tmp);
}
}
extern void cs5535_mfgpt_write(struct cs5535_mfgpt_timer * , uint16_t , uint16_t ) ;
extern int cs5535_mfgpt_toggle_event(struct cs5535_mfgpt_timer * , int , int , int ) ;
extern struct cs5535_mfgpt_timer *cs5535_mfgpt_alloc_timer(int , int ) ;
static int timeout = 60;
static bool nowayout = (bool )1;
static struct platform_device *geodewdt_platform_device ;
static unsigned long wdt_flags ;
static struct cs5535_mfgpt_timer *wdt_timer ;
static int safe_close ;
static void geodewdt_ping(void)
{ uint16_t __cil_tmp1 ;
  uint16_t __cil_tmp2 ;
  uint16_t __cil_tmp3 ;
  uint16_t __cil_tmp4 ;
  uint16_t __cil_tmp5 ;
  uint16_t __cil_tmp6 ;
  {
  {
  __cil_tmp1 = (uint16_t )6;
  __cil_tmp2 = (uint16_t )0;
  cs5535_mfgpt_write(wdt_timer, __cil_tmp1, __cil_tmp2);
  __cil_tmp3 = (uint16_t )4;
  __cil_tmp4 = (uint16_t )0;
  cs5535_mfgpt_write(wdt_timer, __cil_tmp3, __cil_tmp4);
  __cil_tmp5 = (uint16_t )6;
  __cil_tmp6 = (uint16_t )32768;
  cs5535_mfgpt_write(wdt_timer, __cil_tmp5, __cil_tmp6);
  }
  return;
}
}
static void geodewdt_disable(void)
{ uint16_t __cil_tmp1 ;
  uint16_t __cil_tmp2 ;
  uint16_t __cil_tmp3 ;
  uint16_t __cil_tmp4 ;
  {
  {
  __cil_tmp1 = (uint16_t )6;
  __cil_tmp2 = (uint16_t )0;
  cs5535_mfgpt_write(wdt_timer, __cil_tmp1, __cil_tmp2);
  __cil_tmp3 = (uint16_t )4;
  __cil_tmp4 = (uint16_t )0;
  cs5535_mfgpt_write(wdt_timer, __cil_tmp3, __cil_tmp4);
  }
  return;
}
}
static int geodewdt_set_heartbeat(int val )
{ uint16_t __cil_tmp2 ;
  uint16_t __cil_tmp3 ;
  uint16_t __cil_tmp4 ;
  uint16_t __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  int __cil_tmp8 ;
  uint16_t __cil_tmp9 ;
  uint16_t __cil_tmp10 ;
  uint16_t __cil_tmp11 ;
  uint16_t __cil_tmp12 ;
  uint16_t __cil_tmp13 ;
  int *__cil_tmp14 ;
  {
  if (val <= 0) {
    return (-22);
  } else
  if (val > 131) {
    return (-22);
  } else {
  }
  {
  __cil_tmp2 = (uint16_t )6;
  __cil_tmp3 = (uint16_t )0;
  cs5535_mfgpt_write(wdt_timer, __cil_tmp2, __cil_tmp3);
  __cil_tmp4 = (uint16_t )2;
  __cil_tmp5 = (uint16_t )val;
  __cil_tmp6 = (unsigned int )__cil_tmp5;
  __cil_tmp7 = __cil_tmp6 * 500U;
  __cil_tmp8 = (int )__cil_tmp7;
  __cil_tmp9 = (uint16_t )__cil_tmp8;
  cs5535_mfgpt_write(wdt_timer, __cil_tmp4, __cil_tmp9);
  __cil_tmp10 = (uint16_t )4;
  __cil_tmp11 = (uint16_t )0;
  cs5535_mfgpt_write(wdt_timer, __cil_tmp10, __cil_tmp11);
  __cil_tmp12 = (uint16_t )6;
  __cil_tmp13 = (uint16_t )32768;
  cs5535_mfgpt_write(wdt_timer, __cil_tmp12, __cil_tmp13);
  __cil_tmp14 = & timeout;
  *__cil_tmp14 = val;
  }
  return (0);
}
}
static int geodewdt_open(struct inode *inode , struct file *file )
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned long volatile *__cil_tmp6 ;
  unsigned long volatile *__cil_tmp7 ;
  {
  {
  __cil_tmp6 = (unsigned long volatile *)(& wdt_flags);
  tmp = test_and_set_bit(1, __cil_tmp6);
  }
  if (tmp != 0) {
    return (-16);
  } else {
  }
  {
  __cil_tmp7 = (unsigned long volatile *)(& wdt_flags);
  tmp___0 = test_and_clear_bit(2, __cil_tmp7);
  }
  if (tmp___0 == 0) {
    {
    __module_get(& __this_module);
    }
  } else {
  }
  {
  geodewdt_ping();
  tmp___1 = nonseekable_open(inode, file);
  }
  return (tmp___1);
}
}
static int geodewdt_release(struct inode *inode , struct file *file )
{ unsigned long volatile *__cil_tmp3 ;
  unsigned long volatile *__cil_tmp4 ;
  {
  if (safe_close != 0) {
    {
    geodewdt_disable();
    module_put(& __this_module);
    }
  } else {
    {
    printk("<2>geodewdt: Unexpected close - watchdog is not stopping\n");
    geodewdt_ping();
    __cil_tmp3 = (unsigned long volatile *)(& wdt_flags);
    set_bit(2U, __cil_tmp3);
    }
  }
  {
  __cil_tmp4 = (unsigned long volatile *)(& wdt_flags);
  clear_bit(1, __cil_tmp4);
  safe_close = 0;
  }
  return (0);
}
}
static ssize_t geodewdt_write(struct file *file , char const *data , size_t len ,
                              loff_t *ppos )
{ size_t i ;
  char c ;
  int __ret_gu ;
  unsigned long __val_gu ;
  bool *__cil_tmp9 ;
  bool __cil_tmp10 ;
  signed char __cil_tmp11 ;
  int __cil_tmp12 ;
  {
  if (len != 0UL) {
    {
    __cil_tmp9 = & nowayout;
    __cil_tmp10 = *__cil_tmp9;
    if (! __cil_tmp10) {
      safe_close = 0;
      i = 0UL;
      goto ldv_19231;
      ldv_19230:
      {
      might_fault();
      }
      if (1 == 1) {
        goto case_1;
      } else
      if (1 == 2) {
        goto case_2;
      } else
      if (1 == 4) {
        goto case_4;
      } else
      if (1 == 8) {
        goto case_8;
      } else {
        {
        goto switch_default;
        if (0) {
          case_1:
          __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" (data + i));
          goto ldv_19224;
          case_2:
          __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" (data + i));
          goto ldv_19224;
          case_4:
          __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" (data + i));
          goto ldv_19224;
          case_8:
          __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" (data + i));
          goto ldv_19224;
          switch_default:
          __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" (data + i));
          goto ldv_19224;
        } else {
          switch_break: ;
        }
        }
      }
      ldv_19224:
      c = (char )__val_gu;
      if (__ret_gu != 0) {
        return (-14L);
      } else {
      }
      {
      __cil_tmp11 = (signed char )c;
      __cil_tmp12 = (int )__cil_tmp11;
      if (__cil_tmp12 == 86) {
        safe_close = 1;
      } else {
      }
      }
      i = i + 1UL;
      ldv_19231: ;
      if (i != len) {
        goto ldv_19230;
      } else {
        goto ldv_19232;
      }
      ldv_19232: ;
    } else {
    }
    }
    {
    geodewdt_ping();
    }
  } else {
  }
  return ((ssize_t )len);
}
}
static long geodewdt_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{ void *argp ;
  int *p ;
  int interval ;
  struct watchdog_info ident ;
  long tmp___0 ;
  int tmp___1 ;
  int __ret_pu ;
  int __pu_val ;
  int options ;
  int ret ;
  int __ret_gu ;
  unsigned long __val_gu ;
  int __ret_gu___0 ;
  unsigned long __val_gu___0 ;
  int tmp___2 ;
  int __ret_pu___0 ;
  int __pu_val___0 ;
  struct watchdog_info *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  void const *__cil_tmp120 ;
  int __cil_tmp121 ;
  int *__cil_tmp122 ;
  {
  argp = (void *)arg;
  p = (int *)argp;
  __cil_tmp22 = & ident;
  *((__u32 *)__cil_tmp22) = 33152U;
  __cil_tmp23 = (unsigned long )(& ident) + 4;
  *((__u32 *)__cil_tmp23) = 1U;
  __cil_tmp24 = 0 * 1UL;
  __cil_tmp25 = 8 + __cil_tmp24;
  __cil_tmp26 = (unsigned long )(& ident) + __cil_tmp25;
  *((__u8 *)__cil_tmp26) = (__u8 )'G';
  __cil_tmp27 = 1 * 1UL;
  __cil_tmp28 = 8 + __cil_tmp27;
  __cil_tmp29 = (unsigned long )(& ident) + __cil_tmp28;
  *((__u8 *)__cil_tmp29) = (__u8 )'e';
  __cil_tmp30 = 2 * 1UL;
  __cil_tmp31 = 8 + __cil_tmp30;
  __cil_tmp32 = (unsigned long )(& ident) + __cil_tmp31;
  *((__u8 *)__cil_tmp32) = (__u8 )'o';
  __cil_tmp33 = 3 * 1UL;
  __cil_tmp34 = 8 + __cil_tmp33;
  __cil_tmp35 = (unsigned long )(& ident) + __cil_tmp34;
  *((__u8 *)__cil_tmp35) = (__u8 )'d';
  __cil_tmp36 = 4 * 1UL;
  __cil_tmp37 = 8 + __cil_tmp36;
  __cil_tmp38 = (unsigned long )(& ident) + __cil_tmp37;
  *((__u8 *)__cil_tmp38) = (__u8 )'e';
  __cil_tmp39 = 5 * 1UL;
  __cil_tmp40 = 8 + __cil_tmp39;
  __cil_tmp41 = (unsigned long )(& ident) + __cil_tmp40;
  *((__u8 *)__cil_tmp41) = (__u8 )' ';
  __cil_tmp42 = 6 * 1UL;
  __cil_tmp43 = 8 + __cil_tmp42;
  __cil_tmp44 = (unsigned long )(& ident) + __cil_tmp43;
  *((__u8 *)__cil_tmp44) = (__u8 )'G';
  __cil_tmp45 = 7 * 1UL;
  __cil_tmp46 = 8 + __cil_tmp45;
  __cil_tmp47 = (unsigned long )(& ident) + __cil_tmp46;
  *((__u8 *)__cil_tmp47) = (__u8 )'X';
  __cil_tmp48 = 8 * 1UL;
  __cil_tmp49 = 8 + __cil_tmp48;
  __cil_tmp50 = (unsigned long )(& ident) + __cil_tmp49;
  *((__u8 *)__cil_tmp50) = (__u8 )'/';
  __cil_tmp51 = 9 * 1UL;
  __cil_tmp52 = 8 + __cil_tmp51;
  __cil_tmp53 = (unsigned long )(& ident) + __cil_tmp52;
  *((__u8 *)__cil_tmp53) = (__u8 )'L';
  __cil_tmp54 = 10 * 1UL;
  __cil_tmp55 = 8 + __cil_tmp54;
  __cil_tmp56 = (unsigned long )(& ident) + __cil_tmp55;
  *((__u8 *)__cil_tmp56) = (__u8 )'X';
  __cil_tmp57 = 11 * 1UL;
  __cil_tmp58 = 8 + __cil_tmp57;
  __cil_tmp59 = (unsigned long )(& ident) + __cil_tmp58;
  *((__u8 *)__cil_tmp59) = (__u8 )' ';
  __cil_tmp60 = 12 * 1UL;
  __cil_tmp61 = 8 + __cil_tmp60;
  __cil_tmp62 = (unsigned long )(& ident) + __cil_tmp61;
  *((__u8 *)__cil_tmp62) = (__u8 )'W';
  __cil_tmp63 = 13 * 1UL;
  __cil_tmp64 = 8 + __cil_tmp63;
  __cil_tmp65 = (unsigned long )(& ident) + __cil_tmp64;
  *((__u8 *)__cil_tmp65) = (__u8 )'D';
  __cil_tmp66 = 14 * 1UL;
  __cil_tmp67 = 8 + __cil_tmp66;
  __cil_tmp68 = (unsigned long )(& ident) + __cil_tmp67;
  *((__u8 *)__cil_tmp68) = (__u8 )'T';
  __cil_tmp69 = 15 * 1UL;
  __cil_tmp70 = 8 + __cil_tmp69;
  __cil_tmp71 = (unsigned long )(& ident) + __cil_tmp70;
  *((__u8 *)__cil_tmp71) = (__u8 )'\000';
  __cil_tmp72 = 16 * 1UL;
  __cil_tmp73 = 8 + __cil_tmp72;
  __cil_tmp74 = (unsigned long )(& ident) + __cil_tmp73;
  *((__u8 *)__cil_tmp74) = (unsigned char)0;
  __cil_tmp75 = 17 * 1UL;
  __cil_tmp76 = 8 + __cil_tmp75;
  __cil_tmp77 = (unsigned long )(& ident) + __cil_tmp76;
  *((__u8 *)__cil_tmp77) = (unsigned char)0;
  __cil_tmp78 = 18 * 1UL;
  __cil_tmp79 = 8 + __cil_tmp78;
  __cil_tmp80 = (unsigned long )(& ident) + __cil_tmp79;
  *((__u8 *)__cil_tmp80) = (unsigned char)0;
  __cil_tmp81 = 19 * 1UL;
  __cil_tmp82 = 8 + __cil_tmp81;
  __cil_tmp83 = (unsigned long )(& ident) + __cil_tmp82;
  *((__u8 *)__cil_tmp83) = (unsigned char)0;
  __cil_tmp84 = 20 * 1UL;
  __cil_tmp85 = 8 + __cil_tmp84;
  __cil_tmp86 = (unsigned long )(& ident) + __cil_tmp85;
  *((__u8 *)__cil_tmp86) = (unsigned char)0;
  __cil_tmp87 = 21 * 1UL;
  __cil_tmp88 = 8 + __cil_tmp87;
  __cil_tmp89 = (unsigned long )(& ident) + __cil_tmp88;
  *((__u8 *)__cil_tmp89) = (unsigned char)0;
  __cil_tmp90 = 22 * 1UL;
  __cil_tmp91 = 8 + __cil_tmp90;
  __cil_tmp92 = (unsigned long )(& ident) + __cil_tmp91;
  *((__u8 *)__cil_tmp92) = (unsigned char)0;
  __cil_tmp93 = 23 * 1UL;
  __cil_tmp94 = 8 + __cil_tmp93;
  __cil_tmp95 = (unsigned long )(& ident) + __cil_tmp94;
  *((__u8 *)__cil_tmp95) = (unsigned char)0;
  __cil_tmp96 = 24 * 1UL;
  __cil_tmp97 = 8 + __cil_tmp96;
  __cil_tmp98 = (unsigned long )(& ident) + __cil_tmp97;
  *((__u8 *)__cil_tmp98) = (unsigned char)0;
  __cil_tmp99 = 25 * 1UL;
  __cil_tmp100 = 8 + __cil_tmp99;
  __cil_tmp101 = (unsigned long )(& ident) + __cil_tmp100;
  *((__u8 *)__cil_tmp101) = (unsigned char)0;
  __cil_tmp102 = 26 * 1UL;
  __cil_tmp103 = 8 + __cil_tmp102;
  __cil_tmp104 = (unsigned long )(& ident) + __cil_tmp103;
  *((__u8 *)__cil_tmp104) = (unsigned char)0;
  __cil_tmp105 = 27 * 1UL;
  __cil_tmp106 = 8 + __cil_tmp105;
  __cil_tmp107 = (unsigned long )(& ident) + __cil_tmp106;
  *((__u8 *)__cil_tmp107) = (unsigned char)0;
  __cil_tmp108 = 28 * 1UL;
  __cil_tmp109 = 8 + __cil_tmp108;
  __cil_tmp110 = (unsigned long )(& ident) + __cil_tmp109;
  *((__u8 *)__cil_tmp110) = (unsigned char)0;
  __cil_tmp111 = 29 * 1UL;
  __cil_tmp112 = 8 + __cil_tmp111;
  __cil_tmp113 = (unsigned long )(& ident) + __cil_tmp112;
  *((__u8 *)__cil_tmp113) = (unsigned char)0;
  __cil_tmp114 = 30 * 1UL;
  __cil_tmp115 = 8 + __cil_tmp114;
  __cil_tmp116 = (unsigned long )(& ident) + __cil_tmp115;
  *((__u8 *)__cil_tmp116) = (unsigned char)0;
  __cil_tmp117 = 31 * 1UL;
  __cil_tmp118 = 8 + __cil_tmp117;
  __cil_tmp119 = (unsigned long )(& ident) + __cil_tmp118;
  *((__u8 *)__cil_tmp119) = (unsigned char)0;
  if ((int )cmd == -2144839936) {
    goto case_neg_2144839936;
  } else
  if ((int )cmd == -2147199231) {
    goto case_neg_2147199231;
  } else
  if ((int )cmd == -2147199230) {
    goto case_neg_2147199230;
  } else
  if ((int )cmd == -2147199228) {
    goto case_neg_2147199228;
  } else
  if ((int )cmd == -2147199227) {
    goto case_neg_2147199227;
  } else
  if ((int )cmd == -1073457402) {
    goto case_neg_1073457402;
  } else
  if ((int )cmd == -2147199225) {
    goto case_neg_2147199225;
  } else {
    {
    goto switch_default___3;
    if (0) {
      case_neg_2144839936:
      {
      __cil_tmp120 = (void const *)(& ident);
      tmp___1 = copy_to_user(argp, __cil_tmp120, 40U);
      }
      if (tmp___1 != 0) {
        tmp___0 = -14L;
      } else {
        tmp___0 = 0L;
      }
      return (tmp___0);
      case_neg_2147199231: ;
      case_neg_2147199230:
      {
      might_fault();
      __pu_val = 0;
      }
      if (4 == 1) {
        goto case_1;
      } else
      if (4 == 2) {
        goto case_2;
      } else
      if (4 == 4) {
        goto case_4;
      } else
      if (4 == 8) {
        goto case_8;
      } else {
        {
        goto switch_default;
        if (0) {
          case_1:
          __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val),
                               "c" (p): "ebx");
          goto ldv_19248;
          case_2:
          __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val),
                               "c" (p): "ebx");
          goto ldv_19248;
          case_4:
          __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val),
                               "c" (p): "ebx");
          goto ldv_19248;
          case_8:
          __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val),
                               "c" (p): "ebx");
          goto ldv_19248;
          switch_default:
          __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val),
                               "c" (p): "ebx");
          goto ldv_19248;
        } else {
          switch_break___0: ;
        }
        }
      }
      ldv_19248: ;
      return ((long )__ret_pu);
      case_neg_2147199228:
      {
      ret = -22;
      might_fault();
      }
      if (4 == 1) {
        goto case_1___0;
      } else
      if (4 == 2) {
        goto case_2___0;
      } else
      if (4 == 4) {
        goto case_4___0;
      } else
      if (4 == 8) {
        goto case_8___0;
      } else {
        {
        goto switch_default___0;
        if (0) {
          case_1___0:
          __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" (p));
          goto ldv_19260;
          case_2___0:
          __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" (p));
          goto ldv_19260;
          case_4___0:
          __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" (p));
          goto ldv_19260;
          case_8___0:
          __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" (p));
          goto ldv_19260;
          switch_default___0:
          __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" (p));
          goto ldv_19260;
        } else {
          switch_break___1: ;
        }
        }
      }
      ldv_19260:
      options = (int )__val_gu;
      if (__ret_gu != 0) {
        return (-14L);
      } else {
      }
      if (options & 1) {
        {
        geodewdt_disable();
        ret = 0;
        }
      } else {
      }
      {
      __cil_tmp121 = options & 2;
      if (__cil_tmp121 != 0) {
        {
        geodewdt_ping();
        ret = 0;
        }
      } else {
      }
      }
      return ((long )ret);
      case_neg_2147199227:
      {
      geodewdt_ping();
      }
      return (0L);
      case_neg_1073457402:
      {
      might_fault();
      }
      if (4 == 1) {
        goto case_1___1;
      } else
      if (4 == 2) {
        goto case_2___1;
      } else
      if (4 == 4) {
        goto case_4___1;
      } else
      if (4 == 8) {
        goto case_8___1;
      } else {
        {
        goto switch_default___1;
        if (0) {
          case_1___1:
          __asm__ volatile ("call __get_user_1": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" (p));
          goto ldv_19271;
          case_2___1:
          __asm__ volatile ("call __get_user_2": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" (p));
          goto ldv_19271;
          case_4___1:
          __asm__ volatile ("call __get_user_4": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" (p));
          goto ldv_19271;
          case_8___1:
          __asm__ volatile ("call __get_user_8": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" (p));
          goto ldv_19271;
          switch_default___1:
          __asm__ volatile ("call __get_user_X": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" (p));
          goto ldv_19271;
        } else {
          switch_break___2: ;
        }
        }
      }
      ldv_19271:
      interval = (int )__val_gu___0;
      if (__ret_gu___0 != 0) {
        return (-14L);
      } else {
      }
      {
      tmp___2 = geodewdt_set_heartbeat(interval);
      }
      if (tmp___2 != 0) {
        return (-22L);
      } else {
      }
      case_neg_2147199225:
      {
      might_fault();
      __cil_tmp122 = & timeout;
      __pu_val___0 = *__cil_tmp122;
      }
      if (4 == 1) {
        goto case_1___2;
      } else
      if (4 == 2) {
        goto case_2___2;
      } else
      if (4 == 4) {
        goto case_4___2;
      } else
      if (4 == 8) {
        goto case_8___2;
      } else {
        {
        goto switch_default___2;
        if (0) {
          case_1___2:
          __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                               "c" (p): "ebx");
          goto ldv_19281;
          case_2___2:
          __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                               "c" (p): "ebx");
          goto ldv_19281;
          case_4___2:
          __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                               "c" (p): "ebx");
          goto ldv_19281;
          case_8___2:
          __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                               "c" (p): "ebx");
          goto ldv_19281;
          switch_default___2:
          __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                               "c" (p): "ebx");
          goto ldv_19281;
        } else {
          switch_break___3: ;
        }
        }
      }
      ldv_19281: ;
      return ((long )__ret_pu___0);
      switch_default___3: ;
      return (-25L);
    } else {
      switch_break: ;
    }
    }
  }
  return (0L);
}
}
static struct file_operations const geodewdt_fops =
     {& __this_module, & no_llseek, (ssize_t (*)(struct file * , char * , size_t ,
                                               loff_t * ))0, & geodewdt_write, (ssize_t (*)(struct kiocb * ,
                                                                                            struct iovec const * ,
                                                                                            unsigned long ,
                                                                                            loff_t ))0,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (int (*)(struct file * , void * , int (*)(void * , char const * , int , loff_t ,
                                              u64 , unsigned int ) ))0, (unsigned int (*)(struct file * ,
                                                                                            struct poll_table_struct * ))0,
    & geodewdt_ioctl, (long (*)(struct file * , unsigned int , unsigned long ))0,
    (int (*)(struct file * , struct vm_area_struct * ))0, & geodewdt_open, (int (*)(struct file * ,
                                                                                    fl_owner_t ))0,
    & geodewdt_release, (int (*)(struct file * , loff_t , loff_t , int ))0, (int (*)(struct kiocb * ,
                                                                                        int ))0,
    (int (*)(int , struct file * , int ))0, (int (*)(struct file * , int , struct file_lock * ))0,
    (ssize_t (*)(struct file * , struct page * , int , size_t , loff_t * , int ))0,
    (unsigned long (*)(struct file * , unsigned long , unsigned long , unsigned long ,
                       unsigned long ))0, (int (*)(int ))0, (int (*)(struct file * ,
                                                                       int , struct file_lock * ))0,
    (ssize_t (*)(struct pipe_inode_info * , struct file * , loff_t * , size_t , unsigned int ))0,
    (ssize_t (*)(struct file * , loff_t * , struct pipe_inode_info * , size_t , unsigned int ))0,
    (int (*)(struct file * , long , struct file_lock ** ))0, (long (*)(struct file * ,
                                                                        int , loff_t ,
                                                                        loff_t ))0};
static struct miscdevice geodewdt_miscdev =
     {130, "watchdog", & geodewdt_fops, {(struct list_head *)0, (struct list_head *)0},
    (struct device *)0, (struct device *)0, (char const *)0, (unsigned short)0};
static int geodewdt_probe(struct platform_device *dev )
{ int ret ;
  struct cs5535_mfgpt_timer *__cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  uint16_t __cil_tmp6 ;
  uint16_t __cil_tmp7 ;
  uint16_t __cil_tmp8 ;
  int *__cil_tmp9 ;
  int __cil_tmp10 ;
  uint16_t __cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  int __cil_tmp14 ;
  uint16_t __cil_tmp15 ;
  {
  {
  wdt_timer = cs5535_mfgpt_alloc_timer(-1, 1);
  }
  {
  __cil_tmp3 = (struct cs5535_mfgpt_timer *)0;
  __cil_tmp4 = (unsigned long )__cil_tmp3;
  __cil_tmp5 = (unsigned long )wdt_timer;
  if (__cil_tmp5 == __cil_tmp4) {
    {
    printk("<3>geodewdt: No timers were available\n");
    }
    return (-19);
  } else {
  }
  }
  {
  __cil_tmp6 = (uint16_t )6;
  __cil_tmp7 = (uint16_t )774;
  cs5535_mfgpt_write(wdt_timer, __cil_tmp6, __cil_tmp7);
  cs5535_mfgpt_toggle_event(wdt_timer, 1, 3, 1);
  __cil_tmp8 = (uint16_t )2;
  __cil_tmp9 = & timeout;
  __cil_tmp10 = *__cil_tmp9;
  __cil_tmp11 = (uint16_t )__cil_tmp10;
  __cil_tmp12 = (unsigned int )__cil_tmp11;
  __cil_tmp13 = __cil_tmp12 * 500U;
  __cil_tmp14 = (int )__cil_tmp13;
  __cil_tmp15 = (uint16_t )__cil_tmp14;
  cs5535_mfgpt_write(wdt_timer, __cil_tmp8, __cil_tmp15);
  ret = misc_register(& geodewdt_miscdev);
  }
  return (ret);
}
}
static int geodewdt_remove(struct platform_device *dev )
{
  {
  {
  misc_deregister(& geodewdt_miscdev);
  }
  return (0);
}
}
static void geodewdt_shutdown(struct platform_device *dev )
{
  {
  {
  geodewdt_disable();
  }
  return;
}
}
static struct platform_driver geodewdt_driver = {& geodewdt_probe, & geodewdt_remove, & geodewdt_shutdown, (int (*)(struct platform_device * ,
                                                                       pm_message_t ))0,
    (int (*)(struct platform_device * ))0, {"geodewdt", (struct bus_type *)0, & __this_module,
                                            (char const *)0, (_Bool)0, (struct of_device_id const *)0,
                                            (int (*)(struct device * ))0, (int (*)(struct device * ))0,
                                            (void (*)(struct device * ))0, (int (*)(struct device * ,
                                                                                    pm_message_t ))0,
                                            (int (*)(struct device * ))0, (struct attribute_group const **)0,
                                            (struct dev_pm_ops const *)0, (struct driver_private *)0},
    (struct platform_device_id const *)0};
static int geodewdt_init(void)
{ int ret ;
  long tmp ;
  long tmp___0 ;
  struct resource const *__cil_tmp4 ;
  void const *__cil_tmp5 ;
  void const *__cil_tmp6 ;
  {
  {
  ret = platform_driver_register(& geodewdt_driver);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp4 = (struct resource const *)0;
  geodewdt_platform_device = platform_device_register_simple("geodewdt", -1, __cil_tmp4,
                                                             0U);
  __cil_tmp5 = (void const *)geodewdt_platform_device;
  tmp___0 = IS_ERR(__cil_tmp5);
  }
  if (tmp___0 != 0L) {
    {
    __cil_tmp6 = (void const *)geodewdt_platform_device;
    tmp = PTR_ERR(__cil_tmp6);
    ret = (int )tmp;
    }
    goto err;
  } else {
  }
  return (0);
  err:
  {
  platform_driver_unregister(& geodewdt_driver);
  }
  return (ret);
}
}
static void geodewdt_exit(void)
{
  {
  {
  platform_device_unregister(geodewdt_platform_device);
  platform_driver_unregister(& geodewdt_driver);
  }
  return;
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct file *var_group1 ;
  char const *var_geodewdt_write_5_p1 ;
  size_t var_geodewdt_write_5_p2 ;
  loff_t *var_geodewdt_write_5_p3 ;
  ssize_t res_geodewdt_write_5 ;
  unsigned int var_geodewdt_ioctl_6_p1 ;
  unsigned long var_geodewdt_ioctl_6_p2 ;
  struct inode *var_group2 ;
  int res_geodewdt_open_3 ;
  struct platform_device *var_group3 ;
  int res_geodewdt_probe_7 ;
  int ldv_s_geodewdt_fops_file_operations ;
  int ldv_s_geodewdt_driver_platform_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int __cil_tmp17 ;
  {
  {
  ldv_s_geodewdt_fops_file_operations = 0;
  ldv_s_geodewdt_driver_platform_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = geodewdt_init();
  }
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_19359;
  ldv_19358:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 == 0) {
    goto case_0;
  } else
  if (tmp___0 == 1) {
    goto case_1;
  } else
  if (tmp___0 == 2) {
    goto case_2;
  } else
  if (tmp___0 == 3) {
    goto case_3;
  } else
  if (tmp___0 == 4) {
    goto case_4;
  } else
  if (tmp___0 == 5) {
    goto case_5;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0: ;
      if (ldv_s_geodewdt_fops_file_operations == 0) {
        {
        res_geodewdt_open_3 = geodewdt_open(var_group2, var_group1);
        ldv_check_return_value(res_geodewdt_open_3);
        }
        if (res_geodewdt_open_3 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_geodewdt_fops_file_operations = ldv_s_geodewdt_fops_file_operations + 1;
      } else {
      }
      goto ldv_19351;
      case_1: ;
      if (ldv_s_geodewdt_fops_file_operations == 1) {
        {
        res_geodewdt_write_5 = geodewdt_write(var_group1, var_geodewdt_write_5_p1,
                                              var_geodewdt_write_5_p2, var_geodewdt_write_5_p3);
        __cil_tmp17 = (int )res_geodewdt_write_5;
        ldv_check_return_value(__cil_tmp17);
        }
        if (res_geodewdt_write_5 < 0L) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_geodewdt_fops_file_operations = ldv_s_geodewdt_fops_file_operations + 1;
      } else {
      }
      goto ldv_19351;
      case_2: ;
      if (ldv_s_geodewdt_fops_file_operations == 2) {
        {
        geodewdt_release(var_group2, var_group1);
        ldv_s_geodewdt_fops_file_operations = 0;
        }
      } else {
      }
      goto ldv_19351;
      case_3:
      {
      geodewdt_ioctl(var_group1, var_geodewdt_ioctl_6_p1, var_geodewdt_ioctl_6_p2);
      }
      goto ldv_19351;
      case_4: ;
      if (ldv_s_geodewdt_driver_platform_driver == 0) {
        {
        res_geodewdt_probe_7 = geodewdt_probe(var_group3);
        ldv_check_return_value(res_geodewdt_probe_7);
        }
        if (res_geodewdt_probe_7 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_geodewdt_driver_platform_driver = ldv_s_geodewdt_driver_platform_driver + 1;
      } else {
      }
      goto ldv_19351;
      case_5: ;
      if (ldv_s_geodewdt_driver_platform_driver == 1) {
        {
        geodewdt_shutdown(var_group3);
        ldv_s_geodewdt_driver_platform_driver = 0;
        }
      } else {
      }
      goto ldv_19351;
      switch_default: ;
      goto ldv_19351;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_19351: ;
  ldv_19359:
  {
  tmp___1 = __VERIFIER_nondet_int();
  }
  if (tmp___1 != 0) {
    goto ldv_19358;
  } else
  if (ldv_s_geodewdt_fops_file_operations != 0) {
    goto ldv_19358;
  } else
  if (ldv_s_geodewdt_driver_platform_driver != 0) {
    goto ldv_19358;
  } else {
    goto ldv_19360;
  }
  ldv_19360: ;
  ldv_module_exit:
  {
  geodewdt_exit();
  }
  ldv_final:
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
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{ struct page *tmp ;
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  {
  tmp = ldv_some_page();
  }
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    {
    ldv_blast_assert();
    }
  } else {
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{ int is_lock ;
  {
  {
  is_lock = __VERIFIER_nondet_int();
  }
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  kmem_cache_alloc(ldv_func_arg1, ldv_func_arg2);
  }
  return ((void *)0);
}
}
void __module_get(struct module *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
struct cs5535_mfgpt_timer *cs5535_mfgpt_alloc_timer(int arg0, int arg1) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int cs5535_mfgpt_toggle_event(struct cs5535_mfgpt_timer *arg0, int arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void cs5535_mfgpt_write(struct cs5535_mfgpt_timer *arg0, uint16_t arg1, uint16_t arg2) {
  return;
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void ldv_check_final_state() {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
struct page *ldv_some_page() {
  return ldv_malloc(0UL);
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
void module_put(struct module *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int nonseekable_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
struct platform_device *platform_device_register_full(const struct platform_device_info *arg0) {
  return ldv_malloc(sizeof(struct platform_device));
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_driver_register(struct platform_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
