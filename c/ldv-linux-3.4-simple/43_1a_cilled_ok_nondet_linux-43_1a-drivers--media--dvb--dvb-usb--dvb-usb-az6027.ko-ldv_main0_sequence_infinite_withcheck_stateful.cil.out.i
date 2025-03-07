extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_nlink_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_nlink_t nlink_t;
typedef __kernel_off_t off_t;
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
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u32 __wsum;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
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
struct net_device;
struct net_device;
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
struct __anonstruct_ldv_2180_13 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2195_14 {
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
union __anonunion_ldv_2196_12 {
   struct __anonstruct_ldv_2180_13 ldv_2180 ;
   struct __anonstruct_ldv_2195_14 ldv_2195 ;
};
struct desc_struct {
   union __anonunion_ldv_2196_12 ldv_2196 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_16 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_16 pgd_t;
typedef struct page *pgtable_t;
struct file;
struct file;
struct seq_file;
struct seq_file;
struct thread_struct;
struct thread_struct;
struct cpumask;
struct cpumask;
struct arch_spinlock;
struct arch_spinlock;
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
union __anonunion_ldv_2824_19 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2824_19 ldv_2824 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
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
struct __anonstruct_ldv_5180_24 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5186_25 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5187_23 {
   struct __anonstruct_ldv_5180_24 ldv_5180 ;
   struct __anonstruct_ldv_5186_25 ldv_5186 ;
};
union __anonunion_ldv_5196_26 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5187_23 ldv_5187 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5196_26 ldv_5196 ;
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
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
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
};
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
   unsigned char check : 2 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 11 ;
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
struct __anonstruct_seqlock_t_35 {
   unsigned int sequence ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
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
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
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
struct notifier_block;
struct notifier_block;
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
struct ctl_table;
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
struct hrtimer;
struct hrtimer;
enum hrtimer_restart;
struct work_struct;
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
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct vm_area_struct;
struct vm_area_struct;
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
struct nsproxy;
struct ctl_table_root;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_table_header;
struct ctl_dir;
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
struct __anonstruct_ldv_12569_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_12571_128 {
   struct __anonstruct_ldv_12569_129 ldv_12569 ;
   struct rcu_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_12571_128 ldv_12571 ;
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
   int (*permissions)(struct ctl_table_root * , struct nsproxy * , struct ctl_table * ) ;
};
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
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_135 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_135 u ;
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
union __anonunion_d_u_136 {
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
   union __anonunion_d_u_136 d_u ;
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
   struct hlist_head tasks[3U] ;
   struct rcu_head rcu ;
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
struct user_namespace;
struct user_namespace;
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
union __anonunion_arg_139 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_138 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_139 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_138 read_descriptor_t;
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
union __anonunion_ldv_16579_140 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_16598_141 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion_ldv_16616_142 {
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
   union __anonunion_ldv_16579_140 ldv_16579 ;
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
   union __anonunion_ldv_16598_141 ldv_16598 ;
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
   union __anonunion_ldv_16616_142 ldv_16616 ;
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
union __anonunion_f_u_143 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_143 f_u ;
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
struct __anonstruct_afs_145 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_144 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_145 afs ;
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
   union __anonunion_fl_u_144 fl_u ;
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
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void *data ;
};
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
};
struct ff_device;
struct input_mt_slot;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt_slot *mt ;
   int mtsize ;
   int slot ;
   int trkid ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   bool sync ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   struct file_operations const *fops ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[0U] ;
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
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
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
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
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
struct proc_dir_entry;
struct proc_dir_entry;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
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
   unsigned long active_bases ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3U] ;
};
union __anonunion_ldv_20895_149 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct_ldv_20905_153 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_20906_152 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_20905_153 ldv_20905 ;
};
struct __anonstruct_ldv_20908_151 {
   union __anonunion_ldv_20906_152 ldv_20906 ;
   atomic_t _count ;
};
union __anonunion_ldv_20909_150 {
   unsigned long counters ;
   struct __anonstruct_ldv_20908_151 ldv_20908 ;
};
struct __anonstruct_ldv_20910_148 {
   union __anonunion_ldv_20895_149 ldv_20895 ;
   union __anonunion_ldv_20909_150 ldv_20909 ;
};
struct __anonstruct_ldv_20917_155 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion_ldv_20918_154 {
   struct list_head lru ;
   struct __anonstruct_ldv_20917_155 ldv_20917 ;
};
union __anonunion_ldv_20923_156 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_20910_148 ldv_20910 ;
   union __anonunion_ldv_20918_154 ldv_20918 ;
   union __anonunion_ldv_20923_156 ldv_20923 ;
   unsigned long debug_flags ;
};
struct __anonstruct_vm_set_158 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_157 {
   struct __anonstruct_vm_set_158 vm_set ;
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
   union __anonunion_shared_157 shared ;
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
   atomic_long_t count[3U] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   void (*unmap_area)(struct mm_struct * , unsigned long ) ;
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
   unsigned long saved_auxv[44U] ;
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
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct siginfo;
struct __anonstruct_sigset_t_159 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_159 sigset_t;
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
struct __anonstruct__kill_161 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_162 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_163 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_165 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_166 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_160 {
   int _pad[28U] ;
   struct __anonstruct__kill_161 _kill ;
   struct __anonstruct__timer_162 _timer ;
   struct __anonstruct__rt_163 _rt ;
   struct __anonstruct__sigchld_164 _sigchld ;
   struct __anonstruct__sigfault_165 _sigfault ;
   struct __anonstruct__sigpoll_166 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_160 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct __anonstruct_seccomp_t_169 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_169 seccomp_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct plist_head wait_list ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
};
struct rt_mutex_waiter;
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct key;
struct signal_struct;
struct signal_struct;
struct key_type;
struct key_type;
struct keyring_list;
struct keyring_list;
struct key_user;
union __anonunion_ldv_21723_170 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_171 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_172 {
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
   union __anonunion_ldv_21723_170 ldv_21723 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_171 type_data ;
   union __anonunion_payload_172 payload ;
};
struct audit_context;
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   gid_t small_block[32U] ;
   gid_t *blocks[0U] ;
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
struct cfs_rq;
struct cfs_rq;
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
union __anonunion_ki_obj_173 {
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
   union __anonunion_ki_obj_173 ki_obj ;
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
   struct page *internal_pages[8U] ;
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
struct tty_struct;
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
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
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
   struct rlimit rlim[16U] ;
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
struct rq;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   bool (*yield_to_task)(struct rq * , struct task_struct * , bool ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct task_struct * , int , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * ) ;
   void (*switched_to)(struct rq * , struct task_struct * ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int ) ;
   unsigned int (*get_rr_interval)(struct rq * , struct task_struct * ) ;
   void (*task_move_group)(struct task_struct * , int ) ;
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
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct css_set;
struct compat_robust_list_head;
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
   unsigned char brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char irq_thread : 1 ;
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
   struct pid_link pids[3U] ;
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
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   struct cred *replacement_session_keyring ;
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
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   struct list_head *scm_work_list ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   atomic_t ptrace_bp_refcnt ;
};
struct usb_device;
struct usb_device;
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
   unsigned char sysfs_files_created : 1 ;
   unsigned char ep_devs_created : 1 ;
   unsigned char unregistering : 1 ;
   unsigned char needs_remote_wakeup : 1 ;
   unsigned char needs_altsetting0 : 1 ;
   unsigned char needs_binding : 1 ;
   unsigned char reset_running : 1 ;
   unsigned char resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
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
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned char is_b_host : 1 ;
   unsigned char b_hnp_enable : 1 ;
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
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned char can_submit : 1 ;
   unsigned char persist_enabled : 1 ;
   unsigned char have_langid : 1 ;
   unsigned char authorized : 1 ;
   unsigned char authenticated : 1 ;
   unsigned char wusb : 1 ;
   unsigned char lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_enabled : 1 ;
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
   unsigned char do_remote_wakeup : 1 ;
   unsigned char reset_resume : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
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
   unsigned char poisoned : 1 ;
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
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
};
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
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct rc_map_table {
   u32 scancode ;
   u32 keycode ;
};
struct rc_map {
   struct rc_map_table *scan ;
   unsigned int size ;
   unsigned int len ;
   unsigned int alloc ;
   u64 rc_type ;
   char const *name ;
   spinlock_t lock ;
};
enum rc_driver_type {
    RC_DRIVER_SCANCODE = 0,
    RC_DRIVER_IR_RAW = 1
} ;
struct ir_raw_event_ctrl;
struct rc_dev {
   struct device dev ;
   char const *input_name ;
   char const *input_phys ;
   struct input_id input_id ;
   char *driver_name ;
   char const *map_name ;
   struct rc_map rc_map ;
   struct mutex lock ;
   unsigned long devno ;
   struct ir_raw_event_ctrl *raw ;
   struct input_dev *input_dev ;
   enum rc_driver_type driver_type ;
   bool idle ;
   u64 allowed_protos ;
   u32 scanmask ;
   void *priv ;
   spinlock_t keylock ;
   bool keypressed ;
   unsigned long keyup_jiffies ;
   struct timer_list timer_keyup ;
   u32 last_keycode ;
   u32 last_scancode ;
   u8 last_toggle ;
   u32 timeout ;
   u32 min_timeout ;
   u32 max_timeout ;
   u32 rx_resolution ;
   u32 tx_resolution ;
   int (*change_protocol)(struct rc_dev * , u64 ) ;
   int (*open)(struct rc_dev * ) ;
   void (*close)(struct rc_dev * ) ;
   int (*s_tx_mask)(struct rc_dev * , u32 ) ;
   int (*s_tx_carrier)(struct rc_dev * , u32 ) ;
   int (*s_tx_duty_cycle)(struct rc_dev * , u32 ) ;
   int (*s_rx_carrier_range)(struct rc_dev * , u32 , u32 ) ;
   int (*tx_ir)(struct rc_dev * , unsigned int * , unsigned int ) ;
   void (*s_idle)(struct rc_dev * , bool ) ;
   int (*s_learning_mode)(struct rc_dev * , int ) ;
   int (*s_carrier_report)(struct rc_dev * , int ) ;
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
   char *full_name ;
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
struct i2c_msg;
struct i2c_msg;
struct i2c_algorithm;
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_adapter;
union i2c_smbus_data;
union i2c_smbus_data;
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
enum fe_type {
    FE_QPSK = 0,
    FE_QAM = 1,
    FE_OFDM = 2,
    FE_ATSC = 3
} ;
typedef enum fe_type fe_type_t;
enum fe_caps {
    FE_IS_STUPID = 0,
    FE_CAN_INVERSION_AUTO = 1,
    FE_CAN_FEC_1_2 = 2,
    FE_CAN_FEC_2_3 = 4,
    FE_CAN_FEC_3_4 = 8,
    FE_CAN_FEC_4_5 = 16,
    FE_CAN_FEC_5_6 = 32,
    FE_CAN_FEC_6_7 = 64,
    FE_CAN_FEC_7_8 = 128,
    FE_CAN_FEC_8_9 = 256,
    FE_CAN_FEC_AUTO = 512,
    FE_CAN_QPSK = 1024,
    FE_CAN_QAM_16 = 2048,
    FE_CAN_QAM_32 = 4096,
    FE_CAN_QAM_64 = 8192,
    FE_CAN_QAM_128 = 16384,
    FE_CAN_QAM_256 = 32768,
    FE_CAN_QAM_AUTO = 65536,
    FE_CAN_TRANSMISSION_MODE_AUTO = 131072,
    FE_CAN_BANDWIDTH_AUTO = 262144,
    FE_CAN_GUARD_INTERVAL_AUTO = 524288,
    FE_CAN_HIERARCHY_AUTO = 1048576,
    FE_CAN_8VSB = 2097152,
    FE_CAN_16VSB = 4194304,
    FE_HAS_EXTENDED_CAPS = 8388608,
    FE_CAN_TURBO_FEC = 134217728,
    FE_CAN_2G_MODULATION = 268435456,
    FE_NEEDS_BENDING = 536870912,
    FE_CAN_RECOVER = 1073741824,
    FE_CAN_MUTE_TS = (-0x7FFFFFFF-1)
} ;
typedef enum fe_caps fe_caps_t;
struct dvb_frontend_info {
   char name[128U] ;
   fe_type_t type ;
   __u32 frequency_min ;
   __u32 frequency_max ;
   __u32 frequency_stepsize ;
   __u32 frequency_tolerance ;
   __u32 symbol_rate_min ;
   __u32 symbol_rate_max ;
   __u32 symbol_rate_tolerance ;
   __u32 notifier_delay ;
   fe_caps_t caps ;
};
struct dvb_diseqc_master_cmd {
   __u8 msg[6U] ;
   __u8 msg_len ;
};
struct dvb_diseqc_slave_reply {
   __u8 msg[4U] ;
   __u8 msg_len ;
   int timeout ;
};
enum fe_sec_voltage {
    SEC_VOLTAGE_13 = 0,
    SEC_VOLTAGE_18 = 1,
    SEC_VOLTAGE_OFF = 2
} ;
typedef enum fe_sec_voltage fe_sec_voltage_t;
enum fe_sec_tone_mode {
    SEC_TONE_ON = 0,
    SEC_TONE_OFF = 1
} ;
typedef enum fe_sec_tone_mode fe_sec_tone_mode_t;
enum fe_sec_mini_cmd {
    SEC_MINI_A = 0,
    SEC_MINI_B = 1
} ;
typedef enum fe_sec_mini_cmd fe_sec_mini_cmd_t;
enum fe_status {
    FE_HAS_SIGNAL = 1,
    FE_HAS_CARRIER = 2,
    FE_HAS_VITERBI = 4,
    FE_HAS_SYNC = 8,
    FE_HAS_LOCK = 16,
    FE_TIMEDOUT = 32,
    FE_REINIT = 64
} ;
typedef enum fe_status fe_status_t;
enum fe_spectral_inversion {
    INVERSION_OFF = 0,
    INVERSION_ON = 1,
    INVERSION_AUTO = 2
} ;
typedef enum fe_spectral_inversion fe_spectral_inversion_t;
enum fe_code_rate {
    FEC_NONE = 0,
    FEC_1_2 = 1,
    FEC_2_3 = 2,
    FEC_3_4 = 3,
    FEC_4_5 = 4,
    FEC_5_6 = 5,
    FEC_6_7 = 6,
    FEC_7_8 = 7,
    FEC_8_9 = 8,
    FEC_AUTO = 9,
    FEC_3_5 = 10,
    FEC_9_10 = 11
} ;
typedef enum fe_code_rate fe_code_rate_t;
enum fe_modulation {
    QPSK = 0,
    QAM_16 = 1,
    QAM_32 = 2,
    QAM_64 = 3,
    QAM_128 = 4,
    QAM_256 = 5,
    QAM_AUTO = 6,
    VSB_8 = 7,
    VSB_16 = 8,
    PSK_8 = 9,
    APSK_16 = 10,
    APSK_32 = 11,
    DQPSK = 12
} ;
typedef enum fe_modulation fe_modulation_t;
enum fe_transmit_mode {
    TRANSMISSION_MODE_2K = 0,
    TRANSMISSION_MODE_8K = 1,
    TRANSMISSION_MODE_AUTO = 2,
    TRANSMISSION_MODE_4K = 3,
    TRANSMISSION_MODE_1K = 4,
    TRANSMISSION_MODE_16K = 5,
    TRANSMISSION_MODE_32K = 6
} ;
typedef enum fe_transmit_mode fe_transmit_mode_t;
enum fe_guard_interval {
    GUARD_INTERVAL_1_32 = 0,
    GUARD_INTERVAL_1_16 = 1,
    GUARD_INTERVAL_1_8 = 2,
    GUARD_INTERVAL_1_4 = 3,
    GUARD_INTERVAL_AUTO = 4,
    GUARD_INTERVAL_1_128 = 5,
    GUARD_INTERVAL_19_128 = 6,
    GUARD_INTERVAL_19_256 = 7
} ;
typedef enum fe_guard_interval fe_guard_interval_t;
enum fe_hierarchy {
    HIERARCHY_NONE = 0,
    HIERARCHY_1 = 1,
    HIERARCHY_2 = 2,
    HIERARCHY_4 = 3,
    HIERARCHY_AUTO = 4
} ;
typedef enum fe_hierarchy fe_hierarchy_t;
enum fe_pilot {
    PILOT_ON = 0,
    PILOT_OFF = 1,
    PILOT_AUTO = 2
} ;
typedef enum fe_pilot fe_pilot_t;
enum fe_rolloff {
    ROLLOFF_35 = 0,
    ROLLOFF_20 = 1,
    ROLLOFF_25 = 2,
    ROLLOFF_AUTO = 3
} ;
typedef enum fe_rolloff fe_rolloff_t;
enum fe_delivery_system {
    SYS_UNDEFINED = 0,
    SYS_DVBC_ANNEX_A = 1,
    SYS_DVBC_ANNEX_B = 2,
    SYS_DVBT = 3,
    SYS_DSS = 4,
    SYS_DVBS = 5,
    SYS_DVBS2 = 6,
    SYS_DVBH = 7,
    SYS_ISDBT = 8,
    SYS_ISDBS = 9,
    SYS_ISDBC = 10,
    SYS_ATSC = 11,
    SYS_ATSCMH = 12,
    SYS_DMBTH = 13,
    SYS_CMMB = 14,
    SYS_DAB = 15,
    SYS_DVBT2 = 16,
    SYS_TURBO = 17,
    SYS_DVBC_ANNEX_C = 18
} ;
typedef enum fe_delivery_system fe_delivery_system_t;
struct __anonstruct_buffer_181 {
   __u8 data[32U] ;
   __u32 len ;
   __u32 reserved1[3U] ;
   void *reserved2 ;
};
union __anonunion_u_180 {
   __u32 data ;
   struct __anonstruct_buffer_181 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3U] ;
   union __anonunion_u_180 u ;
   int result ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct dvb_frontend;
struct dvb_frontend;
struct dvb_device;
struct dvb_adapter {
   int num ;
   struct list_head list_head ;
   struct list_head device_list ;
   char const *name ;
   u8 proposed_mac[6U] ;
   void *priv ;
   struct device *device ;
   struct module *module ;
   int mfe_shared ;
   struct dvb_device *mfe_dvbdev ;
   struct mutex mfe_lock ;
   int (*fe_ioctl_override)(struct dvb_frontend * , unsigned int , void * , unsigned int ) ;
};
struct dvb_device {
   struct list_head list_head ;
   struct file_operations const *fops ;
   struct dvb_adapter *adapter ;
   int type ;
   int minor ;
   u32 id ;
   int readers ;
   int writers ;
   int users ;
   wait_queue_head_t wait_queue ;
   int (*kernel_ioctl)(struct file * , unsigned int , void * ) ;
   void *priv ;
};
struct dvb_frontend_tune_settings {
   int min_delay_ms ;
   int step_size ;
   int max_drift ;
};
struct dvb_tuner_info {
   char name[128U] ;
   u32 frequency_min ;
   u32 frequency_max ;
   u32 frequency_step ;
   u32 bandwidth_min ;
   u32 bandwidth_max ;
   u32 bandwidth_step ;
};
struct analog_parameters {
   unsigned int frequency ;
   unsigned int mode ;
   unsigned int audmode ;
   u64 std ;
};
enum tuner_param {
    DVBFE_TUNER_FREQUENCY = 1,
    DVBFE_TUNER_TUNERSTEP = 2,
    DVBFE_TUNER_IFFREQ = 4,
    DVBFE_TUNER_BANDWIDTH = 8,
    DVBFE_TUNER_REFCLOCK = 16,
    DVBFE_TUNER_IQSENSE = 32,
    DVBFE_TUNER_DUMMY = (-0x7FFFFFFF-1)
} ;
enum dvbfe_algo {
    DVBFE_ALGO_HW = 1,
    DVBFE_ALGO_SW = 2,
    DVBFE_ALGO_CUSTOM = 4,
    DVBFE_ALGO_RECOVERY = (-0x7FFFFFFF-1)
} ;
struct tuner_state {
   u32 frequency ;
   u32 tunerstep ;
   u32 ifreq ;
   u32 bandwidth ;
   u32 iqsense ;
   u32 refclock ;
};
enum dvbfe_search {
    DVBFE_ALGO_SEARCH_SUCCESS = 1,
    DVBFE_ALGO_SEARCH_ASLEEP = 2,
    DVBFE_ALGO_SEARCH_FAILED = 4,
    DVBFE_ALGO_SEARCH_INVALID = 8,
    DVBFE_ALGO_SEARCH_AGAIN = 16,
    DVBFE_ALGO_SEARCH_ERROR = (-0x7FFFFFFF-1)
} ;
struct dvb_tuner_ops {
   struct dvb_tuner_info info ;
   int (*release)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*set_params)(struct dvb_frontend * ) ;
   int (*set_analog_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*calc_regs)(struct dvb_frontend * , u8 * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
   int (*get_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_bandwidth)(struct dvb_frontend * , u32 * ) ;
   int (*get_if_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_status)(struct dvb_frontend * , u32 * ) ;
   int (*get_rf_strength)(struct dvb_frontend * , u16 * ) ;
   int (*set_frequency)(struct dvb_frontend * , u32 ) ;
   int (*set_bandwidth)(struct dvb_frontend * , u32 ) ;
   int (*set_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
   int (*get_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
};
struct analog_demod_info {
   char *name ;
};
struct analog_demod_ops {
   struct analog_demod_info info ;
   void (*set_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*has_signal)(struct dvb_frontend * ) ;
   int (*get_afc)(struct dvb_frontend * ) ;
   void (*tuner_status)(struct dvb_frontend * ) ;
   void (*standby)(struct dvb_frontend * ) ;
   void (*release)(struct dvb_frontend * ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
};
struct dtv_frontend_properties;
struct dtv_frontend_properties;
struct dvb_frontend_ops {
   struct dvb_frontend_info info ;
   u8 delsys[8U] ;
   void (*release)(struct dvb_frontend * ) ;
   void (*release_sec)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*write)(struct dvb_frontend * , u8 const * , int ) ;
   int (*tune)(struct dvb_frontend * , bool , unsigned int , unsigned int * , fe_status_t * ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend * ) ;
   int (*set_frontend)(struct dvb_frontend * ) ;
   int (*get_tune_settings)(struct dvb_frontend * , struct dvb_frontend_tune_settings * ) ;
   int (*get_frontend)(struct dvb_frontend * ) ;
   int (*read_status)(struct dvb_frontend * , fe_status_t * ) ;
   int (*read_ber)(struct dvb_frontend * , u32 * ) ;
   int (*read_signal_strength)(struct dvb_frontend * , u16 * ) ;
   int (*read_snr)(struct dvb_frontend * , u16 * ) ;
   int (*read_ucblocks)(struct dvb_frontend * , u32 * ) ;
   int (*diseqc_reset_overload)(struct dvb_frontend * ) ;
   int (*diseqc_send_master_cmd)(struct dvb_frontend * , struct dvb_diseqc_master_cmd * ) ;
   int (*diseqc_recv_slave_reply)(struct dvb_frontend * , struct dvb_diseqc_slave_reply * ) ;
   int (*diseqc_send_burst)(struct dvb_frontend * , fe_sec_mini_cmd_t ) ;
   int (*set_tone)(struct dvb_frontend * , fe_sec_tone_mode_t ) ;
   int (*set_voltage)(struct dvb_frontend * , fe_sec_voltage_t ) ;
   int (*enable_high_lnb_voltage)(struct dvb_frontend * , long ) ;
   int (*dishnetwork_send_legacy_command)(struct dvb_frontend * , unsigned long ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*ts_bus_ctrl)(struct dvb_frontend * , int ) ;
   enum dvbfe_search (*search)(struct dvb_frontend * ) ;
   struct dvb_tuner_ops tuner_ops ;
   struct analog_demod_ops analog_ops ;
   int (*set_property)(struct dvb_frontend * , struct dtv_property * ) ;
   int (*get_property)(struct dvb_frontend * , struct dtv_property * ) ;
};
struct __anonstruct_layer_183 {
   u8 segment_count ;
   fe_code_rate_t fec ;
   fe_modulation_t modulation ;
   u8 interleaving ;
};
struct dtv_frontend_properties {
   u32 state ;
   u32 frequency ;
   fe_modulation_t modulation ;
   fe_sec_voltage_t voltage ;
   fe_sec_tone_mode_t sectone ;
   fe_spectral_inversion_t inversion ;
   fe_code_rate_t fec_inner ;
   fe_transmit_mode_t transmission_mode ;
   u32 bandwidth_hz ;
   fe_guard_interval_t guard_interval ;
   fe_hierarchy_t hierarchy ;
   u32 symbol_rate ;
   fe_code_rate_t code_rate_HP ;
   fe_code_rate_t code_rate_LP ;
   fe_pilot_t pilot ;
   fe_rolloff_t rolloff ;
   fe_delivery_system_t delivery_system ;
   u8 isdbt_partial_reception ;
   u8 isdbt_sb_mode ;
   u8 isdbt_sb_subchannel ;
   u32 isdbt_sb_segment_idx ;
   u32 isdbt_sb_segment_count ;
   u8 isdbt_layer_enabled ;
   struct __anonstruct_layer_183 layer[3U] ;
   u32 isdbs_ts_id ;
   u32 dvbt2_plp_id ;
};
struct dvb_frontend {
   struct dvb_frontend_ops ops ;
   struct dvb_adapter *dvb ;
   void *demodulator_priv ;
   void *tuner_priv ;
   void *frontend_priv ;
   void *sec_priv ;
   void *analog_demod_priv ;
   struct dtv_frontend_properties dtv_property_cache ;
   int (*callback)(void * , int , int , int ) ;
   int id ;
};
enum ldv_21821 {
    DMX_OUT_DECODER = 0,
    DMX_OUT_TAP = 1,
    DMX_OUT_TS_TAP = 2,
    DMX_OUT_TSDEMUX_TAP = 3
} ;
typedef enum ldv_21821 dmx_output_t;
enum ldv_21823 {
    DMX_IN_FRONTEND = 0,
    DMX_IN_DVR = 1
} ;
typedef enum ldv_21823 dmx_input_t;
enum ldv_21825 {
    DMX_PES_AUDIO0 = 0,
    DMX_PES_VIDEO0 = 1,
    DMX_PES_TELETEXT0 = 2,
    DMX_PES_SUBTITLE0 = 3,
    DMX_PES_PCR0 = 4,
    DMX_PES_AUDIO1 = 5,
    DMX_PES_VIDEO1 = 6,
    DMX_PES_TELETEXT1 = 7,
    DMX_PES_SUBTITLE1 = 8,
    DMX_PES_PCR1 = 9,
    DMX_PES_AUDIO2 = 10,
    DMX_PES_VIDEO2 = 11,
    DMX_PES_TELETEXT2 = 12,
    DMX_PES_SUBTITLE2 = 13,
    DMX_PES_PCR2 = 14,
    DMX_PES_AUDIO3 = 15,
    DMX_PES_VIDEO3 = 16,
    DMX_PES_TELETEXT3 = 17,
    DMX_PES_SUBTITLE3 = 18,
    DMX_PES_PCR3 = 19,
    DMX_PES_OTHER = 20
} ;
typedef enum ldv_21825 dmx_pes_type_t;
struct dmx_filter {
   __u8 filter[16U] ;
   __u8 mask[16U] ;
   __u8 mode[16U] ;
};
typedef struct dmx_filter dmx_filter_t;
struct dmx_sct_filter_params {
   __u16 pid ;
   dmx_filter_t filter ;
   __u32 timeout ;
   __u32 flags ;
};
struct dmx_pes_filter_params {
   __u16 pid ;
   dmx_input_t input ;
   dmx_output_t output ;
   dmx_pes_type_t pes_type ;
   __u32 flags ;
};
struct dmx_caps {
   __u32 caps ;
   int num_decoders ;
};
enum ldv_21839 {
    DMX_SOURCE_FRONT0 = 0,
    DMX_SOURCE_FRONT1 = 1,
    DMX_SOURCE_FRONT2 = 2,
    DMX_SOURCE_FRONT3 = 3,
    DMX_SOURCE_DVR0 = 16,
    DMX_SOURCE_DVR1 = 17,
    DMX_SOURCE_DVR2 = 18,
    DMX_SOURCE_DVR3 = 19
} ;
typedef enum ldv_21839 dmx_source_t;
enum dmx_success {
    DMX_OK = 0,
    DMX_LENGTH_ERROR = 1,
    DMX_OVERRUN_ERROR = 2,
    DMX_CRC_ERROR = 3,
    DMX_FRAME_ERROR = 4,
    DMX_FIFO_ERROR = 5,
    DMX_MISSED_ERROR = 6
} ;
enum dmx_ts_pes {
    DMX_TS_PES_AUDIO0 = 0,
    DMX_TS_PES_VIDEO0 = 1,
    DMX_TS_PES_TELETEXT0 = 2,
    DMX_TS_PES_SUBTITLE0 = 3,
    DMX_TS_PES_PCR0 = 4,
    DMX_TS_PES_AUDIO1 = 5,
    DMX_TS_PES_VIDEO1 = 6,
    DMX_TS_PES_TELETEXT1 = 7,
    DMX_TS_PES_SUBTITLE1 = 8,
    DMX_TS_PES_PCR1 = 9,
    DMX_TS_PES_AUDIO2 = 10,
    DMX_TS_PES_VIDEO2 = 11,
    DMX_TS_PES_TELETEXT2 = 12,
    DMX_TS_PES_SUBTITLE2 = 13,
    DMX_TS_PES_PCR2 = 14,
    DMX_TS_PES_AUDIO3 = 15,
    DMX_TS_PES_VIDEO3 = 16,
    DMX_TS_PES_TELETEXT3 = 17,
    DMX_TS_PES_SUBTITLE3 = 18,
    DMX_TS_PES_PCR3 = 19,
    DMX_TS_PES_OTHER = 20
} ;
struct dmx_demux;
struct dmx_ts_feed {
   int is_filtering ;
   struct dmx_demux *parent ;
   void *priv ;
   int (*set)(struct dmx_ts_feed * , u16 , int , enum dmx_ts_pes , size_t , struct timespec ) ;
   int (*start_filtering)(struct dmx_ts_feed * ) ;
   int (*stop_filtering)(struct dmx_ts_feed * ) ;
};
struct dmx_section_feed;
struct dmx_section_filter {
   u8 filter_value[18U] ;
   u8 filter_mask[18U] ;
   u8 filter_mode[18U] ;
   struct dmx_section_feed *parent ;
   void *priv ;
};
struct dmx_section_feed {
   int is_filtering ;
   struct dmx_demux *parent ;
   void *priv ;
   int check_crc ;
   u32 crc_val ;
   u8 *secbuf ;
   u8 secbuf_base[4284U] ;
   u16 secbufp ;
   u16 seclen ;
   u16 tsfeedp ;
   int (*set)(struct dmx_section_feed * , u16 , size_t , int ) ;
   int (*allocate_filter)(struct dmx_section_feed * , struct dmx_section_filter ** ) ;
   int (*release_filter)(struct dmx_section_feed * , struct dmx_section_filter * ) ;
   int (*start_filtering)(struct dmx_section_feed * ) ;
   int (*stop_filtering)(struct dmx_section_feed * ) ;
};
enum dmx_frontend_source {
    DMX_MEMORY_FE = 0,
    DMX_FRONTEND_0 = 1,
    DMX_FRONTEND_1 = 2,
    DMX_FRONTEND_2 = 3,
    DMX_FRONTEND_3 = 4,
    DMX_STREAM_0 = 5,
    DMX_STREAM_1 = 6,
    DMX_STREAM_2 = 7,
    DMX_STREAM_3 = 8
} ;
struct dmx_frontend {
   struct list_head connectivity_list ;
   enum dmx_frontend_source source ;
};
struct dmx_demux {
   u32 capabilities ;
   struct dmx_frontend *frontend ;
   void *priv ;
   int (*open)(struct dmx_demux * ) ;
   int (*close)(struct dmx_demux * ) ;
   int (*write)(struct dmx_demux * , char const * , size_t ) ;
   int (*allocate_ts_feed)(struct dmx_demux * , struct dmx_ts_feed ** , int (*)(u8 const * ,
                                                                                size_t ,
                                                                                u8 const * ,
                                                                                size_t ,
                                                                                struct dmx_ts_feed * ,
                                                                                enum dmx_success ) ) ;
   int (*release_ts_feed)(struct dmx_demux * , struct dmx_ts_feed * ) ;
   int (*allocate_section_feed)(struct dmx_demux * , struct dmx_section_feed ** ,
                                int (*)(u8 const * , size_t , u8 const * , size_t ,
                                        struct dmx_section_filter * , enum dmx_success ) ) ;
   int (*release_section_feed)(struct dmx_demux * , struct dmx_section_feed * ) ;
   int (*add_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   int (*remove_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   struct list_head *(*get_frontends)(struct dmx_demux * ) ;
   int (*connect_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   int (*disconnect_frontend)(struct dmx_demux * ) ;
   int (*get_pes_pids)(struct dmx_demux * , u16 * ) ;
   int (*get_caps)(struct dmx_demux * , struct dmx_caps * ) ;
   int (*set_source)(struct dmx_demux * , dmx_source_t const * ) ;
   int (*get_stc)(struct dmx_demux * , unsigned int , u64 * , unsigned int * ) ;
};
struct dvb_demux_feed;
struct dvb_demux_filter {
   struct dmx_section_filter filter ;
   u8 maskandmode[18U] ;
   u8 maskandnotmode[18U] ;
   int doneq ;
   struct dvb_demux_filter *next ;
   struct dvb_demux_feed *feed ;
   int index ;
   int state ;
   int type ;
   u16 hw_handle ;
   struct timer_list timer ;
};
union __anonunion_feed_184 {
   struct dmx_ts_feed ts ;
   struct dmx_section_feed sec ;
};
union __anonunion_cb_185 {
   int (*ts)(u8 const * , size_t , u8 const * , size_t , struct dmx_ts_feed * ,
             enum dmx_success ) ;
   int (*sec)(u8 const * , size_t , u8 const * , size_t , struct dmx_section_filter * ,
              enum dmx_success ) ;
};
struct dvb_demux;
struct dvb_demux_feed {
   union __anonunion_feed_184 feed ;
   union __anonunion_cb_185 cb ;
   struct dvb_demux *demux ;
   void *priv ;
   int type ;
   int state ;
   u16 pid ;
   u8 *buffer ;
   int buffer_size ;
   struct timespec timeout ;
   struct dvb_demux_filter *filter ;
   int ts_type ;
   enum dmx_ts_pes pes_type ;
   int cc ;
   int pusi_seen ;
   u16 peslen ;
   struct list_head list_head ;
   unsigned int index ;
};
struct dvb_demux {
   struct dmx_demux dmx ;
   void *priv ;
   int filternum ;
   int feednum ;
   int (*start_feed)(struct dvb_demux_feed * ) ;
   int (*stop_feed)(struct dvb_demux_feed * ) ;
   int (*write_to_decoder)(struct dvb_demux_feed * , u8 const * , size_t ) ;
   u32 (*check_crc32)(struct dvb_demux_feed * , u8 const * , size_t ) ;
   void (*memcopy)(struct dvb_demux_feed * , u8 * , u8 const * , size_t ) ;
   int users ;
   struct dvb_demux_filter *filter ;
   struct dvb_demux_feed *feed ;
   struct list_head frontend_list ;
   struct dvb_demux_feed *pesfilter[20U] ;
   u16 pids[20U] ;
   int playing ;
   int recording ;
   struct list_head feed_list ;
   u8 tsbuf[204U] ;
   int tsbufp ;
   struct mutex mutex ;
   spinlock_t lock ;
   uint8_t *cnt_storage ;
   struct timespec speed_last_time ;
   uint32_t speed_pkts_cnt ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_186 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_186 sync_serial_settings;
struct __anonstruct_te1_settings_187 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_187 te1_settings;
struct __anonstruct_raw_hdlc_proto_188 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_188 raw_hdlc_proto;
struct __anonstruct_fr_proto_189 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_189 fr_proto;
struct __anonstruct_fr_proto_pvc_190 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_190 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_191 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_191 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_192 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_192 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_193 {
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
   union __anonunion_ifs_ifsu_193 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_194 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_195 {
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
   union __anonunion_ifr_ifrn_194 ifr_ifrn ;
   union __anonunion_ifr_ifru_195 ifr_ifru ;
};
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct net;
struct net;
struct sk_buff;
struct sk_buff;
typedef s32 dma_cookie_t;
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
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned int mask ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct_ldv_30303_200 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_30304_199 {
   __wsum csum ;
   struct __anonstruct_ldv_30303_200 ldv_30303 ;
};
union __anonunion_ldv_30340_201 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 avail_size ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_30304_199 ldv_30304 ;
   __u32 priority ;
   unsigned char local_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct sk_buff *nfct_reasm ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_rxhash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_30340_201 ldv_30340 ;
   sk_buff_data_t transport_header ;
   sk_buff_data_t network_header ;
   sk_buff_data_t mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
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
   __u32 tx_rate ;
   __u32 spoofchk ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct dev_pm_qos_request {
   struct plist_node node ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
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
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
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
   __u8 reserved2 ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
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
   __u8 hdata[60U] ;
};
struct ethtool_flow_ext {
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
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
};
struct prot_inuse;
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[31U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[27U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[5U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[15U] ;
};
struct udp_mib {
   unsigned long mibs[7U] ;
};
struct linux_mib {
   unsigned long mibs[83U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[27U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   spinlock_t sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   atomic_t mem ;
   struct list_head lru_list ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct ipv4_devconf;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_rules_ops;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct sock *tcp_sock ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   int sysctl_rt_cache_rebuild_count ;
   int current_rt_cache_rebuild_count ;
   unsigned int sysctl_ping_group_range[2U] ;
   long sysctl_tcp_mem[3U] ;
   atomic_t rt_genid ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
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
   void (*update_pmtu)(struct dst_entry * , u32 ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *table ;
   struct ctl_table_header *frags_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int icmpv6_time ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
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
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
typedef int read_proc_t(char * , char ** , off_t , int , int * , void * );
typedef int write_proc_t(struct file * , char const * , unsigned long , void * );
struct proc_dir_entry {
   unsigned int low_ino ;
   umode_t mode ;
   nlink_t nlink ;
   uid_t uid ;
   gid_t gid ;
   loff_t size ;
   struct inode_operations const *proc_iops ;
   struct file_operations const *proc_fops ;
   struct proc_dir_entry *next ;
   struct proc_dir_entry *parent ;
   struct proc_dir_entry *subdir ;
   void *data ;
   read_proc_t *read_proc ;
   write_proc_t *write_proc ;
   atomic_t count ;
   int pde_users ;
   struct completion *pde_unload_completion ;
   struct list_head pde_openers ;
   spinlock_t pde_unload_lock ;
   u8 namelen ;
   char name[0U] ;
};
struct ebt_table;
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
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
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   int sysctl_events ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_acct ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int sysctl_log_invalid ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   char *slabname ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
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
   wait_queue_head_t km_waitq ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
};
struct net_generic;
struct net_generic;
struct netns_ipvs;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_dccp dccp ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
};
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
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
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
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
struct cgroupfs_root;
struct cgroupfs_root;
struct cgroup;
struct cgroup;
struct css_id;
struct css_id;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   atomic_t refcnt ;
   unsigned long flags ;
   struct css_id *id ;
};
struct cgroup {
   unsigned long flags ;
   atomic_t count ;
   struct list_head sibling ;
   struct list_head children ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   struct cgroup_subsys_state *subsys[64U] ;
   struct cgroupfs_root *root ;
   struct cgroup *top_cgroup ;
   struct list_head css_sets ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct rcu_head rcu_head ;
   struct list_head event_list ;
   spinlock_t event_list_lock ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cg_links ;
   struct cgroup_subsys_state *subsys[64U] ;
   struct rcu_head rcu_head ;
};
struct netprio_map {
   struct rcu_head rcu ;
   u32 priomap_len ;
   u32 priomap[0U] ;
};
struct netpoll_info;
struct netpoll_info;
struct phy_device;
struct phy_device;
struct wireless_dev;
struct wireless_dev;
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
   struct rcu_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct rcu_head rcu ;
   struct work_struct free_work ;
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
   struct rcu_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct rcu_head rcu ;
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
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * ) ;
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
   int (*ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
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
};
struct iw_handler_def;
struct iw_public_data;
struct vlan_info;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_tstats;
struct pcpu_dstats;
union __anonunion_ldv_36676_218 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_tstats *tstats ;
   struct pcpu_dstats *dstats ;
};
struct garp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct pm_qos_request pm_qos_req ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   unsigned int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
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
   unsigned char neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ec_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   struct net_device *master ;
   unsigned char *dev_addr ;
   struct netdev_hw_addr_list dev_addrs ;
   unsigned char broadcast[32U] ;
   struct kset *queues_kset ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   struct cpu_rmap *rx_cpu_rmap ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
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
   union __anonunion_ldv_36676_218 ldv_36676 ;
   struct garp_port *garp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   int group ;
};
struct ipv4_devconf {
   void *sysctl ;
   int data[25U] ;
   unsigned long state[1U] ;
};
struct in_ifaddr;
struct ip_mc_list;
struct in_device {
   struct net_device *dev ;
   atomic_t refcnt ;
   int dead ;
   struct in_ifaddr *ifa_list ;
   struct ip_mc_list *mc_list ;
   int mc_count ;
   spinlock_t mc_tomb_lock ;
   struct ip_mc_list *mc_tomb ;
   unsigned long mr_v1_seen ;
   unsigned long mr_v2_seen ;
   unsigned long mr_maxdelay ;
   unsigned char mr_qrv ;
   unsigned char mr_gq_running ;
   unsigned char mr_ifc_count ;
   struct timer_list mr_gq_timer ;
   struct timer_list mr_ifc_timer ;
   struct neigh_parms *arp_parms ;
   struct ipv4_devconf cnf ;
   struct rcu_head rcu_head ;
};
struct in_ifaddr {
   struct hlist_node hash ;
   struct in_ifaddr *ifa_next ;
   struct in_device *ifa_dev ;
   struct rcu_head rcu_head ;
   __be32 ifa_local ;
   __be32 ifa_address ;
   __be32 ifa_mask ;
   __be32 ifa_broadcast ;
   unsigned char ifa_scope ;
   unsigned char ifa_flags ;
   unsigned char ifa_prefixlen ;
   char ifa_label[16U] ;
};
struct dvb_net {
   struct dvb_device *dvbdev ;
   struct net_device *device[10U] ;
   int state[10U] ;
   unsigned char exit : 1 ;
   struct dmx_demux *demux ;
};
struct dvb_ringbuffer {
   u8 *data ;
   ssize_t size ;
   ssize_t pread ;
   ssize_t pwrite ;
   int error ;
   wait_queue_head_t queue ;
   spinlock_t lock ;
};
enum dmxdev_type {
    DMXDEV_TYPE_NONE = 0,
    DMXDEV_TYPE_SEC = 1,
    DMXDEV_TYPE_PES = 2
} ;
enum dmxdev_state {
    DMXDEV_STATE_FREE = 0,
    DMXDEV_STATE_ALLOCATED = 1,
    DMXDEV_STATE_SET = 2,
    DMXDEV_STATE_GO = 3,
    DMXDEV_STATE_DONE = 4,
    DMXDEV_STATE_TIMEDOUT = 5
} ;
union __anonunion_filter_222 {
   struct dmx_section_filter *sec ;
};
union __anonunion_feed_223 {
   struct list_head ts ;
   struct dmx_section_feed *sec ;
};
union __anonunion_params_224 {
   struct dmx_sct_filter_params sec ;
   struct dmx_pes_filter_params pes ;
};
struct dmxdev;
struct dmxdev_filter {
   union __anonunion_filter_222 filter ;
   union __anonunion_feed_223 feed ;
   union __anonunion_params_224 params ;
   enum dmxdev_type type ;
   enum dmxdev_state state ;
   struct dmxdev *dev ;
   struct dvb_ringbuffer buffer ;
   struct mutex mutex ;
   struct timer_list timer ;
   int todo ;
   u8 secheader[3U] ;
};
struct dmxdev {
   struct dvb_device *dvbdev ;
   struct dvb_device *dvr_dvbdev ;
   struct dmxdev_filter *filter ;
   struct dmx_demux *demux ;
   int filternum ;
   int capabilities ;
   unsigned char exit : 1 ;
   struct dmx_frontend *dvr_orig_fe ;
   struct dvb_ringbuffer dvr_buffer ;
   struct mutex mutex ;
   spinlock_t lock ;
};
struct dvb_usb_device_description {
   char const *name ;
   struct usb_device_id *cold_ids[15U] ;
   struct usb_device_id *warm_ids[15U] ;
};
struct dvb_usb_device;
struct dvb_usb_device;
struct dvb_usb_adapter;
struct dvb_usb_adapter;
struct usb_data_stream;
struct usb_data_stream;
struct __anonstruct_bulk_226 {
   int buffersize ;
};
struct __anonstruct_isoc_227 {
   int framesperurb ;
   int framesize ;
   int interval ;
};
union __anonunion_u_225 {
   struct __anonstruct_bulk_226 bulk ;
   struct __anonstruct_isoc_227 isoc ;
};
struct usb_data_stream_properties {
   int type ;
   int count ;
   int endpoint ;
   union __anonunion_u_225 u ;
};
struct dvb_usb_adapter_fe_properties {
   int caps ;
   int pid_filter_count ;
   int (*streaming_ctrl)(struct dvb_usb_adapter * , int ) ;
   int (*pid_filter_ctrl)(struct dvb_usb_adapter * , int ) ;
   int (*pid_filter)(struct dvb_usb_adapter * , int , u16 , int ) ;
   int (*frontend_attach)(struct dvb_usb_adapter * ) ;
   int (*tuner_attach)(struct dvb_usb_adapter * ) ;
   struct usb_data_stream_properties stream ;
   int size_of_priv ;
};
struct dvb_usb_adapter_properties {
   int size_of_priv ;
   int (*frontend_ctrl)(struct dvb_frontend * , int ) ;
   int (*fe_ioctl_override)(struct dvb_frontend * , unsigned int , void * , unsigned int ) ;
   int num_frontends ;
   struct dvb_usb_adapter_fe_properties fe[2U] ;
};
struct dvb_rc_legacy {
   struct rc_map_table *rc_map_table ;
   int rc_map_size ;
   int (*rc_query)(struct dvb_usb_device * , u32 * , int * ) ;
   int rc_interval ;
};
struct dvb_rc {
   char *rc_codes ;
   u64 protocol ;
   u64 allowed_protos ;
   enum rc_driver_type driver_type ;
   int (*change_protocol)(struct rc_dev * , u64 ) ;
   char *module_name ;
   int (*rc_query)(struct dvb_usb_device * ) ;
   int rc_interval ;
   bool bulk_mode ;
};
enum dvb_usb_mode {
    DVB_RC_LEGACY = 0,
    DVB_RC_CORE = 1
} ;
struct __anonstruct_rc_228 {
   enum dvb_usb_mode mode ;
   struct dvb_rc_legacy legacy ;
   struct dvb_rc core ;
};
struct dvb_usb_device_properties {
   int caps ;
   int usb_ctrl ;
   int (*download_firmware)(struct usb_device * , struct firmware const * ) ;
   char const *firmware ;
   int no_reconnect ;
   int size_of_priv ;
   int num_adapters ;
   struct dvb_usb_adapter_properties adapter[2U] ;
   int (*power_ctrl)(struct dvb_usb_device * , int ) ;
   int (*read_mac_address)(struct dvb_usb_device * , u8 * ) ;
   int (*identify_state)(struct usb_device * , struct dvb_usb_device_properties * ,
                         struct dvb_usb_device_description ** , int * ) ;
   struct __anonstruct_rc_228 rc ;
   struct i2c_algorithm *i2c_algo ;
   int generic_bulk_ctrl_endpoint ;
   int generic_bulk_ctrl_endpoint_response ;
   int num_device_descs ;
   struct dvb_usb_device_description devices[12U] ;
};
struct usb_data_stream {
   struct usb_device *udev ;
   struct usb_data_stream_properties props ;
   int state ;
   void (*complete)(struct usb_data_stream * , u8 * , size_t ) ;
   struct urb *urb_list[10U] ;
   int buf_num ;
   unsigned long buf_size ;
   u8 *buf_list[10U] ;
   dma_addr_t dma_addr[10U] ;
   int urbs_initialized ;
   int urbs_submitted ;
   void *user_priv ;
};
struct dvb_usb_fe_adapter {
   struct dvb_frontend *fe ;
   int (*fe_init)(struct dvb_frontend * ) ;
   int (*fe_sleep)(struct dvb_frontend * ) ;
   struct usb_data_stream stream ;
   int pid_filtering ;
   int max_feed_count ;
   void *priv ;
};
struct dvb_usb_adapter {
   struct dvb_usb_device *dev ;
   struct dvb_usb_adapter_properties props ;
   int state ;
   u8 id ;
   int feedcount ;
   struct dvb_adapter dvb_adap ;
   struct dmxdev dmxdev ;
   struct dvb_demux demux ;
   struct dvb_net dvb_net ;
   struct dvb_usb_fe_adapter fe_adap[2U] ;
   int active_fe ;
   int num_frontends_initialized ;
   void *priv ;
};
struct dvb_usb_device {
   struct dvb_usb_device_properties props ;
   struct dvb_usb_device_description *desc ;
   struct usb_device *udev ;
   int state ;
   int powered ;
   struct mutex usb_mutex ;
   struct mutex i2c_mutex ;
   struct i2c_adapter i2c_adap ;
   int num_adapters_initialized ;
   struct dvb_usb_adapter adapter[2U] ;
   struct rc_dev *rc_dev ;
   struct input_dev *input_dev ;
   char rc_phys[64U] ;
   struct delayed_work rc_query_work ;
   u32 last_event ;
   int last_state ;
   struct module *owner ;
   void *priv ;
};
struct stb0899_s1_reg {
   u16 address ;
   u8 data ;
};
struct stb0899_s2_reg {
   u16 offset ;
   u32 base_address ;
   u32 data ;
};
enum stb0899_inversion {
    IQ_SWAP_OFF = 0,
    IQ_SWAP_ON = 1,
    IQ_SWAP_AUTO = 2
} ;
struct stb0899_postproc {
   u16 gpio ;
   u8 level ;
};
struct stb0899_config {
   struct stb0899_s1_reg const *init_dev ;
   struct stb0899_s2_reg const *init_s2_demod ;
   struct stb0899_s1_reg const *init_s1_demod ;
   struct stb0899_s2_reg const *init_s2_fec ;
   struct stb0899_s1_reg const *init_tst ;
   struct stb0899_postproc const *postproc ;
   enum stb0899_inversion inversion ;
   u32 xtal_freq ;
   u8 demod_address ;
   u8 ts_output_mode ;
   u8 block_sync_mode ;
   u8 ts_pfbit_toggle ;
   u8 clock_polarity ;
   u8 data_clk_parity ;
   u8 fec_mode ;
   u8 data_output_ctl ;
   u8 data_fifo_mode ;
   u8 out_rate_comp ;
   u8 i2c_repeater ;
   int lo_clk ;
   int hi_clk ;
   u32 esno_ave ;
   u32 esno_quant ;
   u32 avframes_coarse ;
   u32 avframes_fine ;
   u32 miss_threshold ;
   u32 uwp_threshold_acq ;
   u32 uwp_threshold_track ;
   u32 uwp_threshold_sof ;
   u32 sof_search_timeout ;
   u32 btr_nco_bits ;
   u32 btr_gain_shift_offset ;
   u32 crl_nco_bits ;
   u32 ldpc_max_iter ;
   int (*tuner_set_frequency)(struct dvb_frontend * , u32 ) ;
   int (*tuner_get_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*tuner_set_bandwidth)(struct dvb_frontend * , u32 ) ;
   int (*tuner_get_bandwidth)(struct dvb_frontend * , u32 * ) ;
   int (*tuner_set_rfsiggain)(struct dvb_frontend * , u32 ) ;
};
struct stb6100_config {
   u8 tuner_address ;
   u32 refclock ;
};
struct dvb_ca_en50221 {
   struct module *owner ;
   int (*read_attribute_mem)(struct dvb_ca_en50221 * , int , int ) ;
   int (*write_attribute_mem)(struct dvb_ca_en50221 * , int , int , u8 ) ;
   int (*read_cam_control)(struct dvb_ca_en50221 * , int , u8 ) ;
   int (*write_cam_control)(struct dvb_ca_en50221 * , int , u8 , u8 ) ;
   int (*slot_reset)(struct dvb_ca_en50221 * , int ) ;
   int (*slot_shutdown)(struct dvb_ca_en50221 * , int ) ;
   int (*slot_ts_enable)(struct dvb_ca_en50221 * , int ) ;
   int (*poll_slot_status)(struct dvb_ca_en50221 * , int , int ) ;
   void *data ;
   void *private ;
};
struct az6027_device_state {
   struct dvb_ca_en50221 ca ;
   struct mutex ca_mutex ;
   u8 power_state ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
extern int printk(char const * , ...) ;
extern void *memset(void * , int , size_t ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern struct module __this_module ;
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
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
__inline static void *ldv_kmalloc_12(size_t size , gfp_t flags )
{ void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern void msleep(unsigned int ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{ void *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  struct device const *__cil_tmp6 ;
  {
  {
  __cil_tmp3 = (unsigned long )intf;
  __cil_tmp4 = __cil_tmp3 + 48;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  __cil_tmp6 = (struct device const *)__cil_tmp5;
  tmp = dev_get_drvdata(__cil_tmp6);
  }
  return (tmp);
}
}
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
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
extern int i2c_transfer(struct i2c_adapter * , struct i2c_msg * , int ) ;
__inline static void *i2c_get_adapdata(struct i2c_adapter const *dev )
{ void *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device const *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )dev;
  __cil_tmp4 = __cil_tmp3 + 176;
  __cil_tmp5 = (struct device const *)__cil_tmp4;
  tmp = dev_get_drvdata(__cil_tmp5);
  }
  return (tmp);
}
}
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
struct sk_buff *ldv_skb_clone_22(struct sk_buff *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
extern struct sk_buff *skb_copy(struct sk_buff const * , gfp_t ) ;
struct sk_buff *ldv_skb_copy_24(struct sk_buff const *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
int ldv_pskb_expand_head_27(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t ldv_func_arg4 ) ;
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv___netdev_alloc_skb_25(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t ldv_func_arg3 ) ;
struct sk_buff *ldv___netdev_alloc_skb_26(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t ldv_func_arg3 ) ;
extern int dvb_usb_device_init(struct usb_interface * , struct dvb_usb_device_properties * ,
                               struct module * , struct dvb_usb_device ** , short * ) ;
extern void dvb_usb_device_exit(struct usb_interface * ) ;
int dvb_usb_az6027_debug ;
extern struct dvb_frontend *stb0899_attach(struct stb0899_config * , struct i2c_adapter * ) ;
static struct stb0899_s2_reg const stb0899_s2_init_2[177U] =
  { {(u16 )62208U, 0U, 259U},
        {(u16 )62212U, 0U, 1053940310U},
        {(u16 )62216U, 0U, 16384U},
        {(u16 )62220U, 0U, 10974U},
        {(u16 )62224U, 0U, 444U},
        {(u16 )62228U, 0U, 512U},
        {(u16 )62236U, 0U, 15U},
        {(u16 )62240U, 0U, 66800160U},
        {(u16 )62244U, 0U, 2100375U},
        {(u16 )62248U, 0U, 22U},
        {(u16 )62252U, 0U, 0U},
        {(u16 )62256U, 0U, 0U},
        {(u16 )62260U, 0U, 0U},
        {(u16 )62264U, 0U, 1053857718U},
        {(u16 )62268U, 0U, 0U},
        {(u16 )62272U, 0U, 0U},
        {(u16 )62276U, 0U, 258792449U},
        {(u16 )62280U, 0U, 0U},
        {(u16 )62284U, 0U, 14739U},
        {(u16 )62288U, 0U, 867439U},
        {(u16 )62292U, 0U, 0U},
        {(u16 )62296U, 0U, 0U},
        {(u16 )62300U, 0U, 37282702U},
        {(u16 )62304U, 0U, 0U},
        {(u16 )62308U, 0U, 0U},
        {(u16 )62312U, 0U, 0U},
        {(u16 )62316U, 0U, 0U},
        {(u16 )62332U, 0U, 0U},
        {(u16 )62224U, 32U, 0U},
        {(u16 )62228U, 32U, 1074200576U},
        {(u16 )62296U, 32U, 1U},
        {(u16 )62300U, 32U, 2U},
        {(u16 )62304U, 32U, 0U},
        {(u16 )62308U, 32U, 65025U},
        {(u16 )62312U, 32U, 0U},
        {(u16 )62316U, 32U, 1U},
        {(u16 )62324U, 32U, 20487U},
        {(u16 )62328U, 32U, 2U},
        {(u16 )62208U, 64U, 0U},
        {(u16 )62212U, 64U, 0U},
        {(u16 )62216U, 64U, 0U},
        {(u16 )62220U, 64U, 0U},
        {(u16 )62224U, 64U, 0U},
        {(u16 )62228U, 64U, 0U},
        {(u16 )62232U, 64U, 0U},
        {(u16 )62236U, 64U, 0U},
        {(u16 )62240U, 64U, 0U},
        {(u16 )62244U, 64U, 0U},
        {(u16 )62248U, 64U, 0U},
        {(u16 )62252U, 64U, 0U},
        {(u16 )62256U, 64U, 0U},
        {(u16 )62260U, 64U, 0U},
        {(u16 )62264U, 64U, 0U},
        {(u16 )62268U, 64U, 0U},
        {(u16 )62272U, 64U, 65280U},
        {(u16 )62276U, 64U, 256U},
        {(u16 )62280U, 64U, 65025U},
        {(u16 )62284U, 64U, 1278U},
        {(u16 )62288U, 64U, 53223U},
        {(u16 )62292U, 64U, 48838U},
        {(u16 )62296U, 64U, 49855U},
        {(u16 )62300U, 64U, 49601U},
        {(u16 )62304U, 64U, 49601U},
        {(u16 )62308U, 64U, 49601U},
        {(u16 )62312U, 64U, 49601U},
        {(u16 )62316U, 64U, 49600U},
        {(u16 )62320U, 64U, 49344U},
        {(u16 )62324U, 64U, 49601U},
        {(u16 )62328U, 64U, 49601U},
        {(u16 )62332U, 64U, 49345U},
        {(u16 )62208U, 96U, 49345U},
        {(u16 )62212U, 96U, 49601U},
        {(u16 )62216U, 96U, 49601U},
        {(u16 )62220U, 96U, 49345U},
        {(u16 )62224U, 96U, 49601U},
        {(u16 )62228U, 96U, 49345U},
        {(u16 )62232U, 96U, 49601U},
        {(u16 )62236U, 96U, 49344U},
        {(u16 )62240U, 96U, 49600U},
        {(u16 )62244U, 96U, 49601U},
        {(u16 )62248U, 96U, 49344U},
        {(u16 )62252U, 96U, 49600U},
        {(u16 )62256U, 96U, 49345U},
        {(u16 )62260U, 96U, 49598U},
        {(u16 )62264U, 96U, 49609U},
        {(u16 )62268U, 96U, 49370U},
        {(u16 )62272U, 96U, 49338U},
        {(u16 )62276U, 96U, 49604U},
        {(u16 )62280U, 96U, 49599U},
        {(u16 )62284U, 96U, 49345U},
        {(u16 )62288U, 96U, 49600U},
        {(u16 )62292U, 96U, 49345U},
        {(u16 )62296U, 96U, 49601U},
        {(u16 )62300U, 96U, 49601U},
        {(u16 )62304U, 96U, 49601U},
        {(u16 )62308U, 96U, 49601U},
        {(u16 )62312U, 96U, 49601U},
        {(u16 )62316U, 96U, 49601U},
        {(u16 )62320U, 96U, 49601U},
        {(u16 )62324U, 96U, 49601U},
        {(u16 )62328U, 96U, 49601U},
        {(u16 )62332U, 96U, 49600U},
        {(u16 )62208U, 1024U, 1U},
        {(u16 )62212U, 1024U, 22100U},
        {(u16 )62220U, 1024U, 0U},
        {(u16 )62224U, 1024U, 131097U},
        {(u16 )62228U, 1024U, 4928055U},
        {(u16 )62232U, 1024U, 253207U},
        {(u16 )62236U, 1024U, 32776U},
        {(u16 )62240U, 1024U, 2765062U},
        {(u16 )62244U, 1024U, 398346U},
        {(u16 )62248U, 1024U, 32768U},
        {(u16 )62252U, 1024U, 0U},
        {(u16 )62272U, 1024U, 0U},
        {(u16 )62276U, 1024U, 1137U},
        {(u16 )62284U, 1024U, 24839269U},
        {(u16 )62288U, 1024U, 2U},
        {(u16 )62292U, 1024U, 1664100U},
        {(u16 )62296U, 1024U, 1539U},
        {(u16 )62300U, 1024U, 33842790U},
        {(u16 )62304U, 1024U, 268723587U},
        {(u16 )62308U, 1024U, 66564U},
        {(u16 )62312U, 1024U, 174730U},
        {(u16 )62316U, 1024U, 0U},
        {(u16 )62320U, 1024U, 1U},
        {(u16 )62324U, 1024U, 1280U},
        {(u16 )62328U, 1024U, 2662560U},
        {(u16 )62332U, 1024U, 0U},
        {(u16 )62216U, 1088U, 8391703U},
        {(u16 )62220U, 1088U, 0U},
        {(u16 )62224U, 1088U, 0U},
        {(u16 )62228U, 1088U, 346114U},
        {(u16 )62240U, 1088U, 0U},
        {(u16 )62244U, 1088U, 0U},
        {(u16 )62248U, 1088U, 0U},
        {(u16 )62252U, 1088U, 0U},
        {(u16 )62256U, 1088U, 0U},
        {(u16 )62260U, 1088U, 1024U},
        {(u16 )62264U, 1088U, 0U},
        {(u16 )62268U, 1088U, 0U},
        {(u16 )62272U, 1088U, 0U},
        {(u16 )62276U, 1088U, 0U},
        {(u16 )62280U, 1088U, 0U},
        {(u16 )62288U, 1088U, 0U},
        {(u16 )62292U, 1088U, 0U},
        {(u16 )62296U, 1088U, 0U},
        {(u16 )62300U, 1088U, 0U},
        {(u16 )62304U, 1088U, 0U},
        {(u16 )62308U, 1088U, 0U},
        {(u16 )62312U, 1088U, 0U},
        {(u16 )62316U, 1088U, 0U},
        {(u16 )62320U, 1088U, 0U},
        {(u16 )62324U, 1088U, 0U},
        {(u16 )62328U, 1088U, 0U},
        {(u16 )62208U, 1120U, 0U},
        {(u16 )62212U, 1120U, 0U},
        {(u16 )62216U, 1120U, 0U},
        {(u16 )62220U, 1120U, 0U},
        {(u16 )62224U, 1120U, 0U},
        {(u16 )62228U, 1120U, 0U},
        {(u16 )62232U, 1120U, 0U},
        {(u16 )62236U, 1120U, 0U},
        {(u16 )62240U, 1120U, 0U},
        {(u16 )62244U, 1120U, 0U},
        {(u16 )62248U, 1120U, 0U},
        {(u16 )62256U, 1120U, 0U},
        {(u16 )62260U, 1120U, 0U},
        {(u16 )62264U, 1120U, 0U},
        {(u16 )62268U, 1120U, 0U},
        {(u16 )62272U, 1120U, 0U},
        {(u16 )62276U, 1120U, 0U},
        {(u16 )62280U, 1120U, 0U},
        {(u16 )62284U, 1120U, 0U},
        {(u16 )62288U, 1120U, 0U},
        {(u16 )62292U, 1120U, 0U},
        {(u16 )62296U, 1120U, 0U},
        {(u16 )65535U, 4294967295U, 4294967295U}};
static struct stb0899_s2_reg const stb0899_s2_init_4[21U] =
  { {(u16 )64004U, 0U, 8U},
        {(u16 )64008U, 0U, 180U},
        {(u16 )64016U, 0U, 1205U},
        {(u16 )64020U, 0U, 2891U},
        {(u16 )64028U, 0U, 120U},
        {(u16 )64032U, 0U, 480U},
        {(u16 )64036U, 0U, 43200U},
        {(u16 )64040U, 0U, 12U},
        {(u16 )64000U, 2048U, 1U},
        {(u16 )64004U, 2048U, 13U},
        {(u16 )64008U, 2048U, 64U},
        {(u16 )64012U, 2048U, 0U},
        {(u16 )64016U, 2048U, 0U},
        {(u16 )64020U, 2048U, 8U},
        {(u16 )64024U, 2048U, 0U},
        {(u16 )64028U, 2048U, 0U},
        {(u16 )64032U, 2048U, 0U},
        {(u16 )64036U, 2048U, 8U},
        {(u16 )64040U, 2048U, 0U},
        {(u16 )64056U, 2048U, 0U},
        {(u16 )65535U, 4294967295U, 4294967295U}};
static struct stb0899_s1_reg const stb0899_s1_init_5[38U] =
  { {(u16 )65296U, (u8 )0U},
        {(u16 )65297U, (u8 )0U},
        {(u16 )65298U, (u8 )0U},
        {(u16 )65299U, (u8 )0U},
        {(u16 )65300U, (u8 )0U},
        {(u16 )65301U, (u8 )0U},
        {(u16 )65302U, (u8 )0U},
        {(u16 )65303U, (u8 )0U},
        {(u16 )65308U, (u8 )0U},
        {(u16 )65309U, (u8 )0U},
        {(u16 )65310U, (u8 )0U},
        {(u16 )65316U, (u8 )0U},
        {(u16 )65317U, (u8 )0U},
        {(u16 )65320U, (u8 )0U},
        {(u16 )65344U, (u8 )0U},
        {(u16 )65345U, (u8 )0U},
        {(u16 )65346U, (u8 )0U},
        {(u16 )65352U, (u8 )0U},
        {(u16 )65353U, (u8 )0U},
        {(u16 )65354U, (u8 )0U},
        {(u16 )65355U, (u8 )0U},
        {(u16 )65356U, (u8 )0U},
        {(u16 )65357U, (u8 )0U},
        {(u16 )65360U, (u8 )0U},
        {(u16 )65361U, (u8 )0U},
        {(u16 )65362U, (u8 )0U},
        {(u16 )65363U, (u8 )0U},
        {(u16 )65364U, (u8 )0U},
        {(u16 )65365U, (u8 )0U},
        {(u16 )65366U, (u8 )0U},
        {(u16 )65368U, (u8 )0U},
        {(u16 )65369U, (u8 )0U},
        {(u16 )65370U, (u8 )0U},
        {(u16 )65372U, (u8 )0U},
        {(u16 )65373U, (u8 )0U},
        {(u16 )65363U, (u8 )0U},
        {(u16 )61440U, (u8 )129U},
        {(u16 )65535U, (u8 )255U}};
extern struct dvb_frontend *stb6100_attach(struct dvb_frontend * , struct stb6100_config const * ,
                                           struct i2c_adapter * ) ;
static int stb6100_get_frequency(struct dvb_frontend *fe , u32 *frequency )
{ struct dvb_frontend_ops *frontend_ops ;
  struct dvb_tuner_ops *tuner_ops ;
  struct tuner_state t_state ;
  int err ;
  struct dvb_frontend_ops *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct dvb_frontend_ops *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct dvb_tuner_ops *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct dvb_tuner_ops *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  int (*__cil_tmp19)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  int (*__cil_tmp23)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  int (*__cil_tmp27)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
  enum tuner_param __cil_tmp28 ;
  struct tuner_state *__cil_tmp29 ;
  {
  frontend_ops = (struct dvb_frontend_ops *)0;
  tuner_ops = (struct dvb_tuner_ops *)0;
  err = 0;
  {
  __cil_tmp7 = (struct dvb_frontend_ops *)0;
  __cil_tmp8 = (unsigned long )__cil_tmp7;
  __cil_tmp9 = (struct dvb_frontend_ops *)fe;
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  if (__cil_tmp10 != __cil_tmp8) {
    frontend_ops = (struct dvb_frontend_ops *)fe;
  } else {
  }
  }
  {
  __cil_tmp11 = (struct dvb_tuner_ops *)0;
  __cil_tmp12 = (unsigned long )__cil_tmp11;
  __cil_tmp13 = (unsigned long )frontend_ops;
  __cil_tmp14 = __cil_tmp13 + 384;
  __cil_tmp15 = (struct dvb_tuner_ops *)__cil_tmp14;
  __cil_tmp16 = (unsigned long )__cil_tmp15;
  if (__cil_tmp16 != __cil_tmp12) {
    __cil_tmp17 = (unsigned long )frontend_ops;
    __cil_tmp18 = __cil_tmp17 + 384;
    tuner_ops = (struct dvb_tuner_ops *)__cil_tmp18;
  } else {
  }
  }
  {
  __cil_tmp19 = (int (*)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ))0;
  __cil_tmp20 = (unsigned long )__cil_tmp19;
  __cil_tmp21 = (unsigned long )tuner_ops;
  __cil_tmp22 = __cil_tmp21 + 272;
  __cil_tmp23 = *((int (**)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ))__cil_tmp22);
  __cil_tmp24 = (unsigned long )__cil_tmp23;
  if (__cil_tmp24 != __cil_tmp20) {
    {
    __cil_tmp25 = (unsigned long )tuner_ops;
    __cil_tmp26 = __cil_tmp25 + 272;
    __cil_tmp27 = *((int (**)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ))__cil_tmp26);
    __cil_tmp28 = (enum tuner_param )1;
    err = (*__cil_tmp27)(fe, __cil_tmp28, & t_state);
    }
    if (err < 0) {
      {
      printk("%s: Invalid parameter\n", "stb6100_get_frequency");
      }
      return (err);
    } else {
    }
    __cil_tmp29 = & t_state;
    *frequency = *((u32 *)__cil_tmp29);
  } else {
  }
  }
  return (0);
}
}
static int stb6100_set_frequency(struct dvb_frontend *fe , u32 frequency )
{ struct dvb_frontend_ops *frontend_ops ;
  struct dvb_tuner_ops *tuner_ops ;
  struct tuner_state t_state ;
  int err ;
  struct tuner_state *__cil_tmp7 ;
  struct dvb_frontend_ops *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct dvb_frontend_ops *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct dvb_tuner_ops *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct dvb_tuner_ops *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  int (*__cil_tmp20)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  int (*__cil_tmp24)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  int (*__cil_tmp28)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
  enum tuner_param __cil_tmp29 ;
  {
  frontend_ops = (struct dvb_frontend_ops *)0;
  tuner_ops = (struct dvb_tuner_ops *)0;
  err = 0;
  __cil_tmp7 = & t_state;
  *((u32 *)__cil_tmp7) = frequency;
  {
  __cil_tmp8 = (struct dvb_frontend_ops *)0;
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = (struct dvb_frontend_ops *)fe;
  __cil_tmp11 = (unsigned long )__cil_tmp10;
  if (__cil_tmp11 != __cil_tmp9) {
    frontend_ops = (struct dvb_frontend_ops *)fe;
  } else {
  }
  }
  {
  __cil_tmp12 = (struct dvb_tuner_ops *)0;
  __cil_tmp13 = (unsigned long )__cil_tmp12;
  __cil_tmp14 = (unsigned long )frontend_ops;
  __cil_tmp15 = __cil_tmp14 + 384;
  __cil_tmp16 = (struct dvb_tuner_ops *)__cil_tmp15;
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  if (__cil_tmp17 != __cil_tmp13) {
    __cil_tmp18 = (unsigned long )frontend_ops;
    __cil_tmp19 = __cil_tmp18 + 384;
    tuner_ops = (struct dvb_tuner_ops *)__cil_tmp19;
  } else {
  }
  }
  {
  __cil_tmp20 = (int (*)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ))0;
  __cil_tmp21 = (unsigned long )__cil_tmp20;
  __cil_tmp22 = (unsigned long )tuner_ops;
  __cil_tmp23 = __cil_tmp22 + 264;
  __cil_tmp24 = *((int (**)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ))__cil_tmp23);
  __cil_tmp25 = (unsigned long )__cil_tmp24;
  if (__cil_tmp25 != __cil_tmp21) {
    {
    __cil_tmp26 = (unsigned long )tuner_ops;
    __cil_tmp27 = __cil_tmp26 + 264;
    __cil_tmp28 = *((int (**)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ))__cil_tmp27);
    __cil_tmp29 = (enum tuner_param )1;
    err = (*__cil_tmp28)(fe, __cil_tmp29, & t_state);
    }
    if (err < 0) {
      {
      printk("%s: Invalid parameter\n", "stb6100_set_frequency");
      }
      return (err);
    } else {
    }
  } else {
  }
  }
  return (0);
}
}
static int stb6100_get_bandwidth(struct dvb_frontend *fe , u32 *bandwidth )
{ struct dvb_frontend_ops *frontend_ops ;
  struct dvb_tuner_ops *tuner_ops ;
  struct tuner_state t_state ;
  int err ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct dvb_frontend_ops *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct dvb_frontend_ops *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct dvb_tuner_ops *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct dvb_tuner_ops *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  int (*__cil_tmp21)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  int (*__cil_tmp25)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  int (*__cil_tmp29)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
  enum tuner_param __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  {
  frontend_ops = (struct dvb_frontend_ops *)fe;
  __cil_tmp7 = (unsigned long )frontend_ops;
  __cil_tmp8 = __cil_tmp7 + 384;
  tuner_ops = (struct dvb_tuner_ops *)__cil_tmp8;
  err = 0;
  {
  __cil_tmp9 = (struct dvb_frontend_ops *)0;
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  __cil_tmp11 = (struct dvb_frontend_ops *)fe;
  __cil_tmp12 = (unsigned long )__cil_tmp11;
  if (__cil_tmp12 != __cil_tmp10) {
    frontend_ops = (struct dvb_frontend_ops *)fe;
  } else {
  }
  }
  {
  __cil_tmp13 = (struct dvb_tuner_ops *)0;
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = (unsigned long )frontend_ops;
  __cil_tmp16 = __cil_tmp15 + 384;
  __cil_tmp17 = (struct dvb_tuner_ops *)__cil_tmp16;
  __cil_tmp18 = (unsigned long )__cil_tmp17;
  if (__cil_tmp18 != __cil_tmp14) {
    __cil_tmp19 = (unsigned long )frontend_ops;
    __cil_tmp20 = __cil_tmp19 + 384;
    tuner_ops = (struct dvb_tuner_ops *)__cil_tmp20;
  } else {
  }
  }
  {
  __cil_tmp21 = (int (*)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ))0;
  __cil_tmp22 = (unsigned long )__cil_tmp21;
  __cil_tmp23 = (unsigned long )tuner_ops;
  __cil_tmp24 = __cil_tmp23 + 272;
  __cil_tmp25 = *((int (**)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ))__cil_tmp24);
  __cil_tmp26 = (unsigned long )__cil_tmp25;
  if (__cil_tmp26 != __cil_tmp22) {
    {
    __cil_tmp27 = (unsigned long )tuner_ops;
    __cil_tmp28 = __cil_tmp27 + 272;
    __cil_tmp29 = *((int (**)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ))__cil_tmp28);
    __cil_tmp30 = (enum tuner_param )8;
    err = (*__cil_tmp29)(fe, __cil_tmp30, & t_state);
    }
    if (err < 0) {
      {
      printk("%s: Invalid parameter\n", "stb6100_get_bandwidth");
      }
      return (err);
    } else {
    }
    __cil_tmp31 = (unsigned long )(& t_state) + 12;
    *bandwidth = *((u32 *)__cil_tmp31);
  } else {
  }
  }
  return (0);
}
}
static int stb6100_set_bandwidth(struct dvb_frontend *fe , u32 bandwidth )
{ struct dvb_frontend_ops *frontend_ops ;
  struct dvb_tuner_ops *tuner_ops ;
  struct tuner_state t_state ;
  int err ;
  unsigned long __cil_tmp7 ;
  struct dvb_frontend_ops *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct dvb_frontend_ops *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct dvb_tuner_ops *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct dvb_tuner_ops *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  int (*__cil_tmp20)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  int (*__cil_tmp24)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  int (*__cil_tmp28)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
  enum tuner_param __cil_tmp29 ;
  {
  frontend_ops = (struct dvb_frontend_ops *)0;
  tuner_ops = (struct dvb_tuner_ops *)0;
  err = 0;
  __cil_tmp7 = (unsigned long )(& t_state) + 12;
  *((u32 *)__cil_tmp7) = bandwidth;
  {
  __cil_tmp8 = (struct dvb_frontend_ops *)0;
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = (struct dvb_frontend_ops *)fe;
  __cil_tmp11 = (unsigned long )__cil_tmp10;
  if (__cil_tmp11 != __cil_tmp9) {
    frontend_ops = (struct dvb_frontend_ops *)fe;
  } else {
  }
  }
  {
  __cil_tmp12 = (struct dvb_tuner_ops *)0;
  __cil_tmp13 = (unsigned long )__cil_tmp12;
  __cil_tmp14 = (unsigned long )frontend_ops;
  __cil_tmp15 = __cil_tmp14 + 384;
  __cil_tmp16 = (struct dvb_tuner_ops *)__cil_tmp15;
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  if (__cil_tmp17 != __cil_tmp13) {
    __cil_tmp18 = (unsigned long )frontend_ops;
    __cil_tmp19 = __cil_tmp18 + 384;
    tuner_ops = (struct dvb_tuner_ops *)__cil_tmp19;
  } else {
  }
  }
  {
  __cil_tmp20 = (int (*)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ))0;
  __cil_tmp21 = (unsigned long )__cil_tmp20;
  __cil_tmp22 = (unsigned long )tuner_ops;
  __cil_tmp23 = __cil_tmp22 + 264;
  __cil_tmp24 = *((int (**)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ))__cil_tmp23);
  __cil_tmp25 = (unsigned long )__cil_tmp24;
  if (__cil_tmp25 != __cil_tmp21) {
    {
    __cil_tmp26 = (unsigned long )tuner_ops;
    __cil_tmp27 = __cil_tmp26 + 264;
    __cil_tmp28 = *((int (**)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ))__cil_tmp27);
    __cil_tmp29 = (enum tuner_param )8;
    err = (*__cil_tmp28)(fe, __cil_tmp29, & t_state);
    }
    if (err < 0) {
      {
      printk("%s: Invalid parameter\n", "stb6100_set_bandwidth");
      }
      return (err);
    } else {
    }
  } else {
  }
  }
  return (0);
}
}
extern int dvb_ca_en50221_init(struct dvb_adapter * , struct dvb_ca_en50221 * , int ,
                               int ) ;
