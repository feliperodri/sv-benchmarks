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
struct task_struct;
struct kernel_cap_struct {
   __u32 cap[2] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct dentry;
struct dentry;
struct user_namespace;
struct user_namespace;
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
struct address_space;
struct address_space;
union __anonunion____missing_field_name_203 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct____missing_field_name_207 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_206 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_207 __annonCompField34 ;
};
struct __anonstruct____missing_field_name_205 {
   union __anonunion____missing_field_name_206 __annonCompField35 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_204 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_205 __annonCompField36 ;
};
struct __anonstruct____missing_field_name_202 {
   union __anonunion____missing_field_name_203 __annonCompField33 ;
   union __anonunion____missing_field_name_204 __annonCompField37 ;
};
struct __anonstruct____missing_field_name_209 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_208 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_209 __annonCompField39 ;
};
union __anonunion____missing_field_name_210 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct____missing_field_name_202 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField40 ;
   union __anonunion____missing_field_name_210 __annonCompField41 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct __anonstruct_vm_set_212 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_211 {
   struct __anonstruct_vm_set_212 vm_set ;
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
   union __anonunion_shared_211 shared ;
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
struct __anonstruct_sigset_t_214 {
   unsigned long sig[1] ;
};
typedef struct __anonstruct_sigset_t_214 sigset_t;
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
struct __anonstruct__kill_216 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_217 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[sizeof(__kernel_uid32_t ) - sizeof(int )] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_218 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_219 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_220 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_221 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_215 {
   int _pad[(128UL - 4UL * sizeof(int )) / sizeof(int )] ;
   struct __anonstruct__kill_216 _kill ;
   struct __anonstruct__timer_217 _timer ;
   struct __anonstruct__rt_218 _rt ;
   struct __anonstruct__sigchld_219 _sigchld ;
   struct __anonstruct__sigfault_220 _sigfault ;
   struct __anonstruct__sigpoll_221 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_215 _sifields ;
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
struct __anonstruct_seccomp_t_224 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_224 seccomp_t;
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
struct signal_struct;
struct cred;
struct key_type;
struct key_type;
struct keyring_list;
struct keyring_list;
struct key_user;
union __anonunion____missing_field_name_225 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_226 {
   struct list_head link ;
   unsigned long x[2] ;
   void *p[2] ;
   int reject_error ;
};
union __anonunion_payload_227 {
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
   union __anonunion____missing_field_name_225 __annonCompField42 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_226 type_data ;
   union __anonunion_payload_227 payload ;
};
struct audit_context;
struct audit_context;
struct user_struct;
struct cred;
struct inode;
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
union __anonunion_ki_obj_229 {
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
   union __anonunion_ki_obj_229 ki_obj ;
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
struct files_struct;
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
struct of_device_id {
   char name[32] ;
   char type[32] ;
   char compatible[128] ;
   void *data ;
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
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct proc_dir_entry;
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
struct module;
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter *adap , struct i2c_msg *msgs , int num ) ;
   int (*smbus_xfer)(struct i2c_adapter *adap , u16 addr , unsigned short flags ,
                     char read_write , u8 command , int size , union i2c_smbus_data *data ) ;
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
   char name[48] ;
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
   __u8 block[34] ;
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
   char name[128] ;
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
   __u8 msg[6] ;
   __u8 msg_len ;
};
struct dvb_diseqc_slave_reply {
   __u8 msg[4] ;
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
struct __anonstruct_buffer_233 {
   __u8 data[32] ;
   __u32 len ;
   __u32 reserved1[3] ;
   void *reserved2 ;
};
union __anonunion_u_232 {
   __u32 data ;
   struct __anonstruct_buffer_233 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3] ;
   union __anonunion_u_232 u ;
   int result ;
} __attribute__((__packed__)) ;
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
struct dentry_operations;
struct super_block;
union __anonunion_d_u_234 {
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
   union __anonunion_d_u_234 d_u ;
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
struct nameidata;
struct kiocb;
struct kobject;
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
struct writeback_control;
struct writeback_control;
union __anonunion_arg_241 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_240 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_241 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_240 read_descriptor_t;
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
union __anonunion____missing_field_name_242 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_243 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_244 {
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
   union __anonunion____missing_field_name_242 __annonCompField44 ;
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
   union __anonunion____missing_field_name_243 __annonCompField45 ;
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
   union __anonunion____missing_field_name_244 __annonCompField46 ;
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
union __anonunion_f_u_245 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_245 f_u ;
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
struct __anonstruct_afs_247 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_246 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_247 afs ;
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
   union __anonunion_fl_u_246 fl_u ;
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
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct poll_table_struct;
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
   u8 proposed_mac[6] ;
   void *priv ;
   struct device *device ;
   struct module *module ;
   int mfe_shared ;
   struct dvb_device *mfe_dvbdev ;
   struct mutex mfe_lock ;
   int (*fe_ioctl_override)(struct dvb_frontend *fe , unsigned int cmd , void *parg ,
                            unsigned int stage ) ;
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
   int (*kernel_ioctl)(struct file *file , unsigned int cmd , void *arg ) ;
   void *priv ;
};
struct dvb_frontend_tune_settings {
   int min_delay_ms ;
   int step_size ;
   int max_drift ;
};
struct dvb_frontend;
struct dvb_tuner_info {
   char name[128] ;
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
   int (*release)(struct dvb_frontend *fe ) ;
   int (*init)(struct dvb_frontend *fe ) ;
   int (*sleep)(struct dvb_frontend *fe ) ;
   int (*set_params)(struct dvb_frontend *fe ) ;
   int (*set_analog_params)(struct dvb_frontend *fe , struct analog_parameters *p ) ;
   int (*calc_regs)(struct dvb_frontend *fe , u8 *buf , int buf_len ) ;
   int (*set_config)(struct dvb_frontend *fe , void *priv_cfg ) ;
   int (*get_frequency)(struct dvb_frontend *fe , u32 *frequency ) ;
   int (*get_bandwidth)(struct dvb_frontend *fe , u32 *bandwidth ) ;
   int (*get_if_frequency)(struct dvb_frontend *fe , u32 *frequency ) ;
   int (*get_status)(struct dvb_frontend *fe , u32 *status ) ;
   int (*get_rf_strength)(struct dvb_frontend *fe , u16 *strength ) ;
   int (*set_frequency)(struct dvb_frontend *fe , u32 frequency ) ;
   int (*set_bandwidth)(struct dvb_frontend *fe , u32 bandwidth ) ;
   int (*set_state)(struct dvb_frontend *fe , enum tuner_param param , struct tuner_state *state ) ;
   int (*get_state)(struct dvb_frontend *fe , enum tuner_param param , struct tuner_state *state ) ;
};
struct analog_demod_info {
   char *name ;
};
struct analog_demod_ops {
   struct analog_demod_info info ;
   void (*set_params)(struct dvb_frontend *fe , struct analog_parameters *params ) ;
   int (*has_signal)(struct dvb_frontend *fe ) ;
   int (*get_afc)(struct dvb_frontend *fe ) ;
   void (*tuner_status)(struct dvb_frontend *fe ) ;
   void (*standby)(struct dvb_frontend *fe ) ;
   void (*release)(struct dvb_frontend *fe ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend *fe , int enable ) ;
   int (*set_config)(struct dvb_frontend *fe , void *priv_cfg ) ;
};
struct dtv_frontend_properties;
struct dtv_frontend_properties;
struct dvb_frontend_ops {
   struct dvb_frontend_info info ;
   u8 delsys[8] ;
   void (*release)(struct dvb_frontend *fe ) ;
   void (*release_sec)(struct dvb_frontend *fe ) ;
   int (*init)(struct dvb_frontend *fe ) ;
   int (*sleep)(struct dvb_frontend *fe ) ;
   int (*write)(struct dvb_frontend *fe , u8 const *buf , int len ) ;
   int (*tune)(struct dvb_frontend *fe , bool re_tune , unsigned int mode_flags ,
               unsigned int *delay , fe_status_t *status ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend *fe ) ;
   int (*set_frontend)(struct dvb_frontend *fe ) ;
   int (*get_tune_settings)(struct dvb_frontend *fe , struct dvb_frontend_tune_settings *settings ) ;
   int (*get_frontend)(struct dvb_frontend *fe ) ;
   int (*read_status)(struct dvb_frontend *fe , fe_status_t *status ) ;
   int (*read_ber)(struct dvb_frontend *fe , u32 *ber ) ;
   int (*read_signal_strength)(struct dvb_frontend *fe , u16 *strength ) ;
   int (*read_snr)(struct dvb_frontend *fe , u16 *snr ) ;
   int (*read_ucblocks)(struct dvb_frontend *fe , u32 *ucblocks ) ;
   int (*diseqc_reset_overload)(struct dvb_frontend *fe ) ;
   int (*diseqc_send_master_cmd)(struct dvb_frontend *fe , struct dvb_diseqc_master_cmd *cmd ) ;
   int (*diseqc_recv_slave_reply)(struct dvb_frontend *fe , struct dvb_diseqc_slave_reply *reply ) ;
   int (*diseqc_send_burst)(struct dvb_frontend *fe , fe_sec_mini_cmd_t minicmd ) ;
   int (*set_tone)(struct dvb_frontend *fe , fe_sec_tone_mode_t tone ) ;
   int (*set_voltage)(struct dvb_frontend *fe , fe_sec_voltage_t voltage ) ;
   int (*enable_high_lnb_voltage)(struct dvb_frontend *fe , long arg ) ;
   int (*dishnetwork_send_legacy_command)(struct dvb_frontend *fe , unsigned long cmd ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend *fe , int enable ) ;
   int (*ts_bus_ctrl)(struct dvb_frontend *fe , int acquire ) ;
   enum dvbfe_search (*search)(struct dvb_frontend *fe ) ;
   struct dvb_tuner_ops tuner_ops ;
   struct analog_demod_ops analog_ops ;
   int (*set_property)(struct dvb_frontend *fe , struct dtv_property *tvp ) ;
   int (*get_property)(struct dvb_frontend *fe , struct dtv_property *tvp ) ;
};
struct __anonstruct_layer_251 {
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
   struct __anonstruct_layer_251 layer[3] ;
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
   int (*callback)(void *adapter_priv , int component , int cmd , int arg ) ;
   int id ;
};
struct ite_config {
   u8 chip_ver ;
   u16 chip_type ;
   u32 firmware ;
   u8 firmware_ver ;
   u8 adc_x2 ;
   u8 tuner_id_0 ;
   u8 tuner_id_1 ;
   u8 dual_mode ;
   u8 adf ;
   u8 read_slevel ;
};
struct it913xset {
   u32 pro ;
   u32 address ;
   u8 reg[15] ;
   u8 count ;
};
struct adctable {
   u32 adcFrequency ;
   u32 bandwidth ;
   u32 coeff_1_2048 ;
   u32 coeff_1_4096 ;
   u32 coeff_1_8191 ;
   u32 coeff_1_8192 ;
   u32 coeff_1_8193 ;
   u32 coeff_2_2k ;
   u32 coeff_2_4k ;
   u32 coeff_2_8k ;
   u16 bfsfcw_fftinx_ratio ;
   u16 fftinx_bfsfcw_ratio ;
};
struct table {
   u32 xtal ;
   struct adctable *table ;
};
struct it913x_fe_state {
   struct dvb_frontend frontend ;
   struct i2c_adapter *i2c_adap ;
   struct ite_config *config ;
   u8 i2c_addr ;
   u32 frequency ;
   fe_modulation_t constellation ;
   fe_transmit_mode_t transmission_mode ;
   u8 priority ;
   u32 crystalFrequency ;
   u32 adcFrequency ;
   u8 tuner_type ;
   struct adctable *table ;
   fe_status_t it913x_status ;
   u16 tun_xtal ;
   u8 tun_fdiv ;
   u8 tun_clk_mode ;
   u32 tun_fn_min ;
   u32 ucblocks ;
};
struct __anonstruct_258 {
   int : 0 ;
};
long ldv__builtin_expect(long val , long res ) ;
extern int ( printk)(char const *fmt , ...) ;
extern void *memcpy(void *to , void const *from , size_t len ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern struct kernel_param_ops param_ops_int ;
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
extern int i2c_transfer(struct i2c_adapter *adap , struct i2c_msg *msgs , int num ) ;
extern void __const_udelay(unsigned long xloops ) ;
extern void msleep(unsigned int msecs ) ;
struct dvb_frontend *it913x_fe_attach(struct i2c_adapter *i2c_adap , u8 i2c_addr ,
                                      struct ite_config *config ) ;
static struct adctable tab1[4] = { {(u32 )20156250, (u32 )6000000, (u32 )45660782, (u32 )22830391, (u32 )11416589,
      (u32 )11415195, (u32 )11413802, (u32 )22830391, (u32 )11415195, (u32 )5707598,
      (u16 )753, (u16 )348},
        {(u32 )20156250, (u32 )7000000, (u32 )53270912, (u32 )26635456, (u32 )13319354,
      (u32 )13317728, (u32 )13316103, (u32 )26635456, (u32 )13317728, (u32 )6658864,
      (u16 )645, (u16 )406},
        {(u32 )20156250, (u32 )8000000, (u32 )60881043, (u32 )30440521, (u32 )15222119,
      (u32 )15220261, (u32 )15218403, (u32 )30440521, (u32 )15220261, (u32 )7610130,
      (u16 )564, (u16 )464},
        {(u32 )20156250, (u32 )5000000, (u32 )38050652, (u32 )19025326, (u32 )9513824,
      (u32 )9512663, (u32 )9511502, (u32 )19025326, (u32 )9512663, (u32 )4756331,
      (u16 )903, (u16 )290}};
static struct adctable tab2[4] = { {(u32 )20187500, (u32 )6000000, (u32 )45590100, (u32 )22795050, (u32 )11398916,
      (u32 )11397525, (u32 )11396134, (u32 )22795050, (u32 )11397525, (u32 )5698762,
      (u16 )754, (u16 )348},
        {(u32 )20187500, (u32 )7000000, (u32 )53188449, (u32 )26594225, (u32 )13298736,
      (u32 )13297112, (u32 )13295489, (u32 )26594225, (u32 )13297112, (u32 )6648556,
      (u16 )646, (u16 )406},
        {(u32 )20187500, (u32 )8000000, (u32 )60786799, (u32 )30393400, (u32 )15198555,
      (u32 )15196700, (u32 )15194845, (u32 )30393400, (u32 )15196700, (u32 )7598350,
      (u16 )565, (u16 )464},
        {(u32 )20187500, (u32 )5000000, (u32 )37991750, (u32 )18995875, (u32 )9499097,
      (u32 )9497937, (u32 )9496778, (u32 )18995875, (u32 )9497937, (u32 )4748969,
      (u16 )904, (u16 )290}};
static struct adctable tab3[4] = { {(u32 )20250000, (u32 )6000000, (u32 )45449389, (u32 )22724695, (u32 )11363735,
      (u32 )11362347, (u32 )11360961, (u32 )22724695, (u32 )11362347, (u32 )5681174,
      (u16 )756, (u16 )347},
        {(u32 )20250000, (u32 )7000000, (u32 )53024288, (u32 )26512144, (u32 )13257690,
      (u32 )13256072, (u32 )13254454, (u32 )26512144, (u32 )13256072, (u32 )6628036,
      (u16 )648, (u16 )405},
        {(u32 )20250000, (u32 )8000000, (u32 )60599186, (u32 )30299593, (u32 )15151646,
      (u32 )15149796, (u32 )15147947, (u32 )30299593, (u32 )15149796, (u32 )7574898,
      (u16 )567, (u16 )462},
        {(u32 )20250000, (u32 )5000000, (u32 )37874491, (u32 )18937246, (u32 )9469779,
      (u32 )9468623, (u32 )9467467, (u32 )18937246, (u32 )9468623, (u32 )4734311,
      (u16 )907, (u16 )289}};
static struct adctable tab4[4] = { {(u32 )20583333, (u32 )6000000, (u32 )44713368, (u32 )22356684, (u32 )11179707,
      (u32 )11178342, (u32 )11176978, (u32 )22356684, (u32 )11178342, (u32 )5589171,
      (u16 )768, (u16 )341},
        {(u32 )20583333, (u32 )7000000, (u32 )52165596, (u32 )26082798, (u32 )13042991,
      (u32 )13041399, (u32 )13039807, (u32 )26082798, (u32 )13041399, (u32 )6520699,
      (u16 )659, (u16 )398},
        {(u32 )20583333, (u32 )8000000, (u32 )59617823, (u32 )29808912, (u32 )14906275,
      (u32 )14904456, (u32 )14902637, (u32 )29808912, (u32 )14904456, (u32 )7452228,
      (u16 )576, (u16 )455},
        {(u32 )20583333, (u32 )5000000, (u32 )37261140, (u32 )18630570, (u32 )9316422,
      (u32 )9315285, (u32 )9314148, (u32 )18630570, (u32 )9315285, (u32 )4657642,
      (u16 )922, (u16 )284}};
static struct adctable tab5[4] = { {(u32 )20416667, (u32 )6000000, (u32 )45078373, (u32 )22539187, (u32 )11270969,
      (u32 )11269593, (u32 )11268218, (u32 )22539187, (u32 )11269593, (u32 )5634797,
      (u16 )762, (u16 )344},
        {(u32 )20416667, (u32 )7000000, (u32 )52591435, (u32 )26295718, (u32 )13149464,
      (u32 )13147859, (u32 )13146254, (u32 )26295718, (u32 )13147859, (u32 )6573929,
      (u16 )653, (u16 )401},
        {(u32 )20416667, (u32 )8000000, (u32 )60104498, (u32 )30052249, (u32 )15027959,
      (u32 )15026124, (u32 )15024290, (u32 )30052249, (u32 )15026124, (u32 )7513062,
      (u16 )572, (u16 )459},
        {(u32 )20416667, (u32 )5000000, (u32 )37565311, (u32 )18782656, (u32 )9392474,
      (u32 )9391328, (u32 )9390181, (u32 )18782656, (u32 )9391328, (u32 )4695664,
      (u16 )915, (u16 )287}};
static struct adctable tab6[4] = { {(u32 )20480000, (u32 )6000000, (u32 )44938971, (u32 )22469486, (u32 )11236114,
      (u32 )11234743, (u32 )11233372, (u32 )22469486, (u32 )11234743, (u32 )5617371,
      (u16 )765, (u16 )343},
        {(u32 )20480000, (u32 )7000000, (u32 )52428800, (u32 )26214400, (u32 )13108800,
      (u32 )13107200, (u32 )13105600, (u32 )26214400, (u32 )13107200, (u32 )6553600,
      (u16 )655, (u16 )400},
        {(u32 )20480000, (u32 )8000000, (u32 )59918629, (u32 )29959314, (u32 )14981486,
      (u32 )14979657, (u32 )14977829, (u32 )29959314, (u32 )14979657, (u32 )7489829,
      (u16 )573, (u16 )457},
        {(u32 )20480000, (u32 )5000000, (u32 )37449143, (u32 )18724571, (u32 )9363429,
      (u32 )9362286, (u32 )9361143, (u32 )18724571, (u32 )9362286, (u32 )4681143,
      (u16 )918, (u16 )286}};
static struct adctable tab7[4] = { {(u32 )20500000, (u32 )6000000, (u32 )44895129, (u32 )22447564, (u32 )11225152,
      (u32 )11223782, (u32 )11222412, (u32 )22447564, (u32 )11223782, (u32 )5611891,
      (u16 )765, (u16 )343},
        {(u32 )20500000, (u32 )7000000, (u32 )52377650, (u32 )26188825, (u32 )13096011,
      (u32 )13094412, (u32 )13092814, (u32 )26188825, (u32 )13094412, (u32 )6547206,
      (u16 )656, (u16 )400},
        {(u32 )20500000, (u32 )8000000, (u32 )59860171, (u32 )29930086, (u32 )14966870,
      (u32 )14965043, (u32 )14963216, (u32 )29930086, (u32 )14965043, (u32 )7482521,
      (u16 )574, (u16 )457},
        {(u32 )20500000, (u32 )5000000, (u32 )37412607, (u32 )18706304, (u32 )9354294,
      (u32 )9353152, (u32 )9352010, (u32 )18706304, (u32 )9353152, (u32 )4676576,
      (u16 )918, (u16 )285}};
static struct adctable tab8[4] = { {(u32 )20625000, (u32 )6000000, (u32 )44623037, (u32 )22311518, (u32 )11157121,
      (u32 )11155759, (u32 )11154398, (u32 )22311518, (u32 )11155759, (u32 )5577880,
      (u16 )770, (u16 )340},
        {(u32 )20625000, (u32 )7000000, (u32 )52060210, (u32 )26030105, (u32 )13016641,
      (u32 )13015052, (u32 )13013464, (u32 )26030105, (u32 )13015052, (u32 )6507526,
      (u16 )660, (u16 )397},
        {(u32 )20625000, (u32 )8000000, (u32 )59497382, (u32 )29748691, (u32 )14876162,
      (u32 )14874346, (u32 )14872530, (u32 )29748691, (u32 )14874346, (u32 )7437173,
      (u16 )578, (u16 )454},
        {(u32 )20625000, (u32 )5000000, (u32 )37185864, (u32 )18592932, (u32 )9297601,
      (u32 )9296466, (u32 )9295331, (u32 )18592932, (u32 )9296466, (u32 )4648233,
      (u16 )924, (u16 )284}};
static struct table fe_clockTable[10] =
  { {(u32 )12000000, tab3},
        {(u32 )20480000, tab6},
        {(u32 )36000000, tab3},
        {(u32 )30000000, tab1},
        {(u32 )26000000, tab4},
        {(u32 )28000000, tab5},
        {(u32 )32000000, tab7},
        {(u32 )34000000, tab2},
        {(u32 )24000000, tab1},
        {(u32 )22000000, tab8}};
fe_code_rate_t fe_code[6] = { (fe_code_rate_t )1, (fe_code_rate_t )2, (fe_code_rate_t )3, (fe_code_rate_t )5,
        (fe_code_rate_t )7, (fe_code_rate_t )0};
fe_guard_interval_t fe_gi[4] = { (fe_guard_interval_t )0, (fe_guard_interval_t )1, (fe_guard_interval_t )2, (fe_guard_interval_t )3};
fe_hierarchy_t fe_hi[4] = { (fe_hierarchy_t )0, (fe_hierarchy_t )1, (fe_hierarchy_t )2, (fe_hierarchy_t )3};
fe_transmit_mode_t fe_mode[3] = { (fe_transmit_mode_t )0, (fe_transmit_mode_t )1, (fe_transmit_mode_t )3};
fe_modulation_t fe_con[3] = { (fe_modulation_t )0, (fe_modulation_t )1, (fe_modulation_t )3};
static struct it913xset set_solo_fe[20] =
  { {(u32 )0, (u32 )55484, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )0, (u32 )55485, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )0, (u32 )55483, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )0, (u32 )55483, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )0, (u32 )62495, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )0, (u32 )62490, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63878, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )0, (u32 )55580, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )0, (u32 )55579, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63281, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )0, (u32 )55582, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63282, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )0, (u32 )55583, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63280, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63352, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63292, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63350, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63878, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )41, {(u8 )0, (u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static struct it913xset init_1[7] = { {(u32 )0, (u32 )55549, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )0, (u32 )55347, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )0, (u32 )55344, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60503, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )0, (u32 )55345, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )0, (u32 )55346, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static struct it913xset it9135_v1[109] =
  { {(u32 )1, (u32 )81, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )112, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )126, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )129, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )138, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )142, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )146, {(u8 )6, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )153, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )159, {(u8 )225, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )160, {(u8 )207, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )163, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )165, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )166, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )169, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )170, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )176, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )194, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )198, {(u8 )25, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )61440, {(u8 )15, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61462, {(u8 )16, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61463, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61464, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61465, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61466, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61473, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61474, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61475, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61483, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61484, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61540, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61541, {(u8 )249, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61542, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61543, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61551, {(u8 )224, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61552, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61554, {(u8 )15, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61555, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61560, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61575, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61595, {(u8 )63, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61596, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61597, {(u8 )32, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61598, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61599, {(u8 )12, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61600, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61744, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61746, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61764, {(u8 )26, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61766, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61770, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61772, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61773, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61775, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61784, {(u8 )127, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61786, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61787, {(u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61789, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61790, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61795, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61798, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61799, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61800, {(u8 )15, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61818, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61819, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61827, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61853, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61884, {(u8 )54, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61885, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61899, {(u8 )160, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61900, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61956, {(u8 )16, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61972, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62478, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62479, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62480, {(u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62815, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62817, {(u8 )21, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62818, {(u8 )32, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62943, {(u8 )251, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62944, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62947, {(u8 )9, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62948, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62949, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62968, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62973, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62976, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62977, {(u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62978, {(u8 )11, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62979, {(u8 )14, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62980, {(u8 )17, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62981, {(u8 )20, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62982, {(u8 )23, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62983, {(u8 )31, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62990, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62991, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62992, {(u8 )50, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62993, {(u8 )16, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63239, {(u8 )252, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63240, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63241, {(u8 )55, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63242, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63371, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63503, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63504, {(u8 )84, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63505, {(u8 )90, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63749, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64262, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64907, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static struct it913xset it9135_38[82] =
  { {(u32 )1, (u32 )67, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )70, {(u8 )56, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )81, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )95, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )104, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )112, {(u8 )10, (u8 )5, (u8 )2, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )117, {(u8 )140, (u8 )140, (u8 )140, (u8 )200, (u8 )1, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )126, {(u8 )4, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )129, {(u8 )10, (u8 )18, (u8 )2, (u8 )10, (u8 )3, (u8 )200, (u8 )184,
                           (u8 )208, (u8 )195, (u8 )1, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )10},
        {(u32 )1, (u32 )142, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )146, {(u8 )6, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )153, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )155, {(u8 )60, (u8 )40, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )159, {(u8 )225, (u8 )207, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )2},
        {(u32 )1, (u32 )163, {(u8 )1, (u8 )90, (u8 )1, (u8 )1, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )169, {(u8 )0, (u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )176, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )179, {(u8 )2, (u8 )50, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )182, {(u8 )20, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )192, {(u8 )17, (u8 )0, (u8 )5, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )196, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )198, {(u8 )25, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )204, {(u8 )46, (u8 )81, (u8 )51, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )243, {(u8 )5, (u8 )140, (u8 )140, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )248, {(u8 )3, (u8 )6, (u8 )6, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )252, {(u8 )2, (u8 )2, (u8 )2, (u8 )9, (u8 )80, (u8 )123, (u8 )119,
                           (u8 )0, (u8 )2, (u8 )200, (u8 )5, (u8 )123, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )12},
        {(u32 )1, (u32 )265, {(u8 )2, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )277, {(u8 )10, (u8 )3, (u8 )2, (u8 )128, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )282, {(u8 )200, (u8 )123, (u8 )138, (u8 )160, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )290, {(u8 )2, (u8 )24, (u8 )195, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )295, {(u8 )0, (u8 )7, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )298, {(u8 )83, (u8 )81, (u8 )78, (u8 )67, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )311, {(u8 )1, (u8 )0, (u8 )7, (u8 )0, (u8 )6, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )317, {(u8 )0, (u8 )1, (u8 )91, (u8 )200, (u8 )89, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )61440, {(u8 )15, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61462, {(u8 )16, (u8 )4, (u8 )5, (u8 )4, (u8 )5, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )5},
        {(u32 )1, (u32 )61471, {(u8 )140, (u8 )0, (u8 )3, (u8 )10, (u8 )10, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )5},
        {(u32 )1, (u32 )61481, {(u8 )140, (u8 )0, (u8 )0, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )61540, {(u8 )3, (u8 )249, (u8 )3, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )61551, {(u8 )224, (u8 )3, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61554, {(u8 )15, (u8 )3, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61559, {(u8 )1, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61573, {(u8 )0, (u8 )2, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )61595, {(u8 )63, (u8 )0, (u8 )32, (u8 )0, (u8 )12, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )6},
        {(u32 )1, (u32 )61744, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61746, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61764, {(u8 )26, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61766, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61770, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61772, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61775, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61784, {(u8 )127, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61786, {(u8 )0, (u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61789, {(u8 )3, (u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61795, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61798, {(u8 )1, (u8 )64, (u8 )15, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )61818, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61827, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61853, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61884, {(u8 )54, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61899, {(u8 )160, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61956, {(u8 )16, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61972, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62028, {(u8 )136, (u8 )149, (u8 )154, (u8 )144, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )62042, {(u8 )7, (u8 )232, (u8 )3, (u8 )176, (u8 )4, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )5},
        {(u32 )1, (u32 )62064, {(u8 )1, (u8 )2, (u8 )1, (u8 )2, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )62478, {(u8 )10, (u8 )64, (u8 )8, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )62815, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62817, {(u8 )21, (u8 )32, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )62943, {(u8 )251, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )62947, {(u8 )9, (u8 )1, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )62968, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62973, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62976, {(u8 )5, (u8 )8, (u8 )11, (u8 )14, (u8 )17, (u8 )20, (u8 )23,
                             (u8 )31, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )8},
        {(u32 )1, (u32 )62990, {(u8 )0, (u8 )4, (u8 )50, (u8 )16, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )63239, {(u8 )252, (u8 )0, (u8 )55, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )63371, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63503, {(u8 )64, (u8 )84, (u8 )90, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )63749, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64262, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64907, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static struct it913xset it9135_51[82] =
  { {(u32 )1, (u32 )67, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )70, {(u8 )81, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )81, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )95, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )104, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )112, {(u8 )10, (u8 )6, (u8 )2, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )117, {(u8 )140, (u8 )140, (u8 )140, (u8 )200, (u8 )1, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )126, {(u8 )4, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )129, {(u8 )10, (u8 )18, (u8 )2, (u8 )10, (u8 )3, (u8 )192, (u8 )150,
                           (u8 )207, (u8 )195, (u8 )1, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )10},
        {(u32 )1, (u32 )142, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )146, {(u8 )6, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )153, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )155, {(u8 )60, (u8 )40, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )159, {(u8 )225, (u8 )207, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )2},
        {(u32 )1, (u32 )163, {(u8 )1, (u8 )90, (u8 )1, (u8 )1, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )169, {(u8 )0, (u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )176, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )179, {(u8 )2, (u8 )60, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )182, {(u8 )20, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )192, {(u8 )17, (u8 )0, (u8 )5, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )196, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )198, {(u8 )25, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )204, {(u8 )46, (u8 )81, (u8 )51, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )243, {(u8 )5, (u8 )140, (u8 )140, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )248, {(u8 )3, (u8 )6, (u8 )6, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )252, {(u8 )3, (u8 )2, (u8 )2, (u8 )9, (u8 )80, (u8 )122, (u8 )119,
                           (u8 )1, (u8 )2, (u8 )176, (u8 )2, (u8 )122, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )12},
        {(u32 )1, (u32 )265, {(u8 )2, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )277, {(u8 )10, (u8 )3, (u8 )2, (u8 )128, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )282, {(u8 )192, (u8 )122, (u8 )172, (u8 )140, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )290, {(u8 )2, (u8 )112, (u8 )164, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )295, {(u8 )0, (u8 )7, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )298, {(u8 )83, (u8 )81, (u8 )78, (u8 )67, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )311, {(u8 )1, (u8 )0, (u8 )7, (u8 )0, (u8 )6, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )317, {(u8 )0, (u8 )1, (u8 )91, (u8 )192, (u8 )89, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )61440, {(u8 )15, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61462, {(u8 )16, (u8 )4, (u8 )5, (u8 )4, (u8 )5, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )5},
        {(u32 )1, (u32 )61471, {(u8 )140, (u8 )0, (u8 )3, (u8 )10, (u8 )10, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )5},
        {(u32 )1, (u32 )61481, {(u8 )140, (u8 )0, (u8 )0, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )61540, {(u8 )3, (u8 )249, (u8 )3, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )61551, {(u8 )224, (u8 )3, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61554, {(u8 )15, (u8 )3, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61559, {(u8 )1, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61573, {(u8 )192, (u8 )1, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )61595, {(u8 )63, (u8 )0, (u8 )32, (u8 )0, (u8 )12, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )6},
        {(u32 )1, (u32 )61744, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61746, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61764, {(u8 )26, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61766, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61770, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61772, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61775, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61784, {(u8 )127, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61786, {(u8 )0, (u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61789, {(u8 )3, (u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61795, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61798, {(u8 )1, (u8 )64, (u8 )15, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )61818, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61827, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61853, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61884, {(u8 )54, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61899, {(u8 )160, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61956, {(u8 )16, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61972, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62028, {(u8 )136, (u8 )149, (u8 )154, (u8 )144, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )62042, {(u8 )7, (u8 )232, (u8 )3, (u8 )176, (u8 )4, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )5},
        {(u32 )1, (u32 )62064, {(u8 )1, (u8 )2, (u8 )1, (u8 )2, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )62478, {(u8 )10, (u8 )64, (u8 )8, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )62815, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62817, {(u8 )21, (u8 )32, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )62943, {(u8 )251, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )62947, {(u8 )9, (u8 )1, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )62968, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62973, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62976, {(u8 )5, (u8 )8, (u8 )11, (u8 )14, (u8 )17, (u8 )20, (u8 )23,
                             (u8 )31, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )8},
        {(u32 )1, (u32 )62990, {(u8 )0, (u8 )4, (u8 )50, (u8 )16, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )63239, {(u8 )252, (u8 )0, (u8 )55, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )63371, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63503, {(u8 )64, (u8 )84, (u8 )90, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )63749, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64262, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64907, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static struct it913xset it9135_52[82] =
  { {(u32 )1, (u32 )67, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )70, {(u8 )82, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )81, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )95, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )104, {(u8 )16, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )112, {(u8 )10, (u8 )5, (u8 )2, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )117, {(u8 )140, (u8 )140, (u8 )140, (u8 )160, (u8 )1, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )126, {(u8 )4, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )129, {(u8 )10, (u8 )18, (u8 )3, (u8 )10, (u8 )3, (u8 )179, (u8 )151,
                           (u8 )192, (u8 )158, (u8 )1, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )10},
        {(u32 )1, (u32 )142, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )146, {(u8 )6, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )153, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )155, {(u8 )60, (u8 )40, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )159, {(u8 )225, (u8 )207, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )2},
        {(u32 )1, (u32 )163, {(u8 )1, (u8 )92, (u8 )1, (u8 )1, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )169, {(u8 )0, (u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )176, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )179, {(u8 )2, (u8 )60, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )182, {(u8 )20, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )192, {(u8 )17, (u8 )0, (u8 )5, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )196, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )198, {(u8 )25, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )204, {(u8 )46, (u8 )81, (u8 )51, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )243, {(u8 )5, (u8 )145, (u8 )140, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )248, {(u8 )3, (u8 )6, (u8 )6, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )252, {(u8 )3, (u8 )2, (u8 )2, (u8 )9, (u8 )80, (u8 )116, (u8 )119,
                           (u8 )2, (u8 )2, (u8 )174, (u8 )2, (u8 )110, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )12},
        {(u32 )1, (u32 )265, {(u8 )2, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )277, {(u8 )10, (u8 )3, (u8 )2, (u8 )128, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )282, {(u8 )205, (u8 )98, (u8 )164, (u8 )140, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )290, {(u8 )3, (u8 )24, (u8 )158, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )295, {(u8 )0, (u8 )7, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )298, {(u8 )83, (u8 )81, (u8 )78, (u8 )67, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )311, {(u8 )0, (u8 )0, (u8 )7, (u8 )0, (u8 )6, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )317, {(u8 )0, (u8 )1, (u8 )91, (u8 )182, (u8 )89, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )61440, {(u8 )15, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61462, {(u8 )16, (u8 )4, (u8 )5, (u8 )4, (u8 )5, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )5},
        {(u32 )1, (u32 )61471, {(u8 )140, (u8 )0, (u8 )3, (u8 )10, (u8 )10, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )5},
        {(u32 )1, (u32 )61481, {(u8 )140, (u8 )0, (u8 )0, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )61540, {(u8 )3, (u8 )249, (u8 )3, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )61551, {(u8 )224, (u8 )3, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61554, {(u8 )15, (u8 )3, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61559, {(u8 )1, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61573, {(u8 )192, (u8 )1, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )61595, {(u8 )63, (u8 )0, (u8 )32, (u8 )0, (u8 )12, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )6},
        {(u32 )1, (u32 )61744, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61746, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61764, {(u8 )26, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61766, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61770, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61772, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61775, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61784, {(u8 )127, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61786, {(u8 )0, (u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61789, {(u8 )3, (u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61795, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61798, {(u8 )1, (u8 )64, (u8 )15, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )61818, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61827, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61853, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61884, {(u8 )54, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61899, {(u8 )160, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61956, {(u8 )16, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61972, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62028, {(u8 )136, (u8 )149, (u8 )154, (u8 )144, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )62042, {(u8 )7, (u8 )232, (u8 )3, (u8 )176, (u8 )4, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )5},
        {(u32 )1, (u32 )62064, {(u8 )1, (u8 )2, (u8 )1, (u8 )2, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )62478, {(u8 )10, (u8 )64, (u8 )8, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )62815, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62817, {(u8 )21, (u8 )32, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )62943, {(u8 )251, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )62947, {(u8 )9, (u8 )1, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )62968, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62973, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62976, {(u8 )5, (u8 )8, (u8 )11, (u8 )14, (u8 )17, (u8 )20, (u8 )23,
                             (u8 )31, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )8},
        {(u32 )1, (u32 )62990, {(u8 )0, (u8 )4, (u8 )50, (u8 )16, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )63239, {(u8 )252, (u8 )0, (u8 )55, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )63371, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63503, {(u8 )64, (u8 )84, (u8 )90, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )63749, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64262, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64907, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static struct it913xset it9135_v2[96] =
  { {(u32 )1, (u32 )81, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )112, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )126, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )129, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )138, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )142, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )146, {(u8 )6, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )153, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )159, {(u8 )225, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )160, {(u8 )207, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )163, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )165, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )166, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )169, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )170, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )176, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )194, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )198, {(u8 )25, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )61440, {(u8 )15, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61483, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61540, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61541, {(u8 )249, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61542, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61543, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61551, {(u8 )224, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61552, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61554, {(u8 )15, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61555, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61560, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61575, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61595, {(u8 )63, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61596, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61597, {(u8 )32, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61598, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61599, {(u8 )12, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61600, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61744, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61746, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61764, {(u8 )26, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61766, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61770, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61772, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61773, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61775, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61784, {(u8 )127, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61786, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61787, {(u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61789, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61790, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61795, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61798, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61799, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61800, {(u8 )15, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61818, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61819, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61827, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61853, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61884, {(u8 )54, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61885, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61899, {(u8 )160, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61900, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61956, {(u8 )16, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61972, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62478, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62479, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62480, {(u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62815, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62817, {(u8 )21, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62818, {(u8 )32, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62947, {(u8 )9, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62948, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62949, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62976, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62977, {(u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62978, {(u8 )11, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62979, {(u8 )14, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62980, {(u8 )17, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62981, {(u8 )20, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62982, {(u8 )23, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62983, {(u8 )31, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62990, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62991, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62992, {(u8 )50, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62993, {(u8 )16, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63239, {(u8 )252, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63240, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63241, {(u8 )55, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63242, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63371, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63503, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63504, {(u8 )84, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63505, {(u8 )90, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63749, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64262, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64907, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static struct it913xset it9135_60[90] =
  { {(u32 )1, (u32 )67, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )70, {(u8 )96, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )81, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )95, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )104, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )106, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )112, {(u8 )10, (u8 )5, (u8 )2, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )117, {(u8 )140, (u8 )140, (u8 )140, (u8 )140, (u8 )1, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )126, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )129, {(u8 )10, (u8 )18, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )132, {(u8 )10, (u8 )51, (u8 )190, (u8 )160, (u8 )198, (u8 )182,
                           (u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )7},
        {(u32 )1, (u32 )142, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )146, {(u8 )6, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )153, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )155, {(u8 )60, (u8 )40, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )159, {(u8 )225, (u8 )207, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )2},
        {(u32 )1, (u32 )163, {(u8 )1, (u8 )90, (u8 )1, (u8 )1, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )169, {(u8 )0, (u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )176, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )179, {(u8 )2, (u8 )58, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )182, {(u8 )20, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )192, {(u8 )17, (u8 )0, (u8 )5, (u8 )1, (u8 )0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )198, {(u8 )25, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )203, {(u8 )50, (u8 )44, (u8 )79, (u8 )48, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )243, {(u8 )5, (u8 )160, (u8 )140, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )248, {(u8 )3, (u8 )6, (u8 )6, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )252, {(u8 )3, (u8 )3, (u8 )2, (u8 )10, (u8 )80, (u8 )123, (u8 )140,
                           (u8 )0, (u8 )2, (u8 )190, (u8 )0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )11},
        {(u32 )1, (u32 )265, {(u8 )2, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )277, {(u8 )10, (u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )282, {(u8 )190, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )292, {(u8 )174, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )295, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )298, {(u8 )86, (u8 )80, (u8 )71, (u8 )66, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )311, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )315, {(u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )319, {(u8 )91, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )321, {(u8 )89, (u8 )249, (u8 )25, (u8 )25, (u8 )140, (u8 )140,
                           (u8 )140, (u8 )110, (u8 )140, (u8 )80, (u8 )140, (u8 )140,
                           (u8 )172, (u8 )198, (u8 )51}, (u8 )15},
        {(u32 )1, (u32 )337, {(u8 )40, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )339, {(u8 )188, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )376, {(u8 )9, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )385, {(u8 )148, (u8 )110, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )2},
        {(u32 )1, (u32 )389, {(u8 )36, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )391, {(u8 )0, (u8 )0, (u8 )190, (u8 )2, (u8 )128, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )60674, {(u8 )255, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60994, {(u8 )255, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61058, {(u8 )255, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61440, {(u8 )15, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61471, {(u8 )140, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61481, {(u8 )140, (u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )61540, {(u8 )3, (u8 )249, (u8 )3, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )61551, {(u8 )224, (u8 )3, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61554, {(u8 )15, (u8 )3, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61559, {(u8 )1, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61575, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61595, {(u8 )63, (u8 )0, (u8 )32, (u8 )0, (u8 )12, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )6},
        {(u32 )1, (u32 )61744, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61746, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61764, {(u8 )26, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61766, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61770, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61772, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61775, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61784, {(u8 )127, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61786, {(u8 )0, (u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61789, {(u8 )3, (u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61795, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61798, {(u8 )1, (u8 )64, (u8 )15, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )61818, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61827, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61853, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61884, {(u8 )54, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61899, {(u8 )160, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61956, {(u8 )16, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61972, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62028, {(u8 )136, (u8 )149, (u8 )154, (u8 )144, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )62042, {(u8 )7, (u8 )232, (u8 )3, (u8 )176, (u8 )4, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )5},
        {(u32 )1, (u32 )62064, {(u8 )1, (u8 )2, (u8 )1, (u8 )2, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )62478, {(u8 )10, (u8 )64, (u8 )8, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )62815, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62817, {(u8 )21, (u8 )32, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )62947, {(u8 )9, (u8 )1, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )62976, {(u8 )5, (u8 )8, (u8 )11, (u8 )14, (u8 )17, (u8 )20, (u8 )23,
                             (u8 )31, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )8},
        {(u32 )1, (u32 )62990, {(u8 )0, (u8 )4, (u8 )50, (u8 )16, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )63239, {(u8 )252, (u8 )0, (u8 )55, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )63371, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63503, {(u8 )64, (u8 )84, (u8 )90, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )63749, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64262, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64907, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static struct it913xset it9135_61[90] =
  { {(u32 )1, (u32 )67, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )70, {(u8 )97, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )81, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )95, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )104, {(u8 )6, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )106, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )112, {(u8 )10, (u8 )5, (u8 )2, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )117, {(u8 )140, (u8 )140, (u8 )140, (u8 )144, (u8 )1, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )126, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )129, {(u8 )10, (u8 )18, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )132, {(u8 )10, (u8 )51, (u8 )188, (u8 )156, (u8 )204, (u8 )168,
                           (u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )7},
        {(u32 )1, (u32 )142, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )146, {(u8 )6, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )153, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )155, {(u8 )60, (u8 )40, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )159, {(u8 )225, (u8 )207, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )2},
        {(u32 )1, (u32 )163, {(u8 )1, (u8 )92, (u8 )1, (u8 )1, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )169, {(u8 )0, (u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )176, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )179, {(u8 )2, (u8 )58, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )182, {(u8 )20, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )192, {(u8 )17, (u8 )0, (u8 )5, (u8 )1, (u8 )0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )198, {(u8 )25, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )203, {(u8 )50, (u8 )44, (u8 )79, (u8 )48, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )243, {(u8 )5, (u8 )160, (u8 )140, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )248, {(u8 )3, (u8 )6, (u8 )6, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )252, {(u8 )3, (u8 )3, (u8 )2, (u8 )8, (u8 )80, (u8 )123, (u8 )140,
                           (u8 )1, (u8 )2, (u8 )200, (u8 )0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )11},
        {(u32 )1, (u32 )265, {(u8 )2, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )277, {(u8 )10, (u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )282, {(u8 )198, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )292, {(u8 )168, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )295, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )298, {(u8 )89, (u8 )80, (u8 )71, (u8 )66, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )311, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )315, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )319, {(u8 )91, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )321, {(u8 )89, (u8 )249, (u8 )89, (u8 )89, (u8 )140, (u8 )140,
                           (u8 )140, (u8 )123, (u8 )140, (u8 )80, (u8 )140, (u8 )140,
                           (u8 )168, (u8 )198, (u8 )51}, (u8 )15},
        {(u32 )1, (u32 )337, {(u8 )40, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )339, {(u8 )204, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )376, {(u8 )9, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )385, {(u8 )156, (u8 )118, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )2},
        {(u32 )1, (u32 )389, {(u8 )40, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )391, {(u8 )1, (u8 )0, (u8 )170, (u8 )2, (u8 )128, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )60674, {(u8 )255, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60994, {(u8 )255, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61058, {(u8 )255, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61440, {(u8 )15, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61471, {(u8 )140, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61481, {(u8 )140, (u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )61540, {(u8 )3, (u8 )249, (u8 )3, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )61551, {(u8 )224, (u8 )3, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61554, {(u8 )15, (u8 )3, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61559, {(u8 )1, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61575, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61595, {(u8 )63, (u8 )0, (u8 )32, (u8 )0, (u8 )12, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )6},
        {(u32 )1, (u32 )61744, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61746, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61764, {(u8 )26, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61766, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61770, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61772, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61775, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61784, {(u8 )127, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61786, {(u8 )0, (u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61789, {(u8 )3, (u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61795, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61798, {(u8 )1, (u8 )64, (u8 )15, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )61818, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61827, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61853, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61884, {(u8 )54, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61899, {(u8 )160, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61956, {(u8 )16, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61972, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62028, {(u8 )136, (u8 )149, (u8 )154, (u8 )144, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )62042, {(u8 )7, (u8 )232, (u8 )3, (u8 )176, (u8 )4, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )5},
        {(u32 )1, (u32 )62064, {(u8 )1, (u8 )2, (u8 )1, (u8 )2, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )62478, {(u8 )10, (u8 )64, (u8 )8, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )62815, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62817, {(u8 )21, (u8 )32, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )62947, {(u8 )9, (u8 )1, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )62976, {(u8 )5, (u8 )8, (u8 )11, (u8 )14, (u8 )17, (u8 )20, (u8 )23,
                             (u8 )31, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )8},
        {(u32 )1, (u32 )62990, {(u8 )0, (u8 )4, (u8 )50, (u8 )16, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )63239, {(u8 )252, (u8 )0, (u8 )55, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )63371, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63503, {(u8 )64, (u8 )84, (u8 )90, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )63749, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64262, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64907, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static struct it913xset it9135_62[90] =
  { {(u32 )1, (u32 )67, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )70, {(u8 )98, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )81, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1,
      (u32 )95, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                 (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )104, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )106, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )112, {(u8 )10, (u8 )5, (u8 )2, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )117, {(u8 )140, (u8 )140, (u8 )140, (u8 )140, (u8 )1, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )126, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )129, {(u8 )10, (u8 )18, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )132, {(u8 )10, (u8 )51, (u8 )184, (u8 )156, (u8 )178, (u8 )166,
                           (u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )7},
        {(u32 )1, (u32 )142, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )146, {(u8 )6, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )153, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )155, {(u8 )60, (u8 )40, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )159, {(u8 )225, (u8 )207, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )2},
        {(u32 )1, (u32 )163, {(u8 )1, (u8 )90, (u8 )1, (u8 )1, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )169, {(u8 )0, (u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )176, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )179, {(u8 )2, (u8 )58, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )182, {(u8 )20, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )192, {(u8 )17, (u8 )0, (u8 )5, (u8 )1, (u8 )0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )198, {(u8 )25, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )203, {(u8 )50, (u8 )44, (u8 )79, (u8 )48, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )243, {(u8 )5, (u8 )140, (u8 )140, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )248, {(u8 )3, (u8 )6, (u8 )6, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )252, {(u8 )2, (u8 )3, (u8 )2, (u8 )9, (u8 )80, (u8 )110, (u8 )140,
                           (u8 )2, (u8 )2, (u8 )194, (u8 )0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )11},
        {(u32 )1, (u32 )265, {(u8 )2, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )277, {(u8 )10, (u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )282, {(u8 )184, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )292, {(u8 )168, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )295, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )298, {(u8 )83, (u8 )81, (u8 )78, (u8 )67, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )311, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )315, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )319, {(u8 )91, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )321, {(u8 )89, (u8 )249, (u8 )89, (u8 )25, (u8 )140, (u8 )140,
                           (u8 )140, (u8 )123, (u8 )140, (u8 )80, (u8 )112, (u8 )140,
                           (u8 )150, (u8 )208, (u8 )51}, (u8 )15},
        {(u32 )1, (u32 )337, {(u8 )40, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )339, {(u8 )178, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )376, {(u8 )9, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )385, {(u8 )156, (u8 )110, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )2},
        {(u32 )1, (u32 )389, {(u8 )36, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )391, {(u8 )0, (u8 )0, (u8 )184, (u8 )2, (u8 )128, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0}, (u8 )5},
        {(u32 )1, (u32 )60674, {(u8 )255, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60994, {(u8 )255, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61058, {(u8 )255, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61440, {(u8 )15, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61471, {(u8 )140, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61481, {(u8 )140, (u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )61540, {(u8 )3, (u8 )249, (u8 )3, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )61551, {(u8 )224, (u8 )3, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61554, {(u8 )15, (u8 )3, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61559, {(u8 )1, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61575, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61595, {(u8 )63, (u8 )0, (u8 )32, (u8 )0, (u8 )12, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )6},
        {(u32 )1, (u32 )61744, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61746, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61764, {(u8 )26, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61766, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61770, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61772, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61775, {(u8 )4, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61784, {(u8 )127, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61786, {(u8 )0, (u8 )8, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61789, {(u8 )3, (u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61795, {(u8 )5, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61798, {(u8 )1, (u8 )64, (u8 )15, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )61818, {(u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61827, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61853, {(u8 )64, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61884, {(u8 )54, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61899, {(u8 )160, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )61956, {(u8 )16, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )61972, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62028, {(u8 )136, (u8 )149, (u8 )154, (u8 )144, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )62042, {(u8 )7, (u8 )232, (u8 )3, (u8 )176, (u8 )4, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )5},
        {(u32 )1, (u32 )62064, {(u8 )1, (u8 )2, (u8 )1, (u8 )2, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )62478, {(u8 )10, (u8 )64, (u8 )8, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )62815, {(u8 )10, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )62817, {(u8 )21, (u8 )32, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )2},
        {(u32 )1, (u32 )62947, {(u8 )9, (u8 )1, (u8 )1, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )62976, {(u8 )5, (u8 )8, (u8 )11, (u8 )14, (u8 )17, (u8 )20, (u8 )23,
                             (u8 )31, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )8},
        {(u32 )1, (u32 )62990, {(u8 )0, (u8 )4, (u8 )50, (u8 )16, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )63239, {(u8 )252, (u8 )0, (u8 )55, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )63371, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )63503, {(u8 )64, (u8 )84, (u8 )90, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )3},
        {(u32 )1, (u32 )63749, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64262, {(u8 )3, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )64907, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static struct it913xset it9137_tuner_off[10] =
  { {(u32 )1, (u32 )64424, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60480, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60418, {(u8 )63, (u8 )31, (u8 )63, (u8 )63, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, (u8 )4},
        {(u32 )1, (u32 )60422, {(u8 )0, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (u8 )0,
                             (u8 )0, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )12},
        {(u32 )1, (u32 )60434, {(u8 )0, (u8 )0, (u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )4},
        {(u32 )1, (u32 )60439, {(u8 )0, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (u8 )0,
                             (u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )9},
        {(u32 )1, (u32 )60450, {(u8 )0, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (u8 )0, (u8 )0,
                             (u8 )0, (u8 )0, (u8 )0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )10},
        {(u32 )1, (u32 )60448, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60479, {(u8 )1, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static struct it913xset set_it9135_template[8] =
  { {(u32 )1, (u32 )60934, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60502, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60492, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60493, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60494, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )286, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )1, (u32 )287, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )1},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static struct it913xset set_it9137_template[8] =
  { {(u32 )1, (u32 )60934, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60502, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60492, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60493, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60494, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60495, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )1, (u32 )60496, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0, (unsigned char)0}, (u8 )1},
        {(u32 )255, (u32 )0, {(u8 )0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                           (unsigned char)0, (unsigned char)0, (unsigned char)0},
      (u8 )0}};
static int it913x_debug ;
static char const __param_str_debug[6] = { (char const )'d', (char const )'e', (char const )'b', (char const )'u',
        (char const )'g', (char const )'\000'};
static struct kernel_param const __param_debug __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_debug, (struct kernel_param_ops const *)(& param_ops_int), (u16 )420,
    (s16 )0, {(void *)(& it913x_debug)}};
static char const __mod_debugtype37[19] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'t', (char const )'y', (char const )'p', (char const )'e',
        (char const )'=', (char const )'d', (char const )'e', (char const )'b',
        (char const )'u', (char const )'g', (char const )':', (char const )'i',
        (char const )'n', (char const )'t', (char const )'\000'};
static char const __mod_debug38[51] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'=', (char const )'d', (char const )'e', (char const )'b',
        (char const )'u', (char const )'g', (char const )':', (char const )'s',
        (char const )'e', (char const )'t', (char const )' ', (char const )'d',
        (char const )'e', (char const )'b', (char const )'u', (char const )'g',
        (char const )'g', (char const )'i', (char const )'n', (char const )'g',
        (char const )' ', (char const )'l', (char const )'e', (char const )'v',
        (char const )'e', (char const )'l', (char const )' ', (char const )'(',
        (char const )'1', (char const )'=', (char const )'i', (char const )'n',
        (char const )'f', (char const )'o', (char const )' ', (char const )'(',
        (char const )'o', (char const )'r', (char const )'-', (char const )'a',
        (char const )'b', (char const )'l', (char const )'e', (char const )')',
        (char const )')', (char const )'.', (char const )'\000'};
static int it913x_read_reg(struct it913x_fe_state *state , u32 reg , u8 *data , u8 count )
{ int ret ;
  u8 pro ;
  u8 b[4] ;
  struct i2c_msg msg[2] ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  u8 __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
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
  int __cil_tmp31 ;
  int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  u8 __cil_tmp35 ;
  int __cil_tmp36 ;
  int __cil_tmp37 ;
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
  u8 __cil_tmp49 ;
  int __cil_tmp50 ;
  int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  u32 __cil_tmp54 ;
  u8 __cil_tmp55 ;
  int __cil_tmp56 ;
  int __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  u32 __cil_tmp60 ;
  u8 __cil_tmp61 ;
  int __cil_tmp62 ;
  int __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  u8 __cil_tmp66 ;
  int __cil_tmp67 ;
  int __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  struct i2c_adapter *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  struct i2c_msg *__cil_tmp74 ;
  {
  {
  pro = (u8 )1;
  __cil_tmp9 = 0 * 16UL;
  __cil_tmp10 = (unsigned long )(msg) + __cil_tmp9;
  __cil_tmp11 = (int )pro;
  __cil_tmp12 = __cil_tmp11 << 1;
  __cil_tmp13 = (unsigned long )state;
  __cil_tmp14 = __cil_tmp13 + 976;
  __cil_tmp15 = *((u8 *)__cil_tmp14);
  __cil_tmp16 = (int )__cil_tmp15;
  __cil_tmp17 = __cil_tmp16 + __cil_tmp12;
  *((__u16 *)__cil_tmp10) = (__u16 )__cil_tmp17;
  __cil_tmp18 = 0 * 16UL;
  __cil_tmp19 = __cil_tmp18 + 2;
  __cil_tmp20 = (unsigned long )(msg) + __cil_tmp19;
  *((__u16 *)__cil_tmp20) = (__u16 )0;
  __cil_tmp21 = 0 * 16UL;
  __cil_tmp22 = __cil_tmp21 + 4;
  __cil_tmp23 = (unsigned long )(msg) + __cil_tmp22;
  *((__u16 *)__cil_tmp23) = (__u16 )4UL;
  __cil_tmp24 = 0 * 16UL;
  __cil_tmp25 = __cil_tmp24 + 8;
  __cil_tmp26 = (unsigned long )(msg) + __cil_tmp25;
  __cil_tmp27 = 0 * 1UL;
  __cil_tmp28 = (unsigned long )(b) + __cil_tmp27;
  *((__u8 **)__cil_tmp26) = (u8 *)__cil_tmp28;
  __cil_tmp29 = 1 * 16UL;
  __cil_tmp30 = (unsigned long )(msg) + __cil_tmp29;
  __cil_tmp31 = (int )pro;
  __cil_tmp32 = __cil_tmp31 << 1;
  __cil_tmp33 = (unsigned long )state;
  __cil_tmp34 = __cil_tmp33 + 976;
  __cil_tmp35 = *((u8 *)__cil_tmp34);
  __cil_tmp36 = (int )__cil_tmp35;
  __cil_tmp37 = __cil_tmp36 + __cil_tmp32;
  *((__u16 *)__cil_tmp30) = (__u16 )__cil_tmp37;
  __cil_tmp38 = 1 * 16UL;
  __cil_tmp39 = __cil_tmp38 + 2;
  __cil_tmp40 = (unsigned long )(msg) + __cil_tmp39;
  *((__u16 *)__cil_tmp40) = (__u16 )1;
  __cil_tmp41 = 1 * 16UL;
  __cil_tmp42 = __cil_tmp41 + 4;
  __cil_tmp43 = (unsigned long )(msg) + __cil_tmp42;
  *((__u16 *)__cil_tmp43) = (__u16 )count;
  __cil_tmp44 = 1 * 16UL;
  __cil_tmp45 = __cil_tmp44 + 8;
  __cil_tmp46 = (unsigned long )(msg) + __cil_tmp45;
  *((__u8 **)__cil_tmp46) = data;
  __cil_tmp47 = 0 * 1UL;
  __cil_tmp48 = (unsigned long )(b) + __cil_tmp47;
  __cil_tmp49 = (u8 )reg;
  __cil_tmp50 = (int )__cil_tmp49;
  __cil_tmp51 = __cil_tmp50 >> 24;
  *((u8 *)__cil_tmp48) = (u8 )__cil_tmp51;
  __cil_tmp52 = 1 * 1UL;
  __cil_tmp53 = (unsigned long )(b) + __cil_tmp52;
  __cil_tmp54 = reg >> 16;
  __cil_tmp55 = (u8 )__cil_tmp54;
  __cil_tmp56 = (int )__cil_tmp55;
  __cil_tmp57 = __cil_tmp56 & 255;
  *((u8 *)__cil_tmp53) = (u8 )__cil_tmp57;
  __cil_tmp58 = 2 * 1UL;
  __cil_tmp59 = (unsigned long )(b) + __cil_tmp58;
  __cil_tmp60 = reg >> 8;
  __cil_tmp61 = (u8 )__cil_tmp60;
  __cil_tmp62 = (int )__cil_tmp61;
  __cil_tmp63 = __cil_tmp62 & 255;
  *((u8 *)__cil_tmp59) = (u8 )__cil_tmp63;
  __cil_tmp64 = 3 * 1UL;
  __cil_tmp65 = (unsigned long )(b) + __cil_tmp64;
  __cil_tmp66 = (u8 )reg;
  __cil_tmp67 = (int )__cil_tmp66;
  __cil_tmp68 = __cil_tmp67 & 255;
  *((u8 *)__cil_tmp65) = (u8 )__cil_tmp68;
  __cil_tmp69 = (unsigned long )state;
  __cil_tmp70 = __cil_tmp69 + 960;
  __cil_tmp71 = *((struct i2c_adapter **)__cil_tmp70);
  __cil_tmp72 = 0 * 16UL;
  __cil_tmp73 = (unsigned long )(msg) + __cil_tmp72;
  __cil_tmp74 = (struct i2c_msg *)__cil_tmp73;
  ret = i2c_transfer(__cil_tmp71, __cil_tmp74, 2);
  }
  return (ret);
}
}
static int it913x_read_reg_u8(struct it913x_fe_state *state , u32 reg )
{ int ret ;
  u8 b[1] ;
  int tmp___7 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  u8 *__cil_tmp8 ;
  u8 __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  u8 __cil_tmp12 ;
  {
  {
  __cil_tmp6 = 0 * 1UL;
  __cil_tmp7 = (unsigned long )(b) + __cil_tmp6;
  __cil_tmp8 = (u8 *)__cil_tmp7;
  __cil_tmp9 = (u8 )1UL;
  ret = it913x_read_reg(state, reg, __cil_tmp8, __cil_tmp9);
  }
  if (ret < 0) {
    tmp___7 = -19;
  } else {
    __cil_tmp10 = 0 * 1UL;
    __cil_tmp11 = (unsigned long )(b) + __cil_tmp10;
    __cil_tmp12 = *((u8 *)__cil_tmp11);
    tmp___7 = (int )__cil_tmp12;
  }
  return (tmp___7);
}
}
static int it913x_write(struct it913x_fe_state *state , u8 pro , u32 reg , u8 *buf ,
                        u8 count )
{ u8 b[256] ;
  struct i2c_msg msg[1] ;
  int ret ;
  size_t __len ;
  void *__ret ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  u8 __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  u8 __cil_tmp35 ;
  int __cil_tmp36 ;
  int __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  u32 __cil_tmp40 ;
  u8 __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  u32 __cil_tmp46 ;
  u8 __cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  u8 __cil_tmp52 ;
  int __cil_tmp53 ;
  int __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  u8 *__cil_tmp57 ;
  void *__cil_tmp58 ;
  void const *__cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  struct i2c_adapter *__cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  struct i2c_msg *__cil_tmp65 ;
  {
  {
  __cil_tmp11 = 0 * 16UL;
  __cil_tmp12 = (unsigned long )(msg) + __cil_tmp11;
  __cil_tmp13 = (int )pro;
  __cil_tmp14 = __cil_tmp13 << 1;
  __cil_tmp15 = (unsigned long )state;
  __cil_tmp16 = __cil_tmp15 + 976;
  __cil_tmp17 = *((u8 *)__cil_tmp16);
  __cil_tmp18 = (int )__cil_tmp17;
  __cil_tmp19 = __cil_tmp18 + __cil_tmp14;
  *((__u16 *)__cil_tmp12) = (__u16 )__cil_tmp19;
  __cil_tmp20 = 0 * 16UL;
  __cil_tmp21 = __cil_tmp20 + 2;
  __cil_tmp22 = (unsigned long )(msg) + __cil_tmp21;
  *((__u16 *)__cil_tmp22) = (__u16 )0;
  __cil_tmp23 = 0 * 16UL;
  __cil_tmp24 = __cil_tmp23 + 4;
  __cil_tmp25 = (unsigned long )(msg) + __cil_tmp24;
  __cil_tmp26 = (int )count;
  __cil_tmp27 = __cil_tmp26 + 4;
  *((__u16 *)__cil_tmp25) = (__u16 )__cil_tmp27;
  __cil_tmp28 = 0 * 16UL;
  __cil_tmp29 = __cil_tmp28 + 8;
  __cil_tmp30 = (unsigned long )(msg) + __cil_tmp29;
  __cil_tmp31 = 0 * 1UL;
  __cil_tmp32 = (unsigned long )(b) + __cil_tmp31;
  *((__u8 **)__cil_tmp30) = (u8 *)__cil_tmp32;
  __cil_tmp33 = 0 * 1UL;
  __cil_tmp34 = (unsigned long )(b) + __cil_tmp33;
  __cil_tmp35 = (u8 )reg;
  __cil_tmp36 = (int )__cil_tmp35;
  __cil_tmp37 = __cil_tmp36 >> 24;
  *((u8 *)__cil_tmp34) = (u8 )__cil_tmp37;
  __cil_tmp38 = 1 * 1UL;
  __cil_tmp39 = (unsigned long )(b) + __cil_tmp38;
  __cil_tmp40 = reg >> 16;
  __cil_tmp41 = (u8 )__cil_tmp40;
  __cil_tmp42 = (int )__cil_tmp41;
  __cil_tmp43 = __cil_tmp42 & 255;
  *((u8 *)__cil_tmp39) = (u8 )__cil_tmp43;
  __cil_tmp44 = 2 * 1UL;
  __cil_tmp45 = (unsigned long )(b) + __cil_tmp44;
  __cil_tmp46 = reg >> 8;
  __cil_tmp47 = (u8 )__cil_tmp46;
  __cil_tmp48 = (int )__cil_tmp47;
  __cil_tmp49 = __cil_tmp48 & 255;
  *((u8 *)__cil_tmp45) = (u8 )__cil_tmp49;
  __cil_tmp50 = 3 * 1UL;
  __cil_tmp51 = (unsigned long )(b) + __cil_tmp50;
  __cil_tmp52 = (u8 )reg;
  __cil_tmp53 = (int )__cil_tmp52;
  __cil_tmp54 = __cil_tmp53 & 255;
  *((u8 *)__cil_tmp51) = (u8 )__cil_tmp54;
  __len = (size_t )count;
  __cil_tmp55 = 4 * 1UL;
  __cil_tmp56 = (unsigned long )(b) + __cil_tmp55;
  __cil_tmp57 = (u8 *)__cil_tmp56;
  __cil_tmp58 = (void *)__cil_tmp57;
  __cil_tmp59 = (void const *)buf;
  __ret = memcpy(__cil_tmp58, __cil_tmp59, __len);
  __cil_tmp60 = (unsigned long )state;
  __cil_tmp61 = __cil_tmp60 + 960;
  __cil_tmp62 = *((struct i2c_adapter **)__cil_tmp61);
  __cil_tmp63 = 0 * 16UL;
  __cil_tmp64 = (unsigned long )(msg) + __cil_tmp63;
  __cil_tmp65 = (struct i2c_msg *)__cil_tmp64;
  ret = i2c_transfer(__cil_tmp62, __cil_tmp65, 1);
  }
  if (ret < 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int it913x_write_reg(struct it913x_fe_state *state , u8 pro , u32 reg , u32 data )
{ int ret ;
  u8 b[4] ;
  u8 s ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  u32 __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  u32 __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  u32 __cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  u8 *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  u8 __cil_tmp27 ;
  {
  __cil_tmp8 = 0 * 1UL;
  __cil_tmp9 = (unsigned long )(b) + __cil_tmp8;
  __cil_tmp10 = data >> 24;
  *((u8 *)__cil_tmp9) = (u8 )__cil_tmp10;
  __cil_tmp11 = 1 * 1UL;
  __cil_tmp12 = (unsigned long )(b) + __cil_tmp11;
  __cil_tmp13 = data >> 16;
  __cil_tmp14 = __cil_tmp13 & 255U;
  *((u8 *)__cil_tmp12) = (u8 )__cil_tmp14;
  __cil_tmp15 = 2 * 1UL;
  __cil_tmp16 = (unsigned long )(b) + __cil_tmp15;
  __cil_tmp17 = data >> 8;
  __cil_tmp18 = __cil_tmp17 & 255U;
  *((u8 *)__cil_tmp16) = (u8 )__cil_tmp18;
  __cil_tmp19 = 3 * 1UL;
  __cil_tmp20 = (unsigned long )(b) + __cil_tmp19;
  __cil_tmp21 = data & 255U;
  *((u8 *)__cil_tmp20) = (u8 )__cil_tmp21;
  if (data < 256U) {
    s = (u8 )3;
  } else
  if (data < 4096U) {
    s = (u8 )2;
  } else
  if (data < 1048576U) {
    s = (u8 )1;
  } else {
    s = (u8 )0;
  }
  {
  __cil_tmp22 = s * 1UL;
  __cil_tmp23 = (unsigned long )(b) + __cil_tmp22;
  __cil_tmp24 = (u8 *)__cil_tmp23;
  __cil_tmp25 = (unsigned long )s;
  __cil_tmp26 = 4UL - __cil_tmp25;
  __cil_tmp27 = (u8 )__cil_tmp26;
  ret = it913x_write(state, pro, reg, __cil_tmp24, __cil_tmp27);
  }
  return (ret);
}
}
static int it913x_fe_script_loader(struct it913x_fe_state *state , struct it913xset *loadscript )
{ int ret ;
  int i ;
  void *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct it913xset *__cil_tmp8 ;
  u32 __cil_tmp9 ;
  struct it913xset *__cil_tmp10 ;
  u32 __cil_tmp11 ;
  u8 __cil_tmp12 ;
  struct it913xset *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  u32 __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct it913xset *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  u8 *__cil_tmp22 ;
  struct it913xset *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  u8 __cil_tmp26 ;
  {
  {
  __cil_tmp5 = (void *)0;
  __cil_tmp6 = (unsigned long )__cil_tmp5;
  __cil_tmp7 = (unsigned long )loadscript;
  if (__cil_tmp7 == __cil_tmp6) {
    return (-22);
  } else {
  }
  }
  i = 0;
  {
  while (1) {
    while_continue: ;
    if (i < 1000) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp8 = loadscript + i;
    __cil_tmp9 = *((u32 *)__cil_tmp8);
    if (__cil_tmp9 == 255U) {
      goto while_break;
    } else {
    }
    }
    {
    __cil_tmp10 = loadscript + i;
    __cil_tmp11 = *((u32 *)__cil_tmp10);
    __cil_tmp12 = (u8 )__cil_tmp11;
    __cil_tmp13 = loadscript + i;
    __cil_tmp14 = (unsigned long )__cil_tmp13;
    __cil_tmp15 = __cil_tmp14 + 4;
    __cil_tmp16 = *((u32 *)__cil_tmp15);
    __cil_tmp17 = 0 * 1UL;
    __cil_tmp18 = 8 + __cil_tmp17;
    __cil_tmp19 = loadscript + i;
    __cil_tmp20 = (unsigned long )__cil_tmp19;
    __cil_tmp21 = __cil_tmp20 + __cil_tmp18;
    __cil_tmp22 = (u8 *)__cil_tmp21;
    __cil_tmp23 = loadscript + i;
    __cil_tmp24 = (unsigned long )__cil_tmp23;
    __cil_tmp25 = __cil_tmp24 + 23;
    __cil_tmp26 = *((u8 *)__cil_tmp25);
    ret = it913x_write(state, __cil_tmp12, __cil_tmp16, __cil_tmp22, __cil_tmp26);
    }
    if (ret < 0) {
      return (-19);
    } else {
    }
    i = i + 1;
  }
  while_break: ;
  }
  return (0);
}
}
static int it913x_init_tuner(struct it913x_fe_state *state )
{ int ret ;
  int i ;
  int reg ;
  u8 val ;
  u8 nv_val ;
  u8 nv[9] ;
  u8 b[2] ;
  int tmp___7 ;
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
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  u32 __cil_tmp28 ;
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
  u32 __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  u32 __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  u8 *__cil_tmp48 ;
  u8 __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  u8 __cil_tmp52 ;
  int __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  u8 __cil_tmp56 ;
  int __cil_tmp57 ;
  int __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  u16 __cil_tmp63 ;
  int __cil_tmp64 ;
  int __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  int __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  u8 __cil_tmp71 ;
  int __cil_tmp72 ;
  int __cil_tmp73 ;
  u32 __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  u32 __cil_tmp77 ;
  int *__cil_tmp78 ;
  int __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  u32 __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  struct ite_config *__cil_tmp85 ;
  u8 __cil_tmp86 ;
  int __cil_tmp87 ;
  u32 __cil_tmp88 ;
  u8 __cil_tmp89 ;
  u32 __cil_tmp90 ;
  u32 __cil_tmp91 ;
  {
  {
  __cil_tmp10 = 0 * 1UL;
  __cil_tmp11 = (unsigned long )(nv) + __cil_tmp10;
  *((u8 *)__cil_tmp11) = (u8 )48;
  __cil_tmp12 = 1 * 1UL;
  __cil_tmp13 = (unsigned long )(nv) + __cil_tmp12;
  *((u8 *)__cil_tmp13) = (u8 )32;
  __cil_tmp14 = 2 * 1UL;
  __cil_tmp15 = (unsigned long )(nv) + __cil_tmp14;
  *((u8 *)__cil_tmp15) = (u8 )24;
  __cil_tmp16 = 3 * 1UL;
  __cil_tmp17 = (unsigned long )(nv) + __cil_tmp16;
  *((u8 *)__cil_tmp17) = (u8 )16;
  __cil_tmp18 = 4 * 1UL;
  __cil_tmp19 = (unsigned long )(nv) + __cil_tmp18;
  *((u8 *)__cil_tmp19) = (u8 )12;
  __cil_tmp20 = 5 * 1UL;
  __cil_tmp21 = (unsigned long )(nv) + __cil_tmp20;
  *((u8 *)__cil_tmp21) = (u8 )8;
  __cil_tmp22 = 6 * 1UL;
  __cil_tmp23 = (unsigned long )(nv) + __cil_tmp22;
  *((u8 *)__cil_tmp23) = (u8 )6;
  __cil_tmp24 = 7 * 1UL;
  __cil_tmp25 = (unsigned long )(nv) + __cil_tmp24;
  *((u8 *)__cil_tmp25) = (u8 )4;
  __cil_tmp26 = 8 * 1UL;
  __cil_tmp27 = (unsigned long )(nv) + __cil_tmp26;
  *((u8 *)__cil_tmp27) = (u8 )2;
  __cil_tmp28 = (u32 )60550;
  reg = it913x_read_reg_u8(state, __cil_tmp28);
  }
  if (reg == 0) {
    goto case_0;
  } else
  if (reg == -19) {
    goto case_neg_19;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      __cil_tmp29 = (unsigned long )state;
      __cil_tmp30 = __cil_tmp29 + 1023;
      *((u8 *)__cil_tmp30) = (u8 )reg;
      __cil_tmp31 = (unsigned long )state;
      __cil_tmp32 = __cil_tmp31 + 1020;
      *((u16 *)__cil_tmp32) = (u16 )2000;
      __cil_tmp33 = (unsigned long )state;
      __cil_tmp34 = __cil_tmp33 + 1022;
      *((u8 *)__cil_tmp34) = (u8 )3;
      val = (u8 )16;
      goto switch_break;
      case_neg_19:
      return (-19);
      switch_default:
      __cil_tmp35 = (unsigned long )state;
      __cil_tmp36 = __cil_tmp35 + 1023;
      *((u8 *)__cil_tmp36) = (u8 )reg;
      __cil_tmp37 = (unsigned long )state;
      __cil_tmp38 = __cil_tmp37 + 1020;
      *((u16 *)__cil_tmp38) = (u16 )640;
      __cil_tmp39 = (unsigned long )state;
      __cil_tmp40 = __cil_tmp39 + 1022;
      *((u8 *)__cil_tmp40) = (u8 )1;
      val = (u8 )6;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  {
  __cil_tmp41 = (u32 )60675;
  reg = it913x_read_reg_u8(state, __cil_tmp41);
  }
  if (reg < 0) {
    return (-19);
  } else {
    {
    __cil_tmp42 = (unsigned long )reg;
    if (__cil_tmp42 < 9UL) {
      __cil_tmp43 = reg * 1UL;
      __cil_tmp44 = (unsigned long )(nv) + __cil_tmp43;
      nv_val = *((u8 *)__cil_tmp44);
    } else {
      nv_val = (u8 )2;
    }
    }
  }
  i = 0;
  {
  while (1) {
    while_continue: ;
    if (i < 50) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp45 = (u32 )60707;
    __cil_tmp46 = 0 * 1UL;
    __cil_tmp47 = (unsigned long )(b) + __cil_tmp46;
    __cil_tmp48 = (u8 *)__cil_tmp47;
    __cil_tmp49 = (u8 )2UL;
    ret = it913x_read_reg(state, __cil_tmp45, __cil_tmp48, __cil_tmp49);
    __cil_tmp50 = 0 * 1UL;
    __cil_tmp51 = (unsigned long )(b) + __cil_tmp50;
    __cil_tmp52 = *((u8 *)__cil_tmp51);
    __cil_tmp53 = (int )__cil_tmp52;
    __cil_tmp54 = 1 * 1UL;
    __cil_tmp55 = (unsigned long )(b) + __cil_tmp54;
    __cil_tmp56 = *((u8 *)__cil_tmp55);
    __cil_tmp57 = (int )__cil_tmp56;
    __cil_tmp58 = __cil_tmp57 << 8;
    reg = __cil_tmp58 + __cil_tmp53;
    }
    if (reg > 0) {
      goto while_break;
    } else {
    }
    if (ret < 0) {
      return (-19);
    } else {
    }
    {
    __const_udelay(8590000UL);
    i = i + 1;
    }
  }
  while_break: ;
  }
  __cil_tmp59 = (unsigned long )state;
  __cil_tmp60 = __cil_tmp59 + 1024;
  __cil_tmp61 = (unsigned long )state;
  __cil_tmp62 = __cil_tmp61 + 1020;
  __cil_tmp63 = *((u16 *)__cil_tmp62);
  __cil_tmp64 = (int )__cil_tmp63;
  __cil_tmp65 = __cil_tmp64 * reg;
  *((u32 *)__cil_tmp60) = (u32 )__cil_tmp65;
  __cil_tmp66 = (unsigned long )state;
  __cil_tmp67 = __cil_tmp66 + 1024;
  __cil_tmp68 = (int )nv_val;
  __cil_tmp69 = (unsigned long )state;
  __cil_tmp70 = __cil_tmp69 + 1022;
  __cil_tmp71 = *((u8 *)__cil_tmp70);
  __cil_tmp72 = (int )__cil_tmp71;
  __cil_tmp73 = __cil_tmp72 * __cil_tmp68;
  __cil_tmp74 = (u32 )__cil_tmp73;
  __cil_tmp75 = (unsigned long )state;
  __cil_tmp76 = __cil_tmp75 + 1024;
  __cil_tmp77 = *((u32 *)__cil_tmp76);
  *((u32 *)__cil_tmp67) = __cil_tmp77 / __cil_tmp74;
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp78 = & it913x_debug;
    __cil_tmp79 = *__cil_tmp78;
    if (1 & __cil_tmp79) {
      {
      __cil_tmp80 = (unsigned long )state;
      __cil_tmp81 = __cil_tmp80 + 1024;
      __cil_tmp82 = *((u32 *)__cil_tmp81);
      printk("<7>it913x-fe: Tuner fn_min %d", __cil_tmp82);
      }
    } else {
    }
    }
    goto while_break___0;
  }
  while_break___0: ;
  }
  {
  __cil_tmp83 = (unsigned long )state;
  __cil_tmp84 = __cil_tmp83 + 968;
  __cil_tmp85 = *((struct ite_config **)__cil_tmp84);
  __cil_tmp86 = *((u8 *)__cil_tmp85);
  __cil_tmp87 = (int )__cil_tmp86;
  if (__cil_tmp87 > 1) {
    {
    msleep(50U);
    }
  } else {
    i = 0;
    {
    while (1) {
      while_continue___1: ;
      if (i < 50) {
      } else {
        goto while_break___1;
      }
      {
      __cil_tmp88 = (u32 )60546;
      reg = it913x_read_reg_u8(state, __cil_tmp88);
      }
      if (reg > 0) {
        goto while_break___1;
      } else {
      }
      if (reg < 0) {
        return (-19);
      } else {
      }
      {
      __const_udelay(8590000UL);
      i = i + 1;
      }
    }
    while_break___1: ;
    }
  }
  }
  {
  __cil_tmp89 = (u8 )1;
  __cil_tmp90 = (u32 )60801;
  __cil_tmp91 = (u32 )val;
  tmp___7 = it913x_write_reg(state, __cil_tmp89, __cil_tmp90, __cil_tmp91);
  }
  return (tmp___7);
}
}
static int it9137_set_tuner(struct it913x_fe_state *state , u32 bandwidth , u32 frequency_m )
{ struct it913xset *set_tuner ;
  int ret ;
  int reg ;
  u32 frequency ;
  u32 freq ;
  u32 temp_f ;
  u32 tmp___7 ;
  u16 iqik_m_cal ;
  u16 n_div ;
  u8 n ;
  u8 l_band ;
  u8 lna_band ;
  u8 bw ;
  int tmp___8 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct ite_config *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  u8 __cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  int *__cil_tmp31 ;
  int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  struct it913xset *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  struct it913xset *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  struct it913xset *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;
  int __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  u32 __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  u32 __cil_tmp56 ;
  u32 __cil_tmp57 ;
  int __cil_tmp58 ;
  u16 __cil_tmp59 ;
  int __cil_tmp60 ;
  int __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  u8 __cil_tmp64 ;
  int __cil_tmp65 ;
  int __cil_tmp66 ;
  int __cil_tmp67 ;
  int __cil_tmp68 ;
  int __cil_tmp69 ;
  int __cil_tmp70 ;
  int __cil_tmp71 ;
  int __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  u8 __cil_tmp75 ;
  int __cil_tmp76 ;
  int __cil_tmp77 ;
  int __cil_tmp78 ;
  int __cil_tmp79 ;
  int __cil_tmp80 ;
  int __cil_tmp81 ;
  int __cil_tmp82 ;
  int __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  u8 __cil_tmp86 ;
  u32 __cil_tmp87 ;
  u32 __cil_tmp88 ;
  u32 __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  u16 __cil_tmp92 ;
  u32 __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  u16 __cil_tmp96 ;
  u32 __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  u16 __cil_tmp100 ;
  int __cil_tmp101 ;
  int __cil_tmp102 ;
  u32 __cil_tmp103 ;
  u32 __cil_tmp104 ;
  u32 __cil_tmp105 ;
  u32 __cil_tmp106 ;
  u32 __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  struct it913xset *__cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned int __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  struct it913xset *__cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  u32 __cil_tmp119 ;
  unsigned int __cil_tmp120 ;
  int *__cil_tmp121 ;
  int __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  struct it913xset *__cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned int __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  struct it913xset *__cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  u32 __cil_tmp134 ;
  unsigned int __cil_tmp135 ;
  int *__cil_tmp136 ;
  int __cil_tmp137 ;
  {
  __cil_tmp18 = 0 * 24UL;
  __cil_tmp19 = (unsigned long )(set_it9137_template) + __cil_tmp18;
  set_tuner = (struct it913xset *)__cil_tmp19;
  frequency = frequency_m / 1000U;
  {
  __cil_tmp20 = (unsigned long )state;
  __cil_tmp21 = __cil_tmp20 + 968;
  __cil_tmp22 = *((struct ite_config **)__cil_tmp21);
  __cil_tmp23 = (unsigned long )__cil_tmp22;
  __cil_tmp24 = __cil_tmp23 + 8;
  __cil_tmp25 = *((u8 *)__cil_tmp24);
  __cil_tmp26 = (int )__cil_tmp25;
  if (__cil_tmp26 == 1) {
    __cil_tmp27 = 0 * 24UL;
    __cil_tmp28 = (unsigned long )(set_it9135_template) + __cil_tmp27;
    set_tuner = (struct it913xset *)__cil_tmp28;
  } else {
    __cil_tmp29 = 0 * 24UL;
    __cil_tmp30 = (unsigned long )(set_it9137_template) + __cil_tmp29;
    set_tuner = (struct it913xset *)__cil_tmp30;
  }
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp31 = & it913x_debug;
    __cil_tmp32 = *__cil_tmp31;
    if (1 & __cil_tmp32) {
      {
      printk("<7>it913x-fe: Tuner Frequency %d Bandwidth %d", frequency, bandwidth);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  if (frequency >= 51000U) {
    if (frequency <= 440000U) {
      l_band = (u8 )0;
      lna_band = (u8 )0;
    } else {
      goto _L___7;
    }
  } else
  _L___7:
  if (frequency > 440000U) {
    if (frequency <= 484000U) {
      l_band = (u8 )1;
      lna_band = (u8 )1;
    } else {
      goto _L___6;
    }
  } else
  _L___6:
  if (frequency > 484000U) {
    if (frequency <= 533000U) {
      l_band = (u8 )1;
      lna_band = (u8 )2;
    } else {
      goto _L___5;
    }
  } else
  _L___5:
  if (frequency > 533000U) {
    if (frequency <= 587000U) {
      l_band = (u8 )1;
      lna_band = (u8 )3;
    } else {
      goto _L___4;
    }
  } else
  _L___4:
  if (frequency > 587000U) {
    if (frequency <= 645000U) {
      l_band = (u8 )1;
      lna_band = (u8 )4;
    } else {
      goto _L___3;
    }
  } else
  _L___3:
  if (frequency > 645000U) {
    if (frequency <= 710000U) {
      l_band = (u8 )1;
      lna_band = (u8 )5;
    } else {
      goto _L___2;
    }
  } else
  _L___2:
  if (frequency > 710000U) {
    if (frequency <= 782000U) {
      l_band = (u8 )1;
      lna_band = (u8 )6;
    } else {
      goto _L___1;
    }
  } else
  _L___1:
  if (frequency > 782000U) {
    if (frequency <= 860000U) {
      l_band = (u8 )1;
      lna_band = (u8 )7;
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if (frequency > 1450000U) {
    if (frequency <= 1492000U) {
      l_band = (u8 )1;
      lna_band = (u8 )0;
    } else {
      goto _L;
    }
  } else
  _L:
  if (frequency > 1660000U) {
    if (frequency <= 1685000U) {
      l_band = (u8 )1;
      lna_band = (u8 )1;
    } else {
      return (-22);
    }
  } else {
    return (-22);
  }
  __cil_tmp33 = 0 * 1UL;
  __cil_tmp34 = 8 + __cil_tmp33;
  __cil_tmp35 = set_tuner + 0;
  __cil_tmp36 = (unsigned long )__cil_tmp35;
  __cil_tmp37 = __cil_tmp36 + __cil_tmp34;
  *((u8 *)__cil_tmp37) = lna_band;
  if ((int )bandwidth == 5000000) {
    goto case_5000000;
  } else
  if ((int )bandwidth == 6000000) {
    goto case_6000000;
  } else
  if ((int )bandwidth == 7000000) {
    goto case_7000000;
  } else {
    {
    goto switch_default;
    if (0) {
      case_5000000:
      bw = (u8 )0;
      goto switch_break;
      case_6000000:
      bw = (u8 )2;
      goto switch_break;
      case_7000000:
      bw = (u8 )4;
      goto switch_break;
      switch_default:
      bw = (u8 )6;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  __cil_tmp38 = 0 * 1UL;
  __cil_tmp39 = 8 + __cil_tmp38;
  __cil_tmp40 = set_tuner + 1;
  __cil_tmp41 = (unsigned long )__cil_tmp40;
  __cil_tmp42 = __cil_tmp41 + __cil_tmp39;
  *((u8 *)__cil_tmp42) = bw;
  __cil_tmp43 = 0 * 1UL;
  __cil_tmp44 = 8 + __cil_tmp43;
  __cil_tmp45 = set_tuner + 2;
  __cil_tmp46 = (unsigned long )__cil_tmp45;
  __cil_tmp47 = __cil_tmp46 + __cil_tmp44;
  __cil_tmp48 = (int )l_band;
  __cil_tmp49 = __cil_tmp48 << 3;
  __cil_tmp50 = 160 | __cil_tmp49;
  *((u8 *)__cil_tmp47) = (u8 )__cil_tmp50;
  if (frequency > 53000U) {
    if (frequency <= 74000U) {
      n_div = (u16 )48;
      n = (u8 )0;
    } else {
      goto _L___15;
    }
  } else
  _L___15:
  if (frequency > 74000U) {
    if (frequency <= 111000U) {
      n_div = (u16 )32;
      n = (u8 )1;
    } else {
      goto _L___14;
    }
  } else
  _L___14:
  if (frequency > 111000U) {
    if (frequency <= 148000U) {
      n_div = (u16 )24;
      n = (u8 )2;
    } else {
      goto _L___13;
    }
  } else
  _L___13:
  if (frequency > 148000U) {
    if (frequency <= 222000U) {
      n_div = (u16 )16;
      n = (u8 )3;
    } else {
      goto _L___12;
    }
  } else
  _L___12:
  if (frequency > 222000U) {
    if (frequency <= 296000U) {
      n_div = (u16 )12;
      n = (u8 )4;
    } else {
      goto _L___11;
    }
  } else
  _L___11:
  if (frequency > 296000U) {
    if (frequency <= 445000U) {
      n_div = (u16 )8;
      n = (u8 )5;
    } else {
      goto _L___10;
    }
  } else
  _L___10:
  if (frequency > 445000U) {
    {
    __cil_tmp51 = (unsigned long )state;
    __cil_tmp52 = __cil_tmp51 + 1024;
    __cil_tmp53 = *((u32 *)__cil_tmp52);
    if (frequency <= __cil_tmp53) {
      n_div = (u16 )6;
      n = (u8 )6;
    } else {
      goto _L___9;
    }
    }
  } else {
    _L___9:
    {
    __cil_tmp54 = (unsigned long )state;
    __cil_tmp55 = __cil_tmp54 + 1024;
    __cil_tmp56 = *((u32 *)__cil_tmp55);
    if (frequency > __cil_tmp56) {
      if (frequency <= 950000U) {
        n_div = (u16 )4;
        n = (u8 )7;
      } else {
        goto _L___8;
      }
    } else
    _L___8:
    if (frequency > 1450000U) {
      if (frequency <= 1680000U) {
        n_div = (u16 )2;
        n = (u8 )0;
      } else {
        return (-22);
      }
    } else {
      return (-22);
    }
    }
  }
  {
  __cil_tmp57 = (u32 )60801;
  reg = it913x_read_reg_u8(state, __cil_tmp57);
  __cil_tmp58 = (int )n_div;
  __cil_tmp59 = (u16 )reg;
  __cil_tmp60 = (int )__cil_tmp59;
  __cil_tmp61 = __cil_tmp60 * __cil_tmp58;
  iqik_m_cal = (u16 )__cil_tmp61;
  }
  if (reg < 32) {
    {
    __cil_tmp62 = (unsigned long )state;
    __cil_tmp63 = __cil_tmp62 + 1023;
    __cil_tmp64 = *((u8 *)__cil_tmp63);
    __cil_tmp65 = (int )__cil_tmp64;
    if (__cil_tmp65 == 0) {
      __cil_tmp66 = (int )iqik_m_cal;
      __cil_tmp67 = __cil_tmp66 * 9;
      __cil_tmp68 = __cil_tmp67 >> 5;
      iqik_m_cal = (u16 )__cil_tmp68;
    } else {
      __cil_tmp69 = (int )iqik_m_cal;
      __cil_tmp70 = __cil_tmp69 >> 1;
      iqik_m_cal = (u16 )__cil_tmp70;
    }
    }
  } else {
    __cil_tmp71 = (int )iqik_m_cal;
    __cil_tmp72 = 64 - __cil_tmp71;
    iqik_m_cal = (u16 )__cil_tmp72;
    {
    __cil_tmp73 = (unsigned long )state;
    __cil_tmp74 = __cil_tmp73 + 1023;
    __cil_tmp75 = *((u8 *)__cil_tmp74);
    __cil_tmp76 = (int )__cil_tmp75;
    if (__cil_tmp76 == 0) {
      __cil_tmp77 = (int )iqik_m_cal;
      __cil_tmp78 = __cil_tmp77 * 9;
      __cil_tmp79 = __cil_tmp78 >> 5;
      __cil_tmp80 = ~ __cil_tmp79;
      iqik_m_cal = (u16 )__cil_tmp80;
    } else {
      __cil_tmp81 = (int )iqik_m_cal;
      __cil_tmp82 = __cil_tmp81 >> 1;
      __cil_tmp83 = ~ __cil_tmp82;
      iqik_m_cal = (u16 )__cil_tmp83;
    }
    }
  }
  __cil_tmp84 = (unsigned long )state;
  __cil_tmp85 = __cil_tmp84 + 1022;
  __cil_tmp86 = *((u8 *)__cil_tmp85);
  __cil_tmp87 = (u32 )__cil_tmp86;
  __cil_tmp88 = (u32 )n_div;
  __cil_tmp89 = frequency * __cil_tmp88;
  temp_f = __cil_tmp89 * __cil_tmp87;
  __cil_tmp90 = (unsigned long )state;
  __cil_tmp91 = __cil_tmp90 + 1020;
  __cil_tmp92 = *((u16 *)__cil_tmp91);
  __cil_tmp93 = (u32 )__cil_tmp92;
  freq = temp_f / __cil_tmp93;
  __cil_tmp94 = (unsigned long )state;
  __cil_tmp95 = __cil_tmp94 + 1020;
  __cil_tmp96 = *((u16 *)__cil_tmp95);
  __cil_tmp97 = (u32 )__cil_tmp96;
  tmp___7 = freq * __cil_tmp97;
  {
  __cil_tmp98 = (unsigned long )state;
  __cil_tmp99 = __cil_tmp98 + 1020;
  __cil_tmp100 = *((u16 *)__cil_tmp99);
  __cil_tmp101 = (int )__cil_tmp100;
  __cil_tmp102 = __cil_tmp101 >> 1;
  __cil_tmp103 = (u32 )__cil_tmp102;
  __cil_tmp104 = temp_f - tmp___7;
  if (__cil_tmp104 >= __cil_tmp103) {
    freq = freq + 1U;
  } else {
  }
  }
  __cil_tmp105 = (u32 )n;
  __cil_tmp106 = __cil_tmp105 << 13;
  freq = freq + __cil_tmp106;
  __cil_tmp107 = (u32 )iqik_m_cal;
  temp_f = freq + __cil_tmp107;
  __cil_tmp108 = 0 * 1UL;
  __cil_tmp109 = 8 + __cil_tmp108;
  __cil_tmp110 = set_tuner + 3;
  __cil_tmp111 = (unsigned long )__cil_tmp110;
  __cil_tmp112 = __cil_tmp111 + __cil_tmp109;
  __cil_tmp113 = temp_f & 255U;
  *((u8 *)__cil_tmp112) = (u8 )__cil_tmp113;
  __cil_tmp114 = 0 * 1UL;
  __cil_tmp115 = 8 + __cil_tmp114;
  __cil_tmp116 = set_tuner + 4;
  __cil_tmp117 = (unsigned long )__cil_tmp116;
  __cil_tmp118 = __cil_tmp117 + __cil_tmp115;
  __cil_tmp119 = temp_f >> 8;
  __cil_tmp120 = __cil_tmp119 & 255U;
  *((u8 *)__cil_tmp118) = (u8 )__cil_tmp120;
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp121 = & it913x_debug;
    __cil_tmp122 = *__cil_tmp121;
    if (1 & __cil_tmp122) {
      {
      printk("<7>it913x-fe: High Frequency = %04x", temp_f);
      }
    } else {
    }
    }
    goto while_break___0;
  }
  while_break___0: ;
  }
  __cil_tmp123 = 0 * 1UL;
  __cil_tmp124 = 8 + __cil_tmp123;
  __cil_tmp125 = set_tuner + 5;
  __cil_tmp126 = (unsigned long )__cil_tmp125;
  __cil_tmp127 = __cil_tmp126 + __cil_tmp124;
  __cil_tmp128 = freq & 255U;
  *((u8 *)__cil_tmp127) = (u8 )__cil_tmp128;
  __cil_tmp129 = 0 * 1UL;
  __cil_tmp130 = 8 + __cil_tmp129;
  __cil_tmp131 = set_tuner + 6;
  __cil_tmp132 = (unsigned long )__cil_tmp131;
  __cil_tmp133 = __cil_tmp132 + __cil_tmp130;
  __cil_tmp134 = freq >> 8;
  __cil_tmp135 = __cil_tmp134 & 255U;
  *((u8 *)__cil_tmp133) = (u8 )__cil_tmp135;
  {
  while (1) {
    while_continue___1: ;
    {
    __cil_tmp136 = & it913x_debug;
    __cil_tmp137 = *__cil_tmp136;
    if (1 & __cil_tmp137) {
      {
      printk("<7>it913x-fe: low Frequency = %04x", freq);
      }
    } else {
    }
    }
    goto while_break___1;
  }
  while_break___1: ;
  }
  {
  ret = it913x_fe_script_loader(state, set_tuner);
  }
  if (ret < 0) {
    tmp___8 = -19;
  } else {
    tmp___8 = 0;
  }
  return (tmp___8);
}
}
static int it913x_fe_select_bw(struct it913x_fe_state *state , u32 bandwidth , u32 adcFrequency )
{ int ret ;
  int i ;
  u8 buffer[256] ;
  u32 coeff[8] ;
  u16 bfsfcw_fftinx_ratio ;
  u16 fftinx_bfsfcw_ratio ;
  u8 count ;
  u8 bw ;
  u8 adcmultiplier ;
  u8 tmp___7 ;
  u8 tmp___8 ;
  u8 tmp___9 ;
  u8 tmp___10 ;
  u8 tmp___11 ;
  u8 tmp___12 ;
  u8 tmp___13 ;
  u8 tmp___14 ;
  int *__cil_tmp21 ;
  int __cil_tmp22 ;
  u8 __cil_tmp23 ;
  u32 __cil_tmp24 ;
  u32 __cil_tmp25 ;
  void *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct adctable *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  struct adctable *__cil_tmp36 ;
  struct adctable *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  struct adctable *__cil_tmp44 ;
  struct adctable *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  struct adctable *__cil_tmp52 ;
  struct adctable *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  struct adctable *__cil_tmp60 ;
  struct adctable *__cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  struct adctable *__cil_tmp68 ;
  struct adctable *__cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  struct adctable *__cil_tmp76 ;
  struct adctable *__cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  struct adctable *__cil_tmp84 ;
  struct adctable *__cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  struct adctable *__cil_tmp92 ;
  struct adctable *__cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  struct adctable *__cil_tmp98 ;
  struct adctable *__cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  struct adctable *__cil_tmp104 ;
  struct adctable *__cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  u32 __cil_tmp108 ;
  int __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  u32 __cil_tmp114 ;
  int __cil_tmp115 ;
  int __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  u32 __cil_tmp121 ;
  u32 __cil_tmp122 ;
  unsigned int __cil_tmp123 ;
  int __cil_tmp124 ;
  int __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  u32 __cil_tmp130 ;
  u32 __cil_tmp131 ;
  unsigned int __cil_tmp132 ;
  int __cil_tmp133 ;
  int __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  u32 __cil_tmp139 ;
  u32 __cil_tmp140 ;
  unsigned int __cil_tmp141 ;
  int __cil_tmp142 ;
  int __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  u32 __cil_tmp148 ;
  unsigned int __cil_tmp149 ;
  int __cil_tmp150 ;
  int __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  int __cil_tmp154 ;
  int __cil_tmp155 ;
  int __cil_tmp156 ;
  int __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  int __cil_tmp160 ;
  int __cil_tmp161 ;
  int __cil_tmp162 ;
  int __cil_tmp163 ;
  int __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  int __cil_tmp167 ;
  int __cil_tmp168 ;
  int __cil_tmp169 ;
  int __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  int __cil_tmp173 ;
  int __cil_tmp174 ;
  int __cil_tmp175 ;
  u8 __cil_tmp176 ;
  u32 __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  u8 *__cil_tmp180 ;
  int *__cil_tmp181 ;
  int __cil_tmp182 ;
  unsigned long __cil_tmp183 ;
  unsigned long __cil_tmp184 ;
  u8 __cil_tmp185 ;
  int __cil_tmp186 ;
  unsigned long __cil_tmp187 ;
  unsigned long __cil_tmp188 ;
  u8 *__cil_tmp189 ;
  u8 *__cil_tmp190 ;
  u8 __cil_tmp191 ;
  int __cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  unsigned long __cil_tmp194 ;
  u8 *__cil_tmp195 ;
  u8 *__cil_tmp196 ;
  u8 __cil_tmp197 ;
  int __cil_tmp198 ;
  unsigned long __cil_tmp199 ;
  unsigned long __cil_tmp200 ;
  u8 *__cil_tmp201 ;
  u8 *__cil_tmp202 ;
  u8 __cil_tmp203 ;
  int __cil_tmp204 ;
  unsigned long __cil_tmp205 ;
  unsigned long __cil_tmp206 ;
  u8 *__cil_tmp207 ;
  u8 *__cil_tmp208 ;
  u8 __cil_tmp209 ;
  int __cil_tmp210 ;
  unsigned long __cil_tmp211 ;
  unsigned long __cil_tmp212 ;
  u8 *__cil_tmp213 ;
  u8 *__cil_tmp214 ;
  u8 __cil_tmp215 ;
  int __cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  unsigned long __cil_tmp218 ;
  u8 *__cil_tmp219 ;
  u8 *__cil_tmp220 ;
  u8 __cil_tmp221 ;
  int __cil_tmp222 ;
  unsigned long __cil_tmp223 ;
  unsigned long __cil_tmp224 ;
  u8 *__cil_tmp225 ;
  u8 *__cil_tmp226 ;
  u8 __cil_tmp227 ;
  int __cil_tmp228 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp21 = & it913x_debug;
    __cil_tmp22 = *__cil_tmp21;
    if (1 & __cil_tmp22) {
      {
      printk("<7>it913x-fe: Bandwidth %d Adc %d", bandwidth, adcFrequency);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  if ((int )bandwidth == 5000000) {
    goto case_5000000;
  } else
  if ((int )bandwidth == 6000000) {
    goto case_6000000;
  } else
  if ((int )bandwidth == 7000000) {
    goto case_7000000;
  } else {
    {
    goto switch_default;
    if (0) {
      case_5000000:
      bw = (u8 )3;
      goto switch_break;
      case_6000000:
      bw = (u8 )0;
      goto switch_break;
      case_7000000:
      bw = (u8 )1;
      goto switch_break;
      switch_default:
      bw = (u8 )2;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  {
  __cil_tmp23 = (u8 )1;
  __cil_tmp24 = (u32 )63748;
  __cil_tmp25 = (u32 )bw;
  ret = it913x_write_reg(state, __cil_tmp23, __cil_tmp24, __cil_tmp25);
  }
  {
  __cil_tmp26 = (void *)0;
  __cil_tmp27 = (unsigned long )__cil_tmp26;
  __cil_tmp28 = (unsigned long )state;
  __cil_tmp29 = __cil_tmp28 + 1008;
  __cil_tmp30 = *((struct adctable **)__cil_tmp29);
  __cil_tmp31 = (unsigned long )__cil_tmp30;
  if (__cil_tmp31 == __cil_tmp27) {
    return (-22);
  } else {
  }
  }
  {
  __cil_tmp32 = 0 * 4UL;
  __cil_tmp33 = (unsigned long )(coeff) + __cil_tmp32;
  __cil_tmp34 = (unsigned long )state;
  __cil_tmp35 = __cil_tmp34 + 1008;
  __cil_tmp36 = *((struct adctable **)__cil_tmp35);
  __cil_tmp37 = __cil_tmp36 + bw;
  __cil_tmp38 = (unsigned long )__cil_tmp37;
  __cil_tmp39 = __cil_tmp38 + 8;
  *((u32 *)__cil_tmp33) = *((u32 *)__cil_tmp39);
  __cil_tmp40 = 1 * 4UL;
  __cil_tmp41 = (unsigned long )(coeff) + __cil_tmp40;
  __cil_tmp42 = (unsigned long )state;
  __cil_tmp43 = __cil_tmp42 + 1008;
  __cil_tmp44 = *((struct adctable **)__cil_tmp43);
  __cil_tmp45 = __cil_tmp44 + bw;
  __cil_tmp46 = (unsigned long )__cil_tmp45;
  __cil_tmp47 = __cil_tmp46 + 28;
  *((u32 *)__cil_tmp41) = *((u32 *)__cil_tmp47);
  __cil_tmp48 = 2 * 4UL;
  __cil_tmp49 = (unsigned long )(coeff) + __cil_tmp48;
  __cil_tmp50 = (unsigned long )state;
  __cil_tmp51 = __cil_tmp50 + 1008;
  __cil_tmp52 = *((struct adctable **)__cil_tmp51);
  __cil_tmp53 = __cil_tmp52 + bw;
  __cil_tmp54 = (unsigned long )__cil_tmp53;
  __cil_tmp55 = __cil_tmp54 + 16;
  *((u32 *)__cil_tmp49) = *((u32 *)__cil_tmp55);
  __cil_tmp56 = 3 * 4UL;
  __cil_tmp57 = (unsigned long )(coeff) + __cil_tmp56;
  __cil_tmp58 = (unsigned long )state;
  __cil_tmp59 = __cil_tmp58 + 1008;
  __cil_tmp60 = *((struct adctable **)__cil_tmp59);
  __cil_tmp61 = __cil_tmp60 + bw;
  __cil_tmp62 = (unsigned long )__cil_tmp61;
  __cil_tmp63 = __cil_tmp62 + 20;
  *((u32 *)__cil_tmp57) = *((u32 *)__cil_tmp63);
  __cil_tmp64 = 4 * 4UL;
  __cil_tmp65 = (unsigned long )(coeff) + __cil_tmp64;
  __cil_tmp66 = (unsigned long )state;
  __cil_tmp67 = __cil_tmp66 + 1008;
  __cil_tmp68 = *((struct adctable **)__cil_tmp67);
  __cil_tmp69 = __cil_tmp68 + bw;
  __cil_tmp70 = (unsigned long )__cil_tmp69;
  __cil_tmp71 = __cil_tmp70 + 24;
  *((u32 *)__cil_tmp65) = *((u32 *)__cil_tmp71);
  __cil_tmp72 = 5 * 4UL;
  __cil_tmp73 = (unsigned long )(coeff) + __cil_tmp72;
  __cil_tmp74 = (unsigned long )state;
  __cil_tmp75 = __cil_tmp74 + 1008;
  __cil_tmp76 = *((struct adctable **)__cil_tmp75);
  __cil_tmp77 = __cil_tmp76 + bw;
  __cil_tmp78 = (unsigned long )__cil_tmp77;
  __cil_tmp79 = __cil_tmp78 + 36;
  *((u32 *)__cil_tmp73) = *((u32 *)__cil_tmp79);
  __cil_tmp80 = 6 * 4UL;
  __cil_tmp81 = (unsigned long )(coeff) + __cil_tmp80;
  __cil_tmp82 = (unsigned long )state;
  __cil_tmp83 = __cil_tmp82 + 1008;
  __cil_tmp84 = *((struct adctable **)__cil_tmp83);
  __cil_tmp85 = __cil_tmp84 + bw;
  __cil_tmp86 = (unsigned long )__cil_tmp85;
  __cil_tmp87 = __cil_tmp86 + 12;
  *((u32 *)__cil_tmp81) = *((u32 *)__cil_tmp87);
  __cil_tmp88 = 7 * 4UL;
  __cil_tmp89 = (unsigned long )(coeff) + __cil_tmp88;
  __cil_tmp90 = (unsigned long )state;
  __cil_tmp91 = __cil_tmp90 + 1008;
  __cil_tmp92 = *((struct adctable **)__cil_tmp91);
  __cil_tmp93 = __cil_tmp92 + bw;
  __cil_tmp94 = (unsigned long )__cil_tmp93;
  __cil_tmp95 = __cil_tmp94 + 32;
  *((u32 *)__cil_tmp89) = *((u32 *)__cil_tmp95);
  __cil_tmp96 = (unsigned long )state;
  __cil_tmp97 = __cil_tmp96 + 1008;
  __cil_tmp98 = *((struct adctable **)__cil_tmp97);
  __cil_tmp99 = __cil_tmp98 + bw;
  __cil_tmp100 = (unsigned long )__cil_tmp99;
  __cil_tmp101 = __cil_tmp100 + 40;
  bfsfcw_fftinx_ratio = *((u16 *)__cil_tmp101);
  __cil_tmp102 = (unsigned long )state;
  __cil_tmp103 = __cil_tmp102 + 1008;
  __cil_tmp104 = *((struct adctable **)__cil_tmp103);
  __cil_tmp105 = __cil_tmp104 + bw;
  __cil_tmp106 = (unsigned long )__cil_tmp105;
  __cil_tmp107 = __cil_tmp106 + 42;
  fftinx_bfsfcw_ratio = *((u16 *)__cil_tmp107);
  __cil_tmp108 = (u32 )69;
  ret = it913x_read_reg_u8(state, __cil_tmp108);
  }
  if (ret < 0) {
    return (-22);
  } else {
  }
  adcmultiplier = (u8 )ret;
  count = (u8 )0;
  i = 0;
  {
  while (1) {
    while_continue___0: ;
    if (i < 8) {
    } else {
      goto while_break___0;
    }
    {
    __cil_tmp109 = (int )adcmultiplier;
    if (__cil_tmp109 == 1) {
      __cil_tmp110 = i * 4UL;
      __cil_tmp111 = (unsigned long )(coeff) + __cil_tmp110;
      __cil_tmp112 = i * 4UL;
      __cil_tmp113 = (unsigned long )(coeff) + __cil_tmp112;
      __cil_tmp114 = *((u32 *)__cil_tmp113);
      *((u32 *)__cil_tmp111) = __cil_tmp114 / 2U;
    } else {
    }
    }
    tmp___7 = count;
    __cil_tmp115 = (int )count;
    __cil_tmp116 = __cil_tmp115 + 1;
    count = (u8 )__cil_tmp116;
    __cil_tmp117 = tmp___7 * 1UL;
    __cil_tmp118 = (unsigned long )(buffer) + __cil_tmp117;
    __cil_tmp119 = i * 4UL;
    __cil_tmp120 = (unsigned long )(coeff) + __cil_tmp119;
    __cil_tmp121 = *((u32 *)__cil_tmp120);
    __cil_tmp122 = __cil_tmp121 >> 24;
    __cil_tmp123 = __cil_tmp122 & 3U;
    *((u8 *)__cil_tmp118) = (u8 )__cil_tmp123;
    tmp___8 = count;
    __cil_tmp124 = (int )count;
    __cil_tmp125 = __cil_tmp124 + 1;
    count = (u8 )__cil_tmp125;
    __cil_tmp126 = tmp___8 * 1UL;
    __cil_tmp127 = (unsigned long )(buffer) + __cil_tmp126;
    __cil_tmp128 = i * 4UL;
    __cil_tmp129 = (unsigned long )(coeff) + __cil_tmp128;
    __cil_tmp130 = *((u32 *)__cil_tmp129);
    __cil_tmp131 = __cil_tmp130 >> 16;
    __cil_tmp132 = __cil_tmp131 & 255U;
    *((u8 *)__cil_tmp127) = (u8 )__cil_tmp132;
    tmp___9 = count;
    __cil_tmp133 = (int )count;
    __cil_tmp134 = __cil_tmp133 + 1;
    count = (u8 )__cil_tmp134;
    __cil_tmp135 = tmp___9 * 1UL;
    __cil_tmp136 = (unsigned long )(buffer) + __cil_tmp135;
    __cil_tmp137 = i * 4UL;
    __cil_tmp138 = (unsigned long )(coeff) + __cil_tmp137;
    __cil_tmp139 = *((u32 *)__cil_tmp138);
    __cil_tmp140 = __cil_tmp139 >> 8;
    __cil_tmp141 = __cil_tmp140 & 255U;
    *((u8 *)__cil_tmp136) = (u8 )__cil_tmp141;
    tmp___10 = count;
    __cil_tmp142 = (int )count;
    __cil_tmp143 = __cil_tmp142 + 1;
    count = (u8 )__cil_tmp143;
    __cil_tmp144 = tmp___10 * 1UL;
    __cil_tmp145 = (unsigned long )(buffer) + __cil_tmp144;
    __cil_tmp146 = i * 4UL;
    __cil_tmp147 = (unsigned long )(coeff) + __cil_tmp146;
    __cil_tmp148 = *((u32 *)__cil_tmp147);
    __cil_tmp149 = __cil_tmp148 & 255U;
    *((u8 *)__cil_tmp145) = (u8 )__cil_tmp149;
    i = i + 1;
  }
  while_break___0: ;
  }
  {
  tmp___11 = count;
  __cil_tmp150 = (int )count;
  __cil_tmp151 = __cil_tmp150 + 1;
  count = (u8 )__cil_tmp151;
  __cil_tmp152 = tmp___11 * 1UL;
  __cil_tmp153 = (unsigned long )(buffer) + __cil_tmp152;
  __cil_tmp154 = (int )bfsfcw_fftinx_ratio;
  __cil_tmp155 = __cil_tmp154 & 255;
  *((u8 *)__cil_tmp153) = (u8 )__cil_tmp155;
  tmp___12 = count;
  __cil_tmp156 = (int )count;
  __cil_tmp157 = __cil_tmp156 + 1;
  count = (u8 )__cil_tmp157;
  __cil_tmp158 = tmp___12 * 1UL;
  __cil_tmp159 = (unsigned long )(buffer) + __cil_tmp158;
  __cil_tmp160 = (int )bfsfcw_fftinx_ratio;
  __cil_tmp161 = __cil_tmp160 >> 8;
  __cil_tmp162 = __cil_tmp161 & 255;
  *((u8 *)__cil_tmp159) = (u8 )__cil_tmp162;
  tmp___13 = count;
  __cil_tmp163 = (int )count;
  __cil_tmp164 = __cil_tmp163 + 1;
  count = (u8 )__cil_tmp164;
  __cil_tmp165 = tmp___13 * 1UL;
  __cil_tmp166 = (unsigned long )(buffer) + __cil_tmp165;
  __cil_tmp167 = (int )fftinx_bfsfcw_ratio;
  __cil_tmp168 = __cil_tmp167 & 255;
  *((u8 *)__cil_tmp166) = (u8 )__cil_tmp168;
  tmp___14 = count;
  __cil_tmp169 = (int )count;
  __cil_tmp170 = __cil_tmp169 + 1;
  count = (u8 )__cil_tmp170;
  __cil_tmp171 = tmp___14 * 1UL;
  __cil_tmp172 = (unsigned long )(buffer) + __cil_tmp171;
  __cil_tmp173 = (int )fftinx_bfsfcw_ratio;
  __cil_tmp174 = __cil_tmp173 >> 8;
  __cil_tmp175 = __cil_tmp174 & 255;
  *((u8 *)__cil_tmp172) = (u8 )__cil_tmp175;
  __cil_tmp176 = (u8 )1;
  __cil_tmp177 = (u32 )1;
  __cil_tmp178 = 0 * 1UL;
  __cil_tmp179 = (unsigned long )(buffer) + __cil_tmp178;
  __cil_tmp180 = (u8 *)__cil_tmp179;
  ret = it913x_write(state, __cil_tmp176, __cil_tmp177, __cil_tmp180, count);
  i = 0;
  }
  {
  while (1) {
    while_continue___1: ;
    if (i < 42) {
    } else {
      goto while_break___1;
    }
    {
    while (1) {
      while_continue___2: ;
      {
      __cil_tmp181 = & it913x_debug;
      __cil_tmp182 = *__cil_tmp181;
      if (1 & __cil_tmp182) {
        {
        __cil_tmp183 = i * 1UL;
        __cil_tmp184 = (unsigned long )(buffer) + __cil_tmp183;
        __cil_tmp185 = *((u8 *)__cil_tmp184);
        __cil_tmp186 = (int )__cil_tmp185;
        __cil_tmp187 = i * 1UL;
        __cil_tmp188 = (unsigned long )(buffer) + __cil_tmp187;
        __cil_tmp189 = (u8 *)__cil_tmp188;
        __cil_tmp190 = __cil_tmp189 + 1;
        __cil_tmp191 = *__cil_tmp190;
        __cil_tmp192 = (int )__cil_tmp191;
        __cil_tmp193 = i * 1UL;
        __cil_tmp194 = (unsigned long )(buffer) + __cil_tmp193;
        __cil_tmp195 = (u8 *)__cil_tmp194;
        __cil_tmp196 = __cil_tmp195 + 2;
        __cil_tmp197 = *__cil_tmp196;
        __cil_tmp198 = (int )__cil_tmp197;
        __cil_tmp199 = i * 1UL;
        __cil_tmp200 = (unsigned long )(buffer) + __cil_tmp199;
        __cil_tmp201 = (u8 *)__cil_tmp200;
        __cil_tmp202 = __cil_tmp201 + 3;
        __cil_tmp203 = *__cil_tmp202;
        __cil_tmp204 = (int )__cil_tmp203;
        __cil_tmp205 = i * 1UL;
        __cil_tmp206 = (unsigned long )(buffer) + __cil_tmp205;
        __cil_tmp207 = (u8 *)__cil_tmp206;
        __cil_tmp208 = __cil_tmp207 + 4;
        __cil_tmp209 = *__cil_tmp208;
        __cil_tmp210 = (int )__cil_tmp209;
        __cil_tmp211 = i * 1UL;
        __cil_tmp212 = (unsigned long )(buffer) + __cil_tmp211;
        __cil_tmp213 = (u8 *)__cil_tmp212;
        __cil_tmp214 = __cil_tmp213 + 5;
        __cil_tmp215 = *__cil_tmp214;
        __cil_tmp216 = (int )__cil_tmp215;
        __cil_tmp217 = i * 1UL;
        __cil_tmp218 = (unsigned long )(buffer) + __cil_tmp217;
        __cil_tmp219 = (u8 *)__cil_tmp218;
        __cil_tmp220 = __cil_tmp219 + 6;
        __cil_tmp221 = *__cil_tmp220;
        __cil_tmp222 = (int )__cil_tmp221;
        __cil_tmp223 = i * 1UL;
        __cil_tmp224 = (unsigned long )(buffer) + __cil_tmp223;
        __cil_tmp225 = (u8 *)__cil_tmp224;
        __cil_tmp226 = __cil_tmp225 + 7;
        __cil_tmp227 = *__cil_tmp226;
        __cil_tmp228 = (int )__cil_tmp227;
        printk("<7>it913x-fe: Buffer (%02x%02x%02x%02x%02x%02x%02x%02x)", __cil_tmp186,
               __cil_tmp192, __cil_tmp198, __cil_tmp204, __cil_tmp210, __cil_tmp216,
               __cil_tmp222, __cil_tmp228);
        }
      } else {
      }
      }
      goto while_break___2;
    }
    while_break___2: ;
    }
    i = i + 8;
  }
  while_break___1: ;
  }
  return (ret);
}
}
static int it913x_fe_read_status(struct dvb_frontend *fe , fe_status_t *status )
{ struct it913x_fe_state *state ;
  int ret ;
  int i ;
  fe_status_t old_status ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  void *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  fe_status_t __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  u32 __cil_tmp16 ;
  fe_status_t __cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  u32 __cil_tmp20 ;
  fe_status_t __cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  fe_status_t __cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  u32 __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  fe_status_t __cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  fe_status_t __cil_tmp36 ;
  unsigned int __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  fe_status_t __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  u8 __cil_tmp46 ;
  u32 __cil_tmp47 ;
  u32 __cil_tmp48 ;
  {
  __cil_tmp7 = (unsigned long )fe;
  __cil_tmp8 = __cil_tmp7 + 760;
  __cil_tmp9 = *((void **)__cil_tmp8);
  state = (struct it913x_fe_state *)__cil_tmp9;
  __cil_tmp10 = (unsigned long )state;
  __cil_tmp11 = __cil_tmp10 + 1016;
  old_status = *((fe_status_t *)__cil_tmp11);
  *status = (fe_status_t )0;
  {
  __cil_tmp12 = (unsigned long )state;
  __cil_tmp13 = __cil_tmp12 + 1016;
  __cil_tmp14 = *((fe_status_t *)__cil_tmp13);
  __cil_tmp15 = (unsigned int )__cil_tmp14;
  if (__cil_tmp15 == 0U) {
    {
    __cil_tmp16 = (u32 )71;
    ret = it913x_read_reg_u8(state, __cil_tmp16);
    }
    if (ret == 1) {
      __cil_tmp17 = *status;
      __cil_tmp18 = (unsigned int )__cil_tmp17;
      __cil_tmp19 = __cil_tmp18 | 1U;
      *status = (fe_status_t )__cil_tmp19;
      i = 0;
      {
      while (1) {
        while_continue: ;
        if (i < 40) {
        } else {
          goto while_break;
        }
        {
        __cil_tmp20 = (u32 )63897;
        ret = it913x_read_reg_u8(state, __cil_tmp20);
        }
        if (ret == 1) {
          goto while_break;
        } else {
        }
        {
        msleep(25U);
        i = i + 1;
        }
      }
      while_break: ;
      }
      if (ret == 1) {
        __cil_tmp21 = *status;
        __cil_tmp22 = (unsigned int )__cil_tmp21;
        __cil_tmp23 = __cil_tmp22 | 14U;
        *status = (fe_status_t )__cil_tmp23;
      } else {
      }
      __cil_tmp24 = (unsigned long )state;
      __cil_tmp25 = __cil_tmp24 + 1016;
      *((fe_status_t *)__cil_tmp25) = *status;
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp26 = (unsigned long )state;
  __cil_tmp27 = __cil_tmp26 + 1016;
  __cil_tmp28 = *((fe_status_t *)__cil_tmp27);
  __cil_tmp29 = (unsigned int )__cil_tmp28;
  if (__cil_tmp29 & 8U) {
    {
    __cil_tmp30 = (u32 )60;
    ret = it913x_read_reg_u8(state, __cil_tmp30);
    }
    if (ret == 1) {
      __cil_tmp31 = (unsigned long )state;
      __cil_tmp32 = __cil_tmp31 + 1016;
      __cil_tmp33 = *((fe_status_t *)__cil_tmp32);
      __cil_tmp34 = (unsigned int )__cil_tmp33;
      __cil_tmp35 = 16U | __cil_tmp34;
      __cil_tmp36 = *status;
      __cil_tmp37 = (unsigned int )__cil_tmp36;
      __cil_tmp38 = __cil_tmp37 | __cil_tmp35;
      *status = (fe_status_t )__cil_tmp38;
    } else {
      __cil_tmp39 = (unsigned long )state;
      __cil_tmp40 = __cil_tmp39 + 1016;
      *((fe_status_t *)__cil_tmp40) = (fe_status_t )0;
    }
    {
    __cil_tmp41 = (unsigned long )state;
    __cil_tmp42 = __cil_tmp41 + 1016;
    __cil_tmp43 = *((fe_status_t *)__cil_tmp42);
    __cil_tmp44 = (unsigned int )__cil_tmp43;
    __cil_tmp45 = (unsigned int )old_status;
    if (__cil_tmp45 != __cil_tmp44) {
      {
      __cil_tmp46 = (u8 )0;
      __cil_tmp47 = (u32 )55475;
      __cil_tmp48 = (u32 )ret;
      ret = it913x_write_reg(state, __cil_tmp46, __cil_tmp47, __cil_tmp48);
      }
    } else {
    }
    }
  } else {
  }
  }
  return (0);
}
}
int it913x_qpsk_pval[7] = { 0, -93, -91, -90,
        0, -89, -88};
int it913x_16qam_pval[7] = { 0, -87, -85, -84,
        0, -83, -82};
int it913x_64qam_pval[7] = { 0, -82, -80, -78,
        0, -77, -76};
static int it913x_get_signal_strength(struct dvb_frontend *fe )
{ struct dtv_frontend_properties *p ;
  struct it913x_fe_state *state ;
  u8 code_rate ;
  int ret ;
  int temp ;
  u8 lna_gain_os ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  void *__cil_tmp12 ;
  u32 __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  u32 __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  u8 __cil_tmp21 ;
  int __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  fe_code_rate_t __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  fe_code_rate_t __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  int *__cil_tmp32 ;
  int __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  fe_modulation_t __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  int __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  int __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  int __cil_tmp45 ;
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;
  int __cil_tmp50 ;
  int __cil_tmp51 ;
  int *__cil_tmp52 ;
  int __cil_tmp53 ;
  {
  {
  __cil_tmp8 = (unsigned long )fe;
  __cil_tmp9 = __cil_tmp8 + 800;
  p = (struct dtv_frontend_properties *)__cil_tmp9;
  __cil_tmp10 = (unsigned long )fe;
  __cil_tmp11 = __cil_tmp10 + 760;
  __cil_tmp12 = *((void **)__cil_tmp11);
  state = (struct it913x_fe_state *)__cil_tmp12;
  __cil_tmp13 = (u32 )247;
  ret = it913x_read_reg_u8(state, __cil_tmp13);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp14 = (unsigned long )state;
  __cil_tmp15 = __cil_tmp14 + 980;
  __cil_tmp16 = *((u32 *)__cil_tmp15);
  if (__cil_tmp16 < 300000000U) {
    lna_gain_os = (u8 )7;
  } else {
    lna_gain_os = (u8 )14;
  }
  }
  __cil_tmp17 = (int )lna_gain_os;
  __cil_tmp18 = ret - 100;
  temp = __cil_tmp18 - __cil_tmp17;
  {
  __cil_tmp19 = (unsigned long )state;
  __cil_tmp20 = __cil_tmp19 + 992;
  __cil_tmp21 = *((u8 *)__cil_tmp20);
  __cil_tmp22 = (int )__cil_tmp21;
  if (__cil_tmp22 == 0) {
    __cil_tmp23 = (unsigned long )p;
    __cil_tmp24 = __cil_tmp23 + 48;
    __cil_tmp25 = *((fe_code_rate_t *)__cil_tmp24);
    code_rate = (u8 )__cil_tmp25;
  } else {
    __cil_tmp26 = (unsigned long )p;
    __cil_tmp27 = __cil_tmp26 + 52;
    __cil_tmp28 = *((fe_code_rate_t *)__cil_tmp27);
    code_rate = (u8 )__cil_tmp28;
  }
  }
  {
  __cil_tmp29 = 28UL / 4UL;
  __cil_tmp30 = __cil_tmp29 + 0UL;
  __cil_tmp31 = (unsigned long )code_rate;
  if (__cil_tmp31 >= __cil_tmp30) {
    return (-22);
  } else {
  }
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp32 = & it913x_debug;
    __cil_tmp33 = *__cil_tmp32;
    if (1 & __cil_tmp33) {
      {
      printk("<7>it913x-fe: Reg VAR_P_INBAND:%d Calc Offset Value:%d", ret, temp);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp34 = (unsigned long )p;
  __cil_tmp35 = __cil_tmp34 + 8;
  __cil_tmp36 = *((fe_modulation_t *)__cil_tmp35);
  if ((int )__cil_tmp36 == 0) {
    goto case_0;
  } else
  if ((int )__cil_tmp36 == 1) {
    goto case_1;
  } else
  if ((int )__cil_tmp36 == 3) {
    goto case_3;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      __cil_tmp37 = code_rate * 4UL;
      __cil_tmp38 = (unsigned long )(it913x_qpsk_pval) + __cil_tmp37;
      __cil_tmp39 = *((int *)__cil_tmp38);
      temp = temp - __cil_tmp39;
      goto switch_break;
      case_1:
      __cil_tmp40 = code_rate * 4UL;
      __cil_tmp41 = (unsigned long )(it913x_16qam_pval) + __cil_tmp40;
      __cil_tmp42 = *((int *)__cil_tmp41);
      temp = temp - __cil_tmp42;
      goto switch_break;
      case_3:
      __cil_tmp43 = code_rate * 4UL;
      __cil_tmp44 = (unsigned long )(it913x_64qam_pval) + __cil_tmp43;
      __cil_tmp45 = *((int *)__cil_tmp44);
      temp = temp - __cil_tmp45;
      goto switch_break;
      switch_default:
      return (-22);
    } else {
      switch_break: ;
    }
    }
  }
  }
  if (temp < -15) {
    ret = 0;
  } else
  if (-15 <= temp) {
    if (temp < 0) {
      __cil_tmp46 = temp + 15;
      __cil_tmp47 = 2 * __cil_tmp46;
      ret = __cil_tmp47 / 3;
    } else {
      goto _L___1;
    }
  } else
  _L___1:
  if (0 <= temp) {
    if (temp < 20) {
      __cil_tmp48 = 4 * temp;
      ret = __cil_tmp48 + 10;
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if (20 <= temp) {
    if (temp < 35) {
      __cil_tmp49 = temp - 20;
      __cil_tmp50 = 2 * __cil_tmp49;
      __cil_tmp51 = __cil_tmp50 / 3;
      ret = __cil_tmp51 + 90;
    } else {
      goto _L;
    }
  } else
  _L:
  if (temp >= 35) {
    ret = 100;
  } else {
  }
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp52 = & it913x_debug;
    __cil_tmp53 = *__cil_tmp52;
    if (1 & __cil_tmp53) {
      {
      printk("<7>it913x-fe: Signal Strength :%d", ret);
      }
    } else {
    }
    }
    goto while_break___0;
  }
  while_break___0: ;
  }
  return (ret);
}
}
static int it913x_fe_read_signal_strength(struct dvb_frontend *fe , u16 *strength )
{ struct it913x_fe_state *state ;
  int ret ;
  int tmp___7 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  void *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct ite_config *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  fe_status_t __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  u32 __cil_tmp18 ;
  u32 __cil_tmp19 ;
  u32 __cil_tmp20 ;
  u32 __cil_tmp21 ;
  {
  __cil_tmp6 = (unsigned long )fe;
  __cil_tmp7 = __cil_tmp6 + 760;
  __cil_tmp8 = *((void **)__cil_tmp7);
  state = (struct it913x_fe_state *)__cil_tmp8;
  ret = 0;
  {
  __cil_tmp9 = (unsigned long )state;
  __cil_tmp10 = __cil_tmp9 + 968;
  __cil_tmp11 = *((struct ite_config **)__cil_tmp10);
  __cil_tmp12 = (unsigned long )__cil_tmp11;
  __cil_tmp13 = __cil_tmp12 + 14;
  if (*((u8 *)__cil_tmp13)) {
    {
    __cil_tmp14 = (unsigned long )state;
    __cil_tmp15 = __cil_tmp14 + 1016;
    __cil_tmp16 = *((fe_status_t *)__cil_tmp15);
    __cil_tmp17 = (unsigned int )__cil_tmp16;
    if (__cil_tmp17 & 1U) {
      {
      __cil_tmp18 = (u32 )72;
      ret = it913x_read_reg_u8(state, __cil_tmp18);
      }
    } else {
    }
    }
  } else {
    {
    ret = it913x_get_signal_strength(fe);
    }
  }
  }
  if (ret >= 0) {
    __cil_tmp19 = (u32 )ret;
    __cil_tmp20 = __cil_tmp19 * 65535U;
    __cil_tmp21 = __cil_tmp20 / 100U;
    *strength = (u16 )__cil_tmp21;
  } else {
  }
  if (ret < 0) {
    tmp___7 = -19;
  } else {
    tmp___7 = 0;
  }
  return (tmp___7);
}
}
static int it913x_fe_read_snr(struct dvb_frontend *fe , u16 *snr )
{ struct it913x_fe_state *state ;
  int ret ;
  u8 reg[3] ;
  u32 snr_val ;
  u32 snr_min ;
  u32 snr_max ;
  u32 temp ;
  int tmp___7 ;
  int tmp___8 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void *__cil_tmp14 ;
  u32 __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  u8 *__cil_tmp18 ;
  u8 __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  u8 __cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  u8 __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  u8 __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  u32 __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  u32 __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  u8 *__cil_tmp40 ;
  u8 __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  u8 __cil_tmp46 ;
  u32 __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  fe_transmit_mode_t __cil_tmp50 ;
  unsigned int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  fe_transmit_mode_t __cil_tmp54 ;
  unsigned int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  fe_modulation_t __cil_tmp58 ;
  unsigned int __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  fe_modulation_t __cil_tmp62 ;
  unsigned int __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  fe_modulation_t __cil_tmp66 ;
  unsigned int __cil_tmp67 ;
  u32 __cil_tmp68 ;
  u32 __cil_tmp69 ;
  u32 __cil_tmp70 ;
  {
  {
  __cil_tmp12 = (unsigned long )fe;
  __cil_tmp13 = __cil_tmp12 + 760;
  __cil_tmp14 = *((void **)__cil_tmp13);
  state = (struct it913x_fe_state *)__cil_tmp14;
  __cil_tmp15 = (u32 )44;
  __cil_tmp16 = 0 * 1UL;
  __cil_tmp17 = (unsigned long )(reg) + __cil_tmp16;
  __cil_tmp18 = (u8 *)__cil_tmp17;
  __cil_tmp19 = (u8 )3UL;
  ret = it913x_read_reg(state, __cil_tmp15, __cil_tmp18, __cil_tmp19);
  __cil_tmp20 = 0 * 1UL;
  __cil_tmp21 = (unsigned long )(reg) + __cil_tmp20;
  __cil_tmp22 = *((u8 *)__cil_tmp21);
  __cil_tmp23 = (unsigned int )__cil_tmp22;
  __cil_tmp24 = 1 * 1UL;
  __cil_tmp25 = (unsigned long )(reg) + __cil_tmp24;
  __cil_tmp26 = *((u8 *)__cil_tmp25);
  __cil_tmp27 = (int )__cil_tmp26;
  __cil_tmp28 = __cil_tmp27 << 8;
  __cil_tmp29 = (unsigned int )__cil_tmp28;
  __cil_tmp30 = 2 * 1UL;
  __cil_tmp31 = (unsigned long )(reg) + __cil_tmp30;
  __cil_tmp32 = *((u8 *)__cil_tmp31);
  __cil_tmp33 = (int )__cil_tmp32;
  __cil_tmp34 = __cil_tmp33 << 16;
  __cil_tmp35 = (u32 )__cil_tmp34;
  __cil_tmp36 = __cil_tmp35 | __cil_tmp29;
  snr_val = __cil_tmp36 | __cil_tmp23;
  __cil_tmp37 = (u32 )63371;
  __cil_tmp38 = 0 * 1UL;
  __cil_tmp39 = (unsigned long )(reg) + __cil_tmp38;
  __cil_tmp40 = (u8 *)__cil_tmp39;
  __cil_tmp41 = (u8 )1;
  tmp___7 = it913x_read_reg(state, __cil_tmp37, __cil_tmp40, __cil_tmp41);
  ret = ret | tmp___7;
  }
  {
  __cil_tmp42 = 0 * 1UL;
  __cil_tmp43 = (unsigned long )(reg) + __cil_tmp42;
  if (*((u8 *)__cil_tmp43)) {
    __cil_tmp44 = 0 * 1UL;
    __cil_tmp45 = (unsigned long )(reg) + __cil_tmp44;
    __cil_tmp46 = *((u8 *)__cil_tmp45);
    __cil_tmp47 = (u32 )__cil_tmp46;
    snr_val = snr_val / __cil_tmp47;
  } else {
  }
  }
  {
  __cil_tmp48 = (unsigned long )state;
  __cil_tmp49 = __cil_tmp48 + 988;
  __cil_tmp50 = *((fe_transmit_mode_t *)__cil_tmp49);
  __cil_tmp51 = (unsigned int )__cil_tmp50;
  if (__cil_tmp51 == 0U) {
    snr_val = snr_val * 4U;
  } else {
    {
    __cil_tmp52 = (unsigned long )state;
    __cil_tmp53 = __cil_tmp52 + 988;
    __cil_tmp54 = *((fe_transmit_mode_t *)__cil_tmp53);
    __cil_tmp55 = (unsigned int )__cil_tmp54;
    if (__cil_tmp55 == 3U) {
      snr_val = snr_val * 2U;
    } else {
    }
    }
  }
  }
  {
  __cil_tmp56 = (unsigned long )state;
  __cil_tmp57 = __cil_tmp56 + 984;
  __cil_tmp58 = *((fe_modulation_t *)__cil_tmp57);
  __cil_tmp59 = (unsigned int )__cil_tmp58;
  if (__cil_tmp59 == 0U) {
    snr_min = (u32 )739089;
    snr_max = (u32 )1643601;
  } else {
    {
    __cil_tmp60 = (unsigned long )state;
    __cil_tmp61 = __cil_tmp60 + 984;
    __cil_tmp62 = *((fe_modulation_t *)__cil_tmp61);
    __cil_tmp63 = (unsigned int )__cil_tmp62;
    if (__cil_tmp63 == 1U) {
      snr_min = (u32 )323797;
      snr_max = (u32 )817445;
    } else {
      {
      __cil_tmp64 = (unsigned long )state;
      __cil_tmp65 = __cil_tmp64 + 984;
      __cil_tmp66 = *((fe_modulation_t *)__cil_tmp65);
      __cil_tmp67 = (unsigned int )__cil_tmp66;
      if (__cil_tmp67 == 3U) {
        snr_min = (u32 )153296;
        snr_max = (u32 )403134;
      } else {
        return (-22);
      }
      }
    }
    }
  }
  }
  if (snr_val < snr_min) {
    *snr = (u16 )0;
  } else
  if (snr_val < snr_max) {
    __cil_tmp68 = snr_val - snr_min;
    temp = __cil_tmp68 >> 5;
    temp = temp * 65535U;
    __cil_tmp69 = snr_max - snr_min;
    __cil_tmp70 = __cil_tmp69 >> 5;
    temp = temp / __cil_tmp70;
    *snr = (u16 )temp;
  } else {
    *snr = (u16 )65535;
  }
  if (ret < 0) {
    tmp___8 = -19;
  } else {
    tmp___8 = 0;
  }
  return (tmp___8);
}
}
static int it913x_fe_read_ber(struct dvb_frontend *fe , u32 *ber )
{ struct it913x_fe_state *state ;
  int ret ;
  u8 reg[5] ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  void *__cil_tmp8 ;
  u32 __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  u8 *__cil_tmp12 ;
  u8 __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  u8 __cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  u8 __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  u32 __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  u32 __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  u8 __cil_tmp32 ;
  unsigned int __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  u8 __cil_tmp36 ;
  int __cil_tmp37 ;
  int __cil_tmp38 ;
  unsigned int __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  u8 __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  u32 __cil_tmp45 ;
  unsigned int __cil_tmp46 ;
  {
  {
  __cil_tmp6 = (unsigned long )fe;
  __cil_tmp7 = __cil_tmp6 + 760;
  __cil_tmp8 = *((void **)__cil_tmp7);
  state = (struct it913x_fe_state *)__cil_tmp8;
  __cil_tmp9 = (u32 )50;
  __cil_tmp10 = 0 * 1UL;
  __cil_tmp11 = (unsigned long )(reg) + __cil_tmp10;
  __cil_tmp12 = (u8 *)__cil_tmp11;
  __cil_tmp13 = (u8 )5UL;
  ret = it913x_read_reg(state, __cil_tmp9, __cil_tmp12, __cil_tmp13);
  __cil_tmp14 = (unsigned long )state;
  __cil_tmp15 = __cil_tmp14 + 1028;
  __cil_tmp16 = 0 * 1UL;
  __cil_tmp17 = (unsigned long )(reg) + __cil_tmp16;
  __cil_tmp18 = *((u8 *)__cil_tmp17);
  __cil_tmp19 = (unsigned int )__cil_tmp18;
  __cil_tmp20 = 1 * 1UL;
  __cil_tmp21 = (unsigned long )(reg) + __cil_tmp20;
  __cil_tmp22 = *((u8 *)__cil_tmp21);
  __cil_tmp23 = (int )__cil_tmp22;
  __cil_tmp24 = __cil_tmp23 << 8;
  __cil_tmp25 = (u32 )__cil_tmp24;
  __cil_tmp26 = __cil_tmp25 | __cil_tmp19;
  __cil_tmp27 = (unsigned long )state;
  __cil_tmp28 = __cil_tmp27 + 1028;
  __cil_tmp29 = *((u32 *)__cil_tmp28);
  *((u32 *)__cil_tmp15) = __cil_tmp29 + __cil_tmp26;
  __cil_tmp30 = 2 * 1UL;
  __cil_tmp31 = (unsigned long )(reg) + __cil_tmp30;
  __cil_tmp32 = *((u8 *)__cil_tmp31);
  __cil_tmp33 = (unsigned int )__cil_tmp32;
  __cil_tmp34 = 3 * 1UL;
  __cil_tmp35 = (unsigned long )(reg) + __cil_tmp34;
  __cil_tmp36 = *((u8 *)__cil_tmp35);
  __cil_tmp37 = (int )__cil_tmp36;
  __cil_tmp38 = __cil_tmp37 << 8;
  __cil_tmp39 = (unsigned int )__cil_tmp38;
  __cil_tmp40 = 4 * 1UL;
  __cil_tmp41 = (unsigned long )(reg) + __cil_tmp40;
  __cil_tmp42 = *((u8 *)__cil_tmp41);
  __cil_tmp43 = (int )__cil_tmp42;
  __cil_tmp44 = __cil_tmp43 << 16;
  __cil_tmp45 = (u32 )__cil_tmp44;
  __cil_tmp46 = __cil_tmp45 | __cil_tmp39;
  *ber = __cil_tmp46 | __cil_tmp33;
  }
  return (0);
}
}
static int it913x_fe_read_ucblocks(struct dvb_frontend *fe , u32 *ucblocks )
{ struct it913x_fe_state *state ;
  int ret ;
  u8 reg[2] ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  void *__cil_tmp8 ;
  u32 __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  u8 *__cil_tmp12 ;
  u8 __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  u8 __cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  u8 __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  u32 __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  u32 __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  {
  {
  __cil_tmp6 = (unsigned long )fe;
  __cil_tmp7 = __cil_tmp6 + 760;
  __cil_tmp8 = *((void **)__cil_tmp7);
  state = (struct it913x_fe_state *)__cil_tmp8;
  __cil_tmp9 = (u32 )50;
  __cil_tmp10 = 0 * 1UL;
  __cil_tmp11 = (unsigned long )(reg) + __cil_tmp10;
  __cil_tmp12 = (u8 *)__cil_tmp11;
  __cil_tmp13 = (u8 )2UL;
  ret = it913x_read_reg(state, __cil_tmp9, __cil_tmp12, __cil_tmp13);
  __cil_tmp14 = (unsigned long )state;
  __cil_tmp15 = __cil_tmp14 + 1028;
  __cil_tmp16 = 0 * 1UL;
  __cil_tmp17 = (unsigned long )(reg) + __cil_tmp16;
  __cil_tmp18 = *((u8 *)__cil_tmp17);
  __cil_tmp19 = (unsigned int )__cil_tmp18;
  __cil_tmp20 = 1 * 1UL;
  __cil_tmp21 = (unsigned long )(reg) + __cil_tmp20;
  __cil_tmp22 = *((u8 *)__cil_tmp21);
  __cil_tmp23 = (int )__cil_tmp22;
  __cil_tmp24 = __cil_tmp23 << 8;
  __cil_tmp25 = (u32 )__cil_tmp24;
  __cil_tmp26 = __cil_tmp25 | __cil_tmp19;
  __cil_tmp27 = (unsigned long )state;
  __cil_tmp28 = __cil_tmp27 + 1028;
  __cil_tmp29 = *((u32 *)__cil_tmp28);
  *((u32 *)__cil_tmp15) = __cil_tmp29 + __cil_tmp26;
  __cil_tmp30 = (unsigned long )state;
  __cil_tmp31 = __cil_tmp30 + 1028;
  *ucblocks = *((u32 *)__cil_tmp31);
  }
  return (ret);
}
}
static int it913x_fe_get_frontend(struct dvb_frontend *fe )
{ struct dtv_frontend_properties *p ;
  struct it913x_fe_state *state ;
  int ret ;
  u8 reg[8] ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void *__cil_tmp10 ;
  u32 __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  u8 *__cil_tmp14 ;
  u8 __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  u8 __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  u8 __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  u8 __cil_tmp29 ;
  int __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  u8 __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  u8 __cil_tmp40 ;
  int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  u8 __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  u8 __cil_tmp51 ;
  int __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  u8 __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  u8 __cil_tmp66 ;
  int __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  u8 __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  u8 __cil_tmp79 ;
  int __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  u8 __cil_tmp85 ;
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
  {
  {
  __cil_tmp6 = (unsigned long )fe;
  __cil_tmp7 = __cil_tmp6 + 800;
  p = (struct dtv_frontend_properties *)__cil_tmp7;
  __cil_tmp8 = (unsigned long )fe;
  __cil_tmp9 = __cil_tmp8 + 760;
  __cil_tmp10 = *((void **)__cil_tmp9);
  state = (struct it913x_fe_state *)__cil_tmp10;
  __cil_tmp11 = (u32 )63744;
  __cil_tmp12 = 0 * 1UL;
  __cil_tmp13 = (unsigned long )(reg) + __cil_tmp12;
  __cil_tmp14 = (u8 *)__cil_tmp13;
  __cil_tmp15 = (u8 )8UL;
  ret = it913x_read_reg(state, __cil_tmp11, __cil_tmp14, __cil_tmp15);
  }
  {
  __cil_tmp16 = 3 * 1UL;
  __cil_tmp17 = (unsigned long )(reg) + __cil_tmp16;
  __cil_tmp18 = *((u8 *)__cil_tmp17);
  __cil_tmp19 = (int )__cil_tmp18;
  if (__cil_tmp19 < 3) {
    __cil_tmp20 = (unsigned long )p;
    __cil_tmp21 = __cil_tmp20 + 8;
    __cil_tmp22 = 3 * 1UL;
    __cil_tmp23 = (unsigned long )(reg) + __cil_tmp22;
    __cil_tmp24 = *((u8 *)__cil_tmp23);
    __cil_tmp25 = __cil_tmp24 * 4UL;
    __cil_tmp26 = (unsigned long )(fe_con) + __cil_tmp25;
    *((fe_modulation_t *)__cil_tmp21) = *((fe_modulation_t *)__cil_tmp26);
  } else {
  }
  }
  {
  __cil_tmp27 = 0 * 1UL;
  __cil_tmp28 = (unsigned long )(reg) + __cil_tmp27;
  __cil_tmp29 = *((u8 *)__cil_tmp28);
  __cil_tmp30 = (int )__cil_tmp29;
  if (__cil_tmp30 < 3) {
    __cil_tmp31 = (unsigned long )p;
    __cil_tmp32 = __cil_tmp31 + 28;
    __cil_tmp33 = 0 * 1UL;
    __cil_tmp34 = (unsigned long )(reg) + __cil_tmp33;
    __cil_tmp35 = *((u8 *)__cil_tmp34);
    __cil_tmp36 = __cil_tmp35 * 4UL;
    __cil_tmp37 = (unsigned long )(fe_mode) + __cil_tmp36;
    *((fe_transmit_mode_t *)__cil_tmp32) = *((fe_transmit_mode_t *)__cil_tmp37);
  } else {
  }
  }
  {
  __cil_tmp38 = 1 * 1UL;
  __cil_tmp39 = (unsigned long )(reg) + __cil_tmp38;
  __cil_tmp40 = *((u8 *)__cil_tmp39);
  __cil_tmp41 = (int )__cil_tmp40;
  if (__cil_tmp41 < 4) {
    __cil_tmp42 = (unsigned long )p;
    __cil_tmp43 = __cil_tmp42 + 36;
    __cil_tmp44 = 1 * 1UL;
    __cil_tmp45 = (unsigned long )(reg) + __cil_tmp44;
    __cil_tmp46 = *((u8 *)__cil_tmp45);
    __cil_tmp47 = __cil_tmp46 * 4UL;
    __cil_tmp48 = (unsigned long )(fe_gi) + __cil_tmp47;
    *((fe_guard_interval_t *)__cil_tmp43) = *((fe_guard_interval_t *)__cil_tmp48);
  } else {
  }
  }
  {
  __cil_tmp49 = 2 * 1UL;
  __cil_tmp50 = (unsigned long )(reg) + __cil_tmp49;
  __cil_tmp51 = *((u8 *)__cil_tmp50);
  __cil_tmp52 = (int )__cil_tmp51;
  if (__cil_tmp52 < 4) {
    __cil_tmp53 = (unsigned long )p;
    __cil_tmp54 = __cil_tmp53 + 40;
    __cil_tmp55 = 2 * 1UL;
    __cil_tmp56 = (unsigned long )(reg) + __cil_tmp55;
    __cil_tmp57 = *((u8 *)__cil_tmp56);
    __cil_tmp58 = __cil_tmp57 * 4UL;
    __cil_tmp59 = (unsigned long )(fe_hi) + __cil_tmp58;
    *((fe_hierarchy_t *)__cil_tmp54) = *((fe_hierarchy_t *)__cil_tmp59);
  } else {
  }
  }
  __cil_tmp60 = (unsigned long )state;
  __cil_tmp61 = __cil_tmp60 + 992;
  __cil_tmp62 = 5 * 1UL;
  __cil_tmp63 = (unsigned long )(reg) + __cil_tmp62;
  *((u8 *)__cil_tmp61) = *((u8 *)__cil_tmp63);
  {
  __cil_tmp64 = 6 * 1UL;
  __cil_tmp65 = (unsigned long )(reg) + __cil_tmp64;
  __cil_tmp66 = *((u8 *)__cil_tmp65);
  __cil_tmp67 = (int )__cil_tmp66;
  if (__cil_tmp67 < 6) {
    __cil_tmp68 = (unsigned long )p;
    __cil_tmp69 = __cil_tmp68 + 48;
    __cil_tmp70 = 6 * 1UL;
    __cil_tmp71 = (unsigned long )(reg) + __cil_tmp70;
    __cil_tmp72 = *((u8 *)__cil_tmp71);
    __cil_tmp73 = __cil_tmp72 * 4UL;
    __cil_tmp74 = (unsigned long )(fe_code) + __cil_tmp73;
    *((fe_code_rate_t *)__cil_tmp69) = *((fe_code_rate_t *)__cil_tmp74);
  } else {
    __cil_tmp75 = (unsigned long )p;
    __cil_tmp76 = __cil_tmp75 + 48;
    *((fe_code_rate_t *)__cil_tmp76) = (fe_code_rate_t )0;
  }
  }
  {
  __cil_tmp77 = 7 * 1UL;
  __cil_tmp78 = (unsigned long )(reg) + __cil_tmp77;
  __cil_tmp79 = *((u8 *)__cil_tmp78);
  __cil_tmp80 = (int )__cil_tmp79;
  if (__cil_tmp80 < 6) {
    __cil_tmp81 = (unsigned long )p;
    __cil_tmp82 = __cil_tmp81 + 52;
    __cil_tmp83 = 7 * 1UL;
    __cil_tmp84 = (unsigned long )(reg) + __cil_tmp83;
    __cil_tmp85 = *((u8 *)__cil_tmp84);
    __cil_tmp86 = __cil_tmp85 * 4UL;
    __cil_tmp87 = (unsigned long )(fe_code) + __cil_tmp86;
    *((fe_code_rate_t *)__cil_tmp82) = *((fe_code_rate_t *)__cil_tmp87);
  } else {
    __cil_tmp88 = (unsigned long )p;
    __cil_tmp89 = __cil_tmp88 + 52;
    *((fe_code_rate_t *)__cil_tmp89) = (fe_code_rate_t )0;
  }
  }
  __cil_tmp90 = (unsigned long )state;
  __cil_tmp91 = __cil_tmp90 + 984;
  __cil_tmp92 = (unsigned long )p;
  __cil_tmp93 = __cil_tmp92 + 8;
  *((fe_modulation_t *)__cil_tmp91) = *((fe_modulation_t *)__cil_tmp93);
  __cil_tmp94 = (unsigned long )state;
  __cil_tmp95 = __cil_tmp94 + 988;
  __cil_tmp96 = (unsigned long )p;
  __cil_tmp97 = __cil_tmp96 + 28;
  *((fe_transmit_mode_t *)__cil_tmp95) = *((fe_transmit_mode_t *)__cil_tmp97);
  return (0);
}
}
static int it913x_fe_set_frontend(struct dvb_frontend *fe )
{ struct dtv_frontend_properties *p ;
  struct it913x_fe_state *state ;
  int ret ;
  int i ;
  u8 empty_ch ;
  u8 last_ch ;
  int tmp___7 ;
  int tmp___8 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  u32 __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  u32 __cil_tmp22 ;
  u8 __cil_tmp23 ;
  u32 __cil_tmp24 ;
  u32 __cil_tmp25 ;
  u8 __cil_tmp26 ;
  u32 __cil_tmp27 ;
  u32 __cil_tmp28 ;
  u8 __cil_tmp29 ;
  u32 __cil_tmp30 ;
  u32 __cil_tmp31 ;
  u8 __cil_tmp32 ;
  u32 __cil_tmp33 ;
  u32 __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  u32 __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  u32 __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  u32 __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  u32 __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  u32 __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  u32 __cil_tmp52 ;
  u8 __cil_tmp53 ;
  u32 __cil_tmp54 ;
  u32 __cil_tmp55 ;
  int *__cil_tmp56 ;
  int __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  u8 __cil_tmp60 ;
  int __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  u8 __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  u32 __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  u32 __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  int (*__cil_tmp79)(struct dvb_frontend *fe ) ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  int (*__cil_tmp86)(struct dvb_frontend *fe , int enable ) ;
  u8 __cil_tmp87 ;
  u32 __cil_tmp88 ;
  u32 __cil_tmp89 ;
  u8 __cil_tmp90 ;
  u32 __cil_tmp91 ;
  u32 __cil_tmp92 ;
  u32 __cil_tmp93 ;
  int __cil_tmp94 ;
  int __cil_tmp95 ;
  int __cil_tmp96 ;
  int __cil_tmp97 ;
  u32 __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  {
  {
  __cil_tmp10 = (unsigned long )fe;
  __cil_tmp11 = __cil_tmp10 + 800;
  p = (struct dtv_frontend_properties *)__cil_tmp11;
  __cil_tmp12 = (unsigned long )fe;
  __cil_tmp13 = __cil_tmp12 + 760;
  __cil_tmp14 = *((void **)__cil_tmp13);
  state = (struct it913x_fe_state *)__cil_tmp14;
  __cil_tmp15 = (unsigned long )state;
  __cil_tmp16 = __cil_tmp15 + 1016;
  *((fe_status_t *)__cil_tmp16) = (fe_status_t )0;
  __cil_tmp17 = (unsigned long )p;
  __cil_tmp18 = __cil_tmp17 + 32;
  __cil_tmp19 = *((u32 *)__cil_tmp18);
  __cil_tmp20 = (unsigned long )state;
  __cil_tmp21 = __cil_tmp20 + 1000;
  __cil_tmp22 = *((u32 *)__cil_tmp21);
  ret = it913x_fe_select_bw(state, __cil_tmp19, __cil_tmp22);
  __cil_tmp23 = (u8 )0;
  __cil_tmp24 = (u32 )64;
  __cil_tmp25 = (u32 )0;
  ret = it913x_write_reg(state, __cil_tmp23, __cil_tmp24, __cil_tmp25);
  __cil_tmp26 = (u8 )1;
  __cil_tmp27 = (u32 )71;
  __cil_tmp28 = (u32 )0;
  ret = it913x_write_reg(state, __cil_tmp26, __cil_tmp27, __cil_tmp28);
  __cil_tmp29 = (u8 )1;
  __cil_tmp30 = (u32 )63897;
  __cil_tmp31 = (u32 )0;
  ret = it913x_write_reg(state, __cil_tmp29, __cil_tmp30, __cil_tmp31);
  __cil_tmp32 = (u8 )0;
  __cil_tmp33 = (u32 )55475;
  __cil_tmp34 = (u32 )1;
  ret = it913x_write_reg(state, __cil_tmp32, __cil_tmp33, __cil_tmp34);
  }
  {
  __cil_tmp35 = (unsigned long )p;
  __cil_tmp36 = __cil_tmp35 + 4;
  __cil_tmp37 = *((u32 *)__cil_tmp36);
  if (__cil_tmp37 >= 51000000U) {
    {
    __cil_tmp38 = (unsigned long )p;
    __cil_tmp39 = __cil_tmp38 + 4;
    __cil_tmp40 = *((u32 *)__cil_tmp39);
    if (__cil_tmp40 <= 230000000U) {
      i = 0;
    } else {
      goto _L___0;
    }
    }
  } else {
    _L___0:
    {
    __cil_tmp41 = (unsigned long )p;
    __cil_tmp42 = __cil_tmp41 + 4;
    __cil_tmp43 = *((u32 *)__cil_tmp42);
    if (__cil_tmp43 >= 350000000U) {
      {
      __cil_tmp44 = (unsigned long )p;
      __cil_tmp45 = __cil_tmp44 + 4;
      __cil_tmp46 = *((u32 *)__cil_tmp45);
      if (__cil_tmp46 <= 900000000U) {
        i = 1;
      } else {
        goto _L;
      }
      }
    } else {
      _L:
      {
      __cil_tmp47 = (unsigned long )p;
      __cil_tmp48 = __cil_tmp47 + 4;
      __cil_tmp49 = *((u32 *)__cil_tmp48);
      if (__cil_tmp49 >= 1450000000U) {
        {
        __cil_tmp50 = (unsigned long )p;
        __cil_tmp51 = __cil_tmp50 + 4;
        __cil_tmp52 = *((u32 *)__cil_tmp51);
        if (__cil_tmp52 <= 1680000000U) {
          i = 2;
        } else {
          return (-95);
        }
        }
      } else {
        return (-95);
      }
      }
    }
    }
  }
  }
  {
  __cil_tmp53 = (u8 )1;
  __cil_tmp54 = (u32 )75;
  __cil_tmp55 = (u32 )i;
  ret = it913x_write_reg(state, __cil_tmp53, __cil_tmp54, __cil_tmp55);
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp56 = & it913x_debug;
    __cil_tmp57 = *__cil_tmp56;
    if (1 & __cil_tmp57) {
      {
      __cil_tmp58 = (unsigned long )state;
      __cil_tmp59 = __cil_tmp58 + 1004;
      __cil_tmp60 = *((u8 *)__cil_tmp59);
      __cil_tmp61 = (int )__cil_tmp60;
      printk("<7>it913x-fe: Frontend Set Tuner Type %02x", __cil_tmp61);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp62 = (unsigned long )state;
  __cil_tmp63 = __cil_tmp62 + 1004;
  __cil_tmp64 = *((u8 *)__cil_tmp63);
  if ((int )__cil_tmp64 == 56) {
    goto case_56;
  } else
  if ((int )__cil_tmp64 == 81) {
    goto case_56;
  } else
  if ((int )__cil_tmp64 == 82) {
    goto case_56;
  } else
  if ((int )__cil_tmp64 == 96) {
    goto case_56;
  } else
  if ((int )__cil_tmp64 == 97) {
    goto case_56;
  } else
  if ((int )__cil_tmp64 == 98) {
    goto case_56;
  } else {
    {
    goto switch_default;
    if (0) {
      case_56:
      case_81:
      case_82:
      case_96:
      case_97:
      case_98:
      {
      __cil_tmp65 = (unsigned long )p;
      __cil_tmp66 = __cil_tmp65 + 32;
      __cil_tmp67 = *((u32 *)__cil_tmp66);
      __cil_tmp68 = (unsigned long )p;
      __cil_tmp69 = __cil_tmp68 + 4;
      __cil_tmp70 = *((u32 *)__cil_tmp69);
      ret = it9137_set_tuner(state, __cil_tmp67, __cil_tmp70);
      }
      goto switch_break;
      switch_default:
      {
      __cil_tmp71 = 384 + 176;
      __cil_tmp72 = 0 + __cil_tmp71;
      __cil_tmp73 = (unsigned long )fe;
      __cil_tmp74 = __cil_tmp73 + __cil_tmp72;
      if (*((int (**)(struct dvb_frontend *fe ))__cil_tmp74)) {
        {
        __cil_tmp75 = 384 + 176;
        __cil_tmp76 = 0 + __cil_tmp75;
        __cil_tmp77 = (unsigned long )fe;
        __cil_tmp78 = __cil_tmp77 + __cil_tmp76;
        __cil_tmp79 = *((int (**)(struct dvb_frontend *fe ))__cil_tmp78);
        (*__cil_tmp79)(fe);
        }
        {
        __cil_tmp80 = 0 + 360;
        __cil_tmp81 = (unsigned long )fe;
        __cil_tmp82 = __cil_tmp81 + __cil_tmp80;
        if (*((int (**)(struct dvb_frontend *fe , int enable ))__cil_tmp82)) {
          {
          __cil_tmp83 = 0 + 360;
          __cil_tmp84 = (unsigned long )fe;
          __cil_tmp85 = __cil_tmp84 + __cil_tmp83;
          __cil_tmp86 = *((int (**)(struct dvb_frontend *fe , int enable ))__cil_tmp85);
          (*__cil_tmp86)(fe, 0);
          }
        } else {
        }
        }
      } else {
      }
      }
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  }
  {
  __cil_tmp87 = (u8 )0;
  __cil_tmp88 = (u32 )55475;
  __cil_tmp89 = (u32 )0;
  ret = it913x_write_reg(state, __cil_tmp87, __cil_tmp88, __cil_tmp89);
  __cil_tmp90 = (u8 )1;
  __cil_tmp91 = (u32 )0;
  __cil_tmp92 = (u32 )0;
  ret = it913x_write_reg(state, __cil_tmp90, __cil_tmp91, __cil_tmp92);
  last_ch = (u8 )2;
  i = 0;
  }
  {
  while (1) {
    while_continue___0: ;
    if (i < 40) {
    } else {
      goto while_break___0;
    }
    {
    __cil_tmp93 = (u32 )71;
    tmp___7 = it913x_read_reg_u8(state, __cil_tmp93);
    empty_ch = (u8 )tmp___7;
    }
    {
    __cil_tmp94 = (int )last_ch;
    if (__cil_tmp94 == 1) {
      {
      __cil_tmp95 = (int )empty_ch;
      if (__cil_tmp95 == 1) {
        goto while_break___0;
      } else {
      }
      }
    } else {
    }
    }
    {
    __cil_tmp96 = (int )last_ch;
    if (__cil_tmp96 == 2) {
      {
      __cil_tmp97 = (int )empty_ch;
      if (__cil_tmp97 == 2) {
        return (0);
      } else {
      }
      }
    } else {
    }
    }
    {
    last_ch = empty_ch;
    msleep(25U);
    i = i + 1;
    }
  }
  while_break___0: ;
  }
  i = 0;
  {
  while (1) {
    while_continue___1: ;
    if (i < 40) {
    } else {
      goto while_break___1;
    }
    {
    __cil_tmp98 = (u32 )62889;
    tmp___8 = it913x_read_reg_u8(state, __cil_tmp98);
    }
    if (tmp___8 == 1) {
      goto while_break___1;
    } else {
    }
    {
    msleep(25U);
    i = i + 1;
    }
  }
  while_break___1: ;
  }
  __cil_tmp99 = (unsigned long )state;
  __cil_tmp100 = __cil_tmp99 + 980;
  __cil_tmp101 = (unsigned long )p;
  __cil_tmp102 = __cil_tmp101 + 4;
  *((u32 *)__cil_tmp100) = *((u32 *)__cil_tmp102);
  return (0);
}
}
static int it913x_fe_suspend(struct it913x_fe_state *state )
{ int ret ;
  int i ;
  u8 b ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  u8 __cil_tmp10 ;
  u32 __cil_tmp11 ;
  u32 __cil_tmp12 ;
  u8 __cil_tmp13 ;
  u32 __cil_tmp14 ;
  u32 __cil_tmp15 ;
  u32 __cil_tmp16 ;
  u8 __cil_tmp17 ;
  u8 *__cil_tmp18 ;
  u8 __cil_tmp19 ;
  int __cil_tmp20 ;
  u8 __cil_tmp21 ;
  u32 __cil_tmp22 ;
  u32 __cil_tmp23 ;
  u8 __cil_tmp24 ;
  u32 __cil_tmp25 ;
  u32 __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  struct it913xset *__cil_tmp29 ;
  {
  {
  __cil_tmp10 = (u8 )1;
  __cil_tmp11 = (u32 )76;
  __cil_tmp12 = (u32 )1;
  ret = it913x_write_reg(state, __cil_tmp10, __cil_tmp11, __cil_tmp12);
  __cil_tmp13 = (u8 )1;
  __cil_tmp14 = (u32 )0;
  __cil_tmp15 = (u32 )0;
  tmp___7 = it913x_write_reg(state, __cil_tmp13, __cil_tmp14, __cil_tmp15);
  ret = ret | tmp___7;
  i = 0;
  }
  {
  while (1) {
    while_continue: ;
    if (i < 128) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp16 = (u32 )76;
    __cil_tmp17 = (u8 )1;
    ret = it913x_read_reg(state, __cil_tmp16, & b, __cil_tmp17);
    }
    if (ret < 0) {
      return (-19);
    } else {
    }
    {
    __cil_tmp18 = & b;
    __cil_tmp19 = *__cil_tmp18;
    __cil_tmp20 = (int )__cil_tmp19;
    if (__cil_tmp20 == 0) {
      goto while_break;
    } else {
    }
    }
    i = i + 1;
  }
  while_break: ;
  }
  {
  __cil_tmp21 = (u8 )1;
  __cil_tmp22 = (u32 )64292;
  __cil_tmp23 = (u32 )8;
  tmp___8 = it913x_write_reg(state, __cil_tmp21, __cil_tmp22, __cil_tmp23);
  ret = ret | tmp___8;
  __cil_tmp24 = (u8 )0;
  __cil_tmp25 = (u32 )55475;
  __cil_tmp26 = (u32 )0;
  tmp___9 = it913x_write_reg(state, __cil_tmp24, __cil_tmp25, __cil_tmp26);
  ret = ret | tmp___9;
  __cil_tmp27 = 0 * 24UL;
  __cil_tmp28 = (unsigned long )(it9137_tuner_off) + __cil_tmp27;
  __cil_tmp29 = (struct it913xset *)__cil_tmp28;
  tmp___10 = it913x_fe_script_loader(state, __cil_tmp29);
  ret = ret | tmp___10;
  }
  if (ret < 0) {
    tmp___11 = -19;
  } else {
    tmp___11 = 0;
  }
  return (tmp___11);
}
}
static int it913x_fe_sleep(struct dvb_frontend *fe )
{ struct it913x_fe_state *state ;
  int tmp___7 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void *__cil_tmp6 ;
  {
  {
  __cil_tmp4 = (unsigned long )fe;
  __cil_tmp5 = __cil_tmp4 + 760;
  __cil_tmp6 = *((void **)__cil_tmp5);
  state = (struct it913x_fe_state *)__cil_tmp6;
  tmp___7 = it913x_fe_suspend(state);
  }
  return (tmp___7);
}
}
static u32 compute_div(u32 a , u32 b , u32 x )
{ u32 res ;
  u32 c ;
  u32 i ;
  u32 __cil_tmp7 ;
  u32 __cil_tmp8 ;
  {
  res = (u32 )0;
  c = (u32 )0;
  i = (u32 )0;
  if (a > b) {
    c = a / b;
    __cil_tmp7 = c * b;
    a = a - __cil_tmp7;
  } else {
  }
  i = (u32 )0;
  {
  while (1) {
    while_continue: ;
    if (i < x) {
    } else {
      goto while_break;
    }
    if (a >= b) {
      res = res + 1U;
      a = a - b;
    } else {
    }
    a = a << 1;
    res = res << 1;
    i = i + 1U;
  }
  while_break: ;
  }
  __cil_tmp8 = c << x;
  res = __cil_tmp8 + res;
  return (res);
}
}
static int it913x_fe_start(struct it913x_fe_state *state )
{ struct it913xset *set_lna ;
  struct it913xset *set_mode ;
  int ret ;
  u8 adf ;
  u32 adc ;
  u32 xtal ;
  u8 b[4] ;
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
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct ite_config *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  u8 __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  struct ite_config *__cil_tmp34 ;
  u8 __cil_tmp35 ;
  int __cil_tmp36 ;
  int __cil_tmp37 ;
  int __cil_tmp38 ;
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
  struct adctable *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  u32 __cil_tmp55 ;
  u32 __cil_tmp56 ;
  u32 __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  u32 __cil_tmp60 ;
  u32 __cil_tmp61 ;
  u32 __cil_tmp62 ;
  u8 __cil_tmp63 ;
  u32 __cil_tmp64 ;
  u32 __cil_tmp65 ;
  u8 __cil_tmp66 ;
  u32 __cil_tmp67 ;
  u32 __cil_tmp68 ;
  u8 __cil_tmp69 ;
  u32 __cil_tmp70 ;
  u32 __cil_tmp71 ;
  u8 __cil_tmp72 ;
  u32 __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  u8 __cil_tmp76 ;
  u32 __cil_tmp77 ;
  u8 __cil_tmp78 ;
  u32 __cil_tmp79 ;
  u32 __cil_tmp80 ;
  u8 __cil_tmp81 ;
  u32 __cil_tmp82 ;
  u32 __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned int __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  u32 __cil_tmp89 ;
  unsigned int __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  u32 __cil_tmp93 ;
  unsigned int __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  u32 __cil_tmp97 ;
  u8 __cil_tmp98 ;
  u32 __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  u8 *__cil_tmp102 ;
  u8 __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned int __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  u32 __cil_tmp109 ;
  unsigned int __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  u32 __cil_tmp113 ;
  unsigned int __cil_tmp114 ;
  u8 __cil_tmp115 ;
  u32 __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  u8 *__cil_tmp119 ;
  u8 __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  struct ite_config *__cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  u8 __cil_tmp126 ;
  u32 __cil_tmp127 ;
  u32 __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  u8 __cil_tmp135 ;
  u32 __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  u8 *__cil_tmp139 ;
  u8 __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  u32 __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  u32 __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  struct ite_config *__cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  u8 __cil_tmp152 ;
  int __cil_tmp153 ;
  int *__cil_tmp154 ;
  int __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  struct ite_config *__cil_tmp158 ;
  u8 __cil_tmp159 ;
  int __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  struct it913xset *__cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  struct it913xset *__cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  u8 __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  unsigned long __cil_tmp173 ;
  unsigned long __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  unsigned long __cil_tmp180 ;
  unsigned long __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  unsigned long __cil_tmp183 ;
  u8 __cil_tmp184 ;
  int __cil_tmp185 ;
  unsigned long __cil_tmp186 ;
  unsigned long __cil_tmp187 ;
  struct ite_config *__cil_tmp188 ;
  u8 __cil_tmp189 ;
  int __cil_tmp190 ;
  u8 __cil_tmp191 ;
  u32 __cil_tmp192 ;
  u32 __cil_tmp193 ;
  u8 __cil_tmp194 ;
  u32 __cil_tmp195 ;
  u32 __cil_tmp196 ;
  u8 __cil_tmp197 ;
  u32 __cil_tmp198 ;
  u32 __cil_tmp199 ;
  unsigned long __cil_tmp200 ;
  unsigned long __cil_tmp201 ;
  {
  __cil_tmp24 = (unsigned long )state;
  __cil_tmp25 = __cil_tmp24 + 968;
  __cil_tmp26 = *((struct ite_config **)__cil_tmp25);
  __cil_tmp27 = (unsigned long )__cil_tmp26;
  __cil_tmp28 = __cil_tmp27 + 13;
  __cil_tmp29 = *((u8 *)__cil_tmp28);
  __cil_tmp30 = (int )__cil_tmp29;
  __cil_tmp31 = __cil_tmp30 & 15;
  adf = (u8 )__cil_tmp31;
  {
  __cil_tmp32 = (unsigned long )state;
  __cil_tmp33 = __cil_tmp32 + 968;
  __cil_tmp34 = *((struct ite_config **)__cil_tmp33);
  __cil_tmp35 = *((u8 *)__cil_tmp34);
  __cil_tmp36 = (int )__cil_tmp35;
  if (__cil_tmp36 == 1) {
    {
    ret = it913x_init_tuner(state);
    }
  } else {
  }
  }
  {
  __cil_tmp37 = (int )adf;
  printk("<6>it913x-fe: ADF table value\t:%02x\n", __cil_tmp37);
  }
  {
  __cil_tmp38 = (int )adf;
  if (__cil_tmp38 < 10) {
    {
    __cil_tmp39 = (unsigned long )state;
    __cil_tmp40 = __cil_tmp39 + 996;
    __cil_tmp41 = adf * 16UL;
    __cil_tmp42 = (unsigned long )(fe_clockTable) + __cil_tmp41;
    *((u32 *)__cil_tmp40) = *((u32 *)__cil_tmp42);
    __cil_tmp43 = (unsigned long )state;
    __cil_tmp44 = __cil_tmp43 + 1008;
    __cil_tmp45 = adf * 16UL;
    __cil_tmp46 = __cil_tmp45 + 8;
    __cil_tmp47 = (unsigned long )(fe_clockTable) + __cil_tmp46;
    *((struct adctable **)__cil_tmp44) = *((struct adctable **)__cil_tmp47);
    __cil_tmp48 = (unsigned long )state;
    __cil_tmp49 = __cil_tmp48 + 1000;
    __cil_tmp50 = (unsigned long )state;
    __cil_tmp51 = __cil_tmp50 + 1008;
    __cil_tmp52 = *((struct adctable **)__cil_tmp51);
    *((u32 *)__cil_tmp49) = *((u32 *)__cil_tmp52);
    __cil_tmp53 = (unsigned long )state;
    __cil_tmp54 = __cil_tmp53 + 1000;
    __cil_tmp55 = *((u32 *)__cil_tmp54);
    __cil_tmp56 = (u32 )1000000UL;
    __cil_tmp57 = (u32 )19UL;
    adc = compute_div(__cil_tmp55, __cil_tmp56, __cil_tmp57);
    __cil_tmp58 = (unsigned long )state;
    __cil_tmp59 = __cil_tmp58 + 996;
    __cil_tmp60 = *((u32 *)__cil_tmp59);
    __cil_tmp61 = (u32 )1000000UL;
    __cil_tmp62 = (u32 )19UL;
    xtal = compute_div(__cil_tmp60, __cil_tmp61, __cil_tmp62);
    }
  } else {
    return (-22);
  }
  }
  {
  __cil_tmp63 = (u8 )0;
  __cil_tmp64 = (u32 )55476;
  __cil_tmp65 = (u32 )1;
  ret = it913x_write_reg(state, __cil_tmp63, __cil_tmp64, __cil_tmp65);
  __cil_tmp66 = (u8 )0;
  __cil_tmp67 = (u32 )55477;
  __cil_tmp68 = (u32 )1;
  tmp___7 = it913x_write_reg(state, __cil_tmp66, __cil_tmp67, __cil_tmp68);
  ret = ret | tmp___7;
  __cil_tmp69 = (u8 )0;
  __cil_tmp70 = (u32 )55475;
  __cil_tmp71 = (u32 )1;
  tmp___8 = it913x_write_reg(state, __cil_tmp69, __cil_tmp70, __cil_tmp71);
  ret = ret | tmp___8;
  __cil_tmp72 = (u8 )0;
  __cil_tmp73 = (u32 )63041;
  __cil_tmp74 = (unsigned long )state;
  __cil_tmp75 = __cil_tmp74 + 1004;
  __cil_tmp76 = *((u8 *)__cil_tmp75);
  __cil_tmp77 = (u32 )__cil_tmp76;
  tmp___9 = it913x_write_reg(state, __cil_tmp72, __cil_tmp73, __cil_tmp77);
  ret = ret | tmp___9;
  __cil_tmp78 = (u8 )1;
  __cil_tmp79 = (u32 )62922;
  __cil_tmp80 = (u32 )1;
  tmp___10 = it913x_write_reg(state, __cil_tmp78, __cil_tmp79, __cil_tmp80);
  ret = ret | tmp___10;
  __cil_tmp81 = (u8 )1;
  __cil_tmp82 = (u32 )63253;
  __cil_tmp83 = (u32 )1;
  tmp___11 = it913x_write_reg(state, __cil_tmp81, __cil_tmp82, __cil_tmp83);
  ret = ret | tmp___11;
  __cil_tmp84 = 0 * 1UL;
  __cil_tmp85 = (unsigned long )(b) + __cil_tmp84;
  __cil_tmp86 = xtal & 255U;
  *((u8 *)__cil_tmp85) = (u8 )__cil_tmp86;
  __cil_tmp87 = 1 * 1UL;
  __cil_tmp88 = (unsigned long )(b) + __cil_tmp87;
  __cil_tmp89 = xtal >> 8;
  __cil_tmp90 = __cil_tmp89 & 255U;
  *((u8 *)__cil_tmp88) = (u8 )__cil_tmp90;
  __cil_tmp91 = 2 * 1UL;
  __cil_tmp92 = (unsigned long )(b) + __cil_tmp91;
  __cil_tmp93 = xtal >> 16;
  __cil_tmp94 = __cil_tmp93 & 255U;
  *((u8 *)__cil_tmp92) = (u8 )__cil_tmp94;
  __cil_tmp95 = 3 * 1UL;
  __cil_tmp96 = (unsigned long )(b) + __cil_tmp95;
  __cil_tmp97 = xtal >> 24;
  *((u8 *)__cil_tmp96) = (u8 )__cil_tmp97;
  __cil_tmp98 = (u8 )1;
  __cil_tmp99 = (u32 )37;
  __cil_tmp100 = 0 * 1UL;
  __cil_tmp101 = (unsigned long )(b) + __cil_tmp100;
  __cil_tmp102 = (u8 *)__cil_tmp101;
  __cil_tmp103 = (u8 )4;
  tmp___12 = it913x_write(state, __cil_tmp98, __cil_tmp99, __cil_tmp102, __cil_tmp103);
  ret = ret | tmp___12;
  __cil_tmp104 = 0 * 1UL;
  __cil_tmp105 = (unsigned long )(b) + __cil_tmp104;
  __cil_tmp106 = adc & 255U;
  *((u8 *)__cil_tmp105) = (u8 )__cil_tmp106;
  __cil_tmp107 = 1 * 1UL;
  __cil_tmp108 = (unsigned long )(b) + __cil_tmp107;
  __cil_tmp109 = adc >> 8;
  __cil_tmp110 = __cil_tmp109 & 255U;
  *((u8 *)__cil_tmp108) = (u8 )__cil_tmp110;
  __cil_tmp111 = 2 * 1UL;
  __cil_tmp112 = (unsigned long )(b) + __cil_tmp111;
  __cil_tmp113 = adc >> 16;
  __cil_tmp114 = __cil_tmp113 & 255U;
  *((u8 *)__cil_tmp112) = (u8 )__cil_tmp114;
  __cil_tmp115 = (u8 )1;
  __cil_tmp116 = (u32 )61901;
  __cil_tmp117 = 0 * 1UL;
  __cil_tmp118 = (unsigned long )(b) + __cil_tmp117;
  __cil_tmp119 = (u8 *)__cil_tmp118;
  __cil_tmp120 = (u8 )3;
  tmp___13 = it913x_write(state, __cil_tmp115, __cil_tmp116, __cil_tmp119, __cil_tmp120);
  ret = ret | tmp___13;
  }
  {
  __cil_tmp121 = (unsigned long )state;
  __cil_tmp122 = __cil_tmp121 + 968;
  __cil_tmp123 = *((struct ite_config **)__cil_tmp122);
  __cil_tmp124 = (unsigned long )__cil_tmp123;
  __cil_tmp125 = __cil_tmp124 + 9;
  if (*((u8 *)__cil_tmp125)) {
    {
    __cil_tmp126 = (u8 )1;
    __cil_tmp127 = (u32 )69;
    __cil_tmp128 = (u32 )1;
    tmp___14 = it913x_write_reg(state, __cil_tmp126, __cil_tmp127, __cil_tmp128);
    ret = ret | tmp___14;
    }
  } else {
  }
  }
  {
  __cil_tmp129 = 0 * 1UL;
  __cil_tmp130 = (unsigned long )(b) + __cil_tmp129;
  *((u8 *)__cil_tmp130) = (u8 )0;
  __cil_tmp131 = 1 * 1UL;
  __cil_tmp132 = (unsigned long )(b) + __cil_tmp131;
  *((u8 *)__cil_tmp132) = (u8 )0;
  __cil_tmp133 = 2 * 1UL;
  __cil_tmp134 = (unsigned long )(b) + __cil_tmp133;
  *((u8 *)__cil_tmp134) = (u8 )0;
  __cil_tmp135 = (u8 )1;
  __cil_tmp136 = (u32 )41;
  __cil_tmp137 = 0 * 1UL;
  __cil_tmp138 = (unsigned long )(b) + __cil_tmp137;
  __cil_tmp139 = (u8 *)__cil_tmp138;
  __cil_tmp140 = (u8 )3;
  tmp___15 = it913x_write(state, __cil_tmp135, __cil_tmp136, __cil_tmp139, __cil_tmp140);
  ret = ret | tmp___15;
  __cil_tmp141 = (unsigned long )state;
  __cil_tmp142 = __cil_tmp141 + 996;
  __cil_tmp143 = *((u32 *)__cil_tmp142);
  __cil_tmp144 = (unsigned long )state;
  __cil_tmp145 = __cil_tmp144 + 1000;
  __cil_tmp146 = *((u32 *)__cil_tmp145);
  __cil_tmp147 = (unsigned long )state;
  __cil_tmp148 = __cil_tmp147 + 968;
  __cil_tmp149 = *((struct ite_config **)__cil_tmp148);
  __cil_tmp150 = (unsigned long )__cil_tmp149;
  __cil_tmp151 = __cil_tmp150 + 9;
  __cil_tmp152 = *((u8 *)__cil_tmp151);
  __cil_tmp153 = (int )__cil_tmp152;
  printk("<6>it913x-fe: Crystal Frequency :%d Adc Frequency :%d ADC X2: %02x\n", __cil_tmp143,
         __cil_tmp146, __cil_tmp153);
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp154 = & it913x_debug;
    __cil_tmp155 = *__cil_tmp154;
    if (1 & __cil_tmp155) {
      {
      printk("<7>it913x-fe: Xtal value :%04x Adc value :%04x", xtal, adc);
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  if (ret < 0) {
    return (-19);
  } else {
  }
  {
  __cil_tmp156 = (unsigned long )state;
  __cil_tmp157 = __cil_tmp156 + 968;
  __cil_tmp158 = *((struct ite_config **)__cil_tmp157);
  __cil_tmp159 = *((u8 *)__cil_tmp158);
  __cil_tmp160 = (int )__cil_tmp159;
  if (__cil_tmp160 > 1) {
    {
    __cil_tmp161 = 0 * 24UL;
    __cil_tmp162 = (unsigned long )(it9135_v2) + __cil_tmp161;
    __cil_tmp163 = (struct it913xset *)__cil_tmp162;
    ret = it913x_fe_script_loader(state, __cil_tmp163);
    }
  } else {
    {
    __cil_tmp164 = 0 * 24UL;
    __cil_tmp165 = (unsigned long )(it9135_v1) + __cil_tmp164;
    __cil_tmp166 = (struct it913xset *)__cil_tmp165;
    ret = it913x_fe_script_loader(state, __cil_tmp166);
    }
  }
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp167 = (unsigned long )state;
  __cil_tmp168 = __cil_tmp167 + 1004;
  __cil_tmp169 = *((u8 *)__cil_tmp168);
  if ((int )__cil_tmp169 == 81) {
    goto case_81;
  } else
  if ((int )__cil_tmp169 == 82) {
    goto case_82;
  } else
  if ((int )__cil_tmp169 == 96) {
    goto case_96;
  } else
  if ((int )__cil_tmp169 == 97) {
    goto case_97;
  } else
  if ((int )__cil_tmp169 == 98) {
    goto case_98;
  } else {
    {
    goto switch_default;
    if (0) {
      case_81:
      __cil_tmp170 = 0 * 24UL;
      __cil_tmp171 = (unsigned long )(it9135_51) + __cil_tmp170;
      set_lna = (struct it913xset *)__cil_tmp171;
      goto switch_break;
      case_82:
      __cil_tmp172 = 0 * 24UL;
      __cil_tmp173 = (unsigned long )(it9135_52) + __cil_tmp172;
      set_lna = (struct it913xset *)__cil_tmp173;
      goto switch_break;
      case_96:
      __cil_tmp174 = 0 * 24UL;
      __cil_tmp175 = (unsigned long )(it9135_60) + __cil_tmp174;
      set_lna = (struct it913xset *)__cil_tmp175;
      goto switch_break;
      case_97:
      __cil_tmp176 = 0 * 24UL;
      __cil_tmp177 = (unsigned long )(it9135_61) + __cil_tmp176;
      set_lna = (struct it913xset *)__cil_tmp177;
      goto switch_break;
      case_98:
      __cil_tmp178 = 0 * 24UL;
      __cil_tmp179 = (unsigned long )(it9135_62) + __cil_tmp178;
      set_lna = (struct it913xset *)__cil_tmp179;
      goto switch_break;
      switch_default:
      __cil_tmp180 = 0 * 24UL;
      __cil_tmp181 = (unsigned long )(it9135_38) + __cil_tmp180;
      set_lna = (struct it913xset *)__cil_tmp181;
    } else {
      switch_break: ;
    }
    }
  }
  }
  {
  __cil_tmp182 = (unsigned long )state;
  __cil_tmp183 = __cil_tmp182 + 1004;
  __cil_tmp184 = *((u8 *)__cil_tmp183);
  __cil_tmp185 = (int )__cil_tmp184;
  printk("<6>it913x-fe: Tuner LNA type :%02x\n", __cil_tmp185);
  ret = it913x_fe_script_loader(state, set_lna);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp186 = (unsigned long )state;
  __cil_tmp187 = __cil_tmp186 + 968;
  __cil_tmp188 = *((struct ite_config **)__cil_tmp187);
  __cil_tmp189 = *((u8 *)__cil_tmp188);
  __cil_tmp190 = (int )__cil_tmp189;
  if (__cil_tmp190 == 2) {
    {
    __cil_tmp191 = (u8 )1;
    __cil_tmp192 = (u32 )0;
    __cil_tmp193 = (u32 )1;
    ret = it913x_write_reg(state, __cil_tmp191, __cil_tmp192, __cil_tmp193);
    __cil_tmp194 = (u8 )0;
    __cil_tmp195 = (u32 )55335;
    __cil_tmp196 = (u32 )0;
    tmp___16 = it913x_write_reg(state, __cil_tmp194, __cil_tmp195, __cil_tmp196);
    ret = ret | tmp___16;
    __cil_tmp197 = (u8 )0;
    __cil_tmp198 = (u32 )55337;
    __cil_tmp199 = (u32 )0;
    tmp___17 = it913x_write_reg(state, __cil_tmp197, __cil_tmp198, __cil_tmp199);
    ret = ret | tmp___17;
    tmp___18 = it913x_init_tuner(state);
    ret = ret | tmp___18;
    }
  } else {
  }
  }
  if (ret < 0) {
    return (-19);
  } else {
  }
  {
  __cil_tmp200 = 0 * 24UL;
  __cil_tmp201 = (unsigned long )(set_solo_fe) + __cil_tmp200;
  set_mode = (struct it913xset *)__cil_tmp201;
  tmp___19 = it913x_fe_script_loader(state, set_mode);
  ret = ret | tmp___19;
  tmp___20 = it913x_fe_suspend(state);
  ret = ret | tmp___20;
  }
  if (ret < 0) {
    tmp___21 = -19;
  } else {
    tmp___21 = 0;
  }
  return (tmp___21);
}
}
static int it913x_fe_init(struct dvb_frontend *fe )
{ struct it913x_fe_state *state ;
  int ret ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void *__cil_tmp10 ;
  u8 __cil_tmp11 ;
  u32 __cil_tmp12 ;
  u32 __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct it913xset *__cil_tmp16 ;
  u8 __cil_tmp17 ;
  u32 __cil_tmp18 ;
  u32 __cil_tmp19 ;
  u8 __cil_tmp20 ;
  u32 __cil_tmp21 ;
  u32 __cil_tmp22 ;
  {
  {
  __cil_tmp8 = (unsigned long )fe;
  __cil_tmp9 = __cil_tmp8 + 760;
  __cil_tmp10 = *((void **)__cil_tmp9);
  state = (struct it913x_fe_state *)__cil_tmp10;
  ret = 0;
  __cil_tmp11 = (u8 )1;
  __cil_tmp12 = (u32 )60480;
  __cil_tmp13 = (u32 )1;
  ret = it913x_write_reg(state, __cil_tmp11, __cil_tmp12, __cil_tmp13);
  __cil_tmp14 = 0 * 24UL;
  __cil_tmp15 = (unsigned long )(init_1) + __cil_tmp14;
  __cil_tmp16 = (struct it913xset *)__cil_tmp15;
  tmp___7 = it913x_fe_script_loader(state, __cil_tmp16);
  ret = ret | tmp___7;
  __cil_tmp17 = (u8 )1;
  __cil_tmp18 = (u32 )64292;
  __cil_tmp19 = (u32 )0;
  tmp___8 = it913x_write_reg(state, __cil_tmp17, __cil_tmp18, __cil_tmp19);
  ret = ret | tmp___8;
  __cil_tmp20 = (u8 )1;
  __cil_tmp21 = (u32 )64424;
  __cil_tmp22 = (u32 )0;
  tmp___9 = it913x_write_reg(state, __cil_tmp20, __cil_tmp21, __cil_tmp22);
  ret = ret | tmp___9;
  }
  if (ret < 0) {
    tmp___10 = -19;
  } else {
    tmp___10 = 0;
  }
  return (tmp___10);
}
}
static void it913x_fe_release(struct dvb_frontend *fe )
{ struct it913x_fe_state *state ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  void *__cil_tmp5 ;
  void const *__cil_tmp6 ;
  {
  {
  __cil_tmp3 = (unsigned long )fe;
  __cil_tmp4 = __cil_tmp3 + 760;
  __cil_tmp5 = *((void **)__cil_tmp4);
  state = (struct it913x_fe_state *)__cil_tmp5;
  __cil_tmp6 = (void const *)state;
  kfree(__cil_tmp6);
  }
  return;
}
}
static struct dvb_frontend_ops it913x_fe_ofdm_ops ;
struct dvb_frontend *it913x_fe_attach(struct i2c_adapter *i2c_adap , u8 i2c_addr ,
                                      struct ite_config *config )
{ struct it913x_fe_state *state ;
  int ret ;
  void *tmp___7 ;
  size_t __len ;
  void *__ret ;
  void *__cil_tmp9 ;
  void *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  void *__cil_tmp13 ;
  void *__cil_tmp14 ;
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
  struct ite_config *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  u8 __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct ite_config *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct dvb_frontend_ops *__cil_tmp38 ;
  void *__cil_tmp39 ;
  void const *__cil_tmp40 ;
  struct dvb_frontend_ops *__cil_tmp41 ;
  void *__cil_tmp42 ;
  void const *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  void const *__cil_tmp47 ;
  void *__cil_tmp48 ;
  {
  {
  __cil_tmp9 = (void *)0;
  state = (struct it913x_fe_state *)__cil_tmp9;
  tmp___7 = kzalloc(1032UL, 208U);
  state = (struct it913x_fe_state *)tmp___7;
  }
  {
  __cil_tmp10 = (void *)0;
  __cil_tmp11 = (unsigned long )__cil_tmp10;
  __cil_tmp12 = (unsigned long )state;
  if (__cil_tmp12 == __cil_tmp11) {
    {
    __cil_tmp13 = (void *)0;
    return ((struct dvb_frontend *)__cil_tmp13);
    }
  } else {
  }
  }
  {
  __cil_tmp14 = (void *)0;
  __cil_tmp15 = (unsigned long )__cil_tmp14;
  __cil_tmp16 = (unsigned long )config;
  if (__cil_tmp16 == __cil_tmp15) {
    goto error;
  } else {
  }
  }
  __cil_tmp17 = (unsigned long )state;
  __cil_tmp18 = __cil_tmp17 + 960;
  *((struct i2c_adapter **)__cil_tmp18) = i2c_adap;
  __cil_tmp19 = (unsigned long )state;
  __cil_tmp20 = __cil_tmp19 + 976;
  *((u8 *)__cil_tmp20) = i2c_addr;
  __cil_tmp21 = (unsigned long )state;
  __cil_tmp22 = __cil_tmp21 + 968;
  *((struct ite_config **)__cil_tmp22) = config;
  {
  __cil_tmp23 = (unsigned long )state;
  __cil_tmp24 = __cil_tmp23 + 968;
  __cil_tmp25 = *((struct ite_config **)__cil_tmp24);
  __cil_tmp26 = (unsigned long )__cil_tmp25;
  __cil_tmp27 = __cil_tmp26 + 10;
  __cil_tmp28 = *((u8 *)__cil_tmp27);
  if ((int )__cil_tmp28 == 81) {
    goto case_81;
  } else
  if ((int )__cil_tmp28 == 82) {
    goto case_81;
  } else
  if ((int )__cil_tmp28 == 96) {
    goto case_81;
  } else
  if ((int )__cil_tmp28 == 97) {
    goto case_81;
  } else
  if ((int )__cil_tmp28 == 98) {
    goto case_81;
  } else {
    {
    goto switch_default;
    if (0) {
      case_81:
      case_82:
      case_96:
      case_97:
      case_98:
      __cil_tmp29 = (unsigned long )state;
      __cil_tmp30 = __cil_tmp29 + 1004;
      __cil_tmp31 = (unsigned long )state;
      __cil_tmp32 = __cil_tmp31 + 968;
      __cil_tmp33 = *((struct ite_config **)__cil_tmp32);
      __cil_tmp34 = (unsigned long )__cil_tmp33;
      __cil_tmp35 = __cil_tmp34 + 10;
      *((u8 *)__cil_tmp30) = *((u8 *)__cil_tmp35);
      goto switch_break;
      switch_default:
      __cil_tmp36 = (unsigned long )state;
      __cil_tmp37 = __cil_tmp36 + 1004;
      *((u8 *)__cil_tmp37) = (u8 )56;
    } else {
      switch_break: ;
    }
    }
  }
  }
  {
  ret = it913x_fe_start(state);
  }
  if (ret < 0) {
    goto error;
  } else {
  }
  __len = 752UL;
  if (__len >= 64UL) {
    {
    __cil_tmp38 = (struct dvb_frontend_ops *)state;
    __cil_tmp39 = (void *)__cil_tmp38;
    __cil_tmp40 = (void const *)(& it913x_fe_ofdm_ops);
    __ret = memcpy(__cil_tmp39, __cil_tmp40, __len);
    }
  } else {
    {
    __cil_tmp41 = (struct dvb_frontend_ops *)state;
    __cil_tmp42 = (void *)__cil_tmp41;
    __cil_tmp43 = (void const *)(& it913x_fe_ofdm_ops);
    __ret = memcpy(__cil_tmp42, __cil_tmp43, __len);
    }
  }
  __cil_tmp44 = 0 + 760;
  __cil_tmp45 = (unsigned long )state;
  __cil_tmp46 = __cil_tmp45 + __cil_tmp44;
  *((void **)__cil_tmp46) = (void *)state;
  return ((struct dvb_frontend *)state);
  error:
  {
  __cil_tmp47 = (void const *)state;
  kfree(__cil_tmp47);
  }
  {
  __cil_tmp48 = (void *)0;
  return ((struct dvb_frontend *)__cil_tmp48);
  }
}
}
extern void *__crc_it913x_fe_attach __attribute__((__weak__)) ;
static unsigned long const __kcrctab_it913x_fe_attach __attribute__((__used__,
__unused__, __section__("___kcrctab+it913x_fe_attach"))) = (unsigned long const )((unsigned long )(& __crc_it913x_fe_attach));
static char const __kstrtab_it913x_fe_attach[17] __attribute__((__section__("__ksymtab_strings"),
__aligned__(1))) =
  { (char const )'i', (char const )'t', (char const )'9', (char const )'1',
        (char const )'3', (char const )'x', (char const )'_', (char const )'f',
        (char const )'e', (char const )'_', (char const )'a', (char const )'t',
        (char const )'t', (char const )'a', (char const )'c', (char const )'h',
        (char const )'\000'};
static struct kernel_symbol const __ksymtab_it913x_fe_attach __attribute__((__used__,
__unused__, __section__("___ksymtab+it913x_fe_attach"))) = {(unsigned long )(& it913x_fe_attach), __kstrtab_it913x_fe_attach};
static struct dvb_frontend_ops it913x_fe_ofdm_ops =
     {{{(char )'i', (char )'t', (char )'9', (char )'1', (char )'3', (char )'x', (char )'-',
      (char )'f', (char )'e', (char )' ', (char )'D', (char )'V', (char )'B', (char )'-',
      (char )'T', (char )'\000'}, 0, (__u32 )51000000, (__u32 )1680000000, (__u32 )62500,
     0U, 0U, 0U, 0U, 0U, (fe_caps_t )1780734}, {(u8 )3, (unsigned char)0, (unsigned char)0,
                                                (unsigned char)0, (unsigned char)0,
                                                (unsigned char)0, (unsigned char)0,
                                                (unsigned char)0}, & it913x_fe_release,
    (void (*)(struct dvb_frontend *fe ))0, & it913x_fe_init, & it913x_fe_sleep, (int (*)(struct dvb_frontend *fe ,
                                                                                         u8 const *buf ,
                                                                                         int len ))0,
    (int (*)(struct dvb_frontend *fe , bool re_tune , unsigned int mode_flags , unsigned int *delay ,
             fe_status_t *status ))0, (enum dvbfe_algo (*)(struct dvb_frontend *fe ))0,
    & it913x_fe_set_frontend, (int (*)(struct dvb_frontend *fe , struct dvb_frontend_tune_settings *settings ))0,
    & it913x_fe_get_frontend, & it913x_fe_read_status, & it913x_fe_read_ber, & it913x_fe_read_signal_strength,
    & it913x_fe_read_snr, & it913x_fe_read_ucblocks, (int (*)(struct dvb_frontend *fe ))0,
    (int (*)(struct dvb_frontend *fe , struct dvb_diseqc_master_cmd *cmd ))0, (int (*)(struct dvb_frontend *fe ,
                                                                                       struct dvb_diseqc_slave_reply *reply ))0,
    (int (*)(struct dvb_frontend *fe , fe_sec_mini_cmd_t minicmd ))0, (int (*)(struct dvb_frontend *fe ,
                                                                               fe_sec_tone_mode_t tone ))0,
    (int (*)(struct dvb_frontend *fe , fe_sec_voltage_t voltage ))0, (int (*)(struct dvb_frontend *fe ,
                                                                              long arg ))0,
    (int (*)(struct dvb_frontend *fe , unsigned long cmd ))0, (int (*)(struct dvb_frontend *fe ,
                                                                       int enable ))0,
    (int (*)(struct dvb_frontend *fe , int acquire ))0, (enum dvbfe_search (*)(struct dvb_frontend *fe ))0,
    {{{(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0}, 0U, 0U, 0U, 0U, 0U, 0U}, (int (*)(struct dvb_frontend *fe ))0,
     (int (*)(struct dvb_frontend *fe ))0, (int (*)(struct dvb_frontend *fe ))0, (int (*)(struct dvb_frontend *fe ))0,
     (int (*)(struct dvb_frontend *fe , struct analog_parameters *p ))0, (int (*)(struct dvb_frontend *fe ,
                                                                                  u8 *buf ,
                                                                                  int buf_len ))0,
     (int (*)(struct dvb_frontend *fe , void *priv_cfg ))0, (int (*)(struct dvb_frontend *fe ,
                                                                     u32 *frequency ))0,
     (int (*)(struct dvb_frontend *fe , u32 *bandwidth ))0, (int (*)(struct dvb_frontend *fe ,
                                                                     u32 *frequency ))0,
     (int (*)(struct dvb_frontend *fe , u32 *status ))0, (int (*)(struct dvb_frontend *fe ,
                                                                  u16 *strength ))0,
     (int (*)(struct dvb_frontend *fe , u32 frequency ))0, (int (*)(struct dvb_frontend *fe ,
                                                                    u32 bandwidth ))0,
     (int (*)(struct dvb_frontend *fe , enum tuner_param param , struct tuner_state *state ))0,
     (int (*)(struct dvb_frontend *fe , enum tuner_param param , struct tuner_state *state ))0},
    {{(char *)0}, (void (*)(struct dvb_frontend *fe , struct analog_parameters *params ))0,
     (int (*)(struct dvb_frontend *fe ))0, (int (*)(struct dvb_frontend *fe ))0, (void (*)(struct dvb_frontend *fe ))0,
     (void (*)(struct dvb_frontend *fe ))0, (void (*)(struct dvb_frontend *fe ))0,
     (int (*)(struct dvb_frontend *fe , int enable ))0, (int (*)(struct dvb_frontend *fe ,
                                                                 void *priv_cfg ))0},
    (int (*)(struct dvb_frontend *fe , struct dtv_property *tvp ))0, (int (*)(struct dvb_frontend *fe ,
                                                                              struct dtv_property *tvp ))0};
static char const __mod_description1045[45] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'i', (char const )'t', (char const )'9', (char const )'1',
        (char const )'3', (char const )'x', (char const )' ', (char const )'F',
        (char const )'r', (char const )'o', (char const )'n', (char const )'t',
        (char const )'e', (char const )'n', (char const )'d', (char const )' ',
        (char const )'a', (char const )'n', (char const )'d', (char const )' ',
        (char const )'i', (char const )'t', (char const )'9', (char const )'1',
        (char const )'3', (char const )'7', (char const )' ', (char const )'t',
        (char const )'u', (char const )'n', (char const )'e', (char const )'r',
        (char const )'\000'};
static char const __mod_author1046[44] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'M',
        (char const )'a', (char const )'l', (char const )'c', (char const )'o',
        (char const )'l', (char const )'m', (char const )' ', (char const )'P',
        (char const )'r', (char const )'i', (char const )'e', (char const )'s',
        (char const )'t', (char const )'l', (char const )'e', (char const )'y',
        (char const )' ', (char const )'t', (char const )'v', (char const )'b',
        (char const )'o', (char const )'x', (char const )'s', (char const )'p',
        (char const )'y', (char const )'@', (char const )'g', (char const )'m',
        (char const )'a', (char const )'i', (char const )'l', (char const )'.',
        (char const )'c', (char const )'o', (char const )'m', (char const )'\000'};
static char const __mod_version1047[13] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'v', (char const )'e', (char const )'r', (char const )'s',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'1', (char const )'.', (char const )'1', (char const )'5',
        (char const )'\000'};
static char const __mod_license1048[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct dvb_frontend *var_group1 ;
  fe_status_t *var_it913x_fe_read_status_7_p1 ;
  u16 *var_it913x_fe_read_signal_strength_9_p1 ;
  u16 *var_it913x_fe_read_snr_10_p1 ;
  u32 *var_it913x_fe_read_ber_11_p1 ;
  u32 *var_it913x_fe_read_ucblocks_12_p1 ;
  int ldv_s_it913x_fe_ofdm_ops_dvb_frontend_ops ;
  int tmp___7 ;
  int tmp___8 ;
  int __cil_tmp10 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_s_it913x_fe_ofdm_ops_dvb_frontend_ops = 0;
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
      __cil_tmp10 = ldv_s_it913x_fe_ofdm_ops_dvb_frontend_ops == 0;
      if (! __cil_tmp10) {
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
    } else
    if (tmp___7 == 9) {
      goto case_9;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        if (ldv_s_it913x_fe_ofdm_ops_dvb_frontend_ops == 0) {
          {
          it913x_fe_release(var_group1);
          ldv_s_it913x_fe_ofdm_ops_dvb_frontend_ops = 0;
          }
        } else {
        }
        goto switch_break;
        case_1:
        {
        it913x_fe_init(var_group1);
        }
        goto switch_break;
        case_2:
        {
        it913x_fe_sleep(var_group1);
        }
        goto switch_break;
        case_3:
        {
        it913x_fe_set_frontend(var_group1);
        }
        goto switch_break;
        case_4:
        {
        it913x_fe_get_frontend(var_group1);
        }
        goto switch_break;
        case_5:
        {
        it913x_fe_read_status(var_group1, var_it913x_fe_read_status_7_p1);
        }
        goto switch_break;
        case_6:
        {
        it913x_fe_read_signal_strength(var_group1, var_it913x_fe_read_signal_strength_9_p1);
        }
        goto switch_break;
        case_7:
        {
        it913x_fe_read_snr(var_group1, var_it913x_fe_read_snr_10_p1);
        }
        goto switch_break;
        case_8:
        {
        it913x_fe_read_ber(var_group1, var_it913x_fe_read_ber_11_p1);
        }
        goto switch_break;
        case_9:
        {
        it913x_fe_read_ucblocks(var_group1, var_it913x_fe_read_ucblocks_12_p1);
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
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_transfer(struct i2c_adapter *arg0, struct i2c_msg *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
void msleep(unsigned int arg0) {
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
