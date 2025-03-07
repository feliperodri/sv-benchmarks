extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
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
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
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
struct pid;
struct pid;
struct timespec;
struct timespec;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct task_struct;
struct file;
struct file;
struct seq_file;
struct seq_file;
struct page;
struct task_struct;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct task_struct;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct static_key;
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
struct task_struct;
struct page;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
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
struct ctl_table;
struct ctl_table;
struct device;
struct device;
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
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
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
struct vm_area_struct;
struct vm_area_struct;
struct page;
struct vm_area_struct;
struct completion;
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct ctl_table;
struct nsproxy;
struct nsproxy;
struct ctl_table_root;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_table_header;
struct ctl_dir;
struct ctl_dir;
typedef struct ctl_table ctl_table;
typedef int proc_handler(struct ctl_table *ctl , int write , void *buffer , size_t *lenp ,
                         loff_t *ppos );
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
struct __anonstruct____missing_field_name_194 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_193 {
   struct __anonstruct____missing_field_name_194 __annonCompField30 ;
   struct rcu_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_193 __annonCompField31 ;
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
   struct ctl_table_set *(*lookup)(struct ctl_table_root *root , struct nsproxy *namespaces ) ;
   int (*permissions)(struct ctl_table_root *root , struct nsproxy *namespaces , struct ctl_table *table ) ;
};
struct cred;
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
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const *val , struct kernel_param const *kp ) ;
   int (*get)(char *buffer , struct kernel_param const *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_199 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_199 __annonCompField32 ;
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
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
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
union __anonunion_d_u_201 {
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
   union __anonunion_d_u_201 d_u ;
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
   struct hlist_head tasks[3] ;
   struct rcu_head rcu ;
   struct upid numbers[1] ;
};
struct pid_namespace;
struct task_struct;
struct dentry;
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
union __anonunion_arg_209 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_208 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_209 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_208 read_descriptor_t;
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
union __anonunion____missing_field_name_210 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_211 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_212 {
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
   union __anonunion____missing_field_name_210 __annonCompField33 ;
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
   union __anonunion____missing_field_name_211 __annonCompField34 ;
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
   union __anonunion____missing_field_name_212 __annonCompField35 ;
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
union __anonunion_f_u_213 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_213 f_u ;
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
struct __anonstruct_afs_215 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_214 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_215 afs ;
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
   union __anonunion_fl_u_214 fl_u ;
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
struct ctl_table;
struct completion;
struct pid_namespace;
struct nsproxy;
struct ctl_table_header;
struct ctl_table;
struct ipmi_addr {
   int addr_type ;
   short channel ;
   char data[32] ;
};
struct ipmi_system_interface_addr {
   int addr_type ;
   short channel ;
   unsigned char lun ;
};
struct ipmi_ipmb_addr {
   int addr_type ;
   short channel ;
   unsigned char slave_addr ;
   unsigned char lun ;
};
struct kernel_ipmi_msg {
   unsigned char netfn ;
   unsigned char cmd ;
   unsigned short data_len ;
   unsigned char *data ;
};
struct module;
struct device;
struct ipmi_user;
typedef struct ipmi_user *ipmi_user_t;
struct ipmi_recv_msg {
   struct list_head link ;
   int recv_type ;
   ipmi_user_t user ;
   struct ipmi_addr addr ;
   long msgid ;
   struct kernel_ipmi_msg msg ;
   void *user_msg_data ;
   void (*done)(struct ipmi_recv_msg *msg ) ;
   unsigned char msg_data[272] ;
};
struct ipmi_user_hndl {
   void (*ipmi_recv_hndl)(struct ipmi_recv_msg *msg , void *user_msg_data ) ;
   void (*ipmi_watchdog_pretimeout)(void *handler_data ) ;
};
struct ipmi_smi_watcher {
   struct list_head link ;
   struct module *owner ;
   void (*new_smi)(int if_num , struct device *dev ) ;
   void (*smi_gone)(int if_num ) ;
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
struct of_device_id {
   char name[32] ;
   char type[32] ;
   char compatible[128] ;
   void *data ;
};
struct device;
struct ipmi_smi_msg {
   struct list_head link ;
   long msgid ;
   void *user_data ;
   int data_size ;
   unsigned char data[272] ;
   int rsp_size ;
   unsigned char rsp[272] ;
   void (*done)(struct ipmi_smi_msg *msg ) ;
};
struct poweroff_function {
   char *platform_type ;
   int (*detect)(ipmi_user_t user ) ;
   void (*poweroff_func)(ipmi_user_t user ) ;
};
long ldv__builtin_expect(long val , long res ) ;
extern int ( printk)(char const *fmt , ...) ;
extern int memcmp(void const *cs , void const *ct , unsigned long count ) ;
__inline static void rep_nop(void) __attribute__((__no_instrument_function__)) ;
__inline static void rep_nop(void)
{
  {
  __asm__ volatile ("rep; nop": : : "memory");
  return;
}
}
__inline static void cpu_relax(void) __attribute__((__no_instrument_function__)) ;
__inline static void cpu_relax(void)
{
  {
  {
  rep_nop();
  }
  return;
}
}
__inline static int atomic_read(atomic_t const *v ) __attribute__((__no_instrument_function__)) ;
__inline static int atomic_read(atomic_t const *v )
{ int const *__cil_tmp2 ;
  int volatile *__cil_tmp3 ;
  int volatile __cil_tmp4 ;
  {
  {
  __cil_tmp2 = (int const *)v;
  __cil_tmp3 = (int volatile *)__cil_tmp2;
  __cil_tmp4 = *__cil_tmp3;
  return ((int )__cil_tmp4);
  }
}
}
__inline static void atomic_set(atomic_t *v , int i ) __attribute__((__no_instrument_function__)) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  *((int *)v) = i;
  return;
}
}
__inline static void atomic_dec(atomic_t *v ) __attribute__((__no_instrument_function__)) ;
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n"
                       ".balign 4\n"
                       ".long 671f - .\n"
                       ".previous\n"
                       "671:"
                       "\n\tlock; "
                       "decl %0": "+m" (*((int *)v)));
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t *q , char const *name , struct lock_class_key * ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
static struct lock_class_key __key ;
__inline static void init_completion(struct completion *x ) __attribute__((__no_instrument_function__)) ;
__inline static void init_completion(struct completion *x )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  wait_queue_head_t *__cil_tmp4 ;
  {
  *((unsigned int *)x) = 0U;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp2 = (unsigned long )x;
    __cil_tmp3 = __cil_tmp2 + 8;
    __cil_tmp4 = (wait_queue_head_t *)__cil_tmp3;
    __init_waitqueue_head(__cil_tmp4, "&x->wait", & __key);
    }
    goto while_break;
  }
  while_break: ;
  }
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern void complete(struct completion * ) ;
extern void (*pm_power_off)(void) ;
extern int proc_dointvec(struct ctl_table * , int , void * , size_t * , loff_t * ) ;
extern struct ctl_table_header *register_sysctl_table(struct ctl_table *table ) ;
extern void unregister_sysctl_table(struct ctl_table_header *table ) ;
extern struct kernel_param_ops param_ops_int ;
extern int param_set_int(char const *val , struct kernel_param const *kp ) ;
extern int param_get_int(char *buffer , struct kernel_param const *kp ) ;
extern struct module __this_module ;
int init_module(void) ;
void cleanup_module(void) ;
extern int ipmi_create_user(unsigned int if_num , struct ipmi_user_hndl *handler ,
                            void *handler_data , ipmi_user_t *user ) ;
extern int ipmi_destroy_user(ipmi_user_t user ) ;
extern int ipmi_request_supply_msgs(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                                    struct kernel_ipmi_msg *msg , void *user_msg_data ,
                                    void *supplied_smi , struct ipmi_recv_msg *supplied_recv ,
                                    int priority ) ;