extern void dvb_ca_en50221_release(struct dvb_ca_en50221 * ) ;
static short adapter_nr[8U] =
  { (short)-1, (short)-1, (short)-1, (short)-1,
        (short)-1, (short)-1, (short)-1, (short)-1};
static struct stb0899_s1_reg const az6027_stb0899_s1_init_1[82U] =
  { {(u16 )61440U, (u8 )48U},
        {(u16 )61600U, (u8 )50U},
        {(u16 )61601U, (u8 )128U},
        {(u16 )61604U, (u8 )4U},
        {(u16 )61605U, (u8 )0U},
        {(u16 )61606U, (u8 )0U},
        {(u16 )61608U, (u8 )32U},
        {(u16 )61609U, (u8 )153U},
        {(u16 )61610U, (u8 )168U},
        {(u16 )61712U, (u8 )17U},
        {(u16 )61713U, (u8 )10U},
        {(u16 )61714U, (u8 )5U},
        {(u16 )61715U, (u8 )0U},
        {(u16 )61716U, (u8 )0U},
        {(u16 )61724U, (u8 )0U},
        {(u16 )61725U, (u8 )0U},
        {(u16 )61728U, (u8 )254U},
        {(u16 )61729U, (u8 )3U},
        {(u16 )61730U, (u8 )124U},
        {(u16 )61731U, (u8 )244U},
        {(u16 )61732U, (u8 )243U},
        {(u16 )61733U, (u8 )252U},
        {(u16 )61734U, (u8 )255U},
        {(u16 )61735U, (u8 )255U},
        {(u16 )61736U, (u8 )0U},
        {(u16 )61737U, (u8 )136U},
        {(u16 )61738U, (u8 )88U},
        {(u16 )61753U, (u8 )0U},
        {(u16 )61754U, (u8 )51U},
        {(u16 )61755U, (u8 )109U},
        {(u16 )61756U, (u8 )144U},
        {(u16 )61757U, (u8 )96U},
        {(u16 )61758U, (u8 )0U},
        {(u16 )61760U, (u8 )130U},
        {(u16 )61761U, (u8 )130U},
        {(u16 )61762U, (u8 )130U},
        {(u16 )61763U, (u8 )130U},
        {(u16 )61764U, (u8 )130U},
        {(u16 )61765U, (u8 )130U},
        {(u16 )61766U, (u8 )130U},
        {(u16 )61767U, (u8 )130U},
        {(u16 )61768U, (u8 )130U},
        {(u16 )61769U, (u8 )130U},
        {(u16 )61770U, (u8 )130U},
        {(u16 )61771U, (u8 )130U},
        {(u16 )61772U, (u8 )130U},
        {(u16 )61773U, (u8 )130U},
        {(u16 )61774U, (u8 )130U},
        {(u16 )61775U, (u8 )130U},
        {(u16 )61776U, (u8 )130U},
        {(u16 )61777U, (u8 )130U},
        {(u16 )61778U, (u8 )130U},
        {(u16 )61779U, (u8 )130U},
        {(u16 )61780U, (u8 )130U},
        {(u16 )61781U, (u8 )184U},
        {(u16 )61782U, (u8 )186U},
        {(u16 )61783U, (u8 )28U},
        {(u16 )61784U, (u8 )130U},
        {(u16 )61785U, (u8 )145U},
        {(u16 )61786U, (u8 )130U},
        {(u16 )61787U, (u8 )126U},
        {(u16 )61788U, (u8 )130U},
        {(u16 )61789U, (u8 )130U},
        {(u16 )61790U, (u8 )130U},
        {(u16 )61791U, (u8 )32U},
        {(u16 )61792U, (u8 )130U},
        {(u16 )61793U, (u8 )130U},
        {(u16 )61794U, (u8 )130U},
        {(u16 )61795U, (u8 )130U},
        {(u16 )61796U, (u8 )130U},
        {(u16 )61797U, (u8 )130U},
        {(u16 )61798U, (u8 )130U},
        {(u16 )61799U, (u8 )130U},
        {(u16 )61875U, (u8 )23U},
        {(u16 )61878U, (u8 )2U},
        {(u16 )61879U, (u8 )0U},
        {(u16 )61880U, (u8 )1U},
        {(u16 )61890U, (u8 )32U},
        {(u16 )61891U, (u8 )0U},
        {(u16 )61952U, (u8 )0U},
        {(u16 )61953U, (u8 )10U},
        {(u16 )65535U, (u8 )255U}};
