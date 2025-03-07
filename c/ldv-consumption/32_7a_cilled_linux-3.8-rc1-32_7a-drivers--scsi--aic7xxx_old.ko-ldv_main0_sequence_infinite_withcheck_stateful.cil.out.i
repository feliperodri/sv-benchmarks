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
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __u32 nlink_t;
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
typedef __u32 uint32_t;
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
struct module;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct device;
struct completion;
struct pt_regs;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2024_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2024_8 ldv_2024 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2031_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2031_10 ldv_2031 ;
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
struct __anonstruct_ldv_2096_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2111_13 {
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
union __anonunion_ldv_2112_11 {
   struct __anonstruct_ldv_2096_12 ldv_2096 ;
   struct __anonstruct_ldv_2111_13 ldv_2111 ;
};
struct desc_struct {
   union __anonunion_ldv_2112_11 ldv_2112 ;
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
union __anonunion_ldv_2767_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2767_18 ldv_2767 ;
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
struct __anonstruct_ldv_5125_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5131_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5132_22 {
   struct __anonstruct_ldv_5125_23 ldv_5125 ;
   struct __anonstruct_ldv_5131_24 ldv_5131 ;
};
union __anonunion_ldv_5141_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5132_22 ldv_5132 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5141_25 ldv_5141 ;
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
struct __anonstruct_ldv_5960_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5961_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5960_29 ldv_5960 ;
};
struct spinlock {
   union __anonunion_ldv_5961_28 ldv_5961 ;
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
   int cpu ;
};
struct execute_work {
   struct work_struct work ;
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
struct vm_area_struct;
struct bio_vec;
struct call_single_data {
   struct list_head list ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
   u16 priv ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
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
union __anonunion_ldv_13820_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13820_134 ldv_13820 ;
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
   __u8 id[16U] ;
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
struct device_node;
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
union __anonunion_ldv_15579_136 {
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
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   int pm_cap ;
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
   union __anonunion_ldv_15579_136 ldv_15579 ;
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
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
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
union __anonunion_ldv_16610_138 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_16620_142 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_16622_141 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_16620_142 ldv_16620 ;
   int units ;
};
struct __anonstruct_ldv_16624_140 {
   union __anonunion_ldv_16622_141 ldv_16622 ;
   atomic_t _count ;
};
union __anonunion_ldv_16625_139 {
   unsigned long counters ;
   struct __anonstruct_ldv_16624_140 ldv_16624 ;
};
struct __anonstruct_ldv_16626_137 {
   union __anonunion_ldv_16610_138 ldv_16610 ;
   union __anonunion_ldv_16625_139 ldv_16625 ;
};
struct __anonstruct_ldv_16633_144 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_16637_143 {
   struct list_head lru ;
   struct __anonstruct_ldv_16633_144 ldv_16633 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_16642_145 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_16626_137 ldv_16626 ;
   union __anonunion_ldv_16637_143 ldv_16637 ;
   union __anonunion_ldv_16642_145 ldv_16642 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_147 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_146 {
   struct __anonstruct_linear_147 linear ;
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
struct __anonstruct_ldv_19401_149 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_19402_148 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_19401_149 ldv_19401 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_19402_148 ldv_19402 ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
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
struct __anonstruct_ldv_21011_151 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_21013_150 {
   struct __anonstruct_ldv_21011_151 ldv_21011 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_21013_150 ldv_21013 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_152 {
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
   union __anonunion_d_u_152 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
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
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bio {
   sector_t bi_sector ;
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   unsigned short bi_vcnt ;
   unsigned short bi_idx ;
   unsigned int bi_phys_segments ;
   unsigned int bi_size ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   struct bio_integrity_payload *bi_integrity ;
   unsigned int bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
struct iovec;
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
union __anonunion_ldv_22017_154 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_22017_154 ldv_22017 ;
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
union __anonunion_arg_156 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_155 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_156 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_155 read_descriptor_t;
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
union __anonunion_ldv_22451_157 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_22471_158 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_22487_159 {
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
   union __anonunion_ldv_22451_157 ldv_22451 ;
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
   union __anonunion_ldv_22471_158 ldv_22471 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_22487_159 ldv_22487 ;
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
union __anonunion_f_u_160 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_160 f_u ;
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
struct fasync_struct;
struct __anonstruct_afs_162 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_161 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_162 afs ;
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
   union __anonunion_fl_u_161 fl_u ;
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
struct block_device_operations;
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
typedef int read_proc_t(char * , char ** , off_t , int , int * , void * );
typedef int write_proc_t(struct file * , char const * , unsigned long , void * );
struct proc_dir_entry {
   unsigned int low_ino ;
   umode_t mode ;
   nlink_t nlink ;
   kuid_t uid ;
   kgid_t gid ;
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
   char name[] ;
};
struct __anonstruct_sigset_t_163 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_163 sigset_t;
struct siginfo;
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
struct __anonstruct__kill_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_166 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_167 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_169 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_170 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_171 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_164 {
   int _pad[28U] ;
   struct __anonstruct__kill_165 _kill ;
   struct __anonstruct__timer_166 _timer ;
   struct __anonstruct__rt_167 _rt ;
   struct __anonstruct__sigchld_168 _sigchld ;
   struct __anonstruct__sigfault_169 _sigfault ;
   struct __anonstruct__sigpoll_170 _sigpoll ;
   struct __anonstruct__sigsys_171 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_164 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
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
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_25592_174 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_25601_175 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_176 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_177 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_25592_174 ldv_25592 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_25601_175 ldv_25601 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_176 type_data ;
   union __anonunion_payload_177 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct thread_group_cred;
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
   struct thread_group_cred *tgcred ;
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
union __anonunion_ki_obj_178 {
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
   union __anonunion_ki_obj_178 ki_obj ;
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
   struct callback_head callback_head ;
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
   void (*migrate_task_rq)(struct task_struct * , int ) ;
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
};
struct disk_stats {
   unsigned long sectors[2U] ;
   unsigned long ios[2U] ;
   unsigned long merges[2U] ;
   unsigned long ticks[2U] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   char uuid[37U] ;
   u8 volname[64U] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   seqcount_t nr_sects_seq ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2U] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct callback_head callback_head ;
};
struct disk_part_tbl {
   struct callback_head callback_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32U] ;
   char *(*devnode)(struct gendisk * , umode_t * ) ;
   unsigned int events ;
   unsigned int async_events ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations const *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   enum writeback_sync_modes sync_mode ;
   unsigned char for_kupdate : 1 ;
   unsigned char for_background : 1 ;
   unsigned char tagged_writepages : 1 ;
   unsigned char for_reclaim : 1 ;
   unsigned char range_cyclic : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   unsigned long last_active ;
   struct task_struct *task ;
   struct timer_list wakeup_timer ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
typedef void *mempool_alloc_t(gfp_t , void * );
typedef void mempool_free_t(void * , void * );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
union __anonunion_ldv_30116_181 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion_ldv_30120_182 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion_ldv_30116_181 ldv_30116 ;
   union __anonunion_ldv_30120_182 ldv_30120 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t active_ref ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
};
struct bio_integrity_payload {
   struct bio *bip_bio ;
   sector_t bip_sector ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned int bip_size ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_idx ;
   struct work_struct bip_work ;
   struct bio_vec bip_vec[0U] ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_pool ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
};
struct elevator_queue;
struct request;
struct bsg_job;
struct blkcg_gq;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   struct request_queue *q ;
   struct blkcg_gq *blkg ;
   int count[2U] ;
   int starved[2U] ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2U] ;
   unsigned int flags ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion_ldv_30567_183 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_185 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_186 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion_ldv_30578_184 {
   struct __anonstruct_elv_185 elv ;
   struct __anonstruct_flush_186 flush ;
};
struct request {
   struct list_head queuelist ;
   struct call_single_data csd ;
   struct request_queue *q ;
   unsigned int cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   struct hlist_node hash ;
   union __anonunion_ldv_30567_183 ldv_30567 ;
   union __anonunion_ldv_30578_184 ldv_30578 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   int ref_count ;
   void *special ;
   char *buffer ;
   int tag ;
   int errors ;
   unsigned char __cmd[16U] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , struct bio * ,
                                gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef int elevator_init_fn(struct request_queue * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16U] ;
   struct module *elevator_owner ;
   char icq_cache_name[21U] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   struct hlist_head *hash ;
   unsigned char registered : 1 ;
};
typedef void request_fn_proc(struct request_queue * );
typedef void make_request_fn(struct request_queue * , struct bio * );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue * );
typedef int bsg_job_fn(struct bsg_job * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int max_write_same_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
};
struct throtl_data;
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   int nr_rqs[2U] ;
   int nr_rqs_elvpriv ;
   struct request_list root_rl ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2U] ;
   unsigned int request_fn_active ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   unsigned long blkcg_pols[1U] ;
   struct blkcg_gq *root_blkg ;
   struct list_head blkg_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   unsigned char flush_queue_delayed : 1 ;
   unsigned char flush_pending_idx : 1 ;
   unsigned char flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2U] ;
   struct list_head flush_data_in_flight ;
   struct request flush_rq ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct list_head all_q_node ;
   struct throtl_data *td ;
};
struct blk_plug {
   unsigned long magic ;
   struct list_head list ;
   struct list_head cb_list ;
   unsigned int should_sort ;
};
struct blk_integrity_exchg {
   void *prot_buf ;
   void *data_buf ;
   sector_t sector ;
   unsigned int data_size ;
   unsigned short sector_size ;
   char const *disk_name ;
};
typedef void integrity_gen_fn(struct blk_integrity_exchg * );
typedef int integrity_vrfy_fn(struct blk_integrity_exchg * );
typedef void integrity_set_tag_fn(void * , void * , unsigned int );
typedef void integrity_get_tag_fn(void * , void * , unsigned int );
struct blk_integrity {
   integrity_gen_fn *generate_fn ;
   integrity_vrfy_fn *verify_fn ;
   integrity_set_tag_fn *set_tag_fn ;
   integrity_get_tag_fn *get_tag_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short sector_size ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   int (*release)(struct gendisk * , fmode_t ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct Scsi_Host;
struct scsi_device;
struct scsi_data_buffer {
   struct sg_table table ;
   unsigned int length ;
   int resid ;
};
struct scsi_pointer {
   char *ptr ;
   int this_residual ;
   struct scatterlist *buffer ;
   int buffers_residual ;
   dma_addr_t dma_handle ;
   int volatile Status ;
   int volatile Message ;
   int volatile have_data_in ;
   int volatile sent_command ;
   int volatile phase ;
};
struct scsi_cmnd {
   struct scsi_device *device ;
   struct list_head list ;
   struct list_head eh_entry ;
   int eh_eflags ;
   unsigned long serial_number ;
   unsigned long jiffies_at_alloc ;
   int retries ;
   int allowed ;
   unsigned char prot_op ;
   unsigned char prot_type ;
   unsigned short cmd_len ;
   enum dma_data_direction sc_data_direction ;
   unsigned char *cmnd ;
   struct scsi_data_buffer sdb ;
   struct scsi_data_buffer *prot_sdb ;
   unsigned int underflow ;
   unsigned int transfersize ;
   struct request *request ;
   unsigned char *sense_buffer ;
   void (*scsi_done)(struct scsi_cmnd * ) ;
   struct scsi_pointer SCp ;
   unsigned char *host_scribble ;
   int result ;
   unsigned char tag ;
};
struct scsi_sense_hdr;
enum scsi_device_state {
    SDEV_CREATED = 1,
    SDEV_RUNNING = 2,
    SDEV_CANCEL = 3,
    SDEV_DEL = 4,
    SDEV_QUIESCE = 5,
    SDEV_OFFLINE = 6,
    SDEV_TRANSPORT_OFFLINE = 7,
    SDEV_BLOCK = 8,
    SDEV_CREATED_BLOCK = 9
} ;
struct scsi_target;
struct scsi_dh_data;
struct scsi_device {
   struct Scsi_Host *host ;
   struct request_queue *request_queue ;
   struct list_head siblings ;
   struct list_head same_target_siblings ;
   unsigned int device_busy ;
   spinlock_t list_lock ;
   struct list_head cmd_list ;
   struct list_head starved_entry ;
   struct scsi_cmnd *current_cmnd ;
   unsigned short queue_depth ;
   unsigned short max_queue_depth ;
   unsigned short last_queue_full_depth ;
   unsigned short last_queue_full_count ;
   unsigned long last_queue_full_time ;
   unsigned long queue_ramp_up_period ;
   unsigned long last_queue_ramp_up ;
   unsigned int id ;
   unsigned int lun ;
   unsigned int channel ;
   unsigned int manufacturer ;
   unsigned int sector_size ;
   void *hostdata ;
   char type ;
   char scsi_level ;
   char inq_periph_qual ;
   unsigned char inquiry_len ;
   unsigned char *inquiry ;
   char const *vendor ;
   char const *model ;
   char const *rev ;
   unsigned char current_tag ;
   struct scsi_target *sdev_target ;
   unsigned int sdev_bflags ;
   unsigned char writeable : 1 ;
   unsigned char removable : 1 ;
   unsigned char changed : 1 ;
   unsigned char busy : 1 ;
   unsigned char lockable : 1 ;
   unsigned char locked : 1 ;
   unsigned char borken : 1 ;
   unsigned char disconnect : 1 ;
   unsigned char soft_reset : 1 ;
   unsigned char sdtr : 1 ;
   unsigned char wdtr : 1 ;
   unsigned char ppr : 1 ;
   unsigned char tagged_supported : 1 ;
   unsigned char simple_tags : 1 ;
   unsigned char ordered_tags : 1 ;
   unsigned char was_reset : 1 ;
   unsigned char expecting_cc_ua : 1 ;
   unsigned char use_10_for_rw : 1 ;
   unsigned char use_10_for_ms : 1 ;
   unsigned char no_report_opcodes : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_16_for_rw : 1 ;
   unsigned char skip_ms_page_8 : 1 ;
   unsigned char skip_ms_page_3f : 1 ;
   unsigned char skip_vpd_pages : 1 ;
   unsigned char use_192_bytes_for_3f : 1 ;
   unsigned char no_start_on_add : 1 ;
   unsigned char allow_restart : 1 ;
   unsigned char manage_start_stop : 1 ;
   unsigned char start_stop_pwr_cond : 1 ;
   unsigned char no_uld_attach : 1 ;
   unsigned char select_no_atn : 1 ;
   unsigned char fix_capacity : 1 ;
   unsigned char guess_capacity : 1 ;
   unsigned char retry_hwerror : 1 ;
   unsigned char last_sector_bug : 1 ;
   unsigned char no_read_disc_info : 1 ;
   unsigned char no_read_capacity_16 : 1 ;
   unsigned char try_rc_10_first : 1 ;
   unsigned char is_visible : 1 ;
   unsigned char can_power_off : 1 ;
   unsigned char wce_default_on : 1 ;
   unsigned char no_dif : 1 ;
   unsigned long supported_events[1U] ;
   struct list_head event_list ;
   struct work_struct event_work ;
   unsigned int device_blocked ;
   unsigned int max_device_blocked ;
   atomic_t iorequest_cnt ;
   atomic_t iodone_cnt ;
   atomic_t ioerr_cnt ;
   struct device sdev_gendev ;
   struct device sdev_dev ;
   struct execute_work ew ;
   struct work_struct requeue_work ;
   struct scsi_dh_data *scsi_dh_data ;
   enum scsi_device_state sdev_state ;
   unsigned long sdev_data[0U] ;
};
struct scsi_dh_devlist {
   char *vendor ;
   char *model ;
};
struct scsi_device_handler {
   struct list_head list ;
   struct module *module ;
   char const *name ;
   struct scsi_dh_devlist const *devlist ;
   int (*check_sense)(struct scsi_device * , struct scsi_sense_hdr * ) ;
   int (*attach)(struct scsi_device * ) ;
   void (*detach)(struct scsi_device * ) ;
   int (*activate)(struct scsi_device * , void (*)(void * , int ) , void * ) ;
   int (*prep_fn)(struct scsi_device * , struct request * ) ;
   int (*set_params)(struct scsi_device * , char const * ) ;
   bool (*match)(struct scsi_device * ) ;
};
struct scsi_dh_data {
   struct scsi_device_handler *scsi_dh ;
   struct scsi_device *sdev ;
   struct kref kref ;
   char buf[0U] ;
};
enum scsi_target_state {
    STARGET_CREATED = 1,
    STARGET_RUNNING = 2,
    STARGET_DEL = 3
} ;
struct scsi_target {
   struct scsi_device *starget_sdev_user ;
   struct list_head siblings ;
   struct list_head devices ;
   struct device dev ;
   unsigned int reap_ref ;
   unsigned int channel ;
   unsigned int id ;
   unsigned char create : 1 ;
   unsigned char single_lun : 1 ;
   unsigned char pdt_1f_for_no_lun : 1 ;
   unsigned char no_report_luns : 1 ;
   unsigned int target_busy ;
   unsigned int can_queue ;
   unsigned int target_blocked ;
   unsigned int max_target_blocked ;
   char scsi_level ;
   struct execute_work ew ;
   enum scsi_target_state state ;
   void *hostdata ;
   unsigned long starget_data[0U] ;
};
struct scsi_sense_hdr {
   u8 response_code ;
   u8 sense_key ;
   u8 asc ;
   u8 ascq ;
   u8 byte4 ;
   u8 byte5 ;
   u8 byte6 ;
   u8 additional_length ;
};
struct scsi_host_cmd_pool;
struct scsi_transport_template;
struct scsi_host_template {
   struct module *module ;
   char const *name ;
   int (*detect)(struct scsi_host_template * ) ;
   int (*release)(struct Scsi_Host * ) ;
   char const *(*info)(struct Scsi_Host * ) ;
   int (*ioctl)(struct scsi_device * , int , void * ) ;
   int (*compat_ioctl)(struct scsi_device * , int , void * ) ;
   int (*queuecommand)(struct Scsi_Host * , struct scsi_cmnd * ) ;
   int (*transfer_response)(struct scsi_cmnd * , void (*)(struct scsi_cmnd * ) ) ;
   int (*eh_abort_handler)(struct scsi_cmnd * ) ;
   int (*eh_device_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_target_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_bus_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_host_reset_handler)(struct scsi_cmnd * ) ;
   int (*slave_alloc)(struct scsi_device * ) ;
   int (*slave_configure)(struct scsi_device * ) ;
   void (*slave_destroy)(struct scsi_device * ) ;
   int (*target_alloc)(struct scsi_target * ) ;
   void (*target_destroy)(struct scsi_target * ) ;
   int (*scan_finished)(struct Scsi_Host * , unsigned long ) ;
   void (*scan_start)(struct Scsi_Host * ) ;
   int (*change_queue_depth)(struct scsi_device * , int , int ) ;
   int (*change_queue_type)(struct scsi_device * , int ) ;
   int (*bios_param)(struct scsi_device * , struct block_device * , sector_t , int * ) ;
   void (*unlock_native_capacity)(struct scsi_device * ) ;
   int (*proc_info)(struct Scsi_Host * , char * , char ** , off_t , int , int ) ;
   enum blk_eh_timer_return (*eh_timed_out)(struct scsi_cmnd * ) ;
   int (*host_reset)(struct Scsi_Host * , int ) ;
   char const *proc_name ;
   struct proc_dir_entry *proc_dir ;
   int can_queue ;
   int this_id ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned short max_sectors ;
   unsigned long dma_boundary ;
   short cmd_per_lun ;
   unsigned char present ;
   unsigned char supported_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char emulated : 1 ;
   unsigned char skip_settle_delay : 1 ;
   unsigned char ordered_tag : 1 ;
   unsigned int max_host_blocked ;
   struct device_attribute **shost_attrs ;
   struct device_attribute **sdev_attrs ;
   struct list_head legacy_hosts ;
   u64 vendor_id ;
};
enum scsi_host_state {
    SHOST_CREATED = 1,
    SHOST_RUNNING = 2,
    SHOST_CANCEL = 3,
    SHOST_DEL = 4,
    SHOST_RECOVERY = 5,
    SHOST_CANCEL_RECOVERY = 6,
    SHOST_DEL_RECOVERY = 7
} ;
struct Scsi_Host {
   struct list_head __devices ;
   struct list_head __targets ;
   struct scsi_host_cmd_pool *cmd_pool ;
   spinlock_t free_list_lock ;
   struct list_head free_list ;
   struct list_head starved_list ;
   spinlock_t default_lock ;
   spinlock_t *host_lock ;
   struct mutex scan_mutex ;
   struct list_head eh_cmd_q ;
   struct task_struct *ehandler ;
   struct completion *eh_action ;
   wait_queue_head_t host_wait ;
   struct scsi_host_template *hostt ;
   struct scsi_transport_template *transportt ;
   struct blk_queue_tag *bqt ;
   unsigned int host_busy ;
   unsigned int host_failed ;
   unsigned int host_eh_scheduled ;
   unsigned int host_no ;
   int resetting ;
   unsigned long last_reset ;
   unsigned int max_id ;
   unsigned int max_lun ;
   unsigned int max_channel ;
   unsigned int unique_id ;
   unsigned short max_cmd_len ;
   int this_id ;
   int can_queue ;
   short cmd_per_lun ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned short max_sectors ;
   unsigned long dma_boundary ;
   unsigned long cmd_serial_number ;
   unsigned char active_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char use_blk_tcq : 1 ;
   unsigned char host_self_blocked : 1 ;
   unsigned char reverse_ordering : 1 ;
   unsigned char ordered_tag : 1 ;
   unsigned char tmf_in_progress : 1 ;
   unsigned char async_scan : 1 ;
   unsigned char eh_noresume : 1 ;
   char work_q_name[20U] ;
   struct workqueue_struct *work_q ;
   unsigned int host_blocked ;
   unsigned int max_host_blocked ;
   unsigned int prot_capabilities ;
   unsigned char prot_guard_type ;
   struct request_queue *uspace_req_q ;
   unsigned long base ;
   unsigned long io_port ;
   unsigned char n_io_port ;
   unsigned char dma_channel ;
   unsigned int irq ;
   enum scsi_host_state shost_state ;
   struct device shost_gendev ;
   struct device shost_dev ;
   struct list_head sht_legacy_list ;
   void *shost_data ;
   struct device *dma_dev ;
   unsigned long hostdata[0U] ;
};
struct ins_format1 {
   unsigned char immediate ;
   unsigned short source : 9 ;
   unsigned short destination : 9 ;
   unsigned char ret : 1 ;
   unsigned char opcode : 4 ;
   unsigned char parity : 1 ;
};
struct ins_format2 {
   unsigned char shift_control ;
   unsigned short source : 9 ;
   unsigned short destination : 9 ;
   unsigned char ret : 1 ;
   unsigned char opcode : 4 ;
   unsigned char parity : 1 ;
};
struct ins_format3 {
   unsigned char immediate ;
   unsigned short source : 9 ;
   unsigned short address : 10 ;
   unsigned char opcode : 4 ;
   unsigned char parity : 1 ;
};
union ins_formats {
   struct ins_format1 format1 ;
   struct ins_format2 format2 ;
   struct ins_format3 format3 ;
   unsigned char bytes[4U] ;
   unsigned int integer ;
};
struct __anonstruct_adapter_tag_info_t_189 {
   unsigned char tag_commands[16U] ;
};
typedef struct __anonstruct_adapter_tag_info_t_189 adapter_tag_info_t;
enum ldv_24909 {
    C46 = 6,
    C56_66 = 8
} ;
typedef enum ldv_24909 seeprom_chip_type;
struct seeprom_config {
   unsigned short device_flags[16U] ;
   unsigned short bios_control ;
   unsigned short adapter_control ;
   unsigned short brtime_id ;
   unsigned short max_targets ;
   unsigned short res_1[11U] ;
   unsigned short checksum ;
};
struct aic7xxx_host;
struct hw_scatterlist {
   unsigned int address ;
   unsigned int length ;
};
struct aic7xxx_hwscb {
   unsigned char control ;
   unsigned char target_channel_lun ;
   unsigned char target_status ;
   unsigned char SG_segment_count ;
   unsigned int SG_list_pointer ;
   unsigned char residual_SG_segment_count ;
   unsigned char residual_data_count[3U] ;
   unsigned int data_pointer ;
   unsigned int data_count ;
   unsigned int SCSI_cmd_pointer ;
   unsigned char SCSI_cmd_length ;
   unsigned char tag ;
   unsigned char next ;
   unsigned char prev ;
   unsigned int pad ;
};
enum ldv_24922 {
    SCB_FREE = 0,
    SCB_DTR_SCB = 1,
    SCB_WAITINGQ = 2,
    SCB_ACTIVE = 4,
    SCB_SENSE = 8,
    SCB_ABORT = 16,
    SCB_DEVICE_RESET = 32,
    SCB_RESET = 64,
    SCB_RECOVERY_SCB = 128,
    SCB_MSGOUT_PPR = 256,
    SCB_MSGOUT_SENT = 512,
    SCB_MSGOUT_SDTR = 1024,
    SCB_MSGOUT_WDTR = 2048,
    SCB_MSGOUT_BITS = 3840,
    SCB_QUEUED_ABORT = 4096,
    SCB_QUEUED_FOR_DONE = 8192,
    SCB_WAS_BUSY = 16384,
    SCB_QUEUE_FULL = 32768
} ;
typedef enum ldv_24922 scb_flag_type;
enum ldv_24924 {
    AHC_FNONE = 0,
    AHC_PAGESCBS = 1,
    AHC_CHANNEL_B_PRIMARY = 2,
    AHC_USEDEFAULTS = 4,
    AHC_INDIRECT_PAGING = 8,
    AHC_CHNLB = 32,
    AHC_CHNLC = 64,
    AHC_EXTEND_TRANS_A = 256,
    AHC_EXTEND_TRANS_B = 512,
    AHC_TERM_ENB_A = 1024,
    AHC_TERM_ENB_SE_LOW = 1024,
    AHC_TERM_ENB_B = 2048,
    AHC_TERM_ENB_SE_HIGH = 2048,
    AHC_HANDLING_REQINITS = 4096,
    AHC_TARGETMODE = 8192,
    AHC_NEWEEPROM_FMT = 16384,
    AHC_MOTHERBOARD = 131072,
    AHC_NO_STPWEN = 262144,
    AHC_RESET_DELAY = 524288,
    AHC_A_SCANNED = 1048576,
    AHC_B_SCANNED = 2097152,
    AHC_MULTI_CHANNEL = 4194304,
    AHC_BIOS_ENABLED = 8388608,
    AHC_SEEPROM_FOUND = 16777216,
    AHC_TERM_ENB_LVD = 33554432,
    AHC_ABORT_PENDING = 67108864,
    AHC_RESET_PENDING = 134217728,
    AHC_IN_ISR = 268435456,
    AHC_IN_ABORT = 536870912,
    AHC_IN_RESET = 1073741824,
    AHC_EXTERNAL_SRAM = 2147483648U
} ;
typedef enum ldv_24924 ahc_flag_type;
enum ldv_24926 {
    AHC_NONE = 0,
    AHC_CHIPID_MASK = 255,
    AHC_AIC7770 = 1,
    AHC_AIC7850 = 2,
    AHC_AIC7860 = 3,
    AHC_AIC7870 = 4,
    AHC_AIC7880 = 5,
    AHC_AIC7890 = 6,
    AHC_AIC7895 = 7,
    AHC_AIC7896 = 8,
    AHC_AIC7892 = 9,
    AHC_AIC7899 = 10,
    AHC_VL = 256,
    AHC_EISA = 512,
    AHC_PCI = 1024
} ;
typedef enum ldv_24926 ahc_chip;
enum ldv_24928 {
    AHC_FENONE = 0,
    AHC_ULTRA = 1,
    AHC_ULTRA2 = 2,
    AHC_WIDE = 4,
    AHC_TWIN = 8,
    AHC_MORE_SRAM = 16,
    AHC_CMD_CHAN = 32,
    AHC_QUEUE_REGS = 64,
    AHC_SG_PRELOAD = 128,
    AHC_SPIOCAP = 256,
    AHC_ULTRA3 = 512,
    AHC_NEW_AUTOTERM = 1024,
    AHC_AIC7770_FE = 0,
    AHC_AIC7850_FE = 256,
    AHC_AIC7860_FE = 257,
    AHC_AIC7870_FE = 0,
    AHC_AIC7880_FE = 1,
    AHC_AIC7890_FE = 1266,
    AHC_AIC7895_FE = 49,
    AHC_AIC7896_FE = 1266,
    AHC_AIC7892_FE = 1778,
    AHC_AIC7899_FE = 1778
} ;
typedef enum ldv_24928 ahc_feature;
struct aic7xxx_scb_dma {
   unsigned long dma_offset ;
   dma_addr_t dma_address ;
   unsigned int dma_len ;
};
enum ldv_24931 {
    AHC_BUG_NONE = 0,
    AHC_BUG_TMODE_WIDEODD = 1,
    AHC_BUG_AUTOFLUSH = 2,
    AHC_BUG_CACHETHEN = 4,
    AHC_BUG_CACHETHEN_DIS = 8,
    AHC_BUG_PCI_2_1_RETRY = 16,
    AHC_BUG_PCI_MWI = 32,
    AHC_BUG_SCBCHAN_UPLOAD = 64
} ;
typedef enum ldv_24931 ahc_bugs;
struct aic7xxx_scb {
   struct aic7xxx_hwscb *hscb ;
   struct scsi_cmnd *cmd ;
   struct aic7xxx_scb *q_next ;
   scb_flag_type volatile flags ;
   struct hw_scatterlist *sg_list ;
   unsigned char tag_action ;
   unsigned char sg_count ;
   unsigned char *sense_cmd ;
   unsigned char *cmnd ;
   unsigned int sg_length ;
   void *kmalloc_ptr ;
   struct aic7xxx_scb_dma *scb_dma ;
};
struct __anonstruct_scb_queue_type_190 {
   struct aic7xxx_scb *head ;
   struct aic7xxx_scb *tail ;
};
typedef struct __anonstruct_scb_queue_type_190 scb_queue_type;
struct __anonstruct_hard_error_191 {
   unsigned char errno ;
   char const *errmesg ;
};
struct __anonstruct_scb_data_type_192 {
   scb_queue_type free_scbs ;
   struct aic7xxx_scb *scb_array[255U] ;
   struct aic7xxx_hwscb *hscbs ;
   unsigned char numscbs ;
   unsigned char maxhscbs ;
   unsigned char maxscbs ;
   dma_addr_t hscbs_dma ;
   unsigned int hscbs_dma_len ;
   void *hscb_kmalloc_ptr ;
};
typedef struct __anonstruct_scb_data_type_192 scb_data_type;
struct __anonstruct_transinfo_type_193 {
   unsigned char width ;
   unsigned char period ;
   unsigned char offset ;
   unsigned char options ;
};
typedef struct __anonstruct_transinfo_type_193 transinfo_type;
struct aic_dev_data {
   scb_queue_type volatile delayed_scbs ;
   unsigned short volatile temp_q_depth ;
   unsigned short max_q_depth ;
   unsigned char volatile active_cmds ;
   long w_total ;
   long r_total ;
   long barrier_total ;
   long ordered_total ;
   long w_bins[6U] ;
   long r_bins[6U] ;
   transinfo_type cur ;
   transinfo_type goal ;
   unsigned char volatile flags ;
   unsigned char needppr : 1 ;
   unsigned char needppr_copy : 1 ;
   unsigned char needsdtr : 1 ;
   unsigned char needsdtr_copy : 1 ;
   unsigned char needwdtr : 1 ;
   unsigned char needwdtr_copy : 1 ;
   unsigned char dtr_pending : 1 ;
   struct scsi_device *SDptr ;
   struct list_head list ;
};
struct aic7xxx_cmd_queue {
   struct scsi_cmnd *head ;
   struct scsi_cmnd *tail ;
};
struct aic7xxx_host {
   long volatile flags ;
   ahc_feature features ;
   unsigned long base ;
   unsigned char volatile *maddr ;
   unsigned long isr_count ;
   unsigned long spurious_int ;
   scb_data_type *scb_data ;
   struct aic7xxx_cmd_queue completeq ;
   scb_queue_type volatile waiting_scbs ;
   unsigned char unpause ;
   unsigned char pause ;
   unsigned char volatile qoutfifonext ;
   unsigned char volatile activescbs ;
   unsigned char volatile max_activescbs ;
   unsigned char volatile qinfifonext ;
   unsigned char volatile *untagged_scbs ;
   unsigned char volatile *qoutfifo ;
   unsigned char volatile *qinfifo ;
   unsigned char dev_last_queue_full[16U] ;
   unsigned char dev_last_queue_full_count[16U] ;
   unsigned short ultraenb ;
   unsigned short discenable ;
   transinfo_type user[16U] ;
   unsigned char msg_buf[13U] ;
   unsigned char msg_type ;
   unsigned char msg_len ;
   unsigned char msg_index ;
   unsigned int irq ;
   int instance ;
   int scsi_id ;
   int scsi_id_b ;
   unsigned int bios_address ;
   int board_name_index ;
   unsigned short bios_control ;
   unsigned short adapter_control ;
   struct pci_dev *pdev ;
   unsigned char pci_bus ;
   unsigned char pci_device_fn ;
   struct seeprom_config sc ;
   unsigned short sc_type ;
   unsigned short sc_size ;
   struct aic7xxx_host *next ;
   struct Scsi_Host *host ;
   struct list_head aic_devs ;
   int host_no ;
   unsigned long mbase ;
   ahc_chip chip ;
   ahc_bugs bugs ;
   dma_addr_t fifo_dma ;
};
struct aic7xxx_syncrate {
   int sxfr_ultra2 ;
   int sxfr ;
   unsigned char period ;
   char const *rate[2U] ;
};
struct __anonstruct_options_195 {
   char const *name ;
   unsigned int *flag ;
};
struct sequencer_patch {
   int (*patch_func)(struct aic7xxx_host * ) ;
   unsigned short begin : 10 ;
   unsigned short skip_instr : 10 ;
   unsigned short skip_patch : 12 ;
};
struct seeprom_cmd {
   unsigned char len ;
   unsigned char bits[3U] ;
};
struct seeprom_cmd___0 {
   unsigned char len ;
   unsigned char bits[3U] ;
};
struct __anonstruct_aic_pdevs_203 {
   unsigned short vendor_id ;
   unsigned short device_id ;
   ahc_chip chip ;
   ahc_flag_type flags ;
   ahc_feature features ;
   int board_name_index ;
   unsigned short seeprom_size ;
   unsigned short seeprom_type ;
};
struct register_ranges {
   int num_ranges ;
   int range_val[32U] ;
};
typedef int ldv_func_ret_type___2;
long ldv__builtin_expect(long exp , long c ) ;
extern int printk(char const * , ...) ;
extern void panic(char const * , ...) ;
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
extern int sprintf(char * , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
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
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern unsigned long __phys_addr(unsigned long ) ;
extern struct pv_irq_ops pv_irq_ops ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strcat(char * , char const * ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
extern char *strchr(char const * , int ) ;
extern char *strsep(char ** , char const * ) ;
extern void warn_slowpath_null(char const * , int const ) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (825), "i" (12UL));
    ldv_4725: ;
    goto ldv_4725;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (45UL),
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
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5961.rlock, flags);
  return;
}
}
extern struct resource ioport_resource ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
extern void iounmap(void volatile * ) ;
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port )
{
  unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
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
extern struct pci_dev *pci_dev_get(struct pci_dev * ) ;
extern void pci_dev_put(struct pci_dev * ) ;
extern struct pci_dev *pci_get_device(unsigned int , unsigned int , struct pci_dev * ) ;
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
extern int pci_enable_device(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
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
    ldv_20268: ;
    goto ldv_20268;
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
    ldv_20277: ;
    goto ldv_20277;
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
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/dma-mapping.h",
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
extern void disable_irq(unsigned int ) ;
extern void scsi_dma_unmap(struct scsi_cmnd * ) ;
__inline static void scsi_set_resid(struct scsi_cmnd *cmd , int resid )
{
  {
  cmd->sdb.resid = resid;
  return;
}
}
extern unsigned char const scsi_command_size_tbl[8U] ;
extern void scsi_adjust_queue_depth(struct scsi_device * , int , int ) ;
extern int scsi_track_queue_full(struct scsi_device * , int ) ;
extern struct Scsi_Host *scsi_register(struct scsi_host_template * , int ) ;
extern void scsi_unregister(struct Scsi_Host * ) ;
static adapter_tag_info_t aic7xxx_tag_info[16U] =
  { {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}},
        {{0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}};
static char const *board_names[30U] =
  { "AIC-7xxx Unknown", "Adaptec AIC-7810 Hardware RAID Controller", "Adaptec AIC-7770 SCSI host adapter", "Adaptec AHA-274X SCSI host adapter",
        "Adaptec AHA-284X SCSI host adapter", "Adaptec AIC-7850 SCSI host adapter", "Adaptec AIC-7855 SCSI host adapter", "Adaptec AIC-7860 Ultra SCSI host adapter",
        "Adaptec AHA-2940A Ultra SCSI host adapter", "Adaptec AIC-7870 SCSI host adapter", "Adaptec AHA-294X SCSI host adapter", "Adaptec AHA-394X SCSI host adapter",
        "Adaptec AHA-398X SCSI host adapter", "Adaptec AHA-2944 SCSI host adapter", "Adaptec AIC-7880 Ultra SCSI host adapter", "Adaptec AHA-294X Ultra SCSI host adapter",
        "Adaptec AHA-394X Ultra SCSI host adapter", "Adaptec AHA-398X Ultra SCSI host adapter", "Adaptec AHA-2944 Ultra SCSI host adapter", "Adaptec AHA-2940UW Pro Ultra SCSI host adapter",
        "Adaptec AIC-7895 Ultra SCSI host adapter", "Adaptec AIC-7890/1 Ultra2 SCSI host adapter", "Adaptec AHA-293X Ultra2 SCSI host adapter", "Adaptec AHA-294X Ultra2 SCSI host adapter",
        "Adaptec AIC-7896/7 Ultra2 SCSI host adapter", "Adaptec AHA-394X Ultra2 SCSI host adapter", "Adaptec AHA-395X Ultra2 SCSI host adapter", "Adaptec PCMCIA SCSI controller",
        "Adaptec AIC-7892 Ultra 160/m SCSI host adapter", "Adaptec AIC-7899 Ultra 160/m SCSI host adapter"};
static struct aic7xxx_host *first_aic7xxx = 0;
static struct __anonstruct_hard_error_191 hard_error[8U] =
  { {1U, "Illegal Host Access"},
        {2U, "Illegal Sequencer Address referenced"},
        {4U, "Illegal Opcode in sequencer program"},
        {8U, "Sequencer Ram Parity Error"},
        {16U, "Data-Path Ram Parity Error"},
        {32U, "Scratch Ram/SCB Array Ram Parity Error"},
        {64U, "PCI Error detected"},
        {128U, "CIOBUS Parity Error"}};
static unsigned char generic_sense[6U] = { 3U, 0U, 0U, 0U,
        255U, 0U};
static struct aic7xxx_syncrate aic7xxx_syncrates[15U] =
  { {66, 0, 9U, {"80.0", "160.0"}},
        {19, 0, 10U, {"40.0", "80.0"}},
        {20, 0, 11U, {"33.0", "66.6"}},
        {21, 256, 12U, {"20.0", "40.0"}},
        {22, 272, 15U, {"16.0", "32.0"}},
        {23, 288, 18U, {"13.4", "26.8"}},
        {24, 0, 25U, {"10.0", "20.0"}},
        {25, 16, 31U, {"8.0", "16.0"}},
        {26, 32, 37U, {"6.67", "13.3"}},
        {27, 48, 43U, {"5.7", "11.4"}},
        {16, 64, 50U, {"5.0", "10.0"}},
        {0, 80, 56U, {"4.4", "8.8"}},
        {0, 96, 62U, {"4.0", "8.0"}},
        {0, 112, 68U, {"3.6", "7.2"}},
        {0, 0, 0U, {0, 0}}};
static unsigned int aic7xxx_default_queue_depth = 32U;
static unsigned int aic7xxx_no_reset = 0U;
static int aic7xxx_reverse_scan = 0;
static unsigned int aic7xxx_extended = 0U;
static int aic7xxx_irq_trigger = -1;
static int aic7xxx_override_term = -1;
static int aic7xxx_stpwlev = -1;
static int aic7xxx_panic_on_abort = 0;
static int aic7xxx_pci_parity = 0;
static int aic7xxx_dump_card = 0;
static int aic7xxx_dump_sequencer = 0;
static int aic7xxx_no_probe = 0;
static int aic7xxx_scbram = 0;
static int aic7xxx_seltime = 16;
static char *aic7xxx = 0;
static int aic7xxx_verbose = 9;
static int aic7xxx_release(struct Scsi_Host *host ) ;
static void aic7xxx_set_syncrate(struct aic7xxx_host *p , struct aic7xxx_syncrate *syncrate ,
                                 int target , int channel , unsigned int period ,
                                 unsigned int offset , unsigned char options , unsigned int type ,
                                 struct aic_dev_data *aic_dev ) ;
static void aic7xxx_set_width(struct aic7xxx_host *p , int target , int channel ,
                              int lun , unsigned int width , unsigned int type , struct aic_dev_data *aic_dev ) ;
static void aic7xxx_panic_abort(struct aic7xxx_host *p , struct scsi_cmnd *cmd ) ;
static void aic7xxx_print_card(struct aic7xxx_host *p ) ;
static void aic7xxx_print_scratch_ram(struct aic7xxx_host *p ) ;
static void aic7xxx_print_sequencer(struct aic7xxx_host *p , int downloaded ) ;
static unsigned char aic_inb(struct aic7xxx_host *p , long port )
{
  unsigned char x ;
  {
  if ((unsigned long )p->maddr != (unsigned long )((unsigned char volatile *)0)) {
    x = readb((void const volatile *)p->maddr + (unsigned long )port);
  } else {
    x = inb((int )((unsigned int )p->base + (unsigned int )port));
  }
  return (x);
}
}
static void aic_outb(struct aic7xxx_host *p , unsigned char val , long port )
{
  {
  if ((unsigned long )p->maddr != (unsigned long )((unsigned char volatile *)0)) {
    writeb((int )val, (void volatile *)p->maddr + (unsigned long )port);
    __asm__ volatile ("mfence": : : "memory");
    readb((void const volatile *)p->maddr + 135U);
  } else {
    outb((int )val, (int )((unsigned int )p->base + (unsigned int )port));
    __asm__ volatile ("mfence": : : "memory");
  }
  return;
}
}
static int aic7xxx_setup(char *s )
{
  int i ;
  int n ;
  char *p ;
  char *end ;
  struct __anonstruct_options_195 options[16U] ;
  size_t tmp ;
  char *base ;
  char *tok ;
  char *tok_end ;
  char *tok_end2 ;
  char tok_list[5U] ;
  int i___0 ;
  int instance ;
  int device ;
  unsigned char done ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  options[0].name = "extended";
  options[0].flag = & aic7xxx_extended;
  options[1].name = "no_reset";
  options[1].flag = & aic7xxx_no_reset;
  options[2].name = "irq_trigger";
  options[2].flag = (unsigned int *)(& aic7xxx_irq_trigger);
  options[3].name = "verbose";
  options[3].flag = (unsigned int *)(& aic7xxx_verbose);
  options[4].name = "reverse_scan";
  options[4].flag = (unsigned int *)(& aic7xxx_reverse_scan);
  options[5].name = "override_term";
  options[5].flag = (unsigned int *)(& aic7xxx_override_term);
  options[6].name = "stpwlev";
  options[6].flag = (unsigned int *)(& aic7xxx_stpwlev);
  options[7].name = "no_probe";
  options[7].flag = (unsigned int *)(& aic7xxx_no_probe);
  options[8].name = "panic_on_abort";
  options[8].flag = (unsigned int *)(& aic7xxx_panic_on_abort);
  options[9].name = "pci_parity";
  options[9].flag = (unsigned int *)(& aic7xxx_pci_parity);
  options[10].name = "dump_card";
  options[10].flag = (unsigned int *)(& aic7xxx_dump_card);
  options[11].name = "dump_sequencer";
  options[11].flag = (unsigned int *)(& aic7xxx_dump_sequencer);
  options[12].name = "default_queue_depth";
  options[12].flag = & aic7xxx_default_queue_depth;
  options[13].name = "scbram";
  options[13].flag = (unsigned int *)(& aic7xxx_scbram);
  options[14].name = "seltime";
  options[14].flag = (unsigned int *)(& aic7xxx_seltime);
  options[15].name = "tag_info";
  options[15].flag = 0;
  end = strchr((char const *)s, 0);
  goto ldv_33526;
  ldv_33525:
  i = 0;
  goto ldv_33523;
  ldv_33522:
  tmp = strlen(options[i].name);
  n = (int )tmp;
  tmp___6 = strncmp(options[i].name, (char const *)p, (__kernel_size_t )n);
  if (tmp___6 == 0) {
    tmp___5 = strncmp((char const *)p, "tag_info", (__kernel_size_t )n);
    if (tmp___5 == 0) {
      if ((int )((signed char )*(p + (unsigned long )n)) == 58) {
        tok_list[0] = 46;
        tok_list[1] = 44;
        tok_list[2] = 123;
        tok_list[3] = 125;
        tok_list[4] = 0;
        instance = -1;
        device = -1;
        done = 0U;
        base = p;
        tok = base + ((unsigned long )n + 1UL);
        tok_end = strchr((char const *)tok, 0);
        if ((unsigned long )tok_end < (unsigned long )end) {
          *tok_end = 44;
        } else {
        }
        goto ldv_33517;
        ldv_33516: ;
        switch ((int )*tok) {
        case 123: ;
        if (instance == -1) {
          instance = 0;
        } else
        if (device == -1) {
          device = 0;
        } else {
        }
        tok = tok + 1;
        goto ldv_33503;
        case 125: ;
        if (device != -1) {
          device = -1;
        } else
        if (instance != -1) {
          instance = -1;
        } else {
        }
        tok = tok + 1;
        goto ldv_33503;
        case 44: ;
        case 46: ;
        if (instance == -1) {
          done = 1U;
        } else
        if (device >= 0) {
          device = device + 1;
        } else
        if (instance >= 0) {
          instance = instance + 1;
        } else {
        }
        if (device > 15 || (unsigned int )instance > 15U) {
          done = 1U;
        } else {
        }
        tok = tok + 1;
        if ((unsigned int )done == 0U) {
          base = tok;
        } else {
        }
        goto ldv_33503;
        case 0:
        done = 1U;
        goto ldv_33503;
        default:
        done = 1U;
        tok_end = strchr((char const *)tok, 0);
        i___0 = 0;
        goto ldv_33512;
        ldv_33511:
        tok_end2 = strchr((char const *)tok, (int )tok_list[i___0]);
        if ((unsigned long )tok_end2 != (unsigned long )((char *)0) && (unsigned long )tok_end2 < (unsigned long )tok_end) {
          tok_end = tok_end2;
          done = 0U;
        } else {
        }
        i___0 = i___0 + 1;
        ldv_33512: ;
        if ((int )((signed char )tok_list[i___0]) != 0) {
          goto ldv_33511;
        } else {
        }
        if (((instance >= 0 && device >= 0) && (unsigned int )instance <= 15U) && device <= 15) {
          tmp___0 = simple_strtoul((char const *)tok, 0, 0U);
          aic7xxx_tag_info[instance].tag_commands[device] = (unsigned char )tmp___0;
        } else {
        }
        tok = tok_end;
        goto ldv_33503;
        }
        ldv_33503: ;
        ldv_33517: ;
        if ((unsigned int )done == 0U) {
          goto ldv_33516;
        } else {
        }
        goto ldv_33520;
        ldv_33519:
        p = strsep(& s, ",.");
        ldv_33520: ;
        if ((unsigned long )p != (unsigned long )base && (unsigned long )p != (unsigned long )((char *)0)) {
          goto ldv_33519;
        } else {
        }
      } else
      if ((int )((signed char )*(p + (unsigned long )n)) == 58) {
        tmp___1 = simple_strtoul((char const *)(p + ((unsigned long )n + 1UL)),
                                 0, 0U);
        *(options[i].flag) = (unsigned int )tmp___1;
        tmp___2 = strncmp((char const *)p, "seltime", (__kernel_size_t )n);
        if (tmp___2 == 0) {
          *(options[i].flag) = (*(options[i].flag) & 3U) << 3;
        } else {
        }
      } else {
        tmp___4 = strncmp((char const *)p, "verbose", (__kernel_size_t )n);
        if (tmp___4 == 0) {
          *(options[i].flag) = 65321U;
        } else {
          *(options[i].flag) = ~ *(options[i].flag);
          tmp___3 = strncmp((char const *)p, "seltime", (__kernel_size_t )n);
          if (tmp___3 == 0) {
            *(options[i].flag) = (*(options[i].flag) & 3U) << 3;
          } else {
          }
        }
      }
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_33523: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_33522;
  } else {
  }
  ldv_33526:
  p = strsep(& s, ",.");
  if ((unsigned long )p != (unsigned long )((char *)0)) {
    goto ldv_33525;
  } else {
  }
  return (1);
}
}
static void pause_sequencer(struct aic7xxx_host *p )
{
  unsigned char tmp ;
  {
  aic_outb(p, (int )p->pause, 135L);
  goto ldv_33532;
  ldv_33531: ;
  ldv_33532:
  tmp = aic_inb(p, 135L);
  if (((int )tmp & 4) == 0) {
    goto ldv_33531;
  } else {
  }
  if (((unsigned int )p->features & 2U) != 0U) {
    aic_inb(p, 238L);
  } else {
  }
  return;
}
}
static void unpause_sequencer(struct aic7xxx_host *p , int unpause_always )
{
  unsigned char tmp ;
  {
  if (unpause_always != 0) {
    aic_outb(p, (int )p->unpause, 135L);
  } else {
    tmp = aic_inb(p, 145L);
    if (((int )tmp & 13) == 0 && ((long )p->flags & 4096L) == 0L) {
      aic_outb(p, (int )p->unpause, 135L);
    } else {
    }
  }
  return;
}
}
static void restart_sequencer(struct aic7xxx_host *p )
{
  {
  aic_outb(p, 0, 98L);
  aic_outb(p, 0, 99L);
  aic_outb(p, 16, 96L);
  return;
}
}
static unsigned char seqprog[2360U] =
  { 255U, 106U, 6U, 8U,
        127U, 2U, 4U, 8U,
        18U, 106U, 0U, 0U,
        255U, 106U, 214U, 9U,
        255U, 106U, 220U, 9U,
        0U, 101U, 202U, 88U,
        247U, 1U, 2U, 8U,
        255U, 78U, 200U, 8U,
        191U, 96U, 192U, 8U,
        96U, 11U, 134U, 104U,
        64U, 0U, 12U, 104U,
        8U, 31U, 62U, 16U,
        96U, 11U, 134U, 104U,
        64U, 0U, 12U, 104U,
        8U, 31U, 62U, 16U,
        255U, 62U, 72U, 96U,
        64U, 250U, 16U, 120U,
        255U, 246U, 212U, 8U,
        1U, 78U, 156U, 24U,
        64U, 96U, 192U, 0U,
        0U, 77U, 16U, 112U,
        1U, 78U, 156U, 24U,
        191U, 96U, 192U, 8U,
        0U, 106U, 134U, 92U,
        255U, 78U, 200U, 24U,
        2U, 106U, 112U, 91U,
        255U, 82U, 32U, 9U,
        13U, 106U, 106U, 0U,
        0U, 82U, 230U, 91U,
        3U, 176U, 82U, 49U,
        255U, 176U, 82U, 9U,
        255U, 177U, 84U, 9U,
        255U, 178U, 86U, 9U,
        255U, 163U, 80U, 9U,
        255U, 62U, 116U, 9U,
        255U, 144U, 124U, 8U,
        255U, 62U, 32U, 9U,
        0U, 101U, 78U, 88U,
        0U, 101U, 12U, 64U,
        247U, 31U, 202U, 8U,
        8U, 161U, 200U, 8U,
        0U, 101U, 202U, 0U,
        255U, 101U, 62U, 8U,
        240U, 161U, 200U, 8U,
        15U, 15U, 30U, 8U,
        0U, 15U, 30U, 0U,
        240U, 161U, 200U, 8U,
        15U, 5U, 10U, 8U,
        0U, 5U, 10U, 0U,
        255U, 106U, 12U, 8U,
        90U, 106U, 0U, 4U,
        18U, 101U, 2U, 0U,
        49U, 106U, 202U, 0U,
        128U, 55U, 110U, 104U,
        255U, 101U, 202U, 24U,
        255U, 55U, 220U, 8U,
        255U, 110U, 200U, 8U,
        0U, 108U, 118U, 120U,
        32U, 1U, 2U, 0U,
        76U, 55U, 200U, 40U,
        8U, 31U, 126U, 120U,
        8U, 55U, 110U, 0U,
        8U, 100U, 200U, 0U,
        112U, 100U, 202U, 24U,
        255U, 108U, 10U, 8U,
        32U, 100U, 202U, 24U,
        255U, 108U, 8U, 12U,
        64U, 11U, 150U, 104U,
        32U, 106U, 22U, 0U,
        240U, 25U, 110U, 8U,
        8U, 106U, 24U, 0U,
        8U, 17U, 34U, 0U,
        8U, 106U, 102U, 88U,
        8U, 106U, 104U, 0U,
        0U, 101U, 170U, 64U,
        18U, 106U, 0U, 0U,
        64U, 106U, 22U, 0U,
        255U, 62U, 32U, 9U,
        255U, 186U, 124U, 8U,
        255U, 161U, 110U, 8U,
        8U, 106U, 24U, 0U,
        8U, 17U, 34U, 0U,
        8U, 106U, 102U, 88U,
        128U, 106U, 104U, 0U,
        128U, 54U, 108U, 0U,
        0U, 101U, 186U, 91U,
        255U, 61U, 200U, 8U,
        191U, 100U, 226U, 120U,
        128U, 100U, 200U, 113U,
        160U, 100U, 248U, 113U,
        192U, 100U, 240U, 113U,
        224U, 100U, 56U, 114U,
        1U, 106U, 34U, 1U,
        0U, 101U, 170U, 64U,
        247U, 17U, 34U, 8U,
        0U, 101U, 202U, 88U,
        255U, 6U, 212U, 8U,
        247U, 1U, 2U, 8U,
        9U, 12U, 196U, 120U,
        8U, 12U, 12U, 104U,
        1U, 106U, 34U, 1U,
        255U, 106U, 38U, 9U,
        2U, 106U, 8U, 48U,
        255U, 106U, 8U, 8U,
        223U, 1U, 2U, 8U,
        1U, 106U, 122U, 0U,
        255U, 106U, 108U, 12U,
        4U, 20U, 16U, 49U,
        3U, 169U, 24U, 49U,
        3U, 169U, 16U, 48U,
        8U, 106U, 204U, 0U,
        169U, 106U, 208U, 91U,
        0U, 101U, 2U, 65U,
        168U, 106U, 106U, 0U,
        121U, 106U, 106U, 0U,
        64U, 61U, 234U, 104U,
        4U, 53U, 106U, 0U,
        0U, 101U, 42U, 91U,
        128U, 106U, 212U, 1U,
        16U, 54U, 214U, 104U,
        16U, 54U, 108U, 0U,
        7U, 172U, 16U, 49U,
        5U, 163U, 112U, 48U,
        3U, 140U, 16U, 48U,
        136U, 106U, 204U, 0U,
        172U, 106U, 200U, 91U,
        0U, 101U, 194U, 91U,
        56U, 106U, 204U, 0U,
        163U, 106U, 204U, 91U,
        255U, 56U, 18U, 105U,
        128U, 2U, 4U, 0U,
        231U, 53U, 106U, 8U,
        3U, 105U, 24U, 49U,
        3U, 105U, 16U, 48U,
        255U, 106U, 16U, 0U,
        255U, 106U, 18U, 0U,
        255U, 106U, 20U, 0U,
        34U, 56U, 200U, 40U,
        1U, 56U, 28U, 97U,
        2U, 100U, 200U, 0U,
        1U, 56U, 28U, 97U,
        191U, 53U, 106U, 8U,
        255U, 100U, 248U, 9U,
        255U, 53U, 38U, 9U,
        128U, 2U, 164U, 105U,
        16U, 12U, 122U, 105U,
        128U, 148U, 34U, 121U,
        0U, 53U, 10U, 91U,
        128U, 2U, 164U, 105U,
        255U, 101U, 148U, 121U,
        1U, 56U, 112U, 113U,
        255U, 56U, 112U, 24U,
        255U, 56U, 148U, 121U,
        128U, 234U, 74U, 97U,
        239U, 56U, 200U, 24U,
        128U, 106U, 200U, 0U,
        0U, 101U, 60U, 73U,
        51U, 56U, 200U, 40U,
        255U, 100U, 208U, 9U,
        4U, 57U, 192U, 49U,
        9U, 106U, 214U, 1U,
        128U, 235U, 66U, 121U,
        247U, 235U, 214U, 9U,
        8U, 235U, 70U, 105U,
        1U, 106U, 214U, 1U,
        8U, 233U, 16U, 49U,
        3U, 140U, 16U, 48U,
        255U, 56U, 112U, 24U,
        136U, 106U, 204U, 0U,
        57U, 106U, 206U, 91U,
        8U, 106U, 24U, 1U,
        255U, 106U, 26U, 9U,
        255U, 106U, 28U, 9U,
        13U, 147U, 38U, 1U,
        0U, 101U, 120U, 92U,
        136U, 106U, 204U, 0U,
        0U, 101U, 106U, 92U,
        0U, 101U, 194U, 91U,
        255U, 106U, 200U, 8U,
        8U, 57U, 114U, 24U,
        0U, 58U, 116U, 32U,
        0U, 101U, 2U, 65U,
        1U, 12U, 108U, 121U,
        16U, 12U, 2U, 121U,
        16U, 12U, 122U, 105U,
        1U, 252U, 112U, 121U,
        255U, 106U, 112U, 8U,
        1U, 12U, 118U, 121U,
        16U, 12U, 2U, 121U,
        0U, 101U, 174U, 89U,
        1U, 252U, 148U, 105U,
        64U, 13U, 132U, 105U,
        177U, 106U, 34U, 1U,
        0U, 101U, 148U, 65U,
        46U, 252U, 162U, 40U,
        63U, 56U, 200U, 8U,
        0U, 81U, 148U, 113U,
        255U, 106U, 200U, 8U,
        248U, 57U, 114U, 24U,
        255U, 58U, 116U, 32U,
        1U, 56U, 112U, 24U,
        0U, 101U, 134U, 65U,
        3U, 8U, 82U, 49U,
        255U, 56U, 80U, 9U,
        18U, 1U, 2U, 0U,
        255U, 8U, 82U, 9U,
        255U, 9U, 84U, 9U,
        255U, 10U, 86U, 9U,
        255U, 56U, 80U, 9U,
        0U, 101U, 170U, 64U,
        16U, 12U, 164U, 121U,
        0U, 101U, 174U, 89U,
        127U, 2U, 4U, 8U,
        225U, 106U, 34U, 1U,
        0U, 101U, 170U, 64U,
        4U, 147U, 194U, 105U,
        223U, 147U, 38U, 9U,
        32U, 147U, 178U, 105U,
        2U, 147U, 38U, 1U,
        1U, 148U, 182U, 121U,
        1U, 148U, 182U, 121U,
        1U, 148U, 182U, 121U,
        1U, 148U, 182U, 121U,
        1U, 148U, 182U, 121U,
        16U, 148U, 192U, 105U,
        215U, 147U, 38U, 9U,
        40U, 147U, 196U, 105U,
        255U, 106U, 212U, 12U,
        0U, 101U, 42U, 91U,
        5U, 180U, 16U, 49U,
        2U, 106U, 26U, 49U,
        3U, 140U, 16U, 48U,
        136U, 106U, 204U, 0U,
        180U, 106U, 204U, 91U,
        255U, 106U, 26U, 9U,
        255U, 106U, 28U, 9U,
        0U, 101U, 194U, 91U,
        61U, 106U, 10U, 91U,
        172U, 106U, 38U, 1U,
        4U, 11U, 222U, 105U,
        4U, 11U, 228U, 105U,
        16U, 12U, 224U, 121U,
        2U, 3U, 232U, 121U,
        17U, 12U, 228U, 121U,
        215U, 147U, 38U, 9U,
        40U, 147U, 234U, 105U,
        18U, 1U, 2U, 0U,
        0U, 101U, 170U, 64U,
        0U, 101U, 42U, 91U,
        255U, 6U, 68U, 9U,
        0U, 101U, 170U, 64U,
        16U, 61U, 6U, 0U,
        255U, 52U, 202U, 8U,
        128U, 101U, 28U, 98U,
        15U, 161U, 202U, 8U,
        7U, 161U, 202U, 8U,
        64U, 160U, 200U, 8U,
        0U, 101U, 202U, 0U,
        128U, 101U, 202U, 0U,
        128U, 160U, 12U, 122U,
        255U, 101U, 12U, 8U,
        0U, 101U, 30U, 66U,
        32U, 160U, 36U, 122U,
        255U, 101U, 12U, 8U,
        0U, 101U, 186U, 91U,
        160U, 61U, 44U, 98U,
        35U, 160U, 12U, 8U,
        0U, 101U, 186U, 91U,
        160U, 61U, 44U, 98U,
        0U, 185U, 36U, 66U,
        255U, 101U, 36U, 98U,
        161U, 106U, 34U, 1U,
        255U, 106U, 212U, 8U,
        16U, 81U, 44U, 114U,
        64U, 106U, 24U, 0U,
        255U, 101U, 12U, 8U,
        0U, 101U, 186U, 91U,
        160U, 61U, 246U, 113U,
        64U, 106U, 24U, 0U,
        255U, 52U, 166U, 8U,
        128U, 52U, 52U, 98U,
        127U, 160U, 64U, 9U,
        8U, 106U, 104U, 0U,
        0U, 101U, 170U, 64U,
        100U, 106U, 0U, 91U,
        128U, 100U, 170U, 106U,
        4U, 100U, 140U, 114U,
        2U, 100U, 146U, 114U,
        0U, 106U, 84U, 114U,
        3U, 100U, 166U, 114U,
        1U, 100U, 136U, 114U,
        7U, 100U, 232U, 114U,
        8U, 100U, 80U, 114U,
        35U, 100U, 236U, 114U,
        17U, 106U, 34U, 1U,
        7U, 106U, 242U, 90U,
        255U, 6U, 212U, 8U,
        0U, 101U, 170U, 64U,
        255U, 168U, 88U, 106U,
        255U, 162U, 112U, 122U,
        1U, 106U, 106U, 0U,
        0U, 185U, 230U, 91U,
        255U, 162U, 112U, 122U,
        113U, 106U, 34U, 1U,
        255U, 106U, 212U, 8U,
        64U, 81U, 112U, 98U,
        13U, 106U, 106U, 0U,
        0U, 185U, 230U, 91U,
        255U, 62U, 116U, 9U,
        255U, 144U, 124U, 8U,
        0U, 101U, 78U, 88U,
        0U, 101U, 188U, 64U,
        32U, 160U, 120U, 106U,
        255U, 55U, 200U, 8U,
        0U, 106U, 144U, 91U,
        255U, 106U, 166U, 91U,
        255U, 248U, 200U, 8U,
        255U, 79U, 200U, 8U,
        1U, 106U, 144U, 91U,
        0U, 185U, 166U, 91U,
        1U, 79U, 158U, 24U,
        2U, 106U, 34U, 1U,
        0U, 101U, 128U, 92U,
        0U, 101U, 188U, 64U,
        65U, 106U, 34U, 1U,
        0U, 101U, 170U, 64U,
        4U, 160U, 64U, 1U,
        0U, 101U, 152U, 92U,
        0U, 101U, 188U, 64U,
        16U, 54U, 80U, 122U,
        5U, 56U, 70U, 49U,
        4U, 20U, 88U, 49U,
        3U, 169U, 96U, 49U,
        163U, 106U, 204U, 0U,
        56U, 106U, 204U, 91U,
        172U, 106U, 204U, 0U,
        20U, 106U, 206U, 91U,
        169U, 106U, 208U, 91U,
        0U, 101U, 80U, 66U,
        239U, 54U, 108U, 8U,
        0U, 101U, 80U, 66U,
        15U, 100U, 200U, 8U,
        7U, 100U, 200U, 8U,
        0U, 55U, 110U, 0U,
        255U, 106U, 164U, 0U,
        0U, 101U, 96U, 91U,
        255U, 81U, 188U, 114U,
        32U, 54U, 198U, 122U,
        0U, 144U, 78U, 91U,
        0U, 101U, 200U, 66U,
        255U, 6U, 212U, 8U,
        0U, 101U, 186U, 91U,
        224U, 61U, 226U, 98U,
        32U, 18U, 226U, 98U,
        81U, 106U, 246U, 90U,
        0U, 101U, 72U, 91U,
        255U, 55U, 200U, 8U,
        0U, 161U, 218U, 98U,
        4U, 160U, 218U, 122U,
        251U, 160U, 64U, 9U,
        128U, 54U, 108U, 0U,
        128U, 160U, 80U, 122U,
        127U, 160U, 64U, 9U,
        255U, 106U, 242U, 90U,
        0U, 101U, 80U, 66U,
        4U, 160U, 224U, 122U,
        0U, 101U, 152U, 92U,
        0U, 101U, 226U, 66U,
        0U, 101U, 128U, 92U,
        49U, 106U, 34U, 1U,
        12U, 106U, 242U, 90U,
        0U, 101U, 80U, 66U,
        97U, 106U, 34U, 1U,
        0U, 101U, 80U, 66U,
        81U, 106U, 246U, 90U,
        81U, 106U, 34U, 1U,
        0U, 101U, 80U, 66U,
        16U, 61U, 6U, 0U,
        255U, 101U, 104U, 12U,
        255U, 6U, 212U, 8U,
        1U, 12U, 248U, 122U,
        4U, 12U, 250U, 106U,
        224U, 3U, 122U, 8U,
        224U, 61U, 6U, 99U,
        255U, 101U, 204U, 8U,
        255U, 18U, 218U, 12U,
        255U, 6U, 212U, 12U,
        209U, 106U, 34U, 1U,
        0U, 101U, 170U, 64U,
        255U, 101U, 38U, 9U,
        1U, 11U, 26U, 107U,
        16U, 12U, 12U, 123U,
        4U, 11U, 20U, 107U,
        255U, 106U, 202U, 8U,
        4U, 147U, 24U, 107U,
        1U, 148U, 22U, 123U,
        16U, 148U, 24U, 107U,
        128U, 61U, 30U, 115U,
        15U, 4U, 34U, 107U,
        2U, 3U, 34U, 123U,
        17U, 12U, 30U, 123U,
        199U, 147U, 38U, 9U,
        255U, 153U, 212U, 8U,
        56U, 147U, 36U, 107U,
        255U, 106U, 212U, 12U,
        128U, 54U, 40U, 107U,
        33U, 106U, 34U, 5U,
        255U, 101U, 32U, 9U,
        255U, 81U, 54U, 99U,
        255U, 55U, 200U, 8U,
        161U, 106U, 66U, 67U,
        255U, 81U, 200U, 8U,
        185U, 106U, 66U, 67U,
        255U, 144U, 164U, 8U,
        255U, 186U, 70U, 115U,
        255U, 186U, 32U, 9U,
        255U, 101U, 202U, 24U,
        0U, 108U, 58U, 99U,
        255U, 144U, 202U, 12U,
        255U, 106U, 202U, 4U,
        32U, 54U, 90U, 123U,
        0U, 144U, 46U, 91U,
        255U, 101U, 90U, 115U,
        255U, 82U, 88U, 115U,
        255U, 186U, 204U, 8U,
        255U, 82U, 32U, 9U,
        255U, 102U, 116U, 9U,
        255U, 101U, 32U, 13U,
        255U, 186U, 126U, 12U,
        0U, 106U, 134U, 92U,
        13U, 106U, 106U, 0U,
        0U, 81U, 230U, 67U,
        255U, 63U, 180U, 115U,
        255U, 106U, 162U, 0U,
        0U, 63U, 46U, 91U,
        255U, 101U, 180U, 115U,
        32U, 54U, 108U, 0U,
        32U, 160U, 110U, 107U,
        255U, 185U, 162U, 12U,
        255U, 106U, 162U, 4U,
        255U, 101U, 164U, 8U,
        224U, 106U, 204U, 0U,
        69U, 106U, 218U, 91U,
        1U, 106U, 208U, 1U,
        9U, 106U, 214U, 1U,
        128U, 235U, 122U, 123U,
        1U, 106U, 214U, 1U,
        1U, 233U, 164U, 52U,
        136U, 106U, 204U, 0U,
        69U, 106U, 218U, 91U,
        1U, 106U, 24U, 1U,
        255U, 106U, 26U, 9U,
        255U, 106U, 28U, 9U,
        13U, 106U, 38U, 1U,
        0U, 101U, 120U, 92U,
        255U, 153U, 164U, 12U,
        255U, 101U, 164U, 8U,
        224U, 106U, 204U, 0U,
        69U, 106U, 218U, 91U,
        1U, 106U, 208U, 1U,
        1U, 106U, 220U, 5U,
        136U, 106U, 204U, 0U,
        69U, 106U, 218U, 91U,
        1U, 106U, 24U, 1U,
        255U, 106U, 26U, 9U,
        255U, 106U, 28U, 9U,
        1U, 106U, 38U, 5U,
        1U, 101U, 216U, 49U,
        9U, 238U, 220U, 1U,
        128U, 238U, 170U, 123U,
        255U, 106U, 220U, 13U,
        255U, 101U, 50U, 9U,
        10U, 147U, 38U, 1U,
        0U, 101U, 120U, 68U,
        255U, 55U, 200U, 8U,
        0U, 106U, 112U, 91U,
        255U, 82U, 162U, 12U,
        1U, 12U, 186U, 123U,
        4U, 12U, 186U, 107U,
        224U, 3U, 6U, 8U,
        224U, 3U, 122U, 12U,
        255U, 140U, 16U, 8U,
        255U, 141U, 18U, 8U,
        255U, 142U, 20U, 12U,
        255U, 108U, 218U, 8U,
        255U, 108U, 218U, 8U,
        255U, 108U, 218U, 8U,
        255U, 108U, 218U, 8U,
        255U, 108U, 218U, 8U,
        255U, 108U, 218U, 8U,
        255U, 108U, 218U, 12U,
        61U, 100U, 164U, 40U,
        85U, 100U, 200U, 40U,
        0U, 108U, 218U, 24U,
        255U, 82U, 200U, 8U,
        0U, 108U, 218U, 32U,
        255U, 106U, 200U, 8U,
        0U, 108U, 218U, 32U,
        0U, 108U, 218U, 36U,
        255U, 101U, 200U, 8U,
        224U, 106U, 204U, 0U,
        65U, 106U, 214U, 91U,
        255U, 144U, 226U, 9U,
        32U, 106U, 208U, 1U,
        4U, 53U, 248U, 123U,
        29U, 106U, 220U, 1U,
        220U, 238U, 244U, 99U,
        0U, 101U, 14U, 68U,
        1U, 106U, 220U, 1U,
        32U, 160U, 216U, 49U,
        9U, 238U, 220U, 1U,
        128U, 238U, 254U, 123U,
        17U, 106U, 220U, 1U,
        80U, 238U, 2U, 100U,
        32U, 106U, 208U, 1U,
        9U, 106U, 220U, 1U,
        136U, 238U, 8U, 100U,
        25U, 106U, 220U, 1U,
        216U, 238U, 12U, 100U,
        255U, 106U, 220U, 9U,
        24U, 238U, 16U, 108U,
        255U, 106U, 212U, 12U,
        136U, 106U, 204U, 0U,
        65U, 106U, 214U, 91U,
        32U, 106U, 24U, 1U,
        255U, 106U, 26U, 9U,
        255U, 106U, 28U, 9U,
        255U, 53U, 38U, 9U,
        4U, 53U, 60U, 108U,
        160U, 106U, 202U, 0U,
        32U, 101U, 200U, 24U,
        255U, 108U, 50U, 9U,
        255U, 108U, 50U, 9U,
        255U, 108U, 50U, 9U,
        255U, 108U, 50U, 9U,
        255U, 108U, 50U, 9U,
        255U, 108U, 50U, 9U,
        255U, 108U, 50U, 9U,
        255U, 108U, 50U, 9U,
        0U, 101U, 38U, 100U,
        10U, 147U, 38U, 1U,
        0U, 101U, 120U, 68U,
        160U, 106U, 204U, 0U,
        232U, 106U, 200U, 0U,
        1U, 148U, 64U, 108U,
        16U, 148U, 66U, 108U,
        8U, 148U, 84U, 108U,
        8U, 148U, 84U, 108U,
        8U, 148U, 84U, 108U,
        0U, 101U, 104U, 92U,
        8U, 100U, 200U, 24U,
        0U, 140U, 202U, 24U,
        0U, 101U, 74U, 76U,
        0U, 101U, 64U, 68U,
        247U, 147U, 38U, 9U,
        8U, 147U, 86U, 108U,
        0U, 101U, 104U, 92U,
        8U, 100U, 200U, 24U,
        8U, 100U, 88U, 100U,
        255U, 106U, 212U, 12U,
        0U, 101U, 120U, 92U,
        0U, 101U, 104U, 92U,
        0U, 101U, 104U, 92U,
        0U, 101U, 104U, 92U,
        255U, 153U, 218U, 8U,
        255U, 153U, 218U, 8U,
        255U, 153U, 218U, 8U,
        255U, 153U, 218U, 8U,
        255U, 153U, 218U, 8U,
        255U, 153U, 218U, 8U,
        255U, 153U, 218U, 8U,
        255U, 153U, 218U, 12U,
        8U, 148U, 120U, 124U,
        247U, 147U, 38U, 9U,
        8U, 147U, 124U, 108U,
        255U, 106U, 212U, 12U,
        255U, 64U, 116U, 9U,
        255U, 144U, 128U, 8U,
        255U, 106U, 114U, 5U,
        255U, 64U, 148U, 100U,
        255U, 63U, 140U, 100U,
        255U, 106U, 202U, 4U,
        255U, 63U, 32U, 9U,
        1U, 106U, 106U, 0U,
        0U, 185U, 230U, 91U,
        255U, 186U, 126U, 12U,
        255U, 64U, 32U, 9U,
        255U, 186U, 128U, 12U,
        255U, 63U, 116U, 9U,
        255U, 144U, 126U, 12U};
static int aic7xxx_patch15_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch15_func(struct aic7xxx_host *p )
{
  {
  return (((unsigned int )p->bugs & 64U) != 0U);
}
}
static int aic7xxx_patch14_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch14_func(struct aic7xxx_host *p )
{
  {
  return (((unsigned int )p->bugs & 16U) != 0U);
}
}
static int aic7xxx_patch13_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch13_func(struct aic7xxx_host *p )
{
  {
  return (((unsigned int )p->features & 4U) != 0U);
}
}
static int aic7xxx_patch12_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch12_func(struct aic7xxx_host *p )
{
  {
  return (((unsigned int )p->bugs & 2U) != 0U);
}
}
static int aic7xxx_patch11_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch11_func(struct aic7xxx_host *p )
{
  {
  return (((unsigned int )p->features & 2U) == 0U);
}
}
static int aic7xxx_patch10_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch10_func(struct aic7xxx_host *p )
{
  {
  return (((unsigned int )p->features & 32U) == 0U);
}
}
static int aic7xxx_patch9_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch9_func(struct aic7xxx_host *p )
{
  {
  return (((unsigned int )p->chip & 255U) == 7U);
}
}
static int aic7xxx_patch8_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch8_func(struct aic7xxx_host *p )
{
  {
  return ((int )p->features & 1);
}
}
static int aic7xxx_patch7_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch7_func(struct aic7xxx_host *p )
{
  {
  return (((unsigned int )p->features & 2U) != 0U);
}
}
static int aic7xxx_patch6_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch6_func(struct aic7xxx_host *p )
{
  {
  return (((long )p->flags & 1L) == 0L);
}
}
static int aic7xxx_patch5_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch5_func(struct aic7xxx_host *p )
{
  {
  return ((int )p->flags & 1);
}
}
static int aic7xxx_patch4_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch4_func(struct aic7xxx_host *p )
{
  {
  return (((unsigned int )p->features & 64U) != 0U);
}
}
static int aic7xxx_patch3_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch3_func(struct aic7xxx_host *p )
{
  {
  return (((unsigned int )p->features & 8U) != 0U);
}
}
static int aic7xxx_patch2_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch2_func(struct aic7xxx_host *p )
{
  {
  return (((unsigned int )p->features & 64U) == 0U);
}
}
static int aic7xxx_patch1_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch1_func(struct aic7xxx_host *p )
{
  {
  return (((unsigned int )p->features & 32U) != 0U);
}
}
static int aic7xxx_patch0_func(struct aic7xxx_host *p ) ;
static int aic7xxx_patch0_func(struct aic7xxx_host *p )
{
  {
  return (0);
}
}
struct sequencer_patch sequencer_patches[85U] =
  { {& aic7xxx_patch1_func, 3U, 2U, 1U},
        {& aic7xxx_patch2_func, 7U, 1U, 1U},
        {& aic7xxx_patch2_func, 8U, 1U, 1U},
        {& aic7xxx_patch3_func, 11U, 4U, 1U},
        {& aic7xxx_patch4_func, 16U, 3U, 2U},
        {& aic7xxx_patch0_func, 19U, 4U, 1U},
        {& aic7xxx_patch5_func, 23U, 1U, 1U},
        {& aic7xxx_patch6_func, 26U, 1U, 1U},
        {& aic7xxx_patch1_func, 29U, 1U, 2U},
        {& aic7xxx_patch0_func, 30U, 3U, 1U},
        {& aic7xxx_patch3_func, 39U, 4U, 1U},
        {& aic7xxx_patch7_func, 43U, 3U, 2U},
        {& aic7xxx_patch0_func, 46U, 3U, 1U},
        {& aic7xxx_patch8_func, 52U, 7U, 1U},
        {& aic7xxx_patch3_func, 60U, 3U, 1U},
        {& aic7xxx_patch7_func, 63U, 2U, 1U},
        {& aic7xxx_patch7_func, 102U, 1U, 2U},
        {& aic7xxx_patch0_func, 103U, 2U, 1U},
        {& aic7xxx_patch7_func, 107U, 2U, 1U},
        {& aic7xxx_patch9_func, 109U, 1U, 1U},
        {& aic7xxx_patch10_func, 110U, 2U, 1U},
        {& aic7xxx_patch7_func, 113U, 1U, 2U},
        {& aic7xxx_patch0_func, 114U, 1U, 1U},
        {& aic7xxx_patch1_func, 118U, 1U, 1U},
        {& aic7xxx_patch1_func, 121U, 3U, 3U},
        {& aic7xxx_patch11_func, 123U, 1U, 1U},
        {& aic7xxx_patch0_func, 124U, 5U, 1U},
        {& aic7xxx_patch7_func, 132U, 1U, 1U},
        {& aic7xxx_patch9_func, 133U, 1U, 1U},
        {& aic7xxx_patch10_func, 134U, 3U, 1U},
        {& aic7xxx_patch7_func, 137U, 3U, 2U},
        {& aic7xxx_patch0_func, 140U, 2U, 1U},
        {& aic7xxx_patch7_func, 142U, 5U, 2U},
        {& aic7xxx_patch0_func, 147U, 3U, 1U},
        {& aic7xxx_patch7_func, 150U, 1U, 2U},
        {& aic7xxx_patch0_func, 151U, 2U, 1U},
        {& aic7xxx_patch1_func, 153U, 15U, 4U},
        {& aic7xxx_patch11_func, 166U, 1U, 2U},
        {& aic7xxx_patch0_func, 167U, 1U, 1U},
        {& aic7xxx_patch0_func, 168U, 10U, 1U},
        {& aic7xxx_patch7_func, 181U, 1U, 2U},
        {& aic7xxx_patch0_func, 182U, 2U, 1U},
        {& aic7xxx_patch7_func, 184U, 18U, 1U},
        {& aic7xxx_patch1_func, 202U, 3U, 3U},
        {& aic7xxx_patch7_func, 204U, 1U, 1U},
        {& aic7xxx_patch0_func, 205U, 4U, 1U},
        {& aic7xxx_patch7_func, 210U, 2U, 1U},
        {& aic7xxx_patch7_func, 215U, 13U, 3U},
        {& aic7xxx_patch12_func, 218U, 1U, 1U},
        {& aic7xxx_patch12_func, 219U, 4U, 1U},
        {& aic7xxx_patch1_func, 229U, 3U, 3U},
        {& aic7xxx_patch11_func, 231U, 1U, 1U},
        {& aic7xxx_patch0_func, 232U, 5U, 1U},
        {& aic7xxx_patch11_func, 237U, 1U, 2U},
        {& aic7xxx_patch0_func, 238U, 9U, 1U},
        {& aic7xxx_patch13_func, 254U, 1U, 2U},
        {& aic7xxx_patch0_func, 255U, 1U, 1U},
        {& aic7xxx_patch4_func, 316U, 1U, 2U},
        {& aic7xxx_patch0_func, 317U, 1U, 1U},
        {& aic7xxx_patch2_func, 320U, 1U, 1U},
        {& aic7xxx_patch1_func, 330U, 3U, 2U},
        {& aic7xxx_patch0_func, 333U, 5U, 1U},
        {& aic7xxx_patch13_func, 341U, 1U, 2U},
        {& aic7xxx_patch0_func, 342U, 1U, 1U},
        {& aic7xxx_patch5_func, 347U, 1U, 1U},
        {& aic7xxx_patch11_func, 389U, 15U, 2U},
        {& aic7xxx_patch14_func, 402U, 1U, 1U},
        {& aic7xxx_patch1_func, 441U, 7U, 2U},
        {& aic7xxx_patch0_func, 448U, 8U, 1U},
        {& aic7xxx_patch1_func, 457U, 4U, 2U},
        {& aic7xxx_patch0_func, 461U, 6U, 1U},
        {& aic7xxx_patch1_func, 467U, 4U, 2U},
        {& aic7xxx_patch0_func, 471U, 3U, 1U},
        {& aic7xxx_patch10_func, 481U, 10U, 1U},
        {& aic7xxx_patch1_func, 500U, 22U, 5U},
        {& aic7xxx_patch11_func, 508U, 4U, 1U},
        {& aic7xxx_patch7_func, 512U, 7U, 3U},
        {& aic7xxx_patch15_func, 512U, 5U, 2U},
        {& aic7xxx_patch0_func, 517U, 2U, 1U},
        {& aic7xxx_patch10_func, 522U, 50U, 3U},
        {& aic7xxx_patch14_func, 543U, 17U, 2U},
        {& aic7xxx_patch0_func, 560U, 4U, 1U},
        {& aic7xxx_patch10_func, 572U, 4U, 1U},
        {& aic7xxx_patch5_func, 576U, 2U, 1U},
        {& aic7xxx_patch5_func, 579U, 9U, 1U}};
static int aic7xxx_check_patch(struct aic7xxx_host *p , struct sequencer_patch **start_patch ,
                               int start_instr , int *skip_addr )
{
  struct sequencer_patch *cur_patch ;
  struct sequencer_patch *last_patch ;
  int num_patches ;
  int tmp ;
  {
  num_patches = 85;
  last_patch = (struct sequencer_patch *)(& sequencer_patches) + (unsigned long )num_patches;
  cur_patch = *start_patch;
  goto ldv_33641;
  ldv_33640:
  tmp = (*(cur_patch->patch_func))(p);
  if (tmp == 0) {
    *skip_addr = (int )cur_patch->skip_instr + start_instr;
    cur_patch = cur_patch + (unsigned long )cur_patch->skip_patch;
  } else {
    cur_patch = cur_patch + 1;
  }
  ldv_33641: ;
  if ((unsigned long )cur_patch < (unsigned long )last_patch && (int )cur_patch->begin == start_instr) {
    goto ldv_33640;
  } else {
  }
  *start_patch = cur_patch;
  if (*skip_addr > start_instr) {
    return (0);
  } else {
  }
  return (1);
}
}
static void aic7xxx_download_instr(struct aic7xxx_host *p , int instrptr , unsigned char *dconsts )
{
  union ins_formats instr ;
  struct ins_format1 *fmt1_ins ;
  struct ins_format3 *fmt3_ins ;
  unsigned char opcode ;
  struct sequencer_patch *cur_patch ;
  int address_offset ;
  unsigned int address ;
  int skip_addr ;
  int i ;
  int end_addr ;
  int __min1 ;
  int __min2 ;
  int i___0 ;
  int count ;
  unsigned int mask ;
  {
  instr = *((union ins_formats *)(& seqprog) + (unsigned long )(instrptr * 4));
  instr.integer = instr.integer;
  fmt1_ins = & instr.format1;
  fmt3_ins = 0;
  opcode = instr.format1.opcode;
  switch ((int )opcode) {
  case 8: ;
  case 9: ;
  case 10: ;
  case 11: ;
  case 12: ;
  case 13: ;
  case 14: ;
  case 15:
  fmt3_ins = & instr.format3;
  address_offset = 0;
  address = (unsigned int )fmt3_ins->address;
  cur_patch = (struct sequencer_patch *)(& sequencer_patches);
  skip_addr = 0;
  i = 0;
  goto ldv_33670;
  ldv_33669:
  aic7xxx_check_patch(p, & cur_patch, i, & skip_addr);
  if (skip_addr > i) {
    __min1 = (int )address;
    __min2 = skip_addr;
    end_addr = __min1 < __min2 ? __min1 : __min2;
    address_offset = (end_addr - i) + address_offset;
    i = skip_addr;
  } else {
    i = i + 1;
  }
  ldv_33670: ;
  if ((unsigned int )i < address) {
    goto ldv_33669;
  } else {
  }
  address = address - (unsigned int )address_offset;
  fmt3_ins->address = (unsigned short )address;
  case 0: ;
  case 1: ;
  case 2: ;
  case 3: ;
  case 4: ;
  case 6: ;
  if ((unsigned int )*((unsigned char *)fmt1_ins + 3UL) != 0U) {
    fmt1_ins->immediate = *(dconsts + (unsigned long )fmt1_ins->immediate);
  } else {
  }
  fmt1_ins->parity = 0U;
  case 5: ;
  if (((unsigned int )p->features & 2U) != 0U) {
    i___0 = 0;
    count = 0;
    goto ldv_33683;
    ldv_33682:
    mask = (unsigned int )(1 << i___0);
    if ((instr.integer & mask) != 0U) {
      count = count + 1;
    } else {
    }
    i___0 = i___0 + 1;
    ldv_33683: ;
    if (i___0 <= 30) {
      goto ldv_33682;
    } else {
    }
    if ((count & 1) == 0) {
      instr.format1.parity = 1U;
    } else {
    }
  } else
  if ((unsigned long )fmt3_ins != (unsigned long )((struct ins_format3 *)0)) {
    instr.integer = (unsigned int )((((int )fmt3_ins->immediate | ((int )fmt3_ins->source << 8)) | ((int )fmt3_ins->address << 16)) | ((int )fmt3_ins->opcode << 25));
  } else {
    instr.integer = (unsigned int )(((((int )fmt1_ins->immediate | ((int )fmt1_ins->source << 8)) | ((int )fmt1_ins->destination << 16)) | ((int )fmt1_ins->ret << 24)) | ((int )fmt1_ins->opcode << 25));
  }
  aic_outb(p, (int )((unsigned char )instr.integer), 97L);
  aic_outb(p, (int )((unsigned char )(instr.integer >> 8)), 97L);
  aic_outb(p, (int )((unsigned char )(instr.integer >> 16)), 97L);
  aic_outb(p, (int )((unsigned char )(instr.integer >> 24)), 97L);
  __const_udelay(42950UL);
  goto ldv_33685;
  default:
  panic("aic7xxx: Unknown opcode encountered in sequencer program.");
  }
  ldv_33685: ;
  return;
}
}
static void aic7xxx_loadseq(struct aic7xxx_host *p )
{
  struct sequencer_patch *cur_patch ;
  int i ;
  int downloaded ;
  int skip_addr ;
  unsigned char download_consts[4U] ;
  int tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  download_consts[0] = 0U;
  download_consts[1] = 0U;
  download_consts[2] = 0U;
  download_consts[3] = 0U;
  if ((aic7xxx_verbose & 8) != 0) {
    printk("\016(scsi%d) Downloading sequencer code...", p->host_no);
  } else {
  }
  download_consts[0] = 0U;
  cur_patch = (struct sequencer_patch *)(& sequencer_patches);
  downloaded = 0;
  skip_addr = 0;
  aic_outb(p, 177, 96L);
  aic_outb(p, 0, 98L);
  aic_outb(p, 0, 99L);
  i = 0;
  goto ldv_33697;
  ldv_33696:
  tmp = aic7xxx_check_patch(p, & cur_patch, i, & skip_addr);
  if (tmp == 0) {
    goto ldv_33695;
  } else {
  }
  aic7xxx_download_instr(p, i, (unsigned char *)(& download_consts));
  downloaded = downloaded + 1;
  ldv_33695:
  i = i + 1;
  ldv_33697: ;
  if ((unsigned int )i <= 589U) {
    goto ldv_33696;
  } else {
  }
  aic_outb(p, 0, 98L);
  aic_outb(p, 0, 99L);
  aic_outb(p, 48, 96L);
  unpause_sequencer(p, 1);
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_33701;
    ldv_33700:
    __const_udelay(4295000UL);
    ldv_33701:
    tmp___0 = __ms;
    __ms = __ms - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_33700;
    } else {
    }
  }
  pause_sequencer(p);
  aic_outb(p, 16, 96L);
  if ((aic7xxx_verbose & 8) != 0) {
    printk(" %d instructions downloaded\n", downloaded);
  } else {
  }
  if (aic7xxx_dump_sequencer != 0) {
    aic7xxx_print_sequencer(p, downloaded);
  } else {
  }
  return;
}
}
static void aic7xxx_print_sequencer(struct aic7xxx_host *p , int downloaded )
{
  int i ;
  int k ;
  int temp ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned long __ms ;
  unsigned long tmp___3 ;
  {
  aic_outb(p, 177, 96L);
  aic_outb(p, 0, 98L);
  aic_outb(p, 0, 99L);
  k = 0;
  i = 0;
  goto ldv_33711;
  ldv_33710: ;
  if (k == 0) {
    printk("%03x: ", i);
  } else {
  }
  tmp = aic_inb(p, 97L);
  temp = (int )tmp;
  tmp___0 = aic_inb(p, 97L);
  temp = ((int )tmp___0 << 8) | temp;
  tmp___1 = aic_inb(p, 97L);
  temp = ((int )tmp___1 << 16) | temp;
  tmp___2 = aic_inb(p, 97L);
  temp = ((int )tmp___2 << 24) | temp;
  printk("%08x", temp);
  k = k + 1;
  if (k == 8) {
    printk("\n");
    k = 0;
  } else {
    printk(" ");
  }
  i = i + 1;
  ldv_33711: ;
  if (i < downloaded) {
    goto ldv_33710;
  } else {
  }
  aic_outb(p, 0, 98L);
  aic_outb(p, 0, 99L);
  aic_outb(p, 48, 96L);
  unpause_sequencer(p, 1);
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_33715;
    ldv_33714:
    __const_udelay(4295000UL);
    ldv_33715:
    tmp___3 = __ms;
    __ms = __ms - 1UL;
    if (tmp___3 != 0UL) {
      goto ldv_33714;
    } else {
    }
  }
  pause_sequencer(p);
  aic_outb(p, 16, 96L);
  printk("\n");
  return;
}
}
static char const *aic7xxx_info(struct Scsi_Host *dooh )
{
  char buffer[256U] ;
  char *bp ;
  struct aic7xxx_host *p ;
  {
  bp = (char *)(& buffer);
  p = (struct aic7xxx_host *)(& dooh->hostdata);
  memset((void *)bp, 0, 256UL);
  strcpy(bp, "Adaptec AHA274x/284x/294x (EISA/VLB/PCI-Fast SCSI) ");
  strcat(bp, "5.2.6");
  strcat(bp, "/");
  strcat(bp, "5.2.0");
  strcat(bp, "\n");
  strcat(bp, "       <");
  strcat(bp, board_names[p->board_name_index]);
  strcat(bp, ">");
  return ((char const *)bp);
}
}
static struct aic7xxx_syncrate *aic7xxx_find_syncrate(struct aic7xxx_host *p , unsigned int *period ,
                                                      unsigned int maxsync , unsigned char *options )
{
  struct aic7xxx_syncrate *syncrate ;
  int done ;
  unsigned int __max1 ;
  unsigned int __max2 ;
  unsigned int __max1___0 ;
  unsigned int __max2___0 ;
  unsigned int __max1___1 ;
  unsigned int __max2___1 ;
  {
  done = 0;
  switch ((int )*options) {
  case 2: ;
  case 3: ;
  if (((unsigned int )p->features & 512U) == 0U) {
    *options = 0U;
    __max1 = maxsync;
    __max2 = 1U;
    maxsync = __max1 > __max2 ? __max1 : __max2;
  } else {
  }
  goto ldv_33736;
  case 4: ;
  case 5: ;
  if (((unsigned int )p->features & 512U) == 0U) {
    *options = 0U;
    __max1___0 = maxsync;
    __max2___0 = 1U;
    maxsync = __max1___0 > __max2___0 ? __max1___0 : __max2___0;
  } else {
    switch ((int )*options) {
    case 4:
    *options = 2U;
    goto ldv_33743;
    case 5:
    *options = 3U;
    goto ldv_33743;
    }
    ldv_33743: ;
  }
  goto ldv_33736;
  default:
  *options = 0U;
  __max1___1 = maxsync;
  __max2___1 = 1U;
  maxsync = __max1___1 > __max2___1 ? __max1___1 : __max2___1;
  goto ldv_33736;
  }
  ldv_33736:
  syncrate = (struct aic7xxx_syncrate *)(& aic7xxx_syncrates) + (unsigned long )maxsync;
  goto ldv_33755;
  ldv_33754: ;
  if (*period <= (unsigned int )syncrate->period) {
    switch ((int )*options) {
    case 2: ;
    case 3: ;
    if ((syncrate->sxfr_ultra2 & 64) == 0) {
      done = 1;
      *options = 0U;
      *period = (unsigned int )syncrate->period;
    } else {
      done = 1;
      if ((unsigned long )((struct aic7xxx_syncrate *)(& aic7xxx_syncrates) + (unsigned long )maxsync) == (unsigned long )syncrate) {
        *period = (unsigned int )syncrate->period;
      } else {
      }
    }
    goto ldv_33751;
    default: ;
    if ((syncrate->sxfr_ultra2 & 64) == 0) {
      done = 1;
      if ((unsigned long )((struct aic7xxx_syncrate *)(& aic7xxx_syncrates) + (unsigned long )maxsync) == (unsigned long )syncrate) {
        *period = (unsigned int )syncrate->period;
      } else {
      }
    } else {
    }
    goto ldv_33751;
    }
    ldv_33751: ;
    if (done != 0) {
      goto ldv_33753;
    } else {
    }
  } else {
  }
  syncrate = syncrate + 1;
  ldv_33755: ;
  if ((unsigned long )syncrate->rate[0] != (unsigned long )((char const *)0) && (((unsigned int )p->features & 2U) == 0U || syncrate->sxfr_ultra2 != 0)) {
    goto ldv_33754;
  } else {
  }
  ldv_33753: ;
  if ((*period == 0U || (unsigned long )syncrate->rate[0] == (unsigned long )((char const *)0)) || (((unsigned int )p->features & 2U) != 0U && syncrate->sxfr_ultra2 == 0)) {
    *options = 0U;
    *period = 255U;
    syncrate = 0;
  } else {
  }
  return (syncrate);
}
}
static unsigned int aic7xxx_find_period(struct aic7xxx_host *p , unsigned int scsirate ,
                                        unsigned int maxsync )
{
  struct aic7xxx_syncrate *syncrate ;
  {
  if (((unsigned int )p->features & 2U) != 0U) {
    scsirate = scsirate & 127U;
  } else {
    scsirate = scsirate & 112U;
  }
  syncrate = (struct aic7xxx_syncrate *)(& aic7xxx_syncrates) + (unsigned long )maxsync;
  goto ldv_33764;
  ldv_33763: ;
  if (((unsigned int )p->features & 2U) != 0U) {
    if (syncrate->sxfr_ultra2 == 0) {
      goto ldv_33762;
    } else
    if ((unsigned int )syncrate->sxfr_ultra2 == scsirate) {
      return ((unsigned int )syncrate->period);
    } else
    if (((unsigned int )syncrate->sxfr_ultra2 & 4294967231U) == scsirate) {
      return ((unsigned int )syncrate->period);
    } else
    if (((unsigned int )syncrate->sxfr & 4294967039U) == scsirate) {
      return ((unsigned int )syncrate->period);
    } else {
    }
  } else {
  }
  syncrate = syncrate + 1;
  ldv_33764: ;
  if ((unsigned long )syncrate->rate[0] != (unsigned long )((char const *)0)) {
    goto ldv_33763;
  } else {
  }
  ldv_33762: ;
  return (0U);
}
}
static void aic7xxx_validate_offset(struct aic7xxx_host *p , struct aic7xxx_syncrate *syncrate ,
                                    unsigned int *offset , int wide )
{
  unsigned int maxoffset ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  {
  if ((unsigned long )syncrate == (unsigned long )((struct aic7xxx_syncrate *)0)) {
    maxoffset = 0U;
  } else
  if (((unsigned int )p->features & 2U) != 0U) {
    maxoffset = 127U;
  } else
  if (wide != 0) {
    maxoffset = 8U;
  } else {
    maxoffset = 15U;
  }
  _min1 = *offset;
  _min2 = maxoffset;
  *offset = _min1 < _min2 ? _min1 : _min2;
  return;
}
}
static void aic7xxx_set_syncrate(struct aic7xxx_host *p , struct aic7xxx_syncrate *syncrate ,
                                 int target , int channel , unsigned int period ,
                                 unsigned int offset , unsigned char options , unsigned int type ,
                                 struct aic_dev_data *aic_dev )
{
  unsigned char tindex ;
  unsigned short target_mask ;
  unsigned char lun ;
  unsigned char old_options ;
  unsigned int old_period ;
  unsigned int old_offset ;
  unsigned char tmp ;
  unsigned int scsirate ;
  unsigned char tmp___0 ;
  unsigned char sxfrctl0 ;
  int rate_mod ;
  {
  tindex = (unsigned char )((int )((signed char )(channel << 3)) | (int )((signed char )target));
  target_mask = (unsigned short )(1 << (int )tindex);
  tmp = aic_inb(p, 161L);
  lun = (unsigned int )tmp & 7U;
  if ((unsigned long )syncrate == (unsigned long )((struct aic7xxx_syncrate *)0)) {
    period = 0U;
    offset = 0U;
  } else {
  }
  old_period = (unsigned int )aic_dev->cur.period;
  old_offset = (unsigned int )aic_dev->cur.offset;
  old_options = aic_dev->cur.options;
  if ((int )type & 1) {
    tmp___0 = aic_inb(p, (long )((int )tindex + 32));
    scsirate = (unsigned int )tmp___0;
    if (((unsigned int )p->features & 2U) != 0U) {
      scsirate = scsirate & 4294967168U;
      if ((unsigned long )syncrate != (unsigned long )((struct aic7xxx_syncrate *)0)) {
        switch ((int )options) {
        case 3:
        scsirate = ((unsigned int )syncrate->sxfr_ultra2 & 4294967231U) | scsirate;
        goto ldv_33794;
        default:
        scsirate = (unsigned int )syncrate->sxfr_ultra2 | scsirate;
        goto ldv_33794;
        }
        ldv_33794: ;
      } else {
      }
      if ((type & 2U) != 0U) {
        aic_outb(p, (int )((unsigned char )offset), 5L);
      } else {
      }
      aic_outb(p, (int )((unsigned char )offset), (long )((int )tindex + 112));
    } else {
      scsirate = scsirate & 4294967168U;
      p->ultraenb = (unsigned short )((int )((short )p->ultraenb) & (int )((short )(~ ((int )target_mask))));
      if ((unsigned long )syncrate != (unsigned long )((struct aic7xxx_syncrate *)0)) {
        if ((syncrate->sxfr & 256) != 0) {
          p->ultraenb = (int )p->ultraenb | (int )target_mask;
        } else {
        }
        scsirate = ((unsigned int )syncrate->sxfr & 112U) | scsirate;
        scsirate = (offset & 15U) | scsirate;
      } else {
      }
      if ((type & 2U) != 0U) {
        sxfrctl0 = aic_inb(p, 1L);
        sxfrctl0 = (unsigned int )sxfrctl0 & 223U;
        if ((unsigned int )((int )p->ultraenb & (int )target_mask) != 0U) {
          sxfrctl0 = (unsigned int )sxfrctl0 | 32U;
        } else {
        }
        aic_outb(p, (int )sxfrctl0, 1L);
      } else {
      }
      aic_outb(p, (int )((unsigned char )p->ultraenb), 48L);
      aic_outb(p, (int )((unsigned char )((int )p->ultraenb >> 8)), 49L);
    }
    if ((type & 2U) != 0U) {
      aic_outb(p, (int )((unsigned char )scsirate), 4L);
    } else {
    }
    aic_outb(p, (int )((unsigned char )scsirate), (long )((int )tindex + 32));
    aic_dev->cur.period = (unsigned char )period;
    aic_dev->cur.offset = (unsigned char )offset;
    aic_dev->cur.options = options;
    if (((type & 16U) == 0U && aic7xxx_verbose & 1) && ((int )aic_dev->flags & 4) != 0) {
      if (offset != 0U) {
        rate_mod = (scsirate & 128U) != 0U;
        printk("\016(scsi%d:%d:%d:%d) Synchronous at %s Mbyte/sec, offset %d.\n",
               p->host_no, channel, target, (int )lun, syncrate->rate[rate_mod], offset);
      } else {
        printk("\016(scsi%d:%d:%d:%d) Using asynchronous transfers.\n", p->host_no,
               channel, target, (int )lun);
      }
      aic_dev->flags = (unsigned int )aic_dev->flags & 251U;
    } else {
    }
  } else {
  }
  if ((type & 4U) != 0U) {
    aic_dev->goal.period = (unsigned char )period;
    aic_dev->goal.offset = (unsigned char )offset;
    aic_dev->goal.options = options;
  } else {
  }
  if ((type & 8U) != 0U) {
    p->user[(int )tindex].period = (unsigned char )period;
    p->user[(int )tindex].offset = (unsigned char )offset;
    p->user[(int )tindex].options = options;
  } else {
  }
  return;
}
}
static void aic7xxx_set_width(struct aic7xxx_host *p , int target , int channel ,
                              int lun , unsigned int width , unsigned int type , struct aic_dev_data *aic_dev )
{
  unsigned char tindex ;
  unsigned short target_mask ;
  unsigned int old_width ;
  unsigned char scsirate ;
  {
  tindex = (unsigned char )((int )((signed char )(channel << 3)) | (int )((signed char )target));
  target_mask = (unsigned short )(1 << (int )tindex);
  old_width = (unsigned int )aic_dev->cur.width;
  if ((int )type & 1) {
    scsirate = aic_inb(p, (long )((int )tindex + 32));
    scsirate = (unsigned int )scsirate & 127U;
    if (width == 1U) {
      scsirate = (unsigned int )scsirate | 128U;
    } else {
    }
    aic_outb(p, (int )scsirate, (long )((int )tindex + 32));
    if ((type & 2U) != 0U) {
      aic_outb(p, (int )scsirate, 4L);
    } else {
    }
    aic_dev->cur.width = (unsigned char )width;
    if (((type & 16U) == 0U && (aic7xxx_verbose & 32) != 0) && ((int )aic_dev->flags & 4) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Using %s transfers\n", p->host_no, channel, target,
             lun, (int )((signed char )scsirate) < 0 ? (char *)"Wide(16bit)" : (char *)"Narrow(8bit)");
    } else {
    }
  } else {
  }
  if ((type & 4U) != 0U) {
    aic_dev->goal.width = (unsigned char )width;
  } else {
  }
  if ((type & 8U) != 0U) {
    p->user[(int )tindex].width = (unsigned char )width;
  } else {
  }
  if ((unsigned int )aic_dev->goal.offset != 0U) {
    if (((unsigned int )p->features & 2U) != 0U) {
      aic_dev->goal.offset = 127U;
    } else
    if (width == 1U) {
      aic_dev->goal.offset = 8U;
    } else {
      aic_dev->goal.offset = 15U;
    }
  } else {
  }
  return;
}
}
static void scbq_init(scb_queue_type volatile *queue )
{
  {
  queue->head = 0;
  queue->tail = 0;
  return;
}
}
__inline static void scbq_insert_head(scb_queue_type volatile *queue , struct aic7xxx_scb *scb )
{
  {
  scb->q_next = queue->head;
  queue->head = scb;
  if ((unsigned long )queue->tail == (unsigned long )((struct aic7xxx_scb * )0)) {
    queue->tail = queue->head;
  } else {
  }
  return;
}
}
__inline static struct aic7xxx_scb *scbq_remove_head(scb_queue_type volatile *queue )
{
  struct aic7xxx_scb *scbp ;
  {
  scbp = queue->head;
  if ((unsigned long )queue->head != (unsigned long )((struct aic7xxx_scb * )0)) {
    queue->head = (queue->head)->q_next;
  } else {
  }
  if ((unsigned long )queue->head == (unsigned long )((struct aic7xxx_scb * )0)) {
    queue->tail = 0;
  } else {
  }
  return (scbp);
}
}
__inline static void scbq_remove(scb_queue_type volatile *queue , struct aic7xxx_scb *scb )
{
  struct aic7xxx_scb *curscb ;
  {
  if ((unsigned long )((struct aic7xxx_scb *)queue->head) == (unsigned long )scb) {
    scbq_remove_head(queue);
  } else {
    curscb = queue->head;
    goto ldv_33828;
    ldv_33827:
    curscb = curscb->q_next;
    ldv_33828: ;
    if ((unsigned long )curscb != (unsigned long )((struct aic7xxx_scb *)0) && (unsigned long )curscb->q_next != (unsigned long )scb) {
      goto ldv_33827;
    } else {
    }
    if ((unsigned long )curscb != (unsigned long )((struct aic7xxx_scb *)0)) {
      curscb->q_next = scb->q_next;
      if ((unsigned long )scb->q_next == (unsigned long )((struct aic7xxx_scb *)0)) {
        queue->tail = curscb;
      } else {
      }
    } else {
    }
  }
  return;
}
}
__inline static void scbq_insert_tail(scb_queue_type volatile *queue , struct aic7xxx_scb *scb )
{
  {
  scb->q_next = 0;
  if ((unsigned long )queue->tail != (unsigned long )((struct aic7xxx_scb * )0)) {
    (queue->tail)->q_next = scb;
  } else {
  }
  queue->tail = scb;
  if ((unsigned long )queue->head == (unsigned long )((struct aic7xxx_scb * )0)) {
    queue->head = queue->tail;
  } else {
  }
  return;
}
}
static int aic7xxx_match_scb(struct aic7xxx_host *p , struct aic7xxx_scb *scb , int target ,
                             int channel , int lun , unsigned char tag )
{
  int targ ;
  int chan ;
  int slun ;
  int match ;
  {
  targ = ((int )(scb->hscb)->target_channel_lun >> 4) & 15;
  chan = ((int )(scb->hscb)->target_channel_lun >> 3) & 1;
  slun = (int )(scb->hscb)->target_channel_lun & 7;
  match = chan == channel || channel == -1;
  if (match != 0) {
    match = targ == target || target == -1;
  } else {
  }
  if (match != 0) {
    match = lun == slun || lun == -1;
  } else {
  }
  if (match != 0) {
    match = (int )(scb->hscb)->tag == (int )tag || (unsigned int )tag == 255U;
  } else {
  }
  return (match);
}
}
static void aic7xxx_add_curscb_to_free_list(struct aic7xxx_host *p )
{
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  aic_outb(p, 255, 185L);
  aic_outb(p, 0, 160L);
  tmp = aic_inb(p, 64L);
  aic_outb(p, (int )tmp, 186L);
  tmp___0 = aic_inb(p, 144L);
  aic_outb(p, (int )tmp___0, 64L);
  return;
}
}
static unsigned char aic7xxx_rem_scb_from_disc_list(struct aic7xxx_host *p , unsigned char scbptr ,
                                                    unsigned char prev )
{
  unsigned char next ;
  {
  aic_outb(p, (int )scbptr, 144L);
  next = aic_inb(p, 186L);
  aic7xxx_add_curscb_to_free_list(p);
  if ((unsigned int )prev != 255U) {
    aic_outb(p, (int )prev, 144L);
    aic_outb(p, (int )next, 186L);
  } else {
    aic_outb(p, (int )next, 63L);
  }
  return (next);
}
}
__inline static void aic7xxx_busy_target(struct aic7xxx_host *p , struct aic7xxx_scb *scb )
{
  {
  *(p->untagged_scbs + (unsigned long )(scb->hscb)->target_channel_lun) = (scb->hscb)->tag;
  return;
}
}
__inline static unsigned char aic7xxx_index_busy_target(struct aic7xxx_host *p , unsigned char tcl ,
                                                        int unbusy )
{
  unsigned char busy_scbid ;
  {
  busy_scbid = *(p->untagged_scbs + (unsigned long )tcl);
  if (unbusy != 0) {
    *(p->untagged_scbs + (unsigned long )tcl) = 255U;
  } else {
  }
  return (busy_scbid);
}
}
static unsigned char aic7xxx_find_scb(struct aic7xxx_host *p , struct aic7xxx_scb *scb )
{
  unsigned char saved_scbptr ;
  unsigned char curindex ;
  unsigned char tmp ;
  {
  saved_scbptr = aic_inb(p, 144L);
  curindex = 0U;
  curindex = 0U;
  goto ldv_33873;
  ldv_33872:
  aic_outb(p, (int )curindex, 144L);
  tmp = aic_inb(p, 185L);
  if ((int )tmp == (int )(scb->hscb)->tag) {
    goto ldv_33871;
  } else {
  }
  curindex = (unsigned char )((int )curindex + 1);
  ldv_33873: ;
  if ((int )(p->scb_data)->maxhscbs > (int )curindex) {
    goto ldv_33872;
  } else {
  }
  ldv_33871:
  aic_outb(p, (int )saved_scbptr, 144L);
  if ((int )(p->scb_data)->maxhscbs <= (int )curindex) {
    curindex = 255U;
  } else {
  }
  return (curindex);
}
}
static int aic7xxx_allocate_scb(struct aic7xxx_host *p )
{
  struct aic7xxx_scb *scbp ;
  int scb_size ;
  int i ;
  int step ;
  unsigned long scb_count ;
  struct hw_scatterlist *hsgp ;
  struct aic7xxx_scb *scb_ap ;
  struct aic7xxx_scb_dma *scb_dma ;
  unsigned char *bufs ;
  int _min1 ;
  int _min2 ;
  void *tmp ;
  void *tmp___0 ;
  unsigned char tmp___1 ;
  {
  scbp = 0;
  scb_size = 1042;
  step = 4;
  scb_count = 0UL;
  if ((int )(p->scb_data)->numscbs < (int )(p->scb_data)->maxscbs) {
    i = step;
    ldv_33887: ;
    if ((unsigned long )((i + -1) * scb_size) >= (unsigned long )(i / step) * 4096UL - 64UL) {
      i = i / 2;
      goto ldv_33886;
    } else {
    }
    i = i * 2;
    goto ldv_33887;
    ldv_33886:
    _min1 = i + -1;
    _min2 = (int )(p->scb_data)->maxscbs - (int )(p->scb_data)->numscbs;
    scb_count = (unsigned long )(_min1 < _min2 ? _min1 : _min2);
    tmp = kmalloc(scb_count * 88UL + 24UL, 32U);
    scb_ap = (struct aic7xxx_scb *)tmp;
    if ((unsigned long )scb_ap == (unsigned long )((struct aic7xxx_scb *)0)) {
      return (0);
    } else {
    }
    scb_dma = (struct aic7xxx_scb_dma *)(scb_ap + scb_count);
    tmp___0 = pci_alloc_consistent(p->pdev, (unsigned long )scb_size * scb_count,
                                   & scb_dma->dma_address);
    hsgp = (struct hw_scatterlist *)tmp___0;
    if ((unsigned long )hsgp == (unsigned long )((struct hw_scatterlist *)0)) {
      kfree((void const *)scb_ap);
      return (0);
    } else {
    }
    bufs = (unsigned char *)(hsgp + scb_count * 128UL);
    memset((void *)scb_ap, 0, scb_count * 88UL);
    scb_dma->dma_offset = (unsigned long )scb_dma->dma_address - (unsigned long )hsgp;
    scb_dma->dma_len = (unsigned int )((unsigned long )scb_size) * (unsigned int )scb_count;
    i = 0;
    goto ldv_33892;
    ldv_33891:
    scbp = scb_ap + (unsigned long )i;
    scbp->hscb = (p->scb_data)->hscbs + (unsigned long )(p->scb_data)->numscbs;
    scbp->sg_list = hsgp + (unsigned long )(i * 128);
    scbp->sense_cmd = bufs;
    scbp->cmnd = bufs + 6UL;
    bufs = bufs + 18UL;
    scbp->scb_dma = scb_dma;
    memset((void *)scbp->hscb, 0, 32UL);
    (scbp->hscb)->tag = (p->scb_data)->numscbs;
    tmp___1 = (p->scb_data)->numscbs;
    (p->scb_data)->numscbs = (unsigned char )((int )(p->scb_data)->numscbs + 1);
    (p->scb_data)->scb_array[(int )tmp___1] = scbp;
    scbq_insert_tail((scb_queue_type volatile *)(& (p->scb_data)->free_scbs), scbp);
    i = i + 1;
    ldv_33892: ;
    if ((unsigned long )i < scb_count) {
      goto ldv_33891;
    } else {
    }
    scbp->kmalloc_ptr = (void *)scb_ap;
  } else {
  }
  return ((int )scb_count);
}
}
static void aic7xxx_queue_cmd_complete(struct aic7xxx_host *p , struct scsi_cmnd *cmd )
{
  {
  cmd->SCp.have_data_in = 255;
  cmd->host_scribble = (unsigned char *)p->completeq.head;
  p->completeq.head = cmd;
  return;
}
}
static void aic7xxx_done_cmds_complete(struct aic7xxx_host *p )
{
  struct scsi_cmnd *cmd ;
  {
  goto ldv_33903;
  ldv_33902:
  cmd = p->completeq.head;
  p->completeq.head = (struct scsi_cmnd *)cmd->host_scribble;
  cmd->host_scribble = 0;
  (*(cmd->scsi_done))(cmd);
  ldv_33903: ;
  if ((unsigned long )p->completeq.head != (unsigned long )((struct scsi_cmnd *)0)) {
    goto ldv_33902;
  } else {
  }
  return;
}
}
static void aic7xxx_free_scb(struct aic7xxx_host *p , struct aic7xxx_scb *scb )
{
  {
  scb->flags = 0;
  scb->cmd = 0;
  scb->sg_count = 0U;
  scb->sg_length = 0U;
  scb->tag_action = 0U;
  (scb->hscb)->control = 0U;
  (scb->hscb)->target_status = 0U;
  (scb->hscb)->target_channel_lun = 255U;
  scbq_insert_head((scb_queue_type volatile *)(& (p->scb_data)->free_scbs), scb);
  return;
}
}
static void aic7xxx_done(struct aic7xxx_host *p , struct aic7xxx_scb *scb )
{
  struct scsi_cmnd *cmd ;
  struct aic_dev_data *aic_dev ;
  int tindex ;
  struct aic7xxx_scb *scbp ;
  unsigned char queue_depth ;
  unsigned short mask ;
  int message_error ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  long *ptr ;
  int x ;
  int i ;
  {
  cmd = scb->cmd;
  aic_dev = (struct aic_dev_data *)(cmd->device)->hostdata;
  tindex = (int )((cmd->device)->id | ((cmd->device)->channel << 3));
  scsi_dma_unmap(cmd);
  if (((unsigned int )scb->flags & 8U) != 0U) {
    pci_unmap_single(p->pdev, (dma_addr_t )(scb->sg_list)->address, 96UL, 2);
  } else {
  }
  if (((unsigned int )scb->flags & 128U) != 0U) {
    p->flags = (long )p->flags & -67108865L;
  } else {
  }
  if (((unsigned int )scb->flags & 80U) != 0U) {
    cmd->result = cmd->result | 524288;
  } else {
  }
  if (((unsigned int )scb->flags & 3840U) != 0U) {
    message_error = 0;
    mask = (unsigned short )(1 << tindex);
    if (((unsigned int )scb->flags & 8U) != 0U && ((unsigned int )*((scb->cmd)->sense_buffer + 12UL) == 67U || (unsigned int )*((scb->cmd)->sense_buffer + 12UL) == 73U)) {
      message_error = 1;
    } else {
    }
    if (((unsigned int )scb->flags & 2048U) != 0U) {
      if (message_error != 0) {
        if ((aic7xxx_verbose & 32) != 0 && ((int )aic_dev->flags & 4) != 0) {
          printk("\016(scsi%d:%d:%d:%d) Device failed to complete Wide Negotiation processing and\n",
                 p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7);
          printk("\016(scsi%d:%d:%d:%d) returned a sense error code for invalid message, disabling future\n",
                 p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7);
          printk("\016(scsi%d:%d:%d:%d) Wide negotiation to this device.\n", p->host_no,
                 ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7);
        } else {
        }
        tmp = 0U;
        aic_dev->needwdtr_copy = tmp;
        aic_dev->needwdtr = tmp;
      } else {
      }
    } else {
    }
    if (((unsigned int )scb->flags & 1024U) != 0U) {
      if (message_error != 0) {
        if ((aic7xxx_verbose & 32) != 0 && ((int )aic_dev->flags & 4) != 0) {
          printk("\016(scsi%d:%d:%d:%d) Device failed to complete Sync Negotiation processing and\n",
                 p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7);
          printk("\016(scsi%d:%d:%d:%d) returned a sense error code for invalid message, disabling future\n",
                 p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7);
          printk("\016(scsi%d:%d:%d:%d) Sync negotiation to this device.\n", p->host_no,
                 ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7);
          aic_dev->flags = (unsigned int )aic_dev->flags & 251U;
        } else {
        }
        tmp___0 = 0U;
        aic_dev->needsdtr_copy = tmp___0;
        aic_dev->needsdtr = tmp___0;
      } else {
      }
    } else {
    }
    if (((unsigned int )scb->flags & 256U) != 0U) {
      if (message_error != 0) {
        if ((aic7xxx_verbose & 32) != 0 && ((int )aic_dev->flags & 4) != 0) {
          printk("\016(scsi%d:%d:%d:%d) Device failed to complete Parallel Protocol Request processing and\n",
                 p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7);
          printk("\016(scsi%d:%d:%d:%d) returned a sense error code for invalid message, disabling future\n",
                 p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7);
          printk("\016(scsi%d:%d:%d:%d) Parallel Protocol Request negotiation to this device.\n",
                 p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7);
        } else {
        }
        tmp___1 = 0U;
        aic_dev->needppr_copy = tmp___1;
        aic_dev->needppr = tmp___1;
        tmp___2 = 1U;
        aic_dev->needsdtr_copy = tmp___2;
        aic_dev->needsdtr = tmp___2;
        tmp___3 = 1U;
        aic_dev->needwdtr_copy = tmp___3;
        aic_dev->needwdtr = tmp___3;
      } else {
      }
    } else {
    }
  } else {
  }
  queue_depth = (unsigned char )aic_dev->temp_q_depth;
  if ((int )((unsigned char )aic_dev->active_cmds) <= (int )queue_depth) {
    scbp = scbq_remove_head(& aic_dev->delayed_scbs);
    if ((unsigned long )scbp != (unsigned long )((struct aic7xxx_scb *)0)) {
      if ((unsigned int )queue_depth == 1U) {
        scbq_insert_head(& p->waiting_scbs, scbp);
      } else {
        scbq_insert_tail(& p->waiting_scbs, scbp);
      }
      if ((int )((unsigned char )aic_dev->active_cmds) < (int )queue_depth) {
        scbp = scbq_remove_head(& aic_dev->delayed_scbs);
        if ((unsigned long )scbp != (unsigned long )((struct aic7xxx_scb *)0)) {
          scbq_insert_tail(& p->waiting_scbs, scbp);
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )scb->tag_action == 0U) {
    aic7xxx_index_busy_target(p, (int )(scb->hscb)->target_channel_lun, 1);
    if ((unsigned int )*((unsigned char *)cmd->device + 293UL) != 0U) {
      aic_dev->temp_q_depth = aic_dev->max_q_depth;
    } else {
    }
  } else {
  }
  if ((int )scb->flags & 1) {
    aic_dev->dtr_pending = 0U;
  } else {
  }
  aic_dev->active_cmds = (unsigned char volatile )((int volatile )aic_dev->active_cmds - (int volatile )1);
  p->activescbs = (unsigned char volatile )((int volatile )p->activescbs - (int volatile )1);
  if (scb->sg_length > 511U && ((cmd->result >> 16) & 15) == 0) {
    if ((int )(cmd->request)->cmd_flags & 1) {
      aic_dev->w_total = aic_dev->w_total + 1L;
      ptr = (long *)(& aic_dev->w_bins);
    } else {
      aic_dev->r_total = aic_dev->r_total + 1L;
      ptr = (long *)(& aic_dev->r_bins);
    }
    x = (int )scb->sg_length;
    x = x >> 10;
    i = 0;
    goto ldv_33925;
    ldv_33924:
    x = x >> 2;
    if (x == 0) {
      *(ptr + (unsigned long )i) = *(ptr + (unsigned long )i) + 1L;
      goto ldv_33923;
    } else {
    }
    i = i + 1;
    ldv_33925: ;
    if (i <= 5) {
      goto ldv_33924;
    } else {
    }
    ldv_33923: ;
    if (i == 6 && x != 0) {
      *(ptr + 5UL) = *(ptr + 5UL) + 1L;
    } else {
    }
  } else {
  }
  aic7xxx_free_scb(p, scb);
  aic7xxx_queue_cmd_complete(p, cmd);
  return;
}
}
static void aic7xxx_run_done_queue(struct aic7xxx_host *p , int complete___0 )
{
  struct aic7xxx_scb *scb ;
  int i ;
  int found ;
  {
  found = 0;
  i = 0;
  goto ldv_33934;
  ldv_33933:
  scb = (p->scb_data)->scb_array[i];
  if (((unsigned int )scb->flags & 8192U) != 0U) {
    if (((unsigned int )scb->flags & 32768U) != 0U) {
      (scb->cmd)->result = 40;
    } else {
      if ((aic7xxx_verbose & 17408) != 0) {
        printk("\016(scsi%d:%d:%d:%d) Aborting scb %d\n", p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1,
               ((int )(scb->hscb)->target_channel_lun >> 4) & 15, (int )(scb->hscb)->target_channel_lun & 7,
               (int )(scb->hscb)->tag);
      } else {
      }
      (scb->hscb)->residual_SG_segment_count = 0U;
      (scb->hscb)->residual_data_count[0] = 0U;
      (scb->hscb)->residual_data_count[1] = 0U;
      (scb->hscb)->residual_data_count[2] = 0U;
    }
    found = found + 1;
    aic7xxx_done(p, scb);
  } else {
  }
  i = i + 1;
  ldv_33934: ;
  if ((int )(p->scb_data)->numscbs > i) {
    goto ldv_33933;
  } else {
  }
  if ((aic7xxx_verbose & 34816) != 0) {
    printk("\016(scsi%d:%d:%d:%d) %d commands found and queued for completion.\n",
           p->host_no, -1, -1, -1, found);
  } else {
  }
  if (complete___0 != 0) {
    aic7xxx_done_cmds_complete(p);
  } else {
  }
  return;
}
}
static unsigned char aic7xxx_abort_waiting_scb(struct aic7xxx_host *p , struct aic7xxx_scb *scb ,
                                               unsigned char scbpos , unsigned char prev )
{
  unsigned char curscb ;
  unsigned char next ;
  {
  curscb = aic_inb(p, 144L);
  aic_outb(p, (int )scbpos, 144L);
  next = aic_inb(p, 186L);
  aic7xxx_add_curscb_to_free_list(p);
  if ((unsigned int )prev == 255U) {
    aic_outb(p, (int )next, 62L);
  } else {
    aic_outb(p, (int )prev, 144L);
    aic_outb(p, (int )next, 186L);
  }
  aic_outb(p, (int )curscb, 144L);
  return (next);
}
}
static int aic7xxx_search_qinfifo(struct aic7xxx_host *p , int target , int channel ,
                                  int lun , unsigned char tag , int flags , int requeue ,
                                  scb_queue_type volatile *queue )
{
  int found ;
  unsigned char qinpos ;
  unsigned char qintail ;
  struct aic7xxx_scb *scbp ;
  unsigned char tmp ;
  unsigned char volatile tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char volatile tmp___2 ;
  int tmp___3 ;
  unsigned char tmp___4 ;
  {
  found = 0;
  qinpos = aic_inb(p, 78L);
  qintail = p->qinfifonext;
  p->qinfifonext = qinpos;
  goto ldv_33959;
  ldv_33958:
  tmp = qinpos;
  qinpos = (unsigned char )((int )qinpos + 1);
  scbp = (p->scb_data)->scb_array[(int )*(p->qinfifo + (unsigned long )tmp)];
  tmp___3 = aic7xxx_match_scb(p, scbp, target, channel, lun, (int )tag);
  if (tmp___3 != 0) {
    if (requeue != 0 && (unsigned long )queue != (unsigned long )((scb_queue_type volatile *)0)) {
      if (((unsigned int )scbp->flags & 2U) != 0U) {
        scbq_remove(queue, scbp);
        scbq_remove(& p->waiting_scbs, scbp);
        scbq_remove(& ((struct aic_dev_data *)((scbp->cmd)->device)->hostdata)->delayed_scbs,
                    scbp);
        ((struct aic_dev_data *)((scbp->cmd)->device)->hostdata)->active_cmds = (unsigned char volatile )((int volatile )((struct aic_dev_data *)((scbp->cmd)->device)->hostdata)->active_cmds + (int volatile )1);
        p->activescbs = (unsigned char volatile )((int volatile )p->activescbs + (int volatile )1);
      } else {
      }
      scbq_insert_tail(queue, scbp);
      ((struct aic_dev_data *)((scbp->cmd)->device)->hostdata)->active_cmds = (unsigned char volatile )((int volatile )((struct aic_dev_data *)((scbp->cmd)->device)->hostdata)->active_cmds - (int volatile )1);
      p->activescbs = (unsigned char volatile )((int volatile )p->activescbs - (int volatile )1);
      scbp->flags = (scb_flag_type volatile )((unsigned int )scbp->flags | 2U);
      if (((int )scbp->tag_action & 32) == 0) {
        aic7xxx_index_busy_target(p, (int )(scbp->hscb)->target_channel_lun, 1);
      } else {
      }
    } else
    if (requeue != 0) {
      tmp___0 = p->qinfifonext;
      p->qinfifonext = (unsigned char volatile )((int volatile )p->qinfifonext + (int volatile )1);
      *(p->qinfifo + (unsigned long )tmp___0) = (scbp->hscb)->tag;
    } else {
      scbp->flags = (scb_flag_type volatile )(((unsigned int )scbp->flags & 128U) | (unsigned int )flags);
      tmp___1 = aic7xxx_index_busy_target(p, (int )(scbp->hscb)->target_channel_lun,
                                          0);
      if ((int )tmp___1 == (int )(scbp->hscb)->tag) {
        aic7xxx_index_busy_target(p, (int )(scbp->hscb)->target_channel_lun, 1);
      } else {
      }
    }
    found = found + 1;
  } else {
    tmp___2 = p->qinfifonext;
    p->qinfifonext = (unsigned char volatile )((int volatile )p->qinfifonext + (int volatile )1);
    *(p->qinfifo + (unsigned long )tmp___2) = (scbp->hscb)->tag;
  }
  ldv_33959: ;
  if ((int )qinpos != (int )qintail) {
    goto ldv_33958;
  } else {
  }
  qinpos = p->qinfifonext;
  goto ldv_33962;
  ldv_33961:
  tmp___4 = qinpos;
  qinpos = (unsigned char )((int )qinpos + 1);
  *(p->qinfifo + (unsigned long )tmp___4) = 255U;
  ldv_33962: ;
  if ((int )qinpos != (int )qintail) {
    goto ldv_33961;
  } else {
  }
  if (((unsigned int )p->features & 64U) != 0U) {
    aic_outb(p, (int )p->qinfifonext, 244L);
  } else {
    aic_outb(p, (int )p->qinfifonext, 77L);
  }
  return (found);
}
}
static int aic7xxx_scb_on_qoutfifo(struct aic7xxx_host *p , struct aic7xxx_scb *scb )
{
  int i ;
  {
  i = 0;
  goto ldv_33970;
  ldv_33969: ;
  if ((int )((unsigned char )*(p->qoutfifo + ((unsigned long )((int )p->qoutfifonext + i) & 255UL))) == (int )(scb->hscb)->tag) {
    return (1);
  } else {
    i = i + 1;
  }
  ldv_33970: ;
  if ((unsigned int )((unsigned char )*(p->qoutfifo + ((unsigned long )((int )p->qoutfifonext + i) & 255UL))) != 255U) {
    goto ldv_33969;
  } else {
  }
  return (0);
}
}
static void aic7xxx_reset_device(struct aic7xxx_host *p , int target , int channel ,
                                 int lun , unsigned char tag )
{
  struct aic7xxx_scb *scbp ;
  struct aic7xxx_scb *prev_scbp ;
  struct scsi_device *sd ;
  unsigned char active_scb ;
  unsigned char tcl ;
  unsigned char scb_tag ;
  int i ;
  int init_lists ;
  struct aic_dev_data *aic_dev ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  int tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  struct list_head const *__mptr ;
  unsigned char tmp___9 ;
  int tmp___10 ;
  struct list_head const *__mptr___0 ;
  struct aic7xxx_scb *scbp___0 ;
  struct aic7xxx_scb *prev_scbp___0 ;
  int tmp___11 ;
  unsigned char next ;
  unsigned char prev ;
  unsigned char scb_index ;
  unsigned char tmp___12 ;
  int tmp___13 ;
  unsigned char next___0 ;
  unsigned char prev___0 ;
  unsigned char scb_index___0 ;
  int tmp___14 ;
  unsigned char next___1 ;
  unsigned char tmp___15 ;
  unsigned char scbid ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  {
  i = 0;
  init_lists = 0;
  active_scb = aic_inb(p, 144L);
  scb_tag = aic_inb(p, 185L);
  if ((aic7xxx_verbose & 17408) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Reset device, hardware_scb %d,\n", p->host_no, channel,
           target, lun, (int )active_scb);
    tmp = aic_inb(p, 61L);
    tmp___0 = aic_inb(p, 98L);
    tmp___1 = aic_inb(p, 99L);
    printk("\016(scsi%d:%d:%d:%d) Current scb %d, SEQADDR 0x%x, LASTPHASE 0x%x\n",
           p->host_no, channel, target, lun, (int )scb_tag, (int )tmp___0 | ((int )tmp___1 << 8),
           (int )tmp);
    tmp___2 = aic_inb(p, 3L);
    tmp___3 = aic_inb(p, 56L);
    if (((unsigned int )p->features & 2U) != 0U) {
      tmp___4 = aic_inb(p, 252L);
      tmp___5 = (int )tmp___4;
    } else {
      tmp___5 = 0;
    }
    printk("\016(scsi%d:%d:%d:%d) SG_CACHEPTR 0x%x, SG_COUNT %d, SCSISIGI 0x%x\n",
           p->host_no, channel, target, lun, tmp___5, (int )tmp___3, (int )tmp___2);
    tmp___6 = aic_inb(p, 13L);
    tmp___7 = aic_inb(p, 12L);
    tmp___8 = aic_inb(p, 11L);
    printk("\016(scsi%d:%d:%d:%d) SSTAT0 0x%x, SSTAT1 0x%x, SSTAT2 0x%x\n", p->host_no,
           channel, target, lun, (int )tmp___8, (int )tmp___7, (int )tmp___6);
  } else {
  }
  __mptr = (struct list_head const *)p->aic_devs.next;
  aic_dev = (struct aic_dev_data *)__mptr + 0xffffffffffffff50UL;
  goto ldv_33997;
  ldv_33996: ;
  if ((aic7xxx_verbose & 17408) != 0) {
    printk("\016(scsi%d:%d:%d:%d) processing aic_dev %p\n", p->host_no, channel, target,
           lun, aic_dev);
  } else {
  }
  sd = aic_dev->SDptr;
  if ((target != -1 && (unsigned int )target != sd->id) || (channel != -1 && (unsigned int )channel != sd->channel)) {
    goto ldv_33992;
  } else {
  }
  if ((aic7xxx_verbose & 17408) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Cleaning up status information and delayed_scbs.\n",
           p->host_no, sd->channel, sd->id, sd->lun);
  } else {
  }
  aic_dev->flags = (unsigned int )aic_dev->flags & 254U;
  if ((unsigned int )tag == 255U) {
    aic_dev->dtr_pending = 0U;
    aic_dev->needppr = aic_dev->needppr_copy;
    aic_dev->needsdtr = aic_dev->needsdtr_copy;
    aic_dev->needwdtr = aic_dev->needwdtr_copy;
    aic_dev->flags = 4U;
    aic_dev->temp_q_depth = aic_dev->max_q_depth;
  } else {
  }
  tcl = (((int )((unsigned char )sd->id) << 4U) | ((int )((unsigned char )sd->channel) << 3U)) | (int )((unsigned char )sd->lun);
  tmp___9 = aic7xxx_index_busy_target(p, (int )tcl, 0);
  if ((int )tmp___9 == (int )tag || (unsigned int )tag == 255U) {
    aic7xxx_index_busy_target(p, (int )tcl, 1);
  } else {
  }
  prev_scbp = 0;
  scbp = aic_dev->delayed_scbs.head;
  goto ldv_33994;
  ldv_33993:
  prev_scbp = scbp;
  scbp = scbp->q_next;
  tmp___10 = aic7xxx_match_scb(p, prev_scbp, target, channel, lun, (int )tag);
  if (tmp___10 != 0) {
    scbq_remove(& aic_dev->delayed_scbs, prev_scbp);
    if (((unsigned int )prev_scbp->flags & 2U) != 0U) {
      aic_dev->active_cmds = (unsigned char volatile )((int volatile )aic_dev->active_cmds + (int volatile )1);
      p->activescbs = (unsigned char volatile )((int volatile )p->activescbs + (int volatile )1);
    } else {
    }
    prev_scbp->flags = (scb_flag_type volatile )((unsigned int )prev_scbp->flags & 4294967289U);
    prev_scbp->flags = (scb_flag_type volatile )((unsigned int )prev_scbp->flags | 8256U);
  } else {
  }
  ldv_33994: ;
  if ((unsigned long )scbp != (unsigned long )((struct aic7xxx_scb *)0)) {
    goto ldv_33993;
  } else {
  }
  ldv_33992:
  __mptr___0 = (struct list_head const *)aic_dev->list.next;
  aic_dev = (struct aic_dev_data *)__mptr___0 + 0xffffffffffffff50UL;
  ldv_33997: ;
  if ((unsigned long )(& aic_dev->list) != (unsigned long )(& p->aic_devs)) {
    goto ldv_33996;
  } else {
  }
  if ((aic7xxx_verbose & 17408) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Cleaning QINFIFO.\n", p->host_no, channel, target,
           lun);
  } else {
  }
  aic7xxx_search_qinfifo(p, target, channel, lun, (int )tag, 8256, 0, 0);
  if ((aic7xxx_verbose & 17408) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Cleaning waiting_scbs.\n", p->host_no, channel,
           target, lun);
  } else {
  }
  prev_scbp___0 = 0;
  scbp___0 = p->waiting_scbs.head;
  goto ldv_34002;
  ldv_34001:
  prev_scbp___0 = scbp___0;
  scbp___0 = scbp___0->q_next;
  tmp___11 = aic7xxx_match_scb(p, prev_scbp___0, target, channel, lun, (int )tag);
  if (tmp___11 != 0) {
    scbq_remove(& p->waiting_scbs, prev_scbp___0);
    if (((unsigned int )prev_scbp___0->flags & 2U) != 0U) {
      ((struct aic_dev_data *)((prev_scbp___0->cmd)->device)->hostdata)->active_cmds = (unsigned char volatile )((int volatile )((struct aic_dev_data *)((prev_scbp___0->cmd)->device)->hostdata)->active_cmds + (int volatile )1);
      p->activescbs = (unsigned char volatile )((int volatile )p->activescbs + (int volatile )1);
    } else {
    }
    prev_scbp___0->flags = (scb_flag_type volatile )((unsigned int )prev_scbp___0->flags & 4294967289U);
    prev_scbp___0->flags = (scb_flag_type volatile )((unsigned int )prev_scbp___0->flags | 8256U);
  } else {
  }
  ldv_34002: ;
  if ((unsigned long )scbp___0 != (unsigned long )((struct aic7xxx_scb *)0)) {
    goto ldv_34001;
  } else {
  }
  if ((aic7xxx_verbose & 17408) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Cleaning waiting for selection list.\n", p->host_no,
           channel, target, lun);
  } else {
  }
  next = aic_inb(p, 62L);
  prev = 255U;
  goto ldv_34008;
  ldv_34007:
  aic_outb(p, (int )next, 144L);
  scb_index = aic_inb(p, 185L);
  if ((int )(p->scb_data)->numscbs <= (int )scb_index) {
    printk("\f(scsi%d:%d:%d:%d) Waiting List inconsistency; SCB index=%d, numscbs=%d\n",
           p->host_no, channel, target, lun, (int )scb_index, (int )(p->scb_data)->numscbs);
    next = aic_inb(p, 186L);
    aic7xxx_add_curscb_to_free_list(p);
  } else {
    scbp = (p->scb_data)->scb_array[(int )scb_index];
    tmp___13 = aic7xxx_match_scb(p, scbp, target, channel, lun, (int )tag);
    if (tmp___13 != 0) {
      next = aic7xxx_abort_waiting_scb(p, scbp, (int )next, (int )prev);
      if (((unsigned int )scbp->flags & 2U) != 0U) {
        ((struct aic_dev_data *)((scbp->cmd)->device)->hostdata)->active_cmds = (unsigned char volatile )((int volatile )((struct aic_dev_data *)((scbp->cmd)->device)->hostdata)->active_cmds + (int volatile )1);
        p->activescbs = (unsigned char volatile )((int volatile )p->activescbs + (int volatile )1);
      } else {
      }
      scbp->flags = (scb_flag_type volatile )((unsigned int )scbp->flags & 4294967289U);
      scbp->flags = (scb_flag_type volatile )((unsigned int )scbp->flags | 8256U);
      if ((unsigned int )prev == 255U) {
        tmp___12 = aic_inb(p, 0L);
        aic_outb(p, (int )tmp___12 & 191, 0L);
        aic_outb(p, 128, 12L);
      } else {
      }
    } else {
      prev = next;
      next = aic_inb(p, 186L);
    }
  }
  ldv_34008: ;
  if ((unsigned int )next != 255U) {
    goto ldv_34007;
  } else {
  }
  if ((aic7xxx_verbose & 17408) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Cleaning disconnected scbs list.\n", p->host_no,
           channel, target, lun);
  } else {
  }
  if ((int )p->flags & 1) {
    next___0 = aic_inb(p, 63L);
    prev___0 = 255U;
    goto ldv_34014;
    ldv_34013:
    aic_outb(p, (int )next___0, 144L);
    scb_index___0 = aic_inb(p, 185L);
    if ((int )(p->scb_data)->numscbs < (int )scb_index___0) {
      printk("\f(scsi%d:%d:%d:%d) Disconnected List inconsistency; SCB index=%d, numscbs=%d\n",
             p->host_no, channel, target, lun, (int )scb_index___0, (int )(p->scb_data)->numscbs);
      next___0 = aic7xxx_rem_scb_from_disc_list(p, (int )next___0, (int )prev___0);
    } else {
      scbp = (p->scb_data)->scb_array[(int )scb_index___0];
      tmp___14 = aic7xxx_match_scb(p, scbp, target, channel, lun, (int )tag);
      if (tmp___14 != 0) {
        next___0 = aic7xxx_rem_scb_from_disc_list(p, (int )next___0, (int )prev___0);
        if (((unsigned int )scbp->flags & 2U) != 0U) {
          ((struct aic_dev_data *)((scbp->cmd)->device)->hostdata)->active_cmds = (unsigned char volatile )((int volatile )((struct aic_dev_data *)((scbp->cmd)->device)->hostdata)->active_cmds + (int volatile )1);
          p->activescbs = (unsigned char volatile )((int volatile )p->activescbs + (int volatile )1);
        } else {
        }
        scbp->flags = (scb_flag_type volatile )((unsigned int )scbp->flags & 4294967289U);
        scbp->flags = (scb_flag_type volatile )((unsigned int )scbp->flags | 8256U);
        (scbp->hscb)->control = 0U;
      } else {
        prev___0 = next___0;
        next___0 = aic_inb(p, 186L);
      }
    }
    ldv_34014: ;
    if ((unsigned int )next___0 != 255U) {
      goto ldv_34013;
    } else {
    }
  } else {
  }
  if ((int )p->flags & 1) {
    next___1 = aic_inb(p, 64L);
    goto ldv_34018;
    ldv_34017:
    aic_outb(p, (int )next___1, 144L);
    tmp___15 = aic_inb(p, 185L);
    if ((int )tmp___15 < (int )(p->scb_data)->numscbs) {
      printk("\f(scsi%d:%d:%d:%d) Free list inconsistency!.\n", p->host_no, channel,
             target, lun);
      init_lists = 1;
      next___1 = 255U;
    } else {
      aic_outb(p, 255, 185L);
      aic_outb(p, 0, 160L);
      next___1 = aic_inb(p, 186L);
    }
    ldv_34018: ;
    if ((unsigned int )next___1 != 255U) {
      goto ldv_34017;
    } else {
    }
  } else {
  }
  if (init_lists != 0) {
    aic_outb(p, 255, 64L);
    aic_outb(p, 255, 62L);
    aic_outb(p, 255, 63L);
  } else {
  }
  i = (int )(p->scb_data)->maxhscbs + -1;
  goto ldv_34022;
  ldv_34021:
  aic_outb(p, (int )((unsigned char )i), 144L);
  if (init_lists != 0) {
    aic_outb(p, 255, 185L);
    aic_outb(p, 255, 186L);
    aic_outb(p, 0, 160L);
    aic7xxx_add_curscb_to_free_list(p);
  } else {
    scbid = aic_inb(p, 185L);
    if ((int )(p->scb_data)->numscbs > (int )scbid) {
      scbp = (p->scb_data)->scb_array[(int )scbid];
      tmp___16 = aic7xxx_match_scb(p, scbp, target, channel, lun, (int )tag);
      if (tmp___16 != 0) {
        aic_outb(p, 0, 160L);
        aic_outb(p, 255, 185L);
        aic7xxx_add_curscb_to_free_list(p);
      } else {
      }
    } else {
    }
  }
  i = i - 1;
  ldv_34022: ;
  if (i >= 0) {
    goto ldv_34021;
  } else {
  }
  i = 0;
  goto ldv_34025;
  ldv_34024:
  scbp = (p->scb_data)->scb_array[i];
  if (((unsigned int )scbp->flags & 4U) != 0U) {
    tmp___17 = aic7xxx_match_scb(p, scbp, target, channel, lun, (int )tag);
    if (tmp___17 != 0) {
      tmp___18 = aic7xxx_scb_on_qoutfifo(p, scbp);
      if (tmp___18 == 0) {
        if (((unsigned int )scbp->flags & 2U) != 0U) {
          scbq_remove(& p->waiting_scbs, scbp);
          scbq_remove(& ((struct aic_dev_data *)((scbp->cmd)->device)->hostdata)->delayed_scbs,
                      scbp);
          ((struct aic_dev_data *)((scbp->cmd)->device)->hostdata)->active_cmds = (unsigned char volatile )((int volatile )((struct aic_dev_data *)((scbp->cmd)->device)->hostdata)->active_cmds + (int volatile )1);
          p->activescbs = (unsigned char volatile )((int volatile )p->activescbs + (int volatile )1);
        } else {
        }
        scbp->flags = (scb_flag_type volatile )((unsigned int )scbp->flags | 8256U);
        scbp->flags = (scb_flag_type volatile )((unsigned int )scbp->flags & 4294967289U);
      } else {
      }
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_34025: ;
  if ((int )(p->scb_data)->numscbs > i) {
    goto ldv_34024;
  } else {
  }
  aic_outb(p, (int )active_scb, 144L);
  return;
}
}
static void aic7xxx_clear_intstat(struct aic7xxx_host *p )
{
  {
  aic_outb(p, 112, 11L);
  aic_outb(p, 239, 12L);
  aic_outb(p, 29, 146L);
  return;
}
}
static void aic7xxx_reset_current_bus(struct aic7xxx_host *p )
{
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  unsigned char tmp___2 ;
  unsigned long __ms___0 ;
  unsigned long tmp___3 ;
  unsigned long __ms___1 ;
  unsigned long tmp___4 ;
  unsigned long __ms___2 ;
  unsigned long tmp___5 ;
  unsigned char tmp___6 ;
  {
  tmp = aic_inb(p, 17L);
  aic_outb(p, (int )tmp & 223, 17L);
  tmp___0 = aic_inb(p, 0L);
  aic_outb(p, (int )((unsigned int )tmp___0 | 1U), 0L);
  goto ldv_34038;
  ldv_34037: ;
  if (1) {
    __const_udelay(21475000UL);
  } else {
    __ms = 5UL;
    goto ldv_34035;
    ldv_34034:
    __const_udelay(4295000UL);
    ldv_34035:
    tmp___1 = __ms;
    __ms = __ms - 1UL;
    if (tmp___1 != 0UL) {
      goto ldv_34034;
    } else {
    }
  }
  ldv_34038:
  tmp___2 = aic_inb(p, 0L);
  if (((int )tmp___2 & 1) == 0) {
    goto ldv_34037;
  } else {
  }
  if (((unsigned int )p->features & 2U) != 0U) {
    __ms___0 = 250UL;
    goto ldv_34042;
    ldv_34041:
    __const_udelay(4295000UL);
    ldv_34042:
    tmp___3 = __ms___0;
    __ms___0 = __ms___0 - 1UL;
    if (tmp___3 != 0UL) {
      goto ldv_34041;
    } else {
    }
  } else {
    __ms___1 = 50UL;
    goto ldv_34046;
    ldv_34045:
    __const_udelay(4295000UL);
    ldv_34046:
    tmp___4 = __ms___1;
    __ms___1 = __ms___1 - 1UL;
    if (tmp___4 != 0UL) {
      goto ldv_34045;
    } else {
    }
  }
  aic_outb(p, 0, 0L);
  __ms___2 = 10UL;
  goto ldv_34050;
  ldv_34049:
  __const_udelay(4295000UL);
  ldv_34050:
  tmp___5 = __ms___2;
  __ms___2 = __ms___2 - 1UL;
  if (tmp___5 != 0UL) {
    goto ldv_34049;
  } else {
  }
  aic7xxx_clear_intstat(p);
  tmp___6 = aic_inb(p, 17L);
  aic_outb(p, (int )((unsigned int )tmp___6 | 32U), 17L);
  return;
}
}
static void aic7xxx_reset_channel(struct aic7xxx_host *p , int channel , int initiate_reset )
{
  unsigned long offset_min ;
  unsigned long offset_max ;
  unsigned char sblkctl ;
  int cur_channel ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  {
  if ((aic7xxx_verbose & 16384) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Reset channel called, %s initiate reset.\n", p->host_no,
           channel, -1, -1, initiate_reset == 1 ? (char *)"will" : (char *)"won\'t");
  } else {
  }
  if (channel == 1) {
    offset_min = 8UL;
    offset_max = 16UL;
  } else
  if (((unsigned int )p->features & 8U) != 0U) {
    offset_min = 0UL;
    offset_max = 8UL;
  } else {
    offset_min = 0UL;
    if (((unsigned int )p->features & 4U) != 0U) {
      offset_max = 16UL;
    } else {
      offset_max = 8UL;
    }
  }
  goto ldv_34062;
  ldv_34061:
  aic_outb(p, 0, (long )(offset_min + 32UL));
  if (((unsigned int )p->features & 2U) != 0U) {
    aic_outb(p, 0, (long )(offset_min + 112UL));
  } else {
  }
  offset_min = offset_min + 1UL;
  ldv_34062: ;
  if (offset_min < offset_max) {
    goto ldv_34061;
  } else {
  }
  sblkctl = aic_inb(p, 31L);
  if (((unsigned int )p->chip & 255U) == 1U) {
    cur_channel = ((int )sblkctl & 8) >> 3;
  } else {
    cur_channel = 0;
  }
  if (cur_channel != channel && ((unsigned int )p->features & 8U) != 0U) {
    if ((aic7xxx_verbose & 16384) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Stealthily resetting idle channel.\n", p->host_no,
             channel, -1, -1);
    } else {
    }
    aic_outb(p, (int )((unsigned int )sblkctl ^ 8U), 31L);
    tmp = aic_inb(p, 17L);
    aic_outb(p, (int )tmp & 247, 17L);
    if (initiate_reset != 0) {
      aic7xxx_reset_current_bus(p);
    } else {
    }
    tmp___0 = aic_inb(p, 0L);
    aic_outb(p, (int )tmp___0 & 50, 0L);
    aic7xxx_clear_intstat(p);
    aic_outb(p, (int )sblkctl, 31L);
  } else {
    if ((aic7xxx_verbose & 16384) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Resetting currently active channel.\n", p->host_no,
             channel, -1, -1);
    } else {
    }
    tmp___1 = aic_inb(p, 17L);
    aic_outb(p, (int )tmp___1 & 246, 17L);
    p->flags = (long )p->flags & -4097L;
    p->msg_type = 0U;
    p->msg_len = 0U;
    if (initiate_reset != 0) {
      aic7xxx_reset_current_bus(p);
    } else {
    }
    tmp___2 = aic_inb(p, 0L);
    aic_outb(p, (int )tmp___2 & 50, 0L);
    aic7xxx_clear_intstat(p);
  }
  if ((aic7xxx_verbose & 32768) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Channel reset\n", p->host_no, channel, -1, -1);
  } else {
  }
  aic7xxx_reset_device(p, -1, channel, -1, 255);
  if (((unsigned int )p->features & 8U) == 0U) {
    restart_sequencer(p);
  } else {
  }
  return;
}
}
static void aic7xxx_run_waiting_queues(struct aic7xxx_host *p )
{
  struct aic7xxx_scb *scb ;
  struct aic_dev_data *aic_dev ;
  int sent ;
  unsigned char volatile tmp ;
  {
  if ((unsigned long )p->waiting_scbs.head == (unsigned long )((struct aic7xxx_scb * )0)) {
    return;
  } else {
  }
  sent = 0;
  goto ldv_34071;
  ldv_34070:
  aic_dev = (struct aic_dev_data *)((scb->cmd)->device)->hostdata;
  if ((unsigned int )scb->tag_action == 0U) {
    aic_dev->temp_q_depth = 1U;
  } else {
  }
  if ((int )((unsigned short )aic_dev->active_cmds) >= (int )((unsigned short )aic_dev->temp_q_depth)) {
    scbq_insert_tail(& aic_dev->delayed_scbs, scb);
  } else {
    scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags & 4294967293U);
    aic_dev->active_cmds = (unsigned char volatile )((int volatile )aic_dev->active_cmds + (int volatile )1);
    p->activescbs = (unsigned char volatile )((int volatile )p->activescbs + (int volatile )1);
    if ((unsigned int )scb->tag_action == 0U) {
      aic7xxx_busy_target(p, scb);
    } else {
    }
    tmp = p->qinfifonext;
    p->qinfifonext = (unsigned char volatile )((int volatile )p->qinfifonext + (int volatile )1);
    *(p->qinfifo + (unsigned long )tmp) = (scb->hscb)->tag;
    sent = sent + 1;
  }
  ldv_34071:
  scb = scbq_remove_head(& p->waiting_scbs);
  if ((unsigned long )scb != (unsigned long )((struct aic7xxx_scb *)0)) {
    goto ldv_34070;
  } else {
  }
  if (sent != 0) {
    if (((unsigned int )p->features & 64U) != 0U) {
      aic_outb(p, (int )p->qinfifonext, 244L);
    } else {
      pause_sequencer(p);
      aic_outb(p, (int )p->qinfifonext, 77L);
      unpause_sequencer(p, 0);
    }
    if ((int )((unsigned char )p->activescbs) > (int )((unsigned char )p->max_activescbs)) {
      p->max_activescbs = p->activescbs;
    } else {
    }
  } else {
  }
  return;
}
}
static void aic7xxx_pci_intr(struct aic7xxx_host *p )
{
  unsigned char status1 ;
  {
  pci_read_config_byte((struct pci_dev const *)p->pdev, 7, & status1);
  if ((int )((signed char )status1) < 0 && (aic7xxx_verbose & 64) != 0) {
    printk("\f(scsi%d:%d:%d:%d) Data Parity Error during PCI address or PCI writephase.\n",
           p->host_no, -1, -1, -1);
  } else {
  }
  if (((int )status1 & 64) != 0 && (aic7xxx_verbose & 64) != 0) {
    printk("\f(scsi%d:%d:%d:%d) Signal System Error Detected\n", p->host_no, -1, -1,
           -1);
  } else {
  }
  if (((int )status1 & 32) != 0 && (aic7xxx_verbose & 64) != 0) {
    printk("\f(scsi%d:%d:%d:%d) Received a PCI Master Abort\n", p->host_no, -1, -1,
           -1);
  } else {
  }
  if (((int )status1 & 16) != 0 && (aic7xxx_verbose & 64) != 0) {
    printk("\f(scsi%d:%d:%d:%d) Received a PCI Target Abort\n", p->host_no, -1, -1,
           -1);
  } else {
  }
  if (((int )status1 & 8) != 0 && (aic7xxx_verbose & 64) != 0) {
    printk("\f(scsi%d:%d:%d:%d) Signaled a PCI Target Abort\n", p->host_no, -1, -1,
           -1);
  } else {
  }
  if ((int )status1 & 1 && (aic7xxx_verbose & 64) != 0) {
    printk("\f(scsi%d:%d:%d:%d) Data Parity Error has been reported via PCI pin PERR#\n",
           p->host_no, -1, -1, -1);
  } else {
  }
  pci_write_config_byte((struct pci_dev const *)p->pdev, 7, (int )status1);
  if (((int )status1 & 49) != 0) {
    aic_outb(p, 16, 146L);
  } else {
  }
  if (aic7xxx_panic_on_abort != 0 && p->spurious_int > 500UL) {
    aic7xxx_panic_abort(p, 0);
  } else {
  }
  return;
}
}
static void aic7xxx_construct_ppr(struct aic7xxx_host *p , struct aic7xxx_scb *scb )
{
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  {
  tmp = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp] = 1U;
  tmp___0 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___0] = 6U;
  tmp___1 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___1] = 4U;
  tmp___2 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___2] = ((struct aic_dev_data *)((scb->cmd)->device)->hostdata)->goal.period;
  tmp___3 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___3] = 0U;
  tmp___4 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___4] = ((struct aic_dev_data *)((scb->cmd)->device)->hostdata)->goal.offset;
  tmp___5 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___5] = ((struct aic_dev_data *)((scb->cmd)->device)->hostdata)->goal.width;
  tmp___6 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___6] = ((struct aic_dev_data *)((scb->cmd)->device)->hostdata)->goal.options;
  p->msg_len = (unsigned int )p->msg_len + 8U;
  return;
}
}
static void aic7xxx_construct_sdtr(struct aic7xxx_host *p , unsigned char period ,
                                   unsigned char offset )
{
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  {
  tmp = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp] = 1U;
  tmp___0 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___0] = 3U;
  tmp___1 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___1] = 1U;
  tmp___2 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___2] = period;
  tmp___3 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___3] = offset;
  p->msg_len = (unsigned int )p->msg_len + 5U;
  return;
}
}
static void aic7xxx_construct_wdtr(struct aic7xxx_host *p , unsigned char bus_width )
{
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  {
  tmp = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp] = 1U;
  tmp___0 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___0] = 2U;
  tmp___1 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___1] = 3U;
  tmp___2 = p->msg_index;
  p->msg_index = (unsigned char )((int )p->msg_index + 1);
  p->msg_buf[(int )tmp___2] = bus_width;
  p->msg_len = (unsigned int )p->msg_len + 4U;
  return;
}
}
static void aic7xxx_calculate_residual(struct aic7xxx_host *p , struct aic7xxx_scb *scb )
{
  struct aic7xxx_hwscb *hscb ;
  struct scsi_cmnd *cmd ;
  int actual ;
  int i ;
  {
  cmd = scb->cmd;
  hscb = scb->hscb;
  if (((int )(scb->hscb)->control & 4) == 0 && ((unsigned int )scb->flags & 8U) == 0U) {
    actual = (int )scb->sg_length;
    i = 1;
    goto ldv_34099;
    ldv_34098:
    actual = (int )((unsigned int )actual - (scb->sg_list + (unsigned long )((int )scb->sg_count - i))->length);
    i = i + 1;
    ldv_34099: ;
    if ((int )hscb->residual_SG_segment_count > i) {
      goto ldv_34098;
    } else {
    }
    actual = actual - ((((int )hscb->residual_data_count[2] << 16) | ((int )hscb->residual_data_count[1] << 8)) | (int )hscb->residual_data_count[0]);
    if ((unsigned int )actual < cmd->underflow) {
      if ((aic7xxx_verbose & 64) != 0) {
        printk("\016(scsi%d:%d:%d:%d) Underflow - Wanted %u, %s %u, residual SG count %d.\n",
               p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
               (int )(scb->hscb)->target_channel_lun & 7, cmd->underflow, (int )(cmd->request)->cmd_flags & 1 ? (char *)"wrote" : (char *)"read",
               actual, (int )hscb->residual_SG_segment_count);
        printk("\016(scsi%d:%d:%d:%d) status 0x%x.\n", p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1,
               ((int )(scb->hscb)->target_channel_lun >> 4) & 15, (int )(scb->hscb)->target_channel_lun & 7,
               (int )hscb->target_status);
      } else {
      }
      scsi_set_resid(cmd, (int )(scb->sg_length - (unsigned int )actual));
      cmd->SCp.sent_command = (int volatile )hscb->target_status;
    } else {
    }
  } else {
  }
  hscb->residual_data_count[2] = 0U;
  hscb->residual_data_count[1] = 0U;
  hscb->residual_data_count[0] = 0U;
  hscb->residual_SG_segment_count = 0U;
  return;
}
}
static void aic7xxx_handle_device_reset(struct aic7xxx_host *p , int target , int channel )
{
  unsigned char tindex ;
  {
  tindex = (unsigned char )target;
  tindex = (unsigned char )((int )((signed char )((channel & 1) << 3)) | (int )((signed char )tindex));
  aic_outb(p, 0, (long )((int )tindex + 32));
  if (((unsigned int )p->features & 2U) != 0U) {
    aic_outb(p, 0, (long )((int )tindex + 112));
  } else {
  }
  aic7xxx_reset_device(p, target, channel, -1, 255);
  if ((aic7xxx_verbose & 16384) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Bus Device Reset delivered.\n", p->host_no, channel,
           target, -1);
  } else {
  }
  aic7xxx_run_done_queue(p, 1);
  return;
}
}
static void aic7xxx_handle_seqint(struct aic7xxx_host *p , unsigned char intstat )
{
  struct aic7xxx_scb *scb ;
  struct aic_dev_data *aic_dev ;
  unsigned short target_mask ;
  unsigned char target ;
  unsigned char lun ;
  unsigned char tindex ;
  unsigned char queue_flag ;
  char channel ;
  int result ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  unsigned char tmp___9 ;
  unsigned char tmp___10 ;
  unsigned char tmp___11 ;
  unsigned char tmp___12 ;
  unsigned char scb_index ;
  unsigned char last_msg ;
  unsigned char tmp___13 ;
  unsigned char i ;
  struct aic7xxx_scb *scbp ;
  int old_verbose ;
  unsigned short volatile tmp___14 ;
  int tmp___15 ;
  unsigned char tmp___16 ;
  unsigned char tmp___17 ;
  unsigned char tmp___18 ;
  unsigned char tmp___19 ;
  unsigned char tmp___20 ;
  unsigned char tmp___21 ;
  unsigned char tmp___22 ;
  unsigned char tmp___23 ;
  unsigned char scb_index___0 ;
  struct aic7xxx_hwscb *hscb ;
  struct scsi_cmnd *cmd ;
  size_t __len ;
  void *__ret ;
  dma_addr_t tmp___24 ;
  unsigned char tmp___25 ;
  struct aic7xxx_scb *next_scbp ;
  struct aic7xxx_scb *prev_scbp ;
  unsigned char active_hscb ;
  unsigned char next_hscb ;
  unsigned char prev_hscb ;
  unsigned char scb_index___1 ;
  int tmp___26 ;
  unsigned char tmp___27 ;
  int tmp___28 ;
  int diff ;
  unsigned char scb_index___2 ;
  unsigned char msg_out ;
  unsigned char tmp___29 ;
  unsigned char tmp___30 ;
  unsigned char tmp___31 ;
  unsigned char tmp___32 ;
  unsigned char tmp___33 ;
  unsigned char tmp___34 ;
  unsigned int max_sync ;
  unsigned int period ;
  unsigned char options ;
  unsigned char tmp___35 ;
  unsigned char tmp___36 ;
  unsigned char tmp___37 ;
  unsigned char scb_index___3 ;
  unsigned char tmp___38 ;
  unsigned char lastphase ;
  unsigned char tmp___39 ;
  unsigned int i___0 ;
  unsigned char tmp___40 ;
  unsigned char resid_sgcnt ;
  unsigned char index ;
  unsigned char scb_index___4 ;
  unsigned char tmp___41 ;
  unsigned int cur_addr ;
  unsigned int resid_dcnt ;
  unsigned int native_addr ;
  unsigned int native_length ;
  unsigned int sg_addr ;
  int i___1 ;
  unsigned char tmp___42 ;
  unsigned char tmp___43 ;
  unsigned char tmp___44 ;
  unsigned char tmp___45 ;
  unsigned char tmp___46 ;
  unsigned char tmp___47 ;
  unsigned char tmp___48 ;
  unsigned char tmp___49 ;
  unsigned char tmp___50 ;
  unsigned char tmp___51 ;
  unsigned char tmp___52 ;
  unsigned char tmp___53 ;
  unsigned char tmp___54 ;
  unsigned char tmp___55 ;
  int tmp___56 ;
  unsigned char scb_index___5 ;
  unsigned char tmp___57 ;
  int sg_addr___0 ;
  int sg_length ;
  unsigned char tmp___58 ;
  unsigned char tmp___59 ;
  unsigned char tmp___60 ;
  unsigned char tmp___61 ;
  unsigned char tmp___62 ;
  unsigned char tmp___63 ;
  unsigned char tmp___64 ;
  unsigned char tmp___65 ;
  unsigned char tmp___66 ;
  unsigned char tmp___67 ;
  unsigned char tmp___68 ;
  unsigned char tmp___69 ;
  unsigned char tmp___70 ;
  unsigned char tmp___71 ;
  unsigned char tmp___72 ;
  unsigned char tmp___73 ;
  unsigned char tmp___74 ;
  unsigned char tmp___75 ;
  unsigned char tmp___76 ;
  unsigned char tmp___77 ;
  unsigned char tmp___78 ;
  unsigned char tmp___79 ;
  unsigned char tmp___80 ;
  unsigned char tmp___81 ;
  unsigned char tmp___82 ;
  unsigned char tmp___83 ;
  {
  queue_flag = 0U;
  tmp = aic_inb(p, 55L);
  target = (int )tmp >> 4;
  if (((unsigned int )p->chip & 255U) == 1U) {
    tmp___0 = aic_inb(p, 31L);
    channel = (char )(((int )tmp___0 & 8) >> 3);
  } else {
    channel = 0;
  }
  tindex = ((int )((unsigned char )channel) << 3U) + (int )target;
  tmp___1 = aic_inb(p, 55L);
  lun = (unsigned int )tmp___1 & 7U;
  target_mask = (unsigned short )(1 << (int )tindex);
  aic_outb(p, 1, 146L);
  switch ((int )intstat & 241) {
  case 49:
  tmp___2 = aic_inb(p, 0L);
  aic_outb(p, (int )tmp___2 & 50, 0L);
  printk("\f(scsi%d:%d:%d:%d) No active SCB for reconnecting target - Issuing BUS DEVICE RESET.\n",
         p->host_no, (int )channel, (int )target, (int )lun);
  tmp___3 = aic_inb(p, 99L);
  tmp___4 = aic_inb(p, 98L);
  tmp___5 = aic_inb(p, 81L);
  tmp___6 = aic_inb(p, 55L);
  printk("\f(scsi%d:%d:%d:%d)       SAVED_TCL=0x%x, ARG_1=0x%x, SEQADDR=0x%x\n", p->host_no,
         (int )channel, (int )target, (int )lun, (int )tmp___6, (int )tmp___5, ((int )tmp___3 << 8) | (int )tmp___4);
  if (aic7xxx_panic_on_abort != 0) {
    aic7xxx_panic_abort(p, 0);
  } else {
  }
  goto ldv_34121;
  case 17: ;
  if ((aic7xxx_verbose & 64) != 0) {
    tmp___7 = aic_inb(p, 54L);
    tmp___8 = aic_inb(p, 100L);
    printk("\016(scsi%d:%d:%d:%d) Rejecting unknown message (0x%x) received from target, SEQ_FLAGS=0x%x\n",
           p->host_no, (int )channel, (int )target, (int )lun, (int )tmp___8, (int )tmp___7);
  } else {
  }
  goto ldv_34121;
  case 33: ;
  if ((aic7xxx_verbose & 4098) != 0) {
    tmp___9 = aic_inb(p, 55L);
    tmp___10 = aic_inb(p, 61L);
    printk("\016(scsi%d:%d:%d:%d) Target did not send an IDENTIFY message; LASTPHASE 0x%x, SAVED_TCL 0x%x\n",
           p->host_no, (int )channel, (int )target, (int )lun, (int )tmp___10, (int )tmp___9);
  } else {
  }
  aic7xxx_reset_channel(p, (int )channel, 1);
  aic7xxx_run_done_queue(p, 1);
  goto ldv_34121;
  case 1:
  tmp___11 = aic_inb(p, 61L);
  if ((unsigned int )tmp___11 == 1U) {
    if ((aic7xxx_verbose & 2) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Missed busfree.\n", p->host_no, (int )channel,
             (int )target, (int )lun);
    } else {
    }
    restart_sequencer(p);
  } else
  if ((aic7xxx_verbose & 2) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Unknown scsi bus phase, continuing\n", p->host_no,
           (int )channel, (int )target, (int )lun);
  } else {
  }
  goto ldv_34121;
  case 65:
  p->msg_type = 2U;
  p->msg_len = 0U;
  p->msg_index = 0U;
  p->flags = (long )p->flags | 4096L;
  tmp___12 = aic_inb(p, 17L);
  aic_outb(p, (int )((unsigned int )tmp___12 | 1U), 17L);
  return;
  case 97:
  scb_index = aic_inb(p, 185L);
  scb = (p->scb_data)->scb_array[(int )scb_index];
  aic_dev = (struct aic_dev_data *)((scb->cmd)->device)->hostdata;
  last_msg = aic_inb(p, 83L);
  if (((unsigned int )last_msg == 128U && (unsigned int )scb->tag_action != 0U) && ((unsigned int )scb->flags & 3840U) == 0U) {
    if ((unsigned int )scb->tag_action == 34U) {
      scsi_adjust_queue_depth((scb->cmd)->device, 32, (int )((scb->cmd)->device)->queue_depth);
      scb->tag_action = 32U;
      (scb->hscb)->control = (unsigned int )(scb->hscb)->control & 252U;
      (scb->hscb)->control = (unsigned int )(scb->hscb)->control | 32U;
      aic_outb(p, (int )(scb->hscb)->control, 160L);
      aic_outb(p, 128, 52L);
      tmp___13 = aic_inb(p, 3L);
      aic_outb(p, (int )((unsigned int )tmp___13 | 16U), 3L);
    } else
    if ((unsigned int )scb->tag_action == 32U) {
      scsi_adjust_queue_depth((scb->cmd)->device, 0, (int )(p->host)->cmd_per_lun);
      tmp___14 = 1U;
      aic_dev->temp_q_depth = tmp___14;
      aic_dev->max_q_depth = tmp___14;
      scb->tag_action = 0U;
      (scb->hscb)->control = (unsigned int )(scb->hscb)->control & 220U;
      aic_outb(p, (int )(scb->hscb)->control, 160L);
      old_verbose = aic7xxx_verbose;
      aic7xxx_verbose = aic7xxx_verbose & -65281;
      i = 0U;
      goto ldv_34133;
      ldv_34132:
      scbp = (p->scb_data)->scb_array[(int )i];
      if (((unsigned int )scbp->flags & 4U) != 0U && (unsigned long )scbp != (unsigned long )scb) {
        tmp___15 = aic7xxx_match_scb(p, scbp, (int )target, (int )channel, (int )lun,
                                     (int )i);
        if (tmp___15 != 0) {
          aic7xxx_reset_device(p, (int )target, (int )channel, (int )lun, (int )i);
        } else {
        }
      } else {
      }
      i = (unsigned char )((int )i + 1);
      ldv_34133: ;
      if ((int )(p->scb_data)->numscbs > (int )i) {
        goto ldv_34132;
      } else {
      }
      aic7xxx_run_done_queue(p, 1);
      aic7xxx_verbose = old_verbose;
      aic7xxx_busy_target(p, scb);
      printk("\016(scsi%d:%d:%d:%d) Device is refusing tagged commands, using untagged I/O.\n",
             p->host_no, (int )channel, (int )target, (int )lun);
      aic_outb(p, 128, 52L);
      tmp___16 = aic_inb(p, 3L);
      aic_outb(p, (int )((unsigned int )tmp___16 | 16U), 3L);
    } else
    if (((unsigned int )scb->flags & 256U) != 0U) {
      tmp___17 = 0U;
      aic_dev->needppr_copy = tmp___17;
      aic_dev->needppr = tmp___17;
      aic7xxx_set_width(p, (int )target, (int )channel, (int )lun, 0U, 19U, aic_dev);
      aic7xxx_set_syncrate(p, 0, (int )target, (int )channel, 0U, 0U, 0, 19U, aic_dev);
      tmp___18 = 0U;
      aic_dev->dtr_pending = tmp___18;
      aic_dev->goal.options = tmp___18;
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags & 4294963455U);
      if ((aic7xxx_verbose & 32) != 0) {
        printk("\016(scsi%d:%d:%d:%d) Device is rejecting PPR messages, falling back.\n",
               p->host_no, (int )channel, (int )target, (int )lun);
      } else {
      }
      if ((unsigned int )aic_dev->goal.width != 0U) {
        tmp___19 = 1U;
        aic_dev->needwdtr_copy = tmp___19;
        aic_dev->needwdtr = tmp___19;
        aic_dev->dtr_pending = 1U;
        scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 2048U);
      } else {
      }
      if ((unsigned int )aic_dev->goal.offset != 0U) {
        tmp___20 = 1U;
        aic_dev->needsdtr_copy = tmp___20;
        aic_dev->needsdtr = tmp___20;
        if ((unsigned int )*((unsigned char *)aic_dev + 161UL) == 0U) {
          aic_dev->dtr_pending = 1U;
          scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 1024U);
        } else {
        }
      } else {
      }
      if ((unsigned int )*((unsigned char *)aic_dev + 161UL) != 0U) {
        aic_outb(p, 255, 52L);
        tmp___21 = aic_inb(p, 3L);
        aic_outb(p, (int )((unsigned int )tmp___21 | 16U), 3L);
      } else {
      }
    } else
    if (((unsigned int )scb->flags & 2048U) != 0U) {
      tmp___22 = 0U;
      aic_dev->needwdtr_copy = tmp___22;
      aic_dev->needwdtr = tmp___22;
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags & 4294963455U);
      aic7xxx_set_width(p, (int )target, (int )channel, (int )lun, 0U, 7U, aic_dev);
      aic7xxx_set_syncrate(p, 0, (int )target, (int )channel, 0U, 0U, 0, 19U, aic_dev);
      if ((aic7xxx_verbose & 32) != 0) {
        printk("\016(scsi%d:%d:%d:%d) Device is rejecting WDTR messages, using narrow transfers.\n",
               p->host_no, (int )channel, (int )target, (int )lun);
      } else {
      }
      aic_dev->needsdtr = aic_dev->needsdtr_copy;
    } else
    if (((unsigned int )scb->flags & 1024U) != 0U) {
      tmp___23 = 0U;
      aic_dev->needsdtr_copy = tmp___23;
      aic_dev->needsdtr = tmp___23;
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags & 4294963455U);
      aic7xxx_set_syncrate(p, 0, (int )target, (int )channel, 0U, 0U, 0, 7U, aic_dev);
      if ((aic7xxx_verbose & 32) != 0) {
        printk("\016(scsi%d:%d:%d:%d) Device is rejecting SDTR messages, using async transfers.\n",
               p->host_no, (int )channel, (int )target, (int )lun);
      } else {
      }
    } else
    if ((aic7xxx_verbose & 2) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Received MESSAGE_REJECT for unknown cause.  Ignoring.\n",
             p->host_no, (int )channel, (int )target, (int )lun);
    } else {
    }
  } else {
  }
  goto ldv_34121;
  case 113:
  aic_outb(p, 0, 81L);
  scb_index___0 = aic_inb(p, 185L);
  if ((int )(p->scb_data)->numscbs < (int )scb_index___0) {
    printk("\f(scsi%d:%d:%d:%d) Invalid SCB during SEQINT 0x%02x, SCB_TAG %d.\n",
           p->host_no, (int )channel, (int )target, (int )lun, (int )intstat, (int )scb_index___0);
    goto ldv_34121;
  } else {
  }
  scb = (p->scb_data)->scb_array[(int )scb_index___0];
  hscb = scb->hscb;
  if (((unsigned int )scb->flags & 4U) == 0U || (unsigned long )scb->cmd == (unsigned long )((struct scsi_cmnd *)0)) {
    printk("\f(scsi%d:%d:%d:%d) Invalid SCB during SEQINT 0x%x, scb %d, flags 0x%x, cmd 0x%lx.\n",
           p->host_no, (int )channel, (int )target, (int )lun, (int )intstat, (int )scb_index___0,
           (unsigned int )scb->flags, (unsigned long )scb->cmd);
  } else {
    cmd = scb->cmd;
    aic_dev = (struct aic_dev_data *)((scb->cmd)->device)->hostdata;
    hscb->target_status = aic_inb(p, 162L);
    cmd->SCp.sent_command = (int volatile )hscb->target_status;
    cmd->result = (int )hscb->target_status;
    switch (((int )hscb->target_status >> 1) & 127) {
    case 0: ;
    if ((aic7xxx_verbose & 2) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Interrupted for status of GOOD???\n", p->host_no,
             ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
             (int )(scb->hscb)->target_channel_lun & 7);
    } else {
    }
    goto ldv_34140;
    case 17: ;
    case 1: ;
    if (((unsigned int )scb->flags & 8U) == 0U) {
      __len = 6UL;
      if (__len > 63UL) {
        __ret = memcpy((void *)scb->sense_cmd, (void const *)(& generic_sense),
                         __len);
      } else {
        __ret = memcpy((void *)scb->sense_cmd, (void const *)(& generic_sense),
                                 __len);
      }
      *(scb->sense_cmd + 1UL) = (int )((unsigned char )(cmd->device)->lun) << 5U;
      *(scb->sense_cmd + 4UL) = 96U;
      (scb->sg_list)->length = 96U;
      tmp___24 = pci_map_single(p->pdev, (void *)cmd->sense_buffer, 96UL, 2);
      (scb->sg_list)->address = (unsigned int )tmp___24;
      hscb->control = 0U;
      hscb->target_status = 0U;
      hscb->SG_list_pointer = (unsigned int )((long )scb->sg_list) + (unsigned int )(scb->scb_dma)->dma_offset;
      hscb->SCSI_cmd_pointer = (unsigned int )((long )scb->sense_cmd) + (unsigned int )(scb->scb_dma)->dma_offset;
      hscb->data_count = (scb->sg_list)->length;
      hscb->data_pointer = (scb->sg_list)->address;
      hscb->SCSI_cmd_length = scsi_command_size_tbl[((int )*(scb->sense_cmd) >> 5) & 7];
      hscb->residual_SG_segment_count = 0U;
      hscb->residual_data_count[0] = 0U;
      hscb->residual_data_count[1] = 0U;
      hscb->residual_data_count[2] = 0U;
      tmp___25 = 1U;
      hscb->SG_segment_count = tmp___25;
      scb->sg_count = tmp___25;
      scb->sg_length = 96U;
      scb->tag_action = 0U;
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 8U);
      aic7xxx_busy_target(p, scb);
      aic_outb(p, 64, 81L);
      cmd->SCp.Status = 0;
      goto ldv_34140;
    } else {
    }
    printk("\016(scsi%d:%d:%d:%d) CHECK_CONDITION on REQUEST_SENSE, returning an error.\n",
           p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7);
    cmd->SCp.Status = 7;
    scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags & 4294967287U);
    goto ldv_34140;
    case 20:
    queue_flag = 1U;
    case 4:
    next_scbp = p->waiting_scbs.head;
    goto ldv_34155;
    ldv_34154:
    prev_scbp = next_scbp;
    next_scbp = next_scbp->q_next;
    tmp___26 = aic7xxx_match_scb(p, prev_scbp, (int )target, (int )channel, (int )lun,
                                 255);
    if (tmp___26 != 0) {
      scbq_remove(& p->waiting_scbs, prev_scbp);
      scb->flags = 40960;
      p->activescbs = (unsigned char volatile )((int volatile )p->activescbs + (int volatile )1);
      aic_dev->active_cmds = (unsigned char volatile )((int volatile )aic_dev->active_cmds + (int volatile )1);
    } else {
    }
    ldv_34155: ;
    if ((unsigned long )next_scbp != (unsigned long )((struct aic7xxx_scb *)0)) {
      goto ldv_34154;
    } else {
    }
    aic7xxx_search_qinfifo(p, (int )target, (int )channel, (int )lun, 255, 40960,
                           0, 0);
    next_scbp = 0;
    active_hscb = aic_inb(p, 144L);
    scb_index___1 = 255U;
    next_hscb = scb_index___1;
    prev_hscb = next_hscb;
    next_hscb = aic_inb(p, 62L);
    goto ldv_34158;
    ldv_34157:
    aic_outb(p, (int )next_hscb, 144L);
    scb_index___1 = aic_inb(p, 185L);
    if ((int )(p->scb_data)->numscbs > (int )scb_index___1) {
      next_scbp = (p->scb_data)->scb_array[(int )scb_index___1];
      tmp___28 = aic7xxx_match_scb(p, next_scbp, (int )target, (int )channel, (int )lun,
                                   255);
      if (tmp___28 != 0) {
        next_scbp->flags = 40960;
        next_hscb = aic_inb(p, 186L);
        aic_outb(p, 0, 160L);
        aic_outb(p, 255, 185L);
        aic7xxx_add_curscb_to_free_list(p);
        if ((unsigned int )prev_hscb == 255U) {
          tmp___27 = aic_inb(p, 0L);
          aic_outb(p, (int )tmp___27 & 191, 0L);
          aic_outb(p, 128, 12L);
          aic_outb(p, (int )next_hscb, 62L);
        } else {
          aic_outb(p, (int )prev_hscb, 144L);
          aic_outb(p, (int )next_hscb, 186L);
        }
      } else {
        prev_hscb = next_hscb;
        next_hscb = aic_inb(p, 186L);
      }
    } else {
    }
    ldv_34158: ;
    if ((unsigned int )next_hscb != 255U) {
      goto ldv_34157;
    } else {
    }
    aic_outb(p, (int )active_hscb, 144L);
    aic7xxx_run_done_queue(p, 0);
    if ((unsigned int )queue_flag != 0U) {
      result = scsi_track_queue_full(cmd->device, (int )aic_dev->active_cmds);
      if (result < 0) {
        if ((aic7xxx_verbose & 32) != 0) {
          printk("\016(scsi%d:%d:%d:%d) Tagged Command Queueing disabled.\n", p->host_no,
                 ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7);
        } else {
        }
        diff = (int )aic_dev->max_q_depth - (int )(p->host)->cmd_per_lun;
        aic_dev->temp_q_depth = 1U;
        aic_dev->max_q_depth = 1U;
      } else
      if (result > 0) {
        if ((aic7xxx_verbose & 32) != 0) {
          printk("\016(scsi%d:%d:%d:%d) Queue depth reduced to %d\n", p->host_no,
                 ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7, result);
        } else {
        }
        diff = (int )aic_dev->max_q_depth - result;
        aic_dev->max_q_depth = (unsigned short )result;
        if ((int )aic_dev->temp_q_depth > result) {
          aic_dev->temp_q_depth = (unsigned short volatile )result;
        } else {
        }
      } else {
      }
    } else {
    }
    goto ldv_34140;
    default: ;
    if ((aic7xxx_verbose & 2) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Unexpected target status 0x%x.\n", p->host_no,
             ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
             (int )(scb->hscb)->target_channel_lun & 7, (int )(scb->hscb)->target_status);
    } else {
    }
    if ((int )cmd->SCp.Status == 0) {
      cmd->SCp.Status = 7;
    } else {
    }
    goto ldv_34140;
    }
    ldv_34140: ;
  }
  goto ldv_34121;
  case 161:
  scb_index___2 = aic_inb(p, 185L);
  msg_out = aic_inb(p, 52L);
  scb = (p->scb_data)->scb_array[(int )scb_index___2];
  aic_dev = (struct aic_dev_data *)((scb->cmd)->device)->hostdata;
  tmp___29 = 0U;
  p->msg_len = tmp___29;
  p->msg_index = tmp___29;
  if ((((unsigned int )scb->flags & 32U) == 0U && (unsigned int )msg_out == 128U) && ((int )(scb->hscb)->control & 32) != 0) {
    tmp___30 = p->msg_index;
    p->msg_index = (unsigned char )((int )p->msg_index + 1);
    p->msg_buf[(int )tmp___30] = scb->tag_action;
    tmp___31 = p->msg_index;
    p->msg_index = (unsigned char )((int )p->msg_index + 1);
    p->msg_buf[(int )tmp___31] = (scb->hscb)->tag;
    p->msg_len = (unsigned int )p->msg_len + 2U;
  } else {
  }
  if (((unsigned int )scb->flags & 32U) != 0U) {
    tmp___32 = p->msg_index;
    p->msg_index = (unsigned char )((int )p->msg_index + 1);
    p->msg_buf[(int )tmp___32] = 12U;
    p->msg_len = (unsigned char )((int )p->msg_len + 1);
    if ((aic7xxx_verbose & 16384) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Bus device reset mailed.\n", p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1,
             ((int )(scb->hscb)->target_channel_lun >> 4) & 15, (int )(scb->hscb)->target_channel_lun & 7);
    } else {
    }
  } else
  if (((unsigned int )scb->flags & 16U) != 0U) {
    if ((unsigned int )scb->tag_action != 0U) {
      tmp___33 = p->msg_index;
      p->msg_index = (unsigned char )((int )p->msg_index + 1);
      p->msg_buf[(int )tmp___33] = 13U;
    } else {
      tmp___34 = p->msg_index;
      p->msg_index = (unsigned char )((int )p->msg_index + 1);
      p->msg_buf[(int )tmp___34] = 6U;
    }
    p->msg_len = (unsigned char )((int )p->msg_len + 1);
    if ((aic7xxx_verbose & 1024) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Abort message mailed.\n", p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1,
             ((int )(scb->hscb)->target_channel_lun >> 4) & 15, (int )(scb->hscb)->target_channel_lun & 7);
    } else {
    }
  } else
  if (((unsigned int )scb->flags & 256U) != 0U) {
    if ((aic7xxx_verbose & 32) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Sending PPR (%d/%d/%d/%d) message.\n", p->host_no,
             ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
             (int )(scb->hscb)->target_channel_lun & 7, (int )aic_dev->goal.period,
             (int )aic_dev->goal.offset, (int )aic_dev->goal.width, (int )aic_dev->goal.options);
    } else {
    }
    aic7xxx_construct_ppr(p, scb);
  } else
  if (((unsigned int )scb->flags & 2048U) != 0U) {
    if ((aic7xxx_verbose & 32) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Sending WDTR message.\n", p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1,
             ((int )(scb->hscb)->target_channel_lun >> 4) & 15, (int )(scb->hscb)->target_channel_lun & 7);
    } else {
    }
    aic7xxx_construct_wdtr(p, (int )aic_dev->goal.width);
  } else
  if (((unsigned int )scb->flags & 1024U) != 0U) {
    options = 0U;
    if (((unsigned int )p->features & 2U) != 0U) {
      tmp___35 = aic_inb(p, 31L);
      if (((int )tmp___35 & 8) != 0) {
        tmp___36 = aic_inb(p, 13L);
        if (((int )tmp___36 & 16) == 0) {
          max_sync = 1U;
        } else {
          max_sync = 3U;
        }
      } else {
        max_sync = 3U;
      }
    } else
    if ((int )p->features & 1) {
      max_sync = 3U;
    } else {
      max_sync = 6U;
    }
    period = (unsigned int )aic_dev->goal.period;
    aic7xxx_find_syncrate(p, & period, max_sync, & options);
    if ((aic7xxx_verbose & 32) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Sending SDTR %d/%d message.\n", p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1,
             ((int )(scb->hscb)->target_channel_lun >> 4) & 15, (int )(scb->hscb)->target_channel_lun & 7,
             period, (int )aic_dev->goal.offset);
    } else {
    }
    aic7xxx_construct_sdtr(p, (int )((unsigned char )period), (int )aic_dev->goal.offset);
  } else {
    panic("aic7xxx: AWAITING_MSG for an SCB that does not have a waiting message.\n");
  }
  scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 512U);
  p->msg_index = 0U;
  p->msg_type = 1U;
  p->flags = (long )p->flags | 4096L;
  tmp___37 = aic_inb(p, 17L);
  aic_outb(p, (int )((unsigned int )tmp___37 | 1U), 17L);
  return;
  case 225:
  tmp___38 = aic_inb(p, 185L);
  scb_index___3 = tmp___38;
  tmp___39 = aic_inb(p, 61L);
  lastphase = tmp___39;
  scb = (p->scb_data)->scb_array[(int )scb_index___3];
  if (((unsigned int )scb->flags & 8U) == 0U) {
    printk("\f(scsi%d:%d:%d:%d) Data overrun detected in %s phase, tag %d;\n", p->host_no,
           ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7, (unsigned int )lastphase == 64U ? (char *)"Data-In" : (char *)"Data-Out",
           (int )(scb->hscb)->tag);
    tmp___40 = aic_inb(p, 54L);
    printk("\f  %s seen Data Phase. Length=%d, NumSGs=%d.\n", ((int )tmp___40 & 16) != 0 ? (char *)"Have" : (char *)"Haven\'t",
           scb->sg_length, (int )scb->sg_count);
    printk("\f  Raw SCSI Command: 0x");
    i___0 = 0U;
    goto ldv_34173;
    ldv_34172:
    printk("%02x ", (int )*((scb->cmd)->cmnd + (unsigned long )i___0));
    i___0 = i___0 + 1U;
    ldv_34173: ;
    if ((unsigned int )(scb->hscb)->SCSI_cmd_length > i___0) {
      goto ldv_34172;
    } else {
    }
    printk("\n");
    if (aic7xxx_verbose > 65535) {
      i___0 = 0U;
      goto ldv_34176;
      ldv_34175:
      printk("\f     sg[%d] - Addr 0x%x : Length %d\n", i___0, (scb->sg_list + (unsigned long )i___0)->address,
             (scb->sg_list + (unsigned long )i___0)->length);
      i___0 = i___0 + 1U;
      ldv_34176: ;
      if ((unsigned int )scb->sg_count > i___0) {
        goto ldv_34175;
      } else {
      }
    } else {
    }
    (scb->cmd)->SCp.Status = 7;
  } else {
    printk("\016(scsi%d:%d:%d:%d) Data Overrun during SEND_SENSE operation.\n", p->host_no,
           ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7);
  }
  goto ldv_34121;
  case 81:
  tmp___41 = aic_inb(p, 185L);
  scb_index___4 = tmp___41;
  if ((int )(p->scb_data)->numscbs < (int )scb_index___4) {
    printk("\f(scsi%d:%d:%d:%d) invalid scb_index during WIDE_RESIDUE.\n", p->host_no,
           -1, -1, -1);
    goto ldv_34121;
  } else {
  }
  scb = (p->scb_data)->scb_array[(int )scb_index___4];
  if (((unsigned int )scb->flags & 4U) == 0U || (unsigned long )scb->cmd == (unsigned long )((struct scsi_cmnd *)0)) {
    printk("\f(scsi%d:%d:%d:%d) invalid scb during WIDE_RESIDUE flags:0x%x scb->cmd:0x%lx\n",
           p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7, (unsigned int )scb->flags, (unsigned long )scb->cmd);
    goto ldv_34121;
  } else {
  }
  if ((aic7xxx_verbose & 64) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Got WIDE_RESIDUE message, patching up data pointer.\n",
           p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7);
  } else {
  }
  tmp___42 = aic_inb(p, 20L);
  tmp___43 = aic_inb(p, 21L);
  tmp___44 = aic_inb(p, 22L);
  tmp___45 = aic_inb(p, 23L);
  cur_addr = (unsigned int )((((int )tmp___42 | ((int )tmp___43 << 8)) | ((int )tmp___44 << 16)) | ((int )tmp___45 << 24));
  tmp___46 = aic_inb(p, 57L);
  tmp___47 = aic_inb(p, 58L);
  tmp___48 = aic_inb(p, 59L);
  tmp___49 = aic_inb(p, 60L);
  sg_addr = (unsigned int )((((int )tmp___46 | ((int )tmp___47 << 8)) | ((int )tmp___48 << 16)) | ((int )tmp___49 << 24));
  resid_sgcnt = aic_inb(p, 168L);
  tmp___50 = aic_inb(p, 169L);
  tmp___51 = aic_inb(p, 170L);
  tmp___52 = aic_inb(p, 171L);
  resid_dcnt = (unsigned int )(((int )tmp___50 | ((int )tmp___51 << 8)) | ((int )tmp___52 << 16));
  index = (unsigned int )scb->sg_count - ((unsigned int )resid_sgcnt != 0U ? resid_sgcnt : 1U);
  native_addr = (scb->sg_list + (unsigned long )index)->address;
  native_length = (scb->sg_list + (unsigned long )index)->length;
  if (resid_dcnt == native_length) {
    if ((unsigned int )index == 0U) {
      goto ldv_34121;
    } else {
    }
    resid_dcnt = 1U;
    resid_sgcnt = (unsigned int )resid_sgcnt + 1U;
    native_addr = (scb->sg_list + ((unsigned long )index + 0xffffffffffffffffUL))->address;
    native_length = (scb->sg_list + ((unsigned long )index + 0xffffffffffffffffUL))->length;
    cur_addr = (native_length + native_addr) - 1U;
    sg_addr = sg_addr - 8U;
  } else {
    resid_dcnt = resid_dcnt + 1U;
    cur_addr = cur_addr - 1U;
  }
  aic_outb(p, (int )resid_sgcnt, 56L);
  aic_outb(p, (int )resid_sgcnt, 168L);
  aic_outb(p, (int )((unsigned char )sg_addr), 57L);
  aic_outb(p, (int )((unsigned char )(sg_addr >> 8)), 58L);
  aic_outb(p, (int )((unsigned char )(sg_addr >> 16)), 59L);
  aic_outb(p, (int )((unsigned char )(sg_addr >> 24)), 60L);
  aic_outb(p, (int )((unsigned char )resid_dcnt), 169L);
  aic_outb(p, (int )((unsigned char )(resid_dcnt >> 8)), 170L);
  aic_outb(p, (int )((unsigned char )(resid_dcnt >> 16)), 171L);
  if (((unsigned int )p->features & 2U) != 0U) {
    aic_outb(p, (int )((unsigned char )resid_dcnt), 140L);
    aic_outb(p, (int )((unsigned char )(resid_dcnt >> 8)), 141L);
    aic_outb(p, (int )((unsigned char )(resid_dcnt >> 16)), 142L);
    aic_outb(p, (int )((unsigned char )cur_addr), 136L);
    aic_outb(p, (int )((unsigned char )(cur_addr >> 8)), 137L);
    aic_outb(p, (int )((unsigned char )(cur_addr >> 16)), 138L);
    aic_outb(p, (int )((unsigned char )(cur_addr >> 24)), 139L);
    tmp___53 = aic_inb(p, 53L);
    aic_outb(p, (int )((unsigned int )tmp___53 | 128U), 147L);
    __const_udelay(4295UL);
    tmp___54 = aic_inb(p, 53L);
    aic_outb(p, (int )tmp___54 & 215, 147L);
    i___1 = 0;
    goto ldv_34189;
    ldv_34188:
    __const_udelay(4295UL);
    ldv_34189:
    tmp___55 = aic_inb(p, 147L);
    if (((int )tmp___55 & 40) != 0) {
      tmp___56 = i___1;
      i___1 = i___1 + 1;
      if (tmp___56 <= 999) {
        goto ldv_34188;
      } else {
        goto ldv_34190;
      }
    } else {
    }
    ldv_34190: ;
  } else {
    aic_outb(p, (int )((unsigned char )cur_addr), 20L);
    aic_outb(p, (int )((unsigned char )(cur_addr >> 8)), 21L);
    aic_outb(p, (int )((unsigned char )(cur_addr >> 16)), 22L);
    aic_outb(p, (int )((unsigned char )(cur_addr >> 24)), 23L);
  }
  goto ldv_34121;
  case 177:
  scb_index___5 = aic_inb(p, 185L);
  if ((int )(p->scb_data)->numscbs < (int )scb_index___5) {
    printk("\f(scsi%d:%d:%d:%d) invalid scb_index during SEQ_SG_FIXUP.\n", p->host_no,
           -1, -1, -1);
    tmp___58 = aic_inb(p, 12L);
    tmp___59 = aic_inb(p, 11L);
    tmp___60 = aic_inb(p, 98L);
    tmp___61 = aic_inb(p, 99L);
    tmp___62 = aic_inb(p, 3L);
    printk("\016(scsi%d:%d:%d:%d) SCSISIGI 0x%x, SEQADDR 0x%x, SSTAT0 0x%x, SSTAT1 0x%x\n",
           p->host_no, -1, -1, -1, (int )tmp___62, (int )tmp___60 | ((int )tmp___61 << 8),
           (int )tmp___59, (int )tmp___58);
    tmp___63 = aic_inb(p, 10L);
    tmp___64 = aic_inb(p, 9L);
    tmp___65 = aic_inb(p, 8L);
    tmp___66 = aic_inb(p, 13L);
    tmp___67 = aic_inb(p, 252L);
    printk("\016(scsi%d:%d:%d:%d) SG_CACHEPTR 0x%x, SSTAT2 0x%x, STCNT 0x%x\n", p->host_no,
           -1, -1, -1, (int )tmp___67, (int )tmp___66, (((int )tmp___63 << 16) | ((int )tmp___64 << 8)) | (int )tmp___65);
    goto ldv_34121;
  } else {
  }
  scb = (p->scb_data)->scb_array[(int )scb_index___5];
  if (((unsigned int )scb->flags & 4U) == 0U || (unsigned long )scb->cmd == (unsigned long )((struct scsi_cmnd *)0)) {
    printk("\f(scsi%d:%d:%d:%d) invalid scb during SEQ_SG_FIXUP flags:0x%x scb->cmd:0x%p\n",
           p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7, (unsigned int )scb->flags, scb->cmd);
    tmp___68 = aic_inb(p, 12L);
    tmp___69 = aic_inb(p, 11L);
    tmp___70 = aic_inb(p, 98L);
    tmp___71 = aic_inb(p, 99L);
    tmp___72 = aic_inb(p, 3L);
    printk("\016(scsi%d:%d:%d:%d) SCSISIGI 0x%x, SEQADDR 0x%x, SSTAT0 0x%x, SSTAT1 0x%x\n",
           p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7, (int )tmp___72, (int )tmp___70 | ((int )tmp___71 << 8),
           (int )tmp___69, (int )tmp___68);
    tmp___73 = aic_inb(p, 10L);
    tmp___74 = aic_inb(p, 9L);
    tmp___75 = aic_inb(p, 8L);
    tmp___76 = aic_inb(p, 13L);
    tmp___77 = aic_inb(p, 252L);
    printk("\016(scsi%d:%d:%d:%d) SG_CACHEPTR 0x%x, SSTAT2 0x%x, STCNT 0x%x\n", p->host_no,
           ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7, (int )tmp___77, (int )tmp___76,
           (((int )tmp___73 << 16) | ((int )tmp___74 << 8)) | (int )tmp___75);
    goto ldv_34121;
  } else {
  }
  if ((aic7xxx_verbose & 64) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Fixing up SG address for sequencer.\n", p->host_no,
           ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7);
  } else {
  }
  tmp___57 = aic_inb(p, 57L);
  tmp___57 = (unsigned int )tmp___57 + 8U;
  aic_outb(p, (int )tmp___57, 57L);
  if ((unsigned int )tmp___57 <= 7U) {
    tmp___78 = aic_inb(p, 58L);
    aic_outb(p, (int )((unsigned int )tmp___78 + 1U), 58L);
  } else {
  }
  tmp___79 = aic_inb(p, 56L);
  tmp___57 = (unsigned int )tmp___79 + 255U;
  aic_outb(p, (int )tmp___57, 56L);
  sg_addr___0 = (int )(scb->sg_list + (unsigned long )((int )scb->sg_count - (int )tmp___57))->address;
  sg_length = (int )(scb->sg_list + (unsigned long )((int )scb->sg_count - (int )tmp___57))->length;
  aic_outb(p, (int )((unsigned char )sg_addr___0), 136L);
  aic_outb(p, (int )((unsigned char )(sg_addr___0 >> 8)), 137L);
  aic_outb(p, (int )((unsigned char )(sg_addr___0 >> 16)), 138L);
  aic_outb(p, (int )((unsigned char )((unsigned int )sg_addr___0 >> 24)), 139L);
  aic_outb(p, (int )((unsigned char )sg_length), 140L);
  aic_outb(p, (int )((unsigned char )(sg_length >> 8)), 141L);
  aic_outb(p, (int )((unsigned char )(sg_length >> 16)), 142L);
  aic_outb(p, (int )((unsigned char )((int )((signed char )((int )tmp___57 << 2)) | ((unsigned int )tmp___57 == 1U ? 2 : 0))),
           252L);
  tmp___80 = aic_inb(p, 53L);
  aic_outb(p, (int )tmp___80, 147L);
  goto ldv_34197;
  ldv_34196:
  __const_udelay(4295UL);
  ldv_34197:
  tmp___81 = aic_inb(p, 11L);
  if (((int )tmp___81 & 4) != 0) {
    goto ldv_34196;
  } else {
  }
  goto ldv_34200;
  ldv_34199:
  aic_outb(p, 0, 147L);
  ldv_34200:
  tmp___82 = aic_inb(p, 147L);
  if (((int )tmp___82 & 40) != 0) {
    goto ldv_34199;
  } else {
  }
  goto ldv_34121;
  default:
  tmp___83 = aic_inb(p, 3L);
  printk("\f(scsi%d:%d:%d:%d) Unknown SEQINT, INTSTAT 0x%x, SCSISIGI 0x%x.\n", p->host_no,
         (int )channel, (int )target, (int )lun, (int )intstat, (int )tmp___83);
  goto ldv_34121;
  }
  ldv_34121:
  unpause_sequencer(p, 1);
  return;
}
}
static int aic7xxx_parse_msg(struct aic7xxx_host *p , struct aic7xxx_scb *scb )
{
  int reject ;
  int reply ;
  int done ;
  unsigned char target_scsirate ;
  unsigned char tindex ;
  unsigned short target_mask ;
  unsigned char target ;
  unsigned char channel ;
  unsigned char lun ;
  unsigned char bus_width ;
  unsigned char new_bus_width ;
  unsigned char trans_options ;
  unsigned char new_trans_options ;
  unsigned int period ;
  unsigned int new_period ;
  unsigned int offset ;
  unsigned int new_offset ;
  unsigned int maxsync ;
  struct aic7xxx_syncrate *syncrate ;
  struct aic_dev_data *aic_dev ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char __max1 ;
  unsigned char __max2 ;
  unsigned int __max1___0 ;
  unsigned int __max2___0 ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  unsigned char tmp___1 ;
  unsigned char __max1___1 ;
  unsigned char __max2___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  unsigned char tmp___9 ;
  unsigned char tmp___10 ;
  {
  target = (unsigned char )((scb->cmd)->device)->id;
  channel = (unsigned char )((scb->cmd)->device)->channel;
  lun = (unsigned char )((scb->cmd)->device)->lun;
  done = 0;
  reject = done;
  reply = reject;
  tindex = (int )((unsigned char )((scb->cmd)->device)->id) | ((int )((unsigned char )((scb->cmd)->device)->channel) << 3U);
  aic_dev = (struct aic_dev_data *)((scb->cmd)->device)->hostdata;
  target_scsirate = aic_inb(p, (long )((int )tindex + 32));
  target_mask = (unsigned short )(1 << (int )tindex);
  if ((unsigned int )p->msg_buf[0] != 1U) {
    reject = 1;
  } else {
  }
  if (((unsigned int )p->features & 2U) != 0U) {
    tmp = aic_inb(p, 31L);
    if (((int )tmp & 8) != 0) {
      tmp___0 = aic_inb(p, 13L);
      if (((int )tmp___0 & 16) == 0) {
        if (((unsigned int )p->features & 512U) != 0U) {
          maxsync = 0U;
        } else {
          maxsync = 1U;
        }
      } else {
        maxsync = 3U;
      }
    } else {
      maxsync = 3U;
    }
  } else
  if ((int )p->features & 1) {
    maxsync = 3U;
  } else {
    maxsync = 6U;
  }
  if (reject == 0 && (unsigned int )p->msg_len > 2U) {
    switch ((int )p->msg_buf[2]) {
    case 1: ;
    if ((unsigned int )p->msg_buf[1] != 3U) {
      reject = 1;
      goto ldv_34228;
    } else {
    }
    if ((unsigned int )p->msg_len <= 4U) {
      goto ldv_34228;
    } else {
    }
    new_period = (unsigned int )p->msg_buf[3];
    period = new_period;
    new_offset = (unsigned int )p->msg_buf[4];
    offset = new_offset;
    new_trans_options = 0U;
    trans_options = new_trans_options;
    new_bus_width = (unsigned int )target_scsirate & 128U;
    bus_width = new_bus_width;
    if (maxsync == 0U) {
      maxsync = 1U;
    } else {
    }
    if (((unsigned int )scb->flags & 1536U) != 1536U) {
      if (((int )aic_dev->flags & 16) == 0) {
        aic_dev->goal.width = 0U;
        aic_dev->goal.options = 0U;
        if ((unsigned int )p->user[(int )tindex].offset != 0U) {
          aic_dev->needsdtr_copy = 1U;
          __max1 = 10U;
          __max2 = p->user[(int )tindex].period;
          aic_dev->goal.period = (unsigned char )((int )__max1 > (int )__max2 ? (int )__max1 : (int )__max2);
          if (((unsigned int )p->features & 2U) != 0U) {
            aic_dev->goal.offset = 127U;
          } else {
            aic_dev->goal.offset = 15U;
          }
        } else {
          aic_dev->needsdtr_copy = 0U;
          aic_dev->goal.period = 255U;
          aic_dev->goal.offset = 0U;
        }
        aic_dev->flags = (unsigned char volatile )((unsigned int )((unsigned char )aic_dev->flags) | 20U);
      } else
      if ((unsigned int )*((unsigned char *)aic_dev + 161UL) == 0U) {
        reject = 1;
        goto ldv_34228;
      } else {
      }
      reply = 1;
      if ((aic7xxx_verbose & 32) != 0) {
        printk("\016(scsi%d:%d:%d:%d) Received pre-emptive SDTR message from target.\n",
               p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
               (int )(scb->hscb)->target_channel_lun & 7);
      } else {
      }
      __max1___0 = period;
      __max2___0 = (unsigned int )aic_dev->goal.period;
      new_period = __max1___0 > __max2___0 ? __max1___0 : __max2___0;
      __min1 = offset;
      __min2 = (unsigned int )aic_dev->goal.offset;
      new_offset = __min1 < __min2 ? __min1 : __min2;
    } else {
    }
    syncrate = aic7xxx_find_syncrate(p, & new_period, maxsync, & trans_options);
    aic7xxx_validate_offset(p, syncrate, & new_offset, (int )bus_width);
    if (new_offset == 0U && new_offset != offset) {
      aic_dev->needsdtr_copy = 0U;
      reply = 1;
    } else {
    }
    if (reply != 0) {
      aic7xxx_set_syncrate(p, syncrate, (int )target, (int )channel, new_period, new_offset,
                           (int )trans_options, 7U, aic_dev);
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags & 4294963455U);
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 1024U);
      aic_outb(p, 255, 52L);
      tmp___1 = aic_inb(p, 3L);
      aic_outb(p, (int )((unsigned int )tmp___1 | 16U), 3L);
    } else {
      aic7xxx_set_syncrate(p, syncrate, (int )target, (int )channel, new_period, new_offset,
                           (int )trans_options, 3U, aic_dev);
      aic_dev->needsdtr = 0U;
    }
    done = 1;
    goto ldv_34228;
    case 3: ;
    if ((unsigned int )p->msg_buf[1] != 2U) {
      reject = 1;
      goto ldv_34228;
    } else {
    }
    if ((unsigned int )p->msg_len <= 3U) {
      goto ldv_34228;
    } else {
    }
    new_bus_width = p->msg_buf[3];
    bus_width = new_bus_width;
    if (((unsigned int )scb->flags & 2560U) == 2560U) {
      switch ((int )bus_width) {
      default:
      reject = 1;
      if ((aic7xxx_verbose & 32) != 0 && (((int )aic_dev->flags & 4) != 0 || aic7xxx_verbose > 65535)) {
        printk("\016(scsi%d:%d:%d:%d) Requesting %d bit transfers, rejecting.\n",
               p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
               (int )(scb->hscb)->target_channel_lun & 7, 8 << (int )bus_width);
      } else {
      }
      case 0:
      aic_dev->goal.width = 0U;
      aic_dev->needwdtr_copy = (unsigned char )((int )((signed char )aic_dev->needwdtr_copy) & ~ ((int )((signed char )target_mask)));
      goto ldv_34241;
      case 1: ;
      goto ldv_34241;
      }
      ldv_34241:
      aic_dev->needwdtr = 0U;
      aic7xxx_set_width(p, (int )target, (int )channel, (int )lun, (unsigned int )new_bus_width,
                        3U, aic_dev);
    } else {
      if (((int )aic_dev->flags & 16) == 0) {
        if (((unsigned int )p->features & 4U) != 0U && (unsigned int )p->user[(int )tindex].width != 0U) {
          aic_dev->goal.width = 1U;
          aic_dev->needwdtr_copy = 1U;
        } else {
        }
        aic_dev->goal.options = 0U;
        if ((unsigned int )p->user[(int )tindex].offset != 0U) {
          aic_dev->needsdtr_copy = 1U;
          __max1___1 = 10U;
          __max2___1 = p->user[(int )tindex].period;
          aic_dev->goal.period = (unsigned char )((int )__max1___1 > (int )__max2___1 ? (int )__max1___1 : (int )__max2___1);
          if (((unsigned int )p->features & 2U) != 0U) {
            aic_dev->goal.offset = 127U;
          } else
          if ((unsigned int )aic_dev->goal.width != 0U) {
            aic_dev->goal.offset = 8U;
          } else {
            aic_dev->goal.offset = 15U;
          }
        } else {
          aic_dev->needsdtr_copy = 0U;
          aic_dev->goal.period = 255U;
          aic_dev->goal.offset = 0U;
        }
        aic_dev->flags = (unsigned char volatile )((unsigned int )((unsigned char )aic_dev->flags) | 20U);
      } else
      if ((unsigned int )*((unsigned char *)aic_dev + 161UL) == 0U) {
        reject = 1;
        goto ldv_34228;
      } else {
      }
      reply = 1;
      if ((aic7xxx_verbose & 32) != 0) {
        printk("\016(scsi%d:%d:%d:%d) Received pre-emptive WDTR message from target.\n",
               p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
               (int )(scb->hscb)->target_channel_lun & 7);
      } else {
      }
      switch ((int )bus_width) {
      case 1: ;
      if (((unsigned int )p->features & 4U) != 0U && (unsigned int )aic_dev->goal.width == 1U) {
        new_bus_width = 1U;
        goto ldv_34247;
      } else {
      }
      default: ;
      case 0:
      aic_dev->needwdtr_copy = 0U;
      new_bus_width = 0U;
      goto ldv_34247;
      }
      ldv_34247:
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags & 4294963455U);
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 2048U);
      aic_dev->needwdtr = 0U;
      if ((unsigned int )*((unsigned char *)aic_dev + 161UL) == 0U) {
        aic_dev->dtr_pending = 1U;
        scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 1U);
      } else {
      }
      aic_outb(p, 255, 52L);
      tmp___2 = aic_inb(p, 3L);
      aic_outb(p, (int )((unsigned int )tmp___2 | 16U), 3L);
      aic7xxx_set_width(p, (int )target, (int )channel, (int )lun, (unsigned int )new_bus_width,
                        7U, aic_dev);
    }
    aic7xxx_set_syncrate(p, 0, (int )target, (int )channel, 0U, 0U, 0, 19U, aic_dev);
    aic_dev->needsdtr = aic_dev->needsdtr_copy;
    done = 1;
    goto ldv_34228;
    case 4: ;
    if ((unsigned int )p->msg_buf[1] != 6U) {
      reject = 1;
      goto ldv_34228;
    } else {
    }
    if ((unsigned int )p->msg_len <= 7U) {
      goto ldv_34228;
    } else {
    }
    new_period = (unsigned int )p->msg_buf[3];
    period = new_period;
    new_offset = (unsigned int )p->msg_buf[5];
    offset = new_offset;
    new_bus_width = p->msg_buf[6];
    bus_width = new_bus_width;
    new_trans_options = (unsigned int )p->msg_buf[7] & 15U;
    trans_options = new_trans_options;
    if ((aic7xxx_verbose & 32) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Parsing PPR message (%d/%d/%d/%d)\n", p->host_no,
             ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
             (int )(scb->hscb)->target_channel_lun & 7, period, offset, (int )bus_width,
             (int )trans_options);
    } else {
    }
    if (((unsigned int )scb->flags & 768U) != 768U) {
      if (((int )aic_dev->flags & 16) == 0) {
        tmp___3 = 1U;
        aic_dev->needppr_copy = tmp___3;
        aic_dev->needppr = tmp___3;
        tmp___4 = 0U;
        aic_dev->needsdtr_copy = tmp___4;
        aic_dev->needsdtr = tmp___4;
        tmp___5 = 0U;
        aic_dev->needwdtr_copy = tmp___5;
        aic_dev->needwdtr = tmp___5;
        aic_dev->flags = (unsigned char volatile )((unsigned int )((unsigned char )aic_dev->flags) | 32U);
        aic_dev->goal.width = p->user[(int )tindex].width;
        if ((unsigned int )p->user[(int )tindex].offset != 0U) {
          aic_dev->goal.period = p->user[(int )tindex].period;
          aic_dev->goal.options = p->user[(int )tindex].options;
          if (((unsigned int )p->features & 2U) != 0U) {
            aic_dev->goal.offset = 127U;
          } else
          if (((unsigned int )aic_dev->goal.width != 0U && (unsigned int )bus_width == 1U) && ((unsigned int )p->features & 4U) != 0U) {
            aic_dev->goal.offset = 8U;
          } else {
            aic_dev->goal.offset = 15U;
          }
        } else {
          aic_dev->goal.period = 255U;
          aic_dev->goal.offset = 0U;
          aic_dev->goal.options = 0U;
        }
        aic_dev->flags = (unsigned char volatile )((unsigned int )((unsigned char )aic_dev->flags) | 20U);
      } else
      if ((unsigned int )*((unsigned char *)aic_dev + 161UL) == 0U) {
        reject = 1;
        goto ldv_34228;
      } else {
      }
      reply = 1;
      if ((aic7xxx_verbose & 32) != 0) {
        printk("\016(scsi%d:%d:%d:%d) Received pre-emptive PPR message from target.\n",
               p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
               (int )(scb->hscb)->target_channel_lun & 7);
      } else {
      }
    } else {
    }
    switch ((int )bus_width) {
    case 1: ;
    if ((unsigned int )aic_dev->goal.width == 1U && ((unsigned int )p->features & 4U) != 0U) {
      goto ldv_34252;
    } else {
    }
    default: ;
    if ((aic7xxx_verbose & 32) != 0 && (((int )aic_dev->flags & 4) != 0 || aic7xxx_verbose > 65535)) {
      reply = 1;
      printk("\016(scsi%d:%d:%d:%d) Requesting %d bit transfers, rejecting.\n", p->host_no,
             ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
             (int )(scb->hscb)->target_channel_lun & 7, 8 << (int )bus_width);
    } else {
    }
    case 0:
    new_trans_options = 0U;
    new_bus_width = 0U;
    goto ldv_34252;
    }
    ldv_34252: ;
    if (reply != 0) {
      aic7xxx_set_width(p, (int )target, (int )channel, (int )lun, (unsigned int )new_bus_width,
                        7U, aic_dev);
      syncrate = aic7xxx_find_syncrate(p, & new_period, maxsync, & new_trans_options);
      aic7xxx_validate_offset(p, syncrate, & new_offset, (int )new_bus_width);
      aic7xxx_set_syncrate(p, syncrate, (int )target, (int )channel, new_period, new_offset,
                           (int )new_trans_options, 7U, aic_dev);
    } else {
      aic7xxx_set_width(p, (int )target, (int )channel, (int )lun, (unsigned int )new_bus_width,
                        3U, aic_dev);
      syncrate = aic7xxx_find_syncrate(p, & new_period, maxsync, & new_trans_options);
      aic7xxx_validate_offset(p, syncrate, & new_offset, (int )new_bus_width);
      aic7xxx_set_syncrate(p, syncrate, (int )target, (int )channel, new_period, new_offset,
                           (int )new_trans_options, 3U, aic_dev);
    }
    if ((unsigned int )new_trans_options == 0U) {
      tmp___6 = 0U;
      aic_dev->needppr_copy = tmp___6;
      aic_dev->needppr = tmp___6;
      if (new_offset != 0U) {
        tmp___7 = 1U;
        aic_dev->needsdtr_copy = tmp___7;
        aic_dev->needsdtr = tmp___7;
      } else {
      }
      if ((unsigned int )new_bus_width != 0U) {
        tmp___8 = 1U;
        aic_dev->needwdtr_copy = tmp___8;
        aic_dev->needwdtr = tmp___8;
      } else {
      }
    } else {
    }
    if (new_offset == 0U && offset != 0U) {
      reply = 1;
    } else {
    }
    if (reply != 0) {
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags & 4294963455U);
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 256U);
      aic_outb(p, 255, 52L);
      tmp___9 = aic_inb(p, 3L);
      aic_outb(p, (int )((unsigned int )tmp___9 | 16U), 3L);
    } else {
      aic_dev->needppr = 0U;
    }
    done = 1;
    goto ldv_34228;
    default:
    reject = 1;
    goto ldv_34228;
    }
    ldv_34228: ;
  } else {
  }
  if (reply == 0 && reject != 0) {
    aic_outb(p, 7, 52L);
    tmp___10 = aic_inb(p, 3L);
    aic_outb(p, (int )((unsigned int )tmp___10 | 16U), 3L);
    done = 1;
  } else {
  }
  return (done);
}
}
static void aic7xxx_handle_reqinit(struct aic7xxx_host *p , struct aic7xxx_scb *scb )
{
  unsigned char lastbyte ;
  unsigned char phasemis ;
  int done ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  {
  done = 0;
  switch ((int )p->msg_type) {
  case 1: ;
  if ((unsigned int )p->msg_len == 0U) {
    panic("aic7xxx: REQINIT with no active message!\n");
  } else {
  }
  lastbyte = (int )p->msg_index == (int )p->msg_len + -1;
  tmp = aic_inb(p, 3L);
  phasemis = ((int )tmp & 224) != 160;
  if ((unsigned int )lastbyte != 0U || (unsigned int )phasemis != 0U) {
    p->msg_len = 0U;
    p->msg_type = 0U;
    tmp___0 = aic_inb(p, 17L);
    aic_outb(p, (int )tmp___0 & 254, 17L);
    aic_outb(p, 4, 146L);
    p->flags = (long )p->flags & -4097L;
    if ((unsigned int )phasemis == 0U) {
      aic_outb(p, (int )p->msg_buf[(int )p->msg_index], 101L);
      aic_outb(p, 0, 81L);
    } else {
      aic_outb(p, 16, 81L);
    }
    unpause_sequencer(p, 1);
  } else {
    aic_outb(p, 1, 12L);
    aic_outb(p, 4, 146L);
    tmp___1 = p->msg_index;
    p->msg_index = (unsigned char )((int )p->msg_index + 1);
    aic_outb(p, (int )p->msg_buf[(int )tmp___1], 6L);
  }
  goto ldv_34264;
  case 2:
  tmp___2 = aic_inb(p, 3L);
  phasemis = ((int )tmp___2 & 224) != 224;
  if ((unsigned int )phasemis == 0U) {
    p->msg_len = (unsigned char )((int )p->msg_len + 1);
    p->msg_buf[(int )p->msg_index] = aic_inb(p, 18L);
    done = aic7xxx_parse_msg(p, scb);
    aic_outb(p, 1, 12L);
    aic_outb(p, 4, 146L);
    aic_inb(p, 6L);
    p->msg_index = (unsigned char )((int )p->msg_index + 1);
  } else {
  }
  if ((unsigned int )phasemis != 0U || done != 0) {
    p->msg_len = 0U;
    p->msg_type = 0U;
    tmp___3 = aic_inb(p, 17L);
    aic_outb(p, (int )tmp___3 & 254, 17L);
    aic_outb(p, 4, 146L);
    p->flags = (long )p->flags & -4097L;
    unpause_sequencer(p, 1);
  } else {
  }
  goto ldv_34264;
  default:
  panic("aic7xxx: Unknown REQINIT message type.\n");
  }
  ldv_34264: ;
  return;
}
}
static void aic7xxx_handle_scsiint(struct aic7xxx_host *p , unsigned char intstat )
{
  unsigned char scb_index ;
  unsigned char status ;
  struct aic7xxx_scb *scb ;
  struct aic_dev_data *aic_dev ;
  int channel ;
  unsigned char tmp ;
  unsigned char lastphase ;
  unsigned char tmp___0 ;
  unsigned char saved_tcl ;
  unsigned char tmp___1 ;
  unsigned char target ;
  int channel___0 ;
  int printerror ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char message ;
  unsigned char tag ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char scbptr ;
  unsigned char nextscb ;
  struct scsi_cmnd *cmd ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  unsigned char tmp___9 ;
  unsigned char tmp___10 ;
  unsigned char tmp___11 ;
  unsigned char tmp___12 ;
  unsigned char tmp___13 ;
  unsigned char tmp___14 ;
  unsigned char tmp___15 ;
  unsigned char tmp___16 ;
  unsigned char tmp___17 ;
  unsigned char tmp___18 ;
  char *phase ;
  struct scsi_cmnd *cmd___0 ;
  unsigned char mesg_out ;
  unsigned char lastphase___0 ;
  unsigned char tmp___19 ;
  unsigned char sstat2 ;
  unsigned char tmp___20 ;
  unsigned char tmp___21 ;
  unsigned char tmp___22 ;
  unsigned char tmp___23 ;
  unsigned char tmp___24 ;
  unsigned char tmp___25 ;
  {
  scb_index = aic_inb(p, 185L);
  status = aic_inb(p, 12L);
  if ((int )(p->scb_data)->numscbs > (int )scb_index) {
    scb = (p->scb_data)->scb_array[(int )scb_index];
    if (((unsigned int )scb->flags & 4U) == 0U) {
      scb = 0;
    } else {
    }
  } else {
    scb = 0;
  }
  if (((int )status & 32) != 0) {
    if (((unsigned int )p->chip & 255U) == 1U) {
      tmp = aic_inb(p, 31L);
      channel = ((int )tmp & 8) >> 3;
    } else {
      channel = 0;
    }
    if ((aic7xxx_verbose & 61440) != 0) {
      printk("\f(scsi%d:%d:%d:%d) Someone else reset the channel!!\n", p->host_no,
             channel, -1, -1);
    } else {
    }
    if (aic7xxx_panic_on_abort != 0) {
      aic7xxx_panic_abort(p, 0);
    } else {
    }
    aic7xxx_reset_channel(p, channel, 0);
    aic7xxx_run_done_queue(p, 1);
    scb = 0;
  } else
  if (((int )status & 8) != 0 && (int )((signed char )status) >= 0) {
    tmp___0 = aic_inb(p, 61L);
    lastphase = tmp___0;
    tmp___1 = aic_inb(p, 55L);
    saved_tcl = tmp___1;
    target = (int )saved_tcl >> 4;
    printerror = 1;
    if (((unsigned int )p->chip & 255U) == 1U) {
      tmp___2 = aic_inb(p, 31L);
      channel___0 = ((int )tmp___2 & 8) >> 3;
    } else {
      channel___0 = 0;
    }
    tmp___3 = aic_inb(p, 0L);
    aic_outb(p, (int )tmp___3 & 50, 0L);
    if ((unsigned int )lastphase == 160U) {
      message = aic_inb(p, 101L);
      if ((unsigned int )message == 6U || (unsigned int )message == 13U) {
        if ((aic7xxx_verbose & 1024) != 0) {
          printk("\016(scsi%d:%d:%d:%d) SCB %d abort delivered.\n", p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1,
                 ((int )(scb->hscb)->target_channel_lun >> 4) & 15, (int )(scb->hscb)->target_channel_lun & 7,
                 (int )(scb->hscb)->tag);
        } else {
        }
        aic7xxx_reset_device(p, (int )target, channel___0, -1, (unsigned int )message != 6U ? (int )(scb->hscb)->tag : 255);
        aic7xxx_run_done_queue(p, 1);
        scb = 0;
        printerror = 0;
      } else
      if ((unsigned int )message == 12U) {
        aic7xxx_handle_device_reset(p, (int )target, channel___0);
        scb = 0;
        printerror = 0;
      } else {
      }
    } else {
    }
    if ((unsigned long )scb != (unsigned long )((struct aic7xxx_scb *)0) && (int )scb->flags & 1) {
      printerror = 0;
      aic7xxx_reset_device(p, (int )target, channel___0, -1, (int )(scb->hscb)->tag);
      aic7xxx_run_done_queue(p, 1);
      scb = 0;
    } else {
    }
    if (printerror != 0) {
      if ((unsigned long )scb != (unsigned long )((struct aic7xxx_scb *)0)) {
        if (((int )(scb->hscb)->control & 32) != 0) {
          tag = (scb->hscb)->tag;
        } else {
          tag = 255U;
        }
        aic7xxx_reset_device(p, (int )target, channel___0, -1, (int )tag);
        aic7xxx_run_done_queue(p, 1);
      } else {
        aic7xxx_reset_device(p, (int )target, channel___0, -1, 255);
        aic7xxx_run_done_queue(p, 1);
      }
      tmp___4 = aic_inb(p, 99L);
      tmp___5 = aic_inb(p, 98L);
      printk("\016(scsi%d:%d:%d:%d) Unexpected busfree, LASTPHASE = 0x%x, SEQADDR = 0x%x\n",
             p->host_no, channel___0, (int )target, -1, (int )lastphase, ((int )tmp___4 << 8) | (int )tmp___5);
      scb = 0;
    } else {
    }
    aic_outb(p, 8, 52L);
    tmp___6 = aic_inb(p, 17L);
    aic_outb(p, (int )tmp___6 & 246, 17L);
    p->flags = (long )p->flags & -4097L;
    aic_outb(p, 8, 12L);
    aic_outb(p, 4, 146L);
    restart_sequencer(p);
    unpause_sequencer(p, 1);
  } else
  if ((int )((signed char )status) < 0) {
    scbptr = aic_inb(p, 62L);
    if ((int )(p->scb_data)->maxhscbs < (int )scbptr) {
      printk("\016(scsi%d:%d:%d:%d) Invalid WAITING_SCBH value %d, improvising.\n",
             p->host_no, -1, -1, -1, (int )scbptr);
      if ((unsigned int )(p->scb_data)->maxhscbs > 4U) {
        scbptr = (unsigned char )((int )((signed char )((unsigned int )(p->scb_data)->maxhscbs + 255U)) & (int )((signed char )scbptr));
      } else {
        scbptr = (unsigned int )scbptr & 3U;
      }
    } else {
    }
    aic_outb(p, (int )scbptr, 144L);
    scb_index = aic_inb(p, 185L);
    scb = 0;
    if ((int )(p->scb_data)->numscbs > (int )scb_index) {
      scb = (p->scb_data)->scb_array[(int )scb_index];
      if (((unsigned int )scb->flags & 4U) == 0U) {
        scb = 0;
      } else {
      }
    } else {
    }
    if ((unsigned long )scb == (unsigned long )((struct aic7xxx_scb *)0)) {
      printk("\f(scsi%d:%d:%d:%d) Referenced SCB %d not valid during SELTO.\n", p->host_no,
             -1, -1, -1, (int )scb_index);
      tmp___7 = aic_inb(p, 12L);
      tmp___8 = aic_inb(p, 11L);
      tmp___9 = aic_inb(p, 98L);
      tmp___10 = aic_inb(p, 99L);
      tmp___11 = aic_inb(p, 0L);
      printk("\f        SCSISEQ = 0x%x SEQADDR = 0x%x SSTAT0 = 0x%x SSTAT1 = 0x%x\n",
             (int )tmp___11, (int )tmp___9 | ((int )tmp___10 << 8), (int )tmp___8,
             (int )tmp___7);
      if (aic7xxx_panic_on_abort != 0) {
        aic7xxx_panic_abort(p, 0);
      } else {
      }
    } else {
      cmd = scb->cmd;
      cmd->result = 196608;
      aic_outb(p, 0, 160L);
      aic_outb(p, 8, 52L);
      nextscb = aic_inb(p, 186L);
      aic_outb(p, (int )nextscb, 62L);
      aic7xxx_add_curscb_to_free_list(p);
      if (((unsigned int )scb->flags & 4096U) != 0U) {
        cmd->result = 0;
        scb = 0;
      } else {
      }
    }
    tmp___12 = aic_inb(p, 0L);
    aic_outb(p, (int )tmp___12 & 191, 0L);
    if (((unsigned int )p->chip & 4294967040U) == 1024U) {
      aic_outb(p, 0, 18L);
    } else {
    }
    __const_udelay(1292795UL);
    aic_outb(p, 16, 11L);
    tmp___13 = aic_inb(p, 17L);
    aic_outb(p, (int )tmp___13 & 246, 17L);
    p->flags = (long )p->flags & -4097L;
    aic_outb(p, 136, 12L);
    aic_outb(p, 4, 146L);
    restart_sequencer(p);
    unpause_sequencer(p, 1);
  } else
  if ((unsigned long )scb == (unsigned long )((struct aic7xxx_scb *)0)) {
    tmp___14 = aic_inb(p, 99L);
    tmp___15 = aic_inb(p, 98L);
    tmp___16 = aic_inb(p, 11L);
    tmp___17 = aic_inb(p, 17L);
    tmp___18 = aic_inb(p, 16L);
    printk("\f(scsi%d:%d:%d:%d) aic7xxx_isr - referenced scb not valid during scsiint 0x%x scb(%d)\n      SIMODE0 0x%x, SIMODE1 0x%x, SSTAT0 0x%x, SEQADDR 0x%x\n",
           p->host_no, -1, -1, -1, (int )status, (int )scb_index, (int )tmp___18,
           (int )tmp___17, (int )tmp___16, ((int )tmp___14 << 8) | (int )tmp___15);
    aic_outb(p, (int )status, 12L);
    aic_outb(p, 4, 146L);
    unpause_sequencer(p, 1);
    scb = 0;
  } else
  if (((int )status & 4) != 0) {
    mesg_out = 8U;
    tmp___19 = aic_inb(p, 61L);
    lastphase___0 = tmp___19;
    tmp___20 = aic_inb(p, 13L);
    sstat2 = tmp___20;
    cmd___0 = scb->cmd;
    switch ((int )lastphase___0) {
    case 0:
    phase = (char *)"Data-Out";
    goto ldv_34292;
    case 64:
    phase = (char *)"Data-In";
    mesg_out = 5U;
    goto ldv_34292;
    case 128:
    phase = (char *)"Command";
    goto ldv_34292;
    case 160:
    phase = (char *)"Message-Out";
    goto ldv_34292;
    case 192:
    phase = (char *)"Status";
    mesg_out = 5U;
    goto ldv_34292;
    case 224:
    phase = (char *)"Message-In";
    mesg_out = 9U;
    goto ldv_34292;
    default:
    phase = (char *)"unknown";
    goto ldv_34292;
    }
    ldv_34292: ;
    if (((unsigned int )p->features & 512U) != 0U) {
      tmp___24 = aic_inb(p, 4L);
      if (((int )tmp___24 & 64) != 0) {
        if ((unsigned int )lastphase___0 == 64U) {
          printk("\f(scsi%d:%d:%d:%d) CRC error during %s phase.\n", p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1,
                 ((int )(scb->hscb)->target_channel_lun >> 4) & 15, (int )(scb->hscb)->target_channel_lun & 7,
                 phase);
          if (((int )sstat2 & 8) != 0) {
            printk("\f(scsi%d:%d:%d:%d)   CRC error in intermediate CRC packet.\n",
                   p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                   (int )(scb->hscb)->target_channel_lun & 7);
          } else {
          }
          if (((int )sstat2 & 4) != 0) {
            printk("\f(scsi%d:%d:%d:%d)   CRC error in ending CRC packet.\n", p->host_no,
                   ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                   (int )(scb->hscb)->target_channel_lun & 7);
          } else {
          }
          if (((int )sstat2 & 2) != 0) {
            printk("\f(scsi%d:%d:%d:%d)   Target incorrectly requested a CRC packet.\n",
                   p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                   (int )(scb->hscb)->target_channel_lun & 7);
          } else {
          }
          if ((int )sstat2 & 1) {
            printk("\f(scsi%d:%d:%d:%d)   Dual Edge transmission error.\n", p->host_no,
                   ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                   (int )(scb->hscb)->target_channel_lun & 7);
          } else {
          }
        } else {
          goto _L___0;
        }
      } else {
        goto _L___0;
      }
    } else
    _L___0:
    if ((unsigned int )lastphase___0 == 160U && ((unsigned int )scb->flags & 256U) != 0U) {
      aic_dev = (struct aic_dev_data *)((scb->cmd)->device)->hostdata;
      tmp___21 = 0U;
      aic_dev->needppr_copy = tmp___21;
      aic_dev->needppr = tmp___21;
      aic7xxx_set_width(p, (int )((scb->cmd)->device)->id, (int )((scb->cmd)->device)->channel,
                        (int )((scb->cmd)->device)->lun, 0U, 19U, aic_dev);
      aic7xxx_set_syncrate(p, 0, (int )((scb->cmd)->device)->id, (int )((scb->cmd)->device)->channel,
                           0U, 0U, 0, 19U, aic_dev);
      aic_dev->goal.options = 0U;
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags & 4294963455U);
      if ((aic7xxx_verbose & 32) != 0) {
        printk("\016(scsi%d:%d:%d:%d) parity error during PPR message, reverting to WDTR/SDTR\n",
               p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
               (int )(scb->hscb)->target_channel_lun & 7);
      } else {
      }
      if ((unsigned int )aic_dev->goal.width != 0U) {
        tmp___22 = 1U;
        aic_dev->needwdtr_copy = tmp___22;
        aic_dev->needwdtr = tmp___22;
      } else {
      }
      if ((unsigned int )aic_dev->goal.offset != 0U) {
        if ((unsigned int )aic_dev->goal.period <= 9U) {
          aic_dev->goal.period = 10U;
        } else {
        }
        tmp___23 = 1U;
        aic_dev->needsdtr_copy = tmp___23;
        aic_dev->needsdtr = tmp___23;
      } else {
      }
      scb = 0;
    } else {
    }
    if ((unsigned int )mesg_out != 8U) {
      aic_outb(p, (int )mesg_out, 52L);
      tmp___25 = aic_inb(p, 3L);
      aic_outb(p, (int )((unsigned int )tmp___25 | 16U), 3L);
      scb = 0;
    } else {
    }
    aic_outb(p, 4, 12L);
    aic_outb(p, 4, 146L);
    unpause_sequencer(p, 1);
  } else
  if ((int )status & 1 && ((long )p->flags & 4096L) != 0L) {
    aic7xxx_handle_reqinit(p, scb);
    return;
  } else {
    if ((aic7xxx_verbose & 4) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Unknown SCSIINT status, SSTAT1(0x%x).\n", p->host_no,
             -1, -1, -1, (int )status);
    } else {
    }
    aic_outb(p, (int )status, 12L);
    aic_outb(p, 4, 146L);
    unpause_sequencer(p, 1);
    scb = 0;
  }
  if ((unsigned long )scb != (unsigned long )((struct aic7xxx_scb *)0)) {
    aic7xxx_done(p, scb);
  } else {
  }
  return;
}
}
static void aic7xxx_handle_command_completion_intr(struct aic7xxx_host *p )
{
  struct aic7xxx_scb *scb ;
  struct aic_dev_data *aic_dev ;
  struct scsi_cmnd *cmd ;
  unsigned char scb_index ;
  unsigned char tindex ;
  unsigned char volatile tmp ;
  unsigned char tmp___0 ;
  char *buffer ;
  {
  scb = 0;
  aic_outb(p, 2, 146L);
  aic_inb(p, 145L);
  goto ldv_34307;
  ldv_34309:
  scb_index = *(p->qoutfifo + (unsigned long )p->qoutfifonext);
  tmp = p->qoutfifonext;
  p->qoutfifonext = (unsigned char volatile )((int volatile )p->qoutfifonext + (int volatile )1);
  *(p->qoutfifo + (unsigned long )tmp) = 255U;
  if ((int )(p->scb_data)->numscbs <= (int )scb_index) {
    printk("\f(scsi%d:%d:%d:%d) CMDCMPLT with invalid SCB index %d\n", p->host_no,
           -1, -1, -1, (int )scb_index);
    goto ldv_34307;
  } else {
  }
  scb = (p->scb_data)->scb_array[(int )scb_index];
  if (((unsigned int )scb->flags & 4U) == 0U || (unsigned long )scb->cmd == (unsigned long )((struct scsi_cmnd *)0)) {
    printk("\f(scsi%d:%d:%d:%d) CMDCMPLT without command for SCB %d, SCB flags 0x%x, cmd 0x%lx\n",
           p->host_no, -1, -1, -1, (int )scb_index, (unsigned int )scb->flags, (unsigned long )scb->cmd);
    goto ldv_34307;
  } else {
  }
  tindex = (int )((unsigned char )((scb->cmd)->device)->id) | ((int )((unsigned char )((scb->cmd)->device)->channel) << 3U);
  aic_dev = (struct aic_dev_data *)((scb->cmd)->device)->hostdata;
  if (((unsigned int )scb->flags & 4096U) != 0U) {
    pause_sequencer(p);
    aic_inb(p, 61L);
    tmp___0 = aic_inb(p, 185L);
    if ((int )tmp___0 == (int )(scb->hscb)->tag) {
      unpause_sequencer(p, 0);
      goto ldv_34307;
    } else {
    }
    aic7xxx_reset_device(p, (int )((scb->cmd)->device)->id, (int )((scb->cmd)->device)->channel,
                         (int )((scb->cmd)->device)->lun, (int )(scb->hscb)->tag);
    scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags & 4294954927U);
    unpause_sequencer(p, 0);
  } else
  if (((unsigned int )scb->flags & 16U) != 0U) {
    scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags & 4294967215U);
  } else
  if (((unsigned int )scb->flags & 8U) != 0U) {
    buffer = (char *)(scb->cmd)->sense_buffer;
    if ((int )((signed char )*(buffer + 12UL)) == 71 || (int )((signed char )*(buffer + 12UL)) == 84) {
      aic_dev->needppr = aic_dev->needppr_copy;
      aic_dev->needsdtr = aic_dev->needsdtr_copy;
      aic_dev->needwdtr = aic_dev->needwdtr_copy;
    } else {
    }
  } else {
  }
  cmd = scb->cmd;
  if ((unsigned int )(scb->hscb)->residual_SG_segment_count != 0U) {
    aic7xxx_calculate_residual(p, scb);
  } else {
  }
  cmd->result = cmd->result | (int )(cmd->SCp.Status << 16);
  aic7xxx_done(p, scb);
  ldv_34307: ;
  if ((unsigned int )((unsigned char )*(p->qoutfifo + (unsigned long )p->qoutfifonext)) != 255U) {
    goto ldv_34309;
  } else {
  }
  return;
}
}
static void aic7xxx_isr(void *dev_id )
{
  struct aic7xxx_host *p ;
  unsigned char intstat ;
  unsigned char tmp ;
  int i ;
  unsigned char errno ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  {
  p = (struct aic7xxx_host *)dev_id;
  intstat = aic_inb(p, 145L);
  if (((int )intstat & 15) == 0) {
    if ((((unsigned int )p->chip & 1024U) != 0U && p->spurious_int > 500UL) && ((long )p->flags & 4096L) == 0L) {
      tmp = aic_inb(p, 146L);
      if (((int )tmp & 64) != 0) {
        aic7xxx_pci_intr(p);
      } else {
      }
      p->spurious_int = 0UL;
    } else
    if (((long )p->flags & 4096L) == 0L) {
      p->spurious_int = p->spurious_int + 1UL;
    } else {
    }
    return;
  } else {
  }
  p->spurious_int = 0UL;
  p->isr_count = p->isr_count + 1UL;
  if (((int )intstat & 2) != 0) {
    aic7xxx_handle_command_completion_intr(p);
  } else {
  }
  if (((int )intstat & 8) != 0) {
    tmp___0 = aic_inb(p, 146L);
    errno = tmp___0;
    printk("\v(scsi%d) BRKADRINT error(0x%x):\n", p->host_no, (int )errno);
    i = 0;
    goto ldv_34321;
    ldv_34320: ;
    if ((unsigned int )((int )hard_error[i].errno & (int )errno) != 0U) {
      printk("\v  %s\n", hard_error[i].errmesg);
    } else {
    }
    i = i + 1;
    ldv_34321: ;
    if ((unsigned int )i <= 7U) {
      goto ldv_34320;
    } else {
    }
    tmp___1 = aic_inb(p, 99L);
    tmp___2 = aic_inb(p, 98L);
    printk("\v(scsi%d)   SEQADDR=0x%x\n", p->host_no, (((int )tmp___1 << 8) & 256) | (int )tmp___2);
    if (aic7xxx_panic_on_abort != 0) {
      aic7xxx_panic_abort(p, 0);
    } else {
    }
    if (((int )errno & 64) != 0) {
      aic7xxx_pci_intr(p);
    } else {
    }
    if (((int )errno & 14) != 0) {
      panic("aic7xxx: unrecoverable BRKADRINT.\n");
    } else {
    }
    if ((int )errno & 1) {
      printk("\v(scsi%d) BUG! Driver accessed chip without first pausing controller!\n",
             p->host_no);
    } else {
    }
    aic_outb(p, 24, 146L);
    unpause_sequencer(p, 0);
  } else {
  }
  if ((int )intstat & 1) {
    if (((unsigned int )p->features & 2U) != 0U) {
      aic_inb(p, 238L);
    } else {
    }
    aic7xxx_handle_seqint(p, (int )intstat);
  } else {
  }
  if (((int )intstat & 4) != 0) {
    aic7xxx_handle_scsiint(p, (int )intstat);
  } else {
  }
  return;
}
}
static irqreturn_t do_aic7xxx_isr(int irq , void *dev_id )
{
  unsigned long cpu_flags ;
  struct aic7xxx_host *p ;
  raw_spinlock_t *tmp ;
  unsigned char tmp___0 ;
  {
  p = (struct aic7xxx_host *)dev_id;
  if ((unsigned long )p == (unsigned long )((struct aic7xxx_host *)0)) {
    return (0);
  } else {
  }
  tmp = spinlock_check((p->host)->host_lock);
  cpu_flags = _raw_spin_lock_irqsave(tmp);
  p->flags = (long )p->flags | 268435456L;
  ldv_34332:
  aic7xxx_isr(dev_id);
  tmp___0 = aic_inb(p, 145L);
  if (((int )tmp___0 & 15) != 0) {
    goto ldv_34332;
  } else {
  }
  aic7xxx_done_cmds_complete(p);
  aic7xxx_run_waiting_queues(p);
  p->flags = (long )p->flags & -268435457L;
  spin_unlock_irqrestore((p->host)->host_lock, cpu_flags);
  return (1);
}
}
static void aic7xxx_init_transinfo(struct aic7xxx_host *p , struct aic_dev_data *aic_dev )
{
  struct scsi_device *sdpnt ;
  unsigned char tindex ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char __max1 ;
  unsigned char __max2 ;
  unsigned char tmp___5 ;
  {
  sdpnt = aic_dev->SDptr;
  tindex = (int )((unsigned char )sdpnt->id) | ((int )((unsigned char )sdpnt->channel) << 3U);
  if (((int )aic_dev->flags & 16) == 0) {
    aic_dev->flags = (unsigned char volatile )((unsigned int )((unsigned char )aic_dev->flags) | 16U);
    if ((unsigned int )*((unsigned char *)sdpnt + 293UL) != 0U && ((unsigned int )p->features & 4U) != 0U) {
      tmp = 1U;
      aic_dev->needwdtr_copy = tmp;
      aic_dev->needwdtr = tmp;
      aic_dev->goal.width = p->user[(int )tindex].width;
    } else {
      tmp___0 = 0U;
      aic_dev->needwdtr_copy = tmp___0;
      aic_dev->needwdtr = tmp___0;
      pause_sequencer(p);
      aic7xxx_set_width(p, (int )sdpnt->id, (int )sdpnt->channel, (int )sdpnt->lun,
                        0U, 7U, aic_dev);
      unpause_sequencer(p, 0);
    }
    if ((unsigned int )*((unsigned char *)sdpnt + 293UL) != 0U && (unsigned int )p->user[(int )tindex].offset != 0U) {
      aic_dev->goal.period = p->user[(int )tindex].period;
      aic_dev->goal.options = p->user[(int )tindex].options;
      if (((unsigned int )p->features & 2U) != 0U) {
        aic_dev->goal.offset = 127U;
      } else
      if ((unsigned int )aic_dev->goal.width == 1U) {
        aic_dev->goal.offset = 8U;
      } else {
        aic_dev->goal.offset = 15U;
      }
      if (((unsigned int )*((unsigned char *)sdpnt + 293UL) != 0U && (unsigned int )p->user[(int )tindex].period <= 9U) && (unsigned int )p->user[(int )tindex].options != 0U) {
        tmp___1 = 1U;
        aic_dev->needppr_copy = tmp___1;
        aic_dev->needppr = tmp___1;
        tmp___2 = 0U;
        aic_dev->needsdtr_copy = tmp___2;
        aic_dev->needsdtr = tmp___2;
        tmp___3 = 0U;
        aic_dev->needwdtr_copy = tmp___3;
        aic_dev->needwdtr = tmp___3;
        aic_dev->flags = (unsigned char volatile )((unsigned int )((unsigned char )aic_dev->flags) | 32U);
      } else {
        tmp___4 = 1U;
        aic_dev->needsdtr_copy = tmp___4;
        aic_dev->needsdtr = tmp___4;
        __max1 = 10U;
        __max2 = aic_dev->goal.period;
        aic_dev->goal.period = (unsigned char )((int )__max1 > (int )__max2 ? (int )__max1 : (int )__max2);
        aic_dev->goal.options = 0U;
      }
    } else {
      tmp___5 = 0U;
      aic_dev->needsdtr_copy = tmp___5;
      aic_dev->needsdtr = tmp___5;
      aic_dev->goal.period = 255U;
      aic_dev->goal.offset = 0U;
      aic_dev->goal.options = 0U;
    }
    aic_dev->flags = (unsigned char volatile )((unsigned int )((unsigned char )aic_dev->flags) | 4U);
  } else {
  }
  return;
}
}
static int aic7xxx_slave_alloc(struct scsi_device *SDptr )
{
  struct aic7xxx_host *p ;
  struct aic_dev_data *aic_dev ;
  void *tmp ;
  {
  p = (struct aic7xxx_host *)(& (SDptr->host)->hostdata);
  tmp = kmalloc(192UL, 208U);
  aic_dev = (struct aic_dev_data *)tmp;
  if ((unsigned long )aic_dev == (unsigned long )((struct aic_dev_data *)0)) {
    return (1);
  } else {
  }
  if (((long )p->flags & 1048576L) == 0L && SDptr->channel == 0U) {
    if ((aic7xxx_verbose & 16) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Scanning channel for devices.\n", p->host_no,
             0, -1, -1);
    } else {
    }
    p->flags = (long )p->flags | 1048576L;
  } else
  if (((long )p->flags & 2097152L) == 0L && SDptr->channel == 1U) {
    if ((aic7xxx_verbose & 16) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Scanning channel for devices.\n", p->host_no,
             1, -1, -1);
    } else {
    }
    p->flags = (long )p->flags | 2097152L;
  } else {
  }
  memset((void *)aic_dev, 0, 192UL);
  SDptr->hostdata = (void *)aic_dev;
  aic_dev->SDptr = SDptr;
  aic_dev->max_q_depth = 1U;
  aic_dev->temp_q_depth = 1U;
  scbq_init(& aic_dev->delayed_scbs);
  INIT_LIST_HEAD(& aic_dev->list);
  list_add_tail(& aic_dev->list, & p->aic_devs);
  return (0);
}
}
static void aic7xxx_device_queue_depth(struct aic7xxx_host *p , struct scsi_device *device )
{
  int tag_enabled ;
  struct aic_dev_data *aic_dev ;
  unsigned char tindex ;
  int print_warning ;
  unsigned short volatile tmp ;
  unsigned short volatile tmp___0 ;
  unsigned short volatile tmp___1 ;
  {
  tag_enabled = 0;
  aic_dev = (struct aic_dev_data *)device->hostdata;
  tindex = (int )((unsigned char )device->id) | ((int )((unsigned char )device->channel) << 3U);
  if ((unsigned int )*((unsigned char *)device + 293UL) != 0U) {
    return;
  } else {
  }
  if ((unsigned int )*((unsigned char *)device + 293UL) != 0U) {
    tag_enabled = 1;
    if ((((int )p->discenable >> (int )tindex) & 1) == 0) {
      if ((aic7xxx_verbose & 32) != 0) {
        printk("\016(scsi%d:%d:%d:%d) Disconnection disabled, unable to enable tagged queueing.\n",
               p->host_no, device->channel, device->id, device->lun);
      } else {
      }
      tag_enabled = 0;
    } else
    if ((unsigned int )p->instance > 15U) {
      print_warning = 1;
      if (print_warning != 0) {
        printk("\016aic7xxx: WARNING, insufficient tag_info instances for installed controllers.\n");
        printk("\016aic7xxx: Please update the aic7xxx_tag_info array in the aic7xxx.c source file.\n");
        print_warning = 0;
      } else {
      }
      tmp = (unsigned short volatile )aic7xxx_default_queue_depth;
      aic_dev->temp_q_depth = tmp;
      aic_dev->max_q_depth = tmp;
    } else
    if ((unsigned int )aic7xxx_tag_info[p->instance].tag_commands[(int )tindex] == 255U) {
      tag_enabled = 0;
    } else
    if ((unsigned int )aic7xxx_tag_info[p->instance].tag_commands[(int )tindex] == 0U) {
      tmp___0 = (unsigned short volatile )aic7xxx_default_queue_depth;
      aic_dev->temp_q_depth = tmp___0;
      aic_dev->max_q_depth = tmp___0;
    } else {
      tmp___1 = (unsigned short volatile )aic7xxx_tag_info[p->instance].tag_commands[(int )tindex];
      aic_dev->temp_q_depth = tmp___1;
      aic_dev->max_q_depth = tmp___1;
    }
  } else {
  }
  if (tag_enabled != 0) {
    if ((aic7xxx_verbose & 32) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Tagged queuing enabled, queue depth %d.\n", p->host_no,
             device->channel, device->id, device->lun, (int )aic_dev->max_q_depth);
    } else {
    }
    scsi_adjust_queue_depth(device, 34, (int )aic_dev->max_q_depth);
  } else {
    if ((aic7xxx_verbose & 32) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Tagged queuing disabled, queue depth %d.\n", p->host_no,
             device->channel, device->id, device->lun, (int )(device->host)->cmd_per_lun);
    } else {
    }
    scsi_adjust_queue_depth(device, 0, (int )(device->host)->cmd_per_lun);
  }
  return;
}
}
static void aic7xxx_slave_destroy(struct scsi_device *SDptr )
{
  struct aic_dev_data *aic_dev ;
  {
  aic_dev = (struct aic_dev_data *)SDptr->hostdata;
  list_del(& aic_dev->list);
  SDptr->hostdata = 0;
  kfree((void const *)aic_dev);
  return;
}
}
static int aic7xxx_slave_configure(struct scsi_device *SDptr )
{
  struct aic7xxx_host *p ;
  struct aic_dev_data *aic_dev ;
  int scbnum ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  {
  p = (struct aic7xxx_host *)(& (SDptr->host)->hostdata);
  aic_dev = (struct aic_dev_data *)SDptr->hostdata;
  aic7xxx_init_transinfo(p, aic_dev);
  aic7xxx_device_queue_depth(p, SDptr);
  tmp = list_empty((struct list_head const *)(& aic_dev->list));
  if (tmp != 0) {
    list_add_tail(& aic_dev->list, & p->aic_devs);
  } else {
  }
  scbnum = 0;
  __mptr = (struct list_head const *)p->aic_devs.next;
  aic_dev = (struct aic_dev_data *)__mptr + 0xffffffffffffff50UL;
  goto ldv_34373;
  ldv_34372:
  scbnum = (int )aic_dev->max_q_depth + scbnum;
  __mptr___0 = (struct list_head const *)aic_dev->list.next;
  aic_dev = (struct aic_dev_data *)__mptr___0 + 0xffffffffffffff50UL;
  ldv_34373: ;
  if ((unsigned long )(& aic_dev->list) != (unsigned long )(& p->aic_devs)) {
    goto ldv_34372;
  } else {
  }
  goto ldv_34377;
  ldv_34376:
  tmp___0 = aic7xxx_allocate_scb(p);
  if (tmp___0 == 0) {
    goto ldv_34375;
  } else {
  }
  ldv_34377: ;
  if ((int )(p->scb_data)->numscbs < scbnum) {
    goto ldv_34376;
  } else {
  }
  ldv_34375: ;
  return (0);
}
}
static int read_284x_seeprom(struct aic7xxx_host *p , struct seeprom_config *sc )
{
  int i ;
  int k ;
  unsigned char temp ;
  unsigned short checksum ;
  unsigned short *seeprom ;
  struct seeprom_cmd seeprom_read ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  unsigned char tmp___9 ;
  {
  i = 0;
  k = 0;
  checksum = 0U;
  seeprom = (unsigned short *)sc;
  seeprom_read.len = 3U;
  seeprom_read.bits[0] = 1U;
  seeprom_read.bits[1] = 1U;
  seeprom_read.bits[2] = 0U;
  k = 0;
  goto ldv_34431;
  ldv_34430:
  aic_outb(p, 6, 192L);
  goto ldv_34392;
  ldv_34391: ;
  ldv_34392:
  tmp = aic_inb(p, 193L);
  if ((int )((signed char )tmp) >= 0) {
    goto ldv_34391;
  } else {
  }
  aic_inb(p, 192L);
  i = 0;
  goto ldv_34401;
  ldv_34400:
  temp = (unsigned int )seeprom_read.bits[i] | 4U;
  aic_outb(p, (int )temp, 192L);
  goto ldv_34395;
  ldv_34394: ;
  ldv_34395:
  tmp___0 = aic_inb(p, 193L);
  if ((int )((signed char )tmp___0) >= 0) {
    goto ldv_34394;
  } else {
  }
  aic_inb(p, 192L);
  temp = (unsigned int )temp ^ 2U;
  aic_outb(p, (int )temp, 192L);
  goto ldv_34398;
  ldv_34397: ;
  ldv_34398:
  tmp___1 = aic_inb(p, 193L);
  if ((int )((signed char )tmp___1) >= 0) {
    goto ldv_34397;
  } else {
  }
  aic_inb(p, 192L);
  i = i + 1;
  ldv_34401: ;
  if ((int )seeprom_read.len > i) {
    goto ldv_34400;
  } else {
  }
  i = 5;
  goto ldv_34410;
  ldv_34409:
  temp = (unsigned char )k;
  temp = (unsigned int )((unsigned char )((int )temp >> i)) & 1U;
  temp = (unsigned int )temp | 4U;
  aic_outb(p, (int )temp, 192L);
  goto ldv_34404;
  ldv_34403: ;
  ldv_34404:
  tmp___2 = aic_inb(p, 193L);
  if ((int )((signed char )tmp___2) >= 0) {
    goto ldv_34403;
  } else {
  }
  aic_inb(p, 192L);
  temp = (unsigned int )temp ^ 2U;
  aic_outb(p, (int )temp, 192L);
  goto ldv_34407;
  ldv_34406: ;
  ldv_34407:
  tmp___3 = aic_inb(p, 193L);
  if ((int )((signed char )tmp___3) >= 0) {
    goto ldv_34406;
  } else {
  }
  aic_inb(p, 192L);
  i = i - 1;
  ldv_34410: ;
  if (i >= 0) {
    goto ldv_34409;
  } else {
  }
  i = 0;
  goto ldv_34419;
  ldv_34418:
  temp = 4U;
  aic_outb(p, (int )temp, 192L);
  goto ldv_34413;
  ldv_34412: ;
  ldv_34413:
  tmp___4 = aic_inb(p, 193L);
  if ((int )((signed char )tmp___4) >= 0) {
    goto ldv_34412;
  } else {
  }
  aic_inb(p, 192L);
  temp = (unsigned int )temp ^ 2U;
  tmp___5 = aic_inb(p, 193L);
  *(seeprom + (unsigned long )k) = (unsigned short )((int )((short )((int )*(seeprom + (unsigned long )k) << 1)) | ((int )((short )tmp___5) & 1));
  aic_outb(p, (int )temp, 192L);
  goto ldv_34416;
  ldv_34415: ;
  ldv_34416:
  tmp___6 = aic_inb(p, 193L);
  if ((int )((signed char )tmp___6) >= 0) {
    goto ldv_34415;
  } else {
  }
  aic_inb(p, 192L);
  i = i + 1;
  ldv_34419: ;
  if (i <= 16) {
    goto ldv_34418;
  } else {
  }
  if ((unsigned int )k <= 30U) {
    checksum = (int )*(seeprom + (unsigned long )k) + (int )checksum;
  } else {
  }
  aic_outb(p, 0, 192L);
  goto ldv_34422;
  ldv_34421: ;
  ldv_34422:
  tmp___7 = aic_inb(p, 193L);
  if ((int )((signed char )tmp___7) >= 0) {
    goto ldv_34421;
  } else {
  }
  aic_inb(p, 192L);
  aic_outb(p, 2, 192L);
  goto ldv_34425;
  ldv_34424: ;
  ldv_34425:
  tmp___8 = aic_inb(p, 193L);
  if ((int )((signed char )tmp___8) >= 0) {
    goto ldv_34424;
  } else {
  }
  aic_inb(p, 192L);
  aic_outb(p, 0, 192L);
  goto ldv_34428;
  ldv_34427: ;
  ldv_34428:
  tmp___9 = aic_inb(p, 193L);
  if ((int )((signed char )tmp___9) >= 0) {
    goto ldv_34427;
  } else {
  }
  aic_inb(p, 192L);
  k = k + 1;
  ldv_34431: ;
  if ((unsigned int )k <= 31U) {
    goto ldv_34430;
  } else {
  }
  if ((int )sc->checksum != (int )checksum) {
    printk("aic7xxx: SEEPROM checksum error, ignoring SEEPROM settings.\n");
    return (0);
  } else {
  }
  return (1);
}
}
static int acquire_seeprom(struct aic7xxx_host *p )
{
  int limit ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  aic_outb(p, 32, 30L);
  limit = 0;
  ldv_34437:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp = aic_inb(p, 30L);
  if (((int )tmp & 16) == 0) {
    limit = limit + 1;
    if (limit <= 999) {
      goto ldv_34437;
    } else {
      goto ldv_34438;
    }
  } else {
  }
  ldv_34438:
  tmp___0 = aic_inb(p, 30L);
  if (((int )tmp___0 & 16) == 0) {
    aic_outb(p, 0, 30L);
    return (0);
  } else {
  }
  return (1);
}
}
static void release_seeprom(struct aic7xxx_host *p )
{
  int limit ;
  unsigned char tmp ;
  {
  limit = 0;
  ldv_34443:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp = aic_inb(p, 30L);
  if (((int )tmp & 16) == 0) {
    limit = limit + 1;
    if (limit <= 999) {
      goto ldv_34443;
    } else {
      goto ldv_34444;
    }
  } else {
  }
  ldv_34444:
  aic_outb(p, 0, 30L);
  return;
}
}
static int read_seeprom(struct aic7xxx_host *p , int offset , unsigned short *scarray ,
                        unsigned int len , seeprom_chip_type chip )
{
  int i ;
  int k ;
  unsigned char temp ;
  unsigned short checksum ;
  struct seeprom_cmd___0 seeprom_read ;
  int tmp ;
  int limit ;
  unsigned char tmp___0 ;
  int limit___0 ;
  unsigned char tmp___1 ;
  int limit___1 ;
  unsigned char tmp___2 ;
  int limit___2 ;
  unsigned char tmp___3 ;
  int limit___3 ;
  unsigned char tmp___4 ;
  int limit___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  int limit___5 ;
  unsigned char tmp___7 ;
  int limit___6 ;
  unsigned char tmp___8 ;
  int limit___7 ;
  unsigned char tmp___9 ;
  int limit___8 ;
  unsigned char tmp___10 ;
  {
  i = 0;
  checksum = 0U;
  seeprom_read.len = 3U;
  seeprom_read.bits[0] = 1U;
  seeprom_read.bits[1] = 1U;
  seeprom_read.bits[2] = 0U;
  tmp = acquire_seeprom(p);
  if (tmp == 0) {
    return (0);
  } else {
  }
  k = 0;
  goto ldv_34500;
  ldv_34499:
  aic_outb(p, 44, 30L);
  limit = 0;
  ldv_34461:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___0 = aic_inb(p, 30L);
  if (((int )tmp___0 & 16) == 0) {
    limit = limit + 1;
    if (limit <= 999) {
      goto ldv_34461;
    } else {
      goto ldv_34462;
    }
  } else {
  }
  ldv_34462:
  i = 0;
  goto ldv_34470;
  ldv_34469:
  temp = (unsigned char )((int )((signed char )((int )seeprom_read.bits[i] << 1)) | 40);
  aic_outb(p, (int )temp, 30L);
  limit___0 = 0;
  ldv_34464:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___1 = aic_inb(p, 30L);
  if (((int )tmp___1 & 16) == 0) {
    limit___0 = limit___0 + 1;
    if (limit___0 <= 999) {
      goto ldv_34464;
    } else {
      goto ldv_34465;
    }
  } else {
  }
  ldv_34465:
  temp = (unsigned int )temp ^ 4U;
  aic_outb(p, (int )temp, 30L);
  limit___1 = 0;
  ldv_34467:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___2 = aic_inb(p, 30L);
  if (((int )tmp___2 & 16) == 0) {
    limit___1 = limit___1 + 1;
    if (limit___1 <= 999) {
      goto ldv_34467;
    } else {
      goto ldv_34468;
    }
  } else {
  }
  ldv_34468:
  i = i + 1;
  ldv_34470: ;
  if ((int )seeprom_read.len > i) {
    goto ldv_34469;
  } else {
  }
  i = (int )chip + -1;
  goto ldv_34479;
  ldv_34478:
  temp = (int )((unsigned char )k) + (int )((unsigned char )offset);
  temp = (unsigned int )((unsigned char )((int )temp >> i)) & 1U;
  temp = (unsigned char )((int )((signed char )((int )temp << 1)) | 40);
  aic_outb(p, (int )temp, 30L);
  limit___2 = 0;
  ldv_34473:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___3 = aic_inb(p, 30L);
  if (((int )tmp___3 & 16) == 0) {
    limit___2 = limit___2 + 1;
    if (limit___2 <= 999) {
      goto ldv_34473;
    } else {
      goto ldv_34474;
    }
  } else {
  }
  ldv_34474:
  temp = (unsigned int )temp ^ 4U;
  aic_outb(p, (int )temp, 30L);
  limit___3 = 0;
  ldv_34476:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___4 = aic_inb(p, 30L);
  if (((int )tmp___4 & 16) == 0) {
    limit___3 = limit___3 + 1;
    if (limit___3 <= 999) {
      goto ldv_34476;
    } else {
      goto ldv_34477;
    }
  } else {
  }
  ldv_34477:
  i = i - 1;
  ldv_34479: ;
  if (i >= 0) {
    goto ldv_34478;
  } else {
  }
  i = 0;
  goto ldv_34488;
  ldv_34487:
  temp = 40U;
  aic_outb(p, (int )temp, 30L);
  limit___4 = 0;
  ldv_34482:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___5 = aic_inb(p, 30L);
  if (((int )tmp___5 & 16) == 0) {
    limit___4 = limit___4 + 1;
    if (limit___4 <= 999) {
      goto ldv_34482;
    } else {
      goto ldv_34483;
    }
  } else {
  }
  ldv_34483:
  temp = (unsigned int )temp ^ 4U;
  tmp___6 = aic_inb(p, 30L);
  *(scarray + (unsigned long )k) = (unsigned short )((int )((short )((int )*(scarray + (unsigned long )k) << 1)) | ((int )((short )tmp___6) & 1));
  aic_outb(p, (int )temp, 30L);
  limit___5 = 0;
  ldv_34485:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___7 = aic_inb(p, 30L);
  if (((int )tmp___7 & 16) == 0) {
    limit___5 = limit___5 + 1;
    if (limit___5 <= 999) {
      goto ldv_34485;
    } else {
      goto ldv_34486;
    }
  } else {
  }
  ldv_34486:
  i = i + 1;
  ldv_34488: ;
  if (i <= 16) {
    goto ldv_34487;
  } else {
  }
  if ((unsigned int )k < len - 1U) {
    checksum = (int )*(scarray + (unsigned long )k) + (int )checksum;
  } else {
  }
  aic_outb(p, 32, 30L);
  limit___6 = 0;
  ldv_34491:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___8 = aic_inb(p, 30L);
  if (((int )tmp___8 & 16) == 0) {
    limit___6 = limit___6 + 1;
    if (limit___6 <= 999) {
      goto ldv_34491;
    } else {
      goto ldv_34492;
    }
  } else {
  }
  ldv_34492:
  aic_outb(p, 36, 30L);
  limit___7 = 0;
  ldv_34494:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___9 = aic_inb(p, 30L);
  if (((int )tmp___9 & 16) == 0) {
    limit___7 = limit___7 + 1;
    if (limit___7 <= 999) {
      goto ldv_34494;
    } else {
      goto ldv_34495;
    }
  } else {
  }
  ldv_34495:
  aic_outb(p, 32, 30L);
  limit___8 = 0;
  ldv_34497:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___10 = aic_inb(p, 30L);
  if (((int )tmp___10 & 16) == 0) {
    limit___8 = limit___8 + 1;
    if (limit___8 <= 999) {
      goto ldv_34497;
    } else {
      goto ldv_34498;
    }
  } else {
  }
  ldv_34498:
  k = k + 1;
  ldv_34500: ;
  if ((unsigned int )k < len) {
    goto ldv_34499;
  } else {
  }
  release_seeprom(p);
  if ((int )*(scarray + (unsigned long )(len - 1U)) != (int )checksum || (unsigned int )checksum == 0U) {
    return (0);
  } else {
  }
  return (1);
}
}
static unsigned char read_brdctl(struct aic7xxx_host *p )
{
  unsigned char brdctl ;
  unsigned char value ;
  int limit ;
  unsigned char tmp ;
  int limit___0 ;
  unsigned char tmp___0 ;
  int limit___1 ;
  unsigned char tmp___1 ;
  int limit___2 ;
  unsigned char tmp___2 ;
  int limit___3 ;
  unsigned char tmp___3 ;
  int limit___4 ;
  unsigned char tmp___4 ;
  {
  limit = 0;
  ldv_34508:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp = aic_inb(p, 30L);
  if (((int )tmp & 16) == 0) {
    limit = limit + 1;
    if (limit <= 999) {
      goto ldv_34508;
    } else {
      goto ldv_34509;
    }
  } else {
  }
  ldv_34509: ;
  if (((unsigned int )p->features & 2U) != 0U) {
    brdctl = 2U;
    aic_outb(p, (int )brdctl, 29L);
    limit___0 = 0;
    ldv_34511:
    __asm__ volatile ("mfence": : : "memory");
    pause_sequencer(p);
    __const_udelay(4295UL);
    tmp___0 = aic_inb(p, 30L);
    if (((int )tmp___0 & 16) == 0) {
      limit___0 = limit___0 + 1;
      if (limit___0 <= 999) {
        goto ldv_34511;
      } else {
        goto ldv_34512;
      }
    } else {
    }
    ldv_34512:
    value = aic_inb(p, 29L);
    limit___1 = 0;
    ldv_34514:
    __asm__ volatile ("mfence": : : "memory");
    pause_sequencer(p);
    __const_udelay(4295UL);
    tmp___1 = aic_inb(p, 30L);
    if (((int )tmp___1 & 16) == 0) {
      limit___1 = limit___1 + 1;
      if (limit___1 <= 999) {
        goto ldv_34514;
      } else {
        goto ldv_34515;
      }
    } else {
    }
    ldv_34515: ;
    return (value);
  } else {
  }
  brdctl = 4U;
  if (((unsigned int )p->chip & 255U) != 7U || ((long )p->flags & 32L) != 0L) {
    brdctl = (unsigned int )brdctl | 8U;
  } else {
  }
  aic_outb(p, (int )brdctl, 29L);
  limit___2 = 0;
  ldv_34517:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___2 = aic_inb(p, 30L);
  if (((int )tmp___2 & 16) == 0) {
    limit___2 = limit___2 + 1;
    if (limit___2 <= 999) {
      goto ldv_34517;
    } else {
      goto ldv_34518;
    }
  } else {
  }
  ldv_34518:
  value = aic_inb(p, 29L);
  limit___3 = 0;
  ldv_34520:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___3 = aic_inb(p, 30L);
  if (((int )tmp___3 & 16) == 0) {
    limit___3 = limit___3 + 1;
    if (limit___3 <= 999) {
      goto ldv_34520;
    } else {
      goto ldv_34521;
    }
  } else {
  }
  ldv_34521:
  aic_outb(p, 0, 29L);
  limit___4 = 0;
  ldv_34523:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___4 = aic_inb(p, 30L);
  if (((int )tmp___4 & 16) == 0) {
    limit___4 = limit___4 + 1;
    if (limit___4 <= 999) {
      goto ldv_34523;
    } else {
      goto ldv_34524;
    }
  } else {
  }
  ldv_34524: ;
  return (value);
}
}
static void write_brdctl(struct aic7xxx_host *p , unsigned char value )
{
  unsigned char brdctl ;
  int limit ;
  unsigned char tmp ;
  int limit___0 ;
  unsigned char tmp___0 ;
  int limit___1 ;
  unsigned char tmp___1 ;
  int limit___2 ;
  unsigned char tmp___2 ;
  int limit___3 ;
  unsigned char tmp___3 ;
  int limit___4 ;
  unsigned char tmp___4 ;
  int limit___5 ;
  unsigned char tmp___5 ;
  int limit___6 ;
  unsigned char tmp___6 ;
  int limit___7 ;
  unsigned char tmp___7 ;
  {
  limit = 0;
  ldv_34531:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp = aic_inb(p, 30L);
  if (((int )tmp & 16) == 0) {
    limit = limit + 1;
    if (limit <= 999) {
      goto ldv_34531;
    } else {
      goto ldv_34532;
    }
  } else {
  }
  ldv_34532: ;
  if (((unsigned int )p->features & 2U) != 0U) {
    brdctl = value;
    aic_outb(p, (int )brdctl, 29L);
    limit___0 = 0;
    ldv_34534:
    __asm__ volatile ("mfence": : : "memory");
    pause_sequencer(p);
    __const_udelay(4295UL);
    tmp___0 = aic_inb(p, 30L);
    if (((int )tmp___0 & 16) == 0) {
      limit___0 = limit___0 + 1;
      if (limit___0 <= 999) {
        goto ldv_34534;
      } else {
        goto ldv_34535;
      }
    } else {
    }
    ldv_34535:
    brdctl = (unsigned int )brdctl | 1U;
    aic_outb(p, (int )brdctl, 29L);
    limit___1 = 0;
    ldv_34537:
    __asm__ volatile ("mfence": : : "memory");
    pause_sequencer(p);
    __const_udelay(4295UL);
    tmp___1 = aic_inb(p, 30L);
    if (((int )tmp___1 & 16) == 0) {
      limit___1 = limit___1 + 1;
      if (limit___1 <= 999) {
        goto ldv_34537;
      } else {
        goto ldv_34538;
      }
    } else {
    }
    ldv_34538:
    brdctl = (unsigned int )brdctl & 254U;
    aic_outb(p, (int )brdctl, 29L);
    limit___2 = 0;
    ldv_34540:
    __asm__ volatile ("mfence": : : "memory");
    pause_sequencer(p);
    __const_udelay(4295UL);
    tmp___2 = aic_inb(p, 30L);
    if (((int )tmp___2 & 16) == 0) {
      limit___2 = limit___2 + 1;
      if (limit___2 <= 999) {
        goto ldv_34540;
      } else {
        goto ldv_34541;
      }
    } else {
    }
    ldv_34541:
    read_brdctl(p);
    limit___3 = 0;
    ldv_34543:
    __asm__ volatile ("mfence": : : "memory");
    pause_sequencer(p);
    __const_udelay(4295UL);
    tmp___3 = aic_inb(p, 30L);
    if (((int )tmp___3 & 16) == 0) {
      limit___3 = limit___3 + 1;
      if (limit___3 <= 999) {
        goto ldv_34543;
      } else {
        goto ldv_34544;
      }
    } else {
    }
    ldv_34544: ;
  } else {
    brdctl = 16U;
    if (((unsigned int )p->chip & 255U) != 7U || ((long )p->flags & 32L) != 0L) {
      brdctl = (unsigned int )brdctl | 8U;
    } else {
    }
    brdctl = 24U;
    aic_outb(p, (int )brdctl, 29L);
    limit___4 = 0;
    ldv_34546:
    __asm__ volatile ("mfence": : : "memory");
    pause_sequencer(p);
    __const_udelay(4295UL);
    tmp___4 = aic_inb(p, 30L);
    if (((int )tmp___4 & 16) == 0) {
      limit___4 = limit___4 + 1;
      if (limit___4 <= 999) {
        goto ldv_34546;
      } else {
        goto ldv_34547;
      }
    } else {
    }
    ldv_34547:
    brdctl = (int )brdctl | (int )value;
    aic_outb(p, (int )brdctl, 29L);
    limit___5 = 0;
    ldv_34549:
    __asm__ volatile ("mfence": : : "memory");
    pause_sequencer(p);
    __const_udelay(4295UL);
    tmp___5 = aic_inb(p, 30L);
    if (((int )tmp___5 & 16) == 0) {
      limit___5 = limit___5 + 1;
      if (limit___5 <= 999) {
        goto ldv_34549;
      } else {
        goto ldv_34550;
      }
    } else {
    }
    ldv_34550:
    brdctl = (unsigned int )brdctl & 239U;
    aic_outb(p, (int )brdctl, 29L);
    limit___6 = 0;
    ldv_34552:
    __asm__ volatile ("mfence": : : "memory");
    pause_sequencer(p);
    __const_udelay(4295UL);
    tmp___6 = aic_inb(p, 30L);
    if (((int )tmp___6 & 16) == 0) {
      limit___6 = limit___6 + 1;
      if (limit___6 <= 999) {
        goto ldv_34552;
      } else {
        goto ldv_34553;
      }
    } else {
    }
    ldv_34553:
    brdctl = (unsigned int )brdctl & 247U;
    aic_outb(p, (int )brdctl, 29L);
    limit___7 = 0;
    ldv_34555:
    __asm__ volatile ("mfence": : : "memory");
    pause_sequencer(p);
    __const_udelay(4295UL);
    tmp___7 = aic_inb(p, 30L);
    if (((int )tmp___7 & 16) == 0) {
      limit___7 = limit___7 + 1;
      if (limit___7 <= 999) {
        goto ldv_34555;
      } else {
        goto ldv_34556;
      }
    } else {
    }
    ldv_34556: ;
  }
  return;
}
}
static void aic785x_cable_detect(struct aic7xxx_host *p , int *int_50 , int *ext_present ,
                                 int *eeprom )
{
  unsigned char brdctl ;
  int limit ;
  unsigned char tmp ;
  int limit___0 ;
  unsigned char tmp___0 ;
  int limit___1 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  {
  aic_outb(p, 12, 29L);
  limit = 0;
  ldv_34565:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp = aic_inb(p, 30L);
  if (((int )tmp & 16) == 0) {
    limit = limit + 1;
    if (limit <= 999) {
      goto ldv_34565;
    } else {
      goto ldv_34566;
    }
  } else {
  }
  ldv_34566:
  aic_outb(p, 0, 29L);
  limit___0 = 0;
  ldv_34568:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___0 = aic_inb(p, 30L);
  if (((int )tmp___0 & 16) == 0) {
    limit___0 = limit___0 + 1;
    if (limit___0 <= 999) {
      goto ldv_34568;
    } else {
      goto ldv_34569;
    }
  } else {
  }
  ldv_34569:
  brdctl = aic_inb(p, 29L);
  limit___1 = 0;
  ldv_34571:
  __asm__ volatile ("mfence": : : "memory");
  pause_sequencer(p);
  __const_udelay(4295UL);
  tmp___1 = aic_inb(p, 30L);
  if (((int )tmp___1 & 16) == 0) {
    limit___1 = limit___1 + 1;
    if (limit___1 <= 999) {
      goto ldv_34571;
    } else {
      goto ldv_34572;
    }
  } else {
  }
  ldv_34572:
  *int_50 = ((int )brdctl & 32) == 0;
  *ext_present = ((int )brdctl & 64) == 0;
  tmp___2 = aic_inb(p, 27L);
  *eeprom = (int )tmp___2 & 4;
  return;
}
}
static void aic2940_uwpro_wide_cable_detect(struct aic7xxx_host *p , int *int_68 ,
                                            int *ext_68 , int *eeprom )
{
  unsigned char brdctl ;
  {
  write_brdctl(p, 0);
  brdctl = read_brdctl(p);
  *int_68 = (int )((signed char )brdctl) >= 0;
  write_brdctl(p, 32);
  brdctl = read_brdctl(p);
  *ext_68 = ((int )brdctl & 64) == 0;
  *eeprom = (int )((signed char )brdctl) >= 0;
  return;
}
}
static void aic787x_cable_detect(struct aic7xxx_host *p , int *int_50 , int *int_68 ,
                                 int *ext_present , int *eeprom )
{
  unsigned char brdctl ;
  {
  write_brdctl(p, 0);
  brdctl = read_brdctl(p);
  *int_50 = ((int )brdctl & 64) == 0;
  *int_68 = (int )((signed char )brdctl) >= 0;
  write_brdctl(p, 32);
  brdctl = read_brdctl(p);
  *ext_present = ((int )brdctl & 64) == 0;
  *eeprom = (int )((signed char )brdctl) >= 0;
  return;
}
}
static void aic7xxx_ultra2_term_detect(struct aic7xxx_host *p , int *enableSE_low ,
                                       int *enableSE_high , int *enableLVD_low , int *enableLVD_high ,
                                       int *eprom_present )
{
  unsigned char brdctl ;
  {
  brdctl = read_brdctl(p);
  *eprom_present = (int )brdctl & 128;
  *enableSE_high = (int )brdctl & 64;
  *enableSE_low = (int )brdctl & 32;
  *enableLVD_high = (int )brdctl & 16;
  *enableLVD_low = (int )brdctl & 8;
  return;
}
}
static void configure_termination(struct aic7xxx_host *p )
{
  int internal50_present ;
  int internal68_present ;
  int external_present ;
  int eprom_present ;
  int enableSE_low ;
  int enableSE_high ;
  int enableLVD_low ;
  int enableLVD_high ;
  unsigned char brddat ;
  unsigned char max_target ;
  unsigned char sxfrctl1 ;
  unsigned char tmp ;
  int tmp___0 ;
  {
  internal50_present = 0;
  internal68_present = 0;
  external_present = 0;
  eprom_present = 0;
  enableSE_low = 0;
  enableSE_high = 0;
  enableLVD_low = 0;
  enableLVD_high = 0;
  brddat = 0U;
  max_target = 0U;
  tmp = aic_inb(p, 2L);
  sxfrctl1 = tmp;
  tmp___0 = acquire_seeprom(p);
  if (tmp___0 != 0) {
    if (((unsigned int )p->features & 12U) != 0U) {
      max_target = 16U;
    } else {
      max_target = 8U;
    }
    aic_outb(p, 40, 30L);
    sxfrctl1 = (unsigned int )sxfrctl1 & 254U;
    if (((unsigned int )p->features & 2U) != 0U) {
      if (aic7xxx_override_term == -1) {
        aic7xxx_ultra2_term_detect(p, & enableSE_low, & enableSE_high, & enableLVD_low,
                                   & enableLVD_high, & eprom_present);
      } else {
      }
      if (((int )p->adapter_control & 1024) == 0) {
        enableSE_low = (int )p->adapter_control & 4;
        enableSE_high = (int )p->adapter_control & 8;
      } else {
      }
      if (((int )p->adapter_control & 1) == 0) {
        enableLVD_high = (int )p->adapter_control & 2048;
        enableLVD_low = enableLVD_high;
      } else {
      }
      if (enableLVD_low != 0) {
        sxfrctl1 = (unsigned int )sxfrctl1 | 1U;
        p->flags = (long )p->flags | 33554432L;
        if ((aic7xxx_verbose & 16) != 0) {
          printk("\016(scsi%d) LVD/Primary Low byte termination Enabled\n", p->host_no);
        } else {
        }
      } else {
      }
      if (enableLVD_high != 0) {
        brddat = (unsigned int )brddat | 16U;
        if ((aic7xxx_verbose & 16) != 0) {
          printk("\016(scsi%d) LVD/Primary High byte termination Enabled\n", p->host_no);
        } else {
        }
      } else {
      }
      if (enableSE_low != 0) {
        brddat = (unsigned int )brddat | 32U;
        if ((aic7xxx_verbose & 16) != 0) {
          printk("\016(scsi%d) Secondary Low byte termination Enabled\n", p->host_no);
        } else {
        }
      } else {
      }
      if (enableSE_high != 0) {
        brddat = (unsigned int )brddat | 64U;
        if ((aic7xxx_verbose & 16) != 0) {
          printk("\016(scsi%d) Secondary High byte termination Enabled\n", p->host_no);
        } else {
        }
      } else {
      }
    } else
    if (((unsigned int )p->features & 1024U) != 0U) {
      sxfrctl1 = (unsigned int )sxfrctl1 | 1U;
      if ((aic7xxx_verbose & 16) != 0) {
        printk("\016(scsi%d) Narrow channel termination Enabled\n", p->host_no);
      } else {
      }
      if ((int )p->adapter_control & 1) {
        aic2940_uwpro_wide_cable_detect(p, & internal68_present, & external_present,
                                        & eprom_present);
        printk("\016(scsi%d) Cables present (Int-50 %s, Int-68 %s, Ext-68 %s)\n",
               p->host_no, (char *)"Don\'t Care", internal68_present != 0 ? (char *)"YES" : (char *)"NO",
               external_present != 0 ? (char *)"YES" : (char *)"NO");
        if ((aic7xxx_verbose & 16) != 0) {
          printk("\016(scsi%d) EEPROM %s present.\n", p->host_no, eprom_present != 0 ? (char *)"is" : (char *)"is not");
        } else {
        }
        if (internal68_present != 0 && external_present != 0) {
          brddat = 0U;
          p->flags = (long )p->flags & -2049L;
          if ((aic7xxx_verbose & 16) != 0) {
            printk("\016(scsi%d) Wide channel termination Disabled\n", p->host_no);
          } else {
          }
        } else {
          brddat = 64U;
          p->flags = (long )p->flags | 2048L;
          if ((aic7xxx_verbose & 16) != 0) {
            printk("\016(scsi%d) Wide channel termination Enabled\n", p->host_no);
          } else {
          }
        }
      } else
      if (((int )p->adapter_control & 8) != 0) {
        brddat = 64U;
        p->flags = (long )p->flags | 2048L;
        if ((aic7xxx_verbose & 16) != 0) {
          printk("\016(scsi%d) Wide channel termination Enabled\n", p->host_no);
        } else {
        }
      } else {
        brddat = 0U;
      }
    } else
    if ((int )p->adapter_control & 1) {
      if (((long )p->flags & 131072L) != 0L) {
        printk("\016(scsi%d) Warning - detected auto-termination\n", p->host_no);
        printk("\016(scsi%d) Please verify driver detected settings are correct.\n",
               p->host_no);
        printk("\016(scsi%d) If not, then please properly set the device termination\n",
               p->host_no);
        printk("\016(scsi%d) in the Adaptec SCSI BIOS by hitting CTRL-A when prompted\n",
               p->host_no);
        printk("\016(scsi%d) during machine bootup.\n", p->host_no);
      } else {
      }
      if (((unsigned int )p->chip & 255U) > 3U) {
        aic787x_cable_detect(p, & internal50_present, & internal68_present, & external_present,
                             & eprom_present);
      } else {
        aic785x_cable_detect(p, & internal50_present, & external_present, & eprom_present);
      }
      if ((unsigned int )max_target <= 8U) {
        internal68_present = 0;
      } else {
      }
      if ((unsigned int )max_target > 8U) {
        printk("\016(scsi%d) Cables present (Int-50 %s, Int-68 %s, Ext-68 %s)\n",
               p->host_no, internal50_present != 0 ? (char *)"YES" : (char *)"NO",
               internal68_present != 0 ? (char *)"YES" : (char *)"NO", external_present != 0 ? (char *)"YES" : (char *)"NO");
      } else {
        printk("\016(scsi%d) Cables present (Int-50 %s, Ext-50 %s)\n", p->host_no,
               internal50_present != 0 ? (char *)"YES" : (char *)"NO", external_present != 0 ? (char *)"YES" : (char *)"NO");
      }
      if ((aic7xxx_verbose & 16) != 0) {
        printk("\016(scsi%d) EEPROM %s present.\n", p->host_no, eprom_present != 0 ? (char *)"is" : (char *)"is not");
      } else {
      }
      if ((internal50_present != 0 && internal68_present != 0) && external_present != 0) {
        printk("\016(scsi%d) Illegal cable configuration!!  Only two\n", p->host_no);
        printk("\016(scsi%d) connectors on the SCSI controller may be in use at a time!\n",
               p->host_no);
        external_present = 0;
        internal50_present = external_present;
        enableSE_low = 1;
        enableSE_high = enableSE_low;
      } else {
      }
      if ((unsigned int )max_target > 8U && (external_present == 0 || internal68_present == 0)) {
        brddat = (unsigned int )brddat | 64U;
        p->flags = (long )p->flags | 2048L;
        if ((aic7xxx_verbose & 16) != 0) {
          printk("\016(scsi%d) SE High byte termination Enabled\n", p->host_no);
        } else {
        }
      } else {
      }
      if (((internal50_present != 0) + (internal68_present != 0)) + (external_present != 0) <= 1) {
        sxfrctl1 = (unsigned int )sxfrctl1 | 1U;
        p->flags = (long )p->flags | 1024L;
        if ((aic7xxx_verbose & 16) != 0) {
          printk("\016(scsi%d) SE Low byte termination Enabled\n", p->host_no);
        } else {
        }
      } else {
      }
    } else {
      if (((int )p->adapter_control & 4) != 0) {
        sxfrctl1 = (unsigned int )sxfrctl1 | 1U;
        if ((aic7xxx_verbose & 16) != 0) {
          printk("\016(scsi%d) SE Low byte termination Enabled\n", p->host_no);
        } else {
        }
      } else {
      }
      if (((int )p->adapter_control & 8) != 0) {
        brddat = (unsigned int )brddat | 64U;
        if ((aic7xxx_verbose & 16) != 0) {
          printk("\016(scsi%d) SE High byte termination Enabled\n", p->host_no);
        } else {
        }
      } else {
      }
    }
    aic_outb(p, (int )sxfrctl1, 2L);
    write_brdctl(p, (int )brddat);
    release_seeprom(p);
  } else {
  }
  return;
}
}
static void detect_maxscb(struct aic7xxx_host *p )
{
  int i ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  if ((unsigned int )(p->scb_data)->maxhscbs == 0U) {
    aic_outb(p, 0, 64L);
    i = 0;
    goto ldv_34617;
    ldv_34616:
    aic_outb(p, (int )((unsigned char )i), 144L);
    aic_outb(p, (int )((unsigned char )i), 160L);
    tmp = aic_inb(p, 160L);
    if ((int )tmp != i) {
      goto ldv_34615;
    } else {
    }
    aic_outb(p, 0, 144L);
    tmp___0 = aic_inb(p, 160L);
    if ((unsigned int )tmp___0 != 0U) {
      goto ldv_34615;
    } else {
    }
    aic_outb(p, (int )((unsigned char )i), 144L);
    aic_outb(p, 0, 160L);
    aic_outb(p, (int )((unsigned int )((unsigned char )i) + 1U), 186L);
    aic_outb(p, 255, 185L);
    aic_outb(p, 255, 188L);
    aic_outb(p, 255, 189L);
    aic_outb(p, 255, 190L);
    aic_outb(p, 255, 191L);
    i = i + 1;
    ldv_34617: ;
    if (i <= 254) {
      goto ldv_34616;
    } else {
    }
    ldv_34615:
    aic_outb(p, (int )((unsigned int )((unsigned char )i) + 255U), 144L);
    aic_outb(p, 255, 186L);
    aic_outb(p, 0, 144L);
    aic_outb(p, 0, 160L);
    (p->scb_data)->maxhscbs = (unsigned char )i;
    if (i == 255) {
      p->flags = (long )p->flags & -2L;
    } else {
    }
  } else {
  }
  return;
}
}
static int aic7xxx_register(struct scsi_host_template *template , struct aic7xxx_host *p ,
                            int reset_delay )
{
  int i ;
  int result ;
  int max_targets ;
  int found ;
  unsigned char term ;
  unsigned char scsi_conf ;
  struct Scsi_Host *host ;
  char *channel ;
  unsigned char devconfig ;
  unsigned char term_override ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  size_t array_size ;
  unsigned int hscb_physaddr ;
  void *tmp___4 ;
  void *tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  char *channel___0 ;
  unsigned char tmp___9 ;
  {
  found = 1;
  host = p->host;
  (p->scb_data)->maxscbs = 255U;
  host->can_queue = 255;
  host->cmd_per_lun = 3;
  host->sg_tablesize = 128U;
  host->this_id = p->scsi_id;
  host->io_port = p->base;
  host->n_io_port = 255U;
  host->base = p->mbase;
  host->irq = p->irq;
  if (((unsigned int )p->features & 4U) != 0U) {
    host->max_id = 16U;
  } else {
  }
  if (((unsigned int )p->features & 8U) != 0U) {
    host->max_channel = 1U;
  } else {
  }
  p->host = host;
  p->host_no = (int )host->host_no;
  host->unique_id = (unsigned int )p->instance;
  p->isr_count = 0UL;
  p->next = 0;
  p->completeq.head = 0;
  p->completeq.tail = 0;
  scbq_init((scb_queue_type volatile *)(& (p->scb_data)->free_scbs));
  scbq_init(& p->waiting_scbs);
  INIT_LIST_HEAD(& p->aic_devs);
  p->qinfifonext = 0U;
  p->qoutfifonext = 0U;
  printk("\016(scsi%d) <%s> found at ", p->host_no, board_names[p->board_name_index]);
  switch ((unsigned int )p->chip) {
  case 513U:
  printk("EISA slot %d\n", (int )p->pci_device_fn);
  goto ldv_34631;
  case 257U:
  printk("VLB slot %d\n", (int )p->pci_device_fn);
  goto ldv_34631;
  default:
  printk("PCI %d/%d/%d\n", (int )p->pci_bus, ((int )p->pci_device_fn >> 3) & 31, (int )p->pci_device_fn & 7);
  goto ldv_34631;
  }
  ldv_34631: ;
  if (((unsigned int )p->features & 8U) != 0U) {
    printk("\016(scsi%d) Twin Channel, A SCSI ID %d, B SCSI ID %d, ", p->host_no,
           p->scsi_id, p->scsi_id_b);
  } else {
    channel = (char *)"";
    if (((long )p->flags & 4194304L) != 0L) {
      channel = (char *)" A";
      if (((long )p->flags & 96L) != 0L) {
        channel = ((long )p->flags & 32L) != 0L ? (char *)" B" : (char *)" C";
      } else {
      }
    } else {
    }
    if (((unsigned int )p->features & 4U) != 0U) {
      printk("\016(scsi%d) Wide ", p->host_no);
    } else {
      printk("\016(scsi%d) Narrow ", p->host_no);
    }
    printk("Channel%s, SCSI ID=%d, ", channel, p->scsi_id);
  }
  aic_outb(p, 0, 54L);
  detect_maxscb(p);
  printk("%d/%d SCBs\n", (int )(p->scb_data)->maxhscbs, (int )(p->scb_data)->maxscbs);
  if ((aic7xxx_verbose & 16) != 0) {
    printk("\016(scsi%d) BIOS %sabled, IO Port 0x%lx, IRQ %d\n", p->host_no, ((long )p->flags & 8388608L) != 0L ? (char *)"en" : (char *)"dis",
           p->base, p->irq);
    printk("\016(scsi%d) IO Memory at 0x%lx, MMAP Memory at %p\n", p->host_no, p->mbase,
           p->maddr);
  } else {
  }
  if (aic7xxx_stpwlev != -1) {
    if (((unsigned int )p->chip & 4294967040U) == 1024U) {
      pci_read_config_byte((struct pci_dev const *)p->pdev, 64, & devconfig);
      if ((aic7xxx_stpwlev >> p->instance) & 1) {
        devconfig = (unsigned int )devconfig | 2U;
        if ((aic7xxx_verbose & 16) != 0) {
          printk("(scsi%d) Force setting STPWLEVEL bit\n", p->host_no);
        } else {
        }
      } else {
        devconfig = (unsigned int )devconfig & 253U;
        if ((aic7xxx_verbose & 16) != 0) {
          printk("(scsi%d) Force clearing STPWLEVEL bit\n", p->host_no);
        } else {
        }
      }
      pci_write_config_byte((struct pci_dev const *)p->pdev, 64, (int )devconfig);
    } else {
    }
  } else {
  }
  if (aic7xxx_override_term != -1) {
    if (((unsigned int )p->chip & 4294967040U) == 1024U) {
      term_override = (unsigned int )((unsigned char )(aic7xxx_override_term >> p->instance * 4)) & 15U;
      p->adapter_control = (unsigned int )p->adapter_control & 62450U;
      if (((unsigned int )p->features & 2U) != 0U && ((int )term_override & 12) != 0) {
        p->adapter_control = (unsigned int )p->adapter_control | 2048U;
      } else {
      }
      if (((int )term_override & 2) != 0) {
        p->adapter_control = (unsigned int )p->adapter_control | 8U;
      } else {
      }
      if ((int )term_override & 1) {
        p->adapter_control = (unsigned int )p->adapter_control | 4U;
      } else {
      }
    } else {
    }
  } else {
  }
  if (((long )p->flags & 16777216L) != 0L || aic7xxx_override_term != -1) {
    if (((unsigned int )p->features & 256U) != 0U) {
      tmp = aic_inb(p, 27L);
      if ((int )tmp & 1) {
        configure_termination(p);
      } else
      if (((unsigned int )p->chip & 255U) > 3U) {
        configure_termination(p);
      } else {
      }
    } else {
    }
  } else {
  }
  if (((unsigned int )p->features & 8U) != 0U) {
    tmp___0 = aic_inb(p, 31L);
    aic_outb(p, (int )((unsigned int )tmp___0 | 8U), 31L);
    if (((long )p->flags & 16777216L) != 0L || aic7xxx_override_term != -1) {
      tmp___1 = aic_inb(p, 2L);
      term = (unsigned int )tmp___1 & 1U;
    } else {
      term = ((long )p->flags & 2048L) != 0L;
    }
    aic_outb(p, (int )((unsigned char )p->scsi_id_b), 5L);
    scsi_conf = aic_inb(p, 91L);
    aic_outb(p, 136, 1L);
    aic_outb(p, (int )((unsigned char )(((((int )((signed char )scsi_conf) & 32) | (int )((signed char )aic7xxx_seltime)) | (int )((signed char )term)) | 6)),
             2L);
    aic_outb(p, 0, 16L);
    aic_outb(p, 164, 17L);
    aic_outb(p, 0, 4L);
    tmp___2 = aic_inb(p, 31L);
    aic_outb(p, (int )tmp___2 & 247, 31L);
  } else {
  }
  if (((unsigned int )p->features & 2U) != 0U) {
    aic_outb(p, (int )((unsigned char )p->scsi_id), 15L);
  } else {
    aic_outb(p, (int )((unsigned char )p->scsi_id), 5L);
  }
  if (((long )p->flags & 16777216L) != 0L || aic7xxx_override_term != -1) {
    tmp___3 = aic_inb(p, 2L);
    term = (unsigned int )tmp___3 & 1U;
  } else {
    term = ((long )p->flags & 33555456L) != 0L;
  }
  scsi_conf = aic_inb(p, 90L);
  aic_outb(p, 136, 1L);
  aic_outb(p, (int )((unsigned char )(((((int )((signed char )scsi_conf) & 32) | (int )((signed char )aic7xxx_seltime)) | (int )((signed char )term)) | 6)),
           2L);
  aic_outb(p, 0, 16L);
  if (((long )p->flags & 262144L) != 0L) {
    aic_outb(p, 132, 17L);
  } else {
    aic_outb(p, 164, 17L);
  }
  aic_outb(p, 0, 4L);
  if (((unsigned int )p->features & 2U) != 0U) {
    aic_outb(p, 0, 5L);
  } else {
  }
  if (((unsigned int )p->features & 12U) == 0U) {
    max_targets = 8;
  } else {
    max_targets = 16;
  }
  if (aic7xxx_no_reset == 0U) {
    aic_outb(p, 0, 48L);
    aic_outb(p, 0, 49L);
    p->ultraenb = 0U;
  } else {
  }
  array_size = (unsigned long )(p->scb_data)->maxscbs * 32UL;
  if ((unsigned long )(p->scb_data)->hscbs == (unsigned long )((struct aic7xxx_hwscb *)0)) {
    tmp___4 = pci_alloc_consistent(p->pdev, array_size, & (p->scb_data)->hscbs_dma);
    (p->scb_data)->hscbs = (struct aic7xxx_hwscb *)tmp___4;
    (p->scb_data)->hscb_kmalloc_ptr = 0;
    (p->scb_data)->hscbs_dma_len = (unsigned int )array_size;
  } else {
  }
  if ((unsigned long )(p->scb_data)->hscbs == (unsigned long )((struct aic7xxx_hwscb *)0)) {
    printk("(scsi%d) Unable to allocate hardware SCB array; failing detection.\n",
           p->host_no);
    aic_outb(p, 0, 17L);
    p->irq = 0U;
    return (0);
  } else {
  }
  hscb_physaddr = (unsigned int )(p->scb_data)->hscbs_dma;
  aic_outb(p, (int )((unsigned char )hscb_physaddr), 65L);
  aic_outb(p, (int )((unsigned char )(hscb_physaddr >> 8)), 66L);
  aic_outb(p, (int )((unsigned char )(hscb_physaddr >> 16)), 67L);
  aic_outb(p, (int )((unsigned char )(hscb_physaddr >> 24)), 68L);
  tmp___5 = pci_alloc_consistent(p->pdev, 768UL, & p->fifo_dma);
  p->untagged_scbs = (unsigned char volatile *)tmp___5;
  if ((unsigned long )p->untagged_scbs == (unsigned long )((unsigned char volatile *)0)) {
    printk("(scsi%d) Unable to allocate hardware FIFO arrays; failing detection.\n",
           p->host_no);
    p->irq = 0U;
    return (0);
  } else {
  }
  p->qoutfifo = p->untagged_scbs + 256UL;
  p->qinfifo = p->qoutfifo + 256UL;
  i = 0;
  goto ldv_34640;
  ldv_34639:
  *(p->untagged_scbs + (unsigned long )i) = 255U;
  *(p->qinfifo + (unsigned long )i) = 255U;
  *(p->qoutfifo + (unsigned long )i) = 255U;
  i = i + 1;
  ldv_34640: ;
  if (i <= 255) {
    goto ldv_34639;
  } else {
  }
  hscb_physaddr = (unsigned int )p->fifo_dma;
  aic_outb(p, (int )((unsigned char )hscb_physaddr), 69L);
  aic_outb(p, (int )((unsigned char )(hscb_physaddr >> 8)), 70L);
  aic_outb(p, (int )((unsigned char )(hscb_physaddr >> 16)), 71L);
  aic_outb(p, (int )((unsigned char )(hscb_physaddr >> 24)), 72L);
  aic_outb(p, 0, 78L);
  aic_outb(p, 0, 77L);
  aic_outb(p, 0, 79L);
  if (((unsigned int )p->features & 64U) != 0U) {
    aic_outb(p, 6, 250L);
    aic_outb(p, 0, 248L);
    aic_outb(p, 0, 246L);
    aic_outb(p, 0, 244L);
  } else {
  }
  aic_outb(p, 255, 62L);
  aic_outb(p, 255, 63L);
  aic_outb(p, 8, 52L);
  aic_outb(p, 8, 83L);
  aic_outb(p, 0, 73L);
  aic_outb(p, 0, 74L);
  aic_outb(p, 0, 75L);
  aic_outb(p, 0, 76L);
  aic_outb(p, 0, 80L);
  p->next = first_aic7xxx;
  first_aic7xxx = p;
  aic7xxx_allocate_scb(p);
  aic7xxx_loadseq(p);
  tmp___6 = aic_inb(p, 31L);
  aic_outb(p, (int )tmp___6 & 223, 31L);
  if (((unsigned int )p->chip & 255U) == 1U) {
    aic_outb(p, 1, 132L);
  } else {
  }
  if (aic7xxx_no_reset == 0U) {
    if (((unsigned int )p->features & 8U) != 0U) {
      if ((aic7xxx_verbose & 16) != 0) {
        printk("\016(scsi%d) Resetting channel B\n", p->host_no);
      } else {
      }
      tmp___7 = aic_inb(p, 31L);
      aic_outb(p, (int )((unsigned int )tmp___7 | 8U), 31L);
      aic7xxx_reset_current_bus(p);
      tmp___8 = aic_inb(p, 31L);
      aic_outb(p, (int )tmp___8 & 247, 31L);
    } else {
    }
    if ((aic7xxx_verbose & 16) != 0) {
      channel___0 = (char *)"";
      if (((long )p->flags & 4194304L) != 0L) {
        channel___0 = (char *)" A";
        if (((long )p->flags & 96L) != 0L) {
          channel___0 = ((long )p->flags & 32L) != 0L ? (char *)" B" : (char *)" C";
        } else {
        }
      } else {
      }
      printk("\016(scsi%d) Resetting channel%s\n", p->host_no, channel___0);
    } else {
    }
    aic7xxx_reset_current_bus(p);
  } else
  if (reset_delay == 0) {
    printk("\016(scsi%d) Not resetting SCSI bus.  Note: Don\'t use the no_reset\n",
           p->host_no);
    printk("\016(scsi%d) option unless you have a verifiable need for it.\n", p->host_no);
  } else {
  }
  if (((unsigned int )p->chip & 1024U) == 0U) {
    result = request_irq(p->irq, & do_aic7xxx_isr, 0UL, "aic7xxx", (void *)p);
  } else {
    result = request_irq(p->irq, & do_aic7xxx_isr, 128UL, "aic7xxx", (void *)p);
    if (result < 0) {
      result = request_irq(p->irq, & do_aic7xxx_isr, 160UL, "aic7xxx", (void *)p);
    } else {
    }
  }
  if (result < 0) {
    printk("\f(scsi%d) Couldn\'t register IRQ %d, ignoring controller.\n", p->host_no,
           p->irq);
    aic_outb(p, 0, 17L);
    p->irq = 0U;
    return (0);
  } else {
  }
  tmp___9 = aic_inb(p, 145L);
  if (((int )tmp___9 & 15) != 0) {
    printk("\016(scsi%d:%d:%d:%d) spurious interrupt during configuration, cleared.\n",
           p->host_no, -1, -1, -1);
  } else {
  }
  aic7xxx_clear_intstat(p);
  unpause_sequencer(p, 1);
  return (found);
}
}
static int aic7xxx_chip_reset(struct aic7xxx_host *p )
{
  unsigned char sblkctl ;
  int wait ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  aic_outb(p, 5, 135L);
  wait = 1000;
  goto ldv_34649;
  ldv_34648:
  __const_udelay(4295UL);
  ldv_34649:
  wait = wait - 1;
  if (wait != 0) {
    tmp = aic_inb(p, 135L);
    if (((int )tmp & 1) == 0) {
      goto ldv_34648;
    } else {
      goto ldv_34650;
    }
  } else {
  }
  ldv_34650:
  pause_sequencer(p);
  tmp___0 = aic_inb(p, 31L);
  sblkctl = (unsigned int )tmp___0 & 10U;
  if (((unsigned int )p->chip & 1024U) != 0U) {
    sblkctl = (unsigned int )sblkctl & 247U;
  } else {
  }
  switch ((int )sblkctl) {
  case 0: ;
  goto ldv_34652;
  case 2:
  p->features = (ahc_feature )((unsigned int )p->features | 4U);
  goto ldv_34652;
  case 8:
  p->features = (ahc_feature )((unsigned int )p->features | 8U);
  p->flags = (long )p->flags | 4194304L;
  goto ldv_34652;
  default:
  tmp___1 = aic_inb(p, 31L);
  printk("\faic7xxx: Unsupported adapter type %d, ignoring.\n", (int )tmp___1 & 10);
  return (-1);
  }
  ldv_34652: ;
  return (0);
}
}
static struct aic7xxx_host *aic7xxx_alloc(struct scsi_host_template *sht , struct aic7xxx_host *temp )
{
  struct aic7xxx_host *p ;
  struct Scsi_Host *host ;
  void *tmp ;
  {
  p = 0;
  host = scsi_register(sht, 408);
  if ((unsigned long )host != (unsigned long )((struct Scsi_Host *)0)) {
    p = (struct aic7xxx_host *)(& host->hostdata);
    memset((void *)p, 0, 408UL);
    *p = *temp;
    p->host = host;
    tmp = kzalloc(2096UL, 32U);
    p->scb_data = (scb_data_type *)tmp;
    if ((unsigned long )p->scb_data != (unsigned long )((scb_data_type *)0)) {
      scbq_init((scb_queue_type volatile *)(& (p->scb_data)->free_scbs));
    } else {
      __release_region(& ioport_resource, (resource_size_t )p->base, 255ULL);
      scsi_unregister(host);
      return (0);
    }
    p->host_no = (int )host->host_no;
  } else {
  }
  return (p);
}
}
static void aic7xxx_free(struct aic7xxx_host *p )
{
  int i ;
  struct aic7xxx_scb_dma *scb_dma ;
  {
  if ((unsigned long )p->scb_data != (unsigned long )((scb_data_type *)0)) {
    scb_dma = 0;
    if ((unsigned long )(p->scb_data)->hscbs != (unsigned long )((struct aic7xxx_hwscb *)0)) {
      pci_free_consistent(p->pdev, (size_t )(p->scb_data)->hscbs_dma_len, (void *)(p->scb_data)->hscbs,
                          (p->scb_data)->hscbs_dma);
      (p->scb_data)->hscb_kmalloc_ptr = 0;
      (p->scb_data)->hscbs = 0;
    } else {
    }
    i = 0;
    goto ldv_34668;
    ldv_34667: ;
    if ((unsigned long )((p->scb_data)->scb_array[i])->scb_dma != (unsigned long )scb_dma) {
      scb_dma = ((p->scb_data)->scb_array[i])->scb_dma;
      pci_free_consistent(p->pdev, (size_t )scb_dma->dma_len, (void *)((unsigned long )scb_dma->dma_address - scb_dma->dma_offset),
                          scb_dma->dma_address);
    } else {
    }
    kfree((void const *)((p->scb_data)->scb_array[i])->kmalloc_ptr);
    (p->scb_data)->scb_array[i] = 0;
    i = i + 1;
    ldv_34668: ;
    if ((int )(p->scb_data)->numscbs > i) {
      goto ldv_34667;
    } else {
    }
    kfree((void const *)p->scb_data);
  } else {
  }
  pci_free_consistent(p->pdev, 768UL, (void *)p->untagged_scbs, p->fifo_dma);
  return;
}
}
static void aic7xxx_load_seeprom(struct aic7xxx_host *p , unsigned char *sxfrctl1 )
{
  int have_seeprom ;
  int i ;
  int max_targets ;
  int mask ;
  unsigned char scsirate ;
  unsigned char scsi_conf ;
  unsigned short scarray[128U] ;
  struct seeprom_config *sc ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  int tmp___1 ;
  unsigned char tmp___2 ;
  size_t __len ;
  void *__ret ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  unsigned char tmp___9 ;
  unsigned char tmp___10 ;
  unsigned char tmp___11 ;
  unsigned char tmp___12 ;
  unsigned int tmp___13 ;
  unsigned int tmp___14 ;
  short ultraenb ;
  unsigned char tmp___15 ;
  unsigned char tmp___16 ;
  unsigned int tmp___17 ;
  unsigned int tmp___18 ;
  unsigned char tmp___19 ;
  unsigned char tmp___20 ;
  {
  have_seeprom = 0;
  sc = (struct seeprom_config *)(& scarray);
  if ((aic7xxx_verbose & 16) != 0) {
    printk("\016aic7xxx: Loading serial EEPROM...");
  } else {
  }
  switch ((unsigned int )p->chip) {
  case 513U:
  tmp = aic_inb(p, 90L);
  if ((int )((signed char )tmp) < 0) {
    p->flags = (long )p->flags | 1024L;
  } else {
  }
  if (((unsigned int )p->features & 8U) != 0U) {
    tmp___0 = aic_inb(p, 91L);
    if ((int )((signed char )tmp___0) < 0) {
      p->flags = (long )p->flags | 2048L;
    } else {
    }
  } else {
  }
  goto ldv_34683;
  case 257U:
  have_seeprom = read_284x_seeprom(p, (struct seeprom_config *)(& scarray));
  goto ldv_34683;
  default:
  have_seeprom = read_seeprom(p, (int )p->flags & 96, (unsigned short *)(& scarray),
                              (unsigned int )p->sc_size, (seeprom_chip_type )p->sc_type);
  if (have_seeprom == 0) {
    if ((unsigned int )p->sc_type == 6U) {
      have_seeprom = read_seeprom(p, (int )p->flags & 96, (unsigned short *)(& scarray),
                                  (unsigned int )p->sc_size, 8);
    } else {
      have_seeprom = read_seeprom(p, (int )p->flags & 96, (unsigned short *)(& scarray),
                                  (unsigned int )p->sc_size, 6);
    }
  } else {
  }
  if (have_seeprom == 0) {
    p->sc_size = 128U;
    have_seeprom = read_seeprom(p, (int )(((unsigned int )p->flags & 96U) * 4U), (unsigned short *)(& scarray),
                                (unsigned int )p->sc_size, (seeprom_chip_type )p->sc_type);
    if (have_seeprom == 0) {
      if ((unsigned int )p->sc_type == 6U) {
        have_seeprom = read_seeprom(p, (int )(((unsigned int )p->flags & 96U) * 4U),
                                    (unsigned short *)(& scarray), (unsigned int )p->sc_size,
                                    8);
      } else {
        have_seeprom = read_seeprom(p, (int )(((unsigned int )p->flags & 96U) * 4U),
                                    (unsigned short *)(& scarray), (unsigned int )p->sc_size,
                                    6);
      }
    } else {
    }
  } else {
  }
  goto ldv_34683;
  }
  ldv_34683: ;
  if (have_seeprom == 0) {
    if ((aic7xxx_verbose & 16) != 0) {
      printk("\naic7xxx: No SEEPROM available.\n");
    } else {
    }
    p->flags = (long )p->flags | 16384L;
    tmp___2 = aic_inb(p, 0L);
    if ((unsigned int )tmp___2 == 0U) {
      p->flags = (long )p->flags | 4L;
      p->flags = (long )p->flags & -8388609L;
      tmp___1 = 7;
      p->scsi_id_b = tmp___1;
      p->scsi_id = tmp___1;
      *sxfrctl1 = (unsigned int )*sxfrctl1 | 1U;
      if ((aic7xxx_verbose & 16) != 0) {
        printk("aic7xxx: Using default values.\n");
      } else {
      }
    } else
    if ((aic7xxx_verbose & 16) != 0) {
      printk("aic7xxx: Using leftover BIOS values.\n");
    } else {
    }
    if (((unsigned int )p->chip & 4294967040U) == 1024U && (int )*sxfrctl1 & 1) {
      p->flags = (long )p->flags | 3072L;
      sc->adapter_control = (unsigned int )sc->adapter_control & 65534U;
      sc->adapter_control = (unsigned int )sc->adapter_control | 2060U;
    } else {
    }
    if (aic7xxx_extended != 0U) {
      p->flags = (long )p->flags | 768L;
    } else {
      p->flags = (long )p->flags & -769L;
    }
  } else {
    if ((aic7xxx_verbose & 16) != 0) {
      printk("done\n");
    } else {
    }
    p->flags = (long )p->flags | 16777216L;
    *sxfrctl1 = 0U;
    p->scsi_id = (int )sc->brtime_id & 15;
    if (((unsigned int )p->chip & 255U) == 1U) {
      if (((int )sc->bios_control & 32) != 0) {
        p->flags = (long )p->flags | 256L;
      } else {
      }
      if (((int )sc->adapter_control & 32) != 0) {
        *sxfrctl1 = (unsigned int )*sxfrctl1 | 1U;
        p->flags = (long )p->flags | 3072L;
      } else {
      }
    } else {
      if (((int )sc->bios_control & 128) != 0) {
        p->flags = (long )p->flags | 256L;
      } else {
      }
      if (((int )sc->bios_control & 4) != 0) {
        p->flags = (long )p->flags | 8388608L;
      } else {
        p->flags = (long )p->flags & -8388609L;
      }
      if (((int )sc->adapter_control & 4) != 0) {
        *sxfrctl1 = (unsigned int )*sxfrctl1 | 1U;
        p->flags = (long )p->flags | 3072L;
      } else {
      }
    }
    __len = 64UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& p->sc), (void const *)sc, __len);
    } else {
      __ret = memcpy((void *)(& p->sc), (void const *)sc, __len);
    }
  }
  p->discenable = 0U;
  max_targets = ((unsigned int )p->features & 12U) != 0U ? 16 : 8;
  if (have_seeprom != 0) {
    i = 0;
    goto ldv_34691;
    ldv_34690: ;
    if ((((int )p->features & 1 && ((int )sc->adapter_control & 2) == 0) && ((int )sc->device_flags[i] & 64) != 0) || ((int )sc->device_flags[i] & 128) != 0) {
      p->flags = (long )p->flags | 16384L;
      goto ldv_34689;
    } else {
    }
    i = i + 1;
    ldv_34691: ;
    if (i < max_targets) {
      goto ldv_34690;
    } else {
    }
    ldv_34689: ;
  } else {
  }
  i = 0;
  goto ldv_34694;
  ldv_34693:
  mask = 1 << i;
  if (have_seeprom == 0) {
    tmp___12 = aic_inb(p, 0L);
    if ((unsigned int )tmp___12 != 0U) {
      tmp___3 = aic_inb(p, 50L);
      tmp___4 = aic_inb(p, 51L);
      p->discenable = ~ ((int )((unsigned short )((int )((short )tmp___3) | (int )((short )((int )tmp___4 << 8)))));
      tmp___5 = aic_inb(p, 48L);
      tmp___6 = aic_inb(p, 49L);
      p->ultraenb = (unsigned short )((int )((short )tmp___5) | (int )((short )((int )tmp___6 << 8)));
      sc->device_flags[i] = ((int )p->discenable & mask) != 0 ? 16U : 0U;
      tmp___7 = aic_inb(p, (long )(i + 32));
      if ((int )((signed char )tmp___7) < 0) {
        sc->device_flags[i] = (unsigned int )sc->device_flags[i] | 32U;
      } else {
      }
      if (((unsigned int )p->features & 2U) != 0U) {
        tmp___11 = aic_inb(p, (long )(i + 112));
        if ((unsigned int )tmp___11 != 0U) {
          sc->device_flags[i] = (unsigned int )sc->device_flags[i] | 8U;
          tmp___8 = aic_inb(p, (long )(i + 32));
          sc->device_flags[i] = (unsigned short )((int )((short )sc->device_flags[i]) | ((int )((short )tmp___8) & 7));
          tmp___9 = aic_inb(p, (long )(i + 32));
          if (((int )tmp___9 & 24) == 24) {
            sc->device_flags[i] = (unsigned int )sc->device_flags[i] | 64U;
          } else {
          }
        } else {
          tmp___10 = aic_inb(p, (long )(i + 32));
          if (((int )tmp___10 & -129) != 0) {
            sc->device_flags[i] = (unsigned int )sc->device_flags[i] | 8U;
            if ((int )p->features & 1) {
              sc->device_flags[i] = (unsigned short )((int )((short )sc->device_flags[i]) | (((int )p->ultraenb & mask) != 0 ? 64 : 0));
            } else {
            }
          } else {
          }
        }
      } else {
      }
    } else {
      sc->device_flags[i] = 16U;
      if (((unsigned int )p->features & 4U) != 0U) {
        sc->device_flags[i] = (unsigned int )sc->device_flags[i] | 32U;
      } else {
      }
      if (((unsigned int )p->features & 512U) != 0U) {
        sc->device_flags[i] = (unsigned int )sc->device_flags[i] | 2U;
      } else
      if (((unsigned int )p->features & 2U) != 0U) {
        sc->device_flags[i] = (unsigned int )sc->device_flags[i] | 3U;
      } else
      if ((int )p->features & 1) {
        sc->device_flags[i] = (unsigned int )sc->device_flags[i] | 64U;
      } else {
      }
      sc->device_flags[i] = (unsigned int )sc->device_flags[i] | 8U;
      aic_outb(p, 0, (long )(i + 32));
      if (((unsigned int )p->features & 2U) != 0U) {
        aic_outb(p, 0, (long )(i + 112));
      } else {
      }
    }
  } else {
  }
  if (((int )sc->device_flags[i] & 16) != 0) {
    p->discenable = (unsigned short )((int )((short )p->discenable) | (int )((short )mask));
  } else {
  }
  if (((long )p->flags & 16384L) != 0L) {
    if (((unsigned int )p->features & 2U) == 0U) {
      if (((int )sc->device_flags[i] & 128) != 0 && ((int )sc->device_flags[i] & 7) == 3) {
        sc->device_flags[i] = (unsigned int )sc->device_flags[i] & 65528U;
        sc->device_flags[i] = (unsigned int )sc->device_flags[i] | 64U;
      } else {
      }
      if (((int )sc->device_flags[i] & 64) != 0) {
        p->ultraenb = (unsigned short )((int )((short )p->ultraenb) | (int )((short )mask));
      } else {
      }
    } else
    if ((((int )sc->device_flags[i] & 128) == 0 && ((unsigned int )p->features & 2U) != 0U) && ((int )sc->device_flags[i] & 64) != 0) {
      p->ultraenb = (unsigned short )((int )((short )p->ultraenb) | (int )((short )mask));
    } else
    if (((int )sc->adapter_control & 2) != 0) {
      p->ultraenb = (unsigned short )((int )((short )p->ultraenb) | (int )((short )mask));
    } else {
    }
  } else {
  }
  if (((int )sc->device_flags[i] & 8) == 0) {
    sc->device_flags[i] = (unsigned int )sc->device_flags[i] & 65528U;
    p->ultraenb = (unsigned short )((int )((short )p->ultraenb) & ~ ((int )((short )mask)));
    p->user[i].offset = 0U;
    p->user[i].period = 0U;
    p->user[i].options = 0U;
  } else
  if (((unsigned int )p->features & 512U) != 0U) {
    p->user[i].offset = 127U;
    if (((int )sc->device_flags[i] & 7) <= 2) {
      scsirate = (unsigned int )((unsigned char )sc->device_flags[i]) & 7U;
      p->user[i].options = 2U;
    } else {
      scsirate = (unsigned char )(((int )((signed char )sc->device_flags[i]) & 7) | (((int )p->ultraenb & mask) != 0 ? 24 : 16));
      p->user[i].options = 0U;
    }
    tmp___13 = aic7xxx_find_period(p, (unsigned int )scsirate, 0U);
    p->user[i].period = (unsigned char )tmp___13;
  } else
  if (((unsigned int )p->features & 2U) != 0U) {
    p->user[i].offset = 127U;
    scsirate = (unsigned char )(((int )((signed char )sc->device_flags[i]) & 7) | (((int )p->ultraenb & mask) != 0 ? 24 : 16));
    p->user[i].options = 0U;
    tmp___14 = aic7xxx_find_period(p, (unsigned int )scsirate, 1U);
    p->user[i].period = (unsigned char )tmp___14;
  } else {
    scsirate = ((unsigned int )((unsigned char )sc->device_flags[i]) & 7U) << 4U;
    p->user[i].options = 0U;
    p->user[i].offset = 15U;
    if ((int )p->features & 1) {
      tmp___15 = aic_inb(p, 48L);
      tmp___16 = aic_inb(p, 49L);
      ultraenb = (int )((short )tmp___15) | (int )((short )((int )tmp___16 << 8));
      tmp___17 = aic7xxx_find_period(p, (unsigned int )scsirate, ((int )p->ultraenb & mask) != 0 ? 3U : 6U);
      p->user[i].period = (unsigned char )tmp___17;
    } else {
      tmp___18 = aic7xxx_find_period(p, (unsigned int )scsirate, 6U);
      p->user[i].period = (unsigned char )tmp___18;
    }
  }
  if (((int )sc->device_flags[i] & 32) != 0 && ((unsigned int )p->features & 4U) != 0U) {
    p->user[i].width = 1U;
  } else {
    p->user[i].width = 0U;
  }
  i = i + 1;
  ldv_34694: ;
  if (i < max_targets) {
    goto ldv_34693;
  } else {
  }
  aic_outb(p, ~ ((int )((unsigned char )p->discenable)), 50L);
  aic_outb(p, ~ ((int )((unsigned char )((int )p->discenable >> 8))), 51L);
  if ((int )p->features & 1) {
    tmp___19 = aic_inb(p, 48L);
    tmp___20 = aic_inb(p, 49L);
    p->ultraenb = (unsigned short )((int )((short )tmp___19) | (int )((short )((int )tmp___20 << 8)));
  } else {
  }
  scsi_conf = (unsigned int )((unsigned char )p->scsi_id) & 7U;
  if (have_seeprom != 0) {
    p->adapter_control = sc->adapter_control;
    p->bios_control = sc->bios_control;
    switch ((unsigned int )p->chip & 255U) {
    case 7U: ;
    case 8U: ;
    case 10U: ;
    if (((int )p->adapter_control & 256) != 0) {
      p->flags = (long )p->flags | 2L;
    } else {
    }
    default: ;
    goto ldv_34700;
    }
    ldv_34700: ;
    if (((int )sc->adapter_control & 16) != 0) {
      scsi_conf = (unsigned int )scsi_conf | 32U;
    } else {
    }
  } else {
    scsi_conf = (unsigned int )scsi_conf | 96U;
  }
  if (((unsigned int )p->chip & 4294967040U) == 1024U) {
    aic_outb(p, (int )scsi_conf, 90L);
    aic_outb(p, (int )((unsigned char )p->scsi_id), 91L);
  } else {
  }
  return;
}
}
static void aic7xxx_configure_bugs(struct aic7xxx_host *p )
{
  unsigned short tmp_word ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  switch ((unsigned int )p->chip & 255U) {
  case 3U:
  p->bugs = (ahc_bugs )((unsigned int )p->bugs | 16U);
  case 2U: ;
  case 4U:
  p->bugs = (ahc_bugs )((unsigned int )p->bugs | 37U);
  goto ldv_34708;
  case 5U:
  p->bugs = (ahc_bugs )((unsigned int )p->bugs | 53U);
  goto ldv_34708;
  case 6U:
  p->bugs = (ahc_bugs )((unsigned int )p->bugs | 6U);
  goto ldv_34708;
  case 9U:
  p->bugs = (ahc_bugs )((unsigned int )p->bugs | 64U);
  goto ldv_34708;
  case 7U:
  p->bugs = (ahc_bugs )((unsigned int )p->bugs | 53U);
  goto ldv_34708;
  case 8U:
  p->bugs = (ahc_bugs )((unsigned int )p->bugs | 8U);
  goto ldv_34708;
  case 10U:
  p->bugs = (ahc_bugs )((unsigned int )p->bugs | 64U);
  goto ldv_34708;
  default: ;
  goto ldv_34708;
  }
  ldv_34708:
  pci_read_config_word((struct pci_dev const *)p->pdev, 4, & tmp_word);
  if (((unsigned int )p->bugs & 32U) != 0U) {
    tmp_word = (unsigned int )tmp_word & 65519U;
  } else {
    tmp_word = (unsigned int )tmp_word | 16U;
  }
  pci_write_config_word((struct pci_dev const *)p->pdev, 4, (int )tmp_word);
  if (((unsigned int )p->bugs & 4U) != 0U) {
    tmp = aic_inb(p, 132L);
    aic_outb(p, (int )tmp & 127, 132L);
  } else
  if (((unsigned int )p->bugs & 8U) != 0U) {
    tmp___0 = aic_inb(p, 132L);
    aic_outb(p, (int )((unsigned int )tmp___0 | 128U), 132L);
  } else {
  }
  return;
}
}
static int aic7xxx_detect(struct scsi_host_template *template )
{
  struct aic7xxx_host *temp_p ;
  struct aic7xxx_host *current_p ;
  struct aic7xxx_host *list_p ;
  int found ;
  unsigned char sxfrctl1 ;
  struct __anonstruct_aic_pdevs_203 aic_pdevs[40U] ;
  unsigned short command ;
  unsigned int devconfig ;
  unsigned int i ;
  unsigned int oldverbose ;
  struct pci_dev *pdev ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  int tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  unsigned char tmp___9 ;
  unsigned char tmp___10 ;
  unsigned char tmp___11 ;
  unsigned char tmp___12 ;
  unsigned char tmp___13 ;
  unsigned char tmp___14 ;
  unsigned char tmp___15 ;
  void *tmp___16 ;
  struct aic7xxx_host *sort_list[4U] ;
  struct aic7xxx_host *vlb ;
  struct aic7xxx_host *pci ;
  struct aic7xxx_host *prev_p ;
  struct aic7xxx_host *p ;
  unsigned char left ;
  int i___0 ;
  int tmp___17 ;
  {
  temp_p = 0;
  current_p = 0;
  list_p = 0;
  found = 0;
  if ((unsigned long )aic7xxx != (unsigned long )((char *)0)) {
    aic7xxx_setup(aic7xxx);
  } else {
  }
  template->proc_name = "aic7xxx";
  template->sg_tablesize = 128U;
  aic_pdevs[0].vendor_id = 36868U;
  aic_pdevs[0].device_id = 4216U;
  aic_pdevs[0].chip = 0;
  aic_pdevs[0].flags = 0;
  aic_pdevs[0].features = 0;
  aic_pdevs[0].board_name_index = 1;
  aic_pdevs[0].seeprom_size = 32U;
  aic_pdevs[0].seeprom_type = 6U;
  aic_pdevs[1].vendor_id = 36868U;
  aic_pdevs[1].device_id = 20600U;
  aic_pdevs[1].chip = 2;
  aic_pdevs[1].flags = 1;
  aic_pdevs[1].features = 256;
  aic_pdevs[1].board_name_index = 5;
  aic_pdevs[1].seeprom_size = 32U;
  aic_pdevs[1].seeprom_type = 6U;
  aic_pdevs[2].vendor_id = 36868U;
  aic_pdevs[2].device_id = 21880U;
  aic_pdevs[2].chip = 2;
  aic_pdevs[2].flags = 1;
  aic_pdevs[2].features = 256;
  aic_pdevs[2].board_name_index = 6;
  aic_pdevs[2].seeprom_size = 32U;
  aic_pdevs[2].seeprom_type = 6U;
  aic_pdevs[3].vendor_id = 36868U;
  aic_pdevs[3].device_id = 8568U;
  aic_pdevs[3].chip = 3;
  aic_pdevs[3].flags = 8404993;
  aic_pdevs[3].features = 257;
  aic_pdevs[3].board_name_index = 7;
  aic_pdevs[3].seeprom_size = 32U;
  aic_pdevs[3].seeprom_type = 6U;
  aic_pdevs[4].vendor_id = 36868U;
  aic_pdevs[4].device_id = 24632U;
  aic_pdevs[4].chip = 3;
  aic_pdevs[4].flags = 8404993;
  aic_pdevs[4].features = 257;
  aic_pdevs[4].board_name_index = 7;
  aic_pdevs[4].seeprom_size = 32U;
  aic_pdevs[4].seeprom_type = 6U;
  aic_pdevs[5].vendor_id = 36868U;
  aic_pdevs[5].device_id = 14432U;
  aic_pdevs[5].chip = 3;
  aic_pdevs[5].flags = 8404993;
  aic_pdevs[5].features = 257;
  aic_pdevs[5].board_name_index = 7;
  aic_pdevs[5].seeprom_size = 32U;
  aic_pdevs[5].seeprom_type = 6U;
  aic_pdevs[6].vendor_id = 36868U;
  aic_pdevs[6].device_id = 14432U;
  aic_pdevs[6].chip = 3;
  aic_pdevs[6].flags = 8404993;
  aic_pdevs[6].features = 257;
  aic_pdevs[6].board_name_index = 7;
  aic_pdevs[6].seeprom_size = 32U;
  aic_pdevs[6].seeprom_type = 6U;
  aic_pdevs[7].vendor_id = 36868U;
  aic_pdevs[7].device_id = 24696U;
  aic_pdevs[7].chip = 3;
  aic_pdevs[7].flags = 8536065;
  aic_pdevs[7].features = 257;
  aic_pdevs[7].board_name_index = 7;
  aic_pdevs[7].seeprom_size = 32U;
  aic_pdevs[7].seeprom_type = 6U;
  aic_pdevs[8].vendor_id = 36868U;
  aic_pdevs[8].device_id = 24952U;
  aic_pdevs[8].chip = 3;
  aic_pdevs[8].flags = 8404993;
  aic_pdevs[8].features = 257;
  aic_pdevs[8].board_name_index = 8;
  aic_pdevs[8].seeprom_size = 32U;
  aic_pdevs[8].seeprom_type = 6U;
  aic_pdevs[9].vendor_id = 36868U;
  aic_pdevs[9].device_id = 28792U;
  aic_pdevs[9].chip = 4;
  aic_pdevs[9].flags = 8519681;
  aic_pdevs[9].features = 0;
  aic_pdevs[9].board_name_index = 9;
  aic_pdevs[9].seeprom_size = 32U;
  aic_pdevs[9].seeprom_type = 6U;
  aic_pdevs[10].vendor_id = 36868U;
  aic_pdevs[10].device_id = 29048U;
  aic_pdevs[10].chip = 4;
  aic_pdevs[10].flags = 8388609;
  aic_pdevs[10].features = 0;
  aic_pdevs[10].board_name_index = 10;
  aic_pdevs[10].seeprom_size = 32U;
  aic_pdevs[10].seeprom_type = 6U;
  aic_pdevs[11].vendor_id = 36868U;
  aic_pdevs[11].device_id = 29304U;
  aic_pdevs[11].chip = 4;
  aic_pdevs[11].flags = 12582913;
  aic_pdevs[11].features = 0;
  aic_pdevs[11].board_name_index = 11;
  aic_pdevs[11].seeprom_size = 32U;
  aic_pdevs[11].seeprom_type = 8U;
  aic_pdevs[12].vendor_id = 36868U;
  aic_pdevs[12].device_id = 29560U;
  aic_pdevs[12].chip = 4;
  aic_pdevs[12].flags = 12582913;
  aic_pdevs[12].features = 0;
  aic_pdevs[12].board_name_index = 12;
  aic_pdevs[12].seeprom_size = 32U;
  aic_pdevs[12].seeprom_type = 8U;
  aic_pdevs[13].vendor_id = 36868U;
  aic_pdevs[13].device_id = 29816U;
  aic_pdevs[13].chip = 4;
  aic_pdevs[13].flags = 8388609;
  aic_pdevs[13].features = 0;
  aic_pdevs[13].board_name_index = 13;
  aic_pdevs[13].seeprom_size = 32U;
  aic_pdevs[13].seeprom_type = 6U;
  aic_pdevs[14].vendor_id = 36868U;
  aic_pdevs[14].device_id = 32888U;
  aic_pdevs[14].chip = 5;
  aic_pdevs[14].flags = 8519681;
  aic_pdevs[14].features = 1;
  aic_pdevs[14].board_name_index = 14;
  aic_pdevs[14].seeprom_size = 32U;
  aic_pdevs[14].seeprom_type = 6U;
  aic_pdevs[15].vendor_id = 36868U;
  aic_pdevs[15].device_id = 33144U;
  aic_pdevs[15].chip = 5;
  aic_pdevs[15].flags = 8388609;
  aic_pdevs[15].features = 1;
  aic_pdevs[15].board_name_index = 15;
  aic_pdevs[15].seeprom_size = 32U;
  aic_pdevs[15].seeprom_type = 6U;
  aic_pdevs[16].vendor_id = 36868U;
  aic_pdevs[16].device_id = 33400U;
  aic_pdevs[16].chip = 5;
  aic_pdevs[16].flags = 12582913;
  aic_pdevs[16].features = 1;
  aic_pdevs[16].board_name_index = 16;
  aic_pdevs[16].seeprom_size = 32U;
  aic_pdevs[16].seeprom_type = 8U;
  aic_pdevs[17].vendor_id = 36868U;
  aic_pdevs[17].device_id = 33656U;
  aic_pdevs[17].chip = 5;
  aic_pdevs[17].flags = 12582913;
  aic_pdevs[17].features = 1;
  aic_pdevs[17].board_name_index = 17;
  aic_pdevs[17].seeprom_size = 32U;
  aic_pdevs[17].seeprom_type = 8U;
  aic_pdevs[18].vendor_id = 36868U;
  aic_pdevs[18].device_id = 33912U;
  aic_pdevs[18].chip = 5;
  aic_pdevs[18].flags = 8388609;
  aic_pdevs[18].features = 1;
  aic_pdevs[18].board_name_index = 18;
  aic_pdevs[18].seeprom_size = 32U;
  aic_pdevs[18].seeprom_type = 6U;
  aic_pdevs[19].vendor_id = 36868U;
  aic_pdevs[19].device_id = 34168U;
  aic_pdevs[19].chip = 5;
  aic_pdevs[19].flags = 8388609;
  aic_pdevs[19].features = 1;
  aic_pdevs[19].board_name_index = 18;
  aic_pdevs[19].seeprom_size = 32U;
  aic_pdevs[19].seeprom_type = 6U;
  aic_pdevs[20].vendor_id = 36868U;
  aic_pdevs[20].device_id = 34424U;
  aic_pdevs[20].chip = 5;
  aic_pdevs[20].flags = 8388609;
  aic_pdevs[20].features = 1;
  aic_pdevs[20].board_name_index = 18;
  aic_pdevs[20].seeprom_size = 32U;
  aic_pdevs[20].seeprom_type = 6U;
  aic_pdevs[21].vendor_id = 36868U;
  aic_pdevs[21].device_id = 34680U;
  aic_pdevs[21].chip = 5;
  aic_pdevs[21].flags = 8388609;
  aic_pdevs[21].features = 1025;
  aic_pdevs[21].board_name_index = 19;
  aic_pdevs[21].seeprom_size = 32U;
  aic_pdevs[21].seeprom_type = 6U;
  aic_pdevs[22].vendor_id = 36868U;
  aic_pdevs[22].device_id = 34936U;
  aic_pdevs[22].chip = 5;
  aic_pdevs[22].flags = 8388609;
  aic_pdevs[22].features = 1;
  aic_pdevs[22].board_name_index = 18;
  aic_pdevs[22].seeprom_size = 32U;
  aic_pdevs[22].seeprom_type = 6U;
  aic_pdevs[23].vendor_id = 36868U;
  aic_pdevs[23].device_id = 30869U;
  aic_pdevs[23].chip = 7;
  aic_pdevs[23].flags = 12599297;
  aic_pdevs[23].features = 49;
  aic_pdevs[23].board_name_index = 20;
  aic_pdevs[23].seeprom_size = 32U;
  aic_pdevs[23].seeprom_type = 8U;
  aic_pdevs[24].vendor_id = 36869U;
  aic_pdevs[24].device_id = 31U;
  aic_pdevs[24].chip = 6;
  aic_pdevs[24].flags = 8404993;
  aic_pdevs[24].features = 1266;
  aic_pdevs[24].board_name_index = 21;
  aic_pdevs[24].seeprom_size = 32U;
  aic_pdevs[24].seeprom_type = 6U;
  aic_pdevs[25].vendor_id = 36869U;
  aic_pdevs[25].device_id = 19U;
  aic_pdevs[25].chip = 6;
  aic_pdevs[25].flags = 8404993;
  aic_pdevs[25].features = 1266;
  aic_pdevs[25].board_name_index = 21;
  aic_pdevs[25].seeprom_size = 32U;
  aic_pdevs[25].seeprom_type = 6U;
  aic_pdevs[26].vendor_id = 36869U;
  aic_pdevs[26].device_id = 17U;
  aic_pdevs[26].chip = 6;
  aic_pdevs[26].flags = 8404993;
  aic_pdevs[26].features = 1266;
  aic_pdevs[26].board_name_index = 22;
  aic_pdevs[26].seeprom_size = 32U;
  aic_pdevs[26].seeprom_type = 6U;
  aic_pdevs[27].vendor_id = 36869U;
  aic_pdevs[27].device_id = 16U;
  aic_pdevs[27].chip = 6;
  aic_pdevs[27].flags = 8404993;
  aic_pdevs[27].features = 1266;
  aic_pdevs[27].board_name_index = 23;
  aic_pdevs[27].seeprom_size = 32U;
  aic_pdevs[27].seeprom_type = 6U;
  aic_pdevs[28].vendor_id = 36869U;
  aic_pdevs[28].device_id = 95U;
  aic_pdevs[28].chip = 8;
  aic_pdevs[28].flags = 12599297;
  aic_pdevs[28].features = 1266;
  aic_pdevs[28].board_name_index = 24;
  aic_pdevs[28].seeprom_size = 32U;
  aic_pdevs[28].seeprom_type = 8U;
  aic_pdevs[29].vendor_id = 36869U;
  aic_pdevs[29].device_id = 80U;
  aic_pdevs[29].chip = 8;
  aic_pdevs[29].flags = 12599297;
  aic_pdevs[29].features = 1266;
  aic_pdevs[29].board_name_index = 25;
  aic_pdevs[29].seeprom_size = 32U;
  aic_pdevs[29].seeprom_type = 8U;
  aic_pdevs[30].vendor_id = 36869U;
  aic_pdevs[30].device_id = 81U;
  aic_pdevs[30].chip = 8;
  aic_pdevs[30].flags = 12599297;
  aic_pdevs[30].features = 1266;
  aic_pdevs[30].board_name_index = 26;
  aic_pdevs[30].seeprom_size = 32U;
  aic_pdevs[30].seeprom_type = 8U;
  aic_pdevs[31].vendor_id = 36868U;
  aic_pdevs[31].device_id = 24693U;
  aic_pdevs[31].chip = 3;
  aic_pdevs[31].flags = 8667137;
  aic_pdevs[31].features = 257;
  aic_pdevs[31].board_name_index = 27;
  aic_pdevs[31].seeprom_size = 32U;
  aic_pdevs[31].seeprom_type = 6U;
  aic_pdevs[32].vendor_id = 36869U;
  aic_pdevs[32].device_id = 128U;
  aic_pdevs[32].chip = 9;
  aic_pdevs[32].flags = 8404993;
  aic_pdevs[32].features = 1778;
  aic_pdevs[32].board_name_index = 28;
  aic_pdevs[32].seeprom_size = 32U;
  aic_pdevs[32].seeprom_type = 6U;
  aic_pdevs[33].vendor_id = 36869U;
  aic_pdevs[33].device_id = 129U;
  aic_pdevs[33].chip = 9;
  aic_pdevs[33].flags = 8404993;
  aic_pdevs[33].features = 1778;
  aic_pdevs[33].board_name_index = 28;
  aic_pdevs[33].seeprom_size = 32U;
  aic_pdevs[33].seeprom_type = 6U;
  aic_pdevs[34].vendor_id = 36869U;
  aic_pdevs[34].device_id = 131U;
  aic_pdevs[34].chip = 9;
  aic_pdevs[34].flags = 8404993;
  aic_pdevs[34].features = 1778;
  aic_pdevs[34].board_name_index = 28;
  aic_pdevs[34].seeprom_size = 32U;
  aic_pdevs[34].seeprom_type = 6U;
  aic_pdevs[35].vendor_id = 36869U;
  aic_pdevs[35].device_id = 143U;
  aic_pdevs[35].chip = 9;
  aic_pdevs[35].flags = 8404993;
  aic_pdevs[35].features = 1778;
  aic_pdevs[35].board_name_index = 28;
  aic_pdevs[35].seeprom_size = 32U;
  aic_pdevs[35].seeprom_type = 6U;
  aic_pdevs[36].vendor_id = 36869U;
  aic_pdevs[36].device_id = 192U;
  aic_pdevs[36].chip = 10;
  aic_pdevs[36].flags = 12599297;
  aic_pdevs[36].features = 1778;
  aic_pdevs[36].board_name_index = 29;
  aic_pdevs[36].seeprom_size = 32U;
  aic_pdevs[36].seeprom_type = 8U;
  aic_pdevs[37].vendor_id = 36869U;
  aic_pdevs[37].device_id = 193U;
  aic_pdevs[37].chip = 10;
  aic_pdevs[37].flags = 12599297;
  aic_pdevs[37].features = 1778;
  aic_pdevs[37].board_name_index = 29;
  aic_pdevs[37].seeprom_size = 32U;
  aic_pdevs[37].seeprom_type = 8U;
  aic_pdevs[38].vendor_id = 36869U;
  aic_pdevs[38].device_id = 195U;
  aic_pdevs[38].chip = 10;
  aic_pdevs[38].flags = 12599297;
  aic_pdevs[38].features = 1778;
  aic_pdevs[38].board_name_index = 29;
  aic_pdevs[38].seeprom_size = 32U;
  aic_pdevs[38].seeprom_type = 8U;
  aic_pdevs[39].vendor_id = 36869U;
  aic_pdevs[39].device_id = 207U;
  aic_pdevs[39].chip = 10;
  aic_pdevs[39].flags = 12599297;
  aic_pdevs[39].features = 1778;
  aic_pdevs[39].board_name_index = 29;
  aic_pdevs[39].seeprom_size = 32U;
  aic_pdevs[39].seeprom_type = 8U;
  pdev = 0;
  i = 0U;
  goto ldv_34786;
  ldv_34785:
  pdev = 0;
  goto ldv_34741;
  ldv_34783:
  tmp = pci_enable_device(pdev);
  if (tmp != 0) {
    goto ldv_34741;
  } else {
  }
  if (i == 0U) {
    if ((aic7xxx_verbose & 24) != 0) {
      printk("\016aic7xxx: The 7810 RAID controller is not supported by\n");
      printk("\016         this driver, we are ignoring it.\n");
    } else {
      tmp___16 = kzalloc(408UL, 32U);
      temp_p = (struct aic7xxx_host *)tmp___16;
      if ((unsigned long )temp_p != (unsigned long )((struct aic7xxx_host *)0)) {
        temp_p->chip = (ahc_chip )((unsigned int )aic_pdevs[i].chip | 1024U);
        temp_p->flags = (long volatile )aic_pdevs[i].flags;
        temp_p->features = aic_pdevs[i].features;
        temp_p->board_name_index = aic_pdevs[i].board_name_index;
        temp_p->sc_size = aic_pdevs[i].seeprom_size;
        temp_p->sc_type = aic_pdevs[i].seeprom_type;
        temp_p->irq = pdev->irq;
        temp_p->pdev = pdev;
        temp_p->pci_bus = (pdev->bus)->number;
        temp_p->pci_device_fn = (unsigned char )pdev->devfn;
        temp_p->base = (unsigned long )pdev->resource[0].start;
        temp_p->mbase = (unsigned long )pdev->resource[1].start;
        current_p = list_p;
        goto ldv_34742;
        ldv_34743: ;
        if ((((int )current_p->pci_bus == (int )temp_p->pci_bus && (int )current_p->pci_device_fn == (int )temp_p->pci_device_fn) || (temp_p->base != 0UL && current_p->base == temp_p->base)) || (temp_p->mbase != 0UL && current_p->mbase == temp_p->mbase)) {
          kfree((void const *)temp_p);
          temp_p = 0;
          goto ldv_34742;
        } else {
        }
        current_p = current_p->next;
        ldv_34742: ;
        if ((unsigned long )current_p != (unsigned long )((struct aic7xxx_host *)0) && (unsigned long )temp_p != (unsigned long )((struct aic7xxx_host *)0)) {
          goto ldv_34743;
        } else {
        }
        tmp___0 = pci_request_regions(temp_p->pdev, "aic7xxx");
        if (tmp___0 != 0) {
          printk("aic7xxx: <%s> at PCI %d/%d/%d\n", board_names[aic_pdevs[i].board_name_index],
                 (int )temp_p->pci_bus, ((int )temp_p->pci_device_fn >> 3) & 31, (int )temp_p->pci_device_fn & 7);
          printk("aic7xxx: I/O ports already in use, ignoring.\n");
          kfree((void const *)temp_p);
          goto ldv_34741;
        } else {
        }
        if ((aic7xxx_verbose & 16) != 0) {
          printk("aic7xxx: <%s> at PCI %d/%d\n", board_names[aic_pdevs[i].board_name_index],
                 (pdev->devfn >> 3) & 31U, pdev->devfn & 7U);
        } else {
        }
        pci_read_config_word((struct pci_dev const *)pdev, 4, & command);
        if ((aic7xxx_verbose & 16) != 0) {
          printk("aic7xxx: Initial PCI_COMMAND value was 0x%x\n", (int )command);
        } else {
        }
        command = (unsigned int )command | 327U;
        command = (unsigned int )command & 65519U;
        if (aic7xxx_pci_parity == 0) {
          command = (unsigned int )command & 65215U;
        } else {
        }
        pci_write_config_word((struct pci_dev const *)pdev, 4, (int )command);
        pci_read_config_dword((struct pci_dev const *)pdev, 64, & devconfig);
        if ((aic7xxx_verbose & 16) != 0) {
          printk("aic7xxx: Initial DEVCONFIG value was 0x%x\n", devconfig);
        } else {
        }
        devconfig = devconfig | 2147483712U;
        pci_write_config_dword((struct pci_dev const *)pdev, 64, devconfig);
        temp_p->unpause = 2U;
        temp_p->pause = (unsigned int )temp_p->unpause | 4U;
        if ((temp_p->base == 0UL && temp_p->mbase == 0UL) || temp_p->irq == 0U) {
          printk("aic7xxx: <%s> at PCI %d/%d/%d\n", board_names[aic_pdevs[i].board_name_index],
                 (int )temp_p->pci_bus, ((int )temp_p->pci_device_fn >> 3) & 31, (int )temp_p->pci_device_fn & 7);
          printk("aic7xxx: Controller disabled by BIOS, ignoring.\n");
          goto skip_pci_controller;
        } else {
        }
        if ((temp_p->base == 0UL || ((long )temp_p->flags & 4194304L) == 0L) || ((unsigned int )temp_p->chip != 1028U && (unsigned int )temp_p->chip != 1029U)) {
          tmp___1 = ioremap_nocache((resource_size_t )temp_p->mbase, 256UL);
          temp_p->maddr = (unsigned char volatile *)tmp___1;
          if ((unsigned long )temp_p->maddr != (unsigned long )((unsigned char volatile *)0)) {
            tmp___2 = aic_inb(temp_p, 135L);
            if ((unsigned int )tmp___2 == 255U) {
              printk("\016aic7xxx: <%s> at PCI %d/%d/%d\n", board_names[aic_pdevs[i].board_name_index],
                     (int )temp_p->pci_bus, ((int )temp_p->pci_device_fn >> 3) & 31,
                     (int )temp_p->pci_device_fn & 7);
              printk("\016aic7xxx: MMAPed I/O failed, reverting to Programmed I/O.\n");
              iounmap((void volatile *)temp_p->maddr);
              temp_p->maddr = 0;
              if (temp_p->base == 0UL) {
                printk("aic7xxx: <%s> at PCI %d/%d/%d\n", board_names[aic_pdevs[i].board_name_index],
                       (int )temp_p->pci_bus, ((int )temp_p->pci_device_fn >> 3) & 31,
                       (int )temp_p->pci_device_fn & 7);
                printk("aic7xxx: Controller disabled by BIOS, ignoring.\n");
                goto skip_pci_controller;
              } else {
              }
            } else {
            }
          } else {
          }
        } else {
        }
        pause_sequencer(temp_p);
        oldverbose = (unsigned int )aic7xxx_verbose;
        aic7xxx_verbose = 0;
        aic7xxx_pci_intr(temp_p);
        aic7xxx_verbose = (int )oldverbose;
        temp_p->bios_address = 0U;
        if (((unsigned int )temp_p->features & 2U) != 0U) {
          tmp___3 = aic_inb(temp_p, 15L);
          temp_p->scsi_id = (int )tmp___3 & 15;
        } else {
          tmp___4 = aic_inb(temp_p, 5L);
          temp_p->scsi_id = (int )tmp___4 & 15;
        }
        sxfrctl1 = aic_inb(temp_p, 2L);
        tmp___5 = aic7xxx_chip_reset(temp_p);
        if (tmp___5 == -1) {
          goto skip_pci_controller;
        } else {
        }
        aic_outb(temp_p, (int )sxfrctl1, 2L);
        pci_write_config_dword((struct pci_dev const *)temp_p->pdev, 64, devconfig);
        sxfrctl1 = (unsigned int )sxfrctl1 & 1U;
        switch ((unsigned int )temp_p->chip & 255U) {
        case 4U: ;
        case 5U: ;
        if (((long )temp_p->flags & 4194304L) != 0L) {
          switch (((int )temp_p->pci_device_fn >> 3) & 31) {
          case 5:
          temp_p->flags = (long )temp_p->flags | 32L;
          goto ldv_34749;
          case 8:
          temp_p->flags = (long )temp_p->flags | 32L;
          goto ldv_34749;
          case 12:
          temp_p->flags = (long )temp_p->flags | 64L;
          goto ldv_34749;
          default: ;
          goto ldv_34749;
          }
          ldv_34749: ;
        } else {
        }
        goto ldv_34753;
        case 7U: ;
        case 8U: ;
        case 10U: ;
        if ((pdev->devfn & 7U) != 0U) {
          temp_p->flags = (long )temp_p->flags | 32L;
        } else {
        }
        if (((unsigned int )temp_p->chip & 255U) == 7U) {
          pci_read_config_dword((struct pci_dev const *)pdev, 64, & devconfig);
          devconfig = devconfig | 65536U;
          pci_write_config_dword((struct pci_dev const *)pdev, 64, devconfig);
        } else {
        }
        goto ldv_34753;
        default: ;
        goto ldv_34753;
        }
        ldv_34753: ;
        switch ((unsigned int )temp_p->chip & 255U) {
        case 9U: ;
        case 10U:
        aic_outb(temp_p, 0, 26L);
        tmp___6 = aic_inb(temp_p, 159L);
        aic_outb(temp_p, (int )((unsigned int )tmp___6 | 128U), 159L);
        aic_outb(temp_p, 3, 8L);
        aic_outb(temp_p, 0, 11L);
        aic_outb(temp_p, 16, 10L);
        tmp___7 = aic_inb(temp_p, 159L);
        aic_outb(temp_p, (int )tmp___7 & 127, 159L);
        aic_outb(temp_p, 124, 157L);
        tmp___8 = aic_inb(temp_p, 132L);
        aic_outb(temp_p, (int )((unsigned char )(((int )((signed char )tmp___8) & 28) | -93)),
                 132L);
        aic7xxx_load_seeprom(temp_p, & sxfrctl1);
        goto ldv_34760;
        case 6U: ;
        case 8U:
        aic_outb(temp_p, 0, 26L);
        tmp___9 = aic_inb(temp_p, 132L);
        aic_outb(temp_p, (int )((unsigned char )(((int )((signed char )tmp___9) & 28) | -93)),
                 132L);
        aic7xxx_load_seeprom(temp_p, & sxfrctl1);
        goto ldv_34760;
        case 2U: ;
        case 3U:
        tmp___10 = aic_inb(temp_p, 132L);
        aic_outb(temp_p, (int )((unsigned char )(((int )((signed char )tmp___10) & 31) | -96)),
                 132L);
        default:
        aic7xxx_load_seeprom(temp_p, & sxfrctl1);
        goto ldv_34760;
        case 5U:
        pci_read_config_dword((struct pci_dev const *)pdev, 64, & devconfig);
        if ((devconfig & 255U) != 0U) {
          tmp___11 = aic_inb(temp_p, 132L);
          aic_outb(temp_p, (int )((unsigned char )(((int )((signed char )tmp___11) & 31) | -96)),
                   132L);
        } else {
        }
        aic7xxx_load_seeprom(temp_p, & sxfrctl1);
        goto ldv_34760;
        }
        ldv_34760: ;
        switch ((unsigned int )temp_p->chip & 255U) {
        case 7U: ;
        case 8U: ;
        case 10U:
        current_p = list_p;
        goto ldv_34771;
        ldv_34770: ;
        if ((int )current_p->pci_bus == (int )temp_p->pci_bus && ((((int )current_p->pci_device_fn >> 3) ^ ((int )temp_p->pci_device_fn >> 3)) & 31) == 0) {
          if (((int )current_p->pci_device_fn & 7) == 0) {
            temp_p->flags = (long )temp_p->flags | ((long )current_p->flags & 2L);
            temp_p->flags = (long )temp_p->flags & -8388613L;
            temp_p->flags = (long )temp_p->flags | ((long )current_p->flags & 8388612L);
          } else {
            current_p->flags = (long )current_p->flags | ((long )temp_p->flags & 2L);
            current_p->flags = (long )current_p->flags & -8388613L;
            current_p->flags = (long )current_p->flags | ((long )temp_p->flags & 8388612L);
          }
        } else {
        }
        current_p = current_p->next;
        ldv_34771: ;
        if ((unsigned long )current_p != (unsigned long )((struct aic7xxx_host *)0)) {
          goto ldv_34770;
        } else {
        }
        goto ldv_34773;
        default: ;
        goto ldv_34773;
        }
        ldv_34773: ;
        switch ((unsigned int )temp_p->chip & 255U) {
        default: ;
        goto ldv_34776;
        case 7U: ;
        case 8U: ;
        case 10U:
        pci_read_config_dword((struct pci_dev const *)pdev, 64, & devconfig);
        if (((unsigned int )temp_p->features & 2U) != 0U) {
          tmp___14 = aic_inb(temp_p, 132L);
          if (((int )tmp___14 & 4) != 0 && aic7xxx_scbram != 0) {
            tmp___12 = aic_inb(temp_p, 132L);
            aic_outb(temp_p, (int )tmp___12 & 247, 132L);
            temp_p->flags = (long )temp_p->flags | 2147483648L;
            devconfig = devconfig | 16U;
          } else {
            tmp___13 = aic_inb(temp_p, 132L);
            if (((int )tmp___13 & 4) != 0) {
              printk("\016aic7xxx: <%s> at PCI %d/%d/%d\n", board_names[aic_pdevs[i].board_name_index],
                     (int )temp_p->pci_bus, ((int )temp_p->pci_device_fn >> 3) & 31,
                     (int )temp_p->pci_device_fn & 7);
              printk("aic7xxx: external SCB RAM detected, but not enabled\n");
            } else
            if (((unsigned long )devconfig & 512UL) != 0UL && aic7xxx_scbram != 0) {
              devconfig = devconfig & 4294967167U;
              devconfig = devconfig | 16U;
              temp_p->flags = (long )temp_p->flags | 2147483648L;
            } else
            if (((unsigned long )devconfig & 512UL) != 0UL) {
              printk("\016aic7xxx: <%s> at PCI %d/%d/%d\n", board_names[aic_pdevs[i].board_name_index],
                     (int )temp_p->pci_bus, ((int )temp_p->pci_device_fn >> 3) & 31,
                     (int )temp_p->pci_device_fn & 7);
              printk("aic7xxx: external SCB RAM detected, but not enabled\n");
            } else {
            }
          }
        } else {
        }
        pci_write_config_dword((struct pci_dev const *)pdev, 64, devconfig);
        if (((long )temp_p->flags & 2147483648L) != 0L && ((long )temp_p->flags & 32L) != 0L) {
          aic_outb(temp_p, 1, 240L);
        } else {
        }
        goto ldv_34776;
        }
        ldv_34776:
        tmp___15 = aic_inb(temp_p, 31L);
        aic_outb(temp_p, (int )tmp___15 & 63, 31L);
        if (((unsigned int )temp_p->features & 2U) != 0U) {
          aic_outb(temp_p, 119, 251L);
        } else {
          aic_outb(temp_p, 192, 134L);
        }
        aic7xxx_configure_bugs(temp_p);
        pci_dev_get(temp_p->pdev);
        if ((unsigned long )list_p == (unsigned long )((struct aic7xxx_host *)0)) {
          current_p = temp_p;
          list_p = current_p;
        } else {
          current_p = list_p;
          goto ldv_34781;
          ldv_34780:
          current_p = current_p->next;
          ldv_34781: ;
          if ((unsigned long )current_p->next != (unsigned long )((struct aic7xxx_host *)0)) {
            goto ldv_34780;
          } else {
          }
          current_p->next = temp_p;
        }
        temp_p->next = 0;
        found = found + 1;
        goto ldv_34741;
        skip_pci_controller:
        pci_release_regions(temp_p->pdev);
        kfree((void const *)temp_p);
      } else {
        printk("aic7xxx: Found <%s>\n", board_names[aic_pdevs[i].board_name_index]);
        printk("\016aic7xxx: Unable to allocate device memory, skipping.\n");
      }
    }
  } else {
  }
  ldv_34741:
  pdev = pci_get_device((unsigned int )aic_pdevs[i].vendor_id, (unsigned int )aic_pdevs[i].device_id,
                        pdev);
  if ((unsigned long )pdev != (unsigned long )((struct pci_dev *)0)) {
    goto ldv_34783;
  } else {
  }
  i = i + 1U;
  ldv_34786: ;
  if (i <= 39U) {
    goto ldv_34785;
  } else {
  }
  sort_list[0] = 0;
  sort_list[1] = 0;
  sort_list[2] = 0;
  sort_list[3] = 0;
  pci = 0;
  vlb = pci;
  prev_p = vlb;
  temp_p = list_p;
  goto ldv_34808;
  ldv_34807: ;
  switch ((unsigned int )temp_p->chip & 4294967040U) {
  case 512U: ;
  case 256U:
  p = temp_p;
  if (((long )p->flags & 8388608L) != 0L) {
    vlb = sort_list[0];
  } else {
    vlb = sort_list[2];
  }
  if ((unsigned long )vlb == (unsigned long )((struct aic7xxx_host *)0)) {
    vlb = temp_p;
    temp_p = temp_p->next;
    vlb->next = 0;
  } else {
    current_p = vlb;
    prev_p = 0;
    goto ldv_34797;
    ldv_34796:
    prev_p = current_p;
    current_p = current_p->next;
    ldv_34797: ;
    if ((unsigned long )current_p != (unsigned long )((struct aic7xxx_host *)0) && current_p->bios_address < temp_p->bios_address) {
      goto ldv_34796;
    } else {
    }
    if ((unsigned long )prev_p != (unsigned long )((struct aic7xxx_host *)0)) {
      prev_p->next = temp_p;
      temp_p = temp_p->next;
      (prev_p->next)->next = current_p;
    } else {
      vlb = temp_p;
      temp_p = temp_p->next;
      vlb->next = current_p;
    }
  }
  if (((long )p->flags & 8388608L) != 0L) {
    sort_list[0] = vlb;
  } else {
    sort_list[2] = vlb;
  }
  goto ldv_34799;
  default:
  p = temp_p;
  if (((long )p->flags & 8388608L) != 0L) {
    pci = sort_list[1];
  } else {
    pci = sort_list[3];
  }
  if ((unsigned long )pci == (unsigned long )((struct aic7xxx_host *)0)) {
    pci = temp_p;
    temp_p = temp_p->next;
    pci->next = 0;
  } else {
    current_p = pci;
    prev_p = 0;
    if (aic7xxx_reverse_scan == 0) {
      goto ldv_34802;
      ldv_34801:
      prev_p = current_p;
      current_p = current_p->next;
      ldv_34802: ;
      if ((unsigned long )current_p != (unsigned long )((struct aic7xxx_host *)0) && ((((int )current_p->pci_device_fn >> 3) & 31) | ((int )current_p->pci_bus << 8)) < ((((int )temp_p->pci_device_fn >> 3) & 31) | ((int )temp_p->pci_bus << 8))) {
        goto ldv_34801;
      } else {
      }
    } else {
      goto ldv_34805;
      ldv_34804:
      prev_p = current_p;
      current_p = current_p->next;
      ldv_34805: ;
      if ((unsigned long )current_p != (unsigned long )((struct aic7xxx_host *)0) && ((((int )current_p->pci_device_fn >> 3) & 31) | ((int )current_p->pci_bus << 8)) > ((((int )temp_p->pci_device_fn >> 3) & 31) | ((int )temp_p->pci_bus << 8))) {
        goto ldv_34804;
      } else {
      }
    }
    if ((((unsigned long )current_p != (unsigned long )((struct aic7xxx_host *)0) && ((long )temp_p->flags & 4194304L) != 0L) && (int )temp_p->pci_bus == (int )current_p->pci_bus) && ((((int )temp_p->pci_device_fn >> 3) ^ ((int )current_p->pci_device_fn >> 3)) & 31) == 0) {
      if (((long )temp_p->flags & 32L) != 0L) {
        if (((long )temp_p->flags & 2L) == 0L) {
          prev_p = current_p;
          current_p = current_p->next;
        } else
        if (((long )temp_p->flags & 2L) != 0L) {
          prev_p = current_p;
          current_p = current_p->next;
        } else {
        }
      } else {
      }
    } else {
    }
    if ((unsigned long )prev_p != (unsigned long )((struct aic7xxx_host *)0)) {
      prev_p->next = temp_p;
      temp_p = temp_p->next;
      (prev_p->next)->next = current_p;
    } else {
      pci = temp_p;
      temp_p = temp_p->next;
      pci->next = current_p;
    }
  }
  if (((long )p->flags & 8388608L) != 0L) {
    sort_list[1] = pci;
  } else {
    sort_list[3] = pci;
  }
  goto ldv_34799;
  }
  ldv_34799: ;
  ldv_34808: ;
  if ((unsigned long )temp_p != (unsigned long )((struct aic7xxx_host *)0)) {
    goto ldv_34807;
  } else {
  }
  left = (unsigned char )found;
  i___0 = 0;
  goto ldv_34817;
  ldv_34816:
  temp_p = sort_list[i___0];
  goto ldv_34814;
  ldv_34813:
  template->name = board_names[temp_p->board_name_index];
  p = aic7xxx_alloc(template, temp_p);
  if ((unsigned long )p != (unsigned long )((struct aic7xxx_host *)0)) {
    p->instance = found - (int )left;
    left = (unsigned char )((int )left - 1);
    tmp___17 = aic7xxx_register(template, p, (int )left);
    if (tmp___17 == 0) {
      found = found - 1;
      aic7xxx_release(p->host);
      scsi_unregister(p->host);
    } else
    if (aic7xxx_dump_card != 0) {
      pause_sequencer(p);
      aic7xxx_print_card(p);
      aic7xxx_print_scratch_ram(p);
      unpause_sequencer(p, 1);
    } else {
    }
  } else {
  }
  current_p = temp_p;
  temp_p = temp_p->next;
  kfree((void const *)current_p);
  ldv_34814: ;
  if ((unsigned long )temp_p != (unsigned long )((struct aic7xxx_host *)0)) {
    goto ldv_34813;
  } else {
  }
  i___0 = i___0 + 1;
  ldv_34817: ;
  if ((unsigned int )i___0 <= 3U) {
    goto ldv_34816;
  } else {
  }
  return (found);
}
}
static int __aic7xxx_bus_device_reset(struct scsi_cmnd *cmd )
{
  struct aic7xxx_host *p ;
  struct aic7xxx_scb *scb ;
  struct aic7xxx_hwscb *hscb ;
  int channel ;
  unsigned char saved_scbptr ;
  unsigned char lastphase ;
  unsigned char hscb_index ;
  int disconnected ;
  struct aic_dev_data *aic_dev ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  int tmp___9 ;
  unsigned char tmp___10 ;
  unsigned char tmp___11 ;
  unsigned char scb_control ;
  unsigned char volatile tmp___12 ;
  int tmp___13 ;
  {
  if ((unsigned long )cmd == (unsigned long )((struct scsi_cmnd *)0)) {
    printk("\vaic7xxx_bus_device_reset: called with NULL cmd!\n");
    return (8195);
  } else {
  }
  p = (struct aic7xxx_host *)(& ((cmd->device)->host)->hostdata);
  aic_dev = (struct aic_dev_data *)(cmd->device)->hostdata;
  if ((int )cmd->SCp.have_data_in < (int )(p->scb_data)->numscbs) {
    scb = (p->scb_data)->scb_array[cmd->SCp.have_data_in];
  } else {
    return (8195);
  }
  hscb = scb->hscb;
  aic7xxx_isr((void *)p);
  aic7xxx_done_cmds_complete(p);
  if (((unsigned int )scb->flags & 4U) == 0U) {
    return (8195);
  } else {
  }
  pause_sequencer(p);
  lastphase = aic_inb(p, 61L);
  if ((aic7xxx_verbose & 16384) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Bus Device reset, scb flags 0x%x, ", p->host_no,
           ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7, (unsigned int )scb->flags);
    switch ((int )lastphase) {
    case 0:
    printk("Data-Out phase\n");
    goto ldv_34870;
    case 64:
    printk("Data-In phase\n");
    goto ldv_34870;
    case 128:
    printk("Command phase\n");
    goto ldv_34870;
    case 160:
    printk("Message-Out phase\n");
    goto ldv_34870;
    case 192:
    printk("Status phase\n");
    goto ldv_34870;
    case 224:
    printk("Message-In phase\n");
    goto ldv_34870;
    default:
    printk("while idle, LASTPHASE = 0x%x\n", (int )lastphase);
    goto ldv_34870;
    }
    ldv_34870:
    tmp = aic_inb(p, 12L);
    tmp___0 = aic_inb(p, 11L);
    tmp___1 = aic_inb(p, 98L);
    tmp___2 = aic_inb(p, 99L);
    tmp___3 = aic_inb(p, 3L);
    printk("\016(scsi%d:%d:%d:%d) SCSISIGI 0x%x, SEQADDR 0x%x, SSTAT0 0x%x, SSTAT1 0x%x\n",
           p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7, (int )tmp___3, (int )tmp___1 | ((int )tmp___2 << 8),
           (int )tmp___0, (int )tmp);
    tmp___4 = aic_inb(p, 10L);
    tmp___5 = aic_inb(p, 9L);
    tmp___6 = aic_inb(p, 8L);
    tmp___7 = aic_inb(p, 13L);
    if (((unsigned int )p->features & 2U) != 0U) {
      tmp___8 = aic_inb(p, 252L);
      tmp___9 = (int )tmp___8;
    } else {
      tmp___9 = 0;
    }
    printk("\016(scsi%d:%d:%d:%d) SG_CACHEPTR 0x%x, SSTAT2 0x%x, STCNT 0x%x\n", p->host_no,
           ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7, tmp___9, (int )tmp___7, (((int )tmp___4 << 16) | ((int )tmp___5 << 8)) | (int )tmp___6);
  } else {
  }
  channel = (int )(cmd->device)->channel;
  saved_scbptr = aic_inb(p, 144L);
  disconnected = 0;
  if ((unsigned int )lastphase != 1U) {
    tmp___10 = aic_inb(p, 185L);
    if ((int )tmp___10 >= (int )(p->scb_data)->numscbs) {
      printk("\f(scsi%d:%d:%d:%d) Invalid SCB ID %d is active, SCB flags = 0x%x.\n",
             p->host_no, (cmd->device)->channel & 1U, (cmd->device)->id & 15U, (cmd->device)->lun & 7U,
             (int )(scb->hscb)->tag, (unsigned int )scb->flags);
      unpause_sequencer(p, 0);
      return (8195);
    } else {
    }
    tmp___11 = aic_inb(p, 185L);
    if ((int )(scb->hscb)->tag == (int )tmp___11) {
      if ((unsigned int )lastphase == 160U || (unsigned int )lastphase == 224U) {
        printk("\f(scsi%d:%d:%d:%d) Device reset, Message buffer in use\n", p->host_no,
               ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
               (int )(scb->hscb)->target_channel_lun & 7);
        unpause_sequencer(p, 0);
        return (8195);
      } else {
      }
      if ((aic7xxx_verbose & 16384) != 0) {
        printk("\016(scsi%d:%d:%d:%d) Device reset message in message buffer\n", p->host_no,
               ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
               (int )(scb->hscb)->target_channel_lun & 7);
      } else {
      }
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 96U);
      cmd->SCp.Status = 8;
      aic_dev->flags = (unsigned char volatile )((unsigned int )((unsigned char )aic_dev->flags) | 1U);
      aic_outb(p, 255, 52L);
      aic_outb(p, (int )((unsigned int )lastphase | 16U), 3L);
      unpause_sequencer(p, 0);
      spin_unlock_irq((p->host)->host_lock);
      ssleep(1U);
      spin_lock_irq((p->host)->host_lock);
      if ((int )aic_dev->flags & 1) {
        return (8195);
      } else {
        return (8194);
      }
    } else {
    }
  } else {
  }
  (scb->hscb)->control = (unsigned int )(scb->hscb)->control | 128U;
  scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 96U);
  aic_dev->flags = (unsigned char volatile )((unsigned int )((unsigned char )aic_dev->flags) | 1U);
  tmp___13 = aic7xxx_search_qinfifo(p, (int )(cmd->device)->channel, (int )(cmd->device)->id,
                                    (int )(cmd->device)->lun, (int )hscb->tag, 0,
                                    1, 0);
  if (tmp___13 == 0) {
    disconnected = 1;
    hscb_index = aic7xxx_find_scb(p, scb);
    if ((unsigned int )hscb_index != 255U) {
      aic_outb(p, (int )hscb_index, 144L);
      scb_control = aic_inb(p, 160L);
      disconnected = (int )scb_control & 4;
      aic_outb(p, (int )((unsigned int )scb_control | 128U), 160L);
    } else {
    }
    if (disconnected != 0) {
      if ((aic7xxx_verbose & 16384) != 0) {
        printk("\016(scsi%d:%d:%d:%d) Queueing device reset command.\n", p->host_no,
               ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
               (int )(scb->hscb)->target_channel_lun & 7);
      } else {
      }
      tmp___12 = p->qinfifonext;
      p->qinfifonext = (unsigned char volatile )((int volatile )p->qinfifonext + (int volatile )1);
      *(p->qinfifo + (unsigned long )tmp___12) = (scb->hscb)->tag;
      if (((unsigned int )p->features & 64U) != 0U) {
        aic_outb(p, (int )p->qinfifonext, 244L);
      } else {
        aic_outb(p, (int )p->qinfifonext, 77L);
      }
      scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 4096U);
    } else {
    }
  } else {
  }
  aic_outb(p, (int )saved_scbptr, 144L);
  unpause_sequencer(p, 0);
  spin_unlock_irq((p->host)->host_lock);
  msleep(250U);
  spin_lock_irq((p->host)->host_lock);
  if ((int )aic_dev->flags & 1) {
    return (8195);
  } else {
    return (8194);
  }
}
}
static int aic7xxx_bus_device_reset(struct scsi_cmnd *cmd )
{
  int rc ;
  {
  spin_lock_irq(((cmd->device)->host)->host_lock);
  rc = __aic7xxx_bus_device_reset(cmd);
  spin_unlock_irq(((cmd->device)->host)->host_lock);
  return (rc);
}
}
static void aic7xxx_panic_abort(struct aic7xxx_host *p , struct scsi_cmnd *cmd )
{
  unsigned char tmp ;
  {
  printk("aic7xxx driver version %s\n", (char *)"5.2.6");
  printk("Controller type:\n    %s\n", board_names[p->board_name_index]);
  tmp = aic_inb(p, 135L);
  printk("p->flags=0x%lx, p->chip=0x%x, p->features=0x%x, sequencer %s paused\n",
         p->flags, (unsigned int )p->chip, (unsigned int )p->features, ((int )tmp & 4) != 0 ? (char *)"is" : (char *)"isn\'t");
  pause_sequencer(p);
  disable_irq(p->irq);
  aic7xxx_print_card(p);
  aic7xxx_print_scratch_ram(p);
  spin_unlock_irq((p->host)->host_lock);
  ldv_34886:
  __asm__ volatile ("": : : "memory");
  goto ldv_34886;
}
}
static int __aic7xxx_abort(struct scsi_cmnd *cmd )
{
  struct aic7xxx_scb *scb ;
  struct aic7xxx_host *p ;
  int found ;
  int disconnected ;
  unsigned char saved_hscbptr ;
  unsigned char hscbptr ;
  unsigned char scb_control ;
  struct aic_dev_data *aic_dev ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  int tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  unsigned char tmp___9 ;
  unsigned char prev ;
  unsigned char next ;
  unsigned char tmp___10 ;
  unsigned char tmp___11 ;
  unsigned char tmp___12 ;
  unsigned char tmp___13 ;
  unsigned char tmp___14 ;
  unsigned char tmp___15 ;
  unsigned char volatile tmp___16 ;
  {
  scb = 0;
  found = 0;
  if ((unsigned long )cmd == (unsigned long )((struct scsi_cmnd *)0)) {
    printk("\vaic7xxx_abort: called with NULL cmd!\n");
    return (8195);
  } else {
  }
  p = (struct aic7xxx_host *)(& ((cmd->device)->host)->hostdata);
  aic_dev = (struct aic_dev_data *)(cmd->device)->hostdata;
  if ((int )cmd->SCp.have_data_in < (int )(p->scb_data)->numscbs) {
    scb = (p->scb_data)->scb_array[cmd->SCp.have_data_in];
  } else {
    return (8195);
  }
  aic7xxx_isr((void *)p);
  aic7xxx_done_cmds_complete(p);
  if (((unsigned int )scb->flags & 4U) == 0U) {
    return (8195);
  } else {
  }
  pause_sequencer(p);
  if (aic7xxx_panic_on_abort != 0) {
    aic7xxx_panic_abort(p, cmd);
  } else {
  }
  if ((aic7xxx_verbose & 3840) != 0) {
    tmp = aic_inb(p, 61L);
    tmp___0 = aic_inb(p, 98L);
    tmp___1 = aic_inb(p, 99L);
    printk("\016(scsi%d:%d:%d:%d) Aborting scb %d, flags 0x%x, SEQADDR 0x%x, LASTPHASE 0x%x\n",
           p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7, (int )(scb->hscb)->tag, (unsigned int )scb->flags,
           (int )tmp___0 | ((int )tmp___1 << 8), (int )tmp);
    tmp___2 = aic_inb(p, 3L);
    tmp___3 = aic_inb(p, 56L);
    if (((unsigned int )p->features & 2U) != 0U) {
      tmp___4 = aic_inb(p, 252L);
      tmp___5 = (int )tmp___4;
    } else {
      tmp___5 = 0;
    }
    printk("\016(scsi%d:%d:%d:%d) SG_CACHEPTR 0x%x, SG_COUNT %d, SCSISIGI 0x%x\n",
           p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7, tmp___5, (int )tmp___3, (int )tmp___2);
    tmp___6 = aic_inb(p, 13L);
    tmp___7 = aic_inb(p, 12L);
    tmp___8 = aic_inb(p, 11L);
    printk("\016(scsi%d:%d:%d:%d) SSTAT0 0x%x, SSTAT1 0x%x, SSTAT2 0x%x\n", p->host_no,
           ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7, (int )tmp___8, (int )tmp___7,
           (int )tmp___6);
  } else {
  }
  if (((unsigned int )scb->flags & 2U) != 0U) {
    if ((aic7xxx_verbose & 1024) != 0) {
      printk("\016(scsi%d:%d:%d:%d) SCB found on waiting list and aborted.\n", p->host_no,
             ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
             (int )(scb->hscb)->target_channel_lun & 7);
    } else {
    }
    scbq_remove(& p->waiting_scbs, scb);
    scbq_remove(& aic_dev->delayed_scbs, scb);
    aic_dev->active_cmds = (unsigned char volatile )((int volatile )aic_dev->active_cmds + (int volatile )1);
    p->activescbs = (unsigned char volatile )((int volatile )p->activescbs + (int volatile )1);
    scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags & 4294967289U);
    scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 8208U);
    goto success;
  } else {
  }
  found = aic7xxx_search_qinfifo(p, (int )(cmd->device)->id, (int )(cmd->device)->channel,
                                 (int )(cmd->device)->lun, (int )(scb->hscb)->tag,
                                 8208, 0, 0);
  if (found != 0 && (aic7xxx_verbose & 1024) != 0) {
    printk("\016(scsi%d:%d:%d:%d) SCB found in QINFIFO and aborted.\n", p->host_no,
           ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
           (int )(scb->hscb)->target_channel_lun & 7);
    goto success;
  } else {
  }
  saved_hscbptr = aic_inb(p, 144L);
  hscbptr = aic7xxx_find_scb(p, scb);
  if ((unsigned int )hscbptr != 255U) {
    aic_outb(p, (int )hscbptr, 144L);
    scb_control = aic_inb(p, 160L);
    disconnected = (int )scb_control & 4;
    if (disconnected == 0) {
      tmp___14 = aic_inb(p, 61L);
      if ((unsigned int )tmp___14 == 1U) {
        if ((aic7xxx_verbose & 1024) != 0) {
          printk("\016(scsi%d:%d:%d:%d) SCB found on hardware waiting list and aborted.\n",
                 p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7);
        } else {
        }
        tmp___10 = aic_inb(p, 62L);
        if ((int )tmp___10 == (int )hscbptr) {
          tmp___11 = aic_inb(p, 186L);
          if ((unsigned int )tmp___11 == 255U) {
            tmp___9 = aic_inb(p, 0L);
            aic_outb(p, (int )tmp___9 & 191, 0L);
            aic_outb(p, 128, 12L);
            aic_outb(p, 255, 62L);
          } else {
            goto _L;
          }
        } else {
          _L:
          prev = 255U;
          next = aic_inb(p, 62L);
          goto ldv_34902;
          ldv_34901:
          aic_outb(p, (int )next, 144L);
          if ((int )next == (int )hscbptr) {
            next = aic_inb(p, 186L);
            if ((unsigned int )prev != 255U) {
              aic_outb(p, (int )prev, 144L);
              aic_outb(p, (int )next, 186L);
            } else {
              aic_outb(p, (int )next, 62L);
            }
            aic_outb(p, (int )hscbptr, 144L);
            next = 255U;
          } else {
            prev = next;
            next = aic_inb(p, 186L);
          }
          ldv_34902: ;
          if ((unsigned int )next != 255U) {
            goto ldv_34901;
          } else {
          }
        }
        aic_outb(p, 255, 185L);
        aic_outb(p, 0, 160L);
        aic7xxx_add_curscb_to_free_list(p);
        scb->flags = 8208;
        goto success;
      } else {
        goto _L___0;
      }
    } else
    _L___0:
    if (disconnected == 0) {
      tmp___12 = aic_inb(p, 61L);
      if ((unsigned int )tmp___12 == 224U) {
        printk("\016(scsi%d:%d:%d:%d) message buffer busy, unable to abort.\n", p->host_no,
               ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
               (int )(scb->hscb)->target_channel_lun & 7);
        unpause_sequencer(p, 0);
        return (8195);
      } else {
        tmp___13 = aic_inb(p, 61L);
        if ((unsigned int )tmp___13 == 160U) {
          printk("\016(scsi%d:%d:%d:%d) message buffer busy, unable to abort.\n",
                 p->host_no, ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
                 (int )(scb->hscb)->target_channel_lun & 7);
          unpause_sequencer(p, 0);
          return (8195);
        } else {
        }
      }
    } else {
    }
    aic_outb(p, (int )((unsigned int )scb_control | 128U), 160L);
    if (disconnected == 0) {
      aic_outb(p, 255, 52L);
      tmp___15 = aic_inb(p, 3L);
      aic_outb(p, (int )((unsigned int )tmp___15 | 16U), 3L);
    } else {
    }
    aic_outb(p, (int )saved_hscbptr, 144L);
  } else {
    disconnected = 1;
  }
  p->flags = (long )p->flags | 67108864L;
  scb->flags = (scb_flag_type volatile )((unsigned int )scb->flags | 4240U);
  (scb->hscb)->control = (unsigned int )(scb->hscb)->control | 128U;
  if (disconnected != 0) {
    if ((aic7xxx_verbose & 1024) != 0) {
      printk("\016(scsi%d:%d:%d:%d) SCB disconnected.  Queueing Abort SCB.\n", p->host_no,
             ((int )(scb->hscb)->target_channel_lun >> 3) & 1, ((int )(scb->hscb)->target_channel_lun >> 4) & 15,
             (int )(scb->hscb)->target_channel_lun & 7);
    } else {
    }
    tmp___16 = p->qinfifonext;
    p->qinfifonext = (unsigned char volatile )((int volatile )p->qinfifonext + (int volatile )1);
    *(p->qinfifo + (unsigned long )tmp___16) = (scb->hscb)->tag;
    if (((unsigned int )p->features & 64U) != 0U) {
      aic_outb(p, (int )p->qinfifonext, 244L);
    } else {
      aic_outb(p, (int )p->qinfifonext, 77L);
    }
  } else {
  }
  unpause_sequencer(p, 0);
  spin_unlock_irq((p->host)->host_lock);
  msleep(250U);
  spin_lock_irq((p->host)->host_lock);
  if (((long )p->flags & 67108864L) != 0L) {
    if ((aic7xxx_verbose & 2048) != 0) {
      printk("\016(scsi%d:%d:%d:%d) Abort never delivered, returning FAILED\n", p->host_no,
             (cmd->device)->channel & 1U, (cmd->device)->id & 15U, (cmd->device)->lun & 7U);
    } else {
    }
    p->flags = (long )p->flags & -67108865L;
    return (8195);
  } else {
  }
  if ((aic7xxx_verbose & 2048) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Abort successful.\n", p->host_no, (cmd->device)->channel & 1U,
           (cmd->device)->id & 15U, (cmd->device)->lun & 7U);
  } else {
  }
  return (8194);
  success: ;
  if ((aic7xxx_verbose & 2048) != 0) {
    printk("\016(scsi%d:%d:%d:%d) Abort successful.\n", p->host_no, (cmd->device)->channel & 1U,
           (cmd->device)->id & 15U, (cmd->device)->lun & 7U);
  } else {
  }
  aic7xxx_run_done_queue(p, 1);
  unpause_sequencer(p, 0);
  return (8194);
}
}
static int aic7xxx_abort(struct scsi_cmnd *cmd )
{
  int rc ;
  {
  spin_lock_irq(((cmd->device)->host)->host_lock);
  rc = __aic7xxx_abort(cmd);
  spin_unlock_irq(((cmd->device)->host)->host_lock);
  return (rc);
}
}
static int aic7xxx_reset(struct scsi_cmnd *cmd )
{
  struct aic7xxx_scb *scb ;
  struct aic7xxx_host *p ;
  struct aic_dev_data *aic_dev ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  p = (struct aic7xxx_host *)(& ((cmd->device)->host)->hostdata);
  spin_lock_irq((p->host)->host_lock);
  aic_dev = (struct aic_dev_data *)(cmd->device)->hostdata;
  if ((int )cmd->SCp.have_data_in < (int )(p->scb_data)->numscbs) {
    scb = (p->scb_data)->scb_array[cmd->SCp.have_data_in];
    if ((unsigned long )scb->cmd != (unsigned long )cmd) {
      scb = 0;
    } else {
    }
  } else {
    scb = 0;
  }
  if (aic7xxx_panic_on_abort != 0) {
    aic7xxx_panic_abort(p, cmd);
  } else {
  }
  pause_sequencer(p);
  goto ldv_34915;
  ldv_34914:
  aic7xxx_isr((void *)p);
  pause_sequencer(p);
  ldv_34915:
  tmp = aic_inb(p, 145L);
  if (((int )tmp & 15) != 0 && ((long )p->flags & 268435456L) == 0L) {
    goto ldv_34914;
  } else {
  }
  aic7xxx_done_cmds_complete(p);
  if ((unsigned long )scb != (unsigned long )((struct aic7xxx_scb *)0) && (unsigned long )scb->cmd == (unsigned long )((struct scsi_cmnd *)0)) {
    unpause_sequencer(p, 0);
    spin_unlock_irq((p->host)->host_lock);
    return (8194);
  } else {
  }
  aic7xxx_reset_channel(p, (int )(cmd->device)->channel, 1);
  if (((unsigned int )p->features & 8U) != 0U) {
    aic7xxx_reset_channel(p, (int )((cmd->device)->channel ^ 1U), 1);
    restart_sequencer(p);
  } else {
  }
  tmp___0 = aic_inb(p, 17L);
  aic_outb(p, (int )tmp___0 & 246, 17L);
  aic7xxx_clear_intstat(p);
  p->flags = (long )p->flags & -4097L;
  p->msg_type = 0U;
  p->msg_index = 0U;
  p->msg_len = 0U;
  aic7xxx_run_done_queue(p, 1);
  unpause_sequencer(p, 0);
  spin_unlock_irq((p->host)->host_lock);
  ssleep(2U);
  return (8194);
}
}
static int aic7xxx_release(struct Scsi_Host *host )
{
  struct aic7xxx_host *p ;
  struct aic7xxx_host *next ;
  struct aic7xxx_host *prev ;
  {
  p = (struct aic7xxx_host *)(& host->hostdata);
  if (p->irq != 0U) {
    free_irq(p->irq, (void *)p);
  } else {
  }
  if ((unsigned long )p->maddr != (unsigned long )((unsigned char volatile *)0)) {
    iounmap((void volatile *)p->maddr);
  } else {
  }
  if ((unsigned long )p->pdev == (unsigned long )((struct pci_dev *)0)) {
    __release_region(& ioport_resource, (resource_size_t )p->base, 255ULL);
  } else {
    pci_release_regions(p->pdev);
    pci_dev_put(p->pdev);
  }
  prev = 0;
  next = first_aic7xxx;
  goto ldv_34936;
  ldv_34935: ;
  if ((unsigned long )next == (unsigned long )p) {
    if ((unsigned long )prev == (unsigned long )((struct aic7xxx_host *)0)) {
      first_aic7xxx = next->next;
    } else {
      prev->next = next->next;
    }
  } else {
    prev = next;
  }
  next = next->next;
  ldv_34936: ;
  if ((unsigned long )next != (unsigned long )((struct aic7xxx_host *)0)) {
    goto ldv_34935;
  } else {
  }
  aic7xxx_free(p);
  return (0);
}
}
static void aic7xxx_print_card(struct aic7xxx_host *p )
{
  int i ;
  int j ;
  int k ;
  int chip ;
  struct register_ranges cards_ds[11U] ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned char tmp___8 ;
  {
  cards_ds[0].num_ranges = 0;
  cards_ds[0].range_val[0] = 0;
  tmp = 1U;
  while (1) {
    if (tmp >= 32U) {
      break;
    } else {
    }
    cards_ds[0].range_val[tmp] = 0;
    tmp = tmp + 1U;
  }
  cards_ds[1].num_ranges = 10;
  cards_ds[1].range_val[0] = 0;
  cards_ds[1].range_val[1] = 5;
  cards_ds[1].range_val[2] = 8;
  cards_ds[1].range_val[3] = 17;
  cards_ds[1].range_val[4] = 24;
  cards_ds[1].range_val[5] = 25;
  cards_ds[1].range_val[6] = 31;
  cards_ds[1].range_val[7] = 31;
  cards_ds[1].range_val[8] = 96;
  cards_ds[1].range_val[9] = 96;
  cards_ds[1].range_val[10] = 98;
  cards_ds[1].range_val[11] = 102;
  cards_ds[1].range_val[12] = 128;
  cards_ds[1].range_val[13] = 142;
  cards_ds[1].range_val[14] = 144;
  cards_ds[1].range_val[15] = 149;
  cards_ds[1].range_val[16] = 151;
  cards_ds[1].range_val[17] = 151;
  cards_ds[1].range_val[18] = 155;
  cards_ds[1].range_val[19] = 159;
  tmp___0 = 20U;
  while (1) {
    if (tmp___0 >= 32U) {
      break;
    } else {
    }
    cards_ds[1].range_val[tmp___0] = 0;
    tmp___0 = tmp___0 + 1U;
  }
  cards_ds[2].num_ranges = 9;
  cards_ds[2].range_val[0] = 0;
  cards_ds[2].range_val[1] = 5;
  cards_ds[2].range_val[2] = 8;
  cards_ds[2].range_val[3] = 17;
  cards_ds[2].range_val[4] = 24;
  cards_ds[2].range_val[5] = 31;
  cards_ds[2].range_val[6] = 96;
  cards_ds[2].range_val[7] = 96;
  cards_ds[2].range_val[8] = 98;
  cards_ds[2].range_val[9] = 102;
  cards_ds[2].range_val[10] = 128;
  cards_ds[2].range_val[11] = 142;
  cards_ds[2].range_val[12] = 144;
  cards_ds[2].range_val[13] = 149;
  cards_ds[2].range_val[14] = 151;
  cards_ds[2].range_val[15] = 151;
  cards_ds[2].range_val[16] = 154;
  cards_ds[2].range_val[17] = 159;
  tmp___1 = 18U;
  while (1) {
    if (tmp___1 >= 32U) {
      break;
    } else {
    }
    cards_ds[2].range_val[tmp___1] = 0;
    tmp___1 = tmp___1 + 1U;
  }
  cards_ds[3].num_ranges = 9;
  cards_ds[3].range_val[0] = 0;
  cards_ds[3].range_val[1] = 5;
  cards_ds[3].range_val[2] = 8;
  cards_ds[3].range_val[3] = 17;
  cards_ds[3].range_val[4] = 24;
  cards_ds[3].range_val[5] = 31;
  cards_ds[3].range_val[6] = 96;
  cards_ds[3].range_val[7] = 96;
  cards_ds[3].range_val[8] = 98;
  cards_ds[3].range_val[9] = 102;
  cards_ds[3].range_val[10] = 128;
  cards_ds[3].range_val[11] = 142;
  cards_ds[3].range_val[12] = 144;
  cards_ds[3].range_val[13] = 149;
  cards_ds[3].range_val[14] = 151;
  cards_ds[3].range_val[15] = 151;
  cards_ds[3].range_val[16] = 154;
  cards_ds[3].range_val[17] = 159;
  tmp___2 = 18U;
  while (1) {
    if (tmp___2 >= 32U) {
      break;
    } else {
    }
    cards_ds[3].range_val[tmp___2] = 0;
    tmp___2 = tmp___2 + 1U;
  }
  cards_ds[4].num_ranges = 10;
  cards_ds[4].range_val[0] = 0;
  cards_ds[4].range_val[1] = 5;
  cards_ds[4].range_val[2] = 8;
  cards_ds[4].range_val[3] = 17;
  cards_ds[4].range_val[4] = 24;
  cards_ds[4].range_val[5] = 25;
  cards_ds[4].range_val[6] = 28;
  cards_ds[4].range_val[7] = 31;
  cards_ds[4].range_val[8] = 96;
  cards_ds[4].range_val[9] = 96;
  cards_ds[4].range_val[10] = 98;
  cards_ds[4].range_val[11] = 102;
  cards_ds[4].range_val[12] = 128;
  cards_ds[4].range_val[13] = 142;
  cards_ds[4].range_val[14] = 144;
  cards_ds[4].range_val[15] = 149;
  cards_ds[4].range_val[16] = 151;
  cards_ds[4].range_val[17] = 151;
  cards_ds[4].range_val[18] = 154;
  cards_ds[4].range_val[19] = 159;
  tmp___3 = 20U;
  while (1) {
    if (tmp___3 >= 32U) {
      break;
    } else {
    }
    cards_ds[4].range_val[tmp___3] = 0;
    tmp___3 = tmp___3 + 1U;
  }
  cards_ds[5].num_ranges = 10;
  cards_ds[5].range_val[0] = 0;
  cards_ds[5].range_val[1] = 5;
  cards_ds[5].range_val[2] = 8;
  cards_ds[5].range_val[3] = 17;
  cards_ds[5].range_val[4] = 24;
  cards_ds[5].range_val[5] = 26;
  cards_ds[5].range_val[6] = 28;
  cards_ds[5].range_val[7] = 31;
  cards_ds[5].range_val[8] = 96;
  cards_ds[5].range_val[9] = 96;
  cards_ds[5].range_val[10] = 98;
  cards_ds[5].range_val[11] = 102;
  cards_ds[5].range_val[12] = 128;
  cards_ds[5].range_val[13] = 142;
  cards_ds[5].range_val[14] = 144;
  cards_ds[5].range_val[15] = 149;
  cards_ds[5].range_val[16] = 151;
  cards_ds[5].range_val[17] = 151;
  cards_ds[5].range_val[18] = 154;
  cards_ds[5].range_val[19] = 159;
  tmp___4 = 20U;
  while (1) {
    if (tmp___4 >= 32U) {
      break;
    } else {
    }
    cards_ds[5].range_val[tmp___4] = 0;
    tmp___4 = tmp___4 + 1U;
  }
  cards_ds[6].num_ranges = 16;
  cards_ds[6].range_val[0] = 0;
  cards_ds[6].range_val[1] = 5;
  cards_ds[6].range_val[2] = 8;
  cards_ds[6].range_val[3] = 17;
  cards_ds[6].range_val[4] = 24;
  cards_ds[6].range_val[5] = 31;
  cards_ds[6].range_val[6] = 96;
  cards_ds[6].range_val[7] = 96;
  cards_ds[6].range_val[8] = 98;
  cards_ds[6].range_val[9] = 102;
  cards_ds[6].range_val[10] = 132;
  cards_ds[6].range_val[11] = 142;
  cards_ds[6].range_val[12] = 144;
  cards_ds[6].range_val[13] = 149;
  cards_ds[6].range_val[14] = 151;
  cards_ds[6].range_val[15] = 151;
  cards_ds[6].range_val[16] = 154;
  cards_ds[6].range_val[17] = 154;
  cards_ds[6].range_val[18] = 159;
  cards_ds[6].range_val[19] = 159;
  cards_ds[6].range_val[20] = 224;
  cards_ds[6].range_val[21] = 241;
  cards_ds[6].range_val[22] = 244;
  cards_ds[6].range_val[23] = 244;
  cards_ds[6].range_val[24] = 246;
  cards_ds[6].range_val[25] = 246;
  cards_ds[6].range_val[26] = 248;
  cards_ds[6].range_val[27] = 248;
  cards_ds[6].range_val[28] = 250;
  cards_ds[6].range_val[29] = 252;
  cards_ds[6].range_val[30] = 254;
  cards_ds[6].range_val[31] = 255;
  cards_ds[7].num_ranges = 12;
  cards_ds[7].range_val[0] = 0;
  cards_ds[7].range_val[1] = 5;
  cards_ds[7].range_val[2] = 8;
  cards_ds[7].range_val[3] = 17;
  cards_ds[7].range_val[4] = 24;
  cards_ds[7].range_val[5] = 25;
  cards_ds[7].range_val[6] = 27;
  cards_ds[7].range_val[7] = 31;
  cards_ds[7].range_val[8] = 96;
  cards_ds[7].range_val[9] = 96;
  cards_ds[7].range_val[10] = 98;
  cards_ds[7].range_val[11] = 102;
  cards_ds[7].range_val[12] = 128;
  cards_ds[7].range_val[13] = 142;
  cards_ds[7].range_val[14] = 144;
  cards_ds[7].range_val[15] = 149;
  cards_ds[7].range_val[16] = 151;
  cards_ds[7].range_val[17] = 151;
  cards_ds[7].range_val[18] = 154;
  cards_ds[7].range_val[19] = 154;
  cards_ds[7].range_val[20] = 159;
  cards_ds[7].range_val[21] = 159;
  cards_ds[7].range_val[22] = 224;
  cards_ds[7].range_val[23] = 241;
  tmp___5 = 24U;
  while (1) {
    if (tmp___5 >= 32U) {
      break;
    } else {
    }
    cards_ds[7].range_val[tmp___5] = 0;
    tmp___5 = tmp___5 + 1U;
  }
  cards_ds[8].num_ranges = 16;
  cards_ds[8].range_val[0] = 0;
  cards_ds[8].range_val[1] = 5;
  cards_ds[8].range_val[2] = 8;
  cards_ds[8].range_val[3] = 17;
  cards_ds[8].range_val[4] = 24;
  cards_ds[8].range_val[5] = 31;
  cards_ds[8].range_val[6] = 96;
  cards_ds[8].range_val[7] = 96;
  cards_ds[8].range_val[8] = 98;
  cards_ds[8].range_val[9] = 102;
  cards_ds[8].range_val[10] = 132;
  cards_ds[8].range_val[11] = 142;
  cards_ds[8].range_val[12] = 144;
  cards_ds[8].range_val[13] = 149;
  cards_ds[8].range_val[14] = 151;
  cards_ds[8].range_val[15] = 151;
  cards_ds[8].range_val[16] = 154;
  cards_ds[8].range_val[17] = 154;
  cards_ds[8].range_val[18] = 159;
  cards_ds[8].range_val[19] = 159;
  cards_ds[8].range_val[20] = 224;
  cards_ds[8].range_val[21] = 241;
  cards_ds[8].range_val[22] = 244;
  cards_ds[8].range_val[23] = 244;
  cards_ds[8].range_val[24] = 246;
  cards_ds[8].range_val[25] = 246;
  cards_ds[8].range_val[26] = 248;
  cards_ds[8].range_val[27] = 248;
  cards_ds[8].range_val[28] = 250;
  cards_ds[8].range_val[29] = 252;
  cards_ds[8].range_val[30] = 254;
  cards_ds[8].range_val[31] = 255;
  cards_ds[9].num_ranges = 12;
  cards_ds[9].range_val[0] = 0;
  cards_ds[9].range_val[1] = 5;
  cards_ds[9].range_val[2] = 8;
  cards_ds[9].range_val[3] = 17;
  cards_ds[9].range_val[4] = 24;
  cards_ds[9].range_val[5] = 31;
  cards_ds[9].range_val[6] = 96;
  cards_ds[9].range_val[7] = 96;
  cards_ds[9].range_val[8] = 98;
  cards_ds[9].range_val[9] = 102;
  cards_ds[9].range_val[10] = 132;
  cards_ds[9].range_val[11] = 142;
  cards_ds[9].range_val[12] = 144;
  cards_ds[9].range_val[13] = 149;
  cards_ds[9].range_val[14] = 151;
  cards_ds[9].range_val[15] = 151;
  cards_ds[9].range_val[16] = 154;
  cards_ds[9].range_val[17] = 154;
  cards_ds[9].range_val[18] = 156;
  cards_ds[9].range_val[19] = 159;
  cards_ds[9].range_val[20] = 224;
  cards_ds[9].range_val[21] = 241;
  cards_ds[9].range_val[22] = 244;
  cards_ds[9].range_val[23] = 252;
  tmp___6 = 24U;
  while (1) {
    if (tmp___6 >= 32U) {
      break;
    } else {
    }
    cards_ds[9].range_val[tmp___6] = 0;
    tmp___6 = tmp___6 + 1U;
  }
  cards_ds[10].num_ranges = 12;
  cards_ds[10].range_val[0] = 0;
  cards_ds[10].range_val[1] = 5;
  cards_ds[10].range_val[2] = 8;
  cards_ds[10].range_val[3] = 17;
  cards_ds[10].range_val[4] = 24;
  cards_ds[10].range_val[5] = 31;
  cards_ds[10].range_val[6] = 96;
  cards_ds[10].range_val[7] = 96;
  cards_ds[10].range_val[8] = 98;
  cards_ds[10].range_val[9] = 102;
  cards_ds[10].range_val[10] = 132;
  cards_ds[10].range_val[11] = 142;
  cards_ds[10].range_val[12] = 144;
  cards_ds[10].range_val[13] = 149;
  cards_ds[10].range_val[14] = 151;
  cards_ds[10].range_val[15] = 151;
  cards_ds[10].range_val[16] = 154;
  cards_ds[10].range_val[17] = 154;
  cards_ds[10].range_val[18] = 156;
  cards_ds[10].range_val[19] = 159;
  cards_ds[10].range_val[20] = 224;
  cards_ds[10].range_val[21] = 241;
  cards_ds[10].range_val[22] = 244;
  cards_ds[10].range_val[23] = 252;
  tmp___7 = 24U;
  while (1) {
    if (tmp___7 >= 32U) {
      break;
    } else {
    }
    cards_ds[10].range_val[tmp___7] = 0;
    tmp___7 = tmp___7 + 1U;
  }
  chip = (int )p->chip & 255;
  printk("%s at ", board_names[p->board_name_index]);
  switch ((unsigned int )p->chip & 4294967040U) {
  case 256U:
  printk("VLB Slot %d.\n", (int )p->pci_device_fn);
  goto ldv_34950;
  case 512U:
  printk("EISA Slot %d.\n", (int )p->pci_device_fn);
  goto ldv_34950;
  case 1024U: ;
  default:
  printk("PCI %d/%d/%d.\n", (int )p->pci_bus, ((int )p->pci_device_fn >> 3) & 31,
         (int )p->pci_device_fn & 7);
  goto ldv_34950;
  }
  ldv_34950:
  printk("Card Dump:\n");
  k = 0;
  i = 0;
  goto ldv_34958;
  ldv_34957:
  j = cards_ds[chip].range_val[i * 2];
  goto ldv_34955;
  ldv_34954:
  tmp___8 = aic_inb(p, (long )j);
  printk("%02x:%02x ", j, (int )tmp___8);
  k = k + 1;
  if (k == 13) {
    printk("\n");
    k = 0;
  } else {
  }
  j = j + 1;
  ldv_34955: ;
  if (cards_ds[chip].range_val[i * 2 + 1] >= j) {
    goto ldv_34954;
  } else {
  }
  i = i + 1;
  ldv_34958: ;
  if (cards_ds[chip].num_ranges > i) {
    goto ldv_34957;
  } else {
  }
  if (k != 0) {
    printk("\n");
  } else {
  }
  if (((unsigned int )p->features & 64U) != 0U) {
    aic_outb(p, 0, 248L);
    aic_outb(p, 0, 246L);
    aic_outb(p, 0, 244L);
  } else {
  }
  return;
}
}
static void aic7xxx_print_scratch_ram(struct aic7xxx_host *p )
{
  int i ;
  int k ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  k = 0;
  printk("Scratch RAM:\n");
  i = 32;
  goto ldv_34966;
  ldv_34965:
  tmp = aic_inb(p, (long )i);
  printk("%02x:%02x ", i, (int )tmp);
  k = k + 1;
  if (k == 13) {
    printk("\n");
    k = 0;
  } else {
  }
  i = i + 1;
  ldv_34966: ;
  if (i <= 95) {
    goto ldv_34965;
  } else {
  }
  if (((unsigned int )p->features & 16U) != 0U) {
    i = 112;
    goto ldv_34969;
    ldv_34968:
    tmp___0 = aic_inb(p, (long )i);
    printk("%02x:%02x ", i, (int )tmp___0);
    k = k + 1;
    if (k == 13) {
      printk("\n");
      k = 0;
    } else {
    }
    i = i + 1;
    ldv_34969: ;
    if (i <= 127) {
      goto ldv_34968;
    } else {
    }
  } else {
  }
  printk("\n");
  return;
}
}
static int aic7xxx_buffer_size = 0;
static char *aic7xxx_buffer = 0;
static int aic7xxx_set_info(char *buffer , int length , struct Scsi_Host *HBAptr )
{
  {
  return (-38);
}
}
int aic7xxx_proc_info(struct Scsi_Host *HBAptr , char *buffer , char **start , off_t offset ,
                      int length , int inout )
{
  struct aic7xxx_host *p ;
  struct aic_dev_data *aic_dev ;
  struct scsi_device *sdptr ;
  int size ;
  unsigned char i ;
  unsigned char tindex ;
  int tmp ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  char *channel ;
  char *ultra ;
  char *wide ;
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
  struct list_head const *__mptr___1 ;
  int tmp___37 ;
  int tmp___38 ;
  struct aic7xxx_syncrate *sync_rate ;
  unsigned char options ;
  int period ;
  int rate ;
  int tmp___39 ;
  int tmp___40 ;
  int tmp___41 ;
  int tmp___42 ;
  int tmp___43 ;
  int tmp___44 ;
  int tmp___45 ;
  int tmp___46 ;
  int tmp___47 ;
  int tmp___48 ;
  int tmp___49 ;
  int tmp___50 ;
  int tmp___51 ;
  int tmp___52 ;
  int tmp___53 ;
  int tmp___54 ;
  int tmp___55 ;
  struct list_head const *__mptr___2 ;
  int __min1 ;
  int __min2 ;
  size_t __len ;
  void *__ret ;
  {
  size = 0;
  p = first_aic7xxx;
  goto ldv_34993;
  ldv_34992:
  p = p->next;
  ldv_34993: ;
  if ((unsigned long )p != (unsigned long )((struct aic7xxx_host *)0) && (unsigned long )p->host != (unsigned long )HBAptr) {
    goto ldv_34992;
  } else {
  }
  if ((unsigned long )p == (unsigned long )((struct aic7xxx_host *)0)) {
    tmp = sprintf(buffer, "Can\'t find adapter for host number %d\n", HBAptr->host_no);
    size = tmp + size;
    if (size > length) {
      return (size);
    } else {
      return (length);
    }
  } else {
  }
  if (inout == 1) {
    tmp___0 = aic7xxx_set_info(buffer, length, HBAptr);
    return (tmp___0);
  } else {
  }
  p = (struct aic7xxx_host *)(& HBAptr->hostdata);
  size = 4096;
  __mptr = (struct list_head const *)p->aic_devs.next;
  aic_dev = (struct aic_dev_data *)__mptr + 0xffffffffffffff50UL;
  goto ldv_35000;
  ldv_34999:
  size = size + 512;
  __mptr___0 = (struct list_head const *)aic_dev->list.next;
  aic_dev = (struct aic_dev_data *)__mptr___0 + 0xffffffffffffff50UL;
  ldv_35000: ;
  if ((unsigned long )(& aic_dev->list) != (unsigned long )(& p->aic_devs)) {
    goto ldv_34999;
  } else {
  }
  if (aic7xxx_buffer_size != size) {
    if ((unsigned long )aic7xxx_buffer != (unsigned long )((char *)0)) {
      kfree((void const *)aic7xxx_buffer);
      aic7xxx_buffer_size = 0;
    } else {
    }
    tmp___1 = kmalloc((size_t )size, 208U);
    aic7xxx_buffer = (char *)tmp___1;
  } else {
  }
  if ((unsigned long )aic7xxx_buffer == (unsigned long )((char *)0)) {
    size = sprintf(buffer, "AIC7xxx - kmalloc error at line %d\n", 142);
    return (size);
  } else {
  }
  aic7xxx_buffer_size = size;
  size = 0;
  tmp___2 = sprintf(aic7xxx_buffer + (unsigned long )size, "Adaptec AIC7xxx driver version: ");
  size = tmp___2 + size;
  tmp___3 = sprintf(aic7xxx_buffer + (unsigned long )size, "%s/", (char *)"5.2.6");
  size = tmp___3 + size;
  tmp___4 = sprintf(aic7xxx_buffer + (unsigned long )size, "%s", (char *)"5.2.0");
  size = tmp___4 + size;
  tmp___5 = sprintf(aic7xxx_buffer + (unsigned long )size, "\n");
  size = tmp___5 + size;
  tmp___6 = sprintf(aic7xxx_buffer + (unsigned long )size, "Adapter Configuration:\n");
  size = tmp___6 + size;
  tmp___7 = sprintf(aic7xxx_buffer + (unsigned long )size, "           SCSI Adapter: %s\n",
                    board_names[p->board_name_index]);
  size = tmp___7 + size;
  if (((long )p->flags & 8L) != 0L) {
    tmp___8 = sprintf(aic7xxx_buffer + (unsigned long )size, "                         Twin Channel Controller ");
    size = tmp___8 + size;
  } else {
    channel = (char *)"";
    ultra = (char *)"";
    wide = (char *)"Narrow ";
    if (((long )p->flags & 4194304L) != 0L) {
      channel = (char *)" Channel A";
      if (((long )p->flags & 96L) != 0L) {
        channel = ((long )p->flags & 32L) != 0L ? (char *)" Channel B" : (char *)" Channel C";
      } else {
      }
    } else {
    }
    if (((unsigned int )p->features & 4U) != 0U) {
      wide = (char *)"Wide ";
    } else {
    }
    if (((unsigned int )p->features & 512U) != 0U) {
      switch ((unsigned int )p->chip & 255U) {
      case 9U: ;
      case 10U:
      ultra = (char *)"Ultra-160/m LVD/SE ";
      goto ldv_35007;
      default:
      ultra = (char *)"Ultra-3 LVD/SE ";
      goto ldv_35007;
      }
      ldv_35007: ;
    } else
    if (((unsigned int )p->features & 2U) != 0U) {
      ultra = (char *)"Ultra-2 LVD/SE ";
    } else
    if ((int )p->features & 1) {
      ultra = (char *)"Ultra ";
    } else {
    }
    tmp___9 = sprintf(aic7xxx_buffer + (unsigned long )size, "                           %s%sController%s ",
                      ultra, wide, channel);
    size = tmp___9 + size;
  }
  switch ((unsigned int )p->chip & 4294967040U) {
  case 256U:
  tmp___10 = sprintf(aic7xxx_buffer + (unsigned long )size, "at VLB slot %d\n", (int )p->pci_device_fn);
  size = tmp___10 + size;
  goto ldv_35010;
  case 512U:
  tmp___11 = sprintf(aic7xxx_buffer + (unsigned long )size, "at EISA slot %d\n", (int )p->pci_device_fn);
  size = tmp___11 + size;
  goto ldv_35010;
  default:
  tmp___12 = sprintf(aic7xxx_buffer + (unsigned long )size, "at PCI %d/%d/%d\n", (int )p->pci_bus,
                     ((int )p->pci_device_fn >> 3) & 31, (int )p->pci_device_fn & 7);
  size = tmp___12 + size;
  goto ldv_35010;
  }
  ldv_35010: ;
  if ((unsigned long )p->maddr == (unsigned long )((unsigned char volatile *)0)) {
    tmp___13 = sprintf(aic7xxx_buffer + (unsigned long )size, "    Programmed I/O Base: %lx\n",
                       p->base);
    size = tmp___13 + size;
  } else {
    tmp___14 = sprintf(aic7xxx_buffer + (unsigned long )size, "    PCI MMAPed I/O Base: 0x%lx\n",
                       p->mbase);
    size = tmp___14 + size;
  }
  if (((unsigned int )p->chip & 768U) != 0U) {
    tmp___15 = sprintf(aic7xxx_buffer + (unsigned long )size, "    BIOS Memory Address: 0x%08x\n",
                       p->bios_address);
    size = tmp___15 + size;
  } else {
  }
  tmp___16 = sprintf(aic7xxx_buffer + (unsigned long )size, " Adapter SEEPROM Config: %s\n",
                     ((long )p->flags & 16777216L) == 0L ? (((long )p->flags & 4L) != 0L ? (char *)"SEEPROM not found, using defaults." : (char *)"SEEPROM not found, using leftover BIOS values.") : (char *)"SEEPROM found and used.");
  size = tmp___16 + size;
  tmp___17 = sprintf(aic7xxx_buffer + (unsigned long )size, "      Adaptec SCSI BIOS: %s\n",
                     ((long )p->flags & 8388608L) != 0L ? (char *)"Enabled" : (char *)"Disabled");
  size = tmp___17 + size;
  tmp___18 = sprintf(aic7xxx_buffer + (unsigned long )size, "                    IRQ: %d\n",
                     HBAptr->irq);
  size = tmp___18 + size;
  tmp___19 = sprintf(aic7xxx_buffer + (unsigned long )size, "                   SCBs: Active %d, Max Active %d,\n",
                     (int )p->activescbs, (int )p->max_activescbs);
  size = tmp___19 + size;
  tmp___20 = sprintf(aic7xxx_buffer + (unsigned long )size, "                         Allocated %d, HW %d, Page %d\n",
                     (int )(p->scb_data)->numscbs, (int )(p->scb_data)->maxhscbs,
                     (int )(p->scb_data)->maxscbs);
  size = tmp___20 + size;
  if (((long )p->flags & 2147483648L) != 0L) {
    tmp___21 = sprintf(aic7xxx_buffer + (unsigned long )size, "                         Using External SCB SRAM\n");
    size = tmp___21 + size;
  } else {
  }
  tmp___22 = sprintf(aic7xxx_buffer + (unsigned long )size, "             Interrupts: %ld",
                     p->isr_count);
  size = tmp___22 + size;
  if (((unsigned int )p->chip & 512U) != 0U) {
    tmp___23 = sprintf(aic7xxx_buffer + (unsigned long )size, " %s\n", ((int )p->pause & 8) != 0 ? (char *)"(Level Sensitive)" : (char *)"(Edge Triggered)");
    size = tmp___23 + size;
  } else {
    tmp___24 = sprintf(aic7xxx_buffer + (unsigned long )size, "\n");
    size = tmp___24 + size;
  }
  tmp___25 = sprintf(aic7xxx_buffer + (unsigned long )size, "      BIOS Control Word: 0x%04x\n",
                     (int )p->bios_control);
  size = tmp___25 + size;
  tmp___26 = sprintf(aic7xxx_buffer + (unsigned long )size, "   Adapter Control Word: 0x%04x\n",
                     (int )p->adapter_control);
  size = tmp___26 + size;
  tmp___27 = sprintf(aic7xxx_buffer + (unsigned long )size, "   Extended Translation: %sabled\n",
                     ((long )p->flags & 256L) != 0L ? (char *)"En" : (char *)"Dis");
  size = tmp___27 + size;
  tmp___28 = sprintf(aic7xxx_buffer + (unsigned long )size, "Disconnect Enable Flags: 0x%04x\n",
                     (int )p->discenable);
  size = tmp___28 + size;
  if (((unsigned int )p->features & 3U) != 0U) {
    tmp___29 = sprintf(aic7xxx_buffer + (unsigned long )size, "     Ultra Enable Flags: 0x%04x\n",
                       (int )p->ultraenb);
    size = tmp___29 + size;
  } else {
  }
  tmp___30 = sprintf(aic7xxx_buffer + (unsigned long )size, "Default Tag Queue Depth: %d\n",
                     aic7xxx_default_queue_depth);
  size = tmp___30 + size;
  tmp___31 = sprintf(aic7xxx_buffer + (unsigned long )size, "    Tagged Queue By Device array for aic7xxx host instance %d:\n",
                     p->instance);
  size = tmp___31 + size;
  tmp___32 = sprintf(aic7xxx_buffer + (unsigned long )size, "      {");
  size = tmp___32 + size;
  i = 0U;
  goto ldv_35014;
  ldv_35013:
  tmp___33 = sprintf(aic7xxx_buffer + (unsigned long )size, "%d,", (int )aic7xxx_tag_info[p->instance].tag_commands[(int )i]);
  size = tmp___33 + size;
  i = (unsigned char )((int )i + 1);
  ldv_35014: ;
  if ((unsigned int )i <= 14U) {
    goto ldv_35013;
  } else {
  }
  tmp___34 = sprintf(aic7xxx_buffer + (unsigned long )size, "%d}\n", (int )aic7xxx_tag_info[p->instance].tag_commands[(int )i]);
  size = tmp___34 + size;
  tmp___35 = sprintf(aic7xxx_buffer + (unsigned long )size, "\n");
  size = tmp___35 + size;
  tmp___36 = sprintf(aic7xxx_buffer + (unsigned long )size, "Statistics:\n\n");
  size = tmp___36 + size;
  __mptr___1 = (struct list_head const *)p->aic_devs.next;
  aic_dev = (struct aic_dev_data *)__mptr___1 + 0xffffffffffffff50UL;
  goto ldv_35035;
  ldv_35034:
  sdptr = aic_dev->SDptr;
  tindex = ((int )((unsigned char )sdptr->channel) << 3U) | (int )((unsigned char )sdptr->id);
  tmp___37 = sprintf(aic7xxx_buffer + (unsigned long )size, "(scsi%d:%d:%d:%d)\n",
                     p->host_no, sdptr->channel, sdptr->id, sdptr->lun);
  size = tmp___37 + size;
  tmp___38 = sprintf(aic7xxx_buffer + (unsigned long )size, "  Device using %s/%s",
                     (unsigned int )aic_dev->cur.width == 1U ? (char *)"Wide" : (char *)"Narrow",
                     (unsigned int )aic_dev->cur.offset != 0U ? (char *)"Sync transfers at " : (char *)"Async transfers.\n");
  size = tmp___38 + size;
  if ((unsigned int )aic_dev->cur.offset != 0U) {
    options = aic_dev->cur.options;
    period = (int )aic_dev->cur.period;
    rate = (unsigned int )aic_dev->cur.width == 1U;
    sync_rate = aic7xxx_find_syncrate(p, (unsigned int *)(& period), 0U, & options);
    if ((unsigned long )sync_rate != (unsigned long )((struct aic7xxx_syncrate *)0)) {
      tmp___39 = sprintf(aic7xxx_buffer + (unsigned long )size, "%s MByte/sec, offset %d\n",
                         sync_rate->rate[rate], (int )aic_dev->cur.offset);
      size = tmp___39 + size;
    } else {
      tmp___40 = sprintf(aic7xxx_buffer + (unsigned long )size, "3.3 MByte/sec, offset %d\n",
                         (int )aic_dev->cur.offset);
      size = tmp___40 + size;
    }
  } else {
  }
  tmp___41 = sprintf(aic7xxx_buffer + (unsigned long )size, "  Transinfo settings: ");
  size = tmp___41 + size;
  tmp___42 = sprintf(aic7xxx_buffer + (unsigned long )size, "current(%d/%d/%d/%d), ",
                     (int )aic_dev->cur.period, (int )aic_dev->cur.offset, (int )aic_dev->cur.width,
                     (int )aic_dev->cur.options);
  size = tmp___42 + size;
  tmp___43 = sprintf(aic7xxx_buffer + (unsigned long )size, "goal(%d/%d/%d/%d), ",
                     (int )aic_dev->goal.period, (int )aic_dev->goal.offset, (int )aic_dev->goal.width,
                     (int )aic_dev->goal.options);
  size = tmp___43 + size;
  tmp___44 = sprintf(aic7xxx_buffer + (unsigned long )size, "user(%d/%d/%d/%d)\n",
                     (int )p->user[(int )tindex].period, (int )p->user[(int )tindex].offset,
                     (int )p->user[(int )tindex].width, (int )p->user[(int )tindex].options);
  size = tmp___44 + size;
  if ((unsigned int )*((unsigned char *)sdptr + 293UL) != 0U) {
    tmp___45 = sprintf(aic7xxx_buffer + (unsigned long )size, "  Tagged Command Queueing Enabled, Ordered Tags %s, Depth %d/%d\n",
                       (unsigned int )*((unsigned char *)sdptr + 293UL) != 0U ? (char *)"Enabled" : (char *)"Disabled",
                       (int )sdptr->queue_depth, (int )aic_dev->max_q_depth);
    size = tmp___45 + size;
  } else {
  }
  if (aic_dev->barrier_total != 0L) {
    tmp___46 = sprintf(aic7xxx_buffer + (unsigned long )size, "  Total transfers %ld:\n    (%ld/%ld/%ld/%ld reads/writes/REQ_BARRIER/Ordered Tags)\n",
                       aic_dev->r_total + aic_dev->w_total, aic_dev->r_total, aic_dev->w_total,
                       aic_dev->barrier_total, aic_dev->ordered_total);
    size = tmp___46 + size;
  } else {
    tmp___47 = sprintf(aic7xxx_buffer + (unsigned long )size, "  Total transfers %ld:\n    (%ld/%ld reads/writes)\n",
                       aic_dev->r_total + aic_dev->w_total, aic_dev->r_total, aic_dev->w_total);
    size = tmp___47 + size;
  }
  tmp___48 = sprintf(aic7xxx_buffer + (unsigned long )size, "%s\n", (char *)"               0 - 4K   4 - 16K   16 - 64K  64 - 256K  256K - 1M        1M+");
  size = tmp___48 + size;
  tmp___49 = sprintf(aic7xxx_buffer + (unsigned long )size, "   Reads:");
  size = tmp___49 + size;
  i = 0U;
  goto ldv_35027;
  ldv_35026:
  tmp___50 = sprintf(aic7xxx_buffer + (unsigned long )size, " %10ld", aic_dev->r_bins[(int )i]);
  size = tmp___50 + size;
  i = (unsigned char )((int )i + 1);
  ldv_35027: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_35026;
  } else {
  }
  tmp___51 = sprintf(aic7xxx_buffer + (unsigned long )size, "\n");
  size = tmp___51 + size;
  tmp___52 = sprintf(aic7xxx_buffer + (unsigned long )size, "  Writes:");
  size = tmp___52 + size;
  i = 0U;
  goto ldv_35032;
  ldv_35031:
  tmp___53 = sprintf(aic7xxx_buffer + (unsigned long )size, " %10ld", aic_dev->w_bins[(int )i]);
  size = tmp___53 + size;
  i = (unsigned char )((int )i + 1);
  ldv_35032: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_35031;
  } else {
  }
  tmp___54 = sprintf(aic7xxx_buffer + (unsigned long )size, "\n");
  size = tmp___54 + size;
  tmp___55 = sprintf(aic7xxx_buffer + (unsigned long )size, "\n\n");
  size = tmp___55 + size;
  __mptr___2 = (struct list_head const *)aic_dev->list.next;
  aic_dev = (struct aic_dev_data *)__mptr___2 + 0xffffffffffffff50UL;
  ldv_35035: ;
  if ((unsigned long )(& aic_dev->list) != (unsigned long )(& p->aic_devs)) {
    goto ldv_35034;
  } else {
  }
  if (size >= aic7xxx_buffer_size) {
    printk("\faic7xxx: Overflow in aic7xxx_proc.c\n");
  } else {
  }
  if ((off_t )(size + -1) < offset) {
    kfree((void const *)aic7xxx_buffer);
    aic7xxx_buffer = 0;
    length = 0;
    aic7xxx_buffer_size = length;
    *start = 0;
  } else {
    *start = buffer;
    __min1 = length;
    __min2 = (int )((unsigned int )size - (unsigned int )offset);
    length = __min1 < __min2 ? __min1 : __min2;
    __len = (size_t )length;
    __ret = memcpy((void *)buffer, (void const *)aic7xxx_buffer + (unsigned long )offset,
                             __len);
  }
  return (length);
}
}
void ldv_check_final_state(void) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct scsi_host_template *var_group1 ;
  struct Scsi_Host *var_group2 ;
  struct scsi_device *var_group3 ;
  struct scsi_cmnd *var_group4 ;
  int var_do_aic7xxx_isr_54_p0 ;
  void *var_do_aic7xxx_isr_54_p1 ;
  int ldv_s_driver_template_scsi_host_template ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_driver_template_scsi_host_template = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_35143;
  ldv_35142:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_s_driver_template_scsi_host_template == 0) {
    ldv_handler_precall();
    aic7xxx_release(var_group2);
    ldv_s_driver_template_scsi_host_template = 0;
  } else {
  }
  goto ldv_35131;
  case 1:
  ldv_handler_precall();
  aic7xxx_detect(var_group1);
  goto ldv_35131;
  case 2:
  ldv_handler_precall();
  aic7xxx_info(var_group2);
  goto ldv_35131;
  case 3:
  ldv_handler_precall();
  aic7xxx_slave_alloc(var_group3);
  goto ldv_35131;
  case 4:
  ldv_handler_precall();
  aic7xxx_slave_configure(var_group3);
  goto ldv_35131;
  case 5:
  ldv_handler_precall();
  aic7xxx_slave_destroy(var_group3);
  goto ldv_35131;
  case 6:
  ldv_handler_precall();
  aic7xxx_abort(var_group4);
  goto ldv_35131;
  case 7:
  ldv_handler_precall();
  aic7xxx_bus_device_reset(var_group4);
  goto ldv_35131;
  case 8:
  ldv_handler_precall();
  aic7xxx_reset(var_group4);
  goto ldv_35131;
  case 9:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  do_aic7xxx_isr(var_do_aic7xxx_isr_54_p0, var_do_aic7xxx_isr_54_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_35131;
  default: ;
  goto ldv_35131;
  }
  ldv_35131: ;
  ldv_35143:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0 || ldv_s_driver_template_scsi_host_template != 0) {
    goto ldv_35142;
  } else {
  }
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
  ldv_mutex_lock_mutex(ldv_func_arg1);
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
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
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
static int ldv_mutex_cred_guard_mutex ;
int ldv_mutex_lock_interruptible_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_cred_guard_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cred_guard_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
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
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 1;
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
static int ldv_mutex_mutex ;
int ldv_mutex_lock_interruptible_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
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
void ldv_mutex_unlock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
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
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void disable_irq(unsigned int arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void msleep(unsigned int arg0) {
  return;
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
void panic(const char *arg0, ...) {
  return;
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
struct pci_dev *pci_dev_get(struct pci_dev *arg0) {
  return ldv_malloc(sizeof(struct pci_dev));
}
void pci_dev_put(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
struct pci_dev *pci_get_device(unsigned int arg0, unsigned int arg1, struct pci_dev *arg2) {
  return ldv_malloc(sizeof(struct pci_dev));
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void scsi_adjust_queue_depth(struct scsi_device *arg0, int arg1, int arg2) {
  return;
}
void scsi_dma_unmap(struct scsi_cmnd *arg0) {
  return;
}
struct Scsi_Host *scsi_register(struct scsi_host_template *arg0, int arg1) {
  return ldv_malloc(sizeof(struct Scsi_Host));
}
int __VERIFIER_nondet_int(void);
int scsi_track_queue_full(struct scsi_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void scsi_unregister(struct Scsi_Host *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int simple_strtoul(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
char *strsep(char **arg0, const char *arg1) {
  return ldv_malloc(sizeof(char));
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