extern void ipmi_poll_interface(ipmi_user_t user ) ;
extern int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher ) ;
extern int ipmi_smi_watcher_unregister(struct ipmi_smi_watcher *watcher ) ;
static void ipmi_po_smi_gone(int if_num ) ;
static void ipmi_po_new_smi(int if_num , struct device *device ) ;
static int poweroff_powercycle ;
static int ifnum_to_use = -1;
static int ready ;
static ipmi_user_t ipmi_user ;
static int ipmi_ifnum ;
static void (*specific_poweroff_func)(ipmi_user_t user ) ;
static void (*old_poweroff_func)(void) ;
static int set_param_ifnum(char const *val , struct kernel_param *kp )
{ int rv ;
  int tmp ;
  struct kernel_param const *__cil_tmp5 ;
  int *__cil_tmp6 ;
  int __cil_tmp7 ;
  int *__cil_tmp8 ;
  int __cil_tmp9 ;
  int *__cil_tmp10 ;
  int __cil_tmp11 ;
  void *__cil_tmp12 ;
  struct device *__cil_tmp13 ;
  {
  {
  __cil_tmp5 = (struct kernel_param const *)kp;
  tmp = param_set_int(val, __cil_tmp5);
  rv = tmp;
  }
  if (rv) {
    return (rv);
  } else {
  }
  {
  __cil_tmp6 = & ifnum_to_use;
  __cil_tmp7 = *__cil_tmp6;
  if (__cil_tmp7 < 0) {
    return (0);
  } else {
    {
    __cil_tmp8 = & ifnum_to_use;
    __cil_tmp9 = *__cil_tmp8;
    if (__cil_tmp9 == ipmi_ifnum) {
      return (0);
    } else {
    }
    }
  }
  }
  {
  ipmi_po_smi_gone(ipmi_ifnum);
  __cil_tmp10 = & ifnum_to_use;
  __cil_tmp11 = *__cil_tmp10;
  __cil_tmp12 = (void *)0;
  __cil_tmp13 = (struct device *)__cil_tmp12;
  ipmi_po_new_smi(__cil_tmp11, __cil_tmp13);
  }
  return (0);
}
}
static struct kernel_param_ops __param_ops_ifnum_to_use = {(int (*)(char const *val , struct kernel_param const *kp ))((void *)(& set_param_ifnum)),
    (int (*)(char *buffer , struct kernel_param const *kp ))((void *)(& param_get_int)),
    (void (*)(void *arg ))0};
static char const __param_str_ifnum_to_use[13] =
  { (char const )'i', (char const )'f', (char const )'n', (char const )'u',
        (char const )'m', (char const )'_', (char const )'t', (char const )'o',
        (char const )'_', (char const )'u', (char const )'s', (char const )'e',
        (char const )'\000'};
static struct kernel_param const __param_ifnum_to_use __attribute__((__used__,
__unused__, __section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_ifnum_to_use, (struct kernel_param_ops const *)(& __param_ops_ifnum_to_use),
    (u16 )420UL, (s16 )0, {(void *)(& ifnum_to_use)}};
static char const __mod_ifnum_to_use87[128] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'=', (char const )'i', (char const )'f', (char const )'n',
        (char const )'u', (char const )'m', (char const )'_', (char const )'t',
        (char const )'o', (char const )'_', (char const )'u', (char const )'s',
        (char const )'e', (char const )':', (char const )'T', (char const )'h',
        (char const )'e', (char const )' ', (char const )'i', (char const )'n',
        (char const )'t', (char const )'e', (char const )'r', (char const )'f',
        (char const )'a', (char const )'c', (char const )'e', (char const )' ',
        (char const )'n', (char const )'u', (char const )'m', (char const )'b',
        (char const )'e', (char const )'r', (char const )' ', (char const )'t',
        (char const )'o', (char const )' ', (char const )'u', (char const )'s',
        (char const )'e', (char const )' ', (char const )'f', (char const )'o',
        (char const )'r', (char const )' ', (char const )'t', (char const )'h',
        (char const )'e', (char const )' ', (char const )'w', (char const )'a',
        (char const )'t', (char const )'c', (char const )'h', (char const )'d',
        (char const )'o', (char const )'g', (char const )' ', (char const )'t',
        (char const )'i', (char const )'m', (char const )'e', (char const )'r',
        (char const )'.', (char const )' ', (char const )' ', (char const )'S',
        (char const )'e', (char const )'t', (char const )'t', (char const )'i',
        (char const )'n', (char const )'g', (char const )' ', (char const )'t',
        (char const )'o', (char const )' ', (char const )'-', (char const )'1',
        (char const )' ', (char const )'d', (char const )'e', (char const )'f',
        (char const )'a', (char const )'u', (char const )'l', (char const )'t',
        (char const )'s', (char const )' ', (char const )'t', (char const )'o',
        (char const )' ', (char const )'t', (char const )'h', (char const )'e',
        (char const )' ', (char const )'f', (char const )'i', (char const )'r',
        (char const )'s', (char const )'t', (char const )' ', (char const )'r',
        (char const )'e', (char const )'g', (char const )'i', (char const )'s',
        (char const )'t', (char const )'e', (char const )'r', (char const )'e',
        (char const )'d', (char const )' ', (char const )'i', (char const )'n',
        (char const )'t', (char const )'e', (char const )'r', (char const )'f',
        (char const )'a', (char const )'c', (char const )'e', (char const )'\000'};
static char const __param_str_poweroff_powercycle[20] =
  { (char const )'p', (char const )'o', (char const )'w', (char const )'e',
        (char const )'r', (char const )'o', (char const )'f', (char const )'f',
        (char const )'_', (char const )'p', (char const )'o', (char const )'w',
        (char const )'e', (char const )'r', (char const )'c', (char const )'y',
        (char const )'c', (char const )'l', (char const )'e', (char const )'\000'};