static struct stb0899_s1_reg const az6027_stb0899_s1_init_3[130U] =
  { {(u16 )62478U, (u8 )0U},
        {(u16 )62480U, (u8 )201U},
        {(u16 )62482U, (u8 )1U},
        {(u16 )62483U, (u8 )16U},
        {(u16 )62487U, (u8 )35U},
        {(u16 )62488U, (u8 )78U},
        {(u16 )62489U, (u8 )52U},
        {(u16 )62490U, (u8 )132U},
        {(u16 )62491U, (u8 )247U},
        {(u16 )62492U, (u8 )135U},
        {(u16 )62493U, (u8 )148U},
        {(u16 )62494U, (u8 )65U},
        {(u16 )62495U, (u8 )241U},
        {(u16 )62496U, (u8 )227U},
        {(u16 )62501U, (u8 )180U},
        {(u16 )62502U, (u8 )16U},
        {(u16 )62503U, (u8 )48U},
        {(u16 )62504U, (u8 )253U},
        {(u16 )62505U, (u8 )255U},
        {(u16 )62506U, (u8 )12U},
        {(u16 )62507U, (u8 )15U},
        {(u16 )62508U, (u8 )108U},
        {(u16 )62510U, (u8 )128U},
        {(u16 )62518U, (u8 )6U},
        {(u16 )62519U, (u8 )0U},
        {(u16 )62520U, (u8 )48U},
        {(u16 )62521U, (u8 )127U},
        {(u16 )62522U, (u8 )0U},
        {(u16 )62523U, (u8 )188U},
        {(u16 )62526U, (u8 )234U},
        {(u16 )62527U, (u8 )49U},
        {(u16 )62528U, (u8 )43U},
        {(u16 )62529U, (u8 )128U},
        {(u16 )62532U, (u8 )29U},
        {(u16 )62533U, (u8 )166U},
        {(u16 )62534U, (u8 )47U},
        {(u16 )62535U, (u8 )104U},
        {(u16 )62536U, (u8 )64U},
        {(u16 )62540U, (u8 )47U},
        {(u16 )62541U, (u8 )104U},
        {(u16 )62542U, (u8 )64U},
        {(u16 )62688U, (u8 )2U},
        {(u16 )62689U, (u8 )255U},
        {(u16 )62690U, (u8 )4U},
        {(u16 )62691U, (u8 )5U},
        {(u16 )62692U, (u8 )2U},
        {(u16 )62693U, (u8 )253U},
        {(u16 )62694U, (u8 )3U},
        {(u16 )62695U, (u8 )7U},
        {(u16 )62696U, (u8 )8U},
        {(u16 )62697U, (u8 )245U},
        {(u16 )62732U, (u8 )0U},
        {(u16 )62733U, (u8 )0U},
        {(u16 )62735U, (u8 )134U},
        {(u16 )62755U, (u8 )42U},
        {(u16 )62756U, (u8 )0U},
        {(u16 )62757U, (u8 )0U},
        {(u16 )62758U, (u8 )0U},
        {(u16 )62759U, (u8 )0U},
        {(u16 )62760U, (u8 )10U},
        {(u16 )62761U, (u8 )173U},
        {(u16 )62768U, (u8 )6U},
        {(u16 )62771U, (u8 )1U},
        {(u16 )62772U, (u8 )176U},
        {(u16 )62773U, (u8 )122U},
        {(u16 )62774U, (u8 )88U},
        {(u16 )62775U, (u8 )56U},
        {(u16 )62776U, (u8 )52U},
        {(u16 )62777U, (u8 )36U},
        {(u16 )62780U, (u8 )255U},
        {(u16 )62781U, (u8 )25U},
        {(u16 )62792U, (u8 )177U},
        {(u16 )62793U, (u8 )66U},
        {(u16 )62794U, (u8 )65U},
        {(u16 )62795U, (u8 )18U},
        {(u16 )62796U, (u8 )12U},
        {(u16 )62797U, (u8 )0U},
        {(u16 )62798U, (u8 )0U},
        {(u16 )62799U, (u8 )105U},
        {(u16 )62800U, (u8 )0U},
        {(u16 )62801U, (u8 )2U},
        {(u16 )62802U, (u8 )0U},
        {(u16 )62803U, (u8 )0U},
        {(u16 )62810U, (u8 )27U},
        {(u16 )62811U, (u8 )179U},
        {(u16 )62812U, (u8 )0U},
        {(u16 )62813U, (u8 )0U},
        {(u16 )62814U, (u8 )188U},
        {(u16 )62815U, (u8 )204U},
        {(u16 )62816U, (u8 )189U},
        {(u16 )62817U, (u8 )144U},
        {(u16 )62836U, (u8 )182U},
        {(u16 )62837U, (u8 )149U},
        {(u16 )62838U, (u8 )141U},
        {(u16 )62843U, (u8 )39U},
        {(u16 )62844U, (u8 )3U},
        {(u16 )62851U, (u8 )92U},
        {(u16 )62860U, (u8 )25U},
        {(u16 )62976U, (u8 )72U},
        {(u16 )62977U, (u8 )0U},
        {(u16 )62978U, (u8 )0U},
        {(u16 )62979U, (u8 )0U},
        {(u16 )62980U, (u8 )119U},
        {(u16 )62981U, (u8 )0U},
        {(u16 )62982U, (u8 )0U},
        {(u16 )62983U, (u8 )0U},
        {(u16 )62984U, (u8 )0U},
        {(u16 )62985U, (u8 )0U},
        {(u16 )62986U, (u8 )0U},
        {(u16 )62987U, (u8 )0U},
        {(u16 )62988U, (u8 )0U},
        {(u16 )62989U, (u8 )0U},
        {(u16 )62990U, (u8 )0U},
        {(u16 )62991U, (u8 )0U},
        {(u16 )62992U, (u8 )240U},
        {(u16 )62993U, (u8 )2U},
        {(u16 )62994U, (u8 )69U},
        {(u16 )62995U, (u8 )96U},
        {(u16 )62996U, (u8 )227U},
        {(u16 )62997U, (u8 )0U},
        {(u16 )62998U, (u8 )71U},
        {(u16 )62999U, (u8 )5U},
        {(u16 )63000U, (u8 )24U},
        {(u16 )63001U, (u8 )25U},
        {(u16 )63002U, (u8 )43U},
        {(u16 )63003U, (u8 )0U},
        {(u16 )63004U, (u8 )1U},
        {(u16 )63005U, (u8 )0U},
        {(u16 )63006U, (u8 )0U},
        {(u16 )65535U, (u8 )255U}};
