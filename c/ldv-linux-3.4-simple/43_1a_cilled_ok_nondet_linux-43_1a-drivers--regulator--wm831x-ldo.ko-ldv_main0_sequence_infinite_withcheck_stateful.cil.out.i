extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
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
typedef unsigned int gfp_t;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
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
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
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
struct address_space;
struct address_space;
union __anonunion_ldv_15299_138 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct_ldv_15309_142 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_15310_141 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_15309_142 ldv_15309 ;
};
struct __anonstruct_ldv_15312_140 {
   union __anonunion_ldv_15310_141 ldv_15310 ;
   atomic_t _count ;
};
union __anonunion_ldv_15313_139 {
   unsigned long counters ;
   struct __anonstruct_ldv_15312_140 ldv_15312 ;
};
struct __anonstruct_ldv_15314_137 {
   union __anonunion_ldv_15299_138 ldv_15299 ;
   union __anonunion_ldv_15313_139 ldv_15313 ;
};
struct __anonstruct_ldv_15321_144 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion_ldv_15322_143 {
   struct list_head lru ;
   struct __anonstruct_ldv_15321_144 ldv_15321 ;
};
union __anonunion_ldv_15327_145 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_15314_137 ldv_15314 ;
   union __anonunion_ldv_15322_143 ldv_15322 ;
   union __anonunion_ldv_15327_145 ldv_15327 ;
   unsigned long debug_flags ;
};
struct __anonstruct_vm_set_147 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_146 {
   struct __anonstruct_vm_set_147 vm_set ;
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
   union __anonunion_shared_146 shared ;
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
struct __anonstruct_sigset_t_148 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_148 sigset_t;
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
struct __anonstruct__kill_150 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_151 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_152 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_153 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_154 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_155 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_149 {
   int _pad[28U] ;
   struct __anonstruct__kill_150 _kill ;
   struct __anonstruct__timer_151 _timer ;
   struct __anonstruct__rt_152 _rt ;
   struct __anonstruct__sigchld_153 _sigchld ;
   struct __anonstruct__sigfault_154 _sigfault ;
   struct __anonstruct__sigpoll_155 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_149 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
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
struct __anonstruct_seccomp_t_158 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_158 seccomp_t;
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
union __anonunion_ldv_16563_159 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_160 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_161 {
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
   union __anonunion_ldv_16563_159 ldv_16563 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_160 type_data ;
   union __anonunion_payload_161 payload ;
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
struct pipe_inode_info;
struct pipe_inode_info;
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
struct files_struct;
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
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
};
struct regulator;
struct regulator;
struct regulator_dev;
struct regulator_dev;
struct regulator_init_data;
struct regulator_init_data;
struct regulator_ops {
   int (*list_voltage)(struct regulator_dev * , unsigned int ) ;
   int (*set_voltage)(struct regulator_dev * , int , int , unsigned int * ) ;
   int (*set_voltage_sel)(struct regulator_dev * , unsigned int ) ;
   int (*get_voltage)(struct regulator_dev * ) ;
   int (*get_voltage_sel)(struct regulator_dev * ) ;
   int (*set_current_limit)(struct regulator_dev * , int , int ) ;
   int (*get_current_limit)(struct regulator_dev * ) ;
   int (*enable)(struct regulator_dev * ) ;
   int (*disable)(struct regulator_dev * ) ;
   int (*is_enabled)(struct regulator_dev * ) ;
   int (*set_mode)(struct regulator_dev * , unsigned int ) ;
   unsigned int (*get_mode)(struct regulator_dev * ) ;
   int (*enable_time)(struct regulator_dev * ) ;
   int (*set_voltage_time_sel)(struct regulator_dev * , unsigned int , unsigned int ) ;
   int (*get_status)(struct regulator_dev * ) ;
   unsigned int (*get_optimum_mode)(struct regulator_dev * , int , int , int ) ;
   int (*set_suspend_voltage)(struct regulator_dev * , int ) ;
   int (*set_suspend_enable)(struct regulator_dev * ) ;
   int (*set_suspend_disable)(struct regulator_dev * ) ;
   int (*set_suspend_mode)(struct regulator_dev * , unsigned int ) ;
};
enum regulator_type {
    REGULATOR_VOLTAGE = 0,
    REGULATOR_CURRENT = 1
} ;
struct regulator_desc {
   char const *name ;
   char const *supply_name ;
   int id ;
   unsigned int n_voltages ;
   struct regulator_ops *ops ;
   int irq ;
   enum regulator_type type ;
   struct module *owner ;
};
struct regulation_constraints;
struct regulator_dev {
   struct regulator_desc *desc ;
   int exclusive ;
   u32 use_count ;
   u32 open_count ;
   struct list_head list ;
   struct list_head consumer_list ;
   struct blocking_notifier_head notifier ;
   struct mutex mutex ;
   struct module *owner ;
   struct device dev ;
   struct regulation_constraints *constraints ;
   struct regulator *supply ;
   struct delayed_work disable_work ;
   int deferred_disables ;
   void *reg_data ;
   struct dentry *debugfs ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct regmap;
struct regmap;
struct wm831x;
struct wm831x;
enum wm831x_auxadc;
enum wm831x_auxadc;
struct wm831x {
   struct mutex io_lock ;
   struct device *dev ;
   struct regmap *regmap ;
   int irq ;
   struct mutex irq_lock ;
   int irq_base ;
   int irq_masks_cur[5U] ;
   int irq_masks_cache[5U] ;
   bool soft_shutdown ;
   unsigned char has_gpio_ena : 1 ;
   unsigned char has_cs_sts : 1 ;
   unsigned char charger_irq_wake : 1 ;
   int num_gpio ;
   int gpio_update[16U] ;
   bool gpio_level[16U] ;
   struct mutex auxadc_lock ;
   struct list_head auxadc_pending ;
   u16 auxadc_active ;
   int (*auxadc_read)(struct wm831x * , enum wm831x_auxadc ) ;
   struct mutex key_lock ;
   unsigned char locked : 1 ;
};
struct wm831x_backlight_pdata {
   int isink ;
   int max_uA ;
};
struct wm831x_backup_pdata {
   int charger_enable ;
   int no_constant_voltage ;
   int vlim ;
   int ilim ;
};
struct wm831x_battery_pdata {
   int enable ;
   int fast_enable ;
   int off_mask ;
   int trickle_ilim ;
   int vsel ;
   int eoc_iterm ;
   int fast_ilim ;
   int timeout ;
};
enum wm831x_status_src {
    WM831X_STATUS_PRESERVE = 0,
    WM831X_STATUS_OTP = 1,
    WM831X_STATUS_POWER = 2,
    WM831X_STATUS_CHARGER = 3,
    WM831X_STATUS_MANUAL = 4
} ;
struct wm831x_status_pdata {
   enum wm831x_status_src default_src ;
   char const *name ;
   char const *default_trigger ;
};
struct wm831x_touch_pdata {
   int fivewire ;
   int isel ;
   int rpu ;
   int pressure ;
   unsigned int data_irq ;
   int data_irqf ;
   unsigned int pd_irq ;
   int pd_irqf ;
};
enum wm831x_watchdog_action {
    WM831X_WDOG_NONE = 0,
    WM831X_WDOG_INTERRUPT = 1,
    WM831X_WDOG_RESET = 2,
    WM831X_WDOG_WAKE = 3
} ;
struct wm831x_watchdog_pdata {
   enum wm831x_watchdog_action primary ;
   enum wm831x_watchdog_action secondary ;
   int update_gpio ;
   unsigned char software : 1 ;
};
struct wm831x_pdata {
   int wm831x_num ;
   int (*pre_init)(struct wm831x * ) ;
   int (*post_init)(struct wm831x * ) ;
   bool irq_cmos ;
   bool disable_touch ;
   bool soft_shutdown ;
   int irq_base ;
   int gpio_base ;
   int gpio_defaults[16U] ;
   struct wm831x_backlight_pdata *backlight ;
   struct wm831x_backup_pdata *backup ;
   struct wm831x_battery_pdata *battery ;
   struct wm831x_touch_pdata *touch ;
   struct wm831x_watchdog_pdata *watchdog ;
   struct wm831x_status_pdata *status[2U] ;
   struct regulator_init_data *dcdc[4U] ;
   struct regulator_init_data *epe[2U] ;
   struct regulator_init_data *ldo[11U] ;
   struct regulator_init_data *isink[2U] ;
};
struct wm831x_ldo {
   char name[6U] ;
   struct regulator_desc desc ;
   int base ;
   struct wm831x *wm831x ;
   struct regulator_dev *regulator ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
extern int printk(char const * , ...) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
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
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern void *devm_kzalloc(struct device * , size_t , gfp_t ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern struct resource *platform_get_resource(struct platform_device * , unsigned int ,
                                              unsigned int ) ;
extern int platform_get_irq_byname(struct platform_device * , char const * ) ;
extern int platform_driver_register(struct platform_driver * ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{ void *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device const *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 16;
  __cil_tmp5 = (struct device const *)__cil_tmp4;
  tmp = dev_get_drvdata(__cil_tmp5);
  }
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 16;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  dev_set_drvdata(__cil_tmp5, data);
  }
  return;
}
}
extern struct regulator_dev *regulator_register(struct regulator_desc * , struct device * ,
                                                struct regulator_init_data const * ,
                                                void * , struct device_node * ) ;
extern void regulator_unregister(struct regulator_dev * ) ;
extern int regulator_notifier_call_chain(struct regulator_dev * , unsigned long ,
                                         void * ) ;
extern void *rdev_get_drvdata(struct regulator_dev * ) ;
extern int rdev_get_id(struct regulator_dev * ) ;
extern int regulator_mode_to_status(unsigned int ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
extern void free_irq(unsigned int , void * ) ;
extern int wm831x_reg_read(struct wm831x * , unsigned short ) ;
extern int wm831x_set_bits(struct wm831x * , unsigned short , unsigned short , unsigned short ) ;
static int wm831x_ldo_is_enabled(struct regulator_dev *rdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int mask ;
  int tmp___0 ;
  int reg ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp8 = (unsigned long )ldo;
  __cil_tmp9 = __cil_tmp8 + 64;
  wm831x = *((struct wm831x **)__cil_tmp9);
  tmp___0 = rdev_get_id(rdev);
  mask = 1 << tmp___0;
  reg = wm831x_reg_read(wm831x, (unsigned short)16465);
  }
  if (reg < 0) {
    return (reg);
  } else {
  }
  {
  __cil_tmp10 = reg & mask;
  if (__cil_tmp10 != 0) {
    return (1);
  } else {
    return (0);
  }
  }
}
}
static int wm831x_ldo_enable(struct regulator_dev *rdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int mask ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned short __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned short __cil_tmp12 ;
  unsigned short __cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned short __cil_tmp15 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp8 = (unsigned long )ldo;
  __cil_tmp9 = __cil_tmp8 + 64;
  wm831x = *((struct wm831x **)__cil_tmp9);
  tmp___0 = rdev_get_id(rdev);
  mask = 1 << tmp___0;
  __cil_tmp10 = (unsigned short )mask;
  __cil_tmp11 = (int )__cil_tmp10;
  __cil_tmp12 = (unsigned short )__cil_tmp11;
  __cil_tmp13 = (unsigned short )mask;
  __cil_tmp14 = (int )__cil_tmp13;
  __cil_tmp15 = (unsigned short )__cil_tmp14;
  tmp___1 = wm831x_set_bits(wm831x, (unsigned short)16465, __cil_tmp12, __cil_tmp15);
  }
  return (tmp___1);
}
}
static int wm831x_ldo_disable(struct regulator_dev *rdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int mask ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned short __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned short __cil_tmp12 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp8 = (unsigned long )ldo;
  __cil_tmp9 = __cil_tmp8 + 64;
  wm831x = *((struct wm831x **)__cil_tmp9);
  tmp___0 = rdev_get_id(rdev);
  mask = 1 << tmp___0;
  __cil_tmp10 = (unsigned short )mask;
  __cil_tmp11 = (int )__cil_tmp10;
  __cil_tmp12 = (unsigned short )__cil_tmp11;
  tmp___1 = wm831x_set_bits(wm831x, (unsigned short)16465, __cil_tmp12, (unsigned short)0);
  }
  return (tmp___1);
}
}
static irqreturn_t wm831x_ldo_uv_irq(int irq , void *data )
{ struct wm831x_ldo *ldo ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  struct regulator_dev *__cil_tmp6 ;
  void *__cil_tmp7 ;
  {
  {
  ldo = (struct wm831x_ldo *)data;
  __cil_tmp4 = (unsigned long )ldo;
  __cil_tmp5 = __cil_tmp4 + 72;
  __cil_tmp6 = *((struct regulator_dev **)__cil_tmp5);
  __cil_tmp7 = (void *)0;
  regulator_notifier_call_chain(__cil_tmp6, 1UL, __cil_tmp7);
  }
  return ((irqreturn_t )1);
}
}
static int wm831x_gp_ldo_list_voltage(struct regulator_dev *rdev , unsigned int selector )
{ unsigned int __cil_tmp3 ;
  unsigned int __cil_tmp4 ;
  unsigned int __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  {
  if (selector <= 14U) {
    {
    __cil_tmp3 = selector * 50000U;
    __cil_tmp4 = __cil_tmp3 + 900000U;
    return ((int )__cil_tmp4);
    }
  } else {
  }
  if (selector <= 31U) {
    {
    __cil_tmp5 = selector * 100000U;
    __cil_tmp6 = __cil_tmp5 + 200000U;
    return ((int )__cil_tmp6);
    }
  } else {
  }
  return (-22);
}
}
static int wm831x_gp_ldo_set_voltage_int(struct regulator_dev *rdev , int reg , int min_uV ,
                                         int max_uV , unsigned int *selector )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int vsel ;
  int ret ;
  int tmp___0 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  unsigned short __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned short __cil_tmp20 ;
  unsigned short __cil_tmp21 ;
  int __cil_tmp22 ;
  unsigned short __cil_tmp23 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp12 = (unsigned long )ldo;
  __cil_tmp13 = __cil_tmp12 + 64;
  wm831x = *((struct wm831x **)__cil_tmp13);
  }
  if (min_uV <= 899999) {
    vsel = 0;
  } else
  if (min_uV <= 1699999) {
    __cil_tmp14 = min_uV + -900000;
    vsel = __cil_tmp14 / 50000;
  } else {
    __cil_tmp15 = min_uV + -1700000;
    __cil_tmp16 = __cil_tmp15 / 100000;
    vsel = __cil_tmp16 + 15;
  }
  {
  __cil_tmp17 = (unsigned int )vsel;
  ret = wm831x_gp_ldo_list_voltage(rdev, __cil_tmp17);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (ret < min_uV) {
    return (-22);
  } else
  if (ret > max_uV) {
    return (-22);
  } else {
  }
  {
  *selector = (unsigned int )vsel;
  __cil_tmp18 = (unsigned short )reg;
  __cil_tmp19 = (int )__cil_tmp18;
  __cil_tmp20 = (unsigned short )__cil_tmp19;
  __cil_tmp21 = (unsigned short )vsel;
  __cil_tmp22 = (int )__cil_tmp21;
  __cil_tmp23 = (unsigned short )__cil_tmp22;
  tmp___0 = wm831x_set_bits(wm831x, __cil_tmp20, (unsigned short)31, __cil_tmp23);
  }
  return (tmp___0);
}
}
static int wm831x_gp_ldo_set_voltage(struct regulator_dev *rdev , int min_uV , int max_uV ,
                                     unsigned int *selector )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  int reg ;
  int tmp___0 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int __cil_tmp11 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp9 = (unsigned long )ldo;
  __cil_tmp10 = __cil_tmp9 + 56;
  __cil_tmp11 = *((int *)__cil_tmp10);
  reg = __cil_tmp11 + 1;
  tmp___0 = wm831x_gp_ldo_set_voltage_int(rdev, reg, min_uV, max_uV, selector);
  }
  return (tmp___0);
}
}
static int wm831x_gp_ldo_set_suspend_voltage(struct regulator_dev *rdev , int uV )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  int reg ;
  unsigned int selector ;
  int tmp___0 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp8 = (unsigned long )ldo;
  __cil_tmp9 = __cil_tmp8 + 56;
  __cil_tmp10 = *((int *)__cil_tmp9);
  reg = __cil_tmp10 + 2;
  tmp___0 = wm831x_gp_ldo_set_voltage_int(rdev, reg, uV, uV, & selector);
  }
  return (tmp___0);
}
}
static int wm831x_gp_ldo_get_voltage_sel(struct regulator_dev *rdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int reg ;
  int ret ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned short __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned short __cil_tmp14 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp7 = (unsigned long )ldo;
  __cil_tmp8 = __cil_tmp7 + 64;
  wm831x = *((struct wm831x **)__cil_tmp8);
  __cil_tmp9 = (unsigned long )ldo;
  __cil_tmp10 = __cil_tmp9 + 56;
  __cil_tmp11 = *((int *)__cil_tmp10);
  reg = __cil_tmp11 + 1;
  __cil_tmp12 = (unsigned short )reg;
  __cil_tmp13 = (int )__cil_tmp12;
  __cil_tmp14 = (unsigned short )__cil_tmp13;
  ret = wm831x_reg_read(wm831x, __cil_tmp14);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = ret & 31;
  return (ret);
}
}
static unsigned int wm831x_gp_ldo_get_mode(struct regulator_dev *rdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int ctrl_reg ;
  int on_reg ;
  int ret ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned short __cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned short __cil_tmp17 ;
  int __cil_tmp18 ;
  unsigned short __cil_tmp19 ;
  int __cil_tmp20 ;
  unsigned short __cil_tmp21 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp8 = (unsigned long )ldo;
  __cil_tmp9 = __cil_tmp8 + 64;
  wm831x = *((struct wm831x **)__cil_tmp9);
  __cil_tmp10 = (unsigned long )ldo;
  __cil_tmp11 = __cil_tmp10 + 56;
  ctrl_reg = *((int *)__cil_tmp11);
  __cil_tmp12 = (unsigned long )ldo;
  __cil_tmp13 = __cil_tmp12 + 56;
  __cil_tmp14 = *((int *)__cil_tmp13);
  on_reg = __cil_tmp14 + 1;
  __cil_tmp15 = (unsigned short )on_reg;
  __cil_tmp16 = (int )__cil_tmp15;
  __cil_tmp17 = (unsigned short )__cil_tmp16;
  ret = wm831x_reg_read(wm831x, __cil_tmp17);
  }
  if (ret < 0) {
    return ((unsigned int )ret);
  } else {
  }
  {
  __cil_tmp18 = ret & 256;
  if (__cil_tmp18 == 0) {
    return (2U);
  } else {
  }
  }
  {
  __cil_tmp19 = (unsigned short )ctrl_reg;
  __cil_tmp20 = (int )__cil_tmp19;
  __cil_tmp21 = (unsigned short )__cil_tmp20;
  ret = wm831x_reg_read(wm831x, __cil_tmp21);
  }
  if (ret < 0) {
    return ((unsigned int )ret);
  } else {
  }
  if (ret & 1) {
    return (8U);
  } else {
    return (4U);
  }
}
}
static int wm831x_gp_ldo_set_mode(struct regulator_dev *rdev , unsigned int mode )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int ctrl_reg ;
  int on_reg ;
  int ret ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned short __cil_tmp16 ;
  int __cil_tmp17 ;
  unsigned short __cil_tmp18 ;
  unsigned short __cil_tmp19 ;
  int __cil_tmp20 ;
  unsigned short __cil_tmp21 ;
  unsigned short __cil_tmp22 ;
  int __cil_tmp23 ;
  unsigned short __cil_tmp24 ;
  unsigned short __cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned short __cil_tmp27 ;
  unsigned short __cil_tmp28 ;
  int __cil_tmp29 ;
  unsigned short __cil_tmp30 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp9 = (unsigned long )ldo;
  __cil_tmp10 = __cil_tmp9 + 64;
  wm831x = *((struct wm831x **)__cil_tmp10);
  __cil_tmp11 = (unsigned long )ldo;
  __cil_tmp12 = __cil_tmp11 + 56;
  ctrl_reg = *((int *)__cil_tmp12);
  __cil_tmp13 = (unsigned long )ldo;
  __cil_tmp14 = __cil_tmp13 + 56;
  __cil_tmp15 = *((int *)__cil_tmp14);
  on_reg = __cil_tmp15 + 1;
  }
  if ((int )mode == 2) {
    goto case_2;
  } else
  if ((int )mode == 4) {
    goto case_4;
  } else
  if ((int )mode == 8) {
    goto case_8;
  } else {
    {
    goto switch_default;
    if (0) {
      case_2:
      {
      __cil_tmp16 = (unsigned short )on_reg;
      __cil_tmp17 = (int )__cil_tmp16;
      __cil_tmp18 = (unsigned short )__cil_tmp17;
      ret = wm831x_set_bits(wm831x, __cil_tmp18, (unsigned short)256, (unsigned short)0);
      }
      if (ret < 0) {
        return (ret);
      } else {
      }
      goto ldv_20884;
      case_4:
      {
      __cil_tmp19 = (unsigned short )ctrl_reg;
      __cil_tmp20 = (int )__cil_tmp19;
      __cil_tmp21 = (unsigned short )__cil_tmp20;
      ret = wm831x_set_bits(wm831x, __cil_tmp21, (unsigned short)1, (unsigned short)0);
      }
      if (ret < 0) {
        return (ret);
      } else {
      }
      {
      __cil_tmp22 = (unsigned short )on_reg;
      __cil_tmp23 = (int )__cil_tmp22;
      __cil_tmp24 = (unsigned short )__cil_tmp23;
      ret = wm831x_set_bits(wm831x, __cil_tmp24, (unsigned short)256, (unsigned short)256);
      }
      if (ret < 0) {
        return (ret);
      } else {
      }
      goto ldv_20884;
      case_8:
      {
      __cil_tmp25 = (unsigned short )ctrl_reg;
      __cil_tmp26 = (int )__cil_tmp25;
      __cil_tmp27 = (unsigned short )__cil_tmp26;
      ret = wm831x_set_bits(wm831x, __cil_tmp27, (unsigned short)1, (unsigned short)1);
      }
      if (ret < 0) {
        return (ret);
      } else {
      }
      {
      __cil_tmp28 = (unsigned short )on_reg;
      __cil_tmp29 = (int )__cil_tmp28;
      __cil_tmp30 = (unsigned short )__cil_tmp29;
      ret = wm831x_set_bits(wm831x, __cil_tmp30, (unsigned short)256, (unsigned short)256);
      }
      if (ret < 0) {
        return (ret);
      } else {
      }
      goto ldv_20884;
      switch_default: ;
      return (-22);
    } else {
      switch_break: ;
    }
    }
  }
  ldv_20884: ;
  return (0);
}
}
static int wm831x_gp_ldo_get_status(struct regulator_dev *rdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int mask ;
  int tmp___0 ;
  int ret ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp10 = (unsigned long )ldo;
  __cil_tmp11 = __cil_tmp10 + 64;
  wm831x = *((struct wm831x **)__cil_tmp11);
  tmp___0 = rdev_get_id(rdev);
  mask = 1 << tmp___0;
  ret = wm831x_reg_read(wm831x, (unsigned short)16467);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp12 = ret & mask;
  if (__cil_tmp12 == 0) {
    return (0);
  } else {
  }
  }
  {
  ret = wm831x_reg_read(wm831x, (unsigned short)16469);
  }
  {
  __cil_tmp13 = ret & mask;
  if (__cil_tmp13 != 0) {
    return (2);
  } else {
  }
  }
  {
  tmp___1 = wm831x_gp_ldo_get_mode(rdev);
  ret = (int )tmp___1;
  }
  if (ret < 0) {
    return (ret);
  } else {
    {
    __cil_tmp14 = (unsigned int )ret;
    tmp___2 = regulator_mode_to_status(__cil_tmp14);
    }
    return (tmp___2);
  }
}
}
static unsigned int wm831x_gp_ldo_get_optimum_mode(struct regulator_dev *rdev , int input_uV ,
                                                   int output_uV , int load_uA )
{
  {
  if (load_uA <= 19999) {
    return (8U);
  } else {
  }
  if (load_uA <= 49999) {
    return (4U);
  } else {
  }
  return (2U);
}
}
static struct regulator_ops wm831x_gp_ldo_ops =
     {& wm831x_gp_ldo_list_voltage, & wm831x_gp_ldo_set_voltage, (int (*)(struct regulator_dev * ,
                                                                        unsigned int ))0,
    (int (*)(struct regulator_dev * ))0, & wm831x_gp_ldo_get_voltage_sel, (int (*)(struct regulator_dev * ,
                                                                                   int ,
                                                                                   int ))0,
    (int (*)(struct regulator_dev * ))0, & wm831x_ldo_enable, & wm831x_ldo_disable,
    & wm831x_ldo_is_enabled, & wm831x_gp_ldo_set_mode, & wm831x_gp_ldo_get_mode, (int (*)(struct regulator_dev * ))0,
    (int (*)(struct regulator_dev * , unsigned int , unsigned int ))0, & wm831x_gp_ldo_get_status,
    & wm831x_gp_ldo_get_optimum_mode, & wm831x_gp_ldo_set_suspend_voltage, (int (*)(struct regulator_dev * ))0,
    (int (*)(struct regulator_dev * ))0, (int (*)(struct regulator_dev * , unsigned int ))0};