static struct kernel_param const __param_poweroff_powercycle __attribute__((__used__,
__unused__, __section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_poweroff_powercycle, (struct kernel_param_ops const *)(& param_ops_int),
    (u16 )420, (s16 )0, {(void *)(& poweroff_powercycle)}};
static char const __mod_poweroff_powercycletype90[33] __attribute__((__used__,
__unused__, __section__(".modinfo"), __aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'t', (char const )'y', (char const )'p', (char const )'e',
        (char const )'=', (char const )'p', (char const )'o', (char const )'w',
        (char const )'e', (char const )'r', (char const )'o', (char const )'f',
        (char const )'f', (char const )'_', (char const )'p', (char const )'o',
        (char const )'w', (char const )'e', (char const )'r', (char const )'c',
        (char const )'y', (char const )'c', (char const )'l', (char const )'e',
        (char const )':', (char const )'i', (char const )'n', (char const )'t',
        (char const )'\000'};
static char const __mod_poweroff_powercycle94[176] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'=', (char const )'p', (char const )'o', (char const )'w',
        (char const )'e', (char const )'r', (char const )'o', (char const )'f',
        (char const )'f', (char const )'_', (char const )'p', (char const )'o',
        (char const )'w', (char const )'e', (char const )'r', (char const )'c',
        (char const )'y', (char const )'c', (char const )'l', (char const )'e',
        (char const )':', (char const )' ', (char const )'S', (char const )'e',
        (char const )'t', (char const )' ', (char const )'t', (char const )'o',
        (char const )' ', (char const )'n', (char const )'o', (char const )'n',
        (char const )'-', (char const )'z', (char const )'e', (char const )'r',
        (char const )'o', (char const )' ', (char const )'t', (char const )'o',
        (char const )' ', (char const )'e', (char const )'n', (char const )'a',
        (char const )'b', (char const )'l', (char const )'e', (char const )' ',
        (char const )'p', (char const )'o', (char const )'w', (char const )'e',
        (char const )'r', (char const )' ', (char const )'c', (char const )'y',
        (char const )'c', (char const )'l', (char const )'e', (char const )' ',
        (char const )'i', (char const )'n', (char const )'s', (char const )'t',
        (char const )'e', (char const )'a', (char const )'d', (char const )' ',
        (char const )'o', (char const )'f', (char const )' ', (char const )'p',
        (char const )'o', (char const )'w', (char const )'e', (char const )'r',
        (char const )' ', (char const )'d', (char const )'o', (char const )'w',
        (char const )'n', (char const )'.', (char const )' ', (char const )'P',
        (char const )'o', (char const )'w', (char const )'e', (char const )'r',
        (char const )' ', (char const )'c', (char const )'y', (char const )'c',
        (char const )'l', (char const )'e', (char const )' ', (char const )'i',
        (char const )'s', (char const )' ', (char const )'c', (char const )'o',
        (char const )'n', (char const )'t', (char const )'i', (char const )'n',
        (char const )'g', (char const )'e', (char const )'n', (char const )'t',
        (char const )' ', (char const )'o', (char const )'n', (char const )' ',
        (char const )'h', (char const )'a', (char const )'r', (char const )'d',
        (char const )'w', (char const )'a', (char const )'r', (char const )'e',
        (char const )' ', (char const )'s', (char const )'u', (char const )'p',
        (char const )'p', (char const )'o', (char const )'r', (char const )'t',
        (char const )',', (char const )' ', (char const )'o', (char const )'t',
        (char const )'h', (char const )'e', (char const )'r', (char const )'w',
        (char const )'i', (char const )'s', (char const )'e', (char const )' ',
        (char const )'i', (char const )'t', (char const )' ', (char const )'d',
        (char const )'e', (char const )'f', (char const )'a', (char const )'u',
        (char const )'l', (char const )'t', (char const )'s', (char const )' ',
        (char const )'b', (char const )'a', (char const )'c', (char const )'k',
        (char const )' ', (char const )'t', (char const )'o', (char const )' ',
        (char const )'p', (char const )'o', (char const )'w', (char const )'e',
        (char const )'r', (char const )' ', (char const )'d', (char const )'o',
        (char const )'w', (char const )'n', (char const )'.', (char const )'\000'};
static unsigned int mfg_id ;
static unsigned int prod_id ;
static unsigned char capabilities ;
static unsigned char ipmi_version ;
static atomic_t dummy_count = {0};
static void dummy_smi_free(struct ipmi_smi_msg *msg )
{
  {
  {
  atomic_dec(& dummy_count);
  }
  return;
}
}
static void dummy_recv_free(struct ipmi_recv_msg *msg )
{
  {
  {
  atomic_dec(& dummy_count);
  }
  return;
}
}
static struct ipmi_smi_msg halt_smi_msg =
     {{(struct list_head *)0, (struct list_head *)0}, 0L, (void *)0, 0, {(unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0},
    0, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
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
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0}, & dummy_smi_free};
static struct ipmi_recv_msg halt_recv_msg =
     {{(struct list_head *)0, (struct list_head *)0}, 0, (struct ipmi_user *)0, {0,
                                                                               (short)0,
                                                                               {(char)0,
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
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0}},
    0L, {(unsigned char)0, (unsigned char)0, (unsigned short)0, (unsigned char *)0},
    (void *)0, & dummy_recv_free, {(unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0, (unsigned char)0,
                                   (unsigned char)0, (unsigned char)0}};
static void receive_handler(struct ipmi_recv_msg *recv_msg , void *handler_data )
{ struct completion *comp ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void *__cil_tmp6 ;
  {
  __cil_tmp4 = (unsigned long )recv_msg;
  __cil_tmp5 = __cil_tmp4 + 96;
  __cil_tmp6 = *((void **)__cil_tmp5);
  comp = (struct completion *)__cil_tmp6;
  if (comp) {
    {
    complete(comp);
    }
  } else {
  }
  return;
}
}
static struct ipmi_user_hndl ipmi_poweroff_handler = {& receive_handler, (void (*)(void *handler_data ))0};
static int ipmi_request_wait_for_response(ipmi_user_t user , struct ipmi_addr *addr ,
                                          struct kernel_ipmi_msg *send_msg )
{ int rv ;
  struct completion comp ;
  void *__cil_tmp6 ;
  void *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned char *__cil_tmp10 ;
  unsigned char *__cil_tmp11 ;
  unsigned char __cil_tmp12 ;
  {
  {
  init_completion(& comp);
  __cil_tmp6 = (void *)(& comp);
  __cil_tmp7 = (void *)(& halt_smi_msg);
  rv = ipmi_request_supply_msgs(user, addr, 0L, send_msg, __cil_tmp6, __cil_tmp7,
                                & halt_recv_msg, 0);
  }
  if (rv) {
    return (rv);
  } else {
  }
  {
  wait_for_completion(& comp);
  }
  {
  __cil_tmp8 = 80 + 8;
  __cil_tmp9 = (unsigned long )(& halt_recv_msg) + __cil_tmp8;
  __cil_tmp10 = *((unsigned char **)__cil_tmp9);
  __cil_tmp11 = __cil_tmp10 + 0;
  __cil_tmp12 = *__cil_tmp11;
  return ((int )__cil_tmp12);
  }
}
}
static int ipmi_request_in_rc_mode(ipmi_user_t user , struct ipmi_addr *addr , struct kernel_ipmi_msg *send_msg )
{ int rv ;
  int tmp___3 ;
  void *__cil_tmp6 ;
  void *__cil_tmp7 ;
  atomic_t const *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned char *__cil_tmp11 ;
  unsigned char *__cil_tmp12 ;
  unsigned char __cil_tmp13 ;
  {
  {
  atomic_set(& dummy_count, 2);
  __cil_tmp6 = (void *)0;
  __cil_tmp7 = (void *)(& halt_smi_msg);
  rv = ipmi_request_supply_msgs(user, addr, 0L, send_msg, __cil_tmp6, __cil_tmp7,
                                & halt_recv_msg, 0);
  }
  if (rv) {
    {
    atomic_set(& dummy_count, 0);
    }
    return (rv);
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp8 = (atomic_t const *)(& dummy_count);
    tmp___3 = atomic_read(__cil_tmp8);
    }
    if (tmp___3 > 0) {
    } else {
      goto while_break;
    }
    {
    ipmi_poll_interface(user);
    cpu_relax();
    }
  }
  while_break: ;
  }
  {
  __cil_tmp9 = 80 + 8;
  __cil_tmp10 = (unsigned long )(& halt_recv_msg) + __cil_tmp9;
  __cil_tmp11 = *((unsigned char **)__cil_tmp10);
  __cil_tmp12 = __cil_tmp11 + 0;
  __cil_tmp13 = *__cil_tmp12;
  return ((int )__cil_tmp13);
  }
}
}
static void (*atca_oem_poweroff_hook)(ipmi_user_t user ) ;
static void pps_poweroff_atca(ipmi_user_t user )
{ struct ipmi_system_interface_addr smi_addr ;
  struct kernel_ipmi_msg send_msg ;
  int rv ;
  struct ipmi_system_interface_addr *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct kernel_ipmi_msg *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct ipmi_addr *__cil_tmp12 ;
  {
  {
  __cil_tmp5 = & smi_addr;
  *((int *)__cil_tmp5) = 12;
  __cil_tmp6 = (unsigned long )(& smi_addr) + 4;
  *((short *)__cil_tmp6) = (short)15;
  __cil_tmp7 = (unsigned long )(& smi_addr) + 6;
  *((unsigned char *)__cil_tmp7) = (unsigned char)0;
  printk("<6>IPMI poweroff: PPS powerdown hook used");
  __cil_tmp8 = & send_msg;
  *((unsigned char *)__cil_tmp8) = (unsigned char)46;
  __cil_tmp9 = (unsigned long )(& send_msg) + 1;
  *((unsigned char *)__cil_tmp9) = (unsigned char)17;
  __cil_tmp10 = (unsigned long )(& send_msg) + 8;
  *((unsigned char **)__cil_tmp10) = (unsigned char *)"\000@\n";
  __cil_tmp11 = (unsigned long )(& send_msg) + 2;
  *((unsigned short *)__cil_tmp11) = (unsigned short)3;
  __cil_tmp12 = (struct ipmi_addr *)(& smi_addr);
  rv = ipmi_request_in_rc_mode(user, __cil_tmp12, & send_msg);
  }
  if (rv) {
    if (rv != 255) {
      {
      printk("<3>IPMI poweroff: Unable to send ATCA , IPMI error 0x%x\n", rv);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static int ipmi_atca_detect(ipmi_user_t user )
{ struct ipmi_system_interface_addr smi_addr ;
  struct kernel_ipmi_msg send_msg ;
  int rv ;
  unsigned char data[1] ;
  struct ipmi_system_interface_addr *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct kernel_ipmi_msg *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct ipmi_addr *__cil_tmp17 ;
  unsigned int *__cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  unsigned int *__cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  {
  {
  __cil_tmp6 = & smi_addr;
  *((int *)__cil_tmp6) = 12;
  __cil_tmp7 = (unsigned long )(& smi_addr) + 4;
  *((short *)__cil_tmp7) = (short)15;
  __cil_tmp8 = (unsigned long )(& smi_addr) + 6;
  *((unsigned char *)__cil_tmp8) = (unsigned char)0;
  __cil_tmp9 = & send_msg;
  *((unsigned char *)__cil_tmp9) = (unsigned char)44;
  __cil_tmp10 = (unsigned long )(& send_msg) + 1;
  *((unsigned char *)__cil_tmp10) = (unsigned char)1;
  __cil_tmp11 = 0 * 1UL;
  __cil_tmp12 = (unsigned long )(data) + __cil_tmp11;
  *((unsigned char *)__cil_tmp12) = (unsigned char)0;
  __cil_tmp13 = (unsigned long )(& send_msg) + 8;
  __cil_tmp14 = 0 * 1UL;
  __cil_tmp15 = (unsigned long )(data) + __cil_tmp14;
  *((unsigned char **)__cil_tmp13) = (unsigned char *)__cil_tmp15;
  __cil_tmp16 = (unsigned long )(& send_msg) + 2;
  *((unsigned short *)__cil_tmp16) = (unsigned short )1UL;
  __cil_tmp17 = (struct ipmi_addr *)(& smi_addr);
  rv = ipmi_request_wait_for_response(user, __cil_tmp17, & send_msg);
  __cil_tmp18 = & mfg_id;
  __cil_tmp19 = *__cil_tmp18;
  printk("<6>IPMI poweroff: ATCA Detect mfg 0x%X prod 0x%X\n", __cil_tmp19, prod_id);
  }
  {
  __cil_tmp20 = & mfg_id;
  __cil_tmp21 = *__cil_tmp20;
  if (__cil_tmp21 == 161U) {
    if (prod_id == 81U) {
      {
      printk("<6>IPMI poweroff: Installing Pigeon Point Systems Poweroff Hook\n");
      atca_oem_poweroff_hook = & pps_poweroff_atca;
      }
    } else {
    }
  } else {
  }
  }
  return (! rv);
}
}
static void ipmi_poweroff_atca(ipmi_user_t user )
{ struct ipmi_system_interface_addr smi_addr ;
  struct kernel_ipmi_msg send_msg ;
  int rv ;
  unsigned char data[4] ;
  struct ipmi_system_interface_addr *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct kernel_ipmi_msg *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  struct ipmi_addr *__cil_tmp23 ;
  {
  {
  __cil_tmp6 = & smi_addr;
  *((int *)__cil_tmp6) = 12;
  __cil_tmp7 = (unsigned long )(& smi_addr) + 4;
  *((short *)__cil_tmp7) = (short)15;
  __cil_tmp8 = (unsigned long )(& smi_addr) + 6;
  *((unsigned char *)__cil_tmp8) = (unsigned char)0;
  printk("<6>IPMI poweroff: Powering down via ATCA power command\n");
  __cil_tmp9 = & send_msg;
  *((unsigned char *)__cil_tmp9) = (unsigned char)44;
  __cil_tmp10 = (unsigned long )(& send_msg) + 1;
  *((unsigned char *)__cil_tmp10) = (unsigned char)17;
  __cil_tmp11 = 0 * 1UL;
  __cil_tmp12 = (unsigned long )(data) + __cil_tmp11;
  *((unsigned char *)__cil_tmp12) = (unsigned char)0;
  __cil_tmp13 = 1 * 1UL;
  __cil_tmp14 = (unsigned long )(data) + __cil_tmp13;
  *((unsigned char *)__cil_tmp14) = (unsigned char)0;
  __cil_tmp15 = 2 * 1UL;
  __cil_tmp16 = (unsigned long )(data) + __cil_tmp15;
  *((unsigned char *)__cil_tmp16) = (unsigned char)0;
  __cil_tmp17 = 3 * 1UL;
  __cil_tmp18 = (unsigned long )(data) + __cil_tmp17;
  *((unsigned char *)__cil_tmp18) = (unsigned char)0;
  __cil_tmp19 = (unsigned long )(& send_msg) + 8;
  __cil_tmp20 = 0 * 1UL;
  __cil_tmp21 = (unsigned long )(data) + __cil_tmp20;
  *((unsigned char **)__cil_tmp19) = (unsigned char *)__cil_tmp21;
  __cil_tmp22 = (unsigned long )(& send_msg) + 2;
  *((unsigned short *)__cil_tmp22) = (unsigned short )4UL;
  __cil_tmp23 = (struct ipmi_addr *)(& smi_addr);
  rv = ipmi_request_in_rc_mode(user, __cil_tmp23, & send_msg);
  }
  if (rv) {
    if (rv != 255) {
      {
      printk("<3>IPMI poweroff: Unable to send ATCA powerdown message, IPMI error 0x%x\n",
             rv);
      }
      goto out;
    } else {
    }
  } else {
  }
  if (atca_oem_poweroff_hook) {
    {
    (*atca_oem_poweroff_hook)(user);
    }
  } else {
  }
  out:
  return;
}
}
static int ipmi_cpi1_detect(ipmi_user_t user )
{ int tmp___3 ;
  unsigned int *__cil_tmp3 ;
  unsigned int __cil_tmp4 ;
  {
  {
  __cil_tmp3 = & mfg_id;
  __cil_tmp4 = *__cil_tmp3;
  if (__cil_tmp4 == 264U) {
    if (prod_id == 343U) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  }
  return (tmp___3);
}
}
static void ipmi_poweroff_cpi1(ipmi_user_t user )
{ struct ipmi_system_interface_addr smi_addr ;
  struct ipmi_ipmb_addr ipmb_addr ;
  struct kernel_ipmi_msg send_msg ;
  int rv ;
  unsigned char data[1] ;
  int slot ;
  unsigned char hotswap_ipmb ;
  unsigned char aer_addr ;
  unsigned char aer_lun ;
  struct ipmi_system_interface_addr *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  struct kernel_ipmi_msg *__cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  void *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct ipmi_addr *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned char *__cil_tmp23 ;
  unsigned char *__cil_tmp24 ;
  unsigned char __cil_tmp25 ;
  unsigned char *__cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned char *__cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  struct kernel_ipmi_msg *__cil_tmp32 ;
  int __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  void *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct ipmi_addr *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned char *__cil_tmp41 ;
  unsigned char *__cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned char *__cil_tmp45 ;
  unsigned char *__cil_tmp46 ;
  struct ipmi_ipmb_addr *__cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  struct kernel_ipmi_msg *__cil_tmp51 ;
  int __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  struct ipmi_addr *__cil_tmp56 ;
  struct kernel_ipmi_msg *__cil_tmp57 ;
  int __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  struct ipmi_addr *__cil_tmp66 ;
  struct kernel_ipmi_msg *__cil_tmp67 ;
  int __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  struct ipmi_addr *__cil_tmp76 ;
  {
  {
  __cil_tmp11 = & smi_addr;
  *((int *)__cil_tmp11) = 12;
  __cil_tmp12 = (unsigned long )(& smi_addr) + 4;
  *((short *)__cil_tmp12) = (short)15;
  __cil_tmp13 = (unsigned long )(& smi_addr) + 6;
  *((unsigned char *)__cil_tmp13) = (unsigned char)0;
  printk("<6>IPMI poweroff: Powering down via CPI1 power command\n");
  __cil_tmp14 = & send_msg;
  __cil_tmp15 = 248 >> 2;
  *((unsigned char *)__cil_tmp14) = (unsigned char )__cil_tmp15;
  __cil_tmp16 = (unsigned long )(& send_msg) + 1;
  *((unsigned char *)__cil_tmp16) = (unsigned char)163;
  __cil_tmp17 = (unsigned long )(& send_msg) + 8;
  __cil_tmp18 = (void *)0;
  *((unsigned char **)__cil_tmp17) = (unsigned char *)__cil_tmp18;
  __cil_tmp19 = (unsigned long )(& send_msg) + 2;
  *((unsigned short *)__cil_tmp19) = (unsigned short)0;
  __cil_tmp20 = (struct ipmi_addr *)(& smi_addr);
  rv = ipmi_request_in_rc_mode(user, __cil_tmp20, & send_msg);
  }
  if (rv) {
    goto out;
  } else {
  }
  __cil_tmp21 = 80 + 8;
  __cil_tmp22 = (unsigned long )(& halt_recv_msg) + __cil_tmp21;
  __cil_tmp23 = *((unsigned char **)__cil_tmp22);
  __cil_tmp24 = __cil_tmp23 + 1;
  __cil_tmp25 = *__cil_tmp24;
  slot = (int )__cil_tmp25;
  if (slot > 9) {
    __cil_tmp26 = & hotswap_ipmb;
    __cil_tmp27 = 2 * slot;
    __cil_tmp28 = 176 + __cil_tmp27;
    *__cil_tmp26 = (unsigned char )__cil_tmp28;
  } else {
    __cil_tmp29 = & hotswap_ipmb;
    __cil_tmp30 = 2 * slot;
    __cil_tmp31 = 174 + __cil_tmp30;
    *__cil_tmp29 = (unsigned char )__cil_tmp31;
  }
  {
  __cil_tmp32 = & send_msg;
  __cil_tmp33 = 16 >> 2;
  *((unsigned char *)__cil_tmp32) = (unsigned char )__cil_tmp33;
  __cil_tmp34 = (unsigned long )(& send_msg) + 1;
  *((unsigned char *)__cil_tmp34) = (unsigned char)1;
  __cil_tmp35 = (unsigned long )(& send_msg) + 8;
  __cil_tmp36 = (void *)0;
  *((unsigned char **)__cil_tmp35) = (unsigned char *)__cil_tmp36;
  __cil_tmp37 = (unsigned long )(& send_msg) + 2;
  *((unsigned short *)__cil_tmp37) = (unsigned short)0;
  __cil_tmp38 = (struct ipmi_addr *)(& smi_addr);
  rv = ipmi_request_in_rc_mode(user, __cil_tmp38, & send_msg);
  }
  if (rv) {
    goto out;
  } else {
  }
  {
  __cil_tmp39 = 80 + 8;
  __cil_tmp40 = (unsigned long )(& halt_recv_msg) + __cil_tmp39;
  __cil_tmp41 = *((unsigned char **)__cil_tmp40);
  __cil_tmp42 = __cil_tmp41 + 1;
  aer_addr = *__cil_tmp42;
  __cil_tmp43 = 80 + 8;
  __cil_tmp44 = (unsigned long )(& halt_recv_msg) + __cil_tmp43;
  __cil_tmp45 = *((unsigned char **)__cil_tmp44);
  __cil_tmp46 = __cil_tmp45 + 2;
  aer_lun = *__cil_tmp46;
  __cil_tmp47 = & ipmb_addr;
  *((int *)__cil_tmp47) = 1;
  __cil_tmp48 = (unsigned long )(& ipmb_addr) + 4;
  *((short *)__cil_tmp48) = (short)0;
  __cil_tmp49 = (unsigned long )(& ipmb_addr) + 6;
  *((unsigned char *)__cil_tmp49) = aer_addr;
  __cil_tmp50 = (unsigned long )(& ipmb_addr) + 7;
  *((unsigned char *)__cil_tmp50) = aer_lun;
  __cil_tmp51 = & send_msg;
  __cil_tmp52 = 248 >> 2;
  *((unsigned char *)__cil_tmp51) = (unsigned char )__cil_tmp52;
  __cil_tmp53 = (unsigned long )(& send_msg) + 1;
  *((unsigned char *)__cil_tmp53) = (unsigned char)128;
  __cil_tmp54 = (unsigned long )(& send_msg) + 8;
  *((unsigned char **)__cil_tmp54) = & hotswap_ipmb;
  __cil_tmp55 = (unsigned long )(& send_msg) + 2;
  *((unsigned short *)__cil_tmp55) = (unsigned short)1;
  __cil_tmp56 = (struct ipmi_addr *)(& ipmb_addr);
  ipmi_request_in_rc_mode(user, __cil_tmp56, & send_msg);
  __cil_tmp57 = & send_msg;
  __cil_tmp58 = 248 >> 2;
  *((unsigned char *)__cil_tmp57) = (unsigned char )__cil_tmp58;
  __cil_tmp59 = (unsigned long )(& send_msg) + 1;
  *((unsigned char *)__cil_tmp59) = (unsigned char)132;
  __cil_tmp60 = (unsigned long )(& send_msg) + 8;
  __cil_tmp61 = 0 * 1UL;
  __cil_tmp62 = (unsigned long )(data) + __cil_tmp61;
  *((unsigned char **)__cil_tmp60) = (unsigned char *)__cil_tmp62;
  __cil_tmp63 = 0 * 1UL;
  __cil_tmp64 = (unsigned long )(data) + __cil_tmp63;
  *((unsigned char *)__cil_tmp64) = (unsigned char)1;
  __cil_tmp65 = (unsigned long )(& send_msg) + 2;
  *((unsigned short *)__cil_tmp65) = (unsigned short)1;
  __cil_tmp66 = (struct ipmi_addr *)(& smi_addr);
  rv = ipmi_request_in_rc_mode(user, __cil_tmp66, & send_msg);
  }
  if (rv) {
    goto out;
  } else {
  }
  {
  __cil_tmp67 = & send_msg;
  __cil_tmp68 = 248 >> 2;
  *((unsigned char *)__cil_tmp67) = (unsigned char )__cil_tmp68;
  __cil_tmp69 = (unsigned long )(& send_msg) + 1;
  *((unsigned char *)__cil_tmp69) = (unsigned char)130;
  __cil_tmp70 = (unsigned long )(& send_msg) + 8;
  __cil_tmp71 = 0 * 1UL;
  __cil_tmp72 = (unsigned long )(data) + __cil_tmp71;
  *((unsigned char **)__cil_tmp70) = (unsigned char *)__cil_tmp72;
  __cil_tmp73 = 0 * 1UL;
  __cil_tmp74 = (unsigned long )(data) + __cil_tmp73;
  *((unsigned char *)__cil_tmp74) = (unsigned char)1;
  __cil_tmp75 = (unsigned long )(& send_msg) + 2;
  *((unsigned short *)__cil_tmp75) = (unsigned short)1;
  __cil_tmp76 = (struct ipmi_addr *)(& smi_addr);
  rv = ipmi_request_in_rc_mode(user, __cil_tmp76, & send_msg);
  }
  if (rv) {
    goto out;
  } else {
  }
  out:
  return;
}
}
static int ipmi_dell_chassis_detect(ipmi_user_t user )
{ char ipmi_version_major ;
  char ipmi_version_minor ;
  char mfr[3] ;
  int tmp___3 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  char *__cil_tmp19 ;
  void const *__cil_tmp20 ;
  void const *__cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  {
  {
  __cil_tmp6 = (int )ipmi_version;
  __cil_tmp7 = __cil_tmp6 & 15;
  ipmi_version_major = (char )__cil_tmp7;
  __cil_tmp8 = (int )ipmi_version;
  __cil_tmp9 = __cil_tmp8 >> 4;
  __cil_tmp10 = __cil_tmp9 & 15;
  ipmi_version_minor = (char )__cil_tmp10;
  __cil_tmp11 = 0 * 1UL;
  __cil_tmp12 = (unsigned long )(mfr) + __cil_tmp11;
  *((char *)__cil_tmp12) = (char)-94;
  __cil_tmp13 = 1 * 1UL;
  __cil_tmp14 = (unsigned long )(mfr) + __cil_tmp13;
  *((char *)__cil_tmp14) = (char)2;
  __cil_tmp15 = 2 * 1UL;
  __cil_tmp16 = (unsigned long )(mfr) + __cil_tmp15;
  *((char *)__cil_tmp16) = (char)0;
  __cil_tmp17 = 0 * 1UL;
  __cil_tmp18 = (unsigned long )(mfr) + __cil_tmp17;
  __cil_tmp19 = (char *)__cil_tmp18;
  __cil_tmp20 = (void const *)__cil_tmp19;
  __cil_tmp21 = (void const *)(& mfg_id);
  tmp___3 = memcmp(__cil_tmp20, __cil_tmp21, 3UL);
  }
  if (tmp___3) {
  } else {
    {
    __cil_tmp22 = (int )ipmi_version_major;
    if (__cil_tmp22 <= 1) {
      {
      __cil_tmp23 = (int )ipmi_version_minor;
      if (__cil_tmp23 < 5) {
        return (1);
      } else {
      }
      }
    } else {
    }
    }
  }
  return (0);
}
}
static int ipmi_chassis_detect(ipmi_user_t user )
{ int __cil_tmp2 ;
  {
  {
  __cil_tmp2 = (int )capabilities;
  return (__cil_tmp2 & 128);
  }
}
}
static void ipmi_poweroff_chassis(ipmi_user_t user )
{ struct ipmi_system_interface_addr smi_addr ;
  struct kernel_ipmi_msg send_msg ;
  int rv ;
  unsigned char data[1] ;
  char const *tmp___3 ;
  struct ipmi_system_interface_addr *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int *__cil_tmp10 ;
  struct kernel_ipmi_msg *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  int *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct ipmi_addr *__cil_tmp22 ;
  int *__cil_tmp23 ;
  int *__cil_tmp24 ;
  {
  __cil_tmp7 = & smi_addr;
  *((int *)__cil_tmp7) = 12;
  __cil_tmp8 = (unsigned long )(& smi_addr) + 4;
  *((short *)__cil_tmp8) = (short)15;
  __cil_tmp9 = (unsigned long )(& smi_addr) + 6;
  *((unsigned char *)__cil_tmp9) = (unsigned char)0;
  powercyclefailed:
  {
  __cil_tmp10 = & poweroff_powercycle;
  if (*__cil_tmp10) {
    tmp___3 = "cycle";
  } else {
    tmp___3 = "down";
  }
  }
  {
  printk("<6>IPMI poweroff: Powering %s via IPMI chassis control command\n", tmp___3);
  __cil_tmp11 = & send_msg;
  *((unsigned char *)__cil_tmp11) = (unsigned char)0;
  __cil_tmp12 = (unsigned long )(& send_msg) + 1;
  *((unsigned char *)__cil_tmp12) = (unsigned char)2;
  }
  {
  __cil_tmp13 = & poweroff_powercycle;
  if (*__cil_tmp13) {
    __cil_tmp14 = 0 * 1UL;
    __cil_tmp15 = (unsigned long )(data) + __cil_tmp14;
    *((unsigned char *)__cil_tmp15) = (unsigned char)2;
  } else {
    __cil_tmp16 = 0 * 1UL;
    __cil_tmp17 = (unsigned long )(data) + __cil_tmp16;
    *((unsigned char *)__cil_tmp17) = (unsigned char)0;
  }
  }
  {
  __cil_tmp18 = (unsigned long )(& send_msg) + 8;
  __cil_tmp19 = 0 * 1UL;
  __cil_tmp20 = (unsigned long )(data) + __cil_tmp19;
  *((unsigned char **)__cil_tmp18) = (unsigned char *)__cil_tmp20;
  __cil_tmp21 = (unsigned long )(& send_msg) + 2;
  *((unsigned short *)__cil_tmp21) = (unsigned short )1UL;
  __cil_tmp22 = (struct ipmi_addr *)(& smi_addr);
  rv = ipmi_request_in_rc_mode(user, __cil_tmp22, & send_msg);
  }
  if (rv) {
    {
    __cil_tmp23 = & poweroff_powercycle;
    if (*__cil_tmp23) {
      {
      printk("<3>IPMI poweroff: Unable to send chassis power cycle message, IPMI error 0x%x\n",
             rv);
      __cil_tmp24 = & poweroff_powercycle;
      *__cil_tmp24 = 0;
      }
      goto powercyclefailed;
    } else {
    }
    }
    {
    printk("<3>IPMI poweroff: Unable to send chassis power down message, IPMI error 0x%x\n",
           rv);
    }
  } else {
  }
  return;
}
}
static struct poweroff_function poweroff_functions[4] = { {(char *)"ATCA", & ipmi_atca_detect, & ipmi_poweroff_atca},
        {(char *)"CPI1", & ipmi_cpi1_detect, & ipmi_poweroff_cpi1},
        {(char *)"chassis", & ipmi_dell_chassis_detect, & ipmi_poweroff_chassis},
        {(char *)"chassis", & ipmi_chassis_detect, & ipmi_poweroff_chassis}};
static void ipmi_poweroff_function(void)
{ ipmi_user_t *__cil_tmp1 ;
  ipmi_user_t __cil_tmp2 ;
  {
  if (! ready) {
    return;
  } else {
  }
  {
  __cil_tmp1 = & ipmi_user;
  __cil_tmp2 = *__cil_tmp1;
  (*specific_poweroff_func)(__cil_tmp2);
  }
  return;
}
}
static void ipmi_po_new_smi(int if_num , struct device *device )
{ struct ipmi_system_interface_addr smi_addr ;
  struct kernel_ipmi_msg send_msg ;
  int rv ;
  int i ;
  int tmp___3 ;
  int *__cil_tmp8 ;
  int __cil_tmp9 ;
  int *__cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  void *__cil_tmp13 ;
  struct ipmi_system_interface_addr *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct kernel_ipmi_msg *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  void *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  ipmi_user_t *__cil_tmp22 ;
  ipmi_user_t __cil_tmp23 ;
  struct ipmi_addr *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned short __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned short __cil_tmp31 ;
  int __cil_tmp32 ;
  unsigned int *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned char *__cil_tmp36 ;
  unsigned char *__cil_tmp37 ;
  unsigned char __cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned char *__cil_tmp43 ;
  unsigned char *__cil_tmp44 ;
  unsigned char __cil_tmp45 ;
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned char *__cil_tmp50 ;
  unsigned char *__cil_tmp51 ;
  unsigned char __cil_tmp52 ;
  int __cil_tmp53 ;
  int __cil_tmp54 ;
  int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned char *__cil_tmp58 ;
  unsigned char *__cil_tmp59 ;
  unsigned char __cil_tmp60 ;
  int __cil_tmp61 ;
  int __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned char *__cil_tmp65 ;
  unsigned char *__cil_tmp66 ;
  unsigned char __cil_tmp67 ;
  int __cil_tmp68 ;
  int __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned char *__cil_tmp72 ;
  unsigned char *__cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned char *__cil_tmp76 ;
  unsigned char *__cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  int (*__cil_tmp83)(ipmi_user_t user ) ;
  ipmi_user_t *__cil_tmp84 ;
  ipmi_user_t __cil_tmp85 ;
  ipmi_user_t *__cil_tmp86 ;
  ipmi_user_t __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  char *__cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  {
  if (ready) {
    return;
  } else {
  }
  {
  __cil_tmp8 = & ifnum_to_use;
  __cil_tmp9 = *__cil_tmp8;
  if (__cil_tmp9 >= 0) {
    {
    __cil_tmp10 = & ifnum_to_use;
    __cil_tmp11 = *__cil_tmp10;
    if (__cil_tmp11 != if_num) {
      return;
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp12 = (unsigned int )if_num;
  __cil_tmp13 = (void *)0;
  rv = ipmi_create_user(__cil_tmp12, & ipmi_poweroff_handler, __cil_tmp13, & ipmi_user);
  }
  if (rv) {
    {
    printk("<3>IPMI poweroff: could not create IPMI user, error %d\n", rv);
    }
    return;
  } else {
  }
  {
  ipmi_ifnum = if_num;
  __cil_tmp14 = & smi_addr;
  *((int *)__cil_tmp14) = 12;
  __cil_tmp15 = (unsigned long )(& smi_addr) + 4;
  *((short *)__cil_tmp15) = (short)15;
  __cil_tmp16 = (unsigned long )(& smi_addr) + 6;
  *((unsigned char *)__cil_tmp16) = (unsigned char)0;
  __cil_tmp17 = & send_msg;
  *((unsigned char *)__cil_tmp17) = (unsigned char)6;
  __cil_tmp18 = (unsigned long )(& send_msg) + 1;
  *((unsigned char *)__cil_tmp18) = (unsigned char)1;
  __cil_tmp19 = (unsigned long )(& send_msg) + 8;
  __cil_tmp20 = (void *)0;
  *((unsigned char **)__cil_tmp19) = (unsigned char *)__cil_tmp20;
  __cil_tmp21 = (unsigned long )(& send_msg) + 2;
  *((unsigned short *)__cil_tmp21) = (unsigned short)0;
  __cil_tmp22 = & ipmi_user;
  __cil_tmp23 = *__cil_tmp22;
  __cil_tmp24 = (struct ipmi_addr *)(& smi_addr);
  rv = ipmi_request_wait_for_response(__cil_tmp23, __cil_tmp24, & send_msg);
  }
  if (rv) {
    {
    printk("<3>IPMI poweroff: Unable to send IPMI get device id info, IPMI error 0x%x\n",
           rv);
    }
    goto out_err;
  } else {
  }
  {
  __cil_tmp25 = 80 + 2;
  __cil_tmp26 = (unsigned long )(& halt_recv_msg) + __cil_tmp25;
  __cil_tmp27 = *((unsigned short *)__cil_tmp26);
  __cil_tmp28 = (int )__cil_tmp27;
  if (__cil_tmp28 < 12) {
    {
    __cil_tmp29 = 80 + 2;
    __cil_tmp30 = (unsigned long )(& halt_recv_msg) + __cil_tmp29;
    __cil_tmp31 = *((unsigned short *)__cil_tmp30);
    __cil_tmp32 = (int )__cil_tmp31;
    printk("<3>IPMI poweroff: (chassis) IPMI get device id info too, short, was %d bytes, needed %d bytes\n",
           __cil_tmp32, 12);
    }
    goto out_err;
  } else {
  }
  }
  __cil_tmp33 = & mfg_id;
  __cil_tmp34 = 80 + 8;
  __cil_tmp35 = (unsigned long )(& halt_recv_msg) + __cil_tmp34;
  __cil_tmp36 = *((unsigned char **)__cil_tmp35);
  __cil_tmp37 = __cil_tmp36 + 9;
  __cil_tmp38 = *__cil_tmp37;
  __cil_tmp39 = (int )__cil_tmp38;
  __cil_tmp40 = __cil_tmp39 << 16;
  __cil_tmp41 = 80 + 8;
  __cil_tmp42 = (unsigned long )(& halt_recv_msg) + __cil_tmp41;
  __cil_tmp43 = *((unsigned char **)__cil_tmp42);
  __cil_tmp44 = __cil_tmp43 + 8;
  __cil_tmp45 = *__cil_tmp44;
  __cil_tmp46 = (int )__cil_tmp45;
  __cil_tmp47 = __cil_tmp46 << 8;
  __cil_tmp48 = 80 + 8;
  __cil_tmp49 = (unsigned long )(& halt_recv_msg) + __cil_tmp48;
  __cil_tmp50 = *((unsigned char **)__cil_tmp49);
  __cil_tmp51 = __cil_tmp50 + 7;
  __cil_tmp52 = *__cil_tmp51;
  __cil_tmp53 = (int )__cil_tmp52;
  __cil_tmp54 = __cil_tmp53 | __cil_tmp47;
  __cil_tmp55 = __cil_tmp54 | __cil_tmp40;
  *__cil_tmp33 = (unsigned int )__cil_tmp55;
  __cil_tmp56 = 80 + 8;
  __cil_tmp57 = (unsigned long )(& halt_recv_msg) + __cil_tmp56;
  __cil_tmp58 = *((unsigned char **)__cil_tmp57);
  __cil_tmp59 = __cil_tmp58 + 11;
  __cil_tmp60 = *__cil_tmp59;
  __cil_tmp61 = (int )__cil_tmp60;
  __cil_tmp62 = __cil_tmp61 << 8;
  __cil_tmp63 = 80 + 8;
  __cil_tmp64 = (unsigned long )(& halt_recv_msg) + __cil_tmp63;
  __cil_tmp65 = *((unsigned char **)__cil_tmp64);
  __cil_tmp66 = __cil_tmp65 + 10;
  __cil_tmp67 = *__cil_tmp66;
  __cil_tmp68 = (int )__cil_tmp67;
  __cil_tmp69 = __cil_tmp68 | __cil_tmp62;
  prod_id = (unsigned int )__cil_tmp69;
  __cil_tmp70 = 80 + 8;
  __cil_tmp71 = (unsigned long )(& halt_recv_msg) + __cil_tmp70;
  __cil_tmp72 = *((unsigned char **)__cil_tmp71);
  __cil_tmp73 = __cil_tmp72 + 6;
  capabilities = *__cil_tmp73;
  __cil_tmp74 = 80 + 8;
  __cil_tmp75 = (unsigned long )(& halt_recv_msg) + __cil_tmp74;
  __cil_tmp76 = *((unsigned char **)__cil_tmp75);
  __cil_tmp77 = __cil_tmp76 + 5;
  ipmi_version = *__cil_tmp77;
  i = 0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp78 = 96UL / 24UL;
    __cil_tmp79 = (unsigned long )i;
    if (__cil_tmp79 < __cil_tmp78) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp80 = i * 24UL;
    __cil_tmp81 = __cil_tmp80 + 8;
    __cil_tmp82 = (unsigned long )(poweroff_functions) + __cil_tmp81;
    __cil_tmp83 = *((int (**)(ipmi_user_t user ))__cil_tmp82);
    __cil_tmp84 = & ipmi_user;
    __cil_tmp85 = *__cil_tmp84;
    tmp___3 = (*__cil_tmp83)(__cil_tmp85);
    }
    if (tmp___3) {
      goto found;
    } else {
    }
    i = i + 1;
  }
  while_break: ;
  }
  out_err:
  {
  printk("<3>IPMI poweroff: Unable to find a poweroff function that will work, giving up\n");
  __cil_tmp86 = & ipmi_user;
  __cil_tmp87 = *__cil_tmp86;
  ipmi_destroy_user(__cil_tmp87);
  }
  return;
  found:
  {
  __cil_tmp88 = i * 24UL;
  __cil_tmp89 = (unsigned long )(poweroff_functions) + __cil_tmp88;
  __cil_tmp90 = *((char **)__cil_tmp89);
  printk("<6>IPMI poweroff: Found a %s style poweroff function\n", __cil_tmp90);
  __cil_tmp91 = i * 24UL;
  __cil_tmp92 = __cil_tmp91 + 16;
  __cil_tmp93 = (unsigned long )(poweroff_functions) + __cil_tmp92;
  specific_poweroff_func = *((void (**)(ipmi_user_t user ))__cil_tmp93);
  old_poweroff_func = pm_power_off;
  pm_power_off = & ipmi_poweroff_function;
  ready = 1;
  }
  return;
}
}
static void ipmi_po_smi_gone(int if_num )
{ ipmi_user_t *__cil_tmp2 ;
  ipmi_user_t __cil_tmp3 ;
  {
  if (! ready) {
    return;
  } else {
  }
  if (ipmi_ifnum != if_num) {
    return;
  } else {
  }
  {
  ready = 0;
  __cil_tmp2 = & ipmi_user;
  __cil_tmp3 = *__cil_tmp2;
  ipmi_destroy_user(__cil_tmp3);
  pm_power_off = old_poweroff_func;
  }
  return;
}
}
static struct ipmi_smi_watcher smi_watcher = {{(struct list_head *)0, (struct list_head *)0}, & __this_module, & ipmi_po_new_smi,
    & ipmi_po_smi_gone};
static ctl_table ipmi_table[1] = { {"poweroff_powercycle", (void *)(& poweroff_powercycle), (int )sizeof(poweroff_powercycle),
      (umode_t )420, (struct ctl_table *)0, & proc_dointvec, (struct ctl_table_poll *)0,
      (void *)0, (void *)0}};
static ctl_table ipmi_dir_table[1] = { {"ipmi", (void *)0, 0, (umode_t )365, ipmi_table, (proc_handler *)0, (struct ctl_table_poll *)0,
      (void *)0, (void *)0}};
static ctl_table ipmi_root_table[1] = { {"dev", (void *)0, 0, (umode_t )365, ipmi_dir_table, (proc_handler *)0, (struct ctl_table_poll *)0,
      (void *)0, (void *)0}};
static struct ctl_table_header *ipmi_table_header ;
static int ipmi_poweroff_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int ipmi_poweroff_init(void)
{ int rv ;
  int *__cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  ctl_table *__cil_tmp5 ;
  {
  {
  printk("<6>Copyright (C) 2004 MontaVista Software - IPMI Powerdown via sys_reboot.\n");
  }
  {
  __cil_tmp2 = & poweroff_powercycle;
  if (*__cil_tmp2) {
    {
    printk("<6>IPMI poweroff: Power cycle is enabled.\n");
    }
  } else {
  }
  }
  {
  __cil_tmp3 = 0 * 64UL;
  __cil_tmp4 = (unsigned long )(ipmi_root_table) + __cil_tmp3;
  __cil_tmp5 = (ctl_table *)__cil_tmp4;
  ipmi_table_header = register_sysctl_table(__cil_tmp5);
  }
  if (! ipmi_table_header) {
    {
    printk("<3>IPMI poweroff: Unable to register powercycle sysctl\n");
    rv = -12;
    }
    goto out_err;
  } else {
  }
  {
  rv = ipmi_smi_watcher_register(& smi_watcher);
  }
  if (rv) {
    {
    unregister_sysctl_table(ipmi_table_header);
    printk("<3>IPMI poweroff: Unable to register SMI watcher: %d\n", rv);
    }
    goto out_err;
  } else {
  }
  out_err:
  return (rv);
}
}
static void ipmi_poweroff_cleanup(void) __attribute__((__section__(".exit.text"),
__no_instrument_function__)) ;
static void ipmi_poweroff_cleanup(void)
{ int rv ;
  ipmi_user_t *__cil_tmp2 ;
  ipmi_user_t __cil_tmp3 ;
  {
  {
  unregister_sysctl_table(ipmi_table_header);
  ipmi_smi_watcher_unregister(& smi_watcher);
  }
  if (ready) {
    {
    __cil_tmp2 = & ipmi_user;
    __cil_tmp3 = *__cil_tmp2;
    rv = ipmi_destroy_user(__cil_tmp3);
    }
    if (rv) {
      {
      printk("<3>IPMI poweroff: could not cleanup the IPMI user: 0x%x\n", rv);
      }
    } else {
    }
    pm_power_off = old_poweroff_func;
  } else {
  }
  return;
}
}
void cleanup_module(void)
{
  {
  {
  ipmi_poweroff_cleanup();
  }
  return;
}
}
int init_module(void)
{ int tmp___3 ;
  {
  {
  tmp___3 = ipmi_poweroff_init();
  }
  return (tmp___3);
}
}
static char const __mod_license748[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static char const __mod_author749[42] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'C',
        (char const )'o', (char const )'r', (char const )'e', (char const )'y',
        (char const )' ', (char const )'M', (char const )'i', (char const )'n',
        (char const )'y', (char const )'a', (char const )'r', (char const )'d',
        (char const )' ', (char const )'<', (char const )'m', (char const )'i',
        (char const )'n', (char const )'y', (char const )'a', (char const )'r',
        (char const )'d', (char const )'@', (char const )'m', (char const )'v',
        (char const )'i', (char const )'s', (char const )'t', (char const )'a',
        (char const )'.', (char const )'c', (char const )'o', (char const )'m',
        (char const )'>', (char const )'\000'};
static char const __mod_description750[50] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'I', (char const )'P', (char const )'M', (char const )'I',
        (char const )' ', (char const )'P', (char const )'o', (char const )'w',
        (char const )'e', (char const )'r', (char const )'o', (char const )'f',
        (char const )'f', (char const )' ', (char const )'e', (char const )'x',
        (char const )'t', (char const )'e', (char const )'n', (char const )'s',
        (char const )'i', (char const )'o', (char const )'n', (char const )' ',
        (char const )'t', (char const )'o', (char const )' ', (char const )'s',
        (char const )'y', (char const )'s', (char const )'_', (char const )'r',
        (char const )'e', (char const )'b', (char const )'o', (char const )'o',
        (char const )'t', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct ipmi_smi_msg *var_group1 ;
  struct ipmi_recv_msg *var_group2 ;
  void *var_receive_handler_3_p1 ;
  int var_ipmi_po_new_smi_15_p0 ;
  struct device *var_group3 ;
  int var_ipmi_po_smi_gone_16_p0 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp___3 = ipmi_poweroff_init();
  }
  if (tmp___3) {
    goto ldv_final;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___5 = __VERIFIER_nondet_int();
    }
    if (tmp___5) {
    } else {
      goto while_break;
    }
    {
    tmp___4 = __VERIFIER_nondet_int();
    }
    if (tmp___4 == 0) {
      goto case_0;
    } else
    if (tmp___4 == 1) {
      goto case_1;
    } else
    if (tmp___4 == 2) {
      goto case_2;
    } else
    if (tmp___4 == 3) {
      goto case_3;
    } else
    if (tmp___4 == 4) {
      goto case_4;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        {
        dummy_smi_free(var_group1);
        }
        goto switch_break;
        case_1:
        {
        dummy_recv_free(var_group2);
        }
        goto switch_break;
        case_2:
        {
        receive_handler(var_group2, var_receive_handler_3_p1);
        }
        goto switch_break;
        case_3:
        {
        ipmi_po_new_smi(var_ipmi_po_new_smi_15_p0, var_group3);
        }
        goto switch_break;
        case_4:
        {
        ipmi_po_smi_gone(var_ipmi_po_smi_gone_16_p0);
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
  {
  ipmi_poweroff_cleanup();
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
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ipmi_create_user(unsigned int arg0, struct ipmi_user_hndl *arg1, void *arg2, ipmi_user_t *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ipmi_destroy_user(ipmi_user_t arg0) {
  return __VERIFIER_nondet_int();
}
void ipmi_poll_interface(ipmi_user_t arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ipmi_request_supply_msgs(ipmi_user_t arg0, struct ipmi_addr *arg1, long arg2, struct kernel_ipmi_msg *arg3, void *arg4, void *arg5, struct ipmi_recv_msg *arg6, int arg7) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ipmi_smi_watcher_register(struct ipmi_smi_watcher *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ipmi_smi_watcher_unregister(struct ipmi_smi_watcher *arg0) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int param_set_int(const char *arg0, const struct kernel_param *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
struct ctl_table_header *register_sysctl_table(struct ctl_table *arg0) {
  return ldv_malloc(sizeof(struct ctl_table_header));
}
void unregister_sysctl_table(struct ctl_table_header *arg0) {
  return;
}
void wait_for_completion(struct completion *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