struct stb0899_config az6027_stb0899_config =
     {(struct stb0899_s1_reg const *)(& az6027_stb0899_s1_init_1), (struct stb0899_s2_reg const *)(& stb0899_s2_init_2),
    (struct stb0899_s1_reg const *)(& az6027_stb0899_s1_init_3), (struct stb0899_s2_reg const *)(& stb0899_s2_init_4),
    (struct stb0899_s1_reg const *)(& stb0899_s1_init_5), (struct stb0899_postproc const *)0,
    (enum stb0899_inversion )1, 27000000U, (u8 )208U, (unsigned char)0, (unsigned char)0,
    (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
    (unsigned char)0, (unsigned char)0, (unsigned char)0, 76500000, 99000000, 3U,
    32U, 10U, 20U, 6U, 1125U, 758U, 1350U, 1664100U, 28U, 15U, 30U, 70U, & stb6100_set_frequency,
    & stb6100_get_frequency, & stb6100_set_bandwidth, & stb6100_get_bandwidth, (int (*)(struct dvb_frontend * ,
                                                                                        u32 ))0};
struct stb6100_config az6027_stb6100_config = {(u8 )192U, 27000000U};
int az6027_usb_in_op(struct dvb_usb_device *d , u8 req , u16 value , u16 index , u8 *b ,
                     int blen )
{ int ret ;
  int tmp ;
  unsigned int tmp___0 ;
  int loop_ ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct mutex *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct usb_device *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct usb_device *__cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  int __cil_tmp21 ;
  __u8 __cil_tmp22 ;
  __u8 __cil_tmp23 ;
  int __cil_tmp24 ;
  __u16 __cil_tmp25 ;
  int __cil_tmp26 ;
  __u16 __cil_tmp27 ;
  void *__cil_tmp28 ;
  __u16 __cil_tmp29 ;
  int __cil_tmp30 ;
  __u16 __cil_tmp31 ;
  int *__cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  int __cil_tmp37 ;
  int *__cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  u8 *__cil_tmp42 ;
  u8 __cil_tmp43 ;
  int __cil_tmp44 ;
  int *__cil_tmp45 ;
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  struct mutex *__cil_tmp50 ;
  {
  {
  ret = -1;
  __cil_tmp11 = (unsigned long )d;
  __cil_tmp12 = __cil_tmp11 + 3576;
  __cil_tmp13 = (struct mutex *)__cil_tmp12;
  tmp = mutex_lock_interruptible_nested(__cil_tmp13, 0U);
  }
  if (tmp != 0) {
    return (-11);
  } else {
  }
  {
  __cil_tmp14 = (unsigned long )d;
  __cil_tmp15 = __cil_tmp14 + 3560;
  __cil_tmp16 = *((struct usb_device **)__cil_tmp15);
  tmp___0 = __create_pipe(__cil_tmp16, 0U);
  __cil_tmp17 = (unsigned long )d;
  __cil_tmp18 = __cil_tmp17 + 3560;
  __cil_tmp19 = *((struct usb_device **)__cil_tmp18);
  __cil_tmp20 = tmp___0 | 2147483776U;
  __cil_tmp21 = (int )req;
  __cil_tmp22 = (__u8 )__cil_tmp21;
  __cil_tmp23 = (__u8 )192;
  __cil_tmp24 = (int )value;
  __cil_tmp25 = (__u16 )__cil_tmp24;
  __cil_tmp26 = (int )index;
  __cil_tmp27 = (__u16 )__cil_tmp26;
  __cil_tmp28 = (void *)b;
  __cil_tmp29 = (__u16 )blen;
  __cil_tmp30 = (int )__cil_tmp29;
  __cil_tmp31 = (__u16 )__cil_tmp30;
  ret = usb_control_msg(__cil_tmp19, __cil_tmp20, __cil_tmp22, __cil_tmp23, __cil_tmp25,
                        __cil_tmp27, __cil_tmp28, __cil_tmp31, 2000);
  }
  if (ret < 0) {
    {
    printk("<4>az6027: usb in operation failed. (%d)\n", ret);
    ret = -5;
    }
  } else {
    ret = 0;
  }
  {
  __cil_tmp32 = & dvb_usb_az6027_debug;
  __cil_tmp33 = *__cil_tmp32;
  __cil_tmp34 = __cil_tmp33 & 2;
  if (__cil_tmp34 != 0) {
    {
    __cil_tmp35 = (int )req;
    __cil_tmp36 = (int )value;
    __cil_tmp37 = (int )index;
    printk("in: req. %02x, val: %04x, ind: %04x, buffer: ", __cil_tmp35, __cil_tmp36,
           __cil_tmp37);
    }
  } else {
  }
  }
  loop_ = 0;
  goto ldv_38998;
  ldv_38997: ;
  {
  __cil_tmp38 = & dvb_usb_az6027_debug;
  __cil_tmp39 = *__cil_tmp38;
  __cil_tmp40 = __cil_tmp39 & 2;
  if (__cil_tmp40 != 0) {
    {
    __cil_tmp41 = (unsigned long )loop_;
    __cil_tmp42 = b + __cil_tmp41;
    __cil_tmp43 = *__cil_tmp42;
    __cil_tmp44 = (int )__cil_tmp43;
    printk("%02x ", __cil_tmp44);
    }
  } else {
  }
  }
  loop_ = loop_ + 1;
  ldv_38998: ;
  if (loop_ < blen) {
    goto ldv_38997;
  } else {
    goto ldv_38999;
  }
  ldv_38999: ;
  {
  __cil_tmp45 = & dvb_usb_az6027_debug;
  __cil_tmp46 = *__cil_tmp45;
  __cil_tmp47 = __cil_tmp46 & 2;
  if (__cil_tmp47 != 0) {
    {
    printk("\n");
    }
  } else {
  }
  }
  {
  __cil_tmp48 = (unsigned long )d;
  __cil_tmp49 = __cil_tmp48 + 3576;
  __cil_tmp50 = (struct mutex *)__cil_tmp49;
  mutex_unlock(__cil_tmp50);
  }
  return (ret);
}
}
static int az6027_usb_out_op(struct dvb_usb_device *d , u8 req , u16 value , u16 index ,
                             u8 *b , int blen )
{ int ret ;
  int loop_ ;
  int tmp ;
  unsigned int tmp___0 ;
  int *__cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int *__cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  u8 *__cil_tmp21 ;
  u8 __cil_tmp22 ;
  int __cil_tmp23 ;
  int *__cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  struct mutex *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  struct usb_device *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  struct usb_device *__cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  int __cil_tmp37 ;
  __u8 __cil_tmp38 ;
  __u8 __cil_tmp39 ;
  int __cil_tmp40 ;
  __u16 __cil_tmp41 ;
  int __cil_tmp42 ;
  __u16 __cil_tmp43 ;
  void *__cil_tmp44 ;
  __u16 __cil_tmp45 ;
  int __cil_tmp46 ;
  __u16 __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  struct mutex *__cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  struct mutex *__cil_tmp53 ;
  {
  {
  __cil_tmp11 = & dvb_usb_az6027_debug;
  __cil_tmp12 = *__cil_tmp11;
  __cil_tmp13 = __cil_tmp12 & 2;
  if (__cil_tmp13 != 0) {
    {
    __cil_tmp14 = (int )req;
    __cil_tmp15 = (int )value;
    __cil_tmp16 = (int )index;
    printk("out: req. %02x, val: %04x, ind: %04x, buffer: ", __cil_tmp14, __cil_tmp15,
           __cil_tmp16);
    }
  } else {
  }
  }
  loop_ = 0;
  goto ldv_39011;
  ldv_39010: ;
  {
  __cil_tmp17 = & dvb_usb_az6027_debug;
  __cil_tmp18 = *__cil_tmp17;
  __cil_tmp19 = __cil_tmp18 & 2;
  if (__cil_tmp19 != 0) {
    {
    __cil_tmp20 = (unsigned long )loop_;
    __cil_tmp21 = b + __cil_tmp20;
    __cil_tmp22 = *__cil_tmp21;
    __cil_tmp23 = (int )__cil_tmp22;
    printk("%02x ", __cil_tmp23);
    }
  } else {
  }
  }
  loop_ = loop_ + 1;
  ldv_39011: ;
  if (loop_ < blen) {
    goto ldv_39010;
  } else {
    goto ldv_39012;
  }
  ldv_39012: ;
  {
  __cil_tmp24 = & dvb_usb_az6027_debug;
  __cil_tmp25 = *__cil_tmp24;
  __cil_tmp26 = __cil_tmp25 & 2;
  if (__cil_tmp26 != 0) {
    {
    printk("\n");
    }
  } else {
  }
  }
  {
  __cil_tmp27 = (unsigned long )d;
  __cil_tmp28 = __cil_tmp27 + 3576;
  __cil_tmp29 = (struct mutex *)__cil_tmp28;
  tmp = mutex_lock_interruptible_nested(__cil_tmp29, 0U);
  }
  if (tmp != 0) {
    return (-11);
  } else {
  }
  {
  __cil_tmp30 = (unsigned long )d;
  __cil_tmp31 = __cil_tmp30 + 3560;
  __cil_tmp32 = *((struct usb_device **)__cil_tmp31);
  tmp___0 = __create_pipe(__cil_tmp32, 0U);
  __cil_tmp33 = (unsigned long )d;
  __cil_tmp34 = __cil_tmp33 + 3560;
  __cil_tmp35 = *((struct usb_device **)__cil_tmp34);
  __cil_tmp36 = tmp___0 | 2147483648U;
  __cil_tmp37 = (int )req;
  __cil_tmp38 = (__u8 )__cil_tmp37;
  __cil_tmp39 = (__u8 )64;
  __cil_tmp40 = (int )value;
  __cil_tmp41 = (__u16 )__cil_tmp40;
  __cil_tmp42 = (int )index;
  __cil_tmp43 = (__u16 )__cil_tmp42;
  __cil_tmp44 = (void *)b;
  __cil_tmp45 = (__u16 )blen;
  __cil_tmp46 = (int )__cil_tmp45;
  __cil_tmp47 = (__u16 )__cil_tmp46;
  ret = usb_control_msg(__cil_tmp35, __cil_tmp36, __cil_tmp38, __cil_tmp39, __cil_tmp41,
                        __cil_tmp43, __cil_tmp44, __cil_tmp47, 2000);
  }
  if (ret != blen) {
    {
    printk("<4>az6027: usb out operation failed. (%d)\n", ret);
    __cil_tmp48 = (unsigned long )d;
    __cil_tmp49 = __cil_tmp48 + 3576;
    __cil_tmp50 = (struct mutex *)__cil_tmp49;
    mutex_unlock(__cil_tmp50);
    }
    return (-5);
  } else {
    {
    __cil_tmp51 = (unsigned long )d;
    __cil_tmp52 = __cil_tmp51 + 3576;
    __cil_tmp53 = (struct mutex *)__cil_tmp52;
    mutex_unlock(__cil_tmp53);
    }
    return (0);
  }
}
}
static int az6027_streaming_ctrl(struct dvb_usb_adapter *adap , int onoff )
{ int ret ;
  u8 req ;
  u16 value ;
  u16 index ;
  int blen ;
  int *__cil_tmp8 ;
  int __cil_tmp9 ;
  struct dvb_usb_device *__cil_tmp10 ;
  int __cil_tmp11 ;
  u8 __cil_tmp12 ;
  int __cil_tmp13 ;
  u16 __cil_tmp14 ;
  int __cil_tmp15 ;
  u16 __cil_tmp16 ;
  u8 *__cil_tmp17 ;
  {
  {
  __cil_tmp8 = & dvb_usb_az6027_debug;
  __cil_tmp9 = *__cil_tmp8;
  if (__cil_tmp9 & 1) {
    {
    printk("%s %d", "az6027_streaming_ctrl", onoff);
    }
  } else {
  }
  }
  {
  req = (u8 )188U;
  value = (u16 )onoff;
  index = (u16 )0U;
  blen = 0;
  __cil_tmp10 = *((struct dvb_usb_device **)adap);
  __cil_tmp11 = (int )req;
  __cil_tmp12 = (u8 )__cil_tmp11;
  __cil_tmp13 = (int )value;
  __cil_tmp14 = (u16 )__cil_tmp13;
  __cil_tmp15 = (int )index;
  __cil_tmp16 = (u16 )__cil_tmp15;
  __cil_tmp17 = (u8 *)0;
  ret = az6027_usb_out_op(__cil_tmp10, __cil_tmp12, __cil_tmp14, __cil_tmp16, __cil_tmp17,
                          blen);
  }
  if (ret != 0) {
    {
    printk("<4>az6027: usb out operation failed. (%d)\n", ret);
    }
  } else {
  }
  return (ret);
}
}
static struct rc_map_table rc_map_az6027_table[2U] = { {1U, 2U},
        {2U, 3U}};
static int az6027_rc_query(struct dvb_usb_device *d , u32 *event , int *state )
{
  {
  return (0);
}
}
static int az6027_ci_read_attribute_mem(struct dvb_ca_en50221 *ca , int slot , int address )
{ struct dvb_usb_device *d ;
  struct az6027_device_state *state ;
  int ret ;
  u8 req ;
  u16 value ;
  u16 index ;
  int blen ;
  u8 *b ;
  void *tmp ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  void *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  void *__cil_tmp18 ;
  u8 *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct mutex *__cil_tmp24 ;
  int __cil_tmp25 ;
  u8 __cil_tmp26 ;
  int __cil_tmp27 ;
  u16 __cil_tmp28 ;
  int __cil_tmp29 ;
  u16 __cil_tmp30 ;
  u8 __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  struct mutex *__cil_tmp34 ;
  void const *__cil_tmp35 ;
  {
  __cil_tmp13 = (unsigned long )ca;
  __cil_tmp14 = __cil_tmp13 + 72;
  __cil_tmp15 = *((void **)__cil_tmp14);
  d = (struct dvb_usb_device *)__cil_tmp15;
  __cil_tmp16 = (unsigned long )d;
  __cil_tmp17 = __cil_tmp16 + 11520;
  __cil_tmp18 = *((void **)__cil_tmp17);
  state = (struct az6027_device_state *)__cil_tmp18;
  if (slot != 0) {
    return (-22);
  } else {
  }
  {
  tmp = kmalloc(12UL, 208U);
  b = (u8 *)tmp;
  }
  {
  __cil_tmp19 = (u8 *)0;
  __cil_tmp20 = (unsigned long )__cil_tmp19;
  __cil_tmp21 = (unsigned long )b;
  if (__cil_tmp21 == __cil_tmp20) {
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp22 = (unsigned long )state;
  __cil_tmp23 = __cil_tmp22 + 88;
  __cil_tmp24 = (struct mutex *)__cil_tmp23;
  mutex_lock_nested(__cil_tmp24, 0U);
  req = (u8 )193U;
  value = (u16 )address;
  index = (u16 )0U;
  blen = 1;
  __cil_tmp25 = (int )req;
  __cil_tmp26 = (u8 )__cil_tmp25;
  __cil_tmp27 = (int )value;
  __cil_tmp28 = (u16 )__cil_tmp27;
  __cil_tmp29 = (int )index;
  __cil_tmp30 = (u16 )__cil_tmp29;
  ret = az6027_usb_in_op(d, __cil_tmp26, __cil_tmp28, __cil_tmp30, b, blen);
  }
  if (ret < 0) {
    {
    printk("<4>az6027: usb in operation failed. (%d)\n", ret);
    ret = -22;
    }
  } else {
    __cil_tmp31 = *b;
    ret = (int )__cil_tmp31;
  }
  {
  __cil_tmp32 = (unsigned long )state;
  __cil_tmp33 = __cil_tmp32 + 88;
  __cil_tmp34 = (struct mutex *)__cil_tmp33;
  mutex_unlock(__cil_tmp34);
  __cil_tmp35 = (void const *)b;
  kfree(__cil_tmp35);
  }
  return (ret);
}
}
static int az6027_ci_write_attribute_mem(struct dvb_ca_en50221 *ca , int slot , int address ,
                                         u8 value )
{ struct dvb_usb_device *d ;
  struct az6027_device_state *state ;
  int ret ;
  u8 req ;
  u16 value1 ;
  u16 index ;
  int blen ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  void *__cil_tmp17 ;
  int *__cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct mutex *__cil_tmp22 ;
  int __cil_tmp23 ;
  u8 __cil_tmp24 ;
  int __cil_tmp25 ;
  u16 __cil_tmp26 ;
  int __cil_tmp27 ;
  u16 __cil_tmp28 ;
  u8 *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  struct mutex *__cil_tmp32 ;
  {
  __cil_tmp12 = (unsigned long )ca;
  __cil_tmp13 = __cil_tmp12 + 72;
  __cil_tmp14 = *((void **)__cil_tmp13);
  d = (struct dvb_usb_device *)__cil_tmp14;
  __cil_tmp15 = (unsigned long )d;
  __cil_tmp16 = __cil_tmp15 + 11520;
  __cil_tmp17 = *((void **)__cil_tmp16);
  state = (struct az6027_device_state *)__cil_tmp17;
  {
  __cil_tmp18 = & dvb_usb_az6027_debug;
  __cil_tmp19 = *__cil_tmp18;
  if (__cil_tmp19 & 1) {
    {
    printk("%s %d", "az6027_ci_write_attribute_mem", slot);
    }
  } else {
  }
  }
  if (slot != 0) {
    return (-22);
  } else {
  }
  {
  __cil_tmp20 = (unsigned long )state;
  __cil_tmp21 = __cil_tmp20 + 88;
  __cil_tmp22 = (struct mutex *)__cil_tmp21;
  mutex_lock_nested(__cil_tmp22, 0U);
  req = (u8 )194U;
  value1 = (u16 )address;
  index = (u16 )value;
  blen = 0;
  __cil_tmp23 = (int )req;
  __cil_tmp24 = (u8 )__cil_tmp23;
  __cil_tmp25 = (int )value1;
  __cil_tmp26 = (u16 )__cil_tmp25;
  __cil_tmp27 = (int )index;
  __cil_tmp28 = (u16 )__cil_tmp27;
  __cil_tmp29 = (u8 *)0;
  ret = az6027_usb_out_op(d, __cil_tmp24, __cil_tmp26, __cil_tmp28, __cil_tmp29, blen);
  }
  if (ret != 0) {
    {
    printk("<4>az6027: usb out operation failed. (%d)\n", ret);
    }
  } else {
  }
  {
  __cil_tmp30 = (unsigned long )state;
  __cil_tmp31 = __cil_tmp30 + 88;
  __cil_tmp32 = (struct mutex *)__cil_tmp31;
  mutex_unlock(__cil_tmp32);
  }
  return (ret);
}
}
static int az6027_ci_read_cam_control(struct dvb_ca_en50221 *ca , int slot , u8 address )
{ struct dvb_usb_device *d ;
  struct az6027_device_state *state ;
  int ret ;
  u8 req ;
  u16 value ;
  u16 index ;
  int blen ;
  u8 *b ;
  void *tmp ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  void *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  void *__cil_tmp18 ;
  u8 *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct mutex *__cil_tmp24 ;
  int __cil_tmp25 ;
  u8 __cil_tmp26 ;
  int __cil_tmp27 ;
  u16 __cil_tmp28 ;
  int __cil_tmp29 ;
  u16 __cil_tmp30 ;
  u8 __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  u8 *__cil_tmp33 ;
  u8 __cil_tmp34 ;
  int *__cil_tmp35 ;
  int __cil_tmp36 ;
  u8 *__cil_tmp37 ;
  u8 __cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  struct mutex *__cil_tmp43 ;
  void const *__cil_tmp44 ;
  {
  __cil_tmp13 = (unsigned long )ca;
  __cil_tmp14 = __cil_tmp13 + 72;
  __cil_tmp15 = *((void **)__cil_tmp14);
  d = (struct dvb_usb_device *)__cil_tmp15;
  __cil_tmp16 = (unsigned long )d;
  __cil_tmp17 = __cil_tmp16 + 11520;
  __cil_tmp18 = *((void **)__cil_tmp17);
  state = (struct az6027_device_state *)__cil_tmp18;
  if (slot != 0) {
    return (-22);
  } else {
  }
  {
  tmp = kmalloc(12UL, 208U);
  b = (u8 *)tmp;
  }
  {
  __cil_tmp19 = (u8 *)0;
  __cil_tmp20 = (unsigned long )__cil_tmp19;
  __cil_tmp21 = (unsigned long )b;
  if (__cil_tmp21 == __cil_tmp20) {
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp22 = (unsigned long )state;
  __cil_tmp23 = __cil_tmp22 + 88;
  __cil_tmp24 = (struct mutex *)__cil_tmp23;
  mutex_lock_nested(__cil_tmp24, 0U);
  req = (u8 )195U;
  value = (u16 )address;
  index = (u16 )0U;
  blen = 2;
  __cil_tmp25 = (int )req;
  __cil_tmp26 = (u8 )__cil_tmp25;
  __cil_tmp27 = (int )value;
  __cil_tmp28 = (u16 )__cil_tmp27;
  __cil_tmp29 = (int )index;
  __cil_tmp30 = (u16 )__cil_tmp29;
  ret = az6027_usb_in_op(d, __cil_tmp26, __cil_tmp28, __cil_tmp30, b, blen);
  }
  if (ret < 0) {
    {
    printk("<4>az6027: usb in operation failed. (%d)\n", ret);
    ret = -22;
    }
  } else {
    {
    __cil_tmp31 = *b;
    __cil_tmp32 = (unsigned int )__cil_tmp31;
    if (__cil_tmp32 == 0U) {
      {
      printk("<4>az6027: Read CI IO error\n");
      }
    } else {
    }
    }
    __cil_tmp33 = b + 1UL;
    __cil_tmp34 = *__cil_tmp33;
    ret = (int )__cil_tmp34;
    {
    __cil_tmp35 = & dvb_usb_az6027_debug;
    __cil_tmp36 = *__cil_tmp35;
    if (__cil_tmp36 & 1) {
      {
      __cil_tmp37 = b + 1UL;
      __cil_tmp38 = *__cil_tmp37;
      __cil_tmp39 = (int )__cil_tmp38;
      __cil_tmp40 = (int )value;
      printk("read cam data = %x from 0x%x", __cil_tmp39, __cil_tmp40);
      }
    } else {
    }
    }
  }
  {
  __cil_tmp41 = (unsigned long )state;
  __cil_tmp42 = __cil_tmp41 + 88;
  __cil_tmp43 = (struct mutex *)__cil_tmp42;
  mutex_unlock(__cil_tmp43);
  __cil_tmp44 = (void const *)b;
  kfree(__cil_tmp44);
  }
  return (ret);
}
}
static int az6027_ci_write_cam_control(struct dvb_ca_en50221 *ca , int slot , u8 address ,
                                       u8 value )
{ struct dvb_usb_device *d ;
  struct az6027_device_state *state ;
  int ret ;
  u8 req ;
  u16 value1 ;
  u16 index ;
  int blen ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  void *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct mutex *__cil_tmp20 ;
  int __cil_tmp21 ;
  u8 __cil_tmp22 ;
  int __cil_tmp23 ;
  u16 __cil_tmp24 ;
  int __cil_tmp25 ;
  u16 __cil_tmp26 ;
  u8 *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct mutex *__cil_tmp30 ;
  {
  __cil_tmp12 = (unsigned long )ca;
  __cil_tmp13 = __cil_tmp12 + 72;
  __cil_tmp14 = *((void **)__cil_tmp13);
  d = (struct dvb_usb_device *)__cil_tmp14;
  __cil_tmp15 = (unsigned long )d;
  __cil_tmp16 = __cil_tmp15 + 11520;
  __cil_tmp17 = *((void **)__cil_tmp16);
  state = (struct az6027_device_state *)__cil_tmp17;
  if (slot != 0) {
    return (-22);
  } else {
  }
  {
  __cil_tmp18 = (unsigned long )state;
  __cil_tmp19 = __cil_tmp18 + 88;
  __cil_tmp20 = (struct mutex *)__cil_tmp19;
  mutex_lock_nested(__cil_tmp20, 0U);
  req = (u8 )196U;
  value1 = (u16 )address;
  index = (u16 )value;
  blen = 0;
  __cil_tmp21 = (int )req;
  __cil_tmp22 = (u8 )__cil_tmp21;
  __cil_tmp23 = (int )value1;
  __cil_tmp24 = (u16 )__cil_tmp23;
  __cil_tmp25 = (int )index;
  __cil_tmp26 = (u16 )__cil_tmp25;
  __cil_tmp27 = (u8 *)0;
  ret = az6027_usb_out_op(d, __cil_tmp22, __cil_tmp24, __cil_tmp26, __cil_tmp27, blen);
  }
  if (ret != 0) {
    {
    printk("<4>az6027: usb out operation failed. (%d)\n", ret);
    }
    goto failed;
  } else {
  }
  failed:
  {
  __cil_tmp28 = (unsigned long )state;
  __cil_tmp29 = __cil_tmp28 + 88;
  __cil_tmp30 = (struct mutex *)__cil_tmp29;
  mutex_unlock(__cil_tmp30);
  }
  return (ret);
}
}
static int CI_CamReady(struct dvb_ca_en50221 *ca , int slot )
{ struct dvb_usb_device *d ;
  int ret ;
  u8 req ;
  u16 value ;
  u16 index ;
  int blen ;
  u8 *b ;
  void *tmp ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  void *__cil_tmp13 ;
  u8 *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  int __cil_tmp17 ;
  u8 __cil_tmp18 ;
  int __cil_tmp19 ;
  u16 __cil_tmp20 ;
  int __cil_tmp21 ;
  u16 __cil_tmp22 ;
  u8 __cil_tmp23 ;
  void const *__cil_tmp24 ;
  {
  {
  __cil_tmp11 = (unsigned long )ca;
  __cil_tmp12 = __cil_tmp11 + 72;
  __cil_tmp13 = *((void **)__cil_tmp12);
  d = (struct dvb_usb_device *)__cil_tmp13;
  tmp = kmalloc(12UL, 208U);
  b = (u8 *)tmp;
  }
  {
  __cil_tmp14 = (u8 *)0;
  __cil_tmp15 = (unsigned long )__cil_tmp14;
  __cil_tmp16 = (unsigned long )b;
  if (__cil_tmp16 == __cil_tmp15) {
    return (-12);
  } else {
  }
  }
  {
  req = (u8 )200U;
  value = (u16 )0U;
  index = (u16 )0U;
  blen = 1;
  __cil_tmp17 = (int )req;
  __cil_tmp18 = (u8 )__cil_tmp17;
  __cil_tmp19 = (int )value;
  __cil_tmp20 = (u16 )__cil_tmp19;
  __cil_tmp21 = (int )index;
  __cil_tmp22 = (u16 )__cil_tmp21;
  ret = az6027_usb_in_op(d, __cil_tmp18, __cil_tmp20, __cil_tmp22, b, blen);
  }
  if (ret < 0) {
    {
    printk("<4>az6027: usb in operation failed. (%d)\n", ret);
    ret = -5;
    }
  } else {
    __cil_tmp23 = *b;
    ret = (int )__cil_tmp23;
  }
  {
  __cil_tmp24 = (void const *)b;
  kfree(__cil_tmp24);
  }
  return (ret);
}
}
static int az6027_ci_slot_reset(struct dvb_ca_en50221 *ca , int slot )
{ struct dvb_usb_device *d ;
  struct az6027_device_state *state ;
  int ret ;
  int i ;
  u8 req ;
  u16 value ;
  u16 index ;
  int blen ;
  int tmp ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  void *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct mutex *__cil_tmp20 ;
  int __cil_tmp21 ;
  u8 __cil_tmp22 ;
  int __cil_tmp23 ;
  u16 __cil_tmp24 ;
  int __cil_tmp25 ;
  u16 __cil_tmp26 ;
  u8 *__cil_tmp27 ;
  int __cil_tmp28 ;
  u8 __cil_tmp29 ;
  int __cil_tmp30 ;
  u16 __cil_tmp31 ;
  int __cil_tmp32 ;
  u16 __cil_tmp33 ;
  u8 *__cil_tmp34 ;
  int *__cil_tmp35 ;
  int __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  struct mutex *__cil_tmp39 ;
  {
  {
  __cil_tmp12 = (unsigned long )ca;
  __cil_tmp13 = __cil_tmp12 + 72;
  __cil_tmp14 = *((void **)__cil_tmp13);
  d = (struct dvb_usb_device *)__cil_tmp14;
  __cil_tmp15 = (unsigned long )d;
  __cil_tmp16 = __cil_tmp15 + 11520;
  __cil_tmp17 = *((void **)__cil_tmp16);
  state = (struct az6027_device_state *)__cil_tmp17;
  __cil_tmp18 = (unsigned long )state;
  __cil_tmp19 = __cil_tmp18 + 88;
  __cil_tmp20 = (struct mutex *)__cil_tmp19;
  mutex_lock_nested(__cil_tmp20, 0U);
  req = (u8 )198U;
  value = (u16 )1U;
  index = (u16 )0U;
  blen = 0;
  __cil_tmp21 = (int )req;
  __cil_tmp22 = (u8 )__cil_tmp21;
  __cil_tmp23 = (int )value;
  __cil_tmp24 = (u16 )__cil_tmp23;
  __cil_tmp25 = (int )index;
  __cil_tmp26 = (u16 )__cil_tmp25;
  __cil_tmp27 = (u8 *)0;
  ret = az6027_usb_out_op(d, __cil_tmp22, __cil_tmp24, __cil_tmp26, __cil_tmp27, blen);
  }
  if (ret != 0) {
    {
    printk("<4>az6027: usb out operation failed. (%d)\n", ret);
    }
    goto failed;
  } else {
  }
  {
  msleep(500U);
  req = (u8 )198U;
  value = (u16 )0U;
  index = (u16 )0U;
  blen = 0;
  __cil_tmp28 = (int )req;
  __cil_tmp29 = (u8 )__cil_tmp28;
  __cil_tmp30 = (int )value;
  __cil_tmp31 = (u16 )__cil_tmp30;
  __cil_tmp32 = (int )index;
  __cil_tmp33 = (u16 )__cil_tmp32;
  __cil_tmp34 = (u8 *)0;
  ret = az6027_usb_out_op(d, __cil_tmp29, __cil_tmp31, __cil_tmp33, __cil_tmp34, blen);
  }
  if (ret != 0) {
    {
    printk("<4>az6027: usb out operation failed. (%d)\n", ret);
    }
    goto failed;
  } else {
  }
  i = 0;
  goto ldv_39109;
  ldv_39108:
  {
  msleep(100U);
  tmp = CI_CamReady(ca, slot);
  }
  if (tmp != 0) {
    {
    __cil_tmp35 = & dvb_usb_az6027_debug;
    __cil_tmp36 = *__cil_tmp35;
    if (__cil_tmp36 & 1) {
      {
      printk("CAM Ready");
      }
    } else {
    }
    }
    goto ldv_39107;
  } else {
  }
  i = i + 1;
  ldv_39109: ;
  if (i <= 14) {
    goto ldv_39108;
  } else {
    goto ldv_39107;
  }
  ldv_39107:
  {
  msleep(5000U);
  }
  failed:
  {
  __cil_tmp37 = (unsigned long )state;
  __cil_tmp38 = __cil_tmp37 + 88;
  __cil_tmp39 = (struct mutex *)__cil_tmp38;
  mutex_unlock(__cil_tmp39);
  }
  return (ret);
}
}
static int az6027_ci_slot_shutdown(struct dvb_ca_en50221 *ca , int slot )
{
  {
  return (0);
}
}
static int az6027_ci_slot_ts_enable(struct dvb_ca_en50221 *ca , int slot )
{ struct dvb_usb_device *d ;
  struct az6027_device_state *state ;
  int ret ;
  u8 req ;
  u16 value ;
  u16 index ;
  int blen ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  void *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  void *__cil_tmp15 ;
  int *__cil_tmp16 ;
  int __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct mutex *__cil_tmp20 ;
  int __cil_tmp21 ;
  u8 __cil_tmp22 ;
  int __cil_tmp23 ;
  u16 __cil_tmp24 ;
  int __cil_tmp25 ;
  u16 __cil_tmp26 ;
  u8 *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct mutex *__cil_tmp30 ;
  {
  __cil_tmp10 = (unsigned long )ca;
  __cil_tmp11 = __cil_tmp10 + 72;
  __cil_tmp12 = *((void **)__cil_tmp11);
  d = (struct dvb_usb_device *)__cil_tmp12;
  __cil_tmp13 = (unsigned long )d;
  __cil_tmp14 = __cil_tmp13 + 11520;
  __cil_tmp15 = *((void **)__cil_tmp14);
  state = (struct az6027_device_state *)__cil_tmp15;
  {
  __cil_tmp16 = & dvb_usb_az6027_debug;
  __cil_tmp17 = *__cil_tmp16;
  if (__cil_tmp17 & 1) {
    {
    printk("%s", "az6027_ci_slot_ts_enable");
    }
  } else {
  }
  }
  {
  __cil_tmp18 = (unsigned long )state;
  __cil_tmp19 = __cil_tmp18 + 88;
  __cil_tmp20 = (struct mutex *)__cil_tmp19;
  mutex_lock_nested(__cil_tmp20, 0U);
  req = (u8 )199U;
  value = (u16 )1U;
  index = (u16 )0U;
  blen = 0;
  __cil_tmp21 = (int )req;
  __cil_tmp22 = (u8 )__cil_tmp21;
  __cil_tmp23 = (int )value;
  __cil_tmp24 = (u16 )__cil_tmp23;
  __cil_tmp25 = (int )index;
  __cil_tmp26 = (u16 )__cil_tmp25;
  __cil_tmp27 = (u8 *)0;
  ret = az6027_usb_out_op(d, __cil_tmp22, __cil_tmp24, __cil_tmp26, __cil_tmp27, blen);
  }
  if (ret != 0) {
    {
    printk("<4>az6027: usb out operation failed. (%d)\n", ret);
    }
    goto failed;
  } else {
  }
  failed:
  {
  __cil_tmp28 = (unsigned long )state;
  __cil_tmp29 = __cil_tmp28 + 88;
  __cil_tmp30 = (struct mutex *)__cil_tmp29;
  mutex_unlock(__cil_tmp30);
  }
  return (ret);
}
}
static int az6027_ci_poll_slot_status(struct dvb_ca_en50221 *ca , int slot , int open )
{ struct dvb_usb_device *d ;
  struct az6027_device_state *state ;
  int ret ;
  u8 req ;
  u16 value ;
  u16 index ;
  int blen ;
  u8 *b ;
  void *tmp ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  void *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  void *__cil_tmp18 ;
  u8 *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct mutex *__cil_tmp24 ;
  int __cil_tmp25 ;
  u8 __cil_tmp26 ;
  int __cil_tmp27 ;
  u16 __cil_tmp28 ;
  int __cil_tmp29 ;
  u16 __cil_tmp30 ;
  u8 __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  struct mutex *__cil_tmp35 ;
  void const *__cil_tmp36 ;
  {
  {
  __cil_tmp13 = (unsigned long )ca;
  __cil_tmp14 = __cil_tmp13 + 72;
  __cil_tmp15 = *((void **)__cil_tmp14);
  d = (struct dvb_usb_device *)__cil_tmp15;
  __cil_tmp16 = (unsigned long )d;
  __cil_tmp17 = __cil_tmp16 + 11520;
  __cil_tmp18 = *((void **)__cil_tmp17);
  state = (struct az6027_device_state *)__cil_tmp18;
  tmp = kmalloc(12UL, 208U);
  b = (u8 *)tmp;
  }
  {
  __cil_tmp19 = (u8 *)0;
  __cil_tmp20 = (unsigned long )__cil_tmp19;
  __cil_tmp21 = (unsigned long )b;
  if (__cil_tmp21 == __cil_tmp20) {
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp22 = (unsigned long )state;
  __cil_tmp23 = __cil_tmp22 + 88;
  __cil_tmp24 = (struct mutex *)__cil_tmp23;
  mutex_lock_nested(__cil_tmp24, 0U);
  req = (u8 )197U;
  value = (u16 )0U;
  index = (u16 )0U;
  blen = 1;
  __cil_tmp25 = (int )req;
  __cil_tmp26 = (u8 )__cil_tmp25;
  __cil_tmp27 = (int )value;
  __cil_tmp28 = (u16 )__cil_tmp27;
  __cil_tmp29 = (int )index;
  __cil_tmp30 = (u16 )__cil_tmp29;
  ret = az6027_usb_in_op(d, __cil_tmp26, __cil_tmp28, __cil_tmp30, b, blen);
  }
  if (ret < 0) {
    {
    printk("<4>az6027: usb in operation failed. (%d)\n", ret);
    ret = -5;
    }
  } else {
    ret = 0;
  }
  if (ret == 0) {
    {
    __cil_tmp31 = *b;
    __cil_tmp32 = (unsigned int )__cil_tmp31;
    if (__cil_tmp32 == 1U) {
      ret = 5;
    } else {
    }
    }
  } else {
  }
  {
  __cil_tmp33 = (unsigned long )state;
  __cil_tmp34 = __cil_tmp33 + 88;
  __cil_tmp35 = (struct mutex *)__cil_tmp34;
  mutex_unlock(__cil_tmp35);
  __cil_tmp36 = (void const *)b;
  kfree(__cil_tmp36);
  }
  return (ret);
}
}
static void az6027_ci_uninit(struct dvb_usb_device *d )
{ struct az6027_device_state *state ;
  int *__cil_tmp3 ;
  int __cil_tmp4 ;
  struct dvb_usb_device *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void *__cil_tmp10 ;
  struct az6027_device_state *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  void *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct dvb_ca_en50221 *__cil_tmp21 ;
  struct dvb_ca_en50221 *__cil_tmp22 ;
  void *__cil_tmp23 ;
  {
  {
  __cil_tmp3 = & dvb_usb_az6027_debug;
  __cil_tmp4 = *__cil_tmp3;
  if (__cil_tmp4 & 1) {
    {
    printk("%s", "az6027_ci_uninit");
    }
  } else {
  }
  }
  {
  __cil_tmp5 = (struct dvb_usb_device *)0;
  __cil_tmp6 = (unsigned long )__cil_tmp5;
  __cil_tmp7 = (unsigned long )d;
  if (__cil_tmp7 == __cil_tmp6) {
    return;
  } else {
  }
  }
  __cil_tmp8 = (unsigned long )d;
  __cil_tmp9 = __cil_tmp8 + 11520;
  __cil_tmp10 = *((void **)__cil_tmp9);
  state = (struct az6027_device_state *)__cil_tmp10;
  {
  __cil_tmp11 = (struct az6027_device_state *)0;
  __cil_tmp12 = (unsigned long )__cil_tmp11;
  __cil_tmp13 = (unsigned long )state;
  if (__cil_tmp13 == __cil_tmp12) {
    return;
  } else {
  }
  }
  {
  __cil_tmp14 = (void *)0;
  __cil_tmp15 = (unsigned long )__cil_tmp14;
  __cil_tmp16 = 0 + 72;
  __cil_tmp17 = (unsigned long )state;
  __cil_tmp18 = __cil_tmp17 + __cil_tmp16;
  __cil_tmp19 = *((void **)__cil_tmp18);
  __cil_tmp20 = (unsigned long )__cil_tmp19;
  if (__cil_tmp20 == __cil_tmp15) {
    return;
  } else {
  }
  }
  {
  __cil_tmp21 = (struct dvb_ca_en50221 *)state;
  dvb_ca_en50221_release(__cil_tmp21);
  __cil_tmp22 = (struct dvb_ca_en50221 *)state;
  __cil_tmp23 = (void *)__cil_tmp22;
  memset(__cil_tmp23, 0, 88UL);
  }
  return;
}
}
static int az6027_ci_init(struct dvb_usb_adapter *a )
{ struct dvb_usb_device *d ;
  struct az6027_device_state *state ;
  int ret ;
  struct lock_class_key __key ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  void *__cil_tmp8 ;
  int *__cil_tmp9 ;
  int __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct mutex *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
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
  struct dvb_adapter *__cil_tmp43 ;
  struct dvb_ca_en50221 *__cil_tmp44 ;
  struct dvb_ca_en50221 *__cil_tmp45 ;
  void *__cil_tmp46 ;
  int *__cil_tmp47 ;
  int __cil_tmp48 ;
  {
  d = *((struct dvb_usb_device **)a);
  __cil_tmp6 = (unsigned long )d;
  __cil_tmp7 = __cil_tmp6 + 11520;
  __cil_tmp8 = *((void **)__cil_tmp7);
  state = (struct az6027_device_state *)__cil_tmp8;
  {
  __cil_tmp9 = & dvb_usb_az6027_debug;
  __cil_tmp10 = *__cil_tmp9;
  if (__cil_tmp10 & 1) {
    {
    printk("%s", "az6027_ci_init");
    }
  } else {
  }
  }
  {
  __cil_tmp11 = (unsigned long )state;
  __cil_tmp12 = __cil_tmp11 + 88;
  __cil_tmp13 = (struct mutex *)__cil_tmp12;
  __mutex_init(__cil_tmp13, "&state->ca_mutex", & __key);
  *((struct module **)state) = & __this_module;
  __cil_tmp14 = 0 + 8;
  __cil_tmp15 = (unsigned long )state;
  __cil_tmp16 = __cil_tmp15 + __cil_tmp14;
  *((int (**)(struct dvb_ca_en50221 * , int , int ))__cil_tmp16) = & az6027_ci_read_attribute_mem;
  __cil_tmp17 = 0 + 16;
  __cil_tmp18 = (unsigned long )state;
  __cil_tmp19 = __cil_tmp18 + __cil_tmp17;
  *((int (**)(struct dvb_ca_en50221 * , int , int , u8 ))__cil_tmp19) = & az6027_ci_write_attribute_mem;
  __cil_tmp20 = 0 + 24;
  __cil_tmp21 = (unsigned long )state;
  __cil_tmp22 = __cil_tmp21 + __cil_tmp20;
  *((int (**)(struct dvb_ca_en50221 * , int , u8 ))__cil_tmp22) = & az6027_ci_read_cam_control;
  __cil_tmp23 = 0 + 32;
  __cil_tmp24 = (unsigned long )state;
  __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
  *((int (**)(struct dvb_ca_en50221 * , int , u8 , u8 ))__cil_tmp25) = & az6027_ci_write_cam_control;
  __cil_tmp26 = 0 + 40;
  __cil_tmp27 = (unsigned long )state;
  __cil_tmp28 = __cil_tmp27 + __cil_tmp26;
  *((int (**)(struct dvb_ca_en50221 * , int ))__cil_tmp28) = & az6027_ci_slot_reset;
  __cil_tmp29 = 0 + 48;
  __cil_tmp30 = (unsigned long )state;
  __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
  *((int (**)(struct dvb_ca_en50221 * , int ))__cil_tmp31) = & az6027_ci_slot_shutdown;
  __cil_tmp32 = 0 + 56;
  __cil_tmp33 = (unsigned long )state;
  __cil_tmp34 = __cil_tmp33 + __cil_tmp32;
  *((int (**)(struct dvb_ca_en50221 * , int ))__cil_tmp34) = & az6027_ci_slot_ts_enable;
  __cil_tmp35 = 0 + 64;
  __cil_tmp36 = (unsigned long )state;
  __cil_tmp37 = __cil_tmp36 + __cil_tmp35;
  *((int (**)(struct dvb_ca_en50221 * , int , int ))__cil_tmp37) = & az6027_ci_poll_slot_status;
  __cil_tmp38 = 0 + 72;
  __cil_tmp39 = (unsigned long )state;
  __cil_tmp40 = __cil_tmp39 + __cil_tmp38;
  *((void **)__cil_tmp40) = (void *)d;
  __cil_tmp41 = (unsigned long )a;
  __cil_tmp42 = __cil_tmp41 + 216;
  __cil_tmp43 = (struct dvb_adapter *)__cil_tmp42;
  __cil_tmp44 = (struct dvb_ca_en50221 *)state;
  ret = dvb_ca_en50221_init(__cil_tmp43, __cil_tmp44, 0, 1);
  }
  if (ret != 0) {
    {
    printk("<3>az6027: Cannot initialize CI: Error %d.\n", ret);
    __cil_tmp45 = (struct dvb_ca_en50221 *)state;
    __cil_tmp46 = (void *)__cil_tmp45;
    memset(__cil_tmp46, 0, 88UL);
    }
    return (ret);
  } else {
  }
  {
  __cil_tmp47 = & dvb_usb_az6027_debug;
  __cil_tmp48 = *__cil_tmp47;
  if (__cil_tmp48 & 1) {
    {
    printk("CI initialized.");
    }
  } else {
  }
  }
  return (0);
}
}
static int az6027_set_voltage(struct dvb_frontend *fe , fe_sec_voltage_t voltage )
{ u8 buf ;
  struct dvb_usb_adapter *adap ;
  struct i2c_msg i2c_msg ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct dvb_adapter *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  void *__cil_tmp11 ;
  struct i2c_msg *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  u8 *__cil_tmp17 ;
  struct dvb_usb_device *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct i2c_adapter *__cil_tmp21 ;
  u8 *__cil_tmp22 ;
  struct dvb_usb_device *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct i2c_adapter *__cil_tmp26 ;
  u8 *__cil_tmp27 ;
  struct dvb_usb_device *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  struct i2c_adapter *__cil_tmp31 ;
  {
  __cil_tmp6 = (unsigned long )fe;
  __cil_tmp7 = __cil_tmp6 + 752;
  __cil_tmp8 = *((struct dvb_adapter **)__cil_tmp7);
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = __cil_tmp9 + 56;
  __cil_tmp11 = *((void **)__cil_tmp10);
  adap = (struct dvb_usb_adapter *)__cil_tmp11;
  __cil_tmp12 = & i2c_msg;
  *((__u16 *)__cil_tmp12) = (__u16 )153U;
  __cil_tmp13 = (unsigned long )(& i2c_msg) + 2;
  *((__u16 *)__cil_tmp13) = (__u16 )0U;
  __cil_tmp14 = (unsigned long )(& i2c_msg) + 4;
  *((__u16 *)__cil_tmp14) = (__u16 )1U;
  __cil_tmp15 = (unsigned long )(& i2c_msg) + 8;
  *((__u8 **)__cil_tmp15) = & buf;
  {
  __cil_tmp16 = (unsigned int )voltage;
  if ((int )__cil_tmp16 == 0) {
    goto case_0;
  } else
  if ((int )__cil_tmp16 == 1) {
    goto case_1;
  } else
  if ((int )__cil_tmp16 == 2) {
    goto case_2;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      {
      __cil_tmp17 = & buf;
      *__cil_tmp17 = (u8 )1U;
      __cil_tmp18 = *((struct dvb_usb_device **)adap);
      __cil_tmp19 = (unsigned long )__cil_tmp18;
      __cil_tmp20 = __cil_tmp19 + 3912;
      __cil_tmp21 = (struct i2c_adapter *)__cil_tmp20;
      i2c_transfer(__cil_tmp21, & i2c_msg, 1);
      }
      goto ldv_39161;
      case_1:
      {
      __cil_tmp22 = & buf;
      *__cil_tmp22 = (u8 )2U;
      __cil_tmp23 = *((struct dvb_usb_device **)adap);
      __cil_tmp24 = (unsigned long )__cil_tmp23;
      __cil_tmp25 = __cil_tmp24 + 3912;
      __cil_tmp26 = (struct i2c_adapter *)__cil_tmp25;
      i2c_transfer(__cil_tmp26, & i2c_msg, 1);
      }
      goto ldv_39161;
      case_2:
      {
      __cil_tmp27 = & buf;
      *__cil_tmp27 = (u8 )0U;
      __cil_tmp28 = *((struct dvb_usb_device **)adap);
      __cil_tmp29 = (unsigned long )__cil_tmp28;
      __cil_tmp30 = __cil_tmp29 + 3912;
      __cil_tmp31 = (struct i2c_adapter *)__cil_tmp30;
      i2c_transfer(__cil_tmp31, & i2c_msg, 1);
      }
      goto ldv_39161;
      switch_default: ;
      return (-22);
    } else {
      switch_break: ;
    }
    }
  }
  }
  ldv_39161: ;
  return (0);
}
}
static int az6027_frontend_poweron(struct dvb_usb_adapter *adap )
{ int ret ;
  u8 req ;
  u16 value ;
  u16 index ;
  int blen ;
  struct dvb_usb_device *__cil_tmp7 ;
  int __cil_tmp8 ;
  u8 __cil_tmp9 ;
  int __cil_tmp10 ;
  u16 __cil_tmp11 ;
  int __cil_tmp12 ;
  u16 __cil_tmp13 ;
  u8 *__cil_tmp14 ;
  {
  {
  req = (u8 )188U;
  value = (u16 )1U;
  index = (u16 )3U;
  blen = 0;
  __cil_tmp7 = *((struct dvb_usb_device **)adap);
  __cil_tmp8 = (int )req;
  __cil_tmp9 = (u8 )__cil_tmp8;
  __cil_tmp10 = (int )value;
  __cil_tmp11 = (u16 )__cil_tmp10;
  __cil_tmp12 = (int )index;
  __cil_tmp13 = (u16 )__cil_tmp12;
  __cil_tmp14 = (u8 *)0;
  ret = az6027_usb_out_op(__cil_tmp7, __cil_tmp9, __cil_tmp11, __cil_tmp13, __cil_tmp14,
                          blen);
  }
  if (ret != 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int az6027_frontend_reset(struct dvb_usb_adapter *adap )
{ int ret ;
  u8 req ;
  u16 value ;
  u16 index ;
  int blen ;
  struct dvb_usb_device *__cil_tmp7 ;
  int __cil_tmp8 ;
  u8 __cil_tmp9 ;
  int __cil_tmp10 ;
  u16 __cil_tmp11 ;
  int __cil_tmp12 ;
  u16 __cil_tmp13 ;
  u8 *__cil_tmp14 ;
  struct dvb_usb_device *__cil_tmp15 ;
  int __cil_tmp16 ;
  u8 __cil_tmp17 ;
  int __cil_tmp18 ;
  u16 __cil_tmp19 ;
  int __cil_tmp20 ;
  u16 __cil_tmp21 ;
  u8 *__cil_tmp22 ;
  struct dvb_usb_device *__cil_tmp23 ;
  int __cil_tmp24 ;
  u8 __cil_tmp25 ;
  int __cil_tmp26 ;
  u16 __cil_tmp27 ;
  int __cil_tmp28 ;
  u16 __cil_tmp29 ;
  u8 *__cil_tmp30 ;
  {
  {
  req = (u8 )192U;
  value = (u16 )1U;
  index = (u16 )3U;
  blen = 0;
  __cil_tmp7 = *((struct dvb_usb_device **)adap);
  __cil_tmp8 = (int )req;
  __cil_tmp9 = (u8 )__cil_tmp8;
  __cil_tmp10 = (int )value;
  __cil_tmp11 = (u16 )__cil_tmp10;
  __cil_tmp12 = (int )index;
  __cil_tmp13 = (u16 )__cil_tmp12;
  __cil_tmp14 = (u8 *)0;
  ret = az6027_usb_out_op(__cil_tmp7, __cil_tmp9, __cil_tmp11, __cil_tmp13, __cil_tmp14,
                          blen);
  }
  if (ret != 0) {
    return (-5);
  } else {
  }
  {
  req = (u8 )192U;
  value = (u16 )0U;
  index = (u16 )3U;
  blen = 0;
  msleep_interruptible(200U);
  __cil_tmp15 = *((struct dvb_usb_device **)adap);
  __cil_tmp16 = (int )req;
  __cil_tmp17 = (u8 )__cil_tmp16;
  __cil_tmp18 = (int )value;
  __cil_tmp19 = (u16 )__cil_tmp18;
  __cil_tmp20 = (int )index;
  __cil_tmp21 = (u16 )__cil_tmp20;
  __cil_tmp22 = (u8 *)0;
  ret = az6027_usb_out_op(__cil_tmp15, __cil_tmp17, __cil_tmp19, __cil_tmp21, __cil_tmp22,
                          blen);
  }
  if (ret != 0) {
    return (-5);
  } else {
  }
  {
  msleep_interruptible(200U);
  req = (u8 )192U;
  value = (u16 )1U;
  index = (u16 )3U;
  blen = 0;
  __cil_tmp23 = *((struct dvb_usb_device **)adap);
  __cil_tmp24 = (int )req;
  __cil_tmp25 = (u8 )__cil_tmp24;
  __cil_tmp26 = (int )value;
  __cil_tmp27 = (u16 )__cil_tmp26;
  __cil_tmp28 = (int )index;
  __cil_tmp29 = (u16 )__cil_tmp28;
  __cil_tmp30 = (u8 *)0;
  ret = az6027_usb_out_op(__cil_tmp23, __cil_tmp25, __cil_tmp27, __cil_tmp29, __cil_tmp30,
                          blen);
  }
  if (ret != 0) {
    return (-5);
  } else {
  }
  {
  msleep_interruptible(200U);
  }
  return (0);
}
}
static int az6027_frontend_tsbypass(struct dvb_usb_adapter *adap , int onoff )
{ int ret ;
  u8 req ;
  u16 value ;
  u16 index ;
  int blen ;
  struct dvb_usb_device *__cil_tmp8 ;
  int __cil_tmp9 ;
  u8 __cil_tmp10 ;
  int __cil_tmp11 ;
  u16 __cil_tmp12 ;
  int __cil_tmp13 ;
  u16 __cil_tmp14 ;
  u8 *__cil_tmp15 ;
  {
  {
  req = (u8 )199U;
  value = (u16 )onoff;
  index = (u16 )0U;
  blen = 0;
  __cil_tmp8 = *((struct dvb_usb_device **)adap);
  __cil_tmp9 = (int )req;
  __cil_tmp10 = (u8 )__cil_tmp9;
  __cil_tmp11 = (int )value;
  __cil_tmp12 = (u16 )__cil_tmp11;
  __cil_tmp13 = (int )index;
  __cil_tmp14 = (u16 )__cil_tmp13;
  __cil_tmp15 = (u8 *)0;
  ret = az6027_usb_out_op(__cil_tmp8, __cil_tmp10, __cil_tmp12, __cil_tmp14, __cil_tmp15,
                          blen);
  }
  if (ret != 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int az6027_frontend_attach(struct dvb_usb_adapter *adap )
{ struct dvb_frontend *tmp ;
  int *__cil_tmp3 ;
  int __cil_tmp4 ;
  struct dvb_usb_device *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct dvb_usb_device *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct i2c_adapter *__cil_tmp13 ;
  struct dvb_frontend *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct dvb_frontend *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  int *__cil_tmp22 ;
  int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  u8 __cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  struct dvb_frontend *__cil_tmp31 ;
  struct stb6100_config const *__cil_tmp32 ;
  struct dvb_usb_device *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  struct i2c_adapter *__cil_tmp36 ;
  struct dvb_frontend *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  int *__cil_tmp40 ;
  int __cil_tmp41 ;
  struct stb6100_config *__cil_tmp42 ;
  u8 __cil_tmp43 ;
  int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  struct dvb_frontend *__cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  {
  {
  az6027_frontend_poweron(adap);
  az6027_frontend_reset(adap);
  }
  {
  __cil_tmp3 = & dvb_usb_az6027_debug;
  __cil_tmp4 = *__cil_tmp3;
  if (__cil_tmp4 & 1) {
    {
    __cil_tmp5 = *((struct dvb_usb_device **)adap);
    printk("adap = %p, dev = %p\n", adap, __cil_tmp5);
    }
  } else {
  }
  }
  {
  __cil_tmp6 = 0 * 360UL;
  __cil_tmp7 = 2080 + __cil_tmp6;
  __cil_tmp8 = (unsigned long )adap;
  __cil_tmp9 = __cil_tmp8 + __cil_tmp7;
  __cil_tmp10 = *((struct dvb_usb_device **)adap);
  __cil_tmp11 = (unsigned long )__cil_tmp10;
  __cil_tmp12 = __cil_tmp11 + 3912;
  __cil_tmp13 = (struct i2c_adapter *)__cil_tmp12;
  *((struct dvb_frontend **)__cil_tmp9) = stb0899_attach(& az6027_stb0899_config,
                                                         __cil_tmp13);
  }
  {
  __cil_tmp14 = (struct dvb_frontend *)0;
  __cil_tmp15 = (unsigned long )__cil_tmp14;
  __cil_tmp16 = 0 * 360UL;
  __cil_tmp17 = 2080 + __cil_tmp16;
  __cil_tmp18 = (unsigned long )adap;
  __cil_tmp19 = __cil_tmp18 + __cil_tmp17;
  __cil_tmp20 = *((struct dvb_frontend **)__cil_tmp19);
  __cil_tmp21 = (unsigned long )__cil_tmp20;
  if (__cil_tmp21 != __cil_tmp15) {
    {
    __cil_tmp22 = & dvb_usb_az6027_debug;
    __cil_tmp23 = *__cil_tmp22;
    if (__cil_tmp23 & 1) {
      {
      __cil_tmp24 = (unsigned long )(& az6027_stb0899_config) + 56;
      __cil_tmp25 = *((u8 *)__cil_tmp24);
      __cil_tmp26 = (int )__cil_tmp25;
      printk("found STB0899 DVB-S/DVB-S2 frontend @0x%02x", __cil_tmp26);
      }
    } else {
    }
    }
    {
    __cil_tmp27 = 0 * 360UL;
    __cil_tmp28 = 2080 + __cil_tmp27;
    __cil_tmp29 = (unsigned long )adap;
    __cil_tmp30 = __cil_tmp29 + __cil_tmp28;
    __cil_tmp31 = *((struct dvb_frontend **)__cil_tmp30);
    __cil_tmp32 = (struct stb6100_config const *)(& az6027_stb6100_config);
    __cil_tmp33 = *((struct dvb_usb_device **)adap);
    __cil_tmp34 = (unsigned long )__cil_tmp33;
    __cil_tmp35 = __cil_tmp34 + 3912;
    __cil_tmp36 = (struct i2c_adapter *)__cil_tmp35;
    tmp = stb6100_attach(__cil_tmp31, __cil_tmp32, __cil_tmp36);
    }
    {
    __cil_tmp37 = (struct dvb_frontend *)0;
    __cil_tmp38 = (unsigned long )__cil_tmp37;
    __cil_tmp39 = (unsigned long )tmp;
    if (__cil_tmp39 != __cil_tmp38) {
      {
      __cil_tmp40 = & dvb_usb_az6027_debug;
      __cil_tmp41 = *__cil_tmp40;
      if (__cil_tmp41 & 1) {
        {
        __cil_tmp42 = & az6027_stb6100_config;
        __cil_tmp43 = *((u8 *)__cil_tmp42);
        __cil_tmp44 = (int )__cil_tmp43;
        printk("found STB6100 DVB-S/DVB-S2 frontend @0x%02x", __cil_tmp44);
        }
      } else {
      }
      }
      {
      __cil_tmp45 = 0 + 336;
      __cil_tmp46 = 0 * 360UL;
      __cil_tmp47 = 2080 + __cil_tmp46;
      __cil_tmp48 = (unsigned long )adap;
      __cil_tmp49 = __cil_tmp48 + __cil_tmp47;
      __cil_tmp50 = *((struct dvb_frontend **)__cil_tmp49);
      __cil_tmp51 = (unsigned long )__cil_tmp50;
      __cil_tmp52 = __cil_tmp51 + __cil_tmp45;
      *((int (**)(struct dvb_frontend * , fe_sec_voltage_t ))__cil_tmp52) = & az6027_set_voltage;
      az6027_ci_init(adap);
      }
    } else {
      __cil_tmp53 = 0 * 360UL;
      __cil_tmp54 = 2080 + __cil_tmp53;
      __cil_tmp55 = (unsigned long )adap;
      __cil_tmp56 = __cil_tmp55 + __cil_tmp54;
      *((struct dvb_frontend **)__cil_tmp56) = (struct dvb_frontend *)0;
    }
    }
  } else {
    {
    printk("<4>az6027: no front-end attached\n\n");
    }
  }
  }
  {
  az6027_frontend_tsbypass(adap, 0);
  }
  return (0);
}
}
static struct dvb_usb_device_properties az6027_properties ;
static void az6027_usb_disconnect(struct usb_interface *intf )
{ struct dvb_usb_device *d ;
  void *tmp ;
  {
  {
  tmp = usb_get_intfdata(intf);
  d = (struct dvb_usb_device *)tmp;
  az6027_ci_uninit(d);
  dvb_usb_device_exit(intf);
  }
  return;
}
}
static int az6027_usb_probe(struct usb_interface *intf , struct usb_device_id const *id )
{ int tmp ;
  struct dvb_usb_device **__cil_tmp4 ;
  short *__cil_tmp5 ;
  {
  {
  __cil_tmp4 = (struct dvb_usb_device **)0;
  __cil_tmp5 = (short *)(& adapter_nr);
  tmp = dvb_usb_device_init(intf, & az6027_properties, & __this_module, __cil_tmp4,
                            __cil_tmp5);
  }
  return (tmp);
}
}
static int az6027_i2c_xfer(struct i2c_adapter *adap , struct i2c_msg *msg , int num )
{ struct dvb_usb_device *d ;
  void *tmp ;
  int i ;
  int j ;
  int len ;
  u16 index ;
  u16 value ;
  int length ;
  u8 req ;
  u8 *data ;
  void *tmp___0 ;
  int tmp___1 ;
  struct i2c_adapter const *__cil_tmp16 ;
  u8 *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct mutex *__cil_tmp22 ;
  void const *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  struct i2c_msg *__cil_tmp25 ;
  __u16 __cil_tmp26 ;
  unsigned int __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  struct i2c_msg *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  __u8 *__cil_tmp32 ;
  __u8 __cil_tmp33 ;
  int __cil_tmp34 ;
  u8 __cil_tmp35 ;
  int __cil_tmp36 ;
  u16 __cil_tmp37 ;
  int __cil_tmp38 ;
  u16 __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  struct i2c_msg *__cil_tmp41 ;
  __u16 __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  struct i2c_msg *__cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  __u16 __cil_tmp50 ;
  int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  struct i2c_msg *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  __u8 *__cil_tmp56 ;
  __u8 *__cil_tmp57 ;
  __u8 __cil_tmp58 ;
  short __cil_tmp59 ;
  int __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  struct i2c_msg *__cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  __u8 *__cil_tmp65 ;
  __u8 __cil_tmp66 ;
  int __cil_tmp67 ;
  int __cil_tmp68 ;
  short __cil_tmp69 ;
  int __cil_tmp70 ;
  int __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  struct i2c_msg *__cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  __u16 __cil_tmp76 ;
  int __cil_tmp77 ;
  int __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  struct i2c_msg *__cil_tmp80 ;
  __u16 __cil_tmp81 ;
  int __cil_tmp82 ;
  int __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  struct i2c_msg *__cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  __u16 __cil_tmp89 ;
  int __cil_tmp90 ;
  int __cil_tmp91 ;
  u8 __cil_tmp92 ;
  int __cil_tmp93 ;
  u16 __cil_tmp94 ;
  int __cil_tmp95 ;
  u16 __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  struct i2c_msg *__cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  __u16 __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  struct i2c_msg *__cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  __u8 *__cil_tmp109 ;
  __u8 *__cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  u8 *__cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  struct i2c_msg *__cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  __u8 *__cil_tmp118 ;
  __u8 *__cil_tmp119 ;
  __u8 __cil_tmp120 ;
  short __cil_tmp121 ;
  int __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  struct i2c_msg *__cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  __u8 *__cil_tmp127 ;
  __u8 __cil_tmp128 ;
  int __cil_tmp129 ;
  int __cil_tmp130 ;
  short __cil_tmp131 ;
  int __cil_tmp132 ;
  int __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  struct i2c_msg *__cil_tmp135 ;
  __u16 __cil_tmp136 ;
  unsigned int __cil_tmp137 ;
  unsigned int __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  struct i2c_msg *__cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  __u16 __cil_tmp143 ;
  int __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  struct i2c_msg *__cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  __u16 __cil_tmp149 ;
  int __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  u8 *__cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  struct i2c_msg *__cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  __u8 *__cil_tmp159 ;
  __u8 *__cil_tmp160 ;
  int __cil_tmp161 ;
  u8 __cil_tmp162 ;
  int __cil_tmp163 ;
  u16 __cil_tmp164 ;
  int __cil_tmp165 ;
  u16 __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  struct i2c_msg *__cil_tmp168 ;
  __u16 __cil_tmp169 ;
  unsigned int __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  struct i2c_msg *__cil_tmp172 ;
  unsigned long __cil_tmp173 ;
  unsigned long __cil_tmp174 ;
  __u16 __cil_tmp175 ;
  int __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  struct i2c_msg *__cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  struct i2c_msg *__cil_tmp180 ;
  unsigned long __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  __u16 __cil_tmp183 ;
  int __cil_tmp184 ;
  int __cil_tmp185 ;
  u8 __cil_tmp186 ;
  int __cil_tmp187 ;
  u16 __cil_tmp188 ;
  int __cil_tmp189 ;
  u16 __cil_tmp190 ;
  unsigned long __cil_tmp191 ;
  struct i2c_msg *__cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  unsigned long __cil_tmp194 ;
  __u16 __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  struct i2c_msg *__cil_tmp198 ;
  unsigned long __cil_tmp199 ;
  unsigned long __cil_tmp200 ;
  __u8 *__cil_tmp201 ;
  __u8 *__cil_tmp202 ;
  unsigned long __cil_tmp203 ;
  unsigned long __cil_tmp204 ;
  u8 *__cil_tmp205 ;
  unsigned long __cil_tmp206 ;
  struct i2c_msg *__cil_tmp207 ;
  unsigned long __cil_tmp208 ;
  unsigned long __cil_tmp209 ;
  __u8 *__cil_tmp210 ;
  __u8 __cil_tmp211 ;
  unsigned long __cil_tmp212 ;
  struct i2c_msg *__cil_tmp213 ;
  __u16 __cil_tmp214 ;
  unsigned int __cil_tmp215 ;
  unsigned int __cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  struct i2c_msg *__cil_tmp218 ;
  unsigned long __cil_tmp219 ;
  unsigned long __cil_tmp220 ;
  __u16 __cil_tmp221 ;
  int __cil_tmp222 ;
  unsigned long __cil_tmp223 ;
  struct i2c_msg *__cil_tmp224 ;
  unsigned long __cil_tmp225 ;
  unsigned long __cil_tmp226 ;
  __u16 __cil_tmp227 ;
  int __cil_tmp228 ;
  unsigned long __cil_tmp229 ;
  u8 *__cil_tmp230 ;
  unsigned long __cil_tmp231 ;
  unsigned long __cil_tmp232 ;
  unsigned long __cil_tmp233 ;
  struct i2c_msg *__cil_tmp234 ;
  unsigned long __cil_tmp235 ;
  unsigned long __cil_tmp236 ;
  __u8 *__cil_tmp237 ;
  __u8 *__cil_tmp238 ;
  int __cil_tmp239 ;
  u8 __cil_tmp240 ;
  int __cil_tmp241 ;
  u16 __cil_tmp242 ;
  int __cil_tmp243 ;
  u16 __cil_tmp244 ;
  unsigned long __cil_tmp245 ;
  unsigned long __cil_tmp246 ;
  struct mutex *__cil_tmp247 ;
  void const *__cil_tmp248 ;
  {
  {
  __cil_tmp16 = (struct i2c_adapter const *)adap;
  tmp = i2c_get_adapdata(__cil_tmp16);
  d = (struct dvb_usb_device *)tmp;
  i = 0;
  j = 0;
  len = 0;
  tmp___0 = kmalloc(256UL, 208U);
  data = (u8 *)tmp___0;
  }
  {
  __cil_tmp17 = (u8 *)0;
  __cil_tmp18 = (unsigned long )__cil_tmp17;
  __cil_tmp19 = (unsigned long )data;
  if (__cil_tmp19 == __cil_tmp18) {
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp20 = (unsigned long )d;
  __cil_tmp21 = __cil_tmp20 + 3744;
  __cil_tmp22 = (struct mutex *)__cil_tmp21;
  tmp___1 = mutex_lock_interruptible_nested(__cil_tmp22, 0U);
  }
  if (tmp___1 < 0) {
    {
    __cil_tmp23 = (void const *)data;
    kfree(__cil_tmp23);
    }
    return (-11);
  } else {
  }
  if (num > 2) {
    {
    printk("<4>az6027: more than 2 i2c messages at a time is not handled yet. TODO.\n");
    }
  } else {
  }
  i = 0;
  goto ldv_39229;
  ldv_39228: ;
  {
  __cil_tmp24 = (unsigned long )i;
  __cil_tmp25 = msg + __cil_tmp24;
  __cil_tmp26 = *((__u16 *)__cil_tmp25);
  __cil_tmp27 = (unsigned int )__cil_tmp26;
  if (__cil_tmp27 == 153U) {
    {
    req = (u8 )190U;
    index = (u16 )0U;
    __cil_tmp28 = (unsigned long )i;
    __cil_tmp29 = msg + __cil_tmp28;
    __cil_tmp30 = (unsigned long )__cil_tmp29;
    __cil_tmp31 = __cil_tmp30 + 8;
    __cil_tmp32 = *((__u8 **)__cil_tmp31);
    __cil_tmp33 = *__cil_tmp32;
    value = (u16 )__cil_tmp33;
    length = 1;
    __cil_tmp34 = (int )req;
    __cil_tmp35 = (u8 )__cil_tmp34;
    __cil_tmp36 = (int )value;
    __cil_tmp37 = (u16 )__cil_tmp36;
    __cil_tmp38 = (int )index;
    __cil_tmp39 = (u16 )__cil_tmp38;
    az6027_usb_out_op(d, __cil_tmp35, __cil_tmp37, __cil_tmp39, data, length);
    }
  } else {
  }
  }
  {
  __cil_tmp40 = (unsigned long )i;
  __cil_tmp41 = msg + __cil_tmp40;
  __cil_tmp42 = *((__u16 *)__cil_tmp41);
  __cil_tmp43 = (unsigned int )__cil_tmp42;
  if (__cil_tmp43 == 208U) {
    {
    __cil_tmp44 = i + 1;
    if (__cil_tmp44 < num) {
      {
      __cil_tmp45 = (unsigned long )i;
      __cil_tmp46 = __cil_tmp45 + 1UL;
      __cil_tmp47 = msg + __cil_tmp46;
      __cil_tmp48 = (unsigned long )__cil_tmp47;
      __cil_tmp49 = __cil_tmp48 + 2;
      __cil_tmp50 = *((__u16 *)__cil_tmp49);
      __cil_tmp51 = (int )__cil_tmp50;
      if (__cil_tmp51 & 1) {
        {
        req = (u8 )185U;
        __cil_tmp52 = (unsigned long )i;
        __cil_tmp53 = msg + __cil_tmp52;
        __cil_tmp54 = (unsigned long )__cil_tmp53;
        __cil_tmp55 = __cil_tmp54 + 8;
        __cil_tmp56 = *((__u8 **)__cil_tmp55);
        __cil_tmp57 = __cil_tmp56 + 1UL;
        __cil_tmp58 = *__cil_tmp57;
        __cil_tmp59 = (short )__cil_tmp58;
        __cil_tmp60 = (int )__cil_tmp59;
        __cil_tmp61 = (unsigned long )i;
        __cil_tmp62 = msg + __cil_tmp61;
        __cil_tmp63 = (unsigned long )__cil_tmp62;
        __cil_tmp64 = __cil_tmp63 + 8;
        __cil_tmp65 = *((__u8 **)__cil_tmp64);
        __cil_tmp66 = *__cil_tmp65;
        __cil_tmp67 = (int )__cil_tmp66;
        __cil_tmp68 = __cil_tmp67 << 8;
        __cil_tmp69 = (short )__cil_tmp68;
        __cil_tmp70 = (int )__cil_tmp69;
        __cil_tmp71 = __cil_tmp70 | __cil_tmp60;
        index = (u16 )__cil_tmp71;
        __cil_tmp72 = (unsigned long )i;
        __cil_tmp73 = msg + __cil_tmp72;
        __cil_tmp74 = (unsigned long )__cil_tmp73;
        __cil_tmp75 = __cil_tmp74 + 4;
        __cil_tmp76 = *((__u16 *)__cil_tmp75);
        __cil_tmp77 = (int )__cil_tmp76;
        __cil_tmp78 = __cil_tmp77 << 8U;
        __cil_tmp79 = (unsigned long )i;
        __cil_tmp80 = msg + __cil_tmp79;
        __cil_tmp81 = *((__u16 *)__cil_tmp80);
        __cil_tmp82 = (int )__cil_tmp81;
        __cil_tmp83 = __cil_tmp82 + __cil_tmp78;
        value = (u16 )__cil_tmp83;
        __cil_tmp84 = (unsigned long )i;
        __cil_tmp85 = __cil_tmp84 + 1UL;
        __cil_tmp86 = msg + __cil_tmp85;
        __cil_tmp87 = (unsigned long )__cil_tmp86;
        __cil_tmp88 = __cil_tmp87 + 4;
        __cil_tmp89 = *((__u16 *)__cil_tmp88);
        __cil_tmp90 = (int )__cil_tmp89;
        length = __cil_tmp90 + 6;
        __cil_tmp91 = (int )req;
        __cil_tmp92 = (u8 )__cil_tmp91;
        __cil_tmp93 = (int )value;
        __cil_tmp94 = (u16 )__cil_tmp93;
        __cil_tmp95 = (int )index;
        __cil_tmp96 = (u16 )__cil_tmp95;
        az6027_usb_in_op(d, __cil_tmp92, __cil_tmp94, __cil_tmp96, data, length);
        __cil_tmp97 = (unsigned long )i;
        __cil_tmp98 = __cil_tmp97 + 1UL;
        __cil_tmp99 = msg + __cil_tmp98;
        __cil_tmp100 = (unsigned long )__cil_tmp99;
        __cil_tmp101 = __cil_tmp100 + 4;
        __cil_tmp102 = *((__u16 *)__cil_tmp101);
        len = (int )__cil_tmp102;
        j = 0;
        }
        goto ldv_39217;
        ldv_39216:
        __cil_tmp103 = (unsigned long )j;
        __cil_tmp104 = (unsigned long )i;
        __cil_tmp105 = __cil_tmp104 + 1UL;
        __cil_tmp106 = msg + __cil_tmp105;
        __cil_tmp107 = (unsigned long )__cil_tmp106;
        __cil_tmp108 = __cil_tmp107 + 8;
        __cil_tmp109 = *((__u8 **)__cil_tmp108);
        __cil_tmp110 = __cil_tmp109 + __cil_tmp103;
        __cil_tmp111 = (unsigned long )j;
        __cil_tmp112 = __cil_tmp111 + 5UL;
        __cil_tmp113 = data + __cil_tmp112;
        *__cil_tmp110 = *__cil_tmp113;
        j = j + 1;
        ldv_39217: ;
        if (j < len) {
          goto ldv_39216;
        } else {
          goto ldv_39218;
        }
        ldv_39218:
        i = i + 1;
      } else {
        goto _L;
      }
      }
    } else {
      _L:
      req = (u8 )189U;
      __cil_tmp114 = (unsigned long )i;
      __cil_tmp115 = msg + __cil_tmp114;
      __cil_tmp116 = (unsigned long )__cil_tmp115;
      __cil_tmp117 = __cil_tmp116 + 8;
      __cil_tmp118 = *((__u8 **)__cil_tmp117);
      __cil_tmp119 = __cil_tmp118 + 1UL;
      __cil_tmp120 = *__cil_tmp119;
      __cil_tmp121 = (short )__cil_tmp120;
      __cil_tmp122 = (int )__cil_tmp121;
      __cil_tmp123 = (unsigned long )i;
      __cil_tmp124 = msg + __cil_tmp123;
      __cil_tmp125 = (unsigned long )__cil_tmp124;
      __cil_tmp126 = __cil_tmp125 + 8;
      __cil_tmp127 = *((__u8 **)__cil_tmp126);
      __cil_tmp128 = *__cil_tmp127;
      __cil_tmp129 = (int )__cil_tmp128;
      __cil_tmp130 = __cil_tmp129 << 8;
      __cil_tmp131 = (short )__cil_tmp130;
      __cil_tmp132 = (int )__cil_tmp131;
      __cil_tmp133 = __cil_tmp132 | __cil_tmp122;
      index = (u16 )__cil_tmp133;
      __cil_tmp134 = (unsigned long )i;
      __cil_tmp135 = msg + __cil_tmp134;
      __cil_tmp136 = *((__u16 *)__cil_tmp135);
      __cil_tmp137 = (unsigned int )__cil_tmp136;
      __cil_tmp138 = __cil_tmp137 + 512U;
      value = (u16 )__cil_tmp138;
      __cil_tmp139 = (unsigned long )i;
      __cil_tmp140 = msg + __cil_tmp139;
      __cil_tmp141 = (unsigned long )__cil_tmp140;
      __cil_tmp142 = __cil_tmp141 + 4;
      __cil_tmp143 = *((__u16 *)__cil_tmp142);
      __cil_tmp144 = (int )__cil_tmp143;
      length = __cil_tmp144 + -2;
      __cil_tmp145 = (unsigned long )i;
      __cil_tmp146 = msg + __cil_tmp145;
      __cil_tmp147 = (unsigned long )__cil_tmp146;
      __cil_tmp148 = __cil_tmp147 + 4;
      __cil_tmp149 = *((__u16 *)__cil_tmp148);
      __cil_tmp150 = (int )__cil_tmp149;
      len = __cil_tmp150 + -2;
      j = 0;
      goto ldv_39220;
      ldv_39219:
      __cil_tmp151 = (unsigned long )j;
      __cil_tmp152 = data + __cil_tmp151;
      __cil_tmp153 = (unsigned long )j;
      __cil_tmp154 = __cil_tmp153 + 2UL;
      __cil_tmp155 = (unsigned long )i;
      __cil_tmp156 = msg + __cil_tmp155;
      __cil_tmp157 = (unsigned long )__cil_tmp156;
      __cil_tmp158 = __cil_tmp157 + 8;
      __cil_tmp159 = *((__u8 **)__cil_tmp158);
      __cil_tmp160 = __cil_tmp159 + __cil_tmp154;
      *__cil_tmp152 = *__cil_tmp160;
      j = j + 1;
      ldv_39220: ;
      if (j < len) {
        goto ldv_39219;
      } else {
        goto ldv_39221;
      }
      ldv_39221:
      {
      __cil_tmp161 = (int )req;
      __cil_tmp162 = (u8 )__cil_tmp161;
      __cil_tmp163 = (int )value;
      __cil_tmp164 = (u16 )__cil_tmp163;
      __cil_tmp165 = (int )index;
      __cil_tmp166 = (u16 )__cil_tmp165;
      az6027_usb_out_op(d, __cil_tmp162, __cil_tmp164, __cil_tmp166, data, length);
      }
    }
    }
  } else {
  }
  }
  {
  __cil_tmp167 = (unsigned long )i;
  __cil_tmp168 = msg + __cil_tmp167;
  __cil_tmp169 = *((__u16 *)__cil_tmp168);
  __cil_tmp170 = (unsigned int )__cil_tmp169;
  if (__cil_tmp170 == 192U) {
    {
    __cil_tmp171 = (unsigned long )i;
    __cil_tmp172 = msg + __cil_tmp171;
    __cil_tmp173 = (unsigned long )__cil_tmp172;
    __cil_tmp174 = __cil_tmp173 + 2;
    __cil_tmp175 = *((__u16 *)__cil_tmp174);
    __cil_tmp176 = (int )__cil_tmp175;
    if (__cil_tmp176 & 1) {
      {
      req = (u8 )185U;
      index = (u16 )0U;
      __cil_tmp177 = (unsigned long )i;
      __cil_tmp178 = msg + __cil_tmp177;
      value = *((__u16 *)__cil_tmp178);
      __cil_tmp179 = (unsigned long )i;
      __cil_tmp180 = msg + __cil_tmp179;
      __cil_tmp181 = (unsigned long )__cil_tmp180;
      __cil_tmp182 = __cil_tmp181 + 4;
      __cil_tmp183 = *((__u16 *)__cil_tmp182);
      __cil_tmp184 = (int )__cil_tmp183;
      length = __cil_tmp184 + 6;
      __cil_tmp185 = (int )req;
      __cil_tmp186 = (u8 )__cil_tmp185;
      __cil_tmp187 = (int )value;
      __cil_tmp188 = (u16 )__cil_tmp187;
      __cil_tmp189 = (int )index;
      __cil_tmp190 = (u16 )__cil_tmp189;
      az6027_usb_in_op(d, __cil_tmp186, __cil_tmp188, __cil_tmp190, data, length);
      __cil_tmp191 = (unsigned long )i;
      __cil_tmp192 = msg + __cil_tmp191;
      __cil_tmp193 = (unsigned long )__cil_tmp192;
      __cil_tmp194 = __cil_tmp193 + 4;
      __cil_tmp195 = *((__u16 *)__cil_tmp194);
      len = (int )__cil_tmp195;
      j = 0;
      }
      goto ldv_39223;
      ldv_39222:
      __cil_tmp196 = (unsigned long )j;
      __cil_tmp197 = (unsigned long )i;
      __cil_tmp198 = msg + __cil_tmp197;
      __cil_tmp199 = (unsigned long )__cil_tmp198;
      __cil_tmp200 = __cil_tmp199 + 8;
      __cil_tmp201 = *((__u8 **)__cil_tmp200);
      __cil_tmp202 = __cil_tmp201 + __cil_tmp196;
      __cil_tmp203 = (unsigned long )j;
      __cil_tmp204 = __cil_tmp203 + 5UL;
      __cil_tmp205 = data + __cil_tmp204;
      *__cil_tmp202 = *__cil_tmp205;
      j = j + 1;
      ldv_39223: ;
      if (j < len) {
        goto ldv_39222;
      } else {
        goto ldv_39224;
      }
      ldv_39224: ;
    } else {
      req = (u8 )189U;
      __cil_tmp206 = (unsigned long )i;
      __cil_tmp207 = msg + __cil_tmp206;
      __cil_tmp208 = (unsigned long )__cil_tmp207;
      __cil_tmp209 = __cil_tmp208 + 8;
      __cil_tmp210 = *((__u8 **)__cil_tmp209);
      __cil_tmp211 = *__cil_tmp210;
      index = (u16 )__cil_tmp211;
      __cil_tmp212 = (unsigned long )i;
      __cil_tmp213 = msg + __cil_tmp212;
      __cil_tmp214 = *((__u16 *)__cil_tmp213);
      __cil_tmp215 = (unsigned int )__cil_tmp214;
      __cil_tmp216 = __cil_tmp215 + 256U;
      value = (u16 )__cil_tmp216;
      __cil_tmp217 = (unsigned long )i;
      __cil_tmp218 = msg + __cil_tmp217;
      __cil_tmp219 = (unsigned long )__cil_tmp218;
      __cil_tmp220 = __cil_tmp219 + 4;
      __cil_tmp221 = *((__u16 *)__cil_tmp220);
      __cil_tmp222 = (int )__cil_tmp221;
      length = __cil_tmp222 + -1;
      __cil_tmp223 = (unsigned long )i;
      __cil_tmp224 = msg + __cil_tmp223;
      __cil_tmp225 = (unsigned long )__cil_tmp224;
      __cil_tmp226 = __cil_tmp225 + 4;
      __cil_tmp227 = *((__u16 *)__cil_tmp226);
      __cil_tmp228 = (int )__cil_tmp227;
      len = __cil_tmp228 + -1;
      j = 0;
      goto ldv_39226;
      ldv_39225:
      __cil_tmp229 = (unsigned long )j;
      __cil_tmp230 = data + __cil_tmp229;
      __cil_tmp231 = (unsigned long )j;
      __cil_tmp232 = __cil_tmp231 + 1UL;
      __cil_tmp233 = (unsigned long )i;
      __cil_tmp234 = msg + __cil_tmp233;
      __cil_tmp235 = (unsigned long )__cil_tmp234;
      __cil_tmp236 = __cil_tmp235 + 8;
      __cil_tmp237 = *((__u8 **)__cil_tmp236);
      __cil_tmp238 = __cil_tmp237 + __cil_tmp232;
      *__cil_tmp230 = *__cil_tmp238;
      j = j + 1;
      ldv_39226: ;
      if (j < len) {
        goto ldv_39225;
      } else {
        goto ldv_39227;
      }
      ldv_39227:
      {
      __cil_tmp239 = (int )req;
      __cil_tmp240 = (u8 )__cil_tmp239;
      __cil_tmp241 = (int )value;
      __cil_tmp242 = (u16 )__cil_tmp241;
      __cil_tmp243 = (int )index;
      __cil_tmp244 = (u16 )__cil_tmp243;
      az6027_usb_out_op(d, __cil_tmp240, __cil_tmp242, __cil_tmp244, data, length);
      }
    }
    }
  } else {
  }
  }
  i = i + 1;
  ldv_39229: ;
  if (i < num) {
    goto ldv_39228;
  } else {
    goto ldv_39230;
  }
  ldv_39230:
  {
  __cil_tmp245 = (unsigned long )d;
  __cil_tmp246 = __cil_tmp245 + 3744;
  __cil_tmp247 = (struct mutex *)__cil_tmp246;
  mutex_unlock(__cil_tmp247);
  __cil_tmp248 = (void const *)data;
  kfree(__cil_tmp248);
  }
  return (i);
}
}
static u32 az6027_i2c_func(struct i2c_adapter *adapter )
{
  {
  return (1U);
}
}
static struct i2c_algorithm az6027_i2c_algo = {& az6027_i2c_xfer, (int (*)(struct i2c_adapter * , u16 , unsigned short , char ,
                                u8 , int , union i2c_smbus_data * ))0, & az6027_i2c_func};
int az6027_identify_state(struct usb_device *udev , struct dvb_usb_device_properties *props ,
                          struct dvb_usb_device_description **desc , int *cold )
{ u8 *b ;
  s16 ret ;
  void *tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  u8 *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  __u8 __cil_tmp14 ;
  __u8 __cil_tmp15 ;
  __u16 __cil_tmp16 ;
  __u16 __cil_tmp17 ;
  void *__cil_tmp18 ;
  __u16 __cil_tmp19 ;
  int __cil_tmp20 ;
  void const *__cil_tmp21 ;
  int *__cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  {
  {
  tmp = kmalloc(16UL, 208U);
  b = (u8 *)tmp;
  }
  {
  __cil_tmp10 = (u8 *)0;
  __cil_tmp11 = (unsigned long )__cil_tmp10;
  __cil_tmp12 = (unsigned long )b;
  if (__cil_tmp12 == __cil_tmp11) {
    return (-12);
  } else {
  }
  }
  {
  tmp___0 = __create_pipe(udev, 0U);
  __cil_tmp13 = tmp___0 | 2147483776U;
  __cil_tmp14 = (__u8 )183;
  __cil_tmp15 = (__u8 )192;
  __cil_tmp16 = (__u16 )6;
  __cil_tmp17 = (__u16 )0;
  __cil_tmp18 = (void *)b;
  __cil_tmp19 = (__u16 )6;
  tmp___1 = usb_control_msg(udev, __cil_tmp13, __cil_tmp14, __cil_tmp15, __cil_tmp16,
                            __cil_tmp17, __cil_tmp18, __cil_tmp19, 5000);
  ret = (s16 )tmp___1;
  __cil_tmp20 = (int )ret;
  *cold = __cil_tmp20 <= 0;
  __cil_tmp21 = (void const *)b;
  kfree(__cil_tmp21);
  }
  {
  __cil_tmp22 = & dvb_usb_az6027_debug;
  __cil_tmp23 = *__cil_tmp22;
  if (__cil_tmp23 & 1) {
    {
    __cil_tmp24 = *cold;
    printk("cold: %d\n", __cil_tmp24);
    }
  } else {
  }
  }
  return (0);
}
}
static struct usb_device_id az6027_usb_table[7U] = { {(__u16 )3U, (__u16 )5075U, (__u16 )12917U, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3U, (__u16 )3277U, (__u16 )4260U, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3U, (__u16 )3277U, (__u16 )4268U, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3U, (__u16 )5367U, (__u16 )1U, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3U, (__u16 )5367U, (__u16 )2U, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3U, (__u16 )4057U, (__u16 )42U, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 0UL}};
struct usb_device_id const __mod_usb_device_table ;
static struct dvb_usb_device_properties az6027_properties =
     {1, 3, (int (*)(struct usb_device * , struct firmware const * ))0, "dvb-usb-az6027-03.fw",
    1, 264, 1, {{0, (int (*)(struct dvb_frontend * , int ))0, (int (*)(struct dvb_frontend * ,
                                                                        unsigned int ,
                                                                        void * , unsigned int ))0,
                 1, {{0, 0, & az6027_streaming_ctrl, (int (*)(struct dvb_usb_adapter * ,
                                                              int ))0, (int (*)(struct dvb_usb_adapter * ,
                                                                                 int ,
                                                                                 u16 ,
                                                                                 int ))0,
                      & az6027_frontend_attach, (int (*)(struct dvb_usb_adapter * ))0,
                      {1, 10, 2, {{4096}}}, 0}, {0, 0, (int (*)(struct dvb_usb_adapter * ,
                                                                int ))0, (int (*)(struct dvb_usb_adapter * ,
                                                                                   int ))0,
                                                 (int (*)(struct dvb_usb_adapter * ,
                                                          int , u16 , int ))0,
                                                 (int (*)(struct dvb_usb_adapter * ))0,
                                                 (int (*)(struct dvb_usb_adapter * ))0,
                                                 {0, 0, 0, {.isoc = {0, 0, 0}}}, 0}}},
                {0, (int (*)(struct dvb_frontend * , int ))0, (int (*)(struct dvb_frontend * ,
                                                                        unsigned int ,
                                                                        void * , unsigned int ))0,
                 0, {{0, 0, (int (*)(struct dvb_usb_adapter * , int ))0, (int (*)(struct dvb_usb_adapter * ,
                                                                                   int ))0,
                      (int (*)(struct dvb_usb_adapter * , int , u16 , int ))0,
                      (int (*)(struct dvb_usb_adapter * ))0, (int (*)(struct dvb_usb_adapter * ))0,
                      {0, 0, 0, {.isoc = {0, 0, 0}}}, 0}, {0, 0, (int (*)(struct dvb_usb_adapter * ,
                                                                          int ))0,
                                                           (int (*)(struct dvb_usb_adapter * ,
                                                                    int ))0, (int (*)(struct dvb_usb_adapter * ,
                                                                                       int ,
                                                                                       u16 ,
                                                                                       int ))0,
                                                           (int (*)(struct dvb_usb_adapter * ))0,
                                                           (int (*)(struct dvb_usb_adapter * ))0,
                                                           {0, 0, 0, {.isoc = {0,
                                                                               0,
                                                                               0}}},
                                                           0}}}}, (int (*)(struct dvb_usb_device * ,
                                                                           int ))0,
    (int (*)(struct dvb_usb_device * , u8 * ))0, & az6027_identify_state, {0, {(struct rc_map_table *)(& rc_map_az6027_table),
                                                                               2,
                                                                               & az6027_rc_query,
                                                                               400},
                                                                           {(char *)0,
                                                                            0ULL,
                                                                            0ULL,
                                                                            0, (int (*)(struct rc_dev * ,
                                                                                        u64 ))0,
                                                                            (char *)0,
                                                                            (int (*)(struct dvb_usb_device * ))0,
                                                                            0, (_Bool)0}},
    & az6027_i2c_algo, 0, 0, 6, {{"AZUREWAVE DVB-S/S2 USB2.0 (AZ6027)", {(struct usb_device_id *)(& az6027_usb_table),
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0,
                                                                         (struct usb_device_id *)0},
                                  {(struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0}}, {"TERRATEC S7", {(struct usb_device_id *)(& az6027_usb_table) + 1UL,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0,
                                                                                 (struct usb_device_id *)0},
                                                                 {(struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0}},
                                 {"TERRATEC S7 MKII", {(struct usb_device_id *)(& az6027_usb_table) + 2UL,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0,
                                                       (struct usb_device_id *)0},
                                  {(struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0}}, {"Technisat SkyStar USB 2 HD CI",
                                                                 {(struct usb_device_id *)(& az6027_usb_table) + 3UL,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0},
                                                                 {(struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0}},
                                 {"Technisat SkyStar USB 2 HD CI", {(struct usb_device_id *)(& az6027_usb_table) + 4UL,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0,
                                                                    (struct usb_device_id *)0},
                                  {(struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0}}, {"Elgato EyeTV Sat",
                                                                 {(struct usb_device_id *)(& az6027_usb_table) + 5UL,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0},
                                                                 {(struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0}},
                                 {(char const *)0, {(struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0},
                                  {(struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0}}, {(char const *)0,
                                                                 {(struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0},
                                                                 {(struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0}},
                                 {(char const *)0, {(struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0},
                                  {(struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0}}, {(char const *)0,
                                                                 {(struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0},
                                                                 {(struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0}},
                                 {(char const *)0, {(struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0, (struct usb_device_id *)0,
                                                      (struct usb_device_id *)0},
                                  {(struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0, (struct usb_device_id *)0,
                                   (struct usb_device_id *)0}}, {(char const *)0,
                                                                 {(struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0},
                                                                 {(struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0,
                                                                  (struct usb_device_id *)0}}}};
extern void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct i2c_adapter *var_group1 ;
  struct usb_device *var_group2 ;
  struct dvb_usb_device_properties *var_group3 ;
  struct dvb_usb_device_description **var_az6027_identify_state_23_p2 ;
  int *var_az6027_identify_state_23_p3 ;
  struct dvb_usb_adapter *var_group4 ;
  int var_az6027_streaming_ctrl_2_p1 ;
  struct dvb_usb_device *var_group5 ;
  u32 *var_az6027_rc_query_3_p1 ;
  int *var_az6027_rc_query_3_p2 ;
  struct usb_interface *var_group6 ;
  struct usb_device_id const *var_az6027_usb_probe_21_p1 ;
  int res_az6027_usb_probe_21 ;
  int ldv_s_az6027_usb_driver_usb_driver ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_s_az6027_usb_driver_usb_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  }
  goto ldv_39306;
  ldv_39305:
  {
  tmp = __VERIFIER_nondet_int();
  }
  if (tmp == 0) {
    goto case_0;
  } else
  if (tmp == 1) {
    goto case_1;
  } else
  if (tmp == 2) {
    goto case_2;
  } else
  if (tmp == 3) {
    goto case_3;
  } else
  if (tmp == 4) {
    goto case_4;
  } else
  if (tmp == 5) {
    goto case_5;
  } else
  if (tmp == 6) {
    goto case_6;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      {
      az6027_i2c_func(var_group1);
      }
      goto ldv_39296;
      case_1:
      {
      az6027_identify_state(var_group2, var_group3, var_az6027_identify_state_23_p2,
                            var_az6027_identify_state_23_p3);
      }
      goto ldv_39296;
      case_2:
      {
      az6027_streaming_ctrl(var_group4, var_az6027_streaming_ctrl_2_p1);
      }
      goto ldv_39296;
      case_3:
      {
      az6027_frontend_attach(var_group4);
      }
      goto ldv_39296;
      case_4:
      {
      az6027_rc_query(var_group5, var_az6027_rc_query_3_p1, var_az6027_rc_query_3_p2);
      }
      goto ldv_39296;
      case_5: ;
      if (ldv_s_az6027_usb_driver_usb_driver == 0) {
        {
        res_az6027_usb_probe_21 = az6027_usb_probe(var_group6, var_az6027_usb_probe_21_p1);
        ldv_check_return_value(res_az6027_usb_probe_21);
        }
        if (res_az6027_usb_probe_21 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_az6027_usb_driver_usb_driver = ldv_s_az6027_usb_driver_usb_driver + 1;
      } else {
      }
      goto ldv_39296;
      case_6: ;
      if (ldv_s_az6027_usb_driver_usb_driver == 1) {
        {
        az6027_usb_disconnect(var_group6);
        ldv_s_az6027_usb_driver_usb_driver = 0;
        }
      } else {
      }
      goto ldv_39296;
      switch_default: ;
      goto ldv_39296;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_39296: ;
  ldv_39306:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 != 0) {
    goto ldv_39305;
  } else
  if (ldv_s_az6027_usb_driver_usb_driver != 0) {
    goto ldv_39305;
  } else {
    goto ldv_39307;
  }
  ldv_39307: ;
  ldv_module_exit: ;
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
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_12(size, flags);
  }
  return ((void *)0);
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
struct sk_buff *ldv_skb_clone_22(struct sk_buff *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{ struct sk_buff *tmp ;
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  tmp = skb_clone(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_24(struct sk_buff const *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{ struct sk_buff *tmp ;
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  tmp = skb_copy(ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_25(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t ldv_func_arg3 )
{ struct sk_buff *tmp ;
  {
  {
  ldv_check_alloc_flags(ldv_func_arg3);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_26(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t ldv_func_arg3 )
{ struct sk_buff *tmp ;
  {
  {
  ldv_check_alloc_flags(ldv_func_arg3);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return (tmp);
}
}
int ldv_pskb_expand_head_27(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t ldv_func_arg4 )
{ int tmp ;
  {
  {
  ldv_check_alloc_flags(ldv_func_arg4);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  }
  return (tmp);
}
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dvb_ca_en50221_init(struct dvb_adapter *arg0, struct dvb_ca_en50221 *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void dvb_ca_en50221_release(struct dvb_ca_en50221 *arg0) {
  return;
}
void dvb_usb_device_exit(struct usb_interface *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_usb_device_init(struct usb_interface *arg0, struct dvb_usb_device_properties *arg1, struct module *arg2, struct dvb_usb_device **arg3, short *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_transfer(struct i2c_adapter *arg0, struct i2c_msg *arg1, int arg2) {
  return __VERIFIER_nondet_int();
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
  return ldv_malloc(sizeof(struct page));
}
void msleep(unsigned int arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
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
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
struct sk_buff *skb_copy(const struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
struct dvb_frontend *stb0899_attach(struct stb0899_config *arg0, struct i2c_adapter *arg1) {
  return ldv_malloc(sizeof(struct dvb_frontend));
}
struct dvb_frontend *stb6100_attach(struct dvb_frontend *arg0, const struct stb6100_config *arg1, struct i2c_adapter *arg2) {
  return ldv_malloc(sizeof(struct dvb_frontend));
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