static int wm831x_gp_ldo_probe(struct platform_device *pdev )
{ struct wm831x *wm831x ;
  void *tmp ;
  struct wm831x_pdata *pdata ;
  int id ;
  struct wm831x_ldo *ldo ;
  struct resource *res ;
  int ret ;
  int irq ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct device *__cil_tmp17 ;
  struct device const *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct device *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  void *__cil_tmp24 ;
  struct wm831x_pdata *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  int __cil_tmp33 ;
  struct _ddebug *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned char __cil_tmp41 ;
  long __cil_tmp42 ;
  long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  struct device *__cil_tmp46 ;
  struct device const *__cil_tmp47 ;
  int __cil_tmp48 ;
  struct wm831x_pdata *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  struct regulator_init_data *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  struct regulator_init_data *__cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  struct device *__cil_tmp62 ;
  struct wm831x_ldo *__cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  struct device *__cil_tmp68 ;
  struct device const *__cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  struct resource *__cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  struct device *__cil_tmp77 ;
  struct device const *__cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  resource_size_t __cil_tmp81 ;
  char (*__cil_tmp82)[6U] ;
  char *__cil_tmp83 ;
  int __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  char (*__cil_tmp87)[6U] ;
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
  struct regulator_desc *__cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  struct device *__cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  struct regulator_init_data *__cil_tmp115 ;
  struct regulator_init_data const *__cil_tmp116 ;
  void *__cil_tmp117 ;
  struct device_node *__cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  struct regulator_dev *__cil_tmp121 ;
  void const *__cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  struct regulator_dev *__cil_tmp125 ;
  void const *__cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  struct device *__cil_tmp129 ;
  struct device const *__cil_tmp130 ;
  int __cil_tmp131 ;
  unsigned int __cil_tmp132 ;
  irqreturn_t (*__cil_tmp133)(int , void * ) ;
  char (*__cil_tmp134)[6U] ;
  char const *__cil_tmp135 ;
  void *__cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  struct device *__cil_tmp139 ;
  struct device const *__cil_tmp140 ;
  void *__cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  struct regulator_dev *__cil_tmp144 ;
  {
  {
  __cil_tmp15 = (unsigned long )pdev;
  __cil_tmp16 = __cil_tmp15 + 16;
  __cil_tmp17 = *((struct device **)__cil_tmp16);
  __cil_tmp18 = (struct device const *)__cil_tmp17;
  tmp = dev_get_drvdata(__cil_tmp18);
  wm831x = (struct wm831x *)tmp;
  __cil_tmp19 = (unsigned long )wm831x;
  __cil_tmp20 = __cil_tmp19 + 168;
  __cil_tmp21 = *((struct device **)__cil_tmp20);
  __cil_tmp22 = (unsigned long )__cil_tmp21;
  __cil_tmp23 = __cil_tmp22 + 280;
  __cil_tmp24 = *((void **)__cil_tmp23);
  pdata = (struct wm831x_pdata *)__cil_tmp24;
  }
  {
  __cil_tmp25 = (struct wm831x_pdata *)0;
  __cil_tmp26 = (unsigned long )__cil_tmp25;
  __cil_tmp27 = (unsigned long )pdata;
  if (__cil_tmp27 != __cil_tmp26) {
    {
    __cil_tmp28 = *((int *)pdata);
    if (__cil_tmp28 != 0) {
      __cil_tmp29 = *((int *)pdata);
      __cil_tmp30 = __cil_tmp29 * 10;
      id = __cil_tmp30 + 1;
    } else {
      id = 0;
    }
    }
  } else {
    id = 0;
  }
  }
  {
  __cil_tmp31 = (unsigned long )pdev;
  __cil_tmp32 = __cil_tmp31 + 8;
  __cil_tmp33 = *((int *)__cil_tmp32);
  id = __cil_tmp33 - id;
  __cil_tmp34 = & descriptor;
  *((char const **)__cil_tmp34) = "wm831x_ldo";
  __cil_tmp35 = (unsigned long )(& descriptor) + 8;
  *((char const **)__cil_tmp35) = "wm831x_gp_ldo_probe";
  __cil_tmp36 = (unsigned long )(& descriptor) + 16;
  *((char const **)__cil_tmp36) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12255/dscv_tempdir/dscv/ri/43_1a/drivers/regulator/wm831x-ldo.c.p";
  __cil_tmp37 = (unsigned long )(& descriptor) + 24;
  *((char const **)__cil_tmp37) = "Probing LDO%d\n";
  __cil_tmp38 = (unsigned long )(& descriptor) + 32;
  *((unsigned int *)__cil_tmp38) = 339U;
  __cil_tmp39 = (unsigned long )(& descriptor) + 35;
  *((unsigned char *)__cil_tmp39) = (unsigned char)1;
  __cil_tmp40 = (unsigned long )(& descriptor) + 35;
  __cil_tmp41 = *((unsigned char *)__cil_tmp40);
  __cil_tmp42 = (long )__cil_tmp41;
  __cil_tmp43 = __cil_tmp42 & 1L;
  tmp___0 = __builtin_expect(__cil_tmp43, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __cil_tmp44 = (unsigned long )pdev;
    __cil_tmp45 = __cil_tmp44 + 16;
    __cil_tmp46 = (struct device *)__cil_tmp45;
    __cil_tmp47 = (struct device const *)__cil_tmp46;
    __cil_tmp48 = id + 1;
    __dynamic_dev_dbg(& descriptor, __cil_tmp47, "Probing LDO%d\n", __cil_tmp48);
    }
  } else {
  }
  {
  __cil_tmp49 = (struct wm831x_pdata *)0;
  __cil_tmp50 = (unsigned long )__cil_tmp49;
  __cil_tmp51 = (unsigned long )pdata;
  if (__cil_tmp51 == __cil_tmp50) {
    return (-19);
  } else {
    {
    __cil_tmp52 = (struct regulator_init_data *)0;
    __cil_tmp53 = (unsigned long )__cil_tmp52;
    __cil_tmp54 = id * 8UL;
    __cil_tmp55 = 208 + __cil_tmp54;
    __cil_tmp56 = (unsigned long )pdata;
    __cil_tmp57 = __cil_tmp56 + __cil_tmp55;
    __cil_tmp58 = *((struct regulator_init_data **)__cil_tmp57);
    __cil_tmp59 = (unsigned long )__cil_tmp58;
    if (__cil_tmp59 == __cil_tmp53) {
      return (-19);
    } else {
    }
    }
  }
  }
  {
  __cil_tmp60 = (unsigned long )pdev;
  __cil_tmp61 = __cil_tmp60 + 16;
  __cil_tmp62 = (struct device *)__cil_tmp61;
  tmp___1 = devm_kzalloc(__cil_tmp62, 80UL, 208U);
  ldo = (struct wm831x_ldo *)tmp___1;
  }
  {
  __cil_tmp63 = (struct wm831x_ldo *)0;
  __cil_tmp64 = (unsigned long )__cil_tmp63;
  __cil_tmp65 = (unsigned long )ldo;
  if (__cil_tmp65 == __cil_tmp64) {
    {
    __cil_tmp66 = (unsigned long )pdev;
    __cil_tmp67 = __cil_tmp66 + 16;
    __cil_tmp68 = (struct device *)__cil_tmp67;
    __cil_tmp69 = (struct device const *)__cil_tmp68;
    dev_err(__cil_tmp69, "Unable to allocate private data\n");
    }
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp70 = (unsigned long )ldo;
  __cil_tmp71 = __cil_tmp70 + 64;
  *((struct wm831x **)__cil_tmp71) = wm831x;
  res = platform_get_resource(pdev, 256U, 0U);
  }
  {
  __cil_tmp72 = (struct resource *)0;
  __cil_tmp73 = (unsigned long )__cil_tmp72;
  __cil_tmp74 = (unsigned long )res;
  if (__cil_tmp74 == __cil_tmp73) {
    {
    __cil_tmp75 = (unsigned long )pdev;
    __cil_tmp76 = __cil_tmp75 + 16;
    __cil_tmp77 = (struct device *)__cil_tmp76;
    __cil_tmp78 = (struct device const *)__cil_tmp77;
    dev_err(__cil_tmp78, "No I/O resource\n");
    ret = -22;
    }
    goto err;
  } else {
  }
  }
  {
  __cil_tmp79 = (unsigned long )ldo;
  __cil_tmp80 = __cil_tmp79 + 56;
  __cil_tmp81 = *((resource_size_t *)res);
  *((int *)__cil_tmp80) = (int )__cil_tmp81;
  __cil_tmp82 = (char (*)[6U])ldo;
  __cil_tmp83 = (char *)__cil_tmp82;
  __cil_tmp84 = id + 1;
  snprintf(__cil_tmp83, 6UL, "LDO%d", __cil_tmp84);
  __cil_tmp85 = (unsigned long )ldo;
  __cil_tmp86 = __cil_tmp85 + 8;
  __cil_tmp87 = (char (*)[6U])ldo;
  *((char const **)__cil_tmp86) = (char const *)__cil_tmp87;
  __cil_tmp88 = 8 + 16;
  __cil_tmp89 = (unsigned long )ldo;
  __cil_tmp90 = __cil_tmp89 + __cil_tmp88;
  *((int *)__cil_tmp90) = id;
  __cil_tmp91 = 8 + 36;
  __cil_tmp92 = (unsigned long )ldo;
  __cil_tmp93 = __cil_tmp92 + __cil_tmp91;
  *((enum regulator_type *)__cil_tmp93) = (enum regulator_type )0;
  __cil_tmp94 = 8 + 20;
  __cil_tmp95 = (unsigned long )ldo;
  __cil_tmp96 = __cil_tmp95 + __cil_tmp94;
  *((unsigned int *)__cil_tmp96) = 32U;
  __cil_tmp97 = 8 + 24;
  __cil_tmp98 = (unsigned long )ldo;
  __cil_tmp99 = __cil_tmp98 + __cil_tmp97;
  *((struct regulator_ops **)__cil_tmp99) = & wm831x_gp_ldo_ops;
  __cil_tmp100 = 8 + 40;
  __cil_tmp101 = (unsigned long )ldo;
  __cil_tmp102 = __cil_tmp101 + __cil_tmp100;
  *((struct module **)__cil_tmp102) = & __this_module;
  __cil_tmp103 = (unsigned long )ldo;
  __cil_tmp104 = __cil_tmp103 + 72;
  __cil_tmp105 = (unsigned long )ldo;
  __cil_tmp106 = __cil_tmp105 + 8;
  __cil_tmp107 = (struct regulator_desc *)__cil_tmp106;
  __cil_tmp108 = (unsigned long )pdev;
  __cil_tmp109 = __cil_tmp108 + 16;
  __cil_tmp110 = (struct device *)__cil_tmp109;
  __cil_tmp111 = id * 8UL;
  __cil_tmp112 = 208 + __cil_tmp111;
  __cil_tmp113 = (unsigned long )pdata;
  __cil_tmp114 = __cil_tmp113 + __cil_tmp112;
  __cil_tmp115 = *((struct regulator_init_data **)__cil_tmp114);
  __cil_tmp116 = (struct regulator_init_data const *)__cil_tmp115;
  __cil_tmp117 = (void *)ldo;
  __cil_tmp118 = (struct device_node *)0;
  *((struct regulator_dev **)__cil_tmp104) = regulator_register(__cil_tmp107, __cil_tmp110,
                                                                __cil_tmp116, __cil_tmp117,
                                                                __cil_tmp118);
  __cil_tmp119 = (unsigned long )ldo;
  __cil_tmp120 = __cil_tmp119 + 72;
  __cil_tmp121 = *((struct regulator_dev **)__cil_tmp120);
  __cil_tmp122 = (void const *)__cil_tmp121;
  tmp___3 = IS_ERR(__cil_tmp122);
  }
  if (tmp___3 != 0L) {
    {
    __cil_tmp123 = (unsigned long )ldo;
    __cil_tmp124 = __cil_tmp123 + 72;
    __cil_tmp125 = *((struct regulator_dev **)__cil_tmp124);
    __cil_tmp126 = (void const *)__cil_tmp125;
    tmp___2 = PTR_ERR(__cil_tmp126);
    ret = (int )tmp___2;
    __cil_tmp127 = (unsigned long )wm831x;
    __cil_tmp128 = __cil_tmp127 + 168;
    __cil_tmp129 = *((struct device **)__cil_tmp128);
    __cil_tmp130 = (struct device const *)__cil_tmp129;
    __cil_tmp131 = id + 1;
    dev_err(__cil_tmp130, "Failed to register LDO%d: %d\n", __cil_tmp131, ret);
    }
    goto err;
  } else {
  }
  {
  irq = platform_get_irq_byname(pdev, "UV");
  __cil_tmp132 = (unsigned int )irq;
  __cil_tmp133 = (irqreturn_t (*)(int , void * ))0;
  __cil_tmp134 = (char (*)[6U])ldo;
  __cil_tmp135 = (char const *)__cil_tmp134;
  __cil_tmp136 = (void *)ldo;
  ret = request_threaded_irq(__cil_tmp132, __cil_tmp133, & wm831x_ldo_uv_irq, 1UL,
                             __cil_tmp135, __cil_tmp136);
  }
  if (ret != 0) {
    {
    __cil_tmp137 = (unsigned long )pdev;
    __cil_tmp138 = __cil_tmp137 + 16;
    __cil_tmp139 = (struct device *)__cil_tmp138;
    __cil_tmp140 = (struct device const *)__cil_tmp139;
    dev_err(__cil_tmp140, "Failed to request UV IRQ %d: %d\n", irq, ret);
    }
    goto err_regulator;
  } else {
  }
  {
  __cil_tmp141 = (void *)ldo;
  platform_set_drvdata(pdev, __cil_tmp141);
  }
  return (0);
  err_regulator:
  {
  __cil_tmp142 = (unsigned long )ldo;
  __cil_tmp143 = __cil_tmp142 + 72;
  __cil_tmp144 = *((struct regulator_dev **)__cil_tmp143);
  regulator_unregister(__cil_tmp144);
  }
  err: ;
  return (ret);
}
}
static int wm831x_gp_ldo_remove(struct platform_device *pdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  int tmp___0 ;
  struct platform_device const *__cil_tmp5 ;
  void *__cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  void *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct regulator_dev *__cil_tmp11 ;
  {
  {
  __cil_tmp5 = (struct platform_device const *)pdev;
  tmp = platform_get_drvdata(__cil_tmp5);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp6 = (void *)0;
  platform_set_drvdata(pdev, __cil_tmp6);
  tmp___0 = platform_get_irq_byname(pdev, "UV");
  __cil_tmp7 = (unsigned int )tmp___0;
  __cil_tmp8 = (void *)ldo;
  free_irq(__cil_tmp7, __cil_tmp8);
  __cil_tmp9 = (unsigned long )ldo;
  __cil_tmp10 = __cil_tmp9 + 72;
  __cil_tmp11 = *((struct regulator_dev **)__cil_tmp10);
  regulator_unregister(__cil_tmp11);
  }
  return (0);
}
}
static struct platform_driver wm831x_gp_ldo_driver = {& wm831x_gp_ldo_probe, & wm831x_gp_ldo_remove, (void (*)(struct platform_device * ))0,
    (int (*)(struct platform_device * , pm_message_t ))0, (int (*)(struct platform_device * ))0,
    {"wm831x-ldo", (struct bus_type *)0, & __this_module, (char const *)0, (_Bool)0,
     (struct of_device_id const *)0, (int (*)(struct device * ))0, (int (*)(struct device * ))0,
     (void (*)(struct device * ))0, (int (*)(struct device * , pm_message_t ))0,
     (int (*)(struct device * ))0, (struct attribute_group const **)0, (struct dev_pm_ops const *)0,
     (struct driver_private *)0}, (struct platform_device_id const *)0};
static int wm831x_aldo_list_voltage(struct regulator_dev *rdev , unsigned int selector )
{ unsigned int __cil_tmp3 ;
  unsigned int __cil_tmp4 ;
  unsigned int __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  {
  if (selector <= 12U) {
    {
    __cil_tmp3 = selector * 50000U;
    __cil_tmp4 = __cil_tmp3 + 1000000U;
    return ((int )__cil_tmp4);
    }
  } else {
  }
  if (selector <= 31U) {
    {
    __cil_tmp5 = selector * 100000U;
    __cil_tmp6 = __cil_tmp5 + 400000U;
    return ((int )__cil_tmp6);
    }
  } else {
  }
  return (-22);
}
}
static int wm831x_aldo_set_voltage_int(struct regulator_dev *rdev , int reg , int min_uV ,
                                       int max_uV , unsigned int *selector )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int vsel ;
  int ret ;
  int tmp___0 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  unsigned short __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned short __cil_tmp20 ;
  unsigned short __cil_tmp21 ;
  int __cil_tmp22 ;
  unsigned short __cil_tmp23 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp12 = (unsigned long )ldo;
  __cil_tmp13 = __cil_tmp12 + 64;
  wm831x = *((struct wm831x **)__cil_tmp13);
  }
  if (min_uV <= 999999) {
    vsel = 0;
  } else
  if (min_uV <= 1699999) {
    __cil_tmp14 = min_uV + -1000000;
    vsel = __cil_tmp14 / 50000;
  } else {
    __cil_tmp15 = min_uV + -1700000;
    __cil_tmp16 = __cil_tmp15 / 100000;
    vsel = __cil_tmp16 + 13;
  }
  {
  __cil_tmp17 = (unsigned int )vsel;
  ret = wm831x_aldo_list_voltage(rdev, __cil_tmp17);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (ret < min_uV) {
    return (-22);
  } else
  if (ret > max_uV) {
    return (-22);
  } else {
  }
  {
  *selector = (unsigned int )vsel;
  __cil_tmp18 = (unsigned short )reg;
  __cil_tmp19 = (int )__cil_tmp18;
  __cil_tmp20 = (unsigned short )__cil_tmp19;
  __cil_tmp21 = (unsigned short )vsel;
  __cil_tmp22 = (int )__cil_tmp21;
  __cil_tmp23 = (unsigned short )__cil_tmp22;
  tmp___0 = wm831x_set_bits(wm831x, __cil_tmp20, (unsigned short)31, __cil_tmp23);
  }
  return (tmp___0);
}
}
static int wm831x_aldo_set_voltage(struct regulator_dev *rdev , int min_uV , int max_uV ,
                                   unsigned int *selector )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  int reg ;
  int tmp___0 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int __cil_tmp11 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp9 = (unsigned long )ldo;
  __cil_tmp10 = __cil_tmp9 + 56;
  __cil_tmp11 = *((int *)__cil_tmp10);
  reg = __cil_tmp11 + 1;
  tmp___0 = wm831x_aldo_set_voltage_int(rdev, reg, min_uV, max_uV, selector);
  }
  return (tmp___0);
}
}
static int wm831x_aldo_set_suspend_voltage(struct regulator_dev *rdev , int uV )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  int reg ;
  unsigned int selector ;
  int tmp___0 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp8 = (unsigned long )ldo;
  __cil_tmp9 = __cil_tmp8 + 56;
  __cil_tmp10 = *((int *)__cil_tmp9);
  reg = __cil_tmp10 + 2;
  tmp___0 = wm831x_aldo_set_voltage_int(rdev, reg, uV, uV, & selector);
  }
  return (tmp___0);
}
}
static int wm831x_aldo_get_voltage_sel(struct regulator_dev *rdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int reg ;
  int ret ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned short __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned short __cil_tmp14 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp7 = (unsigned long )ldo;
  __cil_tmp8 = __cil_tmp7 + 64;
  wm831x = *((struct wm831x **)__cil_tmp8);
  __cil_tmp9 = (unsigned long )ldo;
  __cil_tmp10 = __cil_tmp9 + 56;
  __cil_tmp11 = *((int *)__cil_tmp10);
  reg = __cil_tmp11 + 1;
  __cil_tmp12 = (unsigned short )reg;
  __cil_tmp13 = (int )__cil_tmp12;
  __cil_tmp14 = (unsigned short )__cil_tmp13;
  ret = wm831x_reg_read(wm831x, __cil_tmp14);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = ret & 31;
  return (ret);
}
}
static unsigned int wm831x_aldo_get_mode(struct regulator_dev *rdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int on_reg ;
  int ret ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned short __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned short __cil_tmp14 ;
  int __cil_tmp15 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp7 = (unsigned long )ldo;
  __cil_tmp8 = __cil_tmp7 + 64;
  wm831x = *((struct wm831x **)__cil_tmp8);
  __cil_tmp9 = (unsigned long )ldo;
  __cil_tmp10 = __cil_tmp9 + 56;
  __cil_tmp11 = *((int *)__cil_tmp10);
  on_reg = __cil_tmp11 + 1;
  __cil_tmp12 = (unsigned short )on_reg;
  __cil_tmp13 = (int )__cil_tmp12;
  __cil_tmp14 = (unsigned short )__cil_tmp13;
  ret = wm831x_reg_read(wm831x, __cil_tmp14);
  }
  if (ret < 0) {
    return (0U);
  } else {
  }
  {
  __cil_tmp15 = ret & 256;
  if (__cil_tmp15 != 0) {
    return (4U);
  } else {
    return (2U);
  }
  }
}
}
static int wm831x_aldo_set_mode(struct regulator_dev *rdev , unsigned int mode )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int on_reg ;
  int ret ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned short __cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned short __cil_tmp15 ;
  unsigned short __cil_tmp16 ;
  int __cil_tmp17 ;
  unsigned short __cil_tmp18 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp8 = (unsigned long )ldo;
  __cil_tmp9 = __cil_tmp8 + 64;
  wm831x = *((struct wm831x **)__cil_tmp9);
  __cil_tmp10 = (unsigned long )ldo;
  __cil_tmp11 = __cil_tmp10 + 56;
  __cil_tmp12 = *((int *)__cil_tmp11);
  on_reg = __cil_tmp12 + 1;
  }
  if ((int )mode == 2) {
    goto case_2;
  } else
  if ((int )mode == 4) {
    goto case_4;
  } else {
    {
    goto switch_default;
    if (0) {
      case_2:
      {
      __cil_tmp13 = (unsigned short )on_reg;
      __cil_tmp14 = (int )__cil_tmp13;
      __cil_tmp15 = (unsigned short )__cil_tmp14;
      ret = wm831x_set_bits(wm831x, __cil_tmp15, (unsigned short)256, (unsigned short)0);
      }
      if (ret < 0) {
        return (ret);
      } else {
      }
      goto ldv_20974;
      case_4:
      {
      __cil_tmp16 = (unsigned short )on_reg;
      __cil_tmp17 = (int )__cil_tmp16;
      __cil_tmp18 = (unsigned short )__cil_tmp17;
      ret = wm831x_set_bits(wm831x, __cil_tmp18, (unsigned short)256, (unsigned short)256);
      }
      if (ret < 0) {
        return (ret);
      } else {
      }
      goto ldv_20974;
      switch_default: ;
      return (-22);
    } else {
      switch_break: ;
    }
    }
  }
  ldv_20974: ;
  return (0);
}
}
static int wm831x_aldo_get_status(struct regulator_dev *rdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int mask ;
  int tmp___0 ;
  int ret ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp10 = (unsigned long )ldo;
  __cil_tmp11 = __cil_tmp10 + 64;
  wm831x = *((struct wm831x **)__cil_tmp11);
  tmp___0 = rdev_get_id(rdev);
  mask = 1 << tmp___0;
  ret = wm831x_reg_read(wm831x, (unsigned short)16467);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp12 = ret & mask;
  if (__cil_tmp12 == 0) {
    return (0);
  } else {
  }
  }
  {
  ret = wm831x_reg_read(wm831x, (unsigned short)16469);
  }
  {
  __cil_tmp13 = ret & mask;
  if (__cil_tmp13 != 0) {
    return (2);
  } else {
  }
  }
  {
  tmp___1 = wm831x_aldo_get_mode(rdev);
  ret = (int )tmp___1;
  }
  if (ret < 0) {
    return (ret);
  } else {
    {
    __cil_tmp14 = (unsigned int )ret;
    tmp___2 = regulator_mode_to_status(__cil_tmp14);
    }
    return (tmp___2);
  }
}
}
static struct regulator_ops wm831x_aldo_ops =
     {& wm831x_aldo_list_voltage, & wm831x_aldo_set_voltage, (int (*)(struct regulator_dev * ,
                                                                    unsigned int ))0,
    (int (*)(struct regulator_dev * ))0, & wm831x_aldo_get_voltage_sel, (int (*)(struct regulator_dev * ,
                                                                                 int ,
                                                                                 int ))0,
    (int (*)(struct regulator_dev * ))0, & wm831x_ldo_enable, & wm831x_ldo_disable,
    & wm831x_ldo_is_enabled, & wm831x_aldo_set_mode, & wm831x_aldo_get_mode, (int (*)(struct regulator_dev * ))0,
    (int (*)(struct regulator_dev * , unsigned int , unsigned int ))0, & wm831x_aldo_get_status,
    (unsigned int (*)(struct regulator_dev * , int , int , int ))0, & wm831x_aldo_set_suspend_voltage,
    (int (*)(struct regulator_dev * ))0, (int (*)(struct regulator_dev * ))0, (int (*)(struct regulator_dev * ,
                                                                                       unsigned int ))0};
