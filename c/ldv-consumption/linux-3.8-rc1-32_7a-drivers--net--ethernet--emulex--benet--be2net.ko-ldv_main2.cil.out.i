extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u16 __sum16;
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
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;
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
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct device;
struct net_device;
struct completion;
struct pt_regs;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2043_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2043_8 ldv_2043 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2050_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2050_10 ldv_2050 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
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
struct __anonstruct_ldv_2103_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2118_13 {
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
union __anonunion_ldv_2119_11 {
   struct __anonstruct_ldv_2103_12 ldv_2103 ;
   struct __anonstruct_ldv_2118_13 ldv_2118 ;
};
struct desc_struct {
   union __anonunion_ldv_2119_11 ldv_2119 ;
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
union __anonunion_ldv_2775_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2775_18 ldv_2775 ;
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
struct __anonstruct_ldv_5181_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5187_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5188_22 {
   struct __anonstruct_ldv_5181_23 ldv_5181 ;
   struct __anonstruct_ldv_5187_24 ldv_5187 ;
};
union __anonunion_ldv_5197_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5188_22 ldv_5188 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5197_25 ldv_5197 ;
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
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
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
struct __anonstruct_ldv_6013_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6014_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6013_29 ldv_6013 ;
};
struct spinlock {
   union __anonunion_ldv_6014_28 ldv_6014 ;
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
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_35 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
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
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   bool early_init ;
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
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct pci_bus;
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct device_node;
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
struct __anonstruct_ldv_13290_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13292_128 {
   struct __anonstruct_ldv_13290_129 ldv_13290 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13292_128 ldv_13292 ;
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
   bool ignore_lockdep ;
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
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_14084_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_14084_134 ldv_14084 ;
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
struct acpi_dev_node {
   void *handle ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
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
union __anonunion_ldv_15834_138 {
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
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char is_pcie : 1 ;
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
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct kset *msi_kset ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_15834_138 ldv_15834 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
};
struct pci_ops;
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
struct msix_entry {
   u32 vector ;
   u16 entry ;
};
struct inode;
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
struct return_instance;
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct return_instance *return_instances ;
   unsigned int depth ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   unsigned long vaddr ;
};
struct xol_area {
   wait_queue_head_t wq ;
   atomic_t slot_count ;
   unsigned long *bitmap ;
   struct page *page ;
   unsigned long vaddr ;
};
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion_ldv_16901_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_16911_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_16913_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_16911_144 ldv_16911 ;
   int units ;
};
struct __anonstruct_ldv_16915_142 {
   union __anonunion_ldv_16913_143 ldv_16913 ;
   atomic_t _count ;
};
union __anonunion_ldv_16916_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_16915_142 ldv_16915 ;
};
struct __anonstruct_ldv_16917_139 {
   union __anonunion_ldv_16901_140 ldv_16901 ;
   union __anonunion_ldv_16916_141 ldv_16916 ;
};
struct __anonstruct_ldv_16924_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_16928_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_16924_146 ldv_16924 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_16933_147 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_16917_139 ldv_16917 ;
   union __anonunion_ldv_16928_145 ldv_16928 ;
   union __anonunion_ldv_16933_147 ldv_16933 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
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
   union __anonunion_shared_148 shared ;
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
   unsigned long highest_vm_end ;
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
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_next_reset ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   int first_nid ;
   struct uprobes_state uprobes_state ;
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
struct file_ra_state;
struct user_struct;
struct writeback_control;
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
struct __anonstruct_ldv_19908_151 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_19909_150 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_19908_151 ldv_19908 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_19909_150 ldv_19909 ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
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
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
enum ldv_18407 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_18407 socket_state;
struct poll_table_struct;
struct pipe_inode_info;
struct net;
struct fasync_struct;
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
struct kiocb;
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
   void (*set_peek_off)(struct sock * , int ) ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
struct sk_buff;
typedef s32 dma_cookie_t;
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
typedef u64 netdev_features_t;
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
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_154 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_154 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
   ktime_t syststamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct_ldv_22908_156 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_22909_155 {
   __wsum csum ;
   struct __anonstruct_ldv_22908_156 ldv_22908 ;
};
union __anonunion_ldv_22949_157 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
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
   union __anonunion_ldv_22909_155 ldv_22909 ;
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
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_rxhash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_22949_157 ldv_22949 ;
   sk_buff_data_t inner_transport_header ;
   sk_buff_data_t inner_network_header ;
   sk_buff_data_t inner_mac_header ;
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
struct rtable;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
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
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_158 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_158 data ;
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
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
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
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sync_serial_settings_159 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_159 sync_serial_settings;
struct __anonstruct_te1_settings_160 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_160 te1_settings;
struct __anonstruct_raw_hdlc_proto_161 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_161 raw_hdlc_proto;
struct __anonstruct_fr_proto_162 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_162 fr_proto;
struct __anonstruct_fr_proto_pvc_163 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_163 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_164 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_164 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_165 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_165 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_166 {
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
   union __anonunion_ifs_ifsu_166 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_167 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_168 {
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
   union __anonunion_ifr_ifrn_167 ifr_ifrn ;
   union __anonunion_ifr_ifru_168 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_24608_171 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_24610_170 {
   struct __anonstruct_ldv_24608_171 ldv_24608 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_24610_170 ldv_24610 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_172 {
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
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_172 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
struct export_operations;
struct kstatfs;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
typedef projid_t kprojid_t;
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
union __anonunion_ldv_25616_174 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_25616_174 ldv_25616 ;
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
union __anonunion_arg_176 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_175 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_176 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_175 read_descriptor_t;
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
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct backing_dev_info;
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
union __anonunion_ldv_26050_177 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_26070_178 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_26086_179 {
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
   union __anonunion_ldv_26050_177 ldv_26050 ;
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
   union __anonunion_ldv_26070_178 ldv_26070 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_26086_179 ldv_26086 ;
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
union __anonunion_f_u_180 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_180 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
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
struct __anonstruct_afs_182 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_181 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_182 afs ;
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
   union __anonunion_fl_u_181 fl_u ;
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
struct file_system_type;
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
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
typedef unsigned long cputime_t;
struct __anonstruct_sigset_t_183 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_183 sigset_t;
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
struct __anonstruct__kill_185 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_186 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_187 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_188 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_189 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_190 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_191 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_184 {
   int _pad[28U] ;
   struct __anonstruct__kill_185 _kill ;
   struct __anonstruct__timer_186 _timer ;
   struct __anonstruct__rt_187 _rt ;
   struct __anonstruct__sigchld_188 _sigchld ;
   struct __anonstruct__sigfault_189 _sigfault ;
   struct __anonstruct__sigpoll_190 _sigpoll ;
   struct __anonstruct__sigsys_191 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_184 _sifields ;
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
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_28661_194 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_28670_195 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_196 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_197 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_28661_194 ldv_28661 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_28670_195 ldv_28670 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_196 type_data ;
   union __anonunion_payload_197 payload ;
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
struct llist_node;
struct llist_node {
   struct llist_node *next ;
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
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
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
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct sched_class;
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
   struct task_group *sched_task_group ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   int nr_cpus_allowed ;
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
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
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
   int numa_scan_seq ;
   int numa_migrate_seq ;
   unsigned int numa_scan_period ;
   u64 node_stamp ;
   struct callback_head numa_work ;
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
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   atomic_t ptrace_bp_refcnt ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
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
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
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
   u64 mibs[32U] ;
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
struct icmpv6_mib_device {
   atomic_long_t mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6msg_mib_device {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[95U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[28U] ;
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
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
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
   int sysctl_tcp_ecn ;
   kgid_t sysctl_ping_group_range[2U] ;
   long sysctl_tcp_mem[3U] ;
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
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
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
union __anonunion_in6_u_215 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_215 in6_u ;
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
   struct hlist_nulls_head tmpl ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   int sysctl_events ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_acct ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int sysctl_log_invalid ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
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
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
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
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t rt_genid ;
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
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct cgroupfs_root;
struct cgroup_subsys;
struct cgroup;
struct css_id;
struct eventfd_ctx;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   atomic_t refcnt ;
   unsigned long flags ;
   struct css_id *id ;
   struct work_struct dput_work ;
};
struct cgroup_name {
   struct callback_head callback_head ;
   char name[] ;
};
struct cgroup {
   unsigned long flags ;
   atomic_t count ;
   int id ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   struct cgroup_name *name ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct list_head css_sets ;
   struct list_head allcg_node ;
   struct list_head cft_q_node ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct callback_head callback_head ;
   struct work_struct free_work ;
   struct list_head event_list ;
   spinlock_t event_list_lock ;
   struct simple_xattrs xattrs ;
};
struct cgroupfs_root {
   struct super_block *sb ;
   unsigned long subsys_mask ;
   int hierarchy_id ;
   unsigned long actual_subsys_mask ;
   struct list_head subsys_list ;
   struct cgroup top_cgroup ;
   int number_of_cgroups ;
   struct list_head root_list ;
   struct list_head allcg_list ;
   unsigned long flags ;
   struct ida cgroup_ida ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cg_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct cgroup_map_cb {
   int (*fill)(struct cgroup_map_cb * , char const * , u64 ) ;
   void *state ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   int (*open)(struct inode * , struct file * ) ;
   ssize_t (*read)(struct cgroup * , struct cftype * , struct file * , char * , size_t ,
                   loff_t * ) ;
   u64 (*read_u64)(struct cgroup * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup * , struct cftype * ) ;
   int (*read_map)(struct cgroup * , struct cftype * , struct cgroup_map_cb * ) ;
   int (*read_seq_string)(struct cgroup * , struct cftype * , struct seq_file * ) ;
   ssize_t (*write)(struct cgroup * , struct cftype * , struct file * , char const * ,
                    size_t , loff_t * ) ;
   int (*write_u64)(struct cgroup * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup * , struct cftype * , s64 ) ;
   int (*write_string)(struct cgroup * , struct cftype * , char const * ) ;
   int (*trigger)(struct cgroup * , unsigned int ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*register_event)(struct cgroup * , struct cftype * , struct eventfd_ctx * ,
                         char const * ) ;
   void (*unregister_event)(struct cgroup * , struct cftype * , struct eventfd_ctx * ) ;
};
struct cftype_set {
   struct list_head node ;
   struct cftype *cfts ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup * ) ;
   int (*css_online)(struct cgroup * ) ;
   void (*css_offline)(struct cgroup * ) ;
   void (*css_free)(struct cgroup * ) ;
   int (*can_attach)(struct cgroup * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup * , struct cgroup * , struct task_struct * ) ;
   void (*bind)(struct cgroup * ) ;
   int subsys_id ;
   int disabled ;
   int early_init ;
   bool use_id ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   char const *name ;
   struct cgroupfs_root *root ;
   struct list_head sibling ;
   struct idr idr ;
   spinlock_t id_lock ;
   struct list_head cftsets ;
   struct cftype *base_cftypes ;
   struct cftype_set base_cftset ;
   struct module *module ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns ;
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
   u16 family ;
   u16 min_dump_alloc ;
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
   __u32 tx_rate ;
   __u32 spoofchk ;
};
struct netpoll_info;
struct phy_device;
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
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   bool global_use ;
   int sync_cnt ;
   int refcount ;
   int synced ;
   struct callback_head callback_head ;
};
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
   struct list_head dev_list ;
};
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
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
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
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
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
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
struct pcpu_vstats;
union __anonunion_ldv_38702_226 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_tstats *tstats ;
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
   unsigned int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head upper_dev_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
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
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
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
   union __anonunion_ldv_38702_226 ldv_38702 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
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
struct res_counter {
   unsigned long long usage ;
   unsigned long long max_usage ;
   unsigned long long limit ;
   unsigned long long soft_limit ;
   unsigned long long failcnt ;
   spinlock_t lock ;
   struct res_counter *parent ;
};
struct kioctx;
typedef int kiocb_cancel_fn(struct kiocb * , struct io_event * );
union __anonunion_ki_obj_227 {
   void *user ;
   struct task_struct *tsk ;
};
struct kiocb {
   atomic_t ki_users ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_227 ki_obj ;
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
   struct eventfd_ctx *ki_eventfd ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   struct callback_head rcu ;
   struct sock_filter insns[0U] ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct nla_policy {
   u16 type ;
   u16 len ;
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
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int base_reachable_time ;
   int retrans_time ;
   int gc_staletime ;
   int reachable_time ;
   int delay_probe_time ;
   int queue_len_bytes ;
   int ucast_probes ;
   int app_probes ;
   int mcast_probes ;
   int anycast_delay ;
   int proxy_delay ;
   int proxy_qlen ;
   int locktime ;
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
   struct neigh_table *next ;
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
union __anonunion_ldv_41928_232 {
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
   int (*output)(struct sk_buff * ) ;
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
   union __anonunion_ldv_41928_232 ldv_41928 ;
};
struct __anonstruct_socket_lock_t_233 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_233 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct_ldv_42147_235 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion_ldv_42148_234 {
   __addrpair skc_addrpair ;
   struct __anonstruct_ldv_42147_235 ldv_42147 ;
};
union __anonunion_ldv_42152_236 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct_ldv_42158_238 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion_ldv_42159_237 {
   __portpair skc_portpair ;
   struct __anonstruct_ldv_42158_238 ldv_42158 ;
};
union __anonunion_ldv_42168_239 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion_ldv_42175_240 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion_ldv_42148_234 ldv_42148 ;
   union __anonunion_ldv_42152_236 ldv_42152 ;
   union __anonunion_ldv_42159_237 ldv_42159 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion_ldv_42168_239 ldv_42168 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion_ldv_42175_240 ldv_42175 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_241 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_241 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct sk_buff_head sk_async_wait_queue ;
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
   unsigned char sk_no_check : 2 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
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
   void (*sk_data_ready)(struct sock * , int ) ;
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
union __anonunion_h_242 {
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
   void (*mtu_reduced)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
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
   union __anonunion_h_242 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   void (*enter_memory_pressure)(struct sock * ) ;
   struct res_counter *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct __una_u32 {
   u32 x ;
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct request_sock *dl_next ;
   u16 mss ;
   u8 num_retrans ;
   unsigned char cookie_ts : 1 ;
   unsigned char num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   unsigned long expires ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 secid ;
   u32 peer_secid ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct iphdr {
   unsigned char ihl : 4 ;
   unsigned char version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct ipv6_opt_hdr {
   __u8 nexthdr ;
   __u8 hdrlen ;
};
struct ipv6hdr {
   unsigned char priority : 4 ;
   unsigned char version : 4 ;
   __u8 flow_lbl[3U] ;
   __be16 payload_len ;
   __u8 nexthdr ;
   __u8 hop_limit ;
   struct in6_addr saddr ;
   struct in6_addr daddr ;
};
struct ipv6_devconf {
   __s32 forwarding ;
   __s32 hop_limit ;
   __s32 mtu6 ;
   __s32 accept_ra ;
   __s32 accept_redirects ;
   __s32 autoconf ;
   __s32 dad_transmits ;
   __s32 rtr_solicits ;
   __s32 rtr_solicit_interval ;
   __s32 rtr_solicit_delay ;
   __s32 force_mld_version ;
   __s32 use_tempaddr ;
   __s32 temp_valid_lft ;
   __s32 temp_prefered_lft ;
   __s32 regen_max_retry ;
   __s32 max_desync_factor ;
   __s32 max_addresses ;
   __s32 accept_ra_defrtr ;
   __s32 accept_ra_pinfo ;
   __s32 accept_ra_rtr_pref ;
   __s32 rtr_probe_interval ;
   __s32 accept_ra_rt_info_max_plen ;
   __s32 proxy_ndp ;
   __s32 accept_source_route ;
   __s32 optimistic_dad ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   __s32 ndisc_notify ;
   void *sysctl ;
};
struct ip6_sf_list {
   struct ip6_sf_list *sf_next ;
   struct in6_addr sf_addr ;
   unsigned long sf_count[2U] ;
   unsigned char sf_gsresp ;
   unsigned char sf_oldin ;
   unsigned char sf_crcount ;
};
struct ifmcaddr6 {
   struct in6_addr mca_addr ;
   struct inet6_dev *idev ;
   struct ifmcaddr6 *next ;
   struct ip6_sf_list *mca_sources ;
   struct ip6_sf_list *mca_tomb ;
   unsigned int mca_sfmode ;
   unsigned char mca_crcount ;
   unsigned long mca_sfcount[2U] ;
   struct timer_list mca_timer ;
   unsigned int mca_flags ;
   int mca_users ;
   atomic_t mca_refcnt ;
   spinlock_t mca_lock ;
   unsigned long mca_cstamp ;
   unsigned long mca_tstamp ;
};
struct ifacaddr6 {
   struct in6_addr aca_addr ;
   struct inet6_dev *aca_idev ;
   struct rt6_info *aca_rt ;
   struct ifacaddr6 *aca_next ;
   int aca_users ;
   atomic_t aca_refcnt ;
   spinlock_t aca_lock ;
   unsigned long aca_cstamp ;
   unsigned long aca_tstamp ;
};
struct ipv6_devstat {
   struct proc_dir_entry *proc_dir_entry ;
   struct ipstats_mib *ipv6[1U] ;
   struct icmpv6_mib_device *icmpv6dev ;
   struct icmpv6msg_mib_device *icmpv6msgdev ;
};
struct inet6_dev {
   struct net_device *dev ;
   struct list_head addr_list ;
   struct ifmcaddr6 *mc_list ;
   struct ifmcaddr6 *mc_tomb ;
   spinlock_t mc_lock ;
   unsigned char mc_qrv ;
   unsigned char mc_gq_running ;
   unsigned char mc_ifc_count ;
   unsigned long mc_v1_seen ;
   unsigned long mc_maxdelay ;
   struct timer_list mc_gq_timer ;
   struct timer_list mc_ifc_timer ;
   struct ifacaddr6 *ac_list ;
   rwlock_t lock ;
   atomic_t refcnt ;
   __u32 if_flags ;
   int dead ;
   u8 rndid[8U] ;
   struct timer_list regen_timer ;
   struct list_head tempaddr_list ;
   struct in6_addr token ;
   struct neigh_parms *nd_parms ;
   struct inet6_dev *next ;
   struct ipv6_devconf cnf ;
   struct ipv6_devstat stats ;
   unsigned long tstamp ;
   struct callback_head rcu ;
};
union __anonunion_ldv_46762_256 {
   __be32 a4 ;
   __be32 a6[4U] ;
};
struct inetpeer_addr_base {
   union __anonunion_ldv_46762_256 ldv_46762 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion_ldv_46777_257 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct_ldv_46782_259 {
   atomic_t rid ;
   atomic_t ip_id_count ;
};
union __anonunion_ldv_46785_258 {
   struct __anonstruct_ldv_46782_259 ldv_46782 ;
   struct callback_head rcu ;
   struct inet_peer *gc_next ;
};
struct inet_peer {
   struct inet_peer *avl_left ;
   struct inet_peer *avl_right ;
   struct inetpeer_addr daddr ;
   __u32 avl_height ;
   u32 metrics[14U] ;
   u32 rate_tokens ;
   unsigned long rate_last ;
   union __anonunion_ldv_46777_257 ldv_46777 ;
   union __anonunion_ldv_46785_258 ldv_46785 ;
   __u32 dtime ;
   atomic_t refcnt ;
};
struct inet_peer_base {
   struct inet_peer *root ;
   seqlock_t lock ;
   u32 flush_seq ;
   int total ;
};
struct rtable {
   struct dst_entry dst ;
   int rt_genid ;
   unsigned int rt_flags ;
   __u16 rt_type ;
   __u8 rt_is_input ;
   __u8 rt_uses_gateway ;
   int rt_iif ;
   __be32 rt_gateway ;
   u32 rt_pmtu ;
   struct list_head rt_uncached ;
};
struct inet_ehash_bucket {
   struct hlist_nulls_head chain ;
   struct hlist_nulls_head twchain ;
};
struct inet_bind_hashbucket {
   spinlock_t lock ;
   struct hlist_head chain ;
};
struct inet_listen_hashbucket {
   spinlock_t lock ;
   struct hlist_nulls_head head ;
};
struct inet_hashinfo {
   struct inet_ehash_bucket *ehash ;
   spinlock_t *ehash_locks ;
   unsigned int ehash_mask ;
   unsigned int ehash_locks_mask ;
   struct inet_bind_hashbucket *bhash ;
   unsigned int bhash_size ;
   struct kmem_cache *bind_bucket_cachep ;
   struct inet_listen_hashbucket listening_hash[32U] ;
   atomic_t bsockets ;
};
struct vlan_ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_vlan_proto ;
   __be16 h_vlan_TCI ;
   __be16 h_vlan_encapsulated_proto ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct be_eq_entry {
   u32 evt ;
};
struct be_eth_wrb {
   u32 frag_pa_hi ;
   u32 frag_pa_lo ;
   u32 rsvd0 ;
   u32 frag_len ;
};
struct be_eth_hdr_wrb {
   u32 dw[4U] ;
};
struct be_eth_tx_compl {
   u32 dw[4U] ;
};
struct be_eth_rx_d {
   u32 fragpa_hi ;
   u32 fragpa_lo ;
};
struct be_eth_rx_compl {
   u32 dw[4U] ;
};
struct flash_comp {
   unsigned long offset ;
   int optype ;
   int size ;
   int img_type ;
};
struct image_hdr {
   u32 imageid ;
   u32 imageoffset ;
   u32 imagelength ;
   u32 image_checksum ;
   u8 image_version[32U] ;
};
struct flash_file_hdr_g3 {
   u8 sign[52U] ;
   u8 ufi_version[4U] ;
   u32 file_len ;
   u32 cksum ;
   u32 antidote ;
   u32 num_imgs ;
   u8 build[24U] ;
   u8 asic_type_rev ;
   u8 rsvd[31U] ;
};
struct flash_section_hdr {
   u32 format_rev ;
   u32 cksum ;
   u32 antidote ;
   u32 num_images ;
   u8 id_string[128U] ;
   u32 rsvd[4U] ;
};
struct flash_section_hdr_g2 {
   u32 format_rev ;
   u32 cksum ;
   u32 antidote ;
   u32 build_num ;
   u8 id_string[128U] ;
   u32 rsvd[8U] ;
};
struct flash_section_entry {
   u32 type ;
   u32 offset ;
   u32 pad_size ;
   u32 image_size ;
   u32 cksum ;
   u32 entry_point ;
   u32 rsvd0 ;
   u32 rsvd1 ;
   u8 ver_data[32U] ;
};
struct flash_section_info {
   u8 cookie[32U] ;
   struct flash_section_hdr fsec_hdr ;
   struct flash_section_entry fsec_entry[32U] ;
};
struct flash_section_info_g2 {
   u8 cookie[32U] ;
   struct flash_section_hdr_g2 fsec_hdr ;
   struct flash_section_entry fsec_entry[32U] ;
};
struct ocrdma_dev;
struct be_dma_mem {
   void *va ;
   dma_addr_t dma ;
   u32 size ;
};
struct be_queue_info {
   struct be_dma_mem dma_mem ;
   u16 len ;
   u16 entry_size ;
   u16 id ;
   u16 tail ;
   u16 head ;
   bool created ;
   atomic_t used ;
};
struct be_adapter;
struct be_eq_obj {
   struct be_queue_info q ;
   char desc[32U] ;
   bool enable_aic ;
   u32 min_eqd ;
   u32 max_eqd ;
   u32 eqd ;
   u32 cur_eqd ;
   u8 idx ;
   u16 tx_budget ;
   u16 spurious_intr ;
   struct napi_struct napi ;
   struct be_adapter *adapter ;
};
struct be_mcc_obj {
   struct be_queue_info q ;
   struct be_queue_info cq ;
   bool rearm_cq ;
};
struct be_tx_stats {
   u64 tx_bytes ;
   u64 tx_pkts ;
   u64 tx_reqs ;
   u64 tx_wrbs ;
   u64 tx_compl ;
   ulong tx_jiffies ;
   u32 tx_stops ;
   struct u64_stats_sync sync ;
   struct u64_stats_sync sync_compl ;
};
struct be_tx_obj {
   u32 db_offset ;
   struct be_queue_info q ;
   struct be_queue_info cq ;
   struct sk_buff *sent_skb_list[2048U] ;
   struct be_tx_stats stats ;
};
struct be_rx_page_info {
   struct page *page ;
   dma_addr_t bus ;
   u16 page_offset ;
   bool last_page_user ;
};
struct be_rx_stats {
   u64 rx_bytes ;
   u64 rx_pkts ;
   u64 rx_pkts_prev ;
   ulong rx_jiffies ;
   u32 rx_drops_no_skbs ;
   u32 rx_drops_no_frags ;
   u32 rx_post_fail ;
   u32 rx_compl ;
   u32 rx_mcast_pkts ;
   u32 rx_compl_err ;
   u32 rx_pps ;
   struct u64_stats_sync sync ;
};
struct be_rx_compl_info {
   u32 rss_hash ;
   u16 vlan_tag ;
   u16 pkt_size ;
   u16 rxq_idx ;
   u16 port ;
   u8 vlanf ;
   u8 num_rcvd ;
   u8 err ;
   u8 ipf ;
   u8 tcpf ;
   u8 udpf ;
   u8 ip_csum ;
   u8 l4_csum ;
   u8 ipv6 ;
   u8 vtm ;
   u8 pkt_type ;
};
struct be_rx_obj {
   struct be_adapter *adapter ;
   struct be_queue_info q ;
   struct be_queue_info cq ;
   struct be_rx_compl_info rxcp ;
   struct be_rx_page_info page_info_tbl[1024U] ;
   struct be_rx_stats stats ;
   u8 rss_id ;
   bool rx_post_starved ;
};
struct be_drv_stats {
   u32 be_on_die_temperature ;
   u32 eth_red_drops ;
   u32 rx_drops_no_pbuf ;
   u32 rx_drops_no_txpb ;
   u32 rx_drops_no_erx_descr ;
   u32 rx_drops_no_tpre_descr ;
   u32 rx_drops_too_many_frags ;
   u32 forwarded_packets ;
   u32 rx_drops_mtu ;
   u32 rx_crc_errors ;
   u32 rx_alignment_symbol_errors ;
   u32 rx_pause_frames ;
   u32 rx_priority_pause_frames ;
   u32 rx_control_frames ;
   u32 rx_in_range_errors ;
   u32 rx_out_range_errors ;
   u32 rx_frame_too_long ;
   u32 rx_address_filtered ;
   u32 rx_dropped_too_small ;
   u32 rx_dropped_too_short ;
   u32 rx_dropped_header_too_small ;
   u32 rx_dropped_tcp_length ;
   u32 rx_dropped_runt ;
   u32 rx_ip_checksum_errs ;
   u32 rx_tcp_checksum_errs ;
   u32 rx_udp_checksum_errs ;
   u32 tx_pauseframes ;
   u32 tx_priority_pauseframes ;
   u32 tx_controlframes ;
   u32 rxpp_fifo_overflow_drop ;
   u32 rx_input_fifo_overflow_drop ;
   u32 pmem_fifo_overflow_drop ;
   u32 jabber_events ;
};
struct be_vf_cfg {
   unsigned char mac_addr[6U] ;
   int if_handle ;
   int pmac_id ;
   u16 def_vid ;
   u16 vlan_tag ;
   u32 tx_rate ;
};
struct phy_info {
   u8 transceiver ;
   u8 autoneg ;
   u8 fc_autoneg ;
   u8 port_type ;
   u16 phy_type ;
   u16 interface_type ;
   u32 misc_params ;
   u16 auto_speeds_supported ;
   u16 fixed_speeds_supported ;
   int link_speed ;
   u32 dac_cable_len ;
   u32 advertising ;
   u32 supported ;
};
struct __anonstruct_roce_db_264 {
   u32 size ;
   u32 total_size ;
   u64 io_addr ;
};
struct be_adapter {
   struct pci_dev *pdev ;
   struct net_device *netdev ;
   u8 *csr ;
   u8 *db ;
   struct mutex mbox_lock ;
   struct be_dma_mem mbox_mem ;
   struct be_dma_mem mbox_mem_alloced ;
   struct be_mcc_obj mcc_obj ;
   spinlock_t mcc_lock ;
   spinlock_t mcc_cq_lock ;
   u32 num_msix_vec ;
   u32 num_evt_qs ;
   struct be_eq_obj eq_obj[13U] ;
   struct msix_entry msix_entries[13U] ;
   bool isr_registered ;
   u32 num_tx_qs ;
   struct be_tx_obj tx_obj[8U] ;
   u32 num_rx_qs ;
   struct be_rx_obj rx_obj[9U] ;
   u32 big_page_size ;
   struct be_drv_stats drv_stats ;
   u16 vlans_added ;
   u8 vlan_tag[4096U] ;
   u8 vlan_prio_bmap ;
   u16 recommended_prio ;
   struct be_dma_mem rx_filter ;
   struct be_dma_mem stats_cmd ;
   struct delayed_work work ;
   u16 work_counter ;
   struct delayed_work func_recovery_work ;
   u32 flags ;
   u32 cmd_privileges ;
   char fw_ver[32U] ;
   int if_handle ;
   u32 *pmac_id ;
   u32 beacon_state ;
   bool eeh_error ;
   bool fw_timeout ;
   bool hw_error ;
   u32 port_num ;
   bool promiscuous ;
   u32 function_mode ;
   u32 function_caps ;
   u32 rx_fc ;
   u32 tx_fc ;
   bool stats_cmd_sent ;
   u32 if_type ;
   struct __anonstruct_roce_db_264 roce_db ;
   u32 num_msix_roce_vec ;
   struct ocrdma_dev *ocrdma_dev ;
   struct list_head entry ;
   u32 flash_status ;
   struct completion flash_compl ;
   u32 num_vfs ;
   u32 dev_num_vfs ;
   u8 virtfn ;
   struct be_vf_cfg *vf_cfg ;
   bool be3_native ;
   u32 sli_family ;
   u8 hba_port_num ;
   u16 pvid ;
   struct phy_info phy ;
   u8 wol_cap ;
   bool wol ;
   u32 uc_macs ;
   u16 asic_rev ;
   u16 qnq_vid ;
   u32 msg_enable ;
   int be_get_temp_freq ;
   u16 max_mcast_mac ;
   u16 max_tx_queues ;
   u16 max_rss_queues ;
   u16 max_rx_queues ;
   u16 max_pmac_cnt ;
   u16 max_vlans ;
   u16 max_event_queues ;
   u32 if_cap_flags ;
   u8 pf_number ;
   u64 rss_flags ;
};
struct be_cmd_req_hdr {
   u8 opcode ;
   u8 subsystem ;
   u8 port_number ;
   u8 domain ;
   u32 timeout ;
   u32 request_length ;
   u8 version ;
   u8 rsvd[3U] ;
};
struct be_cmd_resp_hdr {
   u8 opcode ;
   u8 subsystem ;
   u8 rsvd[2U] ;
   u8 status ;
   u8 add_status ;
   u8 rsvd1[2U] ;
   u32 response_length ;
   u32 actual_resp_len ;
};
struct be_port_rxf_stats_v0 {
   u32 rx_bytes_lsd ;
   u32 rx_bytes_msd ;
   u32 rx_total_frames ;
   u32 rx_unicast_frames ;
   u32 rx_multicast_frames ;
   u32 rx_broadcast_frames ;
   u32 rx_crc_errors ;
   u32 rx_alignment_symbol_errors ;
   u32 rx_pause_frames ;
   u32 rx_control_frames ;
   u32 rx_in_range_errors ;
   u32 rx_out_range_errors ;
   u32 rx_frame_too_long ;
   u32 rx_address_filtered ;
   u32 rx_vlan_filtered ;
   u32 rx_dropped_too_small ;
   u32 rx_dropped_too_short ;
   u32 rx_dropped_header_too_small ;
   u32 rx_dropped_tcp_length ;
   u32 rx_dropped_runt ;
   u32 rx_64_byte_packets ;
   u32 rx_65_127_byte_packets ;
   u32 rx_128_256_byte_packets ;
   u32 rx_256_511_byte_packets ;
   u32 rx_512_1023_byte_packets ;
   u32 rx_1024_1518_byte_packets ;
   u32 rx_1519_2047_byte_packets ;
   u32 rx_2048_4095_byte_packets ;
   u32 rx_4096_8191_byte_packets ;
   u32 rx_8192_9216_byte_packets ;
   u32 rx_ip_checksum_errs ;
   u32 rx_tcp_checksum_errs ;
   u32 rx_udp_checksum_errs ;
   u32 rx_non_rss_packets ;
   u32 rx_ipv4_packets ;
   u32 rx_ipv6_packets ;
   u32 rx_ipv4_bytes_lsd ;
   u32 rx_ipv4_bytes_msd ;
   u32 rx_ipv6_bytes_lsd ;
   u32 rx_ipv6_bytes_msd ;
   u32 rx_chute1_packets ;
   u32 rx_chute2_packets ;
   u32 rx_chute3_packets ;
   u32 rx_management_packets ;
   u32 rx_switched_unicast_packets ;
   u32 rx_switched_multicast_packets ;
   u32 rx_switched_broadcast_packets ;
   u32 tx_bytes_lsd ;
   u32 tx_bytes_msd ;
   u32 tx_unicastframes ;
   u32 tx_multicastframes ;
   u32 tx_broadcastframes ;
   u32 tx_pauseframes ;
   u32 tx_controlframes ;
   u32 tx_64_byte_packets ;
   u32 tx_65_127_byte_packets ;
   u32 tx_128_256_byte_packets ;
   u32 tx_256_511_byte_packets ;
   u32 tx_512_1023_byte_packets ;
   u32 tx_1024_1518_byte_packets ;
   u32 tx_1519_2047_byte_packets ;
   u32 tx_2048_4095_byte_packets ;
   u32 tx_4096_8191_byte_packets ;
   u32 tx_8192_9216_byte_packets ;
   u32 rx_fifo_overflow ;
   u32 rx_input_fifo_overflow ;
};
struct be_rxf_stats_v0 {
   struct be_port_rxf_stats_v0 port[2U] ;
   u32 rx_drops_no_pbuf ;
   u32 rx_drops_no_txpb ;
   u32 rx_drops_no_erx_descr ;
   u32 rx_drops_no_tpre_descr ;
   u32 management_rx_port_packets ;
   u32 management_rx_port_bytes ;
   u32 management_rx_port_pause_frames ;
   u32 management_rx_port_errors ;
   u32 management_tx_port_packets ;
   u32 management_tx_port_bytes ;
   u32 management_tx_port_pause ;
   u32 management_rx_port_rxfifo_overflow ;
   u32 rx_drops_too_many_frags ;
   u32 rx_drops_invalid_ring ;
   u32 forwarded_packets ;
   u32 rx_drops_mtu ;
   u32 rsvd0[7U] ;
   u32 port0_jabber_events ;
   u32 port1_jabber_events ;
   u32 rsvd1[6U] ;
};
struct be_erx_stats_v0 {
   u32 rx_drops_no_fragments[44U] ;
   u32 rsvd[4U] ;
};
struct be_pmem_stats {
   u32 eth_red_drops ;
   u32 rsvd[5U] ;
};
struct be_hw_stats_v0 {
   struct be_rxf_stats_v0 rxf ;
   u32 rsvd[48U] ;
   struct be_erx_stats_v0 erx ;
   struct be_pmem_stats pmem ;
};
struct be_cmd_resp_get_stats_v0 {
   struct be_cmd_resp_hdr hdr ;
   struct be_hw_stats_v0 hw_stats ;
};
struct lancer_pport_stats {
   u32 tx_packets_lo ;
   u32 tx_packets_hi ;
   u32 tx_unicast_packets_lo ;
   u32 tx_unicast_packets_hi ;
   u32 tx_multicast_packets_lo ;
   u32 tx_multicast_packets_hi ;
   u32 tx_broadcast_packets_lo ;
   u32 tx_broadcast_packets_hi ;
   u32 tx_bytes_lo ;
   u32 tx_bytes_hi ;
   u32 tx_unicast_bytes_lo ;
   u32 tx_unicast_bytes_hi ;
   u32 tx_multicast_bytes_lo ;
   u32 tx_multicast_bytes_hi ;
   u32 tx_broadcast_bytes_lo ;
   u32 tx_broadcast_bytes_hi ;
   u32 tx_discards_lo ;
   u32 tx_discards_hi ;
   u32 tx_errors_lo ;
   u32 tx_errors_hi ;
   u32 tx_pause_frames_lo ;
   u32 tx_pause_frames_hi ;
   u32 tx_pause_on_frames_lo ;
   u32 tx_pause_on_frames_hi ;
   u32 tx_pause_off_frames_lo ;
   u32 tx_pause_off_frames_hi ;
   u32 tx_internal_mac_errors_lo ;
   u32 tx_internal_mac_errors_hi ;
   u32 tx_control_frames_lo ;
   u32 tx_control_frames_hi ;
   u32 tx_packets_64_bytes_lo ;
   u32 tx_packets_64_bytes_hi ;
   u32 tx_packets_65_to_127_bytes_lo ;
   u32 tx_packets_65_to_127_bytes_hi ;
   u32 tx_packets_128_to_255_bytes_lo ;
   u32 tx_packets_128_to_255_bytes_hi ;
   u32 tx_packets_256_to_511_bytes_lo ;
   u32 tx_packets_256_to_511_bytes_hi ;
   u32 tx_packets_512_to_1023_bytes_lo ;
   u32 tx_packets_512_to_1023_bytes_hi ;
   u32 tx_packets_1024_to_1518_bytes_lo ;
   u32 tx_packets_1024_to_1518_bytes_hi ;
   u32 tx_packets_1519_to_2047_bytes_lo ;
   u32 tx_packets_1519_to_2047_bytes_hi ;
   u32 tx_packets_2048_to_4095_bytes_lo ;
   u32 tx_packets_2048_to_4095_bytes_hi ;
   u32 tx_packets_4096_to_8191_bytes_lo ;
   u32 tx_packets_4096_to_8191_bytes_hi ;
   u32 tx_packets_8192_to_9216_bytes_lo ;
   u32 tx_packets_8192_to_9216_bytes_hi ;
   u32 tx_lso_packets_lo ;
   u32 tx_lso_packets_hi ;
   u32 rx_packets_lo ;
   u32 rx_packets_hi ;
   u32 rx_unicast_packets_lo ;
   u32 rx_unicast_packets_hi ;
   u32 rx_multicast_packets_lo ;
   u32 rx_multicast_packets_hi ;
   u32 rx_broadcast_packets_lo ;
   u32 rx_broadcast_packets_hi ;
   u32 rx_bytes_lo ;
   u32 rx_bytes_hi ;
   u32 rx_unicast_bytes_lo ;
   u32 rx_unicast_bytes_hi ;
   u32 rx_multicast_bytes_lo ;
   u32 rx_multicast_bytes_hi ;
   u32 rx_broadcast_bytes_lo ;
   u32 rx_broadcast_bytes_hi ;
   u32 rx_unknown_protos ;
   u32 rsvd_69 ;
   u32 rx_discards_lo ;
   u32 rx_discards_hi ;
   u32 rx_errors_lo ;
   u32 rx_errors_hi ;
   u32 rx_crc_errors_lo ;
   u32 rx_crc_errors_hi ;
   u32 rx_alignment_errors_lo ;
   u32 rx_alignment_errors_hi ;
   u32 rx_symbol_errors_lo ;
   u32 rx_symbol_errors_hi ;
   u32 rx_pause_frames_lo ;
   u32 rx_pause_frames_hi ;
   u32 rx_pause_on_frames_lo ;
   u32 rx_pause_on_frames_hi ;
   u32 rx_pause_off_frames_lo ;
   u32 rx_pause_off_frames_hi ;
   u32 rx_frames_too_long_lo ;
   u32 rx_frames_too_long_hi ;
   u32 rx_internal_mac_errors_lo ;
   u32 rx_internal_mac_errors_hi ;
   u32 rx_undersize_packets ;
   u32 rx_oversize_packets ;
   u32 rx_fragment_packets ;
   u32 rx_jabbers ;
   u32 rx_control_frames_lo ;
   u32 rx_control_frames_hi ;
   u32 rx_control_frames_unknown_opcode_lo ;
   u32 rx_control_frames_unknown_opcode_hi ;
   u32 rx_in_range_errors ;
   u32 rx_out_of_range_errors ;
   u32 rx_address_filtered ;
   u32 rx_vlan_filtered ;
   u32 rx_dropped_too_small ;
   u32 rx_dropped_too_short ;
   u32 rx_dropped_header_too_small ;
   u32 rx_dropped_invalid_tcp_length ;
   u32 rx_dropped_runt ;
   u32 rx_ip_checksum_errors ;
   u32 rx_tcp_checksum_errors ;
   u32 rx_udp_checksum_errors ;
   u32 rx_non_rss_packets ;
   u32 rsvd_111 ;
   u32 rx_ipv4_packets_lo ;
   u32 rx_ipv4_packets_hi ;
   u32 rx_ipv6_packets_lo ;
   u32 rx_ipv6_packets_hi ;
   u32 rx_ipv4_bytes_lo ;
   u32 rx_ipv4_bytes_hi ;
   u32 rx_ipv6_bytes_lo ;
   u32 rx_ipv6_bytes_hi ;
   u32 rx_nic_packets_lo ;
   u32 rx_nic_packets_hi ;
   u32 rx_tcp_packets_lo ;
   u32 rx_tcp_packets_hi ;
   u32 rx_iscsi_packets_lo ;
   u32 rx_iscsi_packets_hi ;
   u32 rx_management_packets_lo ;
   u32 rx_management_packets_hi ;
   u32 rx_switched_unicast_packets_lo ;
   u32 rx_switched_unicast_packets_hi ;
   u32 rx_switched_multicast_packets_lo ;
   u32 rx_switched_multicast_packets_hi ;
   u32 rx_switched_broadcast_packets_lo ;
   u32 rx_switched_broadcast_packets_hi ;
   u32 num_forwards_lo ;
   u32 num_forwards_hi ;
   u32 rx_fifo_overflow ;
   u32 rx_input_fifo_overflow ;
   u32 rx_drops_too_many_frags_lo ;
   u32 rx_drops_too_many_frags_hi ;
   u32 rx_drops_invalid_queue ;
   u32 rsvd_141 ;
   u32 rx_drops_mtu_lo ;
   u32 rx_drops_mtu_hi ;
   u32 rx_packets_64_bytes_lo ;
   u32 rx_packets_64_bytes_hi ;
   u32 rx_packets_65_to_127_bytes_lo ;
   u32 rx_packets_65_to_127_bytes_hi ;
   u32 rx_packets_128_to_255_bytes_lo ;
   u32 rx_packets_128_to_255_bytes_hi ;
   u32 rx_packets_256_to_511_bytes_lo ;
   u32 rx_packets_256_to_511_bytes_hi ;
   u32 rx_packets_512_to_1023_bytes_lo ;
   u32 rx_packets_512_to_1023_bytes_hi ;
   u32 rx_packets_1024_to_1518_bytes_lo ;
   u32 rx_packets_1024_to_1518_bytes_hi ;
   u32 rx_packets_1519_to_2047_bytes_lo ;
   u32 rx_packets_1519_to_2047_bytes_hi ;
   u32 rx_packets_2048_to_4095_bytes_lo ;
   u32 rx_packets_2048_to_4095_bytes_hi ;
   u32 rx_packets_4096_to_8191_bytes_lo ;
   u32 rx_packets_4096_to_8191_bytes_hi ;
   u32 rx_packets_8192_to_9216_bytes_lo ;
   u32 rx_packets_8192_to_9216_bytes_hi ;
};
struct lancer_cmd_resp_pport_stats {
   struct be_cmd_resp_hdr hdr ;
   struct lancer_pport_stats pport_stats ;
};
struct flashrom_params {
   u32 op_code ;
   u32 op_type ;
   u32 data_buf_size ;
   u32 offset ;
};
struct be_cmd_write_flashrom {
   struct be_cmd_req_hdr hdr ;
   struct flashrom_params params ;
   u8 data_buf[32768U] ;
   u8 rsvd[4U] ;
};
struct be_port_rxf_stats_v1 {
   u32 rsvd0[12U] ;
   u32 rx_crc_errors ;
   u32 rx_alignment_symbol_errors ;
   u32 rx_pause_frames ;
   u32 rx_priority_pause_frames ;
   u32 rx_control_frames ;
   u32 rx_in_range_errors ;
   u32 rx_out_range_errors ;
   u32 rx_frame_too_long ;
   u32 rx_address_filtered ;
   u32 rx_dropped_too_small ;
   u32 rx_dropped_too_short ;
   u32 rx_dropped_header_too_small ;
   u32 rx_dropped_tcp_length ;
   u32 rx_dropped_runt ;
   u32 rsvd1[10U] ;
   u32 rx_ip_checksum_errs ;
   u32 rx_tcp_checksum_errs ;
   u32 rx_udp_checksum_errs ;
   u32 rsvd2[7U] ;
   u32 rx_switched_unicast_packets ;
   u32 rx_switched_multicast_packets ;
   u32 rx_switched_broadcast_packets ;
   u32 rsvd3[3U] ;
   u32 tx_pauseframes ;
   u32 tx_priority_pauseframes ;
   u32 tx_controlframes ;
   u32 rsvd4[10U] ;
   u32 rxpp_fifo_overflow_drop ;
   u32 rx_input_fifo_overflow_drop ;
   u32 pmem_fifo_overflow_drop ;
   u32 jabber_events ;
   u32 rsvd5[3U] ;
};
struct be_rxf_stats_v1 {
   struct be_port_rxf_stats_v1 port[4U] ;
   u32 rsvd0[2U] ;
   u32 rx_drops_no_pbuf ;
   u32 rx_drops_no_txpb ;
   u32 rx_drops_no_erx_descr ;
   u32 rx_drops_no_tpre_descr ;
   u32 rsvd1[6U] ;
   u32 rx_drops_too_many_frags ;
   u32 rx_drops_invalid_ring ;
   u32 forwarded_packets ;
   u32 rx_drops_mtu ;
   u32 rsvd2[14U] ;
};
struct be_erx_stats_v1 {
   u32 rx_drops_no_fragments[68U] ;
   u32 rsvd[4U] ;
};
struct be_hw_stats_v1 {
   struct be_rxf_stats_v1 rxf ;
   u32 rsvd0[48U] ;
   struct be_erx_stats_v1 erx ;
   struct be_pmem_stats pmem ;
   u32 rsvd1[18U] ;
};
struct be_cmd_resp_get_stats_v1 {
   struct be_cmd_resp_hdr hdr ;
   struct be_hw_stats_v1 hw_stats ;
};
struct ext_fat_mode {
   u8 mode ;
   u8 rsvd0 ;
   u16 port_mask ;
   u32 dbg_lvl ;
   u64 fun_mask ;
};
struct ext_fat_modules {
   u8 modules_str[32U] ;
   u32 modules_id ;
   u32 num_modes ;
   struct ext_fat_mode trace_lvl[4U] ;
};
struct be_fat_conf_params {
   u32 max_log_entries ;
   u32 log_entry_size ;
   u8 log_type ;
   u8 max_log_funs ;
   u8 max_log_ports ;
   u8 rsvd0 ;
   u32 supp_modes ;
   u32 num_modules ;
   struct ext_fat_modules module[27U] ;
};
typedef int ldv_func_ret_type___2;
enum hrtimer_restart;
struct mgmt_hba_attribs {
   u8 flashrom_version_string[32U] ;
   u8 manufacturer_name[32U] ;
   u32 supported_modes ;
   u32 rsvd0[3U] ;
   u8 ncsi_ver_string[12U] ;
   u32 default_extended_timeout ;
   u8 controller_model_number[32U] ;
   u8 controller_description[64U] ;
   u8 controller_serial_number[32U] ;
   u8 ip_version_string[32U] ;
   u8 firmware_version_string[32U] ;
   u8 bios_version_string[32U] ;
   u8 redboot_version_string[32U] ;
   u8 driver_version_string[32U] ;
   u8 fw_on_flash_version_string[32U] ;
   u32 functionalities_supported ;
   u16 max_cdblength ;
   u8 asic_revision ;
   u8 generational_guid[16U] ;
   u8 hba_port_count ;
   u16 default_link_down_timeout ;
   u8 iscsi_ver_min_max ;
   u8 multifunction_device ;
   u8 cache_valid ;
   u8 hba_status ;
   u8 max_domains_supported ;
   u8 phy_port ;
   u32 firmware_post_status ;
   u32 hba_mtu[8U] ;
   u32 rsvd1[4U] ;
};
struct mgmt_controller_attrib {
   struct mgmt_hba_attribs hba_attribs ;
   u16 pci_vendor_id ;
   u16 pci_device_id ;
   u16 pci_sub_vendor_id ;
   u16 pci_sub_system_id ;
   u8 pci_bus_number ;
   u8 pci_device_number ;
   u8 pci_function_number ;
   u8 interface_type ;
   u64 unique_identifier ;
   u32 rsvd0[5U] ;
};
struct be_sge {
   u32 pa_lo ;
   u32 pa_hi ;
   u32 len ;
};
union __anonunion_payload_265 {
   u8 embedded_payload[236U] ;
   struct be_sge sgl[19U] ;
};
struct be_mcc_wrb {
   u32 embedded ;
   u32 payload_length ;
   u32 tag0 ;
   u32 tag1 ;
   u32 rsvd ;
   union __anonunion_payload_265 payload ;
};
struct be_mcc_compl {
   u32 status ;
   u32 tag0 ;
   u32 tag1 ;
   u32 flags ;
};
struct be_async_event_trailer {
   u32 code ;
};
struct be_async_event_link_state {
   u8 physical_port ;
   u8 port_link_status ;
   u8 port_duplex ;
   u8 port_speed ;
   u8 port_fault ;
   u8 rsvd0[7U] ;
   struct be_async_event_trailer trailer ;
};
struct be_async_event_grp5_qos_link_speed {
   u8 physical_port ;
   u8 rsvd[5U] ;
   u16 qos_link_speed ;
   u32 event_tag ;
   struct be_async_event_trailer trailer ;
};
struct be_async_event_grp5_cos_priority {
   u8 physical_port ;
   u8 available_priority_bmap ;
   u8 reco_default_priority ;
   u8 valid ;
   u8 rsvd0 ;
   u8 event_tag ;
   struct be_async_event_trailer trailer ;
};
struct be_async_event_grp5_pvid_state {
   u8 enabled ;
   u8 rsvd0 ;
   u16 tag ;
   u32 event_tag ;
   u32 rsvd1 ;
   struct be_async_event_trailer trailer ;
};
struct be_async_event_qnq {
   u8 valid ;
   u8 rsvd0 ;
   u16 vlan_tag ;
   u32 event_tag ;
   u8 rsvd1[4U] ;
   struct be_async_event_trailer trailer ;
};
struct be_mcc_mailbox {
   struct be_mcc_wrb wrb ;
   struct be_mcc_compl compl ;
};
struct phys_addr {
   u32 lo ;
   u32 hi ;
};
struct be_cmd_req_eq_create {
   struct be_cmd_req_hdr hdr ;
   u16 num_pages ;
   u16 rsvd0 ;
   u8 context[16U] ;
   struct phys_addr pages[8U] ;
};
struct be_cmd_resp_eq_create {
   struct be_cmd_resp_hdr resp_hdr ;
   u16 eq_id ;
   u16 rsvd0 ;
};
struct mac_addr {
   u16 size_of_struct ;
   u8 addr[6U] ;
};
struct be_cmd_req_mac_query {
   struct be_cmd_req_hdr hdr ;
   u8 type ;
   u8 permanent ;
   u16 if_id ;
   u32 pmac_id ;
};
struct be_cmd_resp_mac_query {
   struct be_cmd_resp_hdr hdr ;
   struct mac_addr mac ;
};
struct be_cmd_req_pmac_add {
   struct be_cmd_req_hdr hdr ;
   u32 if_id ;
   u8 mac_address[6U] ;
   u8 rsvd0[2U] ;
};
struct be_cmd_resp_pmac_add {
   struct be_cmd_resp_hdr hdr ;
   u32 pmac_id ;
};
struct be_cmd_req_pmac_del {
   struct be_cmd_req_hdr hdr ;
   u32 if_id ;
   u32 pmac_id ;
};
struct be_cmd_req_cq_create {
   struct be_cmd_req_hdr hdr ;
   u16 num_pages ;
   u8 page_size ;
   u8 rsvd0 ;
   u8 context[16U] ;
   struct phys_addr pages[8U] ;
};
struct be_cmd_resp_cq_create {
   struct be_cmd_resp_hdr hdr ;
   u16 cq_id ;
   u16 rsvd0 ;
};
struct be_cmd_req_get_fat {
   struct be_cmd_req_hdr hdr ;
   u32 fat_operation ;
   u32 read_log_offset ;
   u32 read_log_length ;
   u32 data_buffer_size ;
   u32 data_buffer[1U] ;
};
struct be_cmd_resp_get_fat {
   struct be_cmd_resp_hdr hdr ;
   u32 log_size ;
   u32 read_log_length ;
   u32 rsvd[2U] ;
   u32 data_buffer[1U] ;
};
struct be_cmd_req_mcc_create {
   struct be_cmd_req_hdr hdr ;
   u16 num_pages ;
   u16 cq_id ;
   u8 context[16U] ;
   struct phys_addr pages[8U] ;
};
struct be_cmd_req_mcc_ext_create {
   struct be_cmd_req_hdr hdr ;
   u16 num_pages ;
   u16 cq_id ;
   u32 async_event_bitmap[1U] ;
   u8 context[16U] ;
   struct phys_addr pages[8U] ;
};
struct be_cmd_resp_mcc_create {
   struct be_cmd_resp_hdr hdr ;
   u16 id ;
   u16 rsvd0 ;
};
struct be_cmd_req_eth_tx_create {
   struct be_cmd_req_hdr hdr ;
   u8 num_pages ;
   u8 ulp_num ;
   u16 type ;
   u16 if_id ;
   u8 queue_size ;
   u8 rsvd0 ;
   u32 rsvd1 ;
   u16 cq_id ;
   u16 rsvd2 ;
   u32 rsvd3[13U] ;
   struct phys_addr pages[8U] ;
};
struct be_cmd_resp_eth_tx_create {
   struct be_cmd_resp_hdr hdr ;
   u16 cid ;
   u16 rid ;
   u32 db_offset ;
   u32 rsvd0[4U] ;
};
struct be_cmd_req_eth_rx_create {
   struct be_cmd_req_hdr hdr ;
   u16 cq_id ;
   u8 frag_size ;
   u8 num_pages ;
   struct phys_addr pages[2U] ;
   u32 interface_id ;
   u16 max_frame_size ;
   u16 rsvd0 ;
   u32 rss_queue ;
};
struct be_cmd_resp_eth_rx_create {
   struct be_cmd_resp_hdr hdr ;
   u16 id ;
   u8 rss_id ;
   u8 rsvd0 ;
};
struct be_cmd_req_q_destroy {
   struct be_cmd_req_hdr hdr ;
   u16 id ;
   u16 bypass_flush ;
};
struct be_cmd_req_if_create {
   struct be_cmd_req_hdr hdr ;
   u32 version ;
   u32 capability_flags ;
   u32 enable_flags ;
   u8 mac_addr[6U] ;
   u8 rsvd0 ;
   u8 pmac_invalid ;
   u32 vlan_tag ;
};
struct be_cmd_resp_if_create {
   struct be_cmd_resp_hdr hdr ;
   u32 interface_id ;
   u32 pmac_id ;
};
struct be_cmd_req_if_destroy {
   struct be_cmd_req_hdr hdr ;
   u32 interface_id ;
};
struct pport_stats_params {
   u16 pport_num ;
   u8 rsvd ;
   u8 reset_stats ;
};
union __anonunion_cmd_params_266 {
   struct pport_stats_params params ;
   u8 rsvd[656U] ;
};
struct lancer_cmd_req_pport_stats {
   struct be_cmd_req_hdr hdr ;
   union __anonunion_cmd_params_266 cmd_params ;
};
struct be_cmd_req_get_cntl_addnl_attribs {
   struct be_cmd_req_hdr hdr ;
   u8 rsvd[8U] ;
};
struct be_cmd_resp_get_cntl_addnl_attribs {
   struct be_cmd_resp_hdr hdr ;
   u16 ipl_file_number ;
   u8 ipl_file_version ;
   u8 rsvd0 ;
   u8 on_die_temperature ;
   u8 rsvd1[3U] ;
};
struct be_cmd_req_vlan_config {
   struct be_cmd_req_hdr hdr ;
   u8 interface_id ;
   u8 promiscuous ;
   u8 untagged ;
   u8 num_vlan ;
   u16 normal_vlan[64U] ;
};
struct macaddr {
   u8 byte[6U] ;
};
struct be_cmd_req_rx_filter {
   struct be_cmd_req_hdr hdr ;
   u32 global_flags_mask ;
   u32 global_flags ;
   u32 if_flags_mask ;
   u32 if_flags ;
   u32 if_id ;
   u32 mcast_num ;
   struct macaddr mcast_mac[64U] ;
};
struct be_cmd_req_link_status {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd ;
};
struct be_cmd_resp_link_status {
   struct be_cmd_resp_hdr hdr ;
   u8 physical_port ;
   u8 mac_duplex ;
   u8 mac_speed ;
   u8 mac_fault ;
   u8 mgmt_mac_duplex ;
   u8 mgmt_mac_speed ;
   u16 link_speed ;
   u8 logical_link_status ;
   u8 rsvd1[3U] ;
};
struct be_cmd_req_get_fw_version {
   struct be_cmd_req_hdr hdr ;
   u8 rsvd0[32U] ;
   u8 rsvd1[32U] ;
};
struct be_cmd_resp_get_fw_version {
   struct be_cmd_resp_hdr hdr ;
   u8 firmware_version_string[32U] ;
   u8 fw_on_flash_version_string[32U] ;
};
struct be_cmd_req_set_flow_control {
   struct be_cmd_req_hdr hdr ;
   u16 tx_flow_control ;
   u16 rx_flow_control ;
};
struct be_cmd_req_get_flow_control {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd ;
};
struct be_cmd_resp_get_flow_control {
   struct be_cmd_resp_hdr hdr ;
   u16 tx_flow_control ;
   u16 rx_flow_control ;
};
struct __anonstruct_delay_267 {
   u32 eq_id ;
   u32 phase ;
   u32 delay_multiplier ;
};
struct be_cmd_req_modify_eq_delay {
   struct be_cmd_req_hdr hdr ;
   u32 num_eq ;
   struct __anonstruct_delay_267 delay[8U] ;
};
struct be_cmd_req_query_fw_cfg {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd[31U] ;
};
struct be_cmd_resp_query_fw_cfg {
   struct be_cmd_resp_hdr hdr ;
   u32 be_config_number ;
   u32 asic_revision ;
   u32 phys_port ;
   u32 function_mode ;
   u32 rsvd[26U] ;
   u32 function_caps ;
};
struct be_cmd_req_rss_config {
   struct be_cmd_req_hdr hdr ;
   u32 if_id ;
   u16 enable_rss ;
   u16 cpu_table_size_log2 ;
   u32 hash[10U] ;
   u8 cpu_table[128U] ;
   u8 flush ;
   u8 rsvd0[3U] ;
};
struct be_cmd_req_enable_disable_beacon {
   struct be_cmd_req_hdr hdr ;
   u8 port_num ;
   u8 beacon_state ;
   u8 beacon_duration ;
   u8 status_duration ;
};
struct be_cmd_req_get_beacon_state {
   struct be_cmd_req_hdr hdr ;
   u8 port_num ;
   u8 rsvd0 ;
   u16 rsvd1 ;
};
struct be_cmd_resp_get_beacon_state {
   struct be_cmd_resp_hdr resp_hdr ;
   u8 beacon_state ;
   u8 rsvd0[3U] ;
};
struct be_cmd_read_flash_crc {
   struct be_cmd_req_hdr hdr ;
   struct flashrom_params params ;
   u8 crc[4U] ;
   u8 rsvd[4U] ;
};
struct lancer_cmd_req_write_object {
   struct be_cmd_req_hdr hdr ;
   u8 context[4U] ;
   u32 write_offset ;
   u8 object_name[104U] ;
   u32 descriptor_count ;
   u32 buf_len ;
   u32 addr_low ;
   u32 addr_high ;
};
struct lancer_cmd_resp_write_object {
   u8 opcode ;
   u8 subsystem ;
   u8 rsvd1[2U] ;
   u8 status ;
   u8 additional_status ;
   u8 rsvd2[2U] ;
   u32 resp_len ;
   u32 actual_resp_len ;
   u32 actual_write_len ;
   u8 change_status ;
   u8 rsvd3[3U] ;
};
struct lancer_cmd_req_read_object {
   struct be_cmd_req_hdr hdr ;
   u32 desired_read_len ;
   u32 read_offset ;
   u8 object_name[104U] ;
   u32 descriptor_count ;
   u32 buf_len ;
   u32 addr_low ;
   u32 addr_high ;
};
struct lancer_cmd_resp_read_object {
   u8 opcode ;
   u8 subsystem ;
   u8 rsvd1[2U] ;
   u8 status ;
   u8 additional_status ;
   u8 rsvd2[2U] ;
   u32 resp_len ;
   u32 actual_resp_len ;
   u32 actual_read_len ;
   u32 eof ;
};
struct be_cmd_req_acpi_wol_magic_config {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd0[145U] ;
   u8 magic_mac[6U] ;
   u8 rsvd2[2U] ;
};
struct be_cmd_req_acpi_wol_magic_config_v1 {
   struct be_cmd_req_hdr hdr ;
   u8 rsvd0[2U] ;
   u8 query_options ;
   u8 rsvd1[5U] ;
   u32 rsvd2[288U] ;
   u8 magic_mac[6U] ;
   u8 rsvd3[22U] ;
};
struct be_cmd_resp_acpi_wol_magic_config_v1 {
   struct be_cmd_resp_hdr hdr ;
   u8 rsvd0[2U] ;
   u8 wol_settings ;
   u8 rsvd1[5U] ;
   u32 rsvd2[295U] ;
};
struct be_cmd_req_loopback_test {
   struct be_cmd_req_hdr hdr ;
   u32 loopback_type ;
   u32 num_pkts ;
   u64 pattern ;
   u32 src_port ;
   u32 dest_port ;
   u32 pkt_size ;
};
struct be_cmd_resp_loopback_test {
   struct be_cmd_resp_hdr resp_hdr ;
   u32 status ;
   u32 num_txfer ;
   u32 num_rx ;
   u32 miscomp_off ;
   u32 ticks_compl ;
};
struct be_cmd_req_set_lmode {
   struct be_cmd_req_hdr hdr ;
   u8 src_port ;
   u8 dest_port ;
   u8 loopback_type ;
   u8 loopback_state ;
};
struct be_cmd_req_ddrdma_test {
   struct be_cmd_req_hdr hdr ;
   u64 pattern ;
   u32 byte_count ;
   u32 rsvd0 ;
   u8 snd_buff[4096U] ;
   u8 rsvd1[4096U] ;
};
struct be_cmd_resp_ddrdma_test {
   struct be_cmd_resp_hdr hdr ;
   u64 pattern ;
   u32 byte_cnt ;
   u32 snd_err ;
   u8 rsvd0[4096U] ;
   u8 rcv_buff[4096U] ;
};
struct be_cmd_req_seeprom_read {
   struct be_cmd_req_hdr hdr ;
   u8 rsvd0[1024U] ;
};
struct be_cmd_req_get_phy_info {
   struct be_cmd_req_hdr hdr ;
   u8 rsvd0[24U] ;
};
struct be_phy_info {
   u16 phy_type ;
   u16 interface_type ;
   u32 misc_params ;
   u16 ext_phy_details ;
   u16 rsvd ;
   u16 auto_speeds_supported ;
   u16 fixed_speeds_supported ;
   u32 future_use[2U] ;
};
struct be_cmd_req_set_qos {
   struct be_cmd_req_hdr hdr ;
   u32 valid_bits ;
   u32 max_bps_nic ;
   u32 rsvd[7U] ;
};
struct be_cmd_req_cntl_attribs {
   struct be_cmd_req_hdr hdr ;
};
struct be_cmd_resp_cntl_attribs {
   struct be_cmd_resp_hdr hdr ;
   struct mgmt_controller_attrib attribs ;
};
struct be_cmd_req_set_func_cap {
   struct be_cmd_req_hdr hdr ;
   u32 valid_cap_flags ;
   u32 cap_flags ;
   u8 rsvd[212U] ;
};
struct be_cmd_resp_set_func_cap {
   struct be_cmd_resp_hdr hdr ;
   u32 valid_cap_flags ;
   u32 cap_flags ;
   u8 rsvd[212U] ;
};
struct be_cmd_priv_map {
   u8 opcode ;
   u8 subsystem ;
   u32 priv_mask ;
};
struct be_cmd_req_get_fn_privileges {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd ;
};
struct be_cmd_resp_get_fn_privileges {
   struct be_cmd_resp_hdr hdr ;
   u32 privilege_mask ;
};
struct be_cmd_req_get_mac_list {
   struct be_cmd_req_hdr hdr ;
   u8 mac_type ;
   u8 perm_override ;
   u16 iface_id ;
   u32 mac_id ;
   u32 rsvd[3U] ;
};
struct __anonstruct_s_mac_id_269 {
   u8 rsvd[2U] ;
   u32 mac_id ;
};
union __anonunion_mac_addr_id_268 {
   u8 macaddr[6U] ;
   struct __anonstruct_s_mac_id_269 s_mac_id ;
};
struct get_list_macaddr {
   u16 mac_addr_size ;
   union __anonunion_mac_addr_id_268 mac_addr_id ;
};
struct be_cmd_resp_get_mac_list {
   struct be_cmd_resp_hdr hdr ;
   struct get_list_macaddr fd_macaddr ;
   struct get_list_macaddr macid_macaddr ;
   u8 true_mac_count ;
   u8 pseudo_mac_count ;
   u8 mac_list_size ;
   u8 rsvd ;
   struct get_list_macaddr macaddr_list[64U] ;
};
struct be_cmd_req_set_mac_list {
   struct be_cmd_req_hdr hdr ;
   u8 mac_count ;
   u8 rsvd1 ;
   u16 rsvd2 ;
   struct macaddr mac[64U] ;
};
struct be_cmd_req_set_hsw_config {
   struct be_cmd_req_hdr hdr ;
   u8 context[20U] ;
};
struct be_cmd_req_get_hsw_config {
   struct be_cmd_req_hdr hdr ;
   u8 context[4U] ;
};
struct be_cmd_resp_get_hsw_config {
   struct be_cmd_resp_hdr hdr ;
   u8 context[16U] ;
   u32 rsvd ;
};
struct be_cmd_req_get_port_name {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd0 ;
};
struct be_cmd_resp_get_port_name {
   struct be_cmd_req_hdr hdr ;
   u8 port_name[4U] ;
};
struct be_cmd_req_get_ext_fat_caps {
   struct be_cmd_req_hdr hdr ;
   u32 parameter_type ;
};
struct be_cmd_req_set_ext_fat_caps {
   struct be_cmd_req_hdr hdr ;
   struct be_fat_conf_params set_params ;
};
struct be_nic_resource_desc {
   u8 desc_type ;
   u8 desc_len ;
   u8 rsvd1 ;
   u8 flags ;
   u8 vf_num ;
   u8 rsvd2 ;
   u8 pf_num ;
   u8 rsvd3 ;
   u16 unicast_mac_count ;
   u8 rsvd4[6U] ;
   u16 mcc_count ;
   u16 vlan_count ;
   u16 mcast_mac_count ;
   u16 txq_count ;
   u16 rq_count ;
   u16 rssq_count ;
   u16 lro_count ;
   u16 cq_count ;
   u16 toe_conn_count ;
   u16 eq_count ;
   u32 rsvd5 ;
   u32 cap_flags ;
   u8 link_param ;
   u8 rsvd6[3U] ;
   u32 bw_min ;
   u32 bw_max ;
   u8 acpi_params ;
   u8 wol_param ;
   u16 rsvd7 ;
   u32 rsvd8[3U] ;
};
struct be_cmd_req_get_func_config {
   struct be_cmd_req_hdr hdr ;
};
struct be_cmd_resp_get_func_config {
   struct be_cmd_resp_hdr hdr ;
   u32 desc_count ;
   u8 func_param[352U] ;
};
struct be_cmd_req_get_profile_config {
   struct be_cmd_req_hdr hdr ;
   u8 rsvd ;
   u8 type ;
   u16 rsvd1 ;
};
struct be_cmd_resp_get_profile_config {
   struct be_cmd_req_hdr hdr ;
   u32 desc_count ;
   u8 func_param[352U] ;
};
struct be_cmd_req_set_profile_config {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd ;
   u32 desc_count ;
   struct be_nic_resource_desc nic_desc ;
};
struct be_cmd_enable_disable_vf {
   struct be_cmd_req_hdr hdr ;
   u8 enable ;
   u8 rsvd[3U] ;
};
struct be_cmd_req_intr_set {
   struct be_cmd_req_hdr hdr ;
   u8 intr_enabled ;
   u8 rsvd[3U] ;
};
struct be_if_desc {
   u32 if_id ;
   u32 cap_flags ;
   u32 en_flags ;
};
struct be_cmd_req_get_iface_list {
   struct be_cmd_req_hdr hdr ;
};
struct be_cmd_resp_get_iface_list {
   struct be_cmd_req_hdr hdr ;
   u32 if_cnt ;
   struct be_if_desc if_desc ;
};
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___10;
typedef int ldv_func_ret_type___12;
typedef int ldv_func_ret_type___14;
typedef int ldv_func_ret_type___16;
typedef int ldv_func_ret_type___18;
typedef int ldv_func_ret_type___20;
typedef int ldv_func_ret_type___22;
typedef int ldv_func_ret_type___24;
typedef int ldv_func_ret_type___26;
typedef int ldv_func_ret_type___28;
typedef int ldv_func_ret_type___30;
typedef int ldv_func_ret_type___32;
typedef int ldv_func_ret_type___34;
typedef int ldv_func_ret_type___36;
enum hrtimer_restart;
struct be_cmd_resp_seeprom_read {
   struct be_cmd_req_hdr hdr ;
   u8 seeprom_data[1024U] ;
};
struct be_ethtool_stat {
   char desc[32U] ;
   int type ;
   int size ;
   int offset ;
};
enum hrtimer_restart;
enum be_interrupt_mode {
    BE_INTERRUPT_MODE_MSIX = 0,
    BE_INTERRUPT_MODE_INTX = 1,
    BE_INTERRUPT_MODE_MSI = 2
} ;
struct __anonstruct_msix_263 {
   int num_vectors ;
   int start_vector ;
   u32 vector_list[16U] ;
};
struct be_dev_info {
   u8 *db ;
   u64 unmapped_db ;
   u32 db_page_size ;
   u32 db_total_size ;
   u64 dpp_unmapped_addr ;
   u32 dpp_unmapped_len ;
   struct pci_dev *pdev ;
   struct net_device *netdev ;
   u8 mac_addr[6U] ;
   u32 dev_family ;
   enum be_interrupt_mode intr_mode ;
   struct __anonstruct_msix_263 msix ;
};
struct ocrdma_driver {
   unsigned char name[32U] ;
   struct ocrdma_dev *(*add)(struct be_dev_info * ) ;
   void (*remove)(struct ocrdma_dev * ) ;
   void (*state_change_handler)(struct ocrdma_dev * , u32 ) ;
};
long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int constant_test_bit(unsigned int nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr / 64U)) >> ((int )nr & 63)) & 1);
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
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u32 rol32(__u32 word , unsigned int shift )
{
  {
  return ((word << shift) | (word >> (8UL * sizeof(word) - (unsigned long )shift)));
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern int sprintf(char * , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern struct pv_irq_ops pv_irq_ops ;
extern void __bad_percpu_size(void) ;
extern unsigned long __phys_addr(unsigned long ) ;
__inline static int __get_order(unsigned long size )
{
  int order ;
  {
  size = size - 1UL;
  size = size >> 12;
  order = fls64((__u64 )size);
  return (order);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern int __bitmap_weight(unsigned long const * , int ) ;
__inline static int bitmap_weight(unsigned long const *src , int nbits )
{
  int tmp___0 ;
  {
  tmp___0 = __bitmap_weight(src, nbits);
  return (tmp___0);
}
}
extern void warn_slowpath_null(char const * , int const ) ;
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_online_mask ;
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
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
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/inst/current/envs/linux-3.10-rc1.tar/linux-3.10-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (824), "i" (12UL));
    ldv_4781: ;
    goto ldv_4781;
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
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_add(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; addl %1,%0": "+m" (v->counter): "ir" (i));
  return;
}
}
__inline static void atomic_sub(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %1,%0": "+m" (v->counter): "ir" (i));
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
extern void local_bh_disable(void) ;
extern void local_bh_enable(void) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6014.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6014.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6014.rlock);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
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
  tmp = queue_delayed_work_on(4096, wq, dwork, delay);
  return (tmp);
}
}
__inline static bool schedule_delayed_work(struct delayed_work *dwork , unsigned long delay )
{
  bool tmp ;
  {
  tmp = queue_delayed_work(system_wq, dwork, delay);
  return (tmp);
}
}
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
extern int cpu_number ;
extern void __bad_size_call_parameter(void) ;
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *alloc_pages(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  tmp = alloc_pages_current(gfp_mask, order);
  return (tmp);
}
}
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
__inline static struct pci_dev *pci_physfn(struct pci_dev *dev )
{
  {
  if ((unsigned int )*((unsigned char *)dev + 2251UL) != 0U) {
    dev = dev->ldv_15834.physfn;
  } else {
  }
  return (dev);
}
}
extern int pci_find_ext_capability(struct pci_dev * , int ) ;
extern struct pci_dev *pci_get_device(unsigned int , unsigned int , struct pci_dev * ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_read_config_dword(struct pci_dev const *dev , int where ,
                                          u32 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_dword(struct pci_dev const *dev , int where ,
                                           u32 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
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
  tmp = __pci_enable_wake(dev, state, 0, (int )enable);
  return (tmp);
}
}
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
extern int pci_enable_msix(struct pci_dev * , struct msix_entry * , int ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
__inline static int PageTail(struct page const *page )
{
  int tmp ;
  {
  tmp = constant_test_bit(15U, (unsigned long const volatile *)(& page->flags));
  return (tmp);
}
}
extern bool __get_page_tail(struct page * ) ;
__inline static void get_page(struct page *page )
{
  bool tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  {
  tmp___1 = PageTail((struct page const *)page);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  if (tmp___2 != 0L) {
    tmp = __get_page_tail(page);
    tmp___0 = ldv__builtin_expect((long )tmp, 1L);
    if (tmp___0 != 0L) {
      return;
    } else {
    }
  } else {
  }
  tmp___3 = atomic_read((atomic_t const *)(& page->ldv_16917.ldv_16916.ldv_16915._count));
  tmp___4 = ldv__builtin_expect(tmp___3 <= 0, 0L);
  if (tmp___4 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/mm.h"),
                         "i" (411), "i" (12UL));
    ldv_18344: ;
    goto ldv_18344;
  } else {
  }
  atomic_inc(& page->ldv_16917.ldv_16916.ldv_16915._count);
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
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && 0xffffffffffffffffUL / size < n) {
    return (0);
  } else {
  }
  tmp = __kmalloc(n * size, flags);
  return (tmp);
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  return (tmp);
}
}
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0) && *(dev->dma_mask) != 0ULL);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_20620: ;
    goto ldv_20620;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, 0xffffea0000000000UL + (tmp___2 >> 12), (unsigned long )ptr & 4095UL,
                            size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, 0xffffea0000000000UL + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    ldv_20629: ;
    goto ldv_20629;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (79), "i" (12UL));
    ldv_20663: ;
    goto ldv_20663;
  } else {
  }
  addr = (*(ops->map_page))(dev, page, offset, size, dir, 0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (91), "i" (12UL));
    ldv_20671: ;
    goto ldv_20671;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, 0);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
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
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
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
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  tmp___0 = is_device_dma_capable(dev);
  if (tmp___0 == 0) {
    return (0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return (0);
  } else {
  }
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
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
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/exper_fp/inst/current/envs/linux-3.10-rc1.tar/linux-3.10-rc1/arch/x86/include/asm/dma-mapping.h",
                       166);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
  } else {
  }
  return;
}
}
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_supported(dev, mask);
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
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                        size, dma_handle, 32U, 0);
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                 size, vaddr, dma_handle, 0);
  return;
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
extern int pci_enable_sriov(struct pci_dev * , int ) ;
extern void pci_disable_sriov(struct pci_dev * ) ;
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
__inline static void skb_frag_size_set(skb_frag_t *frag , unsigned int size )
{
  {
  frag->size = size;
  return;
}
}
__inline static void skb_frag_size_add(skb_frag_t *frag , int delta )
{
  {
  frag->size = frag->size + (__u32 )delta;
  return;
}
}
extern void kfree_skb(struct sk_buff * ) ;
extern void consume_skb(struct sk_buff * ) ;
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static int skb_header_cloned(struct sk_buff const *skb )
{
  int dataref ;
  unsigned char *tmp ;
  {
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 0U) {
    return (0);
  } else {
  }
  tmp = skb_end_pointer(skb);
  dataref = atomic_read((atomic_t const *)(& ((struct skb_shared_info *)tmp)->dataref));
  dataref = (dataref & 65535) - (dataref >> 16);
  return (dataref != 1);
}
}
__inline static int skb_shared(struct sk_buff const *skb )
{
  int tmp ;
  {
  tmp = atomic_read(& skb->users);
  return (tmp != 1);
}
}
__inline static struct sk_buff *skb_share_check(struct sk_buff *skb , gfp_t pri )
{
  struct sk_buff *nskb ;
  struct sk_buff *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  if ((pri & 16U) != 0U) {
    __might_sleep("include/linux/skbuff.h", 926, 0);
  } else {
  }
  tmp___1 = skb_shared((struct sk_buff const *)skb);
  if (tmp___1 != 0) {
    tmp = skb_clone(skb, pri);
    nskb = tmp;
    tmp___0 = ldv__builtin_expect((unsigned long )nskb != (unsigned long )((struct sk_buff *)0),
                               1L);
    if (tmp___0 != 0L) {
      consume_skb(skb);
    } else {
      kfree_skb(skb);
    }
    skb = nskb;
  } else {
  }
  return (skb);
}
}
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
__inline static void skb_reset_tail_pointer(struct sk_buff *skb )
{
  {
  skb->tail = (sk_buff_data_t )((long )skb->data) - (sk_buff_data_t )((long )skb->head);
  return;
}
}
__inline static void skb_set_tail_pointer(struct sk_buff *skb , int const offset )
{
  {
  skb_reset_tail_pointer(skb);
  skb->tail = skb->tail + (sk_buff_data_t )offset;
  return;
}
}
extern unsigned char *skb_push(struct sk_buff * , unsigned int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
extern int ___pskb_trim(struct sk_buff * , unsigned int ) ;
__inline static void __skb_trim(struct sk_buff *skb , unsigned int len )
{
  int __ret_warn_on ;
  long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  {
  tmp___0 = skb_is_nonlinear((struct sk_buff const *)skb);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/linux/skbuff.h", 1858);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return;
  } else {
  }
  skb->len = len;
  skb_set_tail_pointer(skb, (int const )len);
  return;
}
}
__inline static int __pskb_trim(struct sk_buff *skb , unsigned int len )
{
  int tmp ;
  {
  if (skb->data_len != 0U) {
    tmp = ___pskb_trim(skb, len);
    return (tmp);
  } else {
  }
  __skb_trim(skb, len);
  return (0);
}
}
__inline static int pskb_trim(struct sk_buff *skb , unsigned int len )
{
  int tmp ;
  int tmp___0 ;
  {
  if (skb->len > len) {
    tmp = __pskb_trim(skb, len);
    tmp___0 = tmp;
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *__netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                            unsigned int length ,
                                                            gfp_t gfp )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb(dev, length, gfp);
  skb = tmp;
  return (skb);
}
}
__inline static struct sk_buff *netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                          unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb_ip_align(dev, length, 32U);
  return (tmp);
}
}
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static void __skb_frag_set_page(skb_frag_t *frag , struct page *page )
{
  {
  frag->page.p = page;
  return;
}
}
__inline static void skb_frag_set_page(struct sk_buff *skb , int f , struct page *page )
{
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  __skb_frag_set_page((skb_frag_t *)(& ((struct skb_shared_info *)tmp)->frags) + (unsigned long )f,
                      page);
  return;
}
}
__inline static dma_addr_t skb_frag_dma_map(struct device *dev , skb_frag_t const *frag ,
                                            size_t offset , size_t size , enum dma_data_direction dir )
{
  struct page *tmp ;
  dma_addr_t tmp___0 ;
  {
  tmp = skb_frag_page(frag);
  tmp___0 = dma_map_page(dev, tmp, (size_t )frag->page_offset + offset, size, dir);
  return (tmp___0);
}
}
__inline static int __skb_cow(struct sk_buff *skb , unsigned int headroom , int cloned )
{
  int delta ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int _max1 ;
  int _max2 ;
  int _max1___0 ;
  int _max2___0 ;
  int tmp___1 ;
  {
  delta = 0;
  tmp___0 = skb_headroom((struct sk_buff const *)skb);
  if (tmp___0 < headroom) {
    tmp = skb_headroom((struct sk_buff const *)skb);
    delta = (int )(headroom - tmp);
  } else {
  }
  if (delta != 0 || cloned != 0) {
    _max1 = 32;
    _max2 = 64;
    _max1___0 = 32;
    _max2___0 = 64;
    tmp___1 = pskb_expand_head(skb, (((_max1 > _max2 ? _max1 : _max2) + -1) + delta) & - (_max1___0 > _max2___0 ? _max1___0 : _max2___0),
                               0, 32U);
    return (tmp___1);
  } else {
  }
  return (0);
}
}
__inline static int skb_cow_head(struct sk_buff *skb , unsigned int headroom )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = skb_header_cloned((struct sk_buff const *)skb);
  tmp___0 = __skb_cow(skb, headroom, tmp);
  return (tmp___0);
}
}
__inline static u16 skb_get_queue_mapping(struct sk_buff const *skb )
{
  {
  return ((u16 )skb->queue_mapping);
}
}
__inline static void skb_record_rx_queue(struct sk_buff *skb , u16 rx_queue )
{
  {
  skb->queue_mapping = (unsigned int )rx_queue + 1U;
  return;
}
}
__inline static bool skb_is_gso(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer(skb);
  return ((unsigned int )((struct skb_shared_info *)tmp)->gso_size != 0U);
}
}
__inline static bool skb_is_gso_v6(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer(skb);
  return (((int )((struct skb_shared_info *)tmp)->gso_type & 16) != 0);
}
}
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
}
}
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
__inline static void ssleep(unsigned int seconds )
{
  {
  msleep(seconds * 1000U);
  return;
}
}
__inline static void u64_stats_update_begin(struct u64_stats_sync *syncp )
{
  {
  return;
}
}
__inline static unsigned int u64_stats_fetch_begin_bh(struct u64_stats_sync const *syncp )
{
  {
  return (0U);
}
}
__inline static bool u64_stats_fetch_retry_bh(struct u64_stats_sync const *syncp ,
                                              unsigned int start )
{
  {
  return (0);
}
}
extern void synchronize_irq(unsigned int ) ;
extern void __napi_schedule(struct napi_struct * ) ;
__inline static bool napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& n->state));
  return (tmp != 0);
}
}
__inline static bool napi_schedule_prep(struct napi_struct *n )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = napi_disable_pending(n);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = test_and_set_bit(0, (unsigned long volatile *)(& n->state));
    if (tmp___1 == 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
__inline static void napi_schedule(struct napi_struct *n )
{
  bool tmp ;
  {
  tmp = napi_schedule_prep(n);
  if ((int )tmp) {
    __napi_schedule(n);
  } else {
  }
  return;
}
}
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  set_bit(1U, (unsigned long volatile *)(& n->state));
  goto ldv_38282;
  ldv_38281:
  msleep(1U);
  ldv_38282:
  tmp = test_and_set_bit(0, (unsigned long volatile *)(& n->state));
  if (tmp != 0) {
    goto ldv_38281;
  } else {
  }
  clear_bit(1, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (472), "i" (12UL));
    ldv_38287: ;
    goto ldv_38287;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  clear_bit(0, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 2816U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void free_netdev(struct net_device * ) ;
extern int netpoll_trap(void) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_tx_start_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_39065;
  ldv_39064:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_start_queue(txq);
  i = i + 1U;
  ldv_39065: ;
  if (dev->num_tx_queues > i) {
    goto ldv_39064;
  } else {
  }
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/netdevice.h", 1907);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    return;
  } else {
  }
  set_bit(0U, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static bool netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& dev_queue->state));
  return (tmp != 0);
}
}
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& dev->state));
  return (tmp != 0);
}
}
__inline static void netif_stop_subqueue(struct net_device *dev , u16 queue_index )
{
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, (unsigned int )queue_index);
  txq = tmp;
  tmp___0 = netpoll_trap();
  if (tmp___0 != 0) {
    return;
  } else {
  }
  netif_tx_stop_queue(txq);
  return;
}
}
__inline static bool __netif_subqueue_stopped(struct net_device const *dev , u16 queue_index )
{
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_get_tx_queue(dev, (unsigned int )queue_index);
  txq = tmp;
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)txq);
  return (tmp___0);
}
}
__inline static void netif_wake_subqueue(struct net_device *dev , u16 queue_index )
{
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, (unsigned int )queue_index);
  txq = tmp;
  tmp___0 = netpoll_trap();
  if (tmp___0 != 0) {
    return;
  } else {
  }
  tmp___1 = test_and_clear_bit(0, (unsigned long volatile *)(& txq->state));
  if (tmp___1 != 0) {
    __netif_schedule(txq->qdisc);
  } else {
  }
  return;
}
}
extern int netif_set_real_num_tx_queues(struct net_device * , unsigned int ) ;
extern int netif_set_real_num_rx_queues(struct net_device * , unsigned int ) ;
extern int netif_get_num_default_rss_queues(void) ;
extern void dev_kfree_skb_any(struct sk_buff * ) ;
extern int netif_receive_skb(struct sk_buff * ) ;
extern struct sk_buff *napi_get_frags(struct napi_struct * ) ;
extern gro_result_t napi_gro_frags(struct napi_struct * ) ;
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
__inline static void __netif_tx_lock(struct netdev_queue *txq , int cpu )
{
  {
  spin_lock(& txq->_xmit_lock);
  txq->xmit_lock_owner = cpu;
  return;
}
}
__inline static void __netif_tx_unlock(struct netdev_queue *txq )
{
  {
  txq->xmit_lock_owner = -1;
  spin_unlock(& txq->_xmit_lock);
  return;
}
}
__inline static void netif_tx_disable(struct net_device *dev )
{
  unsigned int i ;
  int cpu ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  local_bh_disable();
  __vpp_verify = 0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_39590;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39590;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39590;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39590;
  default:
  __bad_percpu_size();
  }
  ldv_39590:
  pscr_ret__ = pfo_ret__;
  goto ldv_39596;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39600;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39600;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39600;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39600;
  default:
  __bad_percpu_size();
  }
  ldv_39600:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_39596;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39609;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39609;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39609;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39609;
  default:
  __bad_percpu_size();
  }
  ldv_39609:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_39596;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39618;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39618;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39618;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39618;
  default:
  __bad_percpu_size();
  }
  ldv_39618:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_39596;
  default:
  __bad_size_call_parameter();
  goto ldv_39596;
  }
  ldv_39596:
  cpu = pscr_ret__;
  i = 0U;
  goto ldv_39628;
  ldv_39627:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  __netif_tx_lock(txq, cpu);
  netif_tx_stop_queue(txq);
  __netif_tx_unlock(txq);
  i = i + 1U;
  ldv_39628: ;
  if (dev->num_tx_queues > i) {
    goto ldv_39627;
  } else {
  }
  local_bh_enable();
  return;
}
}
extern int register_netdev(struct net_device * ) ;
extern void unregister_netdev(struct net_device * ) ;
__inline static void netif_set_gso_max_size(struct net_device *dev , unsigned int size )
{
  {
  dev->gso_max_size = size;
  return;
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return ((unsigned int )((((((int )((unsigned char )*addr) | (int )((unsigned char )*(addr + 1UL))) | (int )((unsigned char )*(addr + 2UL))) | (int )((unsigned char )*(addr + 3UL))) | (int )((unsigned char )*(addr + 4UL))) | (int )((unsigned char )*(addr + 5UL))) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  {
  return (((int )*addr & 1) != 0);
}
}
__inline static bool is_valid_ether_addr(u8 const *addr )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = is_multicast_ether_addr(addr);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = is_zero_ether_addr(addr);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  return ((bool )tmp___3);
}
}
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
__inline static u32 __get_unaligned_cpu32(void const *p )
{
  struct __una_u32 const *ptr ;
  {
  ptr = (struct __una_u32 const *)p;
  return ((u32 )ptr->x);
}
}
__inline static u32 jhash(void const *key , u32 length , u32 initval )
{
  u32 a ;
  u32 b ;
  u32 c ;
  u8 const *k ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  __u32 tmp___13 ;
  __u32 tmp___14 ;
  {
  k = (u8 const *)key;
  c = (length + initval) + 3735928559U;
  b = c;
  a = b;
  goto ldv_43370;
  ldv_43369:
  tmp = __get_unaligned_cpu32((void const *)k);
  a = tmp + a;
  tmp___0 = __get_unaligned_cpu32((void const *)k + 4U);
  b = tmp___0 + b;
  tmp___1 = __get_unaligned_cpu32((void const *)k + 8U);
  c = tmp___1 + c;
  a = a - c;
  tmp___2 = rol32(c, 4U);
  a = tmp___2 ^ a;
  c = c + b;
  b = b - a;
  tmp___3 = rol32(a, 6U);
  b = tmp___3 ^ b;
  a = a + c;
  c = c - b;
  tmp___4 = rol32(b, 8U);
  c = tmp___4 ^ c;
  b = b + a;
  a = a - c;
  tmp___5 = rol32(c, 16U);
  a = tmp___5 ^ a;
  c = c + b;
  b = b - a;
  tmp___6 = rol32(a, 19U);
  b = tmp___6 ^ b;
  a = a + c;
  c = c - b;
  tmp___7 = rol32(b, 4U);
  c = tmp___7 ^ c;
  b = b + a;
  length = length - 12U;
  k = k + 12UL;
  ldv_43370: ;
  if (length > 12U) {
    goto ldv_43369;
  } else {
  }
  switch (length) {
  case 12U:
  c = ((unsigned int )*(k + 11UL) << 24) + c;
  case 11U:
  c = ((unsigned int )*(k + 10UL) << 16) + c;
  case 10U:
  c = ((unsigned int )*(k + 9UL) << 8) + c;
  case 9U:
  c = (u32 )*(k + 8UL) + c;
  case 8U:
  b = ((unsigned int )*(k + 7UL) << 24) + b;
  case 7U:
  b = ((unsigned int )*(k + 6UL) << 16) + b;
  case 6U:
  b = ((unsigned int )*(k + 5UL) << 8) + b;
  case 5U:
  b = (u32 )*(k + 4UL) + b;
  case 4U:
  a = ((unsigned int )*(k + 3UL) << 24) + a;
  case 3U:
  a = ((unsigned int )*(k + 2UL) << 16) + a;
  case 2U:
  a = ((unsigned int )*(k + 1UL) << 8) + a;
  case 1U:
  a = (u32 )*k + a;
  c = c ^ b;
  tmp___8 = rol32(b, 14U);
  c = c - tmp___8;
  a = a ^ c;
  tmp___9 = rol32(c, 11U);
  a = a - tmp___9;
  b = b ^ a;
  tmp___10 = rol32(a, 25U);
  b = b - tmp___10;
  c = c ^ b;
  tmp___11 = rol32(b, 16U);
  c = c - tmp___11;
  a = a ^ c;
  tmp___12 = rol32(c, 4U);
  a = a - tmp___12;
  b = b ^ a;
  tmp___13 = rol32(a, 14U);
  b = b - tmp___13;
  c = c ^ b;
  tmp___14 = rol32(b, 24U);
  c = c - tmp___14;
  case 0U: ;
  goto ldv_43385;
  }
  ldv_43385: ;
  return (c);
}
}
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, 0, flags, name, dev);
  return (tmp);
}
}
extern void free_irq(unsigned int , void * ) ;
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct iphdr *)tmp);
}
}
__inline static struct ipv6hdr *ipv6_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct ipv6hdr *)tmp);
}
}
__inline static struct sk_buff *vlan_insert_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                                u16 vlan_tci )
{
  struct vlan_ethhdr *veth ;
  int tmp ;
  unsigned char *tmp___0 ;
  __u16 tmp___1 ;
  {
  tmp = skb_cow_head(skb, 4U);
  if (tmp < 0) {
    kfree_skb(skb);
    return (0);
  } else {
  }
  tmp___0 = skb_push(skb, 4U);
  veth = (struct vlan_ethhdr *)tmp___0;
  memmove((void *)skb->data, (void const *)skb->data + 4U, 12UL);
  skb->mac_header = skb->mac_header - 4U;
  veth->h_vlan_proto = vlan_proto;
  tmp___1 = __fswab16((int )vlan_tci);
  veth->h_vlan_TCI = tmp___1;
  return (skb);
}
}
__inline static struct sk_buff *__vlan_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                               u16 vlan_tci )
{
  {
  skb = vlan_insert_tag(skb, (int )vlan_proto, (int )vlan_tci);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    skb->protocol = vlan_proto;
  } else {
  }
  return (skb);
}
}
__inline static struct sk_buff *__vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                                       u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return (skb);
}
}
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
__inline static char *nic_name(struct pci_dev *pdev )
{
  {
  switch ((int )pdev->device) {
  case 1792: ;
  return ((char *)"Emulex OneConnect");
  case 1808: ;
  return ((char *)"Emulex OneConnect(be3)");
  case 57888: ;
  case 57896: ;
  return ((char *)"Emulex OneConnect(Lancer)");
  case 545: ;
  return ((char *)"Emulex BladeEngine3");
  case 1824: ;
  case 1832: ;
  return ((char *)"Emulex OneConnect(Skyhawk)");
  default: ;
  return ((char *)"Emulex BladeEngine2");
  }
}
}
__inline static u32 MODULO(u16 val , u16 limit )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(((int )limit & ((int )limit + -1)) != 0, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/inst/current/envs/linux-3.10-rc1.tar/linux-3.10-rc1/drivers/net/ethernet/emulex/benet/be.h"),
                         "i" (136), "i" (12UL));
    ldv_49361: ;
    goto ldv_49361;
  } else {
  }
  return ((u32 )((int )val & ((int )limit + -1)));
}
}
__inline static void index_adv(u16 *index , u16 val , u16 limit )
{
  u32 tmp ;
  {
  tmp = MODULO((int )*index + (int )val, (int )limit);
  *index = (u16 )tmp;
  return;
}
}
__inline static void index_inc(u16 *index , u16 limit )
{
  u32 tmp ;
  {
  tmp = MODULO((int )((unsigned int )*index + 1U), (int )limit);
  *index = (u16 )tmp;
  return;
}
}
__inline static void *queue_head_node(struct be_queue_info *q )
{
  {
  return (q->dma_mem.va + (unsigned long )((int )q->head * (int )q->entry_size));
}
}
__inline static void *queue_tail_node(struct be_queue_info *q )
{
  {
  return (q->dma_mem.va + (unsigned long )((int )q->tail * (int )q->entry_size));
}
}
__inline static void queue_head_inc(struct be_queue_info *q )
{
  {
  index_inc(& q->head, (int )q->len);
  return;
}
}
__inline static void queue_tail_inc(struct be_queue_info *q )
{
  {
  index_inc(& q->tail, (int )q->len);
  return;
}
}
struct ethtool_ops const be_ethtool_ops ;
__inline static u32 amap_mask(u32 bitsize )
{
  {
  return (bitsize != 32U ? (u32 )((1 << (int )bitsize) + -1) : 4294967295U);
}
}
__inline static void amap_set(void *ptr , u32 dw_offset , u32 mask , u32 offset ,
                              u32 value )
{
  u32 *dw ;
  {
  dw = (u32 *)ptr + (unsigned long )dw_offset;
  *dw = *dw & ~ (mask << (int )offset);
  *dw = *dw | ((mask & value) << (int )offset);
  return;
}
}
__inline static u32 amap_get(void *ptr , u32 dw_offset , u32 mask , u32 offset )
{
  u32 *dw ;
  {
  dw = (u32 *)ptr;
  return ((*(dw + (unsigned long )dw_offset) >> (int )offset) & mask);
}
}
__inline static void swap_dws(void *wrb , int len )
{
  {
  return;
}
}
__inline static u8 is_tcp_pkt(struct sk_buff *skb )
{
  u8 val ;
  struct iphdr *tmp ;
  struct ipv6hdr *tmp___0 ;
  struct iphdr *tmp___1 ;
  struct iphdr *tmp___2 ;
  {
  val = 0U;
  tmp___2 = ip_hdr((struct sk_buff const *)skb);
  if ((unsigned int )*((unsigned char *)tmp___2 + 0UL) == 64U) {
    tmp = ip_hdr((struct sk_buff const *)skb);
    val = (unsigned int )tmp->protocol == 6U;
  } else {
    tmp___1 = ip_hdr((struct sk_buff const *)skb);
    if ((unsigned int )*((unsigned char *)tmp___1 + 0UL) == 96U) {
      tmp___0 = ipv6_hdr((struct sk_buff const *)skb);
      val = (unsigned int )tmp___0->nexthdr == 6U;
    } else {
    }
  }
  return (val);
}
}
__inline static u8 is_udp_pkt(struct sk_buff *skb )
{
  u8 val ;
  struct iphdr *tmp ;
  struct ipv6hdr *tmp___0 ;
  struct iphdr *tmp___1 ;
  struct iphdr *tmp___2 ;
  {
  val = 0U;
  tmp___2 = ip_hdr((struct sk_buff const *)skb);
  if ((unsigned int )*((unsigned char *)tmp___2 + 0UL) == 64U) {
    tmp = ip_hdr((struct sk_buff const *)skb);
    val = (unsigned int )tmp->protocol == 17U;
  } else {
    tmp___1 = ip_hdr((struct sk_buff const *)skb);
    if ((unsigned int )*((unsigned char *)tmp___1 + 0UL) == 96U) {
      tmp___0 = ipv6_hdr((struct sk_buff const *)skb);
      val = (unsigned int )tmp___0->nexthdr == 17U;
    } else {
    }
  }
  return (val);
}
}
__inline static bool is_ipv4_pkt(struct sk_buff *skb )
{
  struct iphdr *tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )skb->protocol == 8U) {
    tmp = ip_hdr((struct sk_buff const *)skb);
    if ((unsigned int )*((unsigned char *)tmp + 0UL) == 64U) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  return ((bool )tmp___0);
}
}
__inline static void be_vf_eth_addr_generate(struct be_adapter *adapter , u8 *mac )
{
  u32 addr ;
  size_t __len ;
  void *__ret ;
  {
  addr = jhash((void const *)(adapter->netdev)->dev_addr, 6U, 0U);
  *(mac + 5UL) = (unsigned char )addr;
  *(mac + 4UL) = (unsigned char )(addr >> 8);
  *(mac + 3UL) = (unsigned char )(addr >> 16);
  __len = 3UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)mac, (void const *)(adapter->netdev)->dev_addr, __len);
  } else {
    __ret = memcpy((void *)mac, (void const *)(adapter->netdev)->dev_addr,
                             __len);
  }
  return;
}
}
__inline static bool be_multi_rxq(struct be_adapter const *adapter )
{
  {
  return ((unsigned int )adapter->num_rx_qs > 1U);
}
}
__inline static bool be_hw_error(struct be_adapter *adapter )
{
  {
  return ((bool )((int )adapter->eeh_error || (int )adapter->hw_error));
}
}
__inline static void be_clear_all_error(struct be_adapter *adapter )
{
  {
  adapter->eeh_error = 0;
  adapter->hw_error = 0;
  adapter->fw_timeout = 0;
  return;
}
}
__inline static bool be_is_wol_excluded(struct be_adapter *adapter )
{
  struct pci_dev *pdev ;
  {
  pdev = adapter->pdev;
  if ((unsigned int )adapter->virtfn != 0U) {
    return (1);
  } else {
  }
  switch ((int )pdev->subsystem_device) {
  case 58882: ;
  case 58946: ;
  case 58898: ;
  case 58962: ;
  return (1);
  default: ;
  return (0);
  }
}
}
__inline static int qnq_async_evt_rcvd(struct be_adapter *adapter )
{
  {
  return ((int )adapter->flags & 2048);
}
}
void be_cq_notify(struct be_adapter *adapter , u16 qid , bool arm , u16 num_popped ) ;
void be_link_status_update(struct be_adapter *adapter , u8 link_status ) ;
void be_parse_stats(struct be_adapter *adapter ) ;
int be_load_fw(struct be_adapter *adapter , u8 *fw_file ) ;
bool be_is_wol_supported(struct be_adapter *adapter ) ;
bool be_pause_supported(struct be_adapter *adapter ) ;
u32 be_get_fw_log_level(struct be_adapter *adapter ) ;
void be_roce_dev_add(struct be_adapter *adapter ) ;
void be_roce_dev_remove(struct be_adapter *adapter ) ;
void be_roce_dev_open(struct be_adapter *adapter ) ;
void be_roce_dev_close(struct be_adapter *adapter ) ;
__inline static struct lancer_pport_stats *pport_stats_from_cmd(struct be_adapter *adapter )
{
  struct lancer_cmd_resp_pport_stats *cmd ;
  {
  cmd = (struct lancer_cmd_resp_pport_stats *)adapter->stats_cmd.va;
  return (& cmd->pport_stats);
}
}
int be_fw_wait_ready(struct be_adapter *adapter ) ;
int be_cmd_mac_addr_query(struct be_adapter *adapter , u8 *mac_addr , bool permanent ,
                          u32 if_handle , u32 pmac_id ) ;
int be_cmd_pmac_add(struct be_adapter *adapter , u8 *mac_addr , u32 if_id , u32 *pmac_id ,
                    u32 domain ) ;
int be_cmd_pmac_del(struct be_adapter *adapter , u32 if_id , int pmac_id , u32 dom ) ;
int be_cmd_if_create(struct be_adapter *adapter , u32 cap_flags , u32 en_flags , u32 *if_handle ,
                     u32 domain ) ;
int be_cmd_if_destroy(struct be_adapter *adapter , int interface_id , u32 domain ) ;
int be_cmd_eq_create(struct be_adapter *adapter , struct be_queue_info *eq , int eq_delay ) ;
int be_cmd_cq_create(struct be_adapter *adapter , struct be_queue_info *cq , struct be_queue_info *eq ,
                     bool no_delay , int coalesce_wm ) ;
int be_cmd_mccq_create(struct be_adapter *adapter , struct be_queue_info *mccq , struct be_queue_info *cq ) ;
int be_cmd_txq_create(struct be_adapter *adapter , struct be_tx_obj *txo ) ;
int be_cmd_rxq_create(struct be_adapter *adapter , struct be_queue_info *rxq , u16 cq_id ,
                      u16 frag_size , u32 if_id , u32 rss , u8 *rss_id ) ;
int be_cmd_q_destroy(struct be_adapter *adapter , struct be_queue_info *q , int queue_type ) ;
int be_cmd_rxq_destroy(struct be_adapter *adapter , struct be_queue_info *q ) ;
int be_cmd_link_status_query(struct be_adapter *adapter , u16 *link_speed , u8 *link_status ,
                             u32 dom ) ;
int be_cmd_get_stats(struct be_adapter *adapter , struct be_dma_mem *nonemb_cmd ) ;
int lancer_cmd_get_pport_stats(struct be_adapter *adapter , struct be_dma_mem *nonemb_cmd ) ;
int be_cmd_get_fw_ver(struct be_adapter *adapter , char *fw_ver , char *fw_on_flash ) ;
int be_cmd_modify_eqd(struct be_adapter *adapter , u32 eq_id , u32 eqd ) ;
int be_cmd_vlan_config(struct be_adapter *adapter , u32 if_id , u16 *vtag_array ,
                       u32 num , bool untagged , bool promiscuous ) ;
int be_cmd_rx_filter(struct be_adapter *adapter , u32 flags , u32 value ) ;
int be_cmd_set_flow_control(struct be_adapter *adapter , u32 tx_fc , u32 rx_fc ) ;
int be_cmd_get_flow_control(struct be_adapter *adapter , u32 *tx_fc , u32 *rx_fc ) ;
int be_cmd_query_fw_cfg(struct be_adapter *adapter , u32 *port_num , u32 *mode , u32 *caps ,
                        u16 *asic_rev ) ;
int be_cmd_reset_function(struct be_adapter *adapter ) ;
int be_cmd_rss_config(struct be_adapter *adapter , u8 *rsstable , u32 rss_hash_opts ,
                      u16 table_size ) ;
int be_process_mcc(struct be_adapter *adapter ) ;
int be_cmd_write_flashrom(struct be_adapter *adapter , struct be_dma_mem *cmd , u32 flash_type ,
                          u32 flash_opcode , u32 buf_size ) ;
int lancer_cmd_write_object(struct be_adapter *adapter , struct be_dma_mem *cmd ,
                            u32 data_size , u32 data_offset , char const *obj_name ,
                            u32 *data_written , u8 *change_status , u8 *addn_status ) ;
int be_cmd_get_flash_crc(struct be_adapter *adapter , u8 *flashed_crc , int offset ) ;
int be_cmd_enable_magic_wol(struct be_adapter *adapter , u8 *mac , struct be_dma_mem *nonemb_cmd ) ;
int be_cmd_fw_init(struct be_adapter *adapter ) ;
int be_cmd_fw_clean(struct be_adapter *adapter ) ;
void be_async_mcc_enable(struct be_adapter *adapter ) ;
void be_async_mcc_disable(struct be_adapter *adapter ) ;
int be_cmd_get_phy_info(struct be_adapter *adapter ) ;
int be_cmd_set_qos(struct be_adapter *adapter , u32 bps , u32 domain ) ;
void be_detect_error(struct be_adapter *adapter ) ;
int be_cmd_get_die_temperature(struct be_adapter *adapter ) ;
int be_cmd_get_cntl_attributes(struct be_adapter *adapter ) ;
int be_cmd_req_native_mode(struct be_adapter *adapter ) ;
int be_cmd_get_fn_privileges(struct be_adapter *adapter , u32 *privilege , u32 domain ) ;
int be_cmd_get_mac_from_list(struct be_adapter *adapter , u8 *mac , bool *pmac_id_active ,
                             u32 *pmac_id , u8 domain ) ;
int be_cmd_set_mac_list(struct be_adapter *adapter , u8 *mac_array , u8 mac_count ,
                        u32 domain ) ;
int be_cmd_set_hsw_config(struct be_adapter *adapter , u16 pvid , u32 domain , u16 intf_id ) ;
int be_cmd_get_hsw_config(struct be_adapter *adapter , u16 *pvid , u32 domain , u16 intf_id ) ;
int be_cmd_get_acpi_wol_cap(struct be_adapter *adapter ) ;
int be_cmd_get_ext_fat_capabilites(struct be_adapter *adapter , struct be_dma_mem *cmd ) ;
int lancer_test_and_set_rdy_state(struct be_adapter *adapter ) ;
int be_cmd_query_port_name(struct be_adapter *adapter , u8 *port_name ) ;
int be_cmd_get_func_config(struct be_adapter *adapter ) ;
int be_cmd_get_profile_config(struct be_adapter *adapter , u32 *cap_flags , u16 *txq_count ,
                              u8 domain ) ;
int be_cmd_set_profile_config(struct be_adapter *adapter , u32 bps , u8 domain ) ;
int be_cmd_get_if_id(struct be_adapter *adapter , struct be_vf_cfg *vf_cfg , int vf_num ) ;
int be_cmd_enable_vf(struct be_adapter *adapter , u8 domain ) ;
int be_cmd_intr_set(struct be_adapter *adapter , bool intr_enable ) ;
extern int pci_enable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_disable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_cleanup_aer_uncorrect_error_status(struct pci_dev * ) ;
struct pci_device_id const __mod_pci_device_table ;
static unsigned int num_vfs ;
static ushort rx_frag_size = 2048U;
static struct pci_device_id const be_dev_ids[9U] =
  { {6562U, 529U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {6562U, 545U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {6562U, 1792U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {6562U, 1808U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4319U, 57888U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4319U, 57896U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4319U, 1824U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4319U, 1832U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
static char const * const ue_status_low_desc[32U] =
  { "CEV", "CTX", "DBUF", "ERX",
        "Host", "MPU", "NDMA", "PTC ",
        "RDMA ", "RXF ", "RXIPS ", "RXULP0 ",
        "RXULP1 ", "RXULP2 ", "TIM ", "TPOST ",
        "TPRE ", "TXIPS ", "TXULP0 ", "TXULP1 ",
        "UC ", "WDMA ", "TXULP2 ", "HOST1 ",
        "P0_OB_LINK ", "P1_OB_LINK ", "HOST_GPIO ", "MBOX ",
        "AXGMAC0", "AXGMAC1", "JTAG", "MPU_INTPEND"};
static char const * const ue_status_hi_desc[32U] =
  { "LPCMEMHOST", "MGMT_MAC", "PCS0ONLINE", "MPU_IRAM",
        "PCS1ONLINE", "PCTL0", "PCTL1", "PMEM",
        "RR", "TXPB", "RXPP", "XAUI",
        "TXP", "ARM", "IPC", "HOST2",
        "HOST3", "HOST4", "HOST5", "HOST6",
        "HOST7", "HOST8", "HOST9", "NETC",
        "Unknown", "Unknown", "Unknown", "Unknown",
        "Unknown", "Unknown", "Unknown", "Unknown"};
__inline static bool be_is_mc(struct be_adapter *adapter )
{
  {
  return ((bool )(((adapter->function_mode & 1024U) != 0U || (adapter->function_mode & 131072U) != 0U) || (adapter->function_mode & 16777216U) != 0U));
}
}
static void be_queue_free(struct be_adapter *adapter , struct be_queue_info *q )
{
  struct be_dma_mem *mem ;
  {
  mem = & q->dma_mem;
  if ((unsigned long )mem->va != (unsigned long )((void *)0)) {
    dma_free_attrs(& (adapter->pdev)->dev, (size_t )mem->size, mem->va, mem->dma,
                   0);
    mem->va = 0;
  } else {
  }
  return;
}
}
static int be_queue_alloc(struct be_adapter *adapter , struct be_queue_info *q , u16 len ,
                          u16 entry_size )
{
  struct be_dma_mem *mem ;
  {
  mem = & q->dma_mem;
  memset((void *)q, 0, 40UL);
  q->len = len;
  q->entry_size = entry_size;
  mem->size = (u32 )((int )len * (int )entry_size);
  mem->va = dma_alloc_attrs(& (adapter->pdev)->dev, (size_t )mem->size, & mem->dma,
                            32976U, 0);
  if ((unsigned long )mem->va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static void be_reg_intr_set(struct be_adapter *adapter , bool enable )
{
  u32 reg ;
  u32 enabled ;
  {
  pci_read_config_dword((struct pci_dev const *)adapter->pdev, 252, & reg);
  enabled = reg & 536870912U;
  if (enabled == 0U && (int )enable) {
    reg = reg | 536870912U;
  } else
  if (enabled != 0U && ! enable) {
    reg = reg & 3758096383U;
  } else {
    return;
  }
  pci_write_config_dword((struct pci_dev const *)adapter->pdev, 252, reg);
  return;
}
}
static void be_intr_set(struct be_adapter *adapter , bool enable )
{
  int status ;
  {
  status = 0;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    return;
  } else {
  }
  if ((int )adapter->eeh_error) {
    return;
  } else {
  }
  status = be_cmd_intr_set(adapter, (int )enable);
  if (status != 0) {
    be_reg_intr_set(adapter, (int )enable);
  } else {
  }
  return;
}
}
static void be_rxq_notify(struct be_adapter *adapter , u16 qid , u16 posted )
{
  u32 val ;
  {
  val = 0U;
  val = ((u32 )qid & 1023U) | val;
  val = (u32 )((int )posted << 24) | val;
  __asm__ volatile ("sfence": : : "memory");
  iowrite32(val, (void *)adapter->db + 256U);
  return;
}
}
static void be_txq_notify(struct be_adapter *adapter , struct be_tx_obj *txo , u16 posted )
{
  u32 val ;
  {
  val = 0U;
  val = ((u32 )txo->q.id & 2047U) | val;
  val = (u32 )(((int )posted & 16383) << 16) | val;
  __asm__ volatile ("sfence": : : "memory");
  iowrite32(val, (void *)adapter->db + (unsigned long )txo->db_offset);
  return;
}
}
static void be_eq_notify(struct be_adapter *adapter , u16 qid , bool arm , bool clear_int ,
                         u16 num_popped )
{
  u32 val ;
  {
  val = 0U;
  val = ((u32 )qid & 511U) | val;
  val = (u32 )(((int )qid & 15872) << 2) | val;
  if ((int )adapter->eeh_error) {
    return;
  } else {
  }
  if ((int )arm) {
    val = val | 536870912U;
  } else {
  }
  if ((int )clear_int) {
    val = val | 512U;
  } else {
  }
  val = val | 1024U;
  val = (u32 )((int )num_popped << 16) | val;
  iowrite32(val, (void *)adapter->db + 288U);
  return;
}
}
void be_cq_notify(struct be_adapter *adapter , u16 qid , bool arm , u16 num_popped )
{
  u32 val ;
  {
  val = 0U;
  val = ((u32 )qid & 1023U) | val;
  val = (u32 )(((int )qid & 31744) << 1) | val;
  if ((int )adapter->eeh_error) {
    return;
  } else {
  }
  if ((int )arm) {
    val = val | 536870912U;
  } else {
  }
  val = (u32 )((int )num_popped << 16) | val;
  iowrite32(val, (void *)adapter->db + 288U);
  return;
}
}
static int be_mac_addr_set(struct net_device *netdev , void *p )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct sockaddr *addr ;
  int status ;
  u8 current_mac[6U] ;
  u32 pmac_id ;
  bool active_mac ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  addr = (struct sockaddr *)p;
  status = 0;
  pmac_id = *(adapter->pmac_id);
  active_mac = 1;
  tmp___0 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-99);
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) && (unsigned int )adapter->virtfn != 0U) {
    status = be_cmd_mac_addr_query(adapter, (u8 *)(& current_mac), 0, (u32 )adapter->if_handle,
                                   0U);
    if (status == 0) {
      tmp___2 = memcmp((void const *)(& current_mac), (void const *)(& addr->sa_data),
                       6UL);
      if (tmp___2 == 0) {
        goto done;
      } else {
        goto err;
      }
    } else {
      goto err;
    }
  } else {
  }
  tmp___3 = memcmp((void const *)(& addr->sa_data), (void const *)netdev->dev_addr,
                   6UL);
  if (tmp___3 == 0) {
    goto done;
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) && (unsigned int )adapter->virtfn != 0U) {
    be_cmd_get_mac_from_list(adapter, (u8 *)(& current_mac), & active_mac, & pmac_id,
                             0);
  } else {
  }
  status = be_cmd_pmac_add(adapter, (u8 *)(& addr->sa_data), (u32 )adapter->if_handle,
                           adapter->pmac_id, 0U);
  if (status != 0) {
    goto err;
  } else {
  }
  if ((int )active_mac) {
    be_cmd_pmac_del(adapter, (u32 )adapter->if_handle, (int )pmac_id, 0U);
  } else {
  }
  done:
  __len = (size_t )netdev->addr_len;
  __ret = memcpy((void *)netdev->dev_addr, (void const *)(& addr->sa_data),
                           __len);
  return (0);
  err:
  dev_err((struct device const *)(& (adapter->pdev)->dev), "MAC %pM set Failed\n",
          (char *)(& addr->sa_data));
  return (status);
}
}
static void *hw_stats_from_cmd(struct be_adapter *adapter )
{
  struct be_cmd_resp_get_stats_v0 *cmd ;
  struct be_cmd_resp_get_stats_v1 *cmd___0 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
    cmd = (struct be_cmd_resp_get_stats_v0 *)adapter->stats_cmd.va;
    return ((void *)(& cmd->hw_stats));
  } else {
    cmd___0 = (struct be_cmd_resp_get_stats_v1 *)adapter->stats_cmd.va;
    return ((void *)(& cmd___0->hw_stats));
  }
}
}
static void *be_erx_stats_from_cmd(struct be_adapter *adapter )
{
  struct be_hw_stats_v0 *hw_stats ;
  void *tmp ;
  struct be_hw_stats_v1 *hw_stats___0 ;
  void *tmp___0 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
    tmp = hw_stats_from_cmd(adapter);
    hw_stats = (struct be_hw_stats_v0 *)tmp;
    return ((void *)(& hw_stats->erx));
  } else {
    tmp___0 = hw_stats_from_cmd(adapter);
    hw_stats___0 = (struct be_hw_stats_v1 *)tmp___0;
    return ((void *)(& hw_stats___0->erx));
  }
}
}
static void populate_be_v0_stats(struct be_adapter *adapter )
{
  struct be_hw_stats_v0 *hw_stats ;
  void *tmp ;
  struct be_pmem_stats *pmem_sts ;
  struct be_rxf_stats_v0 *rxf_stats ;
  struct be_port_rxf_stats_v0 *port_stats ;
  struct be_drv_stats *drvs ;
  {
  tmp = hw_stats_from_cmd(adapter);
  hw_stats = (struct be_hw_stats_v0 *)tmp;
  pmem_sts = & hw_stats->pmem;
  rxf_stats = & hw_stats->rxf;
  port_stats = (struct be_port_rxf_stats_v0 *)(& rxf_stats->port) + (unsigned long )adapter->port_num;
  drvs = & adapter->drv_stats;
  swap_dws((void *)hw_stats, 1060);
  drvs->rx_pause_frames = port_stats->rx_pause_frames;
  drvs->rx_crc_errors = port_stats->rx_crc_errors;
  drvs->rx_control_frames = port_stats->rx_control_frames;
  drvs->rx_in_range_errors = port_stats->rx_in_range_errors;
  drvs->rx_frame_too_long = port_stats->rx_frame_too_long;
  drvs->rx_dropped_runt = port_stats->rx_dropped_runt;
  drvs->rx_ip_checksum_errs = port_stats->rx_ip_checksum_errs;
  drvs->rx_tcp_checksum_errs = port_stats->rx_tcp_checksum_errs;
  drvs->rx_udp_checksum_errs = port_stats->rx_udp_checksum_errs;
  drvs->rxpp_fifo_overflow_drop = port_stats->rx_fifo_overflow;
  drvs->rx_dropped_tcp_length = port_stats->rx_dropped_tcp_length;
  drvs->rx_dropped_too_small = port_stats->rx_dropped_too_small;
  drvs->rx_dropped_too_short = port_stats->rx_dropped_too_short;
  drvs->rx_out_range_errors = port_stats->rx_out_range_errors;
  drvs->rx_input_fifo_overflow_drop = port_stats->rx_input_fifo_overflow;
  drvs->rx_dropped_header_too_small = port_stats->rx_dropped_header_too_small;
  drvs->rx_address_filtered = port_stats->rx_address_filtered + port_stats->rx_vlan_filtered;
  drvs->rx_alignment_symbol_errors = port_stats->rx_alignment_symbol_errors;
  drvs->tx_pauseframes = port_stats->tx_pauseframes;
  drvs->tx_controlframes = port_stats->tx_controlframes;
  if (adapter->port_num != 0U) {
    drvs->jabber_events = rxf_stats->port1_jabber_events;
  } else {
    drvs->jabber_events = rxf_stats->port0_jabber_events;
  }
  drvs->rx_drops_no_pbuf = rxf_stats->rx_drops_no_pbuf;
  drvs->rx_drops_no_erx_descr = rxf_stats->rx_drops_no_erx_descr;
  drvs->forwarded_packets = rxf_stats->forwarded_packets;
  drvs->rx_drops_mtu = rxf_stats->rx_drops_mtu;
  drvs->rx_drops_no_tpre_descr = rxf_stats->rx_drops_no_tpre_descr;
  drvs->rx_drops_too_many_frags = rxf_stats->rx_drops_too_many_frags;
  adapter->drv_stats.eth_red_drops = pmem_sts->eth_red_drops;
  return;
}
}
static void populate_be_v1_stats(struct be_adapter *adapter )
{
  struct be_hw_stats_v1 *hw_stats ;
  void *tmp ;
  struct be_pmem_stats *pmem_sts ;
  struct be_rxf_stats_v1 *rxf_stats ;
  struct be_port_rxf_stats_v1 *port_stats ;
  struct be_drv_stats *drvs ;
  {
  tmp = hw_stats_from_cmd(adapter);
  hw_stats = (struct be_hw_stats_v1 *)tmp;
  pmem_sts = & hw_stats->pmem;
  rxf_stats = & hw_stats->rxf;
  port_stats = (struct be_port_rxf_stats_v1 *)(& rxf_stats->port) + (unsigned long )adapter->port_num;
  drvs = & adapter->drv_stats;
  swap_dws((void *)hw_stats, 1848);
  drvs->pmem_fifo_overflow_drop = port_stats->pmem_fifo_overflow_drop;
  drvs->rx_priority_pause_frames = port_stats->rx_priority_pause_frames;
  drvs->rx_pause_frames = port_stats->rx_pause_frames;
  drvs->rx_crc_errors = port_stats->rx_crc_errors;
  drvs->rx_control_frames = port_stats->rx_control_frames;
  drvs->rx_in_range_errors = port_stats->rx_in_range_errors;
  drvs->rx_frame_too_long = port_stats->rx_frame_too_long;
  drvs->rx_dropped_runt = port_stats->rx_dropped_runt;
  drvs->rx_ip_checksum_errs = port_stats->rx_ip_checksum_errs;
  drvs->rx_tcp_checksum_errs = port_stats->rx_tcp_checksum_errs;
  drvs->rx_udp_checksum_errs = port_stats->rx_udp_checksum_errs;
  drvs->rx_dropped_tcp_length = port_stats->rx_dropped_tcp_length;
  drvs->rx_dropped_too_small = port_stats->rx_dropped_too_small;
  drvs->rx_dropped_too_short = port_stats->rx_dropped_too_short;
  drvs->rx_out_range_errors = port_stats->rx_out_range_errors;
  drvs->rx_dropped_header_too_small = port_stats->rx_dropped_header_too_small;
  drvs->rx_input_fifo_overflow_drop = port_stats->rx_input_fifo_overflow_drop;
  drvs->rx_address_filtered = port_stats->rx_address_filtered;
  drvs->rx_alignment_symbol_errors = port_stats->rx_alignment_symbol_errors;
  drvs->rxpp_fifo_overflow_drop = port_stats->rxpp_fifo_overflow_drop;
  drvs->tx_pauseframes = port_stats->tx_pauseframes;
  drvs->tx_controlframes = port_stats->tx_controlframes;
  drvs->tx_priority_pauseframes = port_stats->tx_priority_pauseframes;
  drvs->jabber_events = port_stats->jabber_events;
  drvs->rx_drops_no_pbuf = rxf_stats->rx_drops_no_pbuf;
  drvs->rx_drops_no_erx_descr = rxf_stats->rx_drops_no_erx_descr;
  drvs->forwarded_packets = rxf_stats->forwarded_packets;
  drvs->rx_drops_mtu = rxf_stats->rx_drops_mtu;
  drvs->rx_drops_no_tpre_descr = rxf_stats->rx_drops_no_tpre_descr;
  drvs->rx_drops_too_many_frags = rxf_stats->rx_drops_too_many_frags;
  adapter->drv_stats.eth_red_drops = pmem_sts->eth_red_drops;
  return;
}
}
static void populate_lancer_stats(struct be_adapter *adapter )
{
  struct be_drv_stats *drvs ;
  struct lancer_pport_stats *pport_stats ;
  struct lancer_pport_stats *tmp ;
  {
  drvs = & adapter->drv_stats;
  tmp = pport_stats_from_cmd(adapter);
  pport_stats = tmp;
  swap_dws((void *)pport_stats, 656);
  drvs->rx_pause_frames = pport_stats->rx_pause_frames_lo;
  drvs->rx_crc_errors = pport_stats->rx_crc_errors_lo;
  drvs->rx_control_frames = pport_stats->rx_control_frames_lo;
  drvs->rx_in_range_errors = pport_stats->rx_in_range_errors;
  drvs->rx_frame_too_long = pport_stats->rx_frames_too_long_lo;
  drvs->rx_dropped_runt = pport_stats->rx_dropped_runt;
  drvs->rx_ip_checksum_errs = pport_stats->rx_ip_checksum_errors;
  drvs->rx_tcp_checksum_errs = pport_stats->rx_tcp_checksum_errors;
  drvs->rx_udp_checksum_errs = pport_stats->rx_udp_checksum_errors;
  drvs->rx_dropped_tcp_length = pport_stats->rx_dropped_invalid_tcp_length;
  drvs->rx_dropped_too_small = pport_stats->rx_dropped_too_small;
  drvs->rx_dropped_too_short = pport_stats->rx_dropped_too_short;
  drvs->rx_out_range_errors = pport_stats->rx_out_of_range_errors;
  drvs->rx_dropped_header_too_small = pport_stats->rx_dropped_header_too_small;
  drvs->rx_input_fifo_overflow_drop = pport_stats->rx_fifo_overflow;
  drvs->rx_address_filtered = pport_stats->rx_address_filtered + pport_stats->rx_vlan_filtered;
  drvs->rx_alignment_symbol_errors = pport_stats->rx_symbol_errors_lo;
  drvs->rxpp_fifo_overflow_drop = pport_stats->rx_fifo_overflow;
  drvs->tx_pauseframes = pport_stats->tx_pause_frames_lo;
  drvs->tx_controlframes = pport_stats->tx_control_frames_lo;
  drvs->jabber_events = pport_stats->rx_jabbers;
  drvs->forwarded_packets = pport_stats->num_forwards_lo;
  drvs->rx_drops_mtu = pport_stats->rx_drops_mtu_lo;
  drvs->rx_drops_too_many_frags = pport_stats->rx_drops_too_many_frags_lo;
  return;
}
}
static void accumulate_16bit_val(u32 *acc , u16 val )
{
  bool wrapped ;
  u32 newacc ;
  {
  wrapped = (u32 )val < (*acc & 65535U);
  newacc = (*acc & 4294901760U) + (u32 )val;
  if ((int )wrapped) {
    newacc = newacc + 65536U;
  } else {
  }
  *((u32 volatile *)acc) = newacc;
  return;
}
}
void populate_erx_stats(struct be_adapter *adapter , struct be_rx_obj *rxo , u32 erx_stat )
{
  {
  if (((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) {
    rxo->stats.rx_drops_no_frags = erx_stat;
  } else {
    accumulate_16bit_val(& rxo->stats.rx_drops_no_frags, (int )((unsigned short )erx_stat));
  }
  return;
}
}
void be_parse_stats(struct be_adapter *adapter )
{
  struct be_erx_stats_v1 *erx ;
  void *tmp ;
  struct be_rx_obj *rxo ;
  int i ;
  u32 erx_stat ;
  {
  tmp = be_erx_stats_from_cmd(adapter);
  erx = (struct be_erx_stats_v1 *)tmp;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    populate_lancer_stats(adapter);
  } else {
    if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
      populate_be_v0_stats(adapter);
    } else {
      populate_be_v1_stats(adapter);
    }
    i = 0;
    rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
    goto ldv_51361;
    ldv_51360:
    erx_stat = erx->rx_drops_no_fragments[(int )rxo->q.id];
    populate_erx_stats(adapter, rxo, erx_stat);
    i = i + 1;
    rxo = rxo + 1;
    ldv_51361: ;
    if ((u32 )i < adapter->num_rx_qs) {
      goto ldv_51360;
    } else {
    }
  }
  return;
}
}
static struct rtnl_link_stats64 *be_get_stats64(struct net_device *netdev , struct rtnl_link_stats64 *stats )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_drv_stats *drvs ;
  struct be_rx_obj *rxo ;
  struct be_tx_obj *txo ;
  u64 pkts ;
  u64 bytes ;
  unsigned int start ;
  int i ;
  struct be_rx_stats const *rx_stats ;
  bool tmp___0 ;
  struct be_tx_stats const *tx_stats ;
  bool tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  drvs = & adapter->drv_stats;
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_51379;
  ldv_51378:
  rx_stats = (struct be_rx_stats const *)(& rxo->stats);
  ldv_51376:
  start = u64_stats_fetch_begin_bh(& rx_stats->sync);
  pkts = rxo->stats.rx_pkts;
  bytes = rxo->stats.rx_bytes;
  tmp___0 = u64_stats_fetch_retry_bh(& rx_stats->sync, start);
  if ((int )tmp___0) {
    goto ldv_51376;
  } else {
  }
  stats->rx_packets = stats->rx_packets + pkts;
  stats->rx_bytes = stats->rx_bytes + bytes;
  stats->multicast = stats->multicast + (__u64 )rxo->stats.rx_mcast_pkts;
  stats->rx_dropped = stats->rx_dropped + (__u64 )(rxo->stats.rx_drops_no_skbs + rxo->stats.rx_drops_no_frags);
  i = i + 1;
  rxo = rxo + 1;
  ldv_51379: ;
  if ((u32 )i < adapter->num_rx_qs) {
    goto ldv_51378;
  } else {
  }
  i = 0;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_51385;
  ldv_51384:
  tx_stats = (struct be_tx_stats const *)(& txo->stats);
  ldv_51382:
  start = u64_stats_fetch_begin_bh(& tx_stats->sync);
  pkts = txo->stats.tx_pkts;
  bytes = txo->stats.tx_bytes;
  tmp___1 = u64_stats_fetch_retry_bh(& tx_stats->sync, start);
  if ((int )tmp___1) {
    goto ldv_51382;
  } else {
  }
  stats->tx_packets = stats->tx_packets + pkts;
  stats->tx_bytes = stats->tx_bytes + bytes;
  i = i + 1;
  txo = txo + 1;
  ldv_51385: ;
  if ((u32 )i < adapter->num_tx_qs) {
    goto ldv_51384;
  } else {
  }
  stats->rx_errors = (__u64 )(((((((((drvs->rx_crc_errors + drvs->rx_alignment_symbol_errors) + drvs->rx_in_range_errors) + drvs->rx_out_range_errors) + drvs->rx_frame_too_long) + drvs->rx_dropped_too_small) + drvs->rx_dropped_too_short) + drvs->rx_dropped_header_too_small) + drvs->rx_dropped_tcp_length) + drvs->rx_dropped_runt);
  stats->rx_length_errors = (__u64 )((drvs->rx_in_range_errors + drvs->rx_out_range_errors) + drvs->rx_frame_too_long);
  stats->rx_crc_errors = (__u64 )drvs->rx_crc_errors;
  stats->rx_frame_errors = (__u64 )drvs->rx_alignment_symbol_errors;
  stats->rx_fifo_errors = (__u64 )((drvs->rxpp_fifo_overflow_drop + drvs->rx_input_fifo_overflow_drop) + drvs->rx_drops_no_pbuf);
  return (stats);
}
}
void be_link_status_update(struct be_adapter *adapter , u8 link_status )
{
  struct net_device *netdev ;
  {
  netdev = adapter->netdev;
  if ((adapter->flags & 1U) == 0U) {
    netif_carrier_off(netdev);
    adapter->flags = adapter->flags | 1U;
  } else {
  }
  if ((int )link_status & 1) {
    netif_carrier_on(netdev);
  } else {
    netif_carrier_off(netdev);
  }
  return;
}
}
static void be_tx_stats_update(struct be_tx_obj *txo , u32 wrb_cnt , u32 copied ,
                               u32 gso_segs , bool stopped )
{
  struct be_tx_stats *stats ;
  {
  stats = & txo->stats;
  u64_stats_update_begin(& stats->sync);
  stats->tx_reqs = stats->tx_reqs + 1ULL;
  stats->tx_wrbs = stats->tx_wrbs + (u64 )wrb_cnt;
  stats->tx_bytes = stats->tx_bytes + (u64 )copied;
  stats->tx_pkts = stats->tx_pkts + (gso_segs != 0U ? (u64 )gso_segs : 1ULL);
  if ((int )stopped) {
    stats->tx_stops = stats->tx_stops + 1U;
  } else {
  }
  u64_stats_update_begin(& stats->sync);
  return;
}
}
static u32 wrb_cnt_for_skb(struct be_adapter *adapter , struct sk_buff *skb , bool *dummy )
{
  int cnt ;
  unsigned char *tmp ;
  long tmp___0 ;
  {
  cnt = skb->len > skb->data_len;
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  cnt = (int )((struct skb_shared_info *)tmp)->nr_frags + cnt;
  cnt = cnt + 1;
  if (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) || (cnt & 1) == 0) {
    *dummy = 0;
  } else {
    cnt = cnt + 1;
    *dummy = 1;
  }
  tmp___0 = ldv__builtin_expect(cnt > 30, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8517/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/emulex/benet/be_main.c.prepared"),
                         "i" (666), "i" (12UL));
    ldv_51406: ;
    goto ldv_51406;
  } else {
  }
  return ((u32 )cnt);
}
}
__inline static void wrb_fill(struct be_eth_wrb *wrb , u64 addr , int len )
{
  {
  wrb->frag_pa_hi = (unsigned int )(addr >> 32ULL);
  wrb->frag_pa_lo = (u32 )addr;
  wrb->frag_len = (u32 )len & 65535U;
  wrb->rsvd0 = 0U;
  return;
}
}
__inline static u16 be_get_tx_vlan_tag(struct be_adapter *adapter , struct sk_buff *skb )
{
  u8 vlan_prio ;
  u16 vlan_tag ;
  {
  vlan_tag = (unsigned int )skb->vlan_tci & 61439U;
  vlan_prio = (u8 )((int )vlan_tag >> 13);
  if ((((int )adapter->vlan_prio_bmap >> (int )vlan_prio) & 1) == 0) {
    vlan_tag = (u16 )(((int )((short )vlan_tag) & 8191) | (int )((short )adapter->recommended_prio));
  } else {
  }
  return (vlan_tag);
}
}
static void wrb_fill_hdr(struct be_adapter *adapter , struct be_eth_hdr_wrb *hdr ,
                         struct sk_buff *skb , u32 wrb_cnt , u32 len , bool skip_hw_vlan )
{
  u16 vlan_tag ;
  u32 tmp ;
  u32 tmp___0 ;
  unsigned char *tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  bool tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u8 tmp___7 ;
  u8 tmp___8 ;
  bool tmp___9 ;
  u32 tmp___10 ;
  u32 tmp___11 ;
  u32 tmp___12 ;
  u32 tmp___13 ;
  u32 tmp___14 ;
  u32 tmp___15 ;
  {
  memset((void *)hdr, 0, 16UL);
  tmp = amap_mask(1U);
  amap_set((void *)hdr, 2U, tmp, 2U, 1U);
  tmp___9 = skb_is_gso((struct sk_buff const *)skb);
  if ((int )tmp___9) {
    tmp___0 = amap_mask(1U);
    amap_set((void *)hdr, 2U, tmp___0, 9U, 1U);
    tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
    tmp___2 = amap_mask(14U);
    amap_set((void *)hdr, 2U, tmp___2, 18U, (u32 )((struct skb_shared_info *)tmp___1)->gso_size);
    tmp___4 = skb_is_gso_v6((struct sk_buff const *)skb);
    if ((int )tmp___4 && ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U)) {
      tmp___3 = amap_mask(1U);
      amap_set((void *)hdr, 2U, tmp___3, 4U, 1U);
    } else {
    }
  } else
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
    tmp___8 = is_tcp_pkt(skb);
    if ((unsigned int )tmp___8 != 0U) {
      tmp___5 = amap_mask(1U);
      amap_set((void *)hdr, 2U, tmp___5, 8U, 1U);
    } else {
      tmp___7 = is_udp_pkt(skb);
      if ((unsigned int )tmp___7 != 0U) {
        tmp___6 = amap_mask(1U);
        amap_set((void *)hdr, 2U, tmp___6, 7U, 1U);
      } else {
      }
    }
  } else {
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    tmp___10 = amap_mask(1U);
    amap_set((void *)hdr, 2U, tmp___10, 10U, 1U);
    vlan_tag = be_get_tx_vlan_tag(adapter, skb);
    tmp___11 = amap_mask(16U);
    amap_set((void *)hdr, 3U, tmp___11, 16U, (u32 )vlan_tag);
  } else {
  }
  tmp___12 = amap_mask(1U);
  amap_set((void *)hdr, 2U, tmp___12, 0U, (u32 )(! skip_hw_vlan));
  tmp___13 = amap_mask(1U);
  amap_set((void *)hdr, 2U, tmp___13, 1U, 1U);
  tmp___14 = amap_mask(5U);
  amap_set((void *)hdr, 2U, tmp___14, 13U, wrb_cnt);
  tmp___15 = amap_mask(16U);
  amap_set((void *)hdr, 3U, tmp___15, 0U, len);
  return;
}
}
static void unmap_tx_frag(struct device *dev , struct be_eth_wrb *wrb , bool unmap_single )
{
  dma_addr_t dma ;
  {
  swap_dws((void *)wrb, 16);
  dma = ((unsigned long long )wrb->frag_pa_hi << 32) | (unsigned long long )wrb->frag_pa_lo;
  if (wrb->frag_len != 0U) {
    if ((int )unmap_single) {
      dma_unmap_single_attrs(dev, dma, (size_t )wrb->frag_len, 1, 0);
    } else {
      dma_unmap_page(dev, dma, (size_t )wrb->frag_len, 1);
    }
  } else {
  }
  return;
}
}
static int make_tx_wrbs(struct be_adapter *adapter , struct be_queue_info *txq , struct sk_buff *skb ,
                        u32 wrb_cnt , bool dummy_wrb , bool skip_hw_vlan )
{
  dma_addr_t busaddr ;
  int i ;
  int copied ;
  struct device *dev ;
  struct sk_buff *first_skb ;
  struct be_eth_wrb *wrb ;
  struct be_eth_hdr_wrb *hdr ;
  bool map_single ;
  u16 map_head ;
  void *tmp ;
  int len ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  struct skb_frag_struct const *frag ;
  unsigned char *tmp___3 ;
  unsigned int tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  unsigned char *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  {
  copied = 0;
  dev = & (adapter->pdev)->dev;
  first_skb = skb;
  map_single = 0;
  tmp = queue_head_node(txq);
  hdr = (struct be_eth_hdr_wrb *)tmp;
  queue_head_inc(txq);
  map_head = txq->head;
  if (skb->len > skb->data_len) {
    tmp___0 = skb_headlen((struct sk_buff const *)skb);
    len = (int )tmp___0;
    busaddr = dma_map_single_attrs(dev, (void *)skb->data, (size_t )len, 1, 0);
    tmp___1 = dma_mapping_error(dev, busaddr);
    if (tmp___1 != 0) {
      goto dma_err;
    } else {
    }
    map_single = 1;
    tmp___2 = queue_head_node(txq);
    wrb = (struct be_eth_wrb *)tmp___2;
    wrb_fill(wrb, busaddr, len);
    swap_dws((void *)wrb, 16);
    queue_head_inc(txq);
    copied = copied + len;
  } else {
  }
  i = 0;
  goto ldv_51454;
  ldv_51453:
  tmp___3 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (struct skb_frag_struct const *)(& ((struct skb_shared_info *)tmp___3)->frags) + (unsigned long )i;
  tmp___4 = skb_frag_size(frag);
  busaddr = skb_frag_dma_map(dev, frag, 0UL, (size_t )tmp___4, 1);
  tmp___5 = dma_mapping_error(dev, busaddr);
  if (tmp___5 != 0) {
    goto dma_err;
  } else {
  }
  tmp___6 = queue_head_node(txq);
  wrb = (struct be_eth_wrb *)tmp___6;
  tmp___7 = skb_frag_size(frag);
  wrb_fill(wrb, busaddr, (int )tmp___7);
  swap_dws((void *)wrb, 16);
  queue_head_inc(txq);
  tmp___8 = skb_frag_size(frag);
  copied = (int )(tmp___8 + (unsigned int )copied);
  i = i + 1;
  ldv_51454:
  tmp___9 = skb_end_pointer((struct sk_buff const *)skb);
  if ((int )((struct skb_shared_info *)tmp___9)->nr_frags > i) {
    goto ldv_51453;
  } else {
  }
  if ((int )dummy_wrb) {
    tmp___10 = queue_head_node(txq);
    wrb = (struct be_eth_wrb *)tmp___10;
    wrb_fill(wrb, 0ULL, 0);
    swap_dws((void *)wrb, 16);
    queue_head_inc(txq);
  } else {
  }
  wrb_fill_hdr(adapter, hdr, first_skb, wrb_cnt, (u32 )copied, (int )skip_hw_vlan);
  swap_dws((void *)hdr, 16);
  return (copied);
  dma_err:
  txq->head = map_head;
  goto ldv_51457;
  ldv_51456:
  tmp___11 = queue_head_node(txq);
  wrb = (struct be_eth_wrb *)tmp___11;
  unmap_tx_frag(dev, wrb, (int )map_single);
  map_single = 0;
  copied = (int )((u32 )copied - wrb->frag_len);
  queue_head_inc(txq);
  ldv_51457: ;
  if (copied != 0) {
    goto ldv_51456;
  } else {
  }
  return (0);
}
}
static struct sk_buff *be_insert_vlan_in_pkt(struct be_adapter *adapter , struct sk_buff *skb ,
                                             bool *skip_hw_vlan )
{
  u16 vlan_tag ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  vlan_tag = 0U;
  skb = skb_share_check(skb, 32U);
  tmp = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                         0L);
  if (tmp != 0L) {
    return (skb);
  } else {
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    vlan_tag = be_get_tx_vlan_tag(adapter, skb);
    skb = __vlan_put_tag(skb, 129, (int )vlan_tag);
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      skb->vlan_tci = 0U;
    } else {
    }
  } else {
  }
  tmp___0 = qnq_async_evt_rcvd(adapter);
  if (tmp___0 != 0 && (unsigned int )adapter->pvid != 0U) {
    if ((unsigned int )vlan_tag == 0U) {
      vlan_tag = adapter->pvid;
    } else {
    }
    if ((unsigned long )skip_hw_vlan != (unsigned long )((bool *)0)) {
      *skip_hw_vlan = 1;
    } else {
    }
  } else {
  }
  if ((unsigned int )vlan_tag != 0U) {
    skb = __vlan_put_tag(skb, 129, (int )vlan_tag);
    tmp___1 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                               0L);
    if (tmp___1 != 0L) {
      return (skb);
    } else {
    }
    skb->vlan_tci = 0U;
  } else {
  }
  if ((unsigned int )adapter->qnq_vid != 0U) {
    vlan_tag = adapter->qnq_vid;
    skb = __vlan_put_tag(skb, 129, (int )vlan_tag);
    tmp___2 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                               0L);
    if (tmp___2 != 0L) {
      return (skb);
    } else {
    }
    if ((unsigned long )skip_hw_vlan != (unsigned long )((bool *)0)) {
      *skip_hw_vlan = 1;
    } else {
    }
  } else {
  }
  return (skb);
}
}
static bool be_ipv6_exthdr_check(struct sk_buff *skb )
{
  struct ethhdr *eh ;
  u16 offset ;
  struct ipv6hdr *ip6h ;
  struct ipv6_opt_hdr *ehdr ;
  {
  eh = (struct ethhdr *)skb->data;
  offset = 14U;
  if ((unsigned int )eh->h_proto == 56710U) {
    ip6h = (struct ipv6hdr *)skb->data + (unsigned long )offset;
    offset = (unsigned int )offset + 40U;
    if ((unsigned int )ip6h->nexthdr != 6U && (unsigned int )ip6h->nexthdr != 17U) {
      ehdr = (struct ipv6_opt_hdr *)skb->data + (unsigned long )offset;
      if ((unsigned int )ehdr->hdrlen == 255U) {
        return (1);
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int be_vlan_tag_tx_chk(struct be_adapter *adapter , struct sk_buff *skb )
{
  {
  return ((((int )skb->vlan_tci & 4096) != 0 || (unsigned int )adapter->pvid != 0U) || (unsigned int )adapter->qnq_vid != 0U);
}
}
static int be_ipv6_tx_stall_chk(struct be_adapter *adapter , struct sk_buff *skb )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) {
    tmp = be_ipv6_exthdr_check(skb);
    if ((int )tmp) {
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
static netdev_tx_t be_xmit(struct sk_buff *skb , struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_tx_obj *txo ;
  u16 tmp___0 ;
  struct be_queue_info *txq ;
  struct iphdr *ip ;
  u32 wrb_cnt ;
  u32 copied ;
  u32 start ;
  u32 eth_hdr_len ;
  bool dummy_wrb ;
  bool stopped ;
  bool skip_hw_vlan ;
  struct vlan_ethhdr *veh ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  bool tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int gso_segs ;
  unsigned char *tmp___17 ;
  long tmp___18 ;
  u16 tmp___19 ;
  int tmp___20 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  tmp___0 = skb_get_queue_mapping((struct sk_buff const *)skb);
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )tmp___0;
  txq = & txo->q;
  ip = 0;
  wrb_cnt = 0U;
  copied = 0U;
  start = (u32 )txq->head;
  stopped = 0;
  skip_hw_vlan = 0;
  veh = (struct vlan_ethhdr *)skb->data;
  tmp___1 = __fswab16((int )skb->protocol);
  eth_hdr_len = (unsigned int )tmp___1 == 33024U ? 18U : 14U;
  if (skb->len <= 60U && ((int )skb->vlan_tci & 4096) != 0) {
    tmp___3 = is_ipv4_pkt(skb);
    if ((int )tmp___3) {
      ip = ip_hdr((struct sk_buff const *)skb);
      tmp___2 = __fswab16((int )ip->tot_len);
      pskb_trim(skb, (u32 )tmp___2 + eth_hdr_len);
    } else {
    }
  } else {
  }
  if ((adapter->function_mode & 16777216U) != 0U && (unsigned int )veh->h_vlan_proto == 129U) {
    skip_hw_vlan = 1;
  } else {
  }
  if ((unsigned int )*((unsigned char *)skb + 124UL) != 12U && ((int )skb->vlan_tci & 4096) != 0) {
    skb = be_insert_vlan_in_pkt(adapter, skb, & skip_hw_vlan);
    tmp___4 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                               0L);
    if (tmp___4 != 0L) {
      goto tx_drop;
    } else {
    }
  } else {
  }
  tmp___5 = be_ipv6_tx_stall_chk(adapter, skb);
  tmp___6 = ldv__builtin_expect(tmp___5 != 0, 0L);
  if (tmp___6 != 0L) {
    tmp___7 = ldv__builtin_expect((unsigned int )adapter->pvid != 0U, 0L);
    if (tmp___7 != 0L) {
      tmp___9 = 1;
    } else {
      tmp___8 = ldv__builtin_expect((unsigned int )adapter->qnq_vid != 0U, 0L);
      if (tmp___8 != 0L) {
        tmp___9 = 1;
      } else {
        tmp___9 = 0;
      }
    }
    if (tmp___9 != 0) {
      tmp___10 = 1;
    } else {
      tmp___10 = 0;
    }
  } else {
    tmp___10 = 0;
  }
  if (tmp___10 != 0) {
    tmp___11 = qnq_async_evt_rcvd(adapter);
    tmp___12 = ldv__builtin_expect(tmp___11 == 0, 0L);
    if (tmp___12 != 0L) {
      goto tx_drop;
    } else {
    }
  } else {
  }
  tmp___14 = be_ipv6_tx_stall_chk(adapter, skb);
  if (tmp___14 != 0) {
    tmp___15 = be_vlan_tag_tx_chk(adapter, skb);
    if (tmp___15 != 0) {
      skb = be_insert_vlan_in_pkt(adapter, skb, & skip_hw_vlan);
      tmp___13 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                                  0L);
      if (tmp___13 != 0L) {
        goto tx_drop;
      } else {
      }
    } else {
    }
  } else {
  }
  wrb_cnt = wrb_cnt_for_skb(adapter, skb, & dummy_wrb);
  tmp___16 = make_tx_wrbs(adapter, txq, skb, wrb_cnt, (int )dummy_wrb, (int )skip_hw_vlan);
  copied = (u32 )tmp___16;
  if (copied != 0U) {
    tmp___17 = skb_end_pointer((struct sk_buff const *)skb);
    gso_segs = (int )((struct skb_shared_info *)tmp___17)->gso_segs;
    tmp___18 = ldv__builtin_expect((unsigned long )txo->sent_skb_list[start] != (unsigned long )((struct sk_buff *)0),
                                0L);
    if (tmp___18 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8517/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/emulex/benet/be_main.c.prepared"),
                           "i" (963), "i" (12UL));
      ldv_51498: ;
      goto ldv_51498;
    } else {
    }
    txo->sent_skb_list[start] = skb;
    atomic_add((int )wrb_cnt, & txq->used);
    tmp___20 = atomic_read((atomic_t const *)(& txq->used));
    if (tmp___20 + 30 >= (int )txq->len) {
      tmp___19 = skb_get_queue_mapping((struct sk_buff const *)skb);
      netif_stop_subqueue(netdev, (int )tmp___19);
      stopped = 1;
    } else {
    }
    be_txq_notify(adapter, txo, (int )((u16 )wrb_cnt));
    be_tx_stats_update(txo, wrb_cnt, copied, (u32 )gso_segs, (int )stopped);
  } else {
    txq->head = (u16 )start;
    dev_kfree_skb_any(skb);
  }
  tx_drop: ;
  return (0);
}
}
static int be_change_mtu(struct net_device *netdev , int new_mtu )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if (new_mtu <= 255 || new_mtu > 9000) {
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "MTU must be between %d and %d bytes\n",
              256, 9000);
    return (-22);
  } else {
  }
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "MTU changed from %d to %d bytes\n",
            netdev->mtu, new_mtu);
  netdev->mtu = (unsigned int )new_mtu;
  return (0);
}
}
static int be_vid_config(struct be_adapter *adapter )
{
  u16 vids[64U] ;
  u16 num ;
  u16 i ;
  int status ;
  u16 tmp ;
  {
  num = 0U;
  status = 0;
  if ((int )adapter->promiscuous) {
    return (0);
  } else {
  }
  if ((int )adapter->vlans_added > (int )adapter->max_vlans) {
    goto set_vlan_promisc;
  } else {
  }
  i = 0U;
  goto ldv_51513;
  ldv_51512: ;
  if ((unsigned int )adapter->vlan_tag[(int )i] != 0U) {
    tmp = num;
    num = (u16 )((int )num + 1);
    vids[(int )tmp] = i;
  } else {
  }
  i = (u16 )((int )i + 1);
  ldv_51513: ;
  if ((unsigned int )i <= 4095U) {
    goto ldv_51512;
  } else {
  }
  status = be_cmd_vlan_config(adapter, (u32 )adapter->if_handle, (u16 *)(& vids),
                              (u32 )num, 1, 0);
  if (status != 0) {
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "Exhausted VLAN HW filters.\n");
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "Disabling HW VLAN filtering.\n");
    goto set_vlan_promisc;
  } else {
  }
  return (status);
  set_vlan_promisc:
  status = be_cmd_vlan_config(adapter, (u32 )adapter->if_handle, 0, 0U, 1, 1);
  return (status);
}
}
static int be_vlan_add_vid(struct net_device *netdev , __be16 proto , u16 vid )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  status = 0;
  if (((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) && (unsigned int )adapter->virtfn != 0U) {
    status = -22;
    goto ret;
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) && (unsigned int )vid == 0U) {
    goto ret;
  } else {
  }
  adapter->vlan_tag[(int )vid] = 1U;
  if ((int )adapter->vlans_added <= (int )adapter->max_vlans + 1) {
    status = be_vid_config(adapter);
  } else {
  }
  if (status == 0) {
    adapter->vlans_added = (u16 )((int )adapter->vlans_added + 1);
  } else {
    adapter->vlan_tag[(int )vid] = 0U;
  }
  ret: ;
  return (status);
}
}
static int be_vlan_rem_vid(struct net_device *netdev , __be16 proto , u16 vid )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  status = 0;
  if (((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) && (unsigned int )adapter->virtfn != 0U) {
    status = -22;
    goto ret;
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) && (unsigned int )vid == 0U) {
    goto ret;
  } else {
  }
  adapter->vlan_tag[(int )vid] = 0U;
  if ((int )adapter->vlans_added <= (int )adapter->max_vlans) {
    status = be_vid_config(adapter);
  } else {
  }
  if (status == 0) {
    adapter->vlans_added = (u16 )((int )adapter->vlans_added - 1);
  } else {
    adapter->vlan_tag[(int )vid] = 1U;
  }
  ret: ;
  return (status);
}
}
static void be_set_rx_mode(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  struct netdev_hw_addr *ha ;
  int i ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if ((netdev->flags & 256U) != 0U) {
    be_cmd_rx_filter(adapter, 256U, 1U);
    adapter->promiscuous = 1;
    goto done;
  } else {
  }
  if ((int )adapter->promiscuous) {
    adapter->promiscuous = 0;
    be_cmd_rx_filter(adapter, 256U, 0U);
    if ((unsigned int )adapter->vlans_added != 0U) {
      be_vid_config(adapter);
    } else {
    }
  } else {
  }
  if ((netdev->flags & 512U) != 0U || netdev->mc.count > (int )adapter->max_mcast_mac) {
    be_cmd_rx_filter(adapter, 512U, 1U);
    goto done;
  } else {
  }
  if ((u32 )netdev->uc.count != adapter->uc_macs) {
    i = 1;
    goto ldv_51540;
    ldv_51539:
    be_cmd_pmac_del(adapter, (u32 )adapter->if_handle, (int )*(adapter->pmac_id + (unsigned long )i),
                    0U);
    adapter->uc_macs = adapter->uc_macs - 1U;
    i = i + 1;
    ldv_51540: ;
    if (adapter->uc_macs != 0U) {
      goto ldv_51539;
    } else {
    }
    if (netdev->uc.count > (int )adapter->max_pmac_cnt) {
      be_cmd_rx_filter(adapter, 256U, 1U);
      adapter->promiscuous = 1;
      goto done;
    } else {
    }
    __mptr = (struct list_head const *)(adapter->netdev)->uc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_51547;
    ldv_51546:
    adapter->uc_macs = adapter->uc_macs + 1U;
    be_cmd_pmac_add(adapter, (u8 *)(& ha->addr), (u32 )adapter->if_handle, adapter->pmac_id + (unsigned long )adapter->uc_macs,
                    0U);
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_51547: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& (adapter->netdev)->uc.list)) {
      goto ldv_51546;
    } else {
    }
  } else {
  }
  status = be_cmd_rx_filter(adapter, 4096U, 1U);
  if (status != 0) {
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "Exhausted multicast HW filters.\n");
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "Disabling HW multicast filtering.\n");
    be_cmd_rx_filter(adapter, 512U, 1U);
  } else {
  }
  done: ;
  return;
}
}
static int be_set_vf_mac(struct net_device *netdev , int vf , u8 *mac )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_vf_cfg *vf_cfg ;
  int status ;
  bool active_mac ;
  u32 pmac_id ;
  u8 old_mac[6U] ;
  bool tmp___0 ;
  int tmp___1 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  active_mac = 0;
  if (adapter->num_vfs == 0U) {
    return (-1);
  } else {
  }
  tmp___0 = is_valid_ether_addr((u8 const *)mac);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1 || (u32 )vf >= adapter->num_vfs) {
    return (-22);
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    status = be_cmd_get_mac_from_list(adapter, (u8 *)(& old_mac), & active_mac, & pmac_id,
                                      (int )((unsigned int )((u8 )vf) + 1U));
    if (status == 0 && (int )active_mac) {
      be_cmd_pmac_del(adapter, (u32 )vf_cfg->if_handle, (int )pmac_id, (u32 )(vf + 1));
    } else {
    }
    status = be_cmd_set_mac_list(adapter, mac, 1, (u32 )(vf + 1));
  } else {
    status = be_cmd_pmac_del(adapter, (u32 )vf_cfg->if_handle, vf_cfg->pmac_id, (u32 )(vf + 1));
    status = be_cmd_pmac_add(adapter, mac, (u32 )vf_cfg->if_handle, (u32 *)(& vf_cfg->pmac_id),
                             (u32 )(vf + 1));
  }
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "MAC %pM set on VF %d Failed\n",
            mac, vf);
  } else {
    __len = 6UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& vf_cfg->mac_addr), (void const *)mac, __len);
    } else {
      __ret = memcpy((void *)(& vf_cfg->mac_addr), (void const *)mac,
                               __len);
    }
  }
  return (status);
}
}
static int be_get_vf_config(struct net_device *netdev , int vf , struct ifla_vf_info *vi )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_vf_cfg *vf_cfg ;
  size_t __len ;
  void *__ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  if (adapter->num_vfs == 0U) {
    return (-1);
  } else {
  }
  if ((u32 )vf >= adapter->num_vfs) {
    return (-22);
  } else {
  }
  vi->vf = (__u32 )vf;
  vi->tx_rate = vf_cfg->tx_rate;
  vi->vlan = (__u32 )vf_cfg->vlan_tag;
  vi->qos = 0U;
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& vi->mac), (void const *)(& vf_cfg->mac_addr), __len);
  } else {
    __ret = memcpy((void *)(& vi->mac), (void const *)(& vf_cfg->mac_addr),
                             __len);
  }
  return (0);
}
}
static int be_set_vf_vlan(struct net_device *netdev , int vf , u16 vlan , u8 qos )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  status = 0;
  if (adapter->num_vfs == 0U) {
    return (-1);
  } else {
  }
  if ((u32 )vf >= adapter->num_vfs || (unsigned int )vlan > 4095U) {
    return (-22);
  } else {
  }
  if ((unsigned int )vlan != 0U) {
    if ((int )(adapter->vf_cfg + (unsigned long )vf)->vlan_tag != (int )vlan) {
      (adapter->vf_cfg + (unsigned long )vf)->vlan_tag = vlan;
      status = be_cmd_set_hsw_config(adapter, (int )vlan, (u32 )(vf + 1), (int )((u16 )(adapter->vf_cfg + (unsigned long )vf)->if_handle));
    } else {
    }
  } else {
    (adapter->vf_cfg + (unsigned long )vf)->vlan_tag = 0U;
    vlan = (adapter->vf_cfg + (unsigned long )vf)->def_vid;
    status = be_cmd_set_hsw_config(adapter, (int )vlan, (u32 )(vf + 1), (int )((u16 )(adapter->vf_cfg + (unsigned long )vf)->if_handle));
  }
  if (status != 0) {
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "VLAN %d config on VF %d failed\n",
              (int )vlan, vf);
  } else {
  }
  return (status);
}
}
static int be_set_vf_tx_rate(struct net_device *netdev , int vf , int rate )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  status = 0;
  if (adapter->num_vfs == 0U) {
    return (-1);
  } else {
  }
  if ((u32 )vf >= adapter->num_vfs) {
    return (-22);
  } else {
  }
  if (rate <= 99 || rate > 10000) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "tx rate must be between 100 and 10000 Mbps\n");
    return (-22);
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    status = be_cmd_set_profile_config(adapter, (u32 )(rate / 10), (int )((unsigned int )((u8 )vf) + 1U));
  } else {
    status = be_cmd_set_qos(adapter, (u32 )(rate / 10), (u32 )(vf + 1));
  }
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "tx rate %d on VF %d failed\n",
            rate, vf);
  } else {
    (adapter->vf_cfg + (unsigned long )vf)->tx_rate = (u32 )rate;
  }
  return (status);
}
}
static int be_find_vfs(struct be_adapter *adapter , int vf_state )
{
  struct pci_dev *dev ;
  struct pci_dev *pdev ;
  int vfs ;
  int assigned_vfs ;
  int pos ;
  u16 offset ;
  u16 stride ;
  struct pci_dev *tmp ;
  {
  pdev = adapter->pdev;
  vfs = 0;
  assigned_vfs = 0;
  pos = pci_find_ext_capability(pdev, 16);
  if (pos == 0) {
    return (0);
  } else {
  }
  pci_read_config_word((struct pci_dev const *)pdev, pos + 20, & offset);
  pci_read_config_word((struct pci_dev const *)pdev, pos + 22, & stride);
  dev = pci_get_device((unsigned int )pdev->vendor, 4294967295U, 0);
  goto ldv_51600;
  ldv_51599: ;
  if ((unsigned int )*((unsigned char *)dev + 2251UL) != 0U) {
    tmp = pci_physfn(dev);
    if ((unsigned long )tmp == (unsigned long )pdev) {
      vfs = vfs + 1;
      if (((int )dev->dev_flags & 4) != 0) {
        assigned_vfs = assigned_vfs + 1;
      } else {
      }
    } else {
    }
  } else {
  }
  dev = pci_get_device((unsigned int )pdev->vendor, 4294967295U, dev);
  ldv_51600: ;
  if ((unsigned long )dev != (unsigned long )((struct pci_dev *)0)) {
    goto ldv_51599;
  } else {
  }
  return (vf_state == 1 ? assigned_vfs : vfs);
}
}
static void be_eqd_update(struct be_adapter *adapter , struct be_eq_obj *eqo )
{
  struct be_rx_stats *stats ;
  ulong now ;
  ulong delta ;
  u64 pkts ;
  unsigned int start ;
  unsigned int eqd ;
  bool tmp ;
  unsigned int _min1 ;
  u32 _min2 ;
  unsigned int _max1 ;
  u32 _max2 ;
  {
  stats = & ((struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )eqo->idx)->stats;
  now = jiffies;
  delta = now - stats->rx_jiffies;
  if (! eqo->enable_aic) {
    eqd = eqo->eqd;
    goto modify_eqd;
  } else {
  }
  if ((u32 )eqo->idx >= adapter->num_rx_qs) {
    return;
  } else {
  }
  stats = & ((struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )eqo->idx)->stats;
  if ((long )now - (long )stats->rx_jiffies < 0L) {
    stats->rx_jiffies = now;
    return;
  } else {
  }
  if (delta <= 249UL) {
    return;
  } else {
  }
  ldv_51619:
  start = u64_stats_fetch_begin_bh((struct u64_stats_sync const *)(& stats->sync));
  pkts = stats->rx_pkts;
  tmp = u64_stats_fetch_retry_bh((struct u64_stats_sync const *)(& stats->sync),
                                 start);
  if ((int )tmp) {
    goto ldv_51619;
  } else {
  }
  stats->rx_pps = (u32 )((unsigned long )(pkts - stats->rx_pkts_prev) / (delta / 250UL));
  stats->rx_pkts_prev = pkts;
  stats->rx_jiffies = now;
  eqd = stats->rx_pps / 110000U << 3;
  _min1 = eqd;
  _min2 = eqo->max_eqd;
  eqd = _min1 < _min2 ? _min1 : _min2;
  _max1 = eqd;
  _max2 = eqo->min_eqd;
  eqd = _max1 > _max2 ? _max1 : _max2;
  if (eqd <= 9U) {
    eqd = 0U;
  } else {
  }
  modify_eqd: ;
  if (eqo->cur_eqd != eqd) {
    be_cmd_modify_eqd(adapter, (u32 )eqo->q.id, eqd);
    eqo->cur_eqd = eqd;
  } else {
  }
  return;
}
}
static void be_rx_stats_update(struct be_rx_obj *rxo , struct be_rx_compl_info *rxcp )
{
  struct be_rx_stats *stats ;
  {
  stats = & rxo->stats;
  u64_stats_update_begin(& stats->sync);
  stats->rx_compl = stats->rx_compl + 1U;
  stats->rx_bytes = stats->rx_bytes + (u64 )rxcp->pkt_size;
  stats->rx_pkts = stats->rx_pkts + 1ULL;
  if ((unsigned int )rxcp->pkt_type == 1U) {
    stats->rx_mcast_pkts = stats->rx_mcast_pkts + 1U;
  } else {
  }
  if ((unsigned int )rxcp->err != 0U) {
    stats->rx_compl_err = stats->rx_compl_err + 1U;
  } else {
  }
  u64_stats_update_begin(& stats->sync);
  return;
}
}
__inline static bool csum_passed(struct be_rx_compl_info *rxcp )
{
  {
  return ((bool )((((unsigned int )rxcp->tcpf != 0U || (unsigned int )rxcp->udpf != 0U) && (unsigned int )rxcp->l4_csum != 0U) && ((unsigned int )rxcp->ip_csum != 0U || (unsigned int )rxcp->ipv6 != 0U)));
}
}
static struct be_rx_page_info *get_rx_page_info(struct be_rx_obj *rxo , u16 frag_idx )
{
  struct be_adapter *adapter ;
  struct be_rx_page_info *rx_page_info ;
  struct be_queue_info *rxq ;
  long tmp ;
  {
  adapter = rxo->adapter;
  rxq = & rxo->q;
  rx_page_info = (struct be_rx_page_info *)(& rxo->page_info_tbl) + (unsigned long )frag_idx;
  tmp = ldv__builtin_expect((unsigned long )rx_page_info->page == (unsigned long )((struct page *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8517/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/emulex/benet/be_main.c.prepared"),
                         "i" (1392), "i" (12UL));
    ldv_51642: ;
    goto ldv_51642;
  } else {
  }
  if ((int )rx_page_info->last_page_user) {
    dma_unmap_page(& (adapter->pdev)->dev, rx_page_info->bus, (size_t )adapter->big_page_size,
                   2);
    rx_page_info->last_page_user = 0;
  } else {
  }
  atomic_dec(& rxq->used);
  return (rx_page_info);
}
}
static void be_rx_compl_discard(struct be_rx_obj *rxo , struct be_rx_compl_info *rxcp )
{
  struct be_queue_info *rxq ;
  struct be_rx_page_info *page_info ;
  u16 i ;
  u16 num_rcvd ;
  {
  rxq = & rxo->q;
  num_rcvd = (u16 )rxcp->num_rcvd;
  i = 0U;
  goto ldv_51652;
  ldv_51651:
  page_info = get_rx_page_info(rxo, (int )rxcp->rxq_idx);
  put_page(page_info->page);
  memset((void *)page_info, 0, 24UL);
  index_inc(& rxcp->rxq_idx, (int )rxq->len);
  i = (u16 )((int )i + 1);
  ldv_51652: ;
  if ((int )i < (int )num_rcvd) {
    goto ldv_51651;
  } else {
  }
  return;
}
}
static void skb_fill_rx_data(struct be_rx_obj *rxo , struct sk_buff *skb , struct be_rx_compl_info *rxcp )
{
  struct be_queue_info *rxq ;
  struct be_rx_page_info *page_info ;
  u16 i ;
  u16 j ;
  u16 hdr_len ;
  u16 curr_frag_len ;
  u16 remaining ;
  u8 *start ;
  void *tmp ;
  u16 _min1 ;
  ushort _min2 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  long tmp___3 ;
  u16 _min1___0 ;
  ushort _min2___0 ;
  unsigned char *tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned char *tmp___6 ;
  unsigned char *tmp___7 ;
  long tmp___8 ;
  {
  rxq = & rxo->q;
  page_info = get_rx_page_info(rxo, (int )rxcp->rxq_idx);
  tmp = lowmem_page_address((struct page const *)page_info->page);
  start = (u8 *)tmp + (unsigned long )page_info->page_offset;
  __builtin_prefetch((void const *)start);
  _min1 = rxcp->pkt_size;
  _min2 = rx_frag_size;
  curr_frag_len = (u16 )((int )_min1 < (int )_min2 ? _min1 : _min2);
  skb->len = (unsigned int )curr_frag_len;
  if ((unsigned int )curr_frag_len <= 64U) {
    __len = (size_t )curr_frag_len;
    __ret = memcpy((void *)skb->data, (void const *)start, __len);
    put_page(page_info->page);
    skb->data_len = 0U;
    skb->tail = skb->tail + (sk_buff_data_t )curr_frag_len;
  } else {
    hdr_len = 14U;
    __len___0 = (size_t )hdr_len;
    __ret___0 = memcpy((void *)skb->data, (void const *)start, __len___0);
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___0)->nr_frags = 1U;
    skb_frag_set_page(skb, 0, page_info->page);
    tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___1)->frags[0].page_offset = (__u32 )((int )page_info->page_offset + (int )hdr_len);
    tmp___2 = skb_end_pointer((struct sk_buff const *)skb);
    skb_frag_size_set((skb_frag_t *)(& ((struct skb_shared_info *)tmp___2)->frags),
                      (unsigned int )((int )curr_frag_len - (int )hdr_len));
    skb->data_len = (unsigned int )((int )curr_frag_len - (int )hdr_len);
    skb->truesize = skb->truesize + (unsigned int )rx_frag_size;
    skb->tail = skb->tail + (sk_buff_data_t )hdr_len;
  }
  page_info->page = 0;
  if ((int )rxcp->pkt_size <= (int )rx_frag_size) {
    tmp___3 = ldv__builtin_expect((unsigned int )rxcp->num_rcvd != 1U, 0L);
    if (tmp___3 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8517/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/emulex/benet/be_main.c.prepared"),
                           "i" (1463), "i" (12UL));
      ldv_51676: ;
      goto ldv_51676;
    } else {
    }
    return;
  } else {
  }
  index_inc(& rxcp->rxq_idx, (int )rxq->len);
  remaining = (int )rxcp->pkt_size - (int )curr_frag_len;
  i = 1U;
  j = 0U;
  goto ldv_51681;
  ldv_51680:
  page_info = get_rx_page_info(rxo, (int )rxcp->rxq_idx);
  _min1___0 = remaining;
  _min2___0 = rx_frag_size;
  curr_frag_len = (u16 )((int )_min1___0 < (int )_min2___0 ? _min1___0 : _min2___0);
  if ((unsigned int )page_info->page_offset == 0U) {
    j = (u16 )((int )j + 1);
    skb_frag_set_page(skb, (int )j, page_info->page);
    tmp___4 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___4)->frags[(int )j].page_offset = (__u32 )page_info->page_offset;
    tmp___5 = skb_end_pointer((struct sk_buff const *)skb);
    skb_frag_size_set((skb_frag_t *)(& ((struct skb_shared_info *)tmp___5)->frags) + (unsigned long )j,
                      0U);
    tmp___6 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___6)->nr_frags = (unsigned char )((int )((struct skb_shared_info *)tmp___6)->nr_frags + 1);
  } else {
    put_page(page_info->page);
  }
  tmp___7 = skb_end_pointer((struct sk_buff const *)skb);
  skb_frag_size_add((skb_frag_t *)(& ((struct skb_shared_info *)tmp___7)->frags) + (unsigned long )j,
                    (int )curr_frag_len);
  skb->len = skb->len + (unsigned int )curr_frag_len;
  skb->data_len = skb->data_len + (unsigned int )curr_frag_len;
  skb->truesize = skb->truesize + (unsigned int )rx_frag_size;
  remaining = (int )remaining - (int )curr_frag_len;
  index_inc(& rxcp->rxq_idx, (int )rxq->len);
  page_info->page = 0;
  i = (u16 )((int )i + 1);
  ldv_51681: ;
  if ((int )((unsigned short )rxcp->num_rcvd) > (int )i) {
    goto ldv_51680;
  } else {
  }
  tmp___8 = ldv__builtin_expect((unsigned int )j > 17U, 0L);
  if (tmp___8 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8517/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/emulex/benet/be_main.c.prepared"),
                         "i" (1495), "i" (12UL));
    ldv_51683: ;
    goto ldv_51683;
  } else {
  }
  return;
}
}
static void be_rx_compl_process(struct be_rx_obj *rxo , struct be_rx_compl_info *rxcp )
{
  struct be_adapter *adapter ;
  struct net_device *netdev ;
  struct sk_buff *skb ;
  long tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  {
  adapter = rxo->adapter;
  netdev = adapter->netdev;
  skb = netdev_alloc_skb_ip_align(netdev, 128U);
  tmp = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                         0L);
  if (tmp != 0L) {
    rxo->stats.rx_drops_no_skbs = rxo->stats.rx_drops_no_skbs + 1U;
    be_rx_compl_discard(rxo, rxcp);
    return;
  } else {
  }
  skb_fill_rx_data(rxo, skb, rxcp);
  tmp___0 = ldv__builtin_expect((netdev->features & 536870912ULL) != 0ULL, 1L);
  if (tmp___0 != 0L) {
    tmp___1 = csum_passed(rxcp);
    tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
    if (tmp___2 != 0L) {
      skb->ip_summed = 1U;
    } else {
      skb_checksum_none_assert((struct sk_buff const *)skb);
    }
  } else {
    skb_checksum_none_assert((struct sk_buff const *)skb);
  }
  skb->protocol = eth_type_trans(skb, netdev);
  skb_record_rx_queue(skb, (int )((u16 )(((long )rxo - (long )(& adapter->rx_obj)) / 24768L)));
  if ((netdev->features & 268435456ULL) != 0ULL) {
    skb->rxhash = rxcp->rss_hash;
  } else {
  }
  if ((unsigned int )rxcp->vlanf != 0U) {
    __vlan_hwaccel_put_tag(skb, 129, (int )rxcp->vlan_tag);
  } else {
  }
  netif_receive_skb(skb);
  return;
}
}
void be_rx_compl_process_gro(struct be_rx_obj *rxo , struct napi_struct *napi , struct be_rx_compl_info *rxcp )
{
  struct be_adapter *adapter ;
  struct be_rx_page_info *page_info ;
  struct sk_buff *skb ;
  struct be_queue_info *rxq ;
  u16 remaining ;
  u16 curr_frag_len ;
  u16 i ;
  u16 j ;
  u16 _min1 ;
  ushort _min2 ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  long tmp___2 ;
  unsigned char *tmp___3 ;
  {
  adapter = rxo->adapter;
  skb = 0;
  rxq = & rxo->q;
  skb = napi_get_frags(napi);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    be_rx_compl_discard(rxo, rxcp);
    return;
  } else {
  }
  remaining = rxcp->pkt_size;
  i = 0U;
  j = 65535U;
  goto ldv_51708;
  ldv_51707:
  page_info = get_rx_page_info(rxo, (int )rxcp->rxq_idx);
  _min1 = remaining;
  _min2 = rx_frag_size;
  curr_frag_len = (u16 )((int )_min1 < (int )_min2 ? _min1 : _min2);
  if ((unsigned int )i == 0U || (unsigned int )page_info->page_offset == 0U) {
    j = (u16 )((int )j + 1);
    skb_frag_set_page(skb, (int )j, page_info->page);
    tmp = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp)->frags[(int )j].page_offset = (__u32 )page_info->page_offset;
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    skb_frag_size_set((skb_frag_t *)(& ((struct skb_shared_info *)tmp___0)->frags) + (unsigned long )j,
                      0U);
  } else {
    put_page(page_info->page);
  }
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  skb_frag_size_add((skb_frag_t *)(& ((struct skb_shared_info *)tmp___1)->frags) + (unsigned long )j,
                    (int )curr_frag_len);
  skb->truesize = skb->truesize + (unsigned int )rx_frag_size;
  remaining = (int )remaining - (int )curr_frag_len;
  index_inc(& rxcp->rxq_idx, (int )rxq->len);
  memset((void *)page_info, 0, 24UL);
  i = (u16 )((int )i + 1);
  ldv_51708: ;
  if ((int )((unsigned short )rxcp->num_rcvd) > (int )i) {
    goto ldv_51707;
  } else {
  }
  tmp___2 = ldv__builtin_expect((unsigned int )j > 17U, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8517/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/emulex/benet/be_main.c.prepared"),
                         "i" (1572), "i" (12UL));
    ldv_51710: ;
    goto ldv_51710;
  } else {
  }
  tmp___3 = skb_end_pointer((struct sk_buff const *)skb);
  ((struct skb_shared_info *)tmp___3)->nr_frags = (unsigned int )((unsigned char )j) + 1U;
  skb->len = (unsigned int )rxcp->pkt_size;
  skb->data_len = (unsigned int )rxcp->pkt_size;
  skb->ip_summed = 1U;
  skb_record_rx_queue(skb, (int )((u16 )(((long )rxo - (long )(& adapter->rx_obj)) / 24768L)));
  if (((adapter->netdev)->features & 268435456ULL) != 0ULL) {
    skb->rxhash = rxcp->rss_hash;
  } else {
  }
  if ((unsigned int )rxcp->vlanf != 0U) {
    __vlan_hwaccel_put_tag(skb, 129, (int )rxcp->vlan_tag);
  } else {
  }
  napi_gro_frags(napi);
  return;
}
}
static void be_parse_rx_compl_v1(struct be_eth_rx_compl *compl , struct be_rx_compl_info *rxcp )
{
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  u32 tmp___10 ;
  u32 tmp___11 ;
  u32 tmp___12 ;
  u32 tmp___13 ;
  u32 tmp___14 ;
  u32 tmp___15 ;
  u32 tmp___16 ;
  u32 tmp___17 ;
  u32 tmp___18 ;
  u32 tmp___19 ;
  u32 tmp___20 ;
  u32 tmp___21 ;
  u32 tmp___22 ;
  u32 tmp___23 ;
  u32 tmp___24 ;
  u32 tmp___25 ;
  u32 tmp___26 ;
  u32 tmp___27 ;
  {
  tmp = amap_mask(14U);
  tmp___0 = amap_get((void *)compl, 0U, tmp, 16U);
  rxcp->pkt_size = (u16 )tmp___0;
  tmp___1 = amap_mask(1U);
  tmp___2 = amap_get((void *)compl, 0U, tmp___1, 30U);
  rxcp->vlanf = (u8 )tmp___2;
  tmp___3 = amap_mask(1U);
  tmp___4 = amap_get((void *)compl, 1U, tmp___3, 0U);
  rxcp->err = (u8 )tmp___4;
  tmp___5 = amap_mask(1U);
  tmp___6 = amap_get((void *)compl, 1U, tmp___5, 3U);
  rxcp->tcpf = (u8 )tmp___6;
  tmp___7 = amap_mask(1U);
  tmp___8 = amap_get((void *)compl, 1U, tmp___7, 4U);
  rxcp->udpf = (u8 )tmp___8;
  tmp___9 = amap_mask(1U);
  tmp___10 = amap_get((void *)compl, 1U, tmp___9, 5U);
  rxcp->ip_csum = (u8 )tmp___10;
  tmp___11 = amap_mask(1U);
  tmp___12 = amap_get((void *)compl, 1U, tmp___11, 6U);
  rxcp->l4_csum = (u8 )tmp___12;
  tmp___13 = amap_mask(1U);
  tmp___14 = amap_get((void *)compl, 1U, tmp___13, 7U);
  rxcp->ipv6 = (u8 )tmp___14;
  tmp___15 = amap_mask(10U);
  tmp___16 = amap_get((void *)compl, 1U, tmp___15, 16U);
  rxcp->rxq_idx = (u16 )tmp___16;
  tmp___17 = amap_mask(3U);
  tmp___18 = amap_get((void *)compl, 1U, tmp___17, 29U);
  rxcp->num_rcvd = (u8 )tmp___18;
  tmp___19 = amap_mask(2U);
  tmp___20 = amap_get((void *)compl, 2U, tmp___19, 1U);
  rxcp->pkt_type = (u8 )tmp___20;
  tmp___21 = amap_mask(32U);
  rxcp->rss_hash = amap_get((void *)compl, 3U, tmp___21, 0U);
  if ((unsigned int )rxcp->vlanf != 0U) {
    tmp___22 = amap_mask(1U);
    tmp___23 = amap_get((void *)compl, 2U, tmp___22, 3U);
    rxcp->vtm = (u8 )tmp___23;
    tmp___24 = amap_mask(16U);
    tmp___25 = amap_get((void *)compl, 0U, tmp___24, 0U);
    rxcp->vlan_tag = (u16 )tmp___25;
  } else {
  }
  tmp___26 = amap_mask(2U);
  tmp___27 = amap_get((void *)compl, 2U, tmp___26, 5U);
  rxcp->port = (u16 )tmp___27;
  return;
}
}
static void be_parse_rx_compl_v0(struct be_eth_rx_compl *compl , struct be_rx_compl_info *rxcp )
{
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  u32 tmp___10 ;
  u32 tmp___11 ;
  u32 tmp___12 ;
  u32 tmp___13 ;
  u32 tmp___14 ;
  u32 tmp___15 ;
  u32 tmp___16 ;
  u32 tmp___17 ;
  u32 tmp___18 ;
  u32 tmp___19 ;
  u32 tmp___20 ;
  u32 tmp___21 ;
  u32 tmp___22 ;
  u32 tmp___23 ;
  u32 tmp___24 ;
  u32 tmp___25 ;
  u32 tmp___26 ;
  u32 tmp___27 ;
  {
  tmp = amap_mask(14U);
  tmp___0 = amap_get((void *)compl, 0U, tmp, 16U);
  rxcp->pkt_size = (u16 )tmp___0;
  tmp___1 = amap_mask(1U);
  tmp___2 = amap_get((void *)compl, 1U, tmp___1, 14U);
  rxcp->vlanf = (u8 )tmp___2;
  tmp___3 = amap_mask(1U);
  tmp___4 = amap_get((void *)compl, 1U, tmp___3, 0U);
  rxcp->err = (u8 )tmp___4;
  tmp___5 = amap_mask(1U);
  tmp___6 = amap_get((void *)compl, 1U, tmp___5, 3U);
  rxcp->tcpf = (u8 )tmp___6;
  tmp___7 = amap_mask(1U);
  tmp___8 = amap_get((void *)compl, 1U, tmp___7, 4U);
  rxcp->udpf = (u8 )tmp___8;
  tmp___9 = amap_mask(1U);
  tmp___10 = amap_get((void *)compl, 1U, tmp___9, 5U);
  rxcp->ip_csum = (u8 )tmp___10;
  tmp___11 = amap_mask(1U);
  tmp___12 = amap_get((void *)compl, 1U, tmp___11, 6U);
  rxcp->l4_csum = (u8 )tmp___12;
  tmp___13 = amap_mask(1U);
  tmp___14 = amap_get((void *)compl, 1U, tmp___13, 7U);
  rxcp->ipv6 = (u8 )tmp___14;
  tmp___15 = amap_mask(10U);
  tmp___16 = amap_get((void *)compl, 1U, tmp___15, 16U);
  rxcp->rxq_idx = (u16 )tmp___16;
  tmp___17 = amap_mask(3U);
  tmp___18 = amap_get((void *)compl, 1U, tmp___17, 29U);
  rxcp->num_rcvd = (u8 )tmp___18;
  tmp___19 = amap_mask(2U);
  tmp___20 = amap_get((void *)compl, 2U, tmp___19, 1U);
  rxcp->pkt_type = (u8 )tmp___20;
  tmp___21 = amap_mask(32U);
  rxcp->rss_hash = amap_get((void *)compl, 3U, tmp___21, 0U);
  if ((unsigned int )rxcp->vlanf != 0U) {
    tmp___22 = amap_mask(1U);
    tmp___23 = amap_get((void *)compl, 2U, tmp___22, 3U);
    rxcp->vtm = (u8 )tmp___23;
    tmp___24 = amap_mask(16U);
    tmp___25 = amap_get((void *)compl, 0U, tmp___24, 0U);
    rxcp->vlan_tag = (u16 )tmp___25;
  } else {
  }
  tmp___26 = amap_mask(1U);
  tmp___27 = amap_get((void *)compl, 0U, tmp___26, 30U);
  rxcp->port = (u16 )tmp___27;
  return;
}
}
static struct be_rx_compl_info *be_rx_compl_get(struct be_rx_obj *rxo )
{
  struct be_eth_rx_compl *compl ;
  void *tmp ;
  struct be_rx_compl_info *rxcp ;
  struct be_adapter *adapter ;
  __u16 tmp___0 ;
  {
  tmp = queue_tail_node(& rxo->cq);
  compl = (struct be_eth_rx_compl *)tmp;
  rxcp = & rxo->rxcp;
  adapter = rxo->adapter;
  if (compl->dw[2UL] == 0U) {
    return (0);
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  swap_dws((void *)compl, 16);
  if ((int )adapter->be3_native) {
    be_parse_rx_compl_v1(compl, rxcp);
  } else {
    be_parse_rx_compl_v0(compl, rxcp);
  }
  if ((unsigned int )rxcp->vlanf != 0U) {
    if ((adapter->function_mode & 1024U) != 0U && (unsigned int )rxcp->vtm == 0U) {
      rxcp->vlanf = 0U;
    } else {
    }
    if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
      tmp___0 = __fswab16((int )rxcp->vlan_tag);
      rxcp->vlan_tag = tmp___0;
    } else {
    }
    if ((int )adapter->pvid == ((int )rxcp->vlan_tag & 4095) && (unsigned int )adapter->vlan_tag[(int )rxcp->vlan_tag] == 0U) {
      rxcp->vlanf = 0U;
    } else {
    }
  } else {
  }
  compl->dw[2UL] = 0U;
  queue_tail_inc(& rxo->cq);
  return (rxcp);
}
}
__inline static struct page *be_alloc_pages(u32 size , gfp_t gfp )
{
  u32 order ;
  int tmp ;
  struct page *tmp___0 ;
  {
  tmp = __get_order((unsigned long )size);
  order = (u32 )tmp;
  if (order != 0U) {
    gfp = gfp | 16384U;
  } else {
  }
  tmp___0 = alloc_pages(gfp, order);
  return (tmp___0);
}
}
static void be_post_rx_frags(struct be_rx_obj *rxo , gfp_t gfp )
{
  struct be_adapter *adapter ;
  struct be_rx_page_info *page_info ;
  struct be_rx_page_info *prev_page_info ;
  struct be_queue_info *rxq ;
  struct page *pagep ;
  struct be_eth_rx_d *rxd ;
  u64 page_dmaaddr ;
  u64 frag_dmaaddr ;
  u32 posted ;
  u32 page_offset ;
  long tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  adapter = rxo->adapter;
  page_info = 0;
  prev_page_info = 0;
  rxq = & rxo->q;
  pagep = 0;
  page_dmaaddr = 0ULL;
  page_offset = 0U;
  page_info = (struct be_rx_page_info *)(& rxo->page_info_tbl) + (unsigned long )rxq->head;
  posted = 0U;
  goto ldv_51746;
  ldv_51745: ;
  if ((unsigned long )pagep == (unsigned long )((struct page *)0)) {
    pagep = be_alloc_pages(adapter->big_page_size, gfp);
    tmp = ldv__builtin_expect((unsigned long )pagep == (unsigned long )((struct page *)0),
                           0L);
    if (tmp != 0L) {
      rxo->stats.rx_post_fail = rxo->stats.rx_post_fail + 1U;
      goto ldv_51744;
    } else {
    }
    page_dmaaddr = dma_map_page(& (adapter->pdev)->dev, pagep, 0UL, (size_t )adapter->big_page_size,
                                2);
    page_info->page_offset = 0U;
  } else {
    get_page(pagep);
    page_info->page_offset = (int )((u16 )page_offset) + (int )rx_frag_size;
  }
  page_offset = (u32 )page_info->page_offset;
  page_info->page = pagep;
  page_info->bus = page_dmaaddr;
  frag_dmaaddr = (u64 )page_info->page_offset + page_dmaaddr;
  tmp___0 = queue_head_node(rxq);
  rxd = (struct be_eth_rx_d *)tmp___0;
  rxd->fragpa_lo = (unsigned int )frag_dmaaddr;
  rxd->fragpa_hi = (unsigned int )(frag_dmaaddr >> 32ULL);
  if (((u32 )rx_frag_size + page_offset) + (u32 )rx_frag_size > adapter->big_page_size) {
    pagep = 0;
    page_info->last_page_user = 1;
  } else {
  }
  prev_page_info = page_info;
  queue_head_inc(rxq);
  page_info = (struct be_rx_page_info *)(& rxo->page_info_tbl) + (unsigned long )rxq->head;
  posted = posted + 1U;
  ldv_51746: ;
  if (posted <= 63U && (unsigned long )page_info->page == (unsigned long )((struct page *)0)) {
    goto ldv_51745;
  } else {
  }
  ldv_51744: ;
  if ((unsigned long )pagep != (unsigned long )((struct page *)0)) {
    prev_page_info->last_page_user = 1;
  } else {
  }
  if (posted != 0U) {
    atomic_add((int )posted, & rxq->used);
    be_rxq_notify(adapter, (int )rxq->id, (int )((u16 )posted));
  } else {
    tmp___1 = atomic_read((atomic_t const *)(& rxq->used));
    if (tmp___1 == 0) {
      rxo->rx_post_starved = 1;
    } else {
    }
  }
  return;
}
}
static struct be_eth_tx_compl *be_tx_compl_get(struct be_queue_info *tx_cq )
{
  struct be_eth_tx_compl *txcp ;
  void *tmp ;
  {
  tmp = queue_tail_node(tx_cq);
  txcp = (struct be_eth_tx_compl *)tmp;
  if (txcp->dw[3UL] == 0U) {
    return (0);
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  swap_dws((void *)txcp, 16);
  txcp->dw[3UL] = 0U;
  queue_tail_inc(tx_cq);
  return (txcp);
}
}
static u16 be_tx_compl_process(struct be_adapter *adapter , struct be_tx_obj *txo ,
                               u16 last_index )
{
  struct be_queue_info *txq ;
  struct be_eth_wrb *wrb ;
  struct sk_buff **sent_skbs ;
  struct sk_buff *sent_skb ;
  u16 cur_index ;
  u16 num_wrbs ;
  bool unmap_skb_hdr ;
  long tmp ;
  void *tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  txq = & txo->q;
  sent_skbs = (struct sk_buff **)(& txo->sent_skb_list);
  num_wrbs = 1U;
  unmap_skb_hdr = 1;
  sent_skb = *(sent_skbs + (unsigned long )txq->tail);
  tmp = ldv__builtin_expect((unsigned long )sent_skb == (unsigned long )((struct sk_buff *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8517/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/emulex/benet/be_main.c.prepared"),
                         "i" (1790), "i" (12UL));
    ldv_51763: ;
    goto ldv_51763;
  } else {
  }
  *(sent_skbs + (unsigned long )txq->tail) = 0;
  queue_tail_inc(txq);
  ldv_51764:
  cur_index = txq->tail;
  tmp___0 = queue_tail_node(txq);
  wrb = (struct be_eth_wrb *)tmp___0;
  if ((int )unmap_skb_hdr) {
    tmp___1 = skb_headlen((struct sk_buff const *)sent_skb);
    if (tmp___1 != 0U) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  unmap_tx_frag(& (adapter->pdev)->dev, wrb, (int )((bool )tmp___2));
  unmap_skb_hdr = 0;
  num_wrbs = (u16 )((int )num_wrbs + 1);
  queue_tail_inc(txq);
  if ((int )cur_index != (int )last_index) {
    goto ldv_51764;
  } else {
  }
  kfree_skb(sent_skb);
  return (num_wrbs);
}
}
__inline static int events_get(struct be_eq_obj *eqo )
{
  struct be_eq_entry *eqe ;
  int num ;
  void *tmp ;
  {
  num = 0;
  ldv_51772:
  tmp = queue_tail_node(& eqo->q);
  eqe = (struct be_eq_entry *)tmp;
  if (eqe->evt == 0U) {
    goto ldv_51771;
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  eqe->evt = 0U;
  num = num + 1;
  queue_tail_inc(& eqo->q);
  goto ldv_51772;
  ldv_51771: ;
  return (num);
}
}
static void be_eq_clean(struct be_eq_obj *eqo )
{
  int num ;
  int tmp ;
  {
  tmp = events_get(eqo);
  num = tmp;
  be_eq_notify(eqo->adapter, (int )eqo->q.id, 0, 1, (int )((u16 )num));
  return;
}
}
static void be_rx_cq_clean(struct be_rx_obj *rxo )
{
  struct be_rx_page_info *page_info ;
  struct be_queue_info *rxq ;
  struct be_queue_info *rx_cq ;
  struct be_rx_compl_info *rxcp ;
  struct be_adapter *adapter ;
  int flush_wait ;
  u16 tail ;
  int tmp ;
  bool tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  u16 tmp___6 ;
  {
  rxq = & rxo->q;
  rx_cq = & rxo->cq;
  adapter = rxo->adapter;
  flush_wait = 0;
  ldv_51792:
  rxcp = be_rx_compl_get(rxo);
  if ((unsigned long )rxcp == (unsigned long )((struct be_rx_compl_info *)0)) {
    if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
      goto ldv_51787;
    } else {
    }
    tmp = flush_wait;
    flush_wait = flush_wait + 1;
    if (tmp > 10) {
      dev_warn((struct device const *)(& (adapter->pdev)->dev), "did not receive flush compl\n");
      goto ldv_51787;
    } else {
      tmp___0 = be_hw_error(adapter);
      if ((int )tmp___0) {
        dev_warn((struct device const *)(& (adapter->pdev)->dev), "did not receive flush compl\n");
        goto ldv_51787;
      } else {
      }
    }
    be_cq_notify(adapter, (int )rx_cq->id, 1, 0);
    if (1) {
      __const_udelay(4295000UL);
    } else {
      __ms = 1UL;
      goto ldv_51790;
      ldv_51789:
      __const_udelay(4295000UL);
      ldv_51790:
      tmp___1 = __ms;
      __ms = __ms - 1UL;
      if (tmp___1 != 0UL) {
        goto ldv_51789;
      } else {
      }
    }
  } else {
    be_rx_compl_discard(rxo, rxcp);
    be_cq_notify(adapter, (int )rx_cq->id, 0, 1);
    if ((unsigned int )rxcp->num_rcvd == 0U) {
      goto ldv_51787;
    } else {
    }
  }
  goto ldv_51792;
  ldv_51787:
  be_cq_notify(adapter, (int )rx_cq->id, 0, 0);
  tmp___2 = atomic_read((atomic_t const *)(& rxq->used));
  tail = (u16 )((((int )rxq->head + (int )rxq->len) - tmp___2) % (int )rxq->len);
  goto ldv_51794;
  ldv_51793:
  page_info = get_rx_page_info(rxo, (int )tail);
  put_page(page_info->page);
  memset((void *)page_info, 0, 24UL);
  index_inc(& tail, (int )rxq->len);
  ldv_51794:
  tmp___3 = atomic_read((atomic_t const *)(& rxq->used));
  if (tmp___3 > 0) {
    goto ldv_51793;
  } else {
  }
  tmp___4 = atomic_read((atomic_t const *)(& rxq->used));
  tmp___5 = ldv__builtin_expect(tmp___4 != 0, 0L);
  if (tmp___5 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8517/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/emulex/benet/be_main.c.prepared"),
                         "i" (1886), "i" (12UL));
    ldv_51796: ;
    goto ldv_51796;
  } else {
  }
  tmp___6 = 0U;
  rxq->head = tmp___6;
  rxq->tail = tmp___6;
  return;
}
}
static void be_tx_compl_clean(struct be_adapter *adapter )
{
  struct be_tx_obj *txo ;
  struct be_queue_info *txq ;
  struct be_eth_tx_compl *txcp ;
  u16 end_idx ;
  u16 cmpl ;
  u16 timeo ;
  u16 num_wrbs ;
  struct sk_buff *sent_skb ;
  bool dummy_wrb ;
  int i ;
  int pending_txqs ;
  u32 tmp ;
  u32 tmp___0 ;
  u16 tmp___1 ;
  int tmp___2 ;
  unsigned long __ms ;
  unsigned long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  int tmp___7 ;
  {
  cmpl = 0U;
  timeo = 0U;
  num_wrbs = 0U;
  ldv_51822:
  pending_txqs = (int )adapter->num_tx_qs;
  i = 0;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_51815;
  ldv_51814:
  txq = & txo->q;
  goto ldv_51812;
  ldv_51811:
  tmp = amap_mask(16U);
  tmp___0 = amap_get((void *)txcp, 0U, tmp, 0U);
  end_idx = (u16 )tmp___0;
  tmp___1 = be_tx_compl_process(adapter, txo, (int )end_idx);
  num_wrbs = (int )tmp___1 + (int )num_wrbs;
  cmpl = (u16 )((int )cmpl + 1);
  ldv_51812:
  txcp = be_tx_compl_get(& txo->cq);
  if ((unsigned long )txcp != (unsigned long )((struct be_eth_tx_compl *)0)) {
    goto ldv_51811;
  } else {
  }
  if ((unsigned int )cmpl != 0U) {
    be_cq_notify(adapter, (int )txo->cq.id, 0, (int )cmpl);
    atomic_sub((int )num_wrbs, & txq->used);
    cmpl = 0U;
    num_wrbs = 0U;
  } else {
  }
  tmp___2 = atomic_read((atomic_t const *)(& txq->used));
  if (tmp___2 == 0) {
    pending_txqs = pending_txqs - 1;
  } else {
  }
  i = i + 1;
  txo = txo + 1;
  ldv_51815: ;
  if ((u32 )i < adapter->num_tx_qs) {
    goto ldv_51814;
  } else {
  }
  if (pending_txqs == 0) {
    goto ldv_51817;
  } else {
    timeo = (u16 )((int )timeo + 1);
    if ((unsigned int )timeo > 200U) {
      goto ldv_51817;
    } else {
    }
  }
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_51820;
    ldv_51819:
    __const_udelay(4295000UL);
    ldv_51820:
    tmp___3 = __ms;
    __ms = __ms - 1UL;
    if (tmp___3 != 0UL) {
      goto ldv_51819;
    } else {
    }
  }
  goto ldv_51822;
  ldv_51817:
  i = 0;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_51827;
  ldv_51826:
  txq = & txo->q;
  tmp___5 = atomic_read((atomic_t const *)(& txq->used));
  if (tmp___5 != 0) {
    tmp___4 = atomic_read((atomic_t const *)(& txq->used));
    dev_err((struct device const *)(& (adapter->pdev)->dev), "%d pending tx-compls\n",
            tmp___4);
  } else {
  }
  goto ldv_51824;
  ldv_51823:
  sent_skb = txo->sent_skb_list[(int )txq->tail];
  end_idx = txq->tail;
  tmp___6 = wrb_cnt_for_skb(adapter, sent_skb, & dummy_wrb);
  num_wrbs = (u16 )tmp___6;
  index_adv(& end_idx, (int )((unsigned int )num_wrbs + 65535U), (int )txq->len);
  num_wrbs = be_tx_compl_process(adapter, txo, (int )end_idx);
  atomic_sub((int )num_wrbs, & txq->used);
  ldv_51824:
  tmp___7 = atomic_read((atomic_t const *)(& txq->used));
  if (tmp___7 != 0) {
    goto ldv_51823;
  } else {
  }
  i = i + 1;
  txo = txo + 1;
  ldv_51827: ;
  if ((u32 )i < adapter->num_tx_qs) {
    goto ldv_51826;
  } else {
  }
  return;
}
}
static void be_evt_queues_destroy(struct be_adapter *adapter )
{
  struct be_eq_obj *eqo ;
  int i ;
  {
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_51835;
  ldv_51834: ;
  if ((int )eqo->q.created) {
    be_eq_clean(eqo);
    be_cmd_q_destroy(adapter, & eqo->q, 1);
  } else {
  }
  be_queue_free(adapter, & eqo->q);
  i = i + 1;
  eqo = eqo + 1;
  ldv_51835: ;
  if ((u32 )i < adapter->num_evt_qs) {
    goto ldv_51834;
  } else {
  }
  return;
}
}
static int be_evt_queues_create(struct be_adapter *adapter )
{
  struct be_queue_info *eq ;
  struct be_eq_obj *eqo ;
  int i ;
  int rc ;
  {
  adapter->num_evt_qs = adapter->num_msix_vec != 0U ? adapter->num_msix_vec : 1U;
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_51845;
  ldv_51844:
  eqo->adapter = adapter;
  eqo->tx_budget = 256U;
  eqo->idx = (u8 )i;
  eqo->max_eqd = 96U;
  eqo->enable_aic = 1;
  eq = & eqo->q;
  rc = be_queue_alloc(adapter, eq, 1024, 4);
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = be_cmd_eq_create(adapter, eq, (int )eqo->cur_eqd);
  if (rc != 0) {
    return (rc);
  } else {
  }
  i = i + 1;
  eqo = eqo + 1;
  ldv_51845: ;
  if ((u32 )i < adapter->num_evt_qs) {
    goto ldv_51844;
  } else {
  }
  return (0);
}
}
static void be_mcc_queues_destroy(struct be_adapter *adapter )
{
  struct be_queue_info *q ;
  {
  q = & adapter->mcc_obj.q;
  if ((int )q->created) {
    be_cmd_q_destroy(adapter, q, 5);
  } else {
  }
  be_queue_free(adapter, q);
  q = & adapter->mcc_obj.cq;
  if ((int )q->created) {
    be_cmd_q_destroy(adapter, q, 2);
  } else {
  }
  be_queue_free(adapter, q);
  return;
}
}
static int be_mcc_queues_create(struct be_adapter *adapter )
{
  struct be_queue_info *q ;
  struct be_queue_info *cq ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  cq = & adapter->mcc_obj.cq;
  tmp = be_queue_alloc(adapter, cq, 256, 16);
  if (tmp != 0) {
    goto err;
  } else {
  }
  tmp___0 = be_cmd_cq_create(adapter, cq, & ((struct be_eq_obj *)(& adapter->eq_obj))->q,
                             1, 0);
  if (tmp___0 != 0) {
    goto mcc_cq_free;
  } else {
  }
  q = & adapter->mcc_obj.q;
  tmp___1 = be_queue_alloc(adapter, q, 128, 256);
  if (tmp___1 != 0) {
    goto mcc_cq_destroy;
  } else {
  }
  tmp___2 = be_cmd_mccq_create(adapter, q, cq);
  if (tmp___2 != 0) {
    goto mcc_q_free;
  } else {
  }
  return (0);
  mcc_q_free:
  be_queue_free(adapter, q);
  mcc_cq_destroy:
  be_cmd_q_destroy(adapter, cq, 2);
  mcc_cq_free:
  be_queue_free(adapter, cq);
  err: ;
  return (-1);
}
}
static void be_tx_queues_destroy(struct be_adapter *adapter )
{
  struct be_queue_info *q ;
  struct be_tx_obj *txo ;
  u8 i ;
  {
  i = 0U;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_51867;
  ldv_51866:
  q = & txo->q;
  if ((int )q->created) {
    be_cmd_q_destroy(adapter, q, 3);
  } else {
  }
  be_queue_free(adapter, q);
  q = & txo->cq;
  if ((int )q->created) {
    be_cmd_q_destroy(adapter, q, 2);
  } else {
  }
  be_queue_free(adapter, q);
  i = (u8 )((int )i + 1);
  txo = txo + 1;
  ldv_51867: ;
  if ((u32 )i < adapter->num_tx_qs) {
    goto ldv_51866;
  } else {
  }
  return;
}
}
static int be_num_txqs_want(struct be_adapter *adapter )
{
  bool tmp ;
  {
  if (((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) && ((adapter->dev_num_vfs != 0U && num_vfs != 0U) && (unsigned int )adapter->virtfn == 0U)) {
    return (1);
  } else {
    tmp = be_is_mc(adapter);
    if ((int )tmp) {
      return (1);
    } else
    if (((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) && (unsigned int )adapter->virtfn != 0U) {
      return (1);
    } else
    if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
      return (1);
    } else {
      return ((int )adapter->max_tx_queues);
    }
  }
}
}
static int be_tx_cqs_create(struct be_adapter *adapter )
{
  struct be_queue_info *cq ;
  struct be_queue_info *eq ;
  int status ;
  struct be_tx_obj *txo ;
  u8 i ;
  int tmp ;
  {
  tmp = be_num_txqs_want(adapter);
  adapter->num_tx_qs = (u32 )tmp;
  if (adapter->num_tx_qs != 8U) {
    rtnl_lock();
    netif_set_real_num_tx_queues(adapter->netdev, adapter->num_tx_qs);
    rtnl_unlock();
  } else {
  }
  i = 0U;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_51881;
  ldv_51880:
  cq = & txo->cq;
  status = be_queue_alloc(adapter, cq, 1024, 16);
  if (status != 0) {
    return (status);
  } else {
  }
  eq = & adapter->eq_obj[(u32 )i % adapter->num_evt_qs].q;
  status = be_cmd_cq_create(adapter, cq, eq, 0, 3);
  if (status != 0) {
    return (status);
  } else {
  }
  i = (u8 )((int )i + 1);
  txo = txo + 1;
  ldv_51881: ;
  if ((u32 )i < adapter->num_tx_qs) {
    goto ldv_51880;
  } else {
  }
  return (0);
}
}
static int be_tx_qs_create(struct be_adapter *adapter )
{
  struct be_tx_obj *txo ;
  int i ;
  int status ;
  {
  i = 0;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_51890;
  ldv_51889:
  status = be_queue_alloc(adapter, & txo->q, 2048, 16);
  if (status != 0) {
    return (status);
  } else {
  }
  status = be_cmd_txq_create(adapter, txo);
  if (status != 0) {
    return (status);
  } else {
  }
  i = i + 1;
  txo = txo + 1;
  ldv_51890: ;
  if ((u32 )i < adapter->num_tx_qs) {
    goto ldv_51889;
  } else {
  }
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "created %d TX queue(s)\n",
            adapter->num_tx_qs);
  return (0);
}
}
static void be_rx_cqs_destroy(struct be_adapter *adapter )
{
  struct be_queue_info *q ;
  struct be_rx_obj *rxo ;
  int i ;
  {
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_51899;
  ldv_51898:
  q = & rxo->cq;
  if ((int )q->created) {
    be_cmd_q_destroy(adapter, q, 2);
  } else {
  }
  be_queue_free(adapter, q);
  i = i + 1;
  rxo = rxo + 1;
  ldv_51899: ;
  if ((u32 )i < adapter->num_rx_qs) {
    goto ldv_51898;
  } else {
  }
  return;
}
}
static int be_rx_cqs_create(struct be_adapter *adapter )
{
  struct be_queue_info *eq ;
  struct be_queue_info *cq ;
  struct be_rx_obj *rxo ;
  int rc ;
  int i ;
  int tmp ;
  {
  adapter->num_rx_qs = adapter->num_msix_vec != 0U && adapter->num_msix_vec > 1U ? (adapter->num_msix_vec != 0U ? adapter->num_msix_vec + 1U : 2U) : 1U;
  if (adapter->num_rx_qs != 9U) {
    rtnl_lock();
    netif_set_real_num_rx_queues(adapter->netdev, adapter->num_rx_qs);
    rtnl_unlock();
  } else {
  }
  tmp = __get_order((unsigned long )rx_frag_size);
  adapter->big_page_size = (u32 )((unsigned long )(1 << tmp)) * 4096U;
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_51910;
  ldv_51909:
  rxo->adapter = adapter;
  cq = & rxo->cq;
  rc = be_queue_alloc(adapter, cq, 1024, 16);
  if (rc != 0) {
    return (rc);
  } else {
  }
  eq = & adapter->eq_obj[(u32 )i % adapter->num_evt_qs].q;
  rc = be_cmd_cq_create(adapter, cq, eq, 0, 3);
  if (rc != 0) {
    return (rc);
  } else {
  }
  i = i + 1;
  rxo = rxo + 1;
  ldv_51910: ;
  if ((u32 )i < adapter->num_rx_qs) {
    goto ldv_51909;
  } else {
  }
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "created %d RSS queue(s) and 1 default RX queue\n",
            adapter->num_rx_qs - 1U);
  return (0);
}
}
static irqreturn_t be_intx(int irq , void *dev )
{
  struct be_eq_obj *eqo ;
  struct be_adapter *adapter ;
  int num_evts ;
  bool tmp ;
  u16 tmp___0 ;
  {
  eqo = (struct be_eq_obj *)dev;
  adapter = eqo->adapter;
  num_evts = 0;
  tmp = napi_schedule_prep(& eqo->napi);
  if ((int )tmp) {
    num_evts = events_get(eqo);
    __napi_schedule(& eqo->napi);
    if (num_evts != 0) {
      eqo->spurious_intr = 0U;
    } else {
    }
  } else {
  }
  be_eq_notify(adapter, (int )eqo->q.id, 0, 1, (int )((u16 )num_evts));
  if (num_evts != 0) {
    return (1);
  } else {
    tmp___0 = eqo->spurious_intr;
    eqo->spurious_intr = (u16 )((int )eqo->spurious_intr + 1);
    if ((unsigned int )tmp___0 == 0U) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
static irqreturn_t be_msix(int irq , void *dev )
{
  struct be_eq_obj *eqo ;
  {
  eqo = (struct be_eq_obj *)dev;
  be_eq_notify(eqo->adapter, (int )eqo->q.id, 0, 1, 0);
  napi_schedule(& eqo->napi);
  return (1);
}
}
__inline static bool do_gro(struct be_rx_compl_info *rxcp )
{
  {
  return ((bool )((unsigned int )rxcp->tcpf != 0U && (unsigned int )rxcp->err == 0U));
}
}
static int be_process_rx(struct be_rx_obj *rxo , struct napi_struct *napi , int budget )
{
  struct be_adapter *adapter ;
  struct be_queue_info *rx_cq ;
  struct be_rx_compl_info *rxcp ;
  u32 work_done ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  {
  adapter = rxo->adapter;
  rx_cq = & rxo->cq;
  work_done = 0U;
  goto ldv_51939;
  ldv_51938:
  rxcp = be_rx_compl_get(rxo);
  if ((unsigned long )rxcp == (unsigned long )((struct be_rx_compl_info *)0)) {
    goto ldv_51936;
  } else {
  }
  tmp = ldv__builtin_expect((unsigned int )rxcp->num_rcvd == 0U, 0L);
  if (tmp != 0L) {
    goto loop_continue;
  } else {
  }
  tmp___0 = ldv__builtin_expect((unsigned int )rxcp->pkt_size == 0U, 0L);
  if (tmp___0 != 0L) {
    be_rx_compl_discard(rxo, rxcp);
    goto loop_continue;
  } else {
  }
  tmp___1 = ldv__builtin_expect((u32 )rxcp->port != adapter->port_num, 0L);
  if (tmp___1 != 0L) {
    tmp___2 = ldv__builtin_expect((unsigned int )(adapter->pdev)->device != 57888U, 0L);
    if (tmp___2 != 0L) {
      tmp___3 = ldv__builtin_expect((unsigned int )(adapter->pdev)->device != 57896U,
                                 0L);
      if (tmp___3 != 0L) {
        tmp___4 = 1;
      } else {
        tmp___4 = 0;
      }
    } else {
      tmp___4 = 0;
    }
    if (tmp___4 != 0) {
      be_rx_compl_discard(rxo, rxcp);
      goto loop_continue;
    } else {
    }
  } else {
  }
  tmp___5 = do_gro(rxcp);
  if ((int )tmp___5) {
    be_rx_compl_process_gro(rxo, napi, rxcp);
  } else {
    be_rx_compl_process(rxo, rxcp);
  }
  loop_continue:
  be_rx_stats_update(rxo, rxcp);
  work_done = work_done + 1U;
  ldv_51939: ;
  if ((u32 )budget > work_done) {
    goto ldv_51938;
  } else {
  }
  ldv_51936: ;
  if (work_done != 0U) {
    be_cq_notify(adapter, (int )rx_cq->id, 1, (int )((u16 )work_done));
    tmp___6 = atomic_read((atomic_t const *)(& rxo->q.used));
    if (tmp___6 <= 959) {
      be_post_rx_frags(rxo, 32U);
    } else {
    }
  } else {
  }
  return ((int )work_done);
}
}
static bool be_process_tx(struct be_adapter *adapter , struct be_tx_obj *txo , int budget ,
                          int idx )
{
  struct be_eth_tx_compl *txcp ;
  int num_wrbs ;
  int work_done ;
  u32 tmp ;
  u32 tmp___0 ;
  u16 tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  num_wrbs = 0;
  work_done = 0;
  goto ldv_51951;
  ldv_51950:
  txcp = be_tx_compl_get(& txo->cq);
  if ((unsigned long )txcp == (unsigned long )((struct be_eth_tx_compl *)0)) {
    goto ldv_51949;
  } else {
  }
  tmp = amap_mask(16U);
  tmp___0 = amap_get((void *)txcp, 0U, tmp, 0U);
  tmp___1 = be_tx_compl_process(adapter, txo, (int )((u16 )tmp___0));
  num_wrbs = (int )tmp___1 + num_wrbs;
  work_done = work_done + 1;
  ldv_51951: ;
  if (work_done < budget) {
    goto ldv_51950;
  } else {
  }
  ldv_51949: ;
  if (work_done != 0) {
    be_cq_notify(adapter, (int )txo->cq.id, 1, (int )((u16 )work_done));
    atomic_sub(num_wrbs, & txo->q.used);
    tmp___2 = __netif_subqueue_stopped((struct net_device const *)adapter->netdev,
                                       (int )((u16 )idx));
    if ((int )tmp___2) {
      tmp___3 = atomic_read((atomic_t const *)(& txo->q.used));
      if (tmp___3 < (int )((unsigned int )txo->q.len / 2U)) {
        netif_wake_subqueue(adapter->netdev, (int )((u16 )idx));
      } else {
      }
    } else {
    }
    u64_stats_update_begin(& txo->stats.sync_compl);
    txo->stats.tx_compl = txo->stats.tx_compl + (u64 )work_done;
    u64_stats_update_begin(& txo->stats.sync_compl);
  } else {
  }
  return (work_done < budget);
}
}
int be_poll(struct napi_struct *napi , int budget )
{
  struct be_eq_obj *eqo ;
  struct napi_struct const *__mptr ;
  struct be_adapter *adapter ;
  int max_work ;
  int work ;
  int i ;
  int num_evts ;
  bool tx_done ;
  int _max1 ;
  int _max2 ;
  {
  __mptr = (struct napi_struct const *)napi;
  eqo = (struct be_eq_obj *)__mptr + 0xffffffffffffff98UL;
  adapter = eqo->adapter;
  max_work = 0;
  num_evts = events_get(eqo);
  i = (int )eqo->idx;
  goto ldv_51966;
  ldv_51965:
  tx_done = be_process_tx(adapter, (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i,
                          (int )eqo->tx_budget, i);
  if (! tx_done) {
    max_work = budget;
  } else {
  }
  i = (int )(adapter->num_evt_qs + (u32 )i);
  ldv_51966: ;
  if ((u32 )i < adapter->num_tx_qs) {
    goto ldv_51965;
  } else {
  }
  i = (int )eqo->idx;
  goto ldv_51972;
  ldv_51971:
  work = be_process_rx((struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i,
                       napi, budget);
  _max1 = work;
  _max2 = max_work;
  max_work = _max1 > _max2 ? _max1 : _max2;
  i = (int )(adapter->num_evt_qs + (u32 )i);
  ldv_51972: ;
  if ((u32 )i < adapter->num_rx_qs) {
    goto ldv_51971;
  } else {
  }
  if ((unsigned int )eqo->idx == 0U) {
    be_process_mcc(adapter);
  } else {
  }
  if (max_work < budget) {
    napi_complete(napi);
    be_eq_notify(adapter, (int )eqo->q.id, 1, 0, (int )((u16 )num_evts));
  } else {
    be_eq_notify(adapter, (int )eqo->q.id, 0, 0, (int )((u16 )num_evts));
  }
  return (max_work);
}
}
void be_detect_error(struct be_adapter *adapter )
{
  u32 ue_lo ;
  u32 ue_hi ;
  u32 ue_lo_mask ;
  u32 ue_hi_mask ;
  u32 sliport_status ;
  u32 sliport_err1 ;
  u32 sliport_err2 ;
  u32 i ;
  bool tmp ;
  {
  ue_lo = 0U;
  ue_hi = 0U;
  ue_lo_mask = 0U;
  ue_hi_mask = 0U;
  sliport_status = 0U;
  sliport_err1 = 0U;
  sliport_err2 = 0U;
  tmp = be_hw_error(adapter);
  if ((int )tmp) {
    return;
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    sliport_status = ioread32((void *)adapter->db + 1028U);
    if ((int )sliport_status < 0) {
      sliport_err1 = ioread32((void *)adapter->db + 1036U);
      sliport_err2 = ioread32((void *)adapter->db + 1040U);
    } else {
    }
  } else {
    pci_read_config_dword((struct pci_dev const *)adapter->pdev, 160, & ue_lo);
    pci_read_config_dword((struct pci_dev const *)adapter->pdev, 164, & ue_hi);
    pci_read_config_dword((struct pci_dev const *)adapter->pdev, 168, & ue_lo_mask);
    pci_read_config_dword((struct pci_dev const *)adapter->pdev, 172, & ue_hi_mask);
    ue_lo = ~ ue_lo_mask & ue_lo;
    ue_hi = ~ ue_hi_mask & ue_hi;
  }
  if ((int )sliport_status < 0) {
    adapter->hw_error = 1;
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Error detected in the card\n");
  } else {
  }
  if ((int )sliport_status < 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "ERR: sliport status 0x%x\n",
            sliport_status);
    dev_err((struct device const *)(& (adapter->pdev)->dev), "ERR: sliport error1 0x%x\n",
            sliport_err1);
    dev_err((struct device const *)(& (adapter->pdev)->dev), "ERR: sliport error2 0x%x\n",
            sliport_err2);
  } else {
  }
  if (ue_lo != 0U) {
    i = 0U;
    goto ldv_51986;
    ldv_51985: ;
    if ((int )ue_lo & 1) {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "UE: %s bit set\n",
              ue_status_low_desc[i]);
    } else {
    }
    ue_lo = ue_lo >> 1;
    i = i + 1U;
    ldv_51986: ;
    if (ue_lo != 0U) {
      goto ldv_51985;
    } else {
    }
  } else {
  }
  if (ue_hi != 0U) {
    i = 0U;
    goto ldv_51989;
    ldv_51988: ;
    if ((int )ue_hi & 1) {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "UE: %s bit set\n",
              ue_status_hi_desc[i]);
    } else {
    }
    ue_hi = ue_hi >> 1;
    i = i + 1U;
    ldv_51989: ;
    if (ue_hi != 0U) {
      goto ldv_51988;
    } else {
    }
  } else {
  }
  return;
}
}
static void be_msix_disable(struct be_adapter *adapter )
{
  {
  if (adapter->num_msix_vec != 0U) {
    pci_disable_msix(adapter->pdev);
    adapter->num_msix_vec = 0U;
  } else {
  }
  return;
}
}
static uint be_num_rss_want(struct be_adapter *adapter )
{
  u32 num ;
  u32 __min1 ;
  u32 __min2 ;
  int tmp ;
  {
  num = 0U;
  if ((adapter->function_caps & 2U) != 0U && (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) || (((adapter->dev_num_vfs == 0U || num_vfs == 0U) || (unsigned int )adapter->virtfn != 0U) && (unsigned int )adapter->virtfn == 0U))) {
    num = (u32 )adapter->max_rss_queues;
    __min1 = num;
    tmp = netif_get_num_default_rss_queues();
    __min2 = (unsigned int )tmp;
    num = __min1 < __min2 ? __min1 : __min2;
  } else {
  }
  return (num);
}
}
static int be_msix_enable(struct be_adapter *adapter )
{
  int i ;
  int status ;
  int num_vec ;
  int num_roce_vec ;
  struct device *dev ;
  uint _min1 ;
  uint tmp ;
  unsigned int _min2 ;
  unsigned int tmp___0 ;
  u32 __min1 ;
  u32 __min2 ;
  unsigned int tmp___1 ;
  int _min1___0 ;
  int _min2___0 ;
  int _min1___1 ;
  int _min2___1 ;
  int _max1 ;
  int _max2 ;
  {
  num_roce_vec = 0;
  dev = & (adapter->pdev)->dev;
  tmp = be_num_rss_want(adapter);
  _min1 = tmp;
  tmp___0 = cpumask_weight(cpu_online_mask);
  _min2 = tmp___0;
  num_vec = (int )(_min1 < _min2 ? _min1 : _min2);
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    __min1 = 16U;
    tmp___1 = cpumask_weight(cpu_online_mask);
    __min2 = tmp___1 + 1U;
    num_roce_vec = (int )(__min1 < __min2 ? __min1 : __min2);
    _min1___0 = num_roce_vec;
    _min2___0 = 5;
    num_roce_vec = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    num_vec = num_vec + num_roce_vec;
    _min1___1 = num_vec;
    _min2___1 = 13;
    num_vec = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
  } else {
  }
  _max1 = num_vec;
  _max2 = 1;
  num_vec = _max1 > _max2 ? _max1 : _max2;
  i = 0;
  goto ldv_52025;
  ldv_52024:
  adapter->msix_entries[i].entry = (u16 )i;
  i = i + 1;
  ldv_52025: ;
  if (i < num_vec) {
    goto ldv_52024;
  } else {
  }
  status = pci_enable_msix(adapter->pdev, (struct msix_entry *)(& adapter->msix_entries),
                           num_vec);
  if (status == 0) {
    goto done;
  } else
  if (status > 0) {
    num_vec = status;
    status = pci_enable_msix(adapter->pdev, (struct msix_entry *)(& adapter->msix_entries),
                             num_vec);
    if (status == 0) {
      goto done;
    } else {
    }
  } else {
  }
  dev_warn((struct device const *)dev, "MSIx enable failed\n");
  if ((unsigned int )adapter->virtfn != 0U) {
    return (status);
  } else {
  }
  return (0);
  done: ;
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    if (num_vec > num_roce_vec) {
      adapter->num_msix_vec = (u32 )(num_vec - num_roce_vec);
      adapter->num_msix_roce_vec = (u32 )num_vec - adapter->num_msix_vec;
    } else {
      adapter->num_msix_vec = (u32 )num_vec;
      adapter->num_msix_roce_vec = 0U;
    }
  } else {
    adapter->num_msix_vec = (u32 )num_vec;
  }
  _dev_info((struct device const *)dev, "enabled %d MSI-x vector(s)\n", adapter->num_msix_vec);
  return (0);
}
}
__inline static int be_msix_vec_get(struct be_adapter *adapter , struct be_eq_obj *eqo )
{
  {
  return ((int )adapter->msix_entries[(int )eqo->idx].vector);
}
}
static int be_msix_register(struct be_adapter *adapter )
{
  struct net_device *netdev ;
  struct be_eq_obj *eqo ;
  int status ;
  int i ;
  int vec ;
  int tmp ;
  {
  netdev = adapter->netdev;
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_52042;
  ldv_52041:
  sprintf((char *)(& eqo->desc), "%s-q%d", (char *)(& netdev->name), i);
  vec = be_msix_vec_get(adapter, eqo);
  status = request_irq((unsigned int )vec, & be_msix, 0UL, (char const *)(& eqo->desc),
                       (void *)eqo);
  if (status != 0) {
    goto err_msix;
  } else {
  }
  i = i + 1;
  eqo = eqo + 1;
  ldv_52042: ;
  if ((u32 )i < adapter->num_evt_qs) {
    goto ldv_52041;
  } else {
  }
  return (0);
  err_msix:
  i = i - 1;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_52045;
  ldv_52044:
  tmp = be_msix_vec_get(adapter, eqo);
  free_irq((unsigned int )tmp, (void *)eqo);
  i = i - 1;
  eqo = eqo - 1;
  ldv_52045: ;
  if (i >= 0) {
    goto ldv_52044;
  } else {
  }
  dev_warn((struct device const *)(& (adapter->pdev)->dev), "MSIX Request IRQ failed - err %d\n",
           status);
  be_msix_disable(adapter);
  return (status);
}
}
static int be_irq_register(struct be_adapter *adapter )
{
  struct net_device *netdev ;
  int status ;
  {
  netdev = adapter->netdev;
  if (adapter->num_msix_vec != 0U) {
    status = be_msix_register(adapter);
    if (status == 0) {
      goto done;
    } else {
    }
    if ((unsigned int )adapter->virtfn != 0U) {
      return (status);
    } else {
    }
  } else {
  }
  netdev->irq = (adapter->pdev)->irq;
  status = request_irq(netdev->irq, & be_intx, 128UL, (char const *)(& netdev->name),
                       (void *)(& adapter->eq_obj));
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "INTx request IRQ failed - err %d\n",
            status);
    return (status);
  } else {
  }
  done:
  adapter->isr_registered = 1;
  return (0);
}
}
static void be_irq_unregister(struct be_adapter *adapter )
{
  struct net_device *netdev ;
  struct be_eq_obj *eqo ;
  int i ;
  int tmp ;
  {
  netdev = adapter->netdev;
  if (! adapter->isr_registered) {
    return;
  } else {
  }
  if (adapter->num_msix_vec == 0U) {
    free_irq(netdev->irq, (void *)(& adapter->eq_obj));
    goto done;
  } else {
  }
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_52061;
  ldv_52060:
  tmp = be_msix_vec_get(adapter, eqo);
  free_irq((unsigned int )tmp, (void *)eqo);
  i = i + 1;
  eqo = eqo + 1;
  ldv_52061: ;
  if ((u32 )i < adapter->num_evt_qs) {
    goto ldv_52060;
  } else {
  }
  done:
  adapter->isr_registered = 0;
  return;
}
}
static void be_rx_qs_destroy(struct be_adapter *adapter )
{
  struct be_queue_info *q ;
  struct be_rx_obj *rxo ;
  int i ;
  {
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_52070;
  ldv_52069:
  q = & rxo->q;
  if ((int )q->created) {
    be_cmd_rxq_destroy(adapter, q);
    be_rx_cq_clean(rxo);
  } else {
  }
  be_queue_free(adapter, q);
  i = i + 1;
  rxo = rxo + 1;
  ldv_52070: ;
  if ((u32 )i < adapter->num_rx_qs) {
    goto ldv_52069;
  } else {
  }
  return;
}
}
static int be_close(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_eq_obj *eqo ;
  int i ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  be_roce_dev_close(adapter);
  if ((adapter->flags & 512U) != 0U) {
    i = 0;
    eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
    goto ldv_52079;
    ldv_52078:
    napi_disable(& eqo->napi);
    i = i + 1;
    eqo = eqo + 1;
    ldv_52079: ;
    if ((u32 )i < adapter->num_evt_qs) {
      goto ldv_52078;
    } else {
    }
    adapter->flags = adapter->flags & 4294966783U;
  } else {
  }
  be_async_mcc_disable(adapter);
  be_tx_compl_clean(adapter);
  netif_tx_disable(netdev);
  be_rx_qs_destroy(adapter);
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_52082;
  ldv_52081: ;
  if (adapter->num_msix_vec != 0U) {
    tmp___0 = be_msix_vec_get(adapter, eqo);
    synchronize_irq((unsigned int )tmp___0);
  } else {
    synchronize_irq(netdev->irq);
  }
  be_eq_clean(eqo);
  i = i + 1;
  eqo = eqo + 1;
  ldv_52082: ;
  if ((u32 )i < adapter->num_evt_qs) {
    goto ldv_52081;
  } else {
  }
  be_irq_unregister(adapter);
  return (0);
}
}
static int be_rx_qs_create(struct be_adapter *adapter )
{
  struct be_rx_obj *rxo ;
  int rc ;
  int i ;
  int j ;
  u8 rsstable[128U] ;
  bool tmp ;
  {
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_52093;
  ldv_52092:
  rc = be_queue_alloc(adapter, & rxo->q, 1024, 8);
  if (rc != 0) {
    return (rc);
  } else {
  }
  i = i + 1;
  rxo = rxo + 1;
  ldv_52093: ;
  if ((u32 )i < adapter->num_rx_qs) {
    goto ldv_52092;
  } else {
  }
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )(adapter->num_rx_qs - 1U);
  rc = be_cmd_rxq_create(adapter, & rxo->q, (int )rxo->cq.id, (int )rx_frag_size,
                         (u32 )adapter->if_handle, 0U, & rxo->rss_id);
  if (rc != 0) {
    return (rc);
  } else {
  }
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_52096;
  ldv_52095:
  rc = be_cmd_rxq_create(adapter, & rxo->q, (int )rxo->cq.id, (int )rx_frag_size,
                         (u32 )adapter->if_handle, 1U, & rxo->rss_id);
  if (rc != 0) {
    return (rc);
  } else {
  }
  i = i + 1;
  rxo = rxo + 1;
  ldv_52096: ;
  if ((u32 )i < adapter->num_rx_qs - 1U) {
    goto ldv_52095;
  } else {
  }
  tmp = be_multi_rxq((struct be_adapter const *)adapter);
  if ((int )tmp) {
    j = 0;
    goto ldv_52102;
    ldv_52101:
    i = 0;
    rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
    goto ldv_52100;
    ldv_52099: ;
    if (j + i > 127) {
      goto ldv_52098;
    } else {
    }
    rsstable[j + i] = rxo->rss_id;
    i = i + 1;
    rxo = rxo + 1;
    ldv_52100: ;
    if ((u32 )i < adapter->num_rx_qs - 1U) {
      goto ldv_52099;
    } else {
    }
    ldv_52098:
    j = (int )((adapter->num_rx_qs + (u32 )j) - 1U);
    ldv_52102: ;
    if (j <= 127) {
      goto ldv_52101;
    } else {
    }
    adapter->rss_flags = 15ULL;
    if (((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) {
      adapter->rss_flags = adapter->rss_flags | 48ULL;
    } else {
    }
    rc = be_cmd_rss_config(adapter, (u8 *)(& rsstable), (u32 )adapter->rss_flags,
                           128);
    if (rc != 0) {
      adapter->rss_flags = 0ULL;
      return (rc);
    } else {
    }
  } else {
  }
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_52105;
  ldv_52104:
  be_post_rx_frags(rxo, 208U);
  i = i + 1;
  rxo = rxo + 1;
  ldv_52105: ;
  if ((u32 )i < adapter->num_rx_qs) {
    goto ldv_52104;
  } else {
  }
  return (0);
}
}
static int be_open(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_eq_obj *eqo ;
  struct be_rx_obj *rxo ;
  struct be_tx_obj *txo ;
  u8 link_status ;
  int status ;
  int i ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  status = be_rx_qs_create(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_irq_register(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_52119;
  ldv_52118:
  be_cq_notify(adapter, (int )rxo->cq.id, 1, 0);
  i = i + 1;
  rxo = rxo + 1;
  ldv_52119: ;
  if ((u32 )i < adapter->num_rx_qs) {
    goto ldv_52118;
  } else {
  }
  i = 0;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_52122;
  ldv_52121:
  be_cq_notify(adapter, (int )txo->cq.id, 1, 0);
  i = i + 1;
  txo = txo + 1;
  ldv_52122: ;
  if ((u32 )i < adapter->num_tx_qs) {
    goto ldv_52121;
  } else {
  }
  be_async_mcc_enable(adapter);
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_52125;
  ldv_52124:
  napi_enable(& eqo->napi);
  be_eq_notify(adapter, (int )eqo->q.id, 1, 0, 0);
  i = i + 1;
  eqo = eqo + 1;
  ldv_52125: ;
  if ((u32 )i < adapter->num_evt_qs) {
    goto ldv_52124;
  } else {
  }
  adapter->flags = adapter->flags | 512U;
  status = be_cmd_link_status_query(adapter, 0, & link_status, 0U);
  if (status == 0) {
    be_link_status_update(adapter, (int )link_status);
  } else {
  }
  netif_tx_start_all_queues(netdev);
  be_roce_dev_open(adapter);
  return (0);
  err:
  be_close(adapter->netdev);
  return (-5);
}
}
static int be_setup_wol(struct be_adapter *adapter , bool enable )
{
  struct be_dma_mem cmd ;
  int status ;
  u8 mac[6U] ;
  {
  status = 0;
  memset((void *)(& mac), 0, 6UL);
  cmd.size = 604U;
  cmd.va = dma_alloc_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, & cmd.dma, 32976U,
                           0);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    return (-1);
  } else {
  }
  if ((int )enable) {
    status = pci_write_config_dword((struct pci_dev const *)adapter->pdev, 68, 264U);
    if (status != 0) {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "Could not enable Wake-on-lan\n");
      dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, cmd.va, cmd.dma, 0);
      return (status);
    } else {
    }
    status = be_cmd_enable_magic_wol(adapter, (adapter->netdev)->dev_addr, & cmd);
    pci_enable_wake(adapter->pdev, 3, 1);
    pci_enable_wake(adapter->pdev, 4, 1);
  } else {
    status = be_cmd_enable_magic_wol(adapter, (u8 *)(& mac), & cmd);
    pci_enable_wake(adapter->pdev, 3, 0);
    pci_enable_wake(adapter->pdev, 4, 0);
  }
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, cmd.va, cmd.dma, 0);
  return (status);
}
}
static int be_vf_eth_addr_config(struct be_adapter *adapter )
{
  u32 vf ;
  int status ;
  u8 mac[6U] ;
  struct be_vf_cfg *vf_cfg ;
  size_t __len ;
  void *__ret ;
  {
  status = 0;
  be_vf_eth_addr_generate(adapter, (u8 *)(& mac));
  vf = 0U;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  goto ldv_52145;
  ldv_52144: ;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    status = be_cmd_set_mac_list(adapter, (u8 *)(& mac), 1, vf + 1U);
  } else {
    status = be_cmd_pmac_add(adapter, (u8 *)(& mac), (u32 )vf_cfg->if_handle, (u32 *)(& vf_cfg->pmac_id),
                             vf + 1U);
  }
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Mac address assignment failed for VF %d\n",
            vf);
  } else {
    __len = 6UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& vf_cfg->mac_addr), (void const *)(& mac), __len);
    } else {
      __ret = memcpy((void *)(& vf_cfg->mac_addr), (void const *)(& mac),
                               __len);
    }
  }
  mac[5] = (unsigned int )mac[5] + 1U;
  vf = vf + 1U;
  vf_cfg = vf_cfg + 1;
  ldv_52145: ;
  if (adapter->num_vfs > vf) {
    goto ldv_52144;
  } else {
  }
  return (status);
}
}
static int be_vfs_mac_query(struct be_adapter *adapter )
{
  int status ;
  int vf ;
  u8 mac[6U] ;
  struct be_vf_cfg *vf_cfg ;
  bool active ;
  size_t __len ;
  void *__ret ;
  {
  vf = 0;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  goto ldv_52159;
  ldv_52158:
  be_cmd_get_mac_from_list(adapter, (u8 *)(& mac), & active, (u32 *)(& vf_cfg->pmac_id),
                           0);
  status = be_cmd_mac_addr_query(adapter, (u8 *)(& mac), 0, (u32 )vf_cfg->if_handle,
                                 0U);
  if (status != 0) {
    return (status);
  } else {
  }
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& vf_cfg->mac_addr), (void const *)(& mac), __len);
  } else {
    __ret = memcpy((void *)(& vf_cfg->mac_addr), (void const *)(& mac),
                             __len);
  }
  vf = vf + 1;
  vf_cfg = vf_cfg + 1;
  ldv_52159: ;
  if ((u32 )vf < adapter->num_vfs) {
    goto ldv_52158;
  } else {
  }
  return (0);
}
}
static void be_vf_clear(struct be_adapter *adapter )
{
  struct be_vf_cfg *vf_cfg ;
  u32 vf ;
  int tmp ;
  {
  tmp = be_find_vfs(adapter, 1);
  if (tmp != 0) {
    dev_warn((struct device const *)(& (adapter->pdev)->dev), "VFs are assigned to VMs: not disabling VFs\n");
    goto done;
  } else {
  }
  pci_disable_sriov(adapter->pdev);
  vf = 0U;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  goto ldv_52168;
  ldv_52167: ;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    be_cmd_set_mac_list(adapter, 0, 0, vf + 1U);
  } else {
    be_cmd_pmac_del(adapter, (u32 )vf_cfg->if_handle, vf_cfg->pmac_id, vf + 1U);
  }
  be_cmd_if_destroy(adapter, vf_cfg->if_handle, vf + 1U);
  vf = vf + 1U;
  vf_cfg = vf_cfg + 1;
  ldv_52168: ;
  if (adapter->num_vfs > vf) {
    goto ldv_52167;
  } else {
  }
  done:
  kfree((void const *)adapter->vf_cfg);
  adapter->num_vfs = 0U;
  return;
}
}
static int be_clear(struct be_adapter *adapter )
{
  int i ;
  {
  i = 1;
  if ((adapter->flags & 8U) != 0U) {
    cancel_delayed_work_sync(& adapter->work);
    adapter->flags = adapter->flags & 4294967287U;
  } else {
  }
  if (adapter->num_vfs != 0U) {
    be_vf_clear(adapter);
  } else {
  }
  goto ldv_52175;
  ldv_52174:
  be_cmd_pmac_del(adapter, (u32 )adapter->if_handle, (int )*(adapter->pmac_id + (unsigned long )i),
                  0U);
  adapter->uc_macs = adapter->uc_macs - 1U;
  i = i + 1;
  ldv_52175: ;
  if (adapter->uc_macs != 0U) {
    goto ldv_52174;
  } else {
  }
  be_cmd_if_destroy(adapter, adapter->if_handle, 0U);
  be_mcc_queues_destroy(adapter);
  be_rx_cqs_destroy(adapter);
  be_tx_queues_destroy(adapter);
  be_evt_queues_destroy(adapter);
  kfree((void const *)adapter->pmac_id);
  adapter->pmac_id = 0;
  be_msix_disable(adapter);
  return (0);
}
}
static int be_vfs_if_create(struct be_adapter *adapter )
{
  struct be_vf_cfg *vf_cfg ;
  u32 cap_flags ;
  u32 en_flags ;
  u32 vf ;
  int status ;
  {
  cap_flags = 4144U;
  vf = 0U;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  goto ldv_52187;
  ldv_52186: ;
  if ((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) {
    be_cmd_get_profile_config(adapter, & cap_flags, 0, (int )((unsigned int )((u8 )vf) + 1U));
  } else {
  }
  en_flags = cap_flags & 4144U;
  status = be_cmd_if_create(adapter, cap_flags, en_flags, (u32 *)(& vf_cfg->if_handle),
                            vf + 1U);
  if (status != 0) {
    goto err;
  } else {
  }
  vf = vf + 1U;
  vf_cfg = vf_cfg + 1;
  ldv_52187: ;
  if (adapter->num_vfs > vf) {
    goto ldv_52186;
  } else {
  }
  err: ;
  return (status);
}
}
static int be_vf_setup_init(struct be_adapter *adapter )
{
  struct be_vf_cfg *vf_cfg ;
  int vf ;
  void *tmp ;
  {
  tmp = kcalloc((size_t )adapter->num_vfs, 24UL, 208U);
  adapter->vf_cfg = (struct be_vf_cfg *)tmp;
  if ((unsigned long )adapter->vf_cfg == (unsigned long )((struct be_vf_cfg *)0)) {
    return (-12);
  } else {
  }
  vf = 0;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  goto ldv_52195;
  ldv_52194:
  vf_cfg->if_handle = -1;
  vf_cfg->pmac_id = -1;
  vf = vf + 1;
  vf_cfg = vf_cfg + 1;
  ldv_52195: ;
  if ((u32 )vf < adapter->num_vfs) {
    goto ldv_52194;
  } else {
  }
  return (0);
}
}
static int be_vf_setup(struct be_adapter *adapter )
{
  struct be_vf_cfg *vf_cfg ;
  u16 def_vlan ;
  u16 lnk_speed ;
  int status ;
  int old_vfs ;
  int vf ;
  struct device *dev ;
  u16 __min1 ;
  u16 __min2 ;
  {
  dev = & (adapter->pdev)->dev;
  old_vfs = be_find_vfs(adapter, 0);
  if (old_vfs != 0) {
    _dev_info((struct device const *)dev, "%d VFs are already enabled\n", old_vfs);
    if ((unsigned int )old_vfs != num_vfs) {
      dev_warn((struct device const *)dev, "Ignoring num_vfs=%d setting\n", num_vfs);
    } else {
    }
    adapter->num_vfs = (u32 )old_vfs;
  } else {
    if (adapter->dev_num_vfs < num_vfs) {
      _dev_info((struct device const *)dev, "Device supports %d VFs and not %d\n",
                adapter->dev_num_vfs, num_vfs);
    } else {
    }
    __min1 = (u16 )num_vfs;
    __min2 = (u16 )adapter->dev_num_vfs;
    adapter->num_vfs = (u32 )((int )__min1 < (int )__min2 ? __min1 : __min2);
    if (adapter->num_vfs == 0U) {
      return (0);
    } else {
    }
  }
  status = be_vf_setup_init(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  if (old_vfs != 0) {
    vf = 0;
    vf_cfg = adapter->vf_cfg + (unsigned long )vf;
    goto ldv_52212;
    ldv_52211:
    status = be_cmd_get_if_id(adapter, vf_cfg, vf);
    if (status != 0) {
      goto err;
    } else {
    }
    vf = vf + 1;
    vf_cfg = vf_cfg + 1;
    ldv_52212: ;
    if ((u32 )vf < adapter->num_vfs) {
      goto ldv_52211;
    } else {
    }
  } else {
    status = be_vfs_if_create(adapter);
    if (status != 0) {
      goto err;
    } else {
    }
  }
  if (old_vfs != 0) {
    status = be_vfs_mac_query(adapter);
    if (status != 0) {
      goto err;
    } else {
    }
  } else {
    status = be_vf_eth_addr_config(adapter);
    if (status != 0) {
      goto err;
    } else {
    }
  }
  vf = 0;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  goto ldv_52215;
  ldv_52214: ;
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) && old_vfs == 0) {
    be_cmd_set_qos(adapter, 1000U, (u32 )(vf + 1));
  } else {
  }
  status = be_cmd_link_status_query(adapter, & lnk_speed, 0, (u32 )(vf + 1));
  if (status == 0) {
    vf_cfg->tx_rate = (u32 )lnk_speed;
  } else {
  }
  status = be_cmd_get_hsw_config(adapter, & def_vlan, (u32 )(vf + 1), (int )((u16 )vf_cfg->if_handle));
  if (status != 0) {
    goto err;
  } else {
  }
  vf_cfg->def_vid = def_vlan;
  be_cmd_enable_vf(adapter, (int )((unsigned int )((u8 )vf) + 1U));
  vf = vf + 1;
  vf_cfg = vf_cfg + 1;
  ldv_52215: ;
  if ((u32 )vf < adapter->num_vfs) {
    goto ldv_52214;
  } else {
  }
  if (old_vfs == 0) {
    status = pci_enable_sriov(adapter->pdev, (int )adapter->num_vfs);
    if (status != 0) {
      dev_err((struct device const *)dev, "SRIOV enable failed\n");
      adapter->num_vfs = 0U;
      goto err;
    } else {
    }
  } else {
  }
  return (0);
  err:
  dev_err((struct device const *)dev, "VF setup failed\n");
  be_vf_clear(adapter);
  return (status);
}
}
static void be_setup_init(struct be_adapter *adapter )
{
  {
  adapter->vlan_prio_bmap = 255U;
  adapter->phy.link_speed = -1;
  adapter->if_handle = -1;
  adapter->be3_native = 0;
  adapter->promiscuous = 0;
  if ((unsigned int )adapter->virtfn == 0U) {
    adapter->cmd_privileges = 1792U;
  } else {
    adapter->cmd_privileges = 1U;
  }
  return;
}
}
static int be_get_mac_addr(struct be_adapter *adapter , u8 *mac , u32 if_handle ,
                           bool *active_mac , u32 *pmac_id )
{
  int status ;
  size_t __len ;
  void *__ret ;
  bool tmp ;
  int tmp___0 ;
  {
  status = 0;
  tmp = is_zero_ether_addr((u8 const *)(& (adapter->netdev)->perm_addr));
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    __len = 6UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)mac, (void const *)(adapter->netdev)->dev_addr, __len);
    } else {
      __ret = memcpy((void *)mac, (void const *)(adapter->netdev)->dev_addr,
                               __len);
    }
    if (((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) && (unsigned int )adapter->virtfn != 0U) {
      *active_mac = 1;
    } else {
      *active_mac = 0;
    }
    return (status);
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    status = be_cmd_get_mac_from_list(adapter, mac, active_mac, pmac_id, 0);
    if ((int )*active_mac) {
      status = be_cmd_mac_addr_query(adapter, mac, 0, if_handle, *pmac_id);
    } else {
    }
  } else
  if ((unsigned int )adapter->virtfn == 0U) {
    status = be_cmd_mac_addr_query(adapter, mac, 1, 0U, 0U);
    *active_mac = 0;
  } else {
    status = be_cmd_mac_addr_query(adapter, mac, 0, if_handle, 0U);
    *active_mac = 1;
  }
  return (status);
}
}
static void be_get_resources(struct be_adapter *adapter )
{
  u16 dev_num_vfs ;
  int pos ;
  int status ;
  bool profile_present ;
  u16 txq_count ;
  u16 __min1 ;
  u16 __min2 ;
  u16 __min1___0 ;
  u16 __min2___0 ;
  u16 __min1___1 ;
  u16 __min2___1 ;
  u16 __min1___2 ;
  u16 __min2___2 ;
  u16 __min1___3 ;
  u16 __min2___3 ;
  u16 __min1___4 ;
  u16 __min2___4 ;
  u16 __min1___5 ;
  u16 __min2___5 ;
  u16 __min1___6 ;
  u16 __min2___6 ;
  {
  profile_present = 0;
  txq_count = 0U;
  if (((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) {
    status = be_cmd_get_func_config(adapter);
    if (status == 0) {
      profile_present = 1;
    } else {
    }
  } else
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) && (unsigned int )adapter->virtfn == 0U) {
    be_cmd_get_profile_config(adapter, 0, & txq_count, 0);
  } else {
  }
  if ((int )profile_present) {
    __min1 = adapter->max_pmac_cnt;
    __min2 = 30U;
    adapter->max_pmac_cnt = (u16 )((int )__min1 < (int )__min2 ? __min1 : __min2);
    __min1___0 = adapter->max_vlans;
    __min2___0 = 64U;
    adapter->max_vlans = (u16 )((int )__min1___0 < (int )__min2___0 ? __min1___0 : __min2___0);
    __min1___1 = adapter->max_mcast_mac;
    __min2___1 = 64U;
    adapter->max_mcast_mac = (u16 )((int )__min1___1 < (int )__min2___1 ? __min1___1 : __min2___1);
    __min1___2 = adapter->max_tx_queues;
    __min2___2 = 8U;
    adapter->max_tx_queues = (u16 )((int )__min1___2 < (int )__min2___2 ? __min1___2 : __min2___2);
    __min1___3 = adapter->max_rss_queues;
    __min2___3 = 8U;
    adapter->max_rss_queues = (u16 )((int )__min1___3 < (int )__min2___3 ? __min1___3 : __min2___3);
    __min1___4 = adapter->max_event_queues;
    __min2___4 = 8U;
    adapter->max_event_queues = (u16 )((int )__min1___4 < (int )__min2___4 ? __min1___4 : __min2___4);
    if ((unsigned int )adapter->max_rss_queues != 0U && (int )adapter->max_rss_queues == (int )adapter->max_rx_queues) {
      adapter->max_rss_queues = (unsigned int )adapter->max_rss_queues + 65535U;
    } else {
    }
    if ((int )adapter->max_event_queues < (int )adapter->max_rss_queues) {
      adapter->max_rss_queues = adapter->max_event_queues;
    } else {
    }
  } else {
    if ((unsigned int )adapter->virtfn == 0U) {
      adapter->max_pmac_cnt = 30U;
    } else {
      adapter->max_pmac_cnt = 2U;
    }
    if ((adapter->function_mode & 1024U) != 0U) {
      adapter->max_vlans = 8U;
    } else {
      adapter->max_vlans = 64U;
    }
    adapter->max_mcast_mac = 64U;
    adapter->max_tx_queues = (unsigned int )txq_count != 0U ? txq_count : 8U;
    __min1___5 = adapter->max_tx_queues;
    __min2___5 = 8U;
    adapter->max_tx_queues = (u16 )((int )__min1___5 < (int )__min2___5 ? __min1___5 : __min2___5);
    adapter->max_rss_queues = (int )adapter->be3_native ? 8U : 4U;
    adapter->max_event_queues = 8U;
    adapter->if_cap_flags = 6840U;
    if ((adapter->function_caps & 2U) != 0U) {
      adapter->if_cap_flags = adapter->if_cap_flags | 4U;
    } else {
    }
  }
  pos = pci_find_ext_capability(adapter->pdev, 16);
  if (pos != 0) {
    pci_read_config_word((struct pci_dev const *)adapter->pdev, pos + 14, & dev_num_vfs);
    if ((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) {
      __min1___6 = dev_num_vfs;
      __min2___6 = 30U;
      dev_num_vfs = (u16 )((int )__min1___6 < (int )__min2___6 ? __min1___6 : __min2___6);
    } else {
    }
    adapter->dev_num_vfs = (u32 )dev_num_vfs;
  } else {
  }
  return;
}
}
static int be_get_config(struct be_adapter *adapter )
{
  int status ;
  void *tmp ;
  {
  status = be_cmd_query_fw_cfg(adapter, & adapter->port_num, & adapter->function_mode,
                               & adapter->function_caps, & adapter->asic_rev);
  if (status != 0) {
    goto err;
  } else {
  }
  be_get_resources(adapter);
  tmp = kcalloc((size_t )((int )adapter->max_pmac_cnt + 1), 4UL, 208U);
  adapter->pmac_id = (u32 *)tmp;
  if ((unsigned long )adapter->pmac_id == (unsigned long )((u32 *)0)) {
    status = -12;
    goto err;
  } else {
  }
  err: ;
  return (status);
}
}
static int be_setup(struct be_adapter *adapter )
{
  struct device *dev ;
  u32 en_flags ;
  u32 tx_fc ;
  u32 rx_fc ;
  int status ;
  u8 mac[6U] ;
  bool active_mac ;
  bool tmp ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  bool tmp___0 ;
  bool tmp___1 ;
  unsigned long tmp___2 ;
  {
  dev = & (adapter->pdev)->dev;
  be_setup_init(adapter);
  if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
    be_cmd_req_native_mode(adapter);
  } else {
  }
  status = be_get_config(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_msix_enable(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_evt_queues_create(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_tx_cqs_create(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_rx_cqs_create(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_mcc_queues_create(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  be_cmd_get_fn_privileges(adapter, & adapter->cmd_privileges, 0U);
  tmp = be_is_mc(adapter);
  if ((int )tmp) {
    adapter->cmd_privileges = 1792U;
  } else {
  }
  en_flags = 6192U;
  if ((adapter->function_caps & 2U) != 0U) {
    en_flags = en_flags | 4U;
  } else {
  }
  en_flags = adapter->if_cap_flags & en_flags;
  status = be_cmd_if_create(adapter, adapter->if_cap_flags, en_flags, (u32 *)(& adapter->if_handle),
                            0U);
  if (status != 0) {
    goto err;
  } else {
  }
  memset((void *)(& mac), 0, 6UL);
  active_mac = 0;
  status = be_get_mac_addr(adapter, (u8 *)(& mac), (u32 )adapter->if_handle, & active_mac,
                           adapter->pmac_id);
  if (status != 0) {
    goto err;
  } else {
  }
  if (! active_mac) {
    status = be_cmd_pmac_add(adapter, (u8 *)(& mac), (u32 )adapter->if_handle, adapter->pmac_id,
                             0U);
    if (status != 0) {
      goto err;
    } else {
    }
  } else {
  }
  tmp___0 = is_zero_ether_addr((u8 const *)(adapter->netdev)->dev_addr);
  if ((int )tmp___0) {
    __len = 6UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(adapter->netdev)->dev_addr, (void const *)(& mac),
                       __len);
    } else {
      __ret = memcpy((void *)(adapter->netdev)->dev_addr, (void const *)(& mac),
                               __len);
    }
    __len___0 = 6UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)(& (adapter->netdev)->perm_addr), (void const *)(& mac),
                           __len___0);
    } else {
      __ret___0 = memcpy((void *)(& (adapter->netdev)->perm_addr), (void const *)(& mac),
                                   __len___0);
    }
  } else {
  }
  status = be_tx_qs_create(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  be_cmd_get_fw_ver(adapter, (char *)(& adapter->fw_ver), 0);
  if ((unsigned int )adapter->vlans_added != 0U) {
    be_vid_config(adapter);
  } else {
  }
  be_set_rx_mode(adapter->netdev);
  be_cmd_get_flow_control(adapter, & tx_fc, & rx_fc);
  if (adapter->rx_fc != rx_fc || adapter->tx_fc != tx_fc) {
    be_cmd_set_flow_control(adapter, adapter->tx_fc, adapter->rx_fc);
  } else {
  }
  if ((unsigned int )adapter->virtfn == 0U) {
    if (adapter->dev_num_vfs != 0U) {
      be_vf_setup(adapter);
    } else {
      dev_warn((struct device const *)dev, "device doesn\'t support SRIOV\n");
    }
  } else {
  }
  status = be_cmd_get_phy_info(adapter);
  if (status == 0) {
    tmp___1 = be_pause_supported(adapter);
    if ((int )tmp___1) {
      adapter->phy.fc_autoneg = 1U;
    } else {
    }
  } else {
  }
  tmp___2 = msecs_to_jiffies(1000U);
  schedule_delayed_work(& adapter->work, tmp___2);
  adapter->flags = adapter->flags | 8U;
  return (0);
  err:
  be_clear(adapter);
  return (status);
}
}
static void be_netpoll(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_eq_obj *eqo ;
  int i ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_52292;
  ldv_52291:
  be_eq_notify(eqo->adapter, (int )eqo->q.id, 0, 1, 0);
  napi_schedule(& eqo->napi);
  i = i + 1;
  eqo = eqo + 1;
  ldv_52292: ;
  if ((u32 )i < adapter->num_evt_qs) {
    goto ldv_52291;
  } else {
  }
  return;
}
}
char flash_cookie[2U][16U] = { { '*', '*', '*', ' ',
            'S', 'E', ' ', 'F',
            'L', 'A', 'S', '\000'},
   { 'H', ' ', 'D', 'I',
            'R', 'E', 'C', 'T',
            'O', 'R', 'Y', ' ',
            '*', '*', '*', ' '}};
static bool be_flash_redboot(struct be_adapter *adapter , u8 const *p , u32 img_start ,
                             int image_size , int hdr_size )
{
  u32 crc_offset ;
  u8 flashed_crc[4U] ;
  int status ;
  int tmp ;
  {
  crc_offset = (((u32 )hdr_size + img_start) + (u32 )image_size) - 4U;
  p = p + (unsigned long )crc_offset;
  status = be_cmd_get_flash_crc(adapter, (u8 *)(& flashed_crc), image_size + -4);
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "could not get crc from flash, not flashing redboot\n");
    return (0);
  } else {
  }
  tmp = memcmp((void const *)(& flashed_crc), (void const *)p, 4UL);
  if (tmp == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
static bool phy_flashing_required(struct be_adapter *adapter )
{
  {
  return ((bool )((unsigned int )adapter->phy.phy_type == 13U && (unsigned int )adapter->phy.interface_type == 6U));
}
}
static bool is_comp_in_ufi(struct be_adapter *adapter , struct flash_section_info *fsec ,
                           int type )
{
  int i ;
  int img_type ;
  struct flash_section_info_g2 *fsec_g2 ;
  {
  i = 0;
  img_type = 0;
  fsec_g2 = 0;
  if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
    fsec_g2 = (struct flash_section_info_g2 *)fsec;
  } else {
  }
  i = 0;
  goto ldv_52317;
  ldv_52316: ;
  if ((unsigned long )fsec_g2 != (unsigned long )((struct flash_section_info_g2 *)0)) {
    img_type = (int )fsec_g2->fsec_entry[i].type;
  } else {
    img_type = (int )fsec->fsec_entry[i].type;
  }
  if (img_type == type) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_52317: ;
  if (i <= 31) {
    goto ldv_52316;
  } else {
  }
  return (0);
}
}
struct flash_section_info *get_fsec_info(struct be_adapter *adapter , int header_size ,
                                         struct firmware const *fw )
{
  struct flash_section_info *fsec ;
  u8 const *p ;
  int tmp ;
  {
  fsec = 0;
  p = fw->data;
  p = p + (unsigned long )header_size;
  goto ldv_52327;
  ldv_52326:
  fsec = (struct flash_section_info *)p;
  tmp = memcmp((void const *)(& flash_cookie), (void const *)(& fsec->cookie),
               32UL);
  if (tmp == 0) {
    return (fsec);
  } else {
  }
  p = p + 32UL;
  ldv_52327: ;
  if ((unsigned long )((unsigned char const *)(fw->data + fw->size)) > (unsigned long )p) {
    goto ldv_52326;
  } else {
  }
  return (0);
}
}
static int be_flash(struct be_adapter *adapter , u8 const *img , struct be_dma_mem *flash_cmd ,
                    int optype , int img_size )
{
  u32 total_bytes ;
  u32 flash_op ;
  u32 num_bytes ;
  int status ;
  struct be_cmd_write_flashrom *req ;
  u32 __min1 ;
  u32 __min2 ;
  size_t __len ;
  void *__ret ;
  {
  total_bytes = 0U;
  num_bytes = 0U;
  status = 0;
  req = (struct be_cmd_write_flashrom *)flash_cmd->va;
  total_bytes = (u32 )img_size;
  goto ldv_52349;
  ldv_52348:
  __min1 = 32768U;
  __min2 = total_bytes;
  num_bytes = __min1 < __min2 ? __min1 : __min2;
  total_bytes = total_bytes - num_bytes;
  if (total_bytes == 0U) {
    if (optype == 99) {
      flash_op = 9U;
    } else {
      flash_op = 1U;
    }
  } else
  if (optype == 99) {
    flash_op = 10U;
  } else {
    flash_op = 2U;
  }
  __len = (size_t )num_bytes;
  __ret = memcpy((void *)(& req->data_buf), (void const *)img, __len);
  img = img + (unsigned long )num_bytes;
  status = be_cmd_write_flashrom(adapter, flash_cmd, (u32 )optype, flash_op, num_bytes);
  if (status != 0) {
    if (status == 2 && optype == 99) {
      goto ldv_52347;
    } else {
    }
    dev_err((struct device const *)(& (adapter->pdev)->dev), "cmd to write to flash rom failed.\n");
    return (status);
  } else {
  }
  ldv_52349: ;
  if (total_bytes != 0U) {
    goto ldv_52348;
  } else {
  }
  ldv_52347: ;
  return (0);
}
}
static int be_flash_BEx(struct be_adapter *adapter , struct firmware const *fw ,
                        struct be_dma_mem *flash_cmd , int num_of_images )
{
  int status ;
  int i ;
  int filehdr_size ;
  int img_hdrs_size ;
  u8 const *p ;
  struct flash_comp const *pflashcomp ;
  int num_comp ;
  int redboot ;
  struct flash_section_info *fsec ;
  struct flash_comp gen3_flash_types[10U] ;
  struct flash_comp gen2_flash_types[8U] ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  {
  status = 0;
  filehdr_size = 0;
  img_hdrs_size = (int )((unsigned int )num_of_images * 48U);
  p = fw->data;
  fsec = 0;
  gen3_flash_types[0].offset = 2097152UL;
  gen3_flash_types[0].optype = 0;
  gen3_flash_types[0].size = 2097152;
  gen3_flash_types[0].img_type = 160;
  gen3_flash_types[1].offset = 262144UL;
  gen3_flash_types[1].optype = 1;
  gen3_flash_types[1].size = 1048576;
  gen3_flash_types[1].img_type = 224;
  gen3_flash_types[2].offset = 12582912UL;
  gen3_flash_types[2].optype = 2;
  gen3_flash_types[2].size = 524288;
  gen3_flash_types[2].img_type = 34;
  gen3_flash_types[3].offset = 13107200UL;
  gen3_flash_types[3].optype = 3;
  gen3_flash_types[3].size = 524288;
  gen3_flash_types[3].img_type = 32;
  gen3_flash_types[4].offset = 13631488UL;
  gen3_flash_types[4].optype = 8;
  gen3_flash_types[4].size = 524288;
  gen3_flash_types[4].img_type = 33;
  gen3_flash_types[5].offset = 4194304UL;
  gen3_flash_types[5].optype = 9;
  gen3_flash_types[5].size = 2097152;
  gen3_flash_types[5].img_type = 176;
  gen3_flash_types[6].offset = 6291456UL;
  gen3_flash_types[6].optype = 10;
  gen3_flash_types[6].size = 2097152;
  gen3_flash_types[6].img_type = 162;
  gen3_flash_types[7].offset = 8388608UL;
  gen3_flash_types[7].optype = 11;
  gen3_flash_types[7].size = 2097152;
  gen3_flash_types[7].img_type = 178;
  gen3_flash_types[8].offset = 15990784UL;
  gen3_flash_types[8].optype = 13;
  gen3_flash_types[8].size = 262144;
  gen3_flash_types[8].img_type = 16;
  gen3_flash_types[9].offset = 1310720UL;
  gen3_flash_types[9].optype = 99;
  gen3_flash_types[9].size = 262144;
  gen3_flash_types[9].img_type = 192;
  gen2_flash_types[0].offset = 1048576UL;
  gen2_flash_types[0].optype = 0;
  gen2_flash_types[0].size = 1310720;
  gen2_flash_types[0].img_type = 160;
  gen2_flash_types[1].offset = 0UL;
  gen2_flash_types[1].optype = 1;
  gen2_flash_types[1].size = 262144;
  gen2_flash_types[1].img_type = 224;
  gen2_flash_types[2].offset = 7340032UL;
  gen2_flash_types[2].optype = 2;
  gen2_flash_types[2].size = 262144;
  gen2_flash_types[2].img_type = 34;
  gen2_flash_types[3].offset = 7864320UL;
  gen2_flash_types[3].optype = 3;
  gen2_flash_types[3].size = 262144;
  gen2_flash_types[3].img_type = 32;
  gen2_flash_types[4].offset = 524288UL;
  gen2_flash_types[4].optype = 8;
  gen2_flash_types[4].size = 262144;
  gen2_flash_types[4].img_type = 33;
  gen2_flash_types[5].offset = 2359296UL;
  gen2_flash_types[5].optype = 9;
  gen2_flash_types[5].size = 1310720;
  gen2_flash_types[5].img_type = 176;
  gen2_flash_types[6].offset = 3670016UL;
  gen2_flash_types[6].optype = 10;
  gen2_flash_types[6].size = 1310720;
  gen2_flash_types[6].img_type = 162;
  gen2_flash_types[7].offset = 4980736UL;
  gen2_flash_types[7].optype = 11;
  gen2_flash_types[7].size = 1310720;
  gen2_flash_types[7].img_type = 178;
  if ((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) {
    pflashcomp = (struct flash_comp const *)(& gen3_flash_types);
    filehdr_size = 128;
    num_comp = 10;
  } else {
    pflashcomp = (struct flash_comp const *)(& gen2_flash_types);
    filehdr_size = 96;
    num_comp = 8;
  }
  fsec = get_fsec_info(adapter, filehdr_size + img_hdrs_size, fw);
  if ((unsigned long )fsec == (unsigned long )((struct flash_section_info *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Invalid Cookie. UFI corrupted ?\n");
    return (-1);
  } else {
  }
  i = 0;
  goto ldv_52373;
  ldv_52372:
  tmp = is_comp_in_ufi(adapter, fsec, (pflashcomp + (unsigned long )i)->img_type);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto ldv_52371;
  } else {
  }
  if ((int )(pflashcomp + (unsigned long )i)->optype == 13) {
    tmp___1 = memcmp((void const *)(& adapter->fw_ver), (void const *)"3.102.148.0",
                     11UL);
    if (tmp___1 < 0) {
      goto ldv_52371;
    } else {
    }
  } else {
  }
  if ((int )(pflashcomp + (unsigned long )i)->optype == 99) {
    tmp___2 = phy_flashing_required(adapter);
    if (tmp___2) {
      tmp___3 = 0;
    } else {
      tmp___3 = 1;
    }
    if (tmp___3) {
      goto ldv_52371;
    } else {
    }
  } else {
  }
  if ((int )(pflashcomp + (unsigned long )i)->optype == 1) {
    tmp___4 = be_flash_redboot(adapter, fw->data, (u32 )(pflashcomp + (unsigned long )i)->offset,
                               (pflashcomp + (unsigned long )i)->size, filehdr_size + img_hdrs_size);
    redboot = (int )tmp___4;
    if (redboot == 0) {
      goto ldv_52371;
    } else {
    }
  } else {
  }
  p = fw->data;
  p = p + (((unsigned long )filehdr_size + (unsigned long )(pflashcomp + (unsigned long )i)->offset) + (unsigned long )img_hdrs_size);
  if ((unsigned long )(p + (unsigned long )(pflashcomp + (unsigned long )i)->size) > (unsigned long )((unsigned char const *)(fw->data + fw->size))) {
    return (-1);
  } else {
  }
  status = be_flash(adapter, p, flash_cmd, (pflashcomp + (unsigned long )i)->optype,
                    (pflashcomp + (unsigned long )i)->size);
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Flashing section type %d failed.\n",
            (pflashcomp + (unsigned long )i)->img_type);
    return (status);
  } else {
  }
  ldv_52371:
  i = i + 1;
  ldv_52373: ;
  if (i < num_comp) {
    goto ldv_52372;
  } else {
  }
  return (0);
}
}
static int be_flash_skyhawk(struct be_adapter *adapter , struct firmware const *fw ,
                            struct be_dma_mem *flash_cmd , int num_of_images )
{
  int status ;
  int i ;
  int filehdr_size ;
  int img_offset ;
  int img_size ;
  int img_optype ;
  int redboot ;
  int img_hdrs_size ;
  u8 const *p ;
  struct flash_section_info *fsec ;
  bool tmp ;
  {
  status = 0;
  filehdr_size = 0;
  img_hdrs_size = (int )((unsigned int )num_of_images * 48U);
  p = fw->data;
  fsec = 0;
  filehdr_size = 128;
  fsec = get_fsec_info(adapter, filehdr_size + img_hdrs_size, fw);
  if ((unsigned long )fsec == (unsigned long )((struct flash_section_info *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Invalid Cookie. UFI corrupted ?\n");
    return (-1);
  } else {
  }
  i = 0;
  goto ldv_52402;
  ldv_52401:
  img_offset = (int )fsec->fsec_entry[i].offset;
  img_size = (int )fsec->fsec_entry[i].pad_size;
  switch (fsec->fsec_entry[i].type) {
  case 160U:
  img_optype = 0;
  goto ldv_52392;
  case 224U:
  img_optype = 1;
  goto ldv_52392;
  case 34U:
  img_optype = 2;
  goto ldv_52392;
  case 32U:
  img_optype = 3;
  goto ldv_52392;
  case 33U:
  img_optype = 8;
  goto ldv_52392;
  case 176U:
  img_optype = 9;
  goto ldv_52392;
  case 16U:
  img_optype = 13;
  goto ldv_52392;
  default: ;
  goto ldv_52400;
  }
  ldv_52392: ;
  if (img_optype == 1) {
    tmp = be_flash_redboot(adapter, fw->data, (u32 )img_offset, img_size, filehdr_size + img_hdrs_size);
    redboot = (int )tmp;
    if (redboot == 0) {
      goto ldv_52400;
    } else {
    }
  } else {
  }
  p = fw->data;
  p = p + (unsigned long )((filehdr_size + img_offset) + img_hdrs_size);
  if ((unsigned long )(p + (unsigned long )img_size) > (unsigned long )((unsigned char const *)(fw->data + fw->size))) {
    return (-1);
  } else {
  }
  status = be_flash(adapter, p, flash_cmd, img_optype, img_size);
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Flashing section type %d failed.\n",
            fsec->fsec_entry[i].type);
    return (status);
  } else {
  }
  ldv_52400:
  i = i + 1;
  ldv_52402: ;
  if ((u32 )i < fsec->fsec_hdr.num_images) {
    goto ldv_52401;
  } else {
  }
  return (0);
}
}
static int lancer_wait_idle(struct be_adapter *adapter )
{
  u32 reg_val ;
  int status ;
  int i ;
  {
  status = 0;
  i = 0;
  goto ldv_52412;
  ldv_52411:
  reg_val = ioread32((void *)adapter->db + 1044U);
  if ((reg_val & 1073741824U) == 0U) {
    goto ldv_52410;
  } else {
  }
  ssleep(1U);
  i = i + 1;
  ldv_52412: ;
  if (i <= 29) {
    goto ldv_52411;
  } else {
  }
  ldv_52410: ;
  if (i == 30) {
    status = -1;
  } else {
  }
  return (status);
}
}
static int lancer_fw_reset(struct be_adapter *adapter )
{
  int status ;
  {
  status = 0;
  status = lancer_wait_idle(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  iowrite32(2U, (void *)adapter->db + 1044U);
  return (status);
}
}
static int lancer_fw_download(struct be_adapter *adapter , struct firmware const *fw )
{
  struct be_dma_mem flash_cmd ;
  u8 const *data_ptr ;
  u8 *dest_image_ptr ;
  size_t image_size ;
  u32 chunk_size ;
  u32 data_written ;
  u32 offset ;
  int status ;
  u8 add_status ;
  u8 change_status ;
  u32 __min1 ;
  u32 __min2 ;
  size_t __len ;
  void *__ret ;
  {
  data_ptr = 0;
  dest_image_ptr = 0;
  image_size = 0UL;
  chunk_size = 0U;
  data_written = 0U;
  offset = 0U;
  status = 0;
  add_status = 0U;
  if (((unsigned long )fw->size & 3UL) != 0UL) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "FW Image not properly aligned. Length must be 4 byte aligned.\n");
    status = -22;
    goto lancer_fw_exit;
  } else {
  }
  flash_cmd.size = 32912U;
  flash_cmd.va = dma_alloc_attrs(& (adapter->pdev)->dev, (size_t )flash_cmd.size,
                                 & flash_cmd.dma, 208U, 0);
  if ((unsigned long )flash_cmd.va == (unsigned long )((void *)0)) {
    status = -12;
    goto lancer_fw_exit;
  } else {
  }
  dest_image_ptr = (u8 *)flash_cmd.va + 144U;
  image_size = fw->size;
  data_ptr = fw->data;
  goto ldv_52440;
  ldv_52439:
  __min1 = (u32 )image_size;
  __min2 = 32768U;
  chunk_size = __min1 < __min2 ? __min1 : __min2;
  __len = (size_t )chunk_size;
  __ret = memcpy((void *)dest_image_ptr, (void const *)data_ptr, __len);
  status = lancer_cmd_write_object(adapter, & flash_cmd, chunk_size, offset, "/prg",
                                   & data_written, & change_status, & add_status);
  if (status != 0) {
    goto ldv_52438;
  } else {
  }
  offset = offset + data_written;
  data_ptr = data_ptr + (unsigned long )data_written;
  image_size = image_size - (size_t )data_written;
  ldv_52440: ;
  if (image_size != 0UL) {
    goto ldv_52439;
  } else {
  }
  ldv_52438: ;
  if (status == 0) {
    status = lancer_cmd_write_object(adapter, & flash_cmd, 0U, offset, "/prg", & data_written,
                                     & change_status, & add_status);
  } else {
  }
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )flash_cmd.size, flash_cmd.va, flash_cmd.dma,
                 0);
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Firmware load error. Status code: 0x%x Additional Status: 0x%x\n",
            status, (int )add_status);
    goto lancer_fw_exit;
  } else {
  }
  if ((unsigned int )change_status == 2U) {
    status = lancer_fw_reset(adapter);
    if (status != 0) {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "Adapter busy for FW reset.\nNew FW will not be active.\n");
      goto lancer_fw_exit;
    } else {
    }
  } else
  if ((unsigned int )change_status != 0U) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "System reboot required for new FW to be active\n");
  } else {
  }
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "Firmware flashed successfully\n");
  lancer_fw_exit: ;
  return (status);
}
}
static int be_get_ufi_type(struct be_adapter *adapter , struct flash_file_hdr_g3 *fhdr )
{
  {
  if ((unsigned long )fhdr == (unsigned long )((struct flash_file_hdr_g3 *)0)) {
    goto be_get_ufi_exit;
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (unsigned int )fhdr->build[0] == 52U) {
    return (4);
  } else
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) && (unsigned int )fhdr->build[0] == 51U) {
    if ((unsigned int )fhdr->asic_type_rev == 16U) {
      return (10);
    } else {
      return (3);
    }
  } else
  if (((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) && (unsigned int )fhdr->build[0] == 50U) {
    return (2);
  } else {
  }
  be_get_ufi_exit:
  dev_err((struct device const *)(& (adapter->pdev)->dev), "UFI and Interface are not compatible for flashing\n");
  return (-1);
}
}
static int be_fw_download(struct be_adapter *adapter , struct firmware const *fw )
{
  struct flash_file_hdr_g3 *fhdr3 ;
  struct image_hdr *img_hdr_ptr ;
  struct be_dma_mem flash_cmd ;
  u8 const *p ;
  int status ;
  int i ;
  int num_imgs ;
  int ufi_type ;
  {
  img_hdr_ptr = 0;
  status = 0;
  i = 0;
  num_imgs = 0;
  ufi_type = 0;
  flash_cmd.size = 32804U;
  flash_cmd.va = dma_alloc_attrs(& (adapter->pdev)->dev, (size_t )flash_cmd.size,
                                 & flash_cmd.dma, 208U, 0);
  if ((unsigned long )flash_cmd.va == (unsigned long )((void *)0)) {
    status = -12;
    goto be_fw_exit;
  } else {
  }
  p = fw->data;
  fhdr3 = (struct flash_file_hdr_g3 *)p;
  ufi_type = be_get_ufi_type(adapter, fhdr3);
  num_imgs = (int )fhdr3->num_imgs;
  i = 0;
  goto ldv_52464;
  ldv_52463:
  img_hdr_ptr = (struct image_hdr *)(fw->data + ((unsigned long )i * 48UL + 128UL));
  if (img_hdr_ptr->imageid == 1U) {
    switch (ufi_type) {
    case 4:
    status = be_flash_skyhawk(adapter, fw, & flash_cmd, num_imgs);
    goto ldv_52460;
    case 10:
    status = be_flash_BEx(adapter, fw, & flash_cmd, num_imgs);
    goto ldv_52460;
    case 3: ;
    if ((unsigned int )adapter->asic_rev <= 15U) {
      status = be_flash_BEx(adapter, fw, & flash_cmd, num_imgs);
    } else {
      status = -1;
      dev_err((struct device const *)(& (adapter->pdev)->dev), "Can\'t load BE3 UFI on BE3R\n");
    }
    }
    ldv_52460: ;
  } else {
  }
  i = i + 1;
  ldv_52464: ;
  if (i < num_imgs) {
    goto ldv_52463;
  } else {
  }
  if (ufi_type == 2) {
    status = be_flash_BEx(adapter, fw, & flash_cmd, 0);
  } else
  if (ufi_type == -1) {
    status = -1;
  } else {
  }
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )flash_cmd.size, flash_cmd.va, flash_cmd.dma,
                 0);
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Firmware load error\n");
    goto be_fw_exit;
  } else {
  }
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "Firmware flashed successfully\n");
  be_fw_exit: ;
  return (status);
}
}
int be_load_fw(struct be_adapter *adapter , u8 *fw_file )
{
  struct firmware const *fw ;
  int status ;
  bool tmp ;
  int tmp___0 ;
  {
  tmp = netif_running((struct net_device const *)adapter->netdev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Firmware load not allowed (interface is down)\n");
    return (-1);
  } else {
  }
  status = request_firmware(& fw, (char const *)fw_file, & (adapter->pdev)->dev);
  if (status != 0) {
    goto fw_exit;
  } else {
  }
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "Flashing firmware file %s\n",
            fw_file);
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    status = lancer_fw_download(adapter, fw);
  } else {
    status = be_fw_download(adapter, fw);
  }
  fw_exit:
  release_firmware(fw);
  return (status);
}
}
static struct net_device_ops const be_netdev_ops =
     {0, 0, & be_open, & be_close, & be_xmit, 0, 0, & be_set_rx_mode, & be_mac_addr_set,
    & eth_validate_addr, 0, 0, & be_change_mtu, 0, 0, & be_get_stats64, 0, & be_vlan_add_vid,
    & be_vlan_rem_vid, & be_netpoll, 0, 0, & be_set_vf_mac, & be_set_vf_vlan, & be_set_vf_tx_rate,
    0, & be_get_vf_config, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0};
static void be_netdev_init(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_eq_obj *eqo ;
  int i ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  netdev->hw_features = netdev->hw_features | 537985171ULL;
  tmp___0 = be_multi_rxq((struct be_adapter const *)adapter);
  if ((int )tmp___0) {
    netdev->hw_features = netdev->hw_features | 268435456ULL;
  } else {
  }
  netdev->features = (netdev->features | netdev->hw_features) | 768ULL;
  netdev->vlan_features = netdev->vlan_features | 1114131ULL;
  netdev->priv_flags = netdev->priv_flags | 131072U;
  netdev->flags = netdev->flags | 4096U;
  netif_set_gso_max_size(netdev, 65521U);
  netdev->netdev_ops = & be_netdev_ops;
  netdev->ethtool_ops = & be_ethtool_ops;
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_52481;
  ldv_52480:
  netif_napi_add(netdev, & eqo->napi, & be_poll, 64);
  i = i + 1;
  eqo = eqo + 1;
  ldv_52481: ;
  if ((u32 )i < adapter->num_evt_qs) {
    goto ldv_52480;
  } else {
  }
  return;
}
}
static void be_unmap_pci_bars(struct be_adapter *adapter )
{
  {
  if ((unsigned long )adapter->csr != (unsigned long )((u8 *)0)) {
    pci_iounmap(adapter->pdev, (void *)adapter->csr);
  } else {
  }
  if ((unsigned long )adapter->db != (unsigned long )((u8 *)0)) {
    pci_iounmap(adapter->pdev, (void *)adapter->db);
  } else {
  }
  return;
}
}
static int db_bar(struct be_adapter *adapter )
{
  {
  if (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) || (unsigned int )adapter->virtfn != 0U) {
    return (0);
  } else {
    return (4);
  }
}
}
static int be_roce_map_pci_bars(struct be_adapter *adapter )
{
  int tmp ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) {
    adapter->roce_db.size = 4096U;
    tmp = db_bar(adapter);
    adapter->roce_db.io_addr = (adapter->pdev)->resource[tmp].start;
    tmp___5 = db_bar(adapter);
    if ((adapter->pdev)->resource[tmp___5].start != 0ULL) {
      tmp___3 = db_bar(adapter);
      tmp___4 = db_bar(adapter);
      adapter->roce_db.total_size = ((u32 )(adapter->pdev)->resource[tmp___3].end - (u32 )(adapter->pdev)->resource[tmp___4].start) + 1U;
    } else {
      tmp___6 = db_bar(adapter);
      tmp___7 = db_bar(adapter);
      if ((adapter->pdev)->resource[tmp___6].end != (adapter->pdev)->resource[tmp___7].start) {
        tmp___3 = db_bar(adapter);
        tmp___4 = db_bar(adapter);
        adapter->roce_db.total_size = ((u32 )(adapter->pdev)->resource[tmp___3].end - (u32 )(adapter->pdev)->resource[tmp___4].start) + 1U;
      } else {
        adapter->roce_db.total_size = 0U;
      }
    }
  } else {
  }
  return (0);
}
}
static int be_map_pci_bars(struct be_adapter *adapter )
{
  u8 *addr ;
  u32 sli_intf ;
  void *tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  pci_read_config_dword((struct pci_dev const *)adapter->pdev, 88, & sli_intf);
  adapter->if_type = (sli_intf & 61440U) >> 12;
  if ((((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) && (unsigned int )adapter->virtfn == 0U) {
    tmp = pci_iomap(adapter->pdev, 2, 0UL);
    adapter->csr = (u8 *)tmp;
    if ((unsigned long )adapter->csr == (unsigned long )((u8 *)0)) {
      return (-12);
    } else {
    }
  } else {
  }
  tmp___0 = db_bar(adapter);
  tmp___1 = pci_iomap(adapter->pdev, tmp___0, 0UL);
  addr = (u8 *)tmp___1;
  if ((unsigned long )addr == (unsigned long )((u8 *)0)) {
    goto pci_map_err;
  } else {
  }
  adapter->db = addr;
  be_roce_map_pci_bars(adapter);
  return (0);
  pci_map_err:
  be_unmap_pci_bars(adapter);
  return (-12);
}
}
static void be_ctrl_cleanup(struct be_adapter *adapter )
{
  struct be_dma_mem *mem ;
  {
  mem = & adapter->mbox_mem_alloced;
  be_unmap_pci_bars(adapter);
  if ((unsigned long )mem->va != (unsigned long )((void *)0)) {
    dma_free_attrs(& (adapter->pdev)->dev, (size_t )mem->size, mem->va, mem->dma,
                   0);
  } else {
  }
  mem = & adapter->rx_filter;
  if ((unsigned long )mem->va != (unsigned long )((void *)0)) {
    dma_free_attrs(& (adapter->pdev)->dev, (size_t )mem->size, mem->va, mem->dma,
                   0);
  } else {
  }
  return;
}
}
static int be_ctrl_init(struct be_adapter *adapter )
{
  struct be_dma_mem *mbox_mem_alloc ;
  struct be_dma_mem *mbox_mem_align ;
  struct be_dma_mem *rx_filter ;
  u32 sli_intf ;
  int status ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  mbox_mem_alloc = & adapter->mbox_mem_alloced;
  mbox_mem_align = & adapter->mbox_mem;
  rx_filter = & adapter->rx_filter;
  pci_read_config_dword((struct pci_dev const *)adapter->pdev, 88, & sli_intf);
  adapter->sli_family = (sli_intf & 3840U) >> 8;
  adapter->virtfn = (unsigned int )((u8 )sli_intf) & 1U;
  status = be_map_pci_bars(adapter);
  if (status != 0) {
    goto done;
  } else {
  }
  mbox_mem_alloc->size = 288U;
  mbox_mem_alloc->va = dma_alloc_attrs(& (adapter->pdev)->dev, (size_t )mbox_mem_alloc->size,
                                       & mbox_mem_alloc->dma, 208U, 0);
  if ((unsigned long )mbox_mem_alloc->va == (unsigned long )((void *)0)) {
    status = -12;
    goto unmap_pci_bars;
  } else {
  }
  mbox_mem_align->size = 272U;
  mbox_mem_align->va = (void *)(((unsigned long )mbox_mem_alloc->va + 15UL) & 0xfffffffffffffff0UL);
  mbox_mem_align->dma = (unsigned long long )((unsigned long )mbox_mem_alloc->dma + 15UL) & 0xfffffffffffffff0ULL;
  memset(mbox_mem_align->va, 0, 272UL);
  rx_filter->size = 424U;
  rx_filter->va = dma_alloc_attrs(& (adapter->pdev)->dev, (size_t )rx_filter->size,
                                  & rx_filter->dma, 32976U, 0);
  if ((unsigned long )rx_filter->va == (unsigned long )((void *)0)) {
    status = -12;
    goto free_mbox;
  } else {
  }
  __mutex_init(& adapter->mbox_lock, "&adapter->mbox_lock", & __key);
  spinlock_check(& adapter->mcc_lock);
  __raw_spin_lock_init(& adapter->mcc_lock.ldv_6014.rlock, "&(&adapter->mcc_lock)->rlock",
                       & __key___0);
  spinlock_check(& adapter->mcc_cq_lock);
  __raw_spin_lock_init(& adapter->mcc_cq_lock.ldv_6014.rlock, "&(&adapter->mcc_cq_lock)->rlock",
                       & __key___1);
  init_completion(& adapter->flash_compl);
  pci_save_state(adapter->pdev);
  return (0);
  free_mbox:
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )mbox_mem_alloc->size, mbox_mem_alloc->va,
                 mbox_mem_alloc->dma, 0);
  unmap_pci_bars:
  be_unmap_pci_bars(adapter);
  done: ;
  return (status);
}
}
static void be_stats_cleanup(struct be_adapter *adapter )
{
  struct be_dma_mem *cmd ;
  {
  cmd = & adapter->stats_cmd;
  if ((unsigned long )cmd->va != (unsigned long )((void *)0)) {
    dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd->size, cmd->va, cmd->dma,
                   0);
  } else {
  }
  return;
}
}
static int be_stats_init(struct be_adapter *adapter )
{
  struct be_dma_mem *cmd ;
  {
  cmd = & adapter->stats_cmd;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    cmd->size = 672U;
  } else
  if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
    cmd->size = 1076U;
  } else {
    cmd->size = 1864U;
  }
  cmd->va = dma_alloc_attrs(& (adapter->pdev)->dev, (size_t )cmd->size, & cmd->dma,
                            32976U, 0);
  if ((unsigned long )cmd->va == (unsigned long )((void *)0)) {
    return (-1);
  } else {
  }
  return (0);
}
}
static void be_remove(struct pci_dev *pdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  if ((unsigned long )adapter == (unsigned long )((struct be_adapter *)0)) {
    return;
  } else {
  }
  be_roce_dev_remove(adapter);
  be_intr_set(adapter, 0);
  cancel_delayed_work_sync(& adapter->func_recovery_work);
  unregister_netdev(adapter->netdev);
  be_clear(adapter);
  be_cmd_fw_clean(adapter);
  be_stats_cleanup(adapter);
  be_ctrl_cleanup(adapter);
  pci_disable_pcie_error_reporting(pdev);
  pci_set_drvdata(pdev, 0);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  free_netdev(adapter->netdev);
  return;
}
}
bool be_is_wol_supported(struct be_adapter *adapter )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((int )adapter->wol_cap & 1) {
    tmp = be_is_wol_excluded(adapter);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return ((bool )tmp___1);
}
}
u32 be_get_fw_log_level(struct be_adapter *adapter )
{
  struct be_dma_mem extfat_cmd ;
  struct be_fat_conf_params *cfgs ;
  int status ;
  u32 level ;
  int j ;
  {
  level = 0U;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    return (0U);
  } else {
  }
  memset((void *)(& extfat_cmd), 0, 24UL);
  extfat_cmd.size = 2844U;
  extfat_cmd.va = pci_alloc_consistent(adapter->pdev, (size_t )extfat_cmd.size, & extfat_cmd.dma);
  if ((unsigned long )extfat_cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "%s: Memory allocation failure\n",
            "be_get_fw_log_level");
    goto err;
  } else {
  }
  status = be_cmd_get_ext_fat_capabilites(adapter, & extfat_cmd);
  if (status == 0) {
    cfgs = (struct be_fat_conf_params *)extfat_cmd.va + 16U;
    j = 0;
    goto ldv_52542;
    ldv_52541: ;
    if ((unsigned int )cfgs->module[0].trace_lvl[j].mode == 0U) {
      level = cfgs->module[0].trace_lvl[j].dbg_lvl;
    } else {
    }
    j = j + 1;
    ldv_52542: ;
    if ((u32 )j < cfgs->module[0].num_modes) {
      goto ldv_52541;
    } else {
    }
  } else {
  }
  pci_free_consistent(adapter->pdev, (size_t )extfat_cmd.size, extfat_cmd.va, extfat_cmd.dma);
  err: ;
  return (level);
}
}
static int be_get_initial_config(struct be_adapter *adapter )
{
  int status ;
  u32 level ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  status = be_cmd_get_cntl_attributes(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  status = be_cmd_get_acpi_wol_cap(adapter);
  if (status != 0) {
    tmp = be_is_wol_excluded(adapter);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      adapter->wol_cap = (u8 )((unsigned int )adapter->wol_cap | 1U);
    } else {
    }
  } else {
  }
  tmp___1 = be_is_wol_supported(adapter);
  if ((int )tmp___1) {
    adapter->wol = 1;
  } else {
  }
  adapter->be_get_temp_freq = 64;
  level = be_get_fw_log_level(adapter);
  adapter->msg_enable = level <= 48U ? 8192U : 0U;
  return (0);
}
}
static int lancer_recover_func(struct be_adapter *adapter )
{
  int status ;
  bool tmp ;
  bool tmp___0 ;
  {
  status = lancer_test_and_set_rdy_state(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  tmp = netif_running((struct net_device const *)adapter->netdev);
  if ((int )tmp) {
    be_close(adapter->netdev);
  } else {
  }
  be_clear(adapter);
  adapter->hw_error = 0;
  adapter->fw_timeout = 0;
  status = be_setup(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  tmp___0 = netif_running((struct net_device const *)adapter->netdev);
  if ((int )tmp___0) {
    status = be_open(adapter->netdev);
    if (status != 0) {
      goto err;
    } else {
    }
  } else {
  }
  dev_err((struct device const *)(& (adapter->pdev)->dev), "Adapter SLIPORT recovery succeeded\n");
  return (0);
  err: ;
  if ((int )adapter->eeh_error) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Adapter SLIPORT recovery failed\n");
  } else {
  }
  return (status);
}
}
static void be_func_recovery_task(struct work_struct *work )
{
  struct be_adapter *adapter ;
  struct work_struct const *__mptr ;
  int status ;
  unsigned long tmp ;
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct be_adapter *)__mptr + 0xfffffffffffa6e98UL;
  be_detect_error(adapter);
  if ((int )adapter->hw_error && ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U)) {
    if ((int )adapter->eeh_error) {
      goto out;
    } else {
    }
    rtnl_lock();
    netif_device_detach(adapter->netdev);
    rtnl_unlock();
    status = lancer_recover_func(adapter);
    if (status == 0) {
      netif_device_attach(adapter->netdev);
    } else {
    }
  } else {
  }
  out:
  tmp = msecs_to_jiffies(1000U);
  schedule_delayed_work(& adapter->func_recovery_work, tmp);
  return;
}
}
static void be_worker(struct work_struct *work )
{
  struct be_adapter *adapter ;
  struct work_struct const *__mptr ;
  struct be_rx_obj *rxo ;
  struct be_eq_obj *eqo ;
  int i ;
  bool tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  unsigned long tmp___2 ;
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct be_adapter *)__mptr + 0xfffffffffffa6f80UL;
  tmp = netif_running((struct net_device const *)adapter->netdev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    local_bh_disable();
    be_process_mcc(adapter);
    local_bh_enable();
    goto reschedule;
  } else {
  }
  if (! adapter->stats_cmd_sent) {
    if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
      lancer_cmd_get_pport_stats(adapter, & adapter->stats_cmd);
    } else {
      be_cmd_get_stats(adapter, & adapter->stats_cmd);
    }
  } else {
  }
  tmp___1 = MODULO((int )adapter->work_counter, (int )((u16 )adapter->be_get_temp_freq));
  if (tmp___1 == 0U) {
    be_cmd_get_die_temperature(adapter);
  } else {
  }
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_52573;
  ldv_52572: ;
  if ((int )rxo->rx_post_starved) {
    rxo->rx_post_starved = 0;
    be_post_rx_frags(rxo, 208U);
  } else {
  }
  i = i + 1;
  rxo = rxo + 1;
  ldv_52573: ;
  if ((u32 )i < adapter->num_rx_qs) {
    goto ldv_52572;
  } else {
  }
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_52576;
  ldv_52575:
  be_eqd_update(adapter, eqo);
  i = i + 1;
  eqo = eqo + 1;
  ldv_52576: ;
  if ((u32 )i < adapter->num_evt_qs) {
    goto ldv_52575;
  } else {
  }
  reschedule:
  adapter->work_counter = (u16 )((int )adapter->work_counter + 1);
  tmp___2 = msecs_to_jiffies(1000U);
  schedule_delayed_work(& adapter->work, tmp___2);
  return;
}
}
static bool be_reset_required(struct be_adapter *adapter )
{
  int tmp ;
  {
  tmp = be_find_vfs(adapter, 0);
  return (tmp <= 0);
}
}
static char *mc_name(struct be_adapter *adapter )
{
  {
  if ((adapter->function_mode & 1024U) != 0U) {
    return ((char *)"FLEX10");
  } else
  if ((adapter->function_mode & 131072U) != 0U) {
    return ((char *)"vNIC");
  } else
  if ((adapter->function_mode & 16777216U) != 0U) {
    return ((char *)"UMC");
  } else {
    return ((char *)"");
  }
}
}
__inline static char *func_name(struct be_adapter *adapter )
{
  {
  return ((unsigned int )adapter->virtfn == 0U ? (char *)"PF" : (char *)"VF");
}
}
static int be_probe(struct pci_dev *pdev , struct pci_device_id const *pdev_id )
{
  int status ;
  struct be_adapter *adapter ;
  struct net_device *netdev ;
  char port_name ;
  void *tmp ;
  bool tmp___0 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___2 ;
  u32 tmp___1 ;
  unsigned long tmp___2 ;
  char *tmp___3 ;
  char *tmp___4 ;
  char *tmp___5 ;
  char *tmp___6 ;
  {
  status = 0;
  status = pci_enable_device(pdev);
  if (status != 0) {
    goto do_none;
  } else {
  }
  status = pci_request_regions(pdev, "be2net");
  if (status != 0) {
    goto disable_dev;
  } else {
  }
  pci_set_master(pdev);
  netdev = alloc_etherdev_mqs(365504, 8U, 9U);
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    status = -12;
    goto rel_reg;
  } else {
  }
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  adapter->pdev = pdev;
  pci_set_drvdata(pdev, (void *)adapter);
  adapter->netdev = netdev;
  netdev->dev.parent = & pdev->dev;
  status = dma_set_mask(& pdev->dev, 0xffffffffffffffffULL);
  if (status == 0) {
    status = dma_set_coherent_mask(& pdev->dev, 0xffffffffffffffffULL);
    if (status < 0) {
      dev_err((struct device const *)(& pdev->dev), "dma_set_coherent_mask failed\n");
      goto free_netdev;
    } else {
    }
    netdev->features = netdev->features | 32ULL;
  } else {
    status = dma_set_mask(& pdev->dev, 4294967295ULL);
    if (status != 0) {
      dev_err((struct device const *)(& pdev->dev), "Could not set PCI DMA Mask\n");
      goto free_netdev;
    } else {
    }
  }
  status = pci_enable_pcie_error_reporting(pdev);
  if (status != 0) {
    dev_err((struct device const *)(& pdev->dev), "Could not use PCIe error reporting\n");
  } else {
  }
  status = be_ctrl_init(adapter);
  if (status != 0) {
    goto free_netdev;
  } else {
  }
  if ((unsigned int )adapter->virtfn == 0U) {
    status = be_fw_wait_ready(adapter);
    if (status != 0) {
      goto ctrl_clean;
    } else {
    }
  } else {
  }
  tmp___0 = be_reset_required(adapter);
  if ((int )tmp___0) {
    status = be_cmd_reset_function(adapter);
    if (status != 0) {
      goto ctrl_clean;
    } else {
    }
    msleep(100U);
  } else {
  }
  be_intr_set(adapter, 1);
  status = be_cmd_fw_init(adapter);
  if (status != 0) {
    goto ctrl_clean;
  } else {
  }
  status = be_stats_init(adapter);
  if (status != 0) {
    goto ctrl_clean;
  } else {
  }
  status = be_get_initial_config(adapter);
  if (status != 0) {
    goto stats_clean;
  } else {
  }
  __init_work(& adapter->work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  adapter->work.work.data = __constr_expr_0;
  lockdep_init_map(& adapter->work.work.lockdep_map, "(&(&adapter->work)->work)",
                   & __key, 0);
  INIT_LIST_HEAD(& adapter->work.work.entry);
  adapter->work.work.func = & be_worker;
  init_timer_key(& adapter->work.timer, 2U, "(&(&adapter->work)->timer)", & __key___0);
  adapter->work.timer.function = & delayed_work_timer_fn;
  adapter->work.timer.data = (unsigned long )(& adapter->work);
  __init_work(& adapter->func_recovery_work.work, 0);
  __constr_expr_1.counter = 137438953408L;
  adapter->func_recovery_work.work.data = __constr_expr_1;
  lockdep_init_map(& adapter->func_recovery_work.work.lockdep_map, "(&(&adapter->func_recovery_work)->work)",
                   & __key___1, 0);
  INIT_LIST_HEAD(& adapter->func_recovery_work.work.entry);
  adapter->func_recovery_work.work.func = & be_func_recovery_task;
  init_timer_key(& adapter->func_recovery_work.timer, 2U, "(&(&adapter->func_recovery_work)->timer)",
                 & __key___2);
  adapter->func_recovery_work.timer.function = & delayed_work_timer_fn;
  adapter->func_recovery_work.timer.data = (unsigned long )(& adapter->func_recovery_work);
  tmp___1 = 1U;
  adapter->tx_fc = tmp___1;
  adapter->rx_fc = tmp___1;
  status = be_setup(adapter);
  if (status != 0) {
    goto stats_clean;
  } else {
  }
  be_netdev_init(netdev);
  status = register_netdev(netdev);
  if (status != 0) {
    goto unsetup;
  } else {
  }
  be_roce_dev_add(adapter);
  tmp___2 = msecs_to_jiffies(1000U);
  schedule_delayed_work(& adapter->func_recovery_work, tmp___2);
  be_cmd_query_port_name(adapter, (u8 *)(& port_name));
  tmp___3 = mc_name(adapter);
  tmp___4 = func_name(adapter);
  tmp___5 = nic_name(pdev);
  _dev_info((struct device const *)(& pdev->dev), "%s: %s %s port %c\n", tmp___5,
            tmp___4, tmp___3, (int )port_name);
  return (0);
  unsetup:
  be_clear(adapter);
  stats_clean:
  be_stats_cleanup(adapter);
  ctrl_clean:
  be_ctrl_cleanup(adapter);
  free_netdev:
  free_netdev(netdev);
  pci_set_drvdata(pdev, 0);
  rel_reg:
  pci_release_regions(pdev);
  disable_dev:
  pci_disable_device(pdev);
  do_none:
  tmp___6 = nic_name(pdev);
  dev_err((struct device const *)(& pdev->dev), "%s initialization failed\n", tmp___6);
  return (status);
}
}
static int be_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct net_device *netdev ;
  bool tmp___0 ;
  pci_power_t tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  netdev = adapter->netdev;
  if ((int )adapter->wol) {
    be_setup_wol(adapter, 1);
  } else {
  }
  cancel_delayed_work_sync(& adapter->func_recovery_work);
  netif_device_detach(netdev);
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    rtnl_lock();
    be_close(netdev);
    rtnl_unlock();
  } else {
  }
  be_clear(adapter);
  pci_save_state(pdev);
  pci_disable_device(pdev);
  tmp___1 = pci_choose_state(pdev, state);
  pci_set_power_state(pdev, tmp___1);
  return (0);
}
}
static int be_resume(struct pci_dev *pdev )
{
  int status ;
  struct be_adapter *adapter ;
  void *tmp ;
  struct net_device *netdev ;
  bool tmp___0 ;
  unsigned long tmp___1 ;
  {
  status = 0;
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  netdev = adapter->netdev;
  netif_device_detach(netdev);
  status = pci_enable_device(pdev);
  if (status != 0) {
    return (status);
  } else {
  }
  pci_set_power_state(pdev, 0);
  pci_restore_state(pdev);
  status = be_cmd_fw_init(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  be_setup(adapter);
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    rtnl_lock();
    be_open(netdev);
    rtnl_unlock();
  } else {
  }
  tmp___1 = msecs_to_jiffies(1000U);
  schedule_delayed_work(& adapter->func_recovery_work, tmp___1);
  netif_device_attach(netdev);
  if ((int )adapter->wol) {
    be_setup_wol(adapter, 0);
  } else {
  }
  return (0);
}
}
static void be_shutdown(struct pci_dev *pdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  if ((unsigned long )adapter == (unsigned long )((struct be_adapter *)0)) {
    return;
  } else {
  }
  cancel_delayed_work_sync(& adapter->work);
  cancel_delayed_work_sync(& adapter->func_recovery_work);
  netif_device_detach(adapter->netdev);
  be_cmd_reset_function(adapter);
  pci_disable_device(pdev);
  return;
}
}
static pci_ers_result_t be_eeh_err_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct net_device *netdev ;
  bool tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  netdev = adapter->netdev;
  dev_err((struct device const *)(& (adapter->pdev)->dev), "EEH error detected\n");
  adapter->eeh_error = 1;
  cancel_delayed_work_sync(& adapter->func_recovery_work);
  rtnl_lock();
  netif_device_detach(netdev);
  rtnl_unlock();
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    rtnl_lock();
    be_close(netdev);
    rtnl_unlock();
  } else {
  }
  be_clear(adapter);
  if (state == 3U) {
    return (4U);
  } else {
  }
  pci_disable_device(pdev);
  if (pdev->devfn == 0U) {
    ssleep(30U);
  } else {
  }
  return (3U);
}
}
static pci_ers_result_t be_eeh_reset(struct pci_dev *pdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "EEH reset\n");
  be_clear_all_error(adapter);
  status = pci_enable_device(pdev);
  if (status != 0) {
    return (4U);
  } else {
  }
  pci_set_master(pdev);
  pci_set_power_state(pdev, 0);
  pci_restore_state(pdev);
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "Waiting for FW to be ready after EEH reset\n");
  status = be_fw_wait_ready(adapter);
  if (status != 0) {
    return (4U);
  } else {
  }
  pci_cleanup_aer_uncorrect_error_status(pdev);
  return (5U);
}
}
static void be_eeh_resume(struct pci_dev *pdev )
{
  int status ;
  struct be_adapter *adapter ;
  void *tmp ;
  struct net_device *netdev ;
  bool tmp___0 ;
  unsigned long tmp___1 ;
  {
  status = 0;
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  netdev = adapter->netdev;
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "EEH resume\n");
  pci_save_state(pdev);
  status = be_cmd_reset_function(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_cmd_fw_init(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_setup(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    status = be_open(netdev);
    if (status != 0) {
      goto err;
    } else {
    }
  } else {
  }
  tmp___1 = msecs_to_jiffies(1000U);
  schedule_delayed_work(& adapter->func_recovery_work, tmp___1);
  netif_device_attach(netdev);
  return;
  err:
  dev_err((struct device const *)(& (adapter->pdev)->dev), "EEH resume failed\n");
  return;
}
}
static struct pci_error_handlers const be_eeh_handlers = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& be_eeh_err_detected),
    0, 0, & be_eeh_reset, & be_eeh_resume};
static struct pci_driver be_driver =
     {{0, 0}, "be2net", (struct pci_device_id const *)(& be_dev_ids), & be_probe,
    & be_remove, & be_suspend, 0, 0, & be_resume, & be_shutdown, 0, & be_eeh_handlers,
    {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                           {0, 0}}};
static int be_init_module(void)
{
  int tmp ;
  {
  if (((unsigned int )rx_frag_size != 8192U && (unsigned int )rx_frag_size != 4096U) && (unsigned int )rx_frag_size != 2048U) {
    printk("\fbe2net : Module param rx_frag_size must be 2048/4096/8192. Using 2048\n");
    rx_frag_size = 2048U;
  } else {
  }
  tmp = __pci_register_driver(& be_driver, & __this_module, "be2net");
  return (tmp);
}
}
static void be_exit_module(void)
{
  {
  pci_unregister_driver(& be_driver);
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_check_return_value_probe(int ) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void ldv_main0_sequence_infinite_withcheck_stateful(void)
{
  struct net_device *var_group1 ;
  int res_be_open_88 ;
  int res_be_close_86 ;
  struct sk_buff *var_group2 ;
  void *var_be_mac_addr_set_9_p1 ;
  int var_be_change_mtu_32_p1 ;
  struct rtnl_link_stats64 *var_group3 ;
  __be16 var_be_vlan_add_vid_34_p1 ;
  u16 var_be_vlan_add_vid_34_p2 ;
  __be16 var_be_vlan_rem_vid_35_p1 ;
  u16 var_be_vlan_rem_vid_35_p2 ;
  int var_be_set_vf_mac_37_p1 ;
  u8 *var_be_set_vf_mac_37_p2 ;
  int var_be_set_vf_vlan_39_p1 ;
  u16 var_be_set_vf_vlan_39_p2 ;
  u8 var_be_set_vf_vlan_39_p3 ;
  int var_be_set_vf_tx_rate_40_p1 ;
  int var_be_set_vf_tx_rate_40_p2 ;
  int var_be_get_vf_config_38_p1 ;
  struct ifla_vf_info *var_be_get_vf_config_38_p2 ;
  struct pci_dev *var_group4 ;
  pci_channel_state_t var_be_eeh_err_detected_139_p1 ;
  struct pci_device_id const *var_be_probe_135_p1 ;
  int res_be_probe_135 ;
  pm_message_t var_be_suspend_136_p1 ;
  int var_be_intx_71_p0 ;
  void *var_be_intx_71_p1 ;
  int var_be_msix_72_p0 ;
  void *var_be_msix_72_p1 ;
  int ldv_s_be_netdev_ops_net_device_ops ;
  int ldv_s_be_driver_pci_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_be_netdev_ops_net_device_ops = 0;
  ldv_s_be_driver_pci_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = be_init_module();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_52736;
  ldv_52735:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_s_be_netdev_ops_net_device_ops == 0) {
    ldv_handler_precall();
    res_be_open_88 = be_open(var_group1);
    ldv_check_return_value(res_be_open_88);
    if (res_be_open_88 < 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_be_netdev_ops_net_device_ops = ldv_s_be_netdev_ops_net_device_ops + 1;
  } else {
  }
  goto ldv_52710;
  case 1: ;
  if (ldv_s_be_netdev_ops_net_device_ops == 1) {
    ldv_handler_precall();
    res_be_close_86 = be_close(var_group1);
    ldv_check_return_value(res_be_close_86);
    if (res_be_close_86 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_be_netdev_ops_net_device_ops = 0;
  } else {
  }
  goto ldv_52710;
  case 2:
  ldv_handler_precall();
  be_xmit(var_group2, var_group1);
  goto ldv_52710;
  case 3:
  ldv_handler_precall();
  be_set_rx_mode(var_group1);
  goto ldv_52710;
  case 4:
  ldv_handler_precall();
  be_mac_addr_set(var_group1, var_be_mac_addr_set_9_p1);
  goto ldv_52710;
  case 5:
  ldv_handler_precall();
  be_change_mtu(var_group1, var_be_change_mtu_32_p1);
  goto ldv_52710;
  case 6:
  ldv_handler_precall();
  be_get_stats64(var_group1, var_group3);
  goto ldv_52710;
  case 7:
  ldv_handler_precall();
  be_vlan_add_vid(var_group1, (int )var_be_vlan_add_vid_34_p1, (int )var_be_vlan_add_vid_34_p2);
  goto ldv_52710;
  case 8:
  ldv_handler_precall();
  be_vlan_rem_vid(var_group1, (int )var_be_vlan_rem_vid_35_p1, (int )var_be_vlan_rem_vid_35_p2);
  goto ldv_52710;
  case 9:
  ldv_handler_precall();
  be_set_vf_mac(var_group1, var_be_set_vf_mac_37_p1, var_be_set_vf_mac_37_p2);
  goto ldv_52710;
  case 10:
  ldv_handler_precall();
  be_set_vf_vlan(var_group1, var_be_set_vf_vlan_39_p1, (int )var_be_set_vf_vlan_39_p2,
                 (int )var_be_set_vf_vlan_39_p3);
  goto ldv_52710;
  case 11:
  ldv_handler_precall();
  be_set_vf_tx_rate(var_group1, var_be_set_vf_tx_rate_40_p1, var_be_set_vf_tx_rate_40_p2);
  goto ldv_52710;
  case 12:
  ldv_handler_precall();
  be_get_vf_config(var_group1, var_be_get_vf_config_38_p1, var_be_get_vf_config_38_p2);
  goto ldv_52710;
  case 13:
  ldv_handler_precall();
  be_netpoll(var_group1);
  goto ldv_52710;
  case 14:
  ldv_handler_precall();
  be_eeh_err_detected(var_group4, var_be_eeh_err_detected_139_p1);
  goto ldv_52710;
  case 15:
  ldv_handler_precall();
  be_eeh_reset(var_group4);
  goto ldv_52710;
  case 16:
  ldv_handler_precall();
  be_eeh_resume(var_group4);
  goto ldv_52710;
  case 17: ;
  if (ldv_s_be_driver_pci_driver == 0) {
    res_be_probe_135 = be_probe(var_group4, var_be_probe_135_p1);
    ldv_check_return_value(res_be_probe_135);
    ldv_check_return_value_probe(res_be_probe_135);
    if (res_be_probe_135 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_be_driver_pci_driver = ldv_s_be_driver_pci_driver + 1;
  } else {
  }
  goto ldv_52710;
  case 18: ;
  if (ldv_s_be_driver_pci_driver == 1) {
    ldv_handler_precall();
    be_remove(var_group4);
    ldv_s_be_driver_pci_driver = 0;
  } else {
  }
  goto ldv_52710;
  case 19:
  ldv_handler_precall();
  be_suspend(var_group4, var_be_suspend_136_p1);
  goto ldv_52710;
  case 20:
  ldv_handler_precall();
  be_resume(var_group4);
  goto ldv_52710;
  case 21:
  ldv_handler_precall();
  be_shutdown(var_group4);
  goto ldv_52710;
  case 22:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  be_intx(var_be_intx_71_p0, var_be_intx_71_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_52710;
  case 23:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  be_msix(var_be_msix_72_p0, var_be_msix_72_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_52710;
  default: ;
  goto ldv_52710;
  }
  ldv_52710: ;
  ldv_52736:
  tmp___1 = __VERIFIER_nondet_int();
  if ((tmp___1 != 0 || ldv_s_be_netdev_ops_net_device_ops != 0) || ldv_s_be_driver_pci_driver != 0) {
    goto ldv_52735;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  be_exit_module();
  ldv_final:
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static int fls(int x )
{
  int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
__inline static int __ilog2_u32(u32 n )
{
  int tmp ;
  {
  tmp = fls((int )n);
  return (tmp + -1);
}
}
extern char *strcpy(char * , char const * ) ;
int ldv_mutex_trylock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
extern int mutex_lock_interruptible(struct mutex * ) ;
int ldv_mutex_lock_interruptible_16(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_18(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_20(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_22(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_24(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_26(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_28(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_30(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_32(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_34(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_36(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_38(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_40(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_42(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_44(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_46(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(struct mutex *lock ) ;
void ldv_mutex_unlock_mbox_lock_of_be_adapter(struct mutex *lock ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->ldv_6014.rlock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  _raw_spin_unlock_bh(& lock->ldv_6014.rlock);
  return;
}
}
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
int be_roce_mcc_cmd(void *netdev_handle , void *wrb_payload , int wrb_payload_size ,
                    u16 *cmd_status , u16 *ext_status ) ;
__inline static u32 MODULO___0(u16 val , u16 limit )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(((int )limit & ((int )limit + -1)) != 0, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/inst/current/envs/linux-3.10-rc1.tar/linux-3.10-rc1/drivers/net/ethernet/emulex/benet/be.h"),
                         "i" (136), "i" (12UL));
    ldv_49493: ;
    goto ldv_49493;
  } else {
  }
  return ((u32 )((int )val & ((int )limit + -1)));
}
}
__inline static void index_inc___0(u16 *index , u16 limit )
{
  u32 tmp ;
  {
  tmp = MODULO___0((int )((unsigned int )*index + 1U), (int )limit);
  *index = (u16 )tmp;
  return;
}
}
__inline static void *queue_index_node(struct be_queue_info *q , u16 index )
{
  {
  return (q->dma_mem.va + (unsigned long )((int )index * (int )q->entry_size));
}
}
__inline static void queue_head_inc___0(struct be_queue_info *q )
{
  {
  index_inc___0(& q->head, (int )q->len);
  return;
}
}
__inline static void index_dec(u16 *index , u16 limit )
{
  u32 tmp ;
  {
  tmp = MODULO___0((int )((unsigned int )*index + 65535U), (int )limit);
  *index = (u16 )tmp;
  return;
}
}
__inline static void queue_tail_inc___0(struct be_queue_info *q )
{
  {
  index_inc___0(& q->tail, (int )q->len);
  return;
}
}
__inline static bool be_error(struct be_adapter *adapter )
{
  {
  return ((bool )(((int )adapter->eeh_error || (int )adapter->hw_error) || (int )adapter->fw_timeout));
}
}
int be_cmd_set_beacon_state(struct be_adapter *adapter , u8 port_num , u8 bcn , u8 sts ,
                            u8 state ) ;
int be_cmd_get_beacon_state(struct be_adapter *adapter , u8 port_num , u32 *state ) ;
int lancer_cmd_read_object(struct be_adapter *adapter , struct be_dma_mem *cmd , u32 data_size ,
                           u32 data_offset , char const *obj_name , u32 *data_read ,
                           u32 *eof , u8 *addn_status ) ;
int be_cmd_loopback_test(struct be_adapter *adapter , u32 port_num , u32 loopback_type ,
                         u32 pkt_size , u32 num_pkts , u64 pattern ) ;
int be_cmd_ddr_dma_test(struct be_adapter *adapter , u64 pattern , u32 byte_cnt ,
                        struct be_dma_mem *cmd ) ;
int be_cmd_get_seeprom_data(struct be_adapter *adapter , struct be_dma_mem *nonemb_cmd ) ;
int be_cmd_set_loopback(struct be_adapter *adapter , u8 port_num , u8 loopback_type ,
                        u8 enable ) ;
int be_cmd_get_reg_len(struct be_adapter *adapter , u32 *log_size ) ;
void be_cmd_get_regs(struct be_adapter *adapter , u32 buf_len , void *buf ) ;
int be_cmd_set_ext_fat_capabilites(struct be_adapter *adapter , struct be_dma_mem *cmd ,
                                   struct be_fat_conf_params *configs ) ;
int lancer_wait_ready(struct be_adapter *adapter ) ;
static struct be_cmd_priv_map cmd_priv_map[5U] = { {12U, 3U, 1800U},
        {37U, 1U, 1794U},
        {36U, 1U, 1800U},
        {18U, 3U, 1800U},
        {102U, 1U, 1800U}};
static bool be_cmd_allowed(struct be_adapter *adapter , u8 opcode , u8 subsystem )
{
  int i ;
  int num_entries ;
  u32 cmd_privileges ;
  {
  num_entries = 5;
  cmd_privileges = adapter->cmd_privileges;
  i = 0;
  goto ldv_51314;
  ldv_51313: ;
  if ((int )cmd_priv_map[i].opcode == (int )opcode && (int )cmd_priv_map[i].subsystem == (int )subsystem) {
    if ((cmd_priv_map[i].priv_mask & cmd_privileges) == 0U) {
      return (0);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_51314: ;
  if (i < num_entries) {
    goto ldv_51313;
  } else {
  }
  return (1);
}
}
__inline static void *embedded_payload(struct be_mcc_wrb *wrb )
{
  {
  return ((void *)(& wrb->payload.embedded_payload));
}
}
static void be_mcc_notify(struct be_adapter *adapter )
{
  struct be_queue_info *mccq ;
  u32 val ;
  bool tmp ;
  {
  mccq = & adapter->mcc_obj.q;
  val = 0U;
  tmp = be_error(adapter);
  if ((int )tmp) {
    return;
  } else {
  }
  val = ((u32 )mccq->id & 2047U) | val;
  val = val | 65536U;
  __asm__ volatile ("sfence": : : "memory");
  iowrite32(val, (void *)adapter->db + 320U);
  return;
}
}
__inline static bool be_mcc_compl_is_new(struct be_mcc_compl *compl )
{
  u32 flags ;
  {
  if (compl->flags != 0U) {
    flags = compl->flags;
    if ((int )flags < 0) {
      compl->flags = flags;
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
__inline static void be_mcc_compl_use(struct be_mcc_compl *compl )
{
  {
  compl->flags = 0U;
  return;
}
}
static struct be_cmd_resp_hdr *be_decode_resp_hdr(u32 tag0 , u32 tag1 )
{
  unsigned long addr ;
  {
  addr = (unsigned long )tag1;
  addr = (addr << 32UL) | (unsigned long )tag0;
  return ((struct be_cmd_resp_hdr *)addr);
}
}
static int be_mcc_compl_process(struct be_adapter *adapter , struct be_mcc_compl *compl )
{
  u16 compl_status ;
  u16 extd_status ;
  struct be_cmd_resp_hdr *resp_hdr ;
  u8 opcode ;
  u8 subsystem ;
  struct be_cmd_resp_get_cntl_addnl_attribs *resp ;
  {
  opcode = 0U;
  subsystem = 0U;
  swap_dws((void *)compl, 4);
  compl_status = (u16 )compl->status;
  resp_hdr = be_decode_resp_hdr(compl->tag0, compl->tag1);
  if ((unsigned long )resp_hdr != (unsigned long )((struct be_cmd_resp_hdr *)0)) {
    opcode = resp_hdr->opcode;
    subsystem = resp_hdr->subsystem;
  } else {
  }
  if (((unsigned int )opcode == 7U || (unsigned int )opcode == 172U) && (unsigned int )subsystem == 1U) {
    adapter->flash_status = (u32 )compl_status;
    complete(& adapter->flash_compl);
  } else {
  }
  if ((unsigned int )compl_status == 0U) {
    if (((unsigned int )opcode == 4U || (unsigned int )opcode == 18U) && (unsigned int )subsystem == 3U) {
      be_parse_stats(adapter);
      adapter->stats_cmd_sent = 0;
    } else {
    }
    if ((unsigned int )opcode == 121U && (unsigned int )subsystem == 1U) {
      resp = (struct be_cmd_resp_get_cntl_addnl_attribs *)resp_hdr;
      adapter->drv_stats.be_on_die_temperature = (u32 )resp->on_die_temperature;
    } else {
    }
  } else {
    if ((unsigned int )opcode == 121U) {
      adapter->be_get_temp_freq = 0;
    } else {
    }
    if ((unsigned int )compl_status == 66U || (unsigned int )compl_status == 2U) {
      goto done;
    } else {
    }
    if ((unsigned int )compl_status == 5U) {
      dev_warn((struct device const *)(& (adapter->pdev)->dev), "VF is not privileged to issue opcode %d-%d\n",
               (int )opcode, (int )subsystem);
    } else {
      extd_status = (u16 )(compl->status >> 16);
      dev_err((struct device const *)(& (adapter->pdev)->dev), "opcode %d-%d failed:status %d-%d\n",
              (int )opcode, (int )subsystem, (int )compl_status, (int )extd_status);
    }
  }
  done: ;
  return ((int )compl_status);
}
}
static void be_async_link_state_process(struct be_adapter *adapter , struct be_async_event_link_state *evt )
{
  {
  adapter->phy.link_speed = -1;
  if (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) && ((int )evt->port_link_status & 2) == 0) {
    return;
  } else {
  }
  if ((int )adapter->flags & 1) {
    be_link_status_update(adapter, (int )evt->port_link_status);
  } else {
  }
  return;
}
}
static void be_async_grp5_cos_priority_process(struct be_adapter *adapter , struct be_async_event_grp5_cos_priority *evt )
{
  {
  if ((unsigned int )evt->valid != 0U) {
    adapter->vlan_prio_bmap = evt->available_priority_bmap;
    adapter->recommended_prio = (unsigned int )adapter->recommended_prio & 8191U;
    adapter->recommended_prio = (int )((u16 )evt->reco_default_priority) << 13U;
  } else {
  }
  return;
}
}
static void be_async_grp5_qos_speed_process(struct be_adapter *adapter , struct be_async_event_grp5_qos_link_speed *evt )
{
  {
  if (adapter->phy.link_speed >= 0 && (u32 )evt->physical_port == adapter->port_num) {
    adapter->phy.link_speed = (int )evt->qos_link_speed * 10;
  } else {
  }
  return;
}
}
static void be_async_grp5_pvid_state_process(struct be_adapter *adapter , struct be_async_event_grp5_pvid_state *evt )
{
  {
  if ((unsigned int )evt->enabled != 0U) {
    adapter->pvid = (unsigned int )evt->tag & 4095U;
  } else {
    adapter->pvid = 0U;
  }
  return;
}
}
static void be_async_grp5_evt_process(struct be_adapter *adapter , u32 trailer , struct be_mcc_compl *evt )
{
  u8 event_type ;
  {
  event_type = 0U;
  event_type = (u8 )(trailer >> 16);
  switch ((int )event_type) {
  case 2:
  be_async_grp5_cos_priority_process(adapter, (struct be_async_event_grp5_cos_priority *)evt);
  goto ldv_51370;
  case 1:
  be_async_grp5_qos_speed_process(adapter, (struct be_async_event_grp5_qos_link_speed *)evt);
  goto ldv_51370;
  case 3:
  be_async_grp5_pvid_state_process(adapter, (struct be_async_event_grp5_pvid_state *)evt);
  goto ldv_51370;
  default:
  dev_warn((struct device const *)(& (adapter->pdev)->dev), "Unknown grp5 event!\n");
  goto ldv_51370;
  }
  ldv_51370: ;
  return;
}
}
static void be_async_dbg_evt_process(struct be_adapter *adapter , u32 trailer , struct be_mcc_compl *cmp )
{
  u8 event_type ;
  struct be_async_event_qnq *evt ;
  {
  event_type = 0U;
  evt = (struct be_async_event_qnq *)cmp;
  event_type = (u8 )(trailer >> 16);
  switch ((int )event_type) {
  case 1: ;
  if ((unsigned int )evt->valid != 0U) {
    adapter->qnq_vid = evt->vlan_tag;
  } else {
  }
  adapter->flags = adapter->flags | 2048U;
  goto ldv_51382;
  default:
  dev_warn((struct device const *)(& (adapter->pdev)->dev), "Unknown debug event\n");
  goto ldv_51382;
  }
  ldv_51382: ;
  return;
}
}
__inline static bool is_link_state_evt(u32 trailer )
{
  {
  return (((trailer >> 8) & 255U) == 1U);
}
}
__inline static bool is_grp5_evt(u32 trailer )
{
  {
  return (((trailer >> 8) & 255U) == 5U);
}
}
__inline static bool is_dbg_evt(u32 trailer )
{
  {
  return (((trailer >> 8) & 255U) == 6U);
}
}
static struct be_mcc_compl *be_mcc_compl_get(struct be_adapter *adapter )
{
  struct be_queue_info *mcc_cq ;
  struct be_mcc_compl *compl ;
  void *tmp ;
  bool tmp___0 ;
  {
  mcc_cq = & adapter->mcc_obj.cq;
  tmp = queue_tail_node(mcc_cq);
  compl = (struct be_mcc_compl *)tmp;
  tmp___0 = be_mcc_compl_is_new(compl);
  if ((int )tmp___0) {
    queue_tail_inc___0(mcc_cq);
    return (compl);
  } else {
  }
  return (0);
}
}
void be_async_mcc_enable(struct be_adapter *adapter )
{
  {
  spin_lock_bh(& adapter->mcc_cq_lock);
  be_cq_notify(adapter, (int )adapter->mcc_obj.cq.id, 1, 0);
  adapter->mcc_obj.rearm_cq = 1;
  spin_unlock_bh(& adapter->mcc_cq_lock);
  return;
}
}
void be_async_mcc_disable(struct be_adapter *adapter )
{
  {
  spin_lock_bh(& adapter->mcc_cq_lock);
  adapter->mcc_obj.rearm_cq = 0;
  be_cq_notify(adapter, (int )adapter->mcc_obj.cq.id, 0, 0);
  spin_unlock_bh(& adapter->mcc_cq_lock);
  return;
}
}
int be_process_mcc(struct be_adapter *adapter )
{
  struct be_mcc_compl *compl ;
  int num ;
  int status ;
  struct be_mcc_obj *mcc_obj ;
  bool tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  num = 0;
  status = 0;
  mcc_obj = & adapter->mcc_obj;
  spin_lock(& adapter->mcc_cq_lock);
  goto ldv_51412;
  ldv_51411: ;
  if ((compl->flags & 1073741824U) != 0U) {
    tmp___1 = is_link_state_evt(compl->flags);
    if ((int )tmp___1) {
      be_async_link_state_process(adapter, (struct be_async_event_link_state *)compl);
    } else {
      tmp___0 = is_grp5_evt(compl->flags);
      if ((int )tmp___0) {
        be_async_grp5_evt_process(adapter, compl->flags, compl);
      } else {
        tmp = is_dbg_evt(compl->flags);
        if ((int )tmp) {
          be_async_dbg_evt_process(adapter, compl->flags, compl);
        } else {
        }
      }
    }
  } else
  if ((compl->flags & 268435456U) != 0U) {
    status = be_mcc_compl_process(adapter, compl);
    atomic_dec(& mcc_obj->q.used);
  } else {
  }
  be_mcc_compl_use(compl);
  num = num + 1;
  ldv_51412:
  compl = be_mcc_compl_get(adapter);
  if ((unsigned long )compl != (unsigned long )((struct be_mcc_compl *)0)) {
    goto ldv_51411;
  } else {
  }
  if (num != 0) {
    be_cq_notify(adapter, (int )mcc_obj->cq.id, (int )mcc_obj->rearm_cq, (int )((u16 )num));
  } else {
  }
  spin_unlock(& adapter->mcc_cq_lock);
  return (status);
}
}
static int be_mcc_wait_compl(struct be_adapter *adapter )
{
  int i ;
  int status ;
  struct be_mcc_obj *mcc_obj ;
  bool tmp ;
  int tmp___0 ;
  {
  status = 0;
  mcc_obj = & adapter->mcc_obj;
  i = 0;
  goto ldv_51422;
  ldv_51421:
  tmp = be_error(adapter);
  if ((int )tmp) {
    return (-5);
  } else {
  }
  local_bh_disable();
  status = be_process_mcc(adapter);
  local_bh_enable();
  tmp___0 = atomic_read((atomic_t const *)(& mcc_obj->q.used));
  if (tmp___0 == 0) {
    goto ldv_51420;
  } else {
  }
  __const_udelay(429500UL);
  i = i + 1;
  ldv_51422: ;
  if (i <= 119999) {
    goto ldv_51421;
  } else {
  }
  ldv_51420: ;
  if (i == 120000) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "FW not responding\n");
    adapter->fw_timeout = 1;
    return (-5);
  } else {
  }
  return (status);
}
}
static int be_mcc_notify_wait(struct be_adapter *adapter )
{
  int status ;
  struct be_mcc_wrb *wrb ;
  struct be_mcc_obj *mcc_obj ;
  u16 index ;
  struct be_cmd_resp_hdr *resp ;
  void *tmp ;
  {
  mcc_obj = & adapter->mcc_obj;
  index = mcc_obj->q.head;
  index_dec(& index, (int )mcc_obj->q.len);
  tmp = queue_index_node(& mcc_obj->q, (int )index);
  wrb = (struct be_mcc_wrb *)tmp;
  resp = be_decode_resp_hdr(wrb->tag0, wrb->tag1);
  be_mcc_notify(adapter);
  status = be_mcc_wait_compl(adapter);
  if (status == -5) {
    goto out;
  } else {
  }
  status = (int )resp->status;
  out: ;
  return (status);
}
}
static int be_mbox_db_ready_wait(struct be_adapter *adapter , void *db )
{
  int msecs ;
  u32 ready ;
  bool tmp ;
  {
  msecs = 0;
  ldv_51439:
  tmp = be_error(adapter);
  if ((int )tmp) {
    return (-5);
  } else {
  }
  ready = ioread32(db);
  if (ready == 4294967295U) {
    return (-1);
  } else {
  }
  ready = ready & 1U;
  if (ready != 0U) {
    goto ldv_51438;
  } else {
  }
  if (msecs > 4000) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "FW not responding\n");
    adapter->fw_timeout = 1;
    be_detect_error(adapter);
    return (-1);
  } else {
  }
  msleep(1U);
  msecs = msecs + 1;
  goto ldv_51439;
  ldv_51438: ;
  return (0);
}
}
static int be_mbox_notify_wait(struct be_adapter *adapter )
{
  int status ;
  u32 val ;
  void *db ;
  struct be_dma_mem *mbox_mem ;
  struct be_mcc_mailbox *mbox ;
  struct be_mcc_compl *compl ;
  bool tmp ;
  {
  val = 0U;
  db = (void *)adapter->db + 352U;
  mbox_mem = & adapter->mbox_mem;
  mbox = (struct be_mcc_mailbox *)mbox_mem->va;
  compl = & mbox->compl;
  status = be_mbox_db_ready_wait(adapter, db);
  if (status != 0) {
    return (status);
  } else {
  }
  val = val | 2U;
  val = ((u32 )(mbox_mem->dma >> 32ULL) & 4294967292U) | val;
  iowrite32(val, db);
  status = be_mbox_db_ready_wait(adapter, db);
  if (status != 0) {
    return (status);
  } else {
  }
  val = 0U;
  val = ((unsigned int )(mbox_mem->dma >> 4) << 2) | val;
  iowrite32(val, db);
  status = be_mbox_db_ready_wait(adapter, db);
  if (status != 0) {
    return (status);
  } else {
  }
  tmp = be_mcc_compl_is_new(compl);
  if ((int )tmp) {
    status = be_mcc_compl_process(adapter, & mbox->compl);
    be_mcc_compl_use(compl);
    if (status != 0) {
      return (status);
    } else {
    }
  } else {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "invalid mailbox completion\n");
    return (-1);
  }
  return (0);
}
}
static u16 be_POST_stage_get(struct be_adapter *adapter )
{
  u32 sem ;
  {
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    sem = ioread32((void *)adapter->csr + 172U);
  } else {
    pci_read_config_dword((struct pci_dev const *)adapter->pdev, 148, & sem);
  }
  return ((u16 )sem);
}
}
int lancer_wait_ready(struct be_adapter *adapter )
{
  u32 sliport_status ;
  int status ;
  int i ;
  {
  status = 0;
  i = 0;
  goto ldv_51461;
  ldv_51460:
  sliport_status = ioread32((void *)adapter->db + 1028U);
  if ((sliport_status & 8388608U) != 0U) {
    goto ldv_51459;
  } else {
  }
  msleep(1000U);
  i = i + 1;
  ldv_51461: ;
  if (i <= 29) {
    goto ldv_51460;
  } else {
  }
  ldv_51459: ;
  if (i == 30) {
    status = -1;
  } else {
  }
  return (status);
}
}
static bool lancer_provisioning_error(struct be_adapter *adapter )
{
  u32 sliport_status ;
  u32 sliport_err1 ;
  u32 sliport_err2 ;
  {
  sliport_status = 0U;
  sliport_err1 = 0U;
  sliport_err2 = 0U;
  sliport_status = ioread32((void *)adapter->db + 1028U);
  if ((int )sliport_status < 0) {
    sliport_err1 = ioread32((void *)adapter->db + 1036U);
    sliport_err2 = ioread32((void *)adapter->db + 1040U);
    if (sliport_err1 == 2U && sliport_err2 == 9U) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
int lancer_test_and_set_rdy_state(struct be_adapter *adapter )
{
  int status ;
  u32 sliport_status ;
  u32 err ;
  u32 reset_needed ;
  bool resource_error ;
  {
  resource_error = lancer_provisioning_error(adapter);
  if ((int )resource_error) {
    return (-1);
  } else {
  }
  status = lancer_wait_ready(adapter);
  if (status == 0) {
    sliport_status = ioread32((void *)adapter->db + 1028U);
    err = sliport_status & 2147483648U;
    reset_needed = sliport_status & 16777216U;
    if (err != 0U && reset_needed != 0U) {
      iowrite32(134217728U, (void *)adapter->db + 1032U);
      status = lancer_wait_ready(adapter);
      sliport_status = ioread32((void *)adapter->db + 1028U);
      sliport_status = sliport_status & 2164260864U;
      if (status != 0 || sliport_status != 0U) {
        status = -1;
      } else {
      }
    } else
    if (err != 0U || reset_needed != 0U) {
      status = -1;
    } else {
    }
  } else {
  }
  resource_error = lancer_provisioning_error(adapter);
  if (status == -1 && ! resource_error) {
    adapter->eeh_error = 1;
  } else {
  }
  return (status);
}
}
int be_fw_wait_ready(struct be_adapter *adapter )
{
  u16 stage ;
  int status ;
  int timeout ;
  struct device *dev ;
  unsigned long tmp ;
  {
  timeout = 0;
  dev = & (adapter->pdev)->dev;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    status = lancer_wait_ready(adapter);
    return (status);
  } else {
  }
  ldv_51483:
  stage = be_POST_stage_get(adapter);
  if ((unsigned int )stage == 49152U) {
    return (0);
  } else {
  }
  _dev_info((struct device const *)dev, "Waiting for POST, %ds elapsed\n", timeout);
  tmp = msleep_interruptible(2000U);
  if (tmp != 0UL) {
    dev_err((struct device const *)dev, "Waiting for POST aborted\n");
    return (-4);
  } else {
  }
  timeout = timeout + 2;
  if (timeout <= 59) {
    goto ldv_51483;
  } else {
  }
  dev_err((struct device const *)dev, "POST timeout; stage=0x%x\n", (int )stage);
  return (-1);
}
}
__inline static struct be_sge *nonembedded_sgl(struct be_mcc_wrb *wrb )
{
  {
  return ((struct be_sge *)(& wrb->payload.sgl));
}
}
static void be_wrb_cmd_hdr_prepare(struct be_cmd_req_hdr *req_hdr , u8 subsystem ,
                                   u8 opcode , int cmd_len , struct be_mcc_wrb *wrb ,
                                   struct be_dma_mem *mem )
{
  struct be_sge *sge ;
  unsigned long addr ;
  u64 req_addr ;
  {
  addr = (unsigned long )req_hdr;
  req_addr = (u64 )addr;
  req_hdr->opcode = opcode;
  req_hdr->subsystem = subsystem;
  req_hdr->request_length = (unsigned int )cmd_len - 16U;
  req_hdr->version = 0U;
  wrb->tag0 = (u32 )req_addr;
  wrb->tag1 = (unsigned int )(req_addr >> 32ULL);
  wrb->payload_length = (u32 )cmd_len;
  if ((unsigned long )mem != (unsigned long )((struct be_dma_mem *)0)) {
    wrb->embedded = wrb->embedded | 8U;
    sge = nonembedded_sgl(wrb);
    sge->pa_hi = (unsigned int )(mem->dma >> 32ULL);
    sge->pa_lo = (unsigned int )mem->dma;
    sge->len = mem->size;
  } else {
    wrb->embedded = wrb->embedded | 1U;
  }
  swap_dws((void *)wrb, 8);
  return;
}
}
static void be_cmd_page_addrs_prepare(struct phys_addr *pages , u32 max_pages , struct be_dma_mem *mem )
{
  int i ;
  int buf_pages ;
  unsigned int _min1 ;
  u32 _min2 ;
  u64 dma ;
  {
  _min1 = (unsigned int )(((((unsigned long )mem->va & 4095UL) + (unsigned long )mem->size) + 4095UL) >> 12);
  _min2 = max_pages;
  buf_pages = (int )(_min1 < _min2 ? _min1 : _min2);
  dma = mem->dma;
  i = 0;
  goto ldv_51511;
  ldv_51510:
  (pages + (unsigned long )i)->lo = (unsigned int )dma;
  (pages + (unsigned long )i)->hi = (unsigned int )(dma >> 32ULL);
  dma = dma + 4096ULL;
  i = i + 1;
  ldv_51511: ;
  if (i < buf_pages) {
    goto ldv_51510;
  } else {
  }
  return;
}
}
static u32 eq_delay_to_mult(u32 usec_delay )
{
  u32 round ;
  u32 multiplier ;
  u32 interrupt_rate ;
  u32 _min1 ;
  unsigned int _min2 ;
  {
  round = 10U;
  if (usec_delay == 0U) {
    multiplier = 0U;
  } else {
    interrupt_rate = 1000000U / usec_delay;
    if (interrupt_rate == 0U) {
      multiplier = 1023U;
    } else {
      multiplier = (651042U - interrupt_rate) * round;
      multiplier = multiplier / interrupt_rate;
      multiplier = (round / 2U + multiplier) / round;
      _min1 = multiplier;
      _min2 = 1023U;
      multiplier = _min1 < _min2 ? _min1 : _min2;
    }
  }
  return (multiplier);
}
}
__inline static struct be_mcc_wrb *wrb_from_mbox(struct be_adapter *adapter )
{
  struct be_dma_mem *mbox_mem ;
  struct be_mcc_wrb *wrb ;
  {
  mbox_mem = & adapter->mbox_mem;
  wrb = & ((struct be_mcc_mailbox *)mbox_mem->va)->wrb;
  memset((void *)wrb, 0, 256UL);
  return (wrb);
}
}
static struct be_mcc_wrb *wrb_from_mccq(struct be_adapter *adapter )
{
  struct be_queue_info *mccq ;
  struct be_mcc_wrb *wrb ;
  int tmp ;
  void *tmp___0 ;
  {
  mccq = & adapter->mcc_obj.q;
  if (! mccq->created) {
    return (0);
  } else {
  }
  tmp = atomic_read((atomic_t const *)(& mccq->used));
  if (tmp >= (int )mccq->len) {
    return (0);
  } else {
  }
  tmp___0 = queue_head_node(mccq);
  wrb = (struct be_mcc_wrb *)tmp___0;
  queue_head_inc___0(mccq);
  atomic_inc(& mccq->used);
  memset((void *)wrb, 0, 256UL);
  return (wrb);
}
}
int be_cmd_fw_init(struct be_adapter *adapter )
{
  u8 *wrb ;
  int status ;
  int tmp ;
  struct be_mcc_wrb *tmp___0 ;
  u8 *tmp___1 ;
  u8 *tmp___2 ;
  u8 *tmp___3 ;
  u8 *tmp___4 ;
  u8 *tmp___5 ;
  u8 *tmp___6 ;
  u8 *tmp___7 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    return (0);
  } else {
  }
  tmp = ldv_mutex_lock_interruptible_16(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  tmp___0 = wrb_from_mbox(adapter);
  wrb = (u8 *)tmp___0;
  tmp___1 = wrb;
  wrb = wrb + 1;
  *tmp___1 = 255U;
  tmp___2 = wrb;
  wrb = wrb + 1;
  *tmp___2 = 18U;
  tmp___3 = wrb;
  wrb = wrb + 1;
  *tmp___3 = 52U;
  tmp___4 = wrb;
  wrb = wrb + 1;
  *tmp___4 = 255U;
  tmp___5 = wrb;
  wrb = wrb + 1;
  *tmp___5 = 255U;
  tmp___6 = wrb;
  wrb = wrb + 1;
  *tmp___6 = 86U;
  tmp___7 = wrb;
  wrb = wrb + 1;
  *tmp___7 = 120U;
  *wrb = 255U;
  status = be_mbox_notify_wait(adapter);
  ldv_mutex_unlock_17(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_fw_clean(struct be_adapter *adapter )
{
  u8 *wrb ;
  int status ;
  int tmp ;
  struct be_mcc_wrb *tmp___0 ;
  u8 *tmp___1 ;
  u8 *tmp___2 ;
  u8 *tmp___3 ;
  u8 *tmp___4 ;
  u8 *tmp___5 ;
  u8 *tmp___6 ;
  u8 *tmp___7 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    return (0);
  } else {
  }
  tmp = ldv_mutex_lock_interruptible_18(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  tmp___0 = wrb_from_mbox(adapter);
  wrb = (u8 *)tmp___0;
  tmp___1 = wrb;
  wrb = wrb + 1;
  *tmp___1 = 255U;
  tmp___2 = wrb;
  wrb = wrb + 1;
  *tmp___2 = 170U;
  tmp___3 = wrb;
  wrb = wrb + 1;
  *tmp___3 = 187U;
  tmp___4 = wrb;
  wrb = wrb + 1;
  *tmp___4 = 255U;
  tmp___5 = wrb;
  wrb = wrb + 1;
  *tmp___5 = 255U;
  tmp___6 = wrb;
  wrb = wrb + 1;
  *tmp___6 = 204U;
  tmp___7 = wrb;
  wrb = wrb + 1;
  *tmp___7 = 221U;
  *wrb = 255U;
  status = be_mbox_notify_wait(adapter);
  ldv_mutex_unlock_19(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_eq_create(struct be_adapter *adapter , struct be_queue_info *eq , int eq_delay )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_eq_create *req ;
  struct be_dma_mem *q_mem ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  struct be_cmd_resp_eq_create *resp ;
  void *tmp___7 ;
  {
  q_mem = & eq->dma_mem;
  tmp = ldv_mutex_lock_interruptible_20(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_eq_create *)tmp___0;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 13, 100, wrb, 0);
  req->num_pages = (unsigned short )(((((unsigned long )q_mem->va & 4095UL) + (unsigned long )q_mem->size) + 4095UL) >> 12);
  tmp___1 = amap_mask(1U);
  amap_set((void *)(& req->context), 0U, tmp___1, 29U, 1U);
  tmp___2 = amap_mask(1U);
  amap_set((void *)(& req->context), 0U, tmp___2, 31U, 0U);
  tmp___3 = __ilog2_u32((unsigned int )eq->len / 256U);
  tmp___4 = amap_mask(3U);
  amap_set((void *)(& req->context), 1U, tmp___4, 26U, (u32 )tmp___3);
  tmp___5 = eq_delay_to_mult((u32 )eq_delay);
  tmp___6 = amap_mask(10U);
  amap_set((void *)(& req->context), 2U, tmp___6, 13U, tmp___5);
  swap_dws((void *)(& req->context), 16);
  be_cmd_page_addrs_prepare((struct phys_addr *)(& req->pages), 8U, q_mem);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___7 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_eq_create *)tmp___7;
    eq->id = resp->eq_id;
    eq->created = 1;
  } else {
  }
  ldv_mutex_unlock_21(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_mac_addr_query(struct be_adapter *adapter , u8 *mac_addr , bool permanent ,
                          u32 if_handle , u32 pmac_id )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_mac_query *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_mac_query *resp ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_mac_query *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 1, 24, wrb, 0);
  req->type = 1U;
  if ((int )permanent) {
    req->permanent = 1U;
  } else {
    req->if_id = (unsigned short )if_handle;
    req->pmac_id = pmac_id;
    req->permanent = 0U;
  }
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_mac_query *)tmp___0;
    __len = 6UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)mac_addr, (void const *)(& resp->mac.addr), __len);
    } else {
      __ret = memcpy((void *)mac_addr, (void const *)(& resp->mac.addr),
                               __len);
    }
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_pmac_add(struct be_adapter *adapter , u8 *mac_addr , u32 if_id , u32 *pmac_id ,
                    u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_pmac_add *req ;
  int status ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  struct be_cmd_resp_pmac_add *resp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_pmac_add *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 59, 28, wrb, 0);
  req->hdr.domain = (u8 )domain;
  req->if_id = if_id;
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& req->mac_address), (void const *)mac_addr, __len);
  } else {
    __ret = memcpy((void *)(& req->mac_address), (void const *)mac_addr,
                             __len);
  }
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_pmac_add *)tmp___0;
    *pmac_id = resp->pmac_id;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  if (status == 5) {
    status = -1;
  } else {
  }
  return (status);
}
}
int be_cmd_pmac_del(struct be_adapter *adapter , u32 if_id , int pmac_id , u32 dom )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_pmac_del *req ;
  int status ;
  void *tmp ;
  {
  if (pmac_id == -1) {
    return (0);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_pmac_del *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 60, 24, wrb, 0);
  req->hdr.domain = (u8 )dom;
  req->if_id = if_id;
  req->pmac_id = (unsigned int )pmac_id;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_cq_create(struct be_adapter *adapter , struct be_queue_info *cq , struct be_queue_info *eq ,
                     bool no_delay , int coalesce_wm )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_cq_create *req ;
  struct be_dma_mem *q_mem ;
  void *ctxt ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  int tmp___9 ;
  u32 tmp___10 ;
  u32 tmp___11 ;
  u32 tmp___12 ;
  u32 tmp___13 ;
  struct be_cmd_resp_cq_create *resp ;
  void *tmp___14 ;
  {
  q_mem = & cq->dma_mem;
  tmp = ldv_mutex_lock_interruptible_22(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_cq_create *)tmp___0;
  ctxt = (void *)(& req->context);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 12, 100, wrb, 0);
  req->num_pages = (unsigned short )(((((unsigned long )q_mem->va & 4095UL) + (unsigned long )q_mem->size) + 4095UL) >> 12);
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    tmp___1 = amap_mask(2U);
    amap_set(ctxt, 0U, tmp___1, 12U, (u32 )coalesce_wm);
    tmp___2 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___2, 14U, (u32 )no_delay);
    tmp___3 = __ilog2_u32((unsigned int )cq->len / 256U);
    tmp___4 = amap_mask(2U);
    amap_set(ctxt, 0U, tmp___4, 27U, (u32 )tmp___3);
    tmp___5 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___5, 29U, 1U);
    tmp___6 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___6, 31U, 1U);
    tmp___7 = amap_mask(8U);
    amap_set(ctxt, 1U, tmp___7, 22U, (u32 )eq->id);
  } else {
    req->hdr.version = 2U;
    req->page_size = 1U;
    tmp___8 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___8, 14U, (u32 )no_delay);
    tmp___9 = __ilog2_u32((unsigned int )cq->len / 256U);
    tmp___10 = amap_mask(2U);
    amap_set(ctxt, 0U, tmp___10, 27U, (u32 )tmp___9);
    tmp___11 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___11, 29U, 1U);
    tmp___12 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___12, 31U, 1U);
    tmp___13 = amap_mask(16U);
    amap_set(ctxt, 1U, tmp___13, 0U, (u32 )eq->id);
  }
  swap_dws(ctxt, 16);
  be_cmd_page_addrs_prepare((struct phys_addr *)(& req->pages), 8U, q_mem);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___14 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_cq_create *)tmp___14;
    cq->id = resp->cq_id;
    cq->created = 1;
  } else {
  }
  ldv_mutex_unlock_23(& adapter->mbox_lock);
  return (status);
}
}
static u32 be_encoded_q_len(int q_len )
{
  u32 len_encoded ;
  int tmp ;
  {
  tmp = fls(q_len);
  len_encoded = (u32 )tmp;
  if (len_encoded == 16U) {
    len_encoded = 0U;
  } else {
  }
  return (len_encoded);
}
}
int be_cmd_mccq_ext_create(struct be_adapter *adapter , struct be_queue_info *mccq ,
                           struct be_queue_info *cq )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_mcc_ext_create *req ;
  struct be_dma_mem *q_mem ;
  void *ctxt ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  struct be_cmd_resp_mcc_create *resp ;
  void *tmp___10 ;
  {
  q_mem = & mccq->dma_mem;
  tmp = ldv_mutex_lock_interruptible_24(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_mcc_ext_create *)tmp___0;
  ctxt = (void *)(& req->context);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 90, 104, wrb, 0);
  req->num_pages = (unsigned short )(((((unsigned long )q_mem->va & 4095UL) + (unsigned long )q_mem->size) + 4095UL) >> 12);
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    req->hdr.version = 1U;
    req->cq_id = cq->id;
    tmp___1 = be_encoded_q_len((int )mccq->len);
    tmp___2 = amap_mask(4U);
    amap_set(ctxt, 0U, tmp___2, 16U, tmp___1);
    tmp___3 = amap_mask(1U);
    amap_set(ctxt, 1U, tmp___3, 31U, 1U);
    tmp___4 = amap_mask(16U);
    amap_set(ctxt, 0U, tmp___4, 0U, (u32 )cq->id);
    tmp___5 = amap_mask(1U);
    amap_set(ctxt, 2U, tmp___5, 0U, 1U);
  } else {
    tmp___6 = amap_mask(1U);
    amap_set(ctxt, 1U, tmp___6, 31U, 1U);
    tmp___7 = be_encoded_q_len((int )mccq->len);
    tmp___8 = amap_mask(4U);
    amap_set(ctxt, 0U, tmp___8, 16U, tmp___7);
    tmp___9 = amap_mask(10U);
    amap_set(ctxt, 0U, tmp___9, 22U, (u32 )cq->id);
  }
  req->async_event_bitmap[0] = 34U;
  req->async_event_bitmap[0] = req->async_event_bitmap[0] | 64U;
  swap_dws(ctxt, 16);
  be_cmd_page_addrs_prepare((struct phys_addr *)(& req->pages), 8U, q_mem);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___10 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_mcc_create *)tmp___10;
    mccq->id = resp->id;
    mccq->created = 1;
  } else {
  }
  ldv_mutex_unlock_25(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_mccq_org_create(struct be_adapter *adapter , struct be_queue_info *mccq ,
                           struct be_queue_info *cq )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_mcc_create *req ;
  struct be_dma_mem *q_mem ;
  void *ctxt ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  struct be_cmd_resp_mcc_create *resp ;
  void *tmp___5 ;
  {
  q_mem = & mccq->dma_mem;
  tmp = ldv_mutex_lock_interruptible_26(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_mcc_create *)tmp___0;
  ctxt = (void *)(& req->context);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 21, 100, wrb, 0);
  req->num_pages = (unsigned short )(((((unsigned long )q_mem->va & 4095UL) + (unsigned long )q_mem->size) + 4095UL) >> 12);
  tmp___1 = amap_mask(1U);
  amap_set(ctxt, 1U, tmp___1, 31U, 1U);
  tmp___2 = be_encoded_q_len((int )mccq->len);
  tmp___3 = amap_mask(4U);
  amap_set(ctxt, 0U, tmp___3, 16U, tmp___2);
  tmp___4 = amap_mask(10U);
  amap_set(ctxt, 0U, tmp___4, 22U, (u32 )cq->id);
  swap_dws(ctxt, 16);
  be_cmd_page_addrs_prepare((struct phys_addr *)(& req->pages), 8U, q_mem);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___5 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_mcc_create *)tmp___5;
    mccq->id = resp->id;
    mccq->created = 1;
  } else {
  }
  ldv_mutex_unlock_27(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_mccq_create(struct be_adapter *adapter , struct be_queue_info *mccq , struct be_queue_info *cq )
{
  int status ;
  {
  status = be_cmd_mccq_ext_create(adapter, mccq, cq);
  if (status != 0 && ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U)) {
    dev_warn((struct device const *)(& (adapter->pdev)->dev), "Upgrade to F/W ver 2.102.235.0 or newer to avoid conflicting priorities between NIC and FCoE traffic");
    status = be_cmd_mccq_org_create(adapter, mccq, cq);
  } else {
  }
  return (status);
}
}
int be_cmd_txq_create(struct be_adapter *adapter , struct be_tx_obj *txo )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_eth_tx_create *req ;
  struct be_queue_info *txq ;
  struct be_queue_info *cq ;
  struct be_dma_mem *q_mem ;
  int status ;
  int ver ;
  void *tmp ;
  u32 tmp___0 ;
  struct be_cmd_resp_eth_tx_create *resp ;
  void *tmp___1 ;
  {
  txq = & txo->q;
  cq = & txo->cq;
  q_mem = & txq->dma_mem;
  ver = 0;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_eth_tx_create *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 7, 148, wrb, 0);
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    req->hdr.version = 1U;
    req->if_id = (unsigned short )adapter->if_handle;
  } else
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    if ((adapter->function_caps & 64U) != 0U) {
      req->hdr.version = 2U;
    } else {
    }
  } else {
    req->hdr.version = 2U;
  }
  req->num_pages = (u8 )(((((unsigned long )q_mem->va & 4095UL) + (unsigned long )q_mem->size) + 4095UL) >> 12);
  req->ulp_num = 1U;
  req->type = 2U;
  req->cq_id = cq->id;
  tmp___0 = be_encoded_q_len((int )txq->len);
  req->queue_size = (u8 )tmp___0;
  be_cmd_page_addrs_prepare((struct phys_addr *)(& req->pages), 8U, q_mem);
  ver = (int )req->hdr.version;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___1 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_eth_tx_create *)tmp___1;
    txq->id = resp->cid;
    if (ver == 2) {
      txo->db_offset = resp->db_offset;
    } else {
      txo->db_offset = 96U;
    }
    txq->created = 1;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_rxq_create(struct be_adapter *adapter , struct be_queue_info *rxq , u16 cq_id ,
                      u16 frag_size , u32 if_id , u32 rss , u8 *rss_id )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_eth_rx_create *req ;
  struct be_dma_mem *q_mem ;
  int status ;
  void *tmp ;
  int tmp___0 ;
  struct be_cmd_resp_eth_rx_create *resp ;
  void *tmp___1 ;
  {
  q_mem = & rxq->dma_mem;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_eth_rx_create *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 8, 48, wrb, 0);
  req->cq_id = cq_id;
  tmp___0 = fls((int )frag_size);
  req->frag_size = (unsigned int )((u8 )tmp___0) + 255U;
  req->num_pages = 2U;
  be_cmd_page_addrs_prepare((struct phys_addr *)(& req->pages), 2U, q_mem);
  req->interface_id = if_id;
  req->max_frame_size = 9018U;
  req->rss_queue = rss;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___1 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_eth_rx_create *)tmp___1;
    rxq->id = resp->id;
    rxq->created = 1;
    *rss_id = resp->rss_id;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_q_destroy(struct be_adapter *adapter , struct be_queue_info *q , int queue_type )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_q_destroy *req ;
  u8 subsys ;
  u8 opcode ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  {
  subsys = 0U;
  opcode = 0U;
  tmp = ldv_mutex_lock_interruptible_28(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_q_destroy *)tmp___0;
  switch (queue_type) {
  case 1:
  subsys = 1U;
  opcode = 55U;
  goto ldv_51688;
  case 2:
  subsys = 1U;
  opcode = 54U;
  goto ldv_51688;
  case 3:
  subsys = 3U;
  opcode = 9U;
  goto ldv_51688;
  case 4:
  subsys = 3U;
  opcode = 10U;
  goto ldv_51688;
  case 5:
  subsys = 1U;
  opcode = 53U;
  goto ldv_51688;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8517/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/emulex/benet/be_cmds.c.prepared"),
                       "i" (1308), "i" (12UL));
  ldv_51694: ;
  goto ldv_51694;
  }
  ldv_51688:
  be_wrb_cmd_hdr_prepare(& req->hdr, (int )subsys, (int )opcode, 20, wrb, 0);
  req->id = q->id;
  status = be_mbox_notify_wait(adapter);
  q->created = 0;
  ldv_mutex_unlock_29(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_rxq_destroy(struct be_adapter *adapter , struct be_queue_info *q )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_q_destroy *req ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_q_destroy *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 10, 20, wrb, 0);
  req->id = q->id;
  status = be_mcc_notify_wait(adapter);
  q->created = 0;
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_if_create(struct be_adapter *adapter , u32 cap_flags , u32 en_flags , u32 *if_handle ,
                     u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_if_create *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_if_create *resp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_if_create *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 50, 40, wrb, 0);
  req->hdr.domain = (u8 )domain;
  req->capability_flags = cap_flags;
  req->enable_flags = en_flags;
  req->pmac_invalid = 1U;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_if_create *)tmp___0;
    *if_handle = resp->interface_id;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_if_destroy(struct be_adapter *adapter , int interface_id , u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_if_destroy *req ;
  int status ;
  void *tmp ;
  {
  if (interface_id == -1) {
    return (0);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_if_destroy *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 51, 20, wrb, 0);
  req->hdr.domain = (u8 )domain;
  req->interface_id = (unsigned int )interface_id;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_stats(struct be_adapter *adapter , struct be_dma_mem *nonemb_cmd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_hdr *hdr ;
  int status ;
  {
  status = 0;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  hdr = (struct be_cmd_req_hdr *)nonemb_cmd->va;
  be_wrb_cmd_hdr_prepare(hdr, 3, 4, (int )nonemb_cmd->size, wrb, nonemb_cmd);
  if ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U) {
    hdr->version = 1U;
  } else {
  }
  be_mcc_notify(adapter);
  adapter->stats_cmd_sent = 1;
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int lancer_cmd_get_pport_stats(struct be_adapter *adapter , struct be_dma_mem *nonemb_cmd )
{
  struct be_mcc_wrb *wrb ;
  struct lancer_cmd_req_pport_stats *req ;
  int status ;
  bool tmp ;
  int tmp___0 ;
  {
  status = 0;
  tmp = be_cmd_allowed(adapter, 18, 3);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct lancer_cmd_req_pport_stats *)nonemb_cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 18, (int )nonemb_cmd->size, wrb, nonemb_cmd);
  req->cmd_params.params.pport_num = (unsigned short )adapter->hba_port_num;
  req->cmd_params.params.reset_stats = 0U;
  be_mcc_notify(adapter);
  adapter->stats_cmd_sent = 1;
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
static int be_mac_to_link_speed(int mac_speed )
{
  {
  switch (mac_speed) {
  case 0: ;
  return (0);
  case 1: ;
  return (10);
  case 2: ;
  return (100);
  case 3: ;
  return (1000);
  case 4: ;
  return (10000);
  }
  return (0);
}
}
int be_cmd_link_status_query(struct be_adapter *adapter , u16 *link_speed , u8 *link_status ,
                             u32 dom )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_link_status *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_link_status *resp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  if ((unsigned long )link_status != (unsigned long )((u8 *)0)) {
    *link_status = 0U;
  } else {
  }
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_link_status *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 5, 20, wrb, 0);
  if ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U) {
    req->hdr.version = 1U;
  } else {
  }
  req->hdr.domain = (u8 )dom;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_link_status *)tmp___0;
    if ((unsigned long )link_speed != (unsigned long )((u16 *)0)) {
      if ((unsigned int )resp->link_speed != 0U) {
        *link_speed = (unsigned int )resp->link_speed * 10U;
      } else {
        tmp___1 = be_mac_to_link_speed((int )resp->mac_speed);
        *link_speed = (u16 )tmp___1;
      }
      if ((unsigned int )resp->logical_link_status == 0U) {
        *link_speed = 0U;
      } else {
      }
    } else {
    }
    if ((unsigned long )link_status != (unsigned long )((u8 *)0)) {
      *link_status = resp->logical_link_status;
    } else {
    }
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_die_temperature(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_cntl_addnl_attribs *req ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_cntl_addnl_attribs *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 121, 24, wrb, 0);
  be_mcc_notify(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_reg_len(struct be_adapter *adapter , u32 *log_size )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_fat *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_get_fat *resp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_fat *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 68, 36, wrb, 0);
  req->fat_operation = 1U;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_fat *)tmp___0;
    if ((unsigned long )log_size != (unsigned long )((u32 *)0) && resp->log_size != 0U) {
      *log_size = resp->log_size - 4U;
    } else {
    }
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
void be_cmd_get_regs(struct be_adapter *adapter , u32 buf_len , void *buf )
{
  struct be_dma_mem get_fat_cmd ;
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_fat *req ;
  u32 offset ;
  u32 total_size ;
  u32 buf_size ;
  u32 log_offset ;
  u32 payload_len ;
  int status ;
  u32 _min1 ;
  unsigned int _min2 ;
  struct be_cmd_resp_get_fat *resp ;
  size_t __len ;
  void *__ret ;
  {
  offset = 0U;
  log_offset = 4U;
  if (buf_len == 0U) {
    return;
  } else {
  }
  total_size = buf_len;
  get_fat_cmd.size = 61476U;
  get_fat_cmd.va = pci_alloc_consistent(adapter->pdev, (size_t )get_fat_cmd.size,
                                        & get_fat_cmd.dma);
  if ((unsigned long )get_fat_cmd.va == (unsigned long )((void *)0)) {
    status = -12;
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory allocation failure while retrieving FAT data\n");
    return;
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  goto ldv_51798;
  ldv_51797:
  _min1 = total_size;
  _min2 = 61440U;
  buf_size = _min1 < _min2 ? _min1 : _min2;
  total_size = total_size - buf_size;
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_get_fat *)get_fat_cmd.va;
  payload_len = buf_size + 36U;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 68, (int )payload_len, wrb, & get_fat_cmd);
  req->fat_operation = 0U;
  req->read_log_offset = log_offset;
  req->read_log_length = buf_size;
  req->data_buffer_size = buf_size;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_get_fat *)get_fat_cmd.va;
    __len = (size_t )resp->read_log_length;
    __ret = memcpy(buf + (unsigned long )offset, (void const *)(& resp->data_buffer),
                             __len);
  } else {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "FAT Table Retrieve error\n");
    goto err;
  }
  offset = offset + buf_size;
  log_offset = log_offset + buf_size;
  ldv_51798: ;
  if (total_size != 0U) {
    goto ldv_51797;
  } else {
  }
  err:
  pci_free_consistent(adapter->pdev, (size_t )get_fat_cmd.size, get_fat_cmd.va, get_fat_cmd.dma);
  spin_unlock_bh(& adapter->mcc_lock);
  return;
}
}
int be_cmd_get_fw_ver(struct be_adapter *adapter , char *fw_ver , char *fw_on_flash )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_fw_version *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_get_fw_version *resp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_fw_version *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 35, 80, wrb, 0);
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_fw_version *)tmp___0;
    strcpy(fw_ver, (char const *)(& resp->firmware_version_string));
    if ((unsigned long )fw_on_flash != (unsigned long )((char *)0)) {
      strcpy(fw_on_flash, (char const *)(& resp->fw_on_flash_version_string));
    } else {
    }
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_modify_eqd(struct be_adapter *adapter , u32 eq_id , u32 eqd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_modify_eq_delay *req ;
  int status ;
  void *tmp ;
  {
  status = 0;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_modify_eq_delay *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 41, 116, wrb, 0);
  req->num_eq = 1U;
  req->delay[0].eq_id = eq_id;
  req->delay[0].phase = 0U;
  req->delay[0].delay_multiplier = eqd;
  be_mcc_notify(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_vlan_config(struct be_adapter *adapter , u32 if_id , u16 *vtag_array ,
                       u32 num , bool untagged , bool promiscuous )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_vlan_config *req ;
  int status ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_vlan_config *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 4, 148, wrb, 0);
  req->interface_id = (u8 )if_id;
  req->promiscuous = (u8 )promiscuous;
  req->untagged = (u8 )untagged;
  req->num_vlan = (u8 )num;
  if (! promiscuous) {
    __len = (unsigned long )req->num_vlan * 2UL;
    __ret = memcpy((void *)(& req->normal_vlan), (void const *)vtag_array,
                             __len);
  } else {
  }
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_rx_filter(struct be_adapter *adapter , u32 flags , u32 value )
{
  struct be_mcc_wrb *wrb ;
  struct be_dma_mem *mem ;
  struct be_cmd_req_rx_filter *req ;
  int status ;
  u32 tmp ;
  struct netdev_hw_addr *ha ;
  int i ;
  u32 tmp___0 ;
  struct list_head const *__mptr ;
  size_t __len ;
  void *__ret ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr___0 ;
  {
  mem = & adapter->rx_filter;
  req = (struct be_cmd_req_rx_filter *)mem->va;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  memset((void *)req, 0, 424UL);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 34, 424, wrb, mem);
  req->if_id = (unsigned int )adapter->if_handle;
  if ((flags & 256U) != 0U) {
    req->if_flags_mask = 648U;
    if (value == 1U) {
      req->if_flags = 648U;
    } else {
    }
  } else
  if ((flags & 512U) != 0U) {
    tmp = 512U;
    req->if_flags = tmp;
    req->if_flags_mask = tmp;
  } else {
    i = 0;
    tmp___0 = 4096U;
    req->if_flags = tmp___0;
    req->if_flags_mask = tmp___0;
    req->if_flags_mask = req->if_flags_mask | (adapter->if_cap_flags & 512U);
    req->mcast_num = (unsigned int )(adapter->netdev)->mc.count;
    __mptr = (struct list_head const *)(adapter->netdev)->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_51854;
    ldv_51853:
    __len = 6UL;
    if (__len > 63UL) {
      tmp___1 = i;
      i = i + 1;
      __ret = memcpy((void *)(& req->mcast_mac[tmp___1].byte), (void const *)(& ha->addr),
                       __len);
    } else {
      tmp___2 = i;
      i = i + 1;
      __ret = memcpy((void *)(& req->mcast_mac[tmp___2].byte), (void const *)(& ha->addr),
                               __len);
    }
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_51854: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& (adapter->netdev)->mc.list)) {
      goto ldv_51853;
    } else {
    }
  }
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_set_flow_control(struct be_adapter *adapter , u32 tx_fc , u32 rx_fc )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_flow_control *req ;
  int status ;
  bool tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  tmp = be_cmd_allowed(adapter, 36, 1);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp___1 = embedded_payload(wrb);
  req = (struct be_cmd_req_set_flow_control *)tmp___1;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 36, 20, wrb, 0);
  req->tx_flow_control = (unsigned short )tx_fc;
  req->rx_flow_control = (unsigned short )rx_fc;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_flow_control(struct be_adapter *adapter , u32 *tx_fc , u32 *rx_fc )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_flow_control *req ;
  int status ;
  bool tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  struct be_cmd_resp_get_flow_control *resp ;
  void *tmp___2 ;
  {
  tmp = be_cmd_allowed(adapter, 37, 1);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp___1 = embedded_payload(wrb);
  req = (struct be_cmd_req_get_flow_control *)tmp___1;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 37, 20, wrb, 0);
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___2 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_flow_control *)tmp___2;
    *tx_fc = (u32 )resp->tx_flow_control;
    *rx_fc = (u32 )resp->rx_flow_control;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_query_fw_cfg(struct be_adapter *adapter , u32 *port_num , u32 *mode , u32 *caps ,
                        u16 *asic_rev )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_query_fw_cfg *req ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  struct be_cmd_resp_query_fw_cfg *resp ;
  void *tmp___1 ;
  {
  tmp = ldv_mutex_lock_interruptible_30(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_query_fw_cfg *)tmp___0;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 58, 140, wrb, 0);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___1 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_query_fw_cfg *)tmp___1;
    *port_num = resp->phys_port;
    *mode = resp->function_mode;
    *caps = resp->function_caps;
    *asic_rev = (unsigned int )((u16 )resp->asic_revision) & 255U;
  } else {
  }
  ldv_mutex_unlock_31(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_reset_function(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_hdr *req ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    status = lancer_wait_ready(adapter);
    if (status == 0) {
      iowrite32(134217728U, (void *)adapter->db + 1032U);
      status = lancer_test_and_set_rdy_state(adapter);
    } else {
    }
    if (status != 0) {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "Adapter in non recoverable error\n");
    } else {
    }
    return (status);
  } else {
  }
  tmp = ldv_mutex_lock_interruptible_32(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_hdr *)tmp___0;
  be_wrb_cmd_hdr_prepare(req, 1, 61, 16, wrb, 0);
  status = be_mbox_notify_wait(adapter);
  ldv_mutex_unlock_33(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_rss_config(struct be_adapter *adapter , u8 *rsstable , u32 rss_hash_opts ,
                      u16 table_size )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_rss_config *req ;
  u32 myhash[10U] ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  myhash[0] = 366231461U;
  myhash[1] = 624191578U;
  myhash[2] = 1602709818U;
  myhash[3] = 1449675086U;
  myhash[4] = 869231187U;
  myhash[5] = 942879942U;
  myhash[6] = 1991000663U;
  myhash[7] = 1504854706U;
  myhash[8] = 1051212802U;
  myhash[9] = 1242628868U;
  tmp = ldv_mutex_lock_interruptible_34(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_rss_config *)tmp___0;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 1, 196, wrb, 0);
  req->if_id = (unsigned int )adapter->if_handle;
  req->enable_rss = (unsigned short )rss_hash_opts;
  tmp___1 = fls((int )table_size);
  req->cpu_table_size_log2 = (unsigned int )((unsigned short )tmp___1) - 1U;
  if (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) || ((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U)) {
    req->hdr.version = 1U;
  } else {
  }
  __len = (size_t )table_size;
  __ret = memcpy((void *)(& req->cpu_table), (void const *)rsstable, __len);
  __len___0 = 40UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& req->hash), (void const *)(& myhash), __len___0);
  } else {
    __ret___0 = memcpy((void *)(& req->hash), (void const *)(& myhash),
                                 __len___0);
  }
  swap_dws((void *)(& req->hash), 40);
  status = be_mbox_notify_wait(adapter);
  ldv_mutex_unlock_35(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_set_beacon_state(struct be_adapter *adapter , u8 port_num , u8 bcn , u8 sts ,
                            u8 state )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_enable_disable_beacon *req ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_enable_disable_beacon *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 69, 20, wrb, 0);
  req->port_num = port_num;
  req->beacon_state = state;
  req->beacon_duration = bcn;
  req->status_duration = sts;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_beacon_state(struct be_adapter *adapter , u8 port_num , u32 *state )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_beacon_state *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_get_beacon_state *resp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_beacon_state *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 70, 20, wrb, 0);
  req->port_num = port_num;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_beacon_state *)tmp___0;
    *state = (u32 )resp->beacon_state;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int lancer_cmd_write_object(struct be_adapter *adapter , struct be_dma_mem *cmd ,
                            u32 data_size , u32 data_offset , char const *obj_name ,
                            u32 *data_written , u8 *change_status , u8 *addn_status )
{
  struct be_mcc_wrb *wrb ;
  struct lancer_cmd_req_write_object *req ;
  struct lancer_cmd_resp_write_object *resp ;
  void *ctxt ;
  int status ;
  void *tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  void *tmp___5 ;
  {
  ctxt = 0;
  spin_lock_bh(& adapter->mcc_lock);
  adapter->flash_status = 0U;
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err_unlock;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct lancer_cmd_req_write_object *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 172, 144, wrb, 0);
  ctxt = (void *)(& req->context);
  tmp___0 = amap_mask(24U);
  amap_set(ctxt, 0U, tmp___0, 0U, data_size);
  if (data_size == 0U) {
    tmp___1 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___1, 31U, 1U);
  } else {
    tmp___2 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___2, 31U, 0U);
  }
  swap_dws(ctxt, 4);
  req->write_offset = data_offset;
  strcpy((char *)(& req->object_name), obj_name);
  req->descriptor_count = 1U;
  req->buf_len = data_size;
  req->addr_low = (unsigned int )cmd->dma + 144U;
  req->addr_high = (unsigned int )((cmd->dma + 144ULL) >> 32ULL);
  be_mcc_notify(adapter);
  spin_unlock_bh(& adapter->mcc_lock);
  tmp___3 = msecs_to_jiffies(60000U);
  tmp___4 = wait_for_completion_timeout(& adapter->flash_compl, tmp___3);
  if (tmp___4 == 0UL) {
    status = -1;
  } else {
    status = (int )adapter->flash_status;
  }
  tmp___5 = embedded_payload(wrb);
  resp = (struct lancer_cmd_resp_write_object *)tmp___5;
  if (status == 0) {
    *data_written = resp->actual_write_len;
    *change_status = resp->change_status;
  } else {
    *addn_status = resp->additional_status;
  }
  return (status);
  err_unlock:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int lancer_cmd_read_object(struct be_adapter *adapter , struct be_dma_mem *cmd , u32 data_size ,
                           u32 data_offset , char const *obj_name , u32 *data_read ,
                           u32 *eof , u8 *addn_status )
{
  struct be_mcc_wrb *wrb ;
  struct lancer_cmd_req_read_object *req ;
  struct lancer_cmd_resp_read_object *resp ;
  int status ;
  void *tmp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err_unlock;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct lancer_cmd_req_read_object *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 171, 144, wrb, 0);
  req->desired_read_len = data_size;
  req->read_offset = data_offset;
  strcpy((char *)(& req->object_name), obj_name);
  req->descriptor_count = 1U;
  req->buf_len = data_size;
  req->addr_low = (unsigned int )cmd->dma;
  req->addr_high = (unsigned int )(cmd->dma >> 32ULL);
  status = be_mcc_notify_wait(adapter);
  tmp___0 = embedded_payload(wrb);
  resp = (struct lancer_cmd_resp_read_object *)tmp___0;
  if (status == 0) {
    *data_read = resp->actual_read_len;
    *eof = resp->eof;
  } else {
    *addn_status = resp->additional_status;
  }
  err_unlock:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_write_flashrom(struct be_adapter *adapter , struct be_dma_mem *cmd , u32 flash_type ,
                          u32 flash_opcode , u32 buf_size )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_write_flashrom *req ;
  int status ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  adapter->flash_status = 0U;
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err_unlock;
  } else {
  }
  req = (struct be_cmd_write_flashrom *)cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 7, (int )cmd->size, wrb, cmd);
  req->params.op_type = flash_type;
  req->params.op_code = flash_opcode;
  req->params.data_buf_size = buf_size;
  be_mcc_notify(adapter);
  spin_unlock_bh(& adapter->mcc_lock);
  tmp = msecs_to_jiffies(40000U);
  tmp___0 = wait_for_completion_timeout(& adapter->flash_compl, tmp);
  if (tmp___0 == 0UL) {
    status = -1;
  } else {
    status = (int )adapter->flash_status;
  }
  return (status);
  err_unlock:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_flash_crc(struct be_adapter *adapter , u8 *flashed_crc , int offset )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_read_flash_crc *req ;
  int status ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_read_flash_crc *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 6, 40, wrb, 0);
  req->params.op_type = 1U;
  req->params.op_code = 4U;
  req->params.offset = (unsigned int )offset;
  req->params.data_buf_size = 4U;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    __len = 4UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)flashed_crc, (void const *)(& req->crc), __len);
    } else {
      __ret = memcpy((void *)flashed_crc, (void const *)(& req->crc),
                               __len);
    }
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_enable_magic_wol(struct be_adapter *adapter , u8 *mac , struct be_dma_mem *nonemb_cmd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_acpi_wol_magic_config *req ;
  int status ;
  size_t __len ;
  void *__ret ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_acpi_wol_magic_config *)nonemb_cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 12, 604, wrb, nonemb_cmd);
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& req->magic_mac), (void const *)mac, __len);
  } else {
    __ret = memcpy((void *)(& req->magic_mac), (void const *)mac, __len);
  }
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_set_loopback(struct be_adapter *adapter , u8 port_num , u8 loopback_type ,
                        u8 enable )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_lmode *req ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_set_lmode *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 11, 19, 20, wrb, 0);
  req->src_port = port_num;
  req->dest_port = port_num;
  req->loopback_type = loopback_type;
  req->loopback_state = enable;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_loopback_test(struct be_adapter *adapter , u32 port_num , u32 loopback_type ,
                         u32 pkt_size , u32 num_pkts , u64 pattern )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_loopback_test *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_loopback_test *resp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_loopback_test *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 11, 18, 48, wrb, 0);
  req->hdr.timeout = 4U;
  req->pattern = pattern;
  req->src_port = port_num;
  req->dest_port = port_num;
  req->pkt_size = pkt_size;
  req->num_pkts = num_pkts;
  req->loopback_type = loopback_type;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_loopback_test *)tmp___0;
    status = (int )resp->status;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_ddr_dma_test(struct be_adapter *adapter , u64 pattern , u32 byte_cnt ,
                        struct be_dma_mem *cmd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_ddrdma_test *req ;
  int status ;
  int i ;
  int j ;
  struct be_cmd_resp_ddrdma_test *resp ;
  int tmp ;
  {
  j = 0;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_ddrdma_test *)cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 11, 17, (int )cmd->size, wrb, cmd);
  req->pattern = pattern;
  req->byte_count = byte_cnt;
  i = 0;
  goto ldv_52031;
  ldv_52030:
  req->snd_buff[i] = (unsigned char )(pattern >> j * 8);
  j = j + 1;
  if (j > 7) {
    j = 0;
  } else {
  }
  i = i + 1;
  ldv_52031: ;
  if ((u32 )i < byte_cnt) {
    goto ldv_52030;
  } else {
  }
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_ddrdma_test *)cmd->va;
    tmp = memcmp((void const *)(& resp->rcv_buff), (void const *)(& req->snd_buff),
                 (size_t )byte_cnt);
    if (tmp != 0 || resp->snd_err != 0U) {
      status = -1;
    } else {
    }
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_seeprom_data(struct be_adapter *adapter , struct be_dma_mem *nonemb_cmd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_seeprom_read *req ;
  int status ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_seeprom_read *)nonemb_cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 30, 1040, wrb, nonemb_cmd);
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_phy_info(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_phy_info *req ;
  struct be_dma_mem cmd ;
  int status ;
  bool tmp ;
  int tmp___0 ;
  struct be_phy_info *resp_phy_info ;
  {
  tmp = be_cmd_allowed(adapter, 102, 1);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  cmd.size = 40U;
  cmd.va = pci_alloc_consistent(adapter->pdev, (size_t )cmd.size, & cmd.dma);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory alloc failure\n");
    status = -12;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_get_phy_info *)cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 102, 40, wrb, & cmd);
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    resp_phy_info = (struct be_phy_info *)cmd.va + 16U;
    adapter->phy.phy_type = resp_phy_info->phy_type;
    adapter->phy.interface_type = resp_phy_info->interface_type;
    adapter->phy.auto_speeds_supported = resp_phy_info->auto_speeds_supported;
    adapter->phy.fixed_speeds_supported = resp_phy_info->fixed_speeds_supported;
    adapter->phy.misc_params = resp_phy_info->misc_params;
  } else {
  }
  pci_free_consistent(adapter->pdev, (size_t )cmd.size, cmd.va, cmd.dma);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_set_qos(struct be_adapter *adapter , u32 bps , u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_qos *req ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_set_qos *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 28, 52, wrb, 0);
  req->hdr.domain = (u8 )domain;
  req->valid_bits = 1U;
  req->max_bps_nic = bps;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_cntl_attributes(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_cntl_attribs *req ;
  int status ;
  int payload_len ;
  unsigned long _max1 ;
  unsigned long _max2 ;
  struct mgmt_controller_attrib *attribs ;
  struct be_dma_mem attribs_cmd ;
  int tmp ;
  {
  _max1 = 16UL;
  _max2 = 560UL;
  payload_len = (int )(_max1 > _max2 ? _max1 : _max2);
  tmp = ldv_mutex_lock_interruptible_36(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  memset((void *)(& attribs_cmd), 0, 24UL);
  attribs_cmd.size = 560U;
  attribs_cmd.va = pci_alloc_consistent(adapter->pdev, (size_t )attribs_cmd.size,
                                        & attribs_cmd.dma);
  if ((unsigned long )attribs_cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory allocation failure\n");
    status = -12;
    goto err;
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_cntl_attribs *)attribs_cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 32, payload_len, wrb, & attribs_cmd);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    attribs = (struct mgmt_controller_attrib *)attribs_cmd.va + 16U;
    adapter->hba_port_num = attribs->hba_attribs.phy_port;
  } else {
  }
  err:
  ldv_mutex_unlock_37(& adapter->mbox_lock);
  if ((unsigned long )attribs_cmd.va != (unsigned long )((void *)0)) {
    pci_free_consistent(adapter->pdev, (size_t )attribs_cmd.size, attribs_cmd.va,
                        attribs_cmd.dma);
  } else {
  }
  return (status);
}
}
int be_cmd_req_native_mode(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_func_cap *req ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  struct be_cmd_resp_set_func_cap *resp ;
  void *tmp___1 ;
  {
  tmp = ldv_mutex_lock_interruptible_38(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_set_func_cap *)tmp___0;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 103, 236, wrb, 0);
  req->valid_cap_flags = 6U;
  req->cap_flags = 4U;
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___1 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_set_func_cap *)tmp___1;
    adapter->be3_native = (resp->cap_flags & 4U) != 0U;
    if (! adapter->be3_native) {
      dev_warn((struct device const *)(& (adapter->pdev)->dev), "adapter not in advanced mode\n");
    } else {
    }
  } else {
  }
  err:
  ldv_mutex_unlock_39(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_get_fn_privileges(struct be_adapter *adapter , u32 *privilege , u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_fn_privileges *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_get_fn_privileges *resp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_fn_privileges *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 170, 20, wrb, 0);
  req->hdr.domain = (u8 )domain;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_fn_privileges *)tmp___0;
    *privilege = resp->privilege_mask;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_mac_from_list(struct be_adapter *adapter , u8 *mac , bool *pmac_id_active ,
                             u32 *pmac_id , u8 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_mac_list *req ;
  int status ;
  int mac_count ;
  struct be_dma_mem get_mac_list_cmd ;
  int i ;
  struct be_cmd_resp_get_mac_list *resp ;
  struct get_list_macaddr *mac_entry ;
  u16 mac_addr_size ;
  u32 mac_id ;
  size_t __len ;
  void *__ret ;
  {
  memset((void *)(& get_mac_list_cmd), 0, 24UL);
  get_mac_list_cmd.size = 548U;
  get_mac_list_cmd.va = pci_alloc_consistent(adapter->pdev, (size_t )get_mac_list_cmd.size,
                                             & get_mac_list_cmd.dma);
  if ((unsigned long )get_mac_list_cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory allocation failure during GET_MAC_LIST\n");
    return (-12);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto out;
  } else {
  }
  req = (struct be_cmd_req_get_mac_list *)get_mac_list_cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 147, (int )get_mac_list_cmd.size, wrb, & get_mac_list_cmd);
  req->hdr.domain = domain;
  req->mac_type = 1U;
  req->perm_override = 1U;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_get_mac_list *)get_mac_list_cmd.va;
    mac_count = (int )resp->true_mac_count + (int )resp->pseudo_mac_count;
    i = 0;
    goto ldv_52111;
    ldv_52110:
    mac_entry = (struct get_list_macaddr *)(& resp->macaddr_list) + (unsigned long )i;
    mac_addr_size = mac_entry->mac_addr_size;
    if ((unsigned int )mac_addr_size == 4U) {
      *pmac_id_active = 1;
      mac_id = mac_entry->mac_addr_id.s_mac_id.mac_id;
      *pmac_id = mac_id;
      goto out;
    } else {
    }
    i = i + 1;
    ldv_52111: ;
    if (i < mac_count) {
      goto ldv_52110;
    } else {
    }
    *pmac_id_active = 0;
    __len = 6UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)mac, (void const *)(& resp->macaddr_list[0].mac_addr_id.macaddr),
                       __len);
    } else {
      __ret = memcpy((void *)mac, (void const *)(& resp->macaddr_list[0].mac_addr_id.macaddr),
                               __len);
    }
  } else {
  }
  out:
  spin_unlock_bh(& adapter->mcc_lock);
  pci_free_consistent(adapter->pdev, (size_t )get_mac_list_cmd.size, get_mac_list_cmd.va,
                      get_mac_list_cmd.dma);
  return (status);
}
}
int be_cmd_set_mac_list(struct be_adapter *adapter , u8 *mac_array , u8 mac_count ,
                        u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_mac_list *req ;
  int status ;
  struct be_dma_mem cmd ;
  size_t __len ;
  void *__ret ;
  {
  memset((void *)(& cmd), 0, 24UL);
  cmd.size = 404U;
  cmd.va = dma_alloc_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, & cmd.dma, 208U,
                           0);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_set_mac_list *)cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 148, 404, wrb, & cmd);
  req->hdr.domain = (u8 )domain;
  req->mac_count = mac_count;
  if ((unsigned int )mac_count != 0U) {
    __len = (size_t )((int )mac_count * 6);
    __ret = memcpy((void *)(& req->mac), (void const *)mac_array, __len);
  } else {
  }
  status = be_mcc_notify_wait(adapter);
  err:
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, cmd.va, cmd.dma, 0);
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_set_hsw_config(struct be_adapter *adapter , u16 pvid , u32 domain , u16 intf_id )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_hsw_config *req ;
  void *ctxt ;
  int status ;
  void *tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_set_hsw_config *)tmp;
  ctxt = (void *)(& req->context);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 153, 36, wrb, 0);
  req->hdr.domain = (u8 )domain;
  tmp___0 = amap_mask(16U);
  amap_set(ctxt, 0U, tmp___0, 0U, (u32 )intf_id);
  if ((unsigned int )pvid != 0U) {
    tmp___1 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___1, 30U, 1U);
    tmp___2 = amap_mask(16U);
    amap_set(ctxt, 1U, tmp___2, 16U, (u32 )pvid);
  } else {
  }
  swap_dws((void *)(& req->context), 20);
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_hsw_config(struct be_adapter *adapter , u16 *pvid , u32 domain , u16 intf_id )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_hsw_config *req ;
  void *ctxt ;
  int status ;
  u16 vid ;
  void *tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  struct be_cmd_resp_get_hsw_config *resp ;
  void *tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_hsw_config *)tmp;
  ctxt = (void *)(& req->context);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 152, 20, wrb, 0);
  req->hdr.domain = (u8 )domain;
  tmp___0 = amap_mask(16U);
  amap_set(ctxt, 0U, tmp___0, 0U, (u32 )intf_id);
  tmp___1 = amap_mask(1U);
  amap_set(ctxt, 0U, tmp___1, 30U, 1U);
  swap_dws((void *)(& req->context), 4);
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___2 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_hsw_config *)tmp___2;
    swap_dws((void *)(& resp->context), 16);
    tmp___3 = amap_mask(16U);
    tmp___4 = amap_get((void *)(& resp->context), 0U, tmp___3, 16U);
    vid = (u16 )tmp___4;
    *pvid = vid;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_acpi_wol_cap(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_acpi_wol_magic_config_v1 *req ;
  int status ;
  int payload_len ;
  struct be_dma_mem cmd ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct be_cmd_resp_acpi_wol_magic_config_v1 *resp ;
  {
  payload_len = 1204;
  tmp = be_cmd_allowed(adapter, 12, 3);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  tmp___1 = ldv_mutex_lock_interruptible_40(& adapter->mbox_lock);
  if (tmp___1 != 0) {
    return (-1);
  } else {
  }
  memset((void *)(& cmd), 0, 24UL);
  cmd.size = 1204U;
  cmd.va = pci_alloc_consistent(adapter->pdev, (size_t )cmd.size, & cmd.dma);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory allocation failure\n");
    status = -12;
    goto err;
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_acpi_wol_magic_config_v1 *)cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 12, payload_len, wrb, & cmd);
  req->hdr.version = 1U;
  req->query_options = 2U;
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_acpi_wol_magic_config_v1 *)cmd.va;
    if (resp->hdr.response_length < (u32 )payload_len) {
      status = -1;
      goto err;
    } else {
    }
    adapter->wol_cap = resp->wol_settings;
  } else {
  }
  err:
  ldv_mutex_unlock_41(& adapter->mbox_lock);
  if ((unsigned long )cmd.va != (unsigned long )((void *)0)) {
    pci_free_consistent(adapter->pdev, (size_t )cmd.size, cmd.va, cmd.dma);
  } else {
  }
  return (status);
}
}
int be_cmd_get_ext_fat_capabilites(struct be_adapter *adapter , struct be_dma_mem *cmd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_ext_fat_caps *req ;
  int status ;
  int tmp ;
  {
  tmp = ldv_mutex_lock_interruptible_42(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_get_ext_fat_caps *)cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 125, (int )cmd->size, wrb, cmd);
  req->parameter_type = 1U;
  status = be_mbox_notify_wait(adapter);
  err:
  ldv_mutex_unlock_43(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_set_ext_fat_capabilites(struct be_adapter *adapter , struct be_dma_mem *cmd ,
                                   struct be_fat_conf_params *configs )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_ext_fat_caps *req ;
  int status ;
  size_t __len ;
  void *__ret ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_set_ext_fat_caps *)cmd->va;
  __len = 2828UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& req->set_params), (void const *)configs, __len);
  } else {
    __ret = memcpy((void *)(& req->set_params), (void const *)configs,
                             __len);
  }
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 126, (int )cmd->size, wrb, cmd);
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_query_port_name(struct be_adapter *adapter , u8 *port_name )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_port_name *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_get_port_name *resp ;
  void *tmp___0 ;
  {
  if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
    *port_name = (unsigned int )adapter->hba_port_num + 48U;
    return (0);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_port_name *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 77, 20, wrb, 0);
  req->hdr.version = 1U;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_port_name *)tmp___0;
    *port_name = resp->port_name[(int )adapter->hba_port_num];
  } else {
    *port_name = (unsigned int )adapter->hba_port_num + 48U;
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
static struct be_nic_resource_desc *be_get_nic_desc(u8 *buf , u32 desc_count , u32 max_buf_size )
{
  struct be_nic_resource_desc *desc ;
  int i ;
  {
  desc = (struct be_nic_resource_desc *)buf;
  i = 0;
  goto ldv_52202;
  ldv_52201:
  desc->desc_len = (int )desc->desc_len != 0 ? (u8 )((int )desc->desc_len) : 88U;
  if ((unsigned long )((void *)desc + (unsigned long )desc->desc_len) > (unsigned long )((void *)buf + (unsigned long )max_buf_size)) {
    desc = 0;
    goto ldv_52200;
  } else {
  }
  if ((unsigned int )desc->desc_type == 65U || (unsigned int )desc->desc_type == 81U) {
    goto ldv_52200;
  } else {
  }
  desc = desc + (unsigned long )desc->desc_len;
  i = i + 1;
  ldv_52202: ;
  if ((u32 )i < desc_count) {
    goto ldv_52201;
  } else {
  }
  ldv_52200: ;
  if ((unsigned long )desc == (unsigned long )((struct be_nic_resource_desc *)0) || i == 4) {
    return (0);
  } else {
  }
  return (desc);
}
}
int be_cmd_get_func_config(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_func_config *req ;
  int status ;
  struct be_dma_mem cmd ;
  int tmp ;
  struct be_cmd_resp_get_func_config *resp ;
  u32 desc_count ;
  struct be_nic_resource_desc *desc ;
  {
  tmp = ldv_mutex_lock_interruptible_44(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  memset((void *)(& cmd), 0, 24UL);
  cmd.size = 372U;
  cmd.va = pci_alloc_consistent(adapter->pdev, (size_t )cmd.size, & cmd.dma);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory alloc failure\n");
    status = -12;
    goto err;
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_get_func_config *)cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 160, (int )cmd.size, wrb, & cmd);
  if ((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) {
    req->hdr.version = 1U;
  } else {
  }
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_get_func_config *)cmd.va;
    desc_count = resp->desc_count;
    desc = be_get_nic_desc((u8 *)(& resp->func_param), desc_count, 352U);
    if ((unsigned long )desc == (unsigned long )((struct be_nic_resource_desc *)0)) {
      status = -22;
      goto err;
    } else {
    }
    adapter->pf_number = desc->pf_num;
    adapter->max_pmac_cnt = desc->unicast_mac_count;
    adapter->max_vlans = desc->vlan_count;
    adapter->max_mcast_mac = desc->mcast_mac_count;
    adapter->max_tx_queues = desc->txq_count;
    adapter->max_rss_queues = desc->rssq_count;
    adapter->max_rx_queues = desc->rq_count;
    adapter->max_event_queues = desc->eq_count;
    adapter->if_cap_flags = desc->cap_flags;
  } else {
  }
  err:
  ldv_mutex_unlock_45(& adapter->mbox_lock);
  if ((unsigned long )cmd.va != (unsigned long )((void *)0)) {
    pci_free_consistent(adapter->pdev, (size_t )cmd.size, cmd.va, cmd.dma);
  } else {
  }
  return (status);
}
}
int be_cmd_get_profile_config_mbox(struct be_adapter *adapter , u8 domain , struct be_dma_mem *cmd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_profile_config *req ;
  int status ;
  int tmp ;
  {
  tmp = ldv_mutex_lock_interruptible_46(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  req = (struct be_cmd_req_get_profile_config *)cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 164, (int )cmd->size, wrb, cmd);
  req->type = 2U;
  req->hdr.domain = domain;
  if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
    req->hdr.version = 1U;
  } else {
  }
  status = be_mbox_notify_wait(adapter);
  ldv_mutex_unlock_47(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_get_profile_config_mccq(struct be_adapter *adapter , u8 domain , struct be_dma_mem *cmd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_profile_config *req ;
  int status ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_get_profile_config *)cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 164, (int )cmd->size, wrb, cmd);
  req->type = 2U;
  req->hdr.domain = domain;
  if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
    req->hdr.version = 1U;
  } else {
  }
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_profile_config(struct be_adapter *adapter , u32 *cap_flags , u16 *txq_count ,
                              u8 domain )
{
  struct be_queue_info *mccq ;
  struct be_dma_mem cmd ;
  int status ;
  struct be_cmd_resp_get_profile_config *resp ;
  u32 desc_count ;
  struct be_nic_resource_desc *desc ;
  {
  mccq = & adapter->mcc_obj.q;
  memset((void *)(& cmd), 0, 24UL);
  if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
    cmd.size = 2836U;
  } else {
    cmd.size = 372U;
  }
  cmd.va = pci_alloc_consistent(adapter->pdev, (size_t )cmd.size, & cmd.dma);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory alloc failure\n");
    return (-12);
  } else {
  }
  if (! mccq->created) {
    status = be_cmd_get_profile_config_mbox(adapter, (int )domain, & cmd);
  } else {
    status = be_cmd_get_profile_config_mccq(adapter, (int )domain, & cmd);
  }
  if (status == 0) {
    resp = (struct be_cmd_resp_get_profile_config *)cmd.va;
    desc_count = resp->desc_count;
    desc = be_get_nic_desc((u8 *)(& resp->func_param), desc_count, 352U);
    if ((unsigned long )desc == (unsigned long )((struct be_nic_resource_desc *)0)) {
      status = -22;
      goto err;
    } else {
    }
    if ((unsigned long )cap_flags != (unsigned long )((u32 *)0)) {
      *cap_flags = desc->cap_flags;
    } else {
    }
    if ((unsigned long )txq_count != (unsigned long )((u16 *)0)) {
      *txq_count = desc->txq_count;
    } else {
    }
  } else {
  }
  err: ;
  if ((unsigned long )cmd.va != (unsigned long )((void *)0)) {
    pci_free_consistent(adapter->pdev, (size_t )cmd.size, cmd.va, cmd.dma);
  } else {
  }
  return (status);
}
}
int be_cmd_set_profile_config(struct be_adapter *adapter , u32 bps , u8 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_profile_config *req ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_set_profile_config *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 165, 96, wrb, 0);
  req->hdr.domain = domain;
  req->desc_count = 1U;
  req->nic_desc.desc_type = 65U;
  req->nic_desc.desc_len = 88U;
  req->nic_desc.flags = 208U;
  req->nic_desc.pf_num = adapter->pf_number;
  req->nic_desc.vf_num = domain;
  req->nic_desc.unicast_mac_count = 65535U;
  req->nic_desc.mcc_count = 65535U;
  req->nic_desc.vlan_count = 65535U;
  req->nic_desc.mcast_mac_count = 65535U;
  req->nic_desc.txq_count = 65535U;
  req->nic_desc.rq_count = 65535U;
  req->nic_desc.rssq_count = 65535U;
  req->nic_desc.lro_count = 65535U;
  req->nic_desc.cq_count = 65535U;
  req->nic_desc.toe_conn_count = 65535U;
  req->nic_desc.eq_count = 65535U;
  req->nic_desc.link_param = 255U;
  req->nic_desc.bw_min = 4294967295U;
  req->nic_desc.acpi_params = 255U;
  req->nic_desc.wol_param = 15U;
  req->nic_desc.bw_min = bps;
  req->nic_desc.bw_max = bps;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_if_id(struct be_adapter *adapter , struct be_vf_cfg *vf_cfg , int vf_num )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_iface_list *req ;
  struct be_cmd_resp_get_iface_list *resp ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_iface_list *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 194, 32, wrb, 0);
  req->hdr.domain = (unsigned int )((u8 )vf_num) + 1U;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_get_iface_list *)req;
    vf_cfg->if_handle = (int )resp->if_desc.if_id;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_enable_vf(struct be_adapter *adapter , u8 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_enable_disable_vf *req ;
  int status ;
  void *tmp ;
  {
  if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
    return (0);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_enable_disable_vf *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 196, 20, wrb, 0);
  req->hdr.domain = domain;
  req->enable = 1U;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_intr_set(struct be_adapter *adapter , bool intr_enable )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_intr_set *req ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_mutex_lock_interruptible_48(& adapter->mbox_lock);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_intr_set *)tmp___0;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 89, 20, wrb, 0);
  req->intr_enabled = (u8 )intr_enable;
  status = be_mbox_notify_wait(adapter);
  ldv_mutex_unlock_49(& adapter->mbox_lock);
  return (status);
}
}
int be_roce_mcc_cmd(void *netdev_handle , void *wrb_payload , int wrb_payload_size ,
                    u16 *cmd_status , u16 *ext_status )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_hdr *hdr ;
  struct be_cmd_req_hdr *req ;
  struct be_cmd_resp_hdr *resp ;
  int status ;
  void *tmp___0 ;
  void *tmp___1 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev_handle);
  adapter = (struct be_adapter *)tmp;
  hdr = (struct be_cmd_req_hdr *)wrb_payload;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_hdr *)tmp___0;
  tmp___1 = embedded_payload(wrb);
  resp = (struct be_cmd_resp_hdr *)tmp___1;
  be_wrb_cmd_hdr_prepare(req, (int )hdr->subsystem, (int )hdr->opcode, wrb_payload_size,
                         wrb, 0);
  __len = (size_t )wrb_payload_size;
  __ret = memcpy((void *)req, (void const *)wrb_payload, __len);
  swap_dws((void *)req, wrb_payload_size);
  status = be_mcc_notify_wait(adapter);
  if ((unsigned long )cmd_status != (unsigned long )((u16 *)0)) {
    *cmd_status = (u16 )status;
  } else {
  }
  if ((unsigned long )ext_status != (unsigned long )((u16 *)0)) {
    *ext_status = 0U;
  } else {
  }
  __len___0 = (unsigned long )resp->response_length + 16UL;
  __ret___0 = memcpy(wrb_payload, (void const *)resp, __len___0);
  swap_dws(wrb_payload, (int )(resp->response_length + 16U));
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_14(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_16(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_18(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_20(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_22(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_24(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___12 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_26(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___14 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_28(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___16 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_30(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___18 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_32(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___20 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_34(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___22 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_36(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___24 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_38(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___26 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_40(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___28 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_42(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___30 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_44(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___32 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_46(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___34 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_48(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___36 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mbox_lock_of_be_adapter(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
int ldv_mutex_trylock_92(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_90(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_93(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_89(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_91(struct mutex *ldv_func_arg1 ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
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
  tmp = kobject_name(& dev->kobj);
  return (tmp);
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
__inline static __u32 ethtool_cmd_speed(struct ethtool_cmd const *ep )
{
  {
  return ((__u32 )(((int )ep->speed_hi << 16) | (int )ep->speed));
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(2U, (unsigned long const volatile *)(& dev->state));
  return (tmp == 0);
}
}
__inline static bool check_privilege(struct be_adapter *adapter , u32 flags )
{
  {
  return ((adapter->cmd_privileges & flags) != 0U);
}
}
static struct be_ethtool_stat const et_stats[32U] =
  { {{'r', 'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 2,
      4, 36},
        {{'r', 'x', '_', 'a', 'l', 'i', 'g', 'n', 'm', 'e', 'n', 't', '_', 's', 'y',
       'm', 'b', 'o', 'l', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 2, 4, 40},
        {{'r', 'x', '_', 'p', 'a', 'u', 's', 'e', '_', 'f', 'r', 'a', 'm', 'e', 's',
       '\000'}, 2, 4, 44},
        {{'r', 'x', '_', 'c', 'o', 'n', 't', 'r', 'o', 'l', '_', 'f', 'r', 'a', 'm',
       'e', 's', '\000'}, 2, 4, 52},
        {{'r', 'x', '_', 'i', 'n', '_', 'r', 'a', 'n', 'g', 'e', '_', 'e', 'r', 'r',
       'o', 'r', 's', '\000'}, 2, 4, 56},
        {{'r', 'x', '_', 'o', 'u', 't', '_', 'r', 'a', 'n', 'g', 'e', '_', 'e', 'r',
       'r', 'o', 'r', 's', '\000'}, 2, 4, 60},
        {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', '_', 't', 'o', 'o', '_', 'l', 'o',
       'n', 'g', '\000'}, 2, 4, 64},
        {{'r', 'x', '_', 'a', 'd', 'd', 'r', 'e', 's', 's', '_', 'f', 'i', 'l', 't',
       'e', 'r', 'e', 'd', '\000'}, 2, 4, 68},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '_', 't', 'o', 'o', '_',
       's', 'm', 'a', 'l', 'l', '\000'}, 2, 4, 72},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '_', 't', 'o', 'o', '_',
       's', 'h', 'o', 'r', 't', '\000'}, 2, 4, 76},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '_', 'h', 'e', 'a', 'd',
       'e', 'r', '_', 't', 'o', 'o', '_', 's', 'm', 'a', 'l', 'l', '\000'}, 2, 4,
      80},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '_', 't', 'c', 'p', '_',
       'l', 'e', 'n', 'g', 't', 'h', '\000'}, 2, 4, 84},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '_', 'r', 'u', 'n', 't',
       '\000'}, 2, 4, 88},
        {{'r', 'x', 'p', 'p', '_', 'f', 'i', 'f', 'o', '_', 'o', 'v', 'e', 'r', 'f',
       'l', 'o', 'w', '_', 'd', 'r', 'o', 'p', '\000'}, 2, 4, 116},
        {{'r', 'x', '_', 'i', 'n', 'p', 'u', 't', '_', 'f', 'i', 'f', 'o', '_', 'o',
       'v', 'e', 'r', 'f', 'l', 'o', 'w', '_', 'd', 'r', 'o', 'p', '\000'}, 2, 4,
      120},
        {{'r', 'x', '_', 'i', 'p', '_', 'c', 'h', 'e', 'c', 'k', 's', 'u', 'm', '_',
       'e', 'r', 'r', 's', '\000'}, 2, 4, 92},
        {{'r', 'x', '_', 't', 'c', 'p', '_', 'c', 'h', 'e', 'c', 'k', 's', 'u', 'm',
       '_', 'e', 'r', 'r', 's', '\000'}, 2, 4, 96},
        {{'r', 'x', '_', 'u', 'd', 'p', '_', 'c', 'h', 'e', 'c', 'k', 's', 'u', 'm',
       '_', 'e', 'r', 'r', 's', '\000'}, 2, 4, 100},
        {{'t', 'x', '_', 'p', 'a', 'u', 's', 'e', 'f', 'r', 'a', 'm', 'e', 's', '\000'},
      2, 4, 104},
        {{'t', 'x', '_', 'c', 'o', 'n', 't', 'r', 'o', 'l', 'f', 'r', 'a', 'm', 'e',
       's', '\000'}, 2, 4, 112},
        {{'r', 'x', '_', 'p', 'r', 'i', 'o', 'r', 'i', 't', 'y', '_', 'p', 'a', 'u',
       's', 'e', '_', 'f', 'r', 'a', 'm', 'e', 's', '\000'}, 2, 4, 48},
        {{'t', 'x', '_', 'p', 'r', 'i', 'o', 'r', 'i', 't', 'y', '_', 'p', 'a', 'u',
       's', 'e', 'f', 'r', 'a', 'm', 'e', 's', '\000'}, 2, 4, 108},
        {{'p', 'm', 'e', 'm', '_', 'f', 'i', 'f', 'o', '_', 'o', 'v', 'e', 'r', 'f',
       'l', 'o', 'w', '_', 'd', 'r', 'o', 'p', '\000'}, 2, 4, 124},
        {{'j', 'a', 'b', 'b', 'e', 'r', '_', 'e', 'v', 'e', 'n', 't', 's', '\000'}, 2,
      4, 128},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 'n', 'o', '_', 'p', 'b', 'u',
       'f', '\000'}, 2, 4, 8},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 'n', 'o', '_', 'e', 'r', 'x',
       '_', 'd', 'e', 's', 'c', 'r', '\000'}, 2, 4, 16},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 'n', 'o', '_', 't', 'p', 'r',
       'e', '_', 'd', 'e', 's', 'c', 'r', '\000'}, 2, 4, 20},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 't', 'o', 'o', '_', 'm', 'a',
       'n', 'y', '_', 'f', 'r', 'a', 'g', 's', '\000'}, 2, 4, 24},
        {{'f', 'o', 'r', 'w', 'a', 'r', 'd', 'e', 'd', '_', 'p', 'a', 'c', 'k', 'e',
       't', 's', '\000'}, 2, 4, 28},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 'm', 't', 'u', '\000'}, 2, 4,
      32},
        {{'e', 't', 'h', '_', 'r', 'e', 'd', '_', 'd', 'r', 'o', 'p', 's', '\000'}, 2,
      4, 4},
        {{'b', 'e', '_', 'o', 'n', '_', 'd', 'i', 'e', '_', 't', 'e', 'm', 'p', 'e',
       'r', 'a', 't', 'u', 'r', 'e', '\000'}, 2, 4, 0}};
static struct be_ethtool_stat const et_rx_stats[7U] = { {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 1, 8, 0},
        {{'r', 'x', '_', 'p', 'k', 't', 's', '\000'}, 1, 8, 8},
        {{'r', 'x', '_', 'c', 'o', 'm', 'p', 'l', '\000'}, 1, 4, 44},
        {{'r', 'x', '_', 'm', 'c', 'a', 's', 't', '_', 'p', 'k', 't', 's', '\000'}, 1,
      4, 48},
        {{'r', 'x', '_', 'p', 'o', 's', 't', '_', 'f', 'a', 'i', 'l', '\000'}, 1, 4,
      40},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 'n', 'o', '_', 's', 'k', 'b',
       's', '\000'}, 1, 4, 32},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 'n', 'o', '_', 'f', 'r', 'a',
       'g', 's', '\000'}, 1, 4, 36}};
static struct be_ethtool_stat const et_tx_stats[6U] = { {{'t', 'x', '_', 'c', 'o', 'm', 'p', 'l', '\000'}, 0, 8, 32},
        {{'t', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 0, 8, 0},
        {{'t', 'x', '_', 'p', 'k', 't', 's', '\000'}, 0, 8, 8},
        {{'t', 'x', '_', 'r', 'e', 'q', 's', '\000'}, 0, 8, 16},
        {{'t', 'x', '_', 'w', 'r', 'b', 's', '\000'}, 0, 8, 24},
        {{'t', 'x', '_', 's', 't', 'o', 'p', 's', '\000'}, 0, 4, 48}};
static char const et_self_tests[5U][32U] = { { 'M', 'A', 'C', ' ',
            'L', 'o', 'o', 'p',
            'b', 'a', 'c', 'k',
            ' ', 't', 'e', 's',
            't', '\000'},
   { 'P', 'H', 'Y', ' ',
            'L', 'o', 'o', 'p',
            'b', 'a', 'c', 'k',
            ' ', 't', 'e', 's',
            't', '\000'},
   { 'E', 'x', 't', 'e',
            'r', 'n', 'a', 'l',
            ' ', 'L', 'o', 'o',
            'p', 'b', 'a', 'c',
            'k', ' ', 't', 'e',
            's', 't', '\000'},
   { 'D', 'D', 'R', ' ',
            'D', 'M', 'A', ' ',
            't', 'e', 's', 't',
            '\000'},
   { 'L', 'i', 'n', 'k',
            ' ', 't', 'e', 's',
            't', '\000'}};
static void be_get_drvinfo(struct net_device *netdev , struct ethtool_drvinfo *drvinfo )
{
  struct be_adapter *adapter ;
  void *tmp ;
  char fw_on_flash[32U] ;
  int tmp___0 ;
  char const *tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  memset((void *)(& fw_on_flash), 0, 32UL);
  be_cmd_get_fw_ver(adapter, (char *)(& adapter->fw_ver), (char *)(& fw_on_flash));
  strlcpy((char *)(& drvinfo->driver), "be2net", 32UL);
  strlcpy((char *)(& drvinfo->version), "4.6.62.0u", 32UL);
  tmp___0 = memcmp((void const *)(& adapter->fw_ver), (void const *)(& fw_on_flash),
                   32UL);
  if (tmp___0 == 0) {
    strlcpy((char *)(& drvinfo->fw_version), (char const *)(& adapter->fw_ver),
            32UL);
  } else {
    snprintf((char *)(& drvinfo->fw_version), 32UL, "%s [%s]", (char *)(& adapter->fw_ver),
             (char *)(& fw_on_flash));
  }
  tmp___1 = pci_name((struct pci_dev const *)adapter->pdev);
  strlcpy((char *)(& drvinfo->bus_info), tmp___1, 32UL);
  drvinfo->testinfo_len = 0U;
  drvinfo->regdump_len = 0U;
  drvinfo->eedump_len = 0U;
  return;
}
}
static u32 lancer_cmd_get_file_len(struct be_adapter *adapter , u8 *file_name )
{
  u32 data_read ;
  u32 eof ;
  u8 addn_status ;
  struct be_dma_mem data_len_cmd ;
  int status ;
  {
  data_read = 0U;
  memset((void *)(& data_len_cmd), 0, 24UL);
  status = lancer_cmd_read_object(adapter, & data_len_cmd, 0U, 0U, (char const *)file_name,
                                  & data_read, & eof, & addn_status);
  return (data_read);
}
}
static int lancer_cmd_read_file(struct be_adapter *adapter , u8 *file_name , u32 buf_len ,
                                void *buf )
{
  struct be_dma_mem read_cmd ;
  u32 read_len ;
  u32 total_read_len ;
  u32 chunk_size ;
  u32 eof ;
  u8 addn_status ;
  int status ;
  u32 __min1 ;
  u32 __min2 ;
  size_t __len ;
  void *__ret ;
  {
  read_len = 0U;
  total_read_len = 0U;
  eof = 0U;
  status = 0;
  read_cmd.size = 32768U;
  read_cmd.va = pci_alloc_consistent(adapter->pdev, (size_t )read_cmd.size, & read_cmd.dma);
  if ((unsigned long )read_cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory allocation failure while reading dump\n");
    return (-12);
  } else {
  }
  goto ldv_50428;
  ldv_50427:
  __min1 = buf_len - total_read_len;
  __min2 = 32768U;
  chunk_size = __min1 < __min2 ? __min1 : __min2;
  chunk_size = (chunk_size + 3U) & 4294967292U;
  status = lancer_cmd_read_object(adapter, & read_cmd, chunk_size, total_read_len,
                                  (char const *)file_name, & read_len, & eof, & addn_status);
  if (status == 0) {
    __len = (size_t )read_len;
    __ret = memcpy(buf + (unsigned long )total_read_len, (void const *)read_cmd.va,
                             __len);
    total_read_len = total_read_len + read_len;
    eof = eof & 2147483648U;
  } else {
    status = -5;
    goto ldv_50426;
  }
  ldv_50428: ;
  if (total_read_len < buf_len && eof == 0U) {
    goto ldv_50427;
  } else {
  }
  ldv_50426:
  pci_free_consistent(adapter->pdev, (size_t )read_cmd.size, read_cmd.va, read_cmd.dma);
  return (status);
}
}
static int be_get_reg_len(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  u32 log_size ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  log_size = 0U;
  tmp___0 = check_privilege(adapter, 1792U);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  if ((unsigned int )adapter->virtfn == 0U) {
    if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
      log_size = lancer_cmd_get_file_len(adapter, (u8 *)"/dbg/dump.bin");
    } else {
      be_cmd_get_reg_len(adapter, & log_size);
    }
  } else {
  }
  return ((int )log_size);
}
}
static void be_get_regs(struct net_device *netdev , struct ethtool_regs *regs , void *buf )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if ((unsigned int )adapter->virtfn == 0U) {
    memset(buf, 0, (size_t )regs->len);
    if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
      lancer_cmd_read_file(adapter, (u8 *)"/dbg/dump.bin", regs->len, buf);
    } else {
      be_cmd_get_regs(adapter, regs->len, buf);
    }
  } else {
  }
  return;
}
}
static int be_get_coalesce(struct net_device *netdev , struct ethtool_coalesce *et )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_eq_obj *eqo ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj);
  et->rx_coalesce_usecs = eqo->cur_eqd;
  et->rx_coalesce_usecs_high = eqo->max_eqd;
  et->rx_coalesce_usecs_low = eqo->min_eqd;
  et->tx_coalesce_usecs = eqo->cur_eqd;
  et->tx_coalesce_usecs_high = eqo->max_eqd;
  et->tx_coalesce_usecs_low = eqo->min_eqd;
  et->use_adaptive_rx_coalesce = (__u32 )eqo->enable_aic;
  et->use_adaptive_tx_coalesce = (__u32 )eqo->enable_aic;
  return (0);
}
}
static int be_set_coalesce(struct net_device *netdev , struct ethtool_coalesce *et )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_eq_obj *eqo ;
  int i ;
  __u32 _min1 ;
  unsigned int _min2 ;
  __u32 _min1___0 ;
  u32 _min2___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_50460;
  ldv_50459:
  eqo->enable_aic = et->use_adaptive_rx_coalesce != 0U;
  _min1 = et->rx_coalesce_usecs_high;
  _min2 = 96U;
  eqo->max_eqd = _min1 < _min2 ? _min1 : _min2;
  _min1___0 = et->rx_coalesce_usecs_low;
  _min2___0 = eqo->max_eqd;
  eqo->min_eqd = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  eqo->eqd = et->rx_coalesce_usecs;
  i = i + 1;
  eqo = eqo + 1;
  ldv_50460: ;
  if ((u32 )i < adapter->num_evt_qs) {
    goto ldv_50459;
  } else {
  }
  return (0);
}
}
static void be_get_ethtool_stats(struct net_device *netdev , struct ethtool_stats *stats ,
                                 uint64_t *data )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_rx_obj *rxo ;
  struct be_tx_obj *txo ;
  void *p ;
  unsigned int i ;
  unsigned int j ;
  unsigned int base ;
  unsigned int start ;
  struct be_rx_stats *stats___0 ;
  bool tmp___0 ;
  struct be_tx_stats *stats___1 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  base = 0U;
  i = 0U;
  goto ldv_50478;
  ldv_50477:
  p = (void *)(& adapter->drv_stats) + (unsigned long )et_stats[i].offset;
  *(data + (unsigned long )i) = (uint64_t )*((u32 *)p);
  i = i + 1U;
  ldv_50478: ;
  if (i <= 31U) {
    goto ldv_50477;
  } else {
  }
  base = base + 32U;
  j = 0U;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )j;
  goto ldv_50493;
  ldv_50492:
  stats___0 = & rxo->stats;
  ldv_50483:
  start = u64_stats_fetch_begin_bh((struct u64_stats_sync const *)(& stats___0->sync));
  *(data + (unsigned long )base) = stats___0->rx_bytes;
  *(data + (unsigned long )(base + 1U)) = stats___0->rx_pkts;
  tmp___0 = u64_stats_fetch_retry_bh((struct u64_stats_sync const *)(& stats___0->sync),
                                     start);
  if ((int )tmp___0) {
    goto ldv_50483;
  } else {
  }
  i = 2U;
  goto ldv_50488;
  ldv_50487:
  p = (void *)stats___0 + (unsigned long )et_rx_stats[i].offset;
  *(data + (unsigned long )(base + i)) = (uint64_t )*((u32 *)p);
  i = i + 1U;
  ldv_50488: ;
  if (i <= 6U) {
    goto ldv_50487;
  } else {
  }
  base = base + 7U;
  j = j + 1U;
  rxo = rxo + 1;
  ldv_50493: ;
  if (adapter->num_rx_qs > j) {
    goto ldv_50492;
  } else {
  }
  j = 0U;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )j;
  goto ldv_50508;
  ldv_50507:
  stats___1 = & txo->stats;
  ldv_50496:
  start = u64_stats_fetch_begin_bh((struct u64_stats_sync const *)(& stats___1->sync_compl));
  *(data + (unsigned long )base) = stats___1->tx_compl;
  tmp___1 = u64_stats_fetch_retry_bh((struct u64_stats_sync const *)(& stats___1->sync_compl),
                                     start);
  if ((int )tmp___1) {
    goto ldv_50496;
  } else {
  }
  ldv_50503:
  start = u64_stats_fetch_begin_bh((struct u64_stats_sync const *)(& stats___1->sync));
  i = 1U;
  goto ldv_50501;
  ldv_50500:
  p = (void *)stats___1 + (unsigned long )et_tx_stats[i].offset;
  *(data + (unsigned long )(base + i)) = et_tx_stats[i].size == 8 ? *((u64 *)p) : (u64 )*((u32 *)p);
  i = i + 1U;
  ldv_50501: ;
  if (i <= 5U) {
    goto ldv_50500;
  } else {
  }
  tmp___2 = u64_stats_fetch_retry_bh((struct u64_stats_sync const *)(& stats___1->sync),
                                     start);
  if ((int )tmp___2) {
    goto ldv_50503;
  } else {
  }
  base = base + 6U;
  j = j + 1U;
  txo = txo + 1;
  ldv_50508: ;
  if (adapter->num_tx_qs > j) {
    goto ldv_50507;
  } else {
  }
  return;
}
}
static void be_get_stat_strings(struct net_device *netdev , uint32_t stringset , uint8_t *data )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int i ;
  int j ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  switch (stringset) {
  case 1U:
  i = 0;
  goto ldv_50525;
  ldv_50524:
  __len = 32UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)data, (void const *)(& et_stats[i].desc), __len);
  } else {
    __ret = memcpy((void *)data, (void const *)(& et_stats[i].desc), __len);
  }
  data = data + 32UL;
  i = i + 1;
  ldv_50525: ;
  if ((unsigned int )i <= 31U) {
    goto ldv_50524;
  } else {
  }
  i = 0;
  goto ldv_50533;
  ldv_50532:
  j = 0;
  goto ldv_50530;
  ldv_50529:
  sprintf((char *)data, "rxq%d: %s", i, (char const *)(& et_rx_stats[j].desc));
  data = data + 32UL;
  j = j + 1;
  ldv_50530: ;
  if ((unsigned int )j <= 6U) {
    goto ldv_50529;
  } else {
  }
  i = i + 1;
  ldv_50533: ;
  if ((u32 )i < adapter->num_rx_qs) {
    goto ldv_50532;
  } else {
  }
  i = 0;
  goto ldv_50541;
  ldv_50540:
  j = 0;
  goto ldv_50538;
  ldv_50537:
  sprintf((char *)data, "txq%d: %s", i, (char const *)(& et_tx_stats[j].desc));
  data = data + 32UL;
  j = j + 1;
  ldv_50538: ;
  if ((unsigned int )j <= 5U) {
    goto ldv_50537;
  } else {
  }
  i = i + 1;
  ldv_50541: ;
  if ((u32 )i < adapter->num_tx_qs) {
    goto ldv_50540;
  } else {
  }
  goto ldv_50543;
  case 0U:
  i = 0;
  goto ldv_50551;
  ldv_50550:
  __len___0 = 32UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)data, (void const *)(& et_self_tests) + (unsigned long )i,
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)data, (void const *)(& et_self_tests) + (unsigned long )i,
                                 __len___0);
  }
  data = data + 32UL;
  i = i + 1;
  ldv_50551: ;
  if ((unsigned int )i <= 4U) {
    goto ldv_50550;
  } else {
  }
  goto ldv_50543;
  }
  ldv_50543: ;
  return;
}
}
static int be_get_sset_count(struct net_device *netdev , int stringset )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  switch (stringset) {
  case 0: ;
  return (5);
  case 1: ;
  return ((int )((adapter->num_rx_qs * 7U + adapter->num_tx_qs * 6U) + 32U));
  default: ;
  return (-22);
  }
}
}
static u32 be_get_port_type(u32 phy_type , u32 dac_cable_len )
{
  u32 port ;
  {
  switch (phy_type) {
  case 7U: ;
  case 8U: ;
  case 9U:
  port = 0U;
  goto ldv_50577;
  case 3U:
  port = dac_cable_len != 0U ? 5U : 3U;
  goto ldv_50577;
  case 1U: ;
  case 2U:
  port = 3U;
  goto ldv_50577;
  case 6U:
  port = 0U;
  goto ldv_50577;
  default:
  port = 255U;
  }
  ldv_50577: ;
  return (port);
}
}
static u32 convert_to_et_setting(u32 if_type , u32 if_speeds )
{
  u32 val ;
  {
  val = 0U;
  switch (if_type) {
  case 7U: ;
  case 8U: ;
  case 9U:
  val = val | 128U;
  if ((if_speeds & 4U) != 0U) {
    val = val | 32U;
  } else {
  }
  if ((if_speeds & 2U) != 0U) {
    val = val | 8U;
  } else {
  }
  if ((int )if_speeds & 1) {
    val = val | 2U;
  } else {
  }
  goto ldv_50591;
  case 5U:
  val = val | 65536U;
  if ((if_speeds & 4U) != 0U) {
    val = val | 131072U;
  } else {
  }
  if ((if_speeds & 8U) != 0U) {
    val = val | 262144U;
  } else {
  }
  goto ldv_50591;
  case 4U:
  val = val | 589824U;
  goto ldv_50591;
  case 3U: ;
  case 1U: ;
  case 2U:
  val = val | 1024U;
  if ((if_speeds & 8U) != 0U) {
    val = val | 4096U;
  } else {
  }
  if ((if_speeds & 4U) != 0U) {
    val = val | 32U;
  } else {
  }
  goto ldv_50591;
  case 6U:
  val = val | 128U;
  if ((if_speeds & 8U) != 0U) {
    val = val | 4096U;
  } else {
  }
  if ((if_speeds & 4U) != 0U) {
    val = val | 32U;
  } else {
  }
  if ((if_speeds & 2U) != 0U) {
    val = val | 8U;
  } else {
  }
  goto ldv_50591;
  default:
  val = val | 128U;
  }
  ldv_50591: ;
  return (val);
}
}
bool be_pause_supported(struct be_adapter *adapter )
{
  {
  return ((bool )((unsigned int )adapter->phy.interface_type != 3U && (unsigned int )adapter->phy.interface_type != 1U));
}
}
static int be_get_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct be_adapter *adapter ;
  void *tmp ;
  u8 link_status ;
  u16 link_speed ;
  int status ;
  u32 auto_speeds ;
  u32 fixed_speeds ;
  u32 dac_cable_len ;
  u16 interface_type ;
  u32 tmp___0 ;
  bool tmp___1 ;
  __u32 tmp___2 ;
  bool tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  link_speed = 0U;
  if (adapter->phy.link_speed < 0) {
    status = be_cmd_link_status_query(adapter, & link_speed, & link_status, 0U);
    if (status == 0) {
      be_link_status_update(adapter, (int )link_status);
    } else {
    }
    ethtool_cmd_speed_set(ecmd, (__u32 )link_speed);
    status = be_cmd_get_phy_info(adapter);
    if (status == 0) {
      interface_type = adapter->phy.interface_type;
      auto_speeds = (u32 )adapter->phy.auto_speeds_supported;
      fixed_speeds = (u32 )adapter->phy.fixed_speeds_supported;
      dac_cable_len = adapter->phy.dac_cable_len;
      ecmd->supported = convert_to_et_setting((u32 )interface_type, auto_speeds | fixed_speeds);
      ecmd->advertising = convert_to_et_setting((u32 )interface_type, auto_speeds);
      tmp___0 = be_get_port_type((u32 )interface_type, dac_cable_len);
      ecmd->port = (__u8 )tmp___0;
      if ((unsigned int )adapter->phy.auto_speeds_supported != 0U) {
        ecmd->supported = ecmd->supported | 64U;
        ecmd->autoneg = 1U;
        ecmd->advertising = ecmd->advertising | 64U;
      } else {
      }
      ecmd->supported = ecmd->supported | 8192U;
      tmp___1 = be_pause_supported(adapter);
      if ((int )tmp___1) {
        ecmd->advertising = ecmd->advertising | 8192U;
      } else {
      }
      switch ((int )adapter->phy.interface_type) {
      case 4: ;
      case 5:
      ecmd->transceiver = 0U;
      goto ldv_50616;
      default:
      ecmd->transceiver = 1U;
      goto ldv_50616;
      }
      ldv_50616: ;
    } else {
      ecmd->port = 255U;
      ecmd->autoneg = 0U;
      ecmd->transceiver = 2U;
    }
    tmp___2 = ethtool_cmd_speed((struct ethtool_cmd const *)ecmd);
    adapter->phy.link_speed = (int )tmp___2;
    adapter->phy.port_type = ecmd->port;
    adapter->phy.transceiver = ecmd->transceiver;
    adapter->phy.autoneg = ecmd->autoneg;
    adapter->phy.advertising = ecmd->advertising;
    adapter->phy.supported = ecmd->supported;
  } else {
    ethtool_cmd_speed_set(ecmd, (__u32 )adapter->phy.link_speed);
    ecmd->port = adapter->phy.port_type;
    ecmd->transceiver = adapter->phy.transceiver;
    ecmd->autoneg = adapter->phy.autoneg;
    ecmd->advertising = adapter->phy.advertising;
    ecmd->supported = adapter->phy.supported;
  }
  tmp___3 = netif_carrier_ok((struct net_device const *)netdev);
  ecmd->duplex = (int )tmp___3 ? 1U : 255U;
  ecmd->phy_address = (__u8 )adapter->port_num;
  return (0);
}
}
static void be_get_ringparam(struct net_device *netdev , struct ethtool_ringparam *ring )
{
  struct be_adapter *adapter ;
  void *tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  tmp___0 = (__u32 )adapter->rx_obj[0].q.len;
  ring->rx_pending = tmp___0;
  ring->rx_max_pending = tmp___0;
  tmp___1 = (__u32 )adapter->tx_obj[0].q.len;
  ring->tx_pending = tmp___1;
  ring->tx_max_pending = tmp___1;
  return;
}
}
static void be_get_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *ecmd )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  be_cmd_get_flow_control(adapter, & ecmd->tx_pause, & ecmd->rx_pause);
  ecmd->autoneg = (__u32 )adapter->phy.fc_autoneg;
  return;
}
}
static int be_set_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *ecmd )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if (ecmd->autoneg != (__u32 )adapter->phy.fc_autoneg) {
    return (-22);
  } else {
  }
  adapter->tx_fc = ecmd->tx_pause;
  adapter->rx_fc = ecmd->rx_pause;
  status = be_cmd_set_flow_control(adapter, adapter->tx_fc, adapter->rx_fc);
  if (status != 0) {
    dev_warn((struct device const *)(& (adapter->pdev)->dev), "Pause param set failed.\n");
  } else {
  }
  return (status);
}
}
static int be_set_phys_id(struct net_device *netdev , enum ethtool_phys_id_state state )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  switch ((unsigned int )state) {
  case 1U:
  be_cmd_get_beacon_state(adapter, (int )adapter->hba_port_num, & adapter->beacon_state);
  return (1);
  case 2U:
  be_cmd_set_beacon_state(adapter, (int )adapter->hba_port_num, 0, 0, 1);
  goto ldv_50641;
  case 3U:
  be_cmd_set_beacon_state(adapter, (int )adapter->hba_port_num, 0, 0, 0);
  goto ldv_50641;
  case 0U:
  be_cmd_set_beacon_state(adapter, (int )adapter->hba_port_num, 0, 0, (int )((u8 )adapter->beacon_state));
  }
  ldv_50641: ;
  return (0);
}
}
static void be_get_wol(struct net_device *netdev , struct ethtool_wolinfo *wol )
{
  struct be_adapter *adapter ;
  void *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  tmp___0 = be_is_wol_supported(adapter);
  if ((int )tmp___0) {
    wol->supported = wol->supported | 32U;
    if ((int )adapter->wol) {
      wol->wolopts = wol->wolopts | 32U;
    } else {
    }
  } else {
    wol->wolopts = 0U;
  }
  memset((void *)(& wol->sopass), 0, 6UL);
  return;
}
}
static int be_set_wol(struct net_device *netdev , struct ethtool_wolinfo *wol )
{
  struct be_adapter *adapter ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if ((wol->wolopts & 4294967263U) != 0U) {
    return (-95);
  } else {
  }
  tmp___0 = be_is_wol_supported(adapter);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    dev_warn((struct device const *)(& (adapter->pdev)->dev), "WOL not supported\n");
    return (-95);
  } else {
  }
  if ((wol->wolopts & 32U) != 0U) {
    adapter->wol = 1;
  } else {
    adapter->wol = 0;
  }
  return (0);
}
}
static int be_test_ddr_dma(struct be_adapter *adapter )
{
  int ret ;
  int i ;
  struct be_dma_mem ddrdma_cmd ;
  u64 pattern[2U] ;
  {
  pattern[0] = 6510615555426900570ULL;
  pattern[1] = 0xa5a5a5a5a5a5a5a5ULL;
  ddrdma_cmd.size = 8224U;
  ddrdma_cmd.va = dma_alloc_attrs(& (adapter->pdev)->dev, (size_t )ddrdma_cmd.size,
                                  & ddrdma_cmd.dma, 208U, 0);
  if ((unsigned long )ddrdma_cmd.va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_50663;
  ldv_50662:
  ret = be_cmd_ddr_dma_test(adapter, pattern[i], 4096U, & ddrdma_cmd);
  if (ret != 0) {
    goto err;
  } else {
  }
  i = i + 1;
  ldv_50663: ;
  if (i <= 1) {
    goto ldv_50662;
  } else {
  }
  err:
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )ddrdma_cmd.size, ddrdma_cmd.va,
                 ddrdma_cmd.dma, 0);
  return (ret);
}
}
static u64 be_loopback_test(struct be_adapter *adapter , u8 loopback_type , u64 *status )
{
  int tmp ;
  {
  be_cmd_set_loopback(adapter, (int )adapter->hba_port_num, (int )loopback_type, 1);
  tmp = be_cmd_loopback_test(adapter, (u32 )adapter->hba_port_num, (u32 )loopback_type,
                             1500U, 2U, 2748ULL);
  *status = (u64 )tmp;
  be_cmd_set_loopback(adapter, (int )adapter->hba_port_num, 255, 1);
  return (*status);
}
}
static void be_self_test(struct net_device *netdev , struct ethtool_test *test , u64 *data )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  u8 link_status ;
  u64 tmp___0 ;
  u64 tmp___1 ;
  u64 tmp___2 ;
  int tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  link_status = 0U;
  if ((adapter->function_caps & 64U) != 0U) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Self test not supported\n");
    test->flags = test->flags | 2U;
    return;
  } else {
  }
  memset((void *)data, 0, 40UL);
  if ((int )test->flags & 1) {
    tmp___0 = be_loopback_test(adapter, 0, data);
    if (tmp___0 != 0ULL) {
      test->flags = test->flags | 2U;
    } else {
    }
    tmp___1 = be_loopback_test(adapter, 1, data + 1UL);
    if (tmp___1 != 0ULL) {
      test->flags = test->flags | 2U;
    } else {
    }
    tmp___2 = be_loopback_test(adapter, 2, data + 2UL);
    if (tmp___2 != 0ULL) {
      test->flags = test->flags | 2U;
    } else {
    }
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
    tmp___3 = be_test_ddr_dma(adapter);
    if (tmp___3 != 0) {
      *(data + 3UL) = 1ULL;
      test->flags = test->flags | 2U;
    } else {
    }
  } else {
  }
  status = be_cmd_link_status_query(adapter, 0, & link_status, 0U);
  if (status != 0) {
    test->flags = test->flags | 2U;
    *(data + 4UL) = 0xffffffffffffffffULL;
  } else
  if ((unsigned int )link_status == 0U) {
    test->flags = test->flags | 2U;
    *(data + 4UL) = 1ULL;
  } else {
  }
  return;
}
}
static int be_do_flash(struct net_device *netdev , struct ethtool_flash *efl )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  tmp___0 = be_load_fw(adapter, (u8 *)(& efl->data));
  return (tmp___0);
}
}
static int be_get_eeprom_len(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  tmp___0 = check_privilege(adapter, 1792U);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    if ((unsigned int )adapter->virtfn == 0U) {
      tmp___2 = lancer_cmd_get_file_len(adapter, (u8 *)"/vpd/ntr_pf.vpd");
      return ((int )tmp___2);
    } else {
      tmp___3 = lancer_cmd_get_file_len(adapter, (u8 *)"/vpd/ntr_vf.vpd");
      return ((int )tmp___3);
    }
  } else {
    return (1024);
  }
}
}
static int be_read_eeprom(struct net_device *netdev , struct ethtool_eeprom *eeprom ,
                          uint8_t *data )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_dma_mem eeprom_cmd ;
  struct be_cmd_resp_seeprom_read *resp ;
  int status ;
  int tmp___0 ;
  int tmp___1 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if (eeprom->len == 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    if ((unsigned int )adapter->virtfn == 0U) {
      tmp___0 = lancer_cmd_read_file(adapter, (u8 *)"/vpd/ntr_pf.vpd", eeprom->len,
                                     (void *)data);
      return (tmp___0);
    } else {
      tmp___1 = lancer_cmd_read_file(adapter, (u8 *)"/vpd/ntr_vf.vpd", eeprom->len,
                                     (void *)data);
      return (tmp___1);
    }
  } else {
  }
  eeprom->magic = (__u32 )(((int )(adapter->pdev)->device << 16) | 6562);
  memset((void *)(& eeprom_cmd), 0, 24UL);
  eeprom_cmd.size = 1040U;
  eeprom_cmd.va = dma_alloc_attrs(& (adapter->pdev)->dev, (size_t )eeprom_cmd.size,
                                  & eeprom_cmd.dma, 208U, 0);
  if ((unsigned long )eeprom_cmd.va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  status = be_cmd_get_seeprom_data(adapter, & eeprom_cmd);
  if (status == 0) {
    resp = (struct be_cmd_resp_seeprom_read *)eeprom_cmd.va;
    __len = (size_t )eeprom->len;
    __ret = memcpy((void *)data, (void const *)(& resp->seeprom_data) + (unsigned long )eeprom->offset,
                             __len);
  } else {
  }
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )eeprom_cmd.size, eeprom_cmd.va,
                 eeprom_cmd.dma, 0);
  return (status);
}
}
static u32 be_get_msg_level(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Operation not supported\n");
    return (4294967201U);
  } else {
  }
  return (adapter->msg_enable);
}
}
static void be_set_fw_log_level(struct be_adapter *adapter , u32 level )
{
  struct be_dma_mem extfat_cmd ;
  struct be_fat_conf_params *cfgs ;
  int status ;
  int i ;
  int j ;
  u32 num_modes ;
  {
  memset((void *)(& extfat_cmd), 0, 24UL);
  extfat_cmd.size = 2844U;
  extfat_cmd.va = pci_alloc_consistent(adapter->pdev, (size_t )extfat_cmd.size, & extfat_cmd.dma);
  if ((unsigned long )extfat_cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "%s: Memory allocation failure\n",
            "be_set_fw_log_level");
    goto err;
  } else {
  }
  status = be_cmd_get_ext_fat_capabilites(adapter, & extfat_cmd);
  if (status == 0) {
    cfgs = (struct be_fat_conf_params *)extfat_cmd.va + 16U;
    i = 0;
    goto ldv_50721;
    ldv_50720:
    num_modes = cfgs->module[i].num_modes;
    j = 0;
    goto ldv_50718;
    ldv_50717: ;
    if ((unsigned int )cfgs->module[i].trace_lvl[j].mode == 0U) {
      cfgs->module[i].trace_lvl[j].dbg_lvl = level;
    } else {
    }
    j = j + 1;
    ldv_50718: ;
    if ((u32 )j < num_modes) {
      goto ldv_50717;
    } else {
    }
    i = i + 1;
    ldv_50721: ;
    if ((u32 )i < cfgs->num_modules) {
      goto ldv_50720;
    } else {
    }
    status = be_cmd_set_ext_fat_capabilites(adapter, & extfat_cmd, cfgs);
    if (status != 0) {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "Message level set failed\n");
    } else {
    }
  } else {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Message level get failed\n");
  }
  pci_free_consistent(adapter->pdev, (size_t )extfat_cmd.size, extfat_cmd.va, extfat_cmd.dma);
  err: ;
  return;
}
}
static void be_set_msg_level(struct net_device *netdev , u32 level )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Operation not supported\n");
    return;
  } else {
  }
  if (adapter->msg_enable == level) {
    return;
  } else {
  }
  if (((adapter->msg_enable ^ level) & 8192U) != 0U) {
    be_set_fw_log_level(adapter, (level & 8192U) != 0U ? 48U : 64U);
  } else {
  }
  adapter->msg_enable = level;
  return;
}
}
static u64 be_get_rss_hash_opts(struct be_adapter *adapter , u64 flow_type )
{
  u64 data ;
  {
  data = 0ULL;
  switch (flow_type) {
  case 1ULL: ;
  if ((int )adapter->rss_flags & 1) {
    data = data | 48ULL;
  } else {
  }
  if ((adapter->rss_flags & 2ULL) != 0ULL) {
    data = data | 192ULL;
  } else {
  }
  goto ldv_50734;
  case 2ULL: ;
  if ((int )adapter->rss_flags & 1) {
    data = data | 48ULL;
  } else {
  }
  if ((adapter->rss_flags & 16ULL) != 0ULL) {
    data = data | 192ULL;
  } else {
  }
  goto ldv_50734;
  case 5ULL: ;
  if ((adapter->rss_flags & 4ULL) != 0ULL) {
    data = data | 48ULL;
  } else {
  }
  if ((adapter->rss_flags & 8ULL) != 0ULL) {
    data = data | 192ULL;
  } else {
  }
  goto ldv_50734;
  case 6ULL: ;
  if ((adapter->rss_flags & 4ULL) != 0ULL) {
    data = data | 48ULL;
  } else {
  }
  if ((adapter->rss_flags & 32ULL) != 0ULL) {
    data = data | 192ULL;
  } else {
  }
  goto ldv_50734;
  }
  ldv_50734: ;
  return (data);
}
}
static int be_get_rxnfc(struct net_device *netdev , struct ethtool_rxnfc *cmd , u32 *rule_locs )
{
  struct be_adapter *adapter ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  tmp___0 = be_multi_rxq((struct be_adapter const *)adapter);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "ethtool::get_rxnfc: RX flow hashing is disabled\n");
    return (-22);
  } else {
  }
  switch (cmd->cmd) {
  case 41U:
  cmd->data = be_get_rss_hash_opts(adapter, (u64 )cmd->flow_type);
  goto ldv_50745;
  case 45U:
  cmd->data = (__u64 )(adapter->num_rx_qs - 1U);
  goto ldv_50745;
  default: ;
  return (-22);
  }
  ldv_50745: ;
  return (0);
}
}
static int be_set_rss_hash_opts(struct be_adapter *adapter , struct ethtool_rxnfc *cmd )
{
  struct be_rx_obj *rxo ;
  int status ;
  int i ;
  int j ;
  u8 rsstable[128U] ;
  u32 rss_flags ;
  bool tmp ;
  {
  status = 0;
  rss_flags = (u32 )adapter->rss_flags;
  if (cmd->data != 48ULL && cmd->data != 240ULL) {
    return (-22);
  } else {
  }
  switch (cmd->flow_type) {
  case 1U: ;
  if (cmd->data == 48ULL) {
    rss_flags = rss_flags & 4294967293U;
  } else
  if (cmd->data == 240ULL) {
    rss_flags = rss_flags | 3U;
  } else {
  }
  goto ldv_50759;
  case 5U: ;
  if (cmd->data == 48ULL) {
    rss_flags = rss_flags & 4294967287U;
  } else
  if (cmd->data == 240ULL) {
    rss_flags = rss_flags | 12U;
  } else {
  }
  goto ldv_50759;
  case 2U: ;
  if (cmd->data == 240ULL && (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U))) {
    return (-22);
  } else {
  }
  if (cmd->data == 48ULL) {
    rss_flags = rss_flags & 4294967279U;
  } else
  if (cmd->data == 240ULL) {
    rss_flags = rss_flags | 17U;
  } else {
  }
  goto ldv_50759;
  case 6U: ;
  if (cmd->data == 240ULL && (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U))) {
    return (-22);
  } else {
  }
  if (cmd->data == 48ULL) {
    rss_flags = rss_flags & 4294967263U;
  } else
  if (cmd->data == 240ULL) {
    rss_flags = rss_flags | 36U;
  } else {
  }
  goto ldv_50759;
  default: ;
  return (-22);
  }
  ldv_50759: ;
  if ((u64 )rss_flags == adapter->rss_flags) {
    return (status);
  } else {
  }
  tmp = be_multi_rxq((struct be_adapter const *)adapter);
  if ((int )tmp) {
    j = 0;
    goto ldv_50768;
    ldv_50767:
    i = 0;
    rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
    goto ldv_50766;
    ldv_50765: ;
    if (j + i > 127) {
      goto ldv_50764;
    } else {
    }
    rsstable[j + i] = rxo->rss_id;
    i = i + 1;
    rxo = rxo + 1;
    ldv_50766: ;
    if ((u32 )i < adapter->num_rx_qs - 1U) {
      goto ldv_50765;
    } else {
    }
    ldv_50764:
    j = (int )((adapter->num_rx_qs + (u32 )j) - 1U);
    ldv_50768: ;
    if (j <= 127) {
      goto ldv_50767;
    } else {
    }
  } else {
  }
  status = be_cmd_rss_config(adapter, (u8 *)(& rsstable), rss_flags, 128);
  if (status == 0) {
    adapter->rss_flags = (u64 )rss_flags;
  } else {
  }
  return (status);
}
}
static int be_set_rxnfc(struct net_device *netdev , struct ethtool_rxnfc *cmd )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  status = 0;
  tmp___0 = be_multi_rxq((struct be_adapter const *)adapter);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "ethtool::set_rxnfc: RX flow hashing is disabled\n");
    return (-22);
  } else {
  }
  switch (cmd->cmd) {
  case 42U:
  status = be_set_rss_hash_opts(adapter, cmd);
  goto ldv_50777;
  default: ;
  return (-22);
  }
  ldv_50777: ;
  return (status);
}
}
struct ethtool_ops const be_ethtool_ops =
     {& be_get_settings, 0, & be_get_drvinfo, & be_get_reg_len, & be_get_regs, & be_get_wol,
    & be_set_wol, & be_get_msg_level, & be_set_msg_level, 0, & ethtool_op_get_link,
    & be_get_eeprom_len, & be_read_eeprom, 0, & be_get_coalesce, & be_set_coalesce,
    & be_get_ringparam, 0, & be_get_pauseparam, & be_set_pauseparam, & be_self_test,
    & be_get_stat_strings, & be_set_phys_id, & be_get_ethtool_stats, 0, 0, 0, 0, & be_get_sset_count,
    & be_get_rxnfc, & be_set_rxnfc, & be_do_flash, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0};
int main(void)
{
  struct net_device *var_group1 ;
  struct ethtool_cmd *var_group2 ;
  struct ethtool_drvinfo *var_group3 ;
  struct ethtool_wolinfo *var_group4 ;
  struct ethtool_eeprom *var_group5 ;
  uint8_t *var_be_read_eeprom_25_p2 ;
  struct ethtool_coalesce *var_group6 ;
  struct ethtool_ringparam *var_group7 ;
  struct ethtool_pauseparam *var_group8 ;
  uint32_t var_be_get_stat_strings_8_p1 ;
  uint8_t *var_be_get_stat_strings_8_p2 ;
  enum ethtool_phys_id_state var_be_set_phys_id_17_p1 ;
  u32 var_be_set_msg_level_28_p1 ;
  int var_be_get_sset_count_9_p1 ;
  struct ethtool_stats *var_group9 ;
  uint64_t *var_be_get_ethtool_stats_7_p2 ;
  struct ethtool_regs *var_group10 ;
  void *var_be_get_regs_4_p2 ;
  struct ethtool_flash *var_group11 ;
  struct ethtool_test *var_group12 ;
  u64 *var_be_self_test_22_p2 ;
  struct ethtool_rxnfc *var_group13 ;
  u32 *var_be_get_rxnfc_30_p2 ;
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_50845;
  ldv_50844:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  be_get_settings(var_group1, var_group2);
  goto ldv_50820;
  case 1:
  ldv_handler_precall();
  be_get_drvinfo(var_group1, var_group3);
  goto ldv_50820;
  case 2:
  ldv_handler_precall();
  be_get_wol(var_group1, var_group4);
  goto ldv_50820;
  case 3:
  ldv_handler_precall();
  be_set_wol(var_group1, var_group4);
  goto ldv_50820;
  case 4:
  ldv_handler_precall();
  be_get_eeprom_len(var_group1);
  goto ldv_50820;
  case 5:
  ldv_handler_precall();
  be_read_eeprom(var_group1, var_group5, var_be_read_eeprom_25_p2);
  goto ldv_50820;
  case 6:
  ldv_handler_precall();
  be_get_coalesce(var_group1, var_group6);
  goto ldv_50820;
  case 7:
  ldv_handler_precall();
  be_set_coalesce(var_group1, var_group6);
  goto ldv_50820;
  case 8:
  ldv_handler_precall();
  be_get_ringparam(var_group1, var_group7);
  goto ldv_50820;
  case 9:
  ldv_handler_precall();
  be_get_pauseparam(var_group1, var_group8);
  goto ldv_50820;
  case 10:
  ldv_handler_precall();
  be_set_pauseparam(var_group1, var_group8);
  goto ldv_50820;
  case 11:
  ldv_handler_precall();
  be_get_stat_strings(var_group1, var_be_get_stat_strings_8_p1, var_be_get_stat_strings_8_p2);
  goto ldv_50820;
  case 12:
  ldv_handler_precall();
  be_set_phys_id(var_group1, var_be_set_phys_id_17_p1);
  goto ldv_50820;
  case 13:
  ldv_handler_precall();
  be_get_msg_level(var_group1);
  goto ldv_50820;
  case 14:
  ldv_handler_precall();
  be_set_msg_level(var_group1, var_be_set_msg_level_28_p1);
  goto ldv_50820;
  case 15:
  ldv_handler_precall();
  be_get_sset_count(var_group1, var_be_get_sset_count_9_p1);
  goto ldv_50820;
  case 16:
  ldv_handler_precall();
  be_get_ethtool_stats(var_group1, var_group9, var_be_get_ethtool_stats_7_p2);
  goto ldv_50820;
  case 17:
  ldv_handler_precall();
  be_get_reg_len(var_group1);
  goto ldv_50820;
  case 18:
  ldv_handler_precall();
  be_get_regs(var_group1, var_group10, var_be_get_regs_4_p2);
  goto ldv_50820;
  case 19:
  ldv_handler_precall();
  be_do_flash(var_group1, var_group11);
  goto ldv_50820;
  case 20:
  ldv_handler_precall();
  be_self_test(var_group1, var_group12, var_be_self_test_22_p2);
  goto ldv_50820;
  case 21:
  ldv_handler_precall();
  be_get_rxnfc(var_group1, var_group13, var_be_get_rxnfc_30_p2);
  goto ldv_50820;
  case 22:
  ldv_handler_precall();
  be_set_rxnfc(var_group1, var_group13);
  goto ldv_50820;
  default: ;
  goto ldv_50820;
  }
  ldv_50820: ;
  ldv_50845:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_50844;
  } else {
  }
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_89(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_90(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_91(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_92(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_93(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void list_del(struct list_head * ) ;
int ldv_mutex_trylock_102(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_100(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_116(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_101(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_108(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_115(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_be_adapter_list_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_be_adapter_list_lock(struct mutex *lock ) ;
__inline static bool netif_oper_up(struct net_device const *dev )
{
  {
  return ((bool )((unsigned int )((unsigned char )dev->operstate) == 6U || (unsigned int )((unsigned char )dev->operstate) == 0U));
}
}
int be_roce_register_driver(struct ocrdma_driver *drv ) ;
void be_roce_unregister_driver(struct ocrdma_driver *drv ) ;
static struct ocrdma_driver *ocrdma_drv ;
static struct list_head be_adapter_list = {& be_adapter_list, & be_adapter_list};
static struct mutex be_adapter_list_lock = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "be_adapter_list_lock.wait_lock",
                                                                     0, 0UL}}}}, {& be_adapter_list_lock.wait_list,
                                                                                  & be_adapter_list_lock.wait_list},
    0, 0, (void *)(& be_adapter_list_lock), {0, {0, 0}, "be_adapter_list_lock", 0,
                                             0UL}};
static void _be_roce_dev_add(struct be_adapter *adapter )
{
  struct be_dev_info dev_info ;
  int i ;
  int num_vec ;
  struct pci_dev *pdev ;
  size_t __len ;
  void *__ret ;
  int _min1 ;
  int _min2 ;
  {
  pdev = adapter->pdev;
  if ((unsigned long )ocrdma_drv == (unsigned long )((struct ocrdma_driver *)0)) {
    return;
  } else {
  }
  if ((unsigned int )pdev->device == 1824U) {
    if (adapter->num_msix_vec == 0U) {
      return;
    } else {
    }
    dev_info.dpp_unmapped_addr = pdev->resource[2].start;
    dev_info.dpp_unmapped_len = pdev->resource[2].start != 0ULL || pdev->resource[2].end != pdev->resource[2].start ? ((u32 )pdev->resource[2].end - (u32 )pdev->resource[2].start) + 1U : 0U;
  } else {
    dev_info.dpp_unmapped_addr = 0ULL;
    dev_info.dpp_unmapped_len = 0U;
  }
  dev_info.pdev = adapter->pdev;
  dev_info.db = adapter->db;
  dev_info.unmapped_db = adapter->roce_db.io_addr;
  dev_info.db_page_size = adapter->roce_db.size;
  dev_info.db_total_size = adapter->roce_db.total_size;
  dev_info.netdev = adapter->netdev;
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& dev_info.mac_addr), (void const *)(adapter->netdev)->dev_addr,
                     __len);
  } else {
    __ret = memcpy((void *)(& dev_info.mac_addr), (void const *)(adapter->netdev)->dev_addr,
                             __len);
  }
  dev_info.dev_family = adapter->sli_family;
  if (adapter->num_msix_vec != 0U) {
    num_vec = (int )(adapter->num_msix_vec + adapter->num_msix_roce_vec);
    dev_info.intr_mode = 0;
    _min1 = num_vec;
    _min2 = 16;
    dev_info.msix.num_vectors = _min1 < _min2 ? _min1 : _min2;
    dev_info.msix.start_vector = (int )adapter->num_evt_qs;
    i = 0;
    goto ldv_51238;
    ldv_51237:
    dev_info.msix.vector_list[i] = adapter->msix_entries[i].vector;
    i = i + 1;
    ldv_51238: ;
    if (dev_info.msix.num_vectors > i) {
      goto ldv_51237;
    } else {
    }
  } else {
    dev_info.msix.num_vectors = 0;
    dev_info.intr_mode = 1;
  }
  adapter->ocrdma_dev = (*(ocrdma_drv->add))(& dev_info);
  return;
}
}
void be_roce_dev_add(struct be_adapter *adapter )
{
  {
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    INIT_LIST_HEAD(& adapter->entry);
    ldv_mutex_lock_104(& be_adapter_list_lock);
    list_add_tail(& adapter->entry, & be_adapter_list);
    _be_roce_dev_add(adapter);
    ldv_mutex_unlock_105(& be_adapter_list_lock);
  } else {
  }
  return;
}
}
void _be_roce_dev_remove(struct be_adapter *adapter )
{
  {
  if (((unsigned long )ocrdma_drv != (unsigned long )((struct ocrdma_driver *)0) && (unsigned long )ocrdma_drv->remove != (unsigned long )((void (*)(struct ocrdma_dev * ))0)) && (unsigned long )adapter->ocrdma_dev != (unsigned long )((struct ocrdma_dev *)0)) {
    (*(ocrdma_drv->remove))(adapter->ocrdma_dev);
  } else {
  }
  adapter->ocrdma_dev = 0;
  return;
}
}
void be_roce_dev_remove(struct be_adapter *adapter )
{
  {
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    ldv_mutex_lock_106(& be_adapter_list_lock);
    _be_roce_dev_remove(adapter);
    list_del(& adapter->entry);
    ldv_mutex_unlock_107(& be_adapter_list_lock);
  } else {
  }
  return;
}
}
void _be_roce_dev_open(struct be_adapter *adapter )
{
  {
  if (((unsigned long )ocrdma_drv != (unsigned long )((struct ocrdma_driver *)0) && (unsigned long )adapter->ocrdma_dev != (unsigned long )((struct ocrdma_dev *)0)) && (unsigned long )ocrdma_drv->state_change_handler != (unsigned long )((void (*)(struct ocrdma_dev * ,
                                                                                                                                                                                                                                                       u32 ))0)) {
    (*(ocrdma_drv->state_change_handler))(adapter->ocrdma_dev, 0U);
  } else {
  }
  return;
}
}
void be_roce_dev_open(struct be_adapter *adapter )
{
  {
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    ldv_mutex_lock_108(& be_adapter_list_lock);
    _be_roce_dev_open(adapter);
    ldv_mutex_unlock_109(& be_adapter_list_lock);
  } else {
  }
  return;
}
}
void _be_roce_dev_close(struct be_adapter *adapter )
{
  {
  if (((unsigned long )ocrdma_drv != (unsigned long )((struct ocrdma_driver *)0) && (unsigned long )adapter->ocrdma_dev != (unsigned long )((struct ocrdma_dev *)0)) && (unsigned long )ocrdma_drv->state_change_handler != (unsigned long )((void (*)(struct ocrdma_dev * ,
                                                                                                                                                                                                                                                       u32 ))0)) {
    (*(ocrdma_drv->state_change_handler))(adapter->ocrdma_dev, 1U);
  } else {
  }
  return;
}
}
void be_roce_dev_close(struct be_adapter *adapter )
{
  {
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    ldv_mutex_lock_110(& be_adapter_list_lock);
    _be_roce_dev_close(adapter);
    ldv_mutex_unlock_111(& be_adapter_list_lock);
  } else {
  }
  return;
}
}
int be_roce_register_driver(struct ocrdma_driver *drv )
{
  struct be_adapter *dev ;
  struct list_head const *__mptr ;
  struct net_device *netdev ;
  bool tmp ;
  bool tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  ldv_mutex_lock_112(& be_adapter_list_lock);
  if ((unsigned long )ocrdma_drv != (unsigned long )((struct ocrdma_driver *)0)) {
    ldv_mutex_unlock_113(& be_adapter_list_lock);
    return (-22);
  } else {
  }
  ocrdma_drv = drv;
  __mptr = (struct list_head const *)be_adapter_list.next;
  dev = (struct be_adapter *)__mptr + 0xfffffffffffa6d38UL;
  goto ldv_51271;
  ldv_51270:
  _be_roce_dev_add(dev);
  netdev = dev->netdev;
  tmp = netif_running((struct net_device const *)netdev);
  if ((int )tmp) {
    tmp___0 = netif_oper_up((struct net_device const *)netdev);
    if ((int )tmp___0) {
      _be_roce_dev_open(dev);
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)dev->entry.next;
  dev = (struct be_adapter *)__mptr___0 + 0xfffffffffffa6d38UL;
  ldv_51271: ;
  if ((unsigned long )(& dev->entry) != (unsigned long )(& be_adapter_list)) {
    goto ldv_51270;
  } else {
  }
  ldv_mutex_unlock_114(& be_adapter_list_lock);
  return (0);
}
}
void be_roce_unregister_driver(struct ocrdma_driver *drv )
{
  struct be_adapter *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ldv_mutex_lock_115(& be_adapter_list_lock);
  __mptr = (struct list_head const *)be_adapter_list.next;
  dev = (struct be_adapter *)__mptr + 0xfffffffffffa6d38UL;
  goto ldv_51288;
  ldv_51287: ;
  if ((unsigned long )dev->ocrdma_dev != (unsigned long )((struct ocrdma_dev *)0)) {
    _be_roce_dev_remove(dev);
  } else {
  }
  __mptr___0 = (struct list_head const *)dev->entry.next;
  dev = (struct be_adapter *)__mptr___0 + 0xfffffffffffa6d38UL;
  ldv_51288: ;
  if ((unsigned long )(& dev->entry) != (unsigned long )(& be_adapter_list)) {
    goto ldv_51287;
  } else {
  }
  ocrdma_drv = 0;
  ldv_mutex_unlock_116(& be_adapter_list_lock);
  return;
}
}
void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_100(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_101(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_102(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_104(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_be_adapter_list_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_105(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_be_adapter_list_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_106(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_be_adapter_list_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_107(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_be_adapter_list_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_108(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_be_adapter_list_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_109(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_be_adapter_list_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_110(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_be_adapter_list_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_111(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_be_adapter_list_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_112(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_be_adapter_list_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_be_adapter_list_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_114(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_be_adapter_list_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_115(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_be_adapter_list_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_116(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_be_adapter_list_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void ldv_error(void) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_error(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
static int ldv_mutex_be_adapter_list_lock ;
int ldv_mutex_lock_interruptible_be_adapter_list_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_be_adapter_list_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_be_adapter_list_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_be_adapter_list_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_be_adapter_list_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_be_adapter_list_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_be_adapter_list_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_be_adapter_list_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_be_adapter_list_lock = 2;
  return;
}
}
int ldv_mutex_trylock_be_adapter_list_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_be_adapter_list_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_be_adapter_list_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_be_adapter_list_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_be_adapter_list_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_be_adapter_list_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_be_adapter_list_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_be_adapter_list_lock == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_be_adapter_list_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_be_adapter_list_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_be_adapter_list_lock = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 1;
  return;
}
}
static int ldv_mutex_mbox_lock_of_be_adapter ;
int ldv_mutex_lock_interruptible_mbox_lock_of_be_adapter(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mbox_lock_of_be_adapter == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mbox_lock_of_be_adapter = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mbox_lock_of_be_adapter(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mbox_lock_of_be_adapter == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mbox_lock_of_be_adapter = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mbox_lock_of_be_adapter(struct mutex *lock )
{
  {
  if (ldv_mutex_mbox_lock_of_be_adapter == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mbox_lock_of_be_adapter = 2;
  return;
}
}
int ldv_mutex_trylock_mbox_lock_of_be_adapter(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mbox_lock_of_be_adapter == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mbox_lock_of_be_adapter = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mbox_lock_of_be_adapter(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mbox_lock_of_be_adapter == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mbox_lock_of_be_adapter = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mbox_lock_of_be_adapter(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mbox_lock_of_be_adapter == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mbox_lock_of_be_adapter(struct mutex *lock )
{
  {
  if (ldv_mutex_mbox_lock_of_be_adapter == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mbox_lock_of_be_adapter = 1;
  return;
}
}
static int ldv_mutex_mutex_of_device ;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_be_adapter_list_lock = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mbox_lock_of_be_adapter = 1;
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_be_adapter_list_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mbox_lock_of_be_adapter == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
int __VERIFIER_nondet_int(void);
int ___pskb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __get_page_tail(struct page *arg0) {
  return __VERIFIER_nondet_bool();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void __netif_schedule(struct Qdisc *arg0) {
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct net_device));
}
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct page));
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
void dev_kfree_skb_any(struct sk_buff *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
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
void kfree_skb(struct sk_buff *arg0) {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_check_return_value_probe(int arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void local_bh_disable() {
  return;
}
void local_bh_enable() {
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
struct sk_buff *napi_get_frags(struct napi_struct *arg0) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_frags(struct napi_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_device_attach(struct net_device *arg0) {
  return;
}
void netif_device_detach(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_get_num_default_rss_queues() {
  return __VERIFIER_nondet_int();
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_receive_skb(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netif_set_real_num_rx_queues(struct net_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netif_set_real_num_tx_queues(struct net_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netpoll_trap() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_cleanup_aer_uncorrect_error_status(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_disable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_disable_sriov(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix(struct pci_dev *arg0, struct msix_entry *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_sriov(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_ext_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
struct pci_dev *pci_get_device(unsigned int arg0, unsigned int arg1, struct pci_dev *arg2) {
  return ldv_malloc(sizeof(struct pci_dev));
}
void *pci_iomap(struct pci_dev *arg0, int arg1, unsigned long arg2) {
  return ldv_malloc(arg2);
}
void pci_iounmap(struct pci_dev *arg0, void *arg1) {
  return;
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
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
void put_page(struct page *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
}
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
unsigned char *skb_push(struct sk_buff *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
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
