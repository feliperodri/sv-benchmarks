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
struct __anonstruct_ldv_13250_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13252_128 {
   struct __anonstruct_ldv_13250_129 ldv_13250 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13252_128 ldv_13252 ;
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
union __anonunion_ldv_14044_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_14044_134 ldv_14044 ;
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
struct __anonstruct_ldv_14740_136 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_14741_135 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_14740_136 ldv_14740 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_14741_135 ldv_14741 ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct pci_driver;
union __anonunion_ldv_18042_142 {
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
   union __anonunion_ldv_18042_142 ldv_18042 ;
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
union __anonunion_ldv_19109_144 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_19119_148 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_19121_147 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_19119_148 ldv_19119 ;
   int units ;
};
struct __anonstruct_ldv_19123_146 {
   union __anonunion_ldv_19121_147 ldv_19121 ;
   atomic_t _count ;
};
union __anonunion_ldv_19124_145 {
   unsigned long counters ;
   struct __anonstruct_ldv_19123_146 ldv_19123 ;
};
struct __anonstruct_ldv_19125_143 {
   union __anonunion_ldv_19109_144 ldv_19109 ;
   union __anonunion_ldv_19124_145 ldv_19124 ;
};
struct __anonstruct_ldv_19132_150 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_19136_149 {
   struct list_head lru ;
   struct __anonstruct_ldv_19132_150 ldv_19132 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_19141_151 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_19125_143 ldv_19125 ;
   union __anonunion_ldv_19136_149 ldv_19136 ;
   union __anonunion_ldv_19141_151 ldv_19141 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_153 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_152 {
   struct __anonstruct_linear_153 linear ;
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
   union __anonunion_shared_152 shared ;
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
union __anonunion_data_154 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_154 data ;
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
typedef s32 dma_cookie_t;
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
struct __anonstruct_sync_serial_settings_156 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_156 sync_serial_settings;
struct __anonstruct_te1_settings_157 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_157 te1_settings;
struct __anonstruct_raw_hdlc_proto_158 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_158 raw_hdlc_proto;
struct __anonstruct_fr_proto_159 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_159 fr_proto;
struct __anonstruct_fr_proto_pvc_160 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_160 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_161 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_161 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_162 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_162 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_163 {
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
   union __anonunion_ifs_ifsu_163 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_164 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_165 {
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
   union __anonunion_ifr_ifrn_164 ifr_ifrn ;
   union __anonunion_ifr_ifru_165 ifr_ifru ;
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
struct __anonstruct_ldv_24218_168 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_24220_167 {
   struct __anonstruct_ldv_24218_168 ldv_24218 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_24220_167 ldv_24220 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_169 {
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
   union __anonunion_d_u_169 d_u ;
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
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
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
union __anonunion_ldv_25229_171 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_25229_171 ldv_25229 ;
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
union __anonunion_arg_173 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_172 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_173 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_172 read_descriptor_t;
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
union __anonunion_ldv_25663_174 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_25683_175 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_25699_176 {
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
   union __anonunion_ldv_25663_174 ldv_25663 ;
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
   union __anonunion_ldv_25683_175 ldv_25683 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_25699_176 ldv_25699 ;
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
union __anonunion_f_u_177 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_177 f_u ;
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
struct __anonstruct_afs_179 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_178 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_179 afs ;
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
   union __anonunion_fl_u_178 fl_u ;
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
struct __anonstruct_sigset_t_180 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_180 sigset_t;
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
struct __anonstruct__kill_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_183 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_184 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_185 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_186 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_187 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_188 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_181 {
   int _pad[28U] ;
   struct __anonstruct__kill_182 _kill ;
   struct __anonstruct__timer_183 _timer ;
   struct __anonstruct__rt_184 _rt ;
   struct __anonstruct__sigchld_185 _sigchld ;
   struct __anonstruct__sigfault_186 _sigfault ;
   struct __anonstruct__sigpoll_187 _sigpoll ;
   struct __anonstruct__sigsys_188 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_181 _sifields ;
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
union __anonunion_ldv_28285_191 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_28294_192 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_193 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_194 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_28285_191 ldv_28285 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_28294_192 ldv_28294 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_193 type_data ;
   union __anonunion_payload_194 payload ;
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
enum ldv_23620 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_23620 socket_state;
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
   void (*set_peek_off)(struct sock * , int ) ;
};
struct sk_buff;
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
struct __anonstruct_page_211 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_211 page ;
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
struct __anonstruct_ldv_31619_213 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_31620_212 {
   __wsum csum ;
   struct __anonstruct_ldv_31619_213 ldv_31619 ;
};
union __anonunion_ldv_31660_214 {
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
   union __anonunion_ldv_31620_212 ldv_31620 ;
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
   union __anonunion_ldv_31660_214 ldv_31660 ;
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
struct icmpv6msg_mib {
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
union __anonunion_ldv_39000_226 {
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
   union __anonunion_ldv_39000_226 ldv_39000 ;
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
struct mii_ioctl_data {
   __u16 phy_id ;
   __u16 reg_num ;
   __u16 val_in ;
   __u16 val_out ;
};
enum ldv_28886 {
    PHY_INTERFACE_MODE_NA = 0,
    PHY_INTERFACE_MODE_MII = 1,
    PHY_INTERFACE_MODE_GMII = 2,
    PHY_INTERFACE_MODE_SGMII = 3,
    PHY_INTERFACE_MODE_TBI = 4,
    PHY_INTERFACE_MODE_RMII = 5,
    PHY_INTERFACE_MODE_RGMII = 6,
    PHY_INTERFACE_MODE_RGMII_ID = 7,
    PHY_INTERFACE_MODE_RGMII_RXID = 8,
    PHY_INTERFACE_MODE_RGMII_TXID = 9,
    PHY_INTERFACE_MODE_RTBI = 10,
    PHY_INTERFACE_MODE_SMII = 11
} ;
typedef enum ldv_28886 phy_interface_t;
enum ldv_28898 {
    MDIOBUS_ALLOCATED = 1,
    MDIOBUS_REGISTERED = 2,
    MDIOBUS_UNREGISTERED = 3,
    MDIOBUS_RELEASED = 4
} ;
struct mii_bus {
   char const *name ;
   char id[17U] ;
   void *priv ;
   int (*read)(struct mii_bus * , int , int ) ;
   int (*write)(struct mii_bus * , int , int , u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_28898 state ;
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
   void (*adjust_state)(struct net_device * ) ;
};
struct phy_driver {
   u32 phy_id ;
   char *name ;
   unsigned int phy_id_mask ;
   u32 features ;
   u32 flags ;
   int (*config_init)(struct phy_device * ) ;
   int (*probe)(struct phy_device * ) ;
   int (*suspend)(struct phy_device * ) ;
   int (*resume)(struct phy_device * ) ;
   int (*config_aneg)(struct phy_device * ) ;
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
   struct device_driver driver ;
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
union __anonunion_ki_obj_231 {
   void *user ;
   struct task_struct *tsk ;
};
struct kiocb {
   atomic_t ki_users ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_231 ki_obj ;
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
union __anonunion_ldv_42879_233 {
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
   union __anonunion_ldv_42879_233 ldv_42879 ;
};
struct __anonstruct_socket_lock_t_234 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_234 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct_ldv_43098_236 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion_ldv_43099_235 {
   __addrpair skc_addrpair ;
   struct __anonstruct_ldv_43098_236 ldv_43098 ;
};
union __anonunion_ldv_43103_237 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct_ldv_43109_239 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion_ldv_43110_238 {
   __portpair skc_portpair ;
   struct __anonstruct_ldv_43109_239 ldv_43109 ;
};
union __anonunion_ldv_43119_240 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion_ldv_43126_241 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion_ldv_43099_235 ldv_43099 ;
   union __anonunion_ldv_43103_237 ldv_43103 ;
   union __anonunion_ldv_43110_238 ldv_43110 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion_ldv_43119_240 ldv_43119 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion_ldv_43126_241 ldv_43126 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_242 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_242 sk_backlog ;
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
union __anonunion_h_243 {
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
   union __anonunion_h_243 h ;
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
struct tcphdr {
   __be16 source ;
   __be16 dest ;
   __be32 seq ;
   __be32 ack_seq ;
   unsigned char res1 : 4 ;
   unsigned char doff : 4 ;
   unsigned char fin : 1 ;
   unsigned char syn : 1 ;
   unsigned char rst : 1 ;
   unsigned char psh : 1 ;
   unsigned char ack : 1 ;
   unsigned char urg : 1 ;
   unsigned char ece : 1 ;
   unsigned char cwr : 1 ;
   __be16 window ;
   __sum16 check ;
   __be16 urg_ptr ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
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
struct sensor_device_attribute {
   struct device_attribute dev_attr ;
   int index ;
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
struct hwtstamp_config {
   int flags ;
   int tx_type ;
   int rx_filter ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct ptp_clock_time {
   __s64 sec ;
   __u32 nsec ;
   __u32 reserved ;
};
struct ptp_extts_request {
   unsigned int index ;
   unsigned int flags ;
   unsigned int rsv[2U] ;
};
struct ptp_perout_request {
   struct ptp_clock_time start ;
   struct ptp_clock_time period ;
   unsigned int index ;
   unsigned int flags ;
   unsigned int rsv[4U] ;
};
enum ldv_31721 {
    PTP_CLK_REQ_EXTTS = 0,
    PTP_CLK_REQ_PEROUT = 1,
    PTP_CLK_REQ_PPS = 2
} ;
union __anonunion_ldv_47359_261 {
   struct ptp_extts_request extts ;
   struct ptp_perout_request perout ;
};
struct ptp_clock_request {
   enum ldv_31721 type ;
   union __anonunion_ldv_47359_261 ldv_47359 ;
};
struct ptp_clock_info {
   struct module *owner ;
   char name[16U] ;
   s32 max_adj ;
   int n_alarm ;
   int n_ext_ts ;
   int n_per_out ;
   int pps ;
   int (*adjfreq)(struct ptp_clock_info * , s32 ) ;
   int (*adjtime)(struct ptp_clock_info * , s64 ) ;
   int (*gettime)(struct ptp_clock_info * , struct timespec * ) ;
   int (*settime)(struct ptp_clock_info * , struct timespec const * ) ;
   int (*enable)(struct ptp_clock_info * , struct ptp_clock_request * , int ) ;
};
struct ptp_clock;
struct tg3_tx_buffer_desc {
   u32 addr_hi ;
   u32 addr_lo ;
   u32 len_flags ;
   u32 vlan_tag ;
};
struct tg3_rx_buffer_desc {
   u32 addr_hi ;
   u32 addr_lo ;
   u32 idx_len ;
   u32 type_flags ;
   u32 ip_tcp_csum ;
   u32 err_vlan ;
   u32 reserved ;
   u32 opaque ;
};
struct __anonstruct_addrlist_263 {
   u32 addr_hi ;
   u32 addr_lo ;
};
struct tg3_ext_rx_buffer_desc {
   struct __anonstruct_addrlist_263 addrlist[3U] ;
   u32 len2_len1 ;
   u32 resv_len3 ;
   struct tg3_rx_buffer_desc std ;
};
struct tg3_internal_buffer_desc {
   u32 addr_hi ;
   u32 addr_lo ;
   u32 nic_mbuf ;
   u16 len ;
   u16 cqid_sqid ;
   u32 flags ;
   u32 __cookie1 ;
   u32 __cookie2 ;
   u32 __cookie3 ;
};
struct __anonstruct_idx_264 {
   u16 rx_producer ;
   u16 tx_consumer ;
};
struct tg3_hw_status {
   u32 status ;
   u32 status_tag ;
   u16 rx_jumbo_consumer ;
   u16 rx_consumer ;
   u16 rx_mini_consumer ;
   u16 reserved ;
   struct __anonstruct_idx_264 idx[16U] ;
};
struct __anonstruct_tg3_stat64_t_265 {
   u32 high ;
   u32 low ;
};
typedef struct __anonstruct_tg3_stat64_t_265 tg3_stat64_t;
struct tg3_hw_stats {
   u8 __reserved0[256U] ;
   tg3_stat64_t rx_octets ;
   u64 __reserved1 ;
   tg3_stat64_t rx_fragments ;
   tg3_stat64_t rx_ucast_packets ;
   tg3_stat64_t rx_mcast_packets ;
   tg3_stat64_t rx_bcast_packets ;
   tg3_stat64_t rx_fcs_errors ;
   tg3_stat64_t rx_align_errors ;
   tg3_stat64_t rx_xon_pause_rcvd ;
   tg3_stat64_t rx_xoff_pause_rcvd ;
   tg3_stat64_t rx_mac_ctrl_rcvd ;
   tg3_stat64_t rx_xoff_entered ;
   tg3_stat64_t rx_frame_too_long_errors ;
   tg3_stat64_t rx_jabbers ;
   tg3_stat64_t rx_undersize_packets ;
   tg3_stat64_t rx_in_length_errors ;
   tg3_stat64_t rx_out_length_errors ;
   tg3_stat64_t rx_64_or_less_octet_packets ;
   tg3_stat64_t rx_65_to_127_octet_packets ;
   tg3_stat64_t rx_128_to_255_octet_packets ;
   tg3_stat64_t rx_256_to_511_octet_packets ;
   tg3_stat64_t rx_512_to_1023_octet_packets ;
   tg3_stat64_t rx_1024_to_1522_octet_packets ;
   tg3_stat64_t rx_1523_to_2047_octet_packets ;
   tg3_stat64_t rx_2048_to_4095_octet_packets ;
   tg3_stat64_t rx_4096_to_8191_octet_packets ;
   tg3_stat64_t rx_8192_to_9022_octet_packets ;
   u64 __unused0[37U] ;
   tg3_stat64_t tx_octets ;
   u64 __reserved2 ;
   tg3_stat64_t tx_collisions ;
   tg3_stat64_t tx_xon_sent ;
   tg3_stat64_t tx_xoff_sent ;
   tg3_stat64_t tx_flow_control ;
   tg3_stat64_t tx_mac_errors ;
   tg3_stat64_t tx_single_collisions ;
   tg3_stat64_t tx_mult_collisions ;
   tg3_stat64_t tx_deferred ;
   u64 __reserved3 ;
   tg3_stat64_t tx_excessive_collisions ;
   tg3_stat64_t tx_late_collisions ;
   tg3_stat64_t tx_collide_2times ;
   tg3_stat64_t tx_collide_3times ;
   tg3_stat64_t tx_collide_4times ;
   tg3_stat64_t tx_collide_5times ;
   tg3_stat64_t tx_collide_6times ;
   tg3_stat64_t tx_collide_7times ;
   tg3_stat64_t tx_collide_8times ;
   tg3_stat64_t tx_collide_9times ;
   tg3_stat64_t tx_collide_10times ;
   tg3_stat64_t tx_collide_11times ;
   tg3_stat64_t tx_collide_12times ;
   tg3_stat64_t tx_collide_13times ;
   tg3_stat64_t tx_collide_14times ;
   tg3_stat64_t tx_collide_15times ;
   tg3_stat64_t tx_ucast_packets ;
   tg3_stat64_t tx_mcast_packets ;
   tg3_stat64_t tx_bcast_packets ;
   tg3_stat64_t tx_carrier_sense_errors ;
   tg3_stat64_t tx_discards ;
   tg3_stat64_t tx_errors ;
   u64 __unused1[31U] ;
   tg3_stat64_t COS_rx_packets[16U] ;
   tg3_stat64_t COS_rx_filter_dropped ;
   tg3_stat64_t dma_writeq_full ;
   tg3_stat64_t dma_write_prioq_full ;
   tg3_stat64_t rxbds_empty ;
   tg3_stat64_t rx_discards ;
   tg3_stat64_t rx_errors ;
   tg3_stat64_t rx_threshold_hit ;
   u64 __unused2[9U] ;
   tg3_stat64_t COS_out_packets[16U] ;
   tg3_stat64_t dma_readq_full ;
   tg3_stat64_t dma_read_prioq_full ;
   tg3_stat64_t tx_comp_queue_full ;
   tg3_stat64_t ring_set_send_prod_index ;
   tg3_stat64_t ring_status_update ;
   tg3_stat64_t nic_irqs ;
   tg3_stat64_t nic_avoided_irqs ;
   tg3_stat64_t nic_tx_threshold_hit ;
   tg3_stat64_t mbuf_lwm_thresh_hit ;
   u8 __reserved4[312U] ;
};
struct tg3_ocir {
   u32 signature ;
   u16 version_flags ;
   u16 refresh_int ;
   u32 refresh_tmr ;
   u32 update_tmr ;
   u32 dst_base_addr ;
   u16 src_hdr_offset ;
   u16 src_hdr_length ;
   u16 src_data_offset ;
   u16 src_data_length ;
   u16 dst_hdr_offset ;
   u16 dst_data_offset ;
   u16 dst_reg_upd_offset ;
   u16 dst_sem_offset ;
   u32 reserved1[2U] ;
   u32 port0_flags ;
   u32 port1_flags ;
   u32 port2_flags ;
   u32 port3_flags ;
   u32 reserved2[1U] ;
};
struct ring_info {
   u8 *data ;
   dma_addr_t mapping ;
};
struct tg3_tx_ring_info {
   struct sk_buff *skb ;
   dma_addr_t mapping ;
   bool fragmented ;
};
struct tg3_link_config {
   u32 advertising ;
   u16 speed ;
   u8 duplex ;
   u8 autoneg ;
   u8 flowctrl ;
   u8 active_flowctrl ;
   u8 active_duplex ;
   u16 active_speed ;
   u32 rmt_adv ;
};
struct tg3_bufmgr_config {
   u32 mbuf_read_dma_low_water ;
   u32 mbuf_mac_rx_low_water ;
   u32 mbuf_high_water ;
   u32 mbuf_read_dma_low_water_jumbo ;
   u32 mbuf_mac_rx_low_water_jumbo ;
   u32 mbuf_high_water_jumbo ;
   u32 dma_low_water ;
   u32 dma_high_water ;
};
struct tg3_ethtool_stats {
   u64 rx_octets ;
   u64 rx_fragments ;
   u64 rx_ucast_packets ;
   u64 rx_mcast_packets ;
   u64 rx_bcast_packets ;
   u64 rx_fcs_errors ;
   u64 rx_align_errors ;
   u64 rx_xon_pause_rcvd ;
   u64 rx_xoff_pause_rcvd ;
   u64 rx_mac_ctrl_rcvd ;
   u64 rx_xoff_entered ;
   u64 rx_frame_too_long_errors ;
   u64 rx_jabbers ;
   u64 rx_undersize_packets ;
   u64 rx_in_length_errors ;
   u64 rx_out_length_errors ;
   u64 rx_64_or_less_octet_packets ;
   u64 rx_65_to_127_octet_packets ;
   u64 rx_128_to_255_octet_packets ;
   u64 rx_256_to_511_octet_packets ;
   u64 rx_512_to_1023_octet_packets ;
   u64 rx_1024_to_1522_octet_packets ;
   u64 rx_1523_to_2047_octet_packets ;
   u64 rx_2048_to_4095_octet_packets ;
   u64 rx_4096_to_8191_octet_packets ;
   u64 rx_8192_to_9022_octet_packets ;
   u64 tx_octets ;
   u64 tx_collisions ;
   u64 tx_xon_sent ;
   u64 tx_xoff_sent ;
   u64 tx_flow_control ;
   u64 tx_mac_errors ;
   u64 tx_single_collisions ;
   u64 tx_mult_collisions ;
   u64 tx_deferred ;
   u64 tx_excessive_collisions ;
   u64 tx_late_collisions ;
   u64 tx_collide_2times ;
   u64 tx_collide_3times ;
   u64 tx_collide_4times ;
   u64 tx_collide_5times ;
   u64 tx_collide_6times ;
   u64 tx_collide_7times ;
   u64 tx_collide_8times ;
   u64 tx_collide_9times ;
   u64 tx_collide_10times ;
   u64 tx_collide_11times ;
   u64 tx_collide_12times ;
   u64 tx_collide_13times ;
   u64 tx_collide_14times ;
   u64 tx_collide_15times ;
   u64 tx_ucast_packets ;
   u64 tx_mcast_packets ;
   u64 tx_bcast_packets ;
   u64 tx_carrier_sense_errors ;
   u64 tx_discards ;
   u64 tx_errors ;
   u64 dma_writeq_full ;
   u64 dma_write_prioq_full ;
   u64 rxbds_empty ;
   u64 rx_discards ;
   u64 rx_errors ;
   u64 rx_threshold_hit ;
   u64 dma_readq_full ;
   u64 dma_read_prioq_full ;
   u64 tx_comp_queue_full ;
   u64 ring_set_send_prod_index ;
   u64 ring_status_update ;
   u64 nic_irqs ;
   u64 nic_avoided_irqs ;
   u64 nic_tx_threshold_hit ;
   u64 mbuf_lwm_thresh_hit ;
};
struct tg3_rx_prodring_set {
   u32 rx_std_prod_idx ;
   u32 rx_std_cons_idx ;
   u32 rx_jmb_prod_idx ;
   u32 rx_jmb_cons_idx ;
   struct tg3_rx_buffer_desc *rx_std ;
   struct tg3_ext_rx_buffer_desc *rx_jmb ;
   struct ring_info *rx_std_buffers ;
   struct ring_info *rx_jmb_buffers ;
   dma_addr_t rx_std_mapping ;
   dma_addr_t rx_jmb_mapping ;
};
struct tg3;
struct tg3_napi {
   struct napi_struct napi ;
   struct tg3 *tp ;
   struct tg3_hw_status *hw_status ;
   u32 chk_msi_cnt ;
   u32 last_tag ;
   u32 last_irq_tag ;
   u32 int_mbox ;
   u32 coal_now ;
   u32 consmbox ;
   u32 rx_rcb_ptr ;
   u32 last_rx_cons ;
   u16 *rx_rcb_prod_idx ;
   struct tg3_rx_prodring_set prodring ;
   struct tg3_rx_buffer_desc *rx_rcb ;
   u32 tx_prod ;
   u32 tx_cons ;
   u32 tx_pending ;
   u32 last_tx_cons ;
   u32 prodmbox ;
   struct tg3_tx_buffer_desc *tx_ring ;
   struct tg3_tx_ring_info *tx_buffers ;
   dma_addr_t status_mapping ;
   dma_addr_t rx_rcb_mapping ;
   dma_addr_t tx_desc_mapping ;
   char irq_lbl[16U] ;
   unsigned int irq_vec ;
};
enum TG3_FLAGS {
    TG3_FLAG_TAGGED_STATUS = 0,
    TG3_FLAG_TXD_MBOX_HWBUG = 1,
    TG3_FLAG_USE_LINKCHG_REG = 2,
    TG3_FLAG_ERROR_PROCESSED = 3,
    TG3_FLAG_ENABLE_ASF = 4,
    TG3_FLAG_ASPM_WORKAROUND = 5,
    TG3_FLAG_POLL_SERDES = 6,
    TG3_FLAG_MBOX_WRITE_REORDER = 7,
    TG3_FLAG_PCIX_TARGET_HWBUG = 8,
    TG3_FLAG_WOL_SPEED_100MB = 9,
    TG3_FLAG_WOL_ENABLE = 10,
    TG3_FLAG_EEPROM_WRITE_PROT = 11,
    TG3_FLAG_NVRAM = 12,
    TG3_FLAG_NVRAM_BUFFERED = 13,
    TG3_FLAG_SUPPORT_MSI = 14,
    TG3_FLAG_SUPPORT_MSIX = 15,
    TG3_FLAG_USING_MSI = 16,
    TG3_FLAG_USING_MSIX = 17,
    TG3_FLAG_PCIX_MODE = 18,
    TG3_FLAG_PCI_HIGH_SPEED = 19,
    TG3_FLAG_PCI_32BIT = 20,
    TG3_FLAG_SRAM_USE_CONFIG = 21,
    TG3_FLAG_TX_RECOVERY_PENDING = 22,
    TG3_FLAG_WOL_CAP = 23,
    TG3_FLAG_JUMBO_RING_ENABLE = 24,
    TG3_FLAG_PAUSE_AUTONEG = 25,
    TG3_FLAG_CPMU_PRESENT = 26,
    TG3_FLAG_40BIT_DMA_BUG = 27,
    TG3_FLAG_BROKEN_CHECKSUMS = 28,
    TG3_FLAG_JUMBO_CAPABLE = 29,
    TG3_FLAG_CHIP_RESETTING = 30,
    TG3_FLAG_INIT_COMPLETE = 31,
    TG3_FLAG_MAX_RXPEND_64 = 32,
    TG3_FLAG_PCI_EXPRESS = 33,
    TG3_FLAG_ASF_NEW_HANDSHAKE = 34,
    TG3_FLAG_HW_AUTONEG = 35,
    TG3_FLAG_IS_NIC = 36,
    TG3_FLAG_FLASH = 37,
    TG3_FLAG_FW_TSO = 38,
    TG3_FLAG_HW_TSO_1 = 39,
    TG3_FLAG_HW_TSO_2 = 40,
    TG3_FLAG_HW_TSO_3 = 41,
    TG3_FLAG_TSO_CAPABLE = 42,
    TG3_FLAG_TSO_BUG = 43,
    TG3_FLAG_ICH_WORKAROUND = 44,
    TG3_FLAG_1SHOT_MSI = 45,
    TG3_FLAG_NO_FWARE_REPORTED = 46,
    TG3_FLAG_NO_NVRAM_ADDR_TRANS = 47,
    TG3_FLAG_ENABLE_APE = 48,
    TG3_FLAG_PROTECTED_NVRAM = 49,
    TG3_FLAG_5701_DMA_BUG = 50,
    TG3_FLAG_USE_PHYLIB = 51,
    TG3_FLAG_MDIOBUS_INITED = 52,
    TG3_FLAG_LRG_PROD_RING_CAP = 53,
    TG3_FLAG_RGMII_INBAND_DISABLE = 54,
    TG3_FLAG_RGMII_EXT_IBND_RX_EN = 55,
    TG3_FLAG_RGMII_EXT_IBND_TX_EN = 56,
    TG3_FLAG_CLKREQ_BUG = 57,
    TG3_FLAG_NO_NVRAM = 58,
    TG3_FLAG_ENABLE_RSS = 59,
    TG3_FLAG_ENABLE_TSS = 60,
    TG3_FLAG_SHORT_DMA_BUG = 61,
    TG3_FLAG_USE_JUMBO_BDFLAG = 62,
    TG3_FLAG_L1PLLPD_EN = 63,
    TG3_FLAG_APE_HAS_NCSI = 64,
    TG3_FLAG_TX_TSTAMP_EN = 65,
    TG3_FLAG_4K_FIFO_LIMIT = 66,
    TG3_FLAG_5719_RDMA_BUG = 67,
    TG3_FLAG_RESET_TASK_PENDING = 68,
    TG3_FLAG_PTP_CAPABLE = 69,
    TG3_FLAG_5705_PLUS = 70,
    TG3_FLAG_IS_5788 = 71,
    TG3_FLAG_5750_PLUS = 72,
    TG3_FLAG_5780_CLASS = 73,
    TG3_FLAG_5755_PLUS = 74,
    TG3_FLAG_57765_PLUS = 75,
    TG3_FLAG_57765_CLASS = 76,
    TG3_FLAG_5717_PLUS = 77,
    TG3_FLAG_IS_SSB_CORE = 78,
    TG3_FLAG_FLUSH_POSTED_WRITES = 79,
    TG3_FLAG_ROBOSWITCH = 80,
    TG3_FLAG_ONE_DMA_AT_ONCE = 81,
    TG3_FLAG_RGMII_MODE = 82,
    TG3_FLAG_NUMBER_OF_FLAGS = 83
} ;
struct tg3_firmware_hdr {
   __be32 version ;
   __be32 base_addr ;
   __be32 len ;
};
union __anonunion_ldv_47846_266 {
   unsigned long phy_crc_errors ;
   unsigned long last_event_jiffies ;
};
struct tg3 {
   unsigned int irq_sync ;
   spinlock_t lock ;
   spinlock_t indirect_lock ;
   u32 (*read32)(struct tg3 * , u32 ) ;
   void (*write32)(struct tg3 * , u32 , u32 ) ;
   u32 (*read32_mbox)(struct tg3 * , u32 ) ;
   void (*write32_mbox)(struct tg3 * , u32 , u32 ) ;
   void *regs ;
   void *aperegs ;
   struct net_device *dev ;
   struct pci_dev *pdev ;
   u32 coal_now ;
   u32 msg_enable ;
   struct ptp_clock_info ptp_info ;
   struct ptp_clock *ptp_clock ;
   s64 ptp_adjust ;
   void (*write32_tx_mbox)(struct tg3 * , u32 , u32 ) ;
   u32 dma_limit ;
   u32 txq_req ;
   u32 txq_cnt ;
   u32 txq_max ;
   struct tg3_napi napi[5U] ;
   void (*write32_rx_mbox)(struct tg3 * , u32 , u32 ) ;
   u32 rx_copy_thresh ;
   u32 rx_std_ring_mask ;
   u32 rx_jmb_ring_mask ;
   u32 rx_ret_ring_mask ;
   u32 rx_pending ;
   u32 rx_jumbo_pending ;
   u32 rx_std_max_post ;
   u32 rx_offset ;
   u32 rx_pkt_map_sz ;
   u32 rxq_req ;
   u32 rxq_cnt ;
   u32 rxq_max ;
   bool rx_refill ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   struct rtnl_link_stats64 net_stats_prev ;
   struct tg3_ethtool_stats estats_prev ;
   unsigned long tg3_flags[2U] ;
   union __anonunion_ldv_47846_266 ldv_47846 ;
   struct timer_list timer ;
   u16 timer_counter ;
   u16 timer_multiplier ;
   u32 timer_offset ;
   u16 asf_counter ;
   u16 asf_multiplier ;
   u32 serdes_counter ;
   struct tg3_link_config link_config ;
   struct tg3_bufmgr_config bufmgr_config ;
   u32 rx_mode ;
   u32 tx_mode ;
   u32 mac_mode ;
   u32 mi_mode ;
   u32 misc_host_ctrl ;
   u32 grc_mode ;
   u32 grc_local_ctrl ;
   u32 dma_rwctrl ;
   u32 coalesce_mode ;
   u32 pwrmgmt_thresh ;
   u32 rxptpctl ;
   u32 pci_chip_rev_id ;
   u16 pci_cmd ;
   u8 pci_cacheline_sz ;
   u8 pci_lat_timer ;
   int pci_fn ;
   int pm_cap ;
   int msi_cap ;
   int pcix_cap ;
   int pcie_readrq ;
   struct mii_bus *mdio_bus ;
   int mdio_irq[32U] ;
   int old_link ;
   u8 phy_addr ;
   u8 phy_ape_lock ;
   u32 phy_id ;
   u32 phy_flags ;
   u32 led_ctrl ;
   u32 phy_otp ;
   u32 setlpicnt ;
   u8 rss_ind_tbl[128U] ;
   char board_part_number[24U] ;
   char fw_ver[32U] ;
   u32 nic_sram_data_cfg ;
   u32 pci_clock_ctrl ;
   struct pci_dev *pdev_peer ;
   struct tg3_hw_stats *hw_stats ;
   dma_addr_t stats_mapping ;
   struct work_struct reset_task ;
   int nvram_lock_cnt ;
   u32 nvram_size ;
   u32 nvram_pagesize ;
   u32 nvram_jedecnum ;
   unsigned int irq_max ;
   unsigned int irq_cnt ;
   struct ethtool_coalesce coal ;
   char const *fw_needed ;
   struct firmware const *fw ;
   u32 fw_len ;
   struct device *hwmon_dev ;
   bool link_up ;
};
struct __anonstruct_ethtool_stats_keys_267 {
   char const string[32U] ;
};
struct __anonstruct_ethtool_test_keys_268 {
   char const string[32U] ;
};
struct tg3_fiber_aneginfo {
   int state ;
   u32 flags ;
   unsigned long link_time ;
   unsigned long cur_time ;
   u32 ability_match_cfg ;
   int ability_match_count ;
   char ability_match ;
   char idle_match ;
   char ack_match ;
   u32 txconfig ;
   u32 rxconfig ;
};
struct __anonstruct_reg_tbl_272 {
   u16 offset ;
   u16 flags ;
   u32 read_mask ;
   u32 write_mask ;
};
struct mem_entry {
   u32 offset ;
   u32 len ;
};
struct subsys_tbl_ent {
   u16 subsys_vendor ;
   u16 subsys_devid ;
   u32 phy_id ;
};
struct tg3_dev_id {
   u32 vendor ;
   u32 device ;
   u32 rev ;
};
struct tg3_dev_id___0 {
   u32 vendor ;
   u32 device ;
};
typedef int ldv_func_ret_type___2;
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
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
__inline static unsigned int __arch_hweight32(unsigned int w )
{
  unsigned int res ;
  {
  res = 0U;
  __asm__ ("661:\n\tcall __sw_hweight32\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (4*32+23)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0xf3,0x40,0x0f,0xb8,0xc7\n6641:\n\t.popsection": "=a" (res): "D" (w));
  return (res);
}
}
__inline static unsigned int __arch_hweight8(unsigned int w )
{
  unsigned int tmp ;
  {
  tmp = __arch_hweight32(w & 255U);
  return (tmp);
}
}
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u32 __fswab32(__u32 val )
{
  __u32 tmp ;
  {
  tmp = __arch_swab32(val);
  return (tmp);
}
}
extern int printk(char const * , ...) ;
extern void might_fault(void) ;
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
extern struct pv_irq_ops pv_irq_ops ;
extern void __bad_percpu_size(void) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strcat(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern char *strncat(char * , char const * , __kernel_size_t ) ;
extern int __bitmap_weight(unsigned long const * , int ) ;
__inline static int bitmap_weight(unsigned long const *src , int nbits )
{
  int tmp___0 ;
  {
  tmp___0 = __bitmap_weight(src, nbits);
  return (tmp___0);
}
}
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
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
__inline static u64 div_u64_rem(u64 dividend , u32 divisor , u32 *remainder )
{
  {
  *remainder = (u32 )(dividend % (u64 )divisor);
  return (dividend / (u64 )divisor);
}
}
__inline static u64 div_u64(u64 dividend , u32 divisor )
{
  u32 remainder ;
  u64 tmp ;
  {
  tmp = div_u64_rem(dividend, divisor, & remainder);
  return (tmp);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp);
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
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
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
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
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
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->ldv_6014.rlock);
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
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  _raw_spin_unlock_bh(& lock->ldv_6014.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6014.rlock, flags);
  return;
}
}
__inline static s64 timespec_to_ns(struct timespec const *ts )
{
  {
  return ((long long )ts->tv_sec * 1000000000LL + (long long )ts->tv_nsec);
}
}
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_usecs(unsigned long const ) ;
extern unsigned long usecs_to_jiffies(unsigned int const ) ;
__inline static ktime_t ns_to_ktime(u64 ns )
{
  ktime_t ktime_zero ;
  ktime_t __constr_expr_0 ;
  {
  ktime_zero.tv64 = 0LL;
  __constr_expr_0.tv64 = (long long )((unsigned long long )ktime_zero.tv64 + ns);
  return (__constr_expr_0);
}
}
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(4096, wq, work);
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work(system_wq, work);
  return (tmp);
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
extern void iounmap(void volatile * ) ;
extern int cpu_number ;
extern void __bad_size_call_parameter(void) ;
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
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
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
extern void __udelay(unsigned long ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___1 = ldv__builtin_expect(sz == -1, 1L);
  if (tmp___1 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___2 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___2 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __ret_warn_on = 1;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_fmt("/work/ldvuser/exper_fp/inst/current/envs/linux-3.10-rc1.tar/linux-3.10-rc1/arch/x86/include/asm/uaccess_64.h",
                          66, "Buffer overflow detected!\n");
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
  }
  return (n);
}
}
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{
  unsigned long tmp ;
  {
  might_fault();
  tmp = _copy_to_user(dst, src, size);
  return ((int )tmp);
}
}
extern void synchronize_irq(unsigned int ) ;
extern ktime_t ktime_get_real(void) ;
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
__inline static bool device_can_wakeup(struct device *dev )
{
  {
  return ((int )dev->power.can_wakeup != 0);
}
}
__inline static bool device_may_wakeup(struct device *dev )
{
  {
  return ((bool )((unsigned int )*((unsigned char *)dev + 292UL) != 0U && (unsigned long )dev->power.wakeup != (unsigned long )((struct wakeup_source *)0)));
}
}
extern void device_set_wakeup_capable(struct device * , bool ) ;
extern int device_set_wakeup_enable(struct device * , bool ) ;
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
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern void pci_dev_put(struct pci_dev * ) ;
extern int pci_find_capability(struct pci_dev * , int ) ;
extern struct pci_dev *pci_get_device(unsigned int , unsigned int , struct pci_dev * ) ;
extern struct pci_dev *pci_get_slot(struct pci_bus * , unsigned int ) ;
extern int pci_dev_present(struct pci_device_id const * ) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
__inline static int pci_read_config_byte(struct pci_dev const *dev , int where ,
                                         u8 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
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
__inline static int pci_write_config_byte(struct pci_dev const *dev , int where ,
                                          u8 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_byte(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
__inline static int pci_write_config_word(struct pci_dev const *dev , int where ,
                                          u16 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
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
extern int pcie_capability_read_word(struct pci_dev * , int , u16 * ) ;
extern int pcie_capability_write_word(struct pci_dev * , int , u16 ) ;
extern int pcie_capability_clear_and_set_word(struct pci_dev * , int , u16 , u16 ) ;
__inline static int pcie_capability_set_word(struct pci_dev *dev , int pos , u16 set )
{
  int tmp ;
  {
  tmp = pcie_capability_clear_and_set_word(dev, pos, 0, (int )set);
  return (tmp);
}
}
__inline static int pcie_capability_clear_word(struct pci_dev *dev , int pos , u16 clear )
{
  int tmp ;
  {
  tmp = pcie_capability_clear_and_set_word(dev, pos, (int )clear, 0);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern int pci_wake_from_d3(struct pci_dev * , bool ) ;
extern ssize_t pci_read_vpd(struct pci_dev * , loff_t , size_t , void * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
extern int pci_enable_msi_block(struct pci_dev * , unsigned int ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
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
__inline static struct page *compound_head(struct page *page )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = PageTail((struct page const *)page);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    return (page->ldv_19141.first_page);
  } else {
  }
  return (page);
}
}
__inline static struct page *virt_to_head_page(void const *x )
{
  struct page *page ;
  unsigned long tmp ;
  struct page *tmp___0 ;
  {
  tmp = __phys_addr((unsigned long )x);
  page = 0xffffea0000000000UL + (tmp >> 12);
  tmp___0 = compound_head(page);
  return (tmp___0);
}
}
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
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
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
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
    ldv_22561: ;
    goto ldv_22561;
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
    ldv_22570: ;
    goto ldv_22570;
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
    ldv_22604: ;
    goto ldv_22604;
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
    ldv_22612: ;
    goto ldv_22612;
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
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
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
                         "i" (103), "i" (12UL));
    ldv_22620: ;
    goto ldv_22620;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  return;
}
}
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir )
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
                         "i" (115), "i" (12UL));
    ldv_22628: ;
    goto ldv_22628;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
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
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                             ptr, size, (enum dma_data_direction )direction, 0);
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                         dma_addr, size, (enum dma_data_direction )direction, 0);
  return;
}
}
__inline static void pci_unmap_page(struct pci_dev *hwdev , dma_addr_t dma_address ,
                                    size_t size , int direction )
{
  {
  dma_unmap_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                 dma_address, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static void pci_dma_sync_single_for_cpu(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                 size_t size , int direction )
{
  {
  dma_sync_single_for_cpu((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                          dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static void pci_dma_sync_single_for_device(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                    size_t size , int direction )
{
  {
  dma_sync_single_for_device((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                             dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static int pci_dma_mapping_error(struct pci_dev *pdev , dma_addr_t dma_addr )
{
  int tmp ;
  {
  tmp = dma_mapping_error(& pdev->dev, dma_addr);
  return (tmp);
}
}
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_mask(& dev->dev, mask);
  return (tmp);
}
}
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
  return (tmp);
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
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
extern void *pci_ioremap_bar(struct pci_dev * , int ) ;
__inline static int pci_pcie_cap(struct pci_dev *dev )
{
  {
  return ((int )dev->pcie_cap);
}
}
__inline static bool pci_is_pcie(struct pci_dev *dev )
{
  int tmp ;
  {
  tmp = pci_pcie_cap(dev);
  return (tmp != 0);
}
}
__inline static u16 pci_vpd_lrdt_size(u8 const *lrdt )
{
  {
  return ((int )((u16 )*(lrdt + 1UL)) + ((int )((u16 )*(lrdt + 2UL)) << 8U));
}
}
__inline static u8 pci_vpd_info_field_size(u8 const *info_field )
{
  {
  return ((u8 )*(info_field + 2UL));
}
}
extern int pci_vpd_find_tag(u8 const * , unsigned int , unsigned int , u8 ) ;
extern int pci_vpd_find_info_keyword(u8 const * , unsigned int , unsigned int ,
                                     char const * ) ;
__inline static void dql_queued(struct dql *dql , unsigned int count )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(count > 268435455U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/dynamic_queue_limits.h"),
                         "i" (74), "i" (12UL));
    ldv_23898: ;
    goto ldv_23898;
  } else {
  }
  dql->num_queued = dql->num_queued + count;
  dql->last_obj_cnt = count;
  return;
}
}
__inline static int dql_avail(struct dql const *dql )
{
  {
  return ((int )((unsigned int )dql->adj_limit - (unsigned int )dql->num_queued));
}
}
extern void dql_completed(struct dql * , unsigned int ) ;
extern void dql_reset(struct dql * ) ;
__inline static __sum16 csum_fold(__wsum sum )
{
  {
  __asm__ ("  addl %1,%0\n  adcl $0xffff,%0": "=r" (sum): "r" (sum << 16), "0" (sum & 4294901760U));
  return ((__sum16 )(~ sum >> 16));
}
}
__inline static __wsum csum_tcpudp_nofold(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  {
  __asm__ ("  addl %1, %0\n  adcl %2, %0\n  adcl %3, %0\n  adcl $0, %0\n": "=r" (sum): "g" (daddr),
            "g" (saddr), "g" (((int )len + (int )proto) << 8), "0" (sum));
  return (sum);
}
}
__inline static __sum16 csum_tcpudp_magic(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  __wsum tmp ;
  __sum16 tmp___0 ;
  {
  tmp = csum_tcpudp_nofold(saddr, daddr, (int )len, (int )proto, sum);
  tmp___0 = csum_fold(tmp);
  return (tmp___0);
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
extern void consume_skb(struct sk_buff * ) ;
extern struct sk_buff *build_skb(void * , unsigned int ) ;
extern struct sk_buff *skb_copy(struct sk_buff const * , gfp_t ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
extern struct sk_buff *skb_copy_expand(struct sk_buff const * , int , int , gfp_t ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static struct skb_shared_hwtstamps *skb_hwtstamps(struct sk_buff *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  return (& ((struct skb_shared_info *)tmp)->hwtstamps);
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
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static int skb_tailroom(struct sk_buff const *skb )
{
  bool tmp ;
  {
  tmp = skb_is_nonlinear(skb);
  return ((int )tmp ? 0 : (int )((unsigned int )skb->end - (unsigned int )skb->tail));
}
}
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static int skb_transport_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
extern void *netdev_alloc_frag(unsigned int ) ;
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb(dev, length, 32U);
  return (tmp);
}
}
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
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
extern void skb_clone_tx_timestamp(struct sk_buff * ) ;
extern void skb_tstamp_tx(struct sk_buff * , struct skb_shared_hwtstamps * ) ;
__inline static void sw_tx_timestamp(struct sk_buff *skb )
{
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  if (((int )((struct skb_shared_info *)tmp)->tx_flags & 2) != 0) {
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    if (((int )((struct skb_shared_info *)tmp___0)->tx_flags & 4) == 0) {
      skb_tstamp_tx(skb, 0);
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void skb_tx_timestamp(struct sk_buff *skb )
{
  {
  skb_clone_tx_timestamp(skb);
  sw_tx_timestamp(skb);
  return;
}
}
__inline static u16 skb_get_queue_mapping(struct sk_buff const *skb )
{
  {
  return ((u16 )skb->queue_mapping);
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
__inline static u32 ethtool_rxfh_indir_default(u32 index , u32 n_rx_rings )
{
  {
  return (index % n_rx_rings);
}
}
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
  goto ldv_38580;
  ldv_38579:
  msleep(1U);
  ldv_38580:
  tmp = test_and_set_bit(0, (unsigned long volatile *)(& n->state));
  if (tmp != 0) {
    goto ldv_38579;
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
    ldv_38585: ;
    goto ldv_38585;
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
extern void netif_napi_del(struct napi_struct * ) ;
extern int dev_close(struct net_device * ) ;
extern void free_netdev(struct net_device * ) ;
extern int netpoll_trap(void) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_schedule_queue(struct netdev_queue *txq )
{
  {
  if ((txq->state & 3UL) == 0UL) {
    __netif_schedule(txq->qdisc);
  } else {
  }
  return;
}
}
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
  goto ldv_39363;
  ldv_39362:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_start_queue(txq);
  i = i + 1U;
  ldv_39363: ;
  if (dev->num_tx_queues > i) {
    goto ldv_39362;
  } else {
  }
  return;
}
}
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = netpoll_trap();
  if (tmp != 0) {
    netif_tx_start_queue(dev_queue);
    return;
  } else {
  }
  tmp___0 = test_and_clear_bit(0, (unsigned long volatile *)(& dev_queue->state));
  if (tmp___0 != 0) {
    __netif_schedule(dev_queue->qdisc);
  } else {
  }
  return;
}
}
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  return;
}
}
__inline static void netif_tx_wake_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_39377;
  ldv_39376:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_wake_queue(txq);
  i = i + 1U;
  ldv_39377: ;
  if (dev->num_tx_queues > i) {
    goto ldv_39376;
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
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
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
__inline static void netdev_tx_sent_queue(struct netdev_queue *dev_queue , unsigned int bytes )
{
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  dql_queued(& dev_queue->dql, bytes);
  tmp = dql_avail((struct dql const *)(& dev_queue->dql));
  tmp___0 = ldv__builtin_expect(tmp >= 0, 1L);
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  set_bit(1U, (unsigned long volatile *)(& dev_queue->state));
  __asm__ volatile ("mfence": : : "memory");
  tmp___1 = dql_avail((struct dql const *)(& dev_queue->dql));
  tmp___2 = ldv__builtin_expect(tmp___1 >= 0, 0L);
  if (tmp___2 != 0L) {
    clear_bit(1, (unsigned long volatile *)(& dev_queue->state));
  } else {
  }
  return;
}
}
__inline static void netdev_tx_completed_queue(struct netdev_queue *dev_queue , unsigned int pkts ,
                                               unsigned int bytes )
{
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv__builtin_expect(bytes == 0U, 0L);
  if (tmp != 0L) {
    return;
  } else {
  }
  dql_completed(& dev_queue->dql, bytes);
  __asm__ volatile ("mfence": : : "memory");
  tmp___0 = dql_avail((struct dql const *)(& dev_queue->dql));
  if (tmp___0 < 0) {
    return;
  } else {
  }
  tmp___1 = test_and_clear_bit(1, (unsigned long volatile *)(& dev_queue->state));
  if (tmp___1 != 0) {
    netif_schedule_queue(dev_queue);
  } else {
  }
  return;
}
}
__inline static void netdev_tx_reset_queue(struct netdev_queue *q )
{
  {
  clear_bit(1, (unsigned long volatile *)(& q->state));
  dql_reset(& q->dql);
  return;
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
extern int netif_set_real_num_tx_queues(struct net_device * , unsigned int ) ;
extern int netif_set_real_num_rx_queues(struct net_device * , unsigned int ) ;
extern int netif_get_num_default_rss_queues(void) ;
extern void dev_kfree_skb_any(struct sk_buff * ) ;
extern gro_result_t napi_gro_receive(struct napi_struct * , struct sk_buff * ) ;
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(2U, (unsigned long const volatile *)(& dev->state));
  return (tmp == 0);
}
}
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
  goto ldv_39888;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39888;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39888;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39888;
  default:
  __bad_percpu_size();
  }
  ldv_39888:
  pscr_ret__ = pfo_ret__;
  goto ldv_39894;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39898;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39898;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39898;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39898;
  default:
  __bad_percpu_size();
  }
  ldv_39898:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_39894;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39907;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39907;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39907;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39907;
  default:
  __bad_percpu_size();
  }
  ldv_39907:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_39894;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39916;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39916;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39916;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39916;
  default:
  __bad_percpu_size();
  }
  ldv_39916:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_39894;
  default:
  __bad_size_call_parameter();
  goto ldv_39894;
  }
  ldv_39894:
  cpu = pscr_ret__;
  i = 0U;
  goto ldv_39926;
  ldv_39925:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  __netif_tx_lock(txq, cpu);
  netif_tx_stop_queue(txq);
  __netif_tx_unlock(txq);
  i = i + 1U;
  ldv_39926: ;
  if (dev->num_tx_queues > i) {
    goto ldv_39925;
  } else {
  }
  local_bh_enable();
  return;
}
}
extern int register_netdev(struct net_device * ) ;
extern void unregister_netdev(struct net_device * ) ;
extern struct sk_buff *__skb_gso_segment(struct sk_buff * , netdev_features_t , bool ) ;
__inline static struct sk_buff *skb_gso_segment(struct sk_buff *skb , netdev_features_t features )
{
  struct sk_buff *tmp ;
  {
  tmp = __skb_gso_segment(skb, features, 1);
  return (tmp);
}
}
extern void netdev_update_features(struct net_device * ) ;
extern int netdev_err(struct net_device const * , char const * , ...) ;
extern int netdev_warn(struct net_device const * , char const * , ...) ;
extern int netdev_notice(struct net_device const * , char const * , ...) ;
extern int netdev_info(struct net_device const * , char const * , ...) ;
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
__inline static struct mii_ioctl_data *if_mii(struct ifreq *rq )
{
  {
  return ((struct mii_ioctl_data *)(& rq->ifr_ifru));
}
}
__inline static u32 ethtool_adv_to_mii_adv_t(u32 ethadv )
{
  u32 result ;
  {
  result = 0U;
  if ((int )ethadv & 1) {
    result = result | 32U;
  } else {
  }
  if ((ethadv & 2U) != 0U) {
    result = result | 64U;
  } else {
  }
  if ((ethadv & 4U) != 0U) {
    result = result | 128U;
  } else {
  }
  if ((ethadv & 8U) != 0U) {
    result = result | 256U;
  } else {
  }
  if ((ethadv & 8192U) != 0U) {
    result = result | 1024U;
  } else {
  }
  if ((ethadv & 16384U) != 0U) {
    result = result | 2048U;
  } else {
  }
  return (result);
}
}
__inline static u32 mii_adv_to_ethtool_adv_t(u32 adv )
{
  u32 result ;
  {
  result = 0U;
  if ((adv & 32U) != 0U) {
    result = result | 1U;
  } else {
  }
  if ((adv & 64U) != 0U) {
    result = result | 2U;
  } else {
  }
  if ((adv & 128U) != 0U) {
    result = result | 4U;
  } else {
  }
  if ((adv & 256U) != 0U) {
    result = result | 8U;
  } else {
  }
  if ((adv & 1024U) != 0U) {
    result = result | 8192U;
  } else {
  }
  if ((adv & 2048U) != 0U) {
    result = result | 16384U;
  } else {
  }
  return (result);
}
}
__inline static u32 ethtool_adv_to_mii_ctrl1000_t(u32 ethadv )
{
  u32 result ;
  {
  result = 0U;
  if ((ethadv & 16U) != 0U) {
    result = result | 256U;
  } else {
  }
  if ((ethadv & 32U) != 0U) {
    result = result | 512U;
  } else {
  }
  return (result);
}
}
__inline static u32 mii_ctrl1000_to_ethtool_adv_t(u32 adv )
{
  u32 result ;
  {
  result = 0U;
  if ((adv & 256U) != 0U) {
    result = result | 16U;
  } else {
  }
  if ((adv & 512U) != 0U) {
    result = result | 32U;
  } else {
  }
  return (result);
}
}
__inline static u32 mii_lpa_to_ethtool_lpa_t(u32 lpa )
{
  u32 result ;
  u32 tmp ;
  {
  result = 0U;
  if ((lpa & 16384U) != 0U) {
    result = result | 64U;
  } else {
  }
  tmp = mii_adv_to_ethtool_adv_t(lpa);
  return (tmp | result);
}
}
__inline static u32 mii_stat1000_to_ethtool_lpa_t(u32 lpa )
{
  u32 result ;
  {
  result = 0U;
  if ((lpa & 1024U) != 0U) {
    result = result | 16U;
  } else {
  }
  if ((lpa & 2048U) != 0U) {
    result = result | 32U;
  } else {
  }
  return (result);
}
}
__inline static u32 ethtool_adv_to_mii_adv_x(u32 ethadv )
{
  u32 result ;
  {
  result = 0U;
  if ((ethadv & 16U) != 0U) {
    result = result | 64U;
  } else {
  }
  if ((ethadv & 32U) != 0U) {
    result = result | 32U;
  } else {
  }
  if ((ethadv & 8192U) != 0U) {
    result = result | 128U;
  } else {
  }
  if ((ethadv & 16384U) != 0U) {
    result = result | 256U;
  } else {
  }
  return (result);
}
}
__inline static u32 mii_adv_to_ethtool_adv_x(u32 adv )
{
  u32 result ;
  {
  result = 0U;
  if ((adv & 64U) != 0U) {
    result = result | 16U;
  } else {
  }
  if ((adv & 32U) != 0U) {
    result = result | 32U;
  } else {
  }
  if ((adv & 128U) != 0U) {
    result = result | 8192U;
  } else {
  }
  if ((adv & 256U) != 0U) {
    result = result | 16384U;
  } else {
  }
  return (result);
}
}
__inline static u16 mii_advertise_flowctrl(int cap )
{
  u16 adv ;
  {
  adv = 0U;
  if ((cap & 2) != 0) {
    adv = 3072U;
  } else {
  }
  if (cap & 1) {
    adv = (u16 )((unsigned int )adv ^ 2048U);
  } else {
  }
  return (adv);
}
}
__inline static u8 mii_resolve_flowctrl_fdx(u16 lcladv , u16 rmtadv )
{
  u8 cap ;
  {
  cap = 0U;
  if ((((int )lcladv & (int )rmtadv) & 1024) != 0) {
    cap = 3U;
  } else
  if ((((int )lcladv & (int )rmtadv) & 2048) != 0) {
    if (((int )lcladv & 1024) != 0) {
      cap = 2U;
    } else
    if (((int )rmtadv & 1024) != 0) {
      cap = 1U;
    } else {
    }
  } else {
  }
  return (cap);
}
}
extern struct mii_bus *mdiobus_alloc_size(size_t ) ;
__inline static struct mii_bus *mdiobus_alloc(void)
{
  struct mii_bus *tmp ;
  {
  tmp = mdiobus_alloc_size(0UL);
  return (tmp);
}
}
extern int mdiobus_register(struct mii_bus * ) ;
extern void mdiobus_unregister(struct mii_bus * ) ;
extern void mdiobus_free(struct mii_bus * ) ;
extern struct phy_device *phy_connect(struct net_device * , char const * , void (*)(struct net_device * ) ,
                                      phy_interface_t ) ;
extern void phy_disconnect(struct phy_device * ) ;
extern void phy_start(struct phy_device * ) ;
extern void phy_stop(struct phy_device * ) ;
extern int phy_start_aneg(struct phy_device * ) ;
extern int phy_ethtool_sset(struct phy_device * , struct ethtool_cmd * ) ;
extern int phy_ethtool_gset(struct phy_device * , struct ethtool_cmd * ) ;
extern int phy_mii_ioctl(struct phy_device * , struct ifreq * , int ) ;
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
__inline static struct sk_buff *__vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                                       u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return (skb);
}
}
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct iphdr *)tmp);
}
}
__inline static struct tcphdr *tcp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((struct tcphdr *)tmp);
}
}
__inline static unsigned int tcp_hdrlen(struct sk_buff const *skb )
{
  struct tcphdr *tmp ;
  {
  tmp = tcp_hdr(skb);
  return ((unsigned int )((int )tmp->doff * 4));
}
}
__inline static unsigned int tcp_optlen(struct sk_buff const *skb )
{
  struct tcphdr *tmp ;
  {
  tmp = tcp_hdr(skb);
  return ((unsigned int )(((int )tmp->doff + -5) * 4));
}
}
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
__inline static bool pdev_is_ssb_gige_core(struct pci_dev *pdev )
{
  {
  return (0);
}
}
__inline static int ssb_gige_get_macaddr(struct pci_dev *pdev , u8 *macaddr )
{
  {
  return (-19);
}
}
extern struct device *hwmon_device_register(struct device * ) ;
extern void hwmon_device_unregister(struct device * ) ;
extern struct ptp_clock *ptp_clock_register(struct ptp_clock_info * , struct device * ) ;
extern int ptp_clock_unregister(struct ptp_clock * ) ;
extern int ptp_clock_index(struct ptp_clock * ) ;
__inline static int _tg3_flag(enum TG3_FLAGS flag , unsigned long *bits )
{
  int tmp ;
  {
  tmp = variable_test_bit((int )flag, (unsigned long const volatile *)bits);
  return (tmp);
}
}
__inline static void _tg3_flag_set(enum TG3_FLAGS flag , unsigned long *bits )
{
  {
  set_bit((unsigned int )flag, (unsigned long volatile *)bits);
  return;
}
}
__inline static void _tg3_flag_clear(enum TG3_FLAGS flag , unsigned long *bits )
{
  {
  clear_bit((int )flag, (unsigned long volatile *)bits);
  return;
}
}
static char version[30U] =
  { 't', 'g', '3', '.',
        'c', ':', 'v', '3',
        '.', '1', '3', '1',
        ' ', '(', 'A', 'p',
        'r', 'i', 'l', ' ',
        '0', '9', ',', ' ',
        '2', '0', '1', '3',
        ')', '\000'};
static int tg3_debug = -1;
static struct pci_device_id const tg3_pci_tbl[92U] =
  { {5348U, 5700U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5701U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5702U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5703U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5704U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5709U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5715U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5716U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5725U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5726U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5798U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5799U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5800U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5830U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5831U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5782U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5788U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5789U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5901U, 4294967295U, 4294967295U, 0U, 0U, 3UL},
        {5348U, 5902U, 4294967295U, 4294967295U, 0U, 0U, 3UL},
        {5348U, 5705U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5742U, 4294967295U, 4294967295U, 0U, 0U, 3UL},
        {5348U, 5721U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5722U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5750U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5751U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5757U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5758U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {5348U, 5632U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5633U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5879U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5885U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5886U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {5348U, 5754U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5746U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5755U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5747U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5748U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5786U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5787U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5779U, 6058U, 12374U, 0U, 0U, 1UL},
        {5348U, 5779U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5759U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {5348U, 5736U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5737U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5752U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5753U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5738U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5739U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5853U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5906U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5907U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5784U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5764U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5723U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5761U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5760U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5768U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5769U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5785U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5792U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5778U, 4133U, 1537U, 0U, 0U, 1UL},
        {5348U, 5778U, 4133U, 1554U, 0U, 0U, 1UL},
        {5348U, 5778U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5776U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5780U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {5348U, 5777U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5717U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5733U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5718U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5809U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5813U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5808U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5812U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5810U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {5348U, 5814U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {5348U, 5719U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5727U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5762U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5766U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5767U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5699U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5348U, 5875U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4424U, 17408U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4424U, 17664U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5947U, 1000U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5947U, 1001U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5947U, 1003U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5947U, 1002U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4203U, 5701U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4303U, 4514U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static struct __anonstruct_ethtool_stats_keys_267 const ethtool_stats_keys[72U] =
  { {{'r', 'x', '_', 'o', 'c', 't', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', 'f', 'r', 'a', 'g', 'm', 'e', 'n', 't', 's', '\000'}},
        {{'r', 'x', '_', 'u', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k', 'e', 't',
       's', '\000'}},
        {{'r', 'x', '_', 'm', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k', 'e', 't',
       's', '\000'}},
        {{'r', 'x', '_', 'b', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k', 'e', 't',
       's', '\000'}},
        {{'r', 'x', '_', 'f', 'c', 's', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'r', 'x', '_', 'a', 'l', 'i', 'g', 'n', '_', 'e', 'r', 'r', 'o', 'r', 's',
       '\000'}},
        {{'r', 'x', '_', 'x', 'o', 'n', '_', 'p', 'a', 'u', 's', 'e', '_', 'r', 'c',
       'v', 'd', '\000'}},
        {{'r', 'x', '_', 'x', 'o', 'f', 'f', '_', 'p', 'a', 'u', 's', 'e', '_', 'r',
       'c', 'v', 'd', '\000'}},
        {{'r', 'x', '_', 'm', 'a', 'c', '_', 'c', 't', 'r', 'l', '_', 'r', 'c', 'v',
       'd', '\000'}},
        {{'r', 'x', '_', 'x', 'o', 'f', 'f', '_', 'e', 'n', 't', 'e', 'r', 'e', 'd',
       '\000'}},
        {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', '_', 't', 'o', 'o', '_', 'l', 'o',
       'n', 'g', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'r', 'x', '_', 'j', 'a', 'b', 'b', 'e', 'r', 's', '\000'}},
        {{'r', 'x', '_', 'u', 'n', 'd', 'e', 'r', 's', 'i', 'z', 'e', '_', 'p', 'a',
       'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', 'i', 'n', '_', 'l', 'e', 'n', 'g', 't', 'h', '_', 'e', 'r',
       'r', 'o', 'r', 's', '\000'}},
        {{'r', 'x', '_', 'o', 'u', 't', '_', 'l', 'e', 'n', 'g', 't', 'h', '_', 'e',
       'r', 'r', 'o', 'r', 's', '\000'}},
        {{'r', 'x', '_', '6', '4', '_', 'o', 'r', '_', 'l', 'e', 's', 's', '_', 'o',
       'c', 't', 'e', 't', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '6', '5', '_', 't', 'o', '_', '1', '2', '7', '_', 'o', 'c',
       't', 'e', 't', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '1', '2', '8', '_', 't', 'o', '_', '2', '5', '5', '_', 'o',
       'c', 't', 'e', 't', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '2', '5', '6', '_', 't', 'o', '_', '5', '1', '1', '_', 'o',
       'c', 't', 'e', 't', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '5', '1', '2', '_', 't', 'o', '_', '1', '0', '2', '3', '_',
       'o', 'c', 't', 'e', 't', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '1', '0', '2', '4', '_', 't', 'o', '_', '1', '5', '2', '2',
       '_', 'o', 'c', 't', 'e', 't', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r',
       'x', '_', '1', '5', '2', '3', '_', 't', 'o', '_', '2', '0', '4', '7', '_',
       'o', 'c', 't', 'e', 't', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '2', '0', '4', '8', '_', 't', 'o', '_', '4', '0', '9', '5',
       '_', 'o', 'c', 't', 'e', 't', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r',
       'x', '_', '4', '0', '9', '6', '_', 't', 'o', '_', '8', '1', '9', '1', '_',
       'o', 'c', 't', 'e', 't', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'r', 'x', '_', '8', '1', '9', '2', '_', 't', 'o', '_', '9', '0', '2', '2',
       '_', 'o', 'c', 't', 'e', 't', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}},
        {{'t',
       'x', '_', 'o', 'c', 't', 'e', 't', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 's', 'i', 'o', 'n', 's', '\000'}},
        {{'t', 'x', '_', 'x', 'o', 'n', '_', 's', 'e', 'n', 't', '\000'}},
        {{'t', 'x', '_', 'x', 'o', 'f', 'f', '_', 's', 'e', 'n', 't', '\000'}},
        {{'t', 'x', '_', 'f', 'l', 'o', 'w', '_', 'c', 'o', 'n', 't', 'r', 'o', 'l',
       '\000'}},
        {{'t', 'x', '_', 'm', 'a', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'t', 'x', '_', 's', 'i', 'n', 'g', 'l', 'e', '_', 'c', 'o', 'l', 'l', 'i',
       's', 'i', 'o', 'n', 's', '\000'}},
        {{'t', 'x', '_', 'm', 'u', 'l', 't', '_', 'c', 'o', 'l', 'l', 'i', 's', 'i',
       'o', 'n', 's', '\000'}},
        {{'t', 'x', '_', 'd', 'e', 'f', 'e', 'r', 'r', 'e', 'd', '\000'}},
        {{'t', 'x', '_', 'e', 'x', 'c', 'e', 's', 's', 'i', 'v', 'e', '_', 'c', 'o',
       'l', 'l', 'i', 's', 'i', 'o', 'n', 's', '\000'}},
        {{'t', 'x', '_', 'l', 'a', 't', 'e', '_', 'c', 'o', 'l', 'l', 'i', 's', 'i',
       'o', 'n', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '2', 't', 'i', 'm',
       'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '3', 't', 'i', 'm',
       'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '4', 't', 'i', 'm',
       'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '5', 't', 'i', 'm',
       'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '6', 't', 'i', 'm',
       'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '7', 't', 'i', 'm',
       'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '8', 't', 'i', 'm',
       'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '9', 't', 'i', 'm',
       'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '1', '0', 't', 'i',
       'm', 'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '1', '1', 't', 'i',
       'm', 'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '1', '2', 't', 'i',
       'm', 'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '1', '3', 't', 'i',
       'm', 'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '1', '4', 't', 'i',
       'm', 'e', 's', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'l', 'l', 'i', 'd', 'e', '_', '1', '5', 't', 'i',
       'm', 'e', 's', '\000'}},
        {{'t', 'x', '_', 'u', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k', 'e', 't',
       's', '\000'}},
        {{'t', 'x', '_', 'm', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k', 'e', 't',
       's', '\000'}},
        {{'t', 'x', '_', 'b', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k', 'e', 't',
       's', '\000'}},
        {{'t', 'x', '_', 'c', 'a', 'r', 'r', 'i', 'e', 'r', '_', 's', 'e', 'n', 's',
       'e', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'t', 'x', '_', 'd', 'i', 's', 'c', 'a', 'r', 'd', 's', '\000'}},
        {{'t', 'x', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'d', 'm', 'a', '_', 'w', 'r', 'i', 't', 'e', 'q', '_', 'f', 'u', 'l', 'l',
       '\000'}},
        {{'d', 'm', 'a', '_', 'w', 'r', 'i', 't', 'e', '_', 'p', 'r', 'i', 'o', 'q',
       '_', 'f', 'u', 'l', 'l', '\000'}},
        {{'r', 'x', 'b', 'd', 's', '_', 'e', 'm', 'p', 't', 'y', '\000'}},
        {{'r', 'x', '_', 'd', 'i', 's', 'c', 'a', 'r', 'd', 's', '\000'}},
        {{'r', 'x', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}},
        {{'r', 'x', '_', 't', 'h', 'r', 'e', 's', 'h', 'o', 'l', 'd', '_', 'h', 'i',
       't', '\000'}},
        {{'d', 'm', 'a', '_', 'r', 'e', 'a', 'd', 'q', '_', 'f', 'u', 'l', 'l', '\000'}},
        {{'d',
       'm', 'a', '_', 'r', 'e', 'a', 'd', '_', 'p', 'r', 'i', 'o', 'q', '_', 'f',
       'u', 'l', 'l', '\000'}},
        {{'t', 'x', '_', 'c', 'o', 'm', 'p', '_', 'q', 'u', 'e', 'u', 'e', '_', 'f',
       'u', 'l', 'l', '\000'}},
        {{'r', 'i', 'n', 'g', '_', 's', 'e', 't', '_', 's', 'e', 'n', 'd', '_', 'p',
       'r', 'o', 'd', '_', 'i', 'n', 'd', 'e', 'x', '\000'}},
        {{'r', 'i', 'n', 'g', '_', 's', 't', 'a', 't', 'u', 's', '_', 'u', 'p', 'd',
       'a', 't', 'e', '\000'}},
        {{'n', 'i', 'c', '_', 'i', 'r', 'q', 's', '\000'}},
        {{'n', 'i', 'c', '_', 'a', 'v', 'o', 'i', 'd', 'e', 'd', '_', 'i', 'r', 'q',
       's', '\000'}},
        {{'n', 'i', 'c', '_', 't', 'x', '_', 't', 'h', 'r', 'e', 's', 'h', 'o', 'l',
       'd', '_', 'h', 'i', 't', '\000'}},
        {{'m', 'b', 'u', 'f', '_', 'l', 'w', 'm', '_', 't', 'h', 'r', 'e', 's', 'h',
       '_', 'h', 'i', 't', '\000'}}};
static struct __anonstruct_ethtool_test_keys_268 const ethtool_test_keys[8U] =
  { {{'n', 'v', 'r', 'a', 'm', ' ', 't', 'e', 's', 't', ' ', ' ', ' ', ' ', ' ',
       ' ', ' ', ' ', '(', 'o', 'n', 'l', 'i', 'n', 'e', ')', ' ', '\000'}},
        {{'l', 'i', 'n', 'k', ' ', 't', 'e', 's', 't', ' ', ' ', ' ', ' ', ' ', ' ',
       ' ', ' ', ' ', '(', 'o', 'n', 'l', 'i', 'n', 'e', ')', ' ', '\000'}},
        {{'r', 'e', 'g', 'i', 's', 't', 'e', 'r', ' ', 't', 'e', 's', 't', ' ', ' ',
       ' ', ' ', ' ', '(', 'o', 'f', 'f', 'l', 'i', 'n', 'e', ')', '\000'}},
        {{'m', 'e', 'm', 'o', 'r', 'y', ' ', 't', 'e', 's', 't', ' ', ' ', ' ', ' ',
       ' ', ' ', ' ', '(', 'o', 'f', 'f', 'l', 'i', 'n', 'e', ')', '\000'}},
        {{'m', 'a', 'c', ' ', 'l', 'o', 'o', 'p', 'b', 'a', 'c', 'k', ' ', 't', 'e',
       's', 't', ' ', '(', 'o', 'f', 'f', 'l', 'i', 'n', 'e', ')', '\000'}},
        {{'p', 'h', 'y', ' ', 'l', 'o', 'o', 'p', 'b', 'a', 'c', 'k', ' ', 't', 'e',
       's', 't', ' ', '(', 'o', 'f', 'f', 'l', 'i', 'n', 'e', ')', '\000'}},
        {{'e', 'x', 't', ' ', 'l', 'o', 'o', 'p', 'b', 'a', 'c', 'k', ' ', 't', 'e',
       's', 't', ' ', '(', 'o', 'f', 'f', 'l', 'i', 'n', 'e', ')', '\000'}},
        {{'i', 'n', 't', 'e', 'r', 'r', 'u', 'p', 't', ' ', 't', 'e', 's', 't', ' ',
       ' ', ' ', ' ', '(', 'o', 'f', 'f', 'l', 'i', 'n', 'e', ')', '\000'}}};
static void tg3_write32(struct tg3 *tp , u32 off , u32 val )
{
  {
  writel(val, (void volatile *)tp->regs + (unsigned long )off);
  return;
}
}
static u32 tg3_read32(struct tg3 *tp , u32 off )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)tp->regs + (unsigned long )off);
  return (tmp);
}
}
static void tg3_ape_write32(struct tg3 *tp , u32 off , u32 val )
{
  {
  writel(val, (void volatile *)tp->aperegs + (unsigned long )off);
  return;
}
}
static u32 tg3_ape_read32(struct tg3 *tp , u32 off )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)tp->aperegs + (unsigned long )off);
  return (tmp);
}
}
static void tg3_write_indirect_reg32(struct tg3 *tp , u32 off , u32 val )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& tp->indirect_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 120, off);
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 128, val);
  spin_unlock_irqrestore(& tp->indirect_lock, flags);
  return;
}
}
static void tg3_write_flush_reg32(struct tg3 *tp , u32 off , u32 val )
{
  {
  writel(val, (void volatile *)tp->regs + (unsigned long )off);
  readl((void const volatile *)tp->regs + (unsigned long )off);
  return;
}
}
static u32 tg3_read_indirect_reg32(struct tg3 *tp , u32 off )
{
  unsigned long flags ;
  u32 val ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& tp->indirect_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 120, off);
  pci_read_config_dword((struct pci_dev const *)tp->pdev, 128, & val);
  spin_unlock_irqrestore(& tp->indirect_lock, flags);
  return (val);
}
}
static void tg3_write_indirect_mbox(struct tg3 *tp , u32 off , u32 val )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  if (off == 644U) {
    pci_write_config_dword((struct pci_dev const *)tp->pdev, 164, val);
    return;
  } else {
  }
  if (off == 620U) {
    pci_write_config_dword((struct pci_dev const *)tp->pdev, 156, val);
    return;
  } else {
  }
  tmp = spinlock_check(& tp->indirect_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 120, off + 22016U);
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 128, val);
  spin_unlock_irqrestore(& tp->indirect_lock, flags);
  if (off == 516U && val == 1U) {
    pci_write_config_dword((struct pci_dev const *)tp->pdev, 144, tp->grc_local_ctrl | 2U);
  } else {
  }
  return;
}
}
static u32 tg3_read_indirect_mbox(struct tg3 *tp , u32 off )
{
  unsigned long flags ;
  u32 val ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& tp->indirect_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 120, off + 22016U);
  pci_read_config_dword((struct pci_dev const *)tp->pdev, 128, & val);
  spin_unlock_irqrestore(& tp->indirect_lock, flags);
  return (val);
}
}
static void _tw32_flush(struct tg3 *tp , u32 off , u32 val , u32 usec_wait )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = _tg3_flag(8, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    (*(tp->write32))(tp, off, val);
  } else {
    tmp___0 = _tg3_flag(44, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      (*(tp->write32))(tp, off, val);
    } else {
      tg3_write32(tp, off, val);
      if (usec_wait != 0U) {
        __udelay((unsigned long )usec_wait);
      } else {
      }
      (*(tp->read32))(tp, off);
    }
  }
  if (usec_wait != 0U) {
    __udelay((unsigned long )usec_wait);
  } else {
  }
  return;
}
}
__inline static void tw32_mailbox_flush(struct tg3 *tp , u32 off , u32 val )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  (*(tp->write32_mbox))(tp, off, val);
  tmp = _tg3_flag(79, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    (*(tp->read32_mbox))(tp, off);
  } else {
    tmp___0 = _tg3_flag(7, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 == 0) {
      tmp___1 = _tg3_flag(44, (unsigned long *)(& tp->tg3_flags));
      if (tmp___1 == 0) {
        (*(tp->read32_mbox))(tp, off);
      } else {
      }
    } else {
    }
  }
  return;
}
}
static void tg3_write32_tx_mbox(struct tg3 *tp , u32 off , u32 val )
{
  void *mbox ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  mbox = tp->regs + (unsigned long )off;
  writel(val, (void volatile *)mbox);
  tmp = _tg3_flag(1, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    writel(val, (void volatile *)mbox);
  } else {
  }
  tmp___0 = _tg3_flag(7, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    readl((void const volatile *)mbox);
  } else {
    tmp___1 = _tg3_flag(79, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 != 0) {
      readl((void const volatile *)mbox);
    } else {
    }
  }
  return;
}
}
static u32 tg3_read32_mbox_5906(struct tg3 *tp , u32 off )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)(tp->regs + ((unsigned long )off + 22016UL)));
  return (tmp);
}
}
static void tg3_write32_mbox_5906(struct tg3 *tp , u32 off , u32 val )
{
  {
  writel(val, (void volatile *)(tp->regs + ((unsigned long )off + 22016UL)));
  return;
}
}
static void tg3_write_mem(struct tg3 *tp , u32 off , u32 val )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  {
  if ((tp->pci_chip_rev_id >> 12 == 12U && off > 767U) && off <= 16383U) {
    return;
  } else {
  }
  tmp = spinlock_check(& tp->indirect_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___0 = _tg3_flag(21, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    pci_write_config_dword((struct pci_dev const *)tp->pdev, 124, off);
    pci_write_config_dword((struct pci_dev const *)tp->pdev, 132, val);
    pci_write_config_dword((struct pci_dev const *)tp->pdev, 124, 0U);
  } else {
    _tw32_flush(tp, 124U, off, 0U);
    _tw32_flush(tp, 132U, val, 0U);
    _tw32_flush(tp, 124U, 0U, 0U);
  }
  spin_unlock_irqrestore(& tp->indirect_lock, flags);
  return;
}
}
static void tg3_read_mem(struct tg3 *tp , u32 off , u32 *val )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  {
  if ((tp->pci_chip_rev_id >> 12 == 12U && off > 767U) && off <= 16383U) {
    *val = 0U;
    return;
  } else {
  }
  tmp = spinlock_check(& tp->indirect_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___0 = _tg3_flag(21, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    pci_write_config_dword((struct pci_dev const *)tp->pdev, 124, off);
    pci_read_config_dword((struct pci_dev const *)tp->pdev, 132, val);
    pci_write_config_dword((struct pci_dev const *)tp->pdev, 124, 0U);
  } else {
    _tw32_flush(tp, 124U, off, 0U);
    *val = (*(tp->read32))(tp, 132U);
    _tw32_flush(tp, 124U, 0U, 0U);
  }
  spin_unlock_irqrestore(& tp->indirect_lock, flags);
  return;
}
}
static void tg3_ape_lock_init(struct tg3 *tp )
{
  int i ;
  u32 regbase ;
  u32 bit ;
  {
  if (tp->pci_chip_rev_id >> 12 == 22369U) {
    regbase = 76U;
  } else {
    regbase = 33824U;
  }
  i = 0;
  goto ldv_48064;
  ldv_48063: ;
  switch (i) {
  case 0: ;
  case 2: ;
  case 3: ;
  case 5:
  bit = 4096U;
  goto ldv_48061;
  default: ;
  if (tp->pci_fn == 0) {
    bit = 4096U;
  } else {
    bit = (u32 )(1 << tp->pci_fn);
  }
  }
  ldv_48061:
  tg3_ape_write32(tp, (u32 )(i * 4) + regbase, bit);
  i = i + 1;
  ldv_48064: ;
  if (i <= 7) {
    goto ldv_48063;
  } else {
  }
  return;
}
}
static int tg3_ape_lock(struct tg3 *tp , int locknum )
{
  int i ;
  int off ;
  int ret ;
  u32 status ;
  u32 req ;
  u32 gnt ;
  u32 bit ;
  int tmp ;
  {
  ret = 0;
  tmp = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return (0);
  } else {
  }
  switch (locknum) {
  case 7: ;
  if (tp->pci_chip_rev_id >> 12 == 22369U) {
    return (0);
  } else {
  }
  case 1: ;
  case 4: ;
  if (tp->pci_fn == 0) {
    bit = 4096U;
  } else {
    bit = (u32 )(1 << tp->pci_fn);
  }
  goto ldv_48080;
  case 0: ;
  case 2: ;
  case 3: ;
  case 5:
  bit = 4096U;
  goto ldv_48080;
  default: ;
  return (-22);
  }
  ldv_48080: ;
  if (tp->pci_chip_rev_id >> 12 == 22369U) {
    req = 44U;
    gnt = 76U;
  } else {
    req = 33792U;
    gnt = 33824U;
  }
  off = locknum * 4;
  tg3_ape_write32(tp, req + (u32 )off, bit);
  i = 0;
  goto ldv_48088;
  ldv_48087:
  status = tg3_ape_read32(tp, gnt + (u32 )off);
  if (status == bit) {
    goto ldv_48086;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_48088: ;
  if (i <= 99) {
    goto ldv_48087;
  } else {
  }
  ldv_48086: ;
  if (status != bit) {
    tg3_ape_write32(tp, gnt + (u32 )off, bit);
    ret = -16;
  } else {
  }
  return (ret);
}
}
static void tg3_ape_unlock(struct tg3 *tp , int locknum )
{
  u32 gnt ;
  u32 bit ;
  int tmp ;
  {
  tmp = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return;
  } else {
  }
  switch (locknum) {
  case 7: ;
  if (tp->pci_chip_rev_id >> 12 == 22369U) {
    return;
  } else {
  }
  case 1: ;
  case 4: ;
  if (tp->pci_fn == 0) {
    bit = 4096U;
  } else {
    bit = (u32 )(1 << tp->pci_fn);
  }
  goto ldv_48098;
  case 0: ;
  case 2: ;
  case 3: ;
  case 5:
  bit = 4096U;
  goto ldv_48098;
  default: ;
  return;
  }
  ldv_48098: ;
  if (tp->pci_chip_rev_id >> 12 == 22369U) {
    gnt = 76U;
  } else {
    gnt = 33824U;
  }
  tg3_ape_write32(tp, (u32 )(locknum * 4) + gnt, bit);
  return;
}
}
static int tg3_ape_event_lock(struct tg3 *tp , u32 timeout_us )
{
  u32 apedata ;
  int tmp ;
  {
  goto ldv_48111;
  ldv_48110:
  tmp = tg3_ape_lock(tp, 4);
  if (tmp != 0) {
    return (-16);
  } else {
  }
  apedata = tg3_ape_read32(tp, 17152U);
  if ((int )apedata >= 0) {
    goto ldv_48109;
  } else {
  }
  tg3_ape_unlock(tp, 4);
  __const_udelay(42950UL);
  timeout_us = timeout_us - (10U < timeout_us ? 10U : timeout_us);
  ldv_48111: ;
  if (timeout_us != 0U) {
    goto ldv_48110;
  } else {
  }
  ldv_48109: ;
  return (timeout_us != 0U ? 0 : -16);
}
}
static int tg3_ape_wait_for_event(struct tg3 *tp , u32 timeout_us )
{
  u32 i ;
  u32 apedata ;
  {
  i = 0U;
  goto ldv_48120;
  ldv_48119:
  apedata = tg3_ape_read32(tp, 17152U);
  if ((int )apedata >= 0) {
    goto ldv_48118;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1U;
  ldv_48120: ;
  if (timeout_us / 10U > i) {
    goto ldv_48119;
  } else {
  }
  ldv_48118: ;
  return (timeout_us / 10U == i);
}
}
static int tg3_ape_scratchpad_read(struct tg3 *tp , u32 *data , u32 base_off , u32 len )
{
  int err ;
  u32 i ;
  u32 bufoff ;
  u32 msgoff ;
  u32 maxlen ;
  u32 apedata ;
  int tmp ;
  u32 tmp___0 ;
  u32 length ;
  int tmp___1 ;
  u32 val ;
  u32 tmp___2 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = _tg3_flag(64, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return (0);
  } else {
  }
  apedata = tg3_ape_read32(tp, 16384U);
  if (apedata != 1095779617U) {
    return (-19);
  } else {
  }
  apedata = tg3_ape_read32(tp, 16396U);
  if ((apedata & 256U) == 0U) {
    return (-11);
  } else {
  }
  tmp___0 = tg3_ape_read32(tp, 16412U);
  bufoff = tmp___0 + 16384U;
  msgoff = bufoff + 8U;
  maxlen = tg3_ape_read32(tp, 16416U);
  goto ldv_48142;
  ldv_48141:
  length = maxlen < len ? maxlen : len;
  len = len - length;
  apedata = tg3_ape_read32(tp, 16396U);
  if ((apedata & 256U) == 0U) {
    return (-11);
  } else {
  }
  err = tg3_ape_event_lock(tp, 1000U);
  if (err != 0) {
    return (err);
  } else {
  }
  apedata = 2147489296U;
  tg3_ape_write32(tp, 17152U, apedata);
  tg3_ape_write32(tp, bufoff, base_off);
  tg3_ape_write32(tp, bufoff + 4U, length);
  tg3_ape_unlock(tp, 4);
  tg3_ape_write32(tp, 12U, 1U);
  base_off = base_off + length;
  tmp___1 = tg3_ape_wait_for_event(tp, 30000U);
  if (tmp___1 != 0) {
    return (-11);
  } else {
  }
  i = 0U;
  goto ldv_48139;
  ldv_48138:
  tmp___2 = tg3_ape_read32(tp, msgoff + i);
  val = tmp___2;
  __len = 4UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)data, (void const *)(& val), __len);
  } else {
    __ret = memcpy((void *)data, (void const *)(& val), __len);
  }
  data = data + 1;
  i = i + 4U;
  length = length - 4U;
  ldv_48139: ;
  if (length != 0U) {
    goto ldv_48138;
  } else {
  }
  ldv_48142: ;
  if (len != 0U) {
    goto ldv_48141;
  } else {
  }
  return (0);
}
}
static int tg3_ape_send_event(struct tg3 *tp , u32 event )
{
  int err ;
  u32 apedata ;
  {
  apedata = tg3_ape_read32(tp, 16384U);
  if (apedata != 1095779617U) {
    return (-11);
  } else {
  }
  apedata = tg3_ape_read32(tp, 16396U);
  if ((apedata & 256U) == 0U) {
    return (-11);
  } else {
  }
  err = tg3_ape_event_lock(tp, 1000U);
  if (err != 0) {
    return (err);
  } else {
  }
  tg3_ape_write32(tp, 17152U, event | 2147483648U);
  tg3_ape_unlock(tp, 4);
  tg3_ape_write32(tp, 12U, 1U);
  return (0);
}
}
static void tg3_ape_driver_state_change(struct tg3 *tp , int kind )
{
  u32 event ;
  u32 apedata ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return;
  } else {
  }
  switch (kind) {
  case 1:
  tg3_ape_write32(tp, 16896U, 1213158228U);
  tg3_ape_write32(tp, 16900U, 32U);
  apedata = tg3_ape_read32(tp, 16904U);
  apedata = apedata + 1U;
  tg3_ape_write32(tp, 16904U, apedata);
  tg3_ape_write32(tp, 16908U, 4026761984U);
  tg3_ape_write32(tp, 16912U, 1U);
  tg3_ape_write32(tp, 16924U, 1U);
  event = 65536U;
  goto ldv_48157;
  case 0:
  tg3_ape_write32(tp, 16896U, 0U);
  tmp___0 = device_may_wakeup(& (tp->pdev)->dev);
  if ((int )tmp___0) {
    tmp___1 = _tg3_flag(10, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 != 0) {
      tg3_ape_write32(tp, 16932U, 32768U);
      apedata = 3U;
    } else {
      apedata = 2U;
    }
  } else {
    apedata = 2U;
  }
  tg3_ape_write32(tp, 16924U, apedata);
  event = 131072U;
  goto ldv_48157;
  case 2:
  event = 262144U;
  goto ldv_48157;
  default: ;
  return;
  }
  ldv_48157:
  event = event | 1296U;
  tg3_ape_send_event(tp, event);
  return;
}
}
static void tg3_disable_ints(struct tg3 *tp )
{
  int i ;
  {
  (*(tp->write32))(tp, 104U, tp->misc_host_ctrl | 2U);
  i = 0;
  goto ldv_48166;
  ldv_48165:
  tw32_mailbox_flush(tp, tp->napi[i].int_mbox, 1U);
  i = i + 1;
  ldv_48166: ;
  if ((unsigned int )i < tp->irq_max) {
    goto ldv_48165;
  } else {
  }
  return;
}
}
static void tg3_enable_ints(struct tg3 *tp )
{
  int i ;
  struct tg3_napi *tnapi ;
  int tmp ;
  int tmp___0 ;
  {
  tp->irq_sync = 0U;
  __asm__ volatile ("sfence": : : "memory");
  (*(tp->write32))(tp, 104U, tp->misc_host_ctrl & 4294967293U);
  tp->coal_now = tp->coalesce_mode | 2U;
  i = 0;
  goto ldv_48174;
  ldv_48173:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  tw32_mailbox_flush(tp, tnapi->int_mbox, tnapi->last_tag << 24);
  tmp = _tg3_flag(45, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    tw32_mailbox_flush(tp, tnapi->int_mbox, tnapi->last_tag << 24);
  } else {
  }
  tp->coal_now = tp->coal_now | tnapi->coal_now;
  i = i + 1;
  ldv_48174: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_48173;
  } else {
  }
  tmp___0 = _tg3_flag(0, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 == 0 && (int )(tp->napi[0].hw_status)->status & 1) {
    (*(tp->write32))(tp, 26632U, tp->grc_local_ctrl | 4U);
  } else {
    (*(tp->write32))(tp, 15360U, tp->coal_now);
  }
  tp->coal_now = tp->coal_now & ~ (tp->napi[0].coal_now | tp->napi[1].coal_now);
  return;
}
}
__inline static unsigned int tg3_has_work(struct tg3_napi *tnapi )
{
  struct tg3 *tp ;
  struct tg3_hw_status *sblk ;
  unsigned int work_exists ;
  int tmp ;
  int tmp___0 ;
  {
  tp = tnapi->tp;
  sblk = tnapi->hw_status;
  work_exists = 0U;
  tmp = _tg3_flag(2, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    tmp___0 = _tg3_flag(6, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 == 0) {
      if ((sblk->status & 2U) != 0U) {
        work_exists = 1U;
      } else {
      }
    } else {
    }
  } else {
  }
  if ((u32 )sblk->idx[0].tx_consumer != tnapi->tx_cons) {
    work_exists = 1U;
  } else {
  }
  if ((unsigned long )tnapi->rx_rcb_prod_idx != (unsigned long )((u16 *)0) && (u32 )*(tnapi->rx_rcb_prod_idx) != tnapi->rx_rcb_ptr) {
    work_exists = 1U;
  } else {
  }
  return (work_exists);
}
}
static void tg3_int_reenable(struct tg3_napi *tnapi )
{
  struct tg3 *tp ;
  int tmp ;
  unsigned int tmp___0 ;
  {
  tp = tnapi->tp;
  (*(tp->write32_mbox))(tp, tnapi->int_mbox, tnapi->last_tag << 24);
  __asm__ volatile ("": : : "memory");
  tmp = _tg3_flag(0, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    tmp___0 = tg3_has_work(tnapi);
    if (tmp___0 != 0U) {
      (*(tp->write32))(tp, 15360U, (tp->coalesce_mode | tnapi->coal_now) | 2U);
    } else {
    }
  } else {
  }
  return;
}
}
static void tg3_switch_clocks(struct tg3 *tp )
{
  u32 clock_ctrl ;
  u32 orig_clock_ctrl ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = _tg3_flag(26, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    return;
  } else {
    tmp___0 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      return;
    } else {
    }
  }
  clock_ctrl = (*(tp->read32))(tp, 116U);
  orig_clock_ctrl = clock_ctrl;
  clock_ctrl = clock_ctrl & 6291487U;
  tp->pci_clock_ctrl = clock_ctrl;
  tmp___1 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    if ((orig_clock_ctrl & 1048576U) != 0U) {
      _tw32_flush(tp, 116U, clock_ctrl | 1048576U, 40U);
    } else {
    }
  } else
  if ((orig_clock_ctrl & 262144U) != 0U) {
    _tw32_flush(tp, 116U, clock_ctrl | 266240U, 40U);
    _tw32_flush(tp, 116U, clock_ctrl | 4096U, 40U);
  } else {
  }
  _tw32_flush(tp, 116U, clock_ctrl, 40U);
  return;
}
}
static int __tg3_readphy(struct tg3 *tp , unsigned int phy_addr , int reg , u32 *val )
{
  u32 frame_val ;
  unsigned int loops ;
  int ret ;
  {
  if ((tp->mi_mode & 16U) != 0U) {
    _tw32_flush(tp, 1108U, tp->mi_mode & 4294967279U, 0U);
    __const_udelay(343600UL);
  } else {
  }
  tg3_ape_lock(tp, (int )tp->phy_ape_lock);
  *val = 0U;
  frame_val = (phy_addr << 21) & 65011712U;
  frame_val = ((u32 )(reg << 16) & 2031616U) | frame_val;
  frame_val = frame_val | 671088640U;
  _tw32_flush(tp, 1100U, frame_val, 0U);
  loops = 5000U;
  goto ldv_48202;
  ldv_48201:
  __const_udelay(42950UL);
  frame_val = (*(tp->read32))(tp, 1100U);
  if ((frame_val & 536870912U) == 0U) {
    __const_udelay(21475UL);
    frame_val = (*(tp->read32))(tp, 1100U);
    goto ldv_48200;
  } else {
  }
  loops = loops - 1U;
  ldv_48202: ;
  if (loops != 0U) {
    goto ldv_48201;
  } else {
  }
  ldv_48200:
  ret = -16;
  if (loops != 0U) {
    *val = frame_val & 65535U;
    ret = 0;
  } else {
  }
  if ((tp->mi_mode & 16U) != 0U) {
    _tw32_flush(tp, 1108U, tp->mi_mode, 0U);
    __const_udelay(343600UL);
  } else {
  }
  tg3_ape_unlock(tp, (int )tp->phy_ape_lock);
  return (ret);
}
}
static int tg3_readphy(struct tg3 *tp , int reg , u32 *val )
{
  int tmp ;
  {
  tmp = __tg3_readphy(tp, (unsigned int )tp->phy_addr, reg, val);
  return (tmp);
}
}
static int __tg3_writephy(struct tg3 *tp , unsigned int phy_addr , int reg , u32 val )
{
  u32 frame_val ;
  unsigned int loops ;
  int ret ;
  {
  if ((tp->phy_flags & 64U) != 0U && (reg == 9 || reg == 24)) {
    return (0);
  } else {
  }
  if ((tp->mi_mode & 16U) != 0U) {
    _tw32_flush(tp, 1108U, tp->mi_mode & 4294967279U, 0U);
    __const_udelay(343600UL);
  } else {
  }
  tg3_ape_lock(tp, (int )tp->phy_ape_lock);
  frame_val = (phy_addr << 21) & 65011712U;
  frame_val = ((u32 )(reg << 16) & 2031616U) | frame_val;
  frame_val = (val & 65535U) | frame_val;
  frame_val = frame_val | 603979776U;
  _tw32_flush(tp, 1100U, frame_val, 0U);
  loops = 5000U;
  goto ldv_48219;
  ldv_48218:
  __const_udelay(42950UL);
  frame_val = (*(tp->read32))(tp, 1100U);
  if ((frame_val & 536870912U) == 0U) {
    __const_udelay(21475UL);
    frame_val = (*(tp->read32))(tp, 1100U);
    goto ldv_48217;
  } else {
  }
  loops = loops - 1U;
  ldv_48219: ;
  if (loops != 0U) {
    goto ldv_48218;
  } else {
  }
  ldv_48217:
  ret = -16;
  if (loops != 0U) {
    ret = 0;
  } else {
  }
  if ((tp->mi_mode & 16U) != 0U) {
    _tw32_flush(tp, 1108U, tp->mi_mode, 0U);
    __const_udelay(343600UL);
  } else {
  }
  tg3_ape_unlock(tp, (int )tp->phy_ape_lock);
  return (ret);
}
}
static int tg3_writephy(struct tg3 *tp , int reg , u32 val )
{
  int tmp ;
  {
  tmp = __tg3_writephy(tp, (unsigned int )tp->phy_addr, reg, val);
  return (tmp);
}
}
static int tg3_phy_cl45_write(struct tg3 *tp , u32 devad , u32 addr , u32 val )
{
  int err ;
  {
  err = tg3_writephy(tp, 13, devad);
  if (err != 0) {
    goto done;
  } else {
  }
  err = tg3_writephy(tp, 14, addr);
  if (err != 0) {
    goto done;
  } else {
  }
  err = tg3_writephy(tp, 13, devad | 16384U);
  if (err != 0) {
    goto done;
  } else {
  }
  err = tg3_writephy(tp, 14, val);
  done: ;
  return (err);
}
}
static int tg3_phy_cl45_read(struct tg3 *tp , u32 devad , u32 addr , u32 *val )
{
  int err ;
  {
  err = tg3_writephy(tp, 13, devad);
  if (err != 0) {
    goto done;
  } else {
  }
  err = tg3_writephy(tp, 14, addr);
  if (err != 0) {
    goto done;
  } else {
  }
  err = tg3_writephy(tp, 13, devad | 16384U);
  if (err != 0) {
    goto done;
  } else {
  }
  err = tg3_readphy(tp, 14, val);
  done: ;
  return (err);
}
}
static int tg3_phydsp_read(struct tg3 *tp , u32 reg , u32 *val )
{
  int err ;
  {
  err = tg3_writephy(tp, 23, reg);
  if (err == 0) {
    err = tg3_readphy(tp, 21, val);
  } else {
  }
  return (err);
}
}
static int tg3_phydsp_write(struct tg3 *tp , u32 reg , u32 val )
{
  int err ;
  {
  err = tg3_writephy(tp, 23, reg);
  if (err == 0) {
    err = tg3_writephy(tp, 21, val);
  } else {
  }
  return (err);
}
}
static int tg3_phy_auxctl_read(struct tg3 *tp , int reg , u32 *val )
{
  int err ;
  {
  err = tg3_writephy(tp, 24, (u32 )((reg << 12) | 7));
  if (err == 0) {
    err = tg3_readphy(tp, 24, val);
  } else {
  }
  return (err);
}
}
static int tg3_phy_auxctl_write(struct tg3 *tp , int reg , u32 set )
{
  int tmp ;
  {
  if (reg == 7) {
    set = set | 32768U;
  } else {
  }
  tmp = tg3_writephy(tp, 24, set | (u32 )reg);
  return (tmp);
}
}
static int tg3_phy_toggle_auxctl_smdsp(struct tg3 *tp , bool enable )
{
  u32 val ;
  int err ;
  {
  err = tg3_phy_auxctl_read(tp, 0, & val);
  if (err != 0) {
    return (err);
  } else {
  }
  if ((int )enable) {
    val = val | 2048U;
  } else {
    val = val & 4294965247U;
  }
  err = tg3_phy_auxctl_write(tp, 0, val | 1024U);
  return (err);
}
}
static int tg3_bmcr_reset(struct tg3 *tp )
{
  u32 phy_control ;
  int limit ;
  int err ;
  int tmp ;
  {
  phy_control = 32768U;
  err = tg3_writephy(tp, 0, phy_control);
  if (err != 0) {
    return (-16);
  } else {
  }
  limit = 5000;
  goto ldv_48278;
  ldv_48277:
  err = tg3_readphy(tp, 0, & phy_control);
  if (err != 0) {
    return (-16);
  } else {
  }
  if ((phy_control & 32768U) == 0U) {
    __const_udelay(171800UL);
    goto ldv_48276;
  } else {
  }
  __const_udelay(42950UL);
  ldv_48278:
  tmp = limit;
  limit = limit - 1;
  if (tmp != 0) {
    goto ldv_48277;
  } else {
  }
  ldv_48276: ;
  if (limit < 0) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int tg3_mdio_read(struct mii_bus *bp , int mii_id , int reg )
{
  struct tg3 *tp ;
  u32 val ;
  int tmp ;
  {
  tp = (struct tg3 *)bp->priv;
  spin_lock_bh(& tp->lock);
  tmp = tg3_readphy(tp, reg, & val);
  if (tmp != 0) {
    val = 4294967291U;
  } else {
  }
  spin_unlock_bh(& tp->lock);
  return ((int )val);
}
}
static int tg3_mdio_write(struct mii_bus *bp , int mii_id , int reg , u16 val )
{
  struct tg3 *tp ;
  u32 ret ;
  int tmp ;
  {
  tp = (struct tg3 *)bp->priv;
  ret = 0U;
  spin_lock_bh(& tp->lock);
  tmp = tg3_writephy(tp, reg, (u32 )val);
  if (tmp != 0) {
    ret = 4294967291U;
  } else {
  }
  spin_unlock_bh(& tp->lock);
  return ((int )ret);
}
}
static int tg3_mdio_reset(struct mii_bus *bp )
{
  {
  return (0);
}
}
static void tg3_mdio_config_5785(struct tg3 *tp )
{
  u32 val ;
  struct phy_device *phydev ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  phydev = (tp->mdio_bus)->phy_map[1];
  switch ((phydev->drv)->phy_id & (phydev->drv)->phy_id_mask) {
  case 21216608U: ;
  case 21216624U:
  val = 823182592U;
  goto ldv_48304;
  case 21216368U:
  val = 872376000U;
  goto ldv_48304;
  case 1886480U:
  val = 857966592U;
  goto ldv_48304;
  case 33280U:
  val = 958165440U;
  goto ldv_48304;
  default: ;
  return;
  }
  ldv_48304: ;
  if ((unsigned int )phydev->interface != 6U) {
    (*(tp->write32))(tp, 1444U, val);
    val = (*(tp->read32))(tp, 1440U);
    val = val & 4261470222U;
    val = val | 16781312U;
    (*(tp->write32))(tp, 1440U, val);
    return;
  } else {
  }
  tmp = _tg3_flag(54, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    val = val | 857502145U;
  } else {
  }
  (*(tp->write32))(tp, 1444U, val);
  val = (*(tp->read32))(tp, 1440U);
  val = val & 4160806927U;
  tmp___2 = _tg3_flag(54, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 == 0) {
    tmp___0 = _tg3_flag(55, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      val = val | 33554432U;
    } else {
    }
    tmp___1 = _tg3_flag(56, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 != 0) {
      val = val | 67108864U;
    } else {
    }
  } else {
  }
  val = val | 553652225U;
  (*(tp->write32))(tp, 1440U, val);
  val = (*(tp->read32))(tp, 1448U);
  val = val & 4294963448U;
  tmp___5 = _tg3_flag(54, (unsigned long *)(& tp->tg3_flags));
  if (tmp___5 == 0) {
    tmp___3 = _tg3_flag(55, (unsigned long *)(& tp->tg3_flags));
    if (tmp___3 != 0) {
      val = val | 3840U;
    } else {
    }
    tmp___4 = _tg3_flag(56, (unsigned long *)(& tp->tg3_flags));
    if (tmp___4 != 0) {
      val = val | 7U;
    } else {
    }
  } else {
  }
  (*(tp->write32))(tp, 1448U, val);
  return;
}
}
static void tg3_mdio_start(struct tg3 *tp )
{
  int tmp ;
  {
  tp->mi_mode = tp->mi_mode & 4294967279U;
  _tw32_flush(tp, 1108U, tp->mi_mode, 0U);
  __const_udelay(343600UL);
  tmp = _tg3_flag(52, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0 && tp->pci_chip_rev_id >> 12 == 22405U) {
    tg3_mdio_config_5785(tp);
  } else {
  }
  return;
}
}
static int tg3_mdio_init(struct tg3 *tp )
{
  int i ;
  u32 reg ;
  struct phy_device *phydev ;
  u32 is_serdes ;
  u32 tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  tmp___1 = _tg3_flag(77, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    tp->phy_addr = (unsigned int )((u8 )tp->pci_fn) + 1U;
    if (tp->pci_chip_rev_id != 91320320U) {
      tmp = (*(tp->read32))(tp, 1460U);
      is_serdes = tmp & 256U;
    } else {
      tmp___0 = (*(tp->read32))(tp, 13924U);
      is_serdes = tmp___0 & 32U;
    }
    if (is_serdes != 0U) {
      tp->phy_addr = (unsigned int )tp->phy_addr + 7U;
    } else {
    }
  } else {
    tp->phy_addr = 1U;
  }
  tg3_mdio_start(tp);
  tmp___2 = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 == 0) {
    return (0);
  } else {
    tmp___3 = _tg3_flag(52, (unsigned long *)(& tp->tg3_flags));
    if (tmp___3 != 0) {
      return (0);
    } else {
    }
  }
  tp->mdio_bus = mdiobus_alloc();
  if ((unsigned long )tp->mdio_bus == (unsigned long )((struct mii_bus *)0)) {
    return (-12);
  } else {
  }
  (tp->mdio_bus)->name = "tg3 mdio bus";
  snprintf((char *)(& (tp->mdio_bus)->id), 17UL, "%x", (unsigned int )((int )((tp->pdev)->bus)->number << 8) | (tp->pdev)->devfn);
  (tp->mdio_bus)->priv = (void *)tp;
  (tp->mdio_bus)->parent = & (tp->pdev)->dev;
  (tp->mdio_bus)->read = & tg3_mdio_read;
  (tp->mdio_bus)->write = & tg3_mdio_write;
  (tp->mdio_bus)->reset = & tg3_mdio_reset;
  (tp->mdio_bus)->phy_mask = 4294967293U;
  (tp->mdio_bus)->irq = (int *)(& tp->mdio_irq);
  i = 0;
  goto ldv_48320;
  ldv_48319:
  *((tp->mdio_bus)->irq + (unsigned long )i) = -1;
  i = i + 1;
  ldv_48320: ;
  if (i <= 31) {
    goto ldv_48319;
  } else {
  }
  tmp___4 = tg3_readphy(tp, 0, & reg);
  if (tmp___4 != 0 || (reg & 2048U) != 0U) {
    tg3_bmcr_reset(tp);
  } else {
  }
  i = mdiobus_register(tp->mdio_bus);
  if (i != 0) {
    dev_warn((struct device const *)(& (tp->pdev)->dev), "mdiobus_reg failed (0x%x)\n",
             i);
    mdiobus_free(tp->mdio_bus);
    return (i);
  } else {
  }
  phydev = (tp->mdio_bus)->phy_map[1];
  if ((unsigned long )phydev == (unsigned long )((struct phy_device *)0) || (unsigned long )phydev->drv == (unsigned long )((struct phy_driver *)0)) {
    dev_warn((struct device const *)(& (tp->pdev)->dev), "No PHY devices\n");
    mdiobus_unregister(tp->mdio_bus);
    mdiobus_free(tp->mdio_bus);
    return (-19);
  } else {
  }
  switch ((phydev->drv)->phy_id & (phydev->drv)->phy_id_mask) {
  case 56778128U:
  phydev->interface = 2;
  phydev->dev_flags = phydev->dev_flags | 512U;
  goto ldv_48323;
  case 21216608U: ;
  case 21216624U:
  phydev->dev_flags = phydev->dev_flags | 50688U;
  tmp___5 = _tg3_flag(54, (unsigned long *)(& tp->tg3_flags));
  if (tmp___5 != 0) {
    phydev->dev_flags = phydev->dev_flags | 2048U;
  } else {
  }
  tmp___6 = _tg3_flag(55, (unsigned long *)(& tp->tg3_flags));
  if (tmp___6 != 0) {
    phydev->dev_flags = phydev->dev_flags | 4096U;
  } else {
  }
  tmp___7 = _tg3_flag(56, (unsigned long *)(& tp->tg3_flags));
  if (tmp___7 != 0) {
    phydev->dev_flags = phydev->dev_flags | 8192U;
  } else {
  }
  case 1886480U:
  phydev->interface = 6;
  goto ldv_48323;
  case 33280U: ;
  case 21216368U:
  phydev->interface = 1;
  phydev->dev_flags = phydev->dev_flags | 512U;
  tp->phy_flags = tp->phy_flags | 64U;
  goto ldv_48323;
  }
  ldv_48323:
  _tg3_flag_set(52, (unsigned long *)(& tp->tg3_flags));
  if (tp->pci_chip_rev_id >> 12 == 22405U) {
    tg3_mdio_config_5785(tp);
  } else {
  }
  return (0);
}
}
static void tg3_mdio_fini(struct tg3 *tp )
{
  int tmp ;
  {
  tmp = _tg3_flag(52, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    _tg3_flag_clear(52, (unsigned long *)(& tp->tg3_flags));
    mdiobus_unregister(tp->mdio_bus);
    mdiobus_free(tp->mdio_bus);
  } else {
  }
  return;
}
}
__inline static void tg3_generate_fw_event(struct tg3 *tp )
{
  u32 val ;
  {
  val = (*(tp->read32))(tp, 26640U);
  val = val | 16384U;
  _tw32_flush(tp, 26640U, val, 0U);
  tp->ldv_47846.last_event_jiffies = jiffies;
  return;
}
}
static void tg3_wait_for_event_ack(struct tg3 *tp )
{
  int i ;
  unsigned int delay_cnt ;
  long time_remain ;
  unsigned long tmp ;
  u32 tmp___0 ;
  {
  tmp = usecs_to_jiffies(2500U);
  time_remain = (long )((tp->ldv_47846.last_event_jiffies + tmp) + 1UL) - (long )jiffies;
  if (time_remain < 0L) {
    return;
  } else {
  }
  delay_cnt = jiffies_to_usecs((unsigned long const )time_remain);
  if (delay_cnt > 2500U) {
    delay_cnt = 2500U;
  } else {
  }
  delay_cnt = (delay_cnt >> 3) + 1U;
  i = 0;
  goto ldv_48344;
  ldv_48343:
  tmp___0 = (*(tp->read32))(tp, 26640U);
  if ((tmp___0 & 16384U) == 0U) {
    goto ldv_48342;
  } else {
  }
  __const_udelay(34360UL);
  i = i + 1;
  ldv_48344: ;
  if ((unsigned int )i < delay_cnt) {
    goto ldv_48343;
  } else {
  }
  ldv_48342: ;
  return;
}
}
static void tg3_phy_gather_ump_data(struct tg3 *tp , u32 *data )
{
  u32 reg ;
  u32 val ;
  int tmp ;
  int tmp___0 ;
  u32 *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  u32 *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  u32 *tmp___7 ;
  int tmp___8 ;
  u32 *tmp___9 ;
  {
  val = 0U;
  tmp = tg3_readphy(tp, 0, & reg);
  if (tmp == 0) {
    val = reg << 16;
  } else {
  }
  tmp___0 = tg3_readphy(tp, 1, & reg);
  if (tmp___0 == 0) {
    val = (reg & 65535U) | val;
  } else {
  }
  tmp___1 = data;
  data = data + 1;
  *tmp___1 = val;
  val = 0U;
  tmp___2 = tg3_readphy(tp, 4, & reg);
  if (tmp___2 == 0) {
    val = reg << 16;
  } else {
  }
  tmp___3 = tg3_readphy(tp, 5, & reg);
  if (tmp___3 == 0) {
    val = (reg & 65535U) | val;
  } else {
  }
  tmp___4 = data;
  data = data + 1;
  *tmp___4 = val;
  val = 0U;
  if ((tp->phy_flags & 32U) == 0U) {
    tmp___5 = tg3_readphy(tp, 9, & reg);
    if (tmp___5 == 0) {
      val = reg << 16;
    } else {
    }
    tmp___6 = tg3_readphy(tp, 10, & reg);
    if (tmp___6 == 0) {
      val = (reg & 65535U) | val;
    } else {
    }
  } else {
  }
  tmp___7 = data;
  data = data + 1;
  *tmp___7 = val;
  tmp___8 = tg3_readphy(tp, 25, & reg);
  if (tmp___8 == 0) {
    val = reg << 16;
  } else {
    val = 0U;
  }
  tmp___9 = data;
  data = data + 1;
  *tmp___9 = val;
  return;
}
}
static void tg3_ump_link_report(struct tg3 *tp )
{
  u32 data[4U] ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return;
  } else {
    tmp___0 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 == 0) {
      return;
    } else {
    }
  }
  tg3_phy_gather_ump_data(tp, (u32 *)(& data));
  tg3_wait_for_event_ack(tp);
  tg3_write_mem(tp, 2936U, 12U);
  tg3_write_mem(tp, 2940U, 14U);
  tg3_write_mem(tp, 2944U, data[0]);
  tg3_write_mem(tp, 2948U, data[1]);
  tg3_write_mem(tp, 2952U, data[2]);
  tg3_write_mem(tp, 2956U, data[3]);
  tg3_generate_fw_event(tp);
  return;
}
}
static void tg3_stop_fw(struct tg3 *tp )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    tmp___0 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 == 0) {
      tg3_wait_for_event_ack(tp);
      tg3_write_mem(tp, 2936U, 2U);
      tg3_generate_fw_event(tp);
      tg3_wait_for_event_ack(tp);
    } else {
    }
  } else {
  }
  return;
}
}
static void tg3_write_sig_pre_reset(struct tg3 *tp , int kind )
{
  int tmp ;
  {
  tg3_write_mem(tp, 2896U, 1264940628U);
  tmp = _tg3_flag(34, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    switch (kind) {
    case 1:
    tg3_write_mem(tp, 3076U, 1U);
    goto ldv_48363;
    case 0:
    tg3_write_mem(tp, 3076U, 2U);
    goto ldv_48363;
    case 2:
    tg3_write_mem(tp, 3076U, 4U);
    goto ldv_48363;
    default: ;
    goto ldv_48363;
    }
    ldv_48363: ;
  } else {
  }
  if (kind == 1 || kind == 2) {
    tg3_ape_driver_state_change(tp, kind);
  } else {
  }
  return;
}
}
static void tg3_write_sig_post_reset(struct tg3 *tp , int kind )
{
  int tmp ;
  {
  tmp = _tg3_flag(34, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    switch (kind) {
    case 1:
    tg3_write_mem(tp, 3076U, 2147483649U);
    goto ldv_48372;
    case 0:
    tg3_write_mem(tp, 3076U, 2147483650U);
    goto ldv_48372;
    default: ;
    goto ldv_48372;
    }
    ldv_48372: ;
  } else {
  }
  if (kind == 0) {
    tg3_ape_driver_state_change(tp, kind);
  } else {
  }
  return;
}
}
static void tg3_write_sig_legacy(struct tg3 *tp , int kind )
{
  int tmp ;
  {
  tmp = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    switch (kind) {
    case 1:
    tg3_write_mem(tp, 3076U, 1U);
    goto ldv_48380;
    case 0:
    tg3_write_mem(tp, 3076U, 2U);
    goto ldv_48380;
    case 2:
    tg3_write_mem(tp, 3076U, 4U);
    goto ldv_48380;
    default: ;
    goto ldv_48380;
    }
    ldv_48380: ;
  } else {
  }
  return;
}
}
static int tg3_poll_fw(struct tg3 *tp )
{
  int i ;
  u32 val ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  unsigned long __ms ;
  unsigned long tmp___2 ;
  {
  tmp = _tg3_flag(78, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    return (0);
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 12U) {
    i = 0;
    goto ldv_48390;
    ldv_48389:
    tmp___0 = (*(tp->read32))(tp, 20736U);
    if ((tmp___0 & 67108864U) != 0U) {
      return (0);
    } else {
    }
    __const_udelay(429500UL);
    i = i + 1;
    ldv_48390: ;
    if (i <= 199) {
      goto ldv_48389;
    } else {
    }
    return (-19);
  } else {
  }
  i = 0;
  goto ldv_48394;
  ldv_48393:
  tg3_read_mem(tp, 2896U, & val);
  if (val == 3030026667U) {
    goto ldv_48392;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_48394: ;
  if (i <= 99999) {
    goto ldv_48393;
  } else {
  }
  ldv_48392: ;
  if (i > 99999) {
    tmp___1 = _tg3_flag(46, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 == 0) {
      _tg3_flag_set(46, (unsigned long *)(& tp->tg3_flags));
      netdev_info((struct net_device const *)tp->dev, "No firmware running\n");
    } else {
    }
  } else {
  }
  if (tp->pci_chip_rev_id == 1467502592U) {
    __ms = 10UL;
    goto ldv_48397;
    ldv_48396:
    __const_udelay(4295000UL);
    ldv_48397:
    tmp___2 = __ms;
    __ms = __ms - 1UL;
    if (tmp___2 != 0UL) {
      goto ldv_48396;
    } else {
    }
  } else {
  }
  return (0);
}
}
static void tg3_link_report(struct tg3 *tp )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = netif_carrier_ok((struct net_device const *)tp->dev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    if ((tp->msg_enable & 4U) != 0U) {
      netdev_info((struct net_device const *)tp->dev, "Link is down\n");
    } else {
    }
    tg3_ump_link_report(tp);
  } else
  if ((tp->msg_enable & 4U) != 0U) {
    netdev_info((struct net_device const *)tp->dev, "Link is up at %d Mbps, %s duplex\n",
                (unsigned int )tp->link_config.active_speed != 1000U ? ((unsigned int )tp->link_config.active_speed == 100U ? 100 : 10) : 1000,
                (unsigned int )tp->link_config.active_duplex == 1U ? (char *)"full" : (char *)"half");
    netdev_info((struct net_device const *)tp->dev, "Flow control is %s for TX and %s for RX\n",
                (int )tp->link_config.active_flowctrl & 1 ? (char *)"on" : (char *)"off",
                ((int )tp->link_config.active_flowctrl & 2) != 0 ? (char *)"on" : (char *)"off");
    if ((tp->phy_flags & 262144U) != 0U) {
      netdev_info((struct net_device const *)tp->dev, "EEE is %s\n", tp->setlpicnt != 0U ? (char *)"enabled" : (char *)"disabled");
    } else {
    }
    tg3_ump_link_report(tp);
  } else {
  }
  tp->link_up = netif_carrier_ok((struct net_device const *)tp->dev);
  return;
}
}
static u32 tg3_decode_flowctrl_1000T(u32 adv )
{
  u32 flowctrl ;
  {
  flowctrl = 0U;
  if ((adv & 1024U) != 0U) {
    flowctrl = flowctrl | 2U;
    if ((adv & 2048U) == 0U) {
      flowctrl = flowctrl | 1U;
    } else {
    }
  } else
  if ((adv & 2048U) != 0U) {
    flowctrl = flowctrl | 1U;
  } else {
  }
  return (flowctrl);
}
}
static u16 tg3_advert_flowctrl_1000X(u8 flow_ctrl )
{
  u16 miireg ;
  {
  if ((int )flow_ctrl & 1 && ((int )flow_ctrl & 2) != 0) {
    miireg = 128U;
  } else
  if ((int )flow_ctrl & 1) {
    miireg = 256U;
  } else
  if (((int )flow_ctrl & 2) != 0) {
    miireg = 384U;
  } else {
    miireg = 0U;
  }
  return (miireg);
}
}
static u32 tg3_decode_flowctrl_1000X(u32 adv )
{
  u32 flowctrl ;
  {
  flowctrl = 0U;
  if ((adv & 128U) != 0U) {
    flowctrl = flowctrl | 2U;
    if ((adv & 256U) == 0U) {
      flowctrl = flowctrl | 1U;
    } else {
    }
  } else
  if ((adv & 256U) != 0U) {
    flowctrl = flowctrl | 1U;
  } else {
  }
  return (flowctrl);
}
}
static u8 tg3_resolve_flowctrl_1000X(u16 lcladv , u16 rmtadv )
{
  u8 cap ;
  {
  cap = 0U;
  if ((((int )lcladv & (int )rmtadv) & 128) != 0) {
    cap = 3U;
  } else
  if ((((int )lcladv & (int )rmtadv) & 256) != 0) {
    if (((int )lcladv & 128) != 0) {
      cap = 2U;
    } else {
    }
    if (((int )rmtadv & 128) != 0) {
      cap = 1U;
    } else {
    }
  } else {
  }
  return (cap);
}
}
static void tg3_setup_flow_control(struct tg3 *tp , u32 lcladv , u32 rmtadv )
{
  u8 autoneg ;
  u8 flowctrl ;
  u32 old_rx_mode ;
  u32 old_tx_mode ;
  int tmp ;
  int tmp___0 ;
  {
  flowctrl = 0U;
  old_rx_mode = tp->rx_mode;
  old_tx_mode = tp->tx_mode;
  tmp = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    autoneg = (u8 )((tp->mdio_bus)->phy_map[1])->autoneg;
  } else {
    autoneg = tp->link_config.autoneg;
  }
  if ((unsigned int )autoneg == 1U) {
    tmp___0 = _tg3_flag(25, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      if ((tp->phy_flags & 48U) != 0U) {
        flowctrl = tg3_resolve_flowctrl_1000X((int )((u16 )lcladv), (int )((u16 )rmtadv));
      } else {
        flowctrl = mii_resolve_flowctrl_fdx((int )((u16 )lcladv), (int )((u16 )rmtadv));
      }
    } else {
      flowctrl = tp->link_config.flowctrl;
    }
  } else {
    flowctrl = tp->link_config.flowctrl;
  }
  tp->link_config.active_flowctrl = flowctrl;
  if (((int )flowctrl & 2) != 0) {
    tp->rx_mode = tp->rx_mode | 4U;
  } else {
    tp->rx_mode = tp->rx_mode & 4294967291U;
  }
  if (tp->rx_mode != old_rx_mode) {
    _tw32_flush(tp, 1128U, tp->rx_mode, 0U);
  } else {
  }
  if ((int )flowctrl & 1) {
    tp->tx_mode = tp->tx_mode | 16U;
  } else {
    tp->tx_mode = tp->tx_mode & 4294967279U;
  }
  if (tp->tx_mode != old_tx_mode) {
    _tw32_flush(tp, 1116U, tp->tx_mode, 0U);
  } else {
  }
  return;
}
}
static void tg3_adjust_link(struct net_device *dev )
{
  u8 oldflowctrl ;
  u8 linkmesg ;
  u32 mac_mode ;
  u32 lcl_adv ;
  u32 rmt_adv ;
  struct tg3 *tp ;
  void *tmp ;
  struct phy_device *phydev ;
  u16 tmp___0 ;
  {
  linkmesg = 0U;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  phydev = (tp->mdio_bus)->phy_map[1];
  spin_lock_bh(& tp->lock);
  mac_mode = tp->mac_mode & 4294967281U;
  oldflowctrl = tp->link_config.active_flowctrl;
  if (phydev->link != 0) {
    lcl_adv = 0U;
    rmt_adv = 0U;
    if (phydev->speed == 100 || phydev->speed == 10) {
      mac_mode = mac_mode | 4U;
    } else
    if (phydev->speed == 1000 || tp->pci_chip_rev_id >> 12 != 22405U) {
      mac_mode = mac_mode | 8U;
    } else {
      mac_mode = mac_mode | 4U;
    }
    if (phydev->duplex == 0) {
      mac_mode = mac_mode | 2U;
    } else {
      tmp___0 = mii_advertise_flowctrl((int )tp->link_config.flowctrl);
      lcl_adv = (u32 )tmp___0;
      if (phydev->pause != 0) {
        rmt_adv = 1024U;
      } else {
      }
      if (phydev->asym_pause != 0) {
        rmt_adv = rmt_adv | 2048U;
      } else {
      }
    }
    tg3_setup_flow_control(tp, lcl_adv, rmt_adv);
  } else {
    mac_mode = mac_mode | 8U;
  }
  if (tp->mac_mode != mac_mode) {
    tp->mac_mode = mac_mode;
    _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
    __const_udelay(171800UL);
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 22405U) {
    if (phydev->speed == 10) {
      (*(tp->write32))(tp, 1104U, 3U);
    } else {
      (*(tp->write32))(tp, 1104U, 1U);
    }
  } else {
  }
  if (phydev->speed == 1000 && phydev->duplex == 0) {
    (*(tp->write32))(tp, 1124U, 9983U);
  } else {
    (*(tp->write32))(tp, 1124U, 9760U);
  }
  if (((phydev->link != tp->old_link || phydev->speed != (int )tp->link_config.active_speed) || phydev->duplex != (int )tp->link_config.active_duplex) || (int )tp->link_config.active_flowctrl != (int )oldflowctrl) {
    linkmesg = 1U;
  } else {
  }
  tp->old_link = phydev->link;
  tp->link_config.active_speed = (u16 )phydev->speed;
  tp->link_config.active_duplex = (u8 )phydev->duplex;
  spin_unlock_bh(& tp->lock);
  if ((unsigned int )linkmesg != 0U) {
    tg3_link_report(tp);
  } else {
  }
  return;
}
}
static int tg3_phy_init(struct tg3 *tp )
{
  struct phy_device *phydev ;
  char const *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  if ((tp->phy_flags & 2U) != 0U) {
    return (0);
  } else {
  }
  tg3_bmcr_reset(tp);
  phydev = (tp->mdio_bus)->phy_map[1];
  tmp = dev_name((struct device const *)(& phydev->dev));
  phydev = phy_connect(tp->dev, tmp, & tg3_adjust_link, phydev->interface);
  tmp___1 = IS_ERR((void const *)phydev);
  if (tmp___1 != 0L) {
    dev_err((struct device const *)(& (tp->pdev)->dev), "Could not attach to PHY\n");
    tmp___0 = PTR_ERR((void const *)phydev);
    return ((int )tmp___0);
  } else {
  }
  switch ((unsigned int )phydev->interface) {
  case 2U: ;
  case 6U: ;
  if ((tp->phy_flags & 128U) == 0U) {
    phydev->supported = phydev->supported & 25343U;
    goto ldv_48444;
  } else {
  }
  case 1U:
  phydev->supported = phydev->supported & 25295U;
  goto ldv_48444;
  default:
  phy_disconnect((tp->mdio_bus)->phy_map[1]);
  return (-22);
  }
  ldv_48444:
  tp->phy_flags = tp->phy_flags | 2U;
  phydev->advertising = phydev->supported;
  return (0);
}
}
static void tg3_phy_start(struct tg3 *tp )
{
  struct phy_device *phydev ;
  {
  if ((tp->phy_flags & 2U) == 0U) {
    return;
  } else {
  }
  phydev = (tp->mdio_bus)->phy_map[1];
  if ((int )tp->phy_flags & 1) {
    tp->phy_flags = tp->phy_flags & 4294967294U;
    phydev->speed = (int )tp->link_config.speed;
    phydev->duplex = (int )tp->link_config.duplex;
    phydev->autoneg = (int )tp->link_config.autoneg;
    phydev->advertising = tp->link_config.advertising;
  } else {
  }
  phy_start(phydev);
  phy_start_aneg(phydev);
  return;
}
}
static void tg3_phy_stop(struct tg3 *tp )
{
  {
  if ((tp->phy_flags & 2U) == 0U) {
    return;
  } else {
  }
  phy_stop((tp->mdio_bus)->phy_map[1]);
  return;
}
}
static void tg3_phy_fini(struct tg3 *tp )
{
  {
  if ((tp->phy_flags & 2U) != 0U) {
    phy_disconnect((tp->mdio_bus)->phy_map[1]);
    tp->phy_flags = tp->phy_flags & 4294967293U;
  } else {
  }
  return;
}
}
static int tg3_phy_set_extloopbk(struct tg3 *tp )
{
  int err ;
  u32 val ;
  {
  if ((tp->phy_flags & 64U) != 0U) {
    return (0);
  } else {
  }
  if ((tp->phy_id & 4294967280U) == 1610645584U) {
    err = tg3_phy_auxctl_write(tp, 0, 52256U);
    goto done;
  } else {
  }
  err = tg3_phy_auxctl_read(tp, 0, & val);
  if (err != 0) {
    return (err);
  } else {
  }
  val = val | 32768U;
  err = tg3_phy_auxctl_write(tp, 0, val);
  done: ;
  return (err);
}
}
static void tg3_phy_fet_toggle_apd(struct tg3 *tp , bool enable )
{
  u32 phytest ;
  u32 phy ;
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = tg3_readphy(tp, 31, & phytest);
  if (tmp___0 == 0) {
    tg3_writephy(tp, 31, phytest | 128U);
    tmp = tg3_readphy(tp, 27, & phy);
    if (tmp == 0) {
      if ((int )enable) {
        phy = phy | 32U;
      } else {
        phy = phy & 4294967263U;
      }
      tg3_writephy(tp, 27, phy);
    } else {
    }
    tg3_writephy(tp, 31, phytest);
  } else {
  }
  return;
}
}
static void tg3_phy_toggle_apd(struct tg3 *tp , bool enable )
{
  u32 reg ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return;
  } else {
    tmp___0 = _tg3_flag(77, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0 && (tp->phy_flags & 32U) != 0U) {
      return;
    } else {
    }
  }
  if ((tp->phy_flags & 64U) != 0U) {
    tg3_phy_fet_toggle_apd(tp, (int )enable);
    return;
  } else {
  }
  reg = 37917U;
  if (tp->pci_chip_rev_id >> 12 != 22404U || ! enable) {
    reg = reg | 2U;
  } else {
  }
  tg3_writephy(tp, 28, reg);
  reg = 43009U;
  if ((int )enable) {
    reg = reg | 32U;
  } else {
  }
  tg3_writephy(tp, 28, reg);
  return;
}
}
static void tg3_phy_toggle_automdix(struct tg3 *tp , bool enable )
{
  u32 phy ;
  int tmp ;
  u32 ephy ;
  u32 reg ;
  int tmp___0 ;
  int tmp___1 ;
  int ret ;
  {
  tmp = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0 || (tp->phy_flags & 48U) != 0U) {
    return;
  } else {
  }
  if ((tp->phy_flags & 64U) != 0U) {
    tmp___1 = tg3_readphy(tp, 31, & ephy);
    if (tmp___1 == 0) {
      reg = 16U;
      tg3_writephy(tp, 31, ephy | 128U);
      tmp___0 = tg3_readphy(tp, (int )reg, & phy);
      if (tmp___0 == 0) {
        if ((int )enable) {
          phy = phy | 16384U;
        } else {
          phy = phy & 4294950911U;
        }
        tg3_writephy(tp, (int )reg, phy);
      } else {
      }
      tg3_writephy(tp, 31, ephy);
    } else {
    }
  } else {
    ret = tg3_phy_auxctl_read(tp, 7, & phy);
    if (ret == 0) {
      if ((int )enable) {
        phy = phy | 512U;
      } else {
        phy = phy & 4294966783U;
      }
      tg3_phy_auxctl_write(tp, 7, phy);
    } else {
    }
  }
  return;
}
}
static void tg3_phy_set_wirespeed(struct tg3 *tp )
{
  int ret ;
  u32 val ;
  {
  if ((tp->phy_flags & 1024U) != 0U) {
    return;
  } else {
  }
  ret = tg3_phy_auxctl_read(tp, 7, & val);
  if (ret == 0) {
    tg3_phy_auxctl_write(tp, 7, val | 16U);
  } else {
  }
  return;
}
}
static void tg3_phy_apply_otp(struct tg3 *tp )
{
  u32 otp ;
  u32 phy ;
  int tmp ;
  {
  if (tp->phy_otp == 0U) {
    return;
  } else {
  }
  otp = tp->phy_otp;
  tmp = tg3_phy_toggle_auxctl_smdsp(tp, 1);
  if (tmp != 0) {
    return;
  } else {
  }
  phy = (otp & 224U) >> 1;
  phy = phy | 7U;
  tg3_phydsp_write(tp, 1U, phy);
  phy = ((otp & 768U) >> 1) | ((otp & 1024U) >> 1);
  tg3_phydsp_write(tp, 31U, phy);
  phy = (otp & 2048U) >> 11;
  phy = phy | 2U;
  tg3_phydsp_write(tp, 24607U, phy);
  phy = otp >> 24;
  tg3_phydsp_write(tp, 3957U, phy);
  phy = (otp & 61440U) >> 8;
  tg3_phydsp_write(tp, 3990U, phy);
  phy = ((otp & 14680064U) >> 11) | ((otp & 1835008U) >> 16);
  tg3_phydsp_write(tp, 3991U, phy);
  tg3_phy_toggle_auxctl_smdsp(tp, 0);
  return;
}
}
static void tg3_phy_eee_adjust(struct tg3 *tp , bool current_link_up )
{
  u32 val ;
  u32 eeectl ;
  int tmp ;
  {
  if ((tp->phy_flags & 262144U) == 0U) {
    return;
  } else {
  }
  tp->setlpicnt = 0U;
  if ((((unsigned int )tp->link_config.autoneg == 1U && (int )current_link_up) && (unsigned int )tp->link_config.active_duplex == 1U) && ((unsigned int )tp->link_config.active_speed == 100U || (unsigned int )tp->link_config.active_speed == 1000U)) {
    if ((unsigned int )tp->link_config.active_speed == 1000U) {
      eeectl = 413U;
    } else {
      eeectl = 900U;
    }
    (*(tp->write32))(tp, 14032U, eeectl);
    tg3_phy_cl45_read(tp, 7U, 32830U, & val);
    if (val == 4U || val == 2U) {
      tp->setlpicnt = 2U;
    } else {
    }
  } else {
  }
  if (tp->setlpicnt == 0U) {
    if ((int )current_link_up) {
      tmp = tg3_phy_toggle_auxctl_smdsp(tp, 1);
      if (tmp == 0) {
        tg3_phydsp_write(tp, 26U, 0U);
        tg3_phy_toggle_auxctl_smdsp(tp, 0);
      } else {
      }
    } else {
    }
    val = (*(tp->read32))(tp, 14000U);
    (*(tp->write32))(tp, 14000U, val & 4294967167U);
  } else {
  }
  return;
}
}
static void tg3_phy_eee_enable(struct tg3 *tp )
{
  u32 val ;
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )tp->link_config.active_speed == 1000U) {
    if (tp->pci_chip_rev_id >> 12 == 22295U || tp->pci_chip_rev_id >> 12 == 22297U) {
      goto _L;
    } else {
      tmp = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
      if (tmp != 0) {
        _L:
        tmp___0 = tg3_phy_toggle_auxctl_smdsp(tp, 1);
        if (tmp___0 == 0) {
          val = 3U;
          tg3_phydsp_write(tp, 26U, val);
          tg3_phy_toggle_auxctl_smdsp(tp, 0);
        } else {
        }
      } else {
      }
    }
  } else {
  }
  val = (*(tp->read32))(tp, 14000U);
  (*(tp->write32))(tp, 14000U, val | 128U);
  return;
}
}
static int tg3_wait_macro_done(struct tg3 *tp )
{
  int limit ;
  u32 tmp32 ;
  int tmp ;
  int tmp___0 ;
  {
  limit = 100;
  goto ldv_48509;
  ldv_48508:
  tmp = tg3_readphy(tp, 22, & tmp32);
  if (tmp == 0) {
    if ((tmp32 & 4096U) == 0U) {
      goto ldv_48507;
    } else {
    }
  } else {
  }
  ldv_48509:
  tmp___0 = limit;
  limit = limit - 1;
  if (tmp___0 != 0) {
    goto ldv_48508;
  } else {
  }
  ldv_48507: ;
  if (limit < 0) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int tg3_phy_write_and_check_testpat(struct tg3 *tp , int *resetp )
{
  u32 test_pat[4U][6U] ;
  int chan ;
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 low ;
  u32 high ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  test_pat[0][0] = 21845U;
  test_pat[0][1] = 5U;
  test_pat[0][2] = 10922U;
  test_pat[0][3] = 10U;
  test_pat[0][4] = 13398U;
  test_pat[0][5] = 3U;
  test_pat[1][0] = 10922U;
  test_pat[1][1] = 10U;
  test_pat[1][2] = 13107U;
  test_pat[1][3] = 3U;
  test_pat[1][4] = 30874U;
  test_pat[1][5] = 5U;
  test_pat[2][0] = 23130U;
  test_pat[2][1] = 5U;
  test_pat[2][2] = 10858U;
  test_pat[2][3] = 10U;
  test_pat[2][4] = 7117U;
  test_pat[2][5] = 3U;
  test_pat[3][0] = 10842U;
  test_pat[3][1] = 10U;
  test_pat[3][2] = 13251U;
  test_pat[3][3] = 3U;
  test_pat[3][4] = 12017U;
  test_pat[3][5] = 5U;
  chan = 0;
  goto ldv_48526;
  ldv_48525:
  tg3_writephy(tp, 23, (u32 )(chan * 8192 | 512));
  tg3_writephy(tp, 22, 2U);
  i = 0;
  goto ldv_48518;
  ldv_48517:
  tg3_writephy(tp, 21, test_pat[chan][i]);
  i = i + 1;
  ldv_48518: ;
  if (i <= 5) {
    goto ldv_48517;
  } else {
  }
  tg3_writephy(tp, 22, 514U);
  tmp = tg3_wait_macro_done(tp);
  if (tmp != 0) {
    *resetp = 1;
    return (-16);
  } else {
  }
  tg3_writephy(tp, 23, (u32 )(chan * 8192 | 512));
  tg3_writephy(tp, 22, 130U);
  tmp___0 = tg3_wait_macro_done(tp);
  if (tmp___0 != 0) {
    *resetp = 1;
    return (-16);
  } else {
  }
  tg3_writephy(tp, 22, 2050U);
  tmp___1 = tg3_wait_macro_done(tp);
  if (tmp___1 != 0) {
    *resetp = 1;
    return (-16);
  } else {
  }
  i = 0;
  goto ldv_48523;
  ldv_48522:
  tmp___2 = tg3_readphy(tp, 21, & low);
  if (tmp___2 != 0) {
    *resetp = 1;
    return (-16);
  } else {
    tmp___3 = tg3_readphy(tp, 21, & high);
    if (tmp___3 != 0) {
      *resetp = 1;
      return (-16);
    } else {
      tmp___4 = tg3_wait_macro_done(tp);
      if (tmp___4 != 0) {
        *resetp = 1;
        return (-16);
      } else {
      }
    }
  }
  low = low & 32767U;
  high = high & 15U;
  if (test_pat[chan][i] != low || test_pat[chan][i + 1] != high) {
    tg3_writephy(tp, 23, 11U);
    tg3_writephy(tp, 21, 16385U);
    tg3_writephy(tp, 21, 16389U);
    return (-16);
  } else {
  }
  i = i + 2;
  ldv_48523: ;
  if (i <= 5) {
    goto ldv_48522;
  } else {
  }
  chan = chan + 1;
  ldv_48526: ;
  if (chan <= 3) {
    goto ldv_48525;
  } else {
  }
  return (0);
}
}
static int tg3_phy_reset_chanpat(struct tg3 *tp )
{
  int chan ;
  int i ;
  int tmp ;
  {
  chan = 0;
  goto ldv_48537;
  ldv_48536:
  tg3_writephy(tp, 23, (u32 )(chan * 8192 | 512));
  tg3_writephy(tp, 22, 2U);
  i = 0;
  goto ldv_48534;
  ldv_48533:
  tg3_writephy(tp, 21, 0U);
  i = i + 1;
  ldv_48534: ;
  if (i <= 5) {
    goto ldv_48533;
  } else {
  }
  tg3_writephy(tp, 22, 514U);
  tmp = tg3_wait_macro_done(tp);
  if (tmp != 0) {
    return (-16);
  } else {
  }
  chan = chan + 1;
  ldv_48537: ;
  if (chan <= 3) {
    goto ldv_48536;
  } else {
  }
  return (0);
}
}
static int tg3_phy_reset_5703_4_5(struct tg3 *tp )
{
  u32 reg32 ;
  u32 phy9_orig ;
  int retries ;
  int do_phy_reset ;
  int err ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  retries = 10;
  do_phy_reset = 1;
  ldv_48549: ;
  if (do_phy_reset != 0) {
    err = tg3_bmcr_reset(tp);
    if (err != 0) {
      return (err);
    } else {
    }
    do_phy_reset = 0;
  } else {
  }
  tmp = tg3_readphy(tp, 16, & reg32);
  if (tmp != 0) {
    goto ldv_48547;
  } else {
  }
  reg32 = reg32 | 12288U;
  tg3_writephy(tp, 16, reg32);
  tg3_writephy(tp, 0, 320U);
  tmp___0 = tg3_readphy(tp, 9, & phy9_orig);
  if (tmp___0 != 0) {
    goto ldv_48547;
  } else {
  }
  tg3_writephy(tp, 9, 6144U);
  err = tg3_phy_toggle_auxctl_smdsp(tp, 1);
  if (err != 0) {
    return (err);
  } else {
  }
  tg3_phydsp_write(tp, 32773U, 2048U);
  err = tg3_phy_write_and_check_testpat(tp, & do_phy_reset);
  if (err == 0) {
    goto ldv_48548;
  } else {
  }
  ldv_48547:
  retries = retries - 1;
  if (retries != 0) {
    goto ldv_48549;
  } else {
  }
  ldv_48548:
  err = tg3_phy_reset_chanpat(tp);
  if (err != 0) {
    return (err);
  } else {
  }
  tg3_phydsp_write(tp, 32773U, 0U);
  tg3_writephy(tp, 23, 33280U);
  tg3_writephy(tp, 22, 0U);
  tg3_phy_toggle_auxctl_smdsp(tp, 0);
  tg3_writephy(tp, 9, phy9_orig);
  tmp___1 = tg3_readphy(tp, 16, & reg32);
  if (tmp___1 == 0) {
    reg32 = reg32 & 4294955007U;
    tg3_writephy(tp, 16, reg32);
  } else
  if (err == 0) {
    err = -16;
  } else {
  }
  return (err);
}
}
static void tg3_carrier_off(struct tg3 *tp )
{
  {
  netif_carrier_off(tp->dev);
  tp->link_up = 0;
  return;
}
}
static void tg3_warn_mgmt_link_flap(struct tg3 *tp )
{
  int tmp ;
  {
  tmp = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    netdev_warn((struct net_device const *)tp->dev, "Management side-band traffic will be interrupted during phy settings change\n");
  } else {
  }
  return;
}
}
static int tg3_phy_reset(struct tg3 *tp )
{
  u32 val ;
  u32 cpmuctrl ;
  int err ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  if (tp->pci_chip_rev_id >> 12 == 12U) {
    val = (*(tp->read32))(tp, 26628U);
    _tw32_flush(tp, 26628U, val & 4292870143U, 0U);
    __const_udelay(171800UL);
  } else {
  }
  err = tg3_readphy(tp, 1, & val);
  tmp = tg3_readphy(tp, 1, & val);
  err = tmp | err;
  if (err != 0) {
    return (-16);
  } else {
  }
  tmp___0 = netif_running((struct net_device const *)tp->dev);
  if ((int )tmp___0 && (int )tp->link_up) {
    netif_carrier_off(tp->dev);
    tg3_link_report(tp);
  } else {
  }
  if ((tp->pci_chip_rev_id >> 12 == 1U || tp->pci_chip_rev_id >> 12 == 2U) || tp->pci_chip_rev_id >> 12 == 3U) {
    err = tg3_phy_reset_5703_4_5(tp);
    if (err != 0) {
      return (err);
    } else {
    }
    goto out;
  } else {
  }
  cpmuctrl = 0U;
  if (tp->pci_chip_rev_id >> 12 == 22404U && tp->pci_chip_rev_id >> 8 != 358464U) {
    cpmuctrl = (*(tp->read32))(tp, 13824U);
    if ((cpmuctrl & 65536U) != 0U) {
      (*(tp->write32))(tp, 13824U, cpmuctrl & 4294901759U);
    } else {
    }
  } else {
  }
  err = tg3_bmcr_reset(tp);
  if (err != 0) {
    return (err);
  } else {
  }
  if ((cpmuctrl & 65536U) != 0U) {
    val = 513U;
    tg3_phydsp_write(tp, 3848U, val);
    (*(tp->write32))(tp, 13824U, cpmuctrl);
  } else {
  }
  if (tp->pci_chip_rev_id >> 8 == 358464U || tp->pci_chip_rev_id >> 8 == 357904U) {
    val = (*(tp->read32))(tp, 13836U);
    if ((val & 2031616U) == 1114112U) {
      val = val & 4292935679U;
      __const_udelay(171800UL);
      _tw32_flush(tp, 13836U, val, 0U);
    } else {
    }
  } else {
  }
  tmp___1 = _tg3_flag(77, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0 && (tp->phy_flags & 32U) != 0U) {
    return (0);
  } else {
  }
  tg3_phy_apply_otp(tp);
  if ((tp->phy_flags & 256U) != 0U) {
    tg3_phy_toggle_apd(tp, 1);
  } else {
    tg3_phy_toggle_apd(tp, 0);
  }
  out: ;
  if ((tp->phy_flags & 8192U) != 0U) {
    tmp___2 = tg3_phy_toggle_auxctl_smdsp(tp, 1);
    if (tmp___2 == 0) {
      tg3_phydsp_write(tp, 8223U, 10922U);
      tg3_phydsp_write(tp, 10U, 803U);
      tg3_phy_toggle_auxctl_smdsp(tp, 0);
    } else {
    }
  } else {
  }
  if ((tp->phy_flags & 16384U) != 0U) {
    tg3_writephy(tp, 28, 36200U);
    tg3_writephy(tp, 28, 36200U);
  } else {
  }
  if ((tp->phy_flags & 32768U) != 0U) {
    tmp___3 = tg3_phy_toggle_auxctl_smdsp(tp, 1);
    if (tmp___3 == 0) {
      tg3_phydsp_write(tp, 10U, 12555U);
      tg3_phydsp_write(tp, 8223U, 38150U);
      tg3_phydsp_write(tp, 16415U, 5346U);
      tg3_phy_toggle_auxctl_smdsp(tp, 0);
    } else {
    }
  } else
  if ((tp->phy_flags & 2048U) != 0U) {
    tmp___4 = tg3_phy_toggle_auxctl_smdsp(tp, 1);
    if (tmp___4 == 0) {
      tg3_writephy(tp, 23, 10U);
      if ((tp->phy_flags & 4096U) != 0U) {
        tg3_writephy(tp, 21, 4363U);
        tg3_writephy(tp, 30, 20U);
      } else {
        tg3_writephy(tp, 21, 267U);
      }
      tg3_phy_toggle_auxctl_smdsp(tp, 0);
    } else {
    }
  } else {
  }
  if ((tp->phy_id & 4294967280U) == 1610645584U) {
    tg3_phy_auxctl_write(tp, 0, 19488U);
  } else {
    tmp___5 = _tg3_flag(29, (unsigned long *)(& tp->tg3_flags));
    if (tmp___5 != 0) {
      err = tg3_phy_auxctl_read(tp, 0, & val);
      if (err == 0) {
        tg3_phy_auxctl_write(tp, 0, val | 16384U);
      } else {
      }
    } else {
    }
  }
  tmp___7 = _tg3_flag(29, (unsigned long *)(& tp->tg3_flags));
  if (tmp___7 != 0) {
    tmp___6 = tg3_readphy(tp, 16, & val);
    if (tmp___6 == 0) {
      tg3_writephy(tp, 16, val | 1U);
    } else {
    }
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 12U) {
    tg3_writephy(tp, 23, 18U);
  } else {
  }
  if (tp->pci_chip_rev_id == 91627520U) {
    tg3_phydsp_write(tp, 4091U, 16384U);
  } else {
  }
  tg3_phy_toggle_automdix(tp, 1);
  tg3_phy_set_wirespeed(tp);
  return (0);
}
}
__inline static u32 tg3_set_function_status(struct tg3 *tp , u32 newstat )
{
  u32 status ;
  u32 shift ;
  {
  if (tp->pci_chip_rev_id >> 12 == 22295U || tp->pci_chip_rev_id >> 12 == 22297U) {
    status = tg3_ape_read32(tp, 8U);
  } else {
    status = (*(tp->read32))(tp, 13388U);
  }
  shift = (u32 )((tp->pci_fn + 1) * 4);
  status = (u32 )(~ (3 << (int )shift)) & status;
  status = (newstat << (int )shift) | status;
  if (tp->pci_chip_rev_id >> 12 == 22295U || tp->pci_chip_rev_id >> 12 == 22297U) {
    tg3_ape_write32(tp, 8U, status);
  } else {
    (*(tp->write32))(tp, 13388U, status);
  }
  return (status >> 4);
}
}
__inline static int tg3_pwrsrc_switch_to_vmain(struct tg3 *tp )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = _tg3_flag(36, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return (0);
  } else {
  }
  if ((tp->pci_chip_rev_id >> 12 == 22295U || tp->pci_chip_rev_id >> 12 == 22297U) || tp->pci_chip_rev_id >> 12 == 22304U) {
    tmp___0 = tg3_ape_lock(tp, 7);
    if (tmp___0 != 0) {
      return (-5);
    } else {
    }
    tg3_set_function_status(tp, 1U);
    _tw32_flush(tp, 26632U, tp->grc_local_ctrl, 100U);
    tg3_ape_unlock(tp, 7);
  } else {
    _tw32_flush(tp, 26632U, tp->grc_local_ctrl, 100U);
  }
  return (0);
}
}
static void tg3_pwrsrc_die_with_vmain(struct tg3 *tp )
{
  u32 grc_local_ctrl ;
  int tmp ;
  {
  tmp = _tg3_flag(36, (unsigned long *)(& tp->tg3_flags));
  if ((tmp == 0 || tp->pci_chip_rev_id >> 12 == 7U) || tp->pci_chip_rev_id >> 12 == 0U) {
    return;
  } else {
  }
  grc_local_ctrl = tp->grc_local_ctrl | 4096U;
  _tw32_flush(tp, 26632U, grc_local_ctrl | 32768U, 100U);
  _tw32_flush(tp, 26632U, grc_local_ctrl, 100U);
  _tw32_flush(tp, 26632U, grc_local_ctrl | 32768U, 100U);
  return;
}
}
static void tg3_pwrsrc_switch_to_vaux(struct tg3 *tp )
{
  int tmp ;
  u32 grc_local_ctrl ;
  u32 no_gpio2 ;
  u32 grc_local_ctrl___0 ;
  {
  tmp = _tg3_flag(36, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 7U || tp->pci_chip_rev_id >> 12 == 0U) {
    _tw32_flush(tp, 26632U, tp->grc_local_ctrl | 63488U, 100U);
  } else
  if ((unsigned int )(tp->pdev)->device == 5761U || (unsigned int )(tp->pdev)->device == 5768U) {
    grc_local_ctrl = tp->grc_local_ctrl | 63488U;
    _tw32_flush(tp, 26632U, grc_local_ctrl, 100U);
    grc_local_ctrl = grc_local_ctrl | 65536U;
    _tw32_flush(tp, 26632U, grc_local_ctrl, 100U);
    grc_local_ctrl = grc_local_ctrl & 4294950911U;
    _tw32_flush(tp, 26632U, grc_local_ctrl, 100U);
  } else {
    grc_local_ctrl___0 = 0U;
    if (tp->pci_chip_rev_id >> 12 == 9U) {
      grc_local_ctrl___0 = grc_local_ctrl___0 | 64U;
      _tw32_flush(tp, 26632U, tp->grc_local_ctrl | grc_local_ctrl___0, 100U);
    } else {
    }
    no_gpio2 = tp->nic_sram_data_cfg & 1048576U;
    grc_local_ctrl___0 = grc_local_ctrl___0 | 112640U;
    if (no_gpio2 != 0U) {
      grc_local_ctrl___0 = grc_local_ctrl___0 & 4294893567U;
    } else {
    }
    _tw32_flush(tp, 26632U, tp->grc_local_ctrl | grc_local_ctrl___0, 100U);
    grc_local_ctrl___0 = grc_local_ctrl___0 | 16384U;
    _tw32_flush(tp, 26632U, tp->grc_local_ctrl | grc_local_ctrl___0, 100U);
    if (no_gpio2 == 0U) {
      grc_local_ctrl___0 = grc_local_ctrl___0 & 4294901759U;
      _tw32_flush(tp, 26632U, tp->grc_local_ctrl | grc_local_ctrl___0, 100U);
    } else {
    }
  }
  return;
}
}
static void tg3_frob_aux_power_5717(struct tg3 *tp , bool wol_enable )
{
  u32 msg ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  msg = 0U;
  tmp = tg3_ape_lock(tp, 7);
  if (tmp != 0) {
    return;
  } else {
  }
  tmp___0 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    msg = 2U;
  } else {
    tmp___1 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 != 0) {
      msg = 2U;
    } else
    if ((int )wol_enable) {
      msg = 2U;
    } else {
    }
  }
  msg = tg3_set_function_status(tp, msg);
  if ((msg & 4369U) != 0U) {
    goto done;
  } else {
  }
  if ((msg & 8738U) != 0U) {
    tg3_pwrsrc_switch_to_vaux(tp);
  } else {
    tg3_pwrsrc_die_with_vmain(tp);
  }
  done:
  tg3_ape_unlock(tp, 7);
  return;
}
}
static void tg3_frob_aux_power(struct tg3 *tp , bool include_wol )
{
  bool need_vaux ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct net_device *dev_peer ;
  void *tmp___3 ;
  struct tg3 *tp_peer ;
  void *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  need_vaux = 0;
  tmp = _tg3_flag(36, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return;
  } else {
    tmp___0 = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      return;
    } else {
    }
  }
  if ((tp->pci_chip_rev_id >> 12 == 22295U || tp->pci_chip_rev_id >> 12 == 22297U) || tp->pci_chip_rev_id >> 12 == 22304U) {
    if ((int )include_wol) {
      tmp___1 = _tg3_flag(10, (unsigned long *)(& tp->tg3_flags));
      tmp___2 = tmp___1 != 0;
    } else {
      tmp___2 = 0;
    }
    tg3_frob_aux_power_5717(tp, tmp___2);
    return;
  } else {
  }
  if ((unsigned long )tp->pdev_peer != (unsigned long )((struct pci_dev *)0) && (unsigned long )tp->pdev_peer != (unsigned long )tp->pdev) {
    tmp___3 = pci_get_drvdata(tp->pdev_peer);
    dev_peer = (struct net_device *)tmp___3;
    if ((unsigned long )dev_peer != (unsigned long )((struct net_device *)0)) {
      tmp___4 = netdev_priv((struct net_device const *)dev_peer);
      tp_peer = (struct tg3 *)tmp___4;
      tmp___5 = _tg3_flag(31, (unsigned long *)(& tp_peer->tg3_flags));
      if (tmp___5 != 0) {
        return;
      } else {
      }
      if ((int )include_wol) {
        tmp___6 = _tg3_flag(10, (unsigned long *)(& tp_peer->tg3_flags));
        if (tmp___6 != 0) {
          need_vaux = 1;
        } else {
          goto _L;
        }
      } else {
        _L:
        tmp___7 = _tg3_flag(4, (unsigned long *)(& tp_peer->tg3_flags));
        if (tmp___7 != 0) {
          need_vaux = 1;
        } else {
        }
      }
    } else {
    }
  } else {
  }
  if ((int )include_wol) {
    tmp___8 = _tg3_flag(10, (unsigned long *)(& tp->tg3_flags));
    if (tmp___8 != 0) {
      need_vaux = 1;
    } else {
      goto _L___0;
    }
  } else {
    _L___0:
    tmp___9 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
    if (tmp___9 != 0) {
      need_vaux = 1;
    } else {
    }
  }
  if ((int )need_vaux) {
    tg3_pwrsrc_switch_to_vaux(tp);
  } else {
    tg3_pwrsrc_die_with_vmain(tp);
  }
  return;
}
}
static int tg3_5700_link_polarity(struct tg3 *tp , u32 speed )
{
  {
  if (tp->led_ctrl == 4096U) {
    return (1);
  } else
  if ((tp->phy_id & 4294967280U) == 1610645616U) {
    if (speed != 10U) {
      return (1);
    } else {
    }
  } else
  if (speed == 10U) {
    return (1);
  } else {
  }
  return (0);
}
}
static void tg3_power_down_phy(struct tg3 *tp , bool do_low_power )
{
  u32 val ;
  u32 sg_dig_ctrl ;
  u32 tmp ;
  u32 serdes_cfg ;
  u32 tmp___0 ;
  u32 phytest ;
  u32 phy ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if ((tp->phy_flags & 1048576U) != 0U) {
    return;
  } else {
  }
  if ((tp->phy_flags & 16U) != 0U) {
    if (tp->pci_chip_rev_id >> 12 == 2U) {
      tmp = (*(tp->read32))(tp, 1456U);
      sg_dig_ctrl = tmp;
      tmp___0 = (*(tp->read32))(tp, 1424U);
      serdes_cfg = tmp___0;
      sg_dig_ctrl = sg_dig_ctrl | 3221225472U;
      (*(tp->write32))(tp, 1456U, sg_dig_ctrl);
      (*(tp->write32))(tp, 1424U, serdes_cfg | 32768U);
    } else {
    }
    return;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 12U) {
    tg3_bmcr_reset(tp);
    val = (*(tp->read32))(tp, 26628U);
    _tw32_flush(tp, 26628U, val | 2097152U, 0U);
    __const_udelay(171800UL);
    return;
  } else
  if ((tp->phy_flags & 64U) != 0U) {
    tmp___2 = tg3_readphy(tp, 31, & phytest);
    if (tmp___2 == 0) {
      tg3_writephy(tp, 4, 0U);
      tg3_writephy(tp, 0, 4608U);
      tg3_writephy(tp, 31, phytest | 128U);
      tmp___1 = tg3_readphy(tp, 26, & phy);
      if (tmp___1 == 0) {
        phy = phy | 8U;
        tg3_writephy(tp, 26, phy);
      } else {
      }
      tg3_writephy(tp, 31, phytest);
    } else {
    }
    return;
  } else
  if ((int )do_low_power) {
    tg3_writephy(tp, 16, 8U);
    val = 432U;
    tg3_phy_auxctl_write(tp, 2, val);
  } else {
  }
  if (((tp->pci_chip_rev_id >> 12 == 7U || tp->pci_chip_rev_id >> 12 == 2U) || (tp->pci_chip_rev_id >> 12 == 8U && (tp->phy_flags & 32U) != 0U)) || (tp->pci_chip_rev_id >> 12 == 22295U && tp->pci_fn == 0)) {
    return;
  } else {
  }
  if (tp->pci_chip_rev_id >> 8 == 358464U || tp->pci_chip_rev_id >> 8 == 357904U) {
    val = (*(tp->read32))(tp, 13836U);
    val = val & 4292935679U;
    val = val | 1114112U;
    _tw32_flush(tp, 13836U, val, 0U);
  } else {
  }
  tg3_writephy(tp, 0, 2048U);
  return;
}
}
static int tg3_nvram_lock(struct tg3 *tp )
{
  int i ;
  u32 tmp ;
  int tmp___0 ;
  {
  tmp___0 = _tg3_flag(12, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    if (tp->nvram_lock_cnt == 0) {
      (*(tp->write32))(tp, 28704U, 2U);
      i = 0;
      goto ldv_48614;
      ldv_48613:
      tmp = (*(tp->read32))(tp, 28704U);
      if ((tmp & 512U) != 0U) {
        goto ldv_48612;
      } else {
      }
      __const_udelay(85900UL);
      i = i + 1;
      ldv_48614: ;
      if (i <= 7999) {
        goto ldv_48613;
      } else {
      }
      ldv_48612: ;
      if (i == 8000) {
        (*(tp->write32))(tp, 28704U, 32U);
        return (-19);
      } else {
      }
    } else {
    }
    tp->nvram_lock_cnt = tp->nvram_lock_cnt + 1;
  } else {
  }
  return (0);
}
}
static void tg3_nvram_unlock(struct tg3 *tp )
{
  int tmp ;
  {
  tmp = _tg3_flag(12, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    if (tp->nvram_lock_cnt > 0) {
      tp->nvram_lock_cnt = tp->nvram_lock_cnt - 1;
    } else {
    }
    if (tp->nvram_lock_cnt == 0) {
      _tw32_flush(tp, 28704U, 32U, 0U);
    } else {
    }
  } else {
  }
  return;
}
}
static void tg3_enable_nvram_access(struct tg3 *tp )
{
  u32 nvaccess ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp___0 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    tmp___1 = _tg3_flag(49, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 == 0) {
      tmp = (*(tp->read32))(tp, 28708U);
      nvaccess = tmp;
      (*(tp->write32))(tp, 28708U, nvaccess | 1U);
    } else {
    }
  } else {
  }
  return;
}
}
static void tg3_disable_nvram_access(struct tg3 *tp )
{
  u32 nvaccess ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp___0 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    tmp___1 = _tg3_flag(49, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 == 0) {
      tmp = (*(tp->read32))(tp, 28708U);
      nvaccess = tmp;
      (*(tp->write32))(tp, 28708U, nvaccess & 4294967294U);
    } else {
    }
  } else {
  }
  return;
}
}
static int tg3_nvram_read_using_eeprom(struct tg3 *tp , u32 offset , u32 *val )
{
  u32 tmp ;
  int i ;
  u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  if (offset > 65535U || (offset & 3U) != 0U) {
    return (-22);
  } else {
  }
  tmp___0 = (*(tp->read32))(tp, 26680U);
  tmp = tmp___0 & 1677656064U;
  (*(tp->write32))(tp, 26680U, ((offset & 65535U) | tmp) | 2181038080U);
  i = 0;
  goto ldv_48635;
  ldv_48634:
  tmp = (*(tp->read32))(tp, 26680U);
  if ((tmp & 1073741824U) != 0U) {
    goto ldv_48633;
  } else {
  }
  msleep(1U);
  i = i + 1;
  ldv_48635: ;
  if (i <= 999) {
    goto ldv_48634;
  } else {
  }
  ldv_48633: ;
  if ((tmp & 1073741824U) == 0U) {
    return (-16);
  } else {
  }
  tmp = (*(tp->read32))(tp, 26684U);
  tmp___1 = __fswab32(tmp);
  *val = tmp___1;
  return (0);
}
}
static int tg3_nvram_exec_cmd(struct tg3 *tp , u32 nvram_cmd )
{
  int i ;
  u32 tmp ;
  {
  (*(tp->write32))(tp, 28672U, nvram_cmd);
  i = 0;
  goto ldv_48643;
  ldv_48642:
  __const_udelay(42950UL);
  tmp = (*(tp->read32))(tp, 28672U);
  if ((tmp & 8U) != 0U) {
    __const_udelay(42950UL);
    goto ldv_48641;
  } else {
  }
  i = i + 1;
  ldv_48643: ;
  if (i <= 9999) {
    goto ldv_48642;
  } else {
  }
  ldv_48641: ;
  if (i == 10000) {
    return (-16);
  } else {
  }
  return (0);
}
}
static u32 tg3_nvram_phys_addr(struct tg3 *tp , u32 addr )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = _tg3_flag(12, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    tmp___0 = _tg3_flag(13, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      tmp___1 = _tg3_flag(37, (unsigned long *)(& tp->tg3_flags));
      if (tmp___1 != 0) {
        tmp___2 = _tg3_flag(47, (unsigned long *)(& tp->tg3_flags));
        if (tmp___2 == 0) {
          if (tp->nvram_jedecnum == 31U) {
            addr = (addr / tp->nvram_pagesize << 9) + addr % tp->nvram_pagesize;
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  return (addr);
}
}
static u32 tg3_nvram_logical_addr(struct tg3 *tp , u32 addr )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = _tg3_flag(12, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    tmp___0 = _tg3_flag(13, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      tmp___1 = _tg3_flag(37, (unsigned long *)(& tp->tg3_flags));
      if (tmp___1 != 0) {
        tmp___2 = _tg3_flag(47, (unsigned long *)(& tp->tg3_flags));
        if (tmp___2 == 0) {
          if (tp->nvram_jedecnum == 31U) {
            addr = (addr >> 9) * tp->nvram_pagesize + (addr & 511U);
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  return (addr);
}
}
static int tg3_nvram_read(struct tg3 *tp , u32 offset , u32 *val )
{
  int ret ;
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = _tg3_flag(12, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 == 0) {
    tmp = tg3_nvram_read_using_eeprom(tp, offset, val);
    return (tmp);
  } else {
  }
  offset = tg3_nvram_phys_addr(tp, offset);
  if (offset > 16777215U) {
    return (-22);
  } else {
  }
  ret = tg3_nvram_lock(tp);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tg3_enable_nvram_access(tp);
  (*(tp->write32))(tp, 28684U, offset);
  ret = tg3_nvram_exec_cmd(tp, 408U);
  if (ret == 0) {
    *val = (*(tp->read32))(tp, 28688U);
  } else {
  }
  tg3_disable_nvram_access(tp);
  tg3_nvram_unlock(tp);
  return (ret);
}
}
static int tg3_nvram_read_be32(struct tg3 *tp , u32 offset , __be32 *val )
{
  u32 v ;
  int res ;
  int tmp ;
  __u32 tmp___0 ;
  {
  tmp = tg3_nvram_read(tp, offset, & v);
  res = tmp;
  if (res == 0) {
    tmp___0 = __fswab32(v);
    *val = tmp___0;
  } else {
  }
  return (res);
}
}
static int tg3_nvram_write_block_using_eeprom(struct tg3 *tp , u32 offset , u32 len ,
                                              u8 *buf )
{
  int i ;
  int j ;
  int rc ;
  u32 val ;
  u32 addr ;
  __be32 data ;
  size_t __len ;
  void *__ret ;
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  rc = 0;
  i = 0;
  goto ldv_48685;
  ldv_48684:
  addr = offset + (u32 )i;
  __len = 4UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& data), (void const *)buf + (unsigned long )i, __len);
  } else {
    __ret = memcpy((void *)(& data), (void const *)buf + (unsigned long )i,
                             __len);
  }
  tmp = __fswab32(data);
  tmp___0 = __fswab32(tmp);
  (*(tp->write32))(tp, 26684U, tmp___0);
  val = (*(tp->read32))(tp, 26680U);
  (*(tp->write32))(tp, 26680U, val | 1073741824U);
  val = val & 1677656064U;
  (*(tp->write32))(tp, 26680U, ((addr & 65535U) | val) | 33554432U);
  j = 0;
  goto ldv_48682;
  ldv_48681:
  val = (*(tp->read32))(tp, 26680U);
  if ((val & 1073741824U) != 0U) {
    goto ldv_48680;
  } else {
  }
  msleep(1U);
  j = j + 1;
  ldv_48682: ;
  if (j <= 999) {
    goto ldv_48681;
  } else {
  }
  ldv_48680: ;
  if ((val & 1073741824U) == 0U) {
    rc = -16;
    goto ldv_48683;
  } else {
  }
  i = i + 4;
  ldv_48685: ;
  if ((u32 )i < len) {
    goto ldv_48684;
  } else {
  }
  ldv_48683: ;
  return (rc);
}
}
static int tg3_nvram_write_block_unbuffered(struct tg3 *tp , u32 offset , u32 len ,
                                            u8 *buf )
{
  int ret ;
  u32 pagesize ;
  u32 pagemask ;
  u32 nvram_cmd ;
  u8 *tmp ;
  void *tmp___0 ;
  int j ;
  u32 phy_addr ;
  u32 page_off ;
  u32 size ;
  size_t __len ;
  void *__ret ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  __be32 data ;
  __u32 tmp___4 ;
  {
  ret = 0;
  pagesize = tp->nvram_pagesize;
  pagemask = pagesize - 1U;
  tmp___0 = kmalloc((size_t )pagesize, 208U);
  tmp = (u8 *)tmp___0;
  if ((unsigned long )tmp == (unsigned long )((u8 *)0)) {
    return (-12);
  } else {
  }
  goto ldv_48713;
  ldv_48712:
  phy_addr = ~ pagemask & offset;
  j = 0;
  goto ldv_48703;
  ldv_48702:
  ret = tg3_nvram_read_be32(tp, phy_addr + (u32 )j, (__be32 *)tmp + (unsigned long )j);
  if (ret != 0) {
    goto ldv_48701;
  } else {
  }
  j = j + 4;
  ldv_48703: ;
  if ((u32 )j < pagesize) {
    goto ldv_48702;
  } else {
  }
  ldv_48701: ;
  if (ret != 0) {
    goto ldv_48704;
  } else {
  }
  page_off = offset & pagemask;
  size = pagesize;
  if (len < size) {
    size = len;
  } else {
  }
  len = len - size;
  __len = (size_t )size;
  __ret = memcpy((void *)tmp + (unsigned long )page_off, (void const *)buf,
                           __len);
  offset = (pagesize - page_off) + offset;
  tg3_enable_nvram_access(tp);
  nvram_cmd = 65560U;
  tmp___1 = tg3_nvram_exec_cmd(tp, nvram_cmd);
  if (tmp___1 != 0) {
    goto ldv_48704;
  } else {
  }
  (*(tp->write32))(tp, 28684U, phy_addr);
  nvram_cmd = 504U;
  tmp___2 = tg3_nvram_exec_cmd(tp, nvram_cmd);
  if (tmp___2 != 0) {
    goto ldv_48704;
  } else {
  }
  nvram_cmd = 65560U;
  tmp___3 = tg3_nvram_exec_cmd(tp, nvram_cmd);
  if (tmp___3 != 0) {
    goto ldv_48704;
  } else {
  }
  j = 0;
  goto ldv_48711;
  ldv_48710:
  data = *((__be32 *)tmp + (unsigned long )j);
  tmp___4 = __fswab32(data);
  (*(tp->write32))(tp, 28680U, tmp___4);
  (*(tp->write32))(tp, 28684U, phy_addr + (u32 )j);
  nvram_cmd = 56U;
  if (j == 0) {
    nvram_cmd = nvram_cmd | 128U;
  } else
  if ((u32 )j == pagesize - 4U) {
    nvram_cmd = nvram_cmd | 256U;
  } else {
  }
  ret = tg3_nvram_exec_cmd(tp, nvram_cmd);
  if (ret != 0) {
    goto ldv_48709;
  } else {
  }
  j = j + 4;
  ldv_48711: ;
  if ((u32 )j < pagesize) {
    goto ldv_48710;
  } else {
  }
  ldv_48709: ;
  if (ret != 0) {
    goto ldv_48704;
  } else {
  }
  ldv_48713: ;
  if (len != 0U) {
    goto ldv_48712;
  } else {
  }
  ldv_48704:
  nvram_cmd = 131096U;
  tg3_nvram_exec_cmd(tp, nvram_cmd);
  kfree((void const *)tmp);
  return (ret);
}
}
static int tg3_nvram_write_block_buffered(struct tg3 *tp , u32 offset , u32 len ,
                                          u8 *buf )
{
  int i ;
  int ret ;
  u32 page_off ;
  u32 phy_addr ;
  u32 nvram_cmd ;
  __be32 data ;
  size_t __len ;
  void *__ret ;
  __u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 cmd ;
  int tmp___2 ;
  int tmp___3 ;
  {
  ret = 0;
  i = 0;
  goto ldv_48732;
  ldv_48731:
  __len = 4UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& data), (void const *)buf + (unsigned long )i, __len);
  } else {
    __ret = memcpy((void *)(& data), (void const *)buf + (unsigned long )i,
                             __len);
  }
  tmp = __fswab32(data);
  (*(tp->write32))(tp, 28680U, tmp);
  page_off = offset % tp->nvram_pagesize;
  phy_addr = tg3_nvram_phys_addr(tp, offset);
  nvram_cmd = 56U;
  if (page_off == 0U || i == 0) {
    nvram_cmd = nvram_cmd | 128U;
  } else {
  }
  if (tp->nvram_pagesize - 4U == page_off) {
    nvram_cmd = nvram_cmd | 256U;
  } else {
  }
  if ((u32 )i == len - 4U) {
    nvram_cmd = nvram_cmd | 256U;
  } else {
  }
  if ((nvram_cmd & 128U) != 0U) {
    (*(tp->write32))(tp, 28684U, phy_addr);
  } else {
    tmp___0 = _tg3_flag(37, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 == 0) {
      (*(tp->write32))(tp, 28684U, phy_addr);
    } else {
      tmp___1 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
      if (tmp___1 == 0) {
        (*(tp->write32))(tp, 28684U, phy_addr);
      } else {
      }
    }
  }
  if (tp->pci_chip_rev_id >> 12 != 6U) {
    tmp___2 = _tg3_flag(74, (unsigned long *)(& tp->tg3_flags));
    if (tmp___2 == 0) {
      if (tp->nvram_jedecnum == 32U) {
        if ((nvram_cmd & 128U) != 0U) {
          cmd = 65560U;
          ret = tg3_nvram_exec_cmd(tp, cmd);
          if (ret != 0) {
            goto ldv_48730;
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___3 = _tg3_flag(37, (unsigned long *)(& tp->tg3_flags));
  if (tmp___3 == 0) {
    nvram_cmd = nvram_cmd | 384U;
  } else {
  }
  ret = tg3_nvram_exec_cmd(tp, nvram_cmd);
  if (ret != 0) {
    goto ldv_48730;
  } else {
  }
  i = i + 4;
  offset = offset + 4U;
  ldv_48732: ;
  if ((u32 )i < len) {
    goto ldv_48731;
  } else {
  }
  ldv_48730: ;
  return (ret);
}
}
static int tg3_nvram_write_block(struct tg3 *tp , u32 offset , u32 len , u8 *buf )
{
  int ret ;
  int tmp ;
  u32 grc_mode ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = _tg3_flag(11, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    _tw32_flush(tp, 26632U, tp->grc_local_ctrl & 4294934527U, 0U);
    __const_udelay(171800UL);
  } else {
  }
  tmp___4 = _tg3_flag(12, (unsigned long *)(& tp->tg3_flags));
  if (tmp___4 == 0) {
    ret = tg3_nvram_write_block_using_eeprom(tp, offset, len, buf);
  } else {
    ret = tg3_nvram_lock(tp);
    if (ret != 0) {
      return (ret);
    } else {
    }
    tg3_enable_nvram_access(tp);
    tmp___0 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      tmp___1 = _tg3_flag(49, (unsigned long *)(& tp->tg3_flags));
      if (tmp___1 == 0) {
        (*(tp->write32))(tp, 28712U, 1030U);
      } else {
      }
    } else {
    }
    grc_mode = (*(tp->read32))(tp, 26624U);
    (*(tp->write32))(tp, 26624U, grc_mode | 2097152U);
    tmp___2 = _tg3_flag(13, (unsigned long *)(& tp->tg3_flags));
    if (tmp___2 != 0) {
      ret = tg3_nvram_write_block_buffered(tp, offset, len, buf);
    } else {
      tmp___3 = _tg3_flag(37, (unsigned long *)(& tp->tg3_flags));
      if (tmp___3 == 0) {
        ret = tg3_nvram_write_block_buffered(tp, offset, len, buf);
      } else {
        ret = tg3_nvram_write_block_unbuffered(tp, offset, len, buf);
      }
    }
    grc_mode = (*(tp->read32))(tp, 26624U);
    (*(tp->write32))(tp, 26624U, grc_mode & 4292870143U);
    tg3_disable_nvram_access(tp);
    tg3_nvram_unlock(tp);
  }
  tmp___5 = _tg3_flag(11, (unsigned long *)(& tp->tg3_flags));
  if (tmp___5 != 0) {
    _tw32_flush(tp, 26632U, tp->grc_local_ctrl, 0U);
    __const_udelay(171800UL);
  } else {
  }
  return (ret);
}
}
static int tg3_pause_cpu(struct tg3 *tp , u32 cpu_base )
{
  int i ;
  int iters ;
  u32 tmp ;
  {
  iters = 10000;
  i = 0;
  goto ldv_48749;
  ldv_48748:
  (*(tp->write32))(tp, cpu_base + 4U, 4294967295U);
  (*(tp->write32))(tp, cpu_base, 1024U);
  tmp = (*(tp->read32))(tp, cpu_base);
  if ((tmp & 1024U) != 0U) {
    goto ldv_48747;
  } else {
  }
  i = i + 1;
  ldv_48749: ;
  if (i < iters) {
    goto ldv_48748;
  } else {
  }
  ldv_48747: ;
  return (i == iters ? -16 : 0);
}
}
static int tg3_rxcpu_pause(struct tg3 *tp )
{
  int rc ;
  int tmp ;
  {
  tmp = tg3_pause_cpu(tp, 20480U);
  rc = tmp;
  (*(tp->write32))(tp, 20484U, 4294967295U);
  _tw32_flush(tp, 20480U, 1024U, 0U);
  __const_udelay(42950UL);
  return (rc);
}
}
static int tg3_txcpu_pause(struct tg3 *tp )
{
  int tmp ;
  {
  tmp = tg3_pause_cpu(tp, 21504U);
  return (tmp);
}
}
static void tg3_resume_cpu(struct tg3 *tp , u32 cpu_base )
{
  {
  (*(tp->write32))(tp, cpu_base + 4U, 4294967295U);
  _tw32_flush(tp, cpu_base, 0U, 0U);
  return;
}
}
static void tg3_rxcpu_resume(struct tg3 *tp )
{
  {
  tg3_resume_cpu(tp, 20480U);
  return;
}
}
static int tg3_halt_cpu(struct tg3 *tp , u32 cpu_base )
{
  int rc ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  u32 val ;
  u32 tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = ldv__builtin_expect(cpu_base == 21504U, 0L);
  if (tmp != 0L) {
    tmp___0 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
    tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
    if (tmp___1 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8512/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/broadcom/tg3.c.prepared"),
                           "i" (3565), "i" (12UL));
      ldv_48769: ;
      goto ldv_48769;
    } else {
    }
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 12U) {
    tmp___2 = (*(tp->read32))(tp, 26768U);
    val = tmp___2;
    (*(tp->write32))(tp, 26768U, val | 4194304U);
    return (0);
  } else {
  }
  if (cpu_base == 20480U) {
    rc = tg3_rxcpu_pause(tp);
  } else {
    tmp___3 = _tg3_flag(78, (unsigned long *)(& tp->tg3_flags));
    if (tmp___3 != 0) {
      return (0);
    } else {
    }
    rc = tg3_txcpu_pause(tp);
  }
  if (rc != 0) {
    netdev_err((struct net_device const *)tp->dev, "%s timed out, %s CPU\n", "tg3_halt_cpu",
               cpu_base == 20480U ? (char *)"RX" : (char *)"TX");
    return (-19);
  } else {
  }
  tmp___4 = _tg3_flag(12, (unsigned long *)(& tp->tg3_flags));
  if (tmp___4 != 0) {
    (*(tp->write32))(tp, 28704U, 16U);
  } else {
  }
  return (0);
}
}
static int tg3_fw_data_len(struct tg3 *tp , struct tg3_firmware_hdr const *fw_hdr )
{
  int fw_len ;
  __u32 tmp ;
  {
  if (tp->fw_len == 4294967295U) {
    tmp = __fswab32(fw_hdr->len);
    fw_len = (int )tmp;
  } else {
    fw_len = (int )(tp->fw)->size;
  }
  return ((int )(((unsigned long )fw_len - 12UL) / 4UL));
}
}
static int tg3_load_firmware_cpu(struct tg3 *tp , u32 cpu_base , u32 cpu_scratch_base ,
                                 int cpu_scratch_size , struct tg3_firmware_hdr const *fw_hdr )
{
  int err ;
  int i ;
  void (*write_op)(struct tg3 * , u32 , u32 ) ;
  int total_len ;
  int tmp ;
  int tmp___0 ;
  int lock_err ;
  int tmp___1 ;
  u32 tmp___2 ;
  u32 *fw_data ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  int tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  {
  total_len = (int )(tp->fw)->size;
  if (cpu_base == 21504U) {
    tmp = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      netdev_err((struct net_device const *)tp->dev, "%s: Trying to load TX cpu firmware which is 5705\n",
                 "tg3_load_firmware_cpu");
      return (-22);
    } else {
    }
  } else {
  }
  tmp___0 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0 && tp->pci_chip_rev_id >> 12 != 358246U) {
    write_op = & tg3_write_mem;
  } else {
    write_op = & tg3_write_indirect_reg32;
  }
  if (tp->pci_chip_rev_id >> 12 != 358246U) {
    tmp___1 = tg3_nvram_lock(tp);
    lock_err = tmp___1;
    err = tg3_halt_cpu(tp, cpu_base);
    if (lock_err == 0) {
      tg3_nvram_unlock(tp);
    } else {
    }
    if (err != 0) {
      goto out;
    } else {
    }
    i = 0;
    goto ldv_48795;
    ldv_48794:
    (*write_op)(tp, cpu_scratch_base + (u32 )i, 0U);
    i = (int )((unsigned int )i + 4U);
    ldv_48795: ;
    if (i < cpu_scratch_size) {
      goto ldv_48794;
    } else {
    }
    (*(tp->write32))(tp, cpu_base + 4U, 4294967295U);
    tmp___2 = (*(tp->read32))(tp, cpu_base);
    (*(tp->write32))(tp, cpu_base, tmp___2 | 1024U);
  } else {
    total_len = (int )((unsigned int )total_len - 12U);
    fw_hdr = fw_hdr + 1;
  }
  ldv_48801:
  fw_data = (u32 *)fw_hdr + 1U;
  i = 0;
  goto ldv_48799;
  ldv_48798:
  tmp___3 = __fswab32(*(fw_data + (unsigned long )i));
  tmp___4 = __fswab32(fw_hdr->base_addr);
  (*write_op)(tp, ((tmp___4 & 65535U) + cpu_scratch_base) + (u32 )((unsigned long )i) * 4U,
              tmp___3);
  i = i + 1;
  ldv_48799:
  tmp___5 = tg3_fw_data_len(tp, fw_hdr);
  if (tmp___5 > i) {
    goto ldv_48798;
  } else {
  }
  tmp___6 = __fswab32(fw_hdr->len);
  total_len = (int )((unsigned int )total_len - tmp___6);
  tmp___7 = __fswab32(fw_hdr->len);
  fw_hdr = fw_hdr + (unsigned long )tmp___7;
  if (total_len > 0) {
    goto ldv_48801;
  } else {
  }
  err = 0;
  out: ;
  return (err);
}
}
static int tg3_pause_cpu_and_set_pc(struct tg3 *tp , u32 cpu_base , u32 pc )
{
  int i ;
  int iters ;
  u32 tmp ;
  {
  iters = 5;
  (*(tp->write32))(tp, cpu_base + 4U, 4294967295U);
  _tw32_flush(tp, cpu_base + 28U, pc, 0U);
  i = 0;
  goto ldv_48812;
  ldv_48811:
  tmp = (*(tp->read32))(tp, cpu_base + 28U);
  if (tmp == pc) {
    goto ldv_48810;
  } else {
  }
  (*(tp->write32))(tp, cpu_base + 4U, 4294967295U);
  (*(tp->write32))(tp, cpu_base, 1024U);
  _tw32_flush(tp, cpu_base + 28U, pc, 0U);
  __const_udelay(4295000UL);
  i = i + 1;
  ldv_48812: ;
  if (i < iters) {
    goto ldv_48811;
  } else {
  }
  ldv_48810: ;
  return (i == iters ? -16 : 0);
}
}
static int tg3_load_5701_a0_firmware_fix(struct tg3 *tp )
{
  struct tg3_firmware_hdr const *fw_hdr ;
  int err ;
  __u32 tmp ;
  __u32 tmp___0 ;
  u32 tmp___1 ;
  {
  fw_hdr = (struct tg3_firmware_hdr const *)(tp->fw)->data;
  err = tg3_load_firmware_cpu(tp, 20480U, 196608U, 16384, fw_hdr);
  if (err != 0) {
    return (err);
  } else {
  }
  err = tg3_load_firmware_cpu(tp, 21504U, 212992U, 16384, fw_hdr);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp = __fswab32(fw_hdr->base_addr);
  err = tg3_pause_cpu_and_set_pc(tp, 20480U, tmp);
  if (err != 0) {
    tmp___0 = __fswab32(fw_hdr->base_addr);
    tmp___1 = (*(tp->read32))(tp, 20508U);
    netdev_err((struct net_device const *)tp->dev, "%s fails to set RX CPU PC, is %08x should be %08x\n",
               "tg3_load_5701_a0_firmware_fix", tmp___1, tmp___0);
    return (-19);
  } else {
  }
  tg3_rxcpu_resume(tp);
  return (0);
}
}
static int tg3_validate_rxcpu_state(struct tg3 *tp )
{
  int iters ;
  int i ;
  u32 val ;
  u32 tmp ;
  {
  iters = 1000;
  i = 0;
  goto ldv_48827;
  ldv_48826:
  tmp = (*(tp->read32))(tp, 20532U);
  if (tmp == 81U) {
    goto ldv_48825;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_48827: ;
  if (i < iters) {
    goto ldv_48826;
  } else {
  }
  ldv_48825: ;
  if (i == iters) {
    netdev_err((struct net_device const *)tp->dev, "Boot code not ready for service patches\n");
    return (-16);
  } else {
  }
  val = tg3_read_indirect_reg32(tp, 261324U);
  if ((val & 255U) != 0U) {
    netdev_warn((struct net_device const *)tp->dev, "Other patches exist. Not downloading EEE patch\n");
    return (-17);
  } else {
  }
  return (0);
}
}
static void tg3_load_57766_firmware(struct tg3 *tp )
{
  struct tg3_firmware_hdr *fw_hdr ;
  int tmp ;
  int tmp___0 ;
  __u32 tmp___1 ;
  int tmp___2 ;
  {
  tmp = _tg3_flag(58, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return;
  } else {
  }
  tmp___0 = tg3_validate_rxcpu_state(tp);
  if (tmp___0 != 0) {
    return;
  } else {
  }
  if ((unsigned long )tp->fw == (unsigned long )((struct firmware const *)0)) {
    return;
  } else {
  }
  fw_hdr = (struct tg3_firmware_hdr *)(tp->fw)->data;
  tmp___1 = __fswab32(fw_hdr->base_addr);
  if (tmp___1 != 196608U) {
    return;
  } else {
  }
  tmp___2 = tg3_rxcpu_pause(tp);
  if (tmp___2 != 0) {
    return;
  } else {
  }
  tg3_load_firmware_cpu(tp, 0U, 196608U, 0, (struct tg3_firmware_hdr const *)fw_hdr);
  tg3_rxcpu_resume(tp);
  return;
}
}
static int tg3_load_tso_firmware(struct tg3 *tp )
{
  struct tg3_firmware_hdr const *fw_hdr ;
  unsigned long cpu_base ;
  unsigned long cpu_scratch_base ;
  unsigned long cpu_scratch_size ;
  int err ;
  int tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  u32 tmp___2 ;
  {
  tmp = _tg3_flag(38, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return (0);
  } else {
  }
  fw_hdr = (struct tg3_firmware_hdr const *)(tp->fw)->data;
  cpu_scratch_size = (unsigned long )tp->fw_len;
  if (tp->pci_chip_rev_id >> 12 == 3U) {
    cpu_base = 20480UL;
    cpu_scratch_base = 65536UL;
  } else {
    cpu_base = 21504UL;
    cpu_scratch_base = 212992UL;
    cpu_scratch_size = 16384UL;
  }
  err = tg3_load_firmware_cpu(tp, (u32 )cpu_base, (u32 )cpu_scratch_base, (int )cpu_scratch_size,
                              fw_hdr);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___0 = __fswab32(fw_hdr->base_addr);
  err = tg3_pause_cpu_and_set_pc(tp, (u32 )cpu_base, tmp___0);
  if (err != 0) {
    tmp___1 = __fswab32(fw_hdr->base_addr);
    tmp___2 = (*(tp->read32))(tp, (u32 )cpu_base + 28U);
    netdev_err((struct net_device const *)tp->dev, "%s fails to set CPU PC, is %08x should be %08x\n",
               "tg3_load_tso_firmware", tmp___2, tmp___1);
    return (-19);
  } else {
  }
  tg3_resume_cpu(tp, (u32 )cpu_base);
  return (0);
}
}
static void __tg3_set_mac_addr(struct tg3 *tp , bool skip_mac_1 )
{
  u32 addr_high ;
  u32 addr_low ;
  int i ;
  {
  addr_high = (u32 )(((int )*((tp->dev)->dev_addr) << 8) | (int )*((tp->dev)->dev_addr + 1UL));
  addr_low = (u32 )(((((int )*((tp->dev)->dev_addr + 2UL) << 24) | ((int )*((tp->dev)->dev_addr + 3UL) << 16)) | ((int )*((tp->dev)->dev_addr + 4UL) << 8)) | (int )*((tp->dev)->dev_addr + 5UL));
  i = 0;
  goto ldv_48850;
  ldv_48849: ;
  if (i == 1 && (int )skip_mac_1) {
    goto ldv_48848;
  } else {
  }
  (*(tp->write32))(tp, (u32 )((i + 130) * 8), addr_high);
  (*(tp->write32))(tp, (u32 )(i * 8 + 1044), addr_low);
  ldv_48848:
  i = i + 1;
  ldv_48850: ;
  if (i <= 3) {
    goto ldv_48849;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 1U || tp->pci_chip_rev_id >> 12 == 2U) {
    i = 0;
    goto ldv_48853;
    ldv_48852:
    (*(tp->write32))(tp, (u32 )((i + 166) * 8), addr_high);
    (*(tp->write32))(tp, (u32 )(i * 8 + 1332), addr_low);
    i = i + 1;
    ldv_48853: ;
    if (i <= 11) {
      goto ldv_48852;
    } else {
    }
  } else {
  }
  addr_high = (u32 )((((((int )*((tp->dev)->dev_addr) + (int )*((tp->dev)->dev_addr + 1UL)) + (int )*((tp->dev)->dev_addr + 2UL)) + (int )*((tp->dev)->dev_addr + 3UL)) + (int )*((tp->dev)->dev_addr + 4UL)) + (int )*((tp->dev)->dev_addr + 5UL)) & 1023U;
  (*(tp->write32))(tp, 1080U, addr_high);
  return;
}
}
static void tg3_enable_register_access(struct tg3 *tp )
{
  {
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 104, tp->misc_host_ctrl);
  return;
}
}
static int tg3_power_up(struct tg3 *tp )
{
  int err ;
  {
  tg3_enable_register_access(tp);
  err = pci_set_power_state(tp->pdev, 0);
  if (err == 0) {
    tg3_pwrsrc_switch_to_vmain(tp);
  } else {
    netdev_err((struct net_device const *)tp->dev, "Transition to D0 failed\n");
  }
  return (err);
}
}
static int tg3_setup_phy(struct tg3 *tp , bool force_reset ) ;
static int tg3_power_down_prepare(struct tg3 *tp )
{
  u32 misc_host_ctrl ;
  bool device_should_wake ;
  bool do_low_power ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct phy_device *phydev ;
  u32 phyid ;
  u32 advertising ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  u32 val ;
  int i ;
  u32 val___0 ;
  int tmp___6 ;
  int tmp___7 ;
  u32 mac_mode ;
  u32 speed ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  u32 base_val ;
  u32 newbits1 ;
  u32 newbits2 ;
  int tmp___16 ;
  u32 newbits3 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  u32 val___1 ;
  u32 tmp___24 ;
  int err ;
  int tmp___25 ;
  int tmp___26 ;
  {
  tg3_enable_register_access(tp);
  tmp = _tg3_flag(57, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    pcie_capability_set_word(tp->pdev, 16, 256);
  } else {
  }
  misc_host_ctrl = (*(tp->read32))(tp, 104U);
  (*(tp->write32))(tp, 104U, misc_host_ctrl | 2U);
  tmp___0 = device_may_wakeup(& (tp->pdev)->dev);
  if ((int )tmp___0) {
    tmp___1 = _tg3_flag(10, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 != 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  device_should_wake = (bool )tmp___2;
  tmp___5 = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
  if (tmp___5 != 0) {
    do_low_power = 0;
    if ((tp->phy_flags & 2U) != 0U && (tp->phy_flags & 1U) == 0U) {
      phydev = (tp->mdio_bus)->phy_map[1];
      tp->phy_flags = tp->phy_flags | 1U;
      tp->link_config.speed = (u16 )phydev->speed;
      tp->link_config.duplex = (u8 )phydev->duplex;
      tp->link_config.autoneg = (u8 )phydev->autoneg;
      tp->link_config.advertising = phydev->advertising;
      advertising = 8385U;
      tmp___4 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
      if (tmp___4 != 0 || (int )device_should_wake) {
        tmp___3 = _tg3_flag(9, (unsigned long *)(& tp->tg3_flags));
        if (tmp___3 != 0) {
          advertising = advertising | 14U;
        } else {
          advertising = advertising | 2U;
        }
      } else {
      }
      phydev->advertising = advertising;
      phy_start_aneg(phydev);
      phyid = (phydev->drv)->phy_id & (phydev->drv)->phy_id_mask;
      if (phyid != 21216368U) {
        phyid = phyid & 4294966272U;
        if ((phyid == 2121728U || phyid == 21216256U) || phyid == 56777728U) {
          do_low_power = 1;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
    do_low_power = 1;
    if ((tp->phy_flags & 1U) == 0U) {
      tp->phy_flags = tp->phy_flags | 1U;
    } else {
    }
    if ((tp->phy_flags & 48U) == 0U) {
      tg3_setup_phy(tp, 0);
    } else {
    }
  }
  if (tp->pci_chip_rev_id >> 12 == 12U) {
    val = (*(tp->read32))(tp, 26768U);
    (*(tp->write32))(tp, 26768U, val | 536870912U);
  } else {
    tmp___6 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
    if (tmp___6 == 0) {
      i = 0;
      goto ldv_48879;
      ldv_48878:
      tg3_read_mem(tp, 3072U, & val___0);
      if (val___0 == 3030026667U) {
        goto ldv_48877;
      } else {
      }
      msleep(1U);
      i = i + 1;
      ldv_48879: ;
      if (i <= 199) {
        goto ldv_48878;
      } else {
      }
      ldv_48877: ;
    } else {
    }
  }
  tmp___7 = _tg3_flag(23, (unsigned long *)(& tp->tg3_flags));
  if (tmp___7 != 0) {
    tg3_write_mem(tp, 3376U, 1196163079U);
  } else {
  }
  if ((int )device_should_wake) {
    if ((tp->phy_flags & 16U) == 0U) {
      if ((int )do_low_power && (tp->phy_flags & 64U) == 0U) {
        tg3_phy_auxctl_write(tp, 2, 88U);
        __const_udelay(171800UL);
      } else {
      }
      if ((tp->phy_flags & 32U) != 0U) {
        mac_mode = 8U;
      } else
      if ((tp->phy_flags & 1048576U) != 0U) {
        if ((unsigned int )tp->link_config.active_speed == 1000U) {
          mac_mode = 8U;
        } else {
          mac_mode = 4U;
        }
      } else {
        mac_mode = 4U;
      }
      mac_mode = (tp->mac_mode & 1024U) | mac_mode;
      if (tp->pci_chip_rev_id >> 12 == 7U) {
        tmp___8 = _tg3_flag(9, (unsigned long *)(& tp->tg3_flags));
        speed = tmp___8 != 0 ? 100U : 10U;
        tmp___9 = tg3_5700_link_polarity(tp, speed);
        if (tmp___9 != 0) {
          mac_mode = mac_mode | 1024U;
        } else {
          mac_mode = mac_mode & 4294966271U;
        }
      } else {
      }
    } else {
      mac_mode = 12U;
    }
    tmp___10 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
    if (tmp___10 == 0) {
      (*(tp->write32))(tp, 1036U, tp->led_ctrl);
    } else {
    }
    mac_mode = mac_mode | 262144U;
    tmp___11 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
    if (tmp___11 != 0) {
      tmp___12 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
      if (tmp___12 == 0) {
        tmp___13 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
        if (tmp___13 != 0) {
          mac_mode = mac_mode | 16777216U;
        } else {
          tmp___14 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
          if (tmp___14 != 0) {
            mac_mode = mac_mode | 16777216U;
          } else {
          }
        }
      } else {
      }
    } else {
    }
    tmp___15 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
    if (tmp___15 != 0) {
      mac_mode = mac_mode | 404750336U;
    } else {
    }
    _tw32_flush(tp, 1024U, mac_mode, 0U);
    __const_udelay(429500UL);
    _tw32_flush(tp, 1128U, 2U, 0U);
    __const_udelay(42950UL);
  } else {
  }
  tmp___22 = _tg3_flag(9, (unsigned long *)(& tp->tg3_flags));
  if (tmp___22 == 0 && (tp->pci_chip_rev_id >> 12 == 7U || tp->pci_chip_rev_id >> 12 == 0U)) {
    base_val = tp->pci_clock_ctrl;
    base_val = base_val | 3072U;
    _tw32_flush(tp, 116U, base_val | 36864U, 40U);
  } else {
    tmp___20 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___20 != 0) {
    } else {
      tmp___21 = _tg3_flag(26, (unsigned long *)(& tp->tg3_flags));
      if (tmp___21 != 0) {
      } else
      if (tp->pci_chip_rev_id >> 12 == 12U) {
      } else {
        tmp___18 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
        if (tmp___18 == 0) {
          goto _L;
        } else {
          tmp___19 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
          if (tmp___19 == 0) {
            _L:
            if (tp->pci_chip_rev_id >> 12 == 7U || tp->pci_chip_rev_id >> 12 == 0U) {
              newbits1 = 7168U;
              newbits2 = newbits1 | 262144U;
            } else {
              tmp___16 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
              if (tmp___16 != 0) {
                newbits1 = 1048576U;
                newbits2 = newbits1 | 4096U;
              } else {
                newbits1 = 4096U;
                newbits2 = newbits1 | 262144U;
              }
            }
            _tw32_flush(tp, 116U, tp->pci_clock_ctrl | newbits1, 40U);
            _tw32_flush(tp, 116U, tp->pci_clock_ctrl | newbits2, 40U);
            tmp___17 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
            if (tmp___17 == 0) {
              if (tp->pci_chip_rev_id >> 12 == 7U || tp->pci_chip_rev_id >> 12 == 0U) {
                newbits3 = 265216U;
              } else {
                newbits3 = 262144U;
              }
              _tw32_flush(tp, 116U, tp->pci_clock_ctrl | newbits3, 40U);
            } else {
            }
          } else {
          }
        }
      }
    }
  }
  if (! device_should_wake) {
    tmp___23 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
    if (tmp___23 == 0) {
      tg3_power_down_phy(tp, (int )do_low_power);
    } else {
    }
  } else {
  }
  tg3_frob_aux_power(tp, 1);
  tmp___26 = _tg3_flag(78, (unsigned long *)(& tp->tg3_flags));
  if (tmp___26 == 0 && (tp->pci_chip_rev_id >> 8 == 64U || tp->pci_chip_rev_id >> 8 == 65U)) {
    tmp___24 = (*(tp->read32))(tp, 32000U);
    val___1 = tmp___24;
    val___1 = val___1 & 4294901736U;
    (*(tp->write32))(tp, 32000U, val___1);
    tmp___25 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
    if (tmp___25 == 0) {
      err = tg3_nvram_lock(tp);
      tg3_halt_cpu(tp, 20480U);
      if (err == 0) {
        tg3_nvram_unlock(tp);
      } else {
      }
    } else {
    }
  } else {
  }
  tg3_write_sig_post_reset(tp, 0);
  return (0);
}
}
static void tg3_power_down(struct tg3 *tp )
{
  int tmp ;
  {
  tg3_power_down_prepare(tp);
  tmp = _tg3_flag(10, (unsigned long *)(& tp->tg3_flags));
  pci_wake_from_d3(tp->pdev, tmp != 0);
  pci_set_power_state(tp->pdev, 3);
  return;
}
}
static void tg3_aux_stat_to_speed_duplex(struct tg3 *tp , u32 val , u16 *speed , u8 *duplex )
{
  {
  switch (val & 1792U) {
  case 256U:
  *speed = 10U;
  *duplex = 0U;
  goto ldv_48898;
  case 512U:
  *speed = 10U;
  *duplex = 1U;
  goto ldv_48898;
  case 768U:
  *speed = 100U;
  *duplex = 0U;
  goto ldv_48898;
  case 1280U:
  *speed = 100U;
  *duplex = 1U;
  goto ldv_48898;
  case 1536U:
  *speed = 1000U;
  *duplex = 0U;
  goto ldv_48898;
  case 1792U:
  *speed = 1000U;
  *duplex = 1U;
  goto ldv_48898;
  default: ;
  if ((tp->phy_flags & 64U) != 0U) {
    *speed = (val & 8U) != 0U ? 100U : 10U;
    *duplex = (unsigned int )((u8 )val) & 1U;
    goto ldv_48898;
  } else {
  }
  *speed = 65535U;
  *duplex = 255U;
  goto ldv_48898;
  }
  ldv_48898: ;
  return;
}
}
static int tg3_phy_autoneg_cfg(struct tg3 *tp , u32 advertise , u32 flowctrl )
{
  int err ;
  u32 val ;
  u32 new_adv ;
  u32 tmp ;
  u16 tmp___0 ;
  u32 tmp___1 ;
  u32 err2 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  err = 0;
  new_adv = 1U;
  tmp = ethtool_adv_to_mii_adv_t(advertise);
  new_adv = (tmp & 480U) | new_adv;
  tmp___0 = mii_advertise_flowctrl((int )flowctrl);
  new_adv = (u32 )tmp___0 | new_adv;
  err = tg3_writephy(tp, 4, new_adv);
  if (err != 0) {
    goto done;
  } else {
  }
  if ((tp->phy_flags & 128U) == 0U) {
    new_adv = ethtool_adv_to_mii_ctrl1000_t(advertise);
    if (tp->pci_chip_rev_id == 0U || tp->pci_chip_rev_id == 256U) {
      new_adv = new_adv | 6144U;
    } else {
    }
    err = tg3_writephy(tp, 9, new_adv);
    if (err != 0) {
      goto done;
    } else {
    }
  } else {
  }
  if ((tp->phy_flags & 262144U) == 0U) {
    goto done;
  } else {
  }
  tmp___1 = (*(tp->read32))(tp, 14000U);
  (*(tp->write32))(tp, 14000U, tmp___1 & 4294967167U);
  err = tg3_phy_toggle_auxctl_smdsp(tp, 1);
  if (err == 0) {
    val = 0U;
    if ((advertise & 8U) != 0U) {
      val = val | 2U;
    } else {
    }
    if ((advertise & 32U) != 0U) {
      val = val | 4U;
    } else {
    }
    err = tg3_phy_cl45_write(tp, 7U, 60U, val);
    if (err != 0) {
      val = 0U;
    } else {
    }
    switch (tp->pci_chip_rev_id >> 12) {
    case 22295U: ;
    case 358277U: ;
    case 358246U: ;
    case 22297U: ;
    if (val != 0U) {
      val = 7U;
    } else {
    }
    tg3_phydsp_write(tp, 26U, val);
    case 22304U: ;
    case 22370U:
    tmp___2 = tg3_phydsp_read(tp, 16418U, & val);
    if (tmp___2 == 0) {
      tg3_phydsp_write(tp, 16418U, val | 511U);
    } else {
    }
    }
    tmp___3 = tg3_phy_toggle_auxctl_smdsp(tp, 0);
    err2 = (u32 )tmp___3;
    if (err == 0) {
      err = (int )err2;
    } else {
    }
  } else {
  }
  done: ;
  return (err);
}
}
static void tg3_phy_copper_begin(struct tg3 *tp )
{
  u32 adv ;
  u32 fc ;
  int tmp ;
  int i ;
  u32 bmcr ;
  u32 orig_bmcr ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  if ((unsigned int )tp->link_config.autoneg == 1U || (int )tp->phy_flags & 1) {
    if ((int )tp->phy_flags & 1 && (tp->phy_flags & 1048576U) == 0U) {
      adv = 3U;
      tmp = _tg3_flag(9, (unsigned long *)(& tp->tg3_flags));
      if (tmp != 0) {
        adv = adv | 12U;
      } else {
      }
      if ((tp->phy_flags & 524288U) != 0U) {
        adv = adv | 48U;
      } else {
      }
      fc = 3U;
    } else {
      adv = tp->link_config.advertising;
      if ((tp->phy_flags & 128U) != 0U) {
        adv = adv & 4294967247U;
      } else {
      }
      fc = (u32 )tp->link_config.flowctrl;
    }
    tg3_phy_autoneg_cfg(tp, adv, fc);
    if ((int )tp->phy_flags & 1 && (tp->phy_flags & 1048576U) != 0U) {
      return;
    } else {
    }
    tg3_writephy(tp, 0, 4608U);
  } else {
    tp->link_config.active_speed = tp->link_config.speed;
    tp->link_config.active_duplex = tp->link_config.duplex;
    if (tp->pci_chip_rev_id >> 12 == 9U) {
      tg3_writephy(tp, 4, 480U);
    } else {
    }
    bmcr = 0U;
    switch ((int )tp->link_config.speed) {
    default: ;
    case 10: ;
    goto ldv_48931;
    case 100:
    bmcr = bmcr | 8192U;
    goto ldv_48931;
    case 1000:
    bmcr = bmcr | 64U;
    goto ldv_48931;
    }
    ldv_48931: ;
    if ((unsigned int )tp->link_config.duplex == 1U) {
      bmcr = bmcr | 256U;
    } else {
    }
    tmp___3 = tg3_readphy(tp, 0, & orig_bmcr);
    if (tmp___3 == 0 && bmcr != orig_bmcr) {
      tg3_writephy(tp, 0, 16384U);
      i = 0;
      goto ldv_48938;
      ldv_48937:
      __const_udelay(42950UL);
      tmp___1 = tg3_readphy(tp, 1, & tmp___0);
      if (tmp___1 != 0) {
        goto ldv_48935;
      } else {
        tmp___2 = tg3_readphy(tp, 1, & tmp___0);
        if (tmp___2 != 0) {
          goto ldv_48935;
        } else {
        }
      }
      if ((tmp___0 & 4U) == 0U) {
        __const_udelay(171800UL);
        goto ldv_48936;
      } else {
      }
      ldv_48935:
      i = i + 1;
      ldv_48938: ;
      if (i <= 1499) {
        goto ldv_48937;
      } else {
      }
      ldv_48936:
      tg3_writephy(tp, 0, bmcr);
      __const_udelay(171800UL);
    } else {
    }
  }
  return;
}
}
static int tg3_phy_pull_config(struct tg3 *tp )
{
  int err ;
  u32 val ;
  u32 adv ;
  u32 tmp ;
  u32 adv___0 ;
  {
  err = tg3_readphy(tp, 0, & val);
  if (err != 0) {
    goto done;
  } else {
  }
  if ((val & 4096U) == 0U) {
    tp->link_config.autoneg = 0U;
    tp->link_config.advertising = 0U;
    _tg3_flag_clear(25, (unsigned long *)(& tp->tg3_flags));
    err = -5;
    switch (val & 8256U) {
    case 0U: ;
    if ((tp->phy_flags & 48U) != 0U) {
      goto done;
    } else {
    }
    tp->link_config.speed = 10U;
    goto ldv_48946;
    case 8192U: ;
    if ((tp->phy_flags & 48U) != 0U) {
      goto done;
    } else {
    }
    tp->link_config.speed = 100U;
    goto ldv_48946;
    case 64U: ;
    if ((tp->phy_flags & 128U) == 0U) {
      tp->link_config.speed = 1000U;
      goto ldv_48946;
    } else {
    }
    default: ;
    goto done;
    }
    ldv_48946: ;
    if ((val & 256U) != 0U) {
      tp->link_config.duplex = 1U;
    } else {
      tp->link_config.duplex = 0U;
    }
    tp->link_config.flowctrl = 3U;
    err = 0;
    goto done;
  } else {
  }
  tp->link_config.autoneg = 1U;
  tp->link_config.advertising = 64U;
  _tg3_flag_set(25, (unsigned long *)(& tp->tg3_flags));
  if ((tp->phy_flags & 48U) == 0U) {
    err = tg3_readphy(tp, 4, & val);
    if (err != 0) {
      goto done;
    } else {
    }
    adv = mii_adv_to_ethtool_adv_t(val & 480U);
    tp->link_config.advertising = (tp->link_config.advertising | adv) | 128U;
    tmp = tg3_decode_flowctrl_1000T(val);
    tp->link_config.flowctrl = (u8 )tmp;
  } else {
    tp->link_config.advertising = tp->link_config.advertising | 1024U;
  }
  if ((tp->phy_flags & 128U) == 0U) {
    if ((tp->phy_flags & 48U) == 0U) {
      err = tg3_readphy(tp, 9, & val);
      if (err != 0) {
        goto done;
      } else {
      }
      adv___0 = mii_ctrl1000_to_ethtool_adv_t(val);
    } else {
      err = tg3_readphy(tp, 4, & val);
      if (err != 0) {
        goto done;
      } else {
      }
      adv___0 = tg3_decode_flowctrl_1000X(val);
      tp->link_config.flowctrl = (u8 )adv___0;
      val = val & 96U;
      adv___0 = mii_adv_to_ethtool_adv_x(val);
    }
    tp->link_config.advertising = tp->link_config.advertising | adv___0;
  } else {
  }
  done: ;
  return (err);
}
}
static int tg3_init_5401phy_dsp(struct tg3 *tp )
{
  int err ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  err = tg3_phy_auxctl_write(tp, 0, 19488U);
  tmp = tg3_phydsp_write(tp, 18U, 6148U);
  err = tmp | err;
  tmp___0 = tg3_phydsp_write(tp, 19U, 4612U);
  err = tmp___0 | err;
  tmp___1 = tg3_phydsp_write(tp, 32774U, 306U);
  err = tmp___1 | err;
  tmp___2 = tg3_phydsp_write(tp, 32774U, 562U);
  err = tmp___2 | err;
  tmp___3 = tg3_phydsp_write(tp, 8223U, 2592U);
  err = tmp___3 | err;
  __const_udelay(171800UL);
  return (err);
}
}
static bool tg3_phy_eee_config_ok(struct tg3 *tp )
{
  u32 val ;
  u32 tgtadv ;
  u32 advertising ;
  int tmp ;
  {
  tgtadv = 0U;
  advertising = tp->link_config.advertising;
  if ((tp->phy_flags & 262144U) == 0U) {
    return (1);
  } else {
  }
  tmp = tg3_phy_cl45_read(tp, 7U, 60U, & val);
  if (tmp != 0) {
    return (0);
  } else {
  }
  val = val & 6U;
  if ((advertising & 8U) != 0U) {
    tgtadv = tgtadv | 2U;
  } else {
  }
  if ((advertising & 32U) != 0U) {
    tgtadv = tgtadv | 4U;
  } else {
  }
  if (val != tgtadv) {
    return (0);
  } else {
  }
  return (1);
}
}
static bool tg3_phy_copper_an_config_ok(struct tg3 *tp , u32 *lcladv )
{
  u32 advmsk ;
  u32 tgtadv ;
  u32 advertising ;
  u32 tmp ;
  u16 tmp___0 ;
  int tmp___1 ;
  u32 tg3_ctrl ;
  int tmp___2 ;
  {
  advertising = tp->link_config.advertising;
  tmp = ethtool_adv_to_mii_adv_t(advertising);
  tgtadv = tmp & 480U;
  advmsk = 480U;
  if ((unsigned int )tp->link_config.active_duplex == 1U) {
    tmp___0 = mii_advertise_flowctrl((int )tp->link_config.flowctrl);
    tgtadv = (u32 )tmp___0 | tgtadv;
    advmsk = advmsk | 3072U;
  } else {
  }
  tmp___1 = tg3_readphy(tp, 4, lcladv);
  if (tmp___1 != 0) {
    return (0);
  } else {
  }
  if ((*lcladv & advmsk) != tgtadv) {
    return (0);
  } else {
  }
  if ((tp->phy_flags & 128U) == 0U) {
    tgtadv = ethtool_adv_to_mii_ctrl1000_t(advertising);
    tmp___2 = tg3_readphy(tp, 9, & tg3_ctrl);
    if (tmp___2 != 0) {
      return (0);
    } else {
    }
    if (tgtadv != 0U && (tp->pci_chip_rev_id == 0U || tp->pci_chip_rev_id == 256U)) {
      tgtadv = tgtadv | 6144U;
      tg3_ctrl = tg3_ctrl & 6912U;
    } else {
      tg3_ctrl = tg3_ctrl & 768U;
    }
    if (tg3_ctrl != tgtadv) {
      return (0);
    } else {
    }
  } else {
  }
  return (1);
}
}
static bool tg3_phy_copper_fetch_rmtadv(struct tg3 *tp , u32 *rmtadv )
{
  u32 lpeth ;
  u32 val ;
  int tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  {
  lpeth = 0U;
  if ((tp->phy_flags & 128U) == 0U) {
    tmp = tg3_readphy(tp, 10, & val);
    if (tmp != 0) {
      return (0);
    } else {
    }
    lpeth = mii_stat1000_to_ethtool_lpa_t(val);
  } else {
  }
  tmp___0 = tg3_readphy(tp, 5, rmtadv);
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  tmp___1 = mii_lpa_to_ethtool_lpa_t(*rmtadv);
  lpeth = tmp___1 | lpeth;
  tp->link_config.rmt_adv = lpeth;
  return (1);
}
}
static bool tg3_test_and_report_link_chg(struct tg3 *tp , bool curr_link_up )
{
  {
  if ((int )tp->link_up != (int )curr_link_up) {
    if ((int )curr_link_up) {
      netif_carrier_on(tp->dev);
    } else {
      netif_carrier_off(tp->dev);
      if ((tp->phy_flags & 32U) != 0U) {
        tp->phy_flags = tp->phy_flags & 4294836223U;
      } else {
      }
    }
    tg3_link_report(tp);
    return (1);
  } else {
  }
  return (0);
}
}
static void tg3_clear_mac_status(struct tg3 *tp )
{
  {
  (*(tp->write32))(tp, 1032U, 0U);
  _tw32_flush(tp, 1028U, 4198424U, 0U);
  __const_udelay(171800UL);
  return;
}
}
static int tg3_setup_copper_phy(struct tg3 *tp , bool force_reset )
{
  bool current_link_up ;
  u32 bmsr ;
  u32 val ;
  u32 lcl_adv ;
  u32 rmt_adv ;
  u16 current_speed ;
  u8 current_duplex ;
  int i ;
  int err ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  u32 aux_stat ;
  u32 bmcr ;
  int tmp___4 ;
  int tmp___5 ;
  bool eee_config_ok ;
  bool tmp___6 ;
  bool tmp___7 ;
  bool tmp___8 ;
  u32 reg ;
  u32 bit ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  u32 led_ctrl ;
  u32 tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  {
  tg3_clear_mac_status(tp);
  if ((tp->mi_mode & 16U) != 0U) {
    _tw32_flush(tp, 1108U, tp->mi_mode & 4294967279U, 0U);
    __const_udelay(343600UL);
  } else {
  }
  tg3_phy_auxctl_write(tp, 2, 0U);
  if (((tp->pci_chip_rev_id >> 12 == 1U || tp->pci_chip_rev_id >> 12 == 2U) || tp->pci_chip_rev_id >> 12 == 3U) && (int )tp->link_up) {
    tg3_readphy(tp, 1, & bmsr);
    tmp = tg3_readphy(tp, 1, & bmsr);
    if (tmp == 0 && (bmsr & 4U) == 0U) {
      force_reset = 1;
    } else {
    }
  } else {
  }
  if ((int )force_reset) {
    tg3_phy_reset(tp);
  } else {
  }
  if ((tp->phy_id & 4294967280U) == 1610645584U) {
    tg3_readphy(tp, 1, & bmsr);
    tmp___0 = tg3_readphy(tp, 1, & bmsr);
    if (tmp___0 != 0) {
      bmsr = 0U;
    } else {
      tmp___1 = _tg3_flag(31, (unsigned long *)(& tp->tg3_flags));
      if (tmp___1 == 0) {
        bmsr = 0U;
      } else {
      }
    }
    if ((bmsr & 4U) == 0U) {
      err = tg3_init_5401phy_dsp(tp);
      if (err != 0) {
        return (err);
      } else {
      }
      tg3_readphy(tp, 1, & bmsr);
      i = 0;
      goto ldv_48998;
      ldv_48997:
      __const_udelay(42950UL);
      tmp___2 = tg3_readphy(tp, 1, & bmsr);
      if (tmp___2 == 0 && (bmsr & 4U) != 0U) {
        __const_udelay(171800UL);
        goto ldv_48996;
      } else {
      }
      i = i + 1;
      ldv_48998: ;
      if (i <= 999) {
        goto ldv_48997;
      } else {
      }
      ldv_48996: ;
      if (((tp->phy_id & 15U) == 1U && (bmsr & 4U) == 0U) && (unsigned int )tp->link_config.active_speed == 1000U) {
        err = tg3_phy_reset(tp);
        if (err == 0) {
          err = tg3_init_5401phy_dsp(tp);
        } else {
        }
        if (err != 0) {
          return (err);
        } else {
        }
      } else {
      }
    } else {
    }
  } else
  if (tp->pci_chip_rev_id == 0U || tp->pci_chip_rev_id == 256U) {
    tg3_writephy(tp, 21, 2677U);
    tg3_writephy(tp, 28, 35944U);
    tg3_writephy(tp, 28, 36200U);
    tg3_writephy(tp, 28, 35944U);
  } else {
  }
  tg3_readphy(tp, 26, & val);
  tg3_readphy(tp, 26, & val);
  if ((tp->phy_flags & 4U) != 0U) {
    tg3_writephy(tp, 27, 4294967293U);
  } else
  if ((tp->phy_flags & 64U) == 0U) {
    tg3_writephy(tp, 27, 4294967295U);
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 7U || tp->pci_chip_rev_id >> 12 == 0U) {
    if (tp->led_ctrl == 2048U) {
      tg3_writephy(tp, 16, 2U);
    } else {
      tg3_writephy(tp, 16, 0U);
    }
  } else {
  }
  current_link_up = 0;
  current_speed = 65535U;
  current_duplex = 255U;
  tp->phy_flags = tp->phy_flags & 4292870143U;
  tp->link_config.rmt_adv = 0U;
  if ((tp->phy_flags & 512U) != 0U) {
    err = tg3_phy_auxctl_read(tp, 4, & val);
    if (err == 0 && (val & 1024U) == 0U) {
      tg3_phy_auxctl_write(tp, 4, val | 1024U);
      goto relink;
    } else {
    }
  } else {
  }
  bmsr = 0U;
  i = 0;
  goto ldv_49002;
  ldv_49001:
  tg3_readphy(tp, 1, & bmsr);
  tmp___3 = tg3_readphy(tp, 1, & bmsr);
  if (tmp___3 == 0 && (bmsr & 4U) != 0U) {
    goto ldv_49000;
  } else {
  }
  __const_udelay(171800UL);
  i = i + 1;
  ldv_49002: ;
  if (i <= 99) {
    goto ldv_49001;
  } else {
  }
  ldv_49000: ;
  if ((bmsr & 4U) != 0U) {
    tg3_readphy(tp, 25, & aux_stat);
    i = 0;
    goto ldv_49007;
    ldv_49006:
    __const_udelay(42950UL);
    tmp___4 = tg3_readphy(tp, 25, & aux_stat);
    if (tmp___4 == 0 && aux_stat != 0U) {
      goto ldv_49005;
    } else {
    }
    i = i + 1;
    ldv_49007: ;
    if (i <= 1999) {
      goto ldv_49006;
    } else {
    }
    ldv_49005:
    tg3_aux_stat_to_speed_duplex(tp, aux_stat, & current_speed, & current_duplex);
    bmcr = 0U;
    i = 0;
    goto ldv_49011;
    ldv_49010:
    tg3_readphy(tp, 0, & bmcr);
    tmp___5 = tg3_readphy(tp, 0, & bmcr);
    if (tmp___5 != 0) {
      goto ldv_49008;
    } else {
    }
    if (bmcr != 0U && bmcr != 32767U) {
      goto ldv_49009;
    } else {
    }
    __const_udelay(42950UL);
    ldv_49008:
    i = i + 1;
    ldv_49011: ;
    if (i <= 199) {
      goto ldv_49010;
    } else {
    }
    ldv_49009:
    lcl_adv = 0U;
    rmt_adv = 0U;
    tp->link_config.active_speed = current_speed;
    tp->link_config.active_duplex = current_duplex;
    if ((unsigned int )tp->link_config.autoneg == 1U) {
      tmp___6 = tg3_phy_eee_config_ok(tp);
      eee_config_ok = tmp___6;
      if ((bmcr & 4096U) != 0U && (int )eee_config_ok) {
        tmp___7 = tg3_phy_copper_an_config_ok(tp, & lcl_adv);
        if ((int )tmp___7) {
          tmp___8 = tg3_phy_copper_fetch_rmtadv(tp, & rmt_adv);
          if ((int )tmp___8) {
            current_link_up = 1;
          } else {
          }
        } else {
        }
      } else {
      }
      if ((! eee_config_ok && (tp->phy_flags & 1048576U) != 0U) && ! force_reset) {
        tg3_phy_reset(tp);
      } else {
      }
    } else
    if (((bmcr & 4096U) == 0U && (int )tp->link_config.speed == (int )current_speed) && (int )tp->link_config.duplex == (int )current_duplex) {
      current_link_up = 1;
    } else {
    }
    if ((int )current_link_up && (unsigned int )tp->link_config.active_duplex == 1U) {
      if ((tp->phy_flags & 64U) != 0U) {
        reg = 28U;
        bit = 8192U;
      } else {
        reg = 17U;
        bit = 8192U;
      }
      tmp___9 = tg3_readphy(tp, (int )reg, & val);
      if (tmp___9 == 0 && (val & bit) != 0U) {
        tp->phy_flags = tp->phy_flags | 2097152U;
      } else {
      }
      tg3_setup_flow_control(tp, lcl_adv, rmt_adv);
    } else {
    }
  } else {
  }
  relink: ;
  if (! current_link_up || (int )tp->phy_flags & 1) {
    tg3_phy_copper_begin(tp);
    tmp___10 = _tg3_flag(80, (unsigned long *)(& tp->tg3_flags));
    if (tmp___10 != 0) {
      current_link_up = 1;
      current_speed = 1000U;
      current_duplex = 1U;
      tp->link_config.active_speed = current_speed;
      tp->link_config.active_duplex = current_duplex;
    } else {
    }
    tg3_readphy(tp, 1, & bmsr);
    tmp___11 = tg3_readphy(tp, 1, & bmsr);
    if ((tmp___11 == 0 && (bmsr & 4U) != 0U) || (tp->mac_mode & 16U) != 0U) {
      current_link_up = 1;
    } else {
    }
  } else {
  }
  tp->mac_mode = tp->mac_mode & 4294967283U;
  if ((int )current_link_up) {
    if ((unsigned int )tp->link_config.active_speed == 100U || (unsigned int )tp->link_config.active_speed == 10U) {
      tp->mac_mode = tp->mac_mode | 4U;
    } else {
      tp->mac_mode = tp->mac_mode | 8U;
    }
  } else
  if ((tp->phy_flags & 64U) != 0U) {
    tp->mac_mode = tp->mac_mode | 4U;
  } else {
    tp->mac_mode = tp->mac_mode | 8U;
  }
  tmp___13 = _tg3_flag(82, (unsigned long *)(& tp->tg3_flags));
  if (tmp___13 != 0) {
    tmp___12 = (*(tp->read32))(tp, 1036U);
    led_ctrl = tmp___12;
    led_ctrl = led_ctrl & 4294967289U;
    if ((unsigned int )tp->link_config.active_speed == 10U) {
      led_ctrl = led_ctrl | 1U;
    } else
    if ((unsigned int )tp->link_config.active_speed == 100U) {
      led_ctrl = led_ctrl | 5U;
    } else
    if ((unsigned int )tp->link_config.active_speed == 1000U) {
      led_ctrl = led_ctrl | 3U;
    } else {
    }
    (*(tp->write32))(tp, 1036U, led_ctrl);
    __const_udelay(171800UL);
  } else {
  }
  tp->mac_mode = tp->mac_mode & 4294967293U;
  if ((unsigned int )tp->link_config.active_duplex == 0U) {
    tp->mac_mode = tp->mac_mode | 2U;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 7U) {
    if ((int )current_link_up) {
      tmp___14 = tg3_5700_link_polarity(tp, (u32 )tp->link_config.active_speed);
      if (tmp___14 != 0) {
        tp->mac_mode = tp->mac_mode | 1024U;
      } else {
        tp->mac_mode = tp->mac_mode & 4294966271U;
      }
    } else {
      tp->mac_mode = tp->mac_mode & 4294966271U;
    }
  } else {
  }
  if ((tp->phy_id & 4294967280U) == 1610645616U && tp->pci_chip_rev_id == 28932U) {
    tp->mi_mode = tp->mi_mode | 16U;
    _tw32_flush(tp, 1108U, tp->mi_mode, 0U);
    __const_udelay(343600UL);
  } else {
  }
  _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
  __const_udelay(171800UL);
  tg3_phy_eee_adjust(tp, (int )current_link_up);
  tmp___15 = _tg3_flag(2, (unsigned long *)(& tp->tg3_flags));
  if (tmp___15 != 0) {
    _tw32_flush(tp, 1032U, 0U, 0U);
  } else {
    _tw32_flush(tp, 1032U, 4096U, 0U);
  }
  __const_udelay(171800UL);
  if ((tp->pci_chip_rev_id >> 12 == 7U && (int )current_link_up) && (unsigned int )tp->link_config.active_speed == 1000U) {
    tmp___16 = _tg3_flag(18, (unsigned long *)(& tp->tg3_flags));
    if (tmp___16 != 0) {
      __const_udelay(515400UL);
      _tw32_flush(tp, 1028U, 24U, 0U);
      __const_udelay(171800UL);
      tg3_write_mem(tp, 2896U, 1214346827U);
    } else {
      tmp___17 = _tg3_flag(19, (unsigned long *)(& tp->tg3_flags));
      if (tmp___17 != 0) {
        __const_udelay(515400UL);
        _tw32_flush(tp, 1028U, 24U, 0U);
        __const_udelay(171800UL);
        tg3_write_mem(tp, 2896U, 1214346827U);
      } else {
      }
    }
  } else {
  }
  tmp___18 = _tg3_flag(57, (unsigned long *)(& tp->tg3_flags));
  if (tmp___18 != 0) {
    if ((unsigned int )tp->link_config.active_speed == 100U || (unsigned int )tp->link_config.active_speed == 10U) {
      pcie_capability_clear_word(tp->pdev, 16, 256);
    } else {
      pcie_capability_set_word(tp->pdev, 16, 256);
    }
  } else {
  }
  tg3_test_and_report_link_chg(tp, (int )current_link_up);
  return (0);
}
}
static int tg3_fiber_aneg_smachine(struct tg3 *tp , struct tg3_fiber_aneginfo *ap )
{
  u16 flowctrl ;
  unsigned long delta ;
  u32 rx_cfg_reg ;
  int ret ;
  u32 tmp ;
  {
  if (ap->state == 0) {
    ap->rxconfig = 0U;
    ap->link_time = 0UL;
    ap->cur_time = 0UL;
    ap->ability_match_cfg = 0U;
    ap->ability_match_count = 0;
    ap->ability_match = 0;
    ap->idle_match = 0;
    ap->ack_match = 0;
  } else {
  }
  ap->cur_time = ap->cur_time + 1UL;
  tmp = (*(tp->read32))(tp, 1028U);
  if ((tmp & 4U) != 0U) {
    rx_cfg_reg = (*(tp->read32))(tp, 1096U);
    if (ap->ability_match_cfg != rx_cfg_reg) {
      ap->ability_match_cfg = rx_cfg_reg;
      ap->ability_match = 0;
      ap->ability_match_count = 0;
    } else {
      ap->ability_match_count = ap->ability_match_count + 1;
      if (ap->ability_match_count > 1) {
        ap->ability_match = 1;
        ap->ability_match_cfg = rx_cfg_reg;
      } else {
      }
    }
    if ((rx_cfg_reg & 64U) != 0U) {
      ap->ack_match = 1;
    } else {
      ap->ack_match = 0;
    }
    ap->idle_match = 0;
  } else {
    ap->idle_match = 1;
    ap->ability_match_cfg = 0U;
    ap->ability_match_count = 0;
    ap->ability_match = 0;
    ap->ack_match = 0;
    rx_cfg_reg = 0U;
  }
  ap->rxconfig = rx_cfg_reg;
  ret = 0;
  switch (ap->state) {
  case 0: ;
  if ((ap->flags & 3U) != 0U) {
    ap->state = 1;
  } else {
  }
  case 1:
  ap->flags = ap->flags & 4294967283U;
  if ((int )ap->flags & 1) {
    ap->link_time = 0UL;
    ap->cur_time = 0UL;
    ap->ability_match_cfg = 0U;
    ap->ability_match_count = 0;
    ap->ability_match = 0;
    ap->idle_match = 0;
    ap->ack_match = 0;
    ap->state = 2;
  } else {
    ap->state = 4;
  }
  goto ldv_49038;
  case 2:
  ap->link_time = ap->cur_time;
  ap->flags = ap->flags & 4294967279U;
  ap->txconfig = 0U;
  (*(tp->write32))(tp, 1092U, 0U);
  tp->mac_mode = tp->mac_mode | 131072U;
  _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
  __const_udelay(171800UL);
  ret = 2;
  ap->state = 3;
  case 3:
  delta = ap->cur_time - ap->link_time;
  if (delta > 10000UL) {
    ap->state = 5;
  } else {
    ret = 2;
  }
  goto ldv_49038;
  case 4:
  ret = 1;
  goto ldv_49038;
  case 5:
  ap->flags = ap->flags & 4294967263U;
  ap->txconfig = 8192U;
  flowctrl = tg3_advert_flowctrl_1000X((int )tp->link_config.flowctrl);
  if (((int )flowctrl & 128) != 0) {
    ap->txconfig = ap->txconfig | 32768U;
  } else {
  }
  if (((int )flowctrl & 256) != 0) {
    ap->txconfig = ap->txconfig | 1U;
  } else {
  }
  (*(tp->write32))(tp, 1092U, ap->txconfig);
  tp->mac_mode = tp->mac_mode | 131072U;
  _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
  __const_udelay(171800UL);
  ap->state = 6;
  goto ldv_49038;
  case 6: ;
  if ((int )((signed char )ap->ability_match) != 0 && ap->rxconfig != 0U) {
    ap->state = 7;
  } else {
  }
  goto ldv_49038;
  case 7:
  ap->txconfig = ap->txconfig | 64U;
  (*(tp->write32))(tp, 1092U, ap->txconfig);
  tp->mac_mode = tp->mac_mode | 131072U;
  _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
  __const_udelay(171800UL);
  ap->state = 8;
  case 8: ;
  if ((int )((signed char )ap->ack_match) != 0) {
    if (((ap->rxconfig ^ ap->ability_match_cfg) & 4294967231U) == 0U) {
      ap->state = 9;
    } else {
      ap->state = 1;
    }
  } else
  if ((int )((signed char )ap->ability_match) != 0 && ap->rxconfig == 0U) {
    ap->state = 1;
  } else {
  }
  goto ldv_49038;
  case 9: ;
  if ((ap->rxconfig & 7942U) != 0U) {
    ret = -1;
    goto ldv_49038;
  } else {
  }
  ap->flags = ap->flags & 4294934591U;
  if ((ap->rxconfig & 8192U) != 0U) {
    ap->flags = ap->flags | 64U;
  } else {
  }
  if ((ap->rxconfig & 16384U) != 0U) {
    ap->flags = ap->flags | 128U;
  } else {
  }
  if ((ap->rxconfig & 32768U) != 0U) {
    ap->flags = ap->flags | 256U;
  } else {
  }
  if ((int )ap->rxconfig & 1) {
    ap->flags = ap->flags | 512U;
  } else {
  }
  if ((ap->rxconfig & 16U) != 0U) {
    ap->flags = ap->flags | 1024U;
  } else {
  }
  if ((ap->rxconfig & 32U) != 0U) {
    ap->flags = ap->flags | 2048U;
  } else {
  }
  if ((ap->rxconfig & 128U) != 0U) {
    ap->flags = ap->flags | 4096U;
  } else {
  }
  ap->link_time = ap->cur_time;
  ap->flags = ap->flags ^ 32U;
  if ((ap->rxconfig & 8U) != 0U) {
    ap->flags = ap->flags | 8192U;
  } else {
  }
  if ((ap->rxconfig & 128U) != 0U) {
    ap->flags = ap->flags | 16384U;
  } else {
  }
  ap->flags = ap->flags | 8U;
  ap->state = 10;
  ret = 2;
  goto ldv_49038;
  case 10: ;
  if ((int )((signed char )ap->ability_match) != 0 && ap->rxconfig == 0U) {
    ap->state = 1;
    goto ldv_49038;
  } else {
  }
  delta = ap->cur_time - ap->link_time;
  if (delta > 10000UL) {
    if ((ap->flags & 4096U) == 0U) {
      ap->state = 11;
    } else
    if ((ap->txconfig & 128U) == 0U && (ap->flags & 16384U) == 0U) {
      ap->state = 11;
    } else {
      ret = -1;
    }
  } else {
  }
  goto ldv_49038;
  case 11:
  ap->link_time = ap->cur_time;
  tp->mac_mode = tp->mac_mode & 4294836223U;
  _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
  __const_udelay(171800UL);
  ap->state = 12;
  ret = 2;
  goto ldv_49038;
  case 12: ;
  if ((int )((signed char )ap->ability_match) != 0 && ap->rxconfig == 0U) {
    ap->state = 1;
    goto ldv_49038;
  } else {
  }
  delta = ap->cur_time - ap->link_time;
  if (delta > 10000UL) {
    ap->state = 13;
  } else {
  }
  goto ldv_49038;
  case 13:
  ap->flags = ap->flags | 2147483652U;
  ret = 1;
  goto ldv_49038;
  case 14: ;
  goto ldv_49038;
  case 15: ;
  goto ldv_49038;
  default:
  ret = -1;
  goto ldv_49038;
  }
  ldv_49038: ;
  return (ret);
}
}
static int fiber_autoneg(struct tg3 *tp , u32 *txflags , u32 *rxflags )
{
  int res ;
  struct tg3_fiber_aneginfo aninfo ;
  int status ;
  unsigned int tick ;
  u32 tmp ;
  {
  res = 0;
  status = -1;
  _tw32_flush(tp, 1092U, 0U, 0U);
  tmp = tp->mac_mode & 4294967283U;
  _tw32_flush(tp, 1024U, tmp | 8U, 0U);
  __const_udelay(171800UL);
  _tw32_flush(tp, 1024U, tp->mac_mode | 131072U, 0U);
  __const_udelay(171800UL);
  memset((void *)(& aninfo), 0, 48UL);
  aninfo.flags = aninfo.flags | 1U;
  aninfo.state = 0;
  aninfo.cur_time = 0UL;
  tick = 0U;
  goto ldv_49066;
  ldv_49065:
  status = tg3_fiber_aneg_smachine(tp, & aninfo);
  if (status == 1 || status == -1) {
    goto ldv_49064;
  } else {
  }
  __const_udelay(4295UL);
  ldv_49066:
  tick = tick + 1U;
  if (tick <= 194999U) {
    goto ldv_49065;
  } else {
  }
  ldv_49064:
  tp->mac_mode = tp->mac_mode & 4294836223U;
  _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
  __const_udelay(171800UL);
  *txflags = aninfo.txconfig;
  *rxflags = aninfo.flags;
  if (status == 1 && (aninfo.flags & 2147483716U) != 0U) {
    res = 1;
  } else {
  }
  return (res);
}
}
static void tg3_init_bcm8002(struct tg3 *tp )
{
  u32 mac_status ;
  u32 tmp ;
  int i ;
  int tmp___0 ;
  {
  tmp = (*(tp->read32))(tp, 1028U);
  mac_status = tmp;
  tmp___0 = _tg3_flag(31, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0 && (mac_status & 1U) == 0U) {
    return;
  } else {
  }
  tg3_writephy(tp, 22, 32775U);
  tg3_writephy(tp, 0, 32768U);
  i = 0;
  goto ldv_49073;
  ldv_49072:
  __const_udelay(42950UL);
  i = i + 1;
  ldv_49073: ;
  if (i <= 499) {
    goto ldv_49072;
  } else {
  }
  tg3_writephy(tp, 16, 33809U);
  tg3_writephy(tp, 17, 2576U);
  tg3_writephy(tp, 24, 160U);
  tg3_writephy(tp, 22, 16895U);
  tg3_writephy(tp, 19, 1024U);
  __const_udelay(171800UL);
  tg3_writephy(tp, 19, 0U);
  tg3_writephy(tp, 17, 2640U);
  __const_udelay(171800UL);
  tg3_writephy(tp, 17, 2576U);
  i = 0;
  goto ldv_49076;
  ldv_49075:
  __const_udelay(42950UL);
  i = i + 1;
  ldv_49076: ;
  if (i <= 14999) {
    goto ldv_49075;
  } else {
  }
  tg3_writephy(tp, 16, 32785U);
  return;
}
}
static bool tg3_setup_fiber_hw_autoneg(struct tg3 *tp , u32 mac_status )
{
  u16 flowctrl ;
  bool current_link_up ;
  u32 sg_dig_ctrl ;
  u32 sg_dig_status ;
  u32 serdes_cfg ;
  u32 expected_sg_dig_ctrl ;
  int workaround ;
  int port_a ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 val ;
  u32 local_adv ;
  u32 remote_adv ;
  u32 val___0 ;
  {
  serdes_cfg = 0U;
  expected_sg_dig_ctrl = 0U;
  workaround = 0;
  port_a = 1;
  current_link_up = 0;
  if (tp->pci_chip_rev_id != 8192U && tp->pci_chip_rev_id != 8193U) {
    workaround = 1;
    tmp = (*(tp->read32))(tp, 184U);
    if ((tmp & 4U) != 0U) {
      port_a = 0;
    } else {
    }
    tmp___0 = (*(tp->read32))(tp, 1424U);
    serdes_cfg = tmp___0 & 15757311U;
  } else {
  }
  sg_dig_ctrl = (*(tp->read32))(tp, 1456U);
  if ((unsigned int )tp->link_config.autoneg != 1U) {
    if ((int )sg_dig_ctrl < 0) {
      if (workaround != 0) {
        val = serdes_cfg;
        if (port_a != 0) {
          val = val | 201392128U;
        } else {
          val = val | 67174400U;
        }
        _tw32_flush(tp, 1424U, val, 0U);
      } else {
      }
      _tw32_flush(tp, 1456U, 20481024U, 0U);
    } else {
    }
    if ((int )mac_status & 1) {
      tg3_setup_flow_control(tp, 0U, 0U);
      current_link_up = 1;
    } else {
    }
    goto out;
  } else {
  }
  expected_sg_dig_ctrl = 2167964672U;
  flowctrl = tg3_advert_flowctrl_1000X((int )tp->link_config.flowctrl);
  if (((int )flowctrl & 128) != 0) {
    expected_sg_dig_ctrl = expected_sg_dig_ctrl | 2048U;
  } else {
  }
  if (((int )flowctrl & 256) != 0) {
    expected_sg_dig_ctrl = expected_sg_dig_ctrl | 4096U;
  } else {
  }
  if (sg_dig_ctrl != expected_sg_dig_ctrl) {
    if (((tp->phy_flags & 131072U) != 0U && tp->serdes_counter != 0U) && (mac_status & 5U) == 1U) {
      tp->serdes_counter = tp->serdes_counter - 1U;
      current_link_up = 1;
      goto out;
    } else {
    }
    restart_autoneg: ;
    if (workaround != 0) {
      _tw32_flush(tp, 1424U, serdes_cfg | 201396224U, 0U);
    } else {
    }
    _tw32_flush(tp, 1456U, expected_sg_dig_ctrl | 1073741824U, 0U);
    __const_udelay(21475UL);
    _tw32_flush(tp, 1456U, expected_sg_dig_ctrl, 0U);
    tp->serdes_counter = 2U;
    tp->phy_flags = tp->phy_flags & 4294836223U;
  } else
  if ((mac_status & 3U) != 0U) {
    sg_dig_status = (*(tp->read32))(tp, 1460U);
    mac_status = (*(tp->read32))(tp, 1028U);
    if ((sg_dig_status & 2U) != 0U && (int )mac_status & 1) {
      local_adv = 0U;
      remote_adv = 0U;
      if ((sg_dig_ctrl & 2048U) != 0U) {
        local_adv = local_adv | 128U;
      } else {
      }
      if ((sg_dig_ctrl & 4096U) != 0U) {
        local_adv = local_adv | 256U;
      } else {
      }
      if ((sg_dig_status & 524288U) != 0U) {
        remote_adv = remote_adv | 128U;
      } else {
      }
      if ((sg_dig_status & 1048576U) != 0U) {
        remote_adv = remote_adv | 256U;
      } else {
      }
      tp->link_config.rmt_adv = mii_adv_to_ethtool_adv_x(remote_adv);
      tg3_setup_flow_control(tp, local_adv, remote_adv);
      current_link_up = 1;
      tp->serdes_counter = 0U;
      tp->phy_flags = tp->phy_flags & 4294836223U;
    } else
    if ((sg_dig_status & 2U) == 0U) {
      if (tp->serdes_counter != 0U) {
        tp->serdes_counter = tp->serdes_counter - 1U;
      } else {
        if (workaround != 0) {
          val___0 = serdes_cfg;
          if (port_a != 0) {
            val___0 = val___0 | 201392128U;
          } else {
            val___0 = val___0 | 67174400U;
          }
          _tw32_flush(tp, 1424U, val___0, 0U);
        } else {
        }
        _tw32_flush(tp, 1456U, 20481024U, 0U);
        __const_udelay(171800UL);
        mac_status = (*(tp->read32))(tp, 1028U);
        if ((int )mac_status & 1 && (mac_status & 4U) == 0U) {
          tg3_setup_flow_control(tp, 0U, 0U);
          current_link_up = 1;
          tp->phy_flags = tp->phy_flags | 131072U;
          tp->serdes_counter = 1U;
        } else {
          goto restart_autoneg;
        }
      }
    } else {
    }
  } else {
    tp->serdes_counter = 2U;
    tp->phy_flags = tp->phy_flags & 4294836223U;
  }
  out: ;
  return (current_link_up);
}
}
static bool tg3_setup_fiber_by_hand(struct tg3 *tp , u32 mac_status )
{
  bool current_link_up ;
  u32 txflags ;
  u32 rxflags ;
  int i ;
  u32 local_adv ;
  u32 remote_adv ;
  int tmp ;
  u32 tmp___0 ;
  {
  current_link_up = 0;
  if ((mac_status & 1U) == 0U) {
    goto out;
  } else {
  }
  if ((unsigned int )tp->link_config.autoneg == 1U) {
    tmp = fiber_autoneg(tp, & txflags, & rxflags);
    if (tmp != 0) {
      local_adv = 0U;
      remote_adv = 0U;
      if ((txflags & 32768U) != 0U) {
        local_adv = local_adv | 128U;
      } else {
      }
      if ((int )txflags & 1) {
        local_adv = local_adv | 256U;
      } else {
      }
      if ((rxflags & 256U) != 0U) {
        remote_adv = remote_adv | 128U;
      } else {
      }
      if ((rxflags & 512U) != 0U) {
        remote_adv = remote_adv | 256U;
      } else {
      }
      tp->link_config.rmt_adv = mii_adv_to_ethtool_adv_x(remote_adv);
      tg3_setup_flow_control(tp, local_adv, remote_adv);
      current_link_up = 1;
    } else {
    }
    i = 0;
    goto ldv_49109;
    ldv_49108:
    __const_udelay(85900UL);
    _tw32_flush(tp, 1028U, 24U, 0U);
    __const_udelay(171800UL);
    tmp___0 = (*(tp->read32))(tp, 1028U);
    if ((tmp___0 & 24U) == 0U) {
      goto ldv_49107;
    } else {
    }
    i = i + 1;
    ldv_49109: ;
    if (i <= 29) {
      goto ldv_49108;
    } else {
    }
    ldv_49107:
    mac_status = (*(tp->read32))(tp, 1028U);
    if ((! current_link_up && (int )mac_status & 1) && (mac_status & 4U) == 0U) {
      current_link_up = 1;
    } else {
    }
  } else {
    tg3_setup_flow_control(tp, 0U, 0U);
    current_link_up = 1;
    _tw32_flush(tp, 1024U, tp->mac_mode | 131072U, 0U);
    __const_udelay(171800UL);
    _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
    __const_udelay(171800UL);
  }
  out: ;
  return (current_link_up);
}
}
static int tg3_setup_fiber_phy(struct tg3 *tp , bool force_reset )
{
  u32 orig_pause_cfg ;
  u16 orig_active_speed ;
  u8 orig_active_duplex ;
  u32 mac_status ;
  bool current_link_up ;
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  u32 now_pause_cfg ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  orig_pause_cfg = (u32 )tp->link_config.active_flowctrl;
  orig_active_speed = tp->link_config.active_speed;
  orig_active_duplex = tp->link_config.active_duplex;
  tmp = _tg3_flag(35, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0 && (int )tp->link_up) {
    tmp___0 = _tg3_flag(31, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      mac_status = (*(tp->read32))(tp, 1028U);
      mac_status = mac_status & 15U;
      if (mac_status == 3U) {
        _tw32_flush(tp, 1028U, 24U, 0U);
        return (0);
      } else {
      }
    } else {
    }
  } else {
  }
  _tw32_flush(tp, 1092U, 0U, 0U);
  tp->mac_mode = tp->mac_mode & 4294967281U;
  tp->mac_mode = tp->mac_mode | 12U;
  _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
  __const_udelay(171800UL);
  if (tp->phy_id == 1610678592U) {
    tg3_init_bcm8002(tp);
  } else {
  }
  _tw32_flush(tp, 1032U, 4096U, 0U);
  __const_udelay(171800UL);
  current_link_up = 0;
  tp->link_config.rmt_adv = 0U;
  mac_status = (*(tp->read32))(tp, 1028U);
  tmp___1 = _tg3_flag(35, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    current_link_up = tg3_setup_fiber_hw_autoneg(tp, mac_status);
  } else {
    current_link_up = tg3_setup_fiber_by_hand(tp, mac_status);
  }
  (tp->napi[0].hw_status)->status = ((tp->napi[0].hw_status)->status & 4294967292U) | 1U;
  i = 0;
  goto ldv_49122;
  ldv_49121:
  _tw32_flush(tp, 1028U, 24U, 0U);
  __const_udelay(21475UL);
  tmp___2 = (*(tp->read32))(tp, 1028U);
  if ((tmp___2 & 4120U) == 0U) {
    goto ldv_49120;
  } else {
  }
  i = i + 1;
  ldv_49122: ;
  if (i <= 99) {
    goto ldv_49121;
  } else {
  }
  ldv_49120:
  mac_status = (*(tp->read32))(tp, 1028U);
  if ((mac_status & 1U) == 0U) {
    current_link_up = 0;
    if ((unsigned int )tp->link_config.autoneg == 1U && tp->serdes_counter == 0U) {
      _tw32_flush(tp, 1024U, tp->mac_mode | 131072U, 0U);
      __const_udelay(4295UL);
      _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
    } else {
    }
  } else {
  }
  if ((int )current_link_up) {
    tp->link_config.active_speed = 1000U;
    tp->link_config.active_duplex = 1U;
    (*(tp->write32))(tp, 1036U, tp->led_ctrl | 3U);
  } else {
    tp->link_config.active_speed = 65535U;
    tp->link_config.active_duplex = 255U;
    (*(tp->write32))(tp, 1036U, tp->led_ctrl | 17U);
  }
  tmp___3 = tg3_test_and_report_link_chg(tp, (int )current_link_up);
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    now_pause_cfg = (u32 )tp->link_config.active_flowctrl;
    if ((orig_pause_cfg != now_pause_cfg || (int )tp->link_config.active_speed != (int )orig_active_speed) || (int )tp->link_config.active_duplex != (int )orig_active_duplex) {
      tg3_link_report(tp);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int tg3_setup_fiber_mii_phy(struct tg3 *tp , bool force_reset )
{
  int err ;
  u32 bmsr ;
  u32 bmcr ;
  u16 current_speed ;
  u8 current_duplex ;
  bool current_link_up ;
  u32 local_adv ;
  u32 remote_adv ;
  u32 sgsr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 adv ;
  u32 newadv ;
  int tmp___4 ;
  u16 tmp___5 ;
  u32 tmp___6 ;
  u32 new_bmcr ;
  u32 adv___0 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  u32 tmp___10 ;
  u32 common ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  {
  err = 0;
  current_speed = 65535U;
  current_duplex = 255U;
  current_link_up = 0;
  if (tp->pci_chip_rev_id >> 12 == 22297U || tp->pci_chip_rev_id >> 12 == 22304U) {
    tmp = tg3_readphy(tp, 20, & sgsr);
    if (tmp == 0) {
      if ((int )sgsr & 1) {
        if ((int )force_reset) {
          tg3_phy_reset(tp);
        } else {
        }
        tp->mac_mode = tp->mac_mode & 4294967283U;
        if ((sgsr & 2U) == 0U) {
          tp->mac_mode = tp->mac_mode | 8U;
        } else {
          current_link_up = 1;
          if ((sgsr & 16U) != 0U) {
            current_speed = 1000U;
            tp->mac_mode = tp->mac_mode | 8U;
          } else
          if ((sgsr & 8U) != 0U) {
            current_speed = 100U;
            tp->mac_mode = tp->mac_mode | 4U;
          } else {
            current_speed = 10U;
            tp->mac_mode = tp->mac_mode | 4U;
          }
          if ((sgsr & 4U) != 0U) {
            current_duplex = 1U;
          } else {
            current_duplex = 0U;
          }
        }
        _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
        __const_udelay(171800UL);
        tg3_clear_mac_status(tp);
        goto fiber_setup_done;
      } else {
      }
    } else {
    }
  } else {
  }
  tp->mac_mode = tp->mac_mode | 8U;
  _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
  __const_udelay(171800UL);
  tg3_clear_mac_status(tp);
  if ((int )force_reset) {
    tg3_phy_reset(tp);
  } else {
  }
  tp->link_config.rmt_adv = 0U;
  tmp___0 = tg3_readphy(tp, 1, & bmsr);
  err = tmp___0 | err;
  tmp___1 = tg3_readphy(tp, 1, & bmsr);
  err = tmp___1 | err;
  if (tp->pci_chip_rev_id >> 12 == 9U) {
    tmp___2 = (*(tp->read32))(tp, 1120U);
    if ((tmp___2 & 8U) != 0U) {
      bmsr = bmsr | 4U;
    } else {
      bmsr = bmsr & 4294967291U;
    }
  } else {
  }
  tmp___3 = tg3_readphy(tp, 0, & bmcr);
  err = tmp___3 | err;
  if (((unsigned int )tp->link_config.autoneg == 1U && ! force_reset) && (tp->phy_flags & 131072U) != 0U) {
  } else
  if ((unsigned int )tp->link_config.autoneg == 1U) {
    tmp___4 = tg3_readphy(tp, 4, & adv);
    err = tmp___4 | err;
    newadv = adv & 4294966784U;
    tmp___5 = tg3_advert_flowctrl_1000X((int )tp->link_config.flowctrl);
    newadv = (u32 )tmp___5 | newadv;
    tmp___6 = ethtool_adv_to_mii_adv_x(tp->link_config.advertising);
    newadv = tmp___6 | newadv;
    if (newadv != adv || (bmcr & 4096U) == 0U) {
      tg3_writephy(tp, 4, newadv);
      bmcr = bmcr | 4608U;
      tg3_writephy(tp, 0, bmcr);
      _tw32_flush(tp, 1032U, 4096U, 0U);
      tp->serdes_counter = 1U;
      tp->phy_flags = tp->phy_flags & 4294836223U;
      return (err);
    } else {
    }
  } else {
    bmcr = bmcr & 4294967231U;
    new_bmcr = bmcr & 4294962943U;
    if ((unsigned int )tp->link_config.duplex == 1U) {
      new_bmcr = new_bmcr | 256U;
    } else {
    }
    if (new_bmcr != bmcr) {
      new_bmcr = new_bmcr | 64U;
      if ((int )tp->link_up) {
        tmp___7 = tg3_readphy(tp, 4, & adv___0);
        err = tmp___7 | err;
        adv___0 = adv___0 & 4294967168U;
        tg3_writephy(tp, 4, adv___0);
        tg3_writephy(tp, 0, bmcr | 4608U);
        __const_udelay(42950UL);
        tg3_carrier_off(tp);
      } else {
      }
      tg3_writephy(tp, 0, new_bmcr);
      bmcr = new_bmcr;
      tmp___8 = tg3_readphy(tp, 1, & bmsr);
      err = tmp___8 | err;
      tmp___9 = tg3_readphy(tp, 1, & bmsr);
      err = tmp___9 | err;
      if (tp->pci_chip_rev_id >> 12 == 9U) {
        tmp___10 = (*(tp->read32))(tp, 1120U);
        if ((tmp___10 & 8U) != 0U) {
          bmsr = bmsr | 4U;
        } else {
          bmsr = bmsr & 4294967291U;
        }
      } else {
      }
      tp->phy_flags = tp->phy_flags & 4294836223U;
    } else {
    }
  }
  if ((bmsr & 4U) != 0U) {
    current_speed = 1000U;
    current_link_up = 1;
    if ((bmcr & 256U) != 0U) {
      current_duplex = 1U;
    } else {
      current_duplex = 0U;
    }
    local_adv = 0U;
    remote_adv = 0U;
    if ((bmcr & 4096U) != 0U) {
      tmp___11 = tg3_readphy(tp, 4, & local_adv);
      err = tmp___11 | err;
      tmp___12 = tg3_readphy(tp, 5, & remote_adv);
      err = tmp___12 | err;
      common = local_adv & remote_adv;
      if ((common & 96U) != 0U) {
        if ((common & 32U) != 0U) {
          current_duplex = 1U;
        } else {
          current_duplex = 0U;
        }
        tp->link_config.rmt_adv = mii_adv_to_ethtool_adv_x(remote_adv);
      } else {
        tmp___13 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
        if (tmp___13 == 0) {
        } else {
          current_link_up = 0;
        }
      }
    } else {
    }
  } else {
  }
  fiber_setup_done: ;
  if ((int )current_link_up && (unsigned int )current_duplex == 1U) {
    tg3_setup_flow_control(tp, local_adv, remote_adv);
  } else {
  }
  tp->mac_mode = tp->mac_mode & 4294967293U;
  if ((unsigned int )tp->link_config.active_duplex == 0U) {
    tp->mac_mode = tp->mac_mode | 2U;
  } else {
  }
  _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
  __const_udelay(171800UL);
  _tw32_flush(tp, 1032U, 4096U, 0U);
  tp->link_config.active_speed = current_speed;
  tp->link_config.active_duplex = current_duplex;
  tg3_test_and_report_link_chg(tp, (int )current_link_up);
  return (err);
}
}
static void tg3_serdes_parallel_detect(struct tg3 *tp )
{
  u32 bmcr ;
  u32 phy1 ;
  u32 phy2 ;
  u32 phy2___0 ;
  u32 bmcr___0 ;
  {
  if (tp->serdes_counter != 0U) {
    tp->serdes_counter = tp->serdes_counter - 1U;
    return;
  } else {
  }
  if (! tp->link_up && (unsigned int )tp->link_config.autoneg == 1U) {
    tg3_readphy(tp, 0, & bmcr);
    if ((bmcr & 4096U) != 0U) {
      tg3_writephy(tp, 28, 31744U);
      tg3_readphy(tp, 28, & phy1);
      tg3_writephy(tp, 23, 3841U);
      tg3_readphy(tp, 21, & phy2);
      tg3_readphy(tp, 21, & phy2);
      if ((phy1 & 16U) != 0U && (phy2 & 32U) == 0U) {
        bmcr = bmcr & 4294963199U;
        bmcr = bmcr | 320U;
        tg3_writephy(tp, 0, bmcr);
        tp->phy_flags = tp->phy_flags | 131072U;
      } else {
      }
    } else {
    }
  } else
  if (((int )tp->link_up && (unsigned int )tp->link_config.autoneg == 1U) && (tp->phy_flags & 131072U) != 0U) {
    tg3_writephy(tp, 23, 3841U);
    tg3_readphy(tp, 21, & phy2___0);
    if ((phy2___0 & 32U) != 0U) {
      tg3_readphy(tp, 0, & bmcr___0);
      tg3_writephy(tp, 0, bmcr___0 | 4096U);
      tp->phy_flags = tp->phy_flags & 4294836223U;
    } else {
    }
  } else {
  }
  return;
}
}
static int tg3_setup_phy(struct tg3 *tp , bool force_reset )
{
  u32 val ;
  int err ;
  u32 scale ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  if ((tp->phy_flags & 16U) != 0U) {
    err = tg3_setup_fiber_phy(tp, (int )force_reset);
  } else
  if ((tp->phy_flags & 32U) != 0U) {
    err = tg3_setup_fiber_mii_phy(tp, (int )force_reset);
  } else {
    err = tg3_setup_copper_phy(tp, (int )force_reset);
  }
  if (tp->pci_chip_rev_id >> 8 == 358464U) {
    tmp = (*(tp->read32))(tp, 13872U);
    val = tmp & 2031616U;
    if (val == 0U) {
      scale = 65U;
    } else
    if (val == 1245184U) {
      scale = 6U;
    } else {
      scale = 12U;
    }
    tmp___0 = (*(tp->read32))(tp, 26628U);
    val = tmp___0 & 4294967041U;
    val = (scale << 1) | val;
    (*(tp->write32))(tp, 26628U, val);
  } else {
  }
  val = 9728U;
  if (tp->pci_chip_rev_id >> 12 == 22304U || tp->pci_chip_rev_id >> 12 == 22370U) {
    tmp___1 = (*(tp->read32))(tp, 1124U);
    val = (tmp___1 & 4294901760U) | val;
  } else {
  }
  if ((unsigned int )tp->link_config.active_speed == 1000U && (unsigned int )tp->link_config.active_duplex == 0U) {
    (*(tp->write32))(tp, 1124U, val | 255U);
  } else {
    (*(tp->write32))(tp, 1124U, val | 32U);
  }
  tmp___2 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 == 0) {
    if ((int )tp->link_up) {
      (*(tp->write32))(tp, 15400U, tp->coal.stats_block_coalesce_usecs);
    } else {
      (*(tp->write32))(tp, 15400U, 0U);
    }
  } else {
  }
  tmp___3 = _tg3_flag(5, (unsigned long *)(& tp->tg3_flags));
  if (tmp___3 != 0) {
    val = (*(tp->read32))(tp, 32040U);
    if (! tp->link_up) {
      val = (val & 4294902015U) | tp->pwrmgmt_thresh;
    } else {
      val = val | 65280U;
    }
    (*(tp->write32))(tp, 32040U, val);
  } else {
  }
  return (err);
}
}
static u64 tg3_refclk_read(struct tg3 *tp )
{
  u64 stamp ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  tmp = (*(tp->read32))(tp, 26880U);
  stamp = (u64 )tmp;
  tmp___0 = (*(tp->read32))(tp, 26884U);
  return (((unsigned long long )tmp___0 << 32) | stamp);
}
}
static void tg3_refclk_write(struct tg3 *tp , u64 newval )
{
  {
  (*(tp->write32))(tp, 26888U, 2U);
  (*(tp->write32))(tp, 26880U, (u32 )newval);
  (*(tp->write32))(tp, 26884U, (u32 )(newval >> 32));
  _tw32_flush(tp, 26888U, 4U, 0U);
  return;
}
}
__inline static void tg3_full_lock(struct tg3 *tp , int irq_sync ) ;
__inline static void tg3_full_unlock(struct tg3 *tp ) ;
static int tg3_get_ts_info(struct net_device *dev , struct ethtool_ts_info *info )
{
  struct tg3 *tp ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  info->so_timestamping = 26U;
  tmp___0 = _tg3_flag(69, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    info->so_timestamping = info->so_timestamping | 69U;
  } else {
  }
  if ((unsigned long )tp->ptp_clock != (unsigned long )((struct ptp_clock *)0)) {
    info->phc_index = ptp_clock_index(tp->ptp_clock);
  } else {
    info->phc_index = -1;
  }
  info->tx_types = 3U;
  info->rx_filters = 585U;
  return (0);
}
}
static int tg3_ptp_adjfreq(struct ptp_clock_info *ptp , s32 ppb )
{
  struct tg3 *tp ;
  struct ptp_clock_info const *__mptr ;
  bool neg_adj ;
  u32 correction ;
  u64 tmp ;
  {
  __mptr = (struct ptp_clock_info const *)ptp;
  tp = (struct tg3 *)__mptr + 0xffffffffffffff20UL;
  neg_adj = 0;
  correction = 0U;
  if (ppb < 0) {
    neg_adj = 1;
    ppb = - ppb;
  } else {
  }
  tmp = div_u64((unsigned long long )ppb * 16777216ULL, 1000000000U);
  correction = (u32 )tmp & 16777215U;
  tg3_full_lock(tp, 0);
  if (correction != 0U) {
    (*(tp->write32))(tp, 26920U, ((int )neg_adj ? 3221225472U : 2147483648U) | correction);
  } else {
    (*(tp->write32))(tp, 26920U, 0U);
  }
  tg3_full_unlock(tp);
  return (0);
}
}
static int tg3_ptp_adjtime(struct ptp_clock_info *ptp , s64 delta )
{
  struct tg3 *tp ;
  struct ptp_clock_info const *__mptr ;
  {
  __mptr = (struct ptp_clock_info const *)ptp;
  tp = (struct tg3 *)__mptr + 0xffffffffffffff20UL;
  tg3_full_lock(tp, 0);
  tp->ptp_adjust = tp->ptp_adjust + delta;
  tg3_full_unlock(tp);
  return (0);
}
}
static int tg3_ptp_gettime(struct ptp_clock_info *ptp , struct timespec *ts )
{
  u64 ns ;
  u32 remainder ;
  struct tg3 *tp ;
  struct ptp_clock_info const *__mptr ;
  u64 tmp ;
  {
  __mptr = (struct ptp_clock_info const *)ptp;
  tp = (struct tg3 *)__mptr + 0xffffffffffffff20UL;
  tg3_full_lock(tp, 0);
  ns = tg3_refclk_read(tp);
  ns = (unsigned long long )tp->ptp_adjust + ns;
  tg3_full_unlock(tp);
  tmp = div_u64_rem(ns, 1000000000U, & remainder);
  ts->tv_sec = (__kernel_time_t )tmp;
  ts->tv_nsec = (long )remainder;
  return (0);
}
}
static int tg3_ptp_settime(struct ptp_clock_info *ptp , struct timespec const *ts )
{
  u64 ns ;
  struct tg3 *tp ;
  struct ptp_clock_info const *__mptr ;
  s64 tmp ;
  {
  __mptr = (struct ptp_clock_info const *)ptp;
  tp = (struct tg3 *)__mptr + 0xffffffffffffff20UL;
  tmp = timespec_to_ns(ts);
  ns = (u64 )tmp;
  tg3_full_lock(tp, 0);
  tg3_refclk_write(tp, ns);
  tp->ptp_adjust = 0LL;
  tg3_full_unlock(tp);
  return (0);
}
}
static int tg3_ptp_enable(struct ptp_clock_info *ptp , struct ptp_clock_request *rq ,
                          int on )
{
  {
  return (-95);
}
}
static struct ptp_clock_info const tg3_ptp_caps =
     {& __this_module, {'t', 'g', '3', ' ', 'c', 'l', 'o', 'c', 'k', '\000'}, 250000000,
    0, 0, 0, 0, & tg3_ptp_adjfreq, & tg3_ptp_adjtime, & tg3_ptp_gettime, & tg3_ptp_settime,
    & tg3_ptp_enable};
static void tg3_hwclock_to_timestamp(struct tg3 *tp , u64 hwclock , struct skb_shared_hwtstamps *timestamp )
{
  {
  memset((void *)timestamp, 0, 16UL);
  timestamp->hwtstamp = ns_to_ktime((hwclock & 9223372036854775807ULL) + (unsigned long long )tp->ptp_adjust);
  return;
}
}
static void tg3_ptp_init(struct tg3 *tp )
{
  int tmp ;
  ktime_t tmp___0 ;
  {
  tmp = _tg3_flag(69, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return;
  } else {
  }
  tmp___0 = ktime_get_real();
  tg3_refclk_write(tp, (u64 )tmp___0.tv64);
  tp->ptp_adjust = 0LL;
  tp->ptp_info = tg3_ptp_caps;
  return;
}
}
static void tg3_ptp_resume(struct tg3 *tp )
{
  int tmp ;
  ktime_t tmp___0 ;
  {
  tmp = _tg3_flag(69, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return;
  } else {
  }
  tmp___0 = ktime_get_real();
  tg3_refclk_write(tp, (u64 )(tmp___0.tv64 + tp->ptp_adjust));
  tp->ptp_adjust = 0LL;
  return;
}
}
static void tg3_ptp_fini(struct tg3 *tp )
{
  int tmp ;
  {
  tmp = _tg3_flag(69, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0 || (unsigned long )tp->ptp_clock == (unsigned long )((struct ptp_clock *)0)) {
    return;
  } else {
  }
  ptp_clock_unregister(tp->ptp_clock);
  tp->ptp_clock = 0;
  tp->ptp_adjust = 0LL;
  return;
}
}
__inline static int tg3_irq_sync(struct tg3 *tp )
{
  {
  return ((int )tp->irq_sync);
}
}
__inline static void tg3_rd32_loop(struct tg3 *tp , u32 *dst , u32 off , u32 len )
{
  int i ;
  u32 *tmp ;
  {
  dst = dst + (unsigned long )off;
  i = 0;
  goto ldv_49240;
  ldv_49239:
  tmp = dst;
  dst = dst + 1;
  *tmp = (*(tp->read32))(tp, off + (u32 )i);
  i = (int )((unsigned int )i + 4U);
  ldv_49240: ;
  if ((u32 )i < len) {
    goto ldv_49239;
  } else {
  }
  return;
}
}
static void tg3_dump_legacy_regs(struct tg3 *tp , u32 *regs )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tg3_rd32_loop(tp, regs, 0U, 176U);
  tg3_rd32_loop(tp, regs, 512U, 512U);
  tg3_rd32_loop(tp, regs, 1024U, 1264U);
  tg3_rd32_loop(tp, regs, 3072U, 224U);
  tg3_rd32_loop(tp, regs, 4096U, 4U);
  tg3_rd32_loop(tp, regs, 5120U, 128U);
  tg3_rd32_loop(tp, regs, 6144U, 72U);
  tg3_rd32_loop(tp, regs, 7168U, 4U);
  tg3_rd32_loop(tp, regs, 8192U, 32U);
  tg3_rd32_loop(tp, regs, 8448U, 348U);
  tg3_rd32_loop(tp, regs, 9216U, 12U);
  tg3_rd32_loop(tp, regs, 9280U, 60U);
  tg3_rd32_loop(tp, regs, 9344U, 68U);
  tg3_rd32_loop(tp, regs, 10240U, 4U);
  tg3_rd32_loop(tp, regs, 11264U, 32U);
  tg3_rd32_loop(tp, regs, 12288U, 20U);
  tg3_rd32_loop(tp, regs, 13312U, 8U);
  tg3_rd32_loop(tp, regs, 14336U, 8U);
  tg3_rd32_loop(tp, regs, 15360U, 256U);
  tmp = _tg3_flag(15, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    tg3_rd32_loop(tp, regs, 15744U, 384U);
  } else {
  }
  tg3_rd32_loop(tp, regs, 16384U, 16U);
  tg3_rd32_loop(tp, regs, 17408U, 88U);
  tg3_rd32_loop(tp, regs, 18432U, 8U);
  tg3_rd32_loop(tp, regs, 19456U, 8U);
  tg3_rd32_loop(tp, regs, 20480U, 4U);
  tg3_rd32_loop(tp, regs, 20484U, 4U);
  tg3_rd32_loop(tp, regs, 20508U, 4U);
  tg3_rd32_loop(tp, regs, 20532U, 4U);
  tmp___0 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 == 0) {
    tg3_rd32_loop(tp, regs, 21504U, 4U);
    tg3_rd32_loop(tp, regs, 21508U, 4U);
    tg3_rd32_loop(tp, regs, 21532U, 4U);
  } else {
  }
  tg3_rd32_loop(tp, regs, 22528U, 272U);
  tg3_rd32_loop(tp, regs, 23552U, 288U);
  tg3_rd32_loop(tp, regs, 24576U, 12U);
  tg3_rd32_loop(tp, regs, 25600U, 4U);
  tg3_rd32_loop(tp, regs, 26624U, 76U);
  tmp___1 = _tg3_flag(12, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    tg3_rd32_loop(tp, regs, 28672U, 36U);
  } else {
  }
  return;
}
}
static void tg3_dump_state(struct tg3 *tp )
{
  int i ;
  u32 *regs ;
  void *tmp ;
  int tmp___0 ;
  struct tg3_napi *tnapi ;
  {
  tmp = kzalloc(32768UL, 32U);
  regs = (u32 *)tmp;
  if ((unsigned long )regs == (unsigned long )((u32 *)0)) {
    return;
  } else {
  }
  tmp___0 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    i = 0;
    goto ldv_49252;
    ldv_49251:
    *(regs + (unsigned long )i / 4UL) = (*(tp->read32))(tp, (u32 )i);
    i = (int )((unsigned int )i + 4U);
    ldv_49252: ;
    if (i <= 31743) {
      goto ldv_49251;
    } else {
    }
  } else {
    tg3_dump_legacy_regs(tp, regs);
  }
  i = 0;
  goto ldv_49256;
  ldv_49255: ;
  if (((*(regs + (unsigned long )i) == 0U && *(regs + ((unsigned long )i + 1UL)) == 0U) && *(regs + ((unsigned long )i + 2UL)) == 0U) && *(regs + ((unsigned long )i + 3UL)) == 0U) {
    goto ldv_49254;
  } else {
  }
  netdev_err((struct net_device const *)tp->dev, "0x%08x: 0x%08x, 0x%08x, 0x%08x, 0x%08x\n",
             i * 4, *(regs + (unsigned long )i), *(regs + ((unsigned long )i + 1UL)),
             *(regs + ((unsigned long )i + 2UL)), *(regs + ((unsigned long )i + 3UL)));
  ldv_49254:
  i = i + 4;
  ldv_49256: ;
  if ((unsigned int )i <= 8191U) {
    goto ldv_49255;
  } else {
  }
  kfree((void const *)regs);
  i = 0;
  goto ldv_49260;
  ldv_49259:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  netdev_err((struct net_device const *)tp->dev, "%d: Host status block [%08x:%08x:(%04x:%04x:%04x):(%04x:%04x)]\n",
             i, (tnapi->hw_status)->status, (tnapi->hw_status)->status_tag, (int )(tnapi->hw_status)->rx_jumbo_consumer,
             (int )(tnapi->hw_status)->rx_consumer, (int )(tnapi->hw_status)->rx_mini_consumer,
             (int )(tnapi->hw_status)->idx[0].rx_producer, (int )(tnapi->hw_status)->idx[0].tx_consumer);
  netdev_err((struct net_device const *)tp->dev, "%d: NAPI info [%08x:%08x:(%04x:%04x:%04x):%04x:(%04x:%04x:%04x:%04x)]\n",
             i, tnapi->last_tag, tnapi->last_irq_tag, tnapi->tx_prod, tnapi->tx_cons,
             tnapi->tx_pending, tnapi->rx_rcb_ptr, tnapi->prodring.rx_std_prod_idx,
             tnapi->prodring.rx_std_cons_idx, tnapi->prodring.rx_jmb_prod_idx, tnapi->prodring.rx_jmb_cons_idx);
  i = i + 1;
  ldv_49260: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_49259;
  } else {
  }
  return;
}
}
static void tg3_tx_recover(struct tg3 *tp )
{
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = _tg3_flag(7, (unsigned long *)(& tp->tg3_flags));
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    goto _L;
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )tp->write32_tx_mbox == (unsigned long )(& tg3_write_indirect_mbox),
                               0L);
    if (tmp___1 != 0L) {
      _L:
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8512/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/broadcom/tg3.c.prepared"),
                           "i" (6311), "i" (12UL));
      ldv_49265: ;
      goto ldv_49265;
    } else {
    }
  }
  netdev_warn((struct net_device const *)tp->dev, "The system may be re-ordering memory-mapped I/O cycles to the network device, attempting to recover. Please report the problem to the driver maintainer and include system chipset information.\n");
  spin_lock(& tp->lock);
  _tg3_flag_set(22, (unsigned long *)(& tp->tg3_flags));
  spin_unlock(& tp->lock);
  return;
}
}
__inline static u32 tg3_tx_avail(struct tg3_napi *tnapi )
{
  {
  __asm__ volatile ("": : : "memory");
  return (tnapi->tx_pending - ((tnapi->tx_prod - tnapi->tx_cons) & 511U));
}
}
static void tg3_tx(struct tg3_napi *tnapi )
{
  struct tg3 *tp ;
  u32 hw_idx ;
  u32 sw_idx ;
  struct netdev_queue *txq ;
  int index ;
  unsigned int pkts_compl ;
  unsigned int bytes_compl ;
  int tmp ;
  struct tg3_tx_ring_info *ri ;
  struct sk_buff *skb ;
  int i ;
  int tx_bug ;
  long tmp___0 ;
  struct skb_shared_hwtstamps timestamp ;
  u64 hwclock ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  unsigned int tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  unsigned char *tmp___6 ;
  unsigned int tmp___7 ;
  unsigned char *tmp___8 ;
  long tmp___9 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  bool tmp___10 ;
  u32 tmp___11 ;
  bool tmp___12 ;
  long tmp___13 ;
  u32 tmp___14 ;
  long tmp___15 ;
  {
  tp = tnapi->tp;
  hw_idx = (u32 )(tnapi->hw_status)->idx[0].tx_consumer;
  sw_idx = tnapi->tx_cons;
  index = (int )(((long )tnapi - (long )(& tp->napi)) / 512L);
  pkts_compl = 0U;
  bytes_compl = 0U;
  tmp = _tg3_flag(60, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    index = index - 1;
  } else {
  }
  txq = netdev_get_tx_queue((struct net_device const *)tp->dev, (unsigned int )index);
  goto ldv_49295;
  ldv_49294:
  ri = tnapi->tx_buffers + (unsigned long )sw_idx;
  skb = ri->skb;
  tx_bug = 0;
  tmp___0 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___0 != 0L) {
    tg3_tx_recover(tp);
    return;
  } else {
  }
  if (((tnapi->tx_ring + (unsigned long )sw_idx)->len_flags & 32U) != 0U) {
    tmp___1 = (*(tp->read32))(tp, 1472U);
    hwclock = (u64 )tmp___1;
    tmp___2 = (*(tp->read32))(tp, 1476U);
    hwclock = ((unsigned long long )tmp___2 << 32) | hwclock;
    tg3_hwclock_to_timestamp(tp, hwclock, & timestamp);
    skb_tstamp_tx(skb, & timestamp);
  } else {
  }
  tmp___3 = skb_headlen((struct sk_buff const *)skb);
  pci_unmap_single(tp->pdev, ri->mapping, (size_t )tmp___3, 1);
  ri->skb = 0;
  goto ldv_49286;
  ldv_49285:
  ri->fragmented = 0;
  sw_idx = (sw_idx + 1U) & 511U;
  ri = tnapi->tx_buffers + (unsigned long )sw_idx;
  ldv_49286: ;
  if ((int )ri->fragmented) {
    goto ldv_49285;
  } else {
  }
  sw_idx = (sw_idx + 1U) & 511U;
  i = 0;
  goto ldv_49292;
  ldv_49291:
  ri = tnapi->tx_buffers + (unsigned long )sw_idx;
  tmp___4 = ldv__builtin_expect((unsigned long )ri->skb != (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___4 != 0L) {
    tx_bug = 1;
  } else {
    tmp___5 = ldv__builtin_expect(sw_idx == hw_idx, 0L);
    if (tmp___5 != 0L) {
      tx_bug = 1;
    } else {
    }
  }
  tmp___6 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___7 = skb_frag_size((skb_frag_t const *)(& ((struct skb_shared_info *)tmp___6)->frags) + (unsigned long )i);
  pci_unmap_page(tp->pdev, ri->mapping, (size_t )tmp___7, 1);
  goto ldv_49289;
  ldv_49288:
  ri->fragmented = 0;
  sw_idx = (sw_idx + 1U) & 511U;
  ri = tnapi->tx_buffers + (unsigned long )sw_idx;
  ldv_49289: ;
  if ((int )ri->fragmented) {
    goto ldv_49288;
  } else {
  }
  sw_idx = (sw_idx + 1U) & 511U;
  i = i + 1;
  ldv_49292:
  tmp___8 = skb_end_pointer((struct sk_buff const *)skb);
  if ((int )((struct skb_shared_info *)tmp___8)->nr_frags > i) {
    goto ldv_49291;
  } else {
  }
  pkts_compl = pkts_compl + 1U;
  bytes_compl = skb->len + bytes_compl;
  consume_skb(skb);
  tmp___9 = ldv__builtin_expect(tx_bug != 0, 0L);
  if (tmp___9 != 0L) {
    tg3_tx_recover(tp);
    return;
  } else {
  }
  ldv_49295: ;
  if (sw_idx != hw_idx) {
    goto ldv_49294;
  } else {
  }
  netdev_tx_completed_queue(txq, pkts_compl, bytes_compl);
  tnapi->tx_cons = sw_idx;
  __asm__ volatile ("mfence": : : "memory");
  tmp___12 = netif_tx_queue_stopped((struct netdev_queue const *)txq);
  tmp___13 = ldv__builtin_expect((long )tmp___12, 0L);
  if (tmp___13 != 0L) {
    tmp___14 = tg3_tx_avail(tnapi);
    tmp___15 = ldv__builtin_expect(tmp___14 > tnapi->tx_pending / 4U, 0L);
    if (tmp___15 != 0L) {
      __vpp_verify = 0;
      switch (4UL) {
      case 1UL: ;
      switch (4UL) {
      case 1UL:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
      goto ldv_49302;
      case 2UL:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_49302;
      case 4UL:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_49302;
      case 8UL:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_49302;
      default:
      __bad_percpu_size();
      }
      ldv_49302:
      pscr_ret__ = pfo_ret__;
      goto ldv_49308;
      case 2UL: ;
      switch (4UL) {
      case 1UL:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_49312;
      case 2UL:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_49312;
      case 4UL:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_49312;
      case 8UL:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_49312;
      default:
      __bad_percpu_size();
      }
      ldv_49312:
      pscr_ret__ = pfo_ret_____0;
      goto ldv_49308;
      case 4UL: ;
      switch (4UL) {
      case 1UL:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_49321;
      case 2UL:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_49321;
      case 4UL:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_49321;
      case 8UL:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_49321;
      default:
      __bad_percpu_size();
      }
      ldv_49321:
      pscr_ret__ = pfo_ret_____1;
      goto ldv_49308;
      case 8UL: ;
      switch (4UL) {
      case 1UL:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_49330;
      case 2UL:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_49330;
      case 4UL:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_49330;
      case 8UL:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_49330;
      default:
      __bad_percpu_size();
      }
      ldv_49330:
      pscr_ret__ = pfo_ret_____2;
      goto ldv_49308;
      default:
      __bad_size_call_parameter();
      goto ldv_49308;
      }
      ldv_49308:
      __netif_tx_lock(txq, pscr_ret__);
      tmp___10 = netif_tx_queue_stopped((struct netdev_queue const *)txq);
      if ((int )tmp___10) {
        tmp___11 = tg3_tx_avail(tnapi);
        if (tmp___11 > tnapi->tx_pending / 4U) {
          netif_tx_wake_queue(txq);
        } else {
        }
      } else {
      }
      __netif_tx_unlock(txq);
    } else {
    }
  } else {
  }
  return;
}
}
static void tg3_frag_free(bool is_frag , void *data )
{
  struct page *tmp ;
  {
  if ((int )is_frag) {
    tmp = virt_to_head_page((void const *)data);
    put_page(tmp);
  } else {
    kfree((void const *)data);
  }
  return;
}
}
static void tg3_rx_data_free(struct tg3 *tp , struct ring_info *ri , u32 map_sz )
{
  unsigned int skb_size ;
  int _max1 ;
  int _max2 ;
  {
  _max1 = 32;
  _max2 = 64;
  skb_size = ((((u32 )(_max1 > _max2 ? _max1 : _max2) + map_sz) + 63U) & 4294967232U) + 320U;
  if ((unsigned long )ri->data == (unsigned long )((u8 *)0)) {
    return;
  } else {
  }
  pci_unmap_single(tp->pdev, ri->mapping, (size_t )map_sz, 2);
  tg3_frag_free(skb_size <= 4096U, (void *)ri->data);
  ri->data = 0;
  return;
}
}
static int tg3_alloc_rx_data(struct tg3 *tp , struct tg3_rx_prodring_set *tpr , u32 opaque_key ,
                             u32 dest_idx_unmasked , unsigned int *frag_size )
{
  struct tg3_rx_buffer_desc *desc ;
  struct ring_info *map ;
  u8 *data ;
  dma_addr_t mapping ;
  int skb_size ;
  int data_size ;
  int dest_idx ;
  int _max1 ;
  int _max2 ;
  void *tmp ;
  void *tmp___0 ;
  int _max1___0 ;
  int _max2___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  switch (opaque_key) {
  case 65536U:
  dest_idx = (int )(tp->rx_std_ring_mask & dest_idx_unmasked);
  desc = tpr->rx_std + (unsigned long )dest_idx;
  map = tpr->rx_std_buffers + (unsigned long )dest_idx;
  data_size = (int )tp->rx_pkt_map_sz;
  goto ldv_49366;
  case 131072U:
  dest_idx = (int )(tp->rx_jmb_ring_mask & dest_idx_unmasked);
  desc = & (tpr->rx_jmb + (unsigned long )dest_idx)->std;
  map = tpr->rx_jmb_buffers + (unsigned long )dest_idx;
  data_size = 9110;
  goto ldv_49366;
  default: ;
  return (-22);
  }
  ldv_49366:
  _max1 = 32;
  _max2 = 64;
  skb_size = (int )(((unsigned int )(((_max1 > _max2 ? _max1 : _max2) + data_size) + 63) & 4294967232U) + 320U);
  if ((unsigned int )skb_size <= 4096U) {
    tmp = netdev_alloc_frag((unsigned int )skb_size);
    data = (u8 *)tmp;
    *frag_size = (unsigned int )skb_size;
  } else {
    tmp___0 = kmalloc((size_t )skb_size, 32U);
    data = (u8 *)tmp___0;
    *frag_size = 0U;
  }
  if ((unsigned long )data == (unsigned long )((u8 *)0)) {
    return (-12);
  } else {
  }
  _max1___0 = 32;
  _max2___0 = 64;
  mapping = pci_map_single(tp->pdev, (void *)data + (unsigned long )(_max1___0 > _max2___0 ? _max1___0 : _max2___0),
                           (size_t )data_size, 2);
  tmp___1 = pci_dma_mapping_error(tp->pdev, mapping);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  if (tmp___2 != 0L) {
    tg3_frag_free((unsigned int )skb_size <= 4096U, (void *)data);
    return (-5);
  } else {
  }
  map->data = data;
  map->mapping = mapping;
  desc->addr_hi = (u32 )(mapping >> 32);
  desc->addr_lo = (u32 )mapping;
  return (data_size);
}
}
static void tg3_recycle_rx(struct tg3_napi *tnapi , struct tg3_rx_prodring_set *dpr ,
                           u32 opaque_key , int src_idx , u32 dest_idx_unmasked )
{
  struct tg3 *tp ;
  struct tg3_rx_buffer_desc *src_desc ;
  struct tg3_rx_buffer_desc *dest_desc ;
  struct ring_info *src_map ;
  struct ring_info *dest_map ;
  struct tg3_rx_prodring_set *spr ;
  int dest_idx ;
  {
  tp = tnapi->tp;
  spr = & tp->napi[0].prodring;
  switch (opaque_key) {
  case 65536U:
  dest_idx = (int )(tp->rx_std_ring_mask & dest_idx_unmasked);
  dest_desc = dpr->rx_std + (unsigned long )dest_idx;
  dest_map = dpr->rx_std_buffers + (unsigned long )dest_idx;
  src_desc = spr->rx_std + (unsigned long )src_idx;
  src_map = spr->rx_std_buffers + (unsigned long )src_idx;
  goto ldv_49390;
  case 131072U:
  dest_idx = (int )(tp->rx_jmb_ring_mask & dest_idx_unmasked);
  dest_desc = & (dpr->rx_jmb + (unsigned long )dest_idx)->std;
  dest_map = dpr->rx_jmb_buffers + (unsigned long )dest_idx;
  src_desc = & (spr->rx_jmb + (unsigned long )src_idx)->std;
  src_map = spr->rx_jmb_buffers + (unsigned long )src_idx;
  goto ldv_49390;
  default: ;
  return;
  }
  ldv_49390:
  dest_map->data = src_map->data;
  dest_map->mapping = src_map->mapping;
  dest_desc->addr_hi = src_desc->addr_hi;
  dest_desc->addr_lo = src_desc->addr_lo;
  __asm__ volatile ("": : : "memory");
  src_map->data = 0;
  return;
}
}
static int tg3_rx(struct tg3_napi *tnapi , int budget )
{
  struct tg3 *tp ;
  u32 work_mask ;
  u32 rx_std_posted ;
  u32 std_prod_idx ;
  u32 jmb_prod_idx ;
  u32 sw_idx ;
  u16 hw_idx ;
  int received ;
  struct tg3_rx_prodring_set *tpr ;
  struct ring_info *ri ;
  struct tg3_rx_buffer_desc *desc ;
  unsigned int len ;
  struct sk_buff *skb ;
  dma_addr_t dma_addr ;
  u32 opaque_key ;
  u32 desc_idx ;
  u32 *post_ptr ;
  u8 *data ;
  u64 tstamp ;
  int _max1 ;
  int _max2 ;
  u32 tmp ;
  u32 tmp___0 ;
  int skb_size ;
  unsigned int frag_size ;
  int _max1___0 ;
  int _max2___0 ;
  size_t __len ;
  void *__ret ;
  int _max1___2 ;
  int _max2___2 ;
  struct skb_shared_hwtstamps *tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  tp = tnapi->tp;
  rx_std_posted = 0U;
  sw_idx = tnapi->rx_rcb_ptr;
  tpr = & tnapi->prodring;
  hw_idx = *(tnapi->rx_rcb_prod_idx);
  __asm__ volatile ("lfence": : : "memory");
  work_mask = 0U;
  received = 0;
  std_prod_idx = tpr->rx_std_prod_idx;
  jmb_prod_idx = tpr->rx_jmb_prod_idx;
  goto ldv_49438;
  ldv_49437:
  desc = tnapi->rx_rcb + (unsigned long )sw_idx;
  tstamp = 0ULL;
  desc_idx = desc->opaque & 65535U;
  opaque_key = desc->opaque & 458752U;
  if (opaque_key == 65536U) {
    ri = tp->napi[0].prodring.rx_std_buffers + (unsigned long )desc_idx;
    dma_addr = ri->mapping;
    data = ri->data;
    post_ptr = & std_prod_idx;
    rx_std_posted = rx_std_posted + 1U;
  } else
  if (opaque_key == 131072U) {
    ri = tp->napi[0].prodring.rx_jmb_buffers + (unsigned long )desc_idx;
    dma_addr = ri->mapping;
    data = ri->data;
    post_ptr = & jmb_prod_idx;
  } else {
    goto next_pkt_nopost;
  }
  work_mask = work_mask | opaque_key;
  if ((desc->err_vlan & 4294901760U) != 0U && desc->err_vlan != 1048576U) {
    drop_it:
    tg3_recycle_rx(tnapi, tpr, opaque_key, (int )desc_idx, *post_ptr);
    drop_it_no_recycle:
    tp->rx_dropped = tp->rx_dropped + 1UL;
    goto next_pkt;
  } else {
  }
  _max1 = 32;
  _max2 = 64;
  __builtin_prefetch((void const *)data + (unsigned long )(_max1 > _max2 ? _max1 : _max2));
  len = (desc->idx_len & 65535U) - 4U;
  if ((desc->type_flags & 528U) == 16U || (desc->type_flags & 528U) == 512U) {
    tmp = (*(tp->read32))(tp, 1712U);
    tstamp = (u64 )tmp;
    tmp___0 = (*(tp->read32))(tp, 1716U);
    tstamp = ((unsigned long long )tmp___0 << 32) | tstamp;
  } else {
  }
  if (len > 256U) {
    skb_size = tg3_alloc_rx_data(tp, tpr, opaque_key, *post_ptr, & frag_size);
    if (skb_size < 0) {
      goto drop_it;
    } else {
    }
    pci_unmap_single(tp->pdev, dma_addr, (size_t )skb_size, 2);
    skb = build_skb((void *)data, frag_size);
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      tg3_frag_free(frag_size != 0U, (void *)data);
      goto drop_it_no_recycle;
    } else {
    }
    _max1___0 = 32;
    _max2___0 = 64;
    skb_reserve(skb, _max1___0 > _max2___0 ? _max1___0 : _max2___0);
    __asm__ volatile ("": : : "memory");
    ri->data = 0;
  } else {
    tg3_recycle_rx(tnapi, tpr, opaque_key, (int )desc_idx, *post_ptr);
    skb = netdev_alloc_skb(tp->dev, len + 2U);
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      goto drop_it_no_recycle;
    } else {
    }
    skb_reserve(skb, 2);
    pci_dma_sync_single_for_cpu(tp->pdev, dma_addr, (size_t )len, 2);
    __len = (size_t )len;
    _max1___2 = 32;
    _max2___2 = 64;
    __ret = memcpy((void *)skb->data, (void const *)data + (unsigned long )(_max1___2 > _max2___2 ? _max1___2 : _max2___2),
                             __len);
    pci_dma_sync_single_for_device(tp->pdev, dma_addr, (size_t )len, 2);
  }
  skb_put(skb, len);
  if (tstamp != 0ULL) {
    tmp___1 = skb_hwtstamps(skb);
    tg3_hwclock_to_timestamp(tp, tstamp, tmp___1);
  } else {
  }
  if ((((tp->dev)->features & 536870912ULL) != 0ULL && (desc->type_flags & 8192U) != 0U) && (desc->ip_tcp_csum & 65535U) == 65535U) {
    skb->ip_summed = 1U;
  } else {
    skb_checksum_none_assert((struct sk_buff const *)skb);
  }
  skb->protocol = eth_type_trans(skb, tp->dev);
  if ((tp->dev)->mtu + 14U < len && (unsigned int )skb->protocol != 129U) {
    consume_skb(skb);
    goto drop_it_no_recycle;
  } else {
  }
  if ((desc->type_flags & 64U) != 0U && (tp->rx_mode & 1024U) == 0U) {
    __vlan_hwaccel_put_tag(skb, 129, (int )((u16 )desc->err_vlan));
  } else {
  }
  napi_gro_receive(& tnapi->napi, skb);
  received = received + 1;
  budget = budget - 1;
  next_pkt:
  *post_ptr = *post_ptr + 1U;
  tmp___2 = ldv__builtin_expect(tp->rx_std_max_post <= rx_std_posted, 0L);
  if (tmp___2 != 0L) {
    tpr->rx_std_prod_idx = tp->rx_std_ring_mask & std_prod_idx;
    (*(tp->write32_rx_mbox))(tp, 620U, tpr->rx_std_prod_idx);
    work_mask = work_mask & 4294901759U;
    rx_std_posted = 0U;
  } else {
  }
  next_pkt_nopost:
  sw_idx = sw_idx + 1U;
  sw_idx = tp->rx_ret_ring_mask & sw_idx;
  if ((u32 )hw_idx == sw_idx) {
    hw_idx = *(tnapi->rx_rcb_prod_idx);
    __asm__ volatile ("lfence": : : "memory");
  } else {
  }
  ldv_49438: ;
  if ((u32 )hw_idx != sw_idx && budget > 0) {
    goto ldv_49437;
  } else {
  }
  tnapi->rx_rcb_ptr = sw_idx;
  (*(tp->write32_rx_mbox))(tp, tnapi->consmbox, sw_idx);
  tmp___3 = _tg3_flag(59, (unsigned long *)(& tp->tg3_flags));
  if (tmp___3 == 0) {
    __asm__ volatile ("sfence": : : "memory");
    if ((work_mask & 65536U) != 0U) {
      tpr->rx_std_prod_idx = tp->rx_std_ring_mask & std_prod_idx;
      (*(tp->write32_rx_mbox))(tp, 620U, tpr->rx_std_prod_idx);
    } else {
    }
    if ((work_mask & 131072U) != 0U) {
      tpr->rx_jmb_prod_idx = tp->rx_jmb_ring_mask & jmb_prod_idx;
      (*(tp->write32_rx_mbox))(tp, 628U, tpr->rx_jmb_prod_idx);
    } else {
    }
    __asm__ volatile ("": : : "memory");
  } else
  if (work_mask != 0U) {
    __asm__ volatile ("": : : "memory");
    tpr->rx_std_prod_idx = tp->rx_std_ring_mask & std_prod_idx;
    tpr->rx_jmb_prod_idx = tp->rx_jmb_ring_mask & jmb_prod_idx;
    if ((unsigned long )((struct tg3_napi *)(& tp->napi) + 1UL) != (unsigned long )tnapi) {
      tp->rx_refill = 1;
      napi_schedule(& tp->napi[1].napi);
    } else {
    }
  } else {
  }
  return (received);
}
}
static void tg3_poll_link(struct tg3 *tp )
{
  struct tg3_hw_status *sblk ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp___0 = _tg3_flag(2, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 == 0) {
    tmp___1 = _tg3_flag(6, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 == 0) {
      sblk = tp->napi[0].hw_status;
      if ((sblk->status & 2U) != 0U) {
        sblk->status = (sblk->status & 4294967292U) | 1U;
        spin_lock(& tp->lock);
        tmp = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
        if (tmp != 0) {
          _tw32_flush(tp, 1028U, 4198424U, 0U);
          __const_udelay(171800UL);
        } else {
          tg3_setup_phy(tp, 0);
        }
        spin_unlock(& tp->lock);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static int tg3_rx_prodring_xfer(struct tg3 *tp , struct tg3_rx_prodring_set *dpr ,
                                struct tg3_rx_prodring_set *spr )
{
  u32 si ;
  u32 di ;
  u32 cpycnt ;
  u32 src_prod_idx ;
  int i ;
  int err ;
  u32 _min1 ;
  u32 _min2 ;
  size_t __len ;
  void *__ret ;
  struct tg3_rx_buffer_desc *sbd ;
  struct tg3_rx_buffer_desc *dbd ;
  u32 _min1___0 ;
  u32 _min2___0 ;
  size_t __len___0 ;
  void *__ret___0 ;
  struct tg3_rx_buffer_desc *sbd___0 ;
  struct tg3_rx_buffer_desc *dbd___0 ;
  {
  err = 0;
  ldv_49470:
  src_prod_idx = spr->rx_std_prod_idx;
  __asm__ volatile ("": : : "memory");
  if (spr->rx_std_cons_idx == src_prod_idx) {
    goto ldv_49455;
  } else {
  }
  if (spr->rx_std_cons_idx < src_prod_idx) {
    cpycnt = src_prod_idx - spr->rx_std_cons_idx;
  } else {
    cpycnt = (tp->rx_std_ring_mask - spr->rx_std_cons_idx) + 1U;
  }
  _min1 = cpycnt;
  _min2 = (tp->rx_std_ring_mask - dpr->rx_std_prod_idx) + 1U;
  cpycnt = _min1 < _min2 ? _min1 : _min2;
  si = spr->rx_std_cons_idx;
  di = dpr->rx_std_prod_idx;
  i = (int )di;
  goto ldv_49461;
  ldv_49460: ;
  if ((unsigned long )(dpr->rx_std_buffers + (unsigned long )i)->data != (unsigned long )((u8 *)0)) {
    cpycnt = (u32 )i - di;
    err = -28;
    goto ldv_49459;
  } else {
  }
  i = i + 1;
  ldv_49461: ;
  if ((u32 )i < di + cpycnt) {
    goto ldv_49460;
  } else {
  }
  ldv_49459: ;
  if (cpycnt == 0U) {
    goto ldv_49455;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __len = (unsigned long )cpycnt * 16UL;
  __ret = memcpy((void *)dpr->rx_std_buffers + (unsigned long )di, (void const *)spr->rx_std_buffers + (unsigned long )si,
                           __len);
  i = 0;
  goto ldv_49468;
  ldv_49467:
  sbd = spr->rx_std + (unsigned long )si;
  dbd = dpr->rx_std + (unsigned long )di;
  dbd->addr_hi = sbd->addr_hi;
  dbd->addr_lo = sbd->addr_lo;
  i = i + 1;
  di = di + 1U;
  si = si + 1U;
  ldv_49468: ;
  if ((u32 )i < cpycnt) {
    goto ldv_49467;
  } else {
  }
  spr->rx_std_cons_idx = (spr->rx_std_cons_idx + cpycnt) & tp->rx_std_ring_mask;
  dpr->rx_std_prod_idx = (dpr->rx_std_prod_idx + cpycnt) & tp->rx_std_ring_mask;
  goto ldv_49470;
  ldv_49455: ;
  ldv_49486:
  src_prod_idx = spr->rx_jmb_prod_idx;
  __asm__ volatile ("": : : "memory");
  if (spr->rx_jmb_cons_idx == src_prod_idx) {
    goto ldv_49471;
  } else {
  }
  if (spr->rx_jmb_cons_idx < src_prod_idx) {
    cpycnt = src_prod_idx - spr->rx_jmb_cons_idx;
  } else {
    cpycnt = (tp->rx_jmb_ring_mask - spr->rx_jmb_cons_idx) + 1U;
  }
  _min1___0 = cpycnt;
  _min2___0 = (tp->rx_jmb_ring_mask - dpr->rx_jmb_prod_idx) + 1U;
  cpycnt = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  si = spr->rx_jmb_cons_idx;
  di = dpr->rx_jmb_prod_idx;
  i = (int )di;
  goto ldv_49477;
  ldv_49476: ;
  if ((unsigned long )(dpr->rx_jmb_buffers + (unsigned long )i)->data != (unsigned long )((u8 *)0)) {
    cpycnt = (u32 )i - di;
    err = -28;
    goto ldv_49475;
  } else {
  }
  i = i + 1;
  ldv_49477: ;
  if ((u32 )i < di + cpycnt) {
    goto ldv_49476;
  } else {
  }
  ldv_49475: ;
  if (cpycnt == 0U) {
    goto ldv_49471;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __len___0 = (unsigned long )cpycnt * 16UL;
  __ret___0 = memcpy((void *)dpr->rx_jmb_buffers + (unsigned long )di, (void const *)spr->rx_jmb_buffers + (unsigned long )si,
                               __len___0);
  i = 0;
  goto ldv_49484;
  ldv_49483:
  sbd___0 = & (spr->rx_jmb + (unsigned long )si)->std;
  dbd___0 = & (dpr->rx_jmb + (unsigned long )di)->std;
  dbd___0->addr_hi = sbd___0->addr_hi;
  dbd___0->addr_lo = sbd___0->addr_lo;
  i = i + 1;
  di = di + 1U;
  si = si + 1U;
  ldv_49484: ;
  if ((u32 )i < cpycnt) {
    goto ldv_49483;
  } else {
  }
  spr->rx_jmb_cons_idx = (spr->rx_jmb_cons_idx + cpycnt) & tp->rx_jmb_ring_mask;
  dpr->rx_jmb_prod_idx = (dpr->rx_jmb_prod_idx + cpycnt) & tp->rx_jmb_ring_mask;
  goto ldv_49486;
  ldv_49471: ;
  return (err);
}
}
static int tg3_poll_work(struct tg3_napi *tnapi , int work_done , int budget )
{
  struct tg3 *tp ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  struct tg3_rx_prodring_set *dpr ;
  int i ;
  int err ;
  u32 std_prod_idx ;
  u32 jmb_prod_idx ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tp = tnapi->tp;
  if ((u32 )(tnapi->hw_status)->idx[0].tx_consumer != tnapi->tx_cons) {
    tg3_tx(tnapi);
    tmp = _tg3_flag(22, (unsigned long *)(& tp->tg3_flags));
    tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
    if (tmp___0 != 0L) {
      return (work_done);
    } else {
    }
  } else {
  }
  if ((unsigned long )tnapi->rx_rcb_prod_idx == (unsigned long )((u16 *)0)) {
    return (work_done);
  } else {
  }
  if ((u32 )*(tnapi->rx_rcb_prod_idx) != tnapi->rx_rcb_ptr) {
    tmp___1 = tg3_rx(tnapi, budget - work_done);
    work_done = tmp___1 + work_done;
  } else {
  }
  tmp___3 = _tg3_flag(59, (unsigned long *)(& tp->tg3_flags));
  if (tmp___3 != 0 && (unsigned long )((struct tg3_napi *)(& tp->napi) + 1UL) == (unsigned long )tnapi) {
    dpr = & tp->napi[0].prodring;
    err = 0;
    std_prod_idx = dpr->rx_std_prod_idx;
    jmb_prod_idx = dpr->rx_jmb_prod_idx;
    tp->rx_refill = 0;
    i = 1;
    goto ldv_49499;
    ldv_49498:
    tmp___2 = tg3_rx_prodring_xfer(tp, dpr, & tp->napi[i].prodring);
    err = tmp___2 | err;
    i = i + 1;
    ldv_49499: ;
    if ((u32 )i <= tp->rxq_cnt) {
      goto ldv_49498;
    } else {
    }
    __asm__ volatile ("sfence": : : "memory");
    if (dpr->rx_std_prod_idx != std_prod_idx) {
      (*(tp->write32_rx_mbox))(tp, 620U, dpr->rx_std_prod_idx);
    } else {
    }
    if (dpr->rx_jmb_prod_idx != jmb_prod_idx) {
      (*(tp->write32_rx_mbox))(tp, 628U, dpr->rx_jmb_prod_idx);
    } else {
    }
    __asm__ volatile ("": : : "memory");
    if (err != 0) {
      _tw32_flush(tp, 15360U, tp->coal_now, 0U);
    } else {
    }
  } else {
  }
  return (work_done);
}
}
__inline static void tg3_reset_task_schedule(struct tg3 *tp )
{
  int tmp ;
  {
  tmp = test_and_set_bit(68, (unsigned long volatile *)(& tp->tg3_flags));
  if (tmp == 0) {
    schedule_work(& tp->reset_task);
  } else {
  }
  return;
}
}
__inline static void tg3_reset_task_cancel(struct tg3 *tp )
{
  {
  cancel_work_sync(& tp->reset_task);
  _tg3_flag_clear(68, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_clear(22, (unsigned long *)(& tp->tg3_flags));
  return;
}
}
static int tg3_poll_msix(struct napi_struct *napi , int budget )
{
  struct tg3_napi *tnapi ;
  struct napi_struct const *__mptr ;
  struct tg3 *tp ;
  int work_done ;
  struct tg3_hw_status *sblk ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  {
  __mptr = (struct napi_struct const *)napi;
  tnapi = (struct tg3_napi *)__mptr;
  tp = tnapi->tp;
  work_done = 0;
  sblk = tnapi->hw_status;
  ldv_49520:
  work_done = tg3_poll_work(tnapi, work_done, budget);
  tmp = _tg3_flag(22, (unsigned long *)(& tp->tg3_flags));
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    goto tx_recovery;
  } else {
  }
  tmp___1 = ldv__builtin_expect(work_done >= budget, 0L);
  if (tmp___1 != 0L) {
    goto ldv_49518;
  } else {
  }
  tnapi->last_tag = sblk->status_tag;
  tnapi->last_irq_tag = tnapi->last_tag;
  __asm__ volatile ("lfence": : : "memory");
  tmp___4 = ldv__builtin_expect((u32 )sblk->idx[0].tx_consumer == tnapi->tx_cons, 1L);
  if (tmp___4 != 0L) {
    tmp___5 = ldv__builtin_expect((u32 )*(tnapi->rx_rcb_prod_idx) == tnapi->rx_rcb_ptr,
                               1L);
    if (tmp___5 != 0L) {
      if ((unsigned long )((struct tg3_napi *)(& tp->napi) + 1UL) == (unsigned long )tnapi && (int )tp->rx_refill) {
        goto ldv_49519;
      } else {
      }
      napi_complete(napi);
      (*(tp->write32_mbox))(tp, tnapi->int_mbox, tnapi->last_tag << 24);
      tmp___2 = ldv__builtin_expect((unsigned long )((struct tg3_napi *)(& tp->napi) + 1UL) == (unsigned long )tnapi,
                                 0L);
      if (tmp___2 != 0L) {
        tmp___3 = ldv__builtin_expect((long )tp->rx_refill, 0L);
        if (tmp___3 != 0L) {
          (*(tp->write32))(tp, 15360U, (tp->coalesce_mode | tnapi->coal_now) | 2U);
        } else {
        }
      } else {
      }
      __asm__ volatile ("": : : "memory");
      goto ldv_49518;
    } else {
    }
  } else {
  }
  ldv_49519: ;
  goto ldv_49520;
  ldv_49518: ;
  return (work_done);
  tx_recovery:
  napi_complete(napi);
  tg3_reset_task_schedule(tp);
  return (work_done);
}
}
static void tg3_process_error(struct tg3 *tp )
{
  u32 val ;
  bool real_error ;
  int tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  {
  real_error = 0;
  tmp = _tg3_flag(3, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    return;
  } else {
  }
  val = (*(tp->read32))(tp, 15432U);
  if ((val & 4294967231U) != 0U) {
    netdev_err((struct net_device const *)tp->dev, "FLOW Attention error.  Resetting chip.\n");
    real_error = 1;
  } else {
  }
  tmp___0 = (*(tp->read32))(tp, 24580U);
  if ((tmp___0 & 4294967294U) != 0U) {
    netdev_err((struct net_device const *)tp->dev, "MSI Status error.  Resetting chip.\n");
    real_error = 1;
  } else {
  }
  tmp___1 = (*(tp->read32))(tp, 18436U);
  if (tmp___1 != 0U) {
    netdev_err((struct net_device const *)tp->dev, "DMA Status error.  Resetting chip.\n");
    real_error = 1;
  } else {
    tmp___2 = (*(tp->read32))(tp, 19460U);
    if (tmp___2 != 0U) {
      netdev_err((struct net_device const *)tp->dev, "DMA Status error.  Resetting chip.\n");
      real_error = 1;
    } else {
    }
  }
  if (! real_error) {
    return;
  } else {
  }
  tg3_dump_state(tp);
  _tg3_flag_set(3, (unsigned long *)(& tp->tg3_flags));
  tg3_reset_task_schedule(tp);
  return;
}
}
static int tg3_poll(struct napi_struct *napi , int budget )
{
  struct tg3_napi *tnapi ;
  struct napi_struct const *__mptr ;
  struct tg3 *tp ;
  int work_done ;
  struct tg3_hw_status *sblk ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  long tmp___4 ;
  {
  __mptr = (struct napi_struct const *)napi;
  tnapi = (struct tg3_napi *)__mptr;
  tp = tnapi->tp;
  work_done = 0;
  sblk = tnapi->hw_status;
  ldv_49538: ;
  if ((sblk->status & 4U) != 0U) {
    tg3_process_error(tp);
  } else {
  }
  tg3_poll_link(tp);
  work_done = tg3_poll_work(tnapi, work_done, budget);
  tmp = _tg3_flag(22, (unsigned long *)(& tp->tg3_flags));
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    goto tx_recovery;
  } else {
  }
  tmp___1 = ldv__builtin_expect(work_done >= budget, 0L);
  if (tmp___1 != 0L) {
    goto ldv_49537;
  } else {
  }
  tmp___2 = _tg3_flag(0, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    tnapi->last_tag = sblk->status_tag;
    tnapi->last_irq_tag = tnapi->last_tag;
    __asm__ volatile ("lfence": : : "memory");
  } else {
    sblk->status = sblk->status & 4294967294U;
  }
  tmp___3 = tg3_has_work(tnapi);
  tmp___4 = ldv__builtin_expect(tmp___3 == 0U, 1L);
  if (tmp___4 != 0L) {
    napi_complete(napi);
    tg3_int_reenable(tnapi);
    goto ldv_49537;
  } else {
  }
  goto ldv_49538;
  ldv_49537: ;
  return (work_done);
  tx_recovery:
  napi_complete(napi);
  tg3_reset_task_schedule(tp);
  return (work_done);
}
}
static void tg3_napi_disable(struct tg3 *tp )
{
  int i ;
  {
  i = (int )(tp->irq_cnt - 1U);
  goto ldv_49544;
  ldv_49543:
  napi_disable(& tp->napi[i].napi);
  i = i - 1;
  ldv_49544: ;
  if (i >= 0) {
    goto ldv_49543;
  } else {
  }
  return;
}
}
static void tg3_napi_enable(struct tg3 *tp )
{
  int i ;
  {
  i = 0;
  goto ldv_49551;
  ldv_49550:
  napi_enable(& tp->napi[i].napi);
  i = i + 1;
  ldv_49551: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_49550;
  } else {
  }
  return;
}
}
static void tg3_napi_init(struct tg3 *tp )
{
  int i ;
  {
  netif_napi_add(tp->dev, & tp->napi[0].napi, & tg3_poll, 64);
  i = 1;
  goto ldv_49558;
  ldv_49557:
  netif_napi_add(tp->dev, & tp->napi[i].napi, & tg3_poll_msix, 64);
  i = i + 1;
  ldv_49558: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_49557;
  } else {
  }
  return;
}
}
static void tg3_napi_fini(struct tg3 *tp )
{
  int i ;
  {
  i = 0;
  goto ldv_49565;
  ldv_49564:
  netif_napi_del(& tp->napi[i].napi);
  i = i + 1;
  ldv_49565: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_49564;
  } else {
  }
  return;
}
}
__inline static void tg3_netif_stop(struct tg3 *tp )
{
  {
  (tp->dev)->trans_start = jiffies;
  tg3_napi_disable(tp);
  netif_carrier_off(tp->dev);
  netif_tx_disable(tp->dev);
  return;
}
}
__inline static void tg3_netif_start(struct tg3 *tp )
{
  {
  tg3_ptp_resume(tp);
  netif_tx_wake_all_queues(tp->dev);
  if ((int )tp->link_up) {
    netif_carrier_on(tp->dev);
  } else {
  }
  tg3_napi_enable(tp);
  (tp->napi[0].hw_status)->status = (tp->napi[0].hw_status)->status | 1U;
  tg3_enable_ints(tp);
  return;
}
}
static void tg3_irq_quiesce(struct tg3 *tp )
{
  int i ;
  long tmp ;
  {
  tmp = ldv__builtin_expect(tp->irq_sync != 0U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8512/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/broadcom/tg3.c.prepared"),
                         "i" (7235), "i" (12UL));
    ldv_49577: ;
    goto ldv_49577;
  } else {
  }
  tp->irq_sync = 1U;
  __asm__ volatile ("mfence": : : "memory");
  i = 0;
  goto ldv_49579;
  ldv_49578:
  synchronize_irq(tp->napi[i].irq_vec);
  i = i + 1;
  ldv_49579: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_49578;
  } else {
  }
  return;
}
}
__inline static void tg3_full_lock(struct tg3 *tp , int irq_sync )
{
  {
  spin_lock_bh(& tp->lock);
  if (irq_sync != 0) {
    tg3_irq_quiesce(tp);
  } else {
  }
  return;
}
}
__inline static void tg3_full_unlock(struct tg3 *tp )
{
  {
  spin_unlock_bh(& tp->lock);
  return;
}
}
static irqreturn_t tg3_msi_1shot(int irq , void *dev_id )
{
  struct tg3_napi *tnapi ;
  struct tg3 *tp ;
  int tmp ;
  long tmp___0 ;
  {
  tnapi = (struct tg3_napi *)dev_id;
  tp = tnapi->tp;
  __builtin_prefetch((void const *)tnapi->hw_status);
  if ((unsigned long )tnapi->rx_rcb != (unsigned long )((struct tg3_rx_buffer_desc *)0)) {
    __builtin_prefetch((void const *)tnapi->rx_rcb + (unsigned long )tnapi->rx_rcb_ptr);
  } else {
  }
  tmp = tg3_irq_sync(tp);
  tmp___0 = ldv__builtin_expect(tmp == 0, 1L);
  if (tmp___0 != 0L) {
    napi_schedule(& tnapi->napi);
  } else {
  }
  return (1);
}
}
static irqreturn_t tg3_msi(int irq , void *dev_id )
{
  struct tg3_napi *tnapi ;
  struct tg3 *tp ;
  int tmp ;
  long tmp___0 ;
  {
  tnapi = (struct tg3_napi *)dev_id;
  tp = tnapi->tp;
  __builtin_prefetch((void const *)tnapi->hw_status);
  if ((unsigned long )tnapi->rx_rcb != (unsigned long )((struct tg3_rx_buffer_desc *)0)) {
    __builtin_prefetch((void const *)tnapi->rx_rcb + (unsigned long )tnapi->rx_rcb_ptr);
  } else {
  }
  (*(tp->write32_mbox))(tp, tnapi->int_mbox, 1U);
  tmp = tg3_irq_sync(tp);
  tmp___0 = ldv__builtin_expect(tmp == 0, 1L);
  if (tmp___0 != 0L) {
    napi_schedule(& tnapi->napi);
  } else {
  }
  return (1);
}
}
static irqreturn_t tg3_interrupt(int irq , void *dev_id )
{
  struct tg3_napi *tnapi ;
  struct tg3 *tp ;
  struct tg3_hw_status *sblk ;
  unsigned int handled ;
  int tmp ;
  u32 tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  long tmp___4 ;
  {
  tnapi = (struct tg3_napi *)dev_id;
  tp = tnapi->tp;
  sblk = tnapi->hw_status;
  handled = 1U;
  tmp___1 = ldv__builtin_expect((sblk->status & 1U) == 0U, 0L);
  if (tmp___1 != 0L) {
    tmp = _tg3_flag(30, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      handled = 0U;
      goto out;
    } else {
      tmp___0 = (*(tp->read32))(tp, 112U);
      if ((tmp___0 & 2U) != 0U) {
        handled = 0U;
        goto out;
      } else {
      }
    }
  } else {
  }
  tw32_mailbox_flush(tp, 516U, 1U);
  tmp___2 = tg3_irq_sync(tp);
  if (tmp___2 != 0) {
    goto out;
  } else {
  }
  sblk->status = sblk->status & 4294967294U;
  tmp___3 = tg3_has_work(tnapi);
  tmp___4 = ldv__builtin_expect(tmp___3 != 0U, 1L);
  if (tmp___4 != 0L) {
    __builtin_prefetch((void const *)tnapi->rx_rcb + (unsigned long )tnapi->rx_rcb_ptr);
    napi_schedule(& tnapi->napi);
  } else {
    tw32_mailbox_flush(tp, 516U, 0U);
  }
  out: ;
  return (handled != 0U);
}
}
static irqreturn_t tg3_interrupt_tagged(int irq , void *dev_id )
{
  struct tg3_napi *tnapi ;
  struct tg3 *tp ;
  struct tg3_hw_status *sblk ;
  unsigned int handled ;
  int tmp ;
  u32 tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tnapi = (struct tg3_napi *)dev_id;
  tp = tnapi->tp;
  sblk = tnapi->hw_status;
  handled = 1U;
  tmp___1 = ldv__builtin_expect(sblk->status_tag == tnapi->last_irq_tag, 0L);
  if (tmp___1 != 0L) {
    tmp = _tg3_flag(30, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      handled = 0U;
      goto out;
    } else {
      tmp___0 = (*(tp->read32))(tp, 112U);
      if ((tmp___0 & 2U) != 0U) {
        handled = 0U;
        goto out;
      } else {
      }
    }
  } else {
  }
  tw32_mailbox_flush(tp, 516U, 1U);
  tnapi->last_irq_tag = sblk->status_tag;
  tmp___2 = tg3_irq_sync(tp);
  if (tmp___2 != 0) {
    goto out;
  } else {
  }
  __builtin_prefetch((void const *)tnapi->rx_rcb + (unsigned long )tnapi->rx_rcb_ptr);
  napi_schedule(& tnapi->napi);
  out: ;
  return (handled != 0U);
}
}
static irqreturn_t tg3_test_isr(int irq , void *dev_id )
{
  struct tg3_napi *tnapi ;
  struct tg3 *tp ;
  struct tg3_hw_status *sblk ;
  u32 tmp ;
  {
  tnapi = (struct tg3_napi *)dev_id;
  tp = tnapi->tp;
  sblk = tnapi->hw_status;
  if ((int )sblk->status & 1) {
    tg3_disable_ints(tp);
    return (1);
  } else {
    tmp = (*(tp->read32))(tp, 112U);
    if ((tmp & 2U) == 0U) {
      tg3_disable_ints(tp);
      return (1);
    } else {
    }
  }
  return (0);
}
}
static void tg3_poll_controller(struct net_device *dev )
{
  int i ;
  struct tg3 *tp ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = tg3_irq_sync(tp);
  if (tmp___0 != 0) {
    return;
  } else {
  }
  i = 0;
  goto ldv_49631;
  ldv_49630:
  tg3_interrupt((int )tp->napi[i].irq_vec, (void *)(& tp->napi) + (unsigned long )i);
  i = i + 1;
  ldv_49631: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_49630;
  } else {
  }
  return;
}
}
static void tg3_tx_timeout(struct net_device *dev )
{
  struct tg3 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  if ((tp->msg_enable & 128U) != 0U) {
    netdev_err((struct net_device const *)dev, "transmit timed out, resetting\n");
    tg3_dump_state(tp);
  } else {
  }
  tg3_reset_task_schedule(tp);
  return;
}
}
__inline static int tg3_4g_overflow_test(dma_addr_t mapping , int len )
{
  u32 base ;
  {
  base = (unsigned int )mapping;
  return (base > 4294958272U && (base + (u32 )len) + 8U < base);
}
}
__inline static int tg3_40bit_overflow_test(struct tg3 *tp , dma_addr_t mapping ,
                                            int len )
{
  {
  return (0);
}
}
__inline static void tg3_tx_set_bd(struct tg3_tx_buffer_desc *txbd , dma_addr_t mapping ,
                                   u32 len , u32 flags , u32 mss , u32 vlan )
{
  {
  txbd->addr_hi = (u32 )(mapping >> 32);
  txbd->addr_lo = (u32 )mapping;
  txbd->len_flags = (len << 16) | (flags & 65535U);
  txbd->vlan_tag = (mss << 16) | vlan;
  return;
}
}
static bool tg3_tx_frag_set(struct tg3_napi *tnapi , u32 *entry , u32 *budget , dma_addr_t map ,
                            u32 len , u32 flags , u32 mss , u32 vlan )
{
  struct tg3 *tp ;
  bool hwbug ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 prvidx ;
  u32 tmp_flag ;
  u32 frag_len ;
  {
  tp = tnapi->tp;
  hwbug = 0;
  tmp = _tg3_flag(61, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0 && len <= 8U) {
    hwbug = 1;
  } else {
  }
  tmp___0 = tg3_4g_overflow_test(map, (int )len);
  if (tmp___0 != 0) {
    hwbug = 1;
  } else {
  }
  tmp___1 = tg3_40bit_overflow_test(tp, map, (int )len);
  if (tmp___1 != 0) {
    hwbug = 1;
  } else {
  }
  if (tp->dma_limit != 0U) {
    prvidx = *entry;
    tmp_flag = flags & 4294967291U;
    goto ldv_49671;
    ldv_49670:
    frag_len = tp->dma_limit;
    len = len - tp->dma_limit;
    if (len <= 8U) {
      len = tp->dma_limit / 2U + len;
      frag_len = tp->dma_limit / 2U;
    } else {
    }
    (tnapi->tx_buffers + (unsigned long )*entry)->fragmented = 1;
    tg3_tx_set_bd(tnapi->tx_ring + (unsigned long )*entry, map, frag_len, tmp_flag,
                  mss, vlan);
    *budget = *budget - 1U;
    prvidx = *entry;
    *entry = (*entry + 1U) & 511U;
    map = (dma_addr_t )frag_len + map;
    ldv_49671: ;
    if (tp->dma_limit < len && *budget != 0U) {
      goto ldv_49670;
    } else {
    }
    if (len != 0U) {
      if (*budget != 0U) {
        tg3_tx_set_bd(tnapi->tx_ring + (unsigned long )*entry, map, len, flags, mss,
                      vlan);
        *budget = *budget - 1U;
        *entry = (*entry + 1U) & 511U;
      } else {
        hwbug = 1;
        (tnapi->tx_buffers + (unsigned long )prvidx)->fragmented = 0;
      }
    } else {
    }
  } else {
    tg3_tx_set_bd(tnapi->tx_ring + (unsigned long )*entry, map, len, flags, mss, vlan);
    *entry = (*entry + 1U) & 511U;
  }
  return (hwbug);
}
}
static void tg3_tx_skb_unmap(struct tg3_napi *tnapi , u32 entry , int last )
{
  int i ;
  struct sk_buff *skb ;
  struct tg3_tx_ring_info *txb ;
  unsigned int tmp ;
  skb_frag_t const *frag ;
  unsigned char *tmp___0 ;
  unsigned int tmp___1 ;
  {
  txb = tnapi->tx_buffers + (unsigned long )entry;
  skb = txb->skb;
  txb->skb = 0;
  tmp = skb_headlen((struct sk_buff const *)skb);
  pci_unmap_single((tnapi->tp)->pdev, txb->mapping, (size_t )tmp, 1);
  goto ldv_49682;
  ldv_49681:
  txb->fragmented = 0;
  entry = (entry + 1U) & 511U;
  txb = tnapi->tx_buffers + (unsigned long )entry;
  ldv_49682: ;
  if ((int )txb->fragmented) {
    goto ldv_49681;
  } else {
  }
  i = 0;
  goto ldv_49689;
  ldv_49688:
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t const *)(& ((struct skb_shared_info *)tmp___0)->frags) + (unsigned long )i;
  entry = (entry + 1U) & 511U;
  txb = tnapi->tx_buffers + (unsigned long )entry;
  tmp___1 = skb_frag_size(frag);
  pci_unmap_page((tnapi->tp)->pdev, txb->mapping, (size_t )tmp___1, 1);
  goto ldv_49686;
  ldv_49685:
  txb->fragmented = 0;
  entry = (entry + 1U) & 511U;
  txb = tnapi->tx_buffers + (unsigned long )entry;
  ldv_49686: ;
  if ((int )txb->fragmented) {
    goto ldv_49685;
  } else {
  }
  i = i + 1;
  ldv_49689: ;
  if (i <= last) {
    goto ldv_49688;
  } else {
  }
  return;
}
}
static int tigon3_dma_hwbug_workaround(struct tg3_napi *tnapi , struct sk_buff **pskb ,
                                       u32 *entry , u32 *budget , u32 base_flags ,
                                       u32 mss , u32 vlan )
{
  struct tg3 *tp ;
  struct sk_buff *new_skb ;
  struct sk_buff *skb ;
  dma_addr_t new_addr ;
  int ret ;
  int more_headroom ;
  int tmp ;
  unsigned int tmp___0 ;
  u32 save_entry ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tp = tnapi->tp;
  skb = *pskb;
  new_addr = 0ULL;
  ret = 0;
  if (tp->pci_chip_rev_id >> 12 != 0U) {
    new_skb = skb_copy((struct sk_buff const *)skb, 32U);
  } else {
    more_headroom = (int )(4U - ((unsigned int )((long )skb->data) & 3U));
    tmp = skb_tailroom((struct sk_buff const *)skb);
    tmp___0 = skb_headroom((struct sk_buff const *)skb);
    new_skb = skb_copy_expand((struct sk_buff const *)skb, (int )(tmp___0 + (unsigned int )more_headroom),
                              tmp, 32U);
  }
  if ((unsigned long )new_skb == (unsigned long )((struct sk_buff *)0)) {
    ret = -1;
  } else {
    new_addr = pci_map_single(tp->pdev, (void *)new_skb->data, (size_t )new_skb->len,
                              1);
    tmp___2 = pci_dma_mapping_error(tp->pdev, new_addr);
    if (tmp___2 != 0) {
      consume_skb(new_skb);
      ret = -1;
    } else {
      save_entry = *entry;
      base_flags = base_flags | 4U;
      (tnapi->tx_buffers + (unsigned long )*entry)->skb = new_skb;
      (tnapi->tx_buffers + (unsigned long )*entry)->mapping = new_addr;
      tmp___1 = tg3_tx_frag_set(tnapi, entry, budget, new_addr, new_skb->len, base_flags,
                                mss, vlan);
      if ((int )tmp___1) {
        tg3_tx_skb_unmap(tnapi, save_entry, -1);
        consume_skb(new_skb);
        ret = -1;
      } else {
      }
    }
  }
  consume_skb(skb);
  *pskb = new_skb;
  return (ret);
}
}
static netdev_tx_t tg3_start_xmit(struct sk_buff *skb , struct net_device *dev ) ;
static int tg3_tso_bug(struct tg3 *tp , struct sk_buff *skb )
{
  struct sk_buff *segs ;
  struct sk_buff *nskb ;
  u32 frag_cnt_est ;
  unsigned char *tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  frag_cnt_est = (u32 )((int )((struct skb_shared_info *)tmp)->gso_segs * 3);
  tmp___1 = tg3_tx_avail((struct tg3_napi *)(& tp->napi));
  tmp___2 = ldv__builtin_expect(tmp___1 <= frag_cnt_est, 0L);
  if (tmp___2 != 0L) {
    netif_stop_queue(tp->dev);
    __asm__ volatile ("mfence": : : "memory");
    tmp___0 = tg3_tx_avail((struct tg3_napi *)(& tp->napi));
    if (tmp___0 <= frag_cnt_est) {
      return (16);
    } else {
    }
    netif_wake_queue(tp->dev);
  } else {
  }
  segs = skb_gso_segment(skb, (tp->dev)->features & 0xfffffffffffeffffULL);
  tmp___3 = IS_ERR((void const *)segs);
  if (tmp___3 != 0L) {
    goto tg3_tso_bug_end;
  } else {
  }
  ldv_49718:
  nskb = segs;
  segs = segs->next;
  nskb->next = 0;
  tg3_start_xmit(nskb, tp->dev);
  if ((unsigned long )segs != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_49718;
  } else {
  }
  tg3_tso_bug_end:
  consume_skb(skb);
  return (0);
}
}
static netdev_tx_t tg3_start_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct tg3 *tp ;
  void *tmp ;
  u32 len ;
  u32 entry ;
  u32 base_flags ;
  u32 mss ;
  u32 vlan ;
  u32 budget ;
  int i ;
  int would_hit_hwbug ;
  dma_addr_t mapping ;
  struct tg3_napi *tnapi ;
  struct netdev_queue *txq ;
  unsigned int last ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  unsigned char *tmp___5 ;
  long tmp___6 ;
  unsigned char *tmp___7 ;
  struct iphdr *iph ;
  u32 tcp_opt_len ;
  u32 hdr_len ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  unsigned int tmp___11 ;
  __u16 tmp___12 ;
  bool tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  long tmp___16 ;
  int tmp___17 ;
  struct tcphdr *tmp___18 ;
  struct tcphdr *tmp___19 ;
  __sum16 tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tsflags ;
  int tsflags___0 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  unsigned char *tmp___28 ;
  unsigned char *tmp___29 ;
  unsigned char *tmp___30 ;
  long tmp___31 ;
  int tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  u32 tmp_mss ;
  int tmp___35 ;
  int tmp___36 ;
  int tmp___37 ;
  unsigned char *tmp___38 ;
  skb_frag_t *frag ;
  unsigned char *tmp___39 ;
  int tmp___40 ;
  bool tmp___41 ;
  unsigned char *tmp___42 ;
  unsigned char *tmp___43 ;
  bool tmp___44 ;
  int tmp___45 ;
  u32 tmp___46 ;
  u32 tmp___47 ;
  long tmp___48 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  vlan = 0U;
  i = -1;
  tmp___0 = skb_get_queue_mapping((struct sk_buff const *)skb);
  txq = netdev_get_tx_queue((struct net_device const *)dev, (unsigned int )tmp___0);
  tmp___1 = skb_get_queue_mapping((struct sk_buff const *)skb);
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )tmp___1;
  tmp___2 = _tg3_flag(60, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    tnapi = tnapi + 1;
  } else {
  }
  budget = tg3_tx_avail(tnapi);
  tmp___5 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___6 = ldv__builtin_expect((u32 )((int )((struct skb_shared_info *)tmp___5)->nr_frags + 1) >= budget,
                             0L);
  if (tmp___6 != 0L) {
    tmp___3 = netif_tx_queue_stopped((struct netdev_queue const *)txq);
    if (tmp___3) {
      tmp___4 = 0;
    } else {
      tmp___4 = 1;
    }
    if (tmp___4) {
      netif_tx_stop_queue(txq);
      netdev_err((struct net_device const *)dev, "BUG! Tx Ring full when queue awake!\n");
    } else {
    }
    return (16);
  } else {
  }
  entry = tnapi->tx_prod;
  base_flags = 0U;
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
    base_flags = base_flags | 1U;
  } else {
  }
  tmp___7 = skb_end_pointer((struct sk_buff const *)skb);
  mss = (u32 )((struct skb_shared_info *)tmp___7)->gso_size;
  if (mss != 0U) {
    tmp___8 = skb_header_cloned((struct sk_buff const *)skb);
    if (tmp___8 != 0) {
      tmp___9 = pskb_expand_head(skb, 0, 0, 32U);
      if (tmp___9 != 0) {
        goto drop;
      } else {
      }
    } else {
    }
    iph = ip_hdr((struct sk_buff const *)skb);
    tcp_opt_len = tcp_optlen((struct sk_buff const *)skb);
    tmp___10 = skb_transport_offset((struct sk_buff const *)skb);
    tmp___11 = tcp_hdrlen((struct sk_buff const *)skb);
    hdr_len = ((unsigned int )tmp___10 + tmp___11) - 14U;
    tmp___13 = skb_is_gso_v6((struct sk_buff const *)skb);
    if (tmp___13) {
      tmp___14 = 0;
    } else {
      tmp___14 = 1;
    }
    if (tmp___14) {
      iph->check = 0U;
      tmp___12 = __fswab16((int )((__u16 )mss) + (int )((__u16 )hdr_len));
      iph->tot_len = tmp___12;
    } else {
    }
    tmp___16 = ldv__builtin_expect(hdr_len + 14U > 80U, 0L);
    if (tmp___16 != 0L) {
      tmp___17 = _tg3_flag(43, (unsigned long *)(& tp->tg3_flags));
      if (tmp___17 != 0) {
        tmp___15 = tg3_tso_bug(tp, skb);
        return ((netdev_tx_t )tmp___15);
      } else {
      }
    } else {
    }
    base_flags = base_flags | 768U;
    tmp___21 = _tg3_flag(39, (unsigned long *)(& tp->tg3_flags));
    if (tmp___21 != 0) {
      tmp___18 = tcp_hdr((struct sk_buff const *)skb);
      tmp___18->check = 0U;
      base_flags = base_flags & 4294967294U;
    } else {
      tmp___22 = _tg3_flag(40, (unsigned long *)(& tp->tg3_flags));
      if (tmp___22 != 0) {
        tmp___18 = tcp_hdr((struct sk_buff const *)skb);
        tmp___18->check = 0U;
        base_flags = base_flags & 4294967294U;
      } else {
        tmp___23 = _tg3_flag(41, (unsigned long *)(& tp->tg3_flags));
        if (tmp___23 != 0) {
          tmp___18 = tcp_hdr((struct sk_buff const *)skb);
          tmp___18->check = 0U;
          base_flags = base_flags & 4294967294U;
        } else {
          tmp___19 = tcp_hdr((struct sk_buff const *)skb);
          tmp___20 = csum_tcpudp_magic(iph->saddr, iph->daddr, 0, 6, 0U);
          tmp___19->check = ~ ((int )tmp___20);
        }
      }
    }
    tmp___26 = _tg3_flag(41, (unsigned long *)(& tp->tg3_flags));
    if (tmp___26 != 0) {
      mss = ((hdr_len & 12U) << 12) | mss;
      if ((hdr_len & 16U) != 0U) {
        base_flags = base_flags | 16U;
      } else {
      }
      base_flags = ((hdr_len & 992U) << 5) | base_flags;
    } else {
      tmp___25 = _tg3_flag(40, (unsigned long *)(& tp->tg3_flags));
      if (tmp___25 != 0) {
        mss = (hdr_len << 9) | mss;
      } else {
        tmp___24 = _tg3_flag(39, (unsigned long *)(& tp->tg3_flags));
        if (tmp___24 != 0 || tp->pci_chip_rev_id >> 12 == 3U) {
          if (tcp_opt_len != 0U || (int )iph->ihl > 5) {
            tsflags = (int )(((u32 )iph->ihl + (tcp_opt_len >> 2)) + 4294967291U);
            mss = (u32 )(tsflags << 11) | mss;
          } else {
          }
        } else
        if (tcp_opt_len != 0U || (int )iph->ihl > 5) {
          tsflags___0 = (int )(((u32 )iph->ihl + (tcp_opt_len >> 2)) + 4294967291U);
          base_flags = (u32 )(tsflags___0 << 12) | base_flags;
        } else {
        }
      }
    }
  } else {
  }
  tmp___27 = _tg3_flag(62, (unsigned long *)(& tp->tg3_flags));
  if ((tmp___27 != 0 && mss == 0U) && skb->len > 1518U) {
    base_flags = base_flags | 8U;
  } else {
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    base_flags = base_flags | 64U;
    vlan = (u32 )skb->vlan_tci & 4294963199U;
  } else {
  }
  tmp___30 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___31 = ldv__builtin_expect((long )((struct skb_shared_info *)tmp___30)->tx_flags & 1L,
                              0L);
  if (tmp___31 != 0L) {
    tmp___32 = _tg3_flag(65, (unsigned long *)(& tp->tg3_flags));
    if (tmp___32 != 0) {
      tmp___28 = skb_end_pointer((struct sk_buff const *)skb);
      tmp___29 = skb_end_pointer((struct sk_buff const *)skb);
      ((struct skb_shared_info *)tmp___28)->tx_flags = (__u8 )((unsigned int )((struct skb_shared_info *)tmp___29)->tx_flags | 4U);
      base_flags = base_flags | 32U;
    } else {
    }
  } else {
  }
  len = skb_headlen((struct sk_buff const *)skb);
  mapping = pci_map_single(tp->pdev, (void *)skb->data, (size_t )len, 1);
  tmp___33 = pci_dma_mapping_error(tp->pdev, mapping);
  if (tmp___33 != 0) {
    goto drop;
  } else {
  }
  (tnapi->tx_buffers + (unsigned long )entry)->skb = skb;
  (tnapi->tx_buffers + (unsigned long )entry)->mapping = mapping;
  would_hit_hwbug = 0;
  tmp___34 = _tg3_flag(50, (unsigned long *)(& tp->tg3_flags));
  if (tmp___34 != 0) {
    would_hit_hwbug = 1;
  } else {
  }
  tmp___43 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___44 = tg3_tx_frag_set(tnapi, & entry, & budget, mapping, len, ((unsigned int )((struct skb_shared_info *)tmp___43)->nr_frags == 0U ? 4U : 0U) | base_flags,
                             mss, vlan);
  if ((int )tmp___44) {
    would_hit_hwbug = 1;
  } else {
    tmp___42 = skb_end_pointer((struct sk_buff const *)skb);
    if ((unsigned int )((struct skb_shared_info *)tmp___42)->nr_frags != 0U) {
      tmp_mss = mss;
      tmp___35 = _tg3_flag(39, (unsigned long *)(& tp->tg3_flags));
      if (tmp___35 == 0) {
        tmp___36 = _tg3_flag(40, (unsigned long *)(& tp->tg3_flags));
        if (tmp___36 == 0) {
          tmp___37 = _tg3_flag(41, (unsigned long *)(& tp->tg3_flags));
          if (tmp___37 == 0) {
            tmp_mss = 0U;
          } else {
          }
        } else {
        }
      } else {
      }
      tmp___38 = skb_end_pointer((struct sk_buff const *)skb);
      last = (unsigned int )((int )((struct skb_shared_info *)tmp___38)->nr_frags + -1);
      i = 0;
      goto ldv_49748;
      ldv_49747:
      tmp___39 = skb_end_pointer((struct sk_buff const *)skb);
      frag = (skb_frag_t *)(& ((struct skb_shared_info *)tmp___39)->frags) + (unsigned long )i;
      len = skb_frag_size((skb_frag_t const *)frag);
      mapping = skb_frag_dma_map(& (tp->pdev)->dev, (skb_frag_t const *)frag, 0UL,
                                 (size_t )len, 1);
      (tnapi->tx_buffers + (unsigned long )entry)->skb = 0;
      (tnapi->tx_buffers + (unsigned long )entry)->mapping = mapping;
      tmp___40 = dma_mapping_error(& (tp->pdev)->dev, mapping);
      if (tmp___40 != 0) {
        goto dma_error;
      } else {
      }
      if (budget == 0U) {
        would_hit_hwbug = 1;
        goto ldv_49746;
      } else {
        tmp___41 = tg3_tx_frag_set(tnapi, & entry, & budget, mapping, len, ((unsigned int )i == last ? 4U : 0U) | base_flags,
                                   tmp_mss, vlan);
        if ((int )tmp___41) {
          would_hit_hwbug = 1;
          goto ldv_49746;
        } else {
        }
      }
      i = i + 1;
      ldv_49748: ;
      if ((unsigned int )i <= last) {
        goto ldv_49747;
      } else {
      }
      ldv_49746: ;
    } else {
    }
  }
  if (would_hit_hwbug != 0) {
    tg3_tx_skb_unmap(tnapi, tnapi->tx_prod, i);
    entry = tnapi->tx_prod;
    budget = tg3_tx_avail(tnapi);
    tmp___45 = tigon3_dma_hwbug_workaround(tnapi, & skb, & entry, & budget, base_flags,
                                           mss, vlan);
    if (tmp___45 != 0) {
      goto drop_nofree;
    } else {
    }
  } else {
  }
  skb_tx_timestamp(skb);
  netdev_tx_sent_queue(txq, skb->len);
  __asm__ volatile ("sfence": : : "memory");
  (*(tp->write32_tx_mbox))(tp, tnapi->prodmbox, entry);
  tnapi->tx_prod = entry;
  tmp___47 = tg3_tx_avail(tnapi);
  tmp___48 = ldv__builtin_expect(tmp___47 <= 18U, 0L);
  if (tmp___48 != 0L) {
    netif_tx_stop_queue(txq);
    __asm__ volatile ("mfence": : : "memory");
    tmp___46 = tg3_tx_avail(tnapi);
    if (tmp___46 > tnapi->tx_pending / 4U) {
      netif_tx_wake_queue(txq);
    } else {
    }
  } else {
  }
  __asm__ volatile ("": : : "memory");
  return (0);
  dma_error:
  i = i - 1;
  tg3_tx_skb_unmap(tnapi, tnapi->tx_prod, i);
  (tnapi->tx_buffers + (unsigned long )tnapi->tx_prod)->skb = 0;
  drop:
  consume_skb(skb);
  drop_nofree:
  tp->tx_dropped = tp->tx_dropped + 1UL;
  return (0);
}
}
static void tg3_mac_loopback(struct tg3 *tp , bool enable )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((int )enable) {
    tp->mac_mode = tp->mac_mode & 4294967281U;
    tp->mac_mode = tp->mac_mode | 16U;
    tmp = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
    if (tmp == 0) {
      tp->mac_mode = tp->mac_mode | 1024U;
    } else {
    }
    if ((tp->phy_flags & 128U) != 0U) {
      tp->mac_mode = tp->mac_mode | 4U;
    } else {
      tp->mac_mode = tp->mac_mode | 8U;
    }
  } else {
    tp->mac_mode = tp->mac_mode & 4294967279U;
    tmp___0 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
    if ((tmp___0 != 0 || (tp->phy_flags & 16U) != 0U) || tp->pci_chip_rev_id >> 12 == 7U) {
      tp->mac_mode = tp->mac_mode & 4294966271U;
    } else {
    }
  }
  (*(tp->write32))(tp, 1024U, tp->mac_mode);
  __const_udelay(171800UL);
  return;
}
}
static int tg3_phy_lpbk_set(struct tg3 *tp , u32 speed , bool extlpbk )
{
  u32 val ;
  u32 bmcr ;
  u32 mac_mode ;
  u32 ptest ;
  int tmp ;
  int tmp___0 ;
  u32 masked_phy_id ;
  {
  ptest = 0U;
  tg3_phy_toggle_apd(tp, 0);
  tg3_phy_toggle_automdix(tp, 0);
  if ((int )extlpbk) {
    tmp = tg3_phy_set_extloopbk(tp);
    if (tmp != 0) {
      return (-5);
    } else {
    }
  } else {
  }
  bmcr = 256U;
  switch (speed) {
  case 10U: ;
  goto ldv_49764;
  case 100U:
  bmcr = bmcr | 8192U;
  goto ldv_49764;
  case 1000U: ;
  default: ;
  if ((tp->phy_flags & 64U) != 0U) {
    speed = 100U;
    bmcr = bmcr | 8192U;
  } else {
    speed = 1000U;
    bmcr = bmcr | 64U;
  }
  }
  ldv_49764: ;
  if ((int )extlpbk) {
    if ((tp->phy_flags & 64U) == 0U) {
      tg3_readphy(tp, 9, & val);
      val = val | 6144U;
      tg3_writephy(tp, 9, val);
    } else {
      ptest = 18U;
      tg3_writephy(tp, 23, ptest);
    }
  } else {
    bmcr = bmcr | 16384U;
  }
  tg3_writephy(tp, 0, bmcr);
  if ((tp->phy_flags & 64U) != 0U) {
    tg3_readphy(tp, 0, & bmcr);
  } else {
  }
  __const_udelay(171800UL);
  if ((tp->phy_flags & 64U) != 0U && tp->pci_chip_rev_id >> 12 == 22405U) {
    tg3_writephy(tp, 23, ptest | 6144U);
    tg3_readphy(tp, 23, & val);
  } else {
  }
  if ((tp->phy_flags & 32U) != 0U) {
    tmp___0 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      _tw32_flush(tp, 1128U, 1U, 0U);
      __const_udelay(42950UL);
      _tw32_flush(tp, 1128U, tp->rx_mode, 0U);
    } else {
    }
  } else {
  }
  mac_mode = tp->mac_mode & 4294967281U;
  if (speed == 1000U) {
    mac_mode = mac_mode | 8U;
  } else {
    mac_mode = mac_mode | 4U;
  }
  if (tp->pci_chip_rev_id >> 12 == 7U) {
    masked_phy_id = tp->phy_id & 4294967280U;
    if (masked_phy_id == 1610645584U) {
      mac_mode = mac_mode & 4294966271U;
    } else
    if (masked_phy_id == 1610645616U) {
      mac_mode = mac_mode | 1024U;
    } else {
    }
    tg3_writephy(tp, 16, 2U);
  } else {
  }
  (*(tp->write32))(tp, 1024U, mac_mode);
  __const_udelay(171800UL);
  return (0);
}
}
static void tg3_set_loopback(struct net_device *dev , netdev_features_t features )
{
  struct tg3 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  if ((features & 2147483648ULL) != 0ULL) {
    if ((tp->mac_mode & 16U) != 0U) {
      return;
    } else {
    }
    spin_lock_bh(& tp->lock);
    tg3_mac_loopback(tp, 1);
    netif_carrier_on(tp->dev);
    spin_unlock_bh(& tp->lock);
    netdev_info((struct net_device const *)dev, "Internal MAC loopback mode enabled.\n");
  } else {
    if ((tp->mac_mode & 16U) == 0U) {
      return;
    } else {
    }
    spin_lock_bh(& tp->lock);
    tg3_mac_loopback(tp, 0);
    tg3_setup_phy(tp, 1);
    spin_unlock_bh(& tp->lock);
    netdev_info((struct net_device const *)dev, "Internal MAC loopback mode disabled.\n");
  }
  return;
}
}
static netdev_features_t tg3_fix_features(struct net_device *dev , netdev_features_t features )
{
  struct tg3 *tp ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  if (dev->mtu > 1500U) {
    tmp___0 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      features = features & 0xffffffffffe6ffffULL;
    } else {
    }
  } else {
  }
  return (features);
}
}
static int tg3_set_features(struct net_device *dev , netdev_features_t features )
{
  netdev_features_t changed ;
  bool tmp ;
  {
  changed = dev->features ^ features;
  if ((changed & 2147483648ULL) != 0ULL) {
    tmp = netif_running((struct net_device const *)dev);
    if ((int )tmp) {
      tg3_set_loopback(dev, features);
    } else {
    }
  } else {
  }
  return (0);
}
}
static void tg3_rx_prodring_free(struct tg3 *tp , struct tg3_rx_prodring_set *tpr )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned long )(& tp->napi[0].prodring) != (unsigned long )tpr) {
    i = (int )tpr->rx_std_cons_idx;
    goto ldv_49790;
    ldv_49789:
    tg3_rx_data_free(tp, tpr->rx_std_buffers + (unsigned long )i, tp->rx_pkt_map_sz);
    i = (int )((u32 )(i + 1) & tp->rx_std_ring_mask);
    ldv_49790: ;
    if ((u32 )i != tpr->rx_std_prod_idx) {
      goto ldv_49789;
    } else {
    }
    tmp = _tg3_flag(29, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      i = (int )tpr->rx_jmb_cons_idx;
      goto ldv_49793;
      ldv_49792:
      tg3_rx_data_free(tp, tpr->rx_jmb_buffers + (unsigned long )i, 9110U);
      i = (int )((u32 )(i + 1) & tp->rx_jmb_ring_mask);
      ldv_49793: ;
      if ((u32 )i != tpr->rx_jmb_prod_idx) {
        goto ldv_49792;
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  i = 0;
  goto ldv_49796;
  ldv_49795:
  tg3_rx_data_free(tp, tpr->rx_std_buffers + (unsigned long )i, tp->rx_pkt_map_sz);
  i = i + 1;
  ldv_49796: ;
  if ((u32 )i <= tp->rx_std_ring_mask) {
    goto ldv_49795;
  } else {
  }
  tmp___0 = _tg3_flag(29, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    tmp___1 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 == 0) {
      i = 0;
      goto ldv_49799;
      ldv_49798:
      tg3_rx_data_free(tp, tpr->rx_jmb_buffers + (unsigned long )i, 9110U);
      i = i + 1;
      ldv_49799: ;
      if ((u32 )i <= tp->rx_jmb_ring_mask) {
        goto ldv_49798;
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static int tg3_rx_prodring_alloc(struct tg3 *tp , struct tg3_rx_prodring_set *tpr )
{
  u32 i ;
  u32 rx_pkt_dma_sz ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct tg3_rx_buffer_desc *rxd ;
  unsigned int frag_size ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  struct tg3_rx_buffer_desc *rxd___0 ;
  unsigned int frag_size___0 ;
  int tmp___8 ;
  {
  tpr->rx_std_cons_idx = 0U;
  tpr->rx_std_prod_idx = 0U;
  tpr->rx_jmb_cons_idx = 0U;
  tpr->rx_jmb_prod_idx = 0U;
  if ((unsigned long )(& tp->napi[0].prodring) != (unsigned long )tpr) {
    tmp = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
    memset((void *)tpr->rx_std_buffers, 0, tmp != 0 ? 32768UL : 8192UL);
    if ((unsigned long )tpr->rx_jmb_buffers != (unsigned long )((struct ring_info *)0)) {
      tmp___0 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
      memset((void *)tpr->rx_jmb_buffers, 0, tmp___0 != 0 ? 16384UL : 4096UL);
    } else {
    }
    goto done;
  } else {
  }
  tmp___1 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
  memset((void *)tpr->rx_std, 0, tmp___1 != 0 ? 65536UL : 16384UL);
  rx_pkt_dma_sz = 1536U;
  tmp___2 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0 && (tp->dev)->mtu > 1500U) {
    rx_pkt_dma_sz = 9046U;
  } else {
  }
  tp->rx_pkt_map_sz = rx_pkt_dma_sz + 64U;
  i = 0U;
  goto ldv_49810;
  ldv_49809:
  rxd = tpr->rx_std + (unsigned long )i;
  rxd->idx_len = rx_pkt_dma_sz;
  rxd->type_flags = 4U;
  rxd->opaque = i | 65536U;
  i = i + 1U;
  ldv_49810: ;
  if (tp->rx_std_ring_mask >= i) {
    goto ldv_49809;
  } else {
  }
  i = 0U;
  goto ldv_49816;
  ldv_49815:
  tmp___3 = tg3_alloc_rx_data(tp, tpr, 65536U, i, & frag_size);
  if (tmp___3 < 0) {
    netdev_warn((struct net_device const *)tp->dev, "Using a smaller RX standard ring. Only %d out of %d buffers were allocated successfully\n",
                i, tp->rx_pending);
    if (i == 0U) {
      goto initfail;
    } else {
    }
    tp->rx_pending = i;
    goto ldv_49814;
  } else {
  }
  i = i + 1U;
  ldv_49816: ;
  if (tp->rx_pending > i) {
    goto ldv_49815;
  } else {
  }
  ldv_49814:
  tmp___4 = _tg3_flag(29, (unsigned long *)(& tp->tg3_flags));
  if (tmp___4 == 0) {
    goto done;
  } else {
    tmp___5 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___5 != 0) {
      goto done;
    } else {
    }
  }
  tmp___6 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
  memset((void *)tpr->rx_jmb, 0, tmp___6 != 0 ? 65536UL : 16384UL);
  tmp___7 = _tg3_flag(24, (unsigned long *)(& tp->tg3_flags));
  if (tmp___7 == 0) {
    goto done;
  } else {
  }
  i = 0U;
  goto ldv_49819;
  ldv_49818:
  rxd___0 = & (tpr->rx_jmb + (unsigned long )i)->std;
  rxd___0->idx_len = 9046U;
  rxd___0->type_flags = 36U;
  rxd___0->opaque = i | 131072U;
  i = i + 1U;
  ldv_49819: ;
  if (tp->rx_jmb_ring_mask >= i) {
    goto ldv_49818;
  } else {
  }
  i = 0U;
  goto ldv_49824;
  ldv_49823:
  tmp___8 = tg3_alloc_rx_data(tp, tpr, 131072U, i, & frag_size___0);
  if (tmp___8 < 0) {
    netdev_warn((struct net_device const *)tp->dev, "Using a smaller RX jumbo ring. Only %d out of %d buffers were allocated successfully\n",
                i, tp->rx_jumbo_pending);
    if (i == 0U) {
      goto initfail;
    } else {
    }
    tp->rx_jumbo_pending = i;
    goto ldv_49822;
  } else {
  }
  i = i + 1U;
  ldv_49824: ;
  if (tp->rx_jumbo_pending > i) {
    goto ldv_49823;
  } else {
  }
  ldv_49822: ;
  done: ;
  return (0);
  initfail:
  tg3_rx_prodring_free(tp, tpr);
  return (-12);
}
}
static void tg3_rx_prodring_fini(struct tg3 *tp , struct tg3_rx_prodring_set *tpr )
{
  int tmp ;
  int tmp___0 ;
  {
  kfree((void const *)tpr->rx_std_buffers);
  tpr->rx_std_buffers = 0;
  kfree((void const *)tpr->rx_jmb_buffers);
  tpr->rx_jmb_buffers = 0;
  if ((unsigned long )tpr->rx_std != (unsigned long )((struct tg3_rx_buffer_desc *)0)) {
    tmp = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
    dma_free_attrs(& (tp->pdev)->dev, tmp != 0 ? 65536UL : 16384UL, (void *)tpr->rx_std,
                   tpr->rx_std_mapping, 0);
    tpr->rx_std = 0;
  } else {
  }
  if ((unsigned long )tpr->rx_jmb != (unsigned long )((struct tg3_ext_rx_buffer_desc *)0)) {
    tmp___0 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
    dma_free_attrs(& (tp->pdev)->dev, tmp___0 != 0 ? 65536UL : 16384UL, (void *)tpr->rx_jmb,
                   tpr->rx_jmb_mapping, 0);
    tpr->rx_jmb = 0;
  } else {
  }
  return;
}
}
static int tg3_rx_prodring_init(struct tg3 *tp , struct tg3_rx_prodring_set *tpr )
{
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  tmp = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
  tmp___0 = kzalloc(tmp != 0 ? 32768UL : 8192UL, 208U);
  tpr->rx_std_buffers = (struct ring_info *)tmp___0;
  if ((unsigned long )tpr->rx_std_buffers == (unsigned long )((struct ring_info *)0)) {
    return (-12);
  } else {
  }
  tmp___1 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
  tmp___2 = dma_alloc_attrs(& (tp->pdev)->dev, tmp___1 != 0 ? 65536UL : 16384UL, & tpr->rx_std_mapping,
                            208U, 0);
  tpr->rx_std = (struct tg3_rx_buffer_desc *)tmp___2;
  if ((unsigned long )tpr->rx_std == (unsigned long )((struct tg3_rx_buffer_desc *)0)) {
    goto err_out;
  } else {
  }
  tmp___7 = _tg3_flag(29, (unsigned long *)(& tp->tg3_flags));
  if (tmp___7 != 0) {
    tmp___8 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___8 == 0) {
      tmp___3 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
      tmp___4 = kzalloc(tmp___3 != 0 ? 16384UL : 4096UL, 208U);
      tpr->rx_jmb_buffers = (struct ring_info *)tmp___4;
      if ((unsigned long )tpr->rx_jmb_buffers == (unsigned long )((struct ring_info *)0)) {
        goto err_out;
      } else {
      }
      tmp___5 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
      tmp___6 = dma_alloc_attrs(& (tp->pdev)->dev, tmp___5 != 0 ? 65536UL : 16384UL,
                                & tpr->rx_jmb_mapping, 208U, 0);
      tpr->rx_jmb = (struct tg3_ext_rx_buffer_desc *)tmp___6;
      if ((unsigned long )tpr->rx_jmb == (unsigned long )((struct tg3_ext_rx_buffer_desc *)0)) {
        goto err_out;
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
  err_out:
  tg3_rx_prodring_fini(tp, tpr);
  return (-12);
}
}
static void tg3_free_rings(struct tg3 *tp )
{
  int i ;
  int j ;
  struct tg3_napi *tnapi ;
  struct sk_buff *skb ;
  unsigned char *tmp ;
  struct netdev_queue *tmp___0 ;
  {
  j = 0;
  goto ldv_49847;
  ldv_49846:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )j;
  tg3_rx_prodring_free(tp, & tnapi->prodring);
  if ((unsigned long )tnapi->tx_buffers == (unsigned long )((struct tg3_tx_ring_info *)0)) {
    goto ldv_49840;
  } else {
  }
  i = 0;
  goto ldv_49844;
  ldv_49843:
  skb = (tnapi->tx_buffers + (unsigned long )i)->skb;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto ldv_49842;
  } else {
  }
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  tg3_tx_skb_unmap(tnapi, (u32 )i, (int )((struct skb_shared_info *)tmp)->nr_frags + -1);
  dev_kfree_skb_any(skb);
  ldv_49842:
  i = i + 1;
  ldv_49844: ;
  if (i <= 511) {
    goto ldv_49843;
  } else {
  }
  tmp___0 = netdev_get_tx_queue((struct net_device const *)tp->dev, (unsigned int )j);
  netdev_tx_reset_queue(tmp___0);
  ldv_49840:
  j = j + 1;
  ldv_49847: ;
  if ((unsigned int )j < tp->irq_cnt) {
    goto ldv_49846;
  } else {
  }
  return;
}
}
static int tg3_init_rings(struct tg3 *tp )
{
  int i ;
  struct tg3_napi *tnapi ;
  int tmp ;
  {
  tg3_free_rings(tp);
  i = 0;
  goto ldv_49855;
  ldv_49854:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  tnapi->last_tag = 0U;
  tnapi->last_irq_tag = 0U;
  (tnapi->hw_status)->status = 0U;
  (tnapi->hw_status)->status_tag = 0U;
  memset((void *)tnapi->hw_status, 0, 80UL);
  tnapi->tx_prod = 0U;
  tnapi->tx_cons = 0U;
  if ((unsigned long )tnapi->tx_ring != (unsigned long )((struct tg3_tx_buffer_desc *)0)) {
    memset((void *)tnapi->tx_ring, 0, 8192UL);
  } else {
  }
  tnapi->rx_rcb_ptr = 0U;
  if ((unsigned long )tnapi->rx_rcb != (unsigned long )((struct tg3_rx_buffer_desc *)0)) {
    memset((void *)tnapi->rx_rcb, 0, (unsigned long )(tp->rx_ret_ring_mask + 1U) * 32UL);
  } else {
  }
  tmp = tg3_rx_prodring_alloc(tp, & tnapi->prodring);
  if (tmp != 0) {
    tg3_free_rings(tp);
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_49855: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_49854;
  } else {
  }
  return (0);
}
}
static void tg3_mem_tx_release(struct tg3 *tp )
{
  int i ;
  struct tg3_napi *tnapi ;
  {
  i = 0;
  goto ldv_49863;
  ldv_49862:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  if ((unsigned long )tnapi->tx_ring != (unsigned long )((struct tg3_tx_buffer_desc *)0)) {
    dma_free_attrs(& (tp->pdev)->dev, 8192UL, (void *)tnapi->tx_ring, tnapi->tx_desc_mapping,
                   0);
    tnapi->tx_ring = 0;
  } else {
  }
  kfree((void const *)tnapi->tx_buffers);
  tnapi->tx_buffers = 0;
  i = i + 1;
  ldv_49863: ;
  if ((unsigned int )i < tp->irq_max) {
    goto ldv_49862;
  } else {
  }
  return;
}
}
static int tg3_mem_tx_acquire(struct tg3 *tp )
{
  int i ;
  struct tg3_napi *tnapi ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tnapi = (struct tg3_napi *)(& tp->napi);
  tmp = _tg3_flag(60, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    tnapi = tnapi + 1;
  } else {
  }
  i = 0;
  goto ldv_49872;
  ldv_49871:
  tmp___0 = kzalloc(12288UL, 208U);
  tnapi->tx_buffers = (struct tg3_tx_ring_info *)tmp___0;
  if ((unsigned long )tnapi->tx_buffers == (unsigned long )((struct tg3_tx_ring_info *)0)) {
    goto err_out;
  } else {
  }
  tmp___1 = dma_alloc_attrs(& (tp->pdev)->dev, 8192UL, & tnapi->tx_desc_mapping, 208U,
                            0);
  tnapi->tx_ring = (struct tg3_tx_buffer_desc *)tmp___1;
  if ((unsigned long )tnapi->tx_ring == (unsigned long )((struct tg3_tx_buffer_desc *)0)) {
    goto err_out;
  } else {
  }
  i = i + 1;
  tnapi = tnapi + 1;
  ldv_49872: ;
  if ((u32 )i < tp->txq_cnt) {
    goto ldv_49871;
  } else {
  }
  return (0);
  err_out:
  tg3_mem_tx_release(tp);
  return (-12);
}
}
static void tg3_mem_rx_release(struct tg3 *tp )
{
  int i ;
  struct tg3_napi *tnapi ;
  {
  i = 0;
  goto ldv_49881;
  ldv_49880:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  tg3_rx_prodring_fini(tp, & tnapi->prodring);
  if ((unsigned long )tnapi->rx_rcb == (unsigned long )((struct tg3_rx_buffer_desc *)0)) {
    goto ldv_49879;
  } else {
  }
  dma_free_attrs(& (tp->pdev)->dev, (unsigned long )(tp->rx_ret_ring_mask + 1U) * 32UL,
                 (void *)tnapi->rx_rcb, tnapi->rx_rcb_mapping, 0);
  tnapi->rx_rcb = 0;
  ldv_49879:
  i = i + 1;
  ldv_49881: ;
  if ((unsigned int )i < tp->irq_max) {
    goto ldv_49880;
  } else {
  }
  return;
}
}
static int tg3_mem_rx_acquire(struct tg3 *tp )
{
  unsigned int i ;
  unsigned int limit ;
  int tmp ;
  struct tg3_napi *tnapi ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  {
  limit = tp->rxq_cnt;
  tmp = _tg3_flag(59, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    limit = limit + 1U;
  } else {
  }
  i = 0U;
  goto ldv_49892;
  ldv_49891:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  tmp___0 = tg3_rx_prodring_init(tp, & tnapi->prodring);
  if (tmp___0 != 0) {
    goto err_out;
  } else {
  }
  if (i == 0U) {
    tmp___1 = _tg3_flag(59, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 != 0) {
      goto ldv_49890;
    } else {
    }
  } else {
  }
  tmp___2 = dma_alloc_attrs(& (tp->pdev)->dev, (unsigned long )(tp->rx_ret_ring_mask + 1U) * 32UL,
                            & tnapi->rx_rcb_mapping, 32976U, 0);
  tnapi->rx_rcb = (struct tg3_rx_buffer_desc *)tmp___2;
  if ((unsigned long )tnapi->rx_rcb == (unsigned long )((struct tg3_rx_buffer_desc *)0)) {
    goto err_out;
  } else {
  }
  ldv_49890:
  i = i + 1U;
  ldv_49892: ;
  if (i < limit) {
    goto ldv_49891;
  } else {
  }
  return (0);
  err_out:
  tg3_mem_rx_release(tp);
  return (-12);
}
}
static void tg3_free_consistent(struct tg3 *tp )
{
  int i ;
  struct tg3_napi *tnapi ;
  {
  i = 0;
  goto ldv_49900;
  ldv_49899:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  if ((unsigned long )tnapi->hw_status != (unsigned long )((struct tg3_hw_status *)0)) {
    dma_free_attrs(& (tp->pdev)->dev, 80UL, (void *)tnapi->hw_status, tnapi->status_mapping,
                   0);
    tnapi->hw_status = 0;
  } else {
  }
  i = i + 1;
  ldv_49900: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_49899;
  } else {
  }
  tg3_mem_rx_release(tp);
  tg3_mem_tx_release(tp);
  if ((unsigned long )tp->hw_stats != (unsigned long )((struct tg3_hw_stats *)0)) {
    dma_free_attrs(& (tp->pdev)->dev, 2048UL, (void *)tp->hw_stats, tp->stats_mapping,
                   0);
    tp->hw_stats = 0;
  } else {
  }
  return;
}
}
static int tg3_alloc_consistent(struct tg3 *tp )
{
  int i ;
  void *tmp ;
  struct tg3_napi *tnapi ;
  struct tg3_hw_status *sblk ;
  void *tmp___0 ;
  u16 *prodptr ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = dma_alloc_attrs(& (tp->pdev)->dev, 2048UL, & tp->stats_mapping, 32976U, 0);
  tp->hw_stats = (struct tg3_hw_stats *)tmp;
  if ((unsigned long )tp->hw_stats == (unsigned long )((struct tg3_hw_stats *)0)) {
    goto err_out;
  } else {
  }
  i = 0;
  goto ldv_49916;
  ldv_49915:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  tmp___0 = dma_alloc_attrs(& (tp->pdev)->dev, 80UL, & tnapi->status_mapping, 32976U,
                            0);
  tnapi->hw_status = (struct tg3_hw_status *)tmp___0;
  if ((unsigned long )tnapi->hw_status == (unsigned long )((struct tg3_hw_status *)0)) {
    goto err_out;
  } else {
  }
  sblk = tnapi->hw_status;
  tmp___1 = _tg3_flag(59, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    prodptr = 0;
    switch (i) {
    case 1:
    prodptr = & sblk->idx[0].rx_producer;
    goto ldv_49911;
    case 2:
    prodptr = & sblk->rx_jumbo_consumer;
    goto ldv_49911;
    case 3:
    prodptr = & sblk->reserved;
    goto ldv_49911;
    case 4:
    prodptr = & sblk->rx_mini_consumer;
    goto ldv_49911;
    }
    ldv_49911:
    tnapi->rx_rcb_prod_idx = prodptr;
  } else {
    tnapi->rx_rcb_prod_idx = & sblk->idx[0].rx_producer;
  }
  i = i + 1;
  ldv_49916: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_49915;
  } else {
  }
  tmp___2 = tg3_mem_tx_acquire(tp);
  if (tmp___2 != 0) {
    goto err_out;
  } else {
    tmp___3 = tg3_mem_rx_acquire(tp);
    if (tmp___3 != 0) {
      goto err_out;
    } else {
    }
  }
  return (0);
  err_out:
  tg3_free_consistent(tp);
  return (-12);
}
}
static int tg3_stop_block(struct tg3 *tp , unsigned long ofs , u32 enable_bit , bool silent )
{
  unsigned int i ;
  u32 val ;
  int tmp ;
  {
  tmp = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    switch (ofs) {
    case 13312UL: ;
    case 25600UL: ;
    case 14336UL: ;
    case 17408UL: ;
    case 16384UL: ;
    return (0);
    default: ;
    goto ldv_49932;
    }
    ldv_49932: ;
  } else {
  }
  val = (*(tp->read32))(tp, (u32 )ofs);
  val = ~ enable_bit & val;
  _tw32_flush(tp, (u32 )ofs, val, 0U);
  i = 0U;
  goto ldv_49935;
  ldv_49934:
  __const_udelay(429500UL);
  val = (*(tp->read32))(tp, (u32 )ofs);
  if ((val & enable_bit) == 0U) {
    goto ldv_49933;
  } else {
  }
  i = i + 1U;
  ldv_49935: ;
  if (i <= 999U) {
    goto ldv_49934;
  } else {
  }
  ldv_49933: ;
  if (i == 1000U && ! silent) {
    dev_err((struct device const *)(& (tp->pdev)->dev), "tg3_stop_block timed out, ofs=%lx enable_bit=%x\n",
            ofs, enable_bit);
    return (-19);
  } else {
  }
  return (0);
}
}
static int tg3_abort_hw(struct tg3 *tp , bool silent )
{
  int i ;
  int err ;
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
  u32 tmp___11 ;
  u32 tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  struct tg3_napi *tnapi ;
  {
  tg3_disable_ints(tp);
  tp->rx_mode = tp->rx_mode & 4294967293U;
  _tw32_flush(tp, 1128U, tp->rx_mode, 0U);
  __const_udelay(42950UL);
  err = tg3_stop_block(tp, 11264UL, 2U, (int )silent);
  tmp = tg3_stop_block(tp, 8192UL, 2U, (int )silent);
  err = tmp | err;
  tmp___0 = tg3_stop_block(tp, 13312UL, 2U, (int )silent);
  err = tmp___0 | err;
  tmp___1 = tg3_stop_block(tp, 9216UL, 2U, (int )silent);
  err = tmp___1 | err;
  tmp___2 = tg3_stop_block(tp, 10240UL, 2U, (int )silent);
  err = tmp___2 | err;
  tmp___3 = tg3_stop_block(tp, 12288UL, 2U, (int )silent);
  err = tmp___3 | err;
  tmp___4 = tg3_stop_block(tp, 5120UL, 2U, (int )silent);
  err = tmp___4 | err;
  tmp___5 = tg3_stop_block(tp, 6144UL, 2U, (int )silent);
  err = tmp___5 | err;
  tmp___6 = tg3_stop_block(tp, 3072UL, 2U, (int )silent);
  err = tmp___6 | err;
  tmp___7 = tg3_stop_block(tp, 18432UL, 2U, (int )silent);
  err = tmp___7 | err;
  tmp___8 = tg3_stop_block(tp, 4096UL, 2U, (int )silent);
  err = tmp___8 | err;
  tmp___9 = tg3_stop_block(tp, 25600UL, 2U, (int )silent);
  err = tmp___9 | err;
  tmp___10 = tg3_stop_block(tp, 7168UL, 2U, (int )silent);
  err = tmp___10 | err;
  tp->mac_mode = tp->mac_mode & 4292870143U;
  _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
  __const_udelay(171800UL);
  tp->tx_mode = tp->tx_mode & 4294967293U;
  _tw32_flush(tp, 1116U, tp->tx_mode, 0U);
  i = 0;
  goto ldv_49944;
  ldv_49943:
  __const_udelay(429500UL);
  tmp___11 = (*(tp->read32))(tp, 1116U);
  if ((tmp___11 & 2U) == 0U) {
    goto ldv_49942;
  } else {
  }
  i = i + 1;
  ldv_49944: ;
  if (i <= 999) {
    goto ldv_49943;
  } else {
  }
  ldv_49942: ;
  if (i > 999) {
    tmp___12 = (*(tp->read32))(tp, 1116U);
    dev_err((struct device const *)(& (tp->pdev)->dev), "%s timed out, TX_MODE_ENABLE will not clear MAC_TX_MODE=%08x\n",
            "tg3_abort_hw", tmp___12);
    err = err | -19;
  } else {
  }
  tmp___13 = tg3_stop_block(tp, 15360UL, 2U, (int )silent);
  err = tmp___13 | err;
  tmp___14 = tg3_stop_block(tp, 19456UL, 2U, (int )silent);
  err = tmp___14 | err;
  tmp___15 = tg3_stop_block(tp, 14336UL, 2U, (int )silent);
  err = tmp___15 | err;
  (*(tp->write32))(tp, 23552U, 4294967295U);
  (*(tp->write32))(tp, 23552U, 0U);
  tmp___16 = tg3_stop_block(tp, 17408UL, 2U, (int )silent);
  err = tmp___16 | err;
  tmp___17 = tg3_stop_block(tp, 16384UL, 2U, (int )silent);
  err = tmp___17 | err;
  i = 0;
  goto ldv_49948;
  ldv_49947:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  if ((unsigned long )tnapi->hw_status != (unsigned long )((struct tg3_hw_status *)0)) {
    memset((void *)tnapi->hw_status, 0, 80UL);
  } else {
  }
  i = i + 1;
  ldv_49948: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_49947;
  } else {
  }
  return (err);
}
}
static void tg3_save_pci_state(struct tg3 *tp )
{
  {
  pci_read_config_word((struct pci_dev const *)tp->pdev, 4, & tp->pci_cmd);
  return;
}
}
static void tg3_restore_pci_state(struct tg3 *tp )
{
  u32 val ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u16 pcix_cmd ;
  int tmp___2 ;
  u16 ctrl ;
  int tmp___3 ;
  int tmp___4 ;
  {
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 104, tp->misc_host_ctrl);
  val = 96U;
  if (tp->pci_chip_rev_id == 8192U) {
    tmp = _tg3_flag(18, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      val = val | 8192U;
    } else {
    }
  } else {
  }
  tmp___0 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    val = val | 458752U;
  } else {
  }
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 112, val);
  pci_write_config_word((struct pci_dev const *)tp->pdev, 4, (int )tp->pci_cmd);
  tmp___1 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 == 0) {
    pci_write_config_byte((struct pci_dev const *)tp->pdev, 12, (int )tp->pci_cacheline_sz);
    pci_write_config_byte((struct pci_dev const *)tp->pdev, 13, (int )tp->pci_lat_timer);
  } else {
  }
  tmp___2 = _tg3_flag(18, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    pci_read_config_word((struct pci_dev const *)tp->pdev, tp->pcix_cap + 2, & pcix_cmd);
    pcix_cmd = (unsigned int )pcix_cmd & 65533U;
    pci_write_config_word((struct pci_dev const *)tp->pdev, tp->pcix_cap + 2, (int )pcix_cmd);
  } else {
  }
  tmp___4 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
  if (tmp___4 != 0) {
    tmp___3 = _tg3_flag(16, (unsigned long *)(& tp->tg3_flags));
    if (tmp___3 != 0) {
      pci_read_config_word((struct pci_dev const *)tp->pdev, tp->msi_cap + 2, & ctrl);
      pci_write_config_word((struct pci_dev const *)tp->pdev, tp->msi_cap + 2, (int )((unsigned int )ctrl | 1U));
      val = (*(tp->read32))(tp, 24576U);
      (*(tp->write32))(tp, 24576U, val | 2U);
    } else {
    }
  } else {
  }
  return;
}
}
static int tg3_chip_reset(struct tg3 *tp )
{
  u32 val ;
  void (*write_op)(struct tg3 * , u32 , u32 ) ;
  int i ;
  int err ;
  int tmp ;
  struct tg3_napi *tnapi ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  u16 val16 ;
  int j ;
  u32 cfg_val ;
  int tmp___8 ;
  int tmp___9 ;
  bool tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  u32 nic_cfg ;
  int tmp___15 ;
  {
  tg3_nvram_lock(tp);
  tg3_ape_lock(tp, 1);
  tp->nvram_lock_cnt = 0;
  tg3_save_pci_state(tp);
  if (tp->pci_chip_rev_id >> 12 == 6U) {
    (*(tp->write32))(tp, 26772U, 0U);
  } else {
    tmp = _tg3_flag(74, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      (*(tp->write32))(tp, 26772U, 0U);
    } else {
    }
  }
  write_op = tp->write32;
  if ((unsigned long )write_op == (unsigned long )(& tg3_write_flush_reg32)) {
    tp->write32 = & tg3_write32;
  } else {
  }
  _tg3_flag_set(30, (unsigned long *)(& tp->tg3_flags));
  i = 0;
  goto ldv_49971;
  ldv_49970:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  if ((unsigned long )tnapi->hw_status != (unsigned long )((struct tg3_hw_status *)0)) {
    (tnapi->hw_status)->status = 0U;
    (tnapi->hw_status)->status_tag = 0U;
  } else {
  }
  tnapi->last_tag = 0U;
  tnapi->last_irq_tag = 0U;
  i = i + 1;
  ldv_49971: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_49970;
  } else {
  }
  __asm__ volatile ("mfence": : : "memory");
  i = 0;
  goto ldv_49974;
  ldv_49973:
  synchronize_irq(tp->napi[i].irq_vec);
  i = i + 1;
  ldv_49974: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_49973;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 358272U) {
    tmp___0 = (*(tp->read32))(tp, 32084U);
    val = tmp___0 & 4294967287U;
    (*(tp->write32))(tp, 32084U, val | 128U);
  } else {
  }
  val = 1U;
  tmp___3 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
  if (tmp___3 != 0) {
    if (tp->pci_chip_rev_id >> 12 != 22405U) {
      tmp___1 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
      if (tmp___1 == 0) {
        tmp___2 = (*(tp->read32))(tp, 32300U);
        if (tmp___2 == 96U) {
          (*(tp->write32))(tp, 32300U, 32U);
        } else {
        }
      } else {
      }
    } else {
    }
    if (tp->pci_chip_rev_id != 16384U) {
      (*(tp->write32))(tp, 26628U, 536870912U);
      val = val | 536870912U;
    } else {
    }
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 12U) {
    tmp___4 = (*(tp->read32))(tp, 20736U);
    (*(tp->write32))(tp, 20736U, tmp___4 | 134217728U);
    tmp___5 = (*(tp->read32))(tp, 26768U);
    (*(tp->write32))(tp, 26768U, tmp___5 & 4290772991U);
  } else {
  }
  tmp___6 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___6 != 0) {
    tmp___7 = _tg3_flag(26, (unsigned long *)(& tp->tg3_flags));
    if (tmp___7 == 0) {
      val = val | 67108864U;
    } else {
    }
  } else {
  }
  (*(tp->write32))(tp, 26628U, val);
  tp->write32 = write_op;
  __const_udelay(515400UL);
  pci_read_config_dword((struct pci_dev const *)tp->pdev, 4, & val);
  __const_udelay(515400UL);
  tmp___9 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
  if (tmp___9 != 0) {
    tmp___10 = pci_is_pcie(tp->pdev);
    if ((int )tmp___10) {
      if (tp->pci_chip_rev_id == 16384U) {
        j = 0;
        goto ldv_49980;
        ldv_49979:
        __const_udelay(429500UL);
        j = j + 1;
        ldv_49980: ;
        if (j <= 4999) {
          goto ldv_49979;
        } else {
        }
        pci_read_config_dword((struct pci_dev const *)tp->pdev, 196, & cfg_val);
        pci_write_config_dword((struct pci_dev const *)tp->pdev, 196, cfg_val | 32768U);
      } else {
      }
      val16 = 2064U;
      tmp___8 = _tg3_flag(26, (unsigned long *)(& tp->tg3_flags));
      if (tmp___8 == 0) {
        val16 = (u16 )((unsigned int )val16 | 224U);
      } else {
      }
      pcie_capability_clear_word(tp->pdev, 8, (int )val16);
      pcie_capability_write_word(tp->pdev, 10, 15);
    } else {
    }
  } else {
  }
  tg3_restore_pci_state(tp);
  _tg3_flag_clear(30, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_clear(3, (unsigned long *)(& tp->tg3_flags));
  val = 0U;
  tmp___11 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
  if (tmp___11 != 0) {
    val = (*(tp->read32))(tp, 16384U);
  } else {
  }
  (*(tp->write32))(tp, 16384U, val | 2U);
  if (tp->pci_chip_rev_id == 16387U) {
    tg3_stop_fw(tp);
    (*(tp->write32))(tp, 20480U, 1024U);
  } else {
  }
  tmp___12 = _tg3_flag(78, (unsigned long *)(& tp->tg3_flags));
  if (tmp___12 != 0) {
    tg3_stop_fw(tp);
    tg3_halt_cpu(tp, 20480U);
  } else {
  }
  (*(tp->write32))(tp, 26624U, tp->grc_mode);
  if (tp->pci_chip_rev_id == 12288U) {
    val = (*(tp->read32))(tp, 196U);
    (*(tp->write32))(tp, 196U, val | 32768U);
  } else {
  }
  if ((tp->nic_sram_data_cfg & 4096U) != 0U && tp->pci_chip_rev_id >> 12 == 3U) {
    tp->pci_clock_ctrl = tp->pci_clock_ctrl | 4194304U;
    if (tp->pci_chip_rev_id == 12288U) {
      tp->pci_clock_ctrl = tp->pci_clock_ctrl | 2097152U;
    } else {
    }
    (*(tp->write32))(tp, 116U, tp->pci_clock_ctrl);
  } else {
  }
  if ((tp->phy_flags & 16U) != 0U) {
    tp->mac_mode = 12U;
    val = tp->mac_mode;
  } else
  if ((tp->phy_flags & 32U) != 0U) {
    tp->mac_mode = 8U;
    val = tp->mac_mode;
  } else {
    val = 0U;
  }
  _tw32_flush(tp, 1024U, val, 0U);
  __const_udelay(171800UL);
  tg3_ape_unlock(tp, 1);
  err = tg3_poll_fw(tp);
  if (err != 0) {
    return (err);
  } else {
  }
  tg3_mdio_start(tp);
  tmp___13 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
  if ((tmp___13 != 0 && tp->pci_chip_rev_id != 16384U) && tp->pci_chip_rev_id >> 12 != 22405U) {
    tmp___14 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
    if (tmp___14 == 0) {
      val = (*(tp->read32))(tp, 31744U);
      (*(tp->write32))(tp, 31744U, val | 33554432U);
    } else {
    }
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 22304U) {
    val = (*(tp->read32))(tp, 13860U);
    (*(tp->write32))(tp, 13860U, val & 2147483647U);
  } else {
  }
  _tg3_flag_clear(4, (unsigned long *)(& tp->tg3_flags));
  tp->phy_flags = tp->phy_flags & 4293394431U;
  _tg3_flag_clear(34, (unsigned long *)(& tp->tg3_flags));
  tg3_read_mem(tp, 2900U, & val);
  if (val == 1264940628U) {
    tg3_read_mem(tp, 2904U, & nic_cfg);
    if ((nic_cfg & 128U) != 0U) {
      _tg3_flag_set(4, (unsigned long *)(& tp->tg3_flags));
      tp->ldv_47846.last_event_jiffies = jiffies;
      tmp___15 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
      if (tmp___15 != 0) {
        _tg3_flag_set(34, (unsigned long *)(& tp->tg3_flags));
      } else {
      }
      tg3_read_mem(tp, 3388U, & nic_cfg);
      if ((nic_cfg & 8388608U) != 0U) {
        tp->phy_flags = tp->phy_flags | 524288U;
      } else {
      }
      if ((nic_cfg & 4194304U) != 0U) {
        tp->phy_flags = tp->phy_flags | 1048576U;
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static void tg3_get_nstats(struct tg3 *tp , struct rtnl_link_stats64 *stats ) ;
static void tg3_get_estats(struct tg3 *tp , struct tg3_ethtool_stats *estats ) ;
static int tg3_halt(struct tg3 *tp , int kind , bool silent )
{
  int err ;
  {
  tg3_stop_fw(tp);
  tg3_write_sig_pre_reset(tp, kind);
  tg3_abort_hw(tp, (int )silent);
  err = tg3_chip_reset(tp);
  __tg3_set_mac_addr(tp, 0);
  tg3_write_sig_legacy(tp, kind);
  tg3_write_sig_post_reset(tp, kind);
  if ((unsigned long )tp->hw_stats != (unsigned long )((struct tg3_hw_stats *)0)) {
    tg3_get_nstats(tp, & tp->net_stats_prev);
    tg3_get_estats(tp, & tp->estats_prev);
    memset((void *)tp->hw_stats, 0, 2048UL);
  } else {
  }
  if (err != 0) {
    return (err);
  } else {
  }
  return (0);
}
}
static int tg3_set_mac_addr(struct net_device *dev , void *p )
{
  struct tg3 *tp ;
  void *tmp ;
  struct sockaddr *addr ;
  int err ;
  bool skip_mac_1 ;
  bool tmp___0 ;
  int tmp___1 ;
  size_t __len ;
  void *__ret ;
  bool tmp___2 ;
  int tmp___3 ;
  u32 addr0_high ;
  u32 addr0_low ;
  u32 addr1_high ;
  u32 addr1_low ;
  int tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  addr = (struct sockaddr *)p;
  err = 0;
  skip_mac_1 = 0;
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
  __len = (size_t )dev->addr_len;
  __ret = memcpy((void *)dev->dev_addr, (void const *)(& addr->sa_data),
                           __len);
  tmp___2 = netif_running((struct net_device const *)dev);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (0);
  } else {
  }
  tmp___4 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
  if (tmp___4 != 0) {
    addr0_high = (*(tp->read32))(tp, 1040U);
    addr0_low = (*(tp->read32))(tp, 1044U);
    addr1_high = (*(tp->read32))(tp, 1048U);
    addr1_low = (*(tp->read32))(tp, 1052U);
    if ((addr0_high != addr1_high || addr0_low != addr1_low) && (addr1_high != 0U || addr1_low != 0U)) {
      skip_mac_1 = 1;
    } else {
    }
  } else {
  }
  spin_lock_bh(& tp->lock);
  __tg3_set_mac_addr(tp, (int )skip_mac_1);
  spin_unlock_bh(& tp->lock);
  return (err);
}
}
static void tg3_set_bdinfo(struct tg3 *tp , u32 bdinfo_addr , dma_addr_t mapping ,
                           u32 maxlen_flags , u32 nic_addr )
{
  int tmp ;
  {
  tg3_write_mem(tp, bdinfo_addr, (u32 )(mapping >> 32));
  tg3_write_mem(tp, bdinfo_addr + 4U, (u32 )mapping);
  tg3_write_mem(tp, bdinfo_addr + 8U, maxlen_flags);
  tmp = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    tg3_write_mem(tp, bdinfo_addr + 12U, nic_addr);
  } else {
  }
  return;
}
}
static void tg3_coal_tx_init(struct tg3 *tp , struct ethtool_coalesce *ec )
{
  int i ;
  u32 reg ;
  int tmp ;
  {
  i = 0;
  tmp = _tg3_flag(60, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    (*(tp->write32))(tp, 15372U, ec->tx_coalesce_usecs);
    (*(tp->write32))(tp, 15380U, ec->tx_max_coalesced_frames);
    (*(tp->write32))(tp, 15396U, ec->tx_max_coalesced_frames_irq);
  } else {
    (*(tp->write32))(tp, 15372U, 0U);
    (*(tp->write32))(tp, 15380U, 0U);
    (*(tp->write32))(tp, 15396U, 0U);
    goto ldv_50024;
    ldv_50023:
    reg = (u32 )(i * 24 + 15748);
    (*(tp->write32))(tp, reg, ec->tx_coalesce_usecs);
    reg = (u32 )(i * 24 + 15756);
    (*(tp->write32))(tp, reg, ec->tx_max_coalesced_frames);
    reg = (u32 )(i * 24 + 15764);
    (*(tp->write32))(tp, reg, ec->tx_max_coalesced_frames_irq);
    i = i + 1;
    ldv_50024: ;
    if ((u32 )i < tp->txq_cnt) {
      goto ldv_50023;
    } else {
    }
  }
  goto ldv_50027;
  ldv_50026:
  (*(tp->write32))(tp, (u32 )(i * 24 + 15748), 0U);
  (*(tp->write32))(tp, (u32 )(i * 24 + 15756), 0U);
  (*(tp->write32))(tp, (u32 )(i * 24 + 15764), 0U);
  i = i + 1;
  ldv_50027: ;
  if ((unsigned int )i < tp->irq_max - 1U) {
    goto ldv_50026;
  } else {
  }
  return;
}
}
static void tg3_coal_rx_init(struct tg3 *tp , struct ethtool_coalesce *ec )
{
  int i ;
  u32 limit ;
  int tmp ;
  u32 reg ;
  {
  i = 0;
  limit = tp->rxq_cnt;
  tmp = _tg3_flag(59, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    (*(tp->write32))(tp, 15368U, ec->rx_coalesce_usecs);
    (*(tp->write32))(tp, 15376U, ec->rx_max_coalesced_frames);
    (*(tp->write32))(tp, 15392U, ec->rx_max_coalesced_frames_irq);
    limit = limit - 1U;
  } else {
    (*(tp->write32))(tp, 15368U, 0U);
    (*(tp->write32))(tp, 15376U, 0U);
    (*(tp->write32))(tp, 15392U, 0U);
  }
  goto ldv_50037;
  ldv_50036:
  reg = (u32 )(i * 24 + 15744);
  (*(tp->write32))(tp, reg, ec->rx_coalesce_usecs);
  reg = (u32 )(i * 24 + 15752);
  (*(tp->write32))(tp, reg, ec->rx_max_coalesced_frames);
  reg = (u32 )(i * 24 + 15760);
  (*(tp->write32))(tp, reg, ec->rx_max_coalesced_frames_irq);
  i = i + 1;
  ldv_50037: ;
  if ((u32 )i < limit) {
    goto ldv_50036;
  } else {
  }
  goto ldv_50040;
  ldv_50039:
  (*(tp->write32))(tp, (u32 )(i * 24 + 15744), 0U);
  (*(tp->write32))(tp, (u32 )(i * 24 + 15752), 0U);
  (*(tp->write32))(tp, (u32 )(i * 24 + 15760), 0U);
  i = i + 1;
  ldv_50040: ;
  if ((unsigned int )i < tp->irq_max - 1U) {
    goto ldv_50039;
  } else {
  }
  return;
}
}
static void __tg3_set_coalesce(struct tg3 *tp , struct ethtool_coalesce *ec )
{
  u32 val ;
  int tmp ;
  {
  tg3_coal_tx_init(tp, ec);
  tg3_coal_rx_init(tp, ec);
  tmp = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    val = ec->stats_block_coalesce_usecs;
    (*(tp->write32))(tp, 15384U, ec->rx_coalesce_usecs_irq);
    (*(tp->write32))(tp, 15388U, ec->tx_coalesce_usecs_irq);
    if (! tp->link_up) {
      val = 0U;
    } else {
    }
    (*(tp->write32))(tp, 15400U, val);
  } else {
  }
  return;
}
}
static void tg3_rings_reset(struct tg3 *tp )
{
  int i ;
  u32 stblk ;
  u32 txrcb ;
  u32 rxrcb ;
  u32 limit ;
  struct tg3_napi *tnapi ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  u32 mbox ;
  int tmp___8 ;
  u64 mapping ;
  {
  tnapi = (struct tg3_napi *)(& tp->napi);
  tmp___1 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 == 0) {
    limit = 512U;
  } else {
    tmp___0 = _tg3_flag(77, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      limit = 320U;
    } else {
      tmp = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
      if (tmp != 0 || tp->pci_chip_rev_id >> 12 == 22370U) {
        limit = 288U;
      } else {
        limit = 272U;
      }
    }
  }
  txrcb = 272U;
  goto ldv_50057;
  ldv_50056:
  tg3_write_mem(tp, txrcb + 8U, 2U);
  txrcb = txrcb + 16U;
  ldv_50057: ;
  if (txrcb < limit) {
    goto ldv_50056;
  } else {
  }
  tmp___4 = _tg3_flag(77, (unsigned long *)(& tp->tg3_flags));
  if (tmp___4 != 0) {
    limit = 784U;
  } else {
    tmp___3 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
    if (tmp___3 == 0) {
      limit = 768U;
    } else
    if (tp->pci_chip_rev_id >> 12 == 10U || tp->pci_chip_rev_id >> 12 == 22370U) {
      limit = 576U;
    } else {
      tmp___2 = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
      if (tmp___2 != 0) {
        limit = 576U;
      } else {
        limit = 528U;
      }
    }
  }
  rxrcb = 528U;
  goto ldv_50060;
  ldv_50059:
  tg3_write_mem(tp, rxrcb + 8U, 2U);
  rxrcb = rxrcb + 16U;
  ldv_50060: ;
  if (rxrcb < limit) {
    goto ldv_50059;
  } else {
  }
  tw32_mailbox_flush(tp, tp->napi[0].int_mbox, 1U);
  tp->napi[0].chk_msi_cnt = 0U;
  tp->napi[0].last_rx_cons = 0U;
  tp->napi[0].last_tx_cons = 0U;
  tmp___7 = _tg3_flag(15, (unsigned long *)(& tp->tg3_flags));
  if (tmp___7 != 0) {
    i = 1;
    goto ldv_50063;
    ldv_50062:
    tp->napi[i].tx_prod = 0U;
    tp->napi[i].tx_cons = 0U;
    tmp___5 = _tg3_flag(60, (unsigned long *)(& tp->tg3_flags));
    if (tmp___5 != 0) {
      (*(tp->write32_mbox))(tp, tp->napi[i].prodmbox, 0U);
    } else {
    }
    (*(tp->write32_rx_mbox))(tp, tp->napi[i].consmbox, 0U);
    tw32_mailbox_flush(tp, tp->napi[i].int_mbox, 1U);
    tp->napi[i].chk_msi_cnt = 0U;
    tp->napi[i].last_rx_cons = 0U;
    tp->napi[i].last_tx_cons = 0U;
    i = i + 1;
    ldv_50063: ;
    if ((unsigned int )i < tp->irq_max) {
      goto ldv_50062;
    } else {
    }
    tmp___6 = _tg3_flag(60, (unsigned long *)(& tp->tg3_flags));
    if (tmp___6 == 0) {
      (*(tp->write32_mbox))(tp, tp->napi[0].prodmbox, 0U);
    } else {
    }
  } else {
    tp->napi[0].tx_prod = 0U;
    tp->napi[0].tx_cons = 0U;
    (*(tp->write32_mbox))(tp, tp->napi[0].prodmbox, 0U);
    (*(tp->write32_rx_mbox))(tp, tp->napi[0].consmbox, 0U);
  }
  tmp___8 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___8 == 0) {
    mbox = 900U;
    i = 0;
    goto ldv_50067;
    ldv_50066:
    (*(tp->write32_tx_mbox))(tp, (u32 )(i * 8) + mbox, 0U);
    i = i + 1;
    ldv_50067: ;
    if (i <= 15) {
      goto ldv_50066;
    } else {
    }
  } else {
  }
  txrcb = 256U;
  rxrcb = 512U;
  memset((void *)tnapi->hw_status, 0, 80UL);
  (*(tp->write32))(tp, 15416U, (u32 )(tnapi->status_mapping >> 32));
  (*(tp->write32))(tp, 15420U, (u32 )tnapi->status_mapping);
  if ((unsigned long )tnapi->tx_ring != (unsigned long )((struct tg3_tx_buffer_desc *)0)) {
    tg3_set_bdinfo(tp, txrcb, tnapi->tx_desc_mapping, 33554432U, 16384U);
    txrcb = txrcb + 16U;
  } else {
  }
  if ((unsigned long )tnapi->rx_rcb != (unsigned long )((struct tg3_rx_buffer_desc *)0)) {
    tg3_set_bdinfo(tp, rxrcb, tnapi->rx_rcb_mapping, (tp->rx_ret_ring_mask + 1U) << 16,
                   0U);
    rxrcb = rxrcb + 16U;
  } else {
  }
  stblk = 15616U;
  i = 1;
  tnapi = tnapi + 1;
  goto ldv_50071;
  ldv_50070:
  mapping = tnapi->status_mapping;
  (*(tp->write32))(tp, stblk, (u32 )(mapping >> 32));
  (*(tp->write32))(tp, stblk + 4U, (u32 )mapping);
  memset((void *)tnapi->hw_status, 0, 80UL);
  if ((unsigned long )tnapi->tx_ring != (unsigned long )((struct tg3_tx_buffer_desc *)0)) {
    tg3_set_bdinfo(tp, txrcb, tnapi->tx_desc_mapping, 33554432U, 16384U);
    txrcb = txrcb + 16U;
  } else {
  }
  tg3_set_bdinfo(tp, rxrcb, tnapi->rx_rcb_mapping, (tp->rx_ret_ring_mask + 1U) << 16,
                 0U);
  stblk = stblk + 8U;
  rxrcb = rxrcb + 16U;
  i = i + 1;
  tnapi = tnapi + 1;
  ldv_50071: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_50070;
  } else {
  }
  return;
}
}
static void tg3_setup_rxbd_thresholds(struct tg3 *tp )
{
  u32 val ;
  u32 bdcache_maxcnt ;
  u32 host_rep_thresh ;
  u32 nic_rep_thresh ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 _min1 ;
  u32 _min2 ;
  u32 __max1 ;
  u32 __max2 ;
  u32 _min1___0 ;
  u32 _min2___0 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  u32 __max1___0 ;
  u32 __max2___0 ;
  u32 _min1___1 ;
  u32 _min2___1 ;
  int tmp___5 ;
  {
  tmp = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    bdcache_maxcnt = 128U;
  } else {
    tmp___0 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      bdcache_maxcnt = 128U;
    } else
    if (tp->pci_chip_rev_id >> 12 == 4U) {
      bdcache_maxcnt = 128U;
    } else
    if (tp->pci_chip_rev_id >> 12 == 6U) {
      bdcache_maxcnt = 128U;
    } else {
      tmp___1 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
      if (tmp___1 != 0) {
        bdcache_maxcnt = 128U;
      } else
      if (tp->pci_chip_rev_id >> 12 == 10U || tp->pci_chip_rev_id >> 12 == 11U) {
        bdcache_maxcnt = 64U;
      } else {
        bdcache_maxcnt = 32U;
      }
    }
  }
  _min1 = bdcache_maxcnt / 2U;
  _min2 = tp->rx_std_max_post;
  nic_rep_thresh = _min1 < _min2 ? _min1 : _min2;
  __max1 = tp->rx_pending / 8U;
  __max2 = 1U;
  host_rep_thresh = __max1 > __max2 ? __max1 : __max2;
  _min1___0 = nic_rep_thresh;
  _min2___0 = host_rep_thresh;
  val = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  (*(tp->write32))(tp, 11288U, val);
  tmp___2 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    (*(tp->write32))(tp, 11520U, bdcache_maxcnt);
  } else {
  }
  tmp___3 = _tg3_flag(29, (unsigned long *)(& tp->tg3_flags));
  if (tmp___3 == 0) {
    return;
  } else {
    tmp___4 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___4 != 0) {
      return;
    } else {
    }
  }
  bdcache_maxcnt = 64U;
  __max1___0 = tp->rx_jumbo_pending / 8U;
  __max2___0 = 1U;
  host_rep_thresh = __max1___0 > __max2___0 ? __max1___0 : __max2___0;
  _min1___1 = bdcache_maxcnt / 2U;
  _min2___1 = host_rep_thresh;
  val = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
  (*(tp->write32))(tp, 11292U, val);
  tmp___5 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
  if (tmp___5 != 0) {
    (*(tp->write32))(tp, 11524U, bdcache_maxcnt);
  } else {
  }
  return;
}
}
__inline static u32 calc_crc(unsigned char *buf , int len )
{
  u32 reg ;
  u32 tmp ;
  int j ;
  int k ;
  {
  reg = 4294967295U;
  j = 0;
  goto ldv_50107;
  ldv_50106:
  reg = (u32 )*(buf + (unsigned long )j) ^ reg;
  k = 0;
  goto ldv_50104;
  ldv_50103:
  tmp = reg & 1U;
  reg = reg >> 1;
  if (tmp != 0U) {
    reg = reg ^ 3988292384U;
  } else {
  }
  k = k + 1;
  ldv_50104: ;
  if (k <= 7) {
    goto ldv_50103;
  } else {
  }
  j = j + 1;
  ldv_50107: ;
  if (j < len) {
    goto ldv_50106;
  } else {
  }
  return (~ reg);
}
}
static void tg3_set_multi(struct tg3 *tp , unsigned int accept_all )
{
  {
  (*(tp->write32))(tp, 1136U, accept_all != 0U ? 4294967295U : 0U);
  (*(tp->write32))(tp, 1140U, accept_all != 0U ? 4294967295U : 0U);
  (*(tp->write32))(tp, 1144U, accept_all != 0U ? 4294967295U : 0U);
  (*(tp->write32))(tp, 1148U, accept_all != 0U ? 4294967295U : 0U);
  return;
}
}
static void __tg3_set_rx_mode(struct net_device *dev )
{
  struct tg3 *tp ;
  void *tmp ;
  u32 rx_mode ;
  struct netdev_hw_addr *ha ;
  u32 mc_filter[4U] ;
  unsigned int tmp___0 ;
  u32 regidx ;
  u32 bit ;
  u32 crc ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  rx_mode = tp->rx_mode & 4294966015U;
  if ((dev->flags & 256U) != 0U) {
    rx_mode = rx_mode | 256U;
  } else
  if ((dev->flags & 512U) != 0U) {
    tg3_set_multi(tp, 1U);
  } else
  if (dev->mc.count == 0) {
    tg3_set_multi(tp, 0U);
  } else {
    mc_filter[0] = 0U;
    tmp___0 = 1U;
    while (1) {
      if (tmp___0 >= 4U) {
        break;
      } else {
      }
      mc_filter[tmp___0] = 0U;
      tmp___0 = tmp___0 + 1U;
    }
    __mptr = (struct list_head const *)dev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_50128;
    ldv_50127:
    crc = calc_crc((unsigned char *)(& ha->addr), 6);
    bit = ~ crc & 127U;
    regidx = (bit & 96U) >> 5;
    bit = bit & 31U;
    mc_filter[regidx] = mc_filter[regidx] | (u32 )(1 << (int )bit);
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_50128: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
      goto ldv_50127;
    } else {
    }
    (*(tp->write32))(tp, 1136U, mc_filter[0]);
    (*(tp->write32))(tp, 1140U, mc_filter[1]);
    (*(tp->write32))(tp, 1144U, mc_filter[2]);
    (*(tp->write32))(tp, 1148U, mc_filter[3]);
  }
  if (tp->rx_mode != rx_mode) {
    tp->rx_mode = rx_mode;
    _tw32_flush(tp, 1128U, rx_mode, 0U);
    __const_udelay(42950UL);
  } else {
  }
  return;
}
}
static void tg3_rss_init_dflt_indir_tbl(struct tg3 *tp , u32 qcnt )
{
  int i ;
  u32 tmp ;
  {
  i = 0;
  goto ldv_50136;
  ldv_50135:
  tmp = ethtool_rxfh_indir_default((u32 )i, qcnt);
  tp->rss_ind_tbl[i] = (u8 )tmp;
  i = i + 1;
  ldv_50136: ;
  if (i <= 127) {
    goto ldv_50135;
  } else {
  }
  return;
}
}
static void tg3_rss_check_indir_tbl(struct tg3 *tp )
{
  int i ;
  int tmp ;
  {
  tmp = _tg3_flag(15, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return;
  } else {
  }
  if (tp->rxq_cnt == 1U) {
    memset((void *)(& tp->rss_ind_tbl), 0, 128UL);
    return;
  } else {
  }
  i = 0;
  goto ldv_50144;
  ldv_50143: ;
  if ((u32 )tp->rss_ind_tbl[i] >= tp->rxq_cnt) {
    goto ldv_50142;
  } else {
  }
  i = i + 1;
  ldv_50144: ;
  if (i <= 127) {
    goto ldv_50143;
  } else {
  }
  ldv_50142: ;
  if (i != 128) {
    tg3_rss_init_dflt_indir_tbl(tp, tp->rxq_cnt);
  } else {
  }
  return;
}
}
static void tg3_rss_write_indir_tbl(struct tg3 *tp )
{
  int i ;
  u32 reg ;
  u32 val ;
  {
  i = 0;
  reg = 1584U;
  goto ldv_50155;
  ldv_50154:
  val = (u32 )tp->rss_ind_tbl[i];
  i = i + 1;
  goto ldv_50152;
  ldv_50151:
  val = val << 4;
  val = (u32 )tp->rss_ind_tbl[i] | val;
  i = i + 1;
  ldv_50152: ;
  if (((unsigned int )i & 7U) != 0U) {
    goto ldv_50151;
  } else {
  }
  (*(tp->write32))(tp, reg, val);
  reg = reg + 4U;
  ldv_50155: ;
  if (i <= 127) {
    goto ldv_50154;
  } else {
  }
  return;
}
}
static int tg3_reset_hw(struct tg3 *tp , bool reset_phy )
{
  u32 val ;
  u32 rdmac_mode ;
  int i ;
  int err ;
  int limit ;
  struct tg3_rx_prodring_set *tpr ;
  int tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 grc_mode ;
  u32 tmp___4 ;
  int tmp___5 ;
  u32 grc_mode___0 ;
  u32 tmp___6 ;
  u32 grc_mode___1 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  u32 tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int fw_len ;
  int tmp___16 ;
  int tmp___17 ;
  u32 tmp___18 ;
  u32 tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  u32 tmp___31 ;
  u32 tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  int tmp___35 ;
  int tmp___36 ;
  int tmp___37 ;
  int tmp___38 ;
  int tmp___39 ;
  u32 tmp___40 ;
  u32 tgtreg ;
  int tmp___41 ;
  u32 tgtreg___0 ;
  int tmp___42 ;
  int tmp___43 ;
  u32 tmp___44 ;
  int tmp___45 ;
  int tmp___46 ;
  int tmp___47 ;
  int tmp___48 ;
  u32 gpio_mask ;
  u32 tmp___49 ;
  int tmp___50 ;
  int tmp___51 ;
  int tmp___52 ;
  int tmp___53 ;
  int tmp___54 ;
  u32 tmp___55 ;
  int tmp___56 ;
  int tmp___57 ;
  int tmp___58 ;
  u16 pcix_cmd ;
  int tmp___59 ;
  u32 tmp___60 ;
  int tmp___61 ;
  int tmp___62 ;
  int tmp___63 ;
  int tmp___64 ;
  int tmp___65 ;
  int tmp___66 ;
  int tmp___67 ;
  int tmp___68 ;
  int tmp___69 ;
  u32 tmp___70 ;
  int tmp___71 ;
  int tmp___72 ;
  int tmp___73 ;
  int tmp___74 ;
  u32 tmp___75 ;
  u32 tmp___76 ;
  int tmp___77 ;
  int tmp___78 ;
  int tmp___79 ;
  int tmp___80 ;
  int tmp___81 ;
  int tmp___82 ;
  {
  tpr = & tp->napi[0].prodring;
  tg3_disable_ints(tp);
  tg3_stop_fw(tp);
  tg3_write_sig_pre_reset(tp, 1);
  tmp = _tg3_flag(31, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    tg3_abort_hw(tp, 1);
  } else {
  }
  if ((tp->phy_flags & 262144U) != 0U) {
    val = 16777220U;
    if (tp->pci_chip_rev_id == 1467502592U) {
      val = val | 2U;
    } else {
    }
    _tw32_flush(tp, 14012U, val, 0U);
    _tw32_flush(tp, 14032U, 504U, 0U);
    val = 1049352U;
    if (tp->pci_chip_rev_id >> 12 != 22295U) {
      val = val | 64U;
    } else {
    }
    tmp___0 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      val = val | 4U;
    } else {
    }
    _tw32_flush(tp, 14000U, val, 0U);
    _tw32_flush(tp, 14004U, 134154239U, 0U);
    _tw32_flush(tp, 14008U, 134154239U, 0U);
  } else {
  }
  if ((tp->phy_flags & 1048576U) != 0U && (tp->phy_flags & 8U) == 0U) {
    tg3_phy_pull_config(tp);
    tp->phy_flags = tp->phy_flags | 8U;
  } else {
  }
  if ((int )reset_phy) {
    tg3_phy_reset(tp);
  } else {
  }
  err = tg3_chip_reset(tp);
  if (err != 0) {
    return (err);
  } else {
  }
  tg3_write_sig_legacy(tp, 1);
  if (tp->pci_chip_rev_id >> 8 == 358464U) {
    val = (*(tp->read32))(tp, 13824U);
    val = val & 4294965759U;
    (*(tp->write32))(tp, 13824U, val);
    val = (*(tp->read32))(tp, 13828U);
    val = val & 4292935679U;
    val = val | 1245184U;
    (*(tp->write32))(tp, 13828U, val);
    val = (*(tp->read32))(tp, 13840U);
    val = val & 4292935679U;
    val = val | 1245184U;
    (*(tp->write32))(tp, 13840U, val);
    val = (*(tp->read32))(tp, 13852U);
    val = val & 4292935679U;
    val = val | 1245184U;
    (*(tp->write32))(tp, 13852U, val);
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 358272U) {
    tmp___1 = (*(tp->read32))(tp, 32040U);
    val = tmp___1 & 4294902015U;
    val = val | 16842496U;
    (*(tp->write32))(tp, 32040U, val);
    tmp___2 = (*(tp->read32))(tp, 32368U);
    val = tmp___2 & 4294967264U;
    (*(tp->write32))(tp, 32368U, val | 12U);
    (*(tp->write32))(tp, 272U, 4294967295U);
    tmp___3 = (*(tp->read32))(tp, 32084U);
    val = tmp___3 & 4294967287U;
    (*(tp->write32))(tp, 32084U, val | 128U);
  } else {
  }
  tmp___5 = _tg3_flag(63, (unsigned long *)(& tp->tg3_flags));
  if (tmp___5 != 0) {
    tmp___4 = (*(tp->read32))(tp, 26624U);
    grc_mode = tmp___4;
    val = grc_mode & 1606418431U;
    (*(tp->write32))(tp, 26624U, val | 4194304U);
    val = (*(tp->read32))(tp, 31748U);
    (*(tp->write32))(tp, 31748U, val | 4096U);
    (*(tp->write32))(tp, 26624U, grc_mode);
  } else {
  }
  tmp___7 = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
  if (tmp___7 != 0) {
    if (tp->pci_chip_rev_id == 1467502592U) {
      tmp___6 = (*(tp->read32))(tp, 26624U);
      grc_mode___0 = tmp___6;
      val = grc_mode___0 & 1606418431U;
      (*(tp->write32))(tp, 26624U, val | 4194304U);
      val = (*(tp->read32))(tp, 31764U);
      (*(tp->write32))(tp, 31764U, val | 2147483648U);
      (*(tp->write32))(tp, 26624U, grc_mode___0);
    } else {
    }
    if (tp->pci_chip_rev_id >> 8 != 5731920U) {
      val = (*(tp->read32))(tp, 13928U);
      val = val | 262144U;
      (*(tp->write32))(tp, 13928U, val);
      grc_mode___1 = (*(tp->read32))(tp, 26624U);
      val = grc_mode___1 & 1606418431U;
      (*(tp->write32))(tp, 26624U, val | 536870912U);
      val = (*(tp->read32))(tp, 31756U);
      val = val & 4294967040U;
      (*(tp->write32))(tp, 31756U, val | 44U);
      (*(tp->write32))(tp, 26624U, grc_mode___1);
    } else {
    }
    val = (*(tp->read32))(tp, 13828U);
    val = val & 4292935679U;
    val = val | 1245184U;
    (*(tp->write32))(tp, 13828U, val);
  } else {
  }
  tmp___9 = _tg3_flag(26, (unsigned long *)(& tp->tg3_flags));
  if (tmp___9 == 0) {
    tmp___8 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
    if (tmp___8 == 0) {
      tp->pci_clock_ctrl = tp->pci_clock_ctrl | 2147483648U;
    } else {
    }
    _tw32_flush(tp, 116U, tp->pci_clock_ctrl, 0U);
  } else {
  }
  if (tp->pci_chip_rev_id == 8192U) {
    tmp___10 = _tg3_flag(18, (unsigned long *)(& tp->tg3_flags));
    if (tmp___10 != 0) {
      val = (*(tp->read32))(tp, 112U);
      val = val | 8192U;
      (*(tp->write32))(tp, 112U, val);
    } else {
    }
  } else {
  }
  tmp___11 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
  if (tmp___11 != 0) {
    val = (*(tp->read32))(tp, 112U);
    val = val | 458752U;
    (*(tp->write32))(tp, 112U, val);
  } else {
  }
  if (tp->pci_chip_rev_id >> 8 == 33U) {
    val = (*(tp->read32))(tp, 100U);
    val = val | 872415232U;
    (*(tp->write32))(tp, 100U, val);
  } else {
  }
  err = tg3_init_rings(tp);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___14 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
  if (tmp___14 != 0) {
    tmp___12 = (*(tp->read32))(tp, 108U);
    val = tmp___12 & 4294967294U;
    if (tp->pci_chip_rev_id == 1467502592U) {
      val = val & 4294966399U;
    } else {
    }
    tmp___13 = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
    if ((tmp___13 == 0 && tp->pci_chip_rev_id >> 12 != 22295U) && tp->pci_chip_rev_id >> 12 != 22370U) {
      val = val | 128U;
    } else {
    }
    (*(tp->write32))(tp, 108U, tp->dma_rwctrl | val);
  } else
  if (tp->pci_chip_rev_id >> 12 != 22404U && tp->pci_chip_rev_id >> 12 != 22369U) {
    (*(tp->write32))(tp, 108U, tp->dma_rwctrl);
  } else {
  }
  tp->grc_mode = tp->grc_mode & 3748528127U;
  tp->grc_mode = tp->grc_mode | 131072U;
  tp->grc_mode = tp->grc_mode | 1048576U;
  val = 67174400U;
  if (tp->rxptpctl != 0U) {
    (*(tp->write32))(tp, 1736U, tp->rxptpctl | 67108864U);
  } else {
  }
  tmp___15 = _tg3_flag(69, (unsigned long *)(& tp->tg3_flags));
  if (tmp___15 != 0) {
    val = val | 524288U;
  } else {
  }
  (*(tp->write32))(tp, 26624U, tp->grc_mode | val);
  val = (*(tp->read32))(tp, 26628U);
  val = val & 4294967040U;
  val = val | 130U;
  (*(tp->write32))(tp, 26628U, val);
  tmp___17 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
  if (tmp___17 != 0) {
  } else
  if (tp->pci_chip_rev_id >> 12 != 3U) {
    (*(tp->write32))(tp, 17416U, 32768U);
    if (tp->pci_chip_rev_id >> 12 == 2U) {
      (*(tp->write32))(tp, 17420U, 65536U);
    } else {
      (*(tp->write32))(tp, 17420U, 98304U);
    }
    (*(tp->write32))(tp, 17452U, 8192U);
    (*(tp->write32))(tp, 17456U, 8192U);
  } else {
    tmp___16 = _tg3_flag(42, (unsigned long *)(& tp->tg3_flags));
    if (tmp___16 != 0) {
      fw_len = (int )tp->fw_len;
      fw_len = (fw_len + 127) & -128;
      (*(tp->write32))(tp, 17416U, (u32 )(fw_len + 65536));
      (*(tp->write32))(tp, 17420U, (u32 )(54784 - fw_len));
    } else {
    }
  }
  if ((tp->dev)->mtu <= 1500U) {
    (*(tp->write32))(tp, 17424U, tp->bufmgr_config.mbuf_read_dma_low_water);
    (*(tp->write32))(tp, 17428U, tp->bufmgr_config.mbuf_mac_rx_low_water);
    (*(tp->write32))(tp, 17432U, tp->bufmgr_config.mbuf_high_water);
  } else {
    (*(tp->write32))(tp, 17424U, tp->bufmgr_config.mbuf_read_dma_low_water_jumbo);
    (*(tp->write32))(tp, 17428U, tp->bufmgr_config.mbuf_mac_rx_low_water_jumbo);
    (*(tp->write32))(tp, 17432U, tp->bufmgr_config.mbuf_high_water_jumbo);
  }
  (*(tp->write32))(tp, 17460U, tp->bufmgr_config.dma_low_water);
  (*(tp->write32))(tp, 17464U, tp->bufmgr_config.dma_high_water);
  val = 6U;
  if (tp->pci_chip_rev_id >> 12 == 22297U) {
    val = val | 2147483648U;
  } else {
  }
  if ((tp->pci_chip_rev_id >> 12 == 22295U || tp->pci_chip_rev_id == 91328512U) || tp->pci_chip_rev_id == 91357184U) {
    val = val | 16U;
  } else {
  }
  (*(tp->write32))(tp, 17408U, val);
  i = 0;
  goto ldv_50173;
  ldv_50172:
  tmp___18 = (*(tp->read32))(tp, 17408U);
  if ((tmp___18 & 2U) != 0U) {
    goto ldv_50171;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_50173: ;
  if (i <= 1999) {
    goto ldv_50172;
  } else {
  }
  ldv_50171: ;
  if (i > 1999) {
    netdev_err((struct net_device const *)tp->dev, "%s cannot enable BUFMGR\n",
               "tg3_reset_hw");
    return (-19);
  } else {
  }
  if (tp->pci_chip_rev_id == 49153U) {
    tmp___19 = (*(tp->read32))(tp, 3104U);
    (*(tp->write32))(tp, 3104U, (tmp___19 & 4294967292U) | 2U);
  } else {
  }
  tg3_setup_rxbd_thresholds(tp);
  (*(tp->write32))(tp, 9296U, (u32 )(tpr->rx_std_mapping >> 32));
  (*(tp->write32))(tp, 9300U, (u32 )tpr->rx_std_mapping);
  tmp___20 = _tg3_flag(77, (unsigned long *)(& tp->tg3_flags));
  if (tmp___20 == 0) {
    (*(tp->write32))(tp, 9308U, 24576U);
  } else {
  }
  tmp___21 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___21 == 0) {
    (*(tp->write32))(tp, 9320U, 2U);
  } else {
  }
  if (tp->pci_chip_rev_id == 91328512U) {
    goto _L;
  } else {
    tmp___28 = _tg3_flag(29, (unsigned long *)(& tp->tg3_flags));
    if (tmp___28 != 0) {
      tmp___29 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
      if (tmp___29 == 0) {
        _L:
        tmp___25 = _tg3_flag(24, (unsigned long *)(& tp->tg3_flags));
        if (tmp___25 != 0) {
          (*(tp->write32))(tp, 9280U, (u32 )(tpr->rx_jmb_mapping >> 32));
          (*(tp->write32))(tp, 9284U, (u32 )tpr->rx_jmb_mapping);
          tmp___22 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
          val = tmp___22 != 0 ? 67108864U : 16777216U;
          (*(tp->write32))(tp, 9288U, val | 1U);
          tmp___23 = _tg3_flag(62, (unsigned long *)(& tp->tg3_flags));
          if (tmp___23 == 0) {
            (*(tp->write32))(tp, 9292U, 28672U);
          } else {
            tmp___24 = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
            if (tmp___24 != 0) {
              (*(tp->write32))(tp, 9292U, 28672U);
            } else
            if (tp->pci_chip_rev_id >> 12 == 22370U) {
              (*(tp->write32))(tp, 9292U, 28672U);
            } else {
            }
          }
        } else {
          (*(tp->write32))(tp, 9288U, 2U);
        }
        tmp___27 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
        if (tmp___27 != 0) {
          tmp___26 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
          val = tmp___26 != 0 ? 2048U : 512U;
          val = val << 16;
          val = val | 6144U;
        } else {
          val = 100663296U;
        }
      } else {
        val = 33554432U;
      }
    } else {
      val = 33554432U;
    }
  }
  (*(tp->write32))(tp, 9304U, val);
  tpr->rx_std_prod_idx = tp->rx_pending;
  (*(tp->write32_rx_mbox))(tp, 620U, tpr->rx_std_prod_idx);
  tmp___30 = _tg3_flag(24, (unsigned long *)(& tp->tg3_flags));
  tpr->rx_jmb_prod_idx = tmp___30 != 0 ? tp->rx_jumbo_pending : 0U;
  (*(tp->write32_rx_mbox))(tp, 628U, tpr->rx_jmb_prod_idx);
  tg3_rings_reset(tp);
  __tg3_set_mac_addr(tp, 0);
  (*(tp->write32))(tp, 1084U, (tp->dev)->mtu + 22U);
  val = 9760U;
  if (tp->pci_chip_rev_id >> 12 == 22304U || tp->pci_chip_rev_id >> 12 == 22370U) {
    tmp___31 = (*(tp->read32))(tp, 1124U);
    val = (tmp___31 & 4294901760U) | val;
  } else {
  }
  (*(tp->write32))(tp, 1124U, val);
  (*(tp->write32))(tp, 1280U, 8U);
  (*(tp->write32))(tp, 8208U, 385U);
  rdmac_mode = 1022U;
  if (tp->pci_chip_rev_id >> 12 == 22295U) {
    rdmac_mode = rdmac_mode | 16777216U;
  } else {
  }
  if ((tp->pci_chip_rev_id >> 12 == 22404U || tp->pci_chip_rev_id >> 12 == 22405U) || tp->pci_chip_rev_id >> 12 == 358272U) {
    rdmac_mode = rdmac_mode | 14336U;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 3U && tp->pci_chip_rev_id != 12288U) {
    tmp___34 = _tg3_flag(42, (unsigned long *)(& tp->tg3_flags));
    if (tmp___34 != 0 && tp->pci_chip_rev_id >> 12 == 3U) {
      rdmac_mode = rdmac_mode | 131072U;
    } else {
      tmp___32 = (*(tp->read32))(tp, 112U);
      if ((tmp___32 & 8U) == 0U) {
        tmp___33 = _tg3_flag(71, (unsigned long *)(& tp->tg3_flags));
        if (tmp___33 == 0) {
          rdmac_mode = rdmac_mode | 196608U;
        } else {
        }
      } else {
      }
    }
  } else {
  }
  tmp___35 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
  if (tmp___35 != 0) {
    rdmac_mode = rdmac_mode | 196608U;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 358246U) {
    tp->dma_limit = 0U;
    if ((tp->dev)->mtu <= 1500U) {
      rdmac_mode = rdmac_mode | 8388608U;
      tp->dma_limit = 2048U;
    } else {
    }
  } else {
  }
  tmp___36 = _tg3_flag(39, (unsigned long *)(& tp->tg3_flags));
  if (tmp___36 != 0) {
    rdmac_mode = rdmac_mode | 134217728U;
  } else {
    tmp___37 = _tg3_flag(40, (unsigned long *)(& tp->tg3_flags));
    if (tmp___37 != 0) {
      rdmac_mode = rdmac_mode | 134217728U;
    } else {
      tmp___38 = _tg3_flag(41, (unsigned long *)(& tp->tg3_flags));
      if (tmp___38 != 0) {
        rdmac_mode = rdmac_mode | 134217728U;
      } else {
      }
    }
  }
  tmp___39 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
  if ((tmp___39 != 0 || tp->pci_chip_rev_id >> 12 == 22405U) || tp->pci_chip_rev_id >> 12 == 358272U) {
    rdmac_mode = rdmac_mode | 268435456U;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 22304U || tp->pci_chip_rev_id >> 12 == 22370U) {
    tmp___40 = (*(tp->read32))(tp, 18432U);
    rdmac_mode = (tmp___40 & 536870912U) | rdmac_mode;
  } else {
  }
  if (((tp->pci_chip_rev_id >> 12 == 22369U || tp->pci_chip_rev_id >> 12 == 22404U) || tp->pci_chip_rev_id >> 12 == 22405U) || tp->pci_chip_rev_id >> 12 == 358272U) {
    goto _L___0;
  } else {
    tmp___41 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
    if (tmp___41 != 0) {
      _L___0:
      if (tp->pci_chip_rev_id >> 12 == 22370U) {
        tgtreg = 18576U;
      } else {
        tgtreg = 18688U;
      }
      val = (*(tp->read32))(tp, tgtreg);
      if (tp->pci_chip_rev_id == 91328512U || tp->pci_chip_rev_id >> 12 == 22370U) {
        val = val & 1048591U;
        val = val | 671878144U;
      } else {
      }
      (*(tp->write32))(tp, tgtreg, val | 4U);
    } else {
    }
  }
  if ((tp->pci_chip_rev_id >> 12 == 22297U || tp->pci_chip_rev_id >> 12 == 22304U) || tp->pci_chip_rev_id >> 12 == 22370U) {
    if (tp->pci_chip_rev_id >> 12 == 22370U) {
      tgtreg___0 = 18592U;
    } else {
      tgtreg___0 = 18704U;
    }
    val = (*(tp->read32))(tp, tgtreg___0);
    (*(tp->write32))(tp, tgtreg___0, val | 983040U);
  } else {
  }
  tmp___43 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
  if (tmp___43 != 0) {
    val = (*(tp->read32))(tp, 8216U);
    val = val & 4294705151U;
    (*(tp->write32))(tp, 8216U, val);
  } else
  if ((rdmac_mode & 131072U) != 0U) {
    tmp___42 = _tg3_flag(42, (unsigned long *)(& tp->tg3_flags));
    if (tmp___42 != 0) {
      val = (*(tp->read32))(tp, 8216U);
      val = val & 4290772991U;
      (*(tp->write32))(tp, 8216U, val);
    } else {
      (*(tp->write32))(tp, 8216U, 16777215U);
    }
  } else {
    (*(tp->write32))(tp, 8216U, 16777215U);
  }
  (*(tp->write32))(tp, 8212U, 1U);
  (*(tp->write32))(tp, 3084U, 16777215U);
  (*(tp->write32))(tp, 3080U, 3U);
  (*(tp->write32))(tp, 15360U, 0U);
  i = 0;
  goto ldv_50179;
  ldv_50178:
  tmp___44 = (*(tp->read32))(tp, 15360U);
  if ((tmp___44 & 2U) == 0U) {
    goto ldv_50177;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_50179: ;
  if (i <= 1999) {
    goto ldv_50178;
  } else {
  }
  ldv_50177:
  __tg3_set_coalesce(tp, & tp->coal);
  tmp___45 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___45 == 0) {
    (*(tp->write32))(tp, 15408U, (u32 )(tp->stats_mapping >> 32));
    (*(tp->write32))(tp, 15412U, (u32 )tp->stats_mapping);
    (*(tp->write32))(tp, 15424U, 768U);
    (*(tp->write32))(tp, 15428U, 2816U);
    i = 768;
    goto ldv_50181;
    ldv_50180:
    tg3_write_mem(tp, (u32 )i, 0U);
    __const_udelay(171800UL);
    i = (int )((unsigned int )i + 4U);
    ldv_50181: ;
    if (i <= 2895) {
      goto ldv_50180;
    } else {
    }
  } else {
  }
  (*(tp->write32))(tp, 15360U, tp->coalesce_mode | 2U);
  (*(tp->write32))(tp, 12288U, 6U);
  (*(tp->write32))(tp, 8192U, 2U);
  tmp___46 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___46 == 0) {
    (*(tp->write32))(tp, 13312U, 6U);
  } else {
  }
  if ((tp->phy_flags & 32U) != 0U) {
    tp->phy_flags = tp->phy_flags & 4294836223U;
    _tw32_flush(tp, 1128U, 1U, 0U);
    __const_udelay(42950UL);
  } else {
  }
  tp->mac_mode = tp->mac_mode | 14698496U;
  tmp___47 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
  if (tmp___47 != 0) {
    tp->mac_mode = tp->mac_mode | 402653184U;
  } else {
  }
  tmp___48 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if ((tmp___48 == 0 && (tp->phy_flags & 16U) == 0U) && tp->pci_chip_rev_id >> 12 != 7U) {
    tp->mac_mode = tp->mac_mode | 1024U;
  } else {
  }
  _tw32_flush(tp, 1024U, tp->mac_mode | 36864U, 0U);
  __const_udelay(171800UL);
  tmp___51 = _tg3_flag(36, (unsigned long *)(& tp->tg3_flags));
  if (tmp___51 == 0) {
    gpio_mask = 129024U;
    if (tp->pci_chip_rev_id >> 12 == 6U) {
      gpio_mask = gpio_mask | 192U;
    } else {
    }
    if (tp->pci_chip_rev_id >> 12 == 10U) {
      gpio_mask = gpio_mask | 16U;
    } else {
    }
    tp->grc_local_ctrl = tp->grc_local_ctrl & ~ gpio_mask;
    tmp___49 = (*(tp->read32))(tp, 26632U);
    tp->grc_local_ctrl = tp->grc_local_ctrl | (tmp___49 & gpio_mask);
    tmp___50 = _tg3_flag(11, (unsigned long *)(& tp->tg3_flags));
    if (tmp___50 != 0) {
      tp->grc_local_ctrl = tp->grc_local_ctrl | 36864U;
    } else {
    }
  } else {
  }
  _tw32_flush(tp, 26632U, tp->grc_local_ctrl, 0U);
  __const_udelay(429500UL);
  tmp___53 = _tg3_flag(17, (unsigned long *)(& tp->tg3_flags));
  if (tmp___53 != 0) {
    val = (*(tp->read32))(tp, 24576U);
    val = val | 2U;
    if (tp->irq_cnt > 1U) {
      val = val | 128U;
    } else {
    }
    tmp___52 = _tg3_flag(45, (unsigned long *)(& tp->tg3_flags));
    if (tmp___52 == 0) {
      val = val | 32U;
    } else {
    }
    (*(tp->write32))(tp, 24576U, val);
  } else {
  }
  tmp___54 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___54 == 0) {
    _tw32_flush(tp, 25600U, 2U, 0U);
    __const_udelay(171800UL);
  } else {
  }
  val = 1022U;
  if (tp->pci_chip_rev_id >> 12 == 3U && tp->pci_chip_rev_id != 12288U) {
    tmp___57 = _tg3_flag(42, (unsigned long *)(& tp->tg3_flags));
    if (tmp___57 != 0 && (tp->pci_chip_rev_id == 12289U || tp->pci_chip_rev_id == 12290U)) {
    } else {
      tmp___55 = (*(tp->read32))(tp, 112U);
      if ((tmp___55 & 8U) == 0U) {
        tmp___56 = _tg3_flag(71, (unsigned long *)(& tp->tg3_flags));
        if (tmp___56 == 0) {
          val = val | 1024U;
        } else {
        }
      } else {
      }
    }
  } else {
  }
  tmp___58 = _tg3_flag(74, (unsigned long *)(& tp->tg3_flags));
  if (tmp___58 != 0) {
    val = val | 536870912U;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 22405U) {
    val = val | 3221225472U;
  } else {
  }
  _tw32_flush(tp, 19456U, val, 0U);
  __const_udelay(171800UL);
  tmp___59 = _tg3_flag(18, (unsigned long *)(& tp->tg3_flags));
  if (tmp___59 != 0) {
    pci_read_config_word((struct pci_dev const *)tp->pdev, tp->pcix_cap + 2, & pcix_cmd);
    if (tp->pci_chip_rev_id >> 12 == 1U) {
      pcix_cmd = (unsigned int )pcix_cmd & 65523U;
      pcix_cmd = (u16 )((unsigned int )pcix_cmd | 8U);
    } else
    if (tp->pci_chip_rev_id >> 12 == 2U) {
      pcix_cmd = (unsigned int )pcix_cmd & 65411U;
      pcix_cmd = (u16 )((unsigned int )pcix_cmd | 8U);
    } else {
    }
    pci_write_config_word((struct pci_dev const *)tp->pdev, tp->pcix_cap + 2, (int )pcix_cmd);
  } else {
  }
  _tw32_flush(tp, 18432U, rdmac_mode, 0U);
  __const_udelay(171800UL);
  if (tp->pci_chip_rev_id >> 12 == 22297U) {
    i = 0;
    goto ldv_50187;
    ldv_50186:
    tmp___60 = (*(tp->read32))(tp, (u32 )((i << 2) + 19424));
    tmp___61 = _tg3_flag(29, (unsigned long *)(& tp->tg3_flags));
    if (tmp___60 > (tmp___61 != 0 ? 9000U : 1500U)) {
      goto ldv_50185;
    } else {
    }
    i = i + 1;
    ldv_50187: ;
    if (i <= 3) {
      goto ldv_50186;
    } else {
    }
    ldv_50185: ;
    if (i <= 3) {
      val = (*(tp->read32))(tp, 18704U);
      val = val | 33554432U;
      (*(tp->write32))(tp, 18704U, val);
      _tg3_flag_set(67, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
  } else {
  }
  (*(tp->write32))(tp, 10240U, 6U);
  tmp___62 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___62 == 0) {
    (*(tp->write32))(tp, 14336U, 2U);
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 22369U) {
    (*(tp->write32))(tp, 4096U, 18U);
  } else {
    (*(tp->write32))(tp, 4096U, 2U);
  }
  (*(tp->write32))(tp, 7168U, 6U);
  (*(tp->write32))(tp, 11264U, 6U);
  val = 18U;
  tmp___63 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
  if (tmp___63 != 0) {
    val = val | 65536U;
  } else {
  }
  (*(tp->write32))(tp, 9216U, val);
  (*(tp->write32))(tp, 3072U, 2U);
  tmp___64 = _tg3_flag(39, (unsigned long *)(& tp->tg3_flags));
  if (tmp___64 != 0) {
    (*(tp->write32))(tp, 3072U, 10U);
  } else {
    tmp___65 = _tg3_flag(40, (unsigned long *)(& tp->tg3_flags));
    if (tmp___65 != 0) {
      (*(tp->write32))(tp, 3072U, 10U);
    } else {
      tmp___66 = _tg3_flag(41, (unsigned long *)(& tp->tg3_flags));
      if (tmp___66 != 0) {
        (*(tp->write32))(tp, 3072U, 10U);
      } else {
      }
    }
  }
  val = 6U;
  tmp___67 = _tg3_flag(60, (unsigned long *)(& tp->tg3_flags));
  if (tmp___67 != 0) {
    val = val | 32U;
  } else {
  }
  (*(tp->write32))(tp, 6144U, val);
  (*(tp->write32))(tp, 5120U, 6U);
  if (tp->pci_chip_rev_id == 0U) {
    err = tg3_load_5701_a0_firmware_fix(tp);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 358246U) {
    tg3_load_57766_firmware(tp);
  } else {
  }
  tmp___68 = _tg3_flag(42, (unsigned long *)(& tp->tg3_flags));
  if (tmp___68 != 0) {
    err = tg3_load_tso_firmware(tp);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  tp->tx_mode = 2U;
  tmp___69 = _tg3_flag(74, (unsigned long *)(& tp->tg3_flags));
  if (tmp___69 != 0 || tp->pci_chip_rev_id >> 12 == 12U) {
    tp->tx_mode = tp->tx_mode | 256U;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 22304U || tp->pci_chip_rev_id >> 12 == 22370U) {
    val = 12582912U;
    tp->tx_mode = tp->tx_mode & ~ val;
    tmp___70 = (*(tp->read32))(tp, 1116U);
    tp->tx_mode = tp->tx_mode | (tmp___70 & val);
  } else {
  }
  _tw32_flush(tp, 1116U, tp->tx_mode, 0U);
  __const_udelay(429500UL);
  tmp___71 = _tg3_flag(59, (unsigned long *)(& tp->tg3_flags));
  if (tmp___71 != 0) {
    tg3_rss_write_indir_tbl(tp);
    (*(tp->write32))(tp, 1648U, 1602638903U);
    (*(tp->write32))(tp, 1652U, 3836502732U);
    (*(tp->write32))(tp, 1656U, 1343240773U);
    (*(tp->write32))(tp, 1660U, 912398725U);
    (*(tp->write32))(tp, 1664U, 3205808360U);
    (*(tp->write32))(tp, 1668U, 465730078U);
    (*(tp->write32))(tp, 1672U, 2230629718U);
    (*(tp->write32))(tp, 1676U, 156149502U);
    (*(tp->write32))(tp, 1680U, 2111439335U);
    (*(tp->write32))(tp, 1684U, 3226301569U);
  } else {
  }
  tp->rx_mode = 2U;
  tmp___72 = _tg3_flag(74, (unsigned long *)(& tp->tg3_flags));
  if (tmp___72 != 0) {
    tp->rx_mode = tp->rx_mode | 16777216U;
  } else {
  }
  tmp___73 = _tg3_flag(59, (unsigned long *)(& tp->tg3_flags));
  if (tmp___73 != 0) {
    tp->rx_mode = tp->rx_mode | 16711680U;
  } else {
  }
  _tw32_flush(tp, 1128U, tp->rx_mode, 0U);
  __const_udelay(42950UL);
  (*(tp->write32))(tp, 1036U, tp->led_ctrl);
  (*(tp->write32))(tp, 1104U, 1U);
  if ((tp->phy_flags & 16U) != 0U) {
    _tw32_flush(tp, 1128U, 1U, 0U);
    __const_udelay(42950UL);
  } else {
  }
  _tw32_flush(tp, 1128U, tp->rx_mode, 0U);
  __const_udelay(42950UL);
  if ((tp->phy_flags & 16U) != 0U) {
    if (tp->pci_chip_rev_id >> 12 == 2U && (tp->phy_flags & 65536U) == 0U) {
      val = (*(tp->read32))(tp, 1424U);
      val = val & 4294963200U;
      val = val | 2176U;
      (*(tp->write32))(tp, 1424U, val);
    } else {
    }
    if (tp->pci_chip_rev_id == 4097U) {
      (*(tp->write32))(tp, 1424U, 6381568U);
    } else {
    }
  } else {
  }
  tmp___74 = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
  if (tmp___74 != 0) {
    val = 1U;
  } else {
    val = 2U;
  }
  _tw32_flush(tp, 1284U, val, 0U);
  if (tp->pci_chip_rev_id >> 12 == 2U && (tp->phy_flags & 16U) != 0U) {
    _tg3_flag_set(35, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  if ((tp->phy_flags & 32U) != 0U && tp->pci_chip_rev_id >> 12 == 9U) {
    tmp___75 = (*(tp->read32))(tp, 1456U);
    (*(tp->write32))(tp, 1456U, tmp___75 | 1024U);
    tp->grc_local_ctrl = tp->grc_local_ctrl & 4294967263U;
    tp->grc_local_ctrl = tp->grc_local_ctrl | 16U;
    (*(tp->write32))(tp, 26632U, tp->grc_local_ctrl);
  } else {
  }
  tmp___78 = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
  if (tmp___78 == 0) {
    if ((int )tp->phy_flags & 1) {
      tp->phy_flags = tp->phy_flags & 4294967294U;
    } else {
    }
    err = tg3_setup_phy(tp, 0);
    if (err != 0) {
      return (err);
    } else {
    }
    if ((tp->phy_flags & 16U) == 0U && (tp->phy_flags & 64U) == 0U) {
      tmp___77 = tg3_readphy(tp, 30, & tmp___76);
      if (tmp___77 == 0) {
        tg3_writephy(tp, 30, tmp___76 | 32768U);
        tg3_readphy(tp, 20, & tmp___76);
      } else {
      }
    } else {
    }
  } else {
  }
  __tg3_set_rx_mode(tp->dev);
  (*(tp->write32))(tp, 1152U, 1107296256U);
  (*(tp->write32))(tp, 1156U, 2147483647U);
  (*(tp->write32))(tp, 1160U, 100663300U);
  (*(tp->write32))(tp, 1164U, 2147483647U);
  tmp___79 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___79 != 0) {
    tmp___80 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___80 == 0) {
      limit = 8;
    } else {
      limit = 16;
    }
  } else {
    limit = 16;
  }
  tmp___81 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
  if (tmp___81 != 0) {
    limit = limit + -4;
  } else {
  }
  switch (limit) {
  case 16:
  (*(tp->write32))(tp, 1272U, 0U);
  (*(tp->write32))(tp, 1276U, 0U);
  case 15:
  (*(tp->write32))(tp, 1264U, 0U);
  (*(tp->write32))(tp, 1268U, 0U);
  case 14:
  (*(tp->write32))(tp, 1256U, 0U);
  (*(tp->write32))(tp, 1260U, 0U);
  case 13:
  (*(tp->write32))(tp, 1248U, 0U);
  (*(tp->write32))(tp, 1252U, 0U);
  case 12:
  (*(tp->write32))(tp, 1240U, 0U);
  (*(tp->write32))(tp, 1244U, 0U);
  case 11:
  (*(tp->write32))(tp, 1232U, 0U);
  (*(tp->write32))(tp, 1236U, 0U);
  case 10:
  (*(tp->write32))(tp, 1224U, 0U);
  (*(tp->write32))(tp, 1228U, 0U);
  case 9:
  (*(tp->write32))(tp, 1216U, 0U);
  (*(tp->write32))(tp, 1220U, 0U);
  case 8:
  (*(tp->write32))(tp, 1208U, 0U);
  (*(tp->write32))(tp, 1212U, 0U);
  case 7:
  (*(tp->write32))(tp, 1200U, 0U);
  (*(tp->write32))(tp, 1204U, 0U);
  case 6:
  (*(tp->write32))(tp, 1192U, 0U);
  (*(tp->write32))(tp, 1196U, 0U);
  case 5:
  (*(tp->write32))(tp, 1184U, 0U);
  (*(tp->write32))(tp, 1188U, 0U);
  case 4: ;
  case 3: ;
  case 2: ;
  case 1: ;
  default: ;
  goto ldv_50207;
  }
  ldv_50207:
  tmp___82 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
  if (tmp___82 != 0) {
    tg3_ape_write32(tp, 16916U, 0U);
  } else {
  }
  tg3_write_sig_post_reset(tp, 1);
  return (0);
}
}
static int tg3_init_hw(struct tg3 *tp , bool reset_phy )
{
  int tmp ;
  {
  tg3_switch_clocks(tp);
  (*(tp->write32))(tp, 124U, 0U);
  tmp = tg3_reset_hw(tp, (int )reset_phy);
  return (tmp);
}
}
static void tg3_sd_scan_scratchpad(struct tg3 *tp , struct tg3_ocir *ocir )
{
  int i ;
  u32 off ;
  u32 len ;
  {
  i = 0;
  goto ldv_50220;
  ldv_50219:
  off = (u32 )((unsigned long )i) * 64U;
  len = 64U;
  tg3_ape_scratchpad_read(tp, (u32 *)ocir, off, len);
  off = off + len;
  if (ocir->signature != 1381188431U || ((int )ocir->version_flags & 1) == 0) {
    memset((void *)ocir, 0, 64UL);
  } else {
  }
  i = i + 1;
  ocir = ocir + 1;
  ldv_50220: ;
  if (i <= 2) {
    goto ldv_50219;
  } else {
  }
  return;
}
}
static ssize_t tg3_show_temp(struct device *dev , struct device_attribute *devattr ,
                             char *buf )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *netdev ;
  void *tmp ;
  struct tg3 *tp ;
  void *tmp___0 ;
  struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr___0 ;
  u32 temperature ;
  int tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  tp = (struct tg3 *)tmp___0;
  __mptr___0 = (struct device_attribute const *)devattr;
  attr = (struct sensor_device_attribute *)__mptr___0;
  spin_lock_bh(& tp->lock);
  tg3_ape_scratchpad_read(tp, & temperature, (u32 )attr->index, 4U);
  spin_unlock_bh(& tp->lock);
  tmp___1 = sprintf(buf, "%u\n", temperature);
  return ((ssize_t )tmp___1);
}
}
static struct sensor_device_attribute sensor_dev_attr_temp1_input = {{{"temp1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & tg3_show_temp, 0}, 212};
static struct sensor_device_attribute sensor_dev_attr_temp1_crit = {{{"temp1_crit", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & tg3_show_temp, 0}, 200};
static struct sensor_device_attribute sensor_dev_attr_temp1_max = {{{"temp1_max", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & tg3_show_temp, 0}, 204};
static struct attribute *tg3_attributes[4U] = { & sensor_dev_attr_temp1_input.dev_attr.attr, & sensor_dev_attr_temp1_crit.dev_attr.attr, & sensor_dev_attr_temp1_max.dev_attr.attr, 0};
static struct attribute_group const tg3_group = {0, 0, (struct attribute **)(& tg3_attributes)};
static void tg3_hwmon_close(struct tg3 *tp )
{
  {
  if ((unsigned long )tp->hwmon_dev != (unsigned long )((struct device *)0)) {
    hwmon_device_unregister(tp->hwmon_dev);
    tp->hwmon_dev = 0;
    sysfs_remove_group(& (tp->pdev)->dev.kobj, & tg3_group);
  } else {
  }
  return;
}
}
static void tg3_hwmon_open(struct tg3 *tp )
{
  int i ;
  int err ;
  u32 size ;
  struct pci_dev *pdev ;
  struct tg3_ocir ocirs[3U] ;
  long tmp ;
  {
  size = 0U;
  pdev = tp->pdev;
  tg3_sd_scan_scratchpad(tp, (struct tg3_ocir *)(& ocirs));
  i = 0;
  goto ldv_50254;
  ldv_50253: ;
  if ((unsigned int )ocirs[i].src_data_length == 0U) {
    goto ldv_50252;
  } else {
  }
  size = (u32 )ocirs[i].src_hdr_length + size;
  size = (u32 )ocirs[i].src_data_length + size;
  ldv_50252:
  i = i + 1;
  ldv_50254: ;
  if (i <= 2) {
    goto ldv_50253;
  } else {
  }
  if (size == 0U) {
    return;
  } else {
  }
  err = sysfs_create_group(& pdev->dev.kobj, & tg3_group);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "Cannot create sysfs group, aborting\n");
    return;
  } else {
  }
  tp->hwmon_dev = hwmon_device_register(& pdev->dev);
  tmp = IS_ERR((void const *)tp->hwmon_dev);
  if (tmp != 0L) {
    tp->hwmon_dev = 0;
    dev_err((struct device const *)(& pdev->dev), "Cannot register hwmon device, aborting\n");
    sysfs_remove_group(& pdev->dev.kobj, & tg3_group);
  } else {
  }
  return;
}
}
static void tg3_periodic_fetch_stats(struct tg3 *tp )
{
  struct tg3_hw_stats *sp ;
  u32 __val ;
  u32 tmp ;
  u32 __val___0 ;
  u32 tmp___0 ;
  u32 __val___1 ;
  u32 tmp___1 ;
  u32 __val___2 ;
  u32 tmp___2 ;
  u32 __val___3 ;
  u32 tmp___3 ;
  u32 __val___4 ;
  u32 tmp___4 ;
  u32 __val___5 ;
  u32 tmp___5 ;
  u32 __val___6 ;
  u32 tmp___6 ;
  u32 __val___7 ;
  u32 tmp___7 ;
  u32 __val___8 ;
  u32 tmp___8 ;
  u32 __val___9 ;
  u32 tmp___9 ;
  u32 __val___10 ;
  u32 tmp___10 ;
  u32 __val___11 ;
  u32 tmp___11 ;
  u32 val ;
  int tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  u32 __val___12 ;
  u32 tmp___15 ;
  u32 __val___13 ;
  u32 tmp___16 ;
  u32 __val___14 ;
  u32 tmp___17 ;
  u32 __val___15 ;
  u32 tmp___18 ;
  u32 __val___16 ;
  u32 tmp___19 ;
  u32 __val___17 ;
  u32 tmp___20 ;
  u32 __val___18 ;
  u32 tmp___21 ;
  u32 __val___19 ;
  u32 tmp___22 ;
  u32 __val___20 ;
  u32 tmp___23 ;
  u32 __val___21 ;
  u32 tmp___24 ;
  u32 __val___22 ;
  u32 tmp___25 ;
  u32 __val___23 ;
  u32 tmp___26 ;
  u32 __val___24 ;
  u32 tmp___27 ;
  u32 __val___25 ;
  u32 tmp___28 ;
  u32 __val___26 ;
  u32 tmp___29 ;
  u32 __val___27 ;
  u32 tmp___30 ;
  u32 val___0 ;
  u32 tmp___31 ;
  u32 __val___28 ;
  u32 tmp___32 ;
  {
  sp = tp->hw_stats;
  if (! tp->link_up) {
    return;
  } else {
  }
  tmp = (*(tp->read32))(tp, 2048U);
  __val = tmp;
  sp->tx_octets.low = sp->tx_octets.low + __val;
  if (sp->tx_octets.low < __val) {
    sp->tx_octets.high = sp->tx_octets.high + 1U;
  } else {
  }
  tmp___0 = (*(tp->read32))(tp, 2056U);
  __val___0 = tmp___0;
  sp->tx_collisions.low = sp->tx_collisions.low + __val___0;
  if (sp->tx_collisions.low < __val___0) {
    sp->tx_collisions.high = sp->tx_collisions.high + 1U;
  } else {
  }
  tmp___1 = (*(tp->read32))(tp, 2060U);
  __val___1 = tmp___1;
  sp->tx_xon_sent.low = sp->tx_xon_sent.low + __val___1;
  if (sp->tx_xon_sent.low < __val___1) {
    sp->tx_xon_sent.high = sp->tx_xon_sent.high + 1U;
  } else {
  }
  tmp___2 = (*(tp->read32))(tp, 2064U);
  __val___2 = tmp___2;
  sp->tx_xoff_sent.low = sp->tx_xoff_sent.low + __val___2;
  if (sp->tx_xoff_sent.low < __val___2) {
    sp->tx_xoff_sent.high = sp->tx_xoff_sent.high + 1U;
  } else {
  }
  tmp___3 = (*(tp->read32))(tp, 2072U);
  __val___3 = tmp___3;
  sp->tx_mac_errors.low = sp->tx_mac_errors.low + __val___3;
  if (sp->tx_mac_errors.low < __val___3) {
    sp->tx_mac_errors.high = sp->tx_mac_errors.high + 1U;
  } else {
  }
  tmp___4 = (*(tp->read32))(tp, 2076U);
  __val___4 = tmp___4;
  sp->tx_single_collisions.low = sp->tx_single_collisions.low + __val___4;
  if (sp->tx_single_collisions.low < __val___4) {
    sp->tx_single_collisions.high = sp->tx_single_collisions.high + 1U;
  } else {
  }
  tmp___5 = (*(tp->read32))(tp, 2080U);
  __val___5 = tmp___5;
  sp->tx_mult_collisions.low = sp->tx_mult_collisions.low + __val___5;
  if (sp->tx_mult_collisions.low < __val___5) {
    sp->tx_mult_collisions.high = sp->tx_mult_collisions.high + 1U;
  } else {
  }
  tmp___6 = (*(tp->read32))(tp, 2084U);
  __val___6 = tmp___6;
  sp->tx_deferred.low = sp->tx_deferred.low + __val___6;
  if (sp->tx_deferred.low < __val___6) {
    sp->tx_deferred.high = sp->tx_deferred.high + 1U;
  } else {
  }
  tmp___7 = (*(tp->read32))(tp, 2092U);
  __val___7 = tmp___7;
  sp->tx_excessive_collisions.low = sp->tx_excessive_collisions.low + __val___7;
  if (sp->tx_excessive_collisions.low < __val___7) {
    sp->tx_excessive_collisions.high = sp->tx_excessive_collisions.high + 1U;
  } else {
  }
  tmp___8 = (*(tp->read32))(tp, 2096U);
  __val___8 = tmp___8;
  sp->tx_late_collisions.low = sp->tx_late_collisions.low + __val___8;
  if (sp->tx_late_collisions.low < __val___8) {
    sp->tx_late_collisions.high = sp->tx_late_collisions.high + 1U;
  } else {
  }
  tmp___9 = (*(tp->read32))(tp, 2156U);
  __val___9 = tmp___9;
  sp->tx_ucast_packets.low = sp->tx_ucast_packets.low + __val___9;
  if (sp->tx_ucast_packets.low < __val___9) {
    sp->tx_ucast_packets.high = sp->tx_ucast_packets.high + 1U;
  } else {
  }
  tmp___10 = (*(tp->read32))(tp, 2160U);
  __val___10 = tmp___10;
  sp->tx_mcast_packets.low = sp->tx_mcast_packets.low + __val___10;
  if (sp->tx_mcast_packets.low < __val___10) {
    sp->tx_mcast_packets.high = sp->tx_mcast_packets.high + 1U;
  } else {
  }
  tmp___11 = (*(tp->read32))(tp, 2164U);
  __val___11 = tmp___11;
  sp->tx_bcast_packets.low = sp->tx_bcast_packets.low + __val___11;
  if (sp->tx_bcast_packets.low < __val___11) {
    sp->tx_bcast_packets.high = sp->tx_bcast_packets.high + 1U;
  } else {
  }
  tmp___12 = _tg3_flag(67, (unsigned long *)(& tp->tg3_flags));
  tmp___13 = ldv__builtin_expect(tmp___12 != 0, 0L);
  if (tmp___13 != 0L) {
    tmp___14 = ldv__builtin_expect((sp->tx_ucast_packets.low + sp->tx_mcast_packets.low) + sp->tx_bcast_packets.low > 4U,
                                0L);
    if (tmp___14 != 0L) {
      val = (*(tp->read32))(tp, 18704U);
      val = val & 4261412863U;
      (*(tp->write32))(tp, 18704U, val);
      _tg3_flag_clear(67, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
  } else {
  }
  tmp___15 = (*(tp->read32))(tp, 2176U);
  __val___12 = tmp___15;
  sp->rx_octets.low = sp->rx_octets.low + __val___12;
  if (sp->rx_octets.low < __val___12) {
    sp->rx_octets.high = sp->rx_octets.high + 1U;
  } else {
  }
  tmp___16 = (*(tp->read32))(tp, 2184U);
  __val___13 = tmp___16;
  sp->rx_fragments.low = sp->rx_fragments.low + __val___13;
  if (sp->rx_fragments.low < __val___13) {
    sp->rx_fragments.high = sp->rx_fragments.high + 1U;
  } else {
  }
  tmp___17 = (*(tp->read32))(tp, 2188U);
  __val___14 = tmp___17;
  sp->rx_ucast_packets.low = sp->rx_ucast_packets.low + __val___14;
  if (sp->rx_ucast_packets.low < __val___14) {
    sp->rx_ucast_packets.high = sp->rx_ucast_packets.high + 1U;
  } else {
  }
  tmp___18 = (*(tp->read32))(tp, 2192U);
  __val___15 = tmp___18;
  sp->rx_mcast_packets.low = sp->rx_mcast_packets.low + __val___15;
  if (sp->rx_mcast_packets.low < __val___15) {
    sp->rx_mcast_packets.high = sp->rx_mcast_packets.high + 1U;
  } else {
  }
  tmp___19 = (*(tp->read32))(tp, 2196U);
  __val___16 = tmp___19;
  sp->rx_bcast_packets.low = sp->rx_bcast_packets.low + __val___16;
  if (sp->rx_bcast_packets.low < __val___16) {
    sp->rx_bcast_packets.high = sp->rx_bcast_packets.high + 1U;
  } else {
  }
  tmp___20 = (*(tp->read32))(tp, 2200U);
  __val___17 = tmp___20;
  sp->rx_fcs_errors.low = sp->rx_fcs_errors.low + __val___17;
  if (sp->rx_fcs_errors.low < __val___17) {
    sp->rx_fcs_errors.high = sp->rx_fcs_errors.high + 1U;
  } else {
  }
  tmp___21 = (*(tp->read32))(tp, 2204U);
  __val___18 = tmp___21;
  sp->rx_align_errors.low = sp->rx_align_errors.low + __val___18;
  if (sp->rx_align_errors.low < __val___18) {
    sp->rx_align_errors.high = sp->rx_align_errors.high + 1U;
  } else {
  }
  tmp___22 = (*(tp->read32))(tp, 2208U);
  __val___19 = tmp___22;
  sp->rx_xon_pause_rcvd.low = sp->rx_xon_pause_rcvd.low + __val___19;
  if (sp->rx_xon_pause_rcvd.low < __val___19) {
    sp->rx_xon_pause_rcvd.high = sp->rx_xon_pause_rcvd.high + 1U;
  } else {
  }
  tmp___23 = (*(tp->read32))(tp, 2212U);
  __val___20 = tmp___23;
  sp->rx_xoff_pause_rcvd.low = sp->rx_xoff_pause_rcvd.low + __val___20;
  if (sp->rx_xoff_pause_rcvd.low < __val___20) {
    sp->rx_xoff_pause_rcvd.high = sp->rx_xoff_pause_rcvd.high + 1U;
  } else {
  }
  tmp___24 = (*(tp->read32))(tp, 2216U);
  __val___21 = tmp___24;
  sp->rx_mac_ctrl_rcvd.low = sp->rx_mac_ctrl_rcvd.low + __val___21;
  if (sp->rx_mac_ctrl_rcvd.low < __val___21) {
    sp->rx_mac_ctrl_rcvd.high = sp->rx_mac_ctrl_rcvd.high + 1U;
  } else {
  }
  tmp___25 = (*(tp->read32))(tp, 2220U);
  __val___22 = tmp___25;
  sp->rx_xoff_entered.low = sp->rx_xoff_entered.low + __val___22;
  if (sp->rx_xoff_entered.low < __val___22) {
    sp->rx_xoff_entered.high = sp->rx_xoff_entered.high + 1U;
  } else {
  }
  tmp___26 = (*(tp->read32))(tp, 2224U);
  __val___23 = tmp___26;
  sp->rx_frame_too_long_errors.low = sp->rx_frame_too_long_errors.low + __val___23;
  if (sp->rx_frame_too_long_errors.low < __val___23) {
    sp->rx_frame_too_long_errors.high = sp->rx_frame_too_long_errors.high + 1U;
  } else {
  }
  tmp___27 = (*(tp->read32))(tp, 2228U);
  __val___24 = tmp___27;
  sp->rx_jabbers.low = sp->rx_jabbers.low + __val___24;
  if (sp->rx_jabbers.low < __val___24) {
    sp->rx_jabbers.high = sp->rx_jabbers.high + 1U;
  } else {
  }
  tmp___28 = (*(tp->read32))(tp, 2232U);
  __val___25 = tmp___28;
  sp->rx_undersize_packets.low = sp->rx_undersize_packets.low + __val___25;
  if (sp->rx_undersize_packets.low < __val___25) {
    sp->rx_undersize_packets.high = sp->rx_undersize_packets.high + 1U;
  } else {
  }
  tmp___29 = (*(tp->read32))(tp, 8780U);
  __val___26 = tmp___29;
  sp->rxbds_empty.low = sp->rxbds_empty.low + __val___26;
  if (sp->rxbds_empty.low < __val___26) {
    sp->rxbds_empty.high = sp->rxbds_empty.high + 1U;
  } else {
  }
  if ((tp->pci_chip_rev_id >> 12 != 22295U && tp->pci_chip_rev_id != 91328512U) && tp->pci_chip_rev_id != 91357184U) {
    tmp___30 = (*(tp->read32))(tp, 8784U);
    __val___27 = tmp___30;
    sp->rx_discards.low = sp->rx_discards.low + __val___27;
    if (sp->rx_discards.low < __val___27) {
      sp->rx_discards.high = sp->rx_discards.high + 1U;
    } else {
    }
  } else {
    tmp___31 = (*(tp->read32))(tp, 15432U);
    val___0 = tmp___31;
    val___0 = (val___0 & 64U) != 0U;
    if (val___0 != 0U) {
      (*(tp->write32))(tp, 15432U, 64U);
      sp->rx_discards.low = sp->rx_discards.low + val___0;
      if (sp->rx_discards.low < val___0) {
        sp->rx_discards.high = sp->rx_discards.high + 1U;
      } else {
      }
    } else {
    }
    sp->mbuf_lwm_thresh_hit = sp->rx_discards;
  }
  tmp___32 = (*(tp->read32))(tp, 8788U);
  __val___28 = tmp___32;
  sp->rx_errors.low = sp->rx_errors.low + __val___28;
  if (sp->rx_errors.low < __val___28) {
    sp->rx_errors.high = sp->rx_errors.high + 1U;
  } else {
  }
  return;
}
}
static void tg3_chk_missed_msi(struct tg3 *tp )
{
  u32 i ;
  struct tg3_napi *tnapi ;
  unsigned int tmp ;
  {
  i = 0U;
  goto ldv_50298;
  ldv_50297:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  tmp = tg3_has_work(tnapi);
  if (tmp != 0U) {
    if (tnapi->last_rx_cons == tnapi->rx_rcb_ptr && tnapi->last_tx_cons == tnapi->tx_cons) {
      if (tnapi->chk_msi_cnt == 0U) {
        tnapi->chk_msi_cnt = tnapi->chk_msi_cnt + 1U;
        return;
      } else {
      }
      tg3_msi(0, (void *)tnapi);
    } else {
    }
  } else {
  }
  tnapi->chk_msi_cnt = 0U;
  tnapi->last_rx_cons = tnapi->rx_rcb_ptr;
  tnapi->last_tx_cons = tnapi->tx_cons;
  i = i + 1U;
  ldv_50298: ;
  if (tp->irq_cnt > i) {
    goto ldv_50297;
  } else {
  }
  return;
}
}
static void tg3_timer(unsigned long __opaque )
{
  struct tg3 *tp ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  u32 mac_stat ;
  int phy_event ;
  u32 mac_stat___0 ;
  u32 tmp___5 ;
  int need_setup ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  {
  tp = (struct tg3 *)__opaque;
  if (tp->irq_sync != 0U) {
    goto restart_timer;
  } else {
    tmp = _tg3_flag(68, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      goto restart_timer;
    } else {
    }
  }
  spin_lock(& tp->lock);
  if (tp->pci_chip_rev_id >> 12 == 22295U) {
    tg3_chk_missed_msi(tp);
  } else {
    tmp___0 = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      tg3_chk_missed_msi(tp);
    } else {
    }
  }
  tmp___1 = _tg3_flag(79, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    (*(tp->read32))(tp, 15360U);
  } else {
  }
  tmp___3 = _tg3_flag(0, (unsigned long *)(& tp->tg3_flags));
  if (tmp___3 == 0) {
    if ((int )(tp->napi[0].hw_status)->status & 1) {
      (*(tp->write32))(tp, 26632U, tp->grc_local_ctrl | 4U);
    } else {
      (*(tp->write32))(tp, 15360U, tp->coalesce_mode | 10U);
    }
    tmp___2 = (*(tp->read32))(tp, 19456U);
    if ((tmp___2 & 2U) == 0U) {
      spin_unlock(& tp->lock);
      tg3_reset_task_schedule(tp);
      goto restart_timer;
    } else {
    }
  } else {
  }
  tp->timer_counter = (u16 )((int )tp->timer_counter - 1);
  if ((unsigned int )tp->timer_counter == 0U) {
    tmp___4 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
    if (tmp___4 != 0) {
      tg3_periodic_fetch_stats(tp);
    } else {
    }
    if (tp->setlpicnt != 0U) {
      tp->setlpicnt = tp->setlpicnt - 1U;
      if (tp->setlpicnt == 0U) {
        tg3_phy_eee_enable(tp);
      } else {
      }
    } else {
    }
    tmp___8 = _tg3_flag(2, (unsigned long *)(& tp->tg3_flags));
    if (tmp___8 != 0) {
      mac_stat = (*(tp->read32))(tp, 1028U);
      phy_event = 0;
      if ((tp->phy_flags & 4U) != 0U) {
        if ((mac_stat & 8388608U) != 0U) {
          phy_event = 1;
        } else {
        }
      } else
      if ((mac_stat & 4096U) != 0U) {
        phy_event = 1;
      } else {
      }
      if (phy_event != 0) {
        tg3_setup_phy(tp, 0);
      } else {
      }
    } else {
      tmp___7 = _tg3_flag(6, (unsigned long *)(& tp->tg3_flags));
      if (tmp___7 != 0) {
        tmp___5 = (*(tp->read32))(tp, 1028U);
        mac_stat___0 = tmp___5;
        need_setup = 0;
        if ((int )tp->link_up && (mac_stat___0 & 4096U) != 0U) {
          need_setup = 1;
        } else {
        }
        if (! tp->link_up && (mac_stat___0 & 3U) != 0U) {
          need_setup = 1;
        } else {
        }
        if (need_setup != 0) {
          if (tp->serdes_counter == 0U) {
            _tw32_flush(tp, 1024U, tp->mac_mode & 4294967283U, 0U);
            __const_udelay(171800UL);
            _tw32_flush(tp, 1024U, tp->mac_mode, 0U);
            __const_udelay(171800UL);
          } else {
          }
          tg3_setup_phy(tp, 0);
        } else {
        }
      } else
      if ((tp->phy_flags & 32U) != 0U) {
        tmp___6 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
        if (tmp___6 != 0) {
          tg3_serdes_parallel_detect(tp);
        } else {
        }
      } else {
      }
    }
    tp->timer_counter = tp->timer_multiplier;
  } else {
  }
  tp->asf_counter = (u16 )((int )tp->asf_counter - 1);
  if ((unsigned int )tp->asf_counter == 0U) {
    tmp___9 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
    if (tmp___9 != 0) {
      tmp___10 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
      if (tmp___10 == 0) {
        tg3_wait_for_event_ack(tp);
        tg3_write_mem(tp, 2936U, 14U);
        tg3_write_mem(tp, 2940U, 4U);
        tg3_write_mem(tp, 2944U, 5U);
        tg3_generate_fw_event(tp);
      } else {
      }
    } else {
    }
    tp->asf_counter = tp->asf_multiplier;
  } else {
  }
  spin_unlock(& tp->lock);
  restart_timer:
  tp->timer.expires = (unsigned long )tp->timer_offset + (unsigned long )jiffies;
  add_timer(& tp->timer);
  return;
}
}
static void tg3_timer_init(struct tg3 *tp )
{
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  struct lock_class_key __key ;
  {
  tmp = _tg3_flag(0, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0 && tp->pci_chip_rev_id >> 12 != 22295U) {
    tmp___0 = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 == 0) {
      tp->timer_offset = 250U;
    } else {
      tp->timer_offset = 25U;
    }
  } else {
    tp->timer_offset = 25U;
  }
  tmp___1 = ldv__builtin_expect(tp->timer_offset > 250U, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8512/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/broadcom/tg3.c.prepared"),
                         "i" (10725), "i" (12UL));
    ldv_50312: ;
    goto ldv_50312;
  } else {
  }
  tp->timer_multiplier = (u16 )(250U / tp->timer_offset);
  tp->asf_multiplier = (unsigned int )((u16 )(250U / tp->timer_offset)) * 2U;
  init_timer_key(& tp->timer, 0U, "(&tp->timer)", & __key);
  tp->timer.data = (unsigned long )tp;
  tp->timer.function = & tg3_timer;
  return;
}
}
static void tg3_timer_start(struct tg3 *tp )
{
  {
  tp->asf_counter = tp->asf_multiplier;
  tp->timer_counter = tp->timer_multiplier;
  tp->timer.expires = (unsigned long )tp->timer_offset + (unsigned long )jiffies;
  add_timer(& tp->timer);
  return;
}
}
static void tg3_timer_stop(struct tg3 *tp )
{
  {
  del_timer_sync(& tp->timer);
  return;
}
}
static int tg3_restart_hw(struct tg3 *tp , bool reset_phy )
{
  int err ;
  {
  err = tg3_init_hw(tp, (int )reset_phy);
  if (err != 0) {
    netdev_err((struct net_device const *)tp->dev, "Failed to re-initialize device, aborting\n");
    tg3_halt(tp, 0, 1);
    tg3_full_unlock(tp);
    tg3_timer_stop(tp);
    tp->irq_sync = 0U;
    tg3_napi_enable(tp);
    dev_close(tp->dev);
    tg3_full_lock(tp, 0);
  } else {
  }
  return (err);
}
}
static void tg3_reset_task(struct work_struct *work )
{
  struct tg3 *tp ;
  struct work_struct const *__mptr ;
  int err ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct work_struct const *)work;
  tp = (struct tg3 *)__mptr + 0xffffffffffffee90UL;
  tg3_full_lock(tp, 0);
  tmp = netif_running((struct net_device const *)tp->dev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    _tg3_flag_clear(68, (unsigned long *)(& tp->tg3_flags));
    tg3_full_unlock(tp);
    return;
  } else {
  }
  tg3_full_unlock(tp);
  tg3_phy_stop(tp);
  tg3_netif_stop(tp);
  tg3_full_lock(tp, 1);
  tmp___1 = _tg3_flag(22, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    tp->write32_tx_mbox = & tg3_write32_tx_mbox;
    tp->write32_rx_mbox = & tg3_write_flush_reg32;
    _tg3_flag_set(7, (unsigned long *)(& tp->tg3_flags));
    _tg3_flag_clear(22, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  tg3_halt(tp, 0, 0);
  err = tg3_init_hw(tp, 1);
  if (err != 0) {
    goto out;
  } else {
  }
  tg3_netif_start(tp);
  out:
  tg3_full_unlock(tp);
  if (err == 0) {
    tg3_phy_start(tp);
  } else {
  }
  _tg3_flag_clear(68, (unsigned long *)(& tp->tg3_flags));
  return;
}
}
static int tg3_request_irq(struct tg3 *tp , int irq_num )
{
  irqreturn_t (*fn)(int , void * ) ;
  unsigned long flags ;
  char *name ;
  struct tg3_napi *tnapi ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )irq_num;
  if (tp->irq_cnt == 1U) {
    name = (char *)(& (tp->dev)->name);
  } else {
    name = (char *)(& tnapi->irq_lbl);
    snprintf(name, 16UL, "%s-%d", (char *)(& (tp->dev)->name), irq_num);
    *(name + 15UL) = 0;
  }
  tmp___1 = _tg3_flag(16, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    goto _L;
  } else {
    tmp___2 = _tg3_flag(17, (unsigned long *)(& tp->tg3_flags));
    if (tmp___2 != 0) {
      _L:
      fn = & tg3_msi;
      tmp = _tg3_flag(45, (unsigned long *)(& tp->tg3_flags));
      if (tmp != 0) {
        fn = & tg3_msi_1shot;
      } else {
      }
      flags = 0UL;
    } else {
      fn = & tg3_interrupt;
      tmp___0 = _tg3_flag(0, (unsigned long *)(& tp->tg3_flags));
      if (tmp___0 != 0) {
        fn = & tg3_interrupt_tagged;
      } else {
      }
      flags = 128UL;
    }
  }
  tmp___3 = request_irq(tnapi->irq_vec, fn, flags, (char const *)name, (void *)tnapi);
  return (tmp___3);
}
}
static int tg3_test_interrupt(struct tg3 *tp )
{
  struct tg3_napi *tnapi ;
  struct net_device *dev ;
  int err ;
  int i ;
  int intr_ok ;
  u32 val ;
  bool tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  u32 int_mbox ;
  u32 misc_host_ctrl ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  tnapi = (struct tg3_napi *)(& tp->napi);
  dev = tp->dev;
  intr_ok = 0;
  tmp = netif_running((struct net_device const *)dev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-19);
  } else {
  }
  tg3_disable_ints(tp);
  free_irq(tnapi->irq_vec, (void *)tnapi);
  tmp___2 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    tmp___1 = (*(tp->read32))(tp, 24576U);
    val = tmp___1 | 32U;
    (*(tp->write32))(tp, 24576U, val);
  } else {
  }
  err = request_irq(tnapi->irq_vec, & tg3_test_isr, 128UL, (char const *)(& dev->name),
                    (void *)tnapi);
  if (err != 0) {
    return (err);
  } else {
  }
  (tnapi->hw_status)->status = (tnapi->hw_status)->status & 4294967294U;
  tg3_enable_ints(tp);
  _tw32_flush(tp, 15360U, (tp->coalesce_mode | tnapi->coal_now) | 2U, 0U);
  i = 0;
  goto ldv_50354;
  ldv_50353:
  int_mbox = (*(tp->read32_mbox))(tp, tnapi->int_mbox);
  misc_host_ctrl = (*(tp->read32))(tp, 104U);
  if (int_mbox != 0U || (misc_host_ctrl & 2U) != 0U) {
    intr_ok = 1;
    goto ldv_50352;
  } else {
  }
  tmp___3 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
  if (tmp___3 != 0 && (tnapi->hw_status)->status_tag != tnapi->last_tag) {
    tw32_mailbox_flush(tp, tnapi->int_mbox, tnapi->last_tag << 24);
  } else {
  }
  msleep(10U);
  i = i + 1;
  ldv_50354: ;
  if (i <= 4) {
    goto ldv_50353;
  } else {
  }
  ldv_50352:
  tg3_disable_ints(tp);
  free_irq(tnapi->irq_vec, (void *)tnapi);
  err = tg3_request_irq(tp, 0);
  if (err != 0) {
    return (err);
  } else {
  }
  if (intr_ok != 0) {
    tmp___5 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
    if (tmp___5 != 0) {
      tmp___6 = _tg3_flag(45, (unsigned long *)(& tp->tg3_flags));
      if (tmp___6 != 0) {
        tmp___4 = (*(tp->read32))(tp, 24576U);
        val = tmp___4 & 4294967263U;
        (*(tp->write32))(tp, 24576U, val);
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  return (-5);
}
}
static int tg3_test_msi(struct tg3 *tp )
{
  int err ;
  u16 pci_cmd ;
  int tmp ;
  {
  tmp = _tg3_flag(16, (unsigned long *)(& tp->tg3_flags));
  if (tmp == 0) {
    return (0);
  } else {
  }
  pci_read_config_word((struct pci_dev const *)tp->pdev, 4, & pci_cmd);
  pci_write_config_word((struct pci_dev const *)tp->pdev, 4, (int )pci_cmd & 65279);
  err = tg3_test_interrupt(tp);
  pci_write_config_word((struct pci_dev const *)tp->pdev, 4, (int )pci_cmd);
  if (err == 0) {
    return (0);
  } else {
  }
  if (err != -5) {
    return (err);
  } else {
  }
  netdev_warn((struct net_device const *)tp->dev, "No interrupt was generated using MSI. Switching to INTx mode. Please report this failure to the PCI maintainer and include system chipset information\n");
  free_irq(tp->napi[0].irq_vec, (void *)(& tp->napi));
  pci_disable_msi(tp->pdev);
  _tg3_flag_clear(16, (unsigned long *)(& tp->tg3_flags));
  tp->napi[0].irq_vec = (tp->pdev)->irq;
  err = tg3_request_irq(tp, 0);
  if (err != 0) {
    return (err);
  } else {
  }
  tg3_full_lock(tp, 1);
  tg3_halt(tp, 0, 1);
  err = tg3_init_hw(tp, 1);
  tg3_full_unlock(tp);
  if (err != 0) {
    free_irq(tp->napi[0].irq_vec, (void *)(& tp->napi));
  } else {
  }
  return (err);
}
}
static int tg3_request_firmware(struct tg3 *tp )
{
  struct tg3_firmware_hdr const *fw_hdr ;
  int tmp ;
  __u32 tmp___0 ;
  {
  tmp = request_firmware(& tp->fw, tp->fw_needed, & (tp->pdev)->dev);
  if (tmp != 0) {
    netdev_err((struct net_device const *)tp->dev, "Failed to load firmware \"%s\"\n",
               tp->fw_needed);
    return (-2);
  } else {
  }
  fw_hdr = (struct tg3_firmware_hdr const *)(tp->fw)->data;
  tmp___0 = __fswab32(fw_hdr->len);
  tp->fw_len = tmp___0;
  if ((unsigned long )tp->fw_len < (unsigned long )(tp->fw)->size - 12UL) {
    netdev_err((struct net_device const *)tp->dev, "bogus length %d in \"%s\"\n",
               tp->fw_len, tp->fw_needed);
    release_firmware(tp->fw);
    tp->fw = 0;
    return (-22);
  } else {
  }
  tp->fw_needed = 0;
  return (0);
}
}
static u32 tg3_irq_count(struct tg3 *tp )
{
  u32 irq_cnt ;
  u32 _max1 ;
  u32 _max2 ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  {
  _max1 = tp->rxq_cnt;
  _max2 = tp->txq_cnt;
  irq_cnt = _max1 > _max2 ? _max1 : _max2;
  if (irq_cnt > 1U) {
    __min1 = irq_cnt + 1U;
    __min2 = tp->irq_max;
    irq_cnt = __min1 < __min2 ? __min1 : __min2;
  } else {
  }
  return (irq_cnt);
}
}
static bool tg3_enable_msix(struct tg3 *tp )
{
  int i ;
  int rc ;
  struct msix_entry msix_ent[5U] ;
  int tmp ;
  int tmp___0 ;
  int _max1 ;
  int _max2 ;
  u32 _min1 ;
  u32 _min2 ;
  int tmp___1 ;
  {
  tp->txq_cnt = tp->txq_req;
  tp->rxq_cnt = tp->rxq_req;
  if (tp->rxq_cnt == 0U) {
    tmp = netif_get_num_default_rss_queues();
    tp->rxq_cnt = (u32 )tmp;
  } else {
  }
  if (tp->rxq_cnt > tp->rxq_max) {
    tp->rxq_cnt = tp->rxq_max;
  } else {
  }
  if (tp->txq_req == 0U) {
    tp->txq_cnt = 1U;
  } else {
  }
  tp->irq_cnt = tg3_irq_count(tp);
  i = 0;
  goto ldv_50381;
  ldv_50380:
  msix_ent[i].entry = (u16 )i;
  msix_ent[i].vector = 0U;
  i = i + 1;
  ldv_50381: ;
  if ((unsigned int )i < tp->irq_max) {
    goto ldv_50380;
  } else {
  }
  rc = pci_enable_msix(tp->pdev, (struct msix_entry *)(& msix_ent), (int )tp->irq_cnt);
  if (rc < 0) {
    return (0);
  } else
  if (rc != 0) {
    tmp___0 = pci_enable_msix(tp->pdev, (struct msix_entry *)(& msix_ent), rc);
    if (tmp___0 != 0) {
      return (0);
    } else {
    }
    netdev_notice((struct net_device const *)tp->dev, "Requested %d MSI-X vectors, received %d\n",
                  tp->irq_cnt, rc);
    tp->irq_cnt = (unsigned int )rc;
    _max1 = rc + -1;
    _max2 = 1;
    tp->rxq_cnt = (u32 )(_max1 > _max2 ? _max1 : _max2);
    if (tp->txq_cnt != 0U) {
      _min1 = tp->rxq_cnt;
      _min2 = tp->txq_max;
      tp->txq_cnt = _min1 < _min2 ? _min1 : _min2;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_50390;
  ldv_50389:
  tp->napi[i].irq_vec = msix_ent[i].vector;
  i = i + 1;
  ldv_50390: ;
  if ((unsigned int )i < tp->irq_max) {
    goto ldv_50389;
  } else {
  }
  tmp___1 = netif_set_real_num_rx_queues(tp->dev, tp->rxq_cnt);
  if (tmp___1 != 0) {
    pci_disable_msix(tp->pdev);
    return (0);
  } else {
  }
  if (tp->irq_cnt == 1U) {
    return (1);
  } else {
  }
  _tg3_flag_set(59, (unsigned long *)(& tp->tg3_flags));
  if (tp->txq_cnt > 1U) {
    _tg3_flag_set(60, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  netif_set_real_num_tx_queues(tp->dev, tp->txq_cnt);
  return (1);
}
}
static void tg3_ints_init(struct tg3 *tp )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  u32 msi_mode ;
  u32 tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  {
  tmp = _tg3_flag(14, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    goto _L;
  } else {
    tmp___0 = _tg3_flag(15, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      _L:
      tmp___1 = _tg3_flag(0, (unsigned long *)(& tp->tg3_flags));
      if (tmp___1 == 0) {
        netdev_warn((struct net_device const *)tp->dev, "MSI without TAGGED_STATUS? Not using MSI\n");
        goto defcfg;
      } else {
      }
    } else {
    }
  }
  tmp___4 = _tg3_flag(15, (unsigned long *)(& tp->tg3_flags));
  if (tmp___4 != 0) {
    tmp___5 = tg3_enable_msix(tp);
    if ((int )tmp___5) {
      _tg3_flag_set(17, (unsigned long *)(& tp->tg3_flags));
    } else {
      goto _L___0;
    }
  } else {
    _L___0:
    tmp___2 = _tg3_flag(14, (unsigned long *)(& tp->tg3_flags));
    if (tmp___2 != 0) {
      tmp___3 = pci_enable_msi_block(tp->pdev, 1U);
      if (tmp___3 == 0) {
        _tg3_flag_set(16, (unsigned long *)(& tp->tg3_flags));
      } else {
      }
    } else {
    }
  }
  tmp___9 = _tg3_flag(16, (unsigned long *)(& tp->tg3_flags));
  if (tmp___9 != 0) {
    goto _L___1;
  } else {
    tmp___10 = _tg3_flag(17, (unsigned long *)(& tp->tg3_flags));
    if (tmp___10 != 0) {
      _L___1:
      tmp___6 = (*(tp->read32))(tp, 24576U);
      msi_mode = tmp___6;
      tmp___7 = _tg3_flag(17, (unsigned long *)(& tp->tg3_flags));
      if (tmp___7 != 0 && tp->irq_cnt > 1U) {
        msi_mode = msi_mode | 128U;
      } else {
      }
      tmp___8 = _tg3_flag(45, (unsigned long *)(& tp->tg3_flags));
      if (tmp___8 == 0) {
        msi_mode = msi_mode | 32U;
      } else {
      }
      (*(tp->write32))(tp, 24576U, msi_mode | 2U);
    } else {
    }
  }
  defcfg:
  tmp___11 = _tg3_flag(17, (unsigned long *)(& tp->tg3_flags));
  if (tmp___11 == 0) {
    tp->irq_cnt = 1U;
    tp->napi[0].irq_vec = (tp->pdev)->irq;
  } else {
  }
  if (tp->irq_cnt == 1U) {
    tp->txq_cnt = 1U;
    tp->rxq_cnt = 1U;
    netif_set_real_num_tx_queues(tp->dev, 1U);
    netif_set_real_num_rx_queues(tp->dev, 1U);
  } else {
  }
  return;
}
}
static void tg3_ints_fini(struct tg3 *tp )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = _tg3_flag(17, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    pci_disable_msix(tp->pdev);
  } else {
    tmp = _tg3_flag(16, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      pci_disable_msi(tp->pdev);
    } else {
    }
  }
  _tg3_flag_clear(16, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_clear(17, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_clear(59, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_clear(60, (unsigned long *)(& tp->tg3_flags));
  return;
}
}
static int tg3_start(struct tg3 *tp , bool reset_phy , bool test_irq , bool init )
{
  struct net_device *dev ;
  int i ;
  int err ;
  struct tg3_napi *tnapi ;
  u32 val ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct tg3_napi *tnapi___0 ;
  {
  dev = tp->dev;
  tg3_ints_init(tp);
  tg3_rss_check_indir_tbl(tp);
  err = tg3_alloc_consistent(tp);
  if (err != 0) {
    goto err_out1;
  } else {
  }
  tg3_napi_init(tp);
  tg3_napi_enable(tp);
  i = 0;
  goto ldv_50416;
  ldv_50415:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  err = tg3_request_irq(tp, i);
  if (err != 0) {
    i = i - 1;
    goto ldv_50412;
    ldv_50411:
    tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
    free_irq(tnapi->irq_vec, (void *)tnapi);
    i = i - 1;
    ldv_50412: ;
    if (i >= 0) {
      goto ldv_50411;
    } else {
    }
    goto err_out2;
  } else {
  }
  i = i + 1;
  ldv_50416: ;
  if ((unsigned int )i < tp->irq_cnt) {
    goto ldv_50415;
  } else {
  }
  tg3_full_lock(tp, 0);
  err = tg3_init_hw(tp, (int )reset_phy);
  if (err != 0) {
    tg3_halt(tp, 0, 1);
    tg3_free_rings(tp);
  } else {
  }
  tg3_full_unlock(tp);
  if (err != 0) {
    goto err_out3;
  } else {
  }
  if ((int )test_irq) {
    tmp___2 = _tg3_flag(16, (unsigned long *)(& tp->tg3_flags));
    if (tmp___2 != 0) {
      err = tg3_test_msi(tp);
      if (err != 0) {
        tg3_full_lock(tp, 0);
        tg3_halt(tp, 0, 1);
        tg3_free_rings(tp);
        tg3_full_unlock(tp);
        goto err_out2;
      } else {
      }
      tmp___0 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
      if (tmp___0 == 0) {
        tmp___1 = _tg3_flag(16, (unsigned long *)(& tp->tg3_flags));
        if (tmp___1 != 0) {
          tmp = (*(tp->read32))(tp, 31748U);
          val = tmp;
          (*(tp->write32))(tp, 31748U, val | 536870912U);
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  tg3_phy_start(tp);
  tg3_hwmon_open(tp);
  tg3_full_lock(tp, 0);
  tg3_timer_start(tp);
  _tg3_flag_set(31, (unsigned long *)(& tp->tg3_flags));
  tg3_enable_ints(tp);
  if ((int )init) {
    tg3_ptp_init(tp);
  } else {
    tg3_ptp_resume(tp);
  }
  tg3_full_unlock(tp);
  netif_tx_start_all_queues(dev);
  if ((dev->features & 2147483648ULL) != 0ULL) {
    tg3_set_loopback(dev, dev->features);
  } else {
  }
  return (0);
  err_out3:
  i = (int )(tp->irq_cnt - 1U);
  goto ldv_50422;
  ldv_50421:
  tnapi___0 = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  free_irq(tnapi___0->irq_vec, (void *)tnapi___0);
  i = i - 1;
  ldv_50422: ;
  if (i >= 0) {
    goto ldv_50421;
  } else {
  }
  err_out2:
  tg3_napi_disable(tp);
  tg3_napi_fini(tp);
  tg3_free_consistent(tp);
  err_out1:
  tg3_ints_fini(tp);
  return (err);
}
}
static void tg3_stop(struct tg3 *tp )
{
  int i ;
  struct tg3_napi *tnapi ;
  {
  tg3_reset_task_cancel(tp);
  tg3_netif_stop(tp);
  tg3_timer_stop(tp);
  tg3_hwmon_close(tp);
  tg3_phy_stop(tp);
  tg3_full_lock(tp, 1);
  tg3_disable_ints(tp);
  tg3_halt(tp, 0, 1);
  tg3_free_rings(tp);
  _tg3_flag_clear(31, (unsigned long *)(& tp->tg3_flags));
  tg3_full_unlock(tp);
  i = (int )(tp->irq_cnt - 1U);
  goto ldv_50430;
  ldv_50429:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  free_irq(tnapi->irq_vec, (void *)tnapi);
  i = i - 1;
  ldv_50430: ;
  if (i >= 0) {
    goto ldv_50429;
  } else {
  }
  tg3_ints_fini(tp);
  tg3_napi_fini(tp);
  tg3_free_consistent(tp);
  return;
}
}
static int tg3_open(struct net_device *dev )
{
  struct tg3 *tp ;
  void *tmp ;
  int err ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  if ((unsigned long )tp->fw_needed != (unsigned long )((char const *)0)) {
    err = tg3_request_firmware(tp);
    if (tp->pci_chip_rev_id >> 12 == 358246U) {
      if (err != 0) {
        netdev_warn((struct net_device const *)tp->dev, "EEE capability disabled\n");
        tp->phy_flags = tp->phy_flags & 4294705151U;
      } else
      if ((tp->phy_flags & 262144U) == 0U) {
        netdev_warn((struct net_device const *)tp->dev, "EEE capability restored\n");
        tp->phy_flags = tp->phy_flags | 262144U;
      } else {
      }
    } else
    if (tp->pci_chip_rev_id == 0U) {
      if (err != 0) {
        return (err);
      } else {
      }
    } else
    if (err != 0) {
      netdev_warn((struct net_device const *)tp->dev, "TSO capability disabled\n");
      _tg3_flag_clear(42, (unsigned long *)(& tp->tg3_flags));
    } else {
      tmp___0 = _tg3_flag(42, (unsigned long *)(& tp->tg3_flags));
      if (tmp___0 == 0) {
        netdev_notice((struct net_device const *)tp->dev, "TSO capability restored\n");
        _tg3_flag_set(42, (unsigned long *)(& tp->tg3_flags));
      } else {
      }
    }
  } else {
  }
  tg3_carrier_off(tp);
  err = tg3_power_up(tp);
  if (err != 0) {
    return (err);
  } else {
  }
  tg3_full_lock(tp, 0);
  tg3_disable_ints(tp);
  _tg3_flag_clear(31, (unsigned long *)(& tp->tg3_flags));
  tg3_full_unlock(tp);
  err = tg3_start(tp, (tp->phy_flags & 1048576U) == 0U, 1, 1);
  if (err != 0) {
    tg3_frob_aux_power(tp, 0);
    pci_set_power_state(tp->pdev, 3);
  } else {
  }
  tmp___2 = _tg3_flag(69, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    tp->ptp_clock = ptp_clock_register(& tp->ptp_info, & (tp->pdev)->dev);
    tmp___1 = IS_ERR((void const *)tp->ptp_clock);
    if (tmp___1 != 0L) {
      tp->ptp_clock = 0;
    } else {
    }
  } else {
  }
  return (err);
}
}
static int tg3_close(struct net_device *dev )
{
  struct tg3 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tg3_ptp_fini(tp);
  tg3_stop(tp);
  memset((void *)(& tp->net_stats_prev), 0, 184UL);
  memset((void *)(& tp->estats_prev), 0, 576UL);
  tg3_power_down(tp);
  tg3_carrier_off(tp);
  return (0);
}
}
__inline static u64 get_stat64(tg3_stat64_t *val )
{
  {
  return (((unsigned long long )val->high << 32) | (unsigned long long )val->low);
}
}
static u64 tg3_calc_crc_errors(struct tg3 *tp )
{
  struct tg3_hw_stats *hw_stats ;
  u32 val ;
  int tmp ;
  u64 tmp___0 ;
  {
  hw_stats = tp->hw_stats;
  if ((tp->phy_flags & 16U) == 0U && (tp->pci_chip_rev_id >> 12 == 7U || tp->pci_chip_rev_id >> 12 == 0U)) {
    tmp = tg3_readphy(tp, 30, & val);
    if (tmp == 0) {
      tg3_writephy(tp, 30, val | 32768U);
      tg3_readphy(tp, 20, & val);
    } else {
      val = 0U;
    }
    tp->ldv_47846.phy_crc_errors = tp->ldv_47846.phy_crc_errors + (unsigned long )val;
    return ((u64 )tp->ldv_47846.phy_crc_errors);
  } else {
  }
  tmp___0 = get_stat64(& hw_stats->rx_fcs_errors);
  return (tmp___0);
}
}
static void tg3_get_estats(struct tg3 *tp , struct tg3_ethtool_stats *estats )
{
  struct tg3_ethtool_stats *old_estats ;
  struct tg3_hw_stats *hw_stats ;
  u64 tmp ;
  u64 tmp___0 ;
  u64 tmp___1 ;
  u64 tmp___2 ;
  u64 tmp___3 ;
  u64 tmp___4 ;
  u64 tmp___5 ;
  u64 tmp___6 ;
  u64 tmp___7 ;
  u64 tmp___8 ;
  u64 tmp___9 ;
  u64 tmp___10 ;
  u64 tmp___11 ;
  u64 tmp___12 ;
  u64 tmp___13 ;
  u64 tmp___14 ;
  u64 tmp___15 ;
  u64 tmp___16 ;
  u64 tmp___17 ;
  u64 tmp___18 ;
  u64 tmp___19 ;
  u64 tmp___20 ;
  u64 tmp___21 ;
  u64 tmp___22 ;
  u64 tmp___23 ;
  u64 tmp___24 ;
  u64 tmp___25 ;
  u64 tmp___26 ;
  u64 tmp___27 ;
  u64 tmp___28 ;
  u64 tmp___29 ;
  u64 tmp___30 ;
  u64 tmp___31 ;
  u64 tmp___32 ;
  u64 tmp___33 ;
  u64 tmp___34 ;
  u64 tmp___35 ;
  u64 tmp___36 ;
  u64 tmp___37 ;
  u64 tmp___38 ;
  u64 tmp___39 ;
  u64 tmp___40 ;
  u64 tmp___41 ;
  u64 tmp___42 ;
  u64 tmp___43 ;
  u64 tmp___44 ;
  u64 tmp___45 ;
  u64 tmp___46 ;
  u64 tmp___47 ;
  u64 tmp___48 ;
  u64 tmp___49 ;
  u64 tmp___50 ;
  u64 tmp___51 ;
  u64 tmp___52 ;
  u64 tmp___53 ;
  u64 tmp___54 ;
  u64 tmp___55 ;
  u64 tmp___56 ;
  u64 tmp___57 ;
  u64 tmp___58 ;
  u64 tmp___59 ;
  u64 tmp___60 ;
  u64 tmp___61 ;
  u64 tmp___62 ;
  u64 tmp___63 ;
  u64 tmp___64 ;
  u64 tmp___65 ;
  u64 tmp___66 ;
  u64 tmp___67 ;
  u64 tmp___68 ;
  u64 tmp___69 ;
  u64 tmp___70 ;
  {
  old_estats = & tp->estats_prev;
  hw_stats = tp->hw_stats;
  tmp = get_stat64(& hw_stats->rx_octets);
  estats->rx_octets = old_estats->rx_octets + tmp;
  tmp___0 = get_stat64(& hw_stats->rx_fragments);
  estats->rx_fragments = old_estats->rx_fragments + tmp___0;
  tmp___1 = get_stat64(& hw_stats->rx_ucast_packets);
  estats->rx_ucast_packets = old_estats->rx_ucast_packets + tmp___1;
  tmp___2 = get_stat64(& hw_stats->rx_mcast_packets);
  estats->rx_mcast_packets = old_estats->rx_mcast_packets + tmp___2;
  tmp___3 = get_stat64(& hw_stats->rx_bcast_packets);
  estats->rx_bcast_packets = old_estats->rx_bcast_packets + tmp___3;
  tmp___4 = get_stat64(& hw_stats->rx_fcs_errors);
  estats->rx_fcs_errors = old_estats->rx_fcs_errors + tmp___4;
  tmp___5 = get_stat64(& hw_stats->rx_align_errors);
  estats->rx_align_errors = old_estats->rx_align_errors + tmp___5;
  tmp___6 = get_stat64(& hw_stats->rx_xon_pause_rcvd);
  estats->rx_xon_pause_rcvd = old_estats->rx_xon_pause_rcvd + tmp___6;
  tmp___7 = get_stat64(& hw_stats->rx_xoff_pause_rcvd);
  estats->rx_xoff_pause_rcvd = old_estats->rx_xoff_pause_rcvd + tmp___7;
  tmp___8 = get_stat64(& hw_stats->rx_mac_ctrl_rcvd);
  estats->rx_mac_ctrl_rcvd = old_estats->rx_mac_ctrl_rcvd + tmp___8;
  tmp___9 = get_stat64(& hw_stats->rx_xoff_entered);
  estats->rx_xoff_entered = old_estats->rx_xoff_entered + tmp___9;
  tmp___10 = get_stat64(& hw_stats->rx_frame_too_long_errors);
  estats->rx_frame_too_long_errors = old_estats->rx_frame_too_long_errors + tmp___10;
  tmp___11 = get_stat64(& hw_stats->rx_jabbers);
  estats->rx_jabbers = old_estats->rx_jabbers + tmp___11;
  tmp___12 = get_stat64(& hw_stats->rx_undersize_packets);
  estats->rx_undersize_packets = old_estats->rx_undersize_packets + tmp___12;
  tmp___13 = get_stat64(& hw_stats->rx_in_length_errors);
  estats->rx_in_length_errors = old_estats->rx_in_length_errors + tmp___13;
  tmp___14 = get_stat64(& hw_stats->rx_out_length_errors);
  estats->rx_out_length_errors = old_estats->rx_out_length_errors + tmp___14;
  tmp___15 = get_stat64(& hw_stats->rx_64_or_less_octet_packets);
  estats->rx_64_or_less_octet_packets = old_estats->rx_64_or_less_octet_packets + tmp___15;
  tmp___16 = get_stat64(& hw_stats->rx_65_to_127_octet_packets);
  estats->rx_65_to_127_octet_packets = old_estats->rx_65_to_127_octet_packets + tmp___16;
  tmp___17 = get_stat64(& hw_stats->rx_128_to_255_octet_packets);
  estats->rx_128_to_255_octet_packets = old_estats->rx_128_to_255_octet_packets + tmp___17;
  tmp___18 = get_stat64(& hw_stats->rx_256_to_511_octet_packets);
  estats->rx_256_to_511_octet_packets = old_estats->rx_256_to_511_octet_packets + tmp___18;
  tmp___19 = get_stat64(& hw_stats->rx_512_to_1023_octet_packets);
  estats->rx_512_to_1023_octet_packets = old_estats->rx_512_to_1023_octet_packets + tmp___19;
  tmp___20 = get_stat64(& hw_stats->rx_1024_to_1522_octet_packets);
  estats->rx_1024_to_1522_octet_packets = old_estats->rx_1024_to_1522_octet_packets + tmp___20;
  tmp___21 = get_stat64(& hw_stats->rx_1523_to_2047_octet_packets);
  estats->rx_1523_to_2047_octet_packets = old_estats->rx_1523_to_2047_octet_packets + tmp___21;
  tmp___22 = get_stat64(& hw_stats->rx_2048_to_4095_octet_packets);
  estats->rx_2048_to_4095_octet_packets = old_estats->rx_2048_to_4095_octet_packets + tmp___22;
  tmp___23 = get_stat64(& hw_stats->rx_4096_to_8191_octet_packets);
  estats->rx_4096_to_8191_octet_packets = old_estats->rx_4096_to_8191_octet_packets + tmp___23;
  tmp___24 = get_stat64(& hw_stats->rx_8192_to_9022_octet_packets);
  estats->rx_8192_to_9022_octet_packets = old_estats->rx_8192_to_9022_octet_packets + tmp___24;
  tmp___25 = get_stat64(& hw_stats->tx_octets);
  estats->tx_octets = old_estats->tx_octets + tmp___25;
  tmp___26 = get_stat64(& hw_stats->tx_collisions);
  estats->tx_collisions = old_estats->tx_collisions + tmp___26;
  tmp___27 = get_stat64(& hw_stats->tx_xon_sent);
  estats->tx_xon_sent = old_estats->tx_xon_sent + tmp___27;
  tmp___28 = get_stat64(& hw_stats->tx_xoff_sent);
  estats->tx_xoff_sent = old_estats->tx_xoff_sent + tmp___28;
  tmp___29 = get_stat64(& hw_stats->tx_flow_control);
  estats->tx_flow_control = old_estats->tx_flow_control + tmp___29;
  tmp___30 = get_stat64(& hw_stats->tx_mac_errors);
  estats->tx_mac_errors = old_estats->tx_mac_errors + tmp___30;
  tmp___31 = get_stat64(& hw_stats->tx_single_collisions);
  estats->tx_single_collisions = old_estats->tx_single_collisions + tmp___31;
  tmp___32 = get_stat64(& hw_stats->tx_mult_collisions);
  estats->tx_mult_collisions = old_estats->tx_mult_collisions + tmp___32;
  tmp___33 = get_stat64(& hw_stats->tx_deferred);
  estats->tx_deferred = old_estats->tx_deferred + tmp___33;
  tmp___34 = get_stat64(& hw_stats->tx_excessive_collisions);
  estats->tx_excessive_collisions = old_estats->tx_excessive_collisions + tmp___34;
  tmp___35 = get_stat64(& hw_stats->tx_late_collisions);
  estats->tx_late_collisions = old_estats->tx_late_collisions + tmp___35;
  tmp___36 = get_stat64(& hw_stats->tx_collide_2times);
  estats->tx_collide_2times = old_estats->tx_collide_2times + tmp___36;
  tmp___37 = get_stat64(& hw_stats->tx_collide_3times);
  estats->tx_collide_3times = old_estats->tx_collide_3times + tmp___37;
  tmp___38 = get_stat64(& hw_stats->tx_collide_4times);
  estats->tx_collide_4times = old_estats->tx_collide_4times + tmp___38;
  tmp___39 = get_stat64(& hw_stats->tx_collide_5times);
  estats->tx_collide_5times = old_estats->tx_collide_5times + tmp___39;
  tmp___40 = get_stat64(& hw_stats->tx_collide_6times);
  estats->tx_collide_6times = old_estats->tx_collide_6times + tmp___40;
  tmp___41 = get_stat64(& hw_stats->tx_collide_7times);
  estats->tx_collide_7times = old_estats->tx_collide_7times + tmp___41;
  tmp___42 = get_stat64(& hw_stats->tx_collide_8times);
  estats->tx_collide_8times = old_estats->tx_collide_8times + tmp___42;
  tmp___43 = get_stat64(& hw_stats->tx_collide_9times);
  estats->tx_collide_9times = old_estats->tx_collide_9times + tmp___43;
  tmp___44 = get_stat64(& hw_stats->tx_collide_10times);
  estats->tx_collide_10times = old_estats->tx_collide_10times + tmp___44;
  tmp___45 = get_stat64(& hw_stats->tx_collide_11times);
  estats->tx_collide_11times = old_estats->tx_collide_11times + tmp___45;
  tmp___46 = get_stat64(& hw_stats->tx_collide_12times);
  estats->tx_collide_12times = old_estats->tx_collide_12times + tmp___46;
  tmp___47 = get_stat64(& hw_stats->tx_collide_13times);
  estats->tx_collide_13times = old_estats->tx_collide_13times + tmp___47;
  tmp___48 = get_stat64(& hw_stats->tx_collide_14times);
  estats->tx_collide_14times = old_estats->tx_collide_14times + tmp___48;
  tmp___49 = get_stat64(& hw_stats->tx_collide_15times);
  estats->tx_collide_15times = old_estats->tx_collide_15times + tmp___49;
  tmp___50 = get_stat64(& hw_stats->tx_ucast_packets);
  estats->tx_ucast_packets = old_estats->tx_ucast_packets + tmp___50;
  tmp___51 = get_stat64(& hw_stats->tx_mcast_packets);
  estats->tx_mcast_packets = old_estats->tx_mcast_packets + tmp___51;
  tmp___52 = get_stat64(& hw_stats->tx_bcast_packets);
  estats->tx_bcast_packets = old_estats->tx_bcast_packets + tmp___52;
  tmp___53 = get_stat64(& hw_stats->tx_carrier_sense_errors);
  estats->tx_carrier_sense_errors = old_estats->tx_carrier_sense_errors + tmp___53;
  tmp___54 = get_stat64(& hw_stats->tx_discards);
  estats->tx_discards = old_estats->tx_discards + tmp___54;
  tmp___55 = get_stat64(& hw_stats->tx_errors);
  estats->tx_errors = old_estats->tx_errors + tmp___55;
  tmp___56 = get_stat64(& hw_stats->dma_writeq_full);
  estats->dma_writeq_full = old_estats->dma_writeq_full + tmp___56;
  tmp___57 = get_stat64(& hw_stats->dma_write_prioq_full);
  estats->dma_write_prioq_full = old_estats->dma_write_prioq_full + tmp___57;
  tmp___58 = get_stat64(& hw_stats->rxbds_empty);
  estats->rxbds_empty = old_estats->rxbds_empty + tmp___58;
  tmp___59 = get_stat64(& hw_stats->rx_discards);
  estats->rx_discards = old_estats->rx_discards + tmp___59;
  tmp___60 = get_stat64(& hw_stats->rx_errors);
  estats->rx_errors = old_estats->rx_errors + tmp___60;
  tmp___61 = get_stat64(& hw_stats->rx_threshold_hit);
  estats->rx_threshold_hit = old_estats->rx_threshold_hit + tmp___61;
  tmp___62 = get_stat64(& hw_stats->dma_readq_full);
  estats->dma_readq_full = old_estats->dma_readq_full + tmp___62;
  tmp___63 = get_stat64(& hw_stats->dma_read_prioq_full);
  estats->dma_read_prioq_full = old_estats->dma_read_prioq_full + tmp___63;
  tmp___64 = get_stat64(& hw_stats->tx_comp_queue_full);
  estats->tx_comp_queue_full = old_estats->tx_comp_queue_full + tmp___64;
  tmp___65 = get_stat64(& hw_stats->ring_set_send_prod_index);
  estats->ring_set_send_prod_index = old_estats->ring_set_send_prod_index + tmp___65;
  tmp___66 = get_stat64(& hw_stats->ring_status_update);
  estats->ring_status_update = old_estats->ring_status_update + tmp___66;
  tmp___67 = get_stat64(& hw_stats->nic_irqs);
  estats->nic_irqs = old_estats->nic_irqs + tmp___67;
  tmp___68 = get_stat64(& hw_stats->nic_avoided_irqs);
  estats->nic_avoided_irqs = old_estats->nic_avoided_irqs + tmp___68;
  tmp___69 = get_stat64(& hw_stats->nic_tx_threshold_hit);
  estats->nic_tx_threshold_hit = old_estats->nic_tx_threshold_hit + tmp___69;
  tmp___70 = get_stat64(& hw_stats->mbuf_lwm_thresh_hit);
  estats->mbuf_lwm_thresh_hit = old_estats->mbuf_lwm_thresh_hit + tmp___70;
  return;
}
}
static void tg3_get_nstats(struct tg3 *tp , struct rtnl_link_stats64 *stats )
{
  struct rtnl_link_stats64 *old_stats ;
  struct tg3_hw_stats *hw_stats ;
  u64 tmp ;
  u64 tmp___0 ;
  u64 tmp___1 ;
  u64 tmp___2 ;
  u64 tmp___3 ;
  u64 tmp___4 ;
  u64 tmp___5 ;
  u64 tmp___6 ;
  u64 tmp___7 ;
  u64 tmp___8 ;
  u64 tmp___9 ;
  u64 tmp___10 ;
  u64 tmp___11 ;
  u64 tmp___12 ;
  u64 tmp___13 ;
  u64 tmp___14 ;
  u64 tmp___15 ;
  u64 tmp___16 ;
  u64 tmp___17 ;
  u64 tmp___18 ;
  u64 tmp___19 ;
  u64 tmp___20 ;
  u64 tmp___21 ;
  {
  old_stats = & tp->net_stats_prev;
  hw_stats = tp->hw_stats;
  tmp = get_stat64(& hw_stats->rx_ucast_packets);
  tmp___0 = get_stat64(& hw_stats->rx_mcast_packets);
  tmp___1 = get_stat64(& hw_stats->rx_bcast_packets);
  stats->rx_packets = ((old_stats->rx_packets + tmp) + tmp___0) + tmp___1;
  tmp___2 = get_stat64(& hw_stats->tx_ucast_packets);
  tmp___3 = get_stat64(& hw_stats->tx_mcast_packets);
  tmp___4 = get_stat64(& hw_stats->tx_bcast_packets);
  stats->tx_packets = ((old_stats->tx_packets + tmp___2) + tmp___3) + tmp___4;
  tmp___5 = get_stat64(& hw_stats->rx_octets);
  stats->rx_bytes = old_stats->rx_bytes + tmp___5;
  tmp___6 = get_stat64(& hw_stats->tx_octets);
  stats->tx_bytes = old_stats->tx_bytes + tmp___6;
  tmp___7 = get_stat64(& hw_stats->rx_errors);
  stats->rx_errors = old_stats->rx_errors + tmp___7;
  tmp___8 = get_stat64(& hw_stats->tx_errors);
  tmp___9 = get_stat64(& hw_stats->tx_mac_errors);
  tmp___10 = get_stat64(& hw_stats->tx_carrier_sense_errors);
  tmp___11 = get_stat64(& hw_stats->tx_discards);
  stats->tx_errors = (((old_stats->tx_errors + tmp___8) + tmp___9) + tmp___10) + tmp___11;
  tmp___12 = get_stat64(& hw_stats->rx_mcast_packets);
  stats->multicast = old_stats->multicast + tmp___12;
  tmp___13 = get_stat64(& hw_stats->tx_collisions);
  stats->collisions = old_stats->collisions + tmp___13;
  tmp___14 = get_stat64(& hw_stats->rx_frame_too_long_errors);
  tmp___15 = get_stat64(& hw_stats->rx_undersize_packets);
  stats->rx_length_errors = (old_stats->rx_length_errors + tmp___14) + tmp___15;
  tmp___16 = get_stat64(& hw_stats->rxbds_empty);
  stats->rx_over_errors = old_stats->rx_over_errors + tmp___16;
  tmp___17 = get_stat64(& hw_stats->rx_align_errors);
  stats->rx_frame_errors = old_stats->rx_frame_errors + tmp___17;
  tmp___18 = get_stat64(& hw_stats->tx_discards);
  stats->tx_aborted_errors = old_stats->tx_aborted_errors + tmp___18;
  tmp___19 = get_stat64(& hw_stats->tx_carrier_sense_errors);
  stats->tx_carrier_errors = old_stats->tx_carrier_errors + tmp___19;
  tmp___20 = tg3_calc_crc_errors(tp);
  stats->rx_crc_errors = old_stats->rx_crc_errors + tmp___20;
  tmp___21 = get_stat64(& hw_stats->rx_discards);
  stats->rx_missed_errors = old_stats->rx_missed_errors + tmp___21;
  stats->rx_dropped = (__u64 )tp->rx_dropped;
  stats->tx_dropped = (__u64 )tp->tx_dropped;
  return;
}
}
static int tg3_get_regs_len(struct net_device *dev )
{
  {
  return (32768);
}
}
static void tg3_get_regs(struct net_device *dev , struct ethtool_regs *regs , void *_p )
{
  struct tg3 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  regs->version = 0U;
  memset(_p, 0, 32768UL);
  if ((int )tp->phy_flags & 1) {
    return;
  } else {
  }
  tg3_full_lock(tp, 0);
  tg3_dump_legacy_regs(tp, (u32 *)_p);
  tg3_full_unlock(tp);
  return;
}
}
static int tg3_get_eeprom_len(struct net_device *dev )
{
  struct tg3 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  return ((int )tp->nvram_size);
}
}
static int tg3_get_eeprom(struct net_device *dev , struct ethtool_eeprom *eeprom ,
                          u8 *data )
{
  struct tg3 *tp ;
  void *tmp ;
  int ret ;
  u8 *pd ;
  u32 i ;
  u32 offset ;
  u32 len ;
  u32 b_offset ;
  u32 b_count ;
  __be32 val ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = _tg3_flag(58, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    return (-22);
  } else {
  }
  if ((int )tp->phy_flags & 1) {
    return (-11);
  } else {
  }
  offset = eeprom->offset;
  len = eeprom->len;
  eeprom->len = 0U;
  eeprom->magic = 1721324970U;
  if ((offset & 3U) != 0U) {
    b_offset = offset & 3U;
    b_count = 4U - b_offset;
    if (b_count > len) {
      b_count = len;
    } else {
    }
    ret = tg3_nvram_read_be32(tp, offset - b_offset, & val);
    if (ret != 0) {
      return (ret);
    } else {
    }
    __len = (size_t )b_count;
    __ret = memcpy((void *)data, (void const *)(& val) + (unsigned long )b_offset,
                             __len);
    len = len - b_count;
    offset = offset + b_count;
    eeprom->len = eeprom->len + b_count;
  } else {
  }
  pd = data + (unsigned long )eeprom->len;
  i = 0U;
  goto ldv_50495;
  ldv_50494:
  ret = tg3_nvram_read_be32(tp, offset + i, & val);
  if (ret != 0) {
    eeprom->len = eeprom->len + i;
    return (ret);
  } else {
  }
  __len___0 = 4UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)pd + (unsigned long )i, (void const *)(& val),
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)pd + (unsigned long )i, (void const *)(& val),
                                 __len___0);
  }
  i = i + 4U;
  ldv_50495: ;
  if ((len & 4294967292U) > i) {
    goto ldv_50494;
  } else {
  }
  eeprom->len = eeprom->len + i;
  if ((len & 3U) != 0U) {
    pd = data + (unsigned long )eeprom->len;
    b_count = len & 3U;
    b_offset = (offset + len) - b_count;
    ret = tg3_nvram_read_be32(tp, b_offset, & val);
    if (ret != 0) {
      return (ret);
    } else {
    }
    __len___1 = (size_t )b_count;
    __ret___1 = memcpy((void *)pd, (void const *)(& val), __len___1);
    eeprom->len = eeprom->len + b_count;
  } else {
  }
  return (0);
}
}
static int tg3_set_eeprom(struct net_device *dev , struct ethtool_eeprom *eeprom ,
                          u8 *data )
{
  struct tg3 *tp ;
  void *tmp ;
  int ret ;
  u32 offset ;
  u32 len ;
  u32 b_offset ;
  u32 odd_len ;
  u8 *buf ;
  __be32 start ;
  __be32 end ;
  int tmp___0 ;
  void *tmp___1 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  if ((int )tp->phy_flags & 1) {
    return (-11);
  } else {
  }
  tmp___0 = _tg3_flag(58, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0 || eeprom->magic != 1721324970U) {
    return (-22);
  } else {
  }
  offset = eeprom->offset;
  len = eeprom->len;
  b_offset = offset & 3U;
  if (b_offset != 0U) {
    ret = tg3_nvram_read_be32(tp, offset - b_offset, & start);
    if (ret != 0) {
      return (ret);
    } else {
    }
    len = len + b_offset;
    offset = offset & 4294967292U;
    if (len <= 3U) {
      len = 4U;
    } else {
    }
  } else {
  }
  odd_len = 0U;
  if ((len & 3U) != 0U) {
    odd_len = 1U;
    len = (len + 3U) & 4294967292U;
    ret = tg3_nvram_read_be32(tp, (offset + len) - 4U, & end);
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
  }
  buf = data;
  if (b_offset != 0U || odd_len != 0U) {
    tmp___1 = kmalloc((size_t )len, 208U);
    buf = (u8 *)tmp___1;
    if ((unsigned long )buf == (unsigned long )((u8 *)0)) {
      return (-12);
    } else {
    }
    if (b_offset != 0U) {
      __len = 4UL;
      if (__len > 63UL) {
        __ret = memcpy((void *)buf, (void const *)(& start), __len);
      } else {
        __ret = memcpy((void *)buf, (void const *)(& start), __len);
      }
    } else {
    }
    if (odd_len != 0U) {
      __len___0 = 4UL;
      if (__len___0 > 63UL) {
        __ret___0 = memcpy((void *)(buf + ((unsigned long )len + 0xfffffffffffffffcUL)),
                             (void const *)(& end), __len___0);
      } else {
        __ret___0 = memcpy((void *)(buf + ((unsigned long )len + 0xfffffffffffffffcUL)),
                                     (void const *)(& end), __len___0);
      }
    } else {
    }
    __len___1 = (size_t )eeprom->len;
    __ret___1 = memcpy((void *)buf + (unsigned long )b_offset, (void const *)data,
                                 __len___1);
  } else {
  }
  ret = tg3_nvram_write_block(tp, offset, len, buf);
  if ((unsigned long )buf != (unsigned long )data) {
    kfree((void const *)buf);
  } else {
  }
  return (ret);
}
}
static int tg3_get_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct tg3 *tp ;
  void *tmp ;
  struct phy_device *phydev ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___1 = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    if ((tp->phy_flags & 2U) == 0U) {
      return (-11);
    } else {
    }
    phydev = (tp->mdio_bus)->phy_map[1];
    tmp___0 = phy_ethtool_gset(phydev, cmd);
    return (tmp___0);
  } else {
  }
  cmd->supported = 64U;
  if ((tp->phy_flags & 128U) == 0U) {
    cmd->supported = cmd->supported | 48U;
  } else {
  }
  if ((tp->phy_flags & 48U) == 0U) {
    cmd->supported = cmd->supported | 143U;
    cmd->port = 0U;
  } else {
    cmd->supported = cmd->supported | 1024U;
    cmd->port = 3U;
  }
  cmd->advertising = tp->link_config.advertising;
  tmp___2 = _tg3_flag(25, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    if (((int )tp->link_config.flowctrl & 2) != 0) {
      if ((int )tp->link_config.flowctrl & 1) {
        cmd->advertising = cmd->advertising | 8192U;
      } else {
        cmd->advertising = cmd->advertising | 24576U;
      }
    } else
    if ((int )tp->link_config.flowctrl & 1) {
      cmd->advertising = cmd->advertising | 16384U;
    } else {
    }
  } else {
  }
  tmp___3 = netif_running((struct net_device const *)dev);
  if ((int )tmp___3 && (int )tp->link_up) {
    ethtool_cmd_speed_set(cmd, (__u32 )tp->link_config.active_speed);
    cmd->duplex = tp->link_config.active_duplex;
    cmd->lp_advertising = tp->link_config.rmt_adv;
    if ((tp->phy_flags & 48U) == 0U) {
      if ((tp->phy_flags & 2097152U) != 0U) {
        cmd->eth_tp_mdix = 2U;
      } else {
        cmd->eth_tp_mdix = 1U;
      }
    } else {
    }
  } else {
    ethtool_cmd_speed_set(cmd, 4294967295U);
    cmd->duplex = 255U;
    cmd->eth_tp_mdix = 0U;
  }
  cmd->phy_address = tp->phy_addr;
  cmd->transceiver = 0U;
  cmd->autoneg = tp->link_config.autoneg;
  cmd->maxtxpkt = 0U;
  cmd->maxrxpkt = 0U;
  return (0);
}
}
static int tg3_set_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct tg3 *tp ;
  void *tmp ;
  u32 speed ;
  __u32 tmp___0 ;
  struct phy_device *phydev ;
  int tmp___1 ;
  int tmp___2 ;
  u32 mask ;
  bool tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = ethtool_cmd_speed((struct ethtool_cmd const *)cmd);
  speed = tmp___0;
  tmp___2 = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    if ((tp->phy_flags & 2U) == 0U) {
      return (-11);
    } else {
    }
    phydev = (tp->mdio_bus)->phy_map[1];
    tmp___1 = phy_ethtool_sset(phydev, cmd);
    return (tmp___1);
  } else {
  }
  if ((unsigned int )cmd->autoneg != 1U && (unsigned int )cmd->autoneg != 0U) {
    return (-22);
  } else {
  }
  if (((unsigned int )cmd->autoneg == 0U && (unsigned int )cmd->duplex != 1U) && (unsigned int )cmd->duplex != 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )cmd->autoneg == 1U) {
    mask = 24640U;
    if ((tp->phy_flags & 128U) == 0U) {
      mask = mask | 48U;
    } else {
    }
    if ((tp->phy_flags & 48U) == 0U) {
      mask = mask | 143U;
    } else {
      mask = mask | 1024U;
    }
    if ((cmd->advertising & ~ mask) != 0U) {
      return (-22);
    } else {
    }
    mask = mask & 63U;
    cmd->advertising = cmd->advertising & mask;
  } else
  if ((tp->phy_flags & 48U) != 0U) {
    if (speed != 1000U) {
      return (-22);
    } else {
    }
    if ((unsigned int )cmd->duplex != 1U) {
      return (-22);
    } else {
    }
  } else
  if (speed != 100U && speed != 10U) {
    return (-22);
  } else {
  }
  tg3_full_lock(tp, 0);
  tp->link_config.autoneg = cmd->autoneg;
  if ((unsigned int )cmd->autoneg == 1U) {
    tp->link_config.advertising = cmd->advertising | 64U;
    tp->link_config.speed = 65535U;
    tp->link_config.duplex = 255U;
  } else {
    tp->link_config.advertising = 0U;
    tp->link_config.speed = (u16 )speed;
    tp->link_config.duplex = cmd->duplex;
  }
  tp->phy_flags = tp->phy_flags | 8U;
  tg3_warn_mgmt_link_flap(tp);
  tmp___3 = netif_running((struct net_device const *)dev);
  if ((int )tmp___3) {
    tg3_setup_phy(tp, 1);
  } else {
  }
  tg3_full_unlock(tp);
  return (0);
}
}
static void tg3_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  struct tg3 *tp ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  strlcpy((char *)(& info->driver), "tg3", 32UL);
  strlcpy((char *)(& info->version), "3.131", 32UL);
  strlcpy((char *)(& info->fw_version), (char const *)(& tp->fw_ver), 32UL);
  tmp___0 = pci_name((struct pci_dev const *)tp->pdev);
  strlcpy((char *)(& info->bus_info), tmp___0, 32UL);
  return;
}
}
static void tg3_get_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct tg3 *tp ;
  void *tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = _tg3_flag(23, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    tmp___1 = device_can_wakeup(& (tp->pdev)->dev);
    if ((int )tmp___1) {
      wol->supported = 32U;
    } else {
      wol->supported = 0U;
    }
  } else {
    wol->supported = 0U;
  }
  wol->wolopts = 0U;
  tmp___2 = _tg3_flag(10, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    tmp___3 = device_can_wakeup(& (tp->pdev)->dev);
    if ((int )tmp___3) {
      wol->wolopts = 32U;
    } else {
    }
  } else {
  }
  memset((void *)(& wol->sopass), 0, 6UL);
  return;
}
}
static int tg3_set_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct tg3 *tp ;
  void *tmp ;
  struct device *dp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  dp = & (tp->pdev)->dev;
  if ((wol->wolopts & 4294967263U) != 0U) {
    return (-22);
  } else {
  }
  if ((wol->wolopts & 32U) != 0U) {
    tmp___0 = _tg3_flag(23, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 == 0) {
      return (-22);
    } else {
      tmp___1 = device_can_wakeup(dp);
      if (tmp___1) {
        tmp___2 = 0;
      } else {
        tmp___2 = 1;
      }
      if (tmp___2) {
        return (-22);
      } else {
      }
    }
  } else {
  }
  device_set_wakeup_enable(dp, (wol->wolopts & 32U) != 0U);
  spin_lock_bh(& tp->lock);
  tmp___3 = device_may_wakeup(dp);
  if ((int )tmp___3) {
    _tg3_flag_set(10, (unsigned long *)(& tp->tg3_flags));
  } else {
    _tg3_flag_clear(10, (unsigned long *)(& tp->tg3_flags));
  }
  spin_unlock_bh(& tp->lock);
  return (0);
}
}
static u32 tg3_get_msglevel(struct net_device *dev )
{
  struct tg3 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  return (tp->msg_enable);
}
}
static void tg3_set_msglevel(struct net_device *dev , u32 value )
{
  struct tg3 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tp->msg_enable = value;
  return;
}
}
static int tg3_nway_reset(struct net_device *dev )
{
  struct tg3 *tp ;
  void *tmp ;
  int r ;
  bool tmp___0 ;
  int tmp___1 ;
  u32 bmcr ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-11);
  } else {
  }
  if ((tp->phy_flags & 16U) != 0U) {
    return (-22);
  } else {
  }
  tg3_warn_mgmt_link_flap(tp);
  tmp___3 = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
  if (tmp___3 != 0) {
    if ((tp->phy_flags & 2U) == 0U) {
      return (-11);
    } else {
    }
    r = phy_start_aneg((tp->mdio_bus)->phy_map[1]);
  } else {
    spin_lock_bh(& tp->lock);
    r = -22;
    tg3_readphy(tp, 0, & bmcr);
    tmp___2 = tg3_readphy(tp, 0, & bmcr);
    if (tmp___2 == 0 && ((bmcr & 4096U) != 0U || (tp->phy_flags & 131072U) != 0U)) {
      tg3_writephy(tp, 0, bmcr | 4608U);
      r = 0;
    } else {
    }
    spin_unlock_bh(& tp->lock);
  }
  return (r);
}
}
static void tg3_get_ringparam(struct net_device *dev , struct ethtool_ringparam *ering )
{
  struct tg3 *tp ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  ering->rx_max_pending = tp->rx_std_ring_mask;
  tmp___0 = _tg3_flag(24, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    ering->rx_jumbo_max_pending = tp->rx_jmb_ring_mask;
  } else {
    ering->rx_jumbo_max_pending = 0U;
  }
  ering->tx_max_pending = 511U;
  ering->rx_pending = tp->rx_pending;
  tmp___1 = _tg3_flag(24, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    ering->rx_jumbo_pending = tp->rx_jumbo_pending;
  } else {
    ering->rx_jumbo_pending = 0U;
  }
  ering->tx_pending = tp->napi[0].tx_pending;
  return;
}
}
static int tg3_set_ringparam(struct net_device *dev , struct ethtool_ringparam *ering )
{
  struct tg3 *tp ;
  void *tmp ;
  int i ;
  int irq_sync ;
  int err ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  irq_sync = 0;
  err = 0;
  if (((ering->rx_pending > tp->rx_std_ring_mask || ering->rx_jumbo_pending > tp->rx_jmb_ring_mask) || ering->tx_pending > 511U) || ering->tx_pending <= 17U) {
    return (-22);
  } else {
    tmp___0 = _tg3_flag(43, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0 && ering->tx_pending <= 51U) {
      return (-22);
    } else {
    }
  }
  tmp___1 = netif_running((struct net_device const *)dev);
  if ((int )tmp___1) {
    tg3_phy_stop(tp);
    tg3_netif_stop(tp);
    irq_sync = 1;
  } else {
  }
  tg3_full_lock(tp, irq_sync);
  tp->rx_pending = ering->rx_pending;
  tmp___2 = _tg3_flag(32, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0 && tp->rx_pending > 63U) {
    tp->rx_pending = 63U;
  } else {
  }
  tp->rx_jumbo_pending = ering->rx_jumbo_pending;
  i = 0;
  goto ldv_50582;
  ldv_50581:
  tp->napi[i].tx_pending = ering->tx_pending;
  i = i + 1;
  ldv_50582: ;
  if ((unsigned int )i < tp->irq_max) {
    goto ldv_50581;
  } else {
  }
  tmp___3 = netif_running((struct net_device const *)dev);
  if ((int )tmp___3) {
    tg3_halt(tp, 0, 1);
    err = tg3_restart_hw(tp, 0);
    if (err == 0) {
      tg3_netif_start(tp);
    } else {
    }
  } else {
  }
  tg3_full_unlock(tp);
  if (irq_sync != 0 && err == 0) {
    tg3_phy_start(tp);
  } else {
  }
  return (err);
}
}
static void tg3_get_pauseparam(struct net_device *dev , struct ethtool_pauseparam *epause )
{
  struct tg3 *tp ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = _tg3_flag(25, (unsigned long *)(& tp->tg3_flags));
  epause->autoneg = tmp___0 != 0;
  if (((int )tp->link_config.flowctrl & 2) != 0) {
    epause->rx_pause = 1U;
  } else {
    epause->rx_pause = 0U;
  }
  if ((int )tp->link_config.flowctrl & 1) {
    epause->tx_pause = 1U;
  } else {
    epause->tx_pause = 0U;
  }
  return;
}
}
static int tg3_set_pauseparam(struct net_device *dev , struct ethtool_pauseparam *epause )
{
  struct tg3 *tp ;
  void *tmp ;
  int err ;
  u32 newadv ;
  struct phy_device *phydev ;
  u32 oldadv ;
  int tmp___0 ;
  int irq_sync ;
  bool tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  err = 0;
  if ((unsigned int )tp->link_config.autoneg == 1U) {
    tg3_warn_mgmt_link_flap(tp);
  } else {
  }
  tmp___3 = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
  if (tmp___3 != 0) {
    phydev = (tp->mdio_bus)->phy_map[1];
    if ((phydev->supported & 8192U) == 0U || ((phydev->supported & 16384U) == 0U && epause->rx_pause != epause->tx_pause)) {
      return (-22);
    } else {
    }
    tp->link_config.flowctrl = 0U;
    if (epause->rx_pause != 0U) {
      tp->link_config.flowctrl = (u8 )((unsigned int )tp->link_config.flowctrl | 2U);
      if (epause->tx_pause != 0U) {
        tp->link_config.flowctrl = (u8 )((unsigned int )tp->link_config.flowctrl | 1U);
        newadv = 8192U;
      } else {
        newadv = 24576U;
      }
    } else
    if (epause->tx_pause != 0U) {
      tp->link_config.flowctrl = (u8 )((unsigned int )tp->link_config.flowctrl | 1U);
      newadv = 16384U;
    } else {
      newadv = 0U;
    }
    if (epause->autoneg != 0U) {
      _tg3_flag_set(25, (unsigned long *)(& tp->tg3_flags));
    } else {
      _tg3_flag_clear(25, (unsigned long *)(& tp->tg3_flags));
    }
    if ((tp->phy_flags & 2U) != 0U) {
      oldadv = phydev->advertising & 24576U;
      if (oldadv != newadv) {
        phydev->advertising = phydev->advertising & 4294942719U;
        phydev->advertising = phydev->advertising | newadv;
        if (phydev->autoneg != 0) {
          tmp___0 = phy_start_aneg(phydev);
          return (tmp___0);
        } else {
        }
      } else {
      }
      if (epause->autoneg == 0U) {
        tg3_setup_flow_control(tp, 0U, 0U);
      } else {
      }
    } else {
      tp->link_config.advertising = tp->link_config.advertising & 4294942719U;
      tp->link_config.advertising = tp->link_config.advertising | newadv;
    }
  } else {
    irq_sync = 0;
    tmp___1 = netif_running((struct net_device const *)dev);
    if ((int )tmp___1) {
      tg3_netif_stop(tp);
      irq_sync = 1;
    } else {
    }
    tg3_full_lock(tp, irq_sync);
    if (epause->autoneg != 0U) {
      _tg3_flag_set(25, (unsigned long *)(& tp->tg3_flags));
    } else {
      _tg3_flag_clear(25, (unsigned long *)(& tp->tg3_flags));
    }
    if (epause->rx_pause != 0U) {
      tp->link_config.flowctrl = (u8 )((unsigned int )tp->link_config.flowctrl | 2U);
    } else {
      tp->link_config.flowctrl = (unsigned int )tp->link_config.flowctrl & 253U;
    }
    if (epause->tx_pause != 0U) {
      tp->link_config.flowctrl = (u8 )((unsigned int )tp->link_config.flowctrl | 1U);
    } else {
      tp->link_config.flowctrl = (unsigned int )tp->link_config.flowctrl & 254U;
    }
    tmp___2 = netif_running((struct net_device const *)dev);
    if ((int )tmp___2) {
      tg3_halt(tp, 0, 1);
      err = tg3_restart_hw(tp, 0);
      if (err == 0) {
        tg3_netif_start(tp);
      } else {
      }
    } else {
    }
    tg3_full_unlock(tp);
  }
  tp->phy_flags = tp->phy_flags | 8U;
  return (err);
}
}
static int tg3_get_sset_count(struct net_device *dev , int sset )
{
  {
  switch (sset) {
  case 0: ;
  return (8);
  case 1: ;
  return (72);
  default: ;
  return (-95);
  }
}
}
static int tg3_get_rxnfc(struct net_device *dev , struct ethtool_rxnfc *info , u32 *rules )
{
  struct tg3 *tp ;
  void *tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = _tg3_flag(15, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 == 0) {
    return (-95);
  } else {
  }
  switch (info->cmd) {
  case 45U:
  tmp___2 = netif_running((struct net_device const *)tp->dev);
  if ((int )tmp___2) {
    info->data = (__u64 )tp->rxq_cnt;
  } else {
    tmp___1 = cpumask_weight(cpu_online_mask);
    info->data = (__u64 )tmp___1;
    if (info->data > 4ULL) {
      info->data = 4ULL;
    } else {
    }
  }
  info->data = info->data - 1ULL;
  return (0);
  default: ;
  return (-95);
  }
}
}
static u32 tg3_get_rxfh_indir_size(struct net_device *dev )
{
  u32 size ;
  struct tg3 *tp ;
  void *tmp ;
  int tmp___0 ;
  {
  size = 0U;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = _tg3_flag(15, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    size = 128U;
  } else {
  }
  return (size);
}
}
static int tg3_get_rxfh_indir(struct net_device *dev , u32 *indir )
{
  struct tg3 *tp ;
  void *tmp ;
  int i ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  i = 0;
  goto ldv_50630;
  ldv_50629:
  *(indir + (unsigned long )i) = (u32 )tp->rss_ind_tbl[i];
  i = i + 1;
  ldv_50630: ;
  if (i <= 127) {
    goto ldv_50629;
  } else {
  }
  return (0);
}
}
static int tg3_set_rxfh_indir(struct net_device *dev , u32 const *indir )
{
  struct tg3 *tp ;
  void *tmp ;
  size_t i ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  i = 0UL;
  goto ldv_50639;
  ldv_50638:
  tp->rss_ind_tbl[i] = (u8 )*(indir + i);
  i = i + 1UL;
  ldv_50639: ;
  if (i <= 127UL) {
    goto ldv_50638;
  } else {
  }
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
    tmp___2 = _tg3_flag(59, (unsigned long *)(& tp->tg3_flags));
    if (tmp___2 == 0) {
      return (0);
    } else {
    }
  }
  tg3_full_lock(tp, 0);
  tg3_rss_write_indir_tbl(tp);
  tg3_full_unlock(tp);
  return (0);
}
}
static void tg3_get_channels(struct net_device *dev , struct ethtool_channels *channel )
{
  struct tg3 *tp ;
  void *tmp ;
  u32 deflt_qs ;
  int tmp___0 ;
  u32 _min1 ;
  u32 _min2 ;
  u32 _min1___0 ;
  u32 _min2___0 ;
  bool tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = netif_get_num_default_rss_queues();
  deflt_qs = (u32 )tmp___0;
  channel->max_rx = tp->rxq_max;
  channel->max_tx = tp->txq_max;
  tmp___1 = netif_running((struct net_device const *)dev);
  if ((int )tmp___1) {
    channel->rx_count = tp->rxq_cnt;
    channel->tx_count = tp->txq_cnt;
  } else {
    if (tp->rxq_req != 0U) {
      channel->rx_count = tp->rxq_req;
    } else {
      _min1 = deflt_qs;
      _min2 = tp->rxq_max;
      channel->rx_count = _min1 < _min2 ? _min1 : _min2;
    }
    if (tp->txq_req != 0U) {
      channel->tx_count = tp->txq_req;
    } else {
      _min1___0 = deflt_qs;
      _min2___0 = tp->txq_max;
      channel->tx_count = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    }
  }
  return;
}
}
static int tg3_set_channels(struct net_device *dev , struct ethtool_channels *channel )
{
  struct tg3 *tp ;
  void *tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = _tg3_flag(15, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 == 0) {
    return (-95);
  } else {
  }
  if (channel->rx_count > tp->rxq_max || channel->tx_count > tp->txq_max) {
    return (-22);
  } else {
  }
  tp->rxq_req = channel->rx_count;
  tp->txq_req = channel->tx_count;
  tmp___1 = netif_running((struct net_device const *)dev);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (0);
  } else {
  }
  tg3_stop(tp);
  tg3_carrier_off(tp);
  tg3_start(tp, 1, 0, 0);
  return (0);
}
}
static void tg3_get_strings(struct net_device *dev , u32 stringset , u8 *buf )
{
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  int __ret_warn_on ;
  long tmp ;
  {
  switch (stringset) {
  case 1U:
  __len = 2304UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)buf, (void const *)(& ethtool_stats_keys), __len);
  } else {
    __ret = memcpy((void *)buf, (void const *)(& ethtool_stats_keys),
                             __len);
  }
  goto ldv_50667;
  case 0U:
  __len___0 = 256UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)buf, (void const *)(& ethtool_test_keys), __len___0);
  } else {
    __ret___0 = memcpy((void *)buf, (void const *)(& ethtool_test_keys),
                                 __len___0);
  }
  goto ldv_50667;
  default:
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/8512/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/broadcom/tg3.c.prepared",
                       12285);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  goto ldv_50667;
  }
  ldv_50667: ;
  return;
}
}
static int tg3_set_phys_id(struct net_device *dev , enum ethtool_phys_id_state state )
{
  struct tg3 *tp ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = netif_running((struct net_device const *)tp->dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-11);
  } else {
  }
  switch ((unsigned int )state) {
  case 1U: ;
  return (1);
  case 2U:
  (*(tp->write32))(tp, 1036U, 127U);
  goto ldv_50682;
  case 3U:
  (*(tp->write32))(tp, 1036U, 17U);
  goto ldv_50682;
  case 0U:
  (*(tp->write32))(tp, 1036U, tp->led_ctrl);
  goto ldv_50682;
  }
  ldv_50682: ;
  return (0);
}
}
static void tg3_get_ethtool_stats(struct net_device *dev , struct ethtool_stats *estats ,
                                  u64 *tmp_stats )
{
  struct tg3 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  if ((unsigned long )tp->hw_stats != (unsigned long )((struct tg3_hw_stats *)0)) {
    tg3_get_estats(tp, (struct tg3_ethtool_stats *)tmp_stats);
  } else {
    memset((void *)tmp_stats, 0, 576UL);
  }
  return;
}
}
static __be32 *tg3_vpd_readblock(struct tg3 *tp , u32 *vpdlen )
{
  int i ;
  __be32 *buf ;
  u32 offset ;
  u32 len ;
  u32 magic ;
  u32 val ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  u8 *ptr ;
  ssize_t cnt ;
  unsigned int pos ;
  {
  offset = 0U;
  len = 0U;
  tmp = _tg3_flag(58, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    return (0);
  } else {
    tmp___0 = tg3_nvram_read(tp, 0U, & magic);
    if (tmp___0 != 0) {
      return (0);
    } else {
    }
  }
  if (magic == 1721324970U) {
    offset = 24U;
    goto ldv_50703;
    ldv_50702:
    tmp___1 = tg3_nvram_read(tp, offset, & val);
    if (tmp___1 != 0) {
      return (0);
    } else {
    }
    if (val >> 24 == 20U) {
      goto ldv_50701;
    } else {
    }
    offset = offset + 12U;
    ldv_50703: ;
    if (offset <= 119U) {
      goto ldv_50702;
    } else {
    }
    ldv_50701: ;
    if (offset != 120U) {
      len = (val & 4194303U) * 4U;
      tmp___2 = tg3_nvram_read(tp, offset + 4U, & offset);
      if (tmp___2 != 0) {
        return (0);
      } else {
      }
      offset = tg3_nvram_logical_addr(tp, offset);
    } else {
    }
  } else {
  }
  if (offset == 0U || len == 0U) {
    offset = 256U;
    len = 256U;
  } else {
  }
  tmp___3 = kmalloc((size_t )len, 208U);
  buf = (__be32 *)tmp___3;
  if ((unsigned long )buf == (unsigned long )((__be32 *)0)) {
    return (0);
  } else {
  }
  if (magic == 1721324970U) {
    i = 0;
    goto ldv_50706;
    ldv_50705:
    tmp___4 = tg3_nvram_read_be32(tp, offset + (u32 )i, buf + (unsigned long )(i / 4));
    if (tmp___4 != 0) {
      goto error;
    } else {
    }
    i = i + 4;
    ldv_50706: ;
    if ((u32 )i < len) {
      goto ldv_50705;
    } else {
    }
  } else {
    pos = 0U;
    ptr = (u8 *)buf;
    i = 0;
    goto ldv_50712;
    ldv_50711:
    cnt = pci_read_vpd(tp->pdev, (loff_t )pos, (size_t )(len - pos), (void *)ptr);
    if (cnt == -110L || cnt == -4L) {
      cnt = 0L;
    } else
    if (cnt < 0L) {
      goto error;
    } else {
    }
    i = i + 1;
    pos = (unsigned int )cnt + pos;
    ptr = ptr + (unsigned long )cnt;
    ldv_50712: ;
    if (pos < len && i <= 2) {
      goto ldv_50711;
    } else {
    }
    if (pos != len) {
      goto error;
    } else {
    }
  }
  *vpdlen = len;
  return (buf);
  error:
  kfree((void const *)buf);
  return (0);
}
}
static int tg3_test_nvram(struct tg3 *tp )
{
  u32 csum ;
  u32 magic ;
  u32 len ;
  __be32 *buf ;
  int i ;
  int j ;
  int k ;
  int err ;
  int size ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  __u32 tmp___2 ;
  u8 *buf8 ;
  u8 csum8 ;
  u8 data[28U] ;
  u8 parity[28U] ;
  u8 *buf8___0 ;
  int l ;
  u8 msk ;
  int tmp___3 ;
  int l___0 ;
  u8 msk___0 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  u8 hw8 ;
  unsigned int tmp___7 ;
  u16 tmp___8 ;
  u8 csum8___0 ;
  {
  err = 0;
  tmp = _tg3_flag(58, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    return (0);
  } else {
  }
  tmp___0 = tg3_nvram_read(tp, 0U, & magic);
  if (tmp___0 != 0) {
    return (-5);
  } else {
  }
  if (magic == 1721324970U) {
    size = 256;
  } else
  if ((magic & 4278190080U) == 2768240640U) {
    if ((magic & 14680064U) == 2097152U) {
      switch (magic & 2031616U) {
      case 0U:
      size = 20;
      goto ldv_50727;
      case 131072U:
      size = 24;
      goto ldv_50727;
      case 196608U:
      size = 28;
      goto ldv_50727;
      case 262144U:
      size = 32;
      goto ldv_50727;
      case 327680U:
      size = 36;
      goto ldv_50727;
      case 393216U:
      size = 80;
      goto ldv_50727;
      default: ;
      return (-5);
      }
      ldv_50727: ;
    } else {
      return (0);
    }
  } else
  if ((magic & 65535U) == 43981U) {
    size = 32;
  } else {
    return (-5);
  }
  tmp___1 = kmalloc((size_t )size, 208U);
  buf = (__be32 *)tmp___1;
  if ((unsigned long )buf == (unsigned long )((__be32 *)0)) {
    return (-12);
  } else {
  }
  err = -5;
  i = 0;
  j = 0;
  goto ldv_50736;
  ldv_50735:
  err = tg3_nvram_read_be32(tp, (u32 )i, buf + (unsigned long )j);
  if (err != 0) {
    goto ldv_50734;
  } else {
  }
  i = i + 4;
  j = j + 1;
  ldv_50736: ;
  if (i < size) {
    goto ldv_50735;
  } else {
  }
  ldv_50734: ;
  if (i < size) {
    goto out;
  } else {
  }
  tmp___2 = __fswab32(*buf);
  magic = tmp___2;
  if ((magic & 4278190080U) == 2768240640U) {
    buf8 = (u8 *)buf;
    csum8 = 0U;
    if ((magic & 2031616U) == 131072U) {
      i = 0;
      goto ldv_50741;
      ldv_50740:
      csum8 = (int )*(buf8 + (unsigned long )i) + (int )csum8;
      i = i + 1;
      ldv_50741: ;
      if (i <= 15) {
        goto ldv_50740;
      } else {
      }
      i = 20;
      goto ldv_50744;
      ldv_50743:
      csum8 = (int )*(buf8 + (unsigned long )i) + (int )csum8;
      i = i + 1;
      ldv_50744: ;
      if (i < size) {
        goto ldv_50743;
      } else {
      }
    } else {
      i = 0;
      goto ldv_50747;
      ldv_50746:
      csum8 = (int )*(buf8 + (unsigned long )i) + (int )csum8;
      i = i + 1;
      ldv_50747: ;
      if (i < size) {
        goto ldv_50746;
      } else {
      }
    }
    if ((unsigned int )csum8 == 0U) {
      err = 0;
      goto out;
    } else {
    }
    err = -5;
    goto out;
  } else {
  }
  if ((magic & 65535U) == 43981U) {
    buf8___0 = (u8 *)buf;
    i = 0;
    j = 0;
    k = 0;
    goto ldv_50766;
    ldv_50765: ;
    if (i == 0 || i == 8) {
      l = 0;
      msk = 128U;
      goto ldv_50755;
      ldv_50754:
      tmp___3 = k;
      k = k + 1;
      parity[tmp___3] = (u8 )((int )*(buf8___0 + (unsigned long )i) & (int )msk);
      l = l + 1;
      msk = (u8 )((int )msk >> 1);
      ldv_50755: ;
      if (l <= 6) {
        goto ldv_50754;
      } else {
      }
      i = i + 1;
    } else
    if (i == 16) {
      l___0 = 0;
      msk___0 = 32U;
      goto ldv_50760;
      ldv_50759:
      tmp___4 = k;
      k = k + 1;
      parity[tmp___4] = (u8 )((int )*(buf8___0 + (unsigned long )i) & (int )msk___0);
      l___0 = l___0 + 1;
      msk___0 = (u8 )((int )msk___0 >> 1);
      ldv_50760: ;
      if (l___0 <= 5) {
        goto ldv_50759;
      } else {
      }
      i = i + 1;
      l___0 = 0;
      msk___0 = 128U;
      goto ldv_50763;
      ldv_50762:
      tmp___5 = k;
      k = k + 1;
      parity[tmp___5] = (u8 )((int )*(buf8___0 + (unsigned long )i) & (int )msk___0);
      l___0 = l___0 + 1;
      msk___0 = (u8 )((int )msk___0 >> 1);
      ldv_50763: ;
      if (l___0 <= 7) {
        goto ldv_50762;
      } else {
      }
      i = i + 1;
    } else {
    }
    tmp___6 = j;
    j = j + 1;
    data[tmp___6] = *(buf8___0 + (unsigned long )i);
    i = i + 1;
    ldv_50766: ;
    if (i <= 31) {
      goto ldv_50765;
    } else {
    }
    err = -5;
    i = 0;
    goto ldv_50770;
    ldv_50769:
    tmp___7 = __arch_hweight8((unsigned int )data[i]);
    hw8 = (u8 )tmp___7;
    if ((int )hw8 & 1 && (unsigned int )parity[i] != 0U) {
      goto out;
    } else
    if (((int )hw8 & 1) == 0 && (unsigned int )parity[i] == 0U) {
      goto out;
    } else {
    }
    i = i + 1;
    ldv_50770: ;
    if (i <= 27) {
      goto ldv_50769;
    } else {
    }
    err = 0;
    goto out;
  } else {
  }
  err = -5;
  csum = calc_crc((unsigned char *)buf, 16);
  if (*(buf + 4UL) != csum) {
    goto out;
  } else {
  }
  csum = calc_crc((unsigned char *)buf + 29U, 136);
  if (*(buf + 63UL) != csum) {
    goto out;
  } else {
  }
  kfree((void const *)buf);
  buf = tg3_vpd_readblock(tp, & len);
  if ((unsigned long )buf == (unsigned long )((__be32 *)0)) {
    return (-12);
  } else {
  }
  i = pci_vpd_find_tag((u8 const *)buf, 0U, len, 144);
  if (i > 0) {
    tmp___8 = pci_vpd_lrdt_size((u8 const *)buf + (unsigned long )i);
    j = (int )tmp___8;
    if (j < 0) {
      goto out;
    } else {
    }
    if ((u32 )((i + 3) + j) > len) {
      goto out;
    } else {
    }
    i = i + 3;
    j = pci_vpd_find_info_keyword((u8 const *)buf, (unsigned int )i, (unsigned int )j,
                                  "RV");
    if (j > 0) {
      csum8___0 = 0U;
      j = j + 3;
      i = 0;
      goto ldv_50774;
      ldv_50773:
      csum8___0 = (int )*((u8 *)buf + (unsigned long )i) + (int )csum8___0;
      i = i + 1;
      ldv_50774: ;
      if (i <= j) {
        goto ldv_50773;
      } else {
      }
      if ((unsigned int )csum8___0 != 0U) {
        goto out;
      } else {
      }
    } else {
    }
  } else {
  }
  err = 0;
  out:
  kfree((void const *)buf);
  return (err);
}
}
static int tg3_test_link(struct tg3 *tp )
{
  int i ;
  int max ;
  bool tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  {
  tmp = netif_running((struct net_device const *)tp->dev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-19);
  } else {
  }
  if ((tp->phy_flags & 48U) != 0U) {
    max = 2;
  } else {
    max = 6;
  }
  i = 0;
  goto ldv_50783;
  ldv_50782: ;
  if ((int )tp->link_up) {
    return (0);
  } else {
  }
  tmp___1 = msleep_interruptible(1000U);
  if (tmp___1 != 0UL) {
    goto ldv_50781;
  } else {
  }
  i = i + 1;
  ldv_50783: ;
  if (i < max) {
    goto ldv_50782;
  } else {
  }
  ldv_50781: ;
  return (-5);
}
}
static int tg3_test_registers(struct tg3 *tp )
{
  int i ;
  int is_5705 ;
  int is_5750 ;
  u32 offset ;
  u32 read_mask ;
  u32 write_mask ;
  u32 val ;
  u32 save_val ;
  u32 read_val ;
  struct __anonstruct_reg_tbl_272 reg_tbl[61U] ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  reg_tbl[0].offset = 1024U;
  reg_tbl[0].flags = 2U;
  reg_tbl[0].read_mask = 0U;
  reg_tbl[0].write_mask = 15691660U;
  reg_tbl[1].offset = 1024U;
  reg_tbl[1].flags = 1U;
  reg_tbl[1].read_mask = 0U;
  reg_tbl[1].write_mask = 32467852U;
  reg_tbl[2].offset = 1028U;
  reg_tbl[2].flags = 2U;
  reg_tbl[2].read_mask = 58720519U;
  reg_tbl[2].write_mask = 0U;
  reg_tbl[3].offset = 1028U;
  reg_tbl[3].flags = 1U;
  reg_tbl[3].read_mask = 58720512U;
  reg_tbl[3].write_mask = 0U;
  reg_tbl[4].offset = 1040U;
  reg_tbl[4].flags = 0U;
  reg_tbl[4].read_mask = 0U;
  reg_tbl[4].write_mask = 65535U;
  reg_tbl[5].offset = 1044U;
  reg_tbl[5].flags = 0U;
  reg_tbl[5].read_mask = 0U;
  reg_tbl[5].write_mask = 4294967295U;
  reg_tbl[6].offset = 1084U;
  reg_tbl[6].flags = 0U;
  reg_tbl[6].read_mask = 0U;
  reg_tbl[6].write_mask = 65535U;
  reg_tbl[7].offset = 1116U;
  reg_tbl[7].flags = 0U;
  reg_tbl[7].read_mask = 0U;
  reg_tbl[7].write_mask = 112U;
  reg_tbl[8].offset = 1124U;
  reg_tbl[8].flags = 0U;
  reg_tbl[8].read_mask = 0U;
  reg_tbl[8].write_mask = 16383U;
  reg_tbl[9].offset = 1128U;
  reg_tbl[9].flags = 2U;
  reg_tbl[9].read_mask = 0U;
  reg_tbl[9].write_mask = 2044U;
  reg_tbl[10].offset = 1128U;
  reg_tbl[10].flags = 1U;
  reg_tbl[10].read_mask = 0U;
  reg_tbl[10].write_mask = 2012U;
  reg_tbl[11].offset = 1136U;
  reg_tbl[11].flags = 0U;
  reg_tbl[11].read_mask = 0U;
  reg_tbl[11].write_mask = 4294967295U;
  reg_tbl[12].offset = 1140U;
  reg_tbl[12].flags = 0U;
  reg_tbl[12].read_mask = 0U;
  reg_tbl[12].write_mask = 4294967295U;
  reg_tbl[13].offset = 1144U;
  reg_tbl[13].flags = 0U;
  reg_tbl[13].read_mask = 0U;
  reg_tbl[13].write_mask = 4294967295U;
  reg_tbl[14].offset = 1148U;
  reg_tbl[14].flags = 0U;
  reg_tbl[14].read_mask = 0U;
  reg_tbl[14].write_mask = 4294967295U;
  reg_tbl[15].offset = 9280U;
  reg_tbl[15].flags = 2U;
  reg_tbl[15].read_mask = 0U;
  reg_tbl[15].write_mask = 4294967295U;
  reg_tbl[16].offset = 9284U;
  reg_tbl[16].flags = 2U;
  reg_tbl[16].read_mask = 0U;
  reg_tbl[16].write_mask = 4294967295U;
  reg_tbl[17].offset = 9288U;
  reg_tbl[17].flags = 2U;
  reg_tbl[17].read_mask = 0U;
  reg_tbl[17].write_mask = 3U;
  reg_tbl[18].offset = 9292U;
  reg_tbl[18].flags = 2U;
  reg_tbl[18].read_mask = 0U;
  reg_tbl[18].write_mask = 4294967295U;
  reg_tbl[19].offset = 9296U;
  reg_tbl[19].flags = 0U;
  reg_tbl[19].read_mask = 0U;
  reg_tbl[19].write_mask = 4294967295U;
  reg_tbl[20].offset = 9300U;
  reg_tbl[20].flags = 0U;
  reg_tbl[20].read_mask = 0U;
  reg_tbl[20].write_mask = 4294967295U;
  reg_tbl[21].offset = 9304U;
  reg_tbl[21].flags = 0U;
  reg_tbl[21].read_mask = 0U;
  reg_tbl[21].write_mask = 4294901762U;
  reg_tbl[22].offset = 9308U;
  reg_tbl[22].flags = 0U;
  reg_tbl[22].read_mask = 0U;
  reg_tbl[22].write_mask = 4294967295U;
  reg_tbl[23].offset = 11288U;
  reg_tbl[23].flags = 2U;
  reg_tbl[23].read_mask = 0U;
  reg_tbl[23].write_mask = 4294967295U;
  reg_tbl[24].offset = 11288U;
  reg_tbl[24].flags = 1U;
  reg_tbl[24].read_mask = 0U;
  reg_tbl[24].write_mask = 1023U;
  reg_tbl[25].offset = 11292U;
  reg_tbl[25].flags = 2U;
  reg_tbl[25].read_mask = 0U;
  reg_tbl[25].write_mask = 4294967295U;
  reg_tbl[26].offset = 15360U;
  reg_tbl[26].flags = 2U;
  reg_tbl[26].read_mask = 0U;
  reg_tbl[26].write_mask = 4U;
  reg_tbl[27].offset = 15360U;
  reg_tbl[27].flags = 1U;
  reg_tbl[27].read_mask = 0U;
  reg_tbl[27].write_mask = 246U;
  reg_tbl[28].offset = 15368U;
  reg_tbl[28].flags = 2U;
  reg_tbl[28].read_mask = 0U;
  reg_tbl[28].write_mask = 4294967295U;
  reg_tbl[29].offset = 15368U;
  reg_tbl[29].flags = 1U;
  reg_tbl[29].read_mask = 0U;
  reg_tbl[29].write_mask = 1023U;
  reg_tbl[30].offset = 15372U;
  reg_tbl[30].flags = 2U;
  reg_tbl[30].read_mask = 0U;
  reg_tbl[30].write_mask = 4294967295U;
  reg_tbl[31].offset = 15372U;
  reg_tbl[31].flags = 1U;
  reg_tbl[31].read_mask = 0U;
  reg_tbl[31].write_mask = 1023U;
  reg_tbl[32].offset = 15376U;
  reg_tbl[32].flags = 2U;
  reg_tbl[32].read_mask = 0U;
  reg_tbl[32].write_mask = 4294967295U;
  reg_tbl[33].offset = 15376U;
  reg_tbl[33].flags = 5U;
  reg_tbl[33].read_mask = 0U;
  reg_tbl[33].write_mask = 255U;
  reg_tbl[34].offset = 15380U;
  reg_tbl[34].flags = 2U;
  reg_tbl[34].read_mask = 0U;
  reg_tbl[34].write_mask = 4294967295U;
  reg_tbl[35].offset = 15380U;
  reg_tbl[35].flags = 5U;
  reg_tbl[35].read_mask = 0U;
  reg_tbl[35].write_mask = 255U;
  reg_tbl[36].offset = 15384U;
  reg_tbl[36].flags = 2U;
  reg_tbl[36].read_mask = 0U;
  reg_tbl[36].write_mask = 4294967295U;
  reg_tbl[37].offset = 15388U;
  reg_tbl[37].flags = 2U;
  reg_tbl[37].read_mask = 0U;
  reg_tbl[37].write_mask = 4294967295U;
  reg_tbl[38].offset = 15392U;
  reg_tbl[38].flags = 2U;
  reg_tbl[38].read_mask = 0U;
  reg_tbl[38].write_mask = 4294967295U;
  reg_tbl[39].offset = 15392U;
  reg_tbl[39].flags = 5U;
  reg_tbl[39].read_mask = 0U;
  reg_tbl[39].write_mask = 255U;
  reg_tbl[40].offset = 15396U;
  reg_tbl[40].flags = 2U;
  reg_tbl[40].read_mask = 0U;
  reg_tbl[40].write_mask = 4294967295U;
  reg_tbl[41].offset = 15396U;
  reg_tbl[41].flags = 5U;
  reg_tbl[41].read_mask = 0U;
  reg_tbl[41].write_mask = 255U;
  reg_tbl[42].offset = 15400U;
  reg_tbl[42].flags = 2U;
  reg_tbl[42].read_mask = 0U;
  reg_tbl[42].write_mask = 4294967295U;
  reg_tbl[43].offset = 15408U;
  reg_tbl[43].flags = 2U;
  reg_tbl[43].read_mask = 0U;
  reg_tbl[43].write_mask = 4294967295U;
  reg_tbl[44].offset = 15412U;
  reg_tbl[44].flags = 2U;
  reg_tbl[44].read_mask = 0U;
  reg_tbl[44].write_mask = 4294967295U;
  reg_tbl[45].offset = 15416U;
  reg_tbl[45].flags = 0U;
  reg_tbl[45].read_mask = 0U;
  reg_tbl[45].write_mask = 4294967295U;
  reg_tbl[46].offset = 15420U;
  reg_tbl[46].flags = 0U;
  reg_tbl[46].read_mask = 0U;
  reg_tbl[46].write_mask = 4294967295U;
  reg_tbl[47].offset = 15424U;
  reg_tbl[47].flags = 0U;
  reg_tbl[47].read_mask = 4294967295U;
  reg_tbl[47].write_mask = 0U;
  reg_tbl[48].offset = 15428U;
  reg_tbl[48].flags = 0U;
  reg_tbl[48].read_mask = 4294967295U;
  reg_tbl[48].write_mask = 0U;
  reg_tbl[49].offset = 17416U;
  reg_tbl[49].flags = 8U;
  reg_tbl[49].read_mask = 0U;
  reg_tbl[49].write_mask = 8388480U;
  reg_tbl[50].offset = 17420U;
  reg_tbl[50].flags = 8U;
  reg_tbl[50].read_mask = 0U;
  reg_tbl[50].write_mask = 8388607U;
  reg_tbl[51].offset = 17424U;
  reg_tbl[51].flags = 0U;
  reg_tbl[51].read_mask = 0U;
  reg_tbl[51].write_mask = 63U;
  reg_tbl[52].offset = 17428U;
  reg_tbl[52].flags = 0U;
  reg_tbl[52].read_mask = 0U;
  reg_tbl[52].write_mask = 511U;
  reg_tbl[53].offset = 17432U;
  reg_tbl[53].flags = 0U;
  reg_tbl[53].read_mask = 0U;
  reg_tbl[53].write_mask = 511U;
  reg_tbl[54].offset = 17452U;
  reg_tbl[54].flags = 2U;
  reg_tbl[54].read_mask = 4294967295U;
  reg_tbl[54].write_mask = 0U;
  reg_tbl[55].offset = 17456U;
  reg_tbl[55].flags = 2U;
  reg_tbl[55].read_mask = 4294967295U;
  reg_tbl[55].write_mask = 0U;
  reg_tbl[56].offset = 22636U;
  reg_tbl[56].flags = 0U;
  reg_tbl[56].read_mask = 0U;
  reg_tbl[56].write_mask = 511U;
  reg_tbl[57].offset = 22644U;
  reg_tbl[57].flags = 2U;
  reg_tbl[57].read_mask = 0U;
  reg_tbl[57].write_mask = 511U;
  reg_tbl[58].offset = 22660U;
  reg_tbl[58].flags = 0U;
  reg_tbl[58].read_mask = 0U;
  reg_tbl[58].write_mask = 2047U;
  reg_tbl[59].offset = 22788U;
  reg_tbl[59].flags = 0U;
  reg_tbl[59].read_mask = 0U;
  reg_tbl[59].write_mask = 511U;
  reg_tbl[60].offset = 65535U;
  reg_tbl[60].flags = 0U;
  reg_tbl[60].read_mask = 0U;
  reg_tbl[60].write_mask = 0U;
  is_5750 = 0;
  is_5705 = is_5750;
  tmp___0 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    is_5705 = 1;
    tmp = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      is_5750 = 1;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_50805;
  ldv_50804: ;
  if (is_5705 != 0 && ((int )reg_tbl[i].flags & 2) != 0) {
    goto ldv_50802;
  } else {
  }
  if (is_5705 == 0 && (int )reg_tbl[i].flags & 1) {
    goto ldv_50802;
  } else {
  }
  tmp___1 = _tg3_flag(71, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0 && ((int )reg_tbl[i].flags & 4) != 0) {
    goto ldv_50802;
  } else {
  }
  if (is_5750 != 0 && ((int )reg_tbl[i].flags & 8) != 0) {
    goto ldv_50802;
  } else {
  }
  offset = (unsigned int )reg_tbl[i].offset;
  read_mask = reg_tbl[i].read_mask;
  write_mask = reg_tbl[i].write_mask;
  save_val = (*(tp->read32))(tp, offset);
  read_val = save_val & read_mask;
  (*(tp->write32))(tp, offset, 0U);
  val = (*(tp->read32))(tp, offset);
  if ((val & read_mask) != read_val || (val & write_mask) != 0U) {
    goto out;
  } else {
  }
  (*(tp->write32))(tp, offset, read_mask | write_mask);
  val = (*(tp->read32))(tp, offset);
  if ((val & read_mask) != read_val) {
    goto out;
  } else {
  }
  if ((val & write_mask) != write_mask) {
    goto out;
  } else {
  }
  (*(tp->write32))(tp, offset, save_val);
  ldv_50802:
  i = i + 1;
  ldv_50805: ;
  if ((unsigned int )reg_tbl[i].offset != 65535U) {
    goto ldv_50804;
  } else {
  }
  return (0);
  out: ;
  if ((tp->msg_enable & 8192U) != 0U) {
    netdev_err((struct net_device const *)tp->dev, "Register test failed at offset %x\n",
               offset);
  } else {
  }
  (*(tp->write32))(tp, offset, save_val);
  return (-5);
}
}
static int tg3_do_mem_test(struct tg3 *tp , u32 offset , u32 len )
{
  u32 test_pattern[3U] ;
  int i ;
  u32 j ;
  u32 val ;
  {
  test_pattern[0] = 0U;
  test_pattern[1] = 4294967295U;
  test_pattern[2] = 2857739610U;
  i = 0;
  goto ldv_50822;
  ldv_50821:
  j = 0U;
  goto ldv_50819;
  ldv_50818:
  tg3_write_mem(tp, offset + j, test_pattern[i]);
  tg3_read_mem(tp, offset + j, & val);
  if (test_pattern[i] != val) {
    return (-5);
  } else {
  }
  j = j + 4U;
  ldv_50819: ;
  if (j < len) {
    goto ldv_50818;
  } else {
  }
  i = i + 1;
  ldv_50822: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_50821;
  } else {
  }
  return (0);
}
}
static int tg3_test_memory(struct tg3 *tp )
{
  struct mem_entry mem_tbl_570x[3U] ;
  struct mem_entry mem_tbl_5705[7U] ;
  struct mem_entry mem_tbl_5755[6U] ;
  struct mem_entry mem_tbl_5906[6U] ;
  struct mem_entry mem_tbl_5717[4U] ;
  struct mem_entry mem_tbl_57765[5U] ;
  struct mem_entry *mem_tbl ;
  int err ;
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  mem_tbl_570x[0].offset = 0U;
  mem_tbl_570x[0].len = 2896U;
  mem_tbl_570x[1].offset = 8192U;
  mem_tbl_570x[1].len = 114688U;
  mem_tbl_570x[2].offset = 4294967295U;
  mem_tbl_570x[2].len = 0U;
  mem_tbl_5705[0].offset = 256U;
  mem_tbl_5705[0].len = 12U;
  mem_tbl_5705[1].offset = 512U;
  mem_tbl_5705[1].len = 8U;
  mem_tbl_5705[2].offset = 16384U;
  mem_tbl_5705[2].len = 2048U;
  mem_tbl_5705[3].offset = 24576U;
  mem_tbl_5705[3].len = 4096U;
  mem_tbl_5705[4].offset = 32768U;
  mem_tbl_5705[4].len = 8192U;
  mem_tbl_5705[5].offset = 65536U;
  mem_tbl_5705[5].len = 57344U;
  mem_tbl_5705[6].offset = 4294967295U;
  mem_tbl_5705[6].len = 0U;
  mem_tbl_5755[0].offset = 512U;
  mem_tbl_5755[0].len = 8U;
  mem_tbl_5755[1].offset = 16384U;
  mem_tbl_5755[1].len = 2048U;
  mem_tbl_5755[2].offset = 24576U;
  mem_tbl_5755[2].len = 2048U;
  mem_tbl_5755[3].offset = 32768U;
  mem_tbl_5755[3].len = 8192U;
  mem_tbl_5755[4].offset = 65536U;
  mem_tbl_5755[4].len = 49152U;
  mem_tbl_5755[5].offset = 4294967295U;
  mem_tbl_5755[5].len = 0U;
  mem_tbl_5906[0].offset = 512U;
  mem_tbl_5906[0].len = 8U;
  mem_tbl_5906[1].offset = 16384U;
  mem_tbl_5906[1].len = 1024U;
  mem_tbl_5906[2].offset = 24576U;
  mem_tbl_5906[2].len = 1024U;
  mem_tbl_5906[3].offset = 32768U;
  mem_tbl_5906[3].len = 4096U;
  mem_tbl_5906[4].offset = 65536U;
  mem_tbl_5906[4].len = 4096U;
  mem_tbl_5906[5].offset = 4294967295U;
  mem_tbl_5906[5].len = 0U;
  mem_tbl_5717[0].offset = 512U;
  mem_tbl_5717[0].len = 8U;
  mem_tbl_5717[1].offset = 65536U;
  mem_tbl_5717[1].len = 40960U;
  mem_tbl_5717[2].offset = 131072U;
  mem_tbl_5717[2].len = 80896U;
  mem_tbl_5717[3].offset = 4294967295U;
  mem_tbl_5717[3].len = 0U;
  mem_tbl_57765[0].offset = 512U;
  mem_tbl_57765[0].len = 8U;
  mem_tbl_57765[1].offset = 16384U;
  mem_tbl_57765[1].len = 2048U;
  mem_tbl_57765[2].offset = 24576U;
  mem_tbl_57765[2].len = 38912U;
  mem_tbl_57765[3].offset = 65536U;
  mem_tbl_57765[3].len = 40960U;
  mem_tbl_57765[4].offset = 4294967295U;
  mem_tbl_57765[4].len = 0U;
  err = 0;
  tmp___2 = _tg3_flag(77, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    mem_tbl = (struct mem_entry *)(& mem_tbl_5717);
  } else {
    tmp___1 = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 != 0 || tp->pci_chip_rev_id >> 12 == 22370U) {
      mem_tbl = (struct mem_entry *)(& mem_tbl_57765);
    } else {
      tmp___0 = _tg3_flag(74, (unsigned long *)(& tp->tg3_flags));
      if (tmp___0 != 0) {
        mem_tbl = (struct mem_entry *)(& mem_tbl_5755);
      } else
      if (tp->pci_chip_rev_id >> 12 == 12U) {
        mem_tbl = (struct mem_entry *)(& mem_tbl_5906);
      } else {
        tmp = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
        if (tmp != 0) {
          mem_tbl = (struct mem_entry *)(& mem_tbl_5705);
        } else {
          mem_tbl = (struct mem_entry *)(& mem_tbl_570x);
        }
      }
    }
  }
  i = 0;
  goto ldv_50841;
  ldv_50840:
  err = tg3_do_mem_test(tp, (mem_tbl + (unsigned long )i)->offset, (mem_tbl + (unsigned long )i)->len);
  if (err != 0) {
    goto ldv_50839;
  } else {
  }
  i = i + 1;
  ldv_50841: ;
  if ((mem_tbl + (unsigned long )i)->offset != 4294967295U) {
    goto ldv_50840;
  } else {
  }
  ldv_50839: ;
  return (err);
}
}
static u8 const tg3_tso_header[54U] =
  { 8U, 0U, 69U, 0U,
        0U, 0U, 0U, 0U,
        64U, 0U, 64U, 6U,
        0U, 0U, 10U, 0U,
        0U, 1U, 10U, 0U,
        0U, 2U, 13U, 0U,
        224U, 0U, 0U, 0U,
        1U, 0U, 0U, 0U,
        2U, 0U, 128U, 16U,
        16U, 0U, 20U, 9U,
        0U, 0U, 1U, 1U,
        8U, 10U, 17U, 17U,
        17U, 17U, 17U, 17U,
        17U, 17U};
static int tg3_run_loopback(struct tg3 *tp , u32 pktsz , bool tso_loopback )
{
  u32 rx_start_idx ;
  u32 rx_idx ;
  u32 tx_idx ;
  u32 opaque_key ;
  u32 base_flags ;
  u32 mss ;
  u32 desc_idx ;
  u32 coal_now ;
  u32 data_off ;
  u32 val ;
  u32 budget ;
  struct sk_buff *skb ;
  u8 *tx_data ;
  u8 *rx_data ;
  dma_addr_t map ;
  int num_pkts ;
  int tx_len ;
  int rx_len ;
  int i ;
  int err ;
  struct tg3_rx_buffer_desc *desc ;
  struct tg3_napi *tnapi ;
  struct tg3_napi *rnapi ;
  struct tg3_rx_prodring_set *tpr ;
  int tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  size_t __len ;
  void *__ret ;
  struct iphdr *iph ;
  u32 hdr_len ;
  size_t __len___0 ;
  void *__ret___0 ;
  __u16 tmp___2 ;
  struct tcphdr *th ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  bool tmp___11 ;
  u32 tmp___12 ;
  int _max1 ;
  int _max2 ;
  {
  base_flags = 0U;
  mss = 0U;
  tpr = & tp->napi[0].prodring;
  tnapi = (struct tg3_napi *)(& tp->napi);
  rnapi = (struct tg3_napi *)(& tp->napi);
  if (tp->irq_cnt > 1U) {
    tmp = _tg3_flag(59, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      rnapi = (struct tg3_napi *)(& tp->napi) + 1UL;
    } else {
    }
    tmp___0 = _tg3_flag(60, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      tnapi = (struct tg3_napi *)(& tp->napi) + 1UL;
    } else {
    }
  } else {
  }
  coal_now = tnapi->coal_now | rnapi->coal_now;
  err = -5;
  tx_len = (int )pktsz;
  skb = netdev_alloc_skb(tp->dev, (unsigned int )tx_len);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  tmp___1 = skb_put(skb, (unsigned int )tx_len);
  tx_data = tmp___1;
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)tx_data, (void const *)(tp->dev)->dev_addr, __len);
  } else {
    __ret = memcpy((void *)tx_data, (void const *)(tp->dev)->dev_addr,
                             __len);
  }
  memset((void *)tx_data + 6U, 0, 8UL);
  (*(tp->write32))(tp, 1084U, (u32 )(tx_len + 4));
  if ((int )tso_loopback) {
    iph = (struct iphdr *)tx_data + 14U;
    hdr_len = 52U;
    __len___0 = 54UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)tx_data + 12U, (void const *)(& tg3_tso_header),
                           __len___0);
    } else {
      __ret___0 = memcpy((void *)tx_data + 12U, (void const *)(& tg3_tso_header),
                                   __len___0);
    }
    mss = 500U;
    val = (u32 )tx_len - 66U;
    num_pkts = (int )((val + 499U) / 500U);
    tmp___2 = __fswab16((int )((unsigned short )mss) + (int )((unsigned short )hdr_len));
    iph->tot_len = tmp___2;
    base_flags = 768U;
    tmp___3 = _tg3_flag(39, (unsigned long *)(& tp->tg3_flags));
    if (tmp___3 != 0) {
      val = 34U;
      th = (struct tcphdr *)tx_data + (unsigned long )val;
      th->check = 0U;
    } else {
      tmp___4 = _tg3_flag(40, (unsigned long *)(& tp->tg3_flags));
      if (tmp___4 != 0) {
        val = 34U;
        th = (struct tcphdr *)tx_data + (unsigned long )val;
        th->check = 0U;
      } else {
        tmp___5 = _tg3_flag(41, (unsigned long *)(& tp->tg3_flags));
        if (tmp___5 != 0) {
          val = 34U;
          th = (struct tcphdr *)tx_data + (unsigned long )val;
          th->check = 0U;
        } else {
          base_flags = base_flags | 1U;
        }
      }
    }
    tmp___8 = _tg3_flag(41, (unsigned long *)(& tp->tg3_flags));
    if (tmp___8 != 0) {
      mss = ((hdr_len & 12U) << 12) | mss;
      if ((hdr_len & 16U) != 0U) {
        base_flags = base_flags | 16U;
      } else {
      }
      base_flags = ((hdr_len & 992U) << 5) | base_flags;
    } else {
      tmp___7 = _tg3_flag(40, (unsigned long *)(& tp->tg3_flags));
      if (tmp___7 != 0) {
        mss = (hdr_len << 9) | mss;
      } else {
        tmp___6 = _tg3_flag(39, (unsigned long *)(& tp->tg3_flags));
        if (tmp___6 != 0 || tp->pci_chip_rev_id >> 12 == 3U) {
          mss = mss | 6144U;
        } else {
          base_flags = base_flags | 12288U;
        }
      }
    }
    data_off = 66U;
  } else {
    num_pkts = 1;
    data_off = 14U;
    tmp___9 = _tg3_flag(62, (unsigned long *)(& tp->tg3_flags));
    if (tmp___9 != 0 && tx_len > 1518) {
      base_flags = base_flags | 8U;
    } else {
    }
  }
  i = (int )data_off;
  goto ldv_50882;
  ldv_50881:
  *(tx_data + (unsigned long )i) = (unsigned char )i;
  i = i + 1;
  ldv_50882: ;
  if (i < tx_len) {
    goto ldv_50881;
  } else {
  }
  map = pci_map_single(tp->pdev, (void *)skb->data, (size_t )tx_len, 1);
  tmp___10 = pci_dma_mapping_error(tp->pdev, map);
  if (tmp___10 != 0) {
    consume_skb(skb);
    return (-5);
  } else {
  }
  val = tnapi->tx_prod;
  (tnapi->tx_buffers + (unsigned long )val)->skb = skb;
  (tnapi->tx_buffers + (unsigned long )val)->mapping = map;
  _tw32_flush(tp, 15360U, (tp->coalesce_mode | rnapi->coal_now) | 2U, 0U);
  __const_udelay(42950UL);
  rx_start_idx = (u32 )(rnapi->hw_status)->idx[0].rx_producer;
  budget = tg3_tx_avail(tnapi);
  tmp___11 = tg3_tx_frag_set(tnapi, & val, & budget, map, (u32 )tx_len, base_flags | 4U,
                             mss, 0U);
  if ((int )tmp___11) {
    (tnapi->tx_buffers + (unsigned long )val)->skb = 0;
    consume_skb(skb);
    return (-5);
  } else {
  }
  tnapi->tx_prod = tnapi->tx_prod + 1U;
  __asm__ volatile ("sfence": : : "memory");
  (*(tp->write32_tx_mbox))(tp, tnapi->prodmbox, tnapi->tx_prod);
  (*(tp->read32_mbox))(tp, tnapi->prodmbox);
  __const_udelay(42950UL);
  i = 0;
  goto ldv_50886;
  ldv_50885:
  _tw32_flush(tp, 15360U, (tp->coalesce_mode | coal_now) | 2U, 0U);
  __const_udelay(42950UL);
  tx_idx = (u32 )(tnapi->hw_status)->idx[0].tx_consumer;
  rx_idx = (u32 )(rnapi->hw_status)->idx[0].rx_producer;
  if (tnapi->tx_prod == tx_idx && rx_start_idx + (u32 )num_pkts == rx_idx) {
    goto ldv_50884;
  } else {
  }
  i = i + 1;
  ldv_50886: ;
  if (i <= 34) {
    goto ldv_50885;
  } else {
  }
  ldv_50884:
  tg3_tx_skb_unmap(tnapi, tnapi->tx_prod - 1U, -1);
  consume_skb(skb);
  if (tnapi->tx_prod != tx_idx) {
    goto out;
  } else {
  }
  if (rx_start_idx + (u32 )num_pkts != rx_idx) {
    goto out;
  } else {
  }
  val = data_off;
  goto ldv_50895;
  ldv_50894:
  tmp___12 = rx_start_idx;
  rx_start_idx = rx_start_idx + 1U;
  desc = rnapi->rx_rcb + (unsigned long )tmp___12;
  desc_idx = desc->opaque & 65535U;
  opaque_key = desc->opaque & 458752U;
  if ((desc->err_vlan & 4294901760U) != 0U && desc->err_vlan != 1048576U) {
    goto out;
  } else {
  }
  rx_len = (int )((desc->idx_len & 65535U) - 4U);
  if (! tso_loopback) {
    if (rx_len != tx_len) {
      goto out;
    } else {
    }
    if (pktsz <= 1532U) {
      if (opaque_key != 65536U) {
        goto out;
      } else {
      }
    } else
    if (opaque_key != 131072U) {
      goto out;
    } else {
    }
  } else
  if ((desc->type_flags & 8192U) != 0U && (desc->ip_tcp_csum & 65535U) != 65535U) {
    goto out;
  } else {
  }
  if (opaque_key == 65536U) {
    rx_data = (tpr->rx_std_buffers + (unsigned long )desc_idx)->data;
    map = (tpr->rx_std_buffers + (unsigned long )desc_idx)->mapping;
  } else
  if (opaque_key == 131072U) {
    rx_data = (tpr->rx_jmb_buffers + (unsigned long )desc_idx)->data;
    map = (tpr->rx_jmb_buffers + (unsigned long )desc_idx)->mapping;
  } else {
    goto out;
  }
  pci_dma_sync_single_for_cpu(tp->pdev, map, (size_t )rx_len, 2);
  _max1 = 32;
  _max2 = 64;
  rx_data = rx_data + (unsigned long )(_max1 > _max2 ? _max1 : _max2);
  i = (int )data_off;
  goto ldv_50892;
  ldv_50891: ;
  if ((int )*(rx_data + (unsigned long )i) != (int )((unsigned char )val)) {
    goto out;
  } else {
  }
  i = i + 1;
  val = val + 1U;
  ldv_50892: ;
  if (i < rx_len) {
    goto ldv_50891;
  } else {
  }
  ldv_50895: ;
  if (rx_idx != rx_start_idx) {
    goto ldv_50894;
  } else {
  }
  err = 0;
  out: ;
  return (err);
}
}
static int tg3_test_loopback(struct tg3 *tp , u64 *data , bool do_extlpbk )
{
  int err ;
  u32 eee_cap ;
  u32 jmb_pkt_sz ;
  bool tmp ;
  int tmp___0 ;
  int i ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int i___0 ;
  u32 tmp___6 ;
  unsigned long __ms ;
  unsigned long tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  unsigned long __ms___0 ;
  unsigned long tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  {
  err = -5;
  jmb_pkt_sz = 9000U;
  if (tp->dma_limit != 0U) {
    jmb_pkt_sz = tp->dma_limit - 14U;
  } else {
  }
  eee_cap = tp->phy_flags & 262144U;
  tp->phy_flags = tp->phy_flags & 4294705151U;
  tmp = netif_running((struct net_device const *)tp->dev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    *(data + 4UL) = 7ULL;
    *(data + 5UL) = 7ULL;
    if ((int )do_extlpbk) {
      *(data + 6UL) = 7ULL;
    } else {
    }
    goto done;
  } else {
  }
  err = tg3_reset_hw(tp, 1);
  if (err != 0) {
    *(data + 4UL) = 7ULL;
    *(data + 5UL) = 7ULL;
    if ((int )do_extlpbk) {
      *(data + 6UL) = 7ULL;
    } else {
    }
    goto done;
  } else {
  }
  tmp___1 = _tg3_flag(59, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    i = 1584;
    goto ldv_50908;
    ldv_50907:
    (*(tp->write32))(tp, (u32 )i, 0U);
    i = i + 4;
    ldv_50908: ;
    if (i <= 1711) {
      goto ldv_50907;
    } else {
    }
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 != 8U) {
    tmp___5 = _tg3_flag(26, (unsigned long *)(& tp->tg3_flags));
    if (tmp___5 == 0) {
      tg3_mac_loopback(tp, 1);
      tmp___2 = tg3_run_loopback(tp, 1514U, 0);
      if (tmp___2 != 0) {
        *(data + 4UL) = *(data + 4UL) | 1ULL;
      } else {
      }
      tmp___3 = _tg3_flag(24, (unsigned long *)(& tp->tg3_flags));
      if (tmp___3 != 0) {
        tmp___4 = tg3_run_loopback(tp, jmb_pkt_sz + 14U, 0);
        if (tmp___4 != 0) {
          *(data + 4UL) = *(data + 4UL) | 2ULL;
        } else {
        }
      } else {
      }
      tg3_mac_loopback(tp, 0);
    } else {
    }
  } else {
  }
  if ((tp->phy_flags & 16U) == 0U) {
    tmp___19 = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
    if (tmp___19 == 0) {
      tg3_phy_lpbk_set(tp, 0U, 0);
      i___0 = 0;
      goto ldv_50917;
      ldv_50916:
      tmp___6 = (*(tp->read32))(tp, 1120U);
      if ((tmp___6 & 8U) != 0U) {
        goto ldv_50911;
      } else {
      }
      if (1) {
        __const_udelay(4295000UL);
      } else {
        __ms = 1UL;
        goto ldv_50914;
        ldv_50913:
        __const_udelay(4295000UL);
        ldv_50914:
        tmp___7 = __ms;
        __ms = __ms - 1UL;
        if (tmp___7 != 0UL) {
          goto ldv_50913;
        } else {
        }
      }
      i___0 = i___0 + 1;
      ldv_50917: ;
      if (i___0 <= 99) {
        goto ldv_50916;
      } else {
      }
      ldv_50911:
      tmp___8 = tg3_run_loopback(tp, 1514U, 0);
      if (tmp___8 != 0) {
        *(data + 5UL) = *(data + 5UL) | 1ULL;
      } else {
      }
      tmp___9 = _tg3_flag(42, (unsigned long *)(& tp->tg3_flags));
      if (tmp___9 != 0) {
        tmp___10 = tg3_run_loopback(tp, 1514U, 1);
        if (tmp___10 != 0) {
          *(data + 5UL) = *(data + 5UL) | 4ULL;
        } else {
        }
      } else {
      }
      tmp___11 = _tg3_flag(24, (unsigned long *)(& tp->tg3_flags));
      if (tmp___11 != 0) {
        tmp___12 = tg3_run_loopback(tp, jmb_pkt_sz + 14U, 0);
        if (tmp___12 != 0) {
          *(data + 5UL) = *(data + 5UL) | 2ULL;
        } else {
        }
      } else {
      }
      if ((int )do_extlpbk) {
        tg3_phy_lpbk_set(tp, 0U, 1);
        __ms___0 = 40UL;
        goto ldv_50920;
        ldv_50919:
        __const_udelay(4295000UL);
        ldv_50920:
        tmp___13 = __ms___0;
        __ms___0 = __ms___0 - 1UL;
        if (tmp___13 != 0UL) {
          goto ldv_50919;
        } else {
        }
        tmp___14 = tg3_run_loopback(tp, 1514U, 0);
        if (tmp___14 != 0) {
          *(data + 6UL) = *(data + 6UL) | 1ULL;
        } else {
        }
        tmp___15 = _tg3_flag(42, (unsigned long *)(& tp->tg3_flags));
        if (tmp___15 != 0) {
          tmp___16 = tg3_run_loopback(tp, 1514U, 1);
          if (tmp___16 != 0) {
            *(data + 6UL) = *(data + 6UL) | 4ULL;
          } else {
          }
        } else {
        }
        tmp___17 = _tg3_flag(24, (unsigned long *)(& tp->tg3_flags));
        if (tmp___17 != 0) {
          tmp___18 = tg3_run_loopback(tp, jmb_pkt_sz + 14U, 0);
          if (tmp___18 != 0) {
            *(data + 6UL) = *(data + 6UL) | 2ULL;
          } else {
          }
        } else {
        }
      } else {
      }
      if ((tp->phy_flags & 256U) != 0U) {
        tg3_phy_toggle_apd(tp, 1);
      } else {
      }
    } else {
    }
  } else {
  }
  err = ((*(data + 4UL) | *(data + 5UL)) | *(data + 6UL)) != 0ULL ? -5 : 0;
  done:
  tp->phy_flags = tp->phy_flags | eee_cap;
  return (err);
}
}
static void tg3_self_test(struct net_device *dev , struct ethtool_test *etest , u64 *data )
{
  struct tg3 *tp ;
  void *tmp ;
  bool doextlpbk ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int err ;
  int err2 ;
  int irq_sync ;
  bool tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  bool tmp___9 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  doextlpbk = (etest->flags & 4U) != 0U;
  if ((int )tp->phy_flags & 1) {
    tmp___0 = tg3_power_up(tp);
    if (tmp___0 != 0) {
      etest->flags = etest->flags | 2U;
      memset((void *)data, 1, 64UL);
      return;
    } else {
    }
  } else {
  }
  memset((void *)data, 0, 64UL);
  tmp___1 = tg3_test_nvram(tp);
  if (tmp___1 != 0) {
    etest->flags = etest->flags | 2U;
    *data = 1ULL;
  } else {
  }
  if (! doextlpbk) {
    tmp___2 = tg3_test_link(tp);
    if (tmp___2 != 0) {
      etest->flags = etest->flags | 2U;
      *(data + 1UL) = 1ULL;
    } else {
    }
  } else {
  }
  if ((int )etest->flags & 1) {
    err2 = 0;
    irq_sync = 0;
    tmp___3 = netif_running((struct net_device const *)dev);
    if ((int )tmp___3) {
      tg3_phy_stop(tp);
      tg3_netif_stop(tp);
      irq_sync = 1;
    } else {
    }
    tg3_full_lock(tp, irq_sync);
    tg3_halt(tp, 2, 1);
    err = tg3_nvram_lock(tp);
    tg3_halt_cpu(tp, 20480U);
    tmp___4 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
    if (tmp___4 == 0) {
      tg3_halt_cpu(tp, 21504U);
    } else {
    }
    if (err == 0) {
      tg3_nvram_unlock(tp);
    } else {
    }
    if ((tp->phy_flags & 32U) != 0U) {
      tg3_phy_reset(tp);
    } else {
    }
    tmp___5 = tg3_test_registers(tp);
    if (tmp___5 != 0) {
      etest->flags = etest->flags | 2U;
      *(data + 2UL) = 1ULL;
    } else {
    }
    tmp___6 = tg3_test_memory(tp);
    if (tmp___6 != 0) {
      etest->flags = etest->flags | 2U;
      *(data + 3UL) = 1ULL;
    } else {
    }
    if ((int )doextlpbk) {
      etest->flags = etest->flags | 8U;
    } else {
    }
    tmp___7 = tg3_test_loopback(tp, data, (int )doextlpbk);
    if (tmp___7 != 0) {
      etest->flags = etest->flags | 2U;
    } else {
    }
    tg3_full_unlock(tp);
    tmp___8 = tg3_test_interrupt(tp);
    if (tmp___8 != 0) {
      etest->flags = etest->flags | 2U;
      *(data + 7UL) = 1ULL;
    } else {
    }
    tg3_full_lock(tp, 0);
    tg3_halt(tp, 0, 1);
    tmp___9 = netif_running((struct net_device const *)dev);
    if ((int )tmp___9) {
      _tg3_flag_set(31, (unsigned long *)(& tp->tg3_flags));
      err2 = tg3_restart_hw(tp, 1);
      if (err2 == 0) {
        tg3_netif_start(tp);
      } else {
      }
    } else {
    }
    tg3_full_unlock(tp);
    if (irq_sync != 0 && err2 == 0) {
      tg3_phy_start(tp);
    } else {
    }
  } else {
  }
  if ((int )tp->phy_flags & 1) {
    tg3_power_down(tp);
  } else {
  }
  return;
}
}
static int tg3_hwtstamp_ioctl(struct net_device *dev , struct ifreq *ifr , int cmd )
{
  struct tg3 *tp ;
  void *tmp ;
  struct hwtstamp_config stmpconf ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = _tg3_flag(69, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 == 0) {
    return (-22);
  } else {
  }
  tmp___1 = copy_from_user((void *)(& stmpconf), (void const *)ifr->ifr_ifru.ifru_data,
                           12UL);
  if (tmp___1 != 0UL) {
    return (-14);
  } else {
  }
  if (stmpconf.flags != 0) {
    return (-22);
  } else {
  }
  switch (stmpconf.tx_type) {
  case 1:
  _tg3_flag_set(65, (unsigned long *)(& tp->tg3_flags));
  goto ldv_50944;
  case 0:
  _tg3_flag_clear(65, (unsigned long *)(& tp->tg3_flags));
  goto ldv_50944;
  default: ;
  return (-34);
  }
  ldv_50944: ;
  switch (stmpconf.rx_filter) {
  case 0:
  tp->rxptpctl = 0U;
  goto ldv_50948;
  case 3:
  tp->rxptpctl = 33554435U;
  goto ldv_50948;
  case 4:
  tp->rxptpctl = 33554433U;
  goto ldv_50948;
  case 5:
  tp->rxptpctl = 33554434U;
  goto ldv_50948;
  case 12:
  tp->rxptpctl = 25165839U;
  goto ldv_50948;
  case 9:
  tp->rxptpctl = 8388623U;
  goto ldv_50948;
  case 6:
  tp->rxptpctl = 16777231U;
  goto ldv_50948;
  case 13:
  tp->rxptpctl = 25165825U;
  goto ldv_50948;
  case 10:
  tp->rxptpctl = 8388609U;
  goto ldv_50948;
  case 7:
  tp->rxptpctl = 16777217U;
  goto ldv_50948;
  case 14:
  tp->rxptpctl = 25165826U;
  goto ldv_50948;
  case 11:
  tp->rxptpctl = 8388610U;
  goto ldv_50948;
  case 8:
  tp->rxptpctl = 16777218U;
  goto ldv_50948;
  default: ;
  return (-34);
  }
  ldv_50948:
  tmp___2 = netif_running((struct net_device const *)dev);
  if ((int )tmp___2 && tp->rxptpctl != 0U) {
    (*(tp->write32))(tp, 1736U, tp->rxptpctl | 67108864U);
  } else {
  }
  tmp___3 = copy_to_user(ifr->ifr_ifru.ifru_data, (void const *)(& stmpconf), 12U);
  return (tmp___3 != 0 ? -14 : 0);
}
}
static int tg3_ioctl(struct net_device *dev , struct ifreq *ifr , int cmd )
{
  struct mii_ioctl_data *data ;
  struct mii_ioctl_data *tmp ;
  struct tg3 *tp ;
  void *tmp___0 ;
  int err ;
  struct phy_device *phydev ;
  int tmp___1 ;
  int tmp___2 ;
  u32 mii_regval ;
  bool tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  tmp = if_mii(ifr);
  data = tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp___0;
  tmp___2 = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    if ((tp->phy_flags & 2U) == 0U) {
      return (-11);
    } else {
    }
    phydev = (tp->mdio_bus)->phy_map[1];
    tmp___1 = phy_mii_ioctl(phydev, ifr, cmd);
    return (tmp___1);
  } else {
  }
  switch (cmd) {
  case 35143:
  data->phy_id = (__u16 )tp->phy_addr;
  case 35144: ;
  if ((tp->phy_flags & 16U) != 0U) {
    goto ldv_50974;
  } else {
  }
  tmp___3 = netif_running((struct net_device const *)dev);
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    return (-11);
  } else {
  }
  spin_lock_bh(& tp->lock);
  err = __tg3_readphy(tp, (unsigned int )data->phy_id & 31U, (int )data->reg_num & 31,
                      & mii_regval);
  spin_unlock_bh(& tp->lock);
  data->val_out = (__u16 )mii_regval;
  return (err);
  case 35145: ;
  if ((tp->phy_flags & 16U) != 0U) {
    goto ldv_50974;
  } else {
  }
  tmp___5 = netif_running((struct net_device const *)dev);
  if (tmp___5) {
    tmp___6 = 0;
  } else {
    tmp___6 = 1;
  }
  if (tmp___6) {
    return (-11);
  } else {
  }
  spin_lock_bh(& tp->lock);
  err = __tg3_writephy(tp, (unsigned int )data->phy_id & 31U, (int )data->reg_num & 31,
                       (u32 )data->val_in);
  spin_unlock_bh(& tp->lock);
  return (err);
  case 35248:
  tmp___7 = tg3_hwtstamp_ioctl(dev, ifr, cmd);
  return (tmp___7);
  default: ;
  goto ldv_50974;
  }
  ldv_50974: ;
  return (-95);
}
}
static int tg3_get_coalesce(struct net_device *dev , struct ethtool_coalesce *ec )
{
  struct tg3 *tp ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  __len = 92UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)ec, (void const *)(& tp->coal), __len);
  } else {
    __ret = memcpy((void *)ec, (void const *)(& tp->coal), __len);
  }
  return (0);
}
}
static int tg3_set_coalesce(struct net_device *dev , struct ethtool_coalesce *ec )
{
  struct tg3 *tp ;
  void *tmp ;
  u32 max_rxcoal_tick_int ;
  u32 max_txcoal_tick_int ;
  u32 max_stat_coal_ticks ;
  u32 min_stat_coal_ticks ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  max_rxcoal_tick_int = 0U;
  max_txcoal_tick_int = 0U;
  max_stat_coal_ticks = 0U;
  min_stat_coal_ticks = 0U;
  tmp___0 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 == 0) {
    max_rxcoal_tick_int = 1023U;
    max_txcoal_tick_int = 1023U;
    max_stat_coal_ticks = 3600012288U;
    min_stat_coal_ticks = 100U;
  } else {
  }
  if (((((((((ec->rx_coalesce_usecs > 1023U || ec->tx_coalesce_usecs > 1023U) || ec->rx_max_coalesced_frames > 255U) || ec->tx_max_coalesced_frames > 255U) || ec->rx_coalesce_usecs_irq > max_rxcoal_tick_int) || ec->tx_coalesce_usecs_irq > max_txcoal_tick_int) || ec->rx_max_coalesced_frames_irq > 255U) || ec->tx_max_coalesced_frames_irq > 255U) || ec->stats_block_coalesce_usecs > max_stat_coal_ticks) || ec->stats_block_coalesce_usecs < min_stat_coal_ticks) {
    return (-22);
  } else {
  }
  if (ec->rx_coalesce_usecs == 0U && ec->rx_max_coalesced_frames == 0U) {
    return (-22);
  } else {
  }
  if (ec->tx_coalesce_usecs == 0U && ec->tx_max_coalesced_frames == 0U) {
    return (-22);
  } else {
  }
  tp->coal.rx_coalesce_usecs = ec->rx_coalesce_usecs;
  tp->coal.tx_coalesce_usecs = ec->tx_coalesce_usecs;
  tp->coal.rx_max_coalesced_frames = ec->rx_max_coalesced_frames;
  tp->coal.tx_max_coalesced_frames = ec->tx_max_coalesced_frames;
  tp->coal.rx_coalesce_usecs_irq = ec->rx_coalesce_usecs_irq;
  tp->coal.tx_coalesce_usecs_irq = ec->tx_coalesce_usecs_irq;
  tp->coal.rx_max_coalesced_frames_irq = ec->rx_max_coalesced_frames_irq;
  tp->coal.tx_max_coalesced_frames_irq = ec->tx_max_coalesced_frames_irq;
  tp->coal.stats_block_coalesce_usecs = ec->stats_block_coalesce_usecs;
  tmp___1 = netif_running((struct net_device const *)dev);
  if ((int )tmp___1) {
    tg3_full_lock(tp, 0);
    __tg3_set_coalesce(tp, & tp->coal);
    tg3_full_unlock(tp);
  } else {
  }
  return (0);
}
}
static struct ethtool_ops const tg3_ethtool_ops =
     {& tg3_get_settings, & tg3_set_settings, & tg3_get_drvinfo, & tg3_get_regs_len,
    & tg3_get_regs, & tg3_get_wol, & tg3_set_wol, & tg3_get_msglevel, & tg3_set_msglevel,
    & tg3_nway_reset, & ethtool_op_get_link, & tg3_get_eeprom_len, & tg3_get_eeprom,
    & tg3_set_eeprom, & tg3_get_coalesce, & tg3_set_coalesce, & tg3_get_ringparam,
    & tg3_set_ringparam, & tg3_get_pauseparam, & tg3_set_pauseparam, & tg3_self_test,
    & tg3_get_strings, & tg3_set_phys_id, & tg3_get_ethtool_stats, 0, 0, 0, 0, & tg3_get_sset_count,
    & tg3_get_rxnfc, 0, 0, 0, & tg3_get_rxfh_indir_size, & tg3_get_rxfh_indir, & tg3_set_rxfh_indir,
    & tg3_get_channels, & tg3_set_channels, 0, 0, 0, & tg3_get_ts_info, 0, 0, 0, 0};
static struct rtnl_link_stats64 *tg3_get_stats64(struct net_device *dev , struct rtnl_link_stats64 *stats )
{
  struct tg3 *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  spin_lock_bh(& tp->lock);
  if ((unsigned long )tp->hw_stats == (unsigned long )((struct tg3_hw_stats *)0)) {
    spin_unlock_bh(& tp->lock);
    return (& tp->net_stats_prev);
  } else {
  }
  tg3_get_nstats(tp, stats);
  spin_unlock_bh(& tp->lock);
  return (stats);
}
}
static void tg3_set_rx_mode(struct net_device *dev )
{
  struct tg3 *tp ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return;
  } else {
  }
  tg3_full_lock(tp, 0);
  __tg3_set_rx_mode(dev);
  tg3_full_unlock(tp);
  return;
}
}
__inline static void tg3_set_mtu(struct net_device *dev , struct tg3 *tp , int new_mtu )
{
  int tmp ;
  int tmp___0 ;
  {
  dev->mtu = (unsigned int )new_mtu;
  if (new_mtu > 1500) {
    tmp = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      netdev_update_features(dev);
      _tg3_flag_clear(42, (unsigned long *)(& tp->tg3_flags));
    } else {
      _tg3_flag_set(24, (unsigned long *)(& tp->tg3_flags));
    }
  } else {
    tmp___0 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      _tg3_flag_set(42, (unsigned long *)(& tp->tg3_flags));
      netdev_update_features(dev);
    } else {
    }
    _tg3_flag_clear(24, (unsigned long *)(& tp->tg3_flags));
  }
  return;
}
}
static int tg3_change_mtu(struct net_device *dev , int new_mtu )
{
  struct tg3 *tp ;
  void *tmp ;
  int err ;
  bool reset_phy ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  reset_phy = 0;
  if (new_mtu <= 59) {
    return (-22);
  } else {
    tmp___0 = _tg3_flag(29, (unsigned long *)(& tp->tg3_flags));
    if ((tmp___0 != 0 ? 9000 : 1500) < new_mtu) {
      return (-22);
    } else {
    }
  }
  tmp___1 = netif_running((struct net_device const *)dev);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    tg3_set_mtu(dev, tp, new_mtu);
    return (0);
  } else {
  }
  tg3_phy_stop(tp);
  tg3_netif_stop(tp);
  tg3_full_lock(tp, 1);
  tg3_halt(tp, 0, 1);
  tg3_set_mtu(dev, tp, new_mtu);
  if (tp->pci_chip_rev_id >> 12 == 358246U) {
    reset_phy = 1;
  } else {
  }
  err = tg3_restart_hw(tp, (int )reset_phy);
  if (err == 0) {
    tg3_netif_start(tp);
  } else {
  }
  tg3_full_unlock(tp);
  if (err == 0) {
    tg3_phy_start(tp);
  } else {
  }
  return (err);
}
}
static struct net_device_ops const tg3_netdev_ops =
     {0, 0, & tg3_open, & tg3_close, & tg3_start_xmit, 0, 0, & tg3_set_rx_mode, & tg3_set_mac_addr,
    & eth_validate_addr, & tg3_ioctl, 0, & tg3_change_mtu, 0, & tg3_tx_timeout, & tg3_get_stats64,
    0, 0, 0, & tg3_poll_controller, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, & tg3_fix_features, & tg3_set_features, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void tg3_get_eeprom_size(struct tg3 *tp )
{
  u32 cursize ;
  u32 val ;
  u32 magic ;
  int tmp ;
  int tmp___0 ;
  {
  tp->nvram_size = 65536U;
  tmp = tg3_nvram_read(tp, 0U, & magic);
  if (tmp != 0) {
    return;
  } else {
  }
  if ((magic != 1721324970U && (magic & 4278190080U) != 2768240640U) && (magic & 65535U) != 43981U) {
    return;
  } else {
  }
  cursize = 16U;
  goto ldv_51026;
  ldv_51025:
  tmp___0 = tg3_nvram_read(tp, cursize, & val);
  if (tmp___0 != 0) {
    return;
  } else {
  }
  if (val == magic) {
    goto ldv_51024;
  } else {
  }
  cursize = cursize << 1;
  ldv_51026: ;
  if (tp->nvram_size > cursize) {
    goto ldv_51025;
  } else {
  }
  ldv_51024:
  tp->nvram_size = cursize;
  return;
}
}
static void tg3_get_nvram_size(struct tg3 *tp )
{
  u32 val ;
  int tmp ;
  int tmp___0 ;
  __u16 tmp___1 ;
  int tmp___2 ;
  {
  tmp = _tg3_flag(58, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    return;
  } else {
    tmp___0 = tg3_nvram_read(tp, 0U, & val);
    if (tmp___0 != 0) {
      return;
    } else {
    }
  }
  if (val != 1721324970U) {
    tg3_get_eeprom_size(tp);
    return;
  } else {
  }
  tmp___2 = tg3_nvram_read(tp, 240U, & val);
  if (tmp___2 == 0) {
    if (val != 0U) {
      tmp___1 = __fswab16((int )((unsigned short )val));
      tp->nvram_size = (u32 )((int )tmp___1 * 1024);
      return;
    } else {
    }
  } else {
  }
  tp->nvram_size = 524288U;
  return;
}
}
static void tg3_get_nvram_info(struct tg3 *tp )
{
  u32 nvcfg1 ;
  int tmp ;
  {
  nvcfg1 = (*(tp->read32))(tp, 28692U);
  if ((int )nvcfg1 & 1) {
    _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  } else {
    nvcfg1 = nvcfg1 & 2147483647U;
    (*(tp->write32))(tp, 28692U, nvcfg1);
  }
  if (tp->pci_chip_rev_id >> 12 == 4U) {
    goto _L;
  } else {
    tmp = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      _L:
      switch (nvcfg1 & 50331651U) {
      case 33554435U:
      tp->nvram_jedecnum = 31U;
      tp->nvram_pagesize = 264U;
      _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
      goto ldv_51036;
      case 3U:
      tp->nvram_jedecnum = 31U;
      tp->nvram_pagesize = 256U;
      goto ldv_51036;
      case 33554432U:
      tp->nvram_jedecnum = 31U;
      tp->nvram_pagesize = 524288U;
      _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
      goto ldv_51036;
      case 50331649U:
      tp->nvram_jedecnum = 32U;
      tp->nvram_pagesize = 256U;
      _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
      goto ldv_51036;
      case 16777219U:
      tp->nvram_jedecnum = 79U;
      tp->nvram_pagesize = 256U;
      goto ldv_51036;
      case 1U: ;
      case 33554433U:
      tp->nvram_jedecnum = 191U;
      tp->nvram_pagesize = 4098U;
      goto ldv_51036;
      }
      ldv_51036: ;
    } else {
      tp->nvram_jedecnum = 31U;
      tp->nvram_pagesize = 264U;
      _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
    }
  }
  return;
}
}
static void tg3_nvram_get_pagesize(struct tg3 *tp , u32 nvmcfg1 )
{
  {
  switch (nvmcfg1 & 1879048192U) {
  case 0U:
  tp->nvram_pagesize = 256U;
  goto ldv_51048;
  case 268435456U:
  tp->nvram_pagesize = 512U;
  goto ldv_51048;
  case 536870912U:
  tp->nvram_pagesize = 1024U;
  goto ldv_51048;
  case 805306368U:
  tp->nvram_pagesize = 2048U;
  goto ldv_51048;
  case 1073741824U:
  tp->nvram_pagesize = 4096U;
  goto ldv_51048;
  case 1342177280U:
  tp->nvram_pagesize = 264U;
  goto ldv_51048;
  case 1610612736U:
  tp->nvram_pagesize = 528U;
  goto ldv_51048;
  }
  ldv_51048: ;
  return;
}
}
static void tg3_get_5752_nvram_info(struct tg3 *tp )
{
  u32 nvcfg1 ;
  int tmp ;
  {
  nvcfg1 = (*(tp->read32))(tp, 28692U);
  if ((nvcfg1 & 134217728U) != 0U) {
    _tg3_flag_set(49, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  switch (nvcfg1 & 62914563U) {
  case 0U: ;
  case 33554432U:
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  goto ldv_51061;
  case 33554435U:
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  goto ldv_51061;
  case 37748736U: ;
  case 37748738U: ;
  case 37748737U:
  tp->nvram_jedecnum = 32U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  goto ldv_51061;
  }
  ldv_51061:
  tmp = _tg3_flag(37, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    tg3_nvram_get_pagesize(tp, nvcfg1);
  } else {
    tp->nvram_pagesize = 524288U;
    nvcfg1 = nvcfg1 & 2147483647U;
    (*(tp->write32))(tp, 28692U, nvcfg1);
  }
  return;
}
}
static void tg3_get_5755_nvram_info(struct tg3 *tp )
{
  u32 nvcfg1 ;
  u32 protect ;
  {
  protect = 0U;
  nvcfg1 = (*(tp->read32))(tp, 28692U);
  if ((nvcfg1 & 134217728U) != 0U) {
    _tg3_flag_set(49, (unsigned long *)(& tp->tg3_flags));
    protect = 1U;
  } else {
  }
  nvcfg1 = nvcfg1 & 62914563U;
  switch (nvcfg1) {
  case 54525953U: ;
  case 54525954U: ;
  case 54525952U: ;
  case 33554435U:
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  tp->nvram_pagesize = 264U;
  if (nvcfg1 == 54525953U || nvcfg1 == 33554435U) {
    tp->nvram_size = protect != 0U ? 254464U : 524288U;
  } else
  if (nvcfg1 == 54525954U) {
    tp->nvram_size = protect != 0U ? 127488U : 262144U;
  } else {
    tp->nvram_size = protect != 0U ? 127488U : 131072U;
  }
  goto ldv_51075;
  case 37748736U: ;
  case 37748738U: ;
  case 37748737U:
  tp->nvram_jedecnum = 32U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  tp->nvram_pagesize = 256U;
  if (nvcfg1 == 37748736U) {
    tp->nvram_size = protect != 0U ? 65536U : 131072U;
  } else
  if (nvcfg1 == 37748738U) {
    tp->nvram_size = protect != 0U ? 65536U : 262144U;
  } else {
    tp->nvram_size = protect != 0U ? 131072U : 524288U;
  }
  goto ldv_51075;
  }
  ldv_51075: ;
  return;
}
}
static void tg3_get_5787_nvram_info(struct tg3 *tp )
{
  u32 nvcfg1 ;
  {
  nvcfg1 = (*(tp->read32))(tp, 28692U);
  switch (nvcfg1 & 62914563U) {
  case 50331651U: ;
  case 50331650U: ;
  case 50331648U: ;
  case 33554432U:
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  tp->nvram_pagesize = 524288U;
  nvcfg1 = nvcfg1 & 2147483647U;
  (*(tp->write32))(tp, 28692U, nvcfg1);
  goto ldv_51087;
  case 33554435U: ;
  case 54525953U: ;
  case 54525954U: ;
  case 54525952U:
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  tp->nvram_pagesize = 264U;
  goto ldv_51087;
  case 37748736U: ;
  case 37748738U: ;
  case 37748737U:
  tp->nvram_jedecnum = 32U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  tp->nvram_pagesize = 256U;
  goto ldv_51087;
  }
  ldv_51087: ;
  return;
}
}
static void tg3_get_5761_nvram_info(struct tg3 *tp )
{
  u32 nvcfg1 ;
  u32 protect ;
  {
  protect = 0U;
  nvcfg1 = (*(tp->read32))(tp, 28692U);
  if ((nvcfg1 & 134217728U) != 0U) {
    _tg3_flag_set(49, (unsigned long *)(& tp->tg3_flags));
    protect = 1U;
  } else {
  }
  nvcfg1 = nvcfg1 & 62914563U;
  switch (nvcfg1) {
  case 3U: ;
  case 0U: ;
  case 2U: ;
  case 1U: ;
  case 8388611U: ;
  case 8388608U: ;
  case 8388610U: ;
  case 8388609U:
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(47, (unsigned long *)(& tp->tg3_flags));
  tp->nvram_pagesize = 256U;
  goto ldv_51108;
  case 33554433U: ;
  case 33554432U: ;
  case 33554434U: ;
  case 33554435U: ;
  case 41943041U: ;
  case 41943040U: ;
  case 41943042U: ;
  case 41943043U:
  tp->nvram_jedecnum = 32U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  tp->nvram_pagesize = 256U;
  goto ldv_51108;
  }
  ldv_51108: ;
  if (protect != 0U) {
    tp->nvram_size = (*(tp->read32))(tp, 28720U);
  } else {
    switch (nvcfg1) {
    case 1U: ;
    case 8388609U: ;
    case 33554435U: ;
    case 41943043U:
    tp->nvram_size = 2097152U;
    goto ldv_51121;
    case 2U: ;
    case 8388610U: ;
    case 33554434U: ;
    case 41943042U:
    tp->nvram_size = 1048576U;
    goto ldv_51121;
    case 0U: ;
    case 8388608U: ;
    case 33554432U: ;
    case 41943040U:
    tp->nvram_size = 524288U;
    goto ldv_51121;
    case 3U: ;
    case 8388611U: ;
    case 33554433U: ;
    case 41943041U:
    tp->nvram_size = 262144U;
    goto ldv_51121;
    }
    ldv_51121: ;
  }
  return;
}
}
static void tg3_get_5906_nvram_info(struct tg3 *tp )
{
  {
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  tp->nvram_pagesize = 524288U;
  return;
}
}
static void tg3_get_57780_nvram_info(struct tg3 *tp )
{
  u32 nvcfg1 ;
  {
  nvcfg1 = (*(tp->read32))(tp, 28692U);
  switch (nvcfg1 & 62914563U) {
  case 50331650U: ;
  case 33554432U:
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  tp->nvram_pagesize = 524288U;
  nvcfg1 = nvcfg1 & 2147483647U;
  (*(tp->write32))(tp, 28692U, nvcfg1);
  return;
  case 33554435U: ;
  case 4194304U: ;
  case 54525952U: ;
  case 4194306U: ;
  case 54525954U: ;
  case 4194305U: ;
  case 54525953U:
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  switch (nvcfg1 & 62914563U) {
  case 33554435U: ;
  case 4194304U: ;
  case 54525952U:
  tp->nvram_size = 131072U;
  goto ldv_51153;
  case 4194306U: ;
  case 54525954U:
  tp->nvram_size = 262144U;
  goto ldv_51153;
  case 4194305U: ;
  case 54525953U:
  tp->nvram_size = 524288U;
  goto ldv_51153;
  }
  ldv_51153: ;
  goto ldv_51158;
  case 37748736U: ;
  case 37748738U: ;
  case 37748737U:
  tp->nvram_jedecnum = 32U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  switch (nvcfg1 & 62914563U) {
  case 37748736U:
  tp->nvram_size = 131072U;
  goto ldv_51163;
  case 37748738U:
  tp->nvram_size = 262144U;
  goto ldv_51163;
  case 37748737U:
  tp->nvram_size = 524288U;
  goto ldv_51163;
  }
  ldv_51163: ;
  goto ldv_51158;
  default:
  _tg3_flag_set(58, (unsigned long *)(& tp->tg3_flags));
  return;
  }
  ldv_51158:
  tg3_nvram_get_pagesize(tp, nvcfg1);
  if (tp->nvram_pagesize != 264U && tp->nvram_pagesize != 528U) {
    _tg3_flag_set(47, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  return;
}
}
static void tg3_get_5717_nvram_info(struct tg3 *tp )
{
  u32 nvcfg1 ;
  {
  nvcfg1 = (*(tp->read32))(tp, 28692U);
  switch (nvcfg1 & 62914563U) {
  case 33554433U: ;
  case 33554435U:
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  tp->nvram_pagesize = 524288U;
  nvcfg1 = nvcfg1 & 2147483647U;
  (*(tp->write32))(tp, 28692U, nvcfg1);
  return;
  case 16777217U: ;
  case 20971520U: ;
  case 20971521U: ;
  case 16777219U: ;
  case 20971522U: ;
  case 20971523U: ;
  case 54525952U:
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  switch (nvcfg1 & 62914563U) {
  case 16777219U: ;
  goto ldv_51181;
  case 20971522U: ;
  case 20971523U:
  tp->nvram_size = 262144U;
  goto ldv_51181;
  default:
  tp->nvram_size = 131072U;
  goto ldv_51181;
  }
  ldv_51181: ;
  goto ldv_51185;
  case 33554432U: ;
  case 37748736U: ;
  case 1U: ;
  case 37748737U: ;
  case 33554434U: ;
  case 37748738U: ;
  case 3U: ;
  case 37748739U: ;
  case 54525954U: ;
  case 54525953U:
  tp->nvram_jedecnum = 32U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  switch (nvcfg1 & 62914563U) {
  case 33554434U: ;
  case 3U: ;
  goto ldv_51198;
  case 37748738U: ;
  case 37748739U:
  tp->nvram_size = 262144U;
  goto ldv_51198;
  default:
  tp->nvram_size = 131072U;
  goto ldv_51198;
  }
  ldv_51198: ;
  goto ldv_51185;
  default:
  _tg3_flag_set(58, (unsigned long *)(& tp->tg3_flags));
  return;
  }
  ldv_51185:
  tg3_nvram_get_pagesize(tp, nvcfg1);
  if (tp->nvram_pagesize != 264U && tp->nvram_pagesize != 528U) {
    _tg3_flag_set(47, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  return;
}
}
static void tg3_get_5720_nvram_info(struct tg3 *tp )
{
  u32 nvcfg1 ;
  u32 nvmpinstrp ;
  u32 val ;
  int tmp ;
  {
  nvcfg1 = (*(tp->read32))(tp, 28692U);
  nvmpinstrp = nvcfg1 & 62914563U;
  if (tp->pci_chip_rev_id >> 12 == 22370U) {
    if ((nvcfg1 & 65011715U) == 0U) {
      _tg3_flag_set(58, (unsigned long *)(& tp->tg3_flags));
      return;
    } else {
    }
    switch (nvmpinstrp) {
    case 33554433U:
    nvmpinstrp = 1U;
    goto ldv_51209;
    case 33554435U:
    nvmpinstrp = 3U;
    goto ldv_51209;
    case 50331650U:
    nvmpinstrp = 62914561U;
    goto ldv_51209;
    }
    ldv_51209: ;
  } else {
  }
  switch (nvmpinstrp) {
  case 1U: ;
  case 3U:
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  nvcfg1 = nvcfg1 & 2147483647U;
  (*(tp->write32))(tp, 28692U, nvcfg1);
  if (nvmpinstrp == 1U) {
    tp->nvram_pagesize = 524288U;
  } else {
    tp->nvram_pagesize = 2048U;
  }
  return;
  case 16777216U: ;
  case 25165824U: ;
  case 29360128U: ;
  case 16777218U: ;
  case 25165826U: ;
  case 29360130U: ;
  case 16777217U: ;
  case 25165825U: ;
  case 29360129U: ;
  case 16777219U: ;
  case 29360131U: ;
  case 62914560U:
  tp->nvram_jedecnum = 31U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  switch (nvmpinstrp) {
  case 16777218U: ;
  case 25165826U: ;
  case 29360130U:
  tp->nvram_size = 262144U;
  goto ldv_51229;
  case 16777217U: ;
  case 25165825U: ;
  case 29360129U:
  tp->nvram_size = 524288U;
  goto ldv_51229;
  case 16777219U: ;
  case 29360131U:
  tp->nvram_size = 1048576U;
  goto ldv_51229;
  default: ;
  if (tp->pci_chip_rev_id >> 12 != 22370U) {
    tp->nvram_size = 131072U;
  } else {
  }
  goto ldv_51229;
  }
  ldv_51229: ;
  goto ldv_51236;
  case 33554432U: ;
  case 50331648U: ;
  case 41943040U: ;
  case 46137344U: ;
  case 33554434U: ;
  case 50331650U: ;
  case 41943042U: ;
  case 46137346U: ;
  case 33554433U: ;
  case 50331649U: ;
  case 41943041U: ;
  case 46137345U: ;
  case 33554435U: ;
  case 50331651U: ;
  case 41943043U: ;
  case 46137347U: ;
  case 62914562U: ;
  case 62914561U:
  tp->nvram_jedecnum = 32U;
  _tg3_flag_set(13, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(37, (unsigned long *)(& tp->tg3_flags));
  switch (nvmpinstrp) {
  case 33554434U: ;
  case 50331650U: ;
  case 41943042U: ;
  case 46137346U:
  tp->nvram_size = 262144U;
  goto ldv_51259;
  case 33554433U: ;
  case 50331649U: ;
  case 41943041U: ;
  case 46137345U:
  tp->nvram_size = 524288U;
  goto ldv_51259;
  case 33554435U: ;
  case 50331651U: ;
  case 41943043U: ;
  case 46137347U:
  tp->nvram_size = 1048576U;
  goto ldv_51259;
  default: ;
  if (tp->pci_chip_rev_id >> 12 != 22370U) {
    tp->nvram_size = 131072U;
  } else {
  }
  goto ldv_51259;
  }
  ldv_51259: ;
  goto ldv_51236;
  default:
  _tg3_flag_set(58, (unsigned long *)(& tp->tg3_flags));
  return;
  }
  ldv_51236:
  tg3_nvram_get_pagesize(tp, nvcfg1);
  if (tp->nvram_pagesize != 264U && tp->nvram_pagesize != 528U) {
    _tg3_flag_set(47, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 22370U) {
    tmp = tg3_nvram_read(tp, 0U, & val);
    if (tmp != 0) {
      return;
    } else {
    }
    if (val != 1721324970U && (val & 4278190080U) != 2768240640U) {
      _tg3_flag_set(58, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
  } else {
  }
  return;
}
}
static void tg3_nvram_init(struct tg3 *tp )
{
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = _tg3_flag(78, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    _tg3_flag_clear(12, (unsigned long *)(& tp->tg3_flags));
    _tg3_flag_clear(13, (unsigned long *)(& tp->tg3_flags));
    _tg3_flag_set(58, (unsigned long *)(& tp->tg3_flags));
    return;
  } else {
  }
  _tw32_flush(tp, 26680U, 543162368U, 0U);
  msleep(1U);
  tmp___0 = (*(tp->read32))(tp, 26632U);
  _tw32_flush(tp, 26632U, tmp___0 | 16777216U, 0U);
  __const_udelay(429500UL);
  if (tp->pci_chip_rev_id >> 12 != 7U && tp->pci_chip_rev_id >> 12 != 0U) {
    _tg3_flag_set(12, (unsigned long *)(& tp->tg3_flags));
    tmp___1 = tg3_nvram_lock(tp);
    if (tmp___1 != 0) {
      netdev_warn((struct net_device const *)tp->dev, "Cannot get nvram lock, %s failed\n",
                  "tg3_nvram_init");
      return;
    } else {
    }
    tg3_enable_nvram_access(tp);
    tp->nvram_size = 0U;
    if (tp->pci_chip_rev_id >> 12 == 6U) {
      tg3_get_5752_nvram_info(tp);
    } else
    if (tp->pci_chip_rev_id >> 12 == 10U) {
      tg3_get_5755_nvram_info(tp);
    } else
    if ((tp->pci_chip_rev_id >> 12 == 11U || tp->pci_chip_rev_id >> 12 == 22404U) || tp->pci_chip_rev_id >> 12 == 22405U) {
      tg3_get_5787_nvram_info(tp);
    } else
    if (tp->pci_chip_rev_id >> 12 == 22369U) {
      tg3_get_5761_nvram_info(tp);
    } else
    if (tp->pci_chip_rev_id >> 12 == 12U) {
      tg3_get_5906_nvram_info(tp);
    } else
    if (tp->pci_chip_rev_id >> 12 == 358272U) {
      tg3_get_57780_nvram_info(tp);
    } else {
      tmp___2 = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
      if (tmp___2 != 0) {
        tg3_get_57780_nvram_info(tp);
      } else
      if (tp->pci_chip_rev_id >> 12 == 22295U || tp->pci_chip_rev_id >> 12 == 22297U) {
        tg3_get_5717_nvram_info(tp);
      } else
      if (tp->pci_chip_rev_id >> 12 == 22304U || tp->pci_chip_rev_id >> 12 == 22370U) {
        tg3_get_5720_nvram_info(tp);
      } else {
        tg3_get_nvram_info(tp);
      }
    }
    if (tp->nvram_size == 0U) {
      tg3_get_nvram_size(tp);
    } else {
    }
    tg3_disable_nvram_access(tp);
    tg3_nvram_unlock(tp);
  } else {
    _tg3_flag_clear(12, (unsigned long *)(& tp->tg3_flags));
    _tg3_flag_clear(13, (unsigned long *)(& tp->tg3_flags));
    tg3_get_eeprom_size(tp);
  }
  return;
}
}
static struct subsys_tbl_ent subsys_id_to_phy_id[26U] =
  { {5348U, 5700U, 1610645584U},
        {5348U, 1U, 1610645776U},
        {5348U, 2U, 1610678592U},
        {5348U, 3U, 0U},
        {5348U, 5U, 1610645776U},
        {5348U, 6U, 1610645776U},
        {5348U, 7U, 0U},
        {5348U, 8U, 1610645776U},
        {5348U, 32776U, 1610645776U},
        {5348U, 9U, 1610645856U},
        {5348U, 32777U, 1610645856U},
        {4279U, 4096U, 1610645584U},
        {4279U, 4102U, 1610645776U},
        {4279U, 4100U, 0U},
        {4279U, 4103U, 1610645776U},
        {4279U, 4104U, 1610645776U},
        {4136U, 209U, 1610645584U},
        {4136U, 262U, 1610645584U},
        {4136U, 265U, 1610645616U},
        {4136U, 266U, 1610645616U},
        {3601U, 124U, 1610645776U},
        {3601U, 154U, 1610645776U},
        {3601U, 125U, 0U},
        {3601U, 133U, 1610645776U},
        {3601U, 153U, 1610645776U},
        {4116U, 641U, 0U}};
static struct subsys_tbl_ent *tg3_lookup_by_subsys(struct tg3 *tp )
{
  int i ;
  {
  i = 0;
  goto ldv_51287;
  ldv_51286: ;
  if ((int )subsys_id_to_phy_id[i].subsys_vendor == (int )(tp->pdev)->subsystem_vendor && (int )subsys_id_to_phy_id[i].subsys_devid == (int )(tp->pdev)->subsystem_device) {
    return ((struct subsys_tbl_ent *)(& subsys_id_to_phy_id) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_51287: ;
  if ((unsigned int )i <= 25U) {
    goto ldv_51286;
  } else {
  }
  return (0);
}
}
static void tg3_get_eeprom_hw_cfg(struct tg3 *tp )
{
  u32 val ;
  u32 tmp ;
  u32 nic_cfg ;
  u32 led_cfg ;
  u32 nic_phy_id ;
  u32 ver ;
  u32 cfg2 ;
  u32 cfg4 ;
  u32 eeprom_phy_id ;
  int eeprom_phy_serdes ;
  u32 id1 ;
  u32 id2 ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  u32 cfg3 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  tp->phy_id = 4294967295U;
  tp->led_ctrl = 2048U;
  _tg3_flag_set(11, (unsigned long *)(& tp->tg3_flags));
  _tg3_flag_set(23, (unsigned long *)(& tp->tg3_flags));
  if (tp->pci_chip_rev_id >> 12 == 12U) {
    tmp = (*(tp->read32))(tp, 31748U);
    if ((tmp & 32U) == 0U) {
      _tg3_flag_clear(11, (unsigned long *)(& tp->tg3_flags));
      _tg3_flag_set(36, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
    val = (*(tp->read32))(tp, 20740U);
    if ((val & 4096U) != 0U) {
      _tg3_flag_set(5, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
    if ((int )val & 1 && (val & 4U) != 0U) {
      _tg3_flag_set(10, (unsigned long *)(& tp->tg3_flags));
      device_set_wakeup_enable(& (tp->pdev)->dev, 1);
    } else {
    }
    goto done;
  } else {
  }
  tg3_read_mem(tp, 2900U, & val);
  if (val == 1264940628U) {
    cfg2 = 0U;
    cfg4 = 0U;
    eeprom_phy_serdes = 0;
    tg3_read_mem(tp, 2904U, & nic_cfg);
    tp->nic_sram_data_cfg = nic_cfg;
    tg3_read_mem(tp, 2908U, & ver);
    ver = ver >> 16;
    if ((((tp->pci_chip_rev_id >> 12 != 7U && tp->pci_chip_rev_id >> 12 != 0U) && tp->pci_chip_rev_id >> 12 != 1U) && ver != 0U) && ver <= 255U) {
      tg3_read_mem(tp, 3384U, & cfg2);
    } else {
    }
    if (tp->pci_chip_rev_id >> 12 == 22405U) {
      tg3_read_mem(tp, 3424U, & cfg4);
    } else {
    }
    if ((nic_cfg & 48U) == 32U) {
      eeprom_phy_serdes = 1;
    } else {
    }
    tg3_read_mem(tp, 2932U, & nic_phy_id);
    if (nic_phy_id != 0U) {
      id1 = nic_phy_id & 4294901760U;
      id2 = nic_phy_id & 65535U;
      eeprom_phy_id = (id1 >> 16) << 10;
      eeprom_phy_id = ((id2 & 64512U) << 16) | eeprom_phy_id;
      eeprom_phy_id = (id2 & 1023U) | eeprom_phy_id;
    } else {
      eeprom_phy_id = 0U;
    }
    tp->phy_id = eeprom_phy_id;
    if (eeprom_phy_serdes != 0) {
      tmp___0 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
      if (tmp___0 == 0) {
        tp->phy_flags = tp->phy_flags | 16U;
      } else {
        tp->phy_flags = tp->phy_flags | 32U;
      }
    } else {
    }
    tmp___1 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 != 0) {
      led_cfg = cfg2 & 98316U;
    } else {
      led_cfg = nic_cfg & 12U;
    }
    switch (led_cfg) {
    default: ;
    case 4U:
    tp->led_ctrl = 2048U;
    goto ldv_51306;
    case 8U:
    tp->led_ctrl = 4096U;
    goto ldv_51306;
    case 0U:
    tp->led_ctrl = 0U;
    if (tp->pci_chip_rev_id >> 12 == 7U || tp->pci_chip_rev_id >> 12 == 0U) {
      tp->led_ctrl = 2048U;
    } else {
    }
    goto ldv_51306;
    case 32768U:
    tp->led_ctrl = 16384U;
    if (tp->pci_chip_rev_id != 16384U && tp->pci_chip_rev_id != 16385U) {
      tp->led_ctrl = tp->led_ctrl | 6144U;
    } else {
    }
    goto ldv_51306;
    case 65536U:
    tp->led_ctrl = 8192U;
    goto ldv_51306;
    case 98304U:
    tp->led_ctrl = 32768U;
    if (tp->pci_chip_rev_id != 16384U) {
      tp->led_ctrl = tp->led_ctrl | 6144U;
    } else {
    }
    goto ldv_51306;
    }
    ldv_51306: ;
    if ((tp->pci_chip_rev_id >> 12 == 7U || tp->pci_chip_rev_id >> 12 == 0U) && (unsigned int )(tp->pdev)->subsystem_vendor == 4136U) {
      tp->led_ctrl = 4096U;
    } else {
    }
    if (tp->pci_chip_rev_id >> 8 == 358464U) {
      tp->led_ctrl = 2048U;
    } else {
    }
    if ((nic_cfg & 256U) != 0U) {
      _tg3_flag_set(11, (unsigned long *)(& tp->tg3_flags));
      if ((unsigned int )(tp->pdev)->subsystem_vendor == 5663U && ((unsigned int )(tp->pdev)->subsystem_device == 8282U || (unsigned int )(tp->pdev)->subsystem_device == 8291U)) {
        _tg3_flag_clear(11, (unsigned long *)(& tp->tg3_flags));
      } else {
      }
    } else {
      _tg3_flag_clear(11, (unsigned long *)(& tp->tg3_flags));
      _tg3_flag_set(36, (unsigned long *)(& tp->tg3_flags));
    }
    if ((nic_cfg & 128U) != 0U) {
      _tg3_flag_set(4, (unsigned long *)(& tp->tg3_flags));
      tmp___2 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
      if (tmp___2 != 0) {
        _tg3_flag_set(34, (unsigned long *)(& tp->tg3_flags));
      } else {
      }
    } else {
    }
    if ((nic_cfg & 2097152U) != 0U) {
      tmp___3 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
      if (tmp___3 != 0) {
        _tg3_flag_set(48, (unsigned long *)(& tp->tg3_flags));
      } else {
      }
    } else {
    }
    if ((tp->phy_flags & 48U) != 0U && (nic_cfg & 16384U) == 0U) {
      _tg3_flag_clear(23, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
    tmp___4 = _tg3_flag(23, (unsigned long *)(& tp->tg3_flags));
    if (tmp___4 != 0 && (nic_cfg & 64U) != 0U) {
      _tg3_flag_set(10, (unsigned long *)(& tp->tg3_flags));
      device_set_wakeup_enable(& (tp->pdev)->dev, 1);
    } else {
    }
    if ((cfg2 & 131072U) != 0U) {
      tp->phy_flags = tp->phy_flags | 512U;
    } else {
    }
    if ((cfg2 & 262144U) != 0U) {
      tp->phy_flags = tp->phy_flags | 65536U;
    } else {
    }
    tmp___5 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
    if ((tmp___5 != 0 || (tp->pci_chip_rev_id >> 12 == 22404U && tp->pci_chip_rev_id >> 8 != 358464U)) && (cfg2 & 1024U) != 0U) {
      tp->phy_flags = tp->phy_flags | 256U;
    } else {
    }
    tmp___7 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
    if (tmp___7 != 0) {
      tg3_read_mem(tp, 3388U, & cfg3);
      if (tp->pci_chip_rev_id >> 12 != 22405U) {
        tmp___6 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
        if (tmp___6 == 0) {
          if ((cfg3 & 2U) != 0U) {
            _tg3_flag_set(5, (unsigned long *)(& tp->tg3_flags));
          } else {
          }
        } else {
        }
      } else {
      }
      if ((cfg3 & 4194304U) != 0U) {
        tp->phy_flags = tp->phy_flags | 1048576U;
      } else {
      }
      if ((cfg3 & 8388608U) != 0U) {
        tp->phy_flags = tp->phy_flags | 524288U;
      } else {
      }
    } else {
    }
    if ((cfg4 & 4U) != 0U) {
      _tg3_flag_set(54, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
    if ((cfg4 & 8U) != 0U) {
      _tg3_flag_set(55, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
    if ((cfg4 & 16U) != 0U) {
      _tg3_flag_set(56, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
  } else {
  }
  done:
  tmp___9 = _tg3_flag(23, (unsigned long *)(& tp->tg3_flags));
  if (tmp___9 != 0) {
    tmp___8 = _tg3_flag(10, (unsigned long *)(& tp->tg3_flags));
    device_set_wakeup_enable(& (tp->pdev)->dev, tmp___8 != 0);
  } else {
    device_set_wakeup_capable(& (tp->pdev)->dev, 0);
  }
  return;
}
}
static int tg3_ape_otp_read(struct tg3 *tp , u32 offset , u32 *val )
{
  int i ;
  int err ;
  u32 val2 ;
  u32 off ;
  {
  off = offset * 8U;
  err = tg3_nvram_lock(tp);
  if (err != 0) {
    return (err);
  } else {
  }
  tg3_ape_write32(tp, 240U, off | 2147483648U);
  tg3_ape_write32(tp, 232U, 2097153U);
  tg3_ape_read32(tp, 232U);
  __const_udelay(42950UL);
  i = 0;
  goto ldv_51324;
  ldv_51323:
  val2 = tg3_ape_read32(tp, 236U);
  if ((int )val2 & 1) {
    *val = tg3_ape_read32(tp, 248U);
    goto ldv_51322;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_51324: ;
  if (i <= 99) {
    goto ldv_51323;
  } else {
  }
  ldv_51322:
  tg3_ape_write32(tp, 232U, 0U);
  tg3_nvram_unlock(tp);
  if ((int )val2 & 1) {
    return (0);
  } else {
  }
  return (-16);
}
}
static int tg3_issue_otp_command(struct tg3 *tp , u32 cmd )
{
  int i ;
  u32 val ;
  {
  (*(tp->write32))(tp, 29956U, cmd | 1U);
  (*(tp->write32))(tp, 29956U, cmd);
  i = 0;
  goto ldv_51333;
  ldv_51332:
  val = (*(tp->read32))(tp, 29960U);
  if ((int )val & 1) {
    goto ldv_51331;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_51333: ;
  if (i <= 99) {
    goto ldv_51332;
  } else {
  }
  ldv_51331: ;
  return ((int )val & 1 ? 0 : -16);
}
}
static u32 tg3_read_otp_phycfg(struct tg3 *tp )
{
  u32 bhalf_otp ;
  u32 thalf_otp ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  (*(tp->write32))(tp, 29952U, 1U);
  tmp = tg3_issue_otp_command(tp, 8U);
  if (tmp != 0) {
    return (0U);
  } else {
  }
  (*(tp->write32))(tp, 29964U, 160U);
  tmp___0 = tg3_issue_otp_command(tp, 0U);
  if (tmp___0 != 0) {
    return (0U);
  } else {
  }
  thalf_otp = (*(tp->read32))(tp, 29972U);
  (*(tp->write32))(tp, 29964U, 128U);
  tmp___1 = tg3_issue_otp_command(tp, 0U);
  if (tmp___1 != 0) {
    return (0U);
  } else {
  }
  bhalf_otp = (*(tp->read32))(tp, 29972U);
  return ((thalf_otp << 16) | (bhalf_otp >> 16));
}
}
static void tg3_phy_init_link_config(struct tg3 *tp )
{
  u32 adv ;
  {
  adv = 64U;
  if ((tp->phy_flags & 128U) == 0U) {
    adv = adv | 48U;
  } else {
  }
  if ((tp->phy_flags & 48U) == 0U) {
    adv = adv | 143U;
  } else {
    adv = adv | 1024U;
  }
  tp->link_config.advertising = adv;
  tp->link_config.speed = 65535U;
  tp->link_config.duplex = 255U;
  tp->link_config.autoneg = 1U;
  tp->link_config.active_speed = 65535U;
  tp->link_config.active_duplex = 255U;
  tp->old_link = -1;
  return;
}
}
static int tg3_phy_probe(struct tg3 *tp )
{
  u32 hw_phy_id_1 ;
  u32 hw_phy_id_2 ;
  u32 hw_phy_id ;
  u32 hw_phy_id_masked ;
  int err ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  struct subsys_tbl_ent *p ;
  int tmp___7 ;
  u32 bmsr ;
  u32 dummy ;
  int tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  {
  _tg3_flag_set(25, (unsigned long *)(& tp->tg3_flags));
  tp->link_config.flowctrl = 3U;
  tmp = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    switch (tp->pci_fn) {
    case 0:
    tp->phy_ape_lock = 0U;
    goto ldv_51352;
    case 1:
    tp->phy_ape_lock = 2U;
    goto ldv_51352;
    case 2:
    tp->phy_ape_lock = 3U;
    goto ldv_51352;
    case 3:
    tp->phy_ape_lock = 5U;
    goto ldv_51352;
    }
    ldv_51352: ;
  } else {
  }
  tmp___0 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
  if ((tmp___0 == 0 && (tp->phy_flags & 48U) == 0U) && (tp->phy_flags & 128U) == 0U) {
    tp->phy_flags = tp->phy_flags & 4293394431U;
  } else {
  }
  tmp___2 = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    tmp___1 = tg3_phy_init(tp);
    return (tmp___1);
  } else {
  }
  err = 0;
  tmp___5 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
  if (tmp___5 != 0) {
    hw_phy_id_masked = 4294967295U;
    hw_phy_id = hw_phy_id_masked;
  } else {
    tmp___6 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
    if (tmp___6 != 0) {
      hw_phy_id_masked = 4294967295U;
      hw_phy_id = hw_phy_id_masked;
    } else {
      tmp___3 = tg3_readphy(tp, 2, & hw_phy_id_1);
      err = tmp___3 | err;
      tmp___4 = tg3_readphy(tp, 3, & hw_phy_id_2);
      err = tmp___4 | err;
      hw_phy_id = (hw_phy_id_1 & 65535U) << 10;
      hw_phy_id = ((hw_phy_id_2 & 64512U) << 16) | hw_phy_id;
      hw_phy_id = (hw_phy_id_2 & 1023U) | hw_phy_id;
      hw_phy_id_masked = hw_phy_id & 4294967280U;
    }
  }
  if (err == 0 && ((((((((((((((((((((((hw_phy_id_masked == 1610645568U || hw_phy_id_masked == 1610645584U) || hw_phy_id_masked == 1610645616U) || hw_phy_id_masked == 1610645776U) || hw_phy_id_masked == 1610645856U) || hw_phy_id_masked == 1610645904U) || hw_phy_id_masked == 1610645920U) || hw_phy_id_masked == 1610645888U) || hw_phy_id_masked == 1610645760U) || hw_phy_id_masked == 1610646336U) || hw_phy_id_masked == 1610646352U) || hw_phy_id_masked == 3154447584U) || hw_phy_id_masked == 3154447552U) || hw_phy_id_masked == 3154448080U) || hw_phy_id_masked == 3691031616U) || hw_phy_id_masked == 3154448336U) || hw_phy_id_masked == 1544391168U) || hw_phy_id_masked == 3154448368U) || hw_phy_id_masked == 1544391232U) || hw_phy_id_masked == 1544391200U) || hw_phy_id_masked == 1544391520U) || hw_phy_id_masked == 2239772544U) || hw_phy_id_masked == 1610678592U)) {
    tp->phy_id = hw_phy_id;
    if (hw_phy_id_masked == 1610678592U) {
      tp->phy_flags = tp->phy_flags | 16U;
    } else {
      tp->phy_flags = tp->phy_flags & 4294967279U;
    }
  } else
  if (tp->phy_id != 4294967295U) {
  } else {
    p = tg3_lookup_by_subsys(tp);
    if ((unsigned long )p != (unsigned long )((struct subsys_tbl_ent *)0)) {
      tp->phy_id = p->phy_id;
    } else {
      tmp___7 = _tg3_flag(78, (unsigned long *)(& tp->tg3_flags));
      if (tmp___7 == 0) {
        return (-19);
      } else {
      }
    }
    if (tp->phy_id == 0U || tp->phy_id == 1610678592U) {
      tp->phy_flags = tp->phy_flags | 16U;
    } else {
    }
  }
  if ((tp->phy_flags & 48U) == 0U && (((((tp->pci_chip_rev_id >> 12 == 22297U || tp->pci_chip_rev_id >> 12 == 22304U) || tp->pci_chip_rev_id >> 12 == 358246U) || tp->pci_chip_rev_id >> 12 == 22370U) || (tp->pci_chip_rev_id >> 12 == 22295U && tp->pci_chip_rev_id != 91320320U)) || (tp->pci_chip_rev_id >> 12 == 358277U && tp->pci_chip_rev_id != 1467502592U))) {
    tp->phy_flags = tp->phy_flags | 262144U;
  } else {
  }
  tg3_phy_init_link_config(tp);
  if ((tp->phy_flags & 1048576U) == 0U && (tp->phy_flags & 48U) == 0U) {
    tmp___11 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
    if (tmp___11 == 0) {
      tmp___12 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
      if (tmp___12 == 0) {
        tg3_readphy(tp, 1, & bmsr);
        tmp___8 = tg3_readphy(tp, 1, & bmsr);
        if (tmp___8 == 0 && (bmsr & 4U) != 0U) {
          goto skip_phy_reset;
        } else {
        }
        err = tg3_phy_reset(tp);
        if (err != 0) {
          return (err);
        } else {
        }
        tg3_phy_set_wirespeed(tp);
        tmp___9 = tg3_phy_copper_an_config_ok(tp, & dummy);
        if (tmp___9) {
          tmp___10 = 0;
        } else {
          tmp___10 = 1;
        }
        if (tmp___10) {
          tg3_phy_autoneg_cfg(tp, tp->link_config.advertising, (u32 )tp->link_config.flowctrl);
          tg3_writephy(tp, 0, 4608U);
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  skip_phy_reset: ;
  if ((tp->phy_id & 4294967280U) == 1610645584U) {
    err = tg3_init_5401phy_dsp(tp);
    if (err != 0) {
      return (err);
    } else {
    }
    err = tg3_init_5401phy_dsp(tp);
  } else {
  }
  return (err);
}
}
static void tg3_read_vpd(struct tg3 *tp )
{
  u8 *vpd_data ;
  unsigned int block_end ;
  unsigned int rosize ;
  unsigned int len ;
  u32 vpdlen ;
  int j ;
  int i ;
  __be32 *tmp ;
  u16 tmp___0 ;
  u8 tmp___1 ;
  int tmp___2 ;
  u8 tmp___3 ;
  u8 tmp___4 ;
  size_t __len ;
  void *__ret ;
  {
  i = 0;
  tmp = tg3_vpd_readblock(tp, & vpdlen);
  vpd_data = (u8 *)tmp;
  if ((unsigned long )vpd_data == (unsigned long )((u8 *)0)) {
    goto out_no_vpd;
  } else {
  }
  i = pci_vpd_find_tag((u8 const *)vpd_data, 0U, vpdlen, 144);
  if (i < 0) {
    goto out_not_found;
  } else {
  }
  tmp___0 = pci_vpd_lrdt_size((u8 const *)vpd_data + (unsigned long )i);
  rosize = (unsigned int )tmp___0;
  block_end = ((unsigned int )i + rosize) + 3U;
  i = i + 3;
  if (block_end > vpdlen) {
    goto out_not_found;
  } else {
  }
  j = pci_vpd_find_info_keyword((u8 const *)vpd_data, (unsigned int )i, rosize,
                                "MN");
  if (j > 0) {
    tmp___1 = pci_vpd_info_field_size((u8 const *)vpd_data + (unsigned long )j);
    len = (unsigned int )tmp___1;
    j = j + 3;
    if ((unsigned int )j + len > block_end || len != 4U) {
      goto partno;
    } else {
      tmp___2 = memcmp((void const *)vpd_data + (unsigned long )j, (void const *)"1028",
                       4UL);
      if (tmp___2 != 0) {
        goto partno;
      } else {
      }
    }
    j = pci_vpd_find_info_keyword((u8 const *)vpd_data, (unsigned int )i, rosize,
                                  "V0");
    if (j < 0) {
      goto partno;
    } else {
    }
    tmp___3 = pci_vpd_info_field_size((u8 const *)vpd_data + (unsigned long )j);
    len = (unsigned int )tmp___3;
    j = j + 3;
    if ((unsigned int )j + len > block_end) {
      goto partno;
    } else {
    }
    if (len > 31U) {
      len = 31U;
    } else {
    }
    memset((void *)(& tp->fw_ver), 0, 32UL);
    snprintf((char *)(& tp->fw_ver), 32UL, "%.*s bc ", len, vpd_data + (unsigned long )j);
  } else {
  }
  partno:
  i = pci_vpd_find_info_keyword((u8 const *)vpd_data, (unsigned int )i, rosize,
                                "PN");
  if (i < 0) {
    goto out_not_found;
  } else {
  }
  tmp___4 = pci_vpd_info_field_size((u8 const *)vpd_data + (unsigned long )i);
  len = (unsigned int )tmp___4;
  i = i + 3;
  if (len > 24U || len + (unsigned int )i > vpdlen) {
    goto out_not_found;
  } else {
  }
  __len = (size_t )len;
  __ret = memcpy((void *)(& tp->board_part_number), (void const *)vpd_data + (unsigned long )i,
                           __len);
  out_not_found:
  kfree((void const *)vpd_data);
  if ((int )((signed char )tp->board_part_number[0]) != 0) {
    return;
  } else {
  }
  out_no_vpd: ;
  if (tp->pci_chip_rev_id >> 12 == 22295U) {
    if ((unsigned int )(tp->pdev)->device == 5717U || (unsigned int )(tp->pdev)->device == 5733U) {
      strcpy((char *)(& tp->board_part_number), "BCM5717");
    } else
    if ((unsigned int )(tp->pdev)->device == 5718U) {
      strcpy((char *)(& tp->board_part_number), "BCM5718");
    } else {
      goto nomatch;
    }
  } else
  if (tp->pci_chip_rev_id >> 12 == 358272U) {
    if ((unsigned int )(tp->pdev)->device == 5778U) {
      strcpy((char *)(& tp->board_part_number), "BCM57780");
    } else
    if ((unsigned int )(tp->pdev)->device == 5776U) {
      strcpy((char *)(& tp->board_part_number), "BCM57760");
    } else
    if ((unsigned int )(tp->pdev)->device == 5780U) {
      strcpy((char *)(& tp->board_part_number), "BCM57790");
    } else
    if ((unsigned int )(tp->pdev)->device == 5777U) {
      strcpy((char *)(& tp->board_part_number), "BCM57788");
    } else {
      goto nomatch;
    }
  } else
  if (tp->pci_chip_rev_id >> 12 == 358277U) {
    if ((unsigned int )(tp->pdev)->device == 5808U) {
      strcpy((char *)(& tp->board_part_number), "BCM57761");
    } else
    if ((unsigned int )(tp->pdev)->device == 5812U) {
      strcpy((char *)(& tp->board_part_number), "BCM57765");
    } else
    if ((unsigned int )(tp->pdev)->device == 5809U) {
      strcpy((char *)(& tp->board_part_number), "BCM57781");
    } else
    if ((unsigned int )(tp->pdev)->device == 5813U) {
      strcpy((char *)(& tp->board_part_number), "BCM57785");
    } else
    if ((unsigned int )(tp->pdev)->device == 5810U) {
      strcpy((char *)(& tp->board_part_number), "BCM57791");
    } else
    if ((unsigned int )(tp->pdev)->device == 5814U) {
      strcpy((char *)(& tp->board_part_number), "BCM57795");
    } else {
      goto nomatch;
    }
  } else
  if (tp->pci_chip_rev_id >> 12 == 358246U) {
    if ((unsigned int )(tp->pdev)->device == 5762U) {
      strcpy((char *)(& tp->board_part_number), "BCM57762");
    } else
    if ((unsigned int )(tp->pdev)->device == 5766U) {
      strcpy((char *)(& tp->board_part_number), "BCM57766");
    } else
    if ((unsigned int )(tp->pdev)->device == 5815U) {
      strcpy((char *)(& tp->board_part_number), "BCM57782");
    } else
    if ((unsigned int )(tp->pdev)->device == 5811U) {
      strcpy((char *)(& tp->board_part_number), "BCM57786");
    } else {
      goto nomatch;
    }
  } else
  if (tp->pci_chip_rev_id >> 12 == 12U) {
    strcpy((char *)(& tp->board_part_number), "BCM95906");
  } else {
    nomatch:
    strcpy((char *)(& tp->board_part_number), "none");
  }
  return;
}
}
static int tg3_fw_img_is_valid(struct tg3 *tp , u32 offset )
{
  u32 val ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = tg3_nvram_read(tp, offset, & val);
  if (tmp != 0 || (val & 4227858432U) != 201326592U) {
    return (0);
  } else {
    tmp___0 = tg3_nvram_read(tp, offset + 4U, & val);
    if (tmp___0 != 0) {
      return (0);
    } else
    if (val != 0U) {
      return (0);
    } else {
    }
  }
  return (1);
}
}
static void tg3_read_bc_ver(struct tg3 *tp )
{
  u32 val ;
  u32 offset ;
  u32 start ;
  u32 ver_offset ;
  int i ;
  int dst_off ;
  bool newver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  size_t tmp___3 ;
  int tmp___4 ;
  __be32 v ;
  int tmp___5 ;
  size_t __len ;
  void *__ret ;
  u32 major ;
  u32 minor ;
  int tmp___6 ;
  {
  newver = 0;
  tmp = tg3_nvram_read(tp, 12U, & offset);
  if (tmp != 0) {
    return;
  } else {
    tmp___0 = tg3_nvram_read(tp, 4U, & start);
    if (tmp___0 != 0) {
      return;
    } else {
    }
  }
  offset = tg3_nvram_logical_addr(tp, offset);
  tmp___1 = tg3_nvram_read(tp, offset, & val);
  if (tmp___1 != 0) {
    return;
  } else {
  }
  if ((val & 4227858432U) == 201326592U) {
    tmp___2 = tg3_nvram_read(tp, offset + 4U, & val);
    if (tmp___2 != 0) {
      return;
    } else {
    }
    if (val == 0U) {
      newver = 1;
    } else {
    }
  } else {
  }
  tmp___3 = strlen((char const *)(& tp->fw_ver));
  dst_off = (int )tmp___3;
  if ((int )newver) {
    if (32 - dst_off <= 15) {
      return;
    } else {
      tmp___4 = tg3_nvram_read(tp, offset + 8U, & ver_offset);
      if (tmp___4 != 0) {
        return;
      } else {
      }
    }
    offset = (offset + ver_offset) - start;
    i = 0;
    goto ldv_51397;
    ldv_51396:
    tmp___5 = tg3_nvram_read_be32(tp, offset + (u32 )i, & v);
    if (tmp___5 != 0) {
      return;
    } else {
    }
    __len = 4UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& tp->fw_ver) + ((unsigned long )dst_off + (unsigned long )i),
                       (void const *)(& v), __len);
    } else {
      __ret = memcpy((void *)(& tp->fw_ver) + ((unsigned long )dst_off + (unsigned long )i),
                               (void const *)(& v), __len);
    }
    i = i + 4;
    ldv_51397: ;
    if (i <= 15) {
      goto ldv_51396;
    } else {
    }
  } else {
    tmp___6 = tg3_nvram_read(tp, 148U, & ver_offset);
    if (tmp___6 != 0) {
      return;
    } else {
    }
    major = (ver_offset & 65280U) >> 8;
    minor = ver_offset & 255U;
    snprintf((char *)(& tp->fw_ver) + (unsigned long )dst_off, (size_t )(32 - dst_off),
             "v%d.%02d", major, minor);
  }
  return;
}
}
static void tg3_read_hwsb_ver(struct tg3 *tp )
{
  u32 val ;
  u32 major ;
  u32 minor ;
  int tmp ;
  {
  tmp = tg3_nvram_read(tp, 4U, & val);
  if (tmp != 0) {
    return;
  } else {
  }
  major = val >> 27;
  minor = (val & 130023424U) >> 22;
  snprintf((char *)(& tp->fw_ver), 32UL, "sb v%d.%02d", major, minor);
  return;
}
}
static void tg3_read_sb_ver(struct tg3 *tp , u32 val )
{
  u32 offset ;
  u32 major ;
  u32 minor ;
  u32 build ;
  size_t tmp ;
  int tmp___0 ;
  size_t tmp___1 ;
  size_t tmp___2 ;
  {
  tmp = strlen((char const *)(& tp->fw_ver));
  strncat((char *)(& tp->fw_ver), "sb", 31UL - tmp);
  if ((val & 14680064U) != 2097152U) {
    return;
  } else {
  }
  switch (val & 2031616U) {
  case 0U:
  offset = 16U;
  goto ldv_51416;
  case 131072U:
  offset = 20U;
  goto ldv_51416;
  case 196608U:
  offset = 24U;
  goto ldv_51416;
  case 262144U:
  offset = 28U;
  goto ldv_51416;
  case 327680U:
  offset = 32U;
  goto ldv_51416;
  case 393216U:
  offset = 76U;
  goto ldv_51416;
  default: ;
  return;
  }
  ldv_51416:
  tmp___0 = tg3_nvram_read(tp, offset, & val);
  if (tmp___0 != 0) {
    return;
  } else {
  }
  build = (val & 63488U) >> 11;
  major = (val & 1792U) >> 8;
  minor = val & 255U;
  if (minor > 99U || build > 26U) {
    return;
  } else {
  }
  tmp___1 = strlen((char const *)(& tp->fw_ver));
  offset = (u32 )tmp___1;
  snprintf((char *)(& tp->fw_ver) + (unsigned long )offset, (size_t )(32U - offset),
           " v%d.%02d", major, minor);
  if (build != 0U) {
    tmp___2 = strlen((char const *)(& tp->fw_ver));
    offset = (u32 )tmp___2;
    if (offset <= 30U) {
      tp->fw_ver[offset] = (char )((unsigned int )((unsigned char )build) + 96U);
    } else {
    }
  } else {
  }
  return;
}
}
static void tg3_read_mgmtfw_ver(struct tg3 *tp )
{
  u32 val ;
  u32 offset ;
  u32 start ;
  int i ;
  int vlen ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  size_t tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  __be32 v ;
  int tmp___8 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  offset = 24U;
  goto ldv_51433;
  ldv_51432:
  tmp = tg3_nvram_read(tp, offset, & val);
  if (tmp != 0) {
    return;
  } else {
  }
  if (val >> 24 == 1U) {
    goto ldv_51431;
  } else {
  }
  offset = offset + 12U;
  ldv_51433: ;
  if (offset <= 119U) {
    goto ldv_51432;
  } else {
  }
  ldv_51431: ;
  if (offset == 120U) {
    return;
  } else {
  }
  tmp___1 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 == 0) {
    start = 134217728U;
  } else {
    tmp___0 = tg3_nvram_read(tp, offset - 4U, & start);
    if (tmp___0 != 0) {
      return;
    } else {
    }
  }
  tmp___2 = tg3_nvram_read(tp, offset + 4U, & offset);
  if (tmp___2 != 0) {
    return;
  } else {
    tmp___3 = tg3_fw_img_is_valid(tp, offset);
    if (tmp___3 == 0) {
      return;
    } else {
      tmp___4 = tg3_nvram_read(tp, offset + 8U, & val);
      if (tmp___4 != 0) {
        return;
      } else {
      }
    }
  }
  offset = (val - start) + offset;
  tmp___5 = strlen((char const *)(& tp->fw_ver));
  vlen = (int )tmp___5;
  tmp___6 = vlen;
  vlen = vlen + 1;
  tp->fw_ver[tmp___6] = 44;
  tmp___7 = vlen;
  vlen = vlen + 1;
  tp->fw_ver[tmp___7] = 32;
  i = 0;
  goto ldv_51443;
  ldv_51442:
  tmp___8 = tg3_nvram_read_be32(tp, offset, & v);
  if (tmp___8 != 0) {
    return;
  } else {
  }
  offset = offset + 4U;
  if ((unsigned int )vlen > 28U) {
    __len = (size_t )(32 - vlen);
    __ret = memcpy((void *)(& tp->fw_ver) + (unsigned long )vlen, (void const *)(& v),
                             __len);
    goto ldv_51438;
  } else {
  }
  __len___0 = 4UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& tp->fw_ver) + (unsigned long )vlen, (void const *)(& v),
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)(& tp->fw_ver) + (unsigned long )vlen, (void const *)(& v),
                                 __len___0);
  }
  vlen = (int )((unsigned int )vlen + 4U);
  i = i + 1;
  ldv_51443: ;
  if (i <= 3) {
    goto ldv_51442;
  } else {
  }
  ldv_51438: ;
  return;
}
}
static void tg3_probe_ncsi(struct tg3 *tp )
{
  u32 apedata ;
  u32 tmp ;
  {
  apedata = tg3_ape_read32(tp, 16384U);
  if (apedata != 1095779617U) {
    return;
  } else {
  }
  apedata = tg3_ape_read32(tp, 16396U);
  if ((apedata & 256U) == 0U) {
    return;
  } else {
  }
  tmp = tg3_ape_read32(tp, 16400U);
  if ((tmp & 2U) != 0U) {
    _tg3_flag_set(64, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  return;
}
}
static void tg3_read_dash_ver(struct tg3 *tp )
{
  int vlen ;
  u32 apedata ;
  char *fwtype ;
  int tmp ;
  size_t tmp___0 ;
  {
  apedata = tg3_ape_read32(tp, 16408U);
  tmp = _tg3_flag(64, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    fwtype = (char *)"NCSI";
  } else
  if ((unsigned int )(tp->pdev)->device == 5699U) {
    fwtype = (char *)"SMASH";
  } else {
    fwtype = (char *)"DASH";
  }
  tmp___0 = strlen((char const *)(& tp->fw_ver));
  vlen = (int )tmp___0;
  snprintf((char *)(& tp->fw_ver) + (unsigned long )vlen, (size_t )(32 - vlen), " %s v%d.%d.%d.%d",
           fwtype, apedata >> 24, (apedata & 16711680U) >> 16, (apedata & 65280U) >> 8,
           apedata & 255U);
  return;
}
}
static void tg3_read_otp_ver(struct tg3 *tp )
{
  u32 val ;
  u32 val2 ;
  u64 val64 ;
  u32 ver ;
  int i ;
  int vlen ;
  size_t tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if (tp->pci_chip_rev_id >> 12 != 22370U) {
    return;
  } else {
  }
  tmp___0 = tg3_ape_otp_read(tp, 80U, & val);
  if (tmp___0 == 0) {
    tmp___1 = tg3_ape_otp_read(tp, 84U, & val2);
    if (tmp___1 == 0) {
      if ((val & 4026531840U) == 2684354560U || (val & 251658240U) == 167772160U) {
        val64 = ((unsigned long long )val << 32) | (unsigned long long )val2;
        ver = 0U;
        i = 0;
        goto ldv_51465;
        ldv_51464: ;
        if ((val64 & 255ULL) == 0ULL) {
          goto ldv_51463;
        } else {
        }
        ver = (u32 )val64 & 255U;
        val64 = val64 >> 8;
        i = i + 1;
        ldv_51465: ;
        if (i <= 6) {
          goto ldv_51464;
        } else {
        }
        ldv_51463:
        tmp = strlen((char const *)(& tp->fw_ver));
        vlen = (int )tmp;
        snprintf((char *)(& tp->fw_ver) + (unsigned long )vlen, (size_t )(32 - vlen),
                 " .%02d", ver);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void tg3_read_fw_ver(struct tg3 *tp )
{
  u32 val ;
  bool vpd_vers ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  vpd_vers = 0;
  if ((int )((signed char )tp->fw_ver[0]) != 0) {
    vpd_vers = 1;
  } else {
  }
  tmp = _tg3_flag(58, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    strcat((char *)(& tp->fw_ver), "sb");
    tg3_read_otp_ver(tp);
    return;
  } else {
  }
  tmp___0 = tg3_nvram_read(tp, 0U, & val);
  if (tmp___0 != 0) {
    return;
  } else {
  }
  if (val == 1721324970U) {
    tg3_read_bc_ver(tp);
  } else
  if ((val & 4278190080U) == 2768240640U) {
    tg3_read_sb_ver(tp, val);
  } else
  if ((val & 65535U) == 43981U) {
    tg3_read_hwsb_ver(tp);
  } else {
  }
  tmp___2 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    tmp___1 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 != 0) {
      tg3_probe_ncsi(tp);
      if (! vpd_vers) {
        tg3_read_dash_ver(tp);
      } else {
      }
    } else
    if (! vpd_vers) {
      tg3_read_mgmtfw_ver(tp);
    } else {
    }
  } else {
  }
  tp->fw_ver[31] = 0;
  return;
}
}
__inline static u32 tg3_rx_ret_ring_size(struct tg3 *tp )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp___1 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    return (4096U);
  } else {
    tmp = _tg3_flag(29, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      tmp___0 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
      if (tmp___0 == 0) {
        return (1024U);
      } else {
        return (512U);
      }
    } else {
      return (512U);
    }
  }
}
}
static struct pci_device_id const tg3_write_reorder_chipsets[4U] = { {4130U, 28684U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4130U, 29776U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4358U, 12680U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
static struct pci_dev *tg3_find_peer(struct tg3 *tp )
{
  struct pci_dev *peer ;
  unsigned int func ;
  unsigned int devnr ;
  {
  devnr = (tp->pdev)->devfn & 4294967288U;
  func = 0U;
  goto ldv_51483;
  ldv_51482:
  peer = pci_get_slot((tp->pdev)->bus, devnr | func);
  if ((unsigned long )peer != (unsigned long )((struct pci_dev *)0) && (unsigned long )tp->pdev != (unsigned long )peer) {
    goto ldv_51481;
  } else {
  }
  pci_dev_put(peer);
  func = func + 1U;
  ldv_51483: ;
  if (func <= 7U) {
    goto ldv_51482;
  } else {
  }
  ldv_51481: ;
  if ((unsigned long )peer == (unsigned long )((struct pci_dev *)0)) {
    peer = tp->pdev;
    return (peer);
  } else {
  }
  pci_dev_put(peer);
  return (peer);
}
}
static void tg3_detect_asic_rev(struct tg3 *tp , u32 misc_ctrl_reg )
{
  u32 reg ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tp->pci_chip_rev_id = misc_ctrl_reg >> 16;
  if (tp->pci_chip_rev_id >> 12 == 15U) {
    _tg3_flag_set(26, (unsigned long *)(& tp->tg3_flags));
    if ((((((((unsigned int )(tp->pdev)->device == 5717U || (unsigned int )(tp->pdev)->device == 5733U) || (unsigned int )(tp->pdev)->device == 5718U) || (unsigned int )(tp->pdev)->device == 5719U) || (unsigned int )(tp->pdev)->device == 5727U) || (unsigned int )(tp->pdev)->device == 5767U) || (unsigned int )(tp->pdev)->device == 5699U) || (unsigned int )(tp->pdev)->device == 5875U) {
      reg = 244U;
    } else
    if ((((((((((unsigned int )(tp->pdev)->device == 5809U || (unsigned int )(tp->pdev)->device == 5813U) || (unsigned int )(tp->pdev)->device == 5808U) || (unsigned int )(tp->pdev)->device == 5812U) || (unsigned int )(tp->pdev)->device == 5810U) || (unsigned int )(tp->pdev)->device == 5814U) || (unsigned int )(tp->pdev)->device == 5762U) || (unsigned int )(tp->pdev)->device == 5766U) || (unsigned int )(tp->pdev)->device == 5815U) || (unsigned int )(tp->pdev)->device == 5811U) {
      reg = 252U;
    } else {
      reg = 188U;
    }
    pci_read_config_dword((struct pci_dev const *)tp->pdev, (int )reg, & tp->pci_chip_rev_id);
  } else {
  }
  if (tp->pci_chip_rev_id == 20480U) {
    tp->pci_chip_rev_id = 24576U;
  } else {
  }
  if (tp->pci_chip_rev_id == 91320832U) {
    tp->pci_chip_rev_id = 91357184U;
  } else {
  }
  if ((tp->pci_chip_rev_id >> 12 == 22295U || tp->pci_chip_rev_id >> 12 == 22297U) || tp->pci_chip_rev_id >> 12 == 22304U) {
    _tg3_flag_set(77, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 358277U || tp->pci_chip_rev_id >> 12 == 358246U) {
    _tg3_flag_set(76, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  tmp = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    _tg3_flag_set(75, (unsigned long *)(& tp->tg3_flags));
  } else {
    tmp___0 = _tg3_flag(77, (unsigned long *)(& tp->tg3_flags));
    if (tmp___0 != 0) {
      _tg3_flag_set(75, (unsigned long *)(& tp->tg3_flags));
    } else
    if (tp->pci_chip_rev_id >> 12 == 22370U) {
      _tg3_flag_set(75, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
  }
  if (((((tp->pci_chip_rev_id >> 12 == 10U || tp->pci_chip_rev_id >> 12 == 11U) || tp->pci_chip_rev_id >> 12 == 22404U) || tp->pci_chip_rev_id >> 12 == 22369U) || tp->pci_chip_rev_id >> 12 == 22405U) || tp->pci_chip_rev_id >> 12 == 358272U) {
    _tg3_flag_set(74, (unsigned long *)(& tp->tg3_flags));
  } else {
    tmp___1 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 != 0) {
      _tg3_flag_set(74, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
  }
  if (tp->pci_chip_rev_id >> 12 == 8U || tp->pci_chip_rev_id >> 12 == 9U) {
    _tg3_flag_set(73, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  if ((tp->pci_chip_rev_id >> 12 == 4U || tp->pci_chip_rev_id >> 12 == 6U) || tp->pci_chip_rev_id >> 12 == 12U) {
    _tg3_flag_set(72, (unsigned long *)(& tp->tg3_flags));
  } else {
    tmp___2 = _tg3_flag(74, (unsigned long *)(& tp->tg3_flags));
    if (tmp___2 != 0) {
      _tg3_flag_set(72, (unsigned long *)(& tp->tg3_flags));
    } else {
      tmp___3 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
      if (tmp___3 != 0) {
        _tg3_flag_set(72, (unsigned long *)(& tp->tg3_flags));
      } else {
      }
    }
  }
  if (tp->pci_chip_rev_id >> 12 == 3U) {
    _tg3_flag_set(70, (unsigned long *)(& tp->tg3_flags));
  } else {
    tmp___4 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
    if (tmp___4 != 0) {
      _tg3_flag_set(70, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
  }
  return;
}
}
static bool tg3_10_100_only_device(struct tg3 *tp , struct pci_device_id const *ent )
{
  u32 grc_misc_cfg ;
  u32 tmp ;
  {
  tmp = (*(tp->read32))(tp, 26628U);
  grc_misc_cfg = tmp & 122880U;
  if ((tp->pci_chip_rev_id >> 12 == 1U && (grc_misc_cfg == 32768U || grc_misc_cfg == 16384U)) || (tp->phy_flags & 64U) != 0U) {
    return (1);
  } else {
  }
  if ((int )ent->driver_data & 1) {
    if (tp->pci_chip_rev_id >> 12 == 3U) {
      if (((unsigned long )ent->driver_data & 2UL) != 0UL) {
        return (1);
      } else {
      }
    } else {
      return (1);
    }
  } else {
  }
  return (0);
}
}
static int tg3_get_invariants(struct tg3 *tp , struct pci_device_id const *ent )
{
  u32 misc_ctrl_reg ;
  u32 pci_state_reg ;
  u32 grc_misc_cfg ;
  u32 val ;
  u16 pci_cmd ;
  int err ;
  struct tg3_dev_id ich_chipsets[5U] ;
  unsigned int tmp ;
  struct tg3_dev_id *pci_id ;
  struct pci_dev *bridge ;
  struct tg3_dev_id___0 bridge_chipsets[3U] ;
  unsigned int tmp___0 ;
  struct tg3_dev_id___0 *pci_id___0 ;
  struct pci_dev *bridge___0 ;
  struct pci_dev *bridge___1 ;
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
  u16 lnkctl ;
  int tmp___17 ;
  int tmp___18 ;
  bool tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  u32 pm_reg ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  int tmp___35 ;
  int tmp___36 ;
  int tmp___37 ;
  int tmp___38 ;
  u32 tmp___39 ;
  int tmp___40 ;
  int tmp___41 ;
  int tmp___42 ;
  int tmp___43 ;
  void *sram_base ;
  unsigned int tmp___44 ;
  int tmp___45 ;
  int tmp___46 ;
  int tmp___47 ;
  int tmp___48 ;
  int tmp___49 ;
  bool tmp___50 ;
  int _max1 ;
  int _max2 ;
  int _max1___0 ;
  int _max2___0 ;
  int tmp___51 ;
  int tmp___52 ;
  int tmp___53 ;
  u32 tmp___54 ;
  u32 tmp___55 ;
  int tmp___56 ;
  {
  pci_read_config_word((struct pci_dev const *)tp->pdev, 4, & pci_cmd);
  pci_cmd = (unsigned int )pci_cmd & 65519U;
  pci_write_config_word((struct pci_dev const *)tp->pdev, 4, (int )pci_cmd);
  pci_read_config_dword((struct pci_dev const *)tp->pdev, 104, & misc_ctrl_reg);
  tp->misc_host_ctrl = tp->misc_host_ctrl | (misc_ctrl_reg & 4294901760U);
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 104, tp->misc_host_ctrl);
  tg3_detect_asic_rev(tp, misc_ctrl_reg);
  if (tp->pci_chip_rev_id == 4097U || tp->pci_chip_rev_id == 4098U) {
    ich_chipsets[0].vendor = 32902U;
    ich_chipsets[0].device = 9240U;
    ich_chipsets[0].rev = 4294967295U;
    ich_chipsets[1].vendor = 32902U;
    ich_chipsets[1].device = 9256U;
    ich_chipsets[1].rev = 4294967295U;
    ich_chipsets[2].vendor = 32902U;
    ich_chipsets[2].device = 9294U;
    ich_chipsets[2].rev = 10U;
    ich_chipsets[3].vendor = 32902U;
    ich_chipsets[3].device = 9288U;
    ich_chipsets[3].rev = 4294967295U;
    tmp = 4U;
    while (1) {
      if (tmp >= 5U) {
        break;
      } else {
      }
      ich_chipsets[tmp].vendor = 0U;
      ich_chipsets[tmp].device = 0U;
      ich_chipsets[tmp].rev = 0U;
      tmp = tmp + 1U;
    }
    pci_id = (struct tg3_dev_id *)(& ich_chipsets);
    bridge = 0;
    goto ldv_51511;
    ldv_51513:
    bridge = pci_get_device(pci_id->vendor, pci_id->device, bridge);
    if ((unsigned long )bridge == (unsigned long )((struct pci_dev *)0)) {
      pci_id = pci_id + 1;
      goto ldv_51511;
    } else {
    }
    if (pci_id->rev != 4294967295U) {
      if ((u32 )bridge->revision > pci_id->rev) {
        goto ldv_51511;
      } else {
      }
    } else {
    }
    if ((unsigned long )bridge->subordinate != (unsigned long )((struct pci_bus *)0) && (int )(bridge->subordinate)->number == (int )((tp->pdev)->bus)->number) {
      _tg3_flag_set(44, (unsigned long *)(& tp->tg3_flags));
      pci_dev_put(bridge);
      goto ldv_51512;
    } else {
    }
    ldv_51511: ;
    if (pci_id->vendor != 0U) {
      goto ldv_51513;
    } else {
    }
    ldv_51512: ;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 0U) {
    bridge_chipsets[0].vendor = 32902U;
    bridge_chipsets[0].device = 809U;
    bridge_chipsets[1].vendor = 32902U;
    bridge_chipsets[1].device = 810U;
    tmp___0 = 2U;
    while (1) {
      if (tmp___0 >= 3U) {
        break;
      } else {
      }
      bridge_chipsets[tmp___0].vendor = 0U;
      bridge_chipsets[tmp___0].device = 0U;
      tmp___0 = tmp___0 + 1U;
    }
    pci_id___0 = (struct tg3_dev_id___0 *)(& bridge_chipsets);
    bridge___0 = 0;
    goto ldv_51520;
    ldv_51522:
    bridge___0 = pci_get_device(pci_id___0->vendor, pci_id___0->device, bridge___0);
    if ((unsigned long )bridge___0 == (unsigned long )((struct pci_dev *)0)) {
      pci_id___0 = pci_id___0 + 1;
      goto ldv_51520;
    } else {
    }
    if (((unsigned long )bridge___0->subordinate != (unsigned long )((struct pci_bus *)0) && (int )(bridge___0->subordinate)->number <= (int )((tp->pdev)->bus)->number) && (bridge___0->subordinate)->busn_res.end >= (resource_size_t )((tp->pdev)->bus)->number) {
      _tg3_flag_set(50, (unsigned long *)(& tp->tg3_flags));
      pci_dev_put(bridge___0);
      goto ldv_51521;
    } else {
    }
    ldv_51520: ;
    if (pci_id___0->vendor != 0U) {
      goto ldv_51522;
    } else {
    }
    ldv_51521: ;
  } else {
  }
  tmp___1 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
  if (tmp___1 != 0) {
    _tg3_flag_set(27, (unsigned long *)(& tp->tg3_flags));
    tp->msi_cap = pci_find_capability(tp->pdev, 5);
  } else {
    bridge___1 = 0;
    ldv_51525:
    bridge___1 = pci_get_device(4454U, 259U, bridge___1);
    if ((((unsigned long )bridge___1 != (unsigned long )((struct pci_dev *)0) && (unsigned long )bridge___1->subordinate != (unsigned long )((struct pci_bus *)0)) && (int )(bridge___1->subordinate)->number <= (int )((tp->pdev)->bus)->number) && (bridge___1->subordinate)->busn_res.end >= (resource_size_t )((tp->pdev)->bus)->number) {
      _tg3_flag_set(27, (unsigned long *)(& tp->tg3_flags));
      pci_dev_put(bridge___1);
      goto ldv_51524;
    } else {
    }
    if ((unsigned long )bridge___1 != (unsigned long )((struct pci_dev *)0)) {
      goto ldv_51525;
    } else {
    }
    ldv_51524: ;
  }
  if (tp->pci_chip_rev_id >> 12 == 2U || tp->pci_chip_rev_id >> 12 == 9U) {
    tp->pdev_peer = tg3_find_peer(tp);
  } else {
  }
  if (tp->pci_chip_rev_id == 91328512U) {
  } else {
    tmp___4 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
    if (tmp___4 != 0) {
      _tg3_flag_set(41, (unsigned long *)(& tp->tg3_flags));
    } else {
      tmp___3 = _tg3_flag(74, (unsigned long *)(& tp->tg3_flags));
      if (tmp___3 != 0 || tp->pci_chip_rev_id >> 12 == 12U) {
        _tg3_flag_set(40, (unsigned long *)(& tp->tg3_flags));
      } else {
        tmp___2 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
        if (tmp___2 != 0) {
          _tg3_flag_set(39, (unsigned long *)(& tp->tg3_flags));
          _tg3_flag_set(43, (unsigned long *)(& tp->tg3_flags));
          if (tp->pci_chip_rev_id >> 12 == 4U && tp->pci_chip_rev_id > 16897U) {
            _tg3_flag_clear(43, (unsigned long *)(& tp->tg3_flags));
          } else {
          }
        } else
        if ((tp->pci_chip_rev_id >> 12 != 7U && tp->pci_chip_rev_id >> 12 != 0U) && tp->pci_chip_rev_id != 12288U) {
          _tg3_flag_set(38, (unsigned long *)(& tp->tg3_flags));
          _tg3_flag_set(43, (unsigned long *)(& tp->tg3_flags));
          if (tp->pci_chip_rev_id >> 12 == 3U) {
            tp->fw_needed = "tigon/tg3_tso5.bin";
          } else {
            tp->fw_needed = "tigon/tg3_tso.bin";
          }
        } else {
        }
      }
    }
  }
  tmp___5 = _tg3_flag(39, (unsigned long *)(& tp->tg3_flags));
  if (tmp___5 != 0) {
    _tg3_flag_set(42, (unsigned long *)(& tp->tg3_flags));
  } else {
    tmp___6 = _tg3_flag(40, (unsigned long *)(& tp->tg3_flags));
    if (tmp___6 != 0) {
      _tg3_flag_set(42, (unsigned long *)(& tp->tg3_flags));
    } else {
      tmp___7 = _tg3_flag(41, (unsigned long *)(& tp->tg3_flags));
      if (tmp___7 != 0) {
        _tg3_flag_set(42, (unsigned long *)(& tp->tg3_flags));
      } else {
        tmp___8 = _tg3_flag(38, (unsigned long *)(& tp->tg3_flags));
        if (tmp___8 != 0) {
          _tg3_flag_set(42, (unsigned long *)(& tp->tg3_flags));
        } else {
          _tg3_flag_clear(42, (unsigned long *)(& tp->tg3_flags));
          _tg3_flag_clear(43, (unsigned long *)(& tp->tg3_flags));
          tp->fw_needed = 0;
        }
      }
    }
  }
  if (tp->pci_chip_rev_id == 0U) {
    tp->fw_needed = "tigon/tg3.bin";
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 358246U) {
    tp->fw_needed = "tigon/tg357766.bin";
  } else {
  }
  tp->irq_max = 1U;
  tmp___11 = _tg3_flag(72, (unsigned long *)(& tp->tg3_flags));
  if (tmp___11 != 0) {
    _tg3_flag_set(14, (unsigned long *)(& tp->tg3_flags));
    if ((tp->pci_chip_rev_id >> 8 == 64U || tp->pci_chip_rev_id >> 8 == 65U) || ((tp->pci_chip_rev_id >> 12 == 9U && tp->pci_chip_rev_id <= 36866U) && (unsigned long )tp->pdev_peer == (unsigned long )tp->pdev)) {
      _tg3_flag_clear(14, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
    tmp___9 = _tg3_flag(74, (unsigned long *)(& tp->tg3_flags));
    if (tmp___9 != 0 || tp->pci_chip_rev_id >> 12 == 12U) {
      _tg3_flag_set(45, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
    tmp___10 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
    if (tmp___10 != 0) {
      _tg3_flag_set(15, (unsigned long *)(& tp->tg3_flags));
      tp->irq_max = 5U;
    } else {
    }
  } else {
  }
  tp->txq_max = 1U;
  tp->rxq_max = 1U;
  if (tp->irq_max > 1U) {
    tp->rxq_max = 4U;
    tg3_rss_init_dflt_indir_tbl(tp, 4U);
    if (tp->pci_chip_rev_id >> 12 == 22297U || tp->pci_chip_rev_id >> 12 == 22304U) {
      tp->txq_max = tp->irq_max - 1U;
    } else {
    }
  } else {
  }
  tmp___12 = _tg3_flag(74, (unsigned long *)(& tp->tg3_flags));
  if (tmp___12 != 0 || tp->pci_chip_rev_id >> 12 == 12U) {
    _tg3_flag_set(61, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 22297U) {
    tp->dma_limit = 4096U;
  } else {
  }
  if (((tp->pci_chip_rev_id >> 12 == 22295U || tp->pci_chip_rev_id >> 12 == 22297U) || tp->pci_chip_rev_id >> 12 == 22304U) || tp->pci_chip_rev_id >> 12 == 22370U) {
    _tg3_flag_set(53, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  tmp___13 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
  if (tmp___13 != 0 && tp->pci_chip_rev_id != 91328512U) {
    _tg3_flag_set(62, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  tmp___14 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp___14 == 0) {
    _tg3_flag_set(29, (unsigned long *)(& tp->tg3_flags));
  } else {
    tmp___15 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___15 != 0) {
      _tg3_flag_set(29, (unsigned long *)(& tp->tg3_flags));
    } else {
      tmp___16 = _tg3_flag(62, (unsigned long *)(& tp->tg3_flags));
      if (tmp___16 != 0) {
        _tg3_flag_set(29, (unsigned long *)(& tp->tg3_flags));
      } else {
      }
    }
  }
  pci_read_config_dword((struct pci_dev const *)tp->pdev, 112, & pci_state_reg);
  tmp___19 = pci_is_pcie(tp->pdev);
  if ((int )tmp___19) {
    _tg3_flag_set(33, (unsigned long *)(& tp->tg3_flags));
    pcie_capability_read_word(tp->pdev, 16, & lnkctl);
    if (((int )lnkctl & 256) != 0) {
      if (tp->pci_chip_rev_id >> 12 == 12U) {
        _tg3_flag_clear(40, (unsigned long *)(& tp->tg3_flags));
        _tg3_flag_clear(42, (unsigned long *)(& tp->tg3_flags));
      } else {
      }
      if (((tp->pci_chip_rev_id >> 12 == 22404U || tp->pci_chip_rev_id >> 12 == 22369U) || tp->pci_chip_rev_id == 1467482112U) || tp->pci_chip_rev_id == 1467482113U) {
        _tg3_flag_set(57, (unsigned long *)(& tp->tg3_flags));
      } else {
      }
    } else
    if (tp->pci_chip_rev_id == 91320320U) {
      _tg3_flag_set(63, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
  } else
  if (tp->pci_chip_rev_id >> 12 == 22405U) {
    _tg3_flag_set(33, (unsigned long *)(& tp->tg3_flags));
  } else {
    tmp___17 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
    if (tmp___17 == 0) {
      goto _L;
    } else {
      tmp___18 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
      if (tmp___18 != 0) {
        _L:
        tp->pcix_cap = pci_find_capability(tp->pdev, 7);
        if (tp->pcix_cap == 0) {
          dev_err((struct device const *)(& (tp->pdev)->dev), "Cannot find PCI-X capability, aborting\n");
          return (-5);
        } else {
        }
        if ((pci_state_reg & 4U) == 0U) {
          _tg3_flag_set(18, (unsigned long *)(& tp->tg3_flags));
        } else {
        }
      } else {
      }
    }
  }
  tmp___20 = pci_dev_present((struct pci_device_id const *)(& tg3_write_reorder_chipsets));
  if (tmp___20 != 0) {
    tmp___21 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
    if (tmp___21 == 0) {
      _tg3_flag_set(7, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
  } else {
  }
  pci_read_config_byte((struct pci_dev const *)tp->pdev, 12, & tp->pci_cacheline_sz);
  pci_read_config_byte((struct pci_dev const *)tp->pdev, 13, & tp->pci_lat_timer);
  if (tp->pci_chip_rev_id >> 12 == 1U && (unsigned int )tp->pci_lat_timer <= 63U) {
    tp->pci_lat_timer = 64U;
    pci_write_config_byte((struct pci_dev const *)tp->pdev, 13, (int )tp->pci_lat_timer);
  } else {
  }
  if (tp->pci_chip_rev_id >> 8 == 113U) {
    _tg3_flag_set(1, (unsigned long *)(& tp->tg3_flags));
    tmp___22 = _tg3_flag(18, (unsigned long *)(& tp->tg3_flags));
    if (tmp___22 != 0) {
      _tg3_flag_set(8, (unsigned long *)(& tp->tg3_flags));
      pci_read_config_dword((struct pci_dev const *)tp->pdev, tp->pm_cap + 4, & pm_reg);
      pm_reg = pm_reg & 4294967292U;
      pm_reg = pm_reg | 256U;
      pci_write_config_dword((struct pci_dev const *)tp->pdev, tp->pm_cap + 4, pm_reg);
      pci_read_config_word((struct pci_dev const *)tp->pdev, 4, & pci_cmd);
      pci_cmd = (u16 )((unsigned int )pci_cmd | 320U);
      pci_write_config_word((struct pci_dev const *)tp->pdev, 4, (int )pci_cmd);
    } else {
    }
  } else {
  }
  if ((pci_state_reg & 8U) != 0U) {
    _tg3_flag_set(19, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  if ((pci_state_reg & 16U) != 0U) {
    _tg3_flag_set(20, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  if (tp->pci_chip_rev_id == 8192U && (pci_state_reg & 8192U) == 0U) {
    pci_state_reg = pci_state_reg | 8192U;
    pci_write_config_dword((struct pci_dev const *)tp->pdev, 112, pci_state_reg);
  } else {
  }
  tp->read32 = & tg3_read32;
  tp->write32 = & tg3_write32;
  tp->read32_mbox = & tg3_read32;
  tp->write32_mbox = & tg3_write32;
  tp->write32_tx_mbox = & tg3_write32;
  tp->write32_rx_mbox = & tg3_write32;
  tmp___24 = _tg3_flag(8, (unsigned long *)(& tp->tg3_flags));
  if (tmp___24 != 0) {
    tp->write32 = & tg3_write_indirect_reg32;
  } else
  if (tp->pci_chip_rev_id >> 12 == 0U) {
    tp->write32 = & tg3_write_flush_reg32;
  } else {
    tmp___23 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
    if (tmp___23 != 0 && tp->pci_chip_rev_id == 16384U) {
      tp->write32 = & tg3_write_flush_reg32;
    } else {
    }
  }
  tmp___26 = _tg3_flag(1, (unsigned long *)(& tp->tg3_flags));
  if (tmp___26 != 0) {
    goto _L___0;
  } else {
    tmp___27 = _tg3_flag(7, (unsigned long *)(& tp->tg3_flags));
    if (tmp___27 != 0) {
      _L___0:
      tp->write32_tx_mbox = & tg3_write32_tx_mbox;
      tmp___25 = _tg3_flag(7, (unsigned long *)(& tp->tg3_flags));
      if (tmp___25 != 0) {
        tp->write32_rx_mbox = & tg3_write_flush_reg32;
      } else {
      }
    } else {
    }
  }
  tmp___28 = _tg3_flag(44, (unsigned long *)(& tp->tg3_flags));
  if (tmp___28 != 0) {
    tp->read32 = & tg3_read_indirect_reg32;
    tp->write32 = & tg3_write_indirect_reg32;
    tp->read32_mbox = & tg3_read_indirect_mbox;
    tp->write32_mbox = & tg3_write_indirect_mbox;
    tp->write32_tx_mbox = & tg3_write_indirect_mbox;
    tp->write32_rx_mbox = & tg3_write_indirect_mbox;
    iounmap((void volatile *)tp->regs);
    tp->regs = 0;
    pci_read_config_word((struct pci_dev const *)tp->pdev, 4, & pci_cmd);
    pci_cmd = (unsigned int )pci_cmd & 65533U;
    pci_write_config_word((struct pci_dev const *)tp->pdev, 4, (int )pci_cmd);
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 12U) {
    tp->read32_mbox = & tg3_read32_mbox_5906;
    tp->write32_mbox = & tg3_write32_mbox_5906;
    tp->write32_tx_mbox = & tg3_write32_mbox_5906;
    tp->write32_rx_mbox = & tg3_write32_mbox_5906;
  } else {
  }
  if ((unsigned long )tp->write32 == (unsigned long )(& tg3_write_indirect_reg32)) {
    _tg3_flag_set(21, (unsigned long *)(& tp->tg3_flags));
  } else {
    tmp___29 = _tg3_flag(18, (unsigned long *)(& tp->tg3_flags));
    if (tmp___29 != 0 && (tp->pci_chip_rev_id >> 12 == 7U || tp->pci_chip_rev_id >> 12 == 0U)) {
      _tg3_flag_set(21, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
  }
  val = (*(tp->read32))(tp, 16384U);
  (*(tp->write32))(tp, 16384U, val | 2U);
  tp->pci_fn = (int )(tp->pdev)->devfn & 3;
  if (tp->pci_chip_rev_id >> 12 == 2U) {
    goto _L___1;
  } else {
    tmp___31 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___31 != 0) {
      _L___1:
      tmp___30 = _tg3_flag(18, (unsigned long *)(& tp->tg3_flags));
      if (tmp___30 != 0) {
        pci_read_config_dword((struct pci_dev const *)tp->pdev, tp->pcix_cap + 4,
                              & val);
        tp->pci_fn = (int )val & 7;
      } else {
      }
    } else
    if ((tp->pci_chip_rev_id >> 12 == 22295U || tp->pci_chip_rev_id >> 12 == 22297U) || tp->pci_chip_rev_id >> 12 == 22304U) {
      tg3_read_mem(tp, 3584U, & val);
      if ((val & 65535U) != 13868U) {
        val = (*(tp->read32))(tp, 13868U);
      } else {
      }
      if (tp->pci_chip_rev_id >> 12 == 22295U) {
        tp->pci_fn = (val & 536870912U) != 0U;
      } else {
        tp->pci_fn = (int )(val >> 30);
      }
    } else {
    }
  }
  tmp___32 = _tg3_flag(79, (unsigned long *)(& tp->tg3_flags));
  if (tmp___32 != 0) {
    tp->write32_tx_mbox = & tg3_write_flush_reg32;
    tp->write32_rx_mbox = & tg3_write_flush_reg32;
  } else {
  }
  tg3_get_eeprom_hw_cfg(tp);
  tmp___33 = _tg3_flag(38, (unsigned long *)(& tp->tg3_flags));
  if (tmp___33 != 0) {
    tmp___34 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
    if (tmp___34 != 0) {
      _tg3_flag_clear(42, (unsigned long *)(& tp->tg3_flags));
      _tg3_flag_clear(43, (unsigned long *)(& tp->tg3_flags));
      tp->fw_needed = 0;
    } else {
    }
  } else {
  }
  tmp___35 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
  if (tmp___35 != 0) {
    pci_state_reg = pci_state_reg | 458752U;
    pci_write_config_dword((struct pci_dev const *)tp->pdev, 112, pci_state_reg);
    tg3_ape_lock_init(tp);
  } else {
  }
  tp->grc_local_ctrl = 16777224U;
  if (tp->pci_chip_rev_id >> 12 == 7U) {
    tp->grc_local_ctrl = tp->grc_local_ctrl | 36864U;
  } else {
    tmp___36 = _tg3_flag(11, (unsigned long *)(& tp->tg3_flags));
    if (tmp___36 != 0) {
      tp->grc_local_ctrl = tp->grc_local_ctrl | 36864U;
    } else
    if (tp->pci_chip_rev_id >> 12 == 6U) {
      tp->grc_local_ctrl = tp->grc_local_ctrl | 64U;
    } else {
    }
  }
  if (tp->pci_chip_rev_id >> 12 == 10U || tp->pci_chip_rev_id >> 12 == 358272U) {
    tp->grc_local_ctrl = tp->grc_local_ctrl | 16U;
  } else {
    tmp___37 = _tg3_flag(76, (unsigned long *)(& tp->tg3_flags));
    if (tmp___37 != 0) {
      tp->grc_local_ctrl = tp->grc_local_ctrl | 16U;
    } else {
    }
  }
  if ((unsigned int )(tp->pdev)->device == 5761U || (unsigned int )(tp->pdev)->device == 5768U) {
    tp->grc_local_ctrl = tp->grc_local_ctrl | 16U;
    tmp___38 = _tg3_flag(36, (unsigned long *)(& tp->tg3_flags));
    if (tmp___38 != 0) {
      tp->grc_local_ctrl = tp->grc_local_ctrl | 18432U;
    } else {
    }
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 22370U) {
    tmp___39 = (*(tp->read32))(tp, 26632U);
    tp->grc_local_ctrl = tp->grc_local_ctrl | (tmp___39 & 16U);
  } else {
  }
  tg3_pwrsrc_switch_to_vmain(tp);
  if ((tp->dev)->mtu > 1500U) {
    tmp___40 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___40 == 0) {
      _tg3_flag_set(24, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
  } else {
  }
  if (((tp->pci_chip_rev_id >> 12 == 7U || tp->pci_chip_rev_id == 0U) || tp->pci_chip_rev_id == 256U) || tp->pci_chip_rev_id == 258U) {
    _tg3_flag_clear(9, (unsigned long *)(& tp->tg3_flags));
  } else {
    _tg3_flag_set(9, (unsigned long *)(& tp->tg3_flags));
  }
  if (tp->pci_chip_rev_id >> 12 == 12U) {
    tp->phy_flags = tp->phy_flags | 64U;
  } else {
  }
  if (((tp->pci_chip_rev_id >> 12 == 7U || ((tp->pci_chip_rev_id >> 12 == 3U && tp->pci_chip_rev_id != 12288U) && tp->pci_chip_rev_id != 12289U)) || (tp->phy_flags & 64U) != 0U) || (tp->phy_flags & 48U) != 0U) {
    tp->phy_flags = tp->phy_flags | 1024U;
  } else {
  }
  if (tp->pci_chip_rev_id >> 8 == 16U || tp->pci_chip_rev_id >> 8 == 32U) {
    tp->phy_flags = tp->phy_flags | 8192U;
  } else {
  }
  if (tp->pci_chip_rev_id == 8192U) {
    tp->phy_flags = tp->phy_flags | 16384U;
  } else {
  }
  tmp___41 = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (((tmp___41 != 0 && (tp->phy_flags & 64U) == 0U) && tp->pci_chip_rev_id >> 12 != 22405U) && tp->pci_chip_rev_id >> 12 != 358272U) {
    tmp___42 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
    if (tmp___42 == 0) {
      if (((tp->pci_chip_rev_id >> 12 == 10U || tp->pci_chip_rev_id >> 12 == 11U) || tp->pci_chip_rev_id >> 12 == 22404U) || tp->pci_chip_rev_id >> 12 == 22369U) {
        if ((unsigned int )(tp->pdev)->device != 5748U && (unsigned int )(tp->pdev)->device != 5722U) {
          tp->phy_flags = tp->phy_flags | 2048U;
        } else {
        }
        if ((unsigned int )(tp->pdev)->device == 5747U) {
          tp->phy_flags = tp->phy_flags | 4096U;
        } else {
        }
      } else {
        tp->phy_flags = tp->phy_flags | 32768U;
      }
    } else {
    }
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 22404U && tp->pci_chip_rev_id >> 8 != 358464U) {
    tp->phy_otp = tg3_read_otp_phycfg(tp);
    if (tp->phy_otp == 0U) {
      tp->phy_otp = 678172224U;
    } else {
    }
  } else {
  }
  tmp___43 = _tg3_flag(26, (unsigned long *)(& tp->tg3_flags));
  if (tmp___43 != 0) {
    tp->mi_mode = 32768U;
  } else {
    tp->mi_mode = 786432U;
  }
  tp->coalesce_mode = 0U;
  if (tp->pci_chip_rev_id >> 8 != 112U && tp->pci_chip_rev_id >> 8 != 113U) {
    tp->coalesce_mode = tp->coalesce_mode | 256U;
  } else {
  }
  if ((tp->pci_chip_rev_id >> 12 == 22295U || tp->pci_chip_rev_id == 91328512U) || tp->pci_chip_rev_id == 91357184U) {
    tp->coalesce_mode = tp->coalesce_mode | 4U;
    tp->grc_mode = tp->grc_mode | 268435456U;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 22405U || tp->pci_chip_rev_id >> 12 == 358272U) {
    _tg3_flag_set(51, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  err = tg3_mdio_init(tp);
  if (err != 0) {
    return (err);
  } else {
  }
  val = (*(tp->read32))(tp, 26624U);
  if (tp->pci_chip_rev_id >> 12 == 22304U || tp->pci_chip_rev_id >> 12 == 22370U) {
    val = val & 360640U;
  } else {
    val = val & 65536U;
  }
  (*(tp->write32))(tp, 26624U, tp->grc_mode | val);
  tg3_switch_clocks(tp);
  (*(tp->write32))(tp, 124U, 0U);
  pci_read_config_dword((struct pci_dev const *)tp->pdev, 112, & pci_state_reg);
  if ((pci_state_reg & 4U) == 0U) {
    tmp___45 = _tg3_flag(8, (unsigned long *)(& tp->tg3_flags));
    if (tmp___45 == 0) {
      if (((tp->pci_chip_rev_id == 0U || tp->pci_chip_rev_id == 256U) || tp->pci_chip_rev_id == 258U) || tp->pci_chip_rev_id == 261U) {
        sram_base = tp->regs + 33536U;
        writel(0U, (void volatile *)sram_base);
        writel(0U, (void volatile *)sram_base + 4U);
        writel(4294967295U, (void volatile *)sram_base + 4U);
        tmp___44 = readl((void const volatile *)sram_base);
        if (tmp___44 != 0U) {
          _tg3_flag_set(8, (unsigned long *)(& tp->tg3_flags));
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  __const_udelay(214750UL);
  tg3_nvram_init(tp);
  if (tp->pci_chip_rev_id >> 12 == 358246U) {
    tmp___46 = _tg3_flag(58, (unsigned long *)(& tp->tg3_flags));
    if (tmp___46 == 0) {
      tp->fw_needed = 0;
    } else {
    }
  } else {
  }
  grc_misc_cfg = (*(tp->read32))(tp, 26628U);
  grc_misc_cfg = grc_misc_cfg & 122880U;
  if (tp->pci_chip_rev_id >> 12 == 3U && (grc_misc_cfg == 65536U || grc_misc_cfg == 98304U)) {
    _tg3_flag_set(71, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  tmp___47 = _tg3_flag(71, (unsigned long *)(& tp->tg3_flags));
  if (tmp___47 == 0 && tp->pci_chip_rev_id >> 12 != 7U) {
    _tg3_flag_set(0, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  tmp___48 = _tg3_flag(0, (unsigned long *)(& tp->tg3_flags));
  if (tmp___48 != 0) {
    tp->coalesce_mode = tp->coalesce_mode | 1536U;
    tp->misc_host_ctrl = tp->misc_host_ctrl | 512U;
    pci_write_config_dword((struct pci_dev const *)tp->pdev, 104, tp->misc_host_ctrl);
  } else {
  }
  tmp___49 = _tg3_flag(48, (unsigned long *)(& tp->tg3_flags));
  if (tmp___49 != 0) {
    tp->mac_mode = 402653184U;
  } else {
    tp->mac_mode = 0U;
  }
  tmp___50 = tg3_10_100_only_device(tp, ent);
  if ((int )tmp___50) {
    tp->phy_flags = tp->phy_flags | 128U;
  } else {
  }
  err = tg3_phy_probe(tp);
  if (err != 0) {
    dev_err((struct device const *)(& (tp->pdev)->dev), "phy probe failed, err %d\n",
            err);
    tg3_mdio_fini(tp);
  } else {
  }
  tg3_read_vpd(tp);
  tg3_read_fw_ver(tp);
  if ((tp->phy_flags & 16U) != 0U) {
    tp->phy_flags = tp->phy_flags & 4294967291U;
  } else
  if (tp->pci_chip_rev_id >> 12 == 7U) {
    tp->phy_flags = tp->phy_flags | 4U;
  } else {
    tp->phy_flags = tp->phy_flags & 4294967291U;
  }
  if (tp->pci_chip_rev_id >> 12 == 7U) {
    _tg3_flag_set(2, (unsigned long *)(& tp->tg3_flags));
  } else {
    _tg3_flag_clear(2, (unsigned long *)(& tp->tg3_flags));
  }
  if (((unsigned int )(tp->pdev)->subsystem_vendor == 4136U && tp->pci_chip_rev_id >> 12 == 0U) && (tp->phy_flags & 16U) == 0U) {
    tp->phy_flags = tp->phy_flags | 4U;
    _tg3_flag_set(2, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  if ((tp->phy_flags & 16U) != 0U) {
    _tg3_flag_set(6, (unsigned long *)(& tp->tg3_flags));
  } else {
    _tg3_flag_clear(6, (unsigned long *)(& tp->tg3_flags));
  }
  _max1 = 32;
  _max2 = 64;
  tp->rx_offset = (u32 )(_max1 > _max2 ? _max1 : _max2);
  tp->rx_copy_thresh = 256U;
  if (tp->pci_chip_rev_id >> 12 == 0U) {
    tmp___51 = _tg3_flag(18, (unsigned long *)(& tp->tg3_flags));
    if (tmp___51 != 0) {
      _max1___0 = 32;
      _max2___0 = 64;
      tp->rx_offset = (u32 )(_max1___0 > _max2___0 ? _max1___0 : _max2___0);
    } else {
    }
  } else {
  }
  tmp___52 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
  tp->rx_std_ring_mask = tmp___52 != 0 ? 2047U : 511U;
  tmp___53 = _tg3_flag(53, (unsigned long *)(& tp->tg3_flags));
  tp->rx_jmb_ring_mask = tmp___53 != 0 ? 1023U : 255U;
  tmp___54 = tg3_rx_ret_ring_size(tp);
  tp->rx_ret_ring_mask = tmp___54 - 1U;
  tp->rx_std_max_post = tp->rx_std_ring_mask + 1U;
  if ((tp->pci_chip_rev_id >> 12 == 4U || tp->pci_chip_rev_id >> 12 == 6U) || tp->pci_chip_rev_id >> 12 == 10U) {
    tp->rx_std_max_post = 8U;
  } else {
  }
  tmp___56 = _tg3_flag(5, (unsigned long *)(& tp->tg3_flags));
  if (tmp___56 != 0) {
    tmp___55 = (*(tp->read32))(tp, 32040U);
    tp->pwrmgmt_thresh = tmp___55 & 65280U;
  } else {
  }
  return (err);
}
}
static int tg3_get_device_address(struct tg3 *tp )
{
  struct net_device *dev ;
  u32 hi ;
  u32 lo ;
  u32 mac_offset ;
  int addr_ok ;
  int err ;
  bool tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  {
  dev = tp->dev;
  addr_ok = 0;
  tmp___0 = _tg3_flag(78, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    err = ssb_gige_get_macaddr(tp->pdev, dev->dev_addr);
    if (err == 0) {
      tmp = is_valid_ether_addr((u8 const *)dev->dev_addr);
      if ((int )tmp) {
        return (0);
      } else {
      }
    } else {
    }
  } else {
  }
  mac_offset = 124U;
  if (tp->pci_chip_rev_id >> 12 == 2U) {
    goto _L;
  } else {
    tmp___4 = _tg3_flag(73, (unsigned long *)(& tp->tg3_flags));
    if (tmp___4 != 0) {
      _L:
      tmp___1 = (*(tp->read32))(tp, 184U);
      if ((tmp___1 & 4U) != 0U) {
        mac_offset = 204U;
      } else {
      }
      tmp___2 = tg3_nvram_lock(tp);
      if (tmp___2 != 0) {
        _tw32_flush(tp, 28672U, 1U, 0U);
      } else {
        tg3_nvram_unlock(tp);
      }
    } else {
      tmp___3 = _tg3_flag(77, (unsigned long *)(& tp->tg3_flags));
      if (tmp___3 != 0) {
        if (tp->pci_fn & 1) {
          mac_offset = 204U;
        } else {
        }
        if (tp->pci_fn > 1) {
          mac_offset = mac_offset + 396U;
        } else {
        }
      } else
      if (tp->pci_chip_rev_id >> 12 == 12U) {
        mac_offset = 16U;
      } else {
      }
    }
  }
  tg3_read_mem(tp, 3092U, & hi);
  if (hi >> 16 == 18507U) {
    *(dev->dev_addr) = (unsigned char )(hi >> 8);
    *(dev->dev_addr + 1UL) = (unsigned char )hi;
    tg3_read_mem(tp, 3096U, & lo);
    *(dev->dev_addr + 2UL) = (unsigned char )(lo >> 24);
    *(dev->dev_addr + 3UL) = (unsigned char )(lo >> 16);
    *(dev->dev_addr + 4UL) = (unsigned char )(lo >> 8);
    *(dev->dev_addr + 5UL) = (unsigned char )lo;
    tmp___5 = is_valid_ether_addr((u8 const *)dev->dev_addr);
    addr_ok = (int )tmp___5;
  } else {
  }
  if (addr_ok == 0) {
    tmp___6 = _tg3_flag(58, (unsigned long *)(& tp->tg3_flags));
    if (tmp___6 == 0) {
      tmp___7 = tg3_nvram_read_be32(tp, mac_offset, & hi);
      if (tmp___7 == 0) {
        tmp___8 = tg3_nvram_read_be32(tp, mac_offset + 4U, & lo);
        if (tmp___8 == 0) {
          __len = 2UL;
          if (__len > 63UL) {
            __ret = memcpy((void *)dev->dev_addr, (void const *)(& hi) + 2U, __len);
          } else {
            __ret = memcpy((void *)dev->dev_addr, (void const *)(& hi) + 2U,
                                     __len);
          }
          __len___0 = 4UL;
          if (__len___0 > 63UL) {
            __ret___0 = memcpy((void *)dev->dev_addr + 2U, (void const *)(& lo),
                                 __len___0);
          } else {
            __ret___0 = memcpy((void *)dev->dev_addr + 2U, (void const *)(& lo),
                                         __len___0);
          }
        } else {
          goto _L___1;
        }
      } else {
        goto _L___1;
      }
    } else {
      _L___1:
      hi = (*(tp->read32))(tp, 1040U);
      lo = (*(tp->read32))(tp, 1044U);
      *(dev->dev_addr + 5UL) = (unsigned char )lo;
      *(dev->dev_addr + 4UL) = (unsigned char )(lo >> 8);
      *(dev->dev_addr + 3UL) = (unsigned char )(lo >> 16);
      *(dev->dev_addr + 2UL) = (unsigned char )(lo >> 24);
      *(dev->dev_addr + 1UL) = (unsigned char )hi;
      *(dev->dev_addr) = (unsigned char )(hi >> 8);
    }
  } else {
  }
  tmp___9 = is_valid_ether_addr((u8 const *)dev->dev_addr);
  if (tmp___9) {
    tmp___10 = 0;
  } else {
    tmp___10 = 1;
  }
  if (tmp___10) {
    return (-22);
  } else {
  }
  return (0);
}
}
static u32 tg3_calc_dma_bndry(struct tg3 *tp , u32 val )
{
  int cacheline_size ;
  u8 byte ;
  int goal ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  pci_read_config_byte((struct pci_dev const *)tp->pdev, 12, & byte);
  if ((unsigned int )byte == 0U) {
    cacheline_size = 1024;
  } else {
    cacheline_size = (int )byte * 4;
  }
  if (tp->pci_chip_rev_id >> 12 != 7U && tp->pci_chip_rev_id >> 12 != 0U) {
    tmp = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
    if (tmp == 0) {
      goto out;
    } else {
    }
  } else {
  }
  goal = 0;
  tmp___0 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    val = goal == 0;
    goto out;
  } else {
  }
  if (goal == 0) {
    goto out;
  } else {
  }
  tmp___2 = _tg3_flag(18, (unsigned long *)(& tp->tg3_flags));
  if (tmp___2 != 0) {
    tmp___3 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
    if (tmp___3 == 0) {
      switch (cacheline_size) {
      case 16: ;
      case 32: ;
      case 64: ;
      case 128: ;
      if (goal == 1) {
        val = val | 2304U;
      } else {
        val = val | 6912U;
      }
      goto ldv_51562;
      case 256:
      val = val | 4608U;
      goto ldv_51562;
      default:
      val = val | 6912U;
      goto ldv_51562;
      }
      ldv_51562: ;
    } else {
      goto _L;
    }
  } else {
    _L:
    tmp___1 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 != 0) {
      switch (cacheline_size) {
      case 16: ;
      case 32: ;
      case 64: ;
      if (goal == 1) {
        val = val & 2415919103U;
        val = val | 268435456U;
        goto ldv_51568;
      } else {
      }
      case 128: ;
      default:
      val = val & 2415919103U;
      val = val | 805306368U;
      goto ldv_51568;
      }
      ldv_51568: ;
    } else {
      switch (cacheline_size) {
      case 16: ;
      if (goal == 1) {
        val = val | 2304U;
        goto ldv_51572;
      } else {
      }
      case 32: ;
      if (goal == 1) {
        val = val | 4608U;
        goto ldv_51572;
      } else {
      }
      case 64: ;
      if (goal == 1) {
        val = val | 6912U;
        goto ldv_51572;
      } else {
      }
      case 128: ;
      if (goal == 1) {
        val = val | 9216U;
        goto ldv_51572;
      } else {
      }
      case 256:
      val = val | 11520U;
      goto ldv_51572;
      case 512:
      val = val | 13824U;
      goto ldv_51572;
      case 1024: ;
      default:
      val = val | 16128U;
      goto ldv_51572;
      }
      ldv_51572: ;
    }
  }
  out: ;
  return (val);
}
}
static int tg3_do_test_dma(struct tg3 *tp , u32 *buf , dma_addr_t buf_dma , int size ,
                           bool to_device )
{
  struct tg3_internal_buffer_desc test_desc ;
  u32 sram_dma_descs ;
  int i ;
  int ret ;
  u32 val ;
  u32 val___0 ;
  {
  sram_dma_descs = 8192U;
  (*(tp->write32))(tp, 23768U, 0U);
  (*(tp->write32))(tp, 23816U, 0U);
  (*(tp->write32))(tp, 18436U, 0U);
  (*(tp->write32))(tp, 19460U, 0U);
  (*(tp->write32))(tp, 17408U, 0U);
  (*(tp->write32))(tp, 23552U, 0U);
  test_desc.addr_hi = (u32 )(buf_dma >> 32);
  test_desc.addr_lo = (u32 )buf_dma;
  test_desc.nic_mbuf = 8448U;
  test_desc.len = (u16 )size;
  if ((int )to_device) {
    test_desc.cqid_sqid = 3330U;
    _tw32_flush(tp, 18432U, 2U, 0U);
    __const_udelay(171800UL);
  } else {
    test_desc.cqid_sqid = 4103U;
    _tw32_flush(tp, 19456U, 2U, 0U);
    __const_udelay(171800UL);
  }
  test_desc.flags = 5U;
  i = 0;
  goto ldv_51593;
  ldv_51592:
  val = *((u32 *)(& test_desc) + (unsigned long )i);
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 124, (u32 )((unsigned long )i) * 4U + sram_dma_descs);
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 132, val);
  i = i + 1;
  ldv_51593: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_51592;
  } else {
  }
  pci_write_config_dword((struct pci_dev const *)tp->pdev, 124, 0U);
  if ((int )to_device) {
    (*(tp->write32))(tp, 23592U, sram_dma_descs);
  } else {
    (*(tp->write32))(tp, 23672U, sram_dma_descs);
  }
  ret = -19;
  i = 0;
  goto ldv_51598;
  ldv_51597: ;
  if ((int )to_device) {
    val___0 = (*(tp->read32))(tp, 23768U);
  } else {
    val___0 = (*(tp->read32))(tp, 23816U);
  }
  if ((val___0 & 65535U) == sram_dma_descs) {
    ret = 0;
    goto ldv_51596;
  } else {
  }
  __const_udelay(429500UL);
  i = i + 1;
  ldv_51598: ;
  if (i <= 39) {
    goto ldv_51597;
  } else {
  }
  ldv_51596: ;
  return (ret);
}
}
static struct pci_device_id const tg3_dma_wait_state_chipsets[2U] = { {4203U, 46U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
static int tg3_test_dma(struct tg3 *tp )
{
  dma_addr_t buf_dma ;
  u32 *buf ;
  u32 saved_dma_rwctrl ;
  int ret ;
  void *tmp ;
  int tmp___0 ;
  u32 ccval ;
  u32 tmp___1 ;
  u32 read_water ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  u32 *p ;
  u32 i ;
  int tmp___6 ;
  {
  ret = 0;
  tmp = dma_alloc_attrs(& (tp->pdev)->dev, 8192UL, & buf_dma, 208U, 0);
  buf = (u32 *)tmp;
  if ((unsigned long )buf == (unsigned long )((u32 *)0)) {
    ret = -12;
    goto out_nofree;
  } else {
  }
  tp->dma_rwctrl = 1979711488U;
  tp->dma_rwctrl = tg3_calc_dma_bndry(tp, tp->dma_rwctrl);
  tmp___0 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    goto out;
  } else {
  }
  tmp___4 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
  if (tmp___4 != 0) {
    tp->dma_rwctrl = tp->dma_rwctrl | 1572864U;
  } else {
    tmp___3 = _tg3_flag(18, (unsigned long *)(& tp->tg3_flags));
    if (tmp___3 == 0) {
      if (tp->pci_chip_rev_id >> 12 == 3U || tp->pci_chip_rev_id >> 12 == 4U) {
        tp->dma_rwctrl = tp->dma_rwctrl | 4128768U;
      } else {
        tp->dma_rwctrl = tp->dma_rwctrl | 4128783U;
      }
    } else
    if (tp->pci_chip_rev_id >> 12 == 1U || tp->pci_chip_rev_id >> 12 == 2U) {
      tmp___1 = (*(tp->read32))(tp, 116U);
      ccval = tmp___1 & 31U;
      read_water = 7U;
      tmp___2 = _tg3_flag(27, (unsigned long *)(& tp->tg3_flags));
      if (tmp___2 != 0 && tp->pci_chip_rev_id >> 12 == 2U) {
        tp->dma_rwctrl = tp->dma_rwctrl | 32768U;
      } else
      if (ccval == 6U || ccval == 7U) {
        tp->dma_rwctrl = tp->dma_rwctrl | 16384U;
      } else {
      }
      if (tp->pci_chip_rev_id >> 12 == 1U) {
        read_water = 4U;
      } else {
      }
      tp->dma_rwctrl = (tp->dma_rwctrl | (read_water << 16)) | 9961472U;
    } else
    if (tp->pci_chip_rev_id >> 12 == 8U) {
      tp->dma_rwctrl = tp->dma_rwctrl | 1327104U;
    } else
    if (tp->pci_chip_rev_id >> 12 == 9U) {
      tp->dma_rwctrl = tp->dma_rwctrl | 1343488U;
    } else {
      tp->dma_rwctrl = tp->dma_rwctrl | 1769487U;
    }
  }
  tmp___5 = _tg3_flag(81, (unsigned long *)(& tp->tg3_flags));
  if (tmp___5 != 0) {
    tp->dma_rwctrl = tp->dma_rwctrl | 16384U;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 1U || tp->pci_chip_rev_id >> 12 == 2U) {
    tp->dma_rwctrl = tp->dma_rwctrl & 4294967280U;
  } else {
  }
  if (tp->pci_chip_rev_id >> 12 == 7U || tp->pci_chip_rev_id >> 12 == 0U) {
    tp->dma_rwctrl = tp->dma_rwctrl | 4194304U;
    tp->dma_rwctrl = tp->dma_rwctrl | 8388608U;
  } else {
  }
  (*(tp->write32))(tp, 108U, tp->dma_rwctrl);
  if (tp->pci_chip_rev_id >> 12 != 7U && tp->pci_chip_rev_id >> 12 != 0U) {
    goto out;
  } else {
  }
  saved_dma_rwctrl = tp->dma_rwctrl;
  tp->dma_rwctrl = tp->dma_rwctrl & 4294952959U;
  (*(tp->write32))(tp, 108U, tp->dma_rwctrl);
  ldv_51622:
  p = buf;
  i = 0U;
  goto ldv_51614;
  ldv_51613:
  *(p + (unsigned long )i) = i;
  i = i + 1U;
  ldv_51614: ;
  if (i <= 2047U) {
    goto ldv_51613;
  } else {
  }
  ret = tg3_do_test_dma(tp, buf, buf_dma, 8192, 1);
  if (ret != 0) {
    dev_err((struct device const *)(& (tp->pdev)->dev), "%s: Buffer write failed. err = %d\n",
            "tg3_test_dma", ret);
    goto ldv_51617;
  } else {
  }
  ret = tg3_do_test_dma(tp, buf, buf_dma, 8192, 0);
  if (ret != 0) {
    dev_err((struct device const *)(& (tp->pdev)->dev), "%s: Buffer read failed. err = %d\n",
            "tg3_test_dma", ret);
    goto ldv_51617;
  } else {
  }
  i = 0U;
  goto ldv_51621;
  ldv_51620: ;
  if (*(p + (unsigned long )i) == i) {
    goto ldv_51618;
  } else {
  }
  if ((tp->dma_rwctrl & 14336U) != 2048U) {
    tp->dma_rwctrl = tp->dma_rwctrl & 4294952959U;
    tp->dma_rwctrl = tp->dma_rwctrl | 2048U;
    (*(tp->write32))(tp, 108U, tp->dma_rwctrl);
    goto ldv_51619;
  } else {
    dev_err((struct device const *)(& (tp->pdev)->dev), "%s: Buffer corrupted on read back! (%d != %d)\n",
            "tg3_test_dma", *(p + (unsigned long )i), i);
    ret = -19;
    goto out;
  }
  ldv_51618:
  i = i + 1U;
  ldv_51621: ;
  if (i <= 2047U) {
    goto ldv_51620;
  } else {
  }
  ldv_51619: ;
  if (i == 2048U) {
    ret = 0;
    goto ldv_51617;
  } else {
  }
  goto ldv_51622;
  ldv_51617: ;
  if ((tp->dma_rwctrl & 14336U) != 2048U) {
    tmp___6 = pci_dev_present((struct pci_device_id const *)(& tg3_dma_wait_state_chipsets));
    if (tmp___6 != 0) {
      tp->dma_rwctrl = tp->dma_rwctrl & 4294952959U;
      tp->dma_rwctrl = tp->dma_rwctrl | 2048U;
    } else {
      tp->dma_rwctrl = saved_dma_rwctrl;
    }
    (*(tp->write32))(tp, 108U, tp->dma_rwctrl);
  } else {
  }
  out:
  dma_free_attrs(& (tp->pdev)->dev, 8192UL, (void *)buf, buf_dma, 0);
  out_nofree: ;
  return (ret);
}
}
static void tg3_init_bufmgr_config(struct tg3 *tp )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = _tg3_flag(75, (unsigned long *)(& tp->tg3_flags));
  if (tmp___0 != 0) {
    tp->bufmgr_config.mbuf_read_dma_low_water = 0U;
    tp->bufmgr_config.mbuf_mac_rx_low_water = 42U;
    tp->bufmgr_config.mbuf_high_water = 160U;
    tp->bufmgr_config.mbuf_read_dma_low_water_jumbo = 0U;
    tp->bufmgr_config.mbuf_mac_rx_low_water_jumbo = 126U;
    tp->bufmgr_config.mbuf_high_water_jumbo = 234U;
  } else {
    tmp = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
    if (tmp != 0) {
      tp->bufmgr_config.mbuf_read_dma_low_water = 0U;
      tp->bufmgr_config.mbuf_mac_rx_low_water = 16U;
      tp->bufmgr_config.mbuf_high_water = 96U;
      if (tp->pci_chip_rev_id >> 12 == 12U) {
        tp->bufmgr_config.mbuf_mac_rx_low_water = 4U;
        tp->bufmgr_config.mbuf_high_water = 16U;
      } else {
      }
      tp->bufmgr_config.mbuf_read_dma_low_water_jumbo = 0U;
      tp->bufmgr_config.mbuf_mac_rx_low_water_jumbo = 75U;
      tp->bufmgr_config.mbuf_high_water_jumbo = 150U;
    } else {
      tp->bufmgr_config.mbuf_read_dma_low_water = 80U;
      tp->bufmgr_config.mbuf_mac_rx_low_water = 32U;
      tp->bufmgr_config.mbuf_high_water = 96U;
      tp->bufmgr_config.mbuf_read_dma_low_water_jumbo = 304U;
      tp->bufmgr_config.mbuf_mac_rx_low_water_jumbo = 152U;
      tp->bufmgr_config.mbuf_high_water_jumbo = 380U;
    }
  }
  tp->bufmgr_config.dma_low_water = 5U;
  tp->bufmgr_config.dma_high_water = 10U;
  return;
}
}
static char *tg3_phy_string(struct tg3 *tp )
{
  {
  switch (tp->phy_id & 4294967280U) {
  case 1610645568U: ;
  return ((char *)"5400");
  case 1610645584U: ;
  return ((char *)"5401");
  case 1610645616U: ;
  return ((char *)"5411");
  case 1610645776U: ;
  return ((char *)"5701");
  case 1610645856U: ;
  return ((char *)"5703");
  case 1610645904U: ;
  return ((char *)"5704");
  case 1610645920U: ;
  return ((char *)"5705");
  case 1610645888U: ;
  return ((char *)"5750");
  case 1610645760U: ;
  return ((char *)"5752");
  case 1610646336U: ;
  return ((char *)"5714");
  case 1610646352U: ;
  return ((char *)"5780");
  case 3154447552U: ;
  return ((char *)"5755");
  case 3154447584U: ;
  return ((char *)"5787");
  case 3154448288U: ;
  return ((char *)"5784");
  case 3154448080U: ;
  return ((char *)"5722/5756");
  case 3691031616U: ;
  return ((char *)"5906");
  case 3154448336U: ;
  return ((char *)"5761");
  case 1544391168U: ;
  return ((char *)"5718C");
  case 3154448368U: ;
  return ((char *)"5718S");
  case 1544391232U: ;
  return ((char *)"57765");
  case 1544391200U: ;
  return ((char *)"5719C");
  case 1544391520U: ;
  return ((char *)"5720C");
  case 2239772544U: ;
  return ((char *)"5762C");
  case 1610678592U: ;
  return ((char *)"8002/serdes");
  case 0U: ;
  return ((char *)"serdes");
  default: ;
  return ((char *)"unknown");
  }
}
}
static char *tg3_bus_string(struct tg3 *tp , char *str )
{
  u32 clock_ctrl ;
  u32 tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp___3 = _tg3_flag(33, (unsigned long *)(& tp->tg3_flags));
  if (tmp___3 != 0) {
    strcpy(str, "PCI Express");
    return (str);
  } else {
    tmp___2 = _tg3_flag(18, (unsigned long *)(& tp->tg3_flags));
    if (tmp___2 != 0) {
      tmp = (*(tp->read32))(tp, 116U);
      clock_ctrl = tmp & 31U;
      strcpy(str, "PCIX:");
      if (clock_ctrl == 7U) {
        strcat(str, "133MHz");
      } else {
        tmp___0 = (*(tp->read32))(tp, 26628U);
        if ((tmp___0 & 122880U) == 16384U) {
          strcat(str, "133MHz");
        } else
        if (clock_ctrl == 0U) {
          strcat(str, "33MHz");
        } else
        if (clock_ctrl == 2U) {
          strcat(str, "50MHz");
        } else
        if (clock_ctrl == 4U) {
          strcat(str, "66MHz");
        } else
        if (clock_ctrl == 6U) {
          strcat(str, "100MHz");
        } else {
        }
      }
    } else {
      strcpy(str, "PCI:");
      tmp___1 = _tg3_flag(19, (unsigned long *)(& tp->tg3_flags));
      if (tmp___1 != 0) {
        strcat(str, "66MHz");
      } else {
        strcat(str, "33MHz");
      }
    }
  }
  tmp___4 = _tg3_flag(20, (unsigned long *)(& tp->tg3_flags));
  if (tmp___4 != 0) {
    strcat(str, ":32-bit");
  } else {
    strcat(str, ":64-bit");
  }
  return (str);
}
}
static void tg3_init_coal(struct tg3 *tp )
{
  struct ethtool_coalesce *ec ;
  int tmp ;
  {
  ec = & tp->coal;
  memset((void *)ec, 0, 92UL);
  ec->cmd = 14U;
  ec->rx_coalesce_usecs = 50U;
  ec->tx_coalesce_usecs = 150U;
  ec->rx_max_coalesced_frames = 5U;
  ec->tx_max_coalesced_frames = 53U;
  ec->rx_coalesce_usecs_irq = 25U;
  ec->tx_coalesce_usecs_irq = 25U;
  ec->rx_max_coalesced_frames_irq = 5U;
  ec->tx_max_coalesced_frames_irq = 5U;
  ec->stats_block_coalesce_usecs = 1000000U;
  if ((tp->coalesce_mode & 1536U) != 0U) {
    ec->rx_coalesce_usecs = 20U;
    ec->rx_coalesce_usecs_irq = 20U;
    ec->tx_coalesce_usecs = 72U;
    ec->tx_coalesce_usecs_irq = 20U;
  } else {
  }
  tmp = _tg3_flag(70, (unsigned long *)(& tp->tg3_flags));
  if (tmp != 0) {
    ec->rx_coalesce_usecs_irq = 0U;
    ec->tx_coalesce_usecs_irq = 0U;
    ec->stats_block_coalesce_usecs = 0U;
  } else {
  }
  return;
}
}
static int tg3_init_one(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct net_device *dev ;
  struct tg3 *tp ;
  int i ;
  int err ;
  int pm_cap ;
  u32 sndmbx ;
  u32 rcvmbx ;
  u32 intmbx ;
  char str[40U] ;
  u64 dma_mask ;
  u64 persist_dma_mask ;
  netdev_features_t features ;
  bool __print_once ;
  void *tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
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
  u32 tmp___16 ;
  u32 tmp___17 ;
  u32 tmp___18 ;
  struct tg3_napi *tnapi ;
  int tmp___19 ;
  int tmp___20 ;
  char *tmp___21 ;
  struct phy_device *phydev ;
  char const *tmp___22 ;
  char *ethtype ;
  char *tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  {
  features = 0ULL;
  if (! __print_once) {
    __print_once = 1;
    printk("\016%s\n", (char *)(& version));
  } else {
  }
  err = pci_enable_device(pdev);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "Cannot enable PCI device, aborting\n");
    return (err);
  } else {
  }
  err = pci_request_regions(pdev, "tg3");
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "Cannot obtain PCI resources, aborting\n");
    goto err_out_disable_pdev;
  } else {
  }
  pci_set_master(pdev);
  pm_cap = pci_find_capability(pdev, 1);
  if (pm_cap == 0) {
    dev_err((struct device const *)(& pdev->dev), "Cannot find Power Management capability, aborting\n");
    err = -5;
    goto err_out_free_res;
  } else {
  }
  err = pci_set_power_state(pdev, 0);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "Transition to D0 failed, aborting\n");
    goto err_out_free_res;
  } else {
  }
  dev = alloc_etherdev_mqs(4736, 5U, 5U);
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    err = -12;
    goto err_out_power_down;
  } else {
  }
  dev->dev.parent = & pdev->dev;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp;
  tp->pdev = pdev;
  tp->dev = dev;
  tp->pm_cap = pm_cap;
  tp->rx_mode = 0U;
  tp->tx_mode = 0U;
  tp->irq_sync = 1U;
  if (tg3_debug > 0) {
    tp->msg_enable = (u32 )tg3_debug;
  } else {
    tp->msg_enable = 255U;
  }
  tmp___4 = pdev_is_ssb_gige_core(pdev);
  if ((int )tmp___4) {
    _tg3_flag_set(78, (unsigned long *)(& tp->tg3_flags));
    tmp___0 = pdev_is_ssb_gige_core(pdev);
    if ((int )tmp___0) {
      _tg3_flag_set(79, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
    tmp___1 = pdev_is_ssb_gige_core(pdev);
    if ((int )tmp___1) {
      _tg3_flag_set(81, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
    tmp___2 = pdev_is_ssb_gige_core(pdev);
    if ((int )tmp___2) {
      _tg3_flag_set(80, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
    tmp___3 = pdev_is_ssb_gige_core(pdev);
    if ((int )tmp___3) {
      _tg3_flag_set(82, (unsigned long *)(& tp->tg3_flags));
    } else {
    }
  } else {
  }
  tp->misc_host_ctrl = 154U;
  tp->grc_mode = 52U;
  spinlock_check(& tp->lock);
  __raw_spin_lock_init(& tp->lock.ldv_6014.rlock, "&(&tp->lock)->rlock", & __key);
  spinlock_check(& tp->indirect_lock);
  __raw_spin_lock_init(& tp->indirect_lock.ldv_6014.rlock, "&(&tp->indirect_lock)->rlock",
                       & __key___0);
  __init_work(& tp->reset_task, 0);
  __constr_expr_0.counter = 137438953408L;
  tp->reset_task.data = __constr_expr_0;
  lockdep_init_map(& tp->reset_task.lockdep_map, "(&tp->reset_task)", & __key___1,
                   0);
  INIT_LIST_HEAD(& tp->reset_task.entry);
  tp->reset_task.func = & tg3_reset_task;
  tp->regs = pci_ioremap_bar(pdev, 0);
  if ((unsigned long )tp->regs == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& pdev->dev), "Cannot map device registers, aborting\n");
    err = -12;
    goto err_out_free_dev;
  } else {
  }
  if ((((((((((((unsigned int )(tp->pdev)->device == 5761U || (unsigned int )(tp->pdev)->device == 5760U) || (unsigned int )(tp->pdev)->device == 5768U) || (unsigned int )(tp->pdev)->device == 5769U) || (unsigned int )(tp->pdev)->device == 5717U) || (unsigned int )(tp->pdev)->device == 5733U) || (unsigned int )(tp->pdev)->device == 5718U) || (unsigned int )(tp->pdev)->device == 5719U) || (unsigned int )(tp->pdev)->device == 5727U) || (unsigned int )(tp->pdev)->device == 5767U) || (unsigned int )(tp->pdev)->device == 5699U) || (unsigned int )(tp->pdev)->device == 5875U) {
    _tg3_flag_set(48, (unsigned long *)(& tp->tg3_flags));
    tp->aperegs = pci_ioremap_bar(pdev, 2);
    if ((unsigned long )tp->aperegs == (unsigned long )((void *)0)) {
      dev_err((struct device const *)(& pdev->dev), "Cannot map APE registers, aborting\n");
      err = -12;
      goto err_out_iounmap;
    } else {
    }
  } else {
  }
  tp->rx_pending = 200U;
  tp->rx_jumbo_pending = 100U;
  dev->ethtool_ops = & tg3_ethtool_ops;
  dev->watchdog_timeo = 1250;
  dev->netdev_ops = & tg3_netdev_ops;
  dev->irq = pdev->irq;
  err = tg3_get_invariants(tp, ent);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "Problem fetching invariants of chip, aborting\n");
    goto err_out_apeunmap;
  } else {
  }
  tmp___6 = _tg3_flag(71, (unsigned long *)(& tp->tg3_flags));
  if (tmp___6 != 0) {
    dma_mask = 4294967295ULL;
    persist_dma_mask = dma_mask;
  } else {
    tmp___5 = _tg3_flag(27, (unsigned long *)(& tp->tg3_flags));
    if (tmp___5 != 0) {
      dma_mask = 1099511627775ULL;
      persist_dma_mask = dma_mask;
    } else {
      dma_mask = 0xffffffffffffffffULL;
      persist_dma_mask = dma_mask;
    }
  }
  if (dma_mask > 4294967295ULL) {
    err = pci_set_dma_mask(pdev, dma_mask);
    if (err == 0) {
      features = features | 32ULL;
      err = pci_set_consistent_dma_mask(pdev, persist_dma_mask);
      if (err < 0) {
        dev_err((struct device const *)(& pdev->dev), "Unable to obtain 64 bit DMA for consistent allocations\n");
        goto err_out_apeunmap;
      } else {
      }
    } else {
    }
  } else {
  }
  if (err != 0 || dma_mask == 4294967295ULL) {
    err = pci_set_dma_mask(pdev, 4294967295ULL);
    if (err != 0) {
      dev_err((struct device const *)(& pdev->dev), "No usable DMA configuration, aborting\n");
      goto err_out_apeunmap;
    } else {
    }
  } else {
  }
  tg3_init_bufmgr_config(tp);
  features = features | 384ULL;
  if (tp->pci_chip_rev_id != 28928U) {
    features = features | 536870915ULL;
    tmp___7 = _tg3_flag(74, (unsigned long *)(& tp->tg3_flags));
    if (tmp___7 != 0) {
      features = features | 16ULL;
    } else {
    }
  } else {
  }
  tmp___8 = _tg3_flag(39, (unsigned long *)(& tp->tg3_flags));
  if (tmp___8 != 0) {
    goto _L;
  } else {
    tmp___9 = _tg3_flag(40, (unsigned long *)(& tp->tg3_flags));
    if (tmp___9 != 0) {
      goto _L;
    } else {
      tmp___10 = _tg3_flag(41, (unsigned long *)(& tp->tg3_flags));
      if (tmp___10 != 0) {
        _L:
        if ((features & 2ULL) != 0ULL) {
          features = features | 65536ULL;
        } else {
        }
      } else {
      }
    }
  }
  tmp___12 = _tg3_flag(40, (unsigned long *)(& tp->tg3_flags));
  if (tmp___12 != 0) {
    goto _L___0;
  } else {
    tmp___13 = _tg3_flag(41, (unsigned long *)(& tp->tg3_flags));
    if (tmp___13 != 0) {
      _L___0:
      if ((features & 16ULL) != 0ULL) {
        features = features | 1048576ULL;
      } else {
      }
      tmp___11 = _tg3_flag(41, (unsigned long *)(& tp->tg3_flags));
      if ((((tmp___11 != 0 || tp->pci_chip_rev_id >> 12 == 22369U) || (tp->pci_chip_rev_id >> 12 == 22404U && tp->pci_chip_rev_id >> 8 != 358464U)) || tp->pci_chip_rev_id >> 12 == 22405U) || tp->pci_chip_rev_id >> 12 == 358272U) {
        features = features | 524288ULL;
      } else {
      }
    } else {
    }
  }
  dev->features = dev->features | features;
  dev->vlan_features = dev->vlan_features | features;
  if (tp->pci_chip_rev_id >> 12 != 8U) {
    tmp___14 = _tg3_flag(26, (unsigned long *)(& tp->tg3_flags));
    if (tmp___14 == 0) {
      features = features | 2147483648ULL;
    } else {
    }
  } else {
  }
  dev->hw_features = dev->hw_features | features;
  if (tp->pci_chip_rev_id == 12289U) {
    tmp___15 = _tg3_flag(42, (unsigned long *)(& tp->tg3_flags));
    if (tmp___15 == 0) {
      tmp___16 = (*(tp->read32))(tp, 112U);
      if ((tmp___16 & 8U) == 0U) {
        _tg3_flag_set(32, (unsigned long *)(& tp->tg3_flags));
        tp->rx_pending = 63U;
      } else {
      }
    } else {
    }
  } else {
  }
  err = tg3_get_device_address(tp);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "Could not obtain valid ethernet address, aborting\n");
    goto err_out_apeunmap;
  } else {
  }
  tmp___17 = (*(tp->read32))(tp, 15360U);
  if ((tmp___17 & 2U) != 0U) {
    (*(tp->write32))(tp, 16384U, 2U);
    tg3_halt(tp, 0, 1);
  } else {
    tmp___18 = (*(tp->read32))(tp, 19456U);
    if ((tmp___18 & 2U) != 0U) {
      (*(tp->write32))(tp, 16384U, 2U);
      tg3_halt(tp, 0, 1);
    } else {
    }
  }
  err = tg3_test_dma(tp);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "DMA engine test failed, aborting\n");
    goto err_out_apeunmap;
  } else {
  }
  intmbx = 516U;
  rcvmbx = 644U;
  sndmbx = 772U;
  i = 0;
  goto ldv_51695;
  ldv_51694:
  tnapi = (struct tg3_napi *)(& tp->napi) + (unsigned long )i;
  tnapi->tp = tp;
  tnapi->tx_pending = 511U;
  tnapi->int_mbox = intmbx;
  if (i <= 4) {
    intmbx = intmbx + 8U;
  } else {
    intmbx = intmbx + 4U;
  }
  tnapi->consmbox = rcvmbx;
  tnapi->prodmbox = sndmbx;
  if (i != 0) {
    tnapi->coal_now = (u32 )(8192 << (i + -1));
  } else {
    tnapi->coal_now = 8U;
  }
  tmp___19 = _tg3_flag(15, (unsigned long *)(& tp->tg3_flags));
  if (tmp___19 == 0) {
    goto ldv_51692;
  } else {
  }
  if (i == 0) {
    goto ldv_51693;
  } else {
  }
  rcvmbx = rcvmbx + 8U;
  if ((sndmbx & 4U) != 0U) {
    sndmbx = sndmbx - 4U;
  } else {
    sndmbx = sndmbx + 12U;
  }
  ldv_51693:
  i = i + 1;
  ldv_51695: ;
  if ((unsigned int )i < tp->irq_max) {
    goto ldv_51694;
  } else {
  }
  ldv_51692:
  tg3_init_coal(tp);
  pci_set_drvdata(pdev, (void *)dev);
  if ((tp->pci_chip_rev_id >> 12 == 22297U || tp->pci_chip_rev_id >> 12 == 22304U) || tp->pci_chip_rev_id >> 12 == 22370U) {
    _tg3_flag_set(69, (unsigned long *)(& tp->tg3_flags));
  } else {
  }
  tmp___20 = _tg3_flag(77, (unsigned long *)(& tp->tg3_flags));
  if (tmp___20 != 0) {
    tg3_frob_aux_power(tp, 0);
  } else {
  }
  tg3_timer_init(tp);
  tg3_carrier_off(tp);
  err = register_netdev(dev);
  if (err != 0) {
    dev_err((struct device const *)(& pdev->dev), "Cannot register net device, aborting\n");
    goto err_out_apeunmap;
  } else {
  }
  tmp___21 = tg3_bus_string(tp, (char *)(& str));
  netdev_info((struct net_device const *)dev, "Tigon3 [partno(%s) rev %04x] (%s) MAC address %pM\n",
              (char *)(& tp->board_part_number), tp->pci_chip_rev_id, tmp___21, dev->dev_addr);
  if ((tp->phy_flags & 2U) != 0U) {
    phydev = (tp->mdio_bus)->phy_map[1];
    tmp___22 = dev_name((struct device const *)(& phydev->dev));
    netdev_info((struct net_device const *)dev, "attached PHY driver [%s] (mii_bus:phy_addr=%s)\n",
                (phydev->drv)->name, tmp___22);
  } else {
    if ((tp->phy_flags & 128U) != 0U) {
      ethtype = (char *)"10/100Base-TX";
    } else
    if ((tp->phy_flags & 48U) != 0U) {
      ethtype = (char *)"1000Base-SX";
    } else {
      ethtype = (char *)"10/100/1000Base-T";
    }
    tmp___23 = tg3_phy_string(tp);
    netdev_info((struct net_device const *)dev, "attached PHY is %s (%s Ethernet) (WireSpeed[%d], EEE[%d])\n",
                tmp___23, ethtype, (tp->phy_flags & 1024U) == 0U, (tp->phy_flags & 262144U) != 0U);
  }
  tmp___24 = _tg3_flag(42, (unsigned long *)(& tp->tg3_flags));
  tmp___25 = _tg3_flag(4, (unsigned long *)(& tp->tg3_flags));
  tmp___26 = _tg3_flag(2, (unsigned long *)(& tp->tg3_flags));
  netdev_info((struct net_device const *)dev, "RXcsums[%d] LinkChgREG[%d] MIirq[%d] ASF[%d] TSOcap[%d]\n",
              (dev->features & 536870912ULL) != 0ULL, tmp___26 != 0, (tp->phy_flags & 4U) != 0U,
              tmp___25 != 0, tmp___24 != 0);
  netdev_info((struct net_device const *)dev, "dma_rwctrl[%08x] dma_mask[%d-bit]\n",
              tp->dma_rwctrl, pdev->dma_mask != 4294967295ULL ? (pdev->dma_mask == 1099511627775ULL ? 40 : 64) : 32);
  pci_save_state(pdev);
  return (0);
  err_out_apeunmap: ;
  if ((unsigned long )tp->aperegs != (unsigned long )((void *)0)) {
    iounmap((void volatile *)tp->aperegs);
    tp->aperegs = 0;
  } else {
  }
  err_out_iounmap: ;
  if ((unsigned long )tp->regs != (unsigned long )((void *)0)) {
    iounmap((void volatile *)tp->regs);
    tp->regs = 0;
  } else {
  }
  err_out_free_dev:
  free_netdev(dev);
  err_out_power_down:
  pci_set_power_state(pdev, 3);
  err_out_free_res:
  pci_release_regions(pdev);
  err_out_disable_pdev:
  pci_disable_device(pdev);
  pci_set_drvdata(pdev, 0);
  return (err);
}
}
static void tg3_remove_one(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct tg3 *tp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  if ((unsigned long )dev != (unsigned long )((struct net_device *)0)) {
    tmp___0 = netdev_priv((struct net_device const *)dev);
    tp = (struct tg3 *)tmp___0;
    release_firmware(tp->fw);
    tg3_reset_task_cancel(tp);
    tmp___1 = _tg3_flag(51, (unsigned long *)(& tp->tg3_flags));
    if (tmp___1 != 0) {
      tg3_phy_fini(tp);
      tg3_mdio_fini(tp);
    } else {
    }
    unregister_netdev(dev);
    if ((unsigned long )tp->aperegs != (unsigned long )((void *)0)) {
      iounmap((void volatile *)tp->aperegs);
      tp->aperegs = 0;
    } else {
    }
    if ((unsigned long )tp->regs != (unsigned long )((void *)0)) {
      iounmap((void volatile *)tp->regs);
      tp->regs = 0;
    } else {
    }
    free_netdev(dev);
    pci_release_regions(pdev);
    pci_disable_device(pdev);
    pci_set_drvdata(pdev, 0);
  } else {
  }
  return;
}
}
static int tg3_suspend(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  struct tg3 *tp ;
  void *tmp___0 ;
  int err ;
  bool tmp___1 ;
  int tmp___2 ;
  int err2 ;
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp___0;
  tmp___1 = netif_running((struct net_device const *)dev);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (0);
  } else {
  }
  tg3_reset_task_cancel(tp);
  tg3_phy_stop(tp);
  tg3_netif_stop(tp);
  tg3_timer_stop(tp);
  tg3_full_lock(tp, 1);
  tg3_disable_ints(tp);
  tg3_full_unlock(tp);
  netif_device_detach(dev);
  tg3_full_lock(tp, 0);
  tg3_halt(tp, 0, 1);
  _tg3_flag_clear(31, (unsigned long *)(& tp->tg3_flags));
  tg3_full_unlock(tp);
  err = tg3_power_down_prepare(tp);
  if (err != 0) {
    tg3_full_lock(tp, 0);
    _tg3_flag_set(31, (unsigned long *)(& tp->tg3_flags));
    err2 = tg3_restart_hw(tp, 1);
    if (err2 != 0) {
      goto out;
    } else {
    }
    tg3_timer_start(tp);
    netif_device_attach(dev);
    tg3_netif_start(tp);
    out:
    tg3_full_unlock(tp);
    if (err2 == 0) {
      tg3_phy_start(tp);
    } else {
    }
  } else {
  }
  return (err);
}
}
static int tg3_resume(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  struct tg3 *tp ;
  void *tmp___0 ;
  int err ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct tg3 *)tmp___0;
  tmp___1 = netif_running((struct net_device const *)dev);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (0);
  } else {
  }
  netif_device_attach(dev);
  tg3_full_lock(tp, 0);
  _tg3_flag_set(31, (unsigned long *)(& tp->tg3_flags));
  err = tg3_restart_hw(tp, (tp->phy_flags & 1048576U) == 0U);
  if (err != 0) {
    goto out;
  } else {
  }
  tg3_timer_start(tp);
  tg3_netif_start(tp);
  out:
  tg3_full_unlock(tp);
  if (err == 0) {
    tg3_phy_start(tp);
  } else {
  }
  return (err);
}
}
static struct dev_pm_ops const tg3_pm_ops =
     {0, 0, & tg3_suspend, & tg3_resume, & tg3_suspend, & tg3_resume, & tg3_suspend,
    & tg3_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static pci_ers_result_t tg3_io_error_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  struct net_device *netdev ;
  void *tmp ;
  struct tg3 *tp ;
  void *tmp___0 ;
  pci_ers_result_t err ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  tp = (struct tg3 *)tmp___0;
  err = 3U;
  netdev_info((struct net_device const *)netdev, "PCI I/O error detected\n");
  rtnl_lock();
  tmp___1 = netif_running((struct net_device const *)netdev);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    goto done;
  } else {
  }
  tg3_phy_stop(tp);
  tg3_netif_stop(tp);
  tg3_timer_stop(tp);
  tg3_reset_task_cancel(tp);
  netif_device_detach(netdev);
  tg3_full_lock(tp, 0);
  tg3_halt(tp, 0, 0);
  tg3_full_unlock(tp);
  done: ;
  if (state == 3U) {
    err = 4U;
  } else {
    pci_disable_device(pdev);
  }
  rtnl_unlock();
  return (err);
}
}
static pci_ers_result_t tg3_io_slot_reset(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct tg3 *tp ;
  void *tmp___0 ;
  pci_ers_result_t rc ;
  int err ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  tp = (struct tg3 *)tmp___0;
  rc = 4U;
  rtnl_lock();
  tmp___1 = pci_enable_device(pdev);
  if (tmp___1 != 0) {
    netdev_err((struct net_device const *)netdev, "Cannot re-enable PCI device after reset.\n");
    goto done;
  } else {
  }
  pci_set_master(pdev);
  pci_restore_state(pdev);
  pci_save_state(pdev);
  tmp___2 = netif_running((struct net_device const *)netdev);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    rc = 5U;
    goto done;
  } else {
  }
  err = tg3_power_up(tp);
  if (err != 0) {
    goto done;
  } else {
  }
  rc = 5U;
  done:
  rtnl_unlock();
  return (rc);
}
}
static void tg3_io_resume(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct tg3 *tp ;
  void *tmp___0 ;
  int err ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  tp = (struct tg3 *)tmp___0;
  rtnl_lock();
  tmp___1 = netif_running((struct net_device const *)netdev);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    goto done;
  } else {
  }
  tg3_full_lock(tp, 0);
  _tg3_flag_set(31, (unsigned long *)(& tp->tg3_flags));
  err = tg3_restart_hw(tp, 1);
  if (err != 0) {
    tg3_full_unlock(tp);
    netdev_err((struct net_device const *)netdev, "Cannot restart hardware after reset.\n");
    goto done;
  } else {
  }
  netif_device_attach(netdev);
  tg3_timer_start(tp);
  tg3_netif_start(tp);
  tg3_full_unlock(tp);
  tg3_phy_start(tp);
  done:
  rtnl_unlock();
  return;
}
}
static struct pci_error_handlers const tg3_err_handler = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& tg3_io_error_detected),
    0, 0, & tg3_io_slot_reset, & tg3_io_resume};
static struct pci_driver tg3_driver =
     {{0, 0}, "tg3", (struct pci_device_id const *)(& tg3_pci_tbl), & tg3_init_one,
    & tg3_remove_one, 0, 0, 0, 0, 0, 0, & tg3_err_handler, {0, 0, 0, 0, (_Bool)0,
                                                            0, 0, 0, 0, 0, 0, 0, 0,
                                                            & tg3_pm_ops, 0}, {{{{{{0U}},
                                                                                  0U,
                                                                                  0U,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0UL}}}},
                                                                               {0,
                                                                                0}}};
static int tg3_init(void)
{
  int tmp ;
  {
  tmp = __pci_register_driver(& tg3_driver, & __this_module, "tg3");
  return (tmp);
}
}
static void tg3_cleanup(void)
{
  {
  pci_unregister_driver(& tg3_driver);
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
int main(void)
{
  struct ptp_clock_info *var_group1 ;
  s32 var_tg3_ptp_adjfreq_149_p1 ;
  s64 var_tg3_ptp_adjtime_150_p1 ;
  struct timespec *var_group2 ;
  struct timespec const *var_tg3_ptp_settime_152_p1 ;
  struct ptp_clock_request *var_group3 ;
  int var_tg3_ptp_enable_153_p2 ;
  struct net_device *var_group4 ;
  struct ethtool_cmd *var_group5 ;
  struct ethtool_drvinfo *var_group6 ;
  struct ethtool_regs *var_group7 ;
  void *var_tg3_get_regs_268_p2 ;
  struct ethtool_wolinfo *var_group8 ;
  u32 var_tg3_set_msglevel_278_p1 ;
  struct ethtool_eeprom *var_group9 ;
  u8 *var_tg3_get_eeprom_270_p2 ;
  u8 *var_tg3_set_eeprom_271_p2 ;
  struct ethtool_ringparam *var_group10 ;
  struct ethtool_pauseparam *var_group11 ;
  struct ethtool_test *var_group12 ;
  u64 *var_tg3_self_test_302_p2 ;
  u32 var_tg3_get_strings_291_p1 ;
  u8 *var_tg3_get_strings_291_p2 ;
  enum ethtool_phys_id_state var_tg3_set_phys_id_292_p1 ;
  struct ethtool_stats *var_group13 ;
  u64 *var_tg3_get_ethtool_stats_293_p2 ;
  struct ethtool_coalesce *var_group14 ;
  int var_tg3_get_sset_count_284_p1 ;
  struct ethtool_rxnfc *var_group15 ;
  u32 *var_tg3_get_rxnfc_285_p2 ;
  u32 *var_tg3_get_rxfh_indir_287_p1 ;
  u32 const *var_tg3_set_rxfh_indir_288_p1 ;
  struct ethtool_channels *var_group16 ;
  struct ethtool_ts_info *var_group17 ;
  int res_tg3_open_261 ;
  int res_tg3_close_262 ;
  struct sk_buff *var_group18 ;
  struct rtnl_link_stats64 *var_group19 ;
  void *var_tg3_set_mac_addr_225_p1 ;
  struct ifreq *var_group20 ;
  int var_tg3_ioctl_304_p2 ;
  int var_tg3_change_mtu_310_p1 ;
  netdev_features_t var_tg3_fix_features_205_p1 ;
  netdev_features_t var_tg3_set_features_206_p1 ;
  struct pci_dev *var_group21 ;
  pci_channel_state_t var_tg3_io_error_detected_360_p1 ;
  struct pci_device_id const *var_tg3_init_one_356_p1 ;
  int res_tg3_init_one_356 ;
  int var_tg3_interrupt_189_p0 ;
  void *var_tg3_interrupt_189_p1 ;
  int var_tg3_interrupt_tagged_190_p0 ;
  void *var_tg3_interrupt_tagged_190_p1 ;
  int var_tg3_msi_188_p0 ;
  void *var_tg3_msi_188_p1 ;
  int var_tg3_msi_1shot_187_p0 ;
  void *var_tg3_msi_1shot_187_p1 ;
  int var_tg3_test_isr_191_p0 ;
  void *var_tg3_test_isr_191_p1 ;
  unsigned long var_tg3_timer_246_p0 ;
  int ldv_s_tg3_netdev_ops_net_device_ops ;
  int ldv_s_tg3_driver_pci_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_tg3_netdev_ops_net_device_ops = 0;
  ldv_s_tg3_driver_pci_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = tg3_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_51907;
  ldv_51906:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  tg3_ptp_adjfreq(var_group1, var_tg3_ptp_adjfreq_149_p1);
  goto ldv_51845;
  case 1:
  ldv_handler_precall();
  tg3_ptp_adjtime(var_group1, var_tg3_ptp_adjtime_150_p1);
  goto ldv_51845;
  case 2:
  ldv_handler_precall();
  tg3_ptp_gettime(var_group1, var_group2);
  goto ldv_51845;
  case 3:
  ldv_handler_precall();
  tg3_ptp_settime(var_group1, var_tg3_ptp_settime_152_p1);
  goto ldv_51845;
  case 4:
  ldv_handler_precall();
  tg3_ptp_enable(var_group1, var_group3, var_tg3_ptp_enable_153_p2);
  goto ldv_51845;
  case 5:
  ldv_handler_precall();
  tg3_get_settings(var_group4, var_group5);
  goto ldv_51845;
  case 6:
  ldv_handler_precall();
  tg3_set_settings(var_group4, var_group5);
  goto ldv_51845;
  case 7:
  ldv_handler_precall();
  tg3_get_drvinfo(var_group4, var_group6);
  goto ldv_51845;
  case 8:
  ldv_handler_precall();
  tg3_get_regs_len(var_group4);
  goto ldv_51845;
  case 9:
  ldv_handler_precall();
  tg3_get_regs(var_group4, var_group7, var_tg3_get_regs_268_p2);
  goto ldv_51845;
  case 10:
  ldv_handler_precall();
  tg3_get_wol(var_group4, var_group8);
  goto ldv_51845;
  case 11:
  ldv_handler_precall();
  tg3_set_wol(var_group4, var_group8);
  goto ldv_51845;
  case 12:
  ldv_handler_precall();
  tg3_get_msglevel(var_group4);
  goto ldv_51845;
  case 13:
  ldv_handler_precall();
  tg3_set_msglevel(var_group4, var_tg3_set_msglevel_278_p1);
  goto ldv_51845;
  case 14:
  ldv_handler_precall();
  tg3_nway_reset(var_group4);
  goto ldv_51845;
  case 15:
  ldv_handler_precall();
  tg3_get_eeprom_len(var_group4);
  goto ldv_51845;
  case 16:
  ldv_handler_precall();
  tg3_get_eeprom(var_group4, var_group9, var_tg3_get_eeprom_270_p2);
  goto ldv_51845;
  case 17:
  ldv_handler_precall();
  tg3_set_eeprom(var_group4, var_group9, var_tg3_set_eeprom_271_p2);
  goto ldv_51845;
  case 18:
  ldv_handler_precall();
  tg3_get_ringparam(var_group4, var_group10);
  goto ldv_51845;
  case 19:
  ldv_handler_precall();
  tg3_set_ringparam(var_group4, var_group10);
  goto ldv_51845;
  case 20:
  ldv_handler_precall();
  tg3_get_pauseparam(var_group4, var_group11);
  goto ldv_51845;
  case 21:
  ldv_handler_precall();
  tg3_set_pauseparam(var_group4, var_group11);
  goto ldv_51845;
  case 22:
  ldv_handler_precall();
  tg3_self_test(var_group4, var_group12, var_tg3_self_test_302_p2);
  goto ldv_51845;
  case 23:
  ldv_handler_precall();
  tg3_get_strings(var_group4, var_tg3_get_strings_291_p1, var_tg3_get_strings_291_p2);
  goto ldv_51845;
  case 24:
  ldv_handler_precall();
  tg3_set_phys_id(var_group4, var_tg3_set_phys_id_292_p1);
  goto ldv_51845;
  case 25:
  ldv_handler_precall();
  tg3_get_ethtool_stats(var_group4, var_group13, var_tg3_get_ethtool_stats_293_p2);
  goto ldv_51845;
  case 26:
  ldv_handler_precall();
  tg3_get_coalesce(var_group4, var_group14);
  goto ldv_51845;
  case 27:
  ldv_handler_precall();
  tg3_set_coalesce(var_group4, var_group14);
  goto ldv_51845;
  case 28:
  ldv_handler_precall();
  tg3_get_sset_count(var_group4, var_tg3_get_sset_count_284_p1);
  goto ldv_51845;
  case 29:
  ldv_handler_precall();
  tg3_get_rxnfc(var_group4, var_group15, var_tg3_get_rxnfc_285_p2);
  goto ldv_51845;
  case 30:
  ldv_handler_precall();
  tg3_get_rxfh_indir_size(var_group4);
  goto ldv_51845;
  case 31:
  ldv_handler_precall();
  tg3_get_rxfh_indir(var_group4, var_tg3_get_rxfh_indir_287_p1);
  goto ldv_51845;
  case 32:
  ldv_handler_precall();
  tg3_set_rxfh_indir(var_group4, var_tg3_set_rxfh_indir_288_p1);
  goto ldv_51845;
  case 33:
  ldv_handler_precall();
  tg3_get_channels(var_group4, var_group16);
  goto ldv_51845;
  case 34:
  ldv_handler_precall();
  tg3_set_channels(var_group4, var_group16);
  goto ldv_51845;
  case 35:
  ldv_handler_precall();
  tg3_get_ts_info(var_group4, var_group17);
  goto ldv_51845;
  case 36: ;
  if (ldv_s_tg3_netdev_ops_net_device_ops == 0) {
    ldv_handler_precall();
    res_tg3_open_261 = tg3_open(var_group4);
    ldv_check_return_value(res_tg3_open_261);
    if (res_tg3_open_261 < 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_tg3_netdev_ops_net_device_ops = ldv_s_tg3_netdev_ops_net_device_ops + 1;
  } else {
  }
  goto ldv_51845;
  case 37: ;
  if (ldv_s_tg3_netdev_ops_net_device_ops == 1) {
    ldv_handler_precall();
    res_tg3_close_262 = tg3_close(var_group4);
    ldv_check_return_value(res_tg3_close_262);
    if (res_tg3_close_262 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_tg3_netdev_ops_net_device_ops = 0;
  } else {
  }
  goto ldv_51845;
  case 38:
  ldv_handler_precall();
  tg3_start_xmit(var_group18, var_group4);
  goto ldv_51845;
  case 39:
  ldv_handler_precall();
  tg3_get_stats64(var_group4, var_group19);
  goto ldv_51845;
  case 40:
  ldv_handler_precall();
  tg3_set_rx_mode(var_group4);
  goto ldv_51845;
  case 41:
  ldv_handler_precall();
  tg3_set_mac_addr(var_group4, var_tg3_set_mac_addr_225_p1);
  goto ldv_51845;
  case 42:
  ldv_handler_precall();
  tg3_ioctl(var_group4, var_group20, var_tg3_ioctl_304_p2);
  goto ldv_51845;
  case 43:
  ldv_handler_precall();
  tg3_tx_timeout(var_group4);
  goto ldv_51845;
  case 44:
  ldv_handler_precall();
  tg3_change_mtu(var_group4, var_tg3_change_mtu_310_p1);
  goto ldv_51845;
  case 45:
  ldv_handler_precall();
  tg3_fix_features(var_group4, var_tg3_fix_features_205_p1);
  goto ldv_51845;
  case 46:
  ldv_handler_precall();
  tg3_set_features(var_group4, var_tg3_set_features_206_p1);
  goto ldv_51845;
  case 47:
  ldv_handler_precall();
  tg3_poll_controller(var_group4);
  goto ldv_51845;
  case 48:
  ldv_handler_precall();
  tg3_io_error_detected(var_group21, var_tg3_io_error_detected_360_p1);
  goto ldv_51845;
  case 49:
  ldv_handler_precall();
  tg3_io_slot_reset(var_group21);
  goto ldv_51845;
  case 50:
  ldv_handler_precall();
  tg3_io_resume(var_group21);
  goto ldv_51845;
  case 51: ;
  if (ldv_s_tg3_driver_pci_driver == 0) {
    res_tg3_init_one_356 = tg3_init_one(var_group21, var_tg3_init_one_356_p1);
    ldv_check_return_value(res_tg3_init_one_356);
    ldv_check_return_value_probe(res_tg3_init_one_356);
    if (res_tg3_init_one_356 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_tg3_driver_pci_driver = ldv_s_tg3_driver_pci_driver + 1;
  } else {
  }
  goto ldv_51845;
  case 52: ;
  if (ldv_s_tg3_driver_pci_driver == 1) {
    ldv_handler_precall();
    tg3_remove_one(var_group21);
    ldv_s_tg3_driver_pci_driver = 0;
  } else {
  }
  goto ldv_51845;
  case 53:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  tg3_interrupt(var_tg3_interrupt_189_p0, var_tg3_interrupt_189_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_51845;
  case 54:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  tg3_interrupt_tagged(var_tg3_interrupt_tagged_190_p0, var_tg3_interrupt_tagged_190_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_51845;
  case 55:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  tg3_msi(var_tg3_msi_188_p0, var_tg3_msi_188_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_51845;
  case 56:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  tg3_msi_1shot(var_tg3_msi_1shot_187_p0, var_tg3_msi_1shot_187_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_51845;
  case 57:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  tg3_test_isr(var_tg3_test_isr_191_p0, var_tg3_test_isr_191_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_51845;
  case 58:
  ldv_handler_precall();
  tg3_timer(var_tg3_timer_246_p0);
  goto ldv_51845;
  default: ;
  goto ldv_51845;
  }
  ldv_51845: ;
  ldv_51907:
  tmp___1 = __VERIFIER_nondet_int();
  if ((tmp___1 != 0 || ldv_s_tg3_netdev_ops_net_device_ops != 0) || ldv_s_tg3_driver_pci_driver != 0) {
    goto ldv_51906;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  tg3_cleanup();
  ldv_final:
  ldv_check_final_state();
  return 0;
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
  ldv_mutex_lock = 1;
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_lock == 1) {
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
int __bitmap_weight(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
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
struct sk_buff *__skb_gso_segment(struct sk_buff *arg0, netdev_features_t arg1, bool arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void __udelay(unsigned long arg0) {
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
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct net_device));
}
struct sk_buff *build_skb(void *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
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
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_close(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
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
void device_set_wakeup_capable(struct device *arg0, bool arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_set_wakeup_enable(struct device *arg0, bool arg1) {
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
void dql_completed(struct dql *arg0, unsigned int arg1) {
  return;
}
void dql_reset(struct dql *arg0) {
  return;
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
struct device *hwmon_device_register(struct device *arg0) {
  return ldv_malloc(sizeof(struct device));
}
void hwmon_device_unregister(struct device *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void iounmap(volatile void *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_usecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
ktime_t ktime_get_real() {
  return *(union ktime *)ldv_xmalloc(sizeof(union ktime));
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
void local_bh_disable() {
  return;
}
void local_bh_enable() {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
struct mii_bus *mdiobus_alloc_size(size_t arg0) {
  return ldv_malloc(sizeof(struct mii_bus));
}
void mdiobus_free(struct mii_bus *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mdiobus_register(struct mii_bus *arg0) {
  return __VERIFIER_nondet_int();
}
void mdiobus_unregister(struct mii_bus *arg0) {
  return;
}
void might_fault() {
  return;
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
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
void *netdev_alloc_frag(unsigned int arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_notice(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void netdev_update_features(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netdev_warn(const struct net_device *arg0, const char *arg1, ...) {
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
void netif_napi_del(struct napi_struct *arg0) {
  return;
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
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
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
int pci_bus_write_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_dev_present(const struct pci_device_id *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_dev_put(struct pci_dev *arg0) {
  return;
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
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
int pci_enable_msi_block(struct pci_dev *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix(struct pci_dev *arg0, struct msix_entry *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
struct pci_dev *pci_get_device(unsigned int arg0, unsigned int arg1, struct pci_dev *arg2) {
  return ldv_malloc(sizeof(struct pci_dev));
}
struct pci_dev *pci_get_slot(struct pci_bus *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct pci_dev));
}
void *pci_ioremap_bar(struct pci_dev *arg0, int arg1) {
  return ldv_malloc(0UL);
}
long __VERIFIER_nondet_long(void);
ssize_t pci_read_vpd(struct pci_dev *arg0, loff_t arg1, size_t arg2, void *arg3) {
  return __VERIFIER_nondet_long();
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
int pci_vpd_find_info_keyword(const u8 *arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_vpd_find_tag(const u8 *arg0, unsigned int arg1, unsigned int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_wake_from_d3(struct pci_dev *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pcie_capability_clear_and_set_word(struct pci_dev *arg0, int arg1, u16 arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pcie_capability_read_word(struct pci_dev *arg0, int arg1, u16 *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pcie_capability_write_word(struct pci_dev *arg0, int arg1, u16 arg2) {
  return __VERIFIER_nondet_int();
}
struct phy_device *phy_connect(struct net_device *arg0, const char *arg1, void (*arg2)(struct net_device *), phy_interface_t arg3) {
  return ldv_malloc(sizeof(struct phy_device));
}
void phy_disconnect(struct phy_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int phy_ethtool_gset(struct phy_device *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int phy_ethtool_sset(struct phy_device *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int phy_mii_ioctl(struct phy_device *arg0, struct ifreq *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void phy_start(struct phy_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int phy_start_aneg(struct phy_device *arg0) {
  return __VERIFIER_nondet_int();
}
void phy_stop(struct phy_device *arg0) {
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
int __VERIFIER_nondet_int(void);
int ptp_clock_index(struct ptp_clock *arg0) {
  return __VERIFIER_nondet_int();
}
struct ptp_clock *ptp_clock_register(struct ptp_clock_info *arg0, struct device *arg1) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int ptp_clock_unregister(struct ptp_clock *arg0) {
  return __VERIFIER_nondet_int();
}
void put_page(struct page *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
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
void skb_clone_tx_timestamp(struct sk_buff *arg0) {
  return;
}
struct sk_buff *skb_copy(const struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
struct sk_buff *skb_copy_expand(const struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return ldv_malloc(sizeof(struct sk_buff));
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
void skb_tstamp_tx(struct sk_buff *arg0, struct skb_shared_hwtstamps *arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int usecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