static int wm831x_aldo_probe(struct platform_device *pdev )
{ struct wm831x *wm831x ;
  void *tmp ;
  struct wm831x_pdata *pdata ;
  int id ;
  struct wm831x_ldo *ldo ;
  struct resource *res ;
  int ret ;
  int irq ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct device *__cil_tmp17 ;
  struct device const *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct device *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  void *__cil_tmp24 ;
  struct wm831x_pdata *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  int __cil_tmp33 ;
  struct _ddebug *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned char __cil_tmp41 ;
  long __cil_tmp42 ;
  long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  struct device *__cil_tmp46 ;
  struct device const *__cil_tmp47 ;
  int __cil_tmp48 ;
  struct wm831x_pdata *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  struct regulator_init_data *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  struct regulator_init_data *__cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  struct device *__cil_tmp62 ;
  struct wm831x_ldo *__cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  struct device *__cil_tmp68 ;
  struct device const *__cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  struct resource *__cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  struct device *__cil_tmp77 ;
  struct device const *__cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  resource_size_t __cil_tmp81 ;
  char (*__cil_tmp82)[6U] ;
  char *__cil_tmp83 ;
  int __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  char (*__cil_tmp87)[6U] ;
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
  struct regulator_desc *__cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  struct device *__cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  struct regulator_init_data *__cil_tmp115 ;
  struct regulator_init_data const *__cil_tmp116 ;
  void *__cil_tmp117 ;
  struct device_node *__cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  struct regulator_dev *__cil_tmp121 ;
  void const *__cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  struct regulator_dev *__cil_tmp125 ;
  void const *__cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  struct device *__cil_tmp129 ;
  struct device const *__cil_tmp130 ;
  int __cil_tmp131 ;
  unsigned int __cil_tmp132 ;
  irqreturn_t (*__cil_tmp133)(int , void * ) ;
  char (*__cil_tmp134)[6U] ;
  char const *__cil_tmp135 ;
  void *__cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  struct device *__cil_tmp139 ;
  struct device const *__cil_tmp140 ;
  void *__cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  struct regulator_dev *__cil_tmp144 ;
  {
  {
  __cil_tmp15 = (unsigned long )pdev;
  __cil_tmp16 = __cil_tmp15 + 16;
  __cil_tmp17 = *((struct device **)__cil_tmp16);
  __cil_tmp18 = (struct device const *)__cil_tmp17;
  tmp = dev_get_drvdata(__cil_tmp18);
  wm831x = (struct wm831x *)tmp;
  __cil_tmp19 = (unsigned long )wm831x;
  __cil_tmp20 = __cil_tmp19 + 168;
  __cil_tmp21 = *((struct device **)__cil_tmp20);
  __cil_tmp22 = (unsigned long )__cil_tmp21;
  __cil_tmp23 = __cil_tmp22 + 280;
  __cil_tmp24 = *((void **)__cil_tmp23);
  pdata = (struct wm831x_pdata *)__cil_tmp24;
  }
  {
  __cil_tmp25 = (struct wm831x_pdata *)0;
  __cil_tmp26 = (unsigned long )__cil_tmp25;
  __cil_tmp27 = (unsigned long )pdata;
  if (__cil_tmp27 != __cil_tmp26) {
    {
    __cil_tmp28 = *((int *)pdata);
    if (__cil_tmp28 != 0) {
      __cil_tmp29 = *((int *)pdata);
      __cil_tmp30 = __cil_tmp29 * 10;
      id = __cil_tmp30 + 1;
    } else {
      id = 0;
    }
    }
  } else {
    id = 0;
  }
  }
  {
  __cil_tmp31 = (unsigned long )pdev;
  __cil_tmp32 = __cil_tmp31 + 8;
  __cil_tmp33 = *((int *)__cil_tmp32);
  id = __cil_tmp33 - id;
  __cil_tmp34 = & descriptor;
  *((char const **)__cil_tmp34) = "wm831x_ldo";
  __cil_tmp35 = (unsigned long )(& descriptor) + 8;
  *((char const **)__cil_tmp35) = "wm831x_aldo_probe";
  __cil_tmp36 = (unsigned long )(& descriptor) + 16;
  *((char const **)__cil_tmp36) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12255/dscv_tempdir/dscv/ri/43_1a/drivers/regulator/wm831x-ldo.c.p";
  __cil_tmp37 = (unsigned long )(& descriptor) + 24;
  *((char const **)__cil_tmp37) = "Probing LDO%d\n";
  __cil_tmp38 = (unsigned long )(& descriptor) + 32;
  *((unsigned int *)__cil_tmp38) = 604U;
  __cil_tmp39 = (unsigned long )(& descriptor) + 35;
  *((unsigned char *)__cil_tmp39) = (unsigned char)1;
  __cil_tmp40 = (unsigned long )(& descriptor) + 35;
  __cil_tmp41 = *((unsigned char *)__cil_tmp40);
  __cil_tmp42 = (long )__cil_tmp41;
  __cil_tmp43 = __cil_tmp42 & 1L;
  tmp___0 = __builtin_expect(__cil_tmp43, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __cil_tmp44 = (unsigned long )pdev;
    __cil_tmp45 = __cil_tmp44 + 16;
    __cil_tmp46 = (struct device *)__cil_tmp45;
    __cil_tmp47 = (struct device const *)__cil_tmp46;
    __cil_tmp48 = id + 1;
    __dynamic_dev_dbg(& descriptor, __cil_tmp47, "Probing LDO%d\n", __cil_tmp48);
    }
  } else {
  }
  {
  __cil_tmp49 = (struct wm831x_pdata *)0;
  __cil_tmp50 = (unsigned long )__cil_tmp49;
  __cil_tmp51 = (unsigned long )pdata;
  if (__cil_tmp51 == __cil_tmp50) {
    return (-19);
  } else {
    {
    __cil_tmp52 = (struct regulator_init_data *)0;
    __cil_tmp53 = (unsigned long )__cil_tmp52;
    __cil_tmp54 = id * 8UL;
    __cil_tmp55 = 208 + __cil_tmp54;
    __cil_tmp56 = (unsigned long )pdata;
    __cil_tmp57 = __cil_tmp56 + __cil_tmp55;
    __cil_tmp58 = *((struct regulator_init_data **)__cil_tmp57);
    __cil_tmp59 = (unsigned long )__cil_tmp58;
    if (__cil_tmp59 == __cil_tmp53) {
      return (-19);
    } else {
    }
    }
  }
  }
  {
  __cil_tmp60 = (unsigned long )pdev;
  __cil_tmp61 = __cil_tmp60 + 16;
  __cil_tmp62 = (struct device *)__cil_tmp61;
  tmp___1 = devm_kzalloc(__cil_tmp62, 80UL, 208U);
  ldo = (struct wm831x_ldo *)tmp___1;
  }
  {
  __cil_tmp63 = (struct wm831x_ldo *)0;
  __cil_tmp64 = (unsigned long )__cil_tmp63;
  __cil_tmp65 = (unsigned long )ldo;
  if (__cil_tmp65 == __cil_tmp64) {
    {
    __cil_tmp66 = (unsigned long )pdev;
    __cil_tmp67 = __cil_tmp66 + 16;
    __cil_tmp68 = (struct device *)__cil_tmp67;
    __cil_tmp69 = (struct device const *)__cil_tmp68;
    dev_err(__cil_tmp69, "Unable to allocate private data\n");
    }
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp70 = (unsigned long )ldo;
  __cil_tmp71 = __cil_tmp70 + 64;
  *((struct wm831x **)__cil_tmp71) = wm831x;
  res = platform_get_resource(pdev, 256U, 0U);
  }
  {
  __cil_tmp72 = (struct resource *)0;
  __cil_tmp73 = (unsigned long )__cil_tmp72;
  __cil_tmp74 = (unsigned long )res;
  if (__cil_tmp74 == __cil_tmp73) {
    {
    __cil_tmp75 = (unsigned long )pdev;
    __cil_tmp76 = __cil_tmp75 + 16;
    __cil_tmp77 = (struct device *)__cil_tmp76;
    __cil_tmp78 = (struct device const *)__cil_tmp77;
    dev_err(__cil_tmp78, "No I/O resource\n");
    ret = -22;
    }
    goto err;
  } else {
  }
  }
  {
  __cil_tmp79 = (unsigned long )ldo;
  __cil_tmp80 = __cil_tmp79 + 56;
  __cil_tmp81 = *((resource_size_t *)res);
  *((int *)__cil_tmp80) = (int )__cil_tmp81;
  __cil_tmp82 = (char (*)[6U])ldo;
  __cil_tmp83 = (char *)__cil_tmp82;
  __cil_tmp84 = id + 1;
  snprintf(__cil_tmp83, 6UL, "LDO%d", __cil_tmp84);
  __cil_tmp85 = (unsigned long )ldo;
  __cil_tmp86 = __cil_tmp85 + 8;
  __cil_tmp87 = (char (*)[6U])ldo;
  *((char const **)__cil_tmp86) = (char const *)__cil_tmp87;
  __cil_tmp88 = 8 + 16;
  __cil_tmp89 = (unsigned long )ldo;
  __cil_tmp90 = __cil_tmp89 + __cil_tmp88;
  *((int *)__cil_tmp90) = id;
  __cil_tmp91 = 8 + 36;
  __cil_tmp92 = (unsigned long )ldo;
  __cil_tmp93 = __cil_tmp92 + __cil_tmp91;
  *((enum regulator_type *)__cil_tmp93) = (enum regulator_type )0;
  __cil_tmp94 = 8 + 20;
  __cil_tmp95 = (unsigned long )ldo;
  __cil_tmp96 = __cil_tmp95 + __cil_tmp94;
  *((unsigned int *)__cil_tmp96) = 32U;
  __cil_tmp97 = 8 + 24;
  __cil_tmp98 = (unsigned long )ldo;
  __cil_tmp99 = __cil_tmp98 + __cil_tmp97;
  *((struct regulator_ops **)__cil_tmp99) = & wm831x_aldo_ops;
  __cil_tmp100 = 8 + 40;
  __cil_tmp101 = (unsigned long )ldo;
  __cil_tmp102 = __cil_tmp101 + __cil_tmp100;
  *((struct module **)__cil_tmp102) = & __this_module;
  __cil_tmp103 = (unsigned long )ldo;
  __cil_tmp104 = __cil_tmp103 + 72;
  __cil_tmp105 = (unsigned long )ldo;
  __cil_tmp106 = __cil_tmp105 + 8;
  __cil_tmp107 = (struct regulator_desc *)__cil_tmp106;
  __cil_tmp108 = (unsigned long )pdev;
  __cil_tmp109 = __cil_tmp108 + 16;
  __cil_tmp110 = (struct device *)__cil_tmp109;
  __cil_tmp111 = id * 8UL;
  __cil_tmp112 = 208 + __cil_tmp111;
  __cil_tmp113 = (unsigned long )pdata;
  __cil_tmp114 = __cil_tmp113 + __cil_tmp112;
  __cil_tmp115 = *((struct regulator_init_data **)__cil_tmp114);
  __cil_tmp116 = (struct regulator_init_data const *)__cil_tmp115;
  __cil_tmp117 = (void *)ldo;
  __cil_tmp118 = (struct device_node *)0;
  *((struct regulator_dev **)__cil_tmp104) = regulator_register(__cil_tmp107, __cil_tmp110,
                                                                __cil_tmp116, __cil_tmp117,
                                                                __cil_tmp118);
  __cil_tmp119 = (unsigned long )ldo;
  __cil_tmp120 = __cil_tmp119 + 72;
  __cil_tmp121 = *((struct regulator_dev **)__cil_tmp120);
  __cil_tmp122 = (void const *)__cil_tmp121;
  tmp___3 = IS_ERR(__cil_tmp122);
  }
  if (tmp___3 != 0L) {
    {
    __cil_tmp123 = (unsigned long )ldo;
    __cil_tmp124 = __cil_tmp123 + 72;
    __cil_tmp125 = *((struct regulator_dev **)__cil_tmp124);
    __cil_tmp126 = (void const *)__cil_tmp125;
    tmp___2 = PTR_ERR(__cil_tmp126);
    ret = (int )tmp___2;
    __cil_tmp127 = (unsigned long )wm831x;
    __cil_tmp128 = __cil_tmp127 + 168;
    __cil_tmp129 = *((struct device **)__cil_tmp128);
    __cil_tmp130 = (struct device const *)__cil_tmp129;
    __cil_tmp131 = id + 1;
    dev_err(__cil_tmp130, "Failed to register LDO%d: %d\n", __cil_tmp131, ret);
    }
    goto err;
  } else {
  }
  {
  irq = platform_get_irq_byname(pdev, "UV");
  __cil_tmp132 = (unsigned int )irq;
  __cil_tmp133 = (irqreturn_t (*)(int , void * ))0;
  __cil_tmp134 = (char (*)[6U])ldo;
  __cil_tmp135 = (char const *)__cil_tmp134;
  __cil_tmp136 = (void *)ldo;
  ret = request_threaded_irq(__cil_tmp132, __cil_tmp133, & wm831x_ldo_uv_irq, 1UL,
                             __cil_tmp135, __cil_tmp136);
  }
  if (ret != 0) {
    {
    __cil_tmp137 = (unsigned long )pdev;
    __cil_tmp138 = __cil_tmp137 + 16;
    __cil_tmp139 = (struct device *)__cil_tmp138;
    __cil_tmp140 = (struct device const *)__cil_tmp139;
    dev_err(__cil_tmp140, "Failed to request UV IRQ %d: %d\n", irq, ret);
    }
    goto err_regulator;
  } else {
  }
  {
  __cil_tmp141 = (void *)ldo;
  platform_set_drvdata(pdev, __cil_tmp141);
  }
  return (0);
  err_regulator:
  {
  __cil_tmp142 = (unsigned long )ldo;
  __cil_tmp143 = __cil_tmp142 + 72;
  __cil_tmp144 = *((struct regulator_dev **)__cil_tmp143);
  regulator_unregister(__cil_tmp144);
  }
  err: ;
  return (ret);
}
}
static int wm831x_aldo_remove(struct platform_device *pdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  int tmp___0 ;
  struct platform_device const *__cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  void *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct regulator_dev *__cil_tmp10 ;
  {
  {
  __cil_tmp5 = (struct platform_device const *)pdev;
  tmp = platform_get_drvdata(__cil_tmp5);
  ldo = (struct wm831x_ldo *)tmp;
  tmp___0 = platform_get_irq_byname(pdev, "UV");
  __cil_tmp6 = (unsigned int )tmp___0;
  __cil_tmp7 = (void *)ldo;
  free_irq(__cil_tmp6, __cil_tmp7);
  __cil_tmp8 = (unsigned long )ldo;
  __cil_tmp9 = __cil_tmp8 + 72;
  __cil_tmp10 = *((struct regulator_dev **)__cil_tmp9);
  regulator_unregister(__cil_tmp10);
  }
  return (0);
}
}
static struct platform_driver wm831x_aldo_driver = {& wm831x_aldo_probe, & wm831x_aldo_remove, (void (*)(struct platform_device * ))0,
    (int (*)(struct platform_device * , pm_message_t ))0, (int (*)(struct platform_device * ))0,
    {"wm831x-aldo", (struct bus_type *)0, & __this_module, (char const *)0, (_Bool)0,
     (struct of_device_id const *)0, (int (*)(struct device * ))0, (int (*)(struct device * ))0,
     (void (*)(struct device * ))0, (int (*)(struct device * , pm_message_t ))0,
     (int (*)(struct device * ))0, (struct attribute_group const **)0, (struct dev_pm_ops const *)0,
     (struct driver_private *)0}, (struct platform_device_id const *)0};
static int wm831x_alive_ldo_list_voltage(struct regulator_dev *rdev , unsigned int selector )
{ unsigned int __cil_tmp3 ;
  unsigned int __cil_tmp4 ;
  {
  if (selector <= 15U) {
    {
    __cil_tmp3 = selector * 50000U;
    __cil_tmp4 = __cil_tmp3 + 800000U;
    return ((int )__cil_tmp4);
    }
  } else {
  }
  return (-22);
}
}
static int wm831x_alive_ldo_set_voltage_int(struct regulator_dev *rdev , int reg ,
                                            int min_uV , int max_uV , unsigned int *selector )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int vsel ;
  int ret ;
  int tmp___0 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  unsigned short __cil_tmp16 ;
  int __cil_tmp17 ;
  unsigned short __cil_tmp18 ;
  unsigned short __cil_tmp19 ;
  int __cil_tmp20 ;
  unsigned short __cil_tmp21 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp12 = (unsigned long )ldo;
  __cil_tmp13 = __cil_tmp12 + 64;
  wm831x = *((struct wm831x **)__cil_tmp13);
  __cil_tmp14 = min_uV + -800000;
  vsel = __cil_tmp14 / 50000;
  __cil_tmp15 = (unsigned int )vsel;
  ret = wm831x_alive_ldo_list_voltage(rdev, __cil_tmp15);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (ret < min_uV) {
    return (-22);
  } else
  if (ret > max_uV) {
    return (-22);
  } else {
  }
  {
  *selector = (unsigned int )vsel;
  __cil_tmp16 = (unsigned short )reg;
  __cil_tmp17 = (int )__cil_tmp16;
  __cil_tmp18 = (unsigned short )__cil_tmp17;
  __cil_tmp19 = (unsigned short )vsel;
  __cil_tmp20 = (int )__cil_tmp19;
  __cil_tmp21 = (unsigned short )__cil_tmp20;
  tmp___0 = wm831x_set_bits(wm831x, __cil_tmp18, (unsigned short)15, __cil_tmp21);
  }
  return (tmp___0);
}
}
static int wm831x_alive_ldo_set_voltage(struct regulator_dev *rdev , int min_uV ,
                                        int max_uV , unsigned int *selector )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  int reg ;
  int tmp___0 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp9 = (unsigned long )ldo;
  __cil_tmp10 = __cil_tmp9 + 56;
  reg = *((int *)__cil_tmp10);
  tmp___0 = wm831x_alive_ldo_set_voltage_int(rdev, reg, min_uV, max_uV, selector);
  }
  return (tmp___0);
}
}
static int wm831x_alive_ldo_set_suspend_voltage(struct regulator_dev *rdev , int uV )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  int reg ;
  unsigned int selector ;
  int tmp___0 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp8 = (unsigned long )ldo;
  __cil_tmp9 = __cil_tmp8 + 56;
  __cil_tmp10 = *((int *)__cil_tmp9);
  reg = __cil_tmp10 + 1;
  tmp___0 = wm831x_alive_ldo_set_voltage_int(rdev, reg, uV, uV, & selector);
  }
  return (tmp___0);
}
}
static int wm831x_alive_ldo_get_voltage_sel(struct regulator_dev *rdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int reg ;
  int ret ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned short __cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned short __cil_tmp13 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp7 = (unsigned long )ldo;
  __cil_tmp8 = __cil_tmp7 + 64;
  wm831x = *((struct wm831x **)__cil_tmp8);
  __cil_tmp9 = (unsigned long )ldo;
  __cil_tmp10 = __cil_tmp9 + 56;
  reg = *((int *)__cil_tmp10);
  __cil_tmp11 = (unsigned short )reg;
  __cil_tmp12 = (int )__cil_tmp11;
  __cil_tmp13 = (unsigned short )__cil_tmp12;
  ret = wm831x_reg_read(wm831x, __cil_tmp13);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = ret & 15;
  return (ret);
}
}
static int wm831x_alive_ldo_get_status(struct regulator_dev *rdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct wm831x *wm831x ;
  int mask ;
  int tmp___0 ;
  int ret ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  {
  {
  tmp = rdev_get_drvdata(rdev);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp8 = (unsigned long )ldo;
  __cil_tmp9 = __cil_tmp8 + 64;
  wm831x = *((struct wm831x **)__cil_tmp9);
  tmp___0 = rdev_get_id(rdev);
  mask = 1 << tmp___0;
  ret = wm831x_reg_read(wm831x, (unsigned short)16467);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp10 = ret & mask;
  if (__cil_tmp10 != 0) {
    return (1);
  } else {
    return (0);
  }
  }
}
}
static struct regulator_ops wm831x_alive_ldo_ops =
     {& wm831x_alive_ldo_list_voltage, & wm831x_alive_ldo_set_voltage, (int (*)(struct regulator_dev * ,
                                                                              unsigned int ))0,
    (int (*)(struct regulator_dev * ))0, & wm831x_alive_ldo_get_voltage_sel, (int (*)(struct regulator_dev * ,
                                                                                      int ,
                                                                                      int ))0,
    (int (*)(struct regulator_dev * ))0, & wm831x_ldo_enable, & wm831x_ldo_disable,
    & wm831x_ldo_is_enabled, (int (*)(struct regulator_dev * , unsigned int ))0,
    (unsigned int (*)(struct regulator_dev * ))0, (int (*)(struct regulator_dev * ))0,
    (int (*)(struct regulator_dev * , unsigned int , unsigned int ))0, & wm831x_alive_ldo_get_status,
    (unsigned int (*)(struct regulator_dev * , int , int , int ))0, & wm831x_alive_ldo_set_suspend_voltage,
    (int (*)(struct regulator_dev * ))0, (int (*)(struct regulator_dev * ))0, (int (*)(struct regulator_dev * ,
                                                                                       unsigned int ))0};
static int wm831x_alive_ldo_probe(struct platform_device *pdev )
{ struct wm831x *wm831x ;
  void *tmp ;
  struct wm831x_pdata *pdata ;
  int id ;
  struct wm831x_ldo *ldo ;
  struct resource *res ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct device *__cil_tmp16 ;
  struct device const *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct device *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  void *__cil_tmp23 ;
  struct wm831x_pdata *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  int __cil_tmp32 ;
  struct _ddebug *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned char __cil_tmp40 ;
  long __cil_tmp41 ;
  long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  struct device *__cil_tmp45 ;
  struct device const *__cil_tmp46 ;
  int __cil_tmp47 ;
  struct wm831x_pdata *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  struct regulator_init_data *__cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  struct regulator_init_data *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  struct device *__cil_tmp61 ;
  struct wm831x_ldo *__cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  struct device *__cil_tmp67 ;
  struct device const *__cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  struct resource *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  struct device *__cil_tmp76 ;
  struct device const *__cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  resource_size_t __cil_tmp80 ;
  char (*__cil_tmp81)[6U] ;
  char *__cil_tmp82 ;
  int __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  char (*__cil_tmp86)[6U] ;
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
  struct regulator_desc *__cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  struct device *__cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  struct regulator_init_data *__cil_tmp114 ;
  struct regulator_init_data const *__cil_tmp115 ;
  void *__cil_tmp116 ;
  struct device_node *__cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  struct regulator_dev *__cil_tmp120 ;
  void const *__cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  struct regulator_dev *__cil_tmp124 ;
  void const *__cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  struct device *__cil_tmp128 ;
  struct device const *__cil_tmp129 ;
  int __cil_tmp130 ;
  void *__cil_tmp131 ;
  {
  {
  __cil_tmp14 = (unsigned long )pdev;
  __cil_tmp15 = __cil_tmp14 + 16;
  __cil_tmp16 = *((struct device **)__cil_tmp15);
  __cil_tmp17 = (struct device const *)__cil_tmp16;
  tmp = dev_get_drvdata(__cil_tmp17);
  wm831x = (struct wm831x *)tmp;
  __cil_tmp18 = (unsigned long )wm831x;
  __cil_tmp19 = __cil_tmp18 + 168;
  __cil_tmp20 = *((struct device **)__cil_tmp19);
  __cil_tmp21 = (unsigned long )__cil_tmp20;
  __cil_tmp22 = __cil_tmp21 + 280;
  __cil_tmp23 = *((void **)__cil_tmp22);
  pdata = (struct wm831x_pdata *)__cil_tmp23;
  }
  {
  __cil_tmp24 = (struct wm831x_pdata *)0;
  __cil_tmp25 = (unsigned long )__cil_tmp24;
  __cil_tmp26 = (unsigned long )pdata;
  if (__cil_tmp26 != __cil_tmp25) {
    {
    __cil_tmp27 = *((int *)pdata);
    if (__cil_tmp27 != 0) {
      __cil_tmp28 = *((int *)pdata);
      __cil_tmp29 = __cil_tmp28 * 10;
      id = __cil_tmp29 + 1;
    } else {
      id = 0;
    }
    }
  } else {
    id = 0;
  }
  }
  {
  __cil_tmp30 = (unsigned long )pdev;
  __cil_tmp31 = __cil_tmp30 + 8;
  __cil_tmp32 = *((int *)__cil_tmp31);
  id = __cil_tmp32 - id;
  __cil_tmp33 = & descriptor;
  *((char const **)__cil_tmp33) = "wm831x_ldo";
  __cil_tmp34 = (unsigned long )(& descriptor) + 8;
  *((char const **)__cil_tmp34) = "wm831x_alive_ldo_probe";
  __cil_tmp35 = (unsigned long )(& descriptor) + 16;
  *((char const **)__cil_tmp35) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12255/dscv_tempdir/dscv/ri/43_1a/drivers/regulator/wm831x-ldo.c.p";
  __cil_tmp36 = (unsigned long )(& descriptor) + 24;
  *((char const **)__cil_tmp36) = "Probing LDO%d\n";
  __cil_tmp37 = (unsigned long )(& descriptor) + 32;
  *((unsigned int *)__cil_tmp37) = 799U;
  __cil_tmp38 = (unsigned long )(& descriptor) + 35;
  *((unsigned char *)__cil_tmp38) = (unsigned char)1;
  __cil_tmp39 = (unsigned long )(& descriptor) + 35;
  __cil_tmp40 = *((unsigned char *)__cil_tmp39);
  __cil_tmp41 = (long )__cil_tmp40;
  __cil_tmp42 = __cil_tmp41 & 1L;
  tmp___0 = __builtin_expect(__cil_tmp42, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __cil_tmp43 = (unsigned long )pdev;
    __cil_tmp44 = __cil_tmp43 + 16;
    __cil_tmp45 = (struct device *)__cil_tmp44;
    __cil_tmp46 = (struct device const *)__cil_tmp45;
    __cil_tmp47 = id + 1;
    __dynamic_dev_dbg(& descriptor, __cil_tmp46, "Probing LDO%d\n", __cil_tmp47);
    }
  } else {
  }
  {
  __cil_tmp48 = (struct wm831x_pdata *)0;
  __cil_tmp49 = (unsigned long )__cil_tmp48;
  __cil_tmp50 = (unsigned long )pdata;
  if (__cil_tmp50 == __cil_tmp49) {
    return (-19);
  } else {
    {
    __cil_tmp51 = (struct regulator_init_data *)0;
    __cil_tmp52 = (unsigned long )__cil_tmp51;
    __cil_tmp53 = id * 8UL;
    __cil_tmp54 = 208 + __cil_tmp53;
    __cil_tmp55 = (unsigned long )pdata;
    __cil_tmp56 = __cil_tmp55 + __cil_tmp54;
    __cil_tmp57 = *((struct regulator_init_data **)__cil_tmp56);
    __cil_tmp58 = (unsigned long )__cil_tmp57;
    if (__cil_tmp58 == __cil_tmp52) {
      return (-19);
    } else {
    }
    }
  }
  }
  {
  __cil_tmp59 = (unsigned long )pdev;
  __cil_tmp60 = __cil_tmp59 + 16;
  __cil_tmp61 = (struct device *)__cil_tmp60;
  tmp___1 = devm_kzalloc(__cil_tmp61, 80UL, 208U);
  ldo = (struct wm831x_ldo *)tmp___1;
  }
  {
  __cil_tmp62 = (struct wm831x_ldo *)0;
  __cil_tmp63 = (unsigned long )__cil_tmp62;
  __cil_tmp64 = (unsigned long )ldo;
  if (__cil_tmp64 == __cil_tmp63) {
    {
    __cil_tmp65 = (unsigned long )pdev;
    __cil_tmp66 = __cil_tmp65 + 16;
    __cil_tmp67 = (struct device *)__cil_tmp66;
    __cil_tmp68 = (struct device const *)__cil_tmp67;
    dev_err(__cil_tmp68, "Unable to allocate private data\n");
    }
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp69 = (unsigned long )ldo;
  __cil_tmp70 = __cil_tmp69 + 64;
  *((struct wm831x **)__cil_tmp70) = wm831x;
  res = platform_get_resource(pdev, 256U, 0U);
  }
  {
  __cil_tmp71 = (struct resource *)0;
  __cil_tmp72 = (unsigned long )__cil_tmp71;
  __cil_tmp73 = (unsigned long )res;
  if (__cil_tmp73 == __cil_tmp72) {
    {
    __cil_tmp74 = (unsigned long )pdev;
    __cil_tmp75 = __cil_tmp74 + 16;
    __cil_tmp76 = (struct device *)__cil_tmp75;
    __cil_tmp77 = (struct device const *)__cil_tmp76;
    dev_err(__cil_tmp77, "No I/O resource\n");
    ret = -22;
    }
    goto err;
  } else {
  }
  }
  {
  __cil_tmp78 = (unsigned long )ldo;
  __cil_tmp79 = __cil_tmp78 + 56;
  __cil_tmp80 = *((resource_size_t *)res);
  *((int *)__cil_tmp79) = (int )__cil_tmp80;
  __cil_tmp81 = (char (*)[6U])ldo;
  __cil_tmp82 = (char *)__cil_tmp81;
  __cil_tmp83 = id + 1;
  snprintf(__cil_tmp82, 6UL, "LDO%d", __cil_tmp83);
  __cil_tmp84 = (unsigned long )ldo;
  __cil_tmp85 = __cil_tmp84 + 8;
  __cil_tmp86 = (char (*)[6U])ldo;
  *((char const **)__cil_tmp85) = (char const *)__cil_tmp86;
  __cil_tmp87 = 8 + 16;
  __cil_tmp88 = (unsigned long )ldo;
  __cil_tmp89 = __cil_tmp88 + __cil_tmp87;
  *((int *)__cil_tmp89) = id;
  __cil_tmp90 = 8 + 36;
  __cil_tmp91 = (unsigned long )ldo;
  __cil_tmp92 = __cil_tmp91 + __cil_tmp90;
  *((enum regulator_type *)__cil_tmp92) = (enum regulator_type )0;
  __cil_tmp93 = 8 + 20;
  __cil_tmp94 = (unsigned long )ldo;
  __cil_tmp95 = __cil_tmp94 + __cil_tmp93;
  *((unsigned int *)__cil_tmp95) = 16U;
  __cil_tmp96 = 8 + 24;
  __cil_tmp97 = (unsigned long )ldo;
  __cil_tmp98 = __cil_tmp97 + __cil_tmp96;
  *((struct regulator_ops **)__cil_tmp98) = & wm831x_alive_ldo_ops;
  __cil_tmp99 = 8 + 40;
  __cil_tmp100 = (unsigned long )ldo;
  __cil_tmp101 = __cil_tmp100 + __cil_tmp99;
  *((struct module **)__cil_tmp101) = & __this_module;
  __cil_tmp102 = (unsigned long )ldo;
  __cil_tmp103 = __cil_tmp102 + 72;
  __cil_tmp104 = (unsigned long )ldo;
  __cil_tmp105 = __cil_tmp104 + 8;
  __cil_tmp106 = (struct regulator_desc *)__cil_tmp105;
  __cil_tmp107 = (unsigned long )pdev;
  __cil_tmp108 = __cil_tmp107 + 16;
  __cil_tmp109 = (struct device *)__cil_tmp108;
  __cil_tmp110 = id * 8UL;
  __cil_tmp111 = 208 + __cil_tmp110;
  __cil_tmp112 = (unsigned long )pdata;
  __cil_tmp113 = __cil_tmp112 + __cil_tmp111;
  __cil_tmp114 = *((struct regulator_init_data **)__cil_tmp113);
  __cil_tmp115 = (struct regulator_init_data const *)__cil_tmp114;
  __cil_tmp116 = (void *)ldo;
  __cil_tmp117 = (struct device_node *)0;
  *((struct regulator_dev **)__cil_tmp103) = regulator_register(__cil_tmp106, __cil_tmp109,
                                                                __cil_tmp115, __cil_tmp116,
                                                                __cil_tmp117);
  __cil_tmp118 = (unsigned long )ldo;
  __cil_tmp119 = __cil_tmp118 + 72;
  __cil_tmp120 = *((struct regulator_dev **)__cil_tmp119);
  __cil_tmp121 = (void const *)__cil_tmp120;
  tmp___3 = IS_ERR(__cil_tmp121);
  }
  if (tmp___3 != 0L) {
    {
    __cil_tmp122 = (unsigned long )ldo;
    __cil_tmp123 = __cil_tmp122 + 72;
    __cil_tmp124 = *((struct regulator_dev **)__cil_tmp123);
    __cil_tmp125 = (void const *)__cil_tmp124;
    tmp___2 = PTR_ERR(__cil_tmp125);
    ret = (int )tmp___2;
    __cil_tmp126 = (unsigned long )wm831x;
    __cil_tmp127 = __cil_tmp126 + 168;
    __cil_tmp128 = *((struct device **)__cil_tmp127);
    __cil_tmp129 = (struct device const *)__cil_tmp128;
    __cil_tmp130 = id + 1;
    dev_err(__cil_tmp129, "Failed to register LDO%d: %d\n", __cil_tmp130, ret);
    }
    goto err;
  } else {
  }
  {
  __cil_tmp131 = (void *)ldo;
  platform_set_drvdata(pdev, __cil_tmp131);
  }
  return (0);
  err: ;
  return (ret);
}
}
static int wm831x_alive_ldo_remove(struct platform_device *pdev )
{ struct wm831x_ldo *ldo ;
  void *tmp ;
  struct platform_device const *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct regulator_dev *__cil_tmp7 ;
  {
  {
  __cil_tmp4 = (struct platform_device const *)pdev;
  tmp = platform_get_drvdata(__cil_tmp4);
  ldo = (struct wm831x_ldo *)tmp;
  __cil_tmp5 = (unsigned long )ldo;
  __cil_tmp6 = __cil_tmp5 + 72;
  __cil_tmp7 = *((struct regulator_dev **)__cil_tmp6);
  regulator_unregister(__cil_tmp7);
  }
  return (0);
}
}
static struct platform_driver wm831x_alive_ldo_driver = {& wm831x_alive_ldo_probe, & wm831x_alive_ldo_remove, (void (*)(struct platform_device * ))0,
    (int (*)(struct platform_device * , pm_message_t ))0, (int (*)(struct platform_device * ))0,
    {"wm831x-alive-ldo", (struct bus_type *)0, & __this_module, (char const *)0,
     (_Bool)0, (struct of_device_id const *)0, (int (*)(struct device * ))0, (int (*)(struct device * ))0,
     (void (*)(struct device * ))0, (int (*)(struct device * , pm_message_t ))0,
     (int (*)(struct device * ))0, (struct attribute_group const **)0, (struct dev_pm_ops const *)0,
     (struct driver_private *)0}, (struct platform_device_id const *)0};
static int wm831x_ldo_init(void)
{ int ret ;
  {
  {
  ret = platform_driver_register(& wm831x_gp_ldo_driver);
  }
  if (ret != 0) {
    {
    printk("<3>Failed to register WM831x GP LDO driver: %d\n", ret);
    }
  } else {
  }
  {
  ret = platform_driver_register(& wm831x_aldo_driver);
  }
  if (ret != 0) {
    {
    printk("<3>Failed to register WM831x ALDO driver: %d\n", ret);
    }
  } else {
  }
  {
  ret = platform_driver_register(& wm831x_alive_ldo_driver);
  }
  if (ret != 0) {
    {
    printk("<3>Failed to register WM831x alive LDO driver: %d\n", ret);
    }
  } else {
  }
  return (0);
}
}
static void wm831x_ldo_exit(void)
{
  {
  {
  platform_driver_unregister(& wm831x_alive_ldo_driver);
  platform_driver_unregister(& wm831x_aldo_driver);
  platform_driver_unregister(& wm831x_gp_ldo_driver);
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
{ struct regulator_dev *var_group1 ;
  unsigned int var_wm831x_gp_ldo_list_voltage_4_p1 ;
  int var_wm831x_gp_ldo_set_voltage_6_p1 ;
  int var_wm831x_gp_ldo_set_voltage_6_p2 ;
  unsigned int *var_wm831x_gp_ldo_set_voltage_6_p3 ;
  int var_wm831x_gp_ldo_set_suspend_voltage_7_p1 ;
  unsigned int var_wm831x_gp_ldo_set_mode_10_p1 ;
  int var_wm831x_gp_ldo_get_optimum_mode_12_p1 ;
  int var_wm831x_gp_ldo_get_optimum_mode_12_p2 ;
  int var_wm831x_gp_ldo_get_optimum_mode_12_p3 ;
  struct platform_device *var_group2 ;
  int res_wm831x_gp_ldo_probe_13 ;
  unsigned int var_wm831x_aldo_list_voltage_15_p1 ;
  int var_wm831x_aldo_set_voltage_17_p1 ;
  int var_wm831x_aldo_set_voltage_17_p2 ;
  unsigned int *var_wm831x_aldo_set_voltage_17_p3 ;
  int var_wm831x_aldo_set_suspend_voltage_18_p1 ;
  unsigned int var_wm831x_aldo_set_mode_21_p1 ;
  int res_wm831x_aldo_probe_23 ;
  unsigned int var_wm831x_alive_ldo_list_voltage_25_p1 ;
  int var_wm831x_alive_ldo_set_voltage_27_p1 ;
  int var_wm831x_alive_ldo_set_voltage_27_p2 ;
  unsigned int *var_wm831x_alive_ldo_set_voltage_27_p3 ;
  int var_wm831x_alive_ldo_set_suspend_voltage_28_p1 ;
  int res_wm831x_alive_ldo_probe_31 ;
  int var_wm831x_ldo_uv_irq_3_p0 ;
  void *var_wm831x_ldo_uv_irq_3_p1 ;
  int ldv_s_wm831x_gp_ldo_driver_platform_driver ;
  int ldv_s_wm831x_aldo_driver_platform_driver ;
  int ldv_s_wm831x_alive_ldo_driver_platform_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  ldv_s_wm831x_gp_ldo_driver_platform_driver = 0;
  ldv_s_wm831x_aldo_driver_platform_driver = 0;
  ldv_s_wm831x_alive_ldo_driver_platform_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = wm831x_ldo_init();
  }
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_21169;
  ldv_21168:
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
  } else
  if (tmp___0 == 6) {
    goto case_6;
  } else
  if (tmp___0 == 7) {
    goto case_7;
  } else
  if (tmp___0 == 8) {
    goto case_8;
  } else
  if (tmp___0 == 9) {
    goto case_9;
  } else
  if (tmp___0 == 10) {
    goto case_10;
  } else
  if (tmp___0 == 11) {
    goto case_11;
  } else
  if (tmp___0 == 12) {
    goto case_12;
  } else
  if (tmp___0 == 13) {
    goto case_13;
  } else
  if (tmp___0 == 14) {
    goto case_14;
  } else
  if (tmp___0 == 15) {
    goto case_15;
  } else
  if (tmp___0 == 16) {
    goto case_16;
  } else
  if (tmp___0 == 17) {
    goto case_17;
  } else
  if (tmp___0 == 18) {
    goto case_18;
  } else
  if (tmp___0 == 19) {
    goto case_19;
  } else
  if (tmp___0 == 20) {
    goto case_20;
  } else
  if (tmp___0 == 21) {
    goto case_21;
  } else
  if (tmp___0 == 22) {
    goto case_22;
  } else
  if (tmp___0 == 23) {
    goto case_23;
  } else
  if (tmp___0 == 24) {
    goto case_24;
  } else
  if (tmp___0 == 25) {
    goto case_25;
  } else
  if (tmp___0 == 26) {
    goto case_26;
  } else
  if (tmp___0 == 27) {
    goto case_27;
  } else
  if (tmp___0 == 28) {
    goto case_28;
  } else
  if (tmp___0 == 29) {
    goto case_29;
  } else
  if (tmp___0 == 30) {
    goto case_30;
  } else
  if (tmp___0 == 31) {
    goto case_31;
  } else
  if (tmp___0 == 32) {
    goto case_32;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      {
      wm831x_gp_ldo_list_voltage(var_group1, var_wm831x_gp_ldo_list_voltage_4_p1);
      }
      goto ldv_21133;
      case_1:
      {
      wm831x_gp_ldo_get_voltage_sel(var_group1);
      }
      goto ldv_21133;
      case_2:
      {
      wm831x_gp_ldo_set_voltage(var_group1, var_wm831x_gp_ldo_set_voltage_6_p1, var_wm831x_gp_ldo_set_voltage_6_p2,
                                var_wm831x_gp_ldo_set_voltage_6_p3);
      }
      goto ldv_21133;
      case_3:
      {
      wm831x_gp_ldo_set_suspend_voltage(var_group1, var_wm831x_gp_ldo_set_suspend_voltage_7_p1);
      }
      goto ldv_21133;
      case_4:
      {
      wm831x_gp_ldo_get_mode(var_group1);
      }
      goto ldv_21133;
      case_5:
      {
      wm831x_gp_ldo_set_mode(var_group1, var_wm831x_gp_ldo_set_mode_10_p1);
      }
      goto ldv_21133;
      case_6:
      {
      wm831x_gp_ldo_get_status(var_group1);
      }
      goto ldv_21133;
      case_7:
      {
      wm831x_gp_ldo_get_optimum_mode(var_group1, var_wm831x_gp_ldo_get_optimum_mode_12_p1,
                                     var_wm831x_gp_ldo_get_optimum_mode_12_p2, var_wm831x_gp_ldo_get_optimum_mode_12_p3);
      }
      goto ldv_21133;
      case_8:
      {
      wm831x_ldo_is_enabled(var_group1);
      }
      goto ldv_21133;
      case_9:
      {
      wm831x_ldo_enable(var_group1);
      }
      goto ldv_21133;
      case_10:
      {
      wm831x_ldo_disable(var_group1);
      }
      goto ldv_21133;
      case_11: ;
      if (ldv_s_wm831x_gp_ldo_driver_platform_driver == 0) {
        {
        res_wm831x_gp_ldo_probe_13 = wm831x_gp_ldo_probe(var_group2);
        ldv_check_return_value(res_wm831x_gp_ldo_probe_13);
        }
        if (res_wm831x_gp_ldo_probe_13 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_wm831x_gp_ldo_driver_platform_driver = 0;
      } else {
      }
      goto ldv_21133;
      case_12:
      {
      wm831x_aldo_list_voltage(var_group1, var_wm831x_aldo_list_voltage_15_p1);
      }
      goto ldv_21133;
      case_13:
      {
      wm831x_aldo_get_voltage_sel(var_group1);
      }
      goto ldv_21133;
      case_14:
      {
      wm831x_aldo_set_voltage(var_group1, var_wm831x_aldo_set_voltage_17_p1, var_wm831x_aldo_set_voltage_17_p2,
                              var_wm831x_aldo_set_voltage_17_p3);
      }
      goto ldv_21133;
      case_15:
      {
      wm831x_aldo_set_suspend_voltage(var_group1, var_wm831x_aldo_set_suspend_voltage_18_p1);
      }
      goto ldv_21133;
      case_16:
      {
      wm831x_aldo_get_mode(var_group1);
      }
      goto ldv_21133;
      case_17:
      {
      wm831x_aldo_set_mode(var_group1, var_wm831x_aldo_set_mode_21_p1);
      }
      goto ldv_21133;
      case_18:
      {
      wm831x_aldo_get_status(var_group1);
      }
      goto ldv_21133;
      case_19:
      {
      wm831x_ldo_is_enabled(var_group1);
      }
      goto ldv_21133;
      case_20:
      {
      wm831x_ldo_enable(var_group1);
      }
      goto ldv_21133;
      case_21:
      {
      wm831x_ldo_disable(var_group1);
      }
      goto ldv_21133;
      case_22: ;
      if (ldv_s_wm831x_aldo_driver_platform_driver == 0) {
        {
        res_wm831x_aldo_probe_23 = wm831x_aldo_probe(var_group2);
        ldv_check_return_value(res_wm831x_aldo_probe_23);
        }
        if (res_wm831x_aldo_probe_23 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_wm831x_aldo_driver_platform_driver = 0;
      } else {
      }
      goto ldv_21133;
      case_23:
      {
      wm831x_alive_ldo_list_voltage(var_group1, var_wm831x_alive_ldo_list_voltage_25_p1);
      }
      goto ldv_21133;
      case_24:
      {
      wm831x_alive_ldo_get_voltage_sel(var_group1);
      }
      goto ldv_21133;
      case_25:
      {
      wm831x_alive_ldo_set_voltage(var_group1, var_wm831x_alive_ldo_set_voltage_27_p1,
                                   var_wm831x_alive_ldo_set_voltage_27_p2, var_wm831x_alive_ldo_set_voltage_27_p3);
      }
      goto ldv_21133;
      case_26:
      {
      wm831x_alive_ldo_set_suspend_voltage(var_group1, var_wm831x_alive_ldo_set_suspend_voltage_28_p1);
      }
      goto ldv_21133;
      case_27:
      {
      wm831x_alive_ldo_get_status(var_group1);
      }
      goto ldv_21133;
      case_28:
      {
      wm831x_ldo_is_enabled(var_group1);
      }
      goto ldv_21133;
      case_29:
      {
      wm831x_ldo_enable(var_group1);
      }
      goto ldv_21133;
      case_30:
      {
      wm831x_ldo_disable(var_group1);
      }
      goto ldv_21133;
      case_31: ;
      if (ldv_s_wm831x_alive_ldo_driver_platform_driver == 0) {
        {
        res_wm831x_alive_ldo_probe_31 = wm831x_alive_ldo_probe(var_group2);
        ldv_check_return_value(res_wm831x_alive_ldo_probe_31);
        }
        if (res_wm831x_alive_ldo_probe_31 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_wm831x_alive_ldo_driver_platform_driver = 0;
      } else {
      }
      goto ldv_21133;
      case_32:
      {
      LDV_IN_INTERRUPT = 2;
      wm831x_ldo_uv_irq(var_wm831x_ldo_uv_irq_3_p0, var_wm831x_ldo_uv_irq_3_p1);
      LDV_IN_INTERRUPT = 1;
      }
      goto ldv_21133;
      switch_default: ;
      goto ldv_21133;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_21133: ;
  ldv_21169:
  {
  tmp___1 = __VERIFIER_nondet_int();
  }
  if (tmp___1 != 0) {
    goto ldv_21168;
  } else
  if (ldv_s_wm831x_gp_ldo_driver_platform_driver != 0) {
    goto ldv_21168;
  } else
  if (ldv_s_wm831x_aldo_driver_platform_driver != 0) {
    goto ldv_21168;
  } else
  if (ldv_s_wm831x_alive_ldo_driver_platform_driver != 0) {
    goto ldv_21168;
  } else {
    goto ldv_21170;
  }
  ldv_21170: ;
  ldv_module_exit:
  {
  wm831x_ldo_exit();
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
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
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
void *devm_kzalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
void free_irq(unsigned int arg0, void *arg1) {
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
  return ldv_malloc(sizeof(struct page));
}
int __VERIFIER_nondet_int(void);
int platform_driver_register(struct platform_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_get_irq_byname(struct platform_device *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
struct resource *platform_get_resource(struct platform_device *arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct resource));
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void *rdev_get_drvdata(struct regulator_dev *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int rdev_get_id(struct regulator_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regulator_mode_to_status(unsigned int arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regulator_notifier_call_chain(struct regulator_dev *arg0, unsigned long arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
struct regulator_dev *regulator_register(struct regulator_desc *arg0, struct device *arg1, const struct regulator_init_data *arg2, void *arg3, struct device_node *arg4) {
  return ldv_malloc(sizeof(struct regulator_dev));
}
void regulator_unregister(struct regulator_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int wm831x_reg_read(struct wm831x *arg0, unsigned short arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int wm831x_set_bits(struct wm831x *arg0, unsigned short arg1, unsigned short arg2, unsigned short arg3) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
