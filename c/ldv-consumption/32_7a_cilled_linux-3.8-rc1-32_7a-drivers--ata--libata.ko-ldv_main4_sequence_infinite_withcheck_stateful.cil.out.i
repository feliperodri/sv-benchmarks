extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct __va_list_tag;
typedef struct __va_list_tag __va_list_tag;
typedef __builtin_va_list __gnuc_va_list[1U];
typedef __gnuc_va_list va_list[1U];
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
typedef __u32 __le32;
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
struct va_format {
   char const *fmt ;
   va_list *va ;
};
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
union __anonunion_ldv_13900_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13900_134 ldv_13900 ;
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
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct pdev_archdata {
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
union __anonunion_ldv_15610_136 {
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
   union __anonunion_ldv_15610_136 ldv_15610 ;
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
union __anonunion_ldv_16641_138 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_16651_142 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_16653_141 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_16651_142 ldv_16651 ;
   int units ;
};
struct __anonstruct_ldv_16655_140 {
   union __anonunion_ldv_16653_141 ldv_16653 ;
   atomic_t _count ;
};
union __anonunion_ldv_16656_139 {
   unsigned long counters ;
   struct __anonstruct_ldv_16655_140 ldv_16655 ;
};
struct __anonstruct_ldv_16657_137 {
   union __anonunion_ldv_16641_138 ldv_16641 ;
   union __anonunion_ldv_16656_139 ldv_16656 ;
};
struct __anonstruct_ldv_16664_144 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_16668_143 {
   struct list_head lru ;
   struct __anonstruct_ldv_16664_144 ldv_16664 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_16673_145 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_16657_137 ldv_16657 ;
   union __anonunion_ldv_16668_143 ldv_16668 ;
   union __anonunion_ldv_16673_145 ldv_16673 ;
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
struct __anonstruct_ldv_19432_149 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_19433_148 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_19432_149 ldv_19432 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_19433_148 ldv_19433 ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct dentry;
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_151 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_151 sigset_t;
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
struct __anonstruct__kill_153 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_154 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_155 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_156 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_157 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_158 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_159 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_152 {
   int _pad[28U] ;
   struct __anonstruct__kill_153 _kill ;
   struct __anonstruct__timer_154 _timer ;
   struct __anonstruct__rt_155 _rt ;
   struct __anonstruct__sigchld_156 _sigchld ;
   struct __anonstruct__sigfault_157 _sigfault ;
   struct __anonstruct__sigpoll_158 _sigpoll ;
   struct __anonstruct__sigsys_159 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_152 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
union __anonunion_ldv_22134_162 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_22143_163 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_164 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_165 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_22134_162 ldv_22134 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_22143_163 ldv_22143 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_164 type_data ;
   union __anonunion_payload_165 payload ;
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
union __anonunion_ki_obj_166 {
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
   union __anonunion_ki_obj_166 ki_obj ;
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
struct backing_dev_info;
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
struct pipe_inode_info;
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
struct __anonstruct_ldv_24179_169 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_24181_168 {
   struct __anonstruct_ldv_24179_169 ldv_24179 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_24181_168 ldv_24181 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_170 {
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
   union __anonunion_d_u_170 d_u ;
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
union __anonunion_ldv_24915_171 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_24915_171 ldv_24915 ;
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
union __anonunion_ldv_25348_174 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_25368_175 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_25384_176 {
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
   union __anonunion_ldv_25348_174 ldv_25348 ;
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
   union __anonunion_ldv_25368_175 ldv_25368 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_25384_176 ldv_25384 ;
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
union __anonunion_ldv_29980_181 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion_ldv_29984_182 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion_ldv_29980_181 ldv_29980 ;
   union __anonunion_ldv_29984_182 ldv_29984 ;
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
union __anonunion_ldv_30431_183 {
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
union __anonunion_ldv_30442_184 {
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
   union __anonunion_ldv_30431_183 ldv_30431 ;
   union __anonunion_ldv_30442_184 ldv_30442 ;
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
typedef int rq_timed_out_fn(struct request * );
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
struct cgroup;
struct css_id;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   atomic_t refcnt ;
   unsigned long flags ;
   struct css_id *id ;
   struct work_struct dput_work ;
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
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct cgroup *top_cgroup ;
   struct list_head css_sets ;
   struct list_head allcg_node ;
   struct list_head cft_q_node ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct callback_head callback_head ;
   struct list_head event_list ;
   spinlock_t event_list_lock ;
   struct simple_xattrs xattrs ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cg_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct reclaim_state {
   unsigned long reclaimed_slab ;
};
struct swap_extent {
   struct list_head list ;
   unsigned long start_page ;
   unsigned long nr_pages ;
   sector_t start_block ;
};
struct swap_info_struct {
   unsigned long flags ;
   short prio ;
   signed char type ;
   signed char next ;
   unsigned int max ;
   unsigned char *swap_map ;
   unsigned int lowest_bit ;
   unsigned int highest_bit ;
   unsigned int pages ;
   unsigned int inuse_pages ;
   unsigned int cluster_next ;
   unsigned int cluster_nr ;
   unsigned int lowest_alloc ;
   unsigned int highest_alloc ;
   struct swap_extent *curr_swap_extent ;
   struct swap_extent first_swap_extent ;
   struct block_device *bdev ;
   struct file *swap_file ;
   unsigned int old_block_size ;
   unsigned long *frontswap_map ;
   atomic_t frontswap_pages ;
};
typedef u64 async_cookie_t;
typedef void async_func_ptr(void * , async_cookie_t );
struct scsi_cmnd;
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
struct scsi_target;
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
   int (*eh_timed_out)(struct scsi_cmnd * ) ;
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
struct ata_bmdma_prd {
   __le32 addr ;
   __le32 flags_len ;
};
struct ata_taskfile {
   unsigned long flags ;
   u8 protocol ;
   u8 ctl ;
   u8 hob_feature ;
   u8 hob_nsect ;
   u8 hob_lbal ;
   u8 hob_lbam ;
   u8 hob_lbah ;
   u8 feature ;
   u8 nsect ;
   u8 lbal ;
   u8 lbam ;
   u8 lbah ;
   u8 device ;
   u8 command ;
};
typedef u64 acpi_io_address;
typedef void *acpi_handle;
typedef u32 acpi_object_type;
struct __anonstruct_integer_191 {
   acpi_object_type type ;
   u64 value ;
};
struct __anonstruct_string_192 {
   acpi_object_type type ;
   u32 length ;
   char *pointer ;
};
struct __anonstruct_buffer_193 {
   acpi_object_type type ;
   u32 length ;
   u8 *pointer ;
};
struct __anonstruct_package_194 {
   acpi_object_type type ;
   u32 count ;
   union acpi_object *elements ;
};
struct __anonstruct_reference_195 {
   acpi_object_type type ;
   acpi_object_type actual_type ;
   acpi_handle handle ;
};
struct __anonstruct_processor_196 {
   acpi_object_type type ;
   u32 proc_id ;
   acpi_io_address pblk_address ;
   u32 pblk_length ;
};
struct __anonstruct_power_resource_197 {
   acpi_object_type type ;
   u32 system_level ;
   u32 resource_order ;
};
union acpi_object {
   acpi_object_type type ;
   struct __anonstruct_integer_191 integer ;
   struct __anonstruct_string_192 string ;
   struct __anonstruct_buffer_193 buffer ;
   struct __anonstruct_package_194 package ;
   struct __anonstruct_reference_195 reference ;
   struct __anonstruct_processor_196 processor ;
   struct __anonstruct_power_resource_197 power_resource ;
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
enum ata_lpm_policy {
    ATA_LPM_UNKNOWN = 0,
    ATA_LPM_MAX_POWER = 1,
    ATA_LPM_MED_POWER = 2,
    ATA_LPM_MIN_POWER = 3
} ;
struct ata_port_operations;
struct ata_port;
struct ata_link;
struct ata_queued_cmd;
enum sw_activity {
    OFF = 0,
    BLINK_ON = 1,
    BLINK_OFF = 2
} ;
struct ata_ioports {
   void *cmd_addr ;
   void *data_addr ;
   void *error_addr ;
   void *feature_addr ;
   void *nsect_addr ;
   void *lbal_addr ;
   void *lbam_addr ;
   void *lbah_addr ;
   void *device_addr ;
   void *status_addr ;
   void *command_addr ;
   void *altstatus_addr ;
   void *ctl_addr ;
   void *bmdma_addr ;
   void *scr_addr ;
};
struct ata_host {
   spinlock_t lock ;
   struct device *dev ;
   void * const *iomap ;
   unsigned int n_ports ;
   void *private_data ;
   struct ata_port_operations *ops ;
   unsigned long flags ;
   struct mutex eh_mutex ;
   struct task_struct *eh_owner ;
   struct ata_port *simplex_claimed ;
   struct ata_port *ports[0U] ;
};
struct ata_device;
struct ata_queued_cmd {
   struct ata_port *ap ;
   struct ata_device *dev ;
   struct scsi_cmnd *scsicmd ;
   void (*scsidone)(struct scsi_cmnd * ) ;
   struct ata_taskfile tf ;
   u8 cdb[16U] ;
   unsigned long flags ;
   unsigned int tag ;
   unsigned int n_elem ;
   unsigned int orig_n_elem ;
   int dma_dir ;
   unsigned int sect_size ;
   unsigned int nbytes ;
   unsigned int extrabytes ;
   unsigned int curbytes ;
   struct scatterlist sgent ;
   struct scatterlist *sg ;
   struct scatterlist *cursg ;
   unsigned int cursg_ofs ;
   unsigned int err_mask ;
   struct ata_taskfile result_tf ;
   void (*complete_fn)(struct ata_queued_cmd * ) ;
   void *private_data ;
   void *lldd_task ;
};
struct ata_port_stats {
   unsigned long unhandled_irq ;
   unsigned long idle_irq ;
   unsigned long rw_reqbuf ;
};
struct ata_ering_entry {
   unsigned int eflags ;
   unsigned int err_mask ;
   u64 timestamp ;
};
struct ata_ering {
   int cursor ;
   struct ata_ering_entry ring[32U] ;
};
union __anonunion_ldv_38497_207 {
   u16 id[256U] ;
   u32 gscr[128U] ;
};
struct ata_device {
   struct ata_link *link ;
   unsigned int devno ;
   unsigned int horkage ;
   unsigned long flags ;
   struct scsi_device *sdev ;
   void *private_data ;
   union acpi_object *gtf_cache ;
   unsigned int gtf_filter ;
   struct device tdev ;
   u64 n_sectors ;
   u64 n_native_sectors ;
   unsigned int class ;
   unsigned long unpark_deadline ;
   u8 pio_mode ;
   u8 dma_mode ;
   u8 xfer_mode ;
   unsigned int xfer_shift ;
   unsigned int multi_count ;
   unsigned int max_sectors ;
   unsigned int cdb_len ;
   unsigned long pio_mask ;
   unsigned long mwdma_mask ;
   unsigned long udma_mask ;
   u16 cylinders ;
   u16 heads ;
   u16 sectors ;
   union __anonunion_ldv_38497_207 ldv_38497 ;
   u8 sata_settings[512U] ;
   int spdn_cnt ;
   struct ata_ering ering ;
};
struct ata_eh_info {
   struct ata_device *dev ;
   u32 serror ;
   unsigned int err_mask ;
   unsigned int action ;
   unsigned int dev_action[2U] ;
   unsigned int flags ;
   unsigned int probe_mask ;
   char desc[80U] ;
   int desc_len ;
};
struct ata_eh_context {
   struct ata_eh_info i ;
   int tries[2U] ;
   int cmd_timeout_idx[2U][6U] ;
   unsigned int classes[2U] ;
   unsigned int did_probe_mask ;
   unsigned int unloaded_mask ;
   unsigned int saved_ncq_enabled ;
   u8 saved_xfer_mode[2U] ;
   unsigned long last_reset ;
};
struct ata_acpi_drive {
   u32 pio ;
   u32 dma ;
};
struct ata_acpi_gtm {
   struct ata_acpi_drive drive[2U] ;
   u32 flags ;
};
struct ata_link {
   struct ata_port *ap ;
   int pmp ;
   struct device tdev ;
   unsigned int active_tag ;
   u32 sactive ;
   unsigned int flags ;
   u32 saved_scontrol ;
   unsigned int hw_sata_spd_limit ;
   unsigned int sata_spd_limit ;
   unsigned int sata_spd ;
   enum ata_lpm_policy lpm_policy ;
   struct ata_eh_info eh_info ;
   struct ata_eh_context eh_context ;
   struct ata_device device[2U] ;
};
struct ata_port {
   struct Scsi_Host *scsi_host ;
   struct ata_port_operations *ops ;
   spinlock_t *lock ;
   unsigned long flags ;
   unsigned int pflags ;
   unsigned int print_id ;
   unsigned int port_no ;
   struct ata_ioports ioaddr ;
   u8 ctl ;
   u8 last_ctl ;
   struct ata_link *sff_pio_task_link ;
   struct delayed_work sff_pio_task ;
   struct ata_bmdma_prd *bmdma_prd ;
   dma_addr_t bmdma_prd_dma ;
   unsigned int pio_mask ;
   unsigned int mwdma_mask ;
   unsigned int udma_mask ;
   unsigned int cbl ;
   struct ata_queued_cmd qcmd[32U] ;
   unsigned long qc_allocated ;
   unsigned int qc_active ;
   int nr_active_links ;
   struct ata_link link ;
   struct ata_link *slave_link ;
   int nr_pmp_links ;
   struct ata_link *pmp_link ;
   struct ata_link *excl_link ;
   struct ata_port_stats stats ;
   struct ata_host *host ;
   struct device *dev ;
   struct device tdev ;
   struct mutex scsi_scan_mutex ;
   struct delayed_work hotplug_task ;
   struct work_struct scsi_rescan_task ;
   unsigned int hsm_task_state ;
   u32 msg_enable ;
   struct list_head eh_done_q ;
   wait_queue_head_t eh_wait_q ;
   int eh_tries ;
   struct completion park_req_pending ;
   pm_message_t pm_mesg ;
   int *pm_result ;
   enum ata_lpm_policy target_lpm_policy ;
   struct timer_list fastdrain_timer ;
   unsigned long fastdrain_cnt ;
   int em_message_type ;
   void *private_data ;
   struct ata_acpi_gtm __acpi_init_gtm ;
   u8 sector_buf[512U] ;
};
struct ata_port_operations {
   int (*qc_defer)(struct ata_queued_cmd * ) ;
   int (*check_atapi_dma)(struct ata_queued_cmd * ) ;
   void (*qc_prep)(struct ata_queued_cmd * ) ;
   unsigned int (*qc_issue)(struct ata_queued_cmd * ) ;
   bool (*qc_fill_rtf)(struct ata_queued_cmd * ) ;
   int (*cable_detect)(struct ata_port * ) ;
   unsigned long (*mode_filter)(struct ata_device * , unsigned long ) ;
   void (*set_piomode)(struct ata_port * , struct ata_device * ) ;
   void (*set_dmamode)(struct ata_port * , struct ata_device * ) ;
   int (*set_mode)(struct ata_link * , struct ata_device ** ) ;
   unsigned int (*read_id)(struct ata_device * , struct ata_taskfile * , u16 * ) ;
   void (*dev_config)(struct ata_device * ) ;
   void (*freeze)(struct ata_port * ) ;
   void (*thaw)(struct ata_port * ) ;
   int (*prereset)(struct ata_link * , unsigned long ) ;
   int (*softreset)(struct ata_link * , unsigned int * , unsigned long ) ;
   int (*hardreset)(struct ata_link * , unsigned int * , unsigned long ) ;
   void (*postreset)(struct ata_link * , unsigned int * ) ;
   int (*pmp_prereset)(struct ata_link * , unsigned long ) ;
   int (*pmp_softreset)(struct ata_link * , unsigned int * , unsigned long ) ;
   int (*pmp_hardreset)(struct ata_link * , unsigned int * , unsigned long ) ;
   void (*pmp_postreset)(struct ata_link * , unsigned int * ) ;
   void (*error_handler)(struct ata_port * ) ;
   void (*lost_interrupt)(struct ata_port * ) ;
   void (*post_internal_cmd)(struct ata_queued_cmd * ) ;
   void (*sched_eh)(struct ata_port * ) ;
   void (*end_eh)(struct ata_port * ) ;
   int (*scr_read)(struct ata_link * , unsigned int , u32 * ) ;
   int (*scr_write)(struct ata_link * , unsigned int , u32 ) ;
   void (*pmp_attach)(struct ata_port * ) ;
   void (*pmp_detach)(struct ata_port * ) ;
   int (*set_lpm)(struct ata_link * , enum ata_lpm_policy , unsigned int ) ;
   int (*port_suspend)(struct ata_port * , pm_message_t ) ;
   int (*port_resume)(struct ata_port * ) ;
   int (*port_start)(struct ata_port * ) ;
   void (*port_stop)(struct ata_port * ) ;
   void (*host_stop)(struct ata_host * ) ;
   void (*sff_dev_select)(struct ata_port * , unsigned int ) ;
   void (*sff_set_devctl)(struct ata_port * , u8 ) ;
   u8 (*sff_check_status)(struct ata_port * ) ;
   u8 (*sff_check_altstatus)(struct ata_port * ) ;
   void (*sff_tf_load)(struct ata_port * , struct ata_taskfile const * ) ;
   void (*sff_tf_read)(struct ata_port * , struct ata_taskfile * ) ;
   void (*sff_exec_command)(struct ata_port * , struct ata_taskfile const * ) ;
   unsigned int (*sff_data_xfer)(struct ata_device * , unsigned char * , unsigned int ,
                                 int ) ;
   void (*sff_irq_on)(struct ata_port * ) ;
   bool (*sff_irq_check)(struct ata_port * ) ;
   void (*sff_irq_clear)(struct ata_port * ) ;
   void (*sff_drain_fifo)(struct ata_queued_cmd * ) ;
   void (*bmdma_setup)(struct ata_queued_cmd * ) ;
   void (*bmdma_start)(struct ata_queued_cmd * ) ;
   void (*bmdma_stop)(struct ata_queued_cmd * ) ;
   u8 (*bmdma_status)(struct ata_port * ) ;
   ssize_t (*em_show)(struct ata_port * , char * ) ;
   ssize_t (*em_store)(struct ata_port * , char const * , size_t ) ;
   ssize_t (*sw_activity_show)(struct ata_device * , char * ) ;
   ssize_t (*sw_activity_store)(struct ata_device * , enum sw_activity ) ;
   void (*phy_reset)(struct ata_port * ) ;
   void (*eng_timeout)(struct ata_port * ) ;
   struct ata_port_operations const *inherits ;
};
struct ata_port_info {
   unsigned long flags ;
   unsigned long link_flags ;
   unsigned long pio_mask ;
   unsigned long mwdma_mask ;
   unsigned long udma_mask ;
   struct ata_port_operations *port_ops ;
   void *private_data ;
};
struct ata_timing {
   unsigned short mode ;
   unsigned short setup ;
   unsigned short act8b ;
   unsigned short rec8b ;
   unsigned short cyc8b ;
   unsigned short active ;
   unsigned short recover ;
   unsigned short dmack_hold ;
   unsigned short cycle ;
   unsigned short udma ;
};
struct pci_bits {
   unsigned int reg ;
   unsigned int width ;
   unsigned long mask ;
   unsigned long val ;
};
struct platform_device;
enum ata_link_iter_mode {
    ATA_LITER_EDGE = 0,
    ATA_LITER_HOST_FIRST = 1,
    ATA_LITER_PMP_FIRST = 2
} ;
enum ata_dev_iter_mode {
    ATA_DITER_ENABLED = 0,
    ATA_DITER_ENABLED_REVERSE = 1,
    ATA_DITER_ALL = 2,
    ATA_DITER_ALL_REVERSE = 3
} ;
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct ata_force_param {
   char const *name ;
   unsigned int cbl ;
   int spd_limit ;
   unsigned long xfer_mask ;
   unsigned int horkage_on ;
   unsigned int horkage_off ;
   unsigned int lflags ;
};
struct ata_force_ent {
   int port ;
   int device ;
   struct ata_force_param param ;
};
struct ata_xfer_ent {
   int shift ;
   int bits ;
   u8 base ;
};
struct ata_blacklist_entry {
   char const *model_num ;
   char const *model_rev ;
   unsigned long horkage ;
};
typedef int ldv_func_ret_type___2;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;
typedef unsigned int uint;
enum system_states {
    SYSTEM_BOOTING = 0,
    SYSTEM_RUNNING = 1,
    SYSTEM_HALT = 2,
    SYSTEM_POWER_OFF = 3,
    SYSTEM_RESTART = 4
} ;
enum hrtimer_restart;
struct execute_work {
   struct work_struct work ;
};
struct klist {
   spinlock_t k_lock ;
   struct list_head k_list ;
   void (*get)(struct klist_node * ) ;
   void (*put)(struct klist_node * ) ;
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
enum scsi_device_event {
    SDEV_EVT_MEDIA_CHANGE = 1,
    SDEV_EVT_LAST = 1,
    SDEV_EVT_MAXBITS = 2
} ;
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
struct attribute_container {
   struct list_head node ;
   struct klist containers ;
   struct class *class ;
   struct attribute_group const *grp ;
   struct device_attribute **attrs ;
   int (*match)(struct attribute_container * , struct device * ) ;
   unsigned long flags ;
};
struct transport_container;
struct transport_container {
   struct attribute_container ac ;
   struct attribute_group const *statistics ;
};
struct scsi_transport_template {
   struct transport_container host_attrs ;
   struct transport_container target_attrs ;
   struct transport_container device_attrs ;
   int (*user_scan)(struct Scsi_Host * , uint , uint , uint ) ;
   int device_size ;
   int device_private_offset ;
   int target_size ;
   int target_private_offset ;
   int host_size ;
   unsigned char create_work_queue : 1 ;
   void (*eh_strategy_handler)(struct Scsi_Host * ) ;
   int (*eh_timed_out)(struct scsi_cmnd * ) ;
   int (*it_nexus_response)(struct Scsi_Host * , u64 , int ) ;
   int (*tsk_mgmt_response)(struct Scsi_Host * , u64 , u64 , int ) ;
};
struct hd_geometry {
   unsigned char heads ;
   unsigned char sectors ;
   unsigned short cylinders ;
   unsigned long start ;
};
struct ata_scsi_args {
   struct ata_device *dev ;
   u16 *id ;
   struct scsi_cmnd *cmd ;
   void (*done)(struct scsi_cmnd * ) ;
};
typedef unsigned int (*ata_xlat_func_t)(struct ata_queued_cmd * );
typedef int ldv_func_ret_type___4;
struct pv_lock_ops {
   int (*spin_is_locked)(struct arch_spinlock * ) ;
   int (*spin_is_contended)(struct arch_spinlock * ) ;
   void (*spin_lock)(struct arch_spinlock * ) ;
   void (*spin_lock_flags)(struct arch_spinlock * , unsigned long ) ;
   int (*spin_trylock)(struct arch_spinlock * ) ;
   void (*spin_unlock)(struct arch_spinlock * ) ;
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
struct ata_eh_cmd_timeout_ent {
   u8 const *commands ;
   unsigned long const *timeouts ;
};
struct speed_down_verdict_arg {
   u64 since ;
   int xfer_ok ;
   int nr_errors[8U] ;
};
struct __anonstruct_cmd_descr_201 {
   u8 command ;
   char const *text ;
};
enum hrtimer_restart;
struct transport_class {
   struct class class ;
   int (*setup)(struct transport_container * , struct device * , struct device * ) ;
   int (*configure)(struct transport_container * , struct device * , struct device * ) ;
   int (*remove)(struct transport_container * , struct device * , struct device * ) ;
};
struct ata_internal {
   struct scsi_transport_template t ;
   struct device_attribute private_port_attrs[2U] ;
   struct device_attribute private_link_attrs[3U] ;
   struct device_attribute private_dev_attrs[9U] ;
   struct transport_container link_attr_cont ;
   struct transport_container dev_attr_cont ;
   struct device_attribute *link_attrs[4U] ;
   struct device_attribute *port_attrs[3U] ;
   struct device_attribute *dev_attrs[10U] ;
};
struct __anonstruct_ata_class_names_200 {
   u32 value ;
   char *name ;
};
struct __anonstruct_ata_err_names_202 {
   u32 value ;
   char *name ;
};
struct __anonstruct_ata_xfer_names_204 {
   u32 value ;
   char *name ;
};
struct ata_show_ering_arg {
   char *buf ;
   int written ;
};
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
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
struct compat_timespec;
struct __anonstruct_futex_32 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_33 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_34 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_6198_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6198_31 ldv_6198 ;
};
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
enum hrtimer_restart;
enum blk_eh_timer_return;
enum hrtimer_restart;
enum blk_eh_timer_return;
enum hrtimer_restart;
enum kobject_action {
    KOBJ_ADD = 0,
    KOBJ_REMOVE = 1,
    KOBJ_CHANGE = 2,
    KOBJ_MOVE = 3,
    KOBJ_ONLINE = 4,
    KOBJ_OFFLINE = 5,
    KOBJ_MAX = 6
} ;
typedef u64 acpi_size;
typedef u32 acpi_status;
typedef char *acpi_string;
typedef u64 acpi_integer;
struct acpi_object_list {
   u32 count ;
   union acpi_object *pointer ;
};
struct acpi_buffer {
   acpi_size length ;
   void *pointer ;
};
struct acpi_handle_list {
   u32 count ;
   acpi_handle handles[10U] ;
};
enum acpi_bus_removal_type {
    ACPI_BUS_REMOVAL_NORMAL = 0,
    ACPI_BUS_REMOVAL_EJECT = 1,
    ACPI_BUS_REMOVAL_SUPRISE = 2,
    ACPI_BUS_REMOVAL_TYPE_COUNT = 3
} ;
struct acpi_driver;
struct acpi_device;
struct acpi_bus_ops {
   unsigned char acpi_op_add : 1 ;
   unsigned char acpi_op_start : 1 ;
};
struct acpi_device_ops {
   int (*add)(struct acpi_device * ) ;
   int (*remove)(struct acpi_device * , int ) ;
   int (*start)(struct acpi_device * ) ;
   int (*bind)(struct acpi_device * ) ;
   int (*unbind)(struct acpi_device * ) ;
   void (*notify)(struct acpi_device * , u32 ) ;
};
struct acpi_driver {
   char name[80U] ;
   char class[80U] ;
   struct acpi_device_id const *ids ;
   unsigned int flags ;
   struct acpi_device_ops ops ;
   struct device_driver drv ;
   struct module *owner ;
};
struct acpi_device_status {
   unsigned char present : 1 ;
   unsigned char enabled : 1 ;
   unsigned char show_in_ui : 1 ;
   unsigned char functional : 1 ;
   unsigned char battery_present : 1 ;
   unsigned int reserved : 27 ;
};
struct acpi_device_flags {
   unsigned char dynamic_status : 1 ;
   unsigned char bus_address : 1 ;
   unsigned char removable : 1 ;
   unsigned char ejectable : 1 ;
   unsigned char suprise_removal_ok : 1 ;
   unsigned char power_manageable : 1 ;
   unsigned char performance_manageable : 1 ;
   unsigned char eject_pending : 1 ;
   unsigned int reserved : 24 ;
};
struct acpi_device_dir {
   struct proc_dir_entry *entry ;
};
typedef char acpi_bus_id[8U];
typedef unsigned long acpi_bus_address;
typedef char acpi_device_name[40U];
typedef char acpi_device_class[20U];
struct acpi_device_pnp {
   acpi_bus_id bus_id ;
   acpi_bus_address bus_address ;
   char *unique_id ;
   struct list_head ids ;
   acpi_device_name device_name ;
   acpi_device_class device_class ;
   union acpi_object *str_obj ;
   unsigned long sun ;
};
struct acpi_device_power_flags {
   unsigned char explicit_get : 1 ;
   unsigned char power_resources : 1 ;
   unsigned char inrush_current : 1 ;
   unsigned char power_removed : 1 ;
   unsigned int reserved : 28 ;
};
struct __anonstruct_flags_186 {
   unsigned char valid : 1 ;
   unsigned char os_accessible : 1 ;
   unsigned char explicit_set : 1 ;
   unsigned char reserved : 6 ;
};
struct acpi_device_power_state {
   struct __anonstruct_flags_186 flags ;
   int power ;
   int latency ;
   struct acpi_handle_list resources ;
};
struct acpi_device_power {
   int state ;
   struct acpi_device_power_flags flags ;
   struct acpi_device_power_state states[5U] ;
};
struct acpi_device_perf_flags {
   u8 reserved ;
};
struct __anonstruct_flags_187 {
   unsigned char valid : 1 ;
   unsigned char reserved : 7 ;
};
struct acpi_device_perf_state {
   struct __anonstruct_flags_187 flags ;
   u8 power ;
   u8 performance ;
   int latency ;
};
struct acpi_device_perf {
   int state ;
   struct acpi_device_perf_flags flags ;
   int state_count ;
   struct acpi_device_perf_state *states ;
};
struct acpi_device_wakeup_flags {
   unsigned char valid : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char notifier_present : 1 ;
};
struct acpi_device_wakeup {
   acpi_handle gpe_device ;
   u64 gpe_number ;
   u64 sleep_state ;
   struct acpi_handle_list resources ;
   struct acpi_device_wakeup_flags flags ;
   int prepare_count ;
};
struct acpi_device {
   int device_type ;
   acpi_handle handle ;
   struct acpi_device *parent ;
   struct list_head children ;
   struct list_head node ;
   struct list_head wakeup_list ;
   struct acpi_device_status status ;
   struct acpi_device_flags flags ;
   struct acpi_device_pnp pnp ;
   struct acpi_device_power power ;
   struct acpi_device_wakeup wakeup ;
   struct acpi_device_perf performance ;
   struct acpi_device_dir dir ;
   struct acpi_device_ops ops ;
   struct acpi_driver *driver ;
   void *driver_data ;
   struct device dev ;
   struct acpi_bus_ops bus_ops ;
   enum acpi_bus_removal_type removal_type ;
   u8 physical_node_count ;
   struct list_head physical_node_list ;
   struct mutex physical_node_lock ;
   unsigned long physical_node_id_bitmap[1U] ;
};
struct acpi_bus_type {
   struct list_head list ;
   struct bus_type *bus ;
   int (*find_device)(struct device * , acpi_handle ** ) ;
   int (*find_bridge)(struct device * , acpi_handle ** ) ;
};
enum blk_eh_timer_return;
struct ata_acpi_gtf {
   u8 tf[7U] ;
};
long ldv__builtin_expect(long exp , long c ) ;
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
__inline static unsigned long __ffs(unsigned long word )
{
  {
  __asm__ ("rep; bsf %1,%0": "=r" (word): "rm" (word));
  return (word);
}
}
__inline static int ffs(int x )
{
  int r ;
  {
  __asm__ ("bsfl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
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
__inline static bool is_power_of_2(unsigned long n )
{
  {
  return ((bool )(n != 0UL && ((n - 1UL) & n) == 0UL));
}
}
extern int printk(char const * , ...) ;
extern void print_hex_dump(char const * , char const * , int , int , int ,
                           void const * , size_t , bool ) ;
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  default:
  __bad_percpu_size();
  }
  ldv_2861: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern int strcasecmp(char const * , char const * ) ;
extern int strncasecmp(char const * , char const * , size_t ) ;
extern char *strchr(char const * , int ) ;
extern char *strim(char * ) ;
__inline static char *strstrip(char *str )
{
  char *tmp ;
  {
  tmp = strim(str);
  return (tmp);
}
}
extern __kernel_size_t strnlen(char const * , __kernel_size_t ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp);
}
}
extern void __xadd_wrong_size(void) ;
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5474;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5474;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5474;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5474;
  default:
  __xadd_wrong_size();
  }
  ldv_5474: ;
  return (__ret + i);
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
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_pm_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_pm_mutex(struct mutex *lock ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_5961.rlock);
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
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
extern unsigned int ioread32(void * ) ;
extern int ___ratelimit(struct ratelimit_state * , char const * ) ;
extern void *__devres_alloc(void (*)(struct device * , void * ) , size_t , gfp_t ,
                            char const * ) ;
extern void devres_free(void * ) ;
extern void devres_add(struct device * , void * ) ;
extern void *devres_open_group(struct device * , void * , gfp_t ) ;
extern void devres_remove_group(struct device * , void * ) ;
extern int devres_release_group(struct device * , void * ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern char const *dev_driver_string(struct device const * ) ;
extern int dev_printk(char const * , struct device const * , char const * , ...) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
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
extern int pcim_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 80L) << 12) + 0xffff880000000000UL));
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
__inline static struct page *sg_page(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    ldv_19824: ;
    goto ldv_19824;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    ldv_19825: ;
    goto ldv_19825;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
__inline static void *sg_virt(struct scatterlist *sg )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  tmp = sg_page(sg);
  tmp___0 = lowmem_page_address((struct page const *)tmp);
  return (tmp___0 + (unsigned long )sg->offset);
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern void sg_init_one(struct scatterlist * , void const * , unsigned int ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_sg(struct device * , struct scatterlist * , int , int ,
                             int ) ;
extern void debug_dma_unmap_sg(struct device * , struct scatterlist * , int , int ) ;
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
__inline static int dma_map_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                     int nents , enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int i ;
  int ents ;
  struct scatterlist *s ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  i = 0;
  s = sg;
  goto ldv_20321;
  ldv_20320:
  tmp___0 = sg_virt(s);
  kmemcheck_mark_initialized(tmp___0, s->length);
  i = i + 1;
  s = sg_next(s);
  ldv_20321: ;
  if (i < nents) {
    goto ldv_20320;
  } else {
  }
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (52), "i" (12UL));
    ldv_20323: ;
    goto ldv_20323;
  } else {
  }
  ents = (*(ops->map_sg))(dev, sg, nents, dir, attrs);
  debug_dma_map_sg(dev, sg, nents, ents, (int )dir);
  return (ents);
}
}
__inline static void dma_unmap_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                        int nents , enum dma_data_direction dir ,
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
                         "i" (65), "i" (12UL));
    ldv_20332: ;
    goto ldv_20332;
  } else {
  }
  debug_dma_unmap_sg(dev, sg, nents, (int )dir);
  if ((unsigned long )ops->unmap_sg != (unsigned long )((void (*)(struct device * ,
                                                                  struct scatterlist * ,
                                                                  int , enum dma_data_direction ,
                                                                  struct dma_attrs * ))0)) {
    (*(ops->unmap_sg))(dev, sg, nents, dir, attrs);
  } else {
  }
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
extern void msleep(unsigned int ) ;
extern int devm_request_threaded_irq(struct device * , unsigned int , irqreturn_t (*)(int ,
                                                                                       void * ) ,
                                     irqreturn_t (*)(int , void * ) , unsigned long ,
                                     char const * , void * ) ;
__inline static int devm_request_irq(struct device *dev , unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                                    void * ) ,
                                     unsigned long irqflags , char const *devname ,
                                     void *dev_id )
{
  int tmp ;
  {
  tmp = devm_request_threaded_irq(dev, irq, handler, 0, irqflags, devname, dev_id);
  return (tmp);
}
}
extern void devm_free_irq(struct device * , unsigned int , void * ) ;
extern async_cookie_t async_schedule(async_func_ptr * , void * ) ;
extern void async_synchronize_cookie(async_cookie_t ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
extern void scsi_host_put(struct Scsi_Host * ) ;
__inline static unsigned int ata_prot_flags(u8 prot )
{
  {
  switch ((int )prot) {
  case 1: ;
  return (0U);
  case 2: ;
  return (1U);
  case 3: ;
  return (2U);
  case 4: ;
  return (6U);
  case 5: ;
  return (8U);
  case 6: ;
  return (9U);
  case 7: ;
  return (10U);
  }
  return (0U);
}
}
__inline static int ata_is_nodata(u8 prot )
{
  unsigned int tmp ;
  {
  tmp = ata_prot_flags((int )prot);
  return ((tmp & 3U) == 0U);
}
}
__inline static int ata_is_pio(u8 prot )
{
  unsigned int tmp ;
  {
  tmp = ata_prot_flags((int )prot);
  return ((int )tmp & 1);
}
}
__inline static int ata_is_dma(u8 prot )
{
  unsigned int tmp ;
  {
  tmp = ata_prot_flags((int )prot);
  return ((int )tmp & 2);
}
}
__inline static int ata_is_ncq(u8 prot )
{
  unsigned int tmp ;
  {
  tmp = ata_prot_flags((int )prot);
  return ((int )tmp & 4);
}
}
__inline static int ata_is_data(u8 prot )
{
  unsigned int tmp ;
  {
  tmp = ata_prot_flags((int )prot);
  return ((int )tmp & 3);
}
}
__inline static bool ata_id_has_flush_ext(u16 const *id )
{
  {
  if (((int )*(id + 83UL) & 49152) != 16384) {
    return (0);
  } else {
  }
  return (((int )*(id + 83UL) & 8192) != 0);
}
}
__inline static bool ata_id_has_lba48(u16 const *id )
{
  {
  if (((int )*(id + 83UL) & 49152) != 16384) {
    return (0);
  } else {
  }
  if ((((((unsigned long long )*(id + 103UL) << 48) | ((unsigned long long )*(id + 102UL) << 32)) | ((unsigned long long )*(id + 101UL) << 16)) | (unsigned long long )*(id + 100UL)) == 0ULL) {
    return (0);
  } else {
  }
  return (((int )*(id + 83UL) & 1024) != 0);
}
}
__inline static bool ata_id_hpa_enabled(u16 const *id )
{
  {
  if (((int )*(id + 83UL) & 49152) != 16384) {
    return (0);
  } else {
  }
  if (((int )*(id + 87UL) & 49152) != 16384) {
    return (0);
  } else {
  }
  if (((int )*(id + 85UL) & 1024) == 0) {
    return (0);
  } else {
  }
  return (((int )*(id + 82UL) & 1024) != 0);
}
}
__inline static unsigned int ata_id_major_version(u16 const *id )
{
  unsigned int mver ;
  {
  if ((unsigned int )((unsigned short )*(id + 80UL)) == 65535U) {
    return (0U);
  } else {
  }
  mver = 14U;
  goto ldv_34346;
  ldv_34345: ;
  if (((int )*(id + 80UL) >> (int )mver) & 1) {
    goto ldv_34344;
  } else {
  }
  mver = mver - 1U;
  ldv_34346: ;
  if (mver != 0U) {
    goto ldv_34345;
  } else {
  }
  ldv_34344: ;
  return (mver);
}
}
__inline static bool ata_id_is_sata(u16 const *id )
{
  {
  if ((unsigned int )((unsigned short )*(id + 93UL)) == 0U && (int )((short )*(id + 80UL)) > 31) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static bool ata_id_has_tpm(u16 const *id )
{
  unsigned int tmp ;
  {
  tmp = ata_id_major_version(id);
  if (tmp <= 7U) {
    return (0);
  } else {
  }
  if (((int )*(id + 48UL) & 49152) != 16384) {
    return (0);
  } else {
  }
  return (((int )*(id + 48UL) & 1) != 0);
}
}
__inline static bool ata_id_current_chs_valid(u16 const *id )
{
  {
  return ((bool )(((((int )*(id + 53UL) & 1 && (unsigned int )((unsigned short )*(id + 54UL)) != 0U) && (unsigned int )((unsigned short )*(id + 55UL)) != 0U) && (unsigned int )((unsigned short )*(id + 55UL)) <= 16U) && (unsigned int )((unsigned short )*(id + 56UL)) != 0U));
}
}
__inline static bool ata_id_is_cfa(u16 const *id )
{
  {
  if ((unsigned int )((unsigned short )*id) == 33930U || (unsigned int )((unsigned short )*id) == 33866U) {
    return (1);
  } else {
  }
  return (((int )*(id + 83UL) & 49156) == 16388);
}
}
__inline static bool ata_drive_40wire(u16 const *dev_id )
{
  bool tmp ;
  {
  tmp = ata_id_is_sata(dev_id);
  if ((int )tmp) {
    return (0);
  } else {
  }
  if (((int )*(dev_id + 93UL) & 57344) == 24576) {
    return (0);
  } else {
  }
  return (1);
}
}
__inline static bool ata_drive_40wire_relaxed(u16 const *dev_id )
{
  {
  if (((int )*(dev_id + 93UL) & 8192) != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
__inline static int atapi_cdb_len(u16 const *dev_id )
{
  u16 tmp ;
  {
  tmp = (unsigned int )((u16 )*dev_id) & 3U;
  switch ((int )tmp) {
  case 0: ;
  return (12);
  case 1: ;
  return (16);
  default: ;
  return (-1);
  }
}
}
__inline static bool atapi_command_packet_set(u16 const *dev_id )
{
  {
  return ((((int )((unsigned short )*dev_id) >> 8) & 31) != 0);
}
}
__inline static bool atapi_id_dmadir(u16 const *dev_id )
{
  unsigned int tmp ;
  {
  tmp = ata_id_major_version(dev_id);
  return ((bool )(tmp > 6U && (int )((short )*(dev_id + 62UL)) < 0));
}
}
__inline static bool lba_28_ok(u64 block , u32 n_block )
{
  {
  return ((bool )((u64 )n_block + block <= 268435454ULL && n_block <= 256U));
}
}
__inline static bool lba_48_ok(u64 block , u32 n_block )
{
  {
  return ((bool )(((u64 )n_block + block) - 1ULL <= 281474976710655ULL && n_block <= 65536U));
}
}
unsigned long const sata_deb_timing_normal[3U] ;
unsigned long const sata_deb_timing_hotplug[3U] ;
unsigned long const sata_deb_timing_long[3U] ;
struct ata_port_operations ata_dummy_port_ops ;
struct ata_port_info const ata_dummy_port_info ;
__inline static unsigned long const *sata_ehc_deb_timing(struct ata_eh_context *ehc )
{
  {
  if ((int )ehc->i.flags & 1) {
    return ((unsigned long const *)(& sata_deb_timing_hotplug));
  } else {
    return ((unsigned long const *)(& sata_deb_timing_normal));
  }
}
}
__inline static int ata_port_is_dummy(struct ata_port *ap )
{
  {
  return ((unsigned long )ap->ops == (unsigned long )(& ata_dummy_port_ops));
}
}
int sata_set_spd(struct ata_link *link ) ;
int ata_std_prereset(struct ata_link *link , unsigned long deadline ) ;
int ata_wait_after_reset(struct ata_link *link , unsigned long deadline , int (*check_ready)(struct ata_link * ) ) ;
int sata_link_debounce(struct ata_link *link , unsigned long const *params , unsigned long deadline ) ;
int sata_link_resume(struct ata_link *link , unsigned long const *params , unsigned long deadline ) ;
int sata_link_scr_lpm(struct ata_link *link , enum ata_lpm_policy policy , bool spm_wakeup ) ;
int sata_link_hardreset(struct ata_link *link , unsigned long const *timing , unsigned long deadline ,
                        bool *online , int (*check_ready)(struct ata_link * ) ) ;
int sata_std_hardreset(struct ata_link *link , unsigned int *class , unsigned long deadline ) ;
void ata_std_postreset(struct ata_link *link , unsigned int *classes ) ;
struct ata_host *ata_host_alloc(struct device *dev , int max_ports ) ;
struct ata_host *ata_host_alloc_pinfo(struct device *dev , struct ata_port_info const * const *ppi ,
                                      int n_ports ) ;
int ata_slave_link_init(struct ata_port *ap ) ;
int ata_host_start(struct ata_host *host ) ;
int ata_host_register(struct ata_host *host , struct scsi_host_template *sht ) ;
int ata_host_activate(struct ata_host *host , int irq , irqreturn_t (*irq_handler)(int ,
                                                                                   void * ) ,
                      unsigned long irq_flags , struct scsi_host_template *sht ) ;
void ata_host_detach(struct ata_host *host ) ;
void ata_host_init(struct ata_host *host , struct device *dev , struct ata_port_operations *ops ) ;
int sata_scr_valid(struct ata_link *link ) ;
int sata_scr_read(struct ata_link *link , int reg , u32 *val ) ;
int sata_scr_write(struct ata_link *link , int reg , u32 val ) ;
int sata_scr_write_flush(struct ata_link *link , int reg , u32 val ) ;
bool ata_link_online(struct ata_link *link ) ;
bool ata_link_offline(struct ata_link *link ) ;
int ata_host_suspend(struct ata_host *host , pm_message_t mesg ) ;
void ata_host_resume(struct ata_host *host ) ;
int ata_sas_port_async_suspend(struct ata_port *ap , int *async ) ;
int ata_sas_port_async_resume(struct ata_port *ap , int *async ) ;
int ata_ratelimit(void) ;
void ata_msleep(struct ata_port *ap , unsigned int msecs ) ;
u32 ata_wait_register(struct ata_port *ap , void *reg , u32 mask , u32 val , unsigned long interval ,
                      unsigned long timeout ) ;
int atapi_cmd_type(u8 opcode ) ;
void ata_tf_to_fis(struct ata_taskfile const *tf , u8 pmp , int is_cmd , u8 *fis ) ;
void ata_tf_from_fis(u8 const *fis , struct ata_taskfile *tf ) ;
unsigned long ata_pack_xfermask(unsigned long pio_mask , unsigned long mwdma_mask ,
                                unsigned long udma_mask ) ;
void ata_unpack_xfermask(unsigned long xfer_mask , unsigned long *pio_mask , unsigned long *mwdma_mask ,
                         unsigned long *udma_mask ) ;
u8 ata_xfer_mask2mode(unsigned long xfer_mask ) ;
unsigned long ata_xfer_mode2mask(u8 xfer_mode ) ;
int ata_xfer_mode2shift(unsigned long xfer_mode ) ;
char const *ata_mode_string(unsigned long xfer_mask ) ;
unsigned long ata_id_xfermask(u16 const *id ) ;
int ata_std_qc_defer(struct ata_queued_cmd *qc ) ;
void ata_noop_qc_prep(struct ata_queued_cmd *qc ) ;
void ata_sg_init(struct ata_queued_cmd *qc , struct scatterlist *sg , unsigned int n_elem ) ;
unsigned int ata_dev_classify(struct ata_taskfile const *tf ) ;
void ata_dev_disable(struct ata_device *dev ) ;
void ata_id_string(u16 const *id , unsigned char *s , unsigned int ofs , unsigned int len ) ;
void ata_id_c_string(u16 const *id , unsigned char *s , unsigned int ofs , unsigned int len ) ;
unsigned int ata_do_dev_read_id(struct ata_device *dev , struct ata_taskfile *tf ,
                                u16 *id ) ;
void ata_qc_complete(struct ata_queued_cmd *qc ) ;
int ata_qc_complete_multiple(struct ata_port *ap , u32 qc_active ) ;
struct ata_device *ata_dev_pair(struct ata_device *adev ) ;
int ata_do_set_mode(struct ata_link *link , struct ata_device **r_failed_dev ) ;
int ata_cable_40wire(struct ata_port *ap ) ;
int ata_cable_80wire(struct ata_port *ap ) ;
int ata_cable_sata(struct ata_port *ap ) ;
int ata_cable_ignore(struct ata_port *ap ) ;
int ata_cable_unknown(struct ata_port *ap ) ;
unsigned int ata_pio_need_iordy(struct ata_device const *adev ) ;
struct ata_timing const *ata_timing_find_mode(u8 xfer_mode ) ;
int ata_timing_compute(struct ata_device *adev , unsigned short speed , struct ata_timing *t ,
                       int T , int UT ) ;
void ata_timing_merge(struct ata_timing const *a , struct ata_timing const *b ,
                      struct ata_timing *m , unsigned int what ) ;
u8 ata_timing_cycle2mode(unsigned int xfer_shift , int cycle ) ;
int pci_test_config_bits(struct pci_dev *pdev , struct pci_bits const *bits ) ;
void ata_pci_remove_one(struct pci_dev *pdev ) ;
void ata_pci_device_do_suspend(struct pci_dev *pdev , pm_message_t mesg ) ;
int ata_pci_device_do_resume(struct pci_dev *pdev ) ;
int ata_pci_device_suspend(struct pci_dev *pdev , pm_message_t mesg ) ;
int ata_pci_device_resume(struct pci_dev *pdev ) ;
int ata_platform_remove_one(struct platform_device *pdev ) ;
void ata_port_schedule_eh(struct ata_port *ap ) ;
void ata_port_wait_eh(struct ata_port *ap ) ;
int ata_link_abort(struct ata_link *link ) ;
int ata_port_freeze(struct ata_port *ap ) ;
void ata_eh_freeze_port(struct ata_port *ap ) ;
void ata_std_error_handler(struct ata_port *ap ) ;
void ata_std_sched_eh(struct ata_port *ap ) ;
void ata_std_end_eh(struct ata_port *ap ) ;
int ata_link_nr_enabled(struct ata_link *link ) ;
struct ata_port_operations const ata_base_port_ops ;
struct ata_port_operations const sata_port_ops ;
__inline static bool sata_pmp_supported(struct ata_port *ap )
{
  {
  return ((ap->flags & 524288UL) != 0UL);
}
}
__inline static bool sata_pmp_attached(struct ata_port *ap )
{
  {
  return (ap->nr_pmp_links != 0);
}
}
__inline static int ata_is_host_link(struct ata_link const *link )
{
  {
  return ((unsigned long )((struct ata_link const *)(& (link->ap)->link)) == (unsigned long )link || (unsigned long )((struct ata_link const *)(link->ap)->slave_link) == (unsigned long )link);
}
}
int ata_port_printk(struct ata_port const *ap , char const *level , char const *fmt
                    , ...) ;
int ata_link_printk(struct ata_link const *link , char const *level , char const *fmt
                    , ...) ;
int ata_dev_printk(struct ata_device const *dev , char const *level , char const *fmt
                   , ...) ;
void ata_print_version(struct device const *dev , char const *version ) ;
void ata_ehi_push_desc(struct ata_eh_info *ehi , char const *fmt , ...) ;
void ata_ehi_clear_desc(struct ata_eh_info *ehi ) ;
void ata_port_desc(struct ata_port *ap , char const *fmt , ...) ;
__inline static unsigned int ata_tag_valid(unsigned int tag )
{
  {
  return (tag <= 31U);
}
}
__inline static unsigned int ata_tag_internal(unsigned int tag )
{
  {
  return (tag == 31U);
}
}
__inline static unsigned int ata_class_enabled(unsigned int class )
{
  {
  return ((unsigned int )(((class == 1U || class == 3U) || class == 5U) || class == 7U));
}
}
__inline static unsigned int ata_dev_enabled(struct ata_device const *dev )
{
  unsigned int tmp ;
  {
  tmp = ata_class_enabled(dev->class);
  return (tmp);
}
}
__inline static int ata_link_max_devices(struct ata_link const *link )
{
  int tmp ;
  {
  tmp = ata_is_host_link(link);
  if (tmp != 0 && (int )(link->ap)->flags & 1) {
    return (2);
  } else {
  }
  return (1);
}
}
struct ata_link *ata_link_next(struct ata_link *link , struct ata_port *ap , enum ata_link_iter_mode mode ) ;
struct ata_device *ata_dev_next(struct ata_device *dev , struct ata_link *link , enum ata_dev_iter_mode mode ) ;
__inline static int ata_ncq_enabled(struct ata_device *dev )
{
  {
  return ((dev->flags & 12296UL) == 8UL);
}
}
__inline static struct ata_queued_cmd *__ata_qc_from_tag(struct ata_port *ap , unsigned int tag )
{
  unsigned int tmp ;
  long tmp___0 ;
  {
  tmp = ata_tag_valid(tag);
  tmp___0 = ldv__builtin_expect(tmp != 0U, 1L);
  if (tmp___0 != 0L) {
    return ((struct ata_queued_cmd *)(& ap->qcmd) + (unsigned long )tag);
  } else {
  }
  return (0);
}
}
__inline static struct ata_queued_cmd *ata_qc_from_tag(struct ata_port *ap , unsigned int tag )
{
  struct ata_queued_cmd *qc ;
  struct ata_queued_cmd *tmp ;
  long tmp___0 ;
  {
  tmp = __ata_qc_from_tag(ap, tag);
  qc = tmp;
  tmp___0 = ldv__builtin_expect((unsigned long )qc == (unsigned long )((struct ata_queued_cmd *)0),
                             0L);
  if (tmp___0 != 0L || (unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0)) {
    return (qc);
  } else {
  }
  if ((qc->flags & 65537UL) == 1UL) {
    return (qc);
  } else {
  }
  return (0);
}
}
__inline static void ata_tf_init(struct ata_device *dev , struct ata_taskfile *tf )
{
  {
  memset((void *)tf, 0, 24UL);
  tf->ctl = ((dev->link)->ap)->ctl;
  if (dev->devno == 0U) {
    tf->device = 160U;
  } else {
    tf->device = 176U;
  }
  return;
}
}
__inline static void ata_qc_reinit(struct ata_queued_cmd *qc )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  qc->dma_dir = 3;
  qc->sg = 0;
  qc->flags = 0UL;
  qc->cursg = 0;
  qc->cursg_ofs = 0U;
  tmp___0 = 0U;
  qc->curbytes = tmp___0;
  tmp = tmp___0;
  qc->extrabytes = tmp;
  qc->nbytes = tmp;
  qc->n_elem = 0U;
  qc->err_mask = 0U;
  qc->sect_size = 512U;
  ata_tf_init(qc->dev, & qc->tf);
  qc->result_tf.command = 64U;
  qc->result_tf.feature = 0U;
  return;
}
}
__inline static unsigned long ata_deadline(unsigned long from_jiffies , unsigned long timeout_msecs )
{
  unsigned long tmp ;
  {
  tmp = msecs_to_jiffies((unsigned int const )timeout_msecs);
  return (tmp + from_jiffies);
}
}
__inline static int ata_dma_enabled(struct ata_device *adev )
{
  {
  return ((unsigned int )adev->dma_mode != 255U);
}
}
extern int __pm_runtime_suspend(struct device * , int ) ;
extern int __pm_runtime_resume(struct device * , int ) ;
extern int __pm_runtime_set_status(struct device * , unsigned int ) ;
extern void pm_runtime_enable(struct device * ) ;
extern void __pm_runtime_disable(struct device * , bool ) ;
__inline static bool pm_runtime_suspended(struct device *dev )
{
  {
  return ((bool )((unsigned int )dev->power.runtime_status == 2U && (unsigned int )*((unsigned char *)dev + 808UL) == 0U));
}
}
__inline static int pm_runtime_suspend(struct device *dev )
{
  int tmp ;
  {
  tmp = __pm_runtime_suspend(dev, 0);
  return (tmp);
}
}
__inline static int pm_runtime_resume(struct device *dev )
{
  int tmp ;
  {
  tmp = __pm_runtime_resume(dev, 0);
  return (tmp);
}
}
__inline static int pm_runtime_set_active(struct device *dev )
{
  int tmp ;
  {
  tmp = __pm_runtime_set_status(dev, 0U);
  return (tmp);
}
}
__inline static void pm_runtime_disable(struct device *dev )
{
  {
  __pm_runtime_disable(dev, 1);
  return;
}
}
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& pdev->dev);
  return (tmp);
}
}
atomic_t ata_print_id ;
int atapi_passthru16 ;
int libata_fua ;
int libata_noacpi ;
int libata_allow_tpm ;
struct device_type ata_port_type ;
struct ata_link *ata_dev_phys_link(struct ata_device *dev ) ;
void ata_force_cbl(struct ata_port *ap ) ;
u64 ata_tf_to_lba(struct ata_taskfile const *tf ) ;
u64 ata_tf_to_lba48(struct ata_taskfile const *tf ) ;
struct ata_queued_cmd *ata_qc_new_init(struct ata_device *dev ) ;
int ata_build_rw_tf(struct ata_taskfile *tf , struct ata_device *dev , u64 block ,
                    u32 n_block , unsigned int tf_flags , unsigned int tag ) ;
u64 ata_tf_read_block(struct ata_taskfile *tf , struct ata_device *dev ) ;
unsigned int ata_exec_internal(struct ata_device *dev , struct ata_taskfile *tf ,
                               u8 const *cdb , int dma_dir , void *buf , unsigned int buflen ,
                               unsigned long timeout ) ;
unsigned int ata_exec_internal_sg(struct ata_device *dev , struct ata_taskfile *tf ,
                                  u8 const *cdb , int dma_dir , struct scatterlist *sgl ,
                                  unsigned int n_elem , unsigned long timeout ) ;
unsigned int ata_do_simple_cmd(struct ata_device *dev , u8 cmd ) ;
int ata_wait_ready(struct ata_link *link , unsigned long deadline , int (*check_ready)(struct ata_link * ) ) ;
int ata_dev_read_id(struct ata_device *dev , unsigned int *p_class , unsigned int flags ,
                    u16 *id ) ;
int ata_dev_reread_id(struct ata_device *dev , unsigned int readid_flags ) ;
int ata_dev_revalidate(struct ata_device *dev , unsigned int new_class , unsigned int readid_flags ) ;
int ata_dev_configure(struct ata_device *dev ) ;
int sata_down_spd_limit(struct ata_link *link , u32 spd_limit ) ;
int ata_down_xfermask_limit(struct ata_device *dev , unsigned int sel ) ;
unsigned int ata_dev_set_feature(struct ata_device *dev , u8 enable , u8 feature ) ;
void ata_sg_clean(struct ata_queued_cmd *qc ) ;
void ata_qc_free(struct ata_queued_cmd *qc ) ;
void ata_qc_issue(struct ata_queued_cmd *qc ) ;
void __ata_qc_complete(struct ata_queued_cmd *qc ) ;
int atapi_check_dma(struct ata_queued_cmd *qc ) ;
void swap_buf_le16(u16 *buf , unsigned int buf_words ) ;
bool ata_phys_link_online(struct ata_link *link ) ;
bool ata_phys_link_offline(struct ata_link *link ) ;
void ata_dev_init(struct ata_device *dev ) ;
void ata_link_init(struct ata_port *ap , struct ata_link *link , int pmp ) ;
int sata_link_init_spd(struct ata_link *link ) ;
struct ata_port *ata_port_alloc(struct ata_host *host ) ;
char const *sata_spd_string(unsigned int spd ) ;
int ata_port_probe(struct ata_port *ap ) ;
void __ata_port_probe(struct ata_port *ap ) ;
unsigned int ata_acpi_gtf_filter ;
void ata_acpi_dissociate(struct ata_host *host ) ;
int ata_acpi_on_devcfg(struct ata_device *dev ) ;
int ata_acpi_register(void) ;
void ata_acpi_unregister(void) ;
int ata_scsi_add_hosts(struct ata_host *host , struct scsi_host_template *sht ) ;
void ata_scsi_scan_host(struct ata_port *ap , int sync ) ;
void ata_scsi_hotplug(struct work_struct *work ) ;
void ata_scsi_dev_rescan(struct work_struct *work ) ;
int ata_bus_probe(struct ata_port *ap ) ;
unsigned long ata_internal_cmd_timeout(struct ata_device *dev , u8 cmd ) ;
void ata_internal_cmd_timed_out(struct ata_device *dev , u8 cmd ) ;
void ata_eh_acquire(struct ata_port *ap ) ;
void ata_eh_release(struct ata_port *ap ) ;
void ata_eh_fastdrain_timerfn(unsigned long arg ) ;
void ata_qc_schedule_eh(struct ata_queued_cmd *qc ) ;
unsigned int ata_read_log_page(struct ata_device *dev , u8 log , u8 page , void *buf ,
                               unsigned int sectors ) ;
int ata_set_mode(struct ata_link *link , struct ata_device **r_failed_dev ) ;
int sata_pmp_scr_read(struct ata_link *link , int reg , u32 *r_val ) ;
int sata_pmp_scr_write(struct ata_link *link , int reg , u32 val ) ;
void ata_sff_flush_pio_task(struct ata_port *ap ) ;
void ata_sff_port_init(struct ata_port *ap ) ;
int ata_sff_init(void) ;
void ata_sff_exit(void) ;
struct scsi_transport_template *ata_scsi_transport_template ;
void ata_tlink_delete(struct ata_link *link ) ;
int ata_tport_add(struct device *parent , struct ata_port *ap ) ;
void ata_tport_delete(struct ata_port *ap ) ;
struct scsi_transport_template *ata_attach_transport(void) ;
void ata_release_transport(struct scsi_transport_template *t ) ;
int libata_transport_init(void) ;
void libata_transport_exit(void) ;
unsigned long const sata_deb_timing_normal[3U] = { 5UL, 100UL, 2000UL};
unsigned long const sata_deb_timing_hotplug[3U] = { 25UL, 500UL, 2000UL};
unsigned long const sata_deb_timing_long[3U] = { 100UL, 2000UL, 5000UL};
struct ata_port_operations const ata_base_port_ops =
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ata_std_prereset, 0, 0, & ata_std_postreset,
    0, 0, 0, 0, & ata_std_error_handler, 0, 0, & ata_std_sched_eh, & ata_std_end_eh,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0};
struct ata_port_operations const sata_port_ops =
     {& ata_std_qc_defer, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & sata_std_hardreset,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ata_base_port_ops};
static unsigned int ata_dev_init_params(struct ata_device *dev , u16 heads , u16 sectors ) ;
static unsigned int ata_dev_set_xfermode(struct ata_device *dev ) ;
static void ata_dev_xfermask(struct ata_device *dev ) ;
static unsigned long ata_dev_blacklisted(struct ata_device const *dev ) ;
atomic_t ata_print_id = {0};
static struct ata_force_ent *ata_force_tbl ;
static int ata_force_tbl_size ;
static char ata_force_param_buf[4096U] ;
static int atapi_enabled = 1;
static int atapi_dmadir = 0;
int atapi_passthru16 = 1;
int libata_fua = 0;
static int ata_ignore_hpa ;
static int libata_dma_mask = 7;
static int ata_probe_timeout ;
int libata_noacpi = 0;
int libata_allow_tpm = 0;
static int atapi_an ;
static bool ata_sstatus_online(u32 sstatus )
{
  {
  return ((sstatus & 15U) == 3U);
}
}
struct ata_link *ata_link_next(struct ata_link *link , struct ata_port *ap , enum ata_link_iter_mode mode )
{
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  tmp = ldv__builtin_expect((unsigned int )mode != 0U, 0L);
  if (tmp != 0L) {
    tmp___0 = ldv__builtin_expect((unsigned int )mode != 2U, 0L);
    if (tmp___0 != 0L) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  if (tmp___1 != 0) {
    tmp___2 = ldv__builtin_expect((unsigned int )mode != 1U, 0L);
    if (tmp___2 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared"),
                           "i" (258), "i" (12UL));
      ldv_40189: ;
      goto ldv_40189;
    } else {
    }
  } else {
  }
  if ((unsigned long )link == (unsigned long )((struct ata_link *)0)) {
    switch ((unsigned int )mode) {
    case 0U: ;
    case 2U:
    tmp___3 = sata_pmp_attached(ap);
    if ((int )tmp___3) {
      return (ap->pmp_link);
    } else {
    }
    case 1U: ;
    return (& ap->link);
    }
  } else {
  }
  if ((unsigned long )(& ap->link) == (unsigned long )link) {
    switch ((unsigned int )mode) {
    case 1U:
    tmp___4 = sata_pmp_attached(ap);
    if ((int )tmp___4) {
      return (ap->pmp_link);
    } else {
    }
    case 2U:
    tmp___5 = ldv__builtin_expect((unsigned long )ap->slave_link != (unsigned long )((struct ata_link *)0),
                               0L);
    if (tmp___5 != 0L) {
      return (ap->slave_link);
    } else {
    }
    case 0U: ;
    return (0);
    }
  } else {
  }
  tmp___6 = ldv__builtin_expect((unsigned long )ap->slave_link == (unsigned long )link,
                             0L);
  if (tmp___6 != 0L) {
    return (0);
  } else {
  }
  link = link + 1;
  if ((unsigned long )link < (unsigned long )(ap->pmp_link + (unsigned long )ap->nr_pmp_links)) {
    return (link);
  } else {
  }
  if ((unsigned int )mode == 2U) {
    return (& ap->link);
  } else {
  }
  return (0);
}
}
struct ata_device *ata_dev_next(struct ata_device *dev , struct ata_link *link , enum ata_dev_iter_mode mode )
{
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  unsigned int tmp___7 ;
  {
  tmp = ldv__builtin_expect((unsigned int )mode != 0U, 0L);
  if (tmp != 0L) {
    tmp___0 = ldv__builtin_expect((unsigned int )mode != 1U, 0L);
    if (tmp___0 != 0L) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  if (tmp___1 != 0) {
    tmp___2 = ldv__builtin_expect((unsigned int )mode != 2U, 0L);
    if (tmp___2 != 0L) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  if (tmp___3 != 0) {
    tmp___4 = ldv__builtin_expect((unsigned int )mode != 3U, 0L);
    if (tmp___4 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared"),
                           "i" (317), "i" (12UL));
      ldv_40201: ;
      goto ldv_40201;
    } else {
    }
  } else {
  }
  if ((unsigned long )dev == (unsigned long )((struct ata_device *)0)) {
    switch ((unsigned int )mode) {
    case 0U: ;
    case 2U:
    dev = (struct ata_device *)(& link->device);
    goto check;
    case 1U: ;
    case 3U:
    tmp___5 = ata_link_max_devices((struct ata_link const *)link);
    dev = (struct ata_device *)(& link->device) + ((unsigned long )tmp___5 + 0xffffffffffffffffUL);
    goto check;
    }
  } else {
  }
  next: ;
  switch ((unsigned int )mode) {
  case 0U: ;
  case 2U:
  dev = dev + 1;
  tmp___6 = ata_link_max_devices((struct ata_link const *)link);
  if ((unsigned long )dev < (unsigned long )((struct ata_device *)(& link->device) + (unsigned long )tmp___6)) {
    goto check;
  } else {
  }
  return (0);
  case 1U: ;
  case 3U:
  dev = dev - 1;
  if ((unsigned long )dev >= (unsigned long )((struct ata_device *)(& link->device))) {
    goto check;
  } else {
  }
  return (0);
  }
  check: ;
  if ((unsigned int )mode == 0U || (unsigned int )mode == 1U) {
    tmp___7 = ata_dev_enabled((struct ata_device const *)dev);
    if (tmp___7 == 0U) {
      goto next;
    } else {
    }
  } else {
  }
  return (dev);
}
}
struct ata_link *ata_dev_phys_link(struct ata_device *dev )
{
  struct ata_port *ap ;
  {
  ap = (dev->link)->ap;
  if ((unsigned long )ap->slave_link == (unsigned long )((struct ata_link *)0)) {
    return (dev->link);
  } else {
  }
  if (dev->devno == 0U) {
    return (& ap->link);
  } else {
  }
  return (ap->slave_link);
}
}
void ata_force_cbl(struct ata_port *ap )
{
  int i ;
  struct ata_force_ent const *fe ;
  {
  i = ata_force_tbl_size + -1;
  goto ldv_40223;
  ldv_40222:
  fe = (struct ata_force_ent const *)ata_force_tbl + (unsigned long )i;
  if ((int )fe->port != -1 && (unsigned int )fe->port != ap->print_id) {
    goto ldv_40221;
  } else {
  }
  if ((unsigned int )fe->param.cbl == 0U) {
    goto ldv_40221;
  } else {
  }
  ap->cbl = fe->param.cbl;
  ata_port_printk((struct ata_port const *)ap, "\r", "FORCE: cable set to %s\n",
                  fe->param.name);
  return;
  ldv_40221:
  i = i - 1;
  ldv_40223: ;
  if (i >= 0) {
    goto ldv_40222;
  } else {
  }
  return;
}
}
static void ata_force_link_limits(struct ata_link *link )
{
  bool did_spd ;
  int linkno ;
  int i ;
  int tmp ;
  struct ata_force_ent const *fe ;
  {
  did_spd = 0;
  linkno = link->pmp;
  tmp = ata_is_host_link((struct ata_link const *)link);
  if (tmp != 0) {
    linkno = linkno + 15;
  } else {
  }
  i = ata_force_tbl_size + -1;
  goto ldv_40234;
  ldv_40233:
  fe = (struct ata_force_ent const *)ata_force_tbl + (unsigned long )i;
  if ((int )fe->port != -1 && (unsigned int )fe->port != (link->ap)->print_id) {
    goto ldv_40232;
  } else {
  }
  if ((int )fe->device != -1 && (int )fe->device != linkno) {
    goto ldv_40232;
  } else {
  }
  if (! did_spd && (int )fe->param.spd_limit != 0) {
    link->hw_sata_spd_limit = (unsigned int )((1 << fe->param.spd_limit) + -1);
    ata_link_printk((struct ata_link const *)link, "\r", "FORCE: PHY spd limit set to %s\n",
                    fe->param.name);
    did_spd = 1;
  } else {
  }
  if ((unsigned int )fe->param.lflags != 0U) {
    link->flags = link->flags | (unsigned int )fe->param.lflags;
    ata_link_printk((struct ata_link const *)link, "\r", "FORCE: link flag 0x%x forced -> 0x%x\n",
                    fe->param.lflags, link->flags);
  } else {
  }
  ldv_40232:
  i = i - 1;
  ldv_40234: ;
  if (i >= 0) {
    goto ldv_40233;
  } else {
  }
  return;
}
}
static void ata_force_xfermask(struct ata_device *dev )
{
  int devno ;
  int alt_devno ;
  int i ;
  int tmp ;
  struct ata_force_ent const *fe ;
  unsigned long pio_mask ;
  unsigned long mwdma_mask ;
  unsigned long udma_mask ;
  {
  devno = (int )((unsigned int )(dev->link)->pmp + dev->devno);
  alt_devno = devno;
  tmp = ata_is_host_link((struct ata_link const *)dev->link);
  if (tmp != 0) {
    alt_devno = alt_devno + 15;
  } else {
  }
  i = ata_force_tbl_size + -1;
  goto ldv_40248;
  ldv_40247:
  fe = (struct ata_force_ent const *)ata_force_tbl + (unsigned long )i;
  if ((int )fe->port != -1 && (unsigned int )fe->port != ((dev->link)->ap)->print_id) {
    goto ldv_40246;
  } else {
  }
  if (((int )fe->device != -1 && (int )fe->device != devno) && (int )fe->device != alt_devno) {
    goto ldv_40246;
  } else {
  }
  if ((unsigned long )fe->param.xfer_mask == 0UL) {
    goto ldv_40246;
  } else {
  }
  ata_unpack_xfermask(fe->param.xfer_mask, & pio_mask, & mwdma_mask, & udma_mask);
  if (udma_mask != 0UL) {
    dev->udma_mask = udma_mask;
  } else
  if (mwdma_mask != 0UL) {
    dev->udma_mask = 0UL;
    dev->mwdma_mask = mwdma_mask;
  } else {
    dev->udma_mask = 0UL;
    dev->mwdma_mask = 0UL;
    dev->pio_mask = pio_mask;
  }
  ata_dev_printk((struct ata_device const *)dev, "\r", "FORCE: xfer_mask set to %s\n",
                 fe->param.name);
  return;
  ldv_40246:
  i = i - 1;
  ldv_40248: ;
  if (i >= 0) {
    goto ldv_40247;
  } else {
  }
  return;
}
}
static void ata_force_horkage(struct ata_device *dev )
{
  int devno ;
  int alt_devno ;
  int i ;
  int tmp ;
  struct ata_force_ent const *fe ;
  {
  devno = (int )((unsigned int )(dev->link)->pmp + dev->devno);
  alt_devno = devno;
  tmp = ata_is_host_link((struct ata_link const *)dev->link);
  if (tmp != 0) {
    alt_devno = alt_devno + 15;
  } else {
  }
  i = 0;
  goto ldv_40259;
  ldv_40258:
  fe = (struct ata_force_ent const *)ata_force_tbl + (unsigned long )i;
  if ((int )fe->port != -1 && (unsigned int )fe->port != ((dev->link)->ap)->print_id) {
    goto ldv_40257;
  } else {
  }
  if (((int )fe->device != -1 && (int )fe->device != devno) && (int )fe->device != alt_devno) {
    goto ldv_40257;
  } else {
  }
  if ((~ dev->horkage & (unsigned int )fe->param.horkage_on) == 0U && (dev->horkage & (unsigned int )fe->param.horkage_off) == 0U) {
    goto ldv_40257;
  } else {
  }
  dev->horkage = dev->horkage | (unsigned int )fe->param.horkage_on;
  dev->horkage = dev->horkage & (unsigned int )(~ fe->param.horkage_off);
  ata_dev_printk((struct ata_device const *)dev, "\r", "FORCE: horkage modified (%s)\n",
                 fe->param.name);
  ldv_40257:
  i = i + 1;
  ldv_40259: ;
  if (i < ata_force_tbl_size) {
    goto ldv_40258;
  } else {
  }
  return;
}
}
int atapi_cmd_type(u8 opcode )
{
  {
  switch ((int )opcode) {
  case 40: ;
  case 168: ;
  return (0);
  case 42: ;
  case 170: ;
  case 46: ;
  return (1);
  case 190: ;
  case 185: ;
  return (2);
  case 133: ;
  case 161: ;
  if (atapi_passthru16 != 0) {
    return (3);
  } else {
  }
  default: ;
  return (4);
  }
}
}
void ata_tf_to_fis(struct ata_taskfile const *tf , u8 pmp , int is_cmd , u8 *fis )
{
  {
  *fis = 39U;
  *(fis + 1UL) = (unsigned int )pmp & 15U;
  if (is_cmd != 0) {
    *(fis + 1UL) = (u8 )((unsigned int )*(fis + 1UL) | 128U);
  } else {
  }
  *(fis + 2UL) = tf->command;
  *(fis + 3UL) = tf->feature;
  *(fis + 4UL) = tf->lbal;
  *(fis + 5UL) = tf->lbam;
  *(fis + 6UL) = tf->lbah;
  *(fis + 7UL) = tf->device;
  *(fis + 8UL) = tf->hob_lbal;
  *(fis + 9UL) = tf->hob_lbam;
  *(fis + 10UL) = tf->hob_lbah;
  *(fis + 11UL) = tf->hob_feature;
  *(fis + 12UL) = tf->nsect;
  *(fis + 13UL) = tf->hob_nsect;
  *(fis + 14UL) = 0U;
  *(fis + 15UL) = tf->ctl;
  *(fis + 16UL) = 0U;
  *(fis + 17UL) = 0U;
  *(fis + 18UL) = 0U;
  *(fis + 19UL) = 0U;
  return;
}
}
void ata_tf_from_fis(u8 const *fis , struct ata_taskfile *tf )
{
  {
  tf->command = *(fis + 2UL);
  tf->feature = *(fis + 3UL);
  tf->lbal = *(fis + 4UL);
  tf->lbam = *(fis + 5UL);
  tf->lbah = *(fis + 6UL);
  tf->device = *(fis + 7UL);
  tf->hob_lbal = *(fis + 8UL);
  tf->hob_lbam = *(fis + 9UL);
  tf->hob_lbah = *(fis + 10UL);
  tf->nsect = *(fis + 12UL);
  tf->hob_nsect = *(fis + 13UL);
  return;
}
}
static u8 const ata_rw_cmds[24U] =
  { 196U, 197U, 41U, 57U,
        0U, 0U, 0U, 206U,
        32U, 48U, 36U, 52U,
        0U, 0U, 0U, 0U,
        200U, 202U, 37U, 53U,
        0U, 0U, 0U, 61U};
static int ata_rwcmd_protocol(struct ata_taskfile *tf , struct ata_device *dev )
{
  u8 cmd ;
  int index ;
  int fua ;
  int lba48 ;
  int write ;
  {
  fua = (tf->flags & 32UL) != 0UL ? 4 : 0;
  lba48 = (int )tf->flags & 1 ? 2 : 0;
  write = (tf->flags & 8UL) != 0UL;
  if ((dev->flags & 4096UL) != 0UL) {
    tf->protocol = 2U;
    index = dev->multi_count != 0U ? 0 : 8;
  } else
  if (lba48 != 0 && (((dev->link)->ap)->flags & 256UL) != 0UL) {
    tf->protocol = 2U;
    index = dev->multi_count != 0U ? 0 : 8;
  } else {
    tf->protocol = 3U;
    index = 16;
  }
  cmd = ata_rw_cmds[((index + fua) + lba48) + write];
  if ((unsigned int )cmd != 0U) {
    tf->command = cmd;
    return (0);
  } else {
  }
  return (-1);
}
}
u64 ata_tf_read_block(struct ata_taskfile *tf , struct ata_device *dev )
{
  u64 block ;
  u32 cyl ;
  u32 head ;
  u32 sect ;
  {
  block = 0ULL;
  if ((tf->flags & 16UL) != 0UL) {
    if ((int )tf->flags & 1) {
      block = ((unsigned long long )tf->hob_lbah << 40) | block;
      block = ((unsigned long long )tf->hob_lbam << 32) | block;
      block = ((unsigned long long )tf->hob_lbal << 24) | block;
    } else {
      block = (u64 )(((int )tf->device & 15) << 24) | block;
    }
    block = (u64 )((int )tf->lbah << 16) | block;
    block = (u64 )((int )tf->lbam << 8) | block;
    block = (u64 )tf->lbal | block;
  } else {
    cyl = (u32 )((int )tf->lbam | ((int )tf->lbah << 8));
    head = (u32 )tf->device & 15U;
    sect = (u32 )tf->lbal;
    if (sect == 0U) {
      ata_dev_printk((struct ata_device const *)dev, "\f", "device reported invalid CHS sector 0\n");
      sect = 1U;
    } else {
    }
    block = (u64 )((((u32 )dev->heads * cyl + head) * (u32 )dev->sectors + sect) - 1U);
  }
  return (block);
}
}
int ata_build_rw_tf(struct ata_taskfile *tf , struct ata_device *dev , u64 block ,
                    u32 n_block , unsigned int tf_flags , unsigned int tag )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  u32 sect ;
  u32 head ;
  u32 cyl ;
  u32 track ;
  bool tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  {
  tf->flags = tf->flags | 6UL;
  tf->flags = tf->flags | (unsigned long )tf_flags;
  tmp___9 = ata_ncq_enabled(dev);
  if (tmp___9 != 0) {
    tmp___10 = ldv__builtin_expect(tag != 31U, 1L);
    if (tmp___10 != 0L) {
      tmp = lba_48_ok(block, n_block);
      if (tmp) {
        tmp___0 = 0;
      } else {
        tmp___0 = 1;
      }
      if (tmp___0) {
        return (-34);
      } else {
      }
      tf->protocol = 4U;
      tf->flags = tf->flags | 17UL;
      if ((tf->flags & 8UL) != 0UL) {
        tf->command = 97U;
      } else {
        tf->command = 96U;
      }
      tf->nsect = (int )((u8 )tag) << 3U;
      tf->hob_feature = (u8 )(n_block >> 8);
      tf->feature = (u8 )n_block;
      tf->hob_lbah = (u8 )(block >> 40);
      tf->hob_lbam = (u8 )(block >> 32);
      tf->hob_lbal = (u8 )(block >> 24);
      tf->lbah = (u8 )(block >> 16);
      tf->lbam = (u8 )(block >> 8);
      tf->lbal = (u8 )block;
      tf->device = 64U;
      if ((tf->flags & 32UL) != 0UL) {
        tf->device = (u8 )((unsigned int )tf->device | 128U);
      } else {
      }
    } else {
      goto _L;
    }
  } else
  _L:
  if ((int )dev->flags & 1) {
    tf->flags = tf->flags | 16UL;
    tmp___2 = lba_28_ok(block, n_block);
    if ((int )tmp___2) {
      tf->device = (unsigned int )tf->device | ((unsigned int )((u8 )(block >> 24)) & 15U);
    } else {
      tmp___1 = lba_48_ok(block, n_block);
      if ((int )tmp___1) {
        if ((dev->flags & 2UL) == 0UL) {
          return (-34);
        } else {
        }
        tf->flags = tf->flags | 1UL;
        tf->hob_nsect = (u8 )(n_block >> 8);
        tf->hob_lbah = (u8 )(block >> 40);
        tf->hob_lbam = (u8 )(block >> 32);
        tf->hob_lbal = (u8 )(block >> 24);
      } else {
        return (-34);
      }
    }
    tmp___3 = ata_rwcmd_protocol(tf, dev);
    tmp___4 = ldv__builtin_expect(tmp___3 < 0, 0L);
    if (tmp___4 != 0L) {
      return (-22);
    } else {
    }
    tf->nsect = (u8 )n_block;
    tf->lbah = (u8 )(block >> 16);
    tf->lbam = (u8 )(block >> 8);
    tf->lbal = (u8 )block;
    tf->device = (u8 )((unsigned int )tf->device | 64U);
  } else {
    tmp___5 = lba_28_ok(block, n_block);
    if (tmp___5) {
      tmp___6 = 0;
    } else {
      tmp___6 = 1;
    }
    if (tmp___6) {
      return (-34);
    } else {
    }
    tmp___7 = ata_rwcmd_protocol(tf, dev);
    tmp___8 = ldv__builtin_expect(tmp___7 < 0, 0L);
    if (tmp___8 != 0L) {
      return (-22);
    } else {
    }
    track = (unsigned int )block / (unsigned int )dev->sectors;
    cyl = track / (u32 )dev->heads;
    head = track % (u32 )dev->heads;
    sect = (unsigned int )block % (unsigned int )dev->sectors + 1U;
    if (((cyl >> 16 != 0U || head >> 4 != 0U) || sect >> 8 != 0U) || sect == 0U) {
      return (-34);
    } else {
    }
    tf->nsect = (u8 )n_block;
    tf->lbal = (u8 )sect;
    tf->lbam = (u8 )cyl;
    tf->lbah = (u8 )(cyl >> 8);
    tf->device = (int )tf->device | (int )((u8 )head);
  }
  return (0);
}
}
unsigned long ata_pack_xfermask(unsigned long pio_mask , unsigned long mwdma_mask ,
                                unsigned long udma_mask )
{
  {
  return (((pio_mask & 127UL) | ((mwdma_mask << 7) & 3968UL)) | ((udma_mask << 12) & 1044480UL));
}
}
void ata_unpack_xfermask(unsigned long xfer_mask , unsigned long *pio_mask , unsigned long *mwdma_mask ,
                         unsigned long *udma_mask )
{
  {
  if ((unsigned long )pio_mask != (unsigned long )((unsigned long *)0)) {
    *pio_mask = xfer_mask & 127UL;
  } else {
  }
  if ((unsigned long )mwdma_mask != (unsigned long )((unsigned long *)0)) {
    *mwdma_mask = (xfer_mask & 3968UL) >> 7;
  } else {
  }
  if ((unsigned long )udma_mask != (unsigned long )((unsigned long *)0)) {
    *udma_mask = (xfer_mask & 1044480UL) >> 12;
  } else {
  }
  return;
}
}
static struct ata_xfer_ent const ata_xfer_tbl[4U] = { {0, 7, 8U},
        {7, 5, 32U},
        {12, 8, 64U},
        {-1, 0, (unsigned char)0}};
u8 ata_xfer_mask2mode(unsigned long xfer_mask )
{
  int highbit ;
  int tmp ;
  struct ata_xfer_ent const *ent ;
  {
  tmp = fls((int )xfer_mask);
  highbit = tmp + -1;
  ent = (struct ata_xfer_ent const *)(& ata_xfer_tbl);
  goto ldv_40336;
  ldv_40335: ;
  if ((int )ent->shift <= highbit && (int )ent->shift + (int )ent->bits > highbit) {
    return (((int )((u8 )ent->base) + (int )((u8 )highbit)) - (int )((u8 )ent->shift));
  } else {
  }
  ent = ent + 1;
  ldv_40336: ;
  if ((int )ent->shift >= 0) {
    goto ldv_40335;
  } else {
  }
  return (255U);
}
}
unsigned long ata_xfer_mode2mask(u8 xfer_mode )
{
  struct ata_xfer_ent const *ent ;
  {
  ent = (struct ata_xfer_ent const *)(& ata_xfer_tbl);
  goto ldv_40343;
  ldv_40342: ;
  if ((int )((unsigned char )ent->base) <= (int )xfer_mode && (int )xfer_mode < (int )ent->base + (int )ent->bits) {
    return ((unsigned long )(((2 << (((int )ent->shift + (int )xfer_mode) - (int )ent->base)) + -1) & - (1 << ent->shift)));
  } else {
  }
  ent = ent + 1;
  ldv_40343: ;
  if ((int )ent->shift >= 0) {
    goto ldv_40342;
  } else {
  }
  return (0UL);
}
}
int ata_xfer_mode2shift(unsigned long xfer_mode )
{
  struct ata_xfer_ent const *ent ;
  {
  ent = (struct ata_xfer_ent const *)(& ata_xfer_tbl);
  goto ldv_40350;
  ldv_40349: ;
  if ((unsigned long )ent->base <= xfer_mode && (unsigned long )((int )ent->base + (int )ent->bits) > xfer_mode) {
    return ((int )ent->shift);
  } else {
  }
  ent = ent + 1;
  ldv_40350: ;
  if ((int )ent->shift >= 0) {
    goto ldv_40349;
  } else {
  }
  return (-1);
}
}
char const *ata_mode_string(unsigned long xfer_mask )
{
  char const *xfer_mode_str[20U] ;
  int highbit ;
  int tmp ;
  {
  xfer_mode_str[0] = "PIO0";
  xfer_mode_str[1] = "PIO1";
  xfer_mode_str[2] = "PIO2";
  xfer_mode_str[3] = "PIO3";
  xfer_mode_str[4] = "PIO4";
  xfer_mode_str[5] = "PIO5";
  xfer_mode_str[6] = "PIO6";
  xfer_mode_str[7] = "MWDMA0";
  xfer_mode_str[8] = "MWDMA1";
  xfer_mode_str[9] = "MWDMA2";
  xfer_mode_str[10] = "MWDMA3";
  xfer_mode_str[11] = "MWDMA4";
  xfer_mode_str[12] = "UDMA/16";
  xfer_mode_str[13] = "UDMA/25";
  xfer_mode_str[14] = "UDMA/33";
  xfer_mode_str[15] = "UDMA/44";
  xfer_mode_str[16] = "UDMA/66";
  xfer_mode_str[17] = "UDMA/100";
  xfer_mode_str[18] = "UDMA/133";
  xfer_mode_str[19] = "UDMA7";
  tmp = fls((int )xfer_mask);
  highbit = tmp + -1;
  if (highbit >= 0 && (unsigned int )highbit <= 19U) {
    return (xfer_mode_str[highbit]);
  } else {
  }
  return ("<n/a>");
}
}
char const *sata_spd_string(unsigned int spd )
{
  char const *spd_str[3U] ;
  {
  spd_str[0] = "1.5 Gbps";
  spd_str[1] = "3.0 Gbps";
  spd_str[2] = "6.0 Gbps";
  if (spd == 0U || spd - 1U > 2U) {
    return ("<unknown>");
  } else {
  }
  return (spd_str[spd - 1U]);
}
}
unsigned int ata_dev_classify(struct ata_taskfile const *tf )
{
  {
  if ((unsigned int )((unsigned char )tf->lbam) == 0U && (unsigned int )((unsigned char )tf->lbah) == 0U) {
    return (1U);
  } else {
  }
  if ((unsigned int )((unsigned char )tf->lbam) == 20U && (unsigned int )((unsigned char )tf->lbah) == 235U) {
    return (3U);
  } else {
  }
  if ((unsigned int )((unsigned char )tf->lbam) == 105U && (unsigned int )((unsigned char )tf->lbah) == 150U) {
    return (5U);
  } else {
  }
  if ((unsigned int )((unsigned char )tf->lbam) == 60U && (unsigned int )((unsigned char )tf->lbah) == 195U) {
    return (7U);
  } else {
  }
  return (0U);
}
}
void ata_id_string(u16 const *id , unsigned char *s , unsigned int ofs , unsigned int len )
{
  unsigned int c ;
  long tmp ;
  {
  tmp = ldv__builtin_expect((long )((int )len) & 1L, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared"),
                         "i" (1179), "i" (12UL));
    ldv_40375: ;
    goto ldv_40375;
  } else {
  }
  goto ldv_40377;
  ldv_40376:
  c = (unsigned int )((int )((unsigned short )*(id + (unsigned long )ofs)) >> 8);
  *s = (unsigned char )c;
  s = s + 1;
  c = (unsigned int )*(id + (unsigned long )ofs) & 255U;
  *s = (unsigned char )c;
  s = s + 1;
  ofs = ofs + 1U;
  len = len - 2U;
  ldv_40377: ;
  if (len != 0U) {
    goto ldv_40376;
  } else {
  }
  return;
}
}
void ata_id_c_string(u16 const *id , unsigned char *s , unsigned int ofs , unsigned int len )
{
  unsigned char *p ;
  __kernel_size_t tmp ;
  {
  ata_id_string(id, s, ofs, len - 1U);
  tmp = strnlen((char const *)s, (__kernel_size_t )(len - 1U));
  p = s + tmp;
  goto ldv_40387;
  ldv_40386:
  p = p - 1;
  ldv_40387: ;
  if ((unsigned long )p > (unsigned long )s && (unsigned int )*(p + 0xffffffffffffffffUL) == 32U) {
    goto ldv_40386;
  } else {
  }
  *p = 0U;
  return;
}
}
static u64 ata_id_n_sectors(u16 const *id )
{
  bool tmp ;
  bool tmp___0 ;
  {
  if (((int )*(id + 49UL) & 512) != 0) {
    tmp = ata_id_has_lba48(id);
    if ((int )tmp) {
      return (((((unsigned long long )*(id + 103UL) << 48) | ((unsigned long long )*(id + 102UL) << 32)) | ((unsigned long long )*(id + 101UL) << 16)) | (unsigned long long )*(id + 100UL));
    } else {
      return ((u64 )(((unsigned int )*(id + 61UL) << 16) | (unsigned int )*(id + 60UL)));
    }
  } else {
    tmp___0 = ata_id_current_chs_valid(id);
    if ((int )tmp___0) {
      return ((u64 )(((int )*(id + 54UL) * (int )*(id + 55UL)) * (int )*(id + 56UL)));
    } else {
      return ((u64 )(((int )*(id + 1UL) * (int )*(id + 3UL)) * (int )*(id + 6UL)));
    }
  }
}
}
u64 ata_tf_to_lba48(struct ata_taskfile const *tf )
{
  u64 sectors ;
  {
  sectors = 0ULL;
  sectors = ((unsigned long long )tf->hob_lbah << 40) | sectors;
  sectors = ((unsigned long long )tf->hob_lbam << 32) | sectors;
  sectors = ((unsigned long long )tf->hob_lbal << 24) | sectors;
  sectors = (u64 )((int )tf->lbah << 16) | sectors;
  sectors = (u64 )((int )tf->lbam << 8) | sectors;
  sectors = (u64 )tf->lbal | sectors;
  return (sectors);
}
}
u64 ata_tf_to_lba(struct ata_taskfile const *tf )
{
  u64 sectors ;
  {
  sectors = 0ULL;
  sectors = (u64 )(((int )tf->device & 15) << 24) | sectors;
  sectors = (u64 )((int )tf->lbah << 16) | sectors;
  sectors = (u64 )((int )tf->lbam << 8) | sectors;
  sectors = (u64 )tf->lbal | sectors;
  return (sectors);
}
}
static int ata_read_native_max_address(struct ata_device *dev , u64 *max_sectors )
{
  unsigned int err_mask ;
  struct ata_taskfile tf ;
  int lba48 ;
  bool tmp ;
  u64 tmp___0 ;
  u64 tmp___1 ;
  {
  tmp = ata_id_has_lba48((u16 const *)(& dev->ldv_38497.id));
  lba48 = (int )tmp;
  ata_tf_init(dev, & tf);
  tf.flags = tf.flags | 6UL;
  if (lba48 != 0) {
    tf.command = 39U;
    tf.flags = tf.flags | 1UL;
  } else {
    tf.command = 248U;
  }
  tf.protocol = (u8 )((unsigned int )tf.protocol | 1U);
  tf.device = (u8 )((unsigned int )tf.device | 64U);
  err_mask = ata_exec_internal(dev, & tf, 0, 3, 0, 0U, 0UL);
  if (err_mask != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "failed to read native max address (err_mask=0x%x)\n",
                   err_mask);
    if (err_mask == 1U && ((int )tf.feature & 4) != 0) {
      return (-13);
    } else {
    }
    return (-5);
  } else {
  }
  if (lba48 != 0) {
    tmp___0 = ata_tf_to_lba48((struct ata_taskfile const *)(& tf));
    *max_sectors = tmp___0 + 1ULL;
  } else {
    tmp___1 = ata_tf_to_lba((struct ata_taskfile const *)(& tf));
    *max_sectors = tmp___1 + 1ULL;
  }
  if ((dev->horkage & 64U) != 0U) {
    *max_sectors = *max_sectors - 1ULL;
  } else {
  }
  return (0);
}
}
static int ata_set_max_sectors(struct ata_device *dev , u64 new_sectors )
{
  unsigned int err_mask ;
  struct ata_taskfile tf ;
  int lba48 ;
  bool tmp ;
  {
  tmp = ata_id_has_lba48((u16 const *)(& dev->ldv_38497.id));
  lba48 = (int )tmp;
  new_sectors = new_sectors - 1ULL;
  ata_tf_init(dev, & tf);
  tf.flags = tf.flags | 6UL;
  if (lba48 != 0) {
    tf.command = 55U;
    tf.flags = tf.flags | 1UL;
    tf.hob_lbal = (u8 )(new_sectors >> 24);
    tf.hob_lbam = (u8 )(new_sectors >> 32);
    tf.hob_lbah = (u8 )(new_sectors >> 40);
  } else {
    tf.command = 249U;
    tf.device = (unsigned int )tf.device | ((unsigned int )((u8 )(new_sectors >> 24)) & 15U);
  }
  tf.protocol = (u8 )((unsigned int )tf.protocol | 1U);
  tf.device = (u8 )((unsigned int )tf.device | 64U);
  tf.lbal = (u8 )new_sectors;
  tf.lbam = (u8 )(new_sectors >> 8);
  tf.lbah = (u8 )(new_sectors >> 16);
  err_mask = ata_exec_internal(dev, & tf, 0, 3, 0, 0U, 0UL);
  if (err_mask != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "failed to set max address (err_mask=0x%x)\n",
                   err_mask);
    if (err_mask == 1U && ((int )tf.feature & 20) != 0) {
      return (-13);
    } else {
    }
    return (-5);
  } else {
  }
  return (0);
}
}
static int ata_hpa_resize(struct ata_device *dev )
{
  struct ata_eh_context *ehc ;
  int print_info ;
  bool unlock_hpa ;
  u64 sectors ;
  u64 tmp ;
  u64 native_sectors ;
  int rc ;
  bool tmp___0 ;
  int tmp___1 ;
  u64 new_sectors ;
  u64 tmp___2 ;
  {
  ehc = & (dev->link)->eh_context;
  print_info = (int )ehc->i.flags & 262144;
  unlock_hpa = (bool )(ata_ignore_hpa != 0 || (dev->flags & 262144UL) != 0UL);
  tmp = ata_id_n_sectors((u16 const *)(& dev->ldv_38497.id));
  sectors = tmp;
  if (dev->class != 1U || ((int )dev->ldv_38497.id[49] & 512) == 0) {
    return (0);
  } else {
    tmp___0 = ata_id_hpa_enabled((u16 const *)(& dev->ldv_38497.id));
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      return (0);
    } else
    if ((dev->horkage & 16U) != 0U) {
      return (0);
    } else {
    }
  }
  rc = ata_read_native_max_address(dev, & native_sectors);
  if (rc != 0) {
    if (rc == -13 || ! unlock_hpa) {
      ata_dev_printk((struct ata_device const *)dev, "\f", "HPA support seems broken, skipping HPA handling\n");
      dev->horkage = dev->horkage | 16U;
      if (rc == -13) {
        rc = 0;
      } else {
      }
    } else {
    }
    return (rc);
  } else {
  }
  dev->n_native_sectors = native_sectors;
  if (native_sectors <= sectors || ! unlock_hpa) {
    if (print_info == 0 || native_sectors == sectors) {
      return (0);
    } else {
    }
    if (native_sectors > sectors) {
      ata_dev_printk((struct ata_device const *)dev, "\016", "HPA detected: current %llu, native %llu\n",
                     sectors, native_sectors);
    } else
    if (native_sectors < sectors) {
      ata_dev_printk((struct ata_device const *)dev, "\f", "native sectors (%llu) is smaller than sectors (%llu)\n",
                     native_sectors, sectors);
    } else {
    }
    return (0);
  } else {
  }
  rc = ata_set_max_sectors(dev, native_sectors);
  if (rc == -13) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "device aborted resize (%llu -> %llu), skipping HPA handling\n",
                   sectors, native_sectors);
    dev->horkage = dev->horkage | 16U;
    return (0);
  } else
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = ata_dev_reread_id(dev, 0U);
  if (rc != 0) {
    ata_dev_printk((struct ata_device const *)dev, "\v", "failed to re-read IDENTIFY data after HPA resizing\n");
    return (rc);
  } else {
  }
  if (print_info != 0) {
    tmp___2 = ata_id_n_sectors((u16 const *)(& dev->ldv_38497.id));
    new_sectors = tmp___2;
    ata_dev_printk((struct ata_device const *)dev, "\016", "HPA unlocked: %llu -> %llu, native %llu\n",
                   sectors, new_sectors, native_sectors);
  } else {
  }
  return (0);
}
}
__inline static void ata_dump_id(u16 const *id )
{
  {
  return;
}
}
unsigned long ata_id_xfermask(u16 const *id )
{
  unsigned long pio_mask ;
  unsigned long mwdma_mask ;
  unsigned long udma_mask ;
  u8 mode ;
  int pio ;
  int dma ;
  bool tmp ;
  unsigned long tmp___0 ;
  {
  if (((int )*(id + 53UL) & 2) != 0) {
    pio_mask = (unsigned long )*(id + 64UL) & 3UL;
    pio_mask = pio_mask << 3;
    pio_mask = pio_mask | 7UL;
  } else {
    mode = (u8 )((int )((unsigned short )*(id + 51UL)) >> 8);
    if ((unsigned int )mode <= 4U) {
      pio_mask = (unsigned long )((2 << (int )mode) + -1);
    } else {
      pio_mask = 1UL;
    }
  }
  mwdma_mask = (unsigned long )*(id + 63UL) & 7UL;
  tmp = ata_id_is_cfa(id);
  if ((int )tmp) {
    pio = (int )*(id + 163UL) & 7;
    dma = ((int )((unsigned short )*(id + 163UL)) >> 3) & 7;
    if (pio != 0) {
      pio_mask = pio_mask | 32UL;
    } else {
    }
    if (pio > 1) {
      pio_mask = pio_mask | 64UL;
    } else {
    }
    if (dma != 0) {
      mwdma_mask = mwdma_mask | 8UL;
    } else {
    }
    if (dma > 1) {
      mwdma_mask = mwdma_mask | 16UL;
    } else {
    }
  } else {
  }
  udma_mask = 0UL;
  if (((int )*(id + 53UL) & 4) != 0) {
    udma_mask = (unsigned long )*(id + 88UL) & 255UL;
  } else {
  }
  tmp___0 = ata_pack_xfermask(pio_mask, mwdma_mask, udma_mask);
  return (tmp___0);
}
}
static void ata_qc_complete_internal(struct ata_queued_cmd *qc )
{
  struct completion *waiting ;
  {
  waiting = (struct completion *)qc->private_data;
  complete(waiting);
  return;
}
}
unsigned int ata_exec_internal_sg(struct ata_device *dev , struct ata_taskfile *tf ,
                                  u8 const *cdb , int dma_dir , struct scatterlist *sgl ,
                                  unsigned int n_elem , unsigned long timeout )
{
  struct ata_link *link ;
  struct ata_port *ap ;
  u8 command ;
  int auto_timeout ;
  struct ata_queued_cmd *qc ;
  unsigned int tag ;
  unsigned int preempted_tag ;
  u32 preempted_sactive ;
  u32 preempted_qc_active ;
  int preempted_nr_active_links ;
  struct completion wait ;
  unsigned long flags ;
  unsigned int err_mask ;
  int rc ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  unsigned int i ;
  unsigned int buflen ;
  struct scatterlist *sg ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  raw_spinlock_t *tmp___4 ;
  {
  link = dev->link;
  ap = link->ap;
  command = tf->command;
  auto_timeout = 0;
  init_completion(& wait);
  wait = wait;
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((ap->pflags & 4U) != 0U) {
    spin_unlock_irqrestore(ap->lock, flags);
    return (64U);
  } else {
  }
  if ((unsigned long )(ap->ops)->error_handler != (unsigned long )((void (*)(struct ata_port * ))0)) {
    tag = 31U;
  } else {
    tag = 0U;
  }
  tmp___0 = test_and_set_bit((int )tag, (unsigned long volatile *)(& ap->qc_allocated));
  if (tmp___0 != 0) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared"),
                         "i" (1647), "i" (12UL));
    ldv_40467: ;
    goto ldv_40467;
  } else {
  }
  qc = __ata_qc_from_tag(ap, tag);
  qc->tag = tag;
  qc->scsicmd = 0;
  qc->ap = ap;
  qc->dev = dev;
  ata_qc_reinit(qc);
  preempted_tag = link->active_tag;
  preempted_sactive = link->sactive;
  preempted_qc_active = ap->qc_active;
  preempted_nr_active_links = ap->nr_active_links;
  link->active_tag = 4210818301U;
  link->sactive = 0U;
  ap->qc_active = 0U;
  ap->nr_active_links = 0;
  qc->tf = *tf;
  if ((unsigned long )cdb != (unsigned long )((u8 const *)0)) {
    __len = 16UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& qc->cdb), (void const *)cdb, __len);
    } else {
      __ret = memcpy((void *)(& qc->cdb), (void const *)cdb, __len);
    }
  } else {
  }
  qc->flags = qc->flags | 16UL;
  qc->dma_dir = dma_dir;
  if (dma_dir != 3) {
    buflen = 0U;
    i = 0U;
    sg = sgl;
    goto ldv_40475;
    ldv_40474:
    buflen = sg->length + buflen;
    i = i + 1U;
    sg = sg_next(sg);
    ldv_40475: ;
    if (i < n_elem) {
      goto ldv_40474;
    } else {
    }
    ata_sg_init(qc, sgl, n_elem);
    qc->nbytes = buflen;
  } else {
  }
  qc->private_data = (void *)(& wait);
  qc->complete_fn = & ata_qc_complete_internal;
  ata_qc_issue(qc);
  spin_unlock_irqrestore(ap->lock, flags);
  if (timeout == 0UL) {
    if (ata_probe_timeout != 0) {
      timeout = (unsigned long )(ata_probe_timeout * 1000);
    } else {
      timeout = ata_internal_cmd_timeout(dev, (int )command);
      auto_timeout = 1;
    }
  } else {
  }
  if ((unsigned long )(ap->ops)->error_handler != (unsigned long )((void (*)(struct ata_port * ))0)) {
    ata_eh_release(ap);
  } else {
  }
  tmp___1 = msecs_to_jiffies((unsigned int const )timeout);
  tmp___2 = wait_for_completion_timeout(& wait, tmp___1);
  rc = (int )tmp___2;
  if ((unsigned long )(ap->ops)->error_handler != (unsigned long )((void (*)(struct ata_port * ))0)) {
    ata_eh_acquire(ap);
  } else {
  }
  ata_sff_flush_pio_task(ap);
  if (rc == 0) {
    tmp___3 = spinlock_check(ap->lock);
    flags = _raw_spin_lock_irqsave(tmp___3);
    if ((int )qc->flags & 1) {
      qc->err_mask = qc->err_mask | 4U;
      if ((unsigned long )(ap->ops)->error_handler != (unsigned long )((void (*)(struct ata_port * ))0)) {
        ata_port_freeze(ap);
      } else {
        ata_qc_complete(qc);
      }
      if ((ap->msg_enable & 8U) != 0U) {
        ata_dev_printk((struct ata_device const *)dev, "\f", "qc timeout (cmd 0x%x)\n",
                       (int )command);
      } else {
      }
    } else {
    }
    spin_unlock_irqrestore(ap->lock, flags);
  } else {
  }
  if ((unsigned long )(ap->ops)->post_internal_cmd != (unsigned long )((void (*)(struct ata_queued_cmd * ))0)) {
    (*((ap->ops)->post_internal_cmd))(qc);
  } else {
  }
  if ((qc->flags & 65536UL) != 0UL) {
    if (((int )qc->result_tf.command & 33) != 0) {
      qc->err_mask = qc->err_mask | 1U;
    } else {
    }
    if (qc->err_mask == 0U) {
      qc->err_mask = qc->err_mask | 256U;
    } else {
    }
    if ((qc->err_mask & 4294967039U) != 0U) {
      qc->err_mask = qc->err_mask & 4294967039U;
    } else {
    }
  } else {
  }
  tmp___4 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___4);
  *tf = qc->result_tf;
  err_mask = qc->err_mask;
  ata_qc_free(qc);
  link->active_tag = preempted_tag;
  link->sactive = preempted_sactive;
  ap->qc_active = preempted_qc_active;
  ap->nr_active_links = preempted_nr_active_links;
  spin_unlock_irqrestore(ap->lock, flags);
  if ((err_mask & 4U) != 0U && auto_timeout != 0) {
    ata_internal_cmd_timed_out(dev, (int )command);
  } else {
  }
  return (err_mask);
}
}
unsigned int ata_exec_internal(struct ata_device *dev , struct ata_taskfile *tf ,
                               u8 const *cdb , int dma_dir , void *buf , unsigned int buflen ,
                               unsigned long timeout )
{
  struct scatterlist *psg ;
  struct scatterlist sg ;
  unsigned int n_elem ;
  int __ret_warn_on ;
  long tmp ;
  unsigned int tmp___0 ;
  {
  psg = 0;
  n_elem = 0U;
  if (dma_dir != 3) {
    __ret_warn_on = (unsigned long )buf == (unsigned long )((void *)0);
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                         1796);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    sg_init_one(& sg, (void const *)buf, buflen);
    psg = & sg;
    n_elem = n_elem + 1U;
  } else {
  }
  tmp___0 = ata_exec_internal_sg(dev, tf, cdb, dma_dir, psg, n_elem, timeout);
  return (tmp___0);
}
}
unsigned int ata_do_simple_cmd(struct ata_device *dev , u8 cmd )
{
  struct ata_taskfile tf ;
  unsigned int tmp ;
  {
  ata_tf_init(dev, & tf);
  tf.command = cmd;
  tf.flags = tf.flags | 4UL;
  tf.protocol = 1U;
  tmp = ata_exec_internal(dev, & tf, 0, 3, 0, 0U, 0UL);
  return (tmp);
}
}
unsigned int ata_pio_need_iordy(struct ata_device const *adev )
{
  bool tmp ;
  {
  if ((((adev->link)->ap)->pflags & 256U) != 0U) {
    return (0U);
  } else {
  }
  if ((((adev->link)->ap)->flags & 65536UL) != 0UL) {
    return (0U);
  } else {
  }
  tmp = ata_id_is_cfa((u16 const *)(& adev->ldv_38497.id));
  if ((int )tmp && ((unsigned int )((unsigned char )adev->pio_mode) == 13U || (unsigned int )((unsigned char )adev->pio_mode) == 14U)) {
    return (0U);
  } else {
  }
  if ((unsigned int )((unsigned char )adev->pio_mode) > 10U) {
    return (1U);
  } else {
  }
  if (((int )adev->ldv_38497.id[49] & 2048) != 0) {
    return (1U);
  } else {
  }
  return (0U);
}
}
static u32 ata_pio_mask_no_iordy(struct ata_device const *adev )
{
  u16 pio ;
  {
  if (((int )adev->ldv_38497.id[53] & 2) != 0) {
    pio = adev->ldv_38497.id[67];
    if ((unsigned int )pio != 0U) {
      if ((unsigned int )pio > 240U) {
        return (3U);
      } else {
      }
      return (7U);
    } else {
    }
  } else {
  }
  return (3U);
}
}
unsigned int ata_do_dev_read_id(struct ata_device *dev , struct ata_taskfile *tf ,
                                u16 *id )
{
  unsigned int tmp ;
  {
  tmp = ata_exec_internal(dev, tf, 0, 2, (void *)id, 512U, 0UL);
  return (tmp);
}
}
int ata_dev_read_id(struct ata_device *dev , unsigned int *p_class , unsigned int flags ,
                    u16 *id )
{
  struct ata_port *ap ;
  unsigned int class ;
  struct ata_taskfile tf ;
  unsigned int err_mask ;
  char const *reason ;
  bool is_semb ;
  int may_fallback ;
  int tried_spinup ;
  int rc ;
  bool tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  ap = (dev->link)->ap;
  class = *p_class;
  err_mask = 0U;
  is_semb = class == 7U;
  may_fallback = 1;
  tried_spinup = 0;
  if ((ap->msg_enable & 32U) != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\017", "%s: ENTER\n", "ata_dev_read_id");
  } else {
  }
  retry:
  ata_tf_init(dev, & tf);
  switch (class) {
  case 7U:
  class = 1U;
  case 1U:
  tf.command = 236U;
  goto ldv_40533;
  case 3U:
  tf.command = 161U;
  goto ldv_40533;
  default:
  rc = -19;
  reason = "unsupported class";
  goto err_out;
  }
  ldv_40533:
  tf.protocol = 2U;
  tf.flags = tf.flags | 6UL;
  tf.flags = tf.flags | 64UL;
  if ((unsigned long )(ap->ops)->read_id != (unsigned long )((unsigned int (*)(struct ata_device * ,
                                                                               struct ata_taskfile * ,
                                                                               u16 * ))0)) {
    err_mask = (*((ap->ops)->read_id))(dev, & tf, id);
  } else {
    err_mask = ata_do_dev_read_id(dev, & tf, id);
  }
  if (err_mask != 0U) {
    if ((err_mask & 512U) != 0U) {
      ata_dev_printk((struct ata_device const *)dev, "\017", "NODEV after polling detection\n");
      return (-2);
    } else {
    }
    if ((int )is_semb) {
      ata_dev_printk((struct ata_device const *)dev, "\016", "IDENTIFY failed on device w/ SEMB sig, disabled\n");
      *p_class = 8U;
      return (0);
    } else {
    }
    if (err_mask == 1U && ((int )tf.feature & 4) != 0) {
      if (may_fallback != 0) {
        may_fallback = 0;
        if (class == 1U) {
          class = 3U;
        } else {
          class = 1U;
        }
        goto retry;
      } else {
      }
      ata_dev_printk((struct ata_device const *)dev, "\017", "both IDENTIFYs aborted, assuming NODEV\n");
      return (-2);
    } else {
    }
    rc = -5;
    reason = "I/O error";
    goto err_out;
  } else {
  }
  if ((dev->horkage & 65536U) != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\017", "dumping IDENTIFY data, class=%d may_fallback=%d tried_spinup=%d\n",
                   class, may_fallback, tried_spinup);
    print_hex_dump("\017", "", 2, 16, 2, (void const *)id, 512UL, 1);
  } else {
  }
  may_fallback = 0;
  swap_buf_le16(id, 256U);
  rc = -22;
  reason = "device reports invalid type";
  if (class == 1U) {
    if ((int )((short )*id) < 0) {
      tmp = ata_id_is_cfa((u16 const *)id);
      if (tmp) {
        tmp___0 = 0;
      } else {
        tmp___0 = 1;
      }
      if (tmp___0) {
        goto err_out;
      } else {
      }
    } else {
    }
    if (((ap->host)->flags & 8UL) != 0UL && (int )((short )*id) >= 0) {
      ata_dev_printk((struct ata_device const *)dev, "\017", "host indicates ignore ATA devices, ignored\n");
      return (-2);
    } else {
    }
  } else
  if ((int )((short )*id) >= 0) {
    goto err_out;
  } else {
  }
  if (tried_spinup == 0 && ((unsigned int )*(id + 2UL) == 14280U || (unsigned int )*(id + 2UL) == 29580U)) {
    tried_spinup = 1;
    err_mask = ata_dev_set_feature(dev, 7, 0);
    if (err_mask != 0U && (unsigned int )*(id + 2UL) != 29580U) {
      rc = -5;
      reason = "SPINUP failed";
      goto err_out;
    } else {
    }
    if ((unsigned int )*(id + 2UL) == 14280U) {
      goto retry;
    } else {
    }
  } else {
  }
  if ((int )flags & 1 && class == 1U) {
    tmp___1 = ata_id_major_version((u16 const *)id);
    if (tmp___1 <= 3U || ((int )*(id + 49UL) & 512) == 0) {
      err_mask = ata_dev_init_params(dev, (int )*(id + 3UL), (int )*(id + 6UL));
      if (err_mask != 0U) {
        rc = -5;
        reason = "INIT_DEV_PARAMS failed";
        goto err_out;
      } else {
      }
      flags = flags & 4294967294U;
      goto retry;
    } else {
    }
  } else {
  }
  *p_class = class;
  return (0);
  err_out: ;
  if ((ap->msg_enable & 8U) != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "failed to IDENTIFY (%s, err_mask=0x%x)\n",
                   reason, err_mask);
  } else {
  }
  return (rc);
}
}
static int ata_do_link_spd_horkage(struct ata_device *dev )
{
  struct ata_link *plink ;
  struct ata_link *tmp ;
  u32 target ;
  u32 target_limit ;
  int tmp___0 ;
  char const *tmp___1 ;
  {
  tmp = ata_dev_phys_link(dev);
  plink = tmp;
  tmp___0 = sata_scr_valid(plink);
  if (tmp___0 == 0) {
    return (0);
  } else {
  }
  if ((dev->horkage & 8192U) != 0U) {
    target = 1U;
  } else {
    return (0);
  }
  target_limit = (u32 )((1 << (int )target) + -1);
  if (plink->sata_spd_limit <= target_limit) {
    return (0);
  } else {
  }
  plink->sata_spd_limit = target_limit;
  if (plink->sata_spd > target) {
    tmp___1 = sata_spd_string(target);
    ata_dev_printk((struct ata_device const *)dev, "\016", "applying link speed limit horkage to %s\n",
                   tmp___1);
    return (-11);
  } else {
  }
  return (0);
}
}
__inline static u8 ata_dev_knobble(struct ata_device *dev )
{
  struct ata_port *ap ;
  unsigned long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ap = (dev->link)->ap;
  tmp = ata_dev_blacklisted((struct ata_device const *)dev);
  if ((tmp & 1024UL) != 0UL) {
    return (0U);
  } else {
  }
  if (ap->cbl == 6U) {
    tmp___0 = ata_id_is_sata((u16 const *)(& dev->ldv_38497.id));
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((u8 )tmp___2);
}
}
static int ata_dev_config_ncq(struct ata_device *dev , char *desc , size_t desc_sz )
{
  struct ata_port *ap ;
  int hdepth ;
  int ddepth ;
  unsigned int err_mask ;
  char *aa_desc ;
  int _min1 ;
  int _min2 ;
  {
  ap = (dev->link)->ap;
  hdepth = 0;
  ddepth = ((int )dev->ldv_38497.id[75] & 31) + 1;
  aa_desc = (char *)"";
  if (((int )dev->ldv_38497.id[76] & 256) == 0) {
    *desc = 0;
    return (0);
  } else {
  }
  if ((dev->horkage & 4U) != 0U) {
    snprintf(desc, desc_sz, "NCQ (not used)");
    return (0);
  } else {
  }
  if ((ap->flags & 1024UL) != 0UL) {
    _min1 = (ap->scsi_host)->can_queue;
    _min2 = 31;
    hdepth = _min1 < _min2 ? _min1 : _min2;
    dev->flags = dev->flags | 8UL;
  } else {
  }
  if (((dev->horkage & 32768U) == 0U && (ap->flags & 16384UL) != 0UL) && (((unsigned int )dev->ldv_38497.id[76] != 0U && (unsigned int )dev->ldv_38497.id[76] != 65535U) && ((int )dev->ldv_38497.id[78] & 4) != 0)) {
    err_mask = ata_dev_set_feature(dev, 16, 2);
    if (err_mask != 0U) {
      ata_dev_printk((struct ata_device const *)dev, "\v", "failed to enable AA (error_mask=0x%x)\n",
                     err_mask);
      if (err_mask != 1U) {
        dev->horkage = dev->horkage | 32768U;
        return (-5);
      } else {
      }
    } else {
      aa_desc = (char *)", AA";
    }
  } else {
  }
  if (hdepth >= ddepth) {
    snprintf(desc, desc_sz, "NCQ (depth %d)%s", ddepth, aa_desc);
  } else {
    snprintf(desc, desc_sz, "NCQ (depth %d/%d)%s", hdepth, ddepth, aa_desc);
  }
  return (0);
}
}
int ata_dev_configure(struct ata_device *dev )
{
  struct ata_port *ap ;
  struct ata_eh_context *ehc ;
  int print_info ;
  u16 const *id ;
  unsigned long xfer_mask ;
  unsigned int err_mask ;
  char revbuf[7U] ;
  char fwrevbuf[9U] ;
  char modelbuf[41U] ;
  int rc ;
  unsigned int tmp ;
  unsigned long tmp___0 ;
  unsigned int tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  unsigned int max ;
  unsigned int cnt ;
  bool tmp___4 ;
  bool tmp___5 ;
  char const *lba_desc ;
  char ncq_desc[24U] ;
  bool tmp___6 ;
  bool tmp___7 ;
  char const *tmp___8 ;
  bool tmp___9 ;
  char const *tmp___10 ;
  char const *cdb_intr_string ;
  char const *atapi_an_string ;
  char const *dma_dir_string ;
  u32 sntf ;
  bool tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  bool tmp___14 ;
  char const *tmp___15 ;
  u8 tmp___16 ;
  bool tmp___17 ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  {
  ap = (dev->link)->ap;
  ehc = & (dev->link)->eh_context;
  print_info = (int )ehc->i.flags & 262144;
  id = (u16 const *)(& dev->ldv_38497.id);
  tmp = ata_dev_enabled((struct ata_device const *)dev);
  if (tmp == 0U && (ap->msg_enable & 2U) != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\016", "%s: ENTER/EXIT -- nodev\n",
                   "ata_dev_configure");
    return (0);
  } else {
  }
  if ((ap->msg_enable & 4U) != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\017", "%s: ENTER\n", "ata_dev_configure");
  } else {
  }
  tmp___0 = ata_dev_blacklisted((struct ata_device const *)dev);
  dev->horkage = dev->horkage | (unsigned int )tmp___0;
  ata_force_horkage(dev);
  if ((dev->horkage & 32U) != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\016", "unsupported device, disabling\n");
    ata_dev_disable(dev);
    return (0);
  } else {
  }
  if ((atapi_enabled == 0 || (ap->flags & 64UL) != 0UL) && dev->class == 3U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "WARNING: ATAPI is %s, device ignored\n",
                   atapi_enabled != 0 ? (char *)"not supported with this driver" : (char *)"disabled");
    ata_dev_disable(dev);
    return (0);
  } else {
  }
  rc = ata_do_link_spd_horkage(dev);
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = ata_acpi_on_devcfg(dev);
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = ata_hpa_resize(dev);
  if (rc != 0) {
    return (rc);
  } else {
  }
  if ((ap->msg_enable & 4U) != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\017", "%s: cfg 49:%04x 82:%04x 83:%04x 84:%04x 85:%04x 86:%04x 87:%04x 88:%04x\n",
                   "ata_dev_configure", (int )*(id + 49UL), (int )*(id + 82UL), (int )*(id + 83UL),
                   (int )*(id + 84UL), (int )*(id + 85UL), (int )*(id + 86UL), (int )*(id + 87UL),
                   (int )*(id + 88UL));
  } else {
  }
  dev->flags = dev->flags & 0xfffffffffffff000UL;
  dev->max_sectors = 0U;
  dev->cdb_len = 0U;
  dev->n_sectors = 0ULL;
  dev->cylinders = 0U;
  dev->heads = 0U;
  dev->sectors = 0U;
  dev->multi_count = 0U;
  xfer_mask = ata_id_xfermask(id);
  if ((ap->msg_enable & 4U) != 0U) {
    ata_dump_id(id);
  } else {
  }
  ata_id_c_string((u16 const *)(& dev->ldv_38497.id), (unsigned char *)(& fwrevbuf),
                  23U, 9U);
  ata_id_c_string((u16 const *)(& dev->ldv_38497.id), (unsigned char *)(& modelbuf),
                  27U, 41U);
  if (dev->class == 1U) {
    tmp___3 = ata_id_is_cfa(id);
    if ((int )tmp___3) {
      if ((int )*(id + 162UL) & 1) {
        ata_dev_printk((struct ata_device const *)dev, "\f", "supports DRM functions and may not be fully accessible\n");
      } else {
      }
      snprintf((char *)(& revbuf), 7UL, "CFA");
    } else {
      tmp___1 = ata_id_major_version(id);
      snprintf((char *)(& revbuf), 7UL, "ATA-%d", tmp___1);
      tmp___2 = ata_id_has_tpm(id);
      if ((int )tmp___2) {
        ata_dev_printk((struct ata_device const *)dev, "\f", "supports DRM functions and may not be fully accessible\n");
      } else {
      }
    }
    dev->n_sectors = ata_id_n_sectors(id);
    if ((unsigned int )((int )dev->ldv_38497.id[47] >> 8) == 128U && ((int )dev->ldv_38497.id[59] & 256) != 0) {
      max = (unsigned int )dev->ldv_38497.id[47] & 255U;
      cnt = (unsigned int )dev->ldv_38497.id[59] & 255U;
      tmp___4 = is_power_of_2((unsigned long )max);
      if ((int )tmp___4) {
        tmp___5 = is_power_of_2((unsigned long )cnt);
        if ((int )tmp___5) {
          if (cnt <= max) {
            dev->multi_count = cnt;
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
    if (((int )*(id + 49UL) & 512) != 0) {
      lba_desc = "LBA";
      dev->flags = dev->flags | 1UL;
      tmp___7 = ata_id_has_lba48(id);
      if ((int )tmp___7) {
        dev->flags = dev->flags | 2UL;
        lba_desc = "LBA48";
        if (dev->n_sectors > 268435455ULL) {
          tmp___6 = ata_id_has_flush_ext(id);
          if ((int )tmp___6) {
            dev->flags = dev->flags | 16UL;
          } else {
          }
        } else {
        }
      } else {
      }
      rc = ata_dev_config_ncq(dev, (char *)(& ncq_desc), 24UL);
      if (rc != 0) {
        return (rc);
      } else {
      }
      if ((int )ap->msg_enable & 1 && print_info != 0) {
        tmp___8 = ata_mode_string(xfer_mask);
        ata_dev_printk((struct ata_device const *)dev, "\016", "%s: %s, %s, max %s\n",
                       (char *)(& revbuf), (char *)(& modelbuf), (char *)(& fwrevbuf),
                       tmp___8);
        ata_dev_printk((struct ata_device const *)dev, "\016", "%llu sectors, multi %u: %s %s\n",
                       dev->n_sectors, dev->multi_count, lba_desc, (char *)(& ncq_desc));
      } else {
      }
    } else {
      dev->cylinders = *(id + 1UL);
      dev->heads = *(id + 3UL);
      dev->sectors = *(id + 6UL);
      tmp___9 = ata_id_current_chs_valid(id);
      if ((int )tmp___9) {
        dev->cylinders = *(id + 54UL);
        dev->heads = *(id + 55UL);
        dev->sectors = *(id + 56UL);
      } else {
      }
      if ((int )ap->msg_enable & 1 && print_info != 0) {
        tmp___10 = ata_mode_string(xfer_mask);
        ata_dev_printk((struct ata_device const *)dev, "\016", "%s: %s, %s, max %s\n",
                       (char *)(& revbuf), (char *)(& modelbuf), (char *)(& fwrevbuf),
                       tmp___10);
        ata_dev_printk((struct ata_device const *)dev, "\016", "%llu sectors, multi %u, CHS %u/%u/%u\n",
                       dev->n_sectors, dev->multi_count, (int )dev->cylinders, (int )dev->heads,
                       (int )dev->sectors);
      } else {
      }
    }
    if (((int )dev->ldv_38497.id[78] & 256) != 0) {
      dev->flags = dev->flags | 134217728UL;
    } else {
    }
    if (((int )dev->ldv_38497.id[76] & 256) != 0) {
      err_mask = ata_read_log_page(dev, 48, 8, (void *)(& dev->sata_settings), 1U);
      if (err_mask != 0U) {
        ata_dev_printk((struct ata_device const *)dev, "\017", "failed to get Identify Device Data, Emask 0x%x\n",
                       err_mask);
      } else {
      }
    } else {
    }
    dev->cdb_len = 16U;
  } else
  if (dev->class == 3U) {
    cdb_intr_string = "";
    atapi_an_string = "";
    dma_dir_string = "";
    rc = atapi_cdb_len(id);
    if (rc <= 11 || rc > 16) {
      if ((ap->msg_enable & 8U) != 0U) {
        ata_dev_printk((struct ata_device const *)dev, "\f", "unsupported CDB len\n");
      } else {
      }
      rc = -22;
      goto err_out_nosup;
    } else {
    }
    dev->cdb_len = (unsigned int )rc;
    if ((atapi_an != 0 && (ap->flags & 262144UL) != 0UL) && (((unsigned int )((unsigned short )*(id + 76UL)) != 0U && (unsigned int )((unsigned short )*(id + 76UL)) != 65535U) && ((int )*(id + 78UL) & 32) != 0)) {
      tmp___11 = sata_pmp_attached(ap);
      if (tmp___11) {
        tmp___12 = 0;
      } else {
        tmp___12 = 1;
      }
      if (tmp___12) {
        goto _L;
      } else {
        tmp___13 = sata_scr_read(& ap->link, 4, & sntf);
        if (tmp___13 == 0) {
          _L:
          err_mask = ata_dev_set_feature(dev, 16, 5);
          if (err_mask != 0U) {
            ata_dev_printk((struct ata_device const *)dev, "\v", "failed to enable ATAPI AN (err_mask=0x%x)\n",
                           err_mask);
          } else {
            dev->flags = dev->flags | 128UL;
            atapi_an_string = ", ATAPI AN";
          }
        } else {
        }
      }
    } else {
    }
    if (((int )dev->ldv_38497.id[0] & 96) == 32) {
      dev->flags = dev->flags | 4UL;
      cdb_intr_string = ", CDB intr";
    } else {
    }
    if (atapi_dmadir != 0) {
      dev->flags = dev->flags | 1024UL;
      dma_dir_string = ", DMADIR";
    } else {
      tmp___14 = atapi_id_dmadir((u16 const *)(& dev->ldv_38497.id));
      if ((int )tmp___14) {
        dev->flags = dev->flags | 1024UL;
        dma_dir_string = ", DMADIR";
      } else {
      }
    }
    if (((int )dev->ldv_38497.id[77] & 16) != 0) {
      dev->flags = dev->flags | 67108864UL;
    } else {
    }
    if ((int )ap->msg_enable & 1 && print_info != 0) {
      tmp___15 = ata_mode_string(xfer_mask);
      ata_dev_printk((struct ata_device const *)dev, "\016", "ATAPI: %s, %s, max %s%s%s%s\n",
                     (char *)(& modelbuf), (char *)(& fwrevbuf), tmp___15, cdb_intr_string,
                     atapi_an_string, dma_dir_string);
    } else {
    }
  } else {
  }
  dev->max_sectors = 256U;
  if ((dev->flags & 2UL) != 0UL) {
    dev->max_sectors = 65535U;
  } else {
  }
  tmp___16 = ata_dev_knobble(dev);
  if ((unsigned int )tmp___16 != 0U) {
    if ((int )ap->msg_enable & 1 && print_info != 0) {
      ata_dev_printk((struct ata_device const *)dev, "\016", "applying bridge limits\n");
    } else {
    }
    dev->udma_mask = dev->udma_mask & 63UL;
    dev->max_sectors = 256U;
  } else {
  }
  if (dev->class == 3U) {
    tmp___17 = atapi_command_packet_set(id);
    if ((int )tmp___17) {
      dev->max_sectors = 65535U;
      dev->horkage = dev->horkage | 512U;
    } else {
    }
  } else {
  }
  if ((dev->horkage & 8U) != 0U) {
    __min1 = 128U;
    __min2 = dev->max_sectors;
    dev->max_sectors = __min1 < __min2 ? __min1 : __min2;
  } else {
  }
  if ((unsigned long )(ap->ops)->dev_config != (unsigned long )((void (*)(struct ata_device * ))0)) {
    (*((ap->ops)->dev_config))(dev);
  } else {
  }
  if ((int )dev->horkage & 1) {
    if (print_info != 0) {
      ata_dev_printk((struct ata_device const *)dev, "\f", "Drive reports diagnostics failure. This may indicate a drive\n");
      ata_dev_printk((struct ata_device const *)dev, "\f", "fault or invalid emulation. Contact drive vendor for information.\n");
    } else {
    }
  } else {
  }
  if ((dev->horkage & 4096U) != 0U && print_info != 0) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "WARNING: device requires firmware update to be fully functional\n");
    ata_dev_printk((struct ata_device const *)dev, "\f", "         contact the vendor or visit http://ata.wiki.kernel.org\n");
  } else {
  }
  return (0);
  err_out_nosup: ;
  if ((ap->msg_enable & 4U) != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\017", "%s: EXIT, err\n", "ata_dev_configure");
  } else {
  }
  return (rc);
}
}
int ata_cable_40wire(struct ata_port *ap )
{
  {
  return (1);
}
}
int ata_cable_80wire(struct ata_port *ap )
{
  {
  return (2);
}
}
int ata_cable_unknown(struct ata_port *ap )
{
  {
  return (4);
}
}
int ata_cable_ignore(struct ata_port *ap )
{
  {
  return (5);
}
}
int ata_cable_sata(struct ata_port *ap )
{
  {
  return (6);
}
}
int ata_bus_probe(struct ata_port *ap )
{
  unsigned int classes[2U] ;
  int tries[2U] ;
  int rc ;
  struct ata_device *dev ;
  unsigned int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int _min1 ;
  int _min2 ;
  {
  dev = ata_dev_next(0, & ap->link, 2);
  goto ldv_40609;
  ldv_40608:
  tries[dev->devno] = 3;
  dev = ata_dev_next(dev, & ap->link, 2);
  ldv_40609: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_40608;
  } else {
  }
  retry:
  dev = ata_dev_next(0, & ap->link, 2);
  goto ldv_40613;
  ldv_40612:
  dev->pio_mode = 8U;
  dev->dma_mode = 255U;
  if ((unsigned long )(ap->ops)->set_piomode != (unsigned long )((void (*)(struct ata_port * ,
                                                                           struct ata_device * ))0)) {
    (*((ap->ops)->set_piomode))(ap, dev);
  } else {
  }
  dev = ata_dev_next(dev, & ap->link, 2);
  ldv_40613: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_40612;
  } else {
  }
  (*((ap->ops)->phy_reset))(ap);
  dev = ata_dev_next(0, & ap->link, 2);
  goto ldv_40616;
  ldv_40615: ;
  if (dev->class != 0U) {
    classes[dev->devno] = dev->class;
  } else {
    classes[dev->devno] = 9U;
  }
  dev->class = 0U;
  dev = ata_dev_next(dev, & ap->link, 2);
  ldv_40616: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_40615;
  } else {
  }
  dev = ata_dev_next(0, & ap->link, 3);
  goto ldv_40621;
  ldv_40620: ;
  if (tries[dev->devno] != 0) {
    dev->class = classes[dev->devno];
  } else {
  }
  tmp = ata_dev_enabled((struct ata_device const *)dev);
  if (tmp == 0U) {
    goto ldv_40618;
  } else {
  }
  rc = ata_dev_read_id(dev, & dev->class, 1U, (u16 *)(& dev->ldv_38497.id));
  if (rc != 0) {
    goto fail;
  } else {
  }
  ldv_40618:
  dev = ata_dev_next(dev, & ap->link, 3);
  ldv_40621: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_40620;
  } else {
  }
  if ((unsigned long )(ap->ops)->cable_detect != (unsigned long )((int (*)(struct ata_port * ))0)) {
    tmp___0 = (*((ap->ops)->cable_detect))(ap);
    ap->cbl = (unsigned int )tmp___0;
  } else {
  }
  dev = ata_dev_next(0, & ap->link, 0);
  goto ldv_40624;
  ldv_40623:
  tmp___1 = ata_id_is_sata((u16 const *)(& dev->ldv_38497.id));
  if ((int )tmp___1) {
    ap->cbl = 6U;
  } else {
  }
  dev = ata_dev_next(dev, & ap->link, 0);
  ldv_40624: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_40623;
  } else {
  }
  dev = ata_dev_next(0, & ap->link, 0);
  goto ldv_40627;
  ldv_40626:
  ap->link.eh_context.i.flags = ap->link.eh_context.i.flags | 262144U;
  rc = ata_dev_configure(dev);
  ap->link.eh_context.i.flags = ap->link.eh_context.i.flags & 4294705151U;
  if (rc != 0) {
    goto fail;
  } else {
  }
  dev = ata_dev_next(dev, & ap->link, 0);
  ldv_40627: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_40626;
  } else {
  }
  rc = ata_set_mode(& ap->link, & dev);
  if (rc != 0) {
    goto fail;
  } else {
  }
  dev = ata_dev_next(0, & ap->link, 0);
  goto ldv_40630;
  ldv_40629: ;
  return (0);
  dev = ata_dev_next(dev, & ap->link, 0);
  ldv_40630: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_40629;
  } else {
  }
  return (-19);
  fail:
  tries[dev->devno] = tries[dev->devno] - 1;
  switch (rc) {
  case -22:
  tries[dev->devno] = 0;
  goto ldv_40633;
  case -19:
  _min1 = tries[dev->devno];
  _min2 = 1;
  tries[dev->devno] = _min1 < _min2 ? _min1 : _min2;
  case -5: ;
  if (tries[dev->devno] == 1) {
    sata_down_spd_limit(& ap->link, 0U);
    ata_down_xfermask_limit(dev, 0U);
  } else {
  }
  }
  ldv_40633: ;
  if (tries[dev->devno] == 0) {
    ata_dev_disable(dev);
  } else {
  }
  goto retry;
}
}
static void sata_print_link_status(struct ata_link *link )
{
  u32 sstatus ;
  u32 scontrol ;
  u32 tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  bool tmp___2 ;
  {
  tmp___0 = sata_scr_read(link, 0, & sstatus);
  if (tmp___0 != 0) {
    return;
  } else {
  }
  sata_scr_read(link, 2, & scontrol);
  tmp___2 = ata_phys_link_online(link);
  if ((int )tmp___2) {
    tmp = (sstatus >> 4) & 15U;
    tmp___1 = sata_spd_string(tmp);
    ata_link_printk((struct ata_link const *)link, "\016", "SATA link up %s (SStatus %X SControl %X)\n",
                    tmp___1, sstatus, scontrol);
  } else {
    ata_link_printk((struct ata_link const *)link, "\016", "SATA link down (SStatus %X SControl %X)\n",
                    sstatus, scontrol);
  }
  return;
}
}
struct ata_device *ata_dev_pair(struct ata_device *adev )
{
  struct ata_link *link ;
  struct ata_device *pair ;
  unsigned int tmp ;
  {
  link = adev->link;
  pair = (struct ata_device *)(& link->device) + (unsigned long )(1U - adev->devno);
  tmp = ata_dev_enabled((struct ata_device const *)pair);
  if (tmp == 0U) {
    return (0);
  } else {
  }
  return (pair);
}
}
int sata_down_spd_limit(struct ata_link *link , u32 spd_limit )
{
  u32 sstatus ;
  u32 spd ;
  u32 mask ;
  int rc ;
  int bit ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  char const *tmp___4 ;
  {
  tmp = sata_scr_valid(link);
  if (tmp == 0) {
    return (-95);
  } else {
  }
  rc = sata_scr_read(link, 0, & sstatus);
  if (rc == 0) {
    tmp___0 = ata_sstatus_online(sstatus);
    if ((int )tmp___0) {
      spd = (sstatus >> 4) & 15U;
    } else {
      spd = link->sata_spd;
    }
  } else {
    spd = link->sata_spd;
  }
  mask = link->sata_spd_limit;
  if (mask <= 1U) {
    return (-22);
  } else {
  }
  tmp___1 = fls((int )mask);
  bit = tmp___1 + -1;
  mask = (u32 )(~ (1 << bit)) & mask;
  if (spd > 1U) {
    mask = (u32 )((1 << (int )(spd - 1U)) + -1) & mask;
  } else {
    mask = mask & 1U;
  }
  if (mask == 0U) {
    return (-22);
  } else {
  }
  if (spd_limit != 0U) {
    if (((u32 )((1 << (int )spd_limit) + -1) & mask) != 0U) {
      mask = (u32 )((1 << (int )spd_limit) + -1) & mask;
    } else {
      tmp___2 = ffs((int )mask);
      bit = tmp___2 + -1;
      mask = (u32 )(1 << bit);
    }
  } else {
  }
  link->sata_spd_limit = mask;
  tmp___3 = fls((int )mask);
  tmp___4 = sata_spd_string((unsigned int )tmp___3);
  ata_link_printk((struct ata_link const *)link, "\f", "limiting SATA link speed to %s\n",
                  tmp___4);
  return (0);
}
}
static int __sata_set_spd_needed(struct ata_link *link , u32 *scontrol )
{
  struct ata_link *host_link ;
  u32 limit ;
  u32 target ;
  u32 spd ;
  int tmp ;
  int tmp___0 ;
  {
  host_link = & (link->ap)->link;
  limit = link->sata_spd_limit;
  tmp = ata_is_host_link((struct ata_link const *)link);
  if (tmp == 0 && host_link->sata_spd != 0U) {
    limit = (u32 )((1 << (int )host_link->sata_spd) + -1) & limit;
  } else {
  }
  if (limit == 4294967295U) {
    target = 0U;
  } else {
    tmp___0 = fls((int )limit);
    target = (u32 )tmp___0;
  }
  spd = (*scontrol >> 4) & 15U;
  *scontrol = (*scontrol & 4294967055U) | ((target << 4) & 255U);
  return (spd != target);
}
}
static int sata_set_spd_needed(struct ata_link *link )
{
  u32 scontrol ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = sata_scr_read(link, 2, & scontrol);
  if (tmp != 0) {
    return (1);
  } else {
  }
  tmp___0 = __sata_set_spd_needed(link, & scontrol);
  return (tmp___0);
}
}
int sata_set_spd(struct ata_link *link )
{
  u32 scontrol ;
  int rc ;
  int tmp ;
  {
  rc = sata_scr_read(link, 2, & scontrol);
  if (rc != 0) {
    return (rc);
  } else {
  }
  tmp = __sata_set_spd_needed(link, & scontrol);
  if (tmp == 0) {
    return (0);
  } else {
  }
  rc = sata_scr_write(link, 2, scontrol);
  if (rc != 0) {
    return (rc);
  } else {
  }
  return (1);
}
}
static struct ata_timing const ata_timing[23U] =
  { {8U, 70U, 290U, 240U, 600U, 165U, 150U, 0U, 600U, 0U},
        {9U, 50U, 290U, 93U, 383U, 125U, 100U, 0U, 383U, 0U},
        {10U, 30U, 290U, 40U, 330U, 100U, 90U, 0U, 240U, 0U},
        {11U, 30U, 80U, 70U, 180U, 80U, 70U, 0U, 180U, 0U},
        {12U, 25U, 70U, 25U, 120U, 70U, 25U, 0U, 120U, 0U},
        {13U, 15U, 65U, 25U, 100U, 65U, 25U, 0U, 100U, 0U},
        {14U, 10U, 55U, 20U, 80U, 55U, 20U, 0U, 80U, 0U},
        {16U, 120U, 0U, 0U, 0U, 480U, 480U, 50U, 960U, 0U},
        {17U, 90U, 0U, 0U, 0U, 240U, 240U, 30U, 480U, 0U},
        {18U, 60U, 0U, 0U, 0U, 120U, 120U, 20U, 240U, 0U},
        {32U, 60U, 0U, 0U, 0U, 215U, 215U, 20U, 480U, 0U},
        {33U, 45U, 0U, 0U, 0U, 80U, 50U, 5U, 150U, 0U},
        {34U, 25U, 0U, 0U, 0U, 70U, 25U, 5U, 120U, 0U},
        {35U, 25U, 0U, 0U, 0U, 65U, 25U, 5U, 100U, 0U},
        {36U, 25U, 0U, 0U, 0U, 55U, 20U, 5U, 80U, 0U},
        {64U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 120U},
        {65U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 80U},
        {66U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 60U},
        {67U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 45U},
        {68U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 30U},
        {69U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 20U},
        {70U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 15U},
        {255U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned short)0}};
static void ata_timing_quantize(struct ata_timing const *t , struct ata_timing *q ,
                                int T , int UT )
{
  {
  q->setup = (int )t->setup * 1000 != 0 ? (unsigned int )((unsigned short )(((int )t->setup * 1000 + -1) / T)) + 1U : 0U;
  q->act8b = (int )t->act8b * 1000 != 0 ? (unsigned int )((unsigned short )(((int )t->act8b * 1000 + -1) / T)) + 1U : 0U;
  q->rec8b = (int )t->rec8b * 1000 != 0 ? (unsigned int )((unsigned short )(((int )t->rec8b * 1000 + -1) / T)) + 1U : 0U;
  q->cyc8b = (int )t->cyc8b * 1000 != 0 ? (unsigned int )((unsigned short )(((int )t->cyc8b * 1000 + -1) / T)) + 1U : 0U;
  q->active = (int )t->active * 1000 != 0 ? (unsigned int )((unsigned short )(((int )t->active * 1000 + -1) / T)) + 1U : 0U;
  q->recover = (int )t->recover * 1000 != 0 ? (unsigned int )((unsigned short )(((int )t->recover * 1000 + -1) / T)) + 1U : 0U;
  q->dmack_hold = (int )t->dmack_hold * 1000 != 0 ? (unsigned int )((unsigned short )(((int )t->dmack_hold * 1000 + -1) / T)) + 1U : 0U;
  q->cycle = (int )t->cycle * 1000 != 0 ? (unsigned int )((unsigned short )(((int )t->cycle * 1000 + -1) / T)) + 1U : 0U;
  q->udma = (int )t->udma * 1000 != 0 ? (unsigned int )((unsigned short )(((int )t->udma * 1000 + -1) / UT)) + 1U : 0U;
  return;
}
}
void ata_timing_merge(struct ata_timing const *a , struct ata_timing const *b ,
                      struct ata_timing *m , unsigned int what )
{
  unsigned short _max1 ;
  unsigned short _max2 ;
  unsigned short _max1___0 ;
  unsigned short _max2___0 ;
  unsigned short _max1___1 ;
  unsigned short _max2___1 ;
  unsigned short _max1___2 ;
  unsigned short _max2___2 ;
  unsigned short _max1___3 ;
  unsigned short _max2___3 ;
  unsigned short _max1___4 ;
  unsigned short _max2___4 ;
  unsigned short _max1___5 ;
  unsigned short _max2___5 ;
  unsigned short _max1___6 ;
  unsigned short _max2___6 ;
  unsigned short _max1___7 ;
  unsigned short _max2___7 ;
  {
  if ((int )what & 1) {
    _max1 = a->setup;
    _max2 = b->setup;
    m->setup = (unsigned short )((int )_max1 > (int )_max2 ? _max1 : _max2);
  } else {
  }
  if ((what & 2U) != 0U) {
    _max1___0 = a->act8b;
    _max2___0 = b->act8b;
    m->act8b = (unsigned short )((int )_max1___0 > (int )_max2___0 ? _max1___0 : _max2___0);
  } else {
  }
  if ((what & 4U) != 0U) {
    _max1___1 = a->rec8b;
    _max2___1 = b->rec8b;
    m->rec8b = (unsigned short )((int )_max1___1 > (int )_max2___1 ? _max1___1 : _max2___1);
  } else {
  }
  if ((what & 8U) != 0U) {
    _max1___2 = a->cyc8b;
    _max2___2 = b->cyc8b;
    m->cyc8b = (unsigned short )((int )_max1___2 > (int )_max2___2 ? _max1___2 : _max2___2);
  } else {
  }
  if ((what & 16U) != 0U) {
    _max1___3 = a->active;
    _max2___3 = b->active;
    m->active = (unsigned short )((int )_max1___3 > (int )_max2___3 ? _max1___3 : _max2___3);
  } else {
  }
  if ((what & 32U) != 0U) {
    _max1___4 = a->recover;
    _max2___4 = b->recover;
    m->recover = (unsigned short )((int )_max1___4 > (int )_max2___4 ? _max1___4 : _max2___4);
  } else {
  }
  if ((what & 64U) != 0U) {
    _max1___5 = a->dmack_hold;
    _max2___5 = b->dmack_hold;
    m->dmack_hold = (unsigned short )((int )_max1___5 > (int )_max2___5 ? _max1___5 : _max2___5);
  } else {
  }
  if ((what & 128U) != 0U) {
    _max1___6 = a->cycle;
    _max2___6 = b->cycle;
    m->cycle = (unsigned short )((int )_max1___6 > (int )_max2___6 ? _max1___6 : _max2___6);
  } else {
  }
  if ((what & 256U) != 0U) {
    _max1___7 = a->udma;
    _max2___7 = b->udma;
    m->udma = (unsigned short )((int )_max1___7 > (int )_max2___7 ? _max1___7 : _max2___7);
  } else {
  }
  return;
}
}
struct ata_timing const *ata_timing_find_mode(u8 xfer_mode )
{
  struct ata_timing const *t ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  t = (struct ata_timing const *)(& ata_timing);
  goto ldv_40721;
  ldv_40720:
  t = t + 1;
  ldv_40721: ;
  if ((int )((unsigned short )xfer_mode) > (int )((unsigned short )t->mode)) {
    goto ldv_40720;
  } else {
  }
  if ((int )((unsigned short )xfer_mode) == (int )((unsigned short )t->mode)) {
    return (t);
  } else {
  }
  __ret_warn_once = 1;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_fmt("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                        3013, "%s: unable to find timing for xfer_mode 0x%x\n", "ata_timing_find_mode",
                        (int )xfer_mode);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return (0);
}
}
int ata_timing_compute(struct ata_device *adev , unsigned short speed , struct ata_timing *t ,
                       int T , int UT )
{
  u16 const *id ;
  struct ata_timing const *s ;
  struct ata_timing p ;
  size_t __len ;
  void *__ret ;
  bool tmp ;
  int tmp___0 ;
  {
  id = (u16 const *)(& adev->ldv_38497.id);
  s = ata_timing_find_mode((int )((u8 )speed));
  if ((unsigned long )s == (unsigned long )((struct ata_timing const *)0)) {
    return (-22);
  } else {
  }
  __len = 20UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)t, (void const *)s, __len);
  } else {
    __ret = memcpy((void *)t, (void const *)s, __len);
  }
  if (((int )*(id + 53UL) & 2) != 0) {
    memset((void *)(& p), 0, 20UL);
    if ((unsigned int )speed > 7U && (unsigned int )speed <= 15U) {
      if ((unsigned int )speed <= 10U) {
        p.cyc8b = *(id + 67UL);
        p.cycle = p.cyc8b;
      } else
      if ((unsigned int )speed <= 12U) {
        p.cyc8b = *(id + 68UL);
        p.cycle = p.cyc8b;
      } else
      if ((unsigned int )speed == 13U) {
        tmp = ata_id_is_cfa(id);
        if (tmp) {
          tmp___0 = 0;
        } else {
          tmp___0 = 1;
        }
        if (tmp___0) {
          p.cyc8b = *(id + 68UL);
          p.cycle = p.cyc8b;
        } else {
          goto _L;
        }
      } else
      _L:
      if ((unsigned int )speed > 31U && (unsigned int )speed <= 34U) {
        p.cycle = *(id + 65UL);
      } else {
      }
    } else {
    }
    ata_timing_merge((struct ata_timing const *)(& p), (struct ata_timing const *)t,
                     t, 136U);
  } else {
  }
  ata_timing_quantize((struct ata_timing const *)t, t, T, UT);
  if ((unsigned int )speed > 14U) {
    ata_timing_compute(adev, (int )adev->pio_mode, & p, T, UT);
    ata_timing_merge((struct ata_timing const *)(& p), (struct ata_timing const *)t,
                     t, 511U);
  } else {
  }
  if ((int )t->act8b + (int )t->rec8b < (int )t->cyc8b) {
    t->act8b = (int )t->act8b + (int )((unsigned short )(((int )t->cyc8b - ((int )t->act8b + (int )t->rec8b)) / 2));
    t->rec8b = (int )t->cyc8b - (int )t->act8b;
  } else {
  }
  if ((int )t->active + (int )t->recover < (int )t->cycle) {
    t->active = (int )t->active + (int )((unsigned short )(((int )t->cycle - ((int )t->active + (int )t->recover)) / 2));
    t->recover = (int )t->cycle - (int )t->active;
  } else {
  }
  if ((int )t->active + (int )t->recover > (int )t->cycle) {
    t->cycle = (int )t->active + (int )t->recover;
  } else {
  }
  return (0);
}
}
u8 ata_timing_cycle2mode(unsigned int xfer_shift , int cycle )
{
  u8 base_mode ;
  u8 last_mode ;
  struct ata_xfer_ent const *ent ;
  struct ata_timing const *t ;
  unsigned short this_cycle ;
  int tmp ;
  {
  base_mode = 255U;
  last_mode = 255U;
  ent = (struct ata_xfer_ent const *)(& ata_xfer_tbl);
  goto ldv_40751;
  ldv_40750: ;
  if ((unsigned int )ent->shift == xfer_shift) {
    base_mode = ent->base;
  } else {
  }
  ent = ent + 1;
  ldv_40751: ;
  if ((int )ent->shift >= 0) {
    goto ldv_40750;
  } else {
  }
  t = ata_timing_find_mode((int )base_mode);
  goto ldv_40761;
  ldv_40760: ;
  switch (xfer_shift) {
  case 0U: ;
  case 7U:
  this_cycle = t->cycle;
  goto ldv_40756;
  case 12U:
  this_cycle = t->udma;
  goto ldv_40756;
  default: ;
  return (255U);
  }
  ldv_40756: ;
  if ((int )this_cycle < cycle) {
    goto ldv_40759;
  } else {
  }
  last_mode = (u8 )t->mode;
  t = t + 1;
  ldv_40761: ;
  if ((unsigned long )t != (unsigned long )((struct ata_timing const *)0)) {
    tmp = ata_xfer_mode2shift((unsigned long )t->mode);
    if ((unsigned int )tmp == xfer_shift) {
      goto ldv_40760;
    } else {
      goto ldv_40759;
    }
  } else {
  }
  ldv_40759: ;
  return (last_mode);
}
}
int ata_down_xfermask_limit(struct ata_device *dev , unsigned int sel )
{
  char buf[32U] ;
  unsigned long orig_mask ;
  unsigned long xfer_mask ;
  unsigned long pio_mask ;
  unsigned long mwdma_mask ;
  unsigned long udma_mask ;
  int quiet ;
  int highbit ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  {
  quiet = (int )sel < 0;
  sel = sel & 2147483647U;
  orig_mask = ata_pack_xfermask(dev->pio_mask, dev->mwdma_mask, dev->udma_mask);
  xfer_mask = orig_mask;
  ata_unpack_xfermask(xfer_mask, & pio_mask, & mwdma_mask, & udma_mask);
  switch (sel) {
  case 0U:
  tmp = fls((int )pio_mask);
  highbit = tmp + -1;
  pio_mask = (unsigned long )(~ (1 << highbit)) & pio_mask;
  goto ldv_40775;
  case 1U: ;
  if (udma_mask != 0UL) {
    tmp___0 = fls((int )udma_mask);
    highbit = tmp___0 + -1;
    udma_mask = (unsigned long )(~ (1 << highbit)) & udma_mask;
    if (udma_mask == 0UL) {
      return (-2);
    } else {
    }
  } else
  if (mwdma_mask != 0UL) {
    tmp___1 = fls((int )mwdma_mask);
    highbit = tmp___1 + -1;
    mwdma_mask = (unsigned long )(~ (1 << highbit)) & mwdma_mask;
    if (mwdma_mask == 0UL) {
      return (-2);
    } else {
    }
  } else {
  }
  goto ldv_40775;
  case 2U:
  udma_mask = udma_mask & 7UL;
  goto ldv_40775;
  case 4U:
  pio_mask = pio_mask & 1UL;
  case 3U:
  mwdma_mask = 0UL;
  udma_mask = 0UL;
  goto ldv_40775;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared"),
                       "i" (3207), "i" (12UL));
  ldv_40781: ;
  goto ldv_40781;
  }
  ldv_40775:
  tmp___2 = ata_pack_xfermask(pio_mask, mwdma_mask, udma_mask);
  xfer_mask = tmp___2 & xfer_mask;
  if ((xfer_mask & 127UL) == 0UL || xfer_mask == orig_mask) {
    return (-2);
  } else {
  }
  if (quiet == 0) {
    if ((xfer_mask & 1048448UL) != 0UL) {
      tmp___3 = ata_mode_string(xfer_mask & 127UL);
      tmp___4 = ata_mode_string(xfer_mask);
      snprintf((char *)(& buf), 32UL, "%s:%s", tmp___4, tmp___3);
    } else {
      tmp___5 = ata_mode_string(xfer_mask);
      snprintf((char *)(& buf), 32UL, "%s", tmp___5);
    }
    ata_dev_printk((struct ata_device const *)dev, "\f", "limiting speed to %s\n",
                   (char *)(& buf));
  } else {
  }
  ata_unpack_xfermask(xfer_mask, & dev->pio_mask, & dev->mwdma_mask, & dev->udma_mask);
  return (0);
}
}
static int ata_dev_set_mode(struct ata_device *dev )
{
  struct ata_port *ap ;
  struct ata_eh_context *ehc ;
  bool nosetxfer ;
  char const *dev_err_whine ;
  int ign_dev_err ;
  unsigned int err_mask ;
  int rc ;
  bool tmp ;
  bool tmp___0 ;
  unsigned int tmp___1 ;
  unsigned long tmp___2 ;
  u8 tmp___3 ;
  unsigned long tmp___4 ;
  char const *tmp___5 ;
  {
  ap = (dev->link)->ap;
  ehc = & (dev->link)->eh_context;
  nosetxfer = (dev->horkage & 16384U) != 0U;
  dev_err_whine = "";
  ign_dev_err = 0;
  err_mask = 0U;
  dev->flags = dev->flags & 0xffffffffffffefffUL;
  if (dev->xfer_shift == 0U) {
    dev->flags = dev->flags | 4096UL;
  } else {
  }
  if ((int )nosetxfer && (ap->flags & 2UL) != 0UL) {
    tmp = ata_id_is_sata((u16 const *)(& dev->ldv_38497.id));
    if ((int )tmp) {
      dev_err_whine = " (SET_XFERMODE skipped)";
    } else {
      goto _L;
    }
  } else {
    _L:
    if ((int )nosetxfer) {
      ata_dev_printk((struct ata_device const *)dev, "\f", "NOSETXFER but PATA detected - can\'t skip SETXFER, might malfunction\n");
    } else {
    }
    err_mask = ata_dev_set_xfermode(dev);
  }
  if ((err_mask & 4294967294U) != 0U) {
    goto fail;
  } else {
  }
  ehc->i.flags = ehc->i.flags | 1048576U;
  rc = ata_dev_revalidate(dev, 0U, 0U);
  ehc->i.flags = ehc->i.flags & 4293918719U;
  if (rc != 0) {
    return (rc);
  } else {
  }
  if (dev->xfer_shift == 0U) {
    tmp___0 = ata_id_is_cfa((u16 const *)(& dev->ldv_38497.id));
    if ((int )tmp___0) {
      ign_dev_err = 1;
    } else {
    }
    tmp___1 = ata_id_major_version((u16 const *)(& dev->ldv_38497.id));
    if (tmp___1 == 0U && (unsigned int )dev->pio_mode <= 10U) {
      ign_dev_err = 1;
    } else {
    }
    if (((int )dev->ldv_38497.id[49] & 2048) == 0 && (unsigned int )dev->pio_mode <= 10U) {
      ign_dev_err = 1;
    } else {
    }
  } else {
  }
  if ((dev->xfer_shift == 7U && (unsigned int )dev->dma_mode == 32U) && ((int )dev->ldv_38497.id[63] >> 8) & 1) {
    ign_dev_err = 1;
  } else {
  }
  tmp___2 = ata_id_xfermask((u16 const *)(& dev->ldv_38497.id));
  tmp___3 = ata_xfer_mask2mode(tmp___2);
  if ((int )dev->xfer_mode == (int )tmp___3) {
    ign_dev_err = 1;
  } else {
  }
  if ((int )err_mask & 1) {
    if (ign_dev_err == 0) {
      goto fail;
    } else {
      dev_err_whine = " (device error ignored)";
    }
  } else {
  }
  tmp___4 = ata_xfer_mode2mask((int )dev->xfer_mode);
  tmp___5 = ata_mode_string(tmp___4);
  ata_dev_printk((struct ata_device const *)dev, "\016", "configured for %s%s\n",
                 tmp___5, dev_err_whine);
  return (0);
  fail:
  ata_dev_printk((struct ata_device const *)dev, "\v", "failed to set xfermode (err_mask=0x%x)\n",
                 err_mask);
  return (-5);
}
}
int ata_do_set_mode(struct ata_link *link , struct ata_device **r_failed_dev )
{
  struct ata_port *ap ;
  struct ata_device *dev ;
  int rc ;
  int used_dma ;
  int found ;
  unsigned long pio_mask ;
  unsigned long dma_mask ;
  unsigned int mode_mask ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ap = link->ap;
  rc = 0;
  used_dma = 0;
  found = 0;
  dev = ata_dev_next(0, link, 0);
  goto ldv_40806;
  ldv_40805:
  mode_mask = 1U;
  if (dev->class == 3U) {
    mode_mask = 2U;
  } else {
    tmp = ata_id_is_cfa((u16 const *)(& dev->ldv_38497.id));
    if ((int )tmp) {
      mode_mask = 4U;
    } else {
    }
  }
  ata_dev_xfermask(dev);
  ata_force_xfermask(dev);
  pio_mask = ata_pack_xfermask(dev->pio_mask, 0UL, 0UL);
  if (((unsigned int )libata_dma_mask & mode_mask) != 0U) {
    dma_mask = ata_pack_xfermask(0UL, dev->mwdma_mask, dev->udma_mask);
  } else {
    dma_mask = 0UL;
  }
  dev->pio_mode = ata_xfer_mask2mode(pio_mask);
  dev->dma_mode = ata_xfer_mask2mode(dma_mask);
  found = 1;
  tmp___0 = ata_dma_enabled(dev);
  if (tmp___0 != 0) {
    used_dma = 1;
  } else {
  }
  dev = ata_dev_next(dev, link, 0);
  ldv_40806: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_40805;
  } else {
  }
  if (found == 0) {
    goto out;
  } else {
  }
  dev = ata_dev_next(0, link, 0);
  goto ldv_40810;
  ldv_40809: ;
  if ((unsigned int )dev->pio_mode == 255U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "no PIO support\n");
    rc = -22;
    goto out;
  } else {
  }
  dev->xfer_mode = dev->pio_mode;
  dev->xfer_shift = 0U;
  if ((unsigned long )(ap->ops)->set_piomode != (unsigned long )((void (*)(struct ata_port * ,
                                                                           struct ata_device * ))0)) {
    (*((ap->ops)->set_piomode))(ap, dev);
  } else {
  }
  dev = ata_dev_next(dev, link, 0);
  ldv_40810: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_40809;
  } else {
  }
  dev = ata_dev_next(0, link, 0);
  goto ldv_40814;
  ldv_40813:
  tmp___1 = ata_dma_enabled(dev);
  if (tmp___1 == 0) {
    goto ldv_40812;
  } else {
  }
  dev->xfer_mode = dev->dma_mode;
  tmp___2 = ata_xfer_mode2shift((unsigned long )dev->dma_mode);
  dev->xfer_shift = (unsigned int )tmp___2;
  if ((unsigned long )(ap->ops)->set_dmamode != (unsigned long )((void (*)(struct ata_port * ,
                                                                           struct ata_device * ))0)) {
    (*((ap->ops)->set_dmamode))(ap, dev);
  } else {
  }
  ldv_40812:
  dev = ata_dev_next(dev, link, 0);
  ldv_40814: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_40813;
  } else {
  }
  dev = ata_dev_next(0, link, 0);
  goto ldv_40817;
  ldv_40816:
  rc = ata_dev_set_mode(dev);
  if (rc != 0) {
    goto out;
  } else {
  }
  dev = ata_dev_next(dev, link, 0);
  ldv_40817: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_40816;
  } else {
  }
  if (used_dma != 0 && (int )(ap->host)->flags & 1) {
    (ap->host)->simplex_claimed = ap;
  } else {
  }
  out: ;
  if (rc != 0) {
    *r_failed_dev = dev;
  } else {
  }
  return (rc);
}
}
int ata_wait_ready(struct ata_link *link , unsigned long deadline , int (*check_ready)(struct ata_link * ) )
{
  unsigned long start ;
  unsigned long nodev_deadline ;
  int warned ;
  int __ret_warn_on ;
  long tmp ;
  unsigned long now ;
  int ready ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  start = jiffies;
  warned = 0;
  if ((((link->ap)->host)->flags & 4UL) != 0UL) {
    nodev_deadline = ata_deadline(start, 2000UL);
  } else {
    nodev_deadline = ata_deadline(start, 800UL);
  }
  __ret_warn_on = (unsigned long )(link->ap)->slave_link == (unsigned long )link;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                       3450);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((long )deadline - (long )nodev_deadline < 0L) {
    nodev_deadline = deadline;
  } else {
  }
  ldv_40857:
  now = jiffies;
  tmp___0 = (*check_ready)(link);
  ready = tmp___0;
  if (ready > 0) {
    return (0);
  } else {
  }
  if (ready == -19) {
    tmp___3 = ata_link_online(link);
    if ((int )tmp___3) {
      ready = 0;
    } else
    if (((link->ap)->flags & 2UL) != 0UL) {
      tmp___1 = ata_link_offline(link);
      if (tmp___1) {
        tmp___2 = 0;
      } else {
        tmp___2 = 1;
      }
      if (tmp___2) {
        if ((long )now - (long )nodev_deadline < 0L) {
          ready = 0;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if (ready != 0) {
    return (ready);
  } else {
  }
  if ((long )deadline - (long )now < 0L) {
    return (-16);
  } else {
  }
  if ((warned == 0 && (long )(start + 1250UL) - (long )now < 0L) && deadline - now > 750UL) {
    ata_link_printk((struct ata_link const *)link, "\f", "link is slow to respond, please be patient (ready=%d)\n",
                    tmp___0);
    warned = 1;
  } else {
  }
  ata_msleep(link->ap, 50U);
  goto ldv_40857;
}
}
int ata_wait_after_reset(struct ata_link *link , unsigned long deadline , int (*check_ready)(struct ata_link * ) )
{
  int tmp ;
  {
  ata_msleep(link->ap, 150U);
  tmp = ata_wait_ready(link, deadline, check_ready);
  return (tmp);
}
}
int sata_link_debounce(struct ata_link *link , unsigned long const *params , unsigned long deadline )
{
  unsigned long interval ;
  unsigned long duration ;
  unsigned long last_jiffies ;
  unsigned long t ;
  u32 last ;
  u32 cur ;
  int rc ;
  unsigned long tmp ;
  {
  interval = *params;
  duration = *(params + 1UL);
  t = ata_deadline(jiffies, *(params + 2UL));
  if ((long )t - (long )deadline < 0L) {
    deadline = t;
  } else {
  }
  rc = sata_scr_read(link, 0, & cur);
  if (rc != 0) {
    return (rc);
  } else {
  }
  cur = cur & 15U;
  last = cur;
  last_jiffies = jiffies;
  ldv_40901:
  ata_msleep(link->ap, (unsigned int )interval);
  rc = sata_scr_read(link, 0, & cur);
  if (rc != 0) {
    return (rc);
  } else {
  }
  cur = cur & 15U;
  if (cur == last) {
    if (cur == 1U && (long )jiffies - (long )deadline < 0L) {
      goto ldv_40888;
    } else {
    }
    tmp = ata_deadline(last_jiffies, duration);
    if ((long )tmp - (long )jiffies < 0L) {
      return (0);
    } else {
    }
    goto ldv_40888;
  } else {
  }
  last = cur;
  last_jiffies = jiffies;
  if ((long )deadline - (long )jiffies < 0L) {
    return (-32);
  } else {
  }
  ldv_40888: ;
  goto ldv_40901;
}
}
int sata_link_resume(struct ata_link *link , unsigned long const *params , unsigned long deadline )
{
  int tries ;
  u32 scontrol ;
  u32 serror ;
  int rc ;
  {
  tries = 5;
  rc = sata_scr_read(link, 2, & scontrol);
  if (rc != 0) {
    return (rc);
  } else {
  }
  ldv_40911:
  scontrol = (scontrol & 240U) | 768U;
  rc = sata_scr_write(link, 2, scontrol);
  if (rc != 0) {
    return (rc);
  } else {
  }
  ata_msleep(link->ap, 200U);
  rc = sata_scr_read(link, 2, & scontrol);
  if (rc != 0) {
    return (rc);
  } else {
  }
  if ((scontrol & 3855U) != 768U) {
    tries = tries - 1;
    if (tries != 0) {
      goto ldv_40911;
    } else {
      goto ldv_40912;
    }
  } else {
  }
  ldv_40912: ;
  if ((scontrol & 3855U) != 768U) {
    ata_link_printk((struct ata_link const *)link, "\f", "failed to resume link (SControl %X)\n",
                    scontrol);
    return (0);
  } else {
  }
  if (tries <= 4) {
    ata_link_printk((struct ata_link const *)link, "\f", "link resume succeeded after %d retries\n",
                    5 - tries);
  } else {
  }
  rc = sata_link_debounce(link, params, deadline);
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = sata_scr_read(link, 1, & serror);
  if (rc == 0) {
    rc = sata_scr_write(link, 1, serror);
  } else {
  }
  return (rc != -22 ? rc : 0);
}
}
int sata_link_scr_lpm(struct ata_link *link , enum ata_lpm_policy policy , bool spm_wakeup )
{
  struct ata_eh_context *ehc ;
  bool woken_up ;
  u32 scontrol ;
  int rc ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  int tmp___1 ;
  {
  ehc = & link->eh_context;
  woken_up = 0;
  rc = sata_scr_read(link, 2, & scontrol);
  if (rc != 0) {
    return (rc);
  } else {
  }
  switch ((unsigned int )policy) {
  case 1U:
  scontrol = scontrol | 1792U;
  if ((int )spm_wakeup) {
    scontrol = scontrol | 16384U;
    woken_up = 1;
  } else {
  }
  goto ldv_40923;
  case 2U:
  scontrol = scontrol & 4294967039U;
  scontrol = scontrol | 1536U;
  goto ldv_40923;
  case 3U:
  tmp = ata_link_nr_enabled(link);
  if (tmp > 0) {
    scontrol = scontrol & 4294965503U;
  } else {
    scontrol = scontrol & 4294967280U;
    scontrol = scontrol | 4U;
  }
  goto ldv_40923;
  default:
  __ret_warn_on = 1;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                       3713);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  ldv_40923:
  rc = sata_scr_write(link, 2, scontrol);
  if (rc != 0) {
    return (rc);
  } else {
  }
  if ((int )woken_up) {
    msleep(10U);
  } else {
  }
  ehc->i.serror = ehc->i.serror & 4294901759U;
  tmp___1 = sata_scr_write(link, 1, 65536U);
  return (tmp___1);
}
}
int ata_std_prereset(struct ata_link *link , unsigned long deadline )
{
  struct ata_port *ap ;
  struct ata_eh_context *ehc ;
  unsigned long const *timing ;
  unsigned long const *tmp ;
  int rc ;
  bool tmp___0 ;
  {
  ap = link->ap;
  ehc = & link->eh_context;
  tmp = sata_ehc_deb_timing(ehc);
  timing = tmp;
  if ((ehc->i.action & 4U) != 0U) {
    return (0);
  } else {
  }
  if ((ap->flags & 2UL) != 0UL) {
    rc = sata_link_resume(link, timing, deadline);
    if (rc != 0 && rc != -95) {
      ata_link_printk((struct ata_link const *)link, "\f", "failed to resume link for reset (errno=%d)\n",
                      rc);
    } else {
    }
  } else {
  }
  tmp___0 = ata_phys_link_offline(link);
  if ((int )tmp___0) {
    ehc->i.action = ehc->i.action & 4294967293U;
  } else {
  }
  return (0);
}
}
int sata_link_hardreset(struct ata_link *link , unsigned long const *timing , unsigned long deadline ,
                        bool *online , int (*check_ready)(struct ata_link * ) )
{
  u32 scontrol ;
  int rc ;
  int tmp ;
  bool tmp___0 ;
  unsigned long pmp_deadline ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  if ((unsigned long )online != (unsigned long )((bool *)0)) {
    *online = 0;
  } else {
  }
  tmp = sata_set_spd_needed(link);
  if (tmp != 0) {
    rc = sata_scr_read(link, 2, & scontrol);
    if (rc != 0) {
      goto out;
    } else {
    }
    scontrol = (scontrol & 240U) | 772U;
    rc = sata_scr_write(link, 2, scontrol);
    if (rc != 0) {
      goto out;
    } else {
    }
    sata_set_spd(link);
  } else {
  }
  rc = sata_scr_read(link, 2, & scontrol);
  if (rc != 0) {
    goto out;
  } else {
  }
  scontrol = (scontrol & 240U) | 769U;
  rc = sata_scr_write_flush(link, 2, scontrol);
  if (rc != 0) {
    goto out;
  } else {
  }
  ata_msleep(link->ap, 1U);
  rc = sata_link_resume(link, timing, deadline);
  if (rc != 0) {
    goto out;
  } else {
  }
  tmp___0 = ata_phys_link_offline(link);
  if ((int )tmp___0) {
    goto out;
  } else {
  }
  if ((unsigned long )online != (unsigned long )((bool *)0)) {
    *online = 1;
  } else {
  }
  tmp___1 = sata_pmp_supported(link->ap);
  if ((int )tmp___1) {
    tmp___2 = ata_is_host_link((struct ata_link const *)link);
    if (tmp___2 != 0) {
      if ((unsigned long )check_ready != (unsigned long )((int (*)(struct ata_link * ))0)) {
        pmp_deadline = ata_deadline(jiffies, 5000UL);
        if ((long )deadline - (long )pmp_deadline < 0L) {
          pmp_deadline = deadline;
        } else {
        }
        ata_wait_ready(link, pmp_deadline, check_ready);
      } else {
      }
      rc = -11;
      goto out;
    } else {
    }
  } else {
  }
  rc = 0;
  if ((unsigned long )check_ready != (unsigned long )((int (*)(struct ata_link * ))0)) {
    rc = ata_wait_ready(link, deadline, check_ready);
  } else {
  }
  out: ;
  if (rc != 0 && rc != -11) {
    if ((unsigned long )online != (unsigned long )((bool *)0)) {
      *online = 0;
    } else {
    }
    ata_link_printk((struct ata_link const *)link, "\v", "COMRESET failed (errno=%d)\n",
                    rc);
  } else {
  }
  return (rc);
}
}
int sata_std_hardreset(struct ata_link *link , unsigned int *class , unsigned long deadline )
{
  unsigned long const *timing ;
  unsigned long const *tmp ;
  bool online ;
  int rc ;
  {
  tmp = sata_ehc_deb_timing(& link->eh_context);
  timing = tmp;
  rc = sata_link_hardreset(link, timing, deadline, & online, 0);
  return ((int )online ? -11 : rc);
}
}
void ata_std_postreset(struct ata_link *link , unsigned int *classes )
{
  u32 serror ;
  int tmp ;
  {
  tmp = sata_scr_read(link, 1, & serror);
  if (tmp == 0) {
    sata_scr_write(link, 1, serror);
  } else {
  }
  sata_print_link_status(link);
  return;
}
}
static int ata_dev_same_device(struct ata_device *dev , unsigned int new_class , u16 const *new_id )
{
  u16 const *old_id ;
  unsigned char model[2U][41U] ;
  unsigned char serial[2U][21U] ;
  int tmp ;
  int tmp___0 ;
  {
  old_id = (u16 const *)(& dev->ldv_38497.id);
  if (dev->class != new_class) {
    ata_dev_printk((struct ata_device const *)dev, "\016", "class mismatch %d != %d\n",
                   dev->class, new_class);
    return (0);
  } else {
  }
  ata_id_c_string(old_id, (unsigned char *)(& model), 27U, 41U);
  ata_id_c_string(new_id, (unsigned char *)(& model) + 1U, 27U, 41U);
  ata_id_c_string(old_id, (unsigned char *)(& serial), 10U, 21U);
  ata_id_c_string(new_id, (unsigned char *)(& serial) + 1U, 10U, 21U);
  tmp = strcmp((char const *)(& model), (char const *)(& model) + 1U);
  if (tmp != 0) {
    ata_dev_printk((struct ata_device const *)dev, "\016", "model number mismatch \'%s\' != \'%s\'\n",
                   (unsigned char *)(& model), (unsigned char *)(& model) + 1U);
    return (0);
  } else {
  }
  tmp___0 = strcmp((char const *)(& serial), (char const *)(& serial) + 1U);
  if (tmp___0 != 0) {
    ata_dev_printk((struct ata_device const *)dev, "\016", "serial number mismatch \'%s\' != \'%s\'\n",
                   (unsigned char *)(& serial), (unsigned char *)(& serial) + 1U);
    return (0);
  } else {
  }
  return (1);
}
}
int ata_dev_reread_id(struct ata_device *dev , unsigned int readid_flags )
{
  unsigned int class ;
  u16 *id ;
  int rc ;
  int tmp ;
  size_t __len ;
  void *__ret ;
  {
  class = dev->class;
  id = (u16 *)(& ((dev->link)->ap)->sector_buf);
  rc = ata_dev_read_id(dev, & class, readid_flags, id);
  if (rc != 0) {
    return (rc);
  } else {
  }
  tmp = ata_dev_same_device(dev, class, (u16 const *)id);
  if (tmp == 0) {
    return (-19);
  } else {
  }
  __len = 512UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& dev->ldv_38497.id), (void const *)id, __len);
  } else {
    __ret = memcpy((void *)(& dev->ldv_38497.id), (void const *)id, __len);
  }
  return (0);
}
}
int ata_dev_revalidate(struct ata_device *dev , unsigned int new_class , unsigned int readid_flags )
{
  u64 n_sectors ;
  u64 n_native_sectors ;
  int rc ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  n_sectors = dev->n_sectors;
  n_native_sectors = dev->n_native_sectors;
  tmp = ata_dev_enabled((struct ata_device const *)dev);
  if (tmp == 0U) {
    return (-19);
  } else {
  }
  tmp___0 = ata_class_enabled(new_class);
  if (((tmp___0 != 0U && new_class != 1U) && new_class != 3U) && new_class != 7U) {
    ata_dev_printk((struct ata_device const *)dev, "\016", "class mismatch %u != %u\n",
                   dev->class, new_class);
    rc = -19;
    goto fail;
  } else {
  }
  rc = ata_dev_reread_id(dev, readid_flags);
  if (rc != 0) {
    goto fail;
  } else {
  }
  rc = ata_dev_configure(dev);
  if (rc != 0) {
    goto fail;
  } else {
  }
  if ((dev->class != 1U || n_sectors == 0ULL) || dev->n_sectors == n_sectors) {
    return (0);
  } else {
  }
  ata_dev_printk((struct ata_device const *)dev, "\f", "n_sectors mismatch %llu != %llu\n",
                 n_sectors, dev->n_sectors);
  if ((dev->n_native_sectors == n_native_sectors && dev->n_sectors > n_sectors) && dev->n_sectors == n_native_sectors) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "new n_sectors matches native, probably late HPA unlock, n_sectors updated\n");
    return (0);
  } else {
  }
  if (((dev->n_native_sectors == n_native_sectors && dev->n_sectors < n_sectors) && n_sectors == n_native_sectors) && (dev->horkage & 16U) == 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "old n_sectors matches native, probably late HPA lock, will try to unlock HPA\n");
    dev->flags = dev->flags | 262144UL;
    rc = -5;
  } else {
    rc = -19;
  }
  dev->n_native_sectors = n_native_sectors;
  dev->n_sectors = n_sectors;
  fail:
  ata_dev_printk((struct ata_device const *)dev, "\v", "revalidation failed (errno=%d)\n",
                 rc);
  return (rc);
}
}
static struct ata_blacklist_entry const ata_device_blacklist[68U] =
  { {"WDC AC11000H", 0, 2UL},
        {"WDC AC22100H", 0, 2UL},
        {"WDC AC32500H", 0, 2UL},
        {"WDC AC33100H", 0, 2UL},
        {"WDC AC31600H", 0, 2UL},
        {"WDC AC32100H", "24.09P07", 2UL},
        {"WDC AC23200L", "21.10N21", 2UL},
        {"Compaq CRD-8241B", 0, 2UL},
        {"CRD-8400B", 0, 2UL},
        {"CRD-848[02]B", 0, 2UL},
        {"CRD-84", 0, 2UL},
        {"SanDisk SDP3B", 0, 2UL},
        {"SanDisk SDP3B-64", 0, 2UL},
        {"SANYO CD-ROM CRD", 0, 2UL},
        {"HITACHI CDR-8", 0, 2UL},
        {"HITACHI CDR-8[34]35", 0, 2UL},
        {"Toshiba CD-ROM XM-6202B", 0, 2UL},
        {"TOSHIBA CD-ROM XM-1702BC", 0, 2UL},
        {"CD-532E-A", 0, 2UL},
        {"E-IDE CD-ROM CR-840", 0, 2UL},
        {"CD-ROM Drive/F5A", 0, 2UL},
        {"WPI CDD-820", 0, 2UL},
        {"SAMSUNG CD-ROM SC-148C", 0, 2UL},
        {"SAMSUNG CD-ROM SC", 0, 2UL},
        {"ATAPI CD-ROM DRIVE 40X MAXIMUM", 0, 2UL},
        {"_NEC DV5800A", 0, 2UL},
        {"SAMSUNG CD-ROM SN-124", "N001", 2UL},
        {"Seagate STT20000A", 0, 2UL},
        {" 2GB ATA Flash Disk", "ADMA428M", 2UL},
        {"Config  Disk", 0, 32UL},
        {"TORiSAN DVD-ROM DRD-N216", 0, 8UL},
        {"QUANTUM DAT    DAT72-000", 0, 2048UL},
        {"WDC WD740ADFD-00", 0, 4UL},
        {"WDC WD740ADFD-00NLR1", 0, 4UL},
        {"FUJITSU MHT2060BH", 0, 4UL},
        {"Maxtor *", "BANC*", 4UL},
        {"Maxtor 7V300F0", "VA111630", 4UL},
        {"ST380817AS", "3.42", 4UL},
        {"ST3160023AS", "3.42", 4UL},
        {"OCZ CORE_SSD", "02.10104", 4UL},
        {"ST31500341AS", "SD1[5-9]", 4100UL},
        {"ST31000333AS", "SD1[5-9]", 4100UL},
        {"ST3640[36]23AS", "SD1[5-9]", 4100UL},
        {"ST3320[68]13AS", "SD1[5-9]", 4100UL},
        {"HTS541060G9SA00", "MB3OC60D", 4UL},
        {"HTS541080G9SA00", "MB4OC60D", 4UL},
        {"HTS541010G9SA00", "MBZOC60D", 4UL},
        {"C300-CTFDDAC128MAG", "0001", 4UL},
        {"HDS724040KLSA80", "KFAOA20N", 16UL},
        {"WDC WD3200JD-00KLB0", "WD-WCAMR1130137", 16UL},
        {"WDC WD2500JD-00HBB0", "WD-WMAL71490727", 16UL},
        {"MAXTOR 6L080L4", "A93.0500", 16UL},
        {"OCZ-VERTEX", "1.30", 16UL},
        {"ST340823A", 0, 64UL},
        {"ST320413A", 0, 64UL},
        {"ST310211A", 0, 64UL},
        {"QUANTUM FIREBALLlct10 05", "A03.0900", 256UL},
        {"TSSTcorp CDDVDW SH-S202[HJN]", "SB0[01]", 256UL},
        {"MTRON MSP-SATA*", 0, 1024UL},
        {"BUFFALO HD-QSU2/R5", 0, 1024UL},
        {"WD My Book", 0, 8192UL},
        {"Seagate FreeAgent GoFlex", 0, 8192UL},
        {"PIONEER DVD-RW  DVRTD08", 0, 16384UL},
        {"PIONEER DVD-RW  DVRTD08A", 0, 16384UL},
        {"PIONEER DVD-RW  DVR-215", 0, 16384UL},
        {"PIONEER DVD-RW  DVR-212D", 0, 16384UL},
        {"PIONEER DVD-RW  DVR-216D", 0, 16384UL}};
static int glob_match(char const *text , char const *pattern )
{
  char const *tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  {
  ldv_41011: ;
  if ((int )((signed char )*text) == (int )((signed char )*pattern) || (int )((signed char )*pattern) == 63) {
    tmp___0 = pattern;
    pattern = pattern + 1;
    if ((int )((signed char )*tmp___0) == 0) {
      return (0);
    } else {
      if ((int )((signed char )*text) == 0 || (int )((signed char )*pattern) != 91) {
        goto ldv_41004;
      } else {
      }
      goto ldv_41007;
      ldv_41006: ;
      if ((int )((signed char )*pattern) == 45 && (int )((signed char )*(pattern + 0xffffffffffffffffUL)) != 91) {
        if ((int )((signed char )*text) > (int )((signed char )*(pattern + 0xffffffffffffffffUL)) && (int )((signed char )*text) < (int )((signed char )*(pattern + 1UL))) {
          pattern = pattern + 1;
          goto ldv_41005;
        } else {
        }
      } else {
      }
      ldv_41007:
      pattern = pattern + 1;
      if (((int )((signed char )*pattern) != 0 && (int )((signed char )*pattern) != 93) && (int )((signed char )*text) != (int )((signed char )*pattern)) {
        goto ldv_41006;
      } else {
      }
      ldv_41005: ;
      if ((int )((signed char )*pattern) == 0 || (int )((signed char )*pattern) == 93) {
        return (1);
      } else {
      }
      goto ldv_41009;
      ldv_41008: ;
      ldv_41009: ;
      if ((int )((signed char )*pattern) != 0) {
        tmp = pattern;
        pattern = pattern + 1;
        if ((int )((signed char )*tmp) != 93) {
          goto ldv_41008;
        } else {
          goto ldv_41010;
        }
      } else {
      }
      ldv_41010: ;
    }
  } else {
  }
  text = text + 1;
  if ((int )((signed char )*text) != 0 && (int )((signed char )*pattern) != 0) {
    goto ldv_41011;
  } else {
  }
  ldv_41004: ;
  if ((int )((signed char )*pattern) == 42) {
    pattern = pattern + 1;
    if ((int )((signed char )*pattern) == 0) {
      return (0);
    } else {
    }
    goto ldv_41013;
    ldv_41012:
    tmp___1 = glob_match(text, pattern);
    if (tmp___1 == 0) {
      return (0);
    } else {
    }
    text = text + 1;
    ldv_41013: ;
    if ((int )((signed char )*text) != 0) {
      goto ldv_41012;
    } else {
    }
  } else {
  }
  if ((int )((signed char )*text) == 0 && (int )((signed char )*pattern) == 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static unsigned long ata_dev_blacklisted(struct ata_device const *dev )
{
  unsigned char model_num[41U] ;
  unsigned char model_rev[9U] ;
  struct ata_blacklist_entry const *ad ;
  int tmp ;
  int tmp___0 ;
  {
  ad = (struct ata_blacklist_entry const *)(& ata_device_blacklist);
  ata_id_c_string((u16 const *)(& dev->ldv_38497.id), (unsigned char *)(& model_num),
                  27U, 41U);
  ata_id_c_string((u16 const *)(& dev->ldv_38497.id), (unsigned char *)(& model_rev),
                  23U, 9U);
  goto ldv_41022;
  ldv_41021:
  tmp___0 = glob_match((char const *)(& model_num), ad->model_num);
  if (tmp___0 == 0) {
    if ((unsigned long )ad->model_rev == (unsigned long )((char const * )0)) {
      return ((unsigned long )ad->horkage);
    } else {
    }
    tmp = glob_match((char const *)(& model_rev), ad->model_rev);
    if (tmp == 0) {
      return ((unsigned long )ad->horkage);
    } else {
    }
  } else {
  }
  ad = ad + 1;
  ldv_41022: ;
  if ((unsigned long )ad->model_num != (unsigned long )((char const * )0)) {
    goto ldv_41021;
  } else {
  }
  return (0UL);
}
}
static int ata_dma_blacklisted(struct ata_device const *dev )
{
  {
  if ((((dev->link)->ap)->flags & 512UL) != 0UL && ((unsigned long )dev->flags & 4UL) != 0UL) {
    return (1);
  } else {
  }
  return (((unsigned int )dev->horkage & 2U) != 0U);
}
}
static int ata_is_40wire(struct ata_device *dev )
{
  bool tmp ;
  bool tmp___0 ;
  {
  if ((dev->horkage & 256U) != 0U) {
    tmp = ata_drive_40wire_relaxed((u16 const *)(& dev->ldv_38497.id));
    return ((int )tmp);
  } else {
  }
  tmp___0 = ata_drive_40wire((u16 const *)(& dev->ldv_38497.id));
  return ((int )tmp___0);
}
}
static int cable_is_40wire(struct ata_port *ap )
{
  struct ata_link *link ;
  struct ata_device *dev ;
  int tmp ;
  {
  if (ap->cbl == 1U) {
    return (1);
  } else {
  }
  if (ap->cbl == 2U || ap->cbl == 6U) {
    return (0);
  } else {
  }
  if (ap->cbl == 3U) {
    return (0);
  } else {
  }
  link = ata_link_next(0, ap, 0);
  goto ldv_41039;
  ldv_41038:
  dev = ata_dev_next(0, link, 0);
  goto ldv_41036;
  ldv_41035:
  tmp = ata_is_40wire(dev);
  if (tmp == 0) {
    return (0);
  } else {
  }
  dev = ata_dev_next(dev, link, 0);
  ldv_41036: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_41035;
  } else {
  }
  link = ata_link_next(link, ap, 0);
  ldv_41039: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_41038;
  } else {
  }
  return (1);
}
}
static void ata_dev_xfermask(struct ata_device *dev )
{
  struct ata_link *link ;
  struct ata_port *ap ;
  struct ata_host *host ;
  unsigned long xfer_mask ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  struct ata_device *tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  {
  link = dev->link;
  ap = link->ap;
  host = ap->host;
  xfer_mask = ata_pack_xfermask((unsigned long )ap->pio_mask, (unsigned long )ap->mwdma_mask,
                                (unsigned long )ap->udma_mask);
  tmp = ata_pack_xfermask(dev->pio_mask, dev->mwdma_mask, dev->udma_mask);
  xfer_mask = tmp & xfer_mask;
  tmp___0 = ata_id_xfermask((u16 const *)(& dev->ldv_38497.id));
  xfer_mask = tmp___0 & xfer_mask;
  tmp___1 = ata_dev_pair(dev);
  if ((unsigned long )tmp___1 != (unsigned long )((struct ata_device *)0)) {
    xfer_mask = xfer_mask & 0xffffffffffffff9fUL;
    xfer_mask = xfer_mask & 0xfffffffffffff3ffUL;
  } else {
  }
  tmp___2 = ata_dma_blacklisted((struct ata_device const *)dev);
  if (tmp___2 != 0) {
    xfer_mask = xfer_mask & 0xfffffffffff0007fUL;
    ata_dev_printk((struct ata_device const *)dev, "\f", "device is on DMA blacklist, disabling DMA\n");
  } else {
  }
  if (((int )host->flags & 1 && (unsigned long )host->simplex_claimed != (unsigned long )((struct ata_port *)0)) && (unsigned long )host->simplex_claimed != (unsigned long )ap) {
    xfer_mask = xfer_mask & 0xfffffffffff0007fUL;
    ata_dev_printk((struct ata_device const *)dev, "\f", "simplex DMA is claimed by other device, disabling DMA\n");
  } else {
  }
  if ((ap->flags & 65536UL) != 0UL) {
    tmp___3 = ata_pio_mask_no_iordy((struct ata_device const *)dev);
    xfer_mask = (unsigned long )tmp___3 & xfer_mask;
  } else {
  }
  if ((unsigned long )(ap->ops)->mode_filter != (unsigned long )((unsigned long (*)(struct ata_device * ,
                                                                                    unsigned long ))0)) {
    xfer_mask = (*((ap->ops)->mode_filter))(dev, xfer_mask);
  } else {
  }
  if ((xfer_mask & 1015808UL) != 0UL) {
    tmp___4 = cable_is_40wire(ap);
    if (tmp___4 != 0) {
      ata_dev_printk((struct ata_device const *)dev, "\f", "limited to UDMA/33 due to 40-wire cable\n");
      xfer_mask = xfer_mask & 0xfffffffffff07fffUL;
    } else {
    }
  } else {
  }
  ata_unpack_xfermask(xfer_mask, & dev->pio_mask, & dev->mwdma_mask, & dev->udma_mask);
  return;
}
}
static unsigned int ata_dev_set_xfermode(struct ata_device *dev )
{
  struct ata_taskfile tf ;
  unsigned int err_mask ;
  unsigned int tmp ;
  {
  ata_tf_init(dev, & tf);
  tf.command = 239U;
  tf.feature = 3U;
  tf.flags = tf.flags | 70UL;
  tf.protocol = 1U;
  tmp = ata_pio_need_iordy((struct ata_device const *)dev);
  if (tmp != 0U) {
    tf.nsect = dev->xfer_mode;
  } else
  if (((int )dev->ldv_38497.id[49] & 2048) != 0) {
    tf.nsect = 1U;
  } else {
    return (0U);
  }
  err_mask = ata_exec_internal(dev, & tf, 0, 3, 0, 0U, 0UL);
  return (err_mask);
}
}
unsigned int ata_dev_set_feature(struct ata_device *dev , u8 enable , u8 feature )
{
  struct ata_taskfile tf ;
  unsigned int err_mask ;
  {
  ata_tf_init(dev, & tf);
  tf.command = 239U;
  tf.feature = enable;
  tf.flags = tf.flags | 6UL;
  tf.protocol = 1U;
  tf.nsect = feature;
  err_mask = ata_exec_internal(dev, & tf, 0, 3, 0, 0U, 0UL);
  return (err_mask);
}
}
static unsigned int ata_dev_init_params(struct ata_device *dev , u16 heads , u16 sectors )
{
  struct ata_taskfile tf ;
  unsigned int err_mask ;
  {
  if ((((unsigned int )sectors == 0U || (unsigned int )sectors > 255U) || (unsigned int )heads == 0U) || (unsigned int )heads > 16U) {
    return (128U);
  } else {
  }
  ata_tf_init(dev, & tf);
  tf.command = 145U;
  tf.flags = tf.flags | 6UL;
  tf.protocol = 1U;
  tf.nsect = (u8 )sectors;
  tf.device = (u8 )((int )((signed char )tf.device) | ((int )((signed char )((unsigned int )((unsigned char )heads) + 255U)) & 15));
  err_mask = ata_exec_internal(dev, & tf, 0, 3, 0, 0U, 0UL);
  if (err_mask == 1U && ((int )tf.feature & 4) != 0) {
    err_mask = 0U;
  } else {
  }
  return (err_mask);
}
}
void ata_sg_clean(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct scatterlist *sg ;
  int dir ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  ap = qc->ap;
  sg = qc->sg;
  dir = qc->dma_dir;
  __ret_warn_once = (unsigned long )sg == (unsigned long )((struct scatterlist *)0);
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                         4624);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (qc->n_elem != 0U) {
    dma_unmap_sg_attrs(ap->dev, sg, (int )qc->orig_n_elem, (enum dma_data_direction )dir,
                       0);
  } else {
  }
  qc->flags = qc->flags & 0xfffffffffffffffdUL;
  qc->sg = 0;
  return;
}
}
int atapi_check_dma(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  long tmp ;
  int tmp___0 ;
  {
  ap = qc->ap;
  if (((qc->dev)->horkage & 2048U) == 0U) {
    tmp = ldv__builtin_expect((qc->nbytes & 15U) != 0U, 0L);
    if (tmp != 0L) {
      return (1);
    } else {
    }
  } else {
  }
  if ((unsigned long )(ap->ops)->check_atapi_dma != (unsigned long )((int (*)(struct ata_queued_cmd * ))0)) {
    tmp___0 = (*((ap->ops)->check_atapi_dma))(qc);
    return (tmp___0);
  } else {
  }
  return (0);
}
}
int ata_std_qc_defer(struct ata_queued_cmd *qc )
{
  struct ata_link *link ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  link = (qc->dev)->link;
  if ((unsigned int )qc->tf.protocol == 4U) {
    tmp___0 = ata_tag_valid(link->active_tag);
    if (tmp___0 == 0U) {
      return (0);
    } else {
      tmp = ata_tag_valid(link->active_tag);
      if (tmp == 0U && link->sactive == 0U) {
        return (0);
      } else {
      }
    }
  } else {
  }
  return (1);
}
}
void ata_noop_qc_prep(struct ata_queued_cmd *qc )
{
  {
  return;
}
}
void ata_sg_init(struct ata_queued_cmd *qc , struct scatterlist *sg , unsigned int n_elem )
{
  {
  qc->sg = sg;
  qc->n_elem = n_elem;
  qc->cursg = qc->sg;
  return;
}
}
static int ata_sg_setup(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  unsigned int n_elem ;
  int tmp ;
  {
  ap = qc->ap;
  tmp = dma_map_sg_attrs(ap->dev, qc->sg, (int )qc->n_elem, (enum dma_data_direction )qc->dma_dir,
                         0);
  n_elem = (unsigned int )tmp;
  if (n_elem == 0U) {
    return (-1);
  } else {
  }
  qc->orig_n_elem = qc->n_elem;
  qc->n_elem = n_elem;
  qc->flags = qc->flags | 2UL;
  return (0);
}
}
void swap_buf_le16(u16 *buf , unsigned int buf_words )
{
  {
  return;
}
}
static struct ata_queued_cmd *ata_qc_new(struct ata_port *ap )
{
  struct ata_queued_cmd *qc ;
  unsigned int i ;
  long tmp ;
  int tmp___0 ;
  {
  qc = 0;
  tmp = ldv__builtin_expect((ap->pflags & 4U) != 0U, 0L);
  if (tmp != 0L) {
    return (0);
  } else {
  }
  i = 0U;
  goto ldv_41118;
  ldv_41117:
  tmp___0 = test_and_set_bit((int )i, (unsigned long volatile *)(& ap->qc_allocated));
  if (tmp___0 == 0) {
    qc = __ata_qc_from_tag(ap, i);
    goto ldv_41116;
  } else {
  }
  i = i + 1U;
  ldv_41118: ;
  if (i <= 30U) {
    goto ldv_41117;
  } else {
  }
  ldv_41116: ;
  if ((unsigned long )qc != (unsigned long )((struct ata_queued_cmd *)0)) {
    qc->tag = i;
  } else {
  }
  return (qc);
}
}
struct ata_queued_cmd *ata_qc_new_init(struct ata_device *dev )
{
  struct ata_port *ap ;
  struct ata_queued_cmd *qc ;
  {
  ap = (dev->link)->ap;
  qc = ata_qc_new(ap);
  if ((unsigned long )qc != (unsigned long )((struct ata_queued_cmd *)0)) {
    qc->scsicmd = 0;
    qc->ap = ap;
    qc->dev = dev;
    ata_qc_reinit(qc);
  } else {
  }
  return (qc);
}
}
void ata_qc_free(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  unsigned int tag ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  long tmp___3 ;
  {
  __ret_warn_once = (unsigned long )qc == (unsigned long )((struct ata_queued_cmd *)0);
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                         4843);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  ap = qc->ap;
  qc->flags = 0UL;
  tag = qc->tag;
  tmp___2 = ata_tag_valid(tag);
  tmp___3 = ldv__builtin_expect(tmp___2 != 0U, 1L);
  if (tmp___3 != 0L) {
    qc->tag = 4210818301U;
    clear_bit((int )tag, (unsigned long volatile *)(& ap->qc_allocated));
  } else {
  }
  return;
}
}
void __ata_qc_complete(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct ata_link *link ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  bool __warned___0 ;
  int __ret_warn_once___0 ;
  int __ret_warn_on___0 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  {
  __ret_warn_once = (unsigned long )qc == (unsigned long )((struct ata_queued_cmd *)0);
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                         4859);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  __ret_warn_once___0 = (qc->flags & 1UL) == 0UL;
  tmp___4 = ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
  if (tmp___4 != 0L) {
    __ret_warn_on___0 = ! __warned___0;
    tmp___2 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___2 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                         4860);
    } else {
    }
    tmp___3 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___3 != 0L) {
      __warned___0 = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
  ap = qc->ap;
  link = (qc->dev)->link;
  tmp___5 = ldv__builtin_expect((qc->flags & 2UL) != 0UL, 1L);
  if (tmp___5 != 0L) {
    ata_sg_clean(qc);
  } else {
  }
  if ((unsigned int )qc->tf.protocol == 4U) {
    link->sactive = link->sactive & (u32 )(~ (1 << (int )qc->tag));
    if (link->sactive == 0U) {
      ap->nr_active_links = ap->nr_active_links - 1;
    } else {
    }
  } else {
    link->active_tag = 4210818301U;
    ap->nr_active_links = ap->nr_active_links - 1;
  }
  tmp___6 = ldv__builtin_expect((qc->flags & 32UL) != 0UL, 0L);
  if (tmp___6 != 0L) {
    tmp___7 = ldv__builtin_expect((unsigned long )ap->excl_link == (unsigned long )link,
                               0L);
    if (tmp___7 != 0L) {
      ap->excl_link = 0;
    } else {
    }
  } else {
  }
  qc->flags = qc->flags & 0xfffffffffffffffeUL;
  ap->qc_active = ap->qc_active & (unsigned int )(~ (1 << (int )qc->tag));
  (*(qc->complete_fn))(qc);
  return;
}
}
static void fill_result_tf(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  {
  ap = qc->ap;
  qc->result_tf.flags = qc->tf.flags;
  (*((ap->ops)->qc_fill_rtf))(qc);
  return;
}
}
static void ata_verify_xfer(struct ata_queued_cmd *qc )
{
  struct ata_device *dev ;
  int tmp ;
  int tmp___0 ;
  {
  dev = qc->dev;
  tmp = ata_is_nodata((int )qc->tf.protocol);
  if (tmp != 0) {
    return;
  } else {
  }
  if (dev->mwdma_mask != 0UL || dev->udma_mask != 0UL) {
    tmp___0 = ata_is_pio((int )qc->tf.protocol);
    if (tmp___0 != 0) {
      return;
    } else {
    }
  } else {
  }
  dev->flags = dev->flags & 0xfffffffffffeffffUL;
  return;
}
}
void ata_qc_complete(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct ata_device *dev ;
  struct ata_eh_info *ehi ;
  long tmp ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  ap = qc->ap;
  if ((unsigned long )(ap->ops)->error_handler != (unsigned long )((void (*)(struct ata_port * ))0)) {
    dev = qc->dev;
    ehi = & (dev->link)->eh_info;
    tmp = ldv__builtin_expect(qc->err_mask != 0U, 0L);
    if (tmp != 0L) {
      qc->flags = qc->flags | 65536UL;
    } else {
    }
    tmp___0 = ata_tag_internal(qc->tag);
    tmp___1 = ldv__builtin_expect(tmp___0 != 0U, 0L);
    if (tmp___1 != 0L) {
      fill_result_tf(qc);
      __ata_qc_complete(qc);
      return;
    } else {
    }
    tmp___2 = ldv__builtin_expect((qc->flags & 65536UL) != 0UL, 0L);
    if (tmp___2 != 0L) {
      fill_result_tf(qc);
      ata_qc_schedule_eh(qc);
      return;
    } else {
    }
    __ret_warn_once = (ap->pflags & 4U) != 0U;
    tmp___5 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
    if (tmp___5 != 0L) {
      __ret_warn_on = ! __warned;
      tmp___3 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___3 != 0L) {
        warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                           4973);
      } else {
      }
      tmp___4 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___4 != 0L) {
        __warned = 1;
      } else {
      }
    } else {
    }
    ldv__builtin_expect(__ret_warn_once != 0, 0L);
    if ((qc->flags & 16UL) != 0UL) {
      fill_result_tf(qc);
    } else {
    }
    switch ((int )qc->tf.command) {
    case 239: ;
    if ((unsigned int )qc->tf.feature != 2U && (unsigned int )qc->tf.feature != 130U) {
      goto ldv_41169;
    } else {
    }
    case 145: ;
    case 198:
    ehi->dev_action[dev->devno] = ehi->dev_action[dev->devno] | 1U;
    ata_port_schedule_eh(ap);
    goto ldv_41169;
    case 230:
    dev->flags = dev->flags | 32768UL;
    goto ldv_41169;
    }
    ldv_41169:
    tmp___6 = ldv__builtin_expect((dev->flags & 65536UL) != 0UL, 0L);
    if (tmp___6 != 0L) {
      ata_verify_xfer(qc);
    } else {
    }
    __ata_qc_complete(qc);
  } else {
    if ((qc->flags & 262144UL) != 0UL) {
      return;
    } else {
    }
    if (qc->err_mask != 0U || (qc->flags & 16UL) != 0UL) {
      fill_result_tf(qc);
    } else {
    }
    __ata_qc_complete(qc);
  }
  return;
}
}
int ata_qc_complete_multiple(struct ata_port *ap , u32 qc_active )
{
  int nr_done ;
  u32 done_mask ;
  long tmp ;
  struct ata_queued_cmd *qc ;
  unsigned int tag ;
  unsigned long tmp___0 ;
  {
  nr_done = 0;
  done_mask = ap->qc_active ^ qc_active;
  tmp = ldv__builtin_expect((done_mask & qc_active) != 0U, 0L);
  if (tmp != 0L) {
    ata_port_printk((struct ata_port const *)ap, "\v", "illegal qc_active transition (%08x->%08x)\n",
                    ap->qc_active, qc_active);
    return (-22);
  } else {
  }
  goto ldv_41182;
  ldv_41181:
  tmp___0 = __ffs((unsigned long )done_mask);
  tag = (unsigned int )tmp___0;
  qc = ata_qc_from_tag(ap, tag);
  if ((unsigned long )qc != (unsigned long )((struct ata_queued_cmd *)0)) {
    ata_qc_complete(qc);
    nr_done = nr_done + 1;
  } else {
  }
  done_mask = (u32 )(~ (1 << (int )tag)) & done_mask;
  ldv_41182: ;
  if (done_mask != 0U) {
    goto ldv_41181;
  } else {
  }
  return (nr_done);
}
}
void ata_qc_issue(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct ata_link *link ;
  u8 prot ;
  bool __warned ;
  int __ret_warn_once ;
  unsigned int tmp ;
  int tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  bool __warned___0 ;
  int __ret_warn_once___0 ;
  int __ret_warn_on___0 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  bool __warned___1 ;
  int __ret_warn_once___1 ;
  int __ret_warn_on___1 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  int tmp___10 ;
  bool __warned___2 ;
  int __ret_warn_once___2 ;
  int tmp___11 ;
  int __ret_warn_on___2 ;
  long tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  long tmp___19 ;
  unsigned int tmp___20 ;
  long tmp___21 ;
  {
  ap = qc->ap;
  link = (qc->dev)->link;
  prot = qc->tf.protocol;
  if ((unsigned long )(ap->ops)->error_handler != (unsigned long )((void (*)(struct ata_port * ))0)) {
    tmp = ata_tag_valid(link->active_tag);
    if (tmp != 0U) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  __ret_warn_once = tmp___0;
  tmp___3 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___3 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                         5086);
    } else {
    }
    tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___2 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  tmp___10 = ata_is_ncq((int )prot);
  if (tmp___10 != 0) {
    __ret_warn_once___0 = (link->sactive & (u32 )(1 << (int )qc->tag)) != 0U;
    tmp___6 = ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
    if (tmp___6 != 0L) {
      __ret_warn_on___0 = ! __warned___0;
      tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      if (tmp___4 != 0L) {
        warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                           5089);
      } else {
      }
      tmp___5 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      if (tmp___5 != 0L) {
        __warned___0 = 1;
      } else {
      }
    } else {
    }
    ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
    if (link->sactive == 0U) {
      ap->nr_active_links = ap->nr_active_links + 1;
    } else {
    }
    link->sactive = link->sactive | (u32 )(1 << (int )qc->tag);
  } else {
    __ret_warn_once___1 = link->sactive != 0U;
    tmp___9 = ldv__builtin_expect(__ret_warn_once___1 != 0, 0L);
    if (tmp___9 != 0L) {
      __ret_warn_on___1 = ! __warned___1;
      tmp___7 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
      if (tmp___7 != 0L) {
        warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                           5095);
      } else {
      }
      tmp___8 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
      if (tmp___8 != 0L) {
        __warned___1 = 1;
      } else {
      }
    } else {
    }
    ldv__builtin_expect(__ret_warn_once___1 != 0, 0L);
    ap->nr_active_links = ap->nr_active_links + 1;
    link->active_tag = qc->tag;
  }
  qc->flags = qc->flags | 1UL;
  ap->qc_active = ap->qc_active | (unsigned int )(1 << (int )qc->tag);
  tmp___11 = ata_is_data((int )prot);
  __ret_warn_once___2 = tmp___11 != 0 && (((unsigned long )qc->sg == (unsigned long )((struct scatterlist *)0) || qc->n_elem == 0U) || qc->nbytes == 0U);
  tmp___14 = ldv__builtin_expect(__ret_warn_once___2 != 0, 0L);
  if (tmp___14 != 0L) {
    __ret_warn_on___2 = ! __warned___2;
    tmp___12 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
    if (tmp___12 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                         5109);
    } else {
    }
    tmp___13 = ldv__builtin_expect(__ret_warn_on___2 != 0, 0L);
    if (tmp___13 != 0L) {
      __warned___2 = 1;
    } else {
    }
  } else {
  }
  tmp___15 = ldv__builtin_expect(__ret_warn_once___2 != 0, 0L);
  if (tmp___15 != 0L) {
    goto sys_err;
  } else {
  }
  tmp___17 = ata_is_dma((int )prot);
  if (tmp___17 != 0) {
    goto _L;
  } else {
    tmp___18 = ata_is_pio((int )prot);
    if (tmp___18 != 0 && (ap->flags & 128UL) != 0UL) {
      _L:
      tmp___16 = ata_sg_setup(qc);
      if (tmp___16 != 0) {
        goto sys_err;
      } else {
      }
    } else {
    }
  }
  tmp___19 = ldv__builtin_expect(((qc->dev)->flags & 32768UL) != 0UL, 0L);
  if (tmp___19 != 0L) {
    link->eh_info.action = link->eh_info.action | 6U;
    ata_ehi_push_desc(& link->eh_info, "waking up from sleep");
    ata_link_abort(link);
    return;
  } else {
  }
  (*((ap->ops)->qc_prep))(qc);
  tmp___20 = (*((ap->ops)->qc_issue))(qc);
  qc->err_mask = qc->err_mask | tmp___20;
  tmp___21 = ldv__builtin_expect(qc->err_mask != 0U, 0L);
  if (tmp___21 != 0L) {
    goto err;
  } else {
  }
  return;
  sys_err:
  qc->err_mask = qc->err_mask | 64U;
  err:
  ata_qc_complete(qc);
  return;
}
}
int sata_scr_valid(struct ata_link *link )
{
  struct ata_port *ap ;
  {
  ap = link->ap;
  return ((ap->flags & 2UL) != 0UL && (unsigned long )(ap->ops)->scr_read != (unsigned long )((int (*)(struct ata_link * ,
                                                                                                       unsigned int ,
                                                                                                       u32 * ))0));
}
}
int sata_scr_read(struct ata_link *link , int reg , u32 *val )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp___1 = ata_is_host_link((struct ata_link const *)link);
  if (tmp___1 != 0) {
    tmp___0 = sata_scr_valid(link);
    if (tmp___0 != 0) {
      tmp = (*(((link->ap)->ops)->scr_read))(link, (unsigned int )reg, val);
      return (tmp);
    } else {
    }
    return (-95);
  } else {
  }
  tmp___2 = sata_pmp_scr_read(link, reg, val);
  return (tmp___2);
}
}
int sata_scr_write(struct ata_link *link , int reg , u32 val )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp___1 = ata_is_host_link((struct ata_link const *)link);
  if (tmp___1 != 0) {
    tmp___0 = sata_scr_valid(link);
    if (tmp___0 != 0) {
      tmp = (*(((link->ap)->ops)->scr_write))(link, (unsigned int )reg, val);
      return (tmp);
    } else {
    }
    return (-95);
  } else {
  }
  tmp___2 = sata_pmp_scr_write(link, reg, val);
  return (tmp___2);
}
}
int sata_scr_write_flush(struct ata_link *link , int reg , u32 val )
{
  int rc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp___0 = ata_is_host_link((struct ata_link const *)link);
  if (tmp___0 != 0) {
    tmp = sata_scr_valid(link);
    if (tmp != 0) {
      rc = (*(((link->ap)->ops)->scr_write))(link, (unsigned int )reg, val);
      if (rc == 0) {
        rc = (*(((link->ap)->ops)->scr_read))(link, (unsigned int )reg, & val);
      } else {
      }
      return (rc);
    } else {
    }
    return (-95);
  } else {
  }
  tmp___1 = sata_pmp_scr_write(link, reg, val);
  return (tmp___1);
}
}
bool ata_phys_link_online(struct ata_link *link )
{
  u32 sstatus ;
  int tmp ;
  bool tmp___0 ;
  {
  tmp = sata_scr_read(link, 0, & sstatus);
  if (tmp == 0) {
    tmp___0 = ata_sstatus_online(sstatus);
    if ((int )tmp___0) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
bool ata_phys_link_offline(struct ata_link *link )
{
  u32 sstatus ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = sata_scr_read(link, 0, & sstatus);
  if (tmp == 0) {
    tmp___0 = ata_sstatus_online(sstatus);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
bool ata_link_online(struct ata_link *link )
{
  struct ata_link *slave ;
  int __ret_warn_on ;
  long tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  slave = (link->ap)->slave_link;
  __ret_warn_on = (unsigned long )link == (unsigned long )slave;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                       5311);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = ata_phys_link_online(link);
  if ((int )tmp___0) {
    tmp___2 = 1;
  } else
  if ((unsigned long )slave != (unsigned long )((struct ata_link *)0)) {
    tmp___1 = ata_phys_link_online(slave);
    if ((int )tmp___1) {
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
bool ata_link_offline(struct ata_link *link )
{
  struct ata_link *slave ;
  int __ret_warn_on ;
  long tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  slave = (link->ap)->slave_link;
  __ret_warn_on = (unsigned long )link == (unsigned long )slave;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                       5337);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = ata_phys_link_offline(link);
  if ((int )tmp___0) {
    if ((unsigned long )slave == (unsigned long )((struct ata_link *)0)) {
      tmp___2 = 1;
    } else {
      tmp___1 = ata_phys_link_offline(slave);
      if ((int )tmp___1) {
        tmp___2 = 1;
      } else {
        tmp___2 = 0;
      }
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
static int ata_port_request_pm(struct ata_port *ap , pm_message_t mesg , unsigned int action ,
                               unsigned int ehi_flags , int *async )
{
  struct ata_link *link ;
  unsigned long flags ;
  int rc ;
  int __ret_warn_on ;
  long tmp ;
  raw_spinlock_t *tmp___0 ;
  int __ret_warn_on___0 ;
  long tmp___1 ;
  {
  rc = 0;
  if ((ap->pflags & 262144U) != 0U) {
    if ((unsigned long )async != (unsigned long )((int *)0)) {
      *async = -11;
      return (0);
    } else {
    }
    ata_port_wait_eh(ap);
    __ret_warn_on = (ap->pflags & 262144U) != 0U;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                         5361);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  } else {
  }
  tmp___0 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  ap->pm_mesg = mesg;
  if ((unsigned long )async != (unsigned long )((int *)0)) {
    ap->pm_result = async;
  } else {
    ap->pm_result = & rc;
  }
  ap->pflags = ap->pflags | 262144U;
  link = ata_link_next(0, ap, 1);
  goto ldv_41268;
  ldv_41267:
  link->eh_info.action = link->eh_info.action | action;
  link->eh_info.flags = link->eh_info.flags | ehi_flags;
  link = ata_link_next(link, ap, 1);
  ldv_41268: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_41267;
  } else {
  }
  ata_port_schedule_eh(ap);
  spin_unlock_irqrestore(ap->lock, flags);
  if ((unsigned long )async == (unsigned long )((int *)0)) {
    ata_port_wait_eh(ap);
    __ret_warn_on___0 = (ap->pflags & 262144U) != 0U;
    tmp___1 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___1 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                         5386);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  } else {
  }
  return (rc);
}
}
static int __ata_port_suspend_common(struct ata_port *ap , pm_message_t mesg , int *async )
{
  unsigned int ehi_flags ;
  int rc ;
  {
  ehi_flags = 8U;
  if (mesg.event == 2) {
    ehi_flags = ehi_flags | 20U;
  } else {
  }
  rc = ata_port_request_pm(ap, mesg, 0U, ehi_flags, async);
  return (rc);
}
}
static int ata_port_suspend_common(struct device *dev , pm_message_t mesg )
{
  struct ata_port *ap ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  ap = (struct ata_port *)__mptr + 0xffffffffffffc5f0UL;
  tmp = __ata_port_suspend_common(ap, mesg, 0);
  return (tmp);
}
}
static int ata_port_suspend(struct device *dev )
{
  bool tmp ;
  struct pm_message __constr_expr_0___0 ;
  int tmp___0 ;
  {
  tmp = pm_runtime_suspended(dev);
  if ((int )tmp) {
    return (0);
  } else {
  }
  __constr_expr_0___0.event = 2;
  tmp___0 = ata_port_suspend_common(dev, __constr_expr_0___0);
  return (tmp___0);
}
}
static int ata_port_do_freeze(struct device *dev )
{
  bool tmp ;
  struct pm_message __constr_expr_0___0 ;
  int tmp___0 ;
  {
  tmp = pm_runtime_suspended(dev);
  if ((int )tmp) {
    pm_runtime_resume(dev);
  } else {
  }
  __constr_expr_0___0.event = 1;
  tmp___0 = ata_port_suspend_common(dev, __constr_expr_0___0);
  return (tmp___0);
}
}
static int ata_port_poweroff(struct device *dev )
{
  bool tmp ;
  struct pm_message __constr_expr_0___0 ;
  int tmp___0 ;
  {
  tmp = pm_runtime_suspended(dev);
  if ((int )tmp) {
    return (0);
  } else {
  }
  __constr_expr_0___0.event = 4;
  tmp___0 = ata_port_suspend_common(dev, __constr_expr_0___0);
  return (tmp___0);
}
}
static int __ata_port_resume_common(struct ata_port *ap , int *async )
{
  int rc ;
  struct pm_message __constr_expr_0___0 ;
  {
  __constr_expr_0___0.event = 0;
  rc = ata_port_request_pm(ap, __constr_expr_0___0, 6U, 12U, async);
  return (rc);
}
}
static int ata_port_resume_common(struct device *dev )
{
  struct ata_port *ap ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  ap = (struct ata_port *)__mptr + 0xffffffffffffc5f0UL;
  tmp = __ata_port_resume_common(ap, 0);
  return (tmp);
}
}
static int ata_port_resume(struct device *dev )
{
  int rc ;
  {
  rc = ata_port_resume_common(dev);
  if (rc == 0) {
    pm_runtime_disable(dev);
    pm_runtime_set_active(dev);
    pm_runtime_enable(dev);
  } else {
  }
  return (rc);
}
}
static int ata_port_runtime_idle(struct device *dev )
{
  int tmp ;
  {
  tmp = pm_runtime_suspend(dev);
  return (tmp);
}
}
static struct dev_pm_ops const ata_port_pm_ops =
     {0, 0, & ata_port_suspend, & ata_port_resume, & ata_port_do_freeze, & ata_port_resume,
    & ata_port_poweroff, & ata_port_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ata_port_suspend,
    & ata_port_resume_common, & ata_port_runtime_idle};
int ata_sas_port_async_suspend(struct ata_port *ap , int *async )
{
  struct pm_message __constr_expr_0___0 ;
  int tmp ;
  {
  __constr_expr_0___0.event = 2;
  tmp = __ata_port_suspend_common(ap, __constr_expr_0___0, async);
  return (tmp);
}
}
int ata_sas_port_async_resume(struct ata_port *ap , int *async )
{
  int tmp ;
  {
  tmp = __ata_port_resume_common(ap, async);
  return (tmp);
}
}
int ata_host_suspend(struct ata_host *host , pm_message_t mesg )
{
  {
  (host->dev)->power.power_state = mesg;
  return (0);
}
}
void ata_host_resume(struct ata_host *host )
{
  struct pm_message __constr_expr_0___0 ;
  {
  __constr_expr_0___0.event = 0;
  (host->dev)->power.power_state = __constr_expr_0___0;
  return;
}
}
struct device_type ata_port_type = {"ata_port", 0, 0, 0, 0, & ata_port_pm_ops};
void ata_dev_init(struct ata_device *dev )
{
  struct ata_link *link ;
  struct ata_link *tmp ;
  struct ata_port *ap ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = ata_dev_phys_link(dev);
  link = tmp;
  ap = link->ap;
  link->sata_spd_limit = link->hw_sata_spd_limit;
  link->sata_spd = 0U;
  tmp___0 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  dev->flags = dev->flags & 0xffffffffff000000UL;
  dev->horkage = 0U;
  spin_unlock_irqrestore(ap->lock, flags);
  memset((void *)dev + 1192UL, 0, 1120UL);
  dev->pio_mask = 4294967295UL;
  dev->mwdma_mask = 4294967295UL;
  dev->udma_mask = 4294967295UL;
  return;
}
}
void ata_link_init(struct ata_port *ap , struct ata_link *link , int pmp )
{
  int i ;
  struct ata_device *dev ;
  {
  memset((void *)link + 1152UL, 0, 360UL);
  link->ap = ap;
  link->pmp = pmp;
  link->active_tag = 4210818301U;
  link->hw_sata_spd_limit = 4294967295U;
  i = 0;
  goto ldv_41367;
  ldv_41366:
  dev = (struct ata_device *)(& link->device) + (unsigned long )i;
  dev->link = link;
  dev->devno = (unsigned int )(((long )dev - (long )(& link->device)) / 2832L);
  dev->gtf_filter = ata_acpi_gtf_filter;
  ata_dev_init(dev);
  i = i + 1;
  ldv_41367: ;
  if (i <= 1) {
    goto ldv_41366;
  } else {
  }
  return;
}
}
int sata_link_init_spd(struct ata_link *link )
{
  u8 spd ;
  int rc ;
  {
  rc = sata_scr_read(link, 2, & link->saved_scontrol);
  if (rc != 0) {
    return (rc);
  } else {
  }
  spd = (unsigned int )((u8 )(link->saved_scontrol >> 4)) & 15U;
  if ((unsigned int )spd != 0U) {
    link->hw_sata_spd_limit = link->hw_sata_spd_limit & (unsigned int )((1 << (int )spd) + -1);
  } else {
  }
  ata_force_link_limits(link);
  link->sata_spd_limit = link->hw_sata_spd_limit;
  return (0);
}
}
struct ata_port *ata_port_alloc(struct ata_host *host )
{
  struct ata_port *ap ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_1___0 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  {
  tmp = kzalloc(17408UL, 208U);
  ap = (struct ata_port *)tmp;
  if ((unsigned long )ap == (unsigned long )((struct ata_port *)0)) {
    return (0);
  } else {
  }
  ap->pflags = ap->pflags | 132U;
  ap->lock = & host->lock;
  ap->print_id = 4294967295U;
  ap->host = host;
  ap->dev = host->dev;
  ap->msg_enable = 137U;
  __mutex_init(& ap->scsi_scan_mutex, "&ap->scsi_scan_mutex", & __key);
  __init_work(& ap->hotplug_task.work, 0);
  __constr_expr_0___0.counter = 4195328L;
  ap->hotplug_task.work.data = __constr_expr_0___0;
  lockdep_init_map(& ap->hotplug_task.work.lockdep_map, "(&(&ap->hotplug_task)->work)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& ap->hotplug_task.work.entry);
  ap->hotplug_task.work.func = & ata_scsi_hotplug;
  init_timer_key(& ap->hotplug_task.timer, 2U, "(&(&ap->hotplug_task)->timer)", & __key___1);
  ap->hotplug_task.timer.function = & delayed_work_timer_fn;
  ap->hotplug_task.timer.data = (unsigned long )(& ap->hotplug_task);
  __init_work(& ap->scsi_rescan_task, 0);
  __constr_expr_1___0.counter = 4195328L;
  ap->scsi_rescan_task.data = __constr_expr_1___0;
  lockdep_init_map(& ap->scsi_rescan_task.lockdep_map, "(&ap->scsi_rescan_task)",
                   & __key___2, 0);
  INIT_LIST_HEAD(& ap->scsi_rescan_task.entry);
  ap->scsi_rescan_task.func = & ata_scsi_dev_rescan;
  INIT_LIST_HEAD(& ap->eh_done_q);
  __init_waitqueue_head(& ap->eh_wait_q, "&ap->eh_wait_q", & __key___3);
  init_completion(& ap->park_req_pending);
  init_timer_key(& ap->fastdrain_timer, 1U, "(&ap->fastdrain_timer)", & __key___4);
  ap->fastdrain_timer.function = & ata_eh_fastdrain_timerfn;
  ap->fastdrain_timer.data = (unsigned long )ap;
  ap->cbl = 0U;
  ata_link_init(ap, & ap->link, 0);
  ata_sff_port_init(ap);
  return (ap);
}
}
static void ata_host_release(struct device *gendev , void *res )
{
  struct ata_host *host ;
  void *tmp ;
  int i ;
  struct ata_port *ap ;
  {
  tmp = dev_get_drvdata((struct device const *)gendev);
  host = (struct ata_host *)tmp;
  i = 0;
  goto ldv_41395;
  ldv_41394:
  ap = host->ports[i];
  if ((unsigned long )ap == (unsigned long )((struct ata_port *)0)) {
    goto ldv_41393;
  } else {
  }
  if ((unsigned long )ap->scsi_host != (unsigned long )((struct Scsi_Host *)0)) {
    scsi_host_put(ap->scsi_host);
  } else {
  }
  kfree((void const *)ap->pmp_link);
  kfree((void const *)ap->slave_link);
  kfree((void const *)ap);
  host->ports[i] = 0;
  ldv_41393:
  i = i + 1;
  ldv_41395: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_41394;
  } else {
  }
  dev_set_drvdata(gendev, 0);
  return;
}
}
struct ata_host *ata_host_alloc(struct device *dev , int max_ports )
{
  struct ata_host *host ;
  size_t sz ;
  int i ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct ata_port *ap ;
  {
  tmp = devres_open_group(dev, 0, 208U);
  if ((unsigned long )tmp == (unsigned long )((void *)0)) {
    return (0);
  } else {
  }
  sz = ((unsigned long )(max_ports + 1) + 38UL) * 8UL;
  tmp___0 = __devres_alloc(& ata_host_release, sz, 208U, "ata_host_release");
  host = (struct ata_host *)tmp___0;
  if ((unsigned long )host == (unsigned long )((struct ata_host *)0)) {
    goto err_out;
  } else {
  }
  devres_add(dev, (void *)host);
  dev_set_drvdata(dev, (void *)host);
  spinlock_check(& host->lock);
  __raw_spin_lock_init(& host->lock.ldv_5961.rlock, "&(&host->lock)->rlock", & __key);
  __mutex_init(& host->eh_mutex, "&host->eh_mutex", & __key___0);
  host->dev = dev;
  host->n_ports = (unsigned int )max_ports;
  i = 0;
  goto ldv_41409;
  ldv_41408:
  ap = ata_port_alloc(host);
  if ((unsigned long )ap == (unsigned long )((struct ata_port *)0)) {
    goto err_out;
  } else {
  }
  ap->port_no = (unsigned int )i;
  host->ports[i] = ap;
  i = i + 1;
  ldv_41409: ;
  if (i < max_ports) {
    goto ldv_41408;
  } else {
  }
  devres_remove_group(dev, 0);
  return (host);
  err_out:
  devres_release_group(dev, 0);
  return (0);
}
}
struct ata_host *ata_host_alloc_pinfo(struct device *dev , struct ata_port_info const * const *ppi ,
                                      int n_ports )
{
  struct ata_port_info const *pi ;
  struct ata_host *host ;
  int i ;
  int j ;
  struct ata_port *ap ;
  int tmp ;
  {
  host = ata_host_alloc(dev, n_ports);
  if ((unsigned long )host == (unsigned long )((struct ata_host *)0)) {
    return (0);
  } else {
  }
  i = 0;
  j = 0;
  pi = 0;
  goto ldv_41422;
  ldv_41421:
  ap = host->ports[i];
  if ((unsigned long )*(ppi + (unsigned long )j) != (unsigned long )((struct ata_port_info const * )0)) {
    tmp = j;
    j = j + 1;
    pi = *(ppi + (unsigned long )tmp);
  } else {
  }
  ap->pio_mask = (unsigned int )pi->pio_mask;
  ap->mwdma_mask = (unsigned int )pi->mwdma_mask;
  ap->udma_mask = (unsigned int )pi->udma_mask;
  ap->flags = ap->flags | (unsigned long )pi->flags;
  ap->link.flags = ap->link.flags | (unsigned int )pi->link_flags;
  ap->ops = pi->port_ops;
  if ((unsigned long )host->ops == (unsigned long )((struct ata_port_operations *)0) && (unsigned long )((struct ata_port_operations *)pi->port_ops) != (unsigned long )(& ata_dummy_port_ops)) {
    host->ops = pi->port_ops;
  } else {
  }
  i = i + 1;
  ldv_41422: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_41421;
  } else {
  }
  return (host);
}
}
int ata_slave_link_init(struct ata_port *ap )
{
  struct ata_link *link ;
  int __ret_warn_on ;
  long tmp ;
  int __ret_warn_on___0 ;
  long tmp___0 ;
  void *tmp___1 ;
  {
  __ret_warn_on = (unsigned long )ap->slave_link != (unsigned long )((struct ata_link *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                       5893);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  __ret_warn_on___0 = (ap->flags & 524288UL) != 0UL;
  tmp___0 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                       5894);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  tmp___1 = kzalloc(7176UL, 208U);
  link = (struct ata_link *)tmp___1;
  if ((unsigned long )link == (unsigned long )((struct ata_link *)0)) {
    return (-12);
  } else {
  }
  ata_link_init(ap, link, 1);
  ap->slave_link = link;
  return (0);
}
}
static void ata_host_stop(struct device *gendev , void *res )
{
  struct ata_host *host ;
  void *tmp ;
  int i ;
  int __ret_warn_on ;
  long tmp___0 ;
  struct ata_port *ap ;
  {
  tmp = dev_get_drvdata((struct device const *)gendev);
  host = (struct ata_host *)tmp;
  __ret_warn_on = (host->flags & 2UL) == 0UL;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                       5910);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  i = 0;
  goto ldv_41442;
  ldv_41441:
  ap = host->ports[i];
  if ((unsigned long )(ap->ops)->port_stop != (unsigned long )((void (*)(struct ata_port * ))0)) {
    (*((ap->ops)->port_stop))(ap);
  } else {
  }
  i = i + 1;
  ldv_41442: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_41441;
  } else {
  }
  if ((unsigned long )(host->ops)->host_stop != (unsigned long )((void (*)(struct ata_host * ))0)) {
    (*((host->ops)->host_stop))(host);
  } else {
  }
  return;
}
}
static void ata_finalize_port_ops(struct ata_port_operations *ops )
{
  spinlock_t lock ;
  struct ata_port_operations const *cur ;
  void **begin ;
  void **end ;
  void **pp ;
  void **inherit ;
  long tmp ;
  {
  lock.ldv_5961.rlock.raw_lock.ldv_2024.head_tail = 0U;
  lock.ldv_5961.rlock.magic = 3735899821U;
  lock.ldv_5961.rlock.owner_cpu = 4294967295U;
  lock.ldv_5961.rlock.owner = 0xffffffffffffffffUL;
  lock.ldv_5961.rlock.dep_map.key = 0;
  lock.ldv_5961.rlock.dep_map.class_cache[0] = 0;
  lock.ldv_5961.rlock.dep_map.class_cache[1] = 0;
  lock.ldv_5961.rlock.dep_map.name = "lock";
  lock.ldv_5961.rlock.dep_map.cpu = 0;
  lock.ldv_5961.rlock.dep_map.ip = 0UL;
  begin = (void **)ops;
  end = (void **)(& ops->inherits);
  if ((unsigned long )ops == (unsigned long )((struct ata_port_operations *)0) || (unsigned long )ops->inherits == (unsigned long )((struct ata_port_operations const *)0)) {
    return;
  } else {
  }
  spin_lock(& lock);
  cur = ops->inherits;
  goto ldv_41458;
  ldv_41457:
  inherit = (void **)cur;
  pp = begin;
  goto ldv_41455;
  ldv_41454: ;
  if ((unsigned long )*pp == (unsigned long )((void *)0)) {
    *pp = *inherit;
  } else {
  }
  pp = pp + 1;
  inherit = inherit + 1;
  ldv_41455: ;
  if ((unsigned long )pp < (unsigned long )end) {
    goto ldv_41454;
  } else {
  }
  cur = cur->inherits;
  ldv_41458: ;
  if ((unsigned long )cur != (unsigned long )((struct ata_port_operations const *)0)) {
    goto ldv_41457;
  } else {
  }
  pp = begin;
  goto ldv_41461;
  ldv_41460:
  tmp = IS_ERR((void const *)*pp);
  if (tmp != 0L) {
    *pp = 0;
  } else {
  }
  pp = pp + 1;
  ldv_41461: ;
  if ((unsigned long )pp < (unsigned long )end) {
    goto ldv_41460;
  } else {
  }
  ops->inherits = 0;
  spin_unlock(& lock);
  return;
}
}
int ata_host_start(struct ata_host *host )
{
  int have_stop ;
  void *start_dr ;
  int i ;
  int rc ;
  struct ata_port *ap ;
  int tmp ;
  struct ata_port *ap___0 ;
  struct ata_port *ap___1 ;
  {
  have_stop = 0;
  start_dr = 0;
  if ((host->flags & 2UL) != 0UL) {
    return (0);
  } else {
  }
  ata_finalize_port_ops(host->ops);
  i = 0;
  goto ldv_41472;
  ldv_41471:
  ap = host->ports[i];
  ata_finalize_port_ops(ap->ops);
  if ((unsigned long )host->ops == (unsigned long )((struct ata_port_operations *)0)) {
    tmp = ata_port_is_dummy(ap);
    if (tmp == 0) {
      host->ops = ap->ops;
    } else {
    }
  } else {
  }
  if ((unsigned long )(ap->ops)->port_stop != (unsigned long )((void (*)(struct ata_port * ))0)) {
    have_stop = 1;
  } else {
  }
  i = i + 1;
  ldv_41472: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_41471;
  } else {
  }
  if ((unsigned long )(host->ops)->host_stop != (unsigned long )((void (*)(struct ata_host * ))0)) {
    have_stop = 1;
  } else {
  }
  if (have_stop != 0) {
    start_dr = __devres_alloc(& ata_host_stop, 0UL, 208U, "ata_host_stop");
    if ((unsigned long )start_dr == (unsigned long )((void *)0)) {
      return (-12);
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_41477;
  ldv_41476:
  ap___0 = host->ports[i];
  if ((unsigned long )(ap___0->ops)->port_start != (unsigned long )((int (*)(struct ata_port * ))0)) {
    rc = (*((ap___0->ops)->port_start))(ap___0);
    if (rc != 0) {
      if (rc != -19) {
        dev_err((struct device const *)host->dev, "failed to start port %d (errno=%d)\n",
                i, rc);
      } else {
      }
      goto err_out;
    } else {
    }
  } else {
  }
  ata_eh_freeze_port(ap___0);
  i = i + 1;
  ldv_41477: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_41476;
  } else {
  }
  if ((unsigned long )start_dr != (unsigned long )((void *)0)) {
    devres_add(host->dev, start_dr);
  } else {
  }
  host->flags = host->flags | 2UL;
  return (0);
  err_out: ;
  goto ldv_41481;
  ldv_41480:
  ap___1 = host->ports[i];
  if ((unsigned long )(ap___1->ops)->port_stop != (unsigned long )((void (*)(struct ata_port * ))0)) {
    (*((ap___1->ops)->port_stop))(ap___1);
  } else {
  }
  ldv_41481:
  i = i - 1;
  if (i >= 0) {
    goto ldv_41480;
  } else {
  }
  devres_free(start_dr);
  return (rc);
}
}
void ata_host_init(struct ata_host *host , struct device *dev , struct ata_port_operations *ops )
{
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  spinlock_check(& host->lock);
  __raw_spin_lock_init(& host->lock.ldv_5961.rlock, "&(&host->lock)->rlock", & __key);
  __mutex_init(& host->eh_mutex, "&host->eh_mutex", & __key___0);
  host->dev = dev;
  host->ops = ops;
  return;
}
}
void __ata_port_probe(struct ata_port *ap )
{
  struct ata_eh_info *ehi ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  ehi = & ap->link.eh_info;
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ehi->probe_mask = ehi->probe_mask | 3U;
  ehi->action = ehi->action | 6U;
  ehi->flags = ehi->flags | 12U;
  ap->pflags = ap->pflags & 4294967167U;
  ap->pflags = ap->pflags | 16U;
  ata_port_schedule_eh(ap);
  spin_unlock_irqrestore(ap->lock, flags);
  return;
}
}
int ata_port_probe(struct ata_port *ap )
{
  int rc ;
  {
  rc = 0;
  if ((unsigned long )(ap->ops)->error_handler != (unsigned long )((void (*)(struct ata_port * ))0)) {
    __ata_port_probe(ap);
    ata_port_wait_eh(ap);
  } else {
    rc = ata_bus_probe(ap);
  }
  return (rc);
}
}
static void async_port_probe(void *data , async_cookie_t cookie )
{
  struct ata_port *ap ;
  {
  ap = (struct ata_port *)data;
  if (((ap->host)->flags & 4UL) == 0UL && ap->port_no != 0U) {
    async_synchronize_cookie(cookie);
  } else {
  }
  ata_port_probe(ap);
  async_synchronize_cookie(cookie);
  ata_scsi_scan_host(ap, 1);
  return;
}
}
int ata_host_register(struct ata_host *host , struct scsi_host_template *sht )
{
  int i ;
  int rc ;
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  struct ata_port *ap ;
  unsigned long xfer_mask ;
  char const *tmp___1 ;
  int tmp___2 ;
  struct ata_port *ap___0 ;
  {
  if ((host->flags & 2UL) == 0UL) {
    dev_err((struct device const *)host->dev, "BUG: trying to register unstarted host\n");
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                         6149);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return (-22);
  } else {
  }
  i = (int )host->n_ports;
  goto ldv_41516;
  ldv_41515:
  kfree((void const *)host->ports[i]);
  i = i + 1;
  ldv_41516: ;
  if ((unsigned long )host->ports[i] != (unsigned long )((struct ata_port *)0)) {
    goto ldv_41515;
  } else {
  }
  i = 0;
  goto ldv_41519;
  ldv_41518:
  tmp___0 = atomic_add_return(1, & ata_print_id);
  (host->ports[i])->print_id = (unsigned int )tmp___0;
  i = i + 1;
  ldv_41519: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_41518;
  } else {
  }
  i = 0;
  goto ldv_41523;
  ldv_41522:
  rc = ata_tport_add(host->dev, host->ports[i]);
  if (rc != 0) {
    goto err_tadd;
  } else {
  }
  i = i + 1;
  ldv_41523: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_41522;
  } else {
  }
  rc = ata_scsi_add_hosts(host, sht);
  if (rc != 0) {
    goto err_tadd;
  } else {
  }
  i = 0;
  goto ldv_41528;
  ldv_41527:
  ap = host->ports[i];
  if (ap->cbl == 0U && (ap->flags & 2UL) != 0UL) {
    ap->cbl = 6U;
  } else {
  }
  sata_link_init_spd(& ap->link);
  if ((unsigned long )ap->slave_link != (unsigned long )((struct ata_link *)0)) {
    sata_link_init_spd(ap->slave_link);
  } else {
  }
  xfer_mask = ata_pack_xfermask((unsigned long )ap->pio_mask, (unsigned long )ap->mwdma_mask,
                                (unsigned long )ap->udma_mask);
  tmp___2 = ata_port_is_dummy(ap);
  if (tmp___2 == 0) {
    tmp___1 = ata_mode_string(xfer_mask);
    ata_port_printk((struct ata_port const *)ap, "\016", "%cATA max %s %s\n", (ap->flags & 2UL) != 0UL ? 83 : 80,
                    tmp___1, (char *)(& ap->link.eh_info.desc));
    ata_ehi_clear_desc(& ap->link.eh_info);
  } else {
    ata_port_printk((struct ata_port const *)ap, "\016", "DUMMY\n");
  }
  i = i + 1;
  ldv_41528: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_41527;
  } else {
  }
  i = 0;
  goto ldv_41532;
  ldv_41531:
  ap___0 = host->ports[i];
  async_schedule(& async_port_probe, (void *)ap___0);
  i = i + 1;
  ldv_41532: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_41531;
  } else {
  }
  return (0);
  err_tadd: ;
  goto ldv_41535;
  ldv_41534:
  ata_tport_delete(host->ports[i]);
  ldv_41535:
  i = i - 1;
  if (i >= 0) {
    goto ldv_41534;
  } else {
  }
  return (rc);
}
}
int ata_host_activate(struct ata_host *host , int irq , irqreturn_t (*irq_handler)(int ,
                                                                                   void * ) ,
                      unsigned long irq_flags , struct scsi_host_template *sht )
{
  int i ;
  int rc ;
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  {
  rc = ata_host_start(host);
  if (rc != 0) {
    return (rc);
  } else {
  }
  if (irq == 0) {
    __ret_warn_on = (unsigned long )irq_handler != (unsigned long )((irqreturn_t (*)(int ,
                                                                                     void * ))0);
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                         6256);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    tmp___0 = ata_host_register(host, sht);
    return (tmp___0);
  } else {
  }
  tmp___1 = dev_driver_string((struct device const *)host->dev);
  rc = devm_request_irq(host->dev, (unsigned int )irq, irq_handler, irq_flags, tmp___1,
                        (void *)host);
  if (rc != 0) {
    return (rc);
  } else {
  }
  i = 0;
  goto ldv_41549;
  ldv_41548:
  ata_port_desc(host->ports[i], "irq %d", irq);
  i = i + 1;
  ldv_41549: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_41548;
  } else {
  }
  rc = ata_host_register(host, sht);
  if (rc != 0) {
    devm_free_irq(host->dev, (unsigned int )irq, (void *)host);
  } else {
  }
  return (rc);
}
}
static void ata_port_detach(struct ata_port *ap )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  int i ;
  {
  if ((unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0)) {
    goto skip_eh;
  } else {
  }
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ap->pflags = ap->pflags | 512U;
  ata_port_schedule_eh(ap);
  spin_unlock_irqrestore(ap->lock, flags);
  ata_port_wait_eh(ap);
  __ret_warn_on = (ap->pflags & 1024U) == 0U;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-core.c.prepared",
                       6304);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  cancel_delayed_work_sync(& ap->hotplug_task);
  skip_eh: ;
  if ((unsigned long )ap->pmp_link != (unsigned long )((struct ata_link *)0)) {
    i = 0;
    goto ldv_41563;
    ldv_41562:
    ata_tlink_delete(ap->pmp_link + (unsigned long )i);
    i = i + 1;
    ldv_41563: ;
    if (i <= 14) {
      goto ldv_41562;
    } else {
    }
  } else {
  }
  ata_tport_delete(ap);
  scsi_remove_host(ap->scsi_host);
  return;
}
}
void ata_host_detach(struct ata_host *host )
{
  int i ;
  {
  i = 0;
  goto ldv_41570;
  ldv_41569:
  ata_port_detach(host->ports[i]);
  i = i + 1;
  ldv_41570: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_41569;
  } else {
  }
  ata_acpi_dissociate(host);
  return;
}
}
void ata_pci_remove_one(struct pci_dev *pdev )
{
  struct ata_host *host ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  host = (struct ata_host *)tmp;
  ata_host_detach(host);
  return;
}
}
int pci_test_config_bits(struct pci_dev *pdev , struct pci_bits const *bits )
{
  unsigned long tmp ;
  u8 tmp8 ;
  u16 tmp16 ;
  u32 tmp32 ;
  {
  tmp = 0UL;
  switch (bits->width) {
  case 1U:
  tmp8 = 0U;
  pci_read_config_byte((struct pci_dev const *)pdev, (int )bits->reg, & tmp8);
  tmp = (unsigned long )tmp8;
  goto ldv_41583;
  case 2U:
  tmp16 = 0U;
  pci_read_config_word((struct pci_dev const *)pdev, (int )bits->reg, & tmp16);
  tmp = (unsigned long )tmp16;
  goto ldv_41583;
  case 4U:
  tmp32 = 0U;
  pci_read_config_dword((struct pci_dev const *)pdev, (int )bits->reg, & tmp32);
  tmp = (unsigned long )tmp32;
  goto ldv_41583;
  default: ;
  return (-22);
  }
  ldv_41583:
  tmp = (unsigned long )bits->mask & tmp;
  return ((unsigned long )bits->val == tmp);
}
}
void ata_pci_device_do_suspend(struct pci_dev *pdev , pm_message_t mesg )
{
  {
  pci_save_state(pdev);
  pci_disable_device(pdev);
  if ((mesg.event & 6) != 0) {
    pci_set_power_state(pdev, 3);
  } else {
  }
  return;
}
}
int ata_pci_device_do_resume(struct pci_dev *pdev )
{
  int rc ;
  {
  pci_set_power_state(pdev, 0);
  pci_restore_state(pdev);
  rc = pcim_enable_device(pdev);
  if (rc != 0) {
    dev_err((struct device const *)(& pdev->dev), "failed to enable device after resume (%d)\n",
            rc);
    return (rc);
  } else {
  }
  pci_set_master(pdev);
  return (0);
}
}
int ata_pci_device_suspend(struct pci_dev *pdev , pm_message_t mesg )
{
  struct ata_host *host ;
  void *tmp ;
  int rc ;
  {
  tmp = pci_get_drvdata(pdev);
  host = (struct ata_host *)tmp;
  rc = 0;
  rc = ata_host_suspend(host, mesg);
  if (rc != 0) {
    return (rc);
  } else {
  }
  ata_pci_device_do_suspend(pdev, mesg);
  return (0);
}
}
int ata_pci_device_resume(struct pci_dev *pdev )
{
  struct ata_host *host ;
  void *tmp ;
  int rc ;
  {
  tmp = pci_get_drvdata(pdev);
  host = (struct ata_host *)tmp;
  rc = ata_pci_device_do_resume(pdev);
  if (rc == 0) {
    ata_host_resume(host);
  } else {
  }
  return (rc);
}
}
int ata_platform_remove_one(struct platform_device *pdev )
{
  struct ata_host *host ;
  void *tmp ;
  {
  tmp = platform_get_drvdata((struct platform_device const *)pdev);
  host = (struct ata_host *)tmp;
  ata_host_detach(host);
  return (0);
}
}
static int ata_parse_force_one(char **cur , struct ata_force_ent *force_ent , char const **reason )
{
  struct ata_force_param force_tbl[49U] ;
  char *start ;
  char *p ;
  char *id ;
  char *val ;
  char *endp ;
  struct ata_force_param const *match_fp ;
  int nr_matches ;
  int i ;
  char *tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  struct ata_force_param const *fp ;
  size_t tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  force_tbl[0].name = "40c";
  force_tbl[0].cbl = 1U;
  force_tbl[0].spd_limit = 0;
  force_tbl[0].xfer_mask = 0UL;
  force_tbl[0].horkage_on = 0U;
  force_tbl[0].horkage_off = 0U;
  force_tbl[0].lflags = 0U;
  force_tbl[1].name = "80c";
  force_tbl[1].cbl = 2U;
  force_tbl[1].spd_limit = 0;
  force_tbl[1].xfer_mask = 0UL;
  force_tbl[1].horkage_on = 0U;
  force_tbl[1].horkage_off = 0U;
  force_tbl[1].lflags = 0U;
  force_tbl[2].name = "short40c";
  force_tbl[2].cbl = 3U;
  force_tbl[2].spd_limit = 0;
  force_tbl[2].xfer_mask = 0UL;
  force_tbl[2].horkage_on = 0U;
  force_tbl[2].horkage_off = 0U;
  force_tbl[2].lflags = 0U;
  force_tbl[3].name = "unk";
  force_tbl[3].cbl = 4U;
  force_tbl[3].spd_limit = 0;
  force_tbl[3].xfer_mask = 0UL;
  force_tbl[3].horkage_on = 0U;
  force_tbl[3].horkage_off = 0U;
  force_tbl[3].lflags = 0U;
  force_tbl[4].name = "ign";
  force_tbl[4].cbl = 5U;
  force_tbl[4].spd_limit = 0;
  force_tbl[4].xfer_mask = 0UL;
  force_tbl[4].horkage_on = 0U;
  force_tbl[4].horkage_off = 0U;
  force_tbl[4].lflags = 0U;
  force_tbl[5].name = "sata";
  force_tbl[5].cbl = 6U;
  force_tbl[5].spd_limit = 0;
  force_tbl[5].xfer_mask = 0UL;
  force_tbl[5].horkage_on = 0U;
  force_tbl[5].horkage_off = 0U;
  force_tbl[5].lflags = 0U;
  force_tbl[6].name = "1.5Gbps";
  force_tbl[6].cbl = 0U;
  force_tbl[6].spd_limit = 1;
  force_tbl[6].xfer_mask = 0UL;
  force_tbl[6].horkage_on = 0U;
  force_tbl[6].horkage_off = 0U;
  force_tbl[6].lflags = 0U;
  force_tbl[7].name = "3.0Gbps";
  force_tbl[7].cbl = 0U;
  force_tbl[7].spd_limit = 2;
  force_tbl[7].xfer_mask = 0UL;
  force_tbl[7].horkage_on = 0U;
  force_tbl[7].horkage_off = 0U;
  force_tbl[7].lflags = 0U;
  force_tbl[8].name = "noncq";
  force_tbl[8].cbl = 0U;
  force_tbl[8].spd_limit = 0;
  force_tbl[8].xfer_mask = 0UL;
  force_tbl[8].horkage_on = 4U;
  force_tbl[8].horkage_off = 0U;
  force_tbl[8].lflags = 0U;
  force_tbl[9].name = "ncq";
  force_tbl[9].cbl = 0U;
  force_tbl[9].spd_limit = 0;
  force_tbl[9].xfer_mask = 0UL;
  force_tbl[9].horkage_on = 0U;
  force_tbl[9].horkage_off = 4U;
  force_tbl[9].lflags = 0U;
  force_tbl[10].name = "dump_id";
  force_tbl[10].cbl = 0U;
  force_tbl[10].spd_limit = 0;
  force_tbl[10].xfer_mask = 0UL;
  force_tbl[10].horkage_on = 65536U;
  force_tbl[10].horkage_off = 0U;
  force_tbl[10].lflags = 0U;
  force_tbl[11].name = "pio0";
  force_tbl[11].cbl = 0U;
  force_tbl[11].spd_limit = 0;
  force_tbl[11].xfer_mask = 1UL;
  force_tbl[11].horkage_on = 0U;
  force_tbl[11].horkage_off = 0U;
  force_tbl[11].lflags = 0U;
  force_tbl[12].name = "pio1";
  force_tbl[12].cbl = 0U;
  force_tbl[12].spd_limit = 0;
  force_tbl[12].xfer_mask = 2UL;
  force_tbl[12].horkage_on = 0U;
  force_tbl[12].horkage_off = 0U;
  force_tbl[12].lflags = 0U;
  force_tbl[13].name = "pio2";
  force_tbl[13].cbl = 0U;
  force_tbl[13].spd_limit = 0;
  force_tbl[13].xfer_mask = 4UL;
  force_tbl[13].horkage_on = 0U;
  force_tbl[13].horkage_off = 0U;
  force_tbl[13].lflags = 0U;
  force_tbl[14].name = "pio3";
  force_tbl[14].cbl = 0U;
  force_tbl[14].spd_limit = 0;
  force_tbl[14].xfer_mask = 8UL;
  force_tbl[14].horkage_on = 0U;
  force_tbl[14].horkage_off = 0U;
  force_tbl[14].lflags = 0U;
  force_tbl[15].name = "pio4";
  force_tbl[15].cbl = 0U;
  force_tbl[15].spd_limit = 0;
  force_tbl[15].xfer_mask = 16UL;
  force_tbl[15].horkage_on = 0U;
  force_tbl[15].horkage_off = 0U;
  force_tbl[15].lflags = 0U;
  force_tbl[16].name = "pio5";
  force_tbl[16].cbl = 0U;
  force_tbl[16].spd_limit = 0;
  force_tbl[16].xfer_mask = 32UL;
  force_tbl[16].horkage_on = 0U;
  force_tbl[16].horkage_off = 0U;
  force_tbl[16].lflags = 0U;
  force_tbl[17].name = "pio6";
  force_tbl[17].cbl = 0U;
  force_tbl[17].spd_limit = 0;
  force_tbl[17].xfer_mask = 64UL;
  force_tbl[17].horkage_on = 0U;
  force_tbl[17].horkage_off = 0U;
  force_tbl[17].lflags = 0U;
  force_tbl[18].name = "mwdma0";
  force_tbl[18].cbl = 0U;
  force_tbl[18].spd_limit = 0;
  force_tbl[18].xfer_mask = 128UL;
  force_tbl[18].horkage_on = 0U;
  force_tbl[18].horkage_off = 0U;
  force_tbl[18].lflags = 0U;
  force_tbl[19].name = "mwdma1";
  force_tbl[19].cbl = 0U;
  force_tbl[19].spd_limit = 0;
  force_tbl[19].xfer_mask = 256UL;
  force_tbl[19].horkage_on = 0U;
  force_tbl[19].horkage_off = 0U;
  force_tbl[19].lflags = 0U;
  force_tbl[20].name = "mwdma2";
  force_tbl[20].cbl = 0U;
  force_tbl[20].spd_limit = 0;
  force_tbl[20].xfer_mask = 512UL;
  force_tbl[20].horkage_on = 0U;
  force_tbl[20].horkage_off = 0U;
  force_tbl[20].lflags = 0U;
  force_tbl[21].name = "mwdma3";
  force_tbl[21].cbl = 0U;
  force_tbl[21].spd_limit = 0;
  force_tbl[21].xfer_mask = 1024UL;
  force_tbl[21].horkage_on = 0U;
  force_tbl[21].horkage_off = 0U;
  force_tbl[21].lflags = 0U;
  force_tbl[22].name = "mwdma4";
  force_tbl[22].cbl = 0U;
  force_tbl[22].spd_limit = 0;
  force_tbl[22].xfer_mask = 2048UL;
  force_tbl[22].horkage_on = 0U;
  force_tbl[22].horkage_off = 0U;
  force_tbl[22].lflags = 0U;
  force_tbl[23].name = "udma0";
  force_tbl[23].cbl = 0U;
  force_tbl[23].spd_limit = 0;
  force_tbl[23].xfer_mask = 4096UL;
  force_tbl[23].horkage_on = 0U;
  force_tbl[23].horkage_off = 0U;
  force_tbl[23].lflags = 0U;
  force_tbl[24].name = "udma16";
  force_tbl[24].cbl = 0U;
  force_tbl[24].spd_limit = 0;
  force_tbl[24].xfer_mask = 4096UL;
  force_tbl[24].horkage_on = 0U;
  force_tbl[24].horkage_off = 0U;
  force_tbl[24].lflags = 0U;
  force_tbl[25].name = "udma/16";
  force_tbl[25].cbl = 0U;
  force_tbl[25].spd_limit = 0;
  force_tbl[25].xfer_mask = 4096UL;
  force_tbl[25].horkage_on = 0U;
  force_tbl[25].horkage_off = 0U;
  force_tbl[25].lflags = 0U;
  force_tbl[26].name = "udma1";
  force_tbl[26].cbl = 0U;
  force_tbl[26].spd_limit = 0;
  force_tbl[26].xfer_mask = 8192UL;
  force_tbl[26].horkage_on = 0U;
  force_tbl[26].horkage_off = 0U;
  force_tbl[26].lflags = 0U;
  force_tbl[27].name = "udma25";
  force_tbl[27].cbl = 0U;
  force_tbl[27].spd_limit = 0;
  force_tbl[27].xfer_mask = 8192UL;
  force_tbl[27].horkage_on = 0U;
  force_tbl[27].horkage_off = 0U;
  force_tbl[27].lflags = 0U;
  force_tbl[28].name = "udma/25";
  force_tbl[28].cbl = 0U;
  force_tbl[28].spd_limit = 0;
  force_tbl[28].xfer_mask = 8192UL;
  force_tbl[28].horkage_on = 0U;
  force_tbl[28].horkage_off = 0U;
  force_tbl[28].lflags = 0U;
  force_tbl[29].name = "udma2";
  force_tbl[29].cbl = 0U;
  force_tbl[29].spd_limit = 0;
  force_tbl[29].xfer_mask = 16384UL;
  force_tbl[29].horkage_on = 0U;
  force_tbl[29].horkage_off = 0U;
  force_tbl[29].lflags = 0U;
  force_tbl[30].name = "udma33";
  force_tbl[30].cbl = 0U;
  force_tbl[30].spd_limit = 0;
  force_tbl[30].xfer_mask = 16384UL;
  force_tbl[30].horkage_on = 0U;
  force_tbl[30].horkage_off = 0U;
  force_tbl[30].lflags = 0U;
  force_tbl[31].name = "udma/33";
  force_tbl[31].cbl = 0U;
  force_tbl[31].spd_limit = 0;
  force_tbl[31].xfer_mask = 16384UL;
  force_tbl[31].horkage_on = 0U;
  force_tbl[31].horkage_off = 0U;
  force_tbl[31].lflags = 0U;
  force_tbl[32].name = "udma3";
  force_tbl[32].cbl = 0U;
  force_tbl[32].spd_limit = 0;
  force_tbl[32].xfer_mask = 32768UL;
  force_tbl[32].horkage_on = 0U;
  force_tbl[32].horkage_off = 0U;
  force_tbl[32].lflags = 0U;
  force_tbl[33].name = "udma44";
  force_tbl[33].cbl = 0U;
  force_tbl[33].spd_limit = 0;
  force_tbl[33].xfer_mask = 32768UL;
  force_tbl[33].horkage_on = 0U;
  force_tbl[33].horkage_off = 0U;
  force_tbl[33].lflags = 0U;
  force_tbl[34].name = "udma/44";
  force_tbl[34].cbl = 0U;
  force_tbl[34].spd_limit = 0;
  force_tbl[34].xfer_mask = 32768UL;
  force_tbl[34].horkage_on = 0U;
  force_tbl[34].horkage_off = 0U;
  force_tbl[34].lflags = 0U;
  force_tbl[35].name = "udma4";
  force_tbl[35].cbl = 0U;
  force_tbl[35].spd_limit = 0;
  force_tbl[35].xfer_mask = 65536UL;
  force_tbl[35].horkage_on = 0U;
  force_tbl[35].horkage_off = 0U;
  force_tbl[35].lflags = 0U;
  force_tbl[36].name = "udma66";
  force_tbl[36].cbl = 0U;
  force_tbl[36].spd_limit = 0;
  force_tbl[36].xfer_mask = 65536UL;
  force_tbl[36].horkage_on = 0U;
  force_tbl[36].horkage_off = 0U;
  force_tbl[36].lflags = 0U;
  force_tbl[37].name = "udma/66";
  force_tbl[37].cbl = 0U;
  force_tbl[37].spd_limit = 0;
  force_tbl[37].xfer_mask = 65536UL;
  force_tbl[37].horkage_on = 0U;
  force_tbl[37].horkage_off = 0U;
  force_tbl[37].lflags = 0U;
  force_tbl[38].name = "udma5";
  force_tbl[38].cbl = 0U;
  force_tbl[38].spd_limit = 0;
  force_tbl[38].xfer_mask = 131072UL;
  force_tbl[38].horkage_on = 0U;
  force_tbl[38].horkage_off = 0U;
  force_tbl[38].lflags = 0U;
  force_tbl[39].name = "udma100";
  force_tbl[39].cbl = 0U;
  force_tbl[39].spd_limit = 0;
  force_tbl[39].xfer_mask = 131072UL;
  force_tbl[39].horkage_on = 0U;
  force_tbl[39].horkage_off = 0U;
  force_tbl[39].lflags = 0U;
  force_tbl[40].name = "udma/100";
  force_tbl[40].cbl = 0U;
  force_tbl[40].spd_limit = 0;
  force_tbl[40].xfer_mask = 131072UL;
  force_tbl[40].horkage_on = 0U;
  force_tbl[40].horkage_off = 0U;
  force_tbl[40].lflags = 0U;
  force_tbl[41].name = "udma6";
  force_tbl[41].cbl = 0U;
  force_tbl[41].spd_limit = 0;
  force_tbl[41].xfer_mask = 262144UL;
  force_tbl[41].horkage_on = 0U;
  force_tbl[41].horkage_off = 0U;
  force_tbl[41].lflags = 0U;
  force_tbl[42].name = "udma133";
  force_tbl[42].cbl = 0U;
  force_tbl[42].spd_limit = 0;
  force_tbl[42].xfer_mask = 262144UL;
  force_tbl[42].horkage_on = 0U;
  force_tbl[42].horkage_off = 0U;
  force_tbl[42].lflags = 0U;
  force_tbl[43].name = "udma/133";
  force_tbl[43].cbl = 0U;
  force_tbl[43].spd_limit = 0;
  force_tbl[43].xfer_mask = 262144UL;
  force_tbl[43].horkage_on = 0U;
  force_tbl[43].horkage_off = 0U;
  force_tbl[43].lflags = 0U;
  force_tbl[44].name = "udma7";
  force_tbl[44].cbl = 0U;
  force_tbl[44].spd_limit = 0;
  force_tbl[44].xfer_mask = 524288UL;
  force_tbl[44].horkage_on = 0U;
  force_tbl[44].horkage_off = 0U;
  force_tbl[44].lflags = 0U;
  force_tbl[45].name = "nohrst";
  force_tbl[45].cbl = 0U;
  force_tbl[45].spd_limit = 0;
  force_tbl[45].xfer_mask = 0UL;
  force_tbl[45].horkage_on = 0U;
  force_tbl[45].horkage_off = 0U;
  force_tbl[45].lflags = 2U;
  force_tbl[46].name = "nosrst";
  force_tbl[46].cbl = 0U;
  force_tbl[46].spd_limit = 0;
  force_tbl[46].xfer_mask = 0UL;
  force_tbl[46].horkage_on = 0U;
  force_tbl[46].horkage_off = 0U;
  force_tbl[46].lflags = 4U;
  force_tbl[47].name = "norst";
  force_tbl[47].cbl = 0U;
  force_tbl[47].spd_limit = 0;
  force_tbl[47].xfer_mask = 0UL;
  force_tbl[47].horkage_on = 0U;
  force_tbl[47].horkage_off = 0U;
  force_tbl[47].lflags = 6U;
  force_tbl[48].name = "rstonce";
  force_tbl[48].cbl = 0U;
  force_tbl[48].spd_limit = 0;
  force_tbl[48].xfer_mask = 0UL;
  force_tbl[48].horkage_on = 0U;
  force_tbl[48].horkage_off = 0U;
  force_tbl[48].lflags = 512U;
  start = *cur;
  p = *cur;
  match_fp = 0;
  nr_matches = 0;
  goto ldv_41627;
  ldv_41626:
  p = p + 1;
  ldv_41627: ;
  if ((int )((signed char )*p) != 0 && (int )((signed char )*p) != 44) {
    goto ldv_41626;
  } else {
  }
  if ((int )((signed char )*p) == 0) {
    *cur = p;
  } else {
    *cur = p + 1UL;
  }
  *p = 0;
  p = strchr((char const *)start, 58);
  if ((unsigned long )p == (unsigned long )((char *)0)) {
    val = strstrip(start);
    goto parse_val;
  } else {
  }
  *p = 0;
  id = strstrip(start);
  val = strstrip(p + 1UL);
  p = strchr((char const *)id, 46);
  if ((unsigned long )p != (unsigned long )((char *)0)) {
    tmp = p;
    p = p + 1;
    *tmp = 0;
    tmp___0 = simple_strtoul((char const *)p, & endp, 10U);
    force_ent->device = (int )tmp___0;
    if ((unsigned long )p == (unsigned long )endp || (int )((signed char )*endp) != 0) {
      *reason = "invalid device";
      return (-22);
    } else {
    }
  } else {
  }
  tmp___1 = simple_strtoul((char const *)id, & endp, 10U);
  force_ent->port = (int )tmp___1;
  if ((unsigned long )p == (unsigned long )endp || (int )((signed char )*endp) != 0) {
    *reason = "invalid port/link";
    return (-22);
  } else {
  }
  parse_val:
  i = 0;
  goto ldv_41636;
  ldv_41635:
  fp = (struct ata_force_param const *)(& force_tbl) + (unsigned long )i;
  tmp___2 = strlen((char const *)val);
  tmp___3 = strncasecmp((char const *)val, fp->name, tmp___2);
  if (tmp___3 != 0) {
    goto ldv_41633;
  } else {
  }
  nr_matches = nr_matches + 1;
  match_fp = fp;
  tmp___4 = strcasecmp((char const *)val, fp->name);
  if (tmp___4 == 0) {
    nr_matches = 1;
    goto ldv_41634;
  } else {
  }
  ldv_41633:
  i = i + 1;
  ldv_41636: ;
  if ((unsigned int )i <= 48U) {
    goto ldv_41635;
  } else {
  }
  ldv_41634: ;
  if (nr_matches == 0) {
    *reason = "unknown value";
    return (-22);
  } else {
  }
  if (nr_matches > 1) {
    *reason = "ambigious value";
    return (-22);
  } else {
  }
  force_ent->param = *match_fp;
  return (0);
}
}
static void ata_parse_force_param(void)
{
  int idx ;
  int size ;
  int last_port ;
  int last_device ;
  char *p ;
  char *cur ;
  char *next ;
  void *tmp ;
  char const *reason ;
  struct ata_force_ent te ;
  int tmp___0 ;
  int tmp___1 ;
  {
  idx = 0;
  size = 1;
  last_port = -1;
  last_device = -1;
  p = (char *)(& ata_force_param_buf);
  goto ldv_41648;
  ldv_41647: ;
  if ((int )((signed char )*p) == 44) {
    size = size + 1;
  } else {
  }
  p = p + 1;
  ldv_41648: ;
  if ((int )((signed char )*p) != 0) {
    goto ldv_41647;
  } else {
  }
  tmp = kzalloc((unsigned long )size * 48UL, 208U);
  ata_force_tbl = (struct ata_force_ent *)tmp;
  if ((unsigned long )ata_force_tbl == (unsigned long )((struct ata_force_ent *)0)) {
    printk("\fata: failed to extend force table, libata.force ignored\n");
    return;
  } else {
  }
  cur = (char *)(& ata_force_param_buf);
  goto ldv_41654;
  ldv_41653:
  reason = "";
  te.port = -1;
  te.device = -1;
  te.param.name = 0;
  te.param.cbl = 0U;
  te.param.spd_limit = 0;
  te.param.xfer_mask = 0UL;
  te.param.horkage_on = 0U;
  te.param.horkage_off = 0U;
  te.param.lflags = 0U;
  next = cur;
  tmp___0 = ata_parse_force_one(& next, & te, & reason);
  if (tmp___0 != 0) {
    printk("\fata: failed to parse force parameter \"%s\" (%s)\n", cur, reason);
    goto ldv_41652;
  } else {
  }
  if (te.port == -1) {
    te.port = last_port;
    te.device = last_device;
  } else {
  }
  tmp___1 = idx;
  idx = idx + 1;
  *(ata_force_tbl + (unsigned long )tmp___1) = te;
  last_port = te.port;
  last_device = te.device;
  ldv_41652:
  cur = next;
  ldv_41654: ;
  if ((int )((signed char )*cur) != 0) {
    goto ldv_41653;
  } else {
  }
  ata_force_tbl_size = idx;
  return;
}
}
static int ata_init(void)
{
  int rc ;
  {
  ata_parse_force_param();
  ata_acpi_register();
  rc = ata_sff_init();
  if (rc != 0) {
    kfree((void const *)ata_force_tbl);
    return (rc);
  } else {
  }
  libata_transport_init();
  ata_scsi_transport_template = ata_attach_transport();
  if ((unsigned long )ata_scsi_transport_template == (unsigned long )((struct scsi_transport_template *)0)) {
    ata_sff_exit();
    rc = -12;
    goto err_out;
  } else {
  }
  printk("\017libata version 3.00 loaded.\n");
  return (0);
  err_out: ;
  return (rc);
}
}
static void ata_exit(void)
{
  {
  ata_release_transport(ata_scsi_transport_template);
  libata_transport_exit();
  ata_sff_exit();
  ata_acpi_unregister();
  kfree((void const *)ata_force_tbl);
  return;
}
}
static struct ratelimit_state ratelimit = {{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "ratelimit.lock",
                                                              0, 0UL}}, 50, 1, 0,
    0, 0UL};
int ata_ratelimit(void)
{
  int tmp ;
  {
  tmp = ___ratelimit(& ratelimit, "ata_ratelimit");
  return (tmp);
}
}
void ata_msleep(struct ata_port *ap , unsigned int msecs )
{
  bool owns_eh ;
  struct task_struct *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ap != (unsigned long )((struct ata_port *)0)) {
    tmp = get_current();
    if ((unsigned long )(ap->host)->eh_owner == (unsigned long )tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  owns_eh = (bool )tmp___0;
  if ((int )owns_eh) {
    ata_eh_release(ap);
  } else {
  }
  msleep(msecs);
  if ((int )owns_eh) {
    ata_eh_acquire(ap);
  } else {
  }
  return;
}
}
u32 ata_wait_register(struct ata_port *ap , void *reg , u32 mask , u32 val , unsigned long interval ,
                      unsigned long timeout )
{
  unsigned long deadline ;
  u32 tmp ;
  {
  tmp = ioread32(reg);
  deadline = ata_deadline(jiffies, timeout);
  goto ldv_41702;
  ldv_41701:
  ata_msleep(ap, (unsigned int )interval);
  tmp = ioread32(reg);
  ldv_41702: ;
  if ((tmp & mask) == val && (long )jiffies - (long )deadline < 0L) {
    goto ldv_41701;
  } else {
  }
  return (tmp);
}
}
static unsigned int ata_dummy_qc_issue(struct ata_queued_cmd *qc )
{
  {
  return (64U);
}
}
static void ata_dummy_error_handler(struct ata_port *ap )
{
  {
  return;
}
}
struct ata_port_operations ata_dummy_port_ops =
     {0, 0, & ata_noop_qc_prep, & ata_dummy_qc_issue, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, & ata_dummy_error_handler, 0, 0, & ata_std_sched_eh, & ata_std_end_eh,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0};
struct ata_port_info const ata_dummy_port_info = {0UL, 0UL, 0UL, 0UL, 0UL, & ata_dummy_port_ops, 0};
int ata_port_printk(struct ata_port const *ap , char const *level , char const *fmt
                    , ...)
{
  struct va_format vaf ;
  va_list args ;
  int r ;
  {
  __builtin_va_start((__va_list_tag *)(& args), fmt);
  vaf.fmt = fmt;
  vaf.va = & args;
  r = printk("%sata%u: %pV", level, ap->print_id, & vaf);
  __builtin_va_end((__va_list_tag *)(& args));
  return (r);
}
}
int ata_link_printk(struct ata_link const *link , char const *level , char const *fmt
                    , ...)
{
  struct va_format vaf ;
  va_list args ;
  int r ;
  bool tmp ;
  {
  __builtin_va_start((__va_list_tag *)(& args), fmt);
  vaf.fmt = fmt;
  vaf.va = & args;
  tmp = sata_pmp_attached(link->ap);
  if ((int )tmp || (unsigned long )(link->ap)->slave_link != (unsigned long )((struct ata_link *)0)) {
    r = printk("%sata%u.%02u: %pV", level, (link->ap)->print_id, link->pmp, & vaf);
  } else {
    r = printk("%sata%u: %pV", level, (link->ap)->print_id, & vaf);
  }
  __builtin_va_end((__va_list_tag *)(& args));
  return (r);
}
}
int ata_dev_printk(struct ata_device const *dev , char const *level , char const *fmt
                   , ...)
{
  struct va_format vaf ;
  va_list args ;
  int r ;
  {
  __builtin_va_start((__va_list_tag *)(& args), fmt);
  vaf.fmt = fmt;
  vaf.va = & args;
  r = printk("%sata%u.%02u: %pV", level, ((dev->link)->ap)->print_id, (unsigned int )(dev->link)->pmp + (unsigned int )dev->devno,
             & vaf);
  __builtin_va_end((__va_list_tag *)(& args));
  return (r);
}
}
void ata_print_version(struct device const *dev , char const *version )
{
  {
  dev_printk("\017", dev, "version %s\n", version);
  return;
}
}
void ldv_check_final_state(void) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void ldv_main0_sequence_infinite_withcheck_stateful(void)
{
  struct ata_link *var_group1 ;
  unsigned long var_ata_std_prereset_67_p1 ;
  unsigned int *var_ata_std_postreset_69_p1 ;
  struct ata_queued_cmd *var_group2 ;
  unsigned int *var_sata_std_hardreset_68_p1 ;
  unsigned long var_sata_std_hardreset_68_p2 ;
  struct device *var_group3 ;
  struct ata_port *var_group4 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = ata_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_42459;
  ldv_42458:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  ata_std_prereset(var_group1, var_ata_std_prereset_67_p1);
  goto ldv_42444;
  case 1:
  ldv_handler_precall();
  ata_std_postreset(var_group1, var_ata_std_postreset_69_p1);
  goto ldv_42444;
  case 2:
  ldv_handler_precall();
  ata_std_qc_defer(var_group2);
  goto ldv_42444;
  case 3:
  ldv_handler_precall();
  sata_std_hardreset(var_group1, var_sata_std_hardreset_68_p1, var_sata_std_hardreset_68_p2);
  goto ldv_42444;
  case 4:
  ldv_handler_precall();
  ata_port_suspend(var_group3);
  goto ldv_42444;
  case 5:
  ldv_handler_precall();
  ata_port_resume(var_group3);
  goto ldv_42444;
  case 6:
  ldv_handler_precall();
  ata_port_do_freeze(var_group3);
  goto ldv_42444;
  case 7:
  ldv_handler_precall();
  ata_port_poweroff(var_group3);
  goto ldv_42444;
  case 8:
  ldv_handler_precall();
  ata_port_resume_common(var_group3);
  goto ldv_42444;
  case 9:
  ldv_handler_precall();
  ata_port_runtime_idle(var_group3);
  goto ldv_42444;
  case 10:
  ldv_handler_precall();
  ata_noop_qc_prep(var_group2);
  goto ldv_42444;
  case 11:
  ldv_handler_precall();
  ata_dummy_qc_issue(var_group2);
  goto ldv_42444;
  case 12:
  ldv_handler_precall();
  ata_dummy_error_handler(var_group4);
  goto ldv_42444;
  default: ;
  goto ldv_42444;
  }
  ldv_42444: ;
  ldv_42459:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0) {
    goto ldv_42458;
  } else {
  }
  ldv_handler_precall();
  ata_exit();
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
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_pm_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_pm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u64 __arch_swab64(__u64 val )
{
  {
  __asm__ ("bswapq %0": "=r" (val): "0" (val));
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
__inline static __u64 __fswab64(__u64 val )
{
  __u64 tmp ;
  {
  tmp = __arch_swab64(val);
  return (tmp);
}
}
extern void might_fault(void) ;
extern int kstrtoll(char const * , unsigned int , long long * ) ;
__inline static int kstrtol(char const *s , unsigned int base , long *res )
{
  int tmp ;
  {
  tmp = kstrtoll(s, base, (long long *)res);
  return (tmp);
}
}
extern enum system_states system_state ;
extern int memcmp(void const * , void const * , size_t ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
int ldv_mutex_trylock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_scan_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_scan_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_scsi_scan_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_scsi_scan_mutex(struct mutex *lock ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_5961.rlock);
  return;
}
}
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
extern unsigned long round_jiffies_relative(unsigned long ) ;
extern struct workqueue_struct *system_long_wq ;
extern bool queue_delayed_work(struct workqueue_struct * , struct delayed_work * ,
                               unsigned long ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern bool capable(int ) ;
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
        warn_slowpath_fmt("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/uaccess_64.h",
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
__inline static unsigned int blk_rq_bytes(struct request const *rq )
{
  {
  return ((unsigned int )rq->__data_len);
}
}
extern void blk_queue_max_hw_sectors(struct request_queue * , unsigned int ) ;
extern void blk_queue_update_dma_pad(struct request_queue * , unsigned int ) ;
extern int blk_queue_dma_drain(struct request_queue * , dma_drain_needed_fn * , void * ,
                               unsigned int ) ;
extern void blk_queue_update_dma_alignment(struct request_queue * , int ) ;
extern void blk_queue_flush_queueable(struct request_queue * , bool ) ;
__inline static struct page *sg_page___0(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    ldv_28297: ;
    goto ldv_28297;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    ldv_28298: ;
    goto ldv_28298;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
extern size_t sg_copy_from_buffer(struct scatterlist * , unsigned int , void * ,
                                  size_t ) ;
extern size_t sg_copy_to_buffer(struct scatterlist * , unsigned int , void * , size_t ) ;
extern unsigned char const scsi_command_size_tbl[8U] ;
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
extern void scsi_rescan_device(struct device * ) ;
__inline static unsigned int scsi_sg_count(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.table.nents);
}
}
__inline static struct scatterlist *scsi_sglist(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.table.sgl);
}
}
__inline static unsigned int scsi_bufflen(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.length);
}
}
extern int scsi_normalize_sense(u8 const * , int , struct scsi_sense_hdr * ) ;
extern void scsi_build_sense_buffer(int , u8 * , u8 , u8 , u8 ) ;
extern struct scsi_device *__scsi_add_device(struct Scsi_Host * , uint , uint ,
                                             uint , void * ) ;
extern void scsi_remove_device(struct scsi_device * ) ;
extern int scsi_device_get(struct scsi_device * ) ;
extern void scsi_device_put(struct scsi_device * ) ;
extern void scsi_adjust_queue_depth(struct scsi_device * , int , int ) ;
extern int scsi_device_set_state(struct scsi_device * , enum scsi_device_state ) ;
extern void sdev_evt_send_simple(struct scsi_device * , enum scsi_device_event ,
                                 gfp_t ) ;
extern int scsi_execute(struct scsi_device * , unsigned char const * , int , void * ,
                        unsigned int , unsigned char * , int , int , int , int * ) ;
__inline static bool ata_id_has_fua(u16 const *id )
{
  {
  if (((int )*(id + 84UL) & 49152) != 16384) {
    return (0);
  } else {
  }
  return (((int )*(id + 84UL) & 64) != 0);
}
}
__inline static bool ata_id_has_flush(u16 const *id )
{
  {
  if (((int )*(id + 83UL) & 49152) != 16384) {
    return (0);
  } else {
  }
  return (((int )*(id + 83UL) & 4096) != 0);
}
}
__inline static u32 ata_id_logical_sector_size(u16 const *id )
{
  {
  if (((int )*(id + 106UL) & 53248) == 20480) {
    return ((u32 )((unsigned long )(((int )*(id + 118UL) << 16) + (int )*(id + 117UL))) * 2U);
  } else {
  }
  return (512U);
}
}
__inline static u8 ata_id_log2_per_physical_sector(u16 const *id )
{
  {
  if (((int )*(id + 106UL) & 57344) == 24576) {
    return ((unsigned int )((u8 )*(id + 106UL)) & 15U);
  } else {
  }
  return (0U);
}
}
__inline static u16 ata_id_logical_sector_offset(u16 const *id , u8 log2_per_phys )
{
  u16 word_209 ;
  u16 first ;
  {
  word_209 = *(id + 209UL);
  if ((unsigned int )log2_per_phys > 1U && ((int )word_209 & 49152) == 16384) {
    first = (unsigned int )word_209 & 16383U;
    if ((unsigned int )first != 0U) {
      return ((int )((u16 )(1 << (int )log2_per_phys)) - (int )first);
    } else {
    }
  } else {
  }
  return (0U);
}
}
__inline static bool ata_id_rahead_enabled(u16 const *id )
{
  {
  if (((int )*(id + 87UL) & 49152) != 16384) {
    return (0);
  } else {
  }
  return (((int )*(id + 85UL) & 64) != 0);
}
}
__inline static bool ata_id_wcache_enabled(u16 const *id )
{
  {
  if (((int )*(id + 87UL) & 49152) != 16384) {
    return (0);
  } else {
  }
  return (((int )*(id + 85UL) & 32) != 0);
}
}
__inline static unsigned int ata_id_major_version___0(u16 const *id )
{
  unsigned int mver ;
  {
  if ((unsigned int )((unsigned short )*(id + 80UL)) == 65535U) {
    return (0U);
  } else {
  }
  mver = 14U;
  goto ldv_31170;
  ldv_31169: ;
  if (((int )*(id + 80UL) >> (int )mver) & 1) {
    goto ldv_31168;
  } else {
  }
  mver = mver - 1U;
  ldv_31170: ;
  if (mver != 0U) {
    goto ldv_31169;
  } else {
  }
  ldv_31168: ;
  return (mver);
}
}
__inline static bool ata_id_has_unload(u16 const *id )
{
  unsigned int tmp ;
  {
  tmp = ata_id_major_version___0(id);
  if ((tmp > 6U && ((int )*(id + 84UL) & 49152) == 16384) && ((int )*(id + 84UL) & 8192) != 0) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static bool ata_id_has_wwn(u16 const *id )
{
  {
  return (((int )*(id + 87UL) & 49408) == 16640);
}
}
__inline static int ata_id_form_factor(u16 const *id )
{
  u16 val ;
  unsigned int tmp ;
  {
  val = *(id + 168UL);
  tmp = ata_id_major_version___0(id);
  if ((tmp <= 6U || (unsigned int )val == 0U) || (unsigned int )val == 65535U) {
    return (0);
  } else {
  }
  val = (unsigned int )val & 15U;
  if ((unsigned int )val > 5U) {
    return (0);
  } else {
  }
  return ((int )val);
}
}
__inline static int ata_id_rotation_rate(u16 const *id )
{
  u16 val ;
  unsigned int tmp ;
  {
  val = *(id + 217UL);
  tmp = ata_id_major_version___0(id);
  if ((tmp <= 6U || (unsigned int )val == 0U) || (unsigned int )val == 65535U) {
    return (0);
  } else {
  }
  if ((unsigned int )val > 1U && (unsigned int )val <= 1024U) {
    return (0);
  } else {
  }
  return ((int )val);
}
}
__inline static bool ata_id_has_trim(u16 const *id )
{
  unsigned int tmp ;
  {
  tmp = ata_id_major_version___0(id);
  if (tmp > 6U && (int )*(id + 169UL) & 1) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static bool ata_id_has_zero_after_trim(u16 const *id )
{
  bool tmp ;
  {
  tmp = ata_id_has_trim(id);
  if ((int )tmp && ((int )*(id + 69UL) & 16416) == 16416) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static unsigned int ata_set_lba_range_entries(void *_buffer , unsigned int buf_size ,
                                                       u64 sector , unsigned long count )
{
  __le64 *buffer ;
  unsigned int i ;
  unsigned int used_bytes ;
  u64 entry ;
  unsigned int tmp ;
  {
  buffer = (__le64 *)_buffer;
  i = 0U;
  goto ldv_31254;
  ldv_31253:
  entry = ((unsigned long long )(65535UL < count ? 65535UL : count) << 48) | sector;
  tmp = i;
  i = i + 1U;
  *(buffer + (unsigned long )tmp) = entry;
  if (count <= 65535UL) {
    goto ldv_31252;
  } else {
  }
  count = count - 65535UL;
  sector = sector + 65535ULL;
  ldv_31254: ;
  if (buf_size / 8U > i) {
    goto ldv_31253;
  } else {
  }
  ldv_31252:
  used_bytes = (i * 8U + 511U) & 4294966784U;
  memset((void *)buffer + (unsigned long )i, 0, (size_t )(used_bytes - i * 8U));
  return (used_bytes);
}
}
__inline static int is_multi_taskfile(struct ata_taskfile *tf )
{
  {
  return (((((unsigned int )tf->command == 196U || (unsigned int )tf->command == 197U) || (unsigned int )tf->command == 41U) || (unsigned int )tf->command == 57U) || (unsigned int )tf->command == 206U);
}
}
struct device_attribute dev_attr_link_power_management_policy ;
struct device_attribute dev_attr_unload_heads ;
struct device_attribute dev_attr_em_message_type ;
struct device_attribute dev_attr_em_message ;
struct device_attribute dev_attr_sw_activity ;
int ata_scsi_ioctl(struct scsi_device *scsidev , int cmd , void *arg ) ;
int ata_scsi_queuecmd(struct Scsi_Host *shost , struct scsi_cmnd *cmd ) ;
int ata_sas_scsi_ioctl(struct ata_port *ap , struct scsi_device *scsidev , int cmd ,
                       void *arg ) ;
void ata_sas_port_destroy(struct ata_port *ap ) ;
struct ata_port *ata_sas_port_alloc(struct ata_host *host , struct ata_port_info *port_info ,
                                    struct Scsi_Host *shost ) ;
void ata_sas_async_probe(struct ata_port *ap ) ;
int ata_sas_sync_probe(struct ata_port *ap ) ;
int ata_sas_port_init(struct ata_port *ap ) ;
int ata_sas_port_start(struct ata_port *ap ) ;
void ata_sas_port_stop(struct ata_port *ap ) ;
int ata_sas_slave_configure(struct scsi_device *sdev , struct ata_port *ap ) ;
int ata_sas_queuecmd(struct scsi_cmnd *cmd , struct ata_port *ap ) ;
void ata_scsi_simulate(struct ata_device *dev , struct scsi_cmnd *cmd ) ;
int ata_std_bios_param(struct scsi_device *sdev , struct block_device *bdev , sector_t capacity ,
                       int *geom ) ;
void ata_scsi_unlock_native_capacity(struct scsi_device *sdev ) ;
int ata_scsi_slave_config(struct scsi_device *sdev ) ;
void ata_scsi_slave_destroy(struct scsi_device *sdev ) ;
int ata_scsi_change_queue_depth(struct scsi_device *sdev , int queue_depth , int reason ) ;
int __ata_change_queue_depth(struct ata_port *ap , struct scsi_device *sdev , int queue_depth ,
                             int reason ) ;
struct device_attribute *ata_common_sdev_attrs[2U] ;
__inline static unsigned int ata_qc_raw_nbytes(struct ata_queued_cmd *qc )
{
  unsigned int _min1 ;
  unsigned int _min2 ;
  {
  _min1 = qc->extrabytes;
  _min2 = qc->nbytes;
  return (qc->nbytes - (_min1 < _min2 ? _min1 : _min2));
}
}
__inline static int ata_try_flush_cache(struct ata_device const *dev )
{
  bool tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = ata_id_wcache_enabled((u16 const *)(& dev->ldv_38497.id));
  if ((int )tmp) {
    tmp___2 = 1;
  } else {
    tmp___0 = ata_id_has_flush((u16 const *)(& dev->ldv_38497.id));
    if ((int )tmp___0) {
      tmp___2 = 1;
    } else {
      tmp___1 = ata_id_has_flush_ext((u16 const *)(& dev->ldv_38497.id));
      if ((int )tmp___1) {
        tmp___2 = 1;
      } else {
        tmp___2 = 0;
      }
    }
  }
  return (tmp___2);
}
}
__inline static struct ata_port *ata_shost_to_port(struct Scsi_Host *host )
{
  {
  return (*((struct ata_port **)(& host->hostdata)));
}
}
extern bool system_entering_hibernation(void) ;
__inline static void put_unaligned_be16(u16 val , void *p )
{
  __u16 tmp ;
  {
  tmp = __fswab16((int )val);
  *((__be16 *)p) = tmp;
  return;
}
}
__inline static void put_unaligned_be32(u32 val , void *p )
{
  __u32 tmp ;
  {
  tmp = __fswab32(val);
  *((__be32 *)p) = tmp;
  return;
}
}
__inline static void put_unaligned_be64(u64 val , void *p )
{
  __u64 tmp ;
  {
  tmp = __fswab64(val);
  *((__be64 *)p) = tmp;
  return;
}
}
int ata_task_ioctl(struct scsi_device *scsidev , void *arg ) ;
int ata_cmd_ioctl(struct scsi_device *scsidev , void *arg ) ;
void ata_acpi_bind(struct ata_device *dev ) ;
void ata_acpi_unbind(struct ata_device *dev ) ;
int ata_scsi_offline_dev(struct ata_device *dev ) ;
void ata_scsi_media_change_notify(struct ata_device *dev ) ;
int ata_scsi_user_scan(struct Scsi_Host *shost , unsigned int channel , unsigned int id ,
                       unsigned int lun ) ;
static spinlock_t ata_scsi_rbuf_lock = {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "ata_scsi_rbuf_lock",
                                                               0, 0UL}}}};
static u8 ata_scsi_rbuf[4096U] ;
static struct ata_device *__ata_scsi_find_dev(struct ata_port *ap , struct scsi_device const *scsidev ) ;
static struct ata_device *ata_scsi_find_dev(struct ata_port *ap , struct scsi_device const *scsidev ) ;
static u8 const def_rw_recovery_mpage[12U] =
  { 1U, 10U, 128U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U};
static u8 const def_cache_mpage[20U] =
  { 8U, 18U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U};
static u8 const def_control_mpage[12U] =
  { 10U, 10U, 2U, 0U,
        0U, 0U, 0U, 0U,
        255U, 255U, 0U, 30U};
static char const *ata_lpm_policy_names[4U] = { "max_performance", "max_performance", "medium_power", "min_power"};
static ssize_t ata_scsi_lpm_store(struct device *dev , struct device_attribute *attr ,
                                  char const *buf , size_t count )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ata_port *ap ;
  struct ata_port *tmp ;
  enum ata_lpm_policy policy ;
  unsigned long flags ;
  char const *name ;
  size_t tmp___0 ;
  int tmp___1 ;
  raw_spinlock_t *tmp___2 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff8c8UL;
  tmp = ata_shost_to_port(shost);
  ap = tmp;
  policy = 1;
  goto ldv_38262;
  ldv_38261:
  name = ata_lpm_policy_names[(unsigned int )policy];
  tmp___0 = strlen(name);
  tmp___1 = strncmp(name, buf, tmp___0);
  if (tmp___1 == 0) {
    goto ldv_38260;
  } else {
  }
  policy = (enum ata_lpm_policy )((unsigned int )policy + 1U);
  ldv_38262: ;
  if ((unsigned int )policy <= 3U) {
    goto ldv_38261;
  } else {
  }
  ldv_38260: ;
  if ((unsigned int )policy == 4U) {
    return (-22L);
  } else {
  }
  tmp___2 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___2);
  ap->target_lpm_policy = policy;
  ata_port_schedule_eh(ap);
  spin_unlock_irqrestore(ap->lock, flags);
  return ((ssize_t )count);
}
}
static ssize_t ata_scsi_lpm_show(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ata_port *ap ;
  struct ata_port *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff8c8UL;
  tmp = ata_shost_to_port(shost);
  ap = tmp;
  if ((unsigned int )ap->target_lpm_policy > 3U) {
    return (-22L);
  } else {
  }
  tmp___0 = snprintf(buf, 4096UL, "%s\n", ata_lpm_policy_names[(unsigned int )ap->target_lpm_policy]);
  return ((ssize_t )tmp___0);
}
}
struct device_attribute dev_attr_link_power_management_policy = {{"link_power_management_policy", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                          {(char)0}, {(char)0}, {(char)0},
                                                          {(char)0}, {(char)0}}}},
    & ata_scsi_lpm_show, & ata_scsi_lpm_store};
static ssize_t ata_scsi_park_show(struct device *device , struct device_attribute *attr ,
                                  char *buf )
{
  struct scsi_device *sdev ;
  struct device const *__mptr ;
  struct ata_port *ap ;
  struct ata_link *link ;
  struct ata_device *dev ;
  unsigned long flags ;
  unsigned long now ;
  unsigned int msecs ;
  int rc ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device const *)device;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe50UL;
  msecs = msecs;
  rc = 0;
  ap = ata_shost_to_port(sdev->host);
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  dev = ata_scsi_find_dev(ap, (struct scsi_device const *)sdev);
  if ((unsigned long )dev == (unsigned long )((struct ata_device *)0)) {
    rc = -19;
    goto unlock;
  } else {
  }
  if ((dev->flags & 131072UL) != 0UL) {
    rc = -95;
    goto unlock;
  } else {
  }
  link = dev->link;
  now = jiffies;
  if (((ap->pflags & 2U) != 0U && (link->eh_context.unloaded_mask & (unsigned int )(1 << (int )dev->devno)) != 0U) && (long )now - (long )dev->unpark_deadline < 0L) {
    msecs = jiffies_to_msecs(dev->unpark_deadline - now);
  } else {
    msecs = 0U;
  }
  unlock:
  spin_unlock_irq(ap->lock);
  if (rc == 0) {
    tmp___0 = snprintf(buf, 20UL, "%u\n", msecs);
    tmp___1 = tmp___0;
  } else {
    tmp___1 = rc;
  }
  return ((ssize_t )tmp___1);
}
}
static ssize_t ata_scsi_park_store(struct device *device , struct device_attribute *attr ,
                                   char const *buf , size_t len )
{
  struct scsi_device *sdev ;
  struct device const *__mptr ;
  struct ata_port *ap ;
  struct ata_device *dev ;
  long input ;
  unsigned long flags ;
  int rc ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  {
  __mptr = (struct device const *)device;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe50UL;
  rc = kstrtol(buf, 10U, & input);
  if (rc != 0 || input < -2L) {
    return (-22L);
  } else {
  }
  if (input > 30000L) {
    rc = -75;
    input = 30000L;
  } else {
  }
  ap = ata_shost_to_port(sdev->host);
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  dev = ata_scsi_find_dev(ap, (struct scsi_device const *)sdev);
  tmp___0 = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct ata_device *)0),
                             0L);
  if (tmp___0 != 0L) {
    rc = -19;
    goto unlock;
  } else {
  }
  if (dev->class != 1U) {
    rc = -95;
    goto unlock;
  } else {
  }
  if (input >= 0L) {
    if ((dev->flags & 131072UL) != 0UL) {
      rc = -95;
      goto unlock;
    } else {
    }
    dev->unpark_deadline = ata_deadline(jiffies, (unsigned long )input);
    (dev->link)->eh_info.dev_action[dev->devno] = (dev->link)->eh_info.dev_action[dev->devno] | 32U;
    ata_port_schedule_eh(ap);
    complete(& ap->park_req_pending);
  } else {
    switch (input) {
    case -1L:
    dev->flags = dev->flags & 0xfffffffffffdffffUL;
    goto ldv_38329;
    case -2L:
    dev->flags = dev->flags | 131072UL;
    goto ldv_38329;
    }
    ldv_38329: ;
  }
  unlock:
  spin_unlock_irqrestore(ap->lock, flags);
  return ((ssize_t )(rc != 0 ? (size_t )rc : len));
}
}
struct device_attribute dev_attr_unload_heads = {{"unload_heads", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ata_scsi_park_show, & ata_scsi_park_store};
static void ata_scsi_set_sense(struct scsi_cmnd *cmd , u8 sk , u8 asc , u8 ascq )
{
  {
  cmd->result = 134217730;
  scsi_build_sense_buffer(0, cmd->sense_buffer, (int )sk, (int )asc, (int )ascq);
  return;
}
}
static ssize_t ata_scsi_em_message_store(struct device *dev , struct device_attribute *attr ,
                                         char const *buf , size_t count )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ata_port *ap ;
  struct ata_port *tmp ;
  ssize_t tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff8c8UL;
  tmp = ata_shost_to_port(shost);
  ap = tmp;
  if ((unsigned long )(ap->ops)->em_store != (unsigned long )((ssize_t (*)(struct ata_port * ,
                                                                           char const * ,
                                                                           size_t ))0) && (ap->flags & 2097152UL) != 0UL) {
    tmp___0 = (*((ap->ops)->em_store))(ap, buf, count);
    return (tmp___0);
  } else {
  }
  return (-22L);
}
}
static ssize_t ata_scsi_em_message_show(struct device *dev , struct device_attribute *attr ,
                                        char *buf )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ata_port *ap ;
  struct ata_port *tmp ;
  ssize_t tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff8c8UL;
  tmp = ata_shost_to_port(shost);
  ap = tmp;
  if ((unsigned long )(ap->ops)->em_show != (unsigned long )((ssize_t (*)(struct ata_port * ,
                                                                          char * ))0) && (ap->flags & 2097152UL) != 0UL) {
    tmp___0 = (*((ap->ops)->em_show))(ap, buf);
    return (tmp___0);
  } else {
  }
  return (-22L);
}
}
struct device_attribute dev_attr_em_message = {{"em_message", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ata_scsi_em_message_show, & ata_scsi_em_message_store};
static ssize_t ata_scsi_em_message_type_show(struct device *dev , struct device_attribute *attr ,
                                             char *buf )
{
  struct Scsi_Host *shost ;
  struct device const *__mptr ;
  struct ata_port *ap ;
  struct ata_port *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  shost = (struct Scsi_Host *)__mptr + 0xfffffffffffff8c8UL;
  tmp = ata_shost_to_port(shost);
  ap = tmp;
  tmp___0 = snprintf(buf, 23UL, "%d\n", ap->em_message_type);
  return ((ssize_t )tmp___0);
}
}
struct device_attribute dev_attr_em_message_type = {{"em_message_type", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ata_scsi_em_message_type_show, 0};
static ssize_t ata_scsi_activity_show(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct scsi_device *sdev ;
  struct device const *__mptr ;
  struct ata_port *ap ;
  struct ata_port *tmp ;
  struct ata_device *atadev ;
  struct ata_device *tmp___0 ;
  ssize_t tmp___1 ;
  {
  __mptr = (struct device const *)dev;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe50UL;
  tmp = ata_shost_to_port(sdev->host);
  ap = tmp;
  tmp___0 = ata_scsi_find_dev(ap, (struct scsi_device const *)sdev);
  atadev = tmp___0;
  if (((unsigned long )atadev != (unsigned long )((struct ata_device *)0) && (unsigned long )(ap->ops)->sw_activity_show != (unsigned long )((ssize_t (*)(struct ata_device * ,
                                                                                                                                                          char * ))0)) && (ap->flags & 4194304UL) != 0UL) {
    tmp___1 = (*((ap->ops)->sw_activity_show))(atadev, buf);
    return (tmp___1);
  } else {
  }
  return (-22L);
}
}
static ssize_t ata_scsi_activity_store(struct device *dev , struct device_attribute *attr ,
                                       char const *buf , size_t count )
{
  struct scsi_device *sdev ;
  struct device const *__mptr ;
  struct ata_port *ap ;
  struct ata_port *tmp ;
  struct ata_device *atadev ;
  struct ata_device *tmp___0 ;
  enum sw_activity val ;
  int rc ;
  unsigned long tmp___1 ;
  ssize_t tmp___2 ;
  {
  __mptr = (struct device const *)dev;
  sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe50UL;
  tmp = ata_shost_to_port(sdev->host);
  ap = tmp;
  tmp___0 = ata_scsi_find_dev(ap, (struct scsi_device const *)sdev);
  atadev = tmp___0;
  if (((unsigned long )atadev != (unsigned long )((struct ata_device *)0) && (unsigned long )(ap->ops)->sw_activity_store != (unsigned long )((ssize_t (*)(struct ata_device * ,
                                                                                                                                                           enum sw_activity ))0)) && (ap->flags & 4194304UL) != 0UL) {
    tmp___1 = simple_strtoul(buf, 0, 0U);
    val = (enum sw_activity )tmp___1;
    switch ((unsigned int )val) {
    case 0U: ;
    case 1U: ;
    case 2U:
    tmp___2 = (*((ap->ops)->sw_activity_store))(atadev, val);
    rc = (int )tmp___2;
    if (rc == 0) {
      return ((ssize_t )count);
    } else {
      return ((ssize_t )rc);
    }
    }
  } else {
  }
  return (-22L);
}
}
struct device_attribute dev_attr_sw_activity = {{"sw_activity", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ata_scsi_activity_show, & ata_scsi_activity_store};
struct device_attribute *ata_common_sdev_attrs[2U] = { & dev_attr_unload_heads, 0};
static void ata_scsi_invalid_field(struct scsi_cmnd *cmd )
{
  {
  ata_scsi_set_sense(cmd, 5, 36, 0);
  (*(cmd->scsi_done))(cmd);
  return;
}
}
int ata_std_bios_param(struct scsi_device *sdev , struct block_device *bdev , sector_t capacity ,
                       int *geom )
{
  int _res ;
  {
  *geom = 255;
  *(geom + 1UL) = 63;
  _res = (int )(capacity % 16065UL);
  capacity = capacity / 16065UL;
  *(geom + 2UL) = (int )capacity;
  return (0);
}
}
void ata_scsi_unlock_native_capacity(struct scsi_device *sdev )
{
  struct ata_port *ap ;
  struct ata_port *tmp ;
  struct ata_device *dev ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = ata_shost_to_port(sdev->host);
  ap = tmp;
  tmp___0 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  dev = ata_scsi_find_dev(ap, (struct scsi_device const *)sdev);
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0) && dev->n_sectors < dev->n_native_sectors) {
    dev->flags = dev->flags | 262144UL;
    (dev->link)->eh_info.action = (dev->link)->eh_info.action | 6U;
    ata_port_schedule_eh(ap);
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  ata_port_wait_eh(ap);
  return;
}
}
static int ata_get_identity(struct ata_port *ap , struct scsi_device *sdev , void *arg )
{
  struct ata_device *dev ;
  struct ata_device *tmp ;
  u16 *dst ;
  char buf[40U] ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = ata_scsi_find_dev(ap, (struct scsi_device const *)sdev);
  dev = tmp;
  dst = (u16 *)arg;
  if ((unsigned long )dev == (unsigned long )((struct ata_device *)0)) {
    return (-42);
  } else {
  }
  tmp___0 = copy_to_user((void *)dst, (void const *)(& dev->ldv_38497.id), 512U);
  if (tmp___0 != 0) {
    return (-14);
  } else {
  }
  ata_id_string((u16 const *)(& dev->ldv_38497.id), (unsigned char *)(& buf), 27U,
                40U);
  tmp___1 = copy_to_user((void *)dst + 27U, (void const *)(& buf), 40U);
  if (tmp___1 != 0) {
    return (-14);
  } else {
  }
  ata_id_string((u16 const *)(& dev->ldv_38497.id), (unsigned char *)(& buf), 23U,
                8U);
  tmp___2 = copy_to_user((void *)dst + 23U, (void const *)(& buf), 8U);
  if (tmp___2 != 0) {
    return (-14);
  } else {
  }
  ata_id_string((u16 const *)(& dev->ldv_38497.id), (unsigned char *)(& buf), 10U,
                20U);
  tmp___3 = copy_to_user((void *)dst + 10U, (void const *)(& buf), 20U);
  if (tmp___3 != 0) {
    return (-14);
  } else {
  }
  return (0);
}
}
int ata_cmd_ioctl(struct scsi_device *scsidev , void *arg )
{
  int rc ;
  u8 scsi_cmd[16U] ;
  u8 args[4U] ;
  u8 *argbuf ;
  u8 *sensebuf ;
  int argsize ;
  enum dma_data_direction data_dir ;
  int cmd_result ;
  unsigned long tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  u8 *desc ;
  struct scsi_sense_hdr sshdr ;
  int tmp___2 ;
  int tmp___3 ;
  {
  rc = 0;
  argbuf = 0;
  sensebuf = 0;
  argsize = 0;
  if ((unsigned long )arg == (unsigned long )((void *)0)) {
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& args), (void const *)arg, 4UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  tmp___0 = kzalloc(96UL, 16U);
  sensebuf = (u8 *)tmp___0;
  if ((unsigned long )sensebuf == (unsigned long )((u8 *)0)) {
    return (-12);
  } else {
  }
  memset((void *)(& scsi_cmd), 0, 16UL);
  if ((unsigned int )args[3] != 0U) {
    argsize = (int )args[3] * 512;
    tmp___1 = kmalloc((size_t )argsize, 208U);
    argbuf = (u8 *)tmp___1;
    if ((unsigned long )argbuf == (unsigned long )((u8 *)0)) {
      rc = -12;
      goto error;
    } else {
    }
    scsi_cmd[1] = 8U;
    scsi_cmd[2] = 14U;
    data_dir = 2;
  } else {
    scsi_cmd[1] = 6U;
    scsi_cmd[2] = 32U;
    data_dir = 3;
  }
  scsi_cmd[0] = 133U;
  scsi_cmd[4] = args[2];
  if ((unsigned int )args[0] == 176U) {
    scsi_cmd[6] = args[3];
    scsi_cmd[8] = args[1];
    scsi_cmd[10] = 79U;
    scsi_cmd[12] = 194U;
  } else {
    scsi_cmd[6] = args[1];
  }
  scsi_cmd[14] = args[0];
  cmd_result = scsi_execute(scsidev, (unsigned char const *)(& scsi_cmd), (int )data_dir,
                            (void *)argbuf, (unsigned int )argsize, sensebuf, 2500,
                            5, 0, 0);
  if ((unsigned int )cmd_result >> 24 == 8U) {
    desc = sensebuf + 8UL;
    cmd_result = cmd_result & 16777215;
    if ((cmd_result & 2) != 0) {
      scsi_normalize_sense((u8 const *)sensebuf, 96, & sshdr);
      if (((unsigned int )sshdr.sense_key == 0U && (unsigned int )sshdr.asc == 0U) && (unsigned int )sshdr.ascq == 0U) {
        cmd_result = cmd_result & -3;
      } else {
      }
    } else {
    }
    if ((unsigned int )*sensebuf == 114U && (unsigned int )*desc == 9U) {
      args[0] = *(desc + 13UL);
      args[1] = *(desc + 3UL);
      args[2] = *(desc + 5UL);
      tmp___2 = copy_to_user(arg, (void const *)(& args), 4U);
      if (tmp___2 != 0) {
        rc = -14;
      } else {
      }
    } else {
    }
  } else {
  }
  if (cmd_result != 0) {
    rc = -5;
    goto error;
  } else {
  }
  if ((unsigned long )argbuf != (unsigned long )((u8 *)0)) {
    tmp___3 = copy_to_user(arg + 4UL, (void const *)argbuf, (unsigned int )argsize);
    if (tmp___3 != 0) {
      rc = -14;
    } else {
    }
  } else {
  }
  error:
  kfree((void const *)sensebuf);
  kfree((void const *)argbuf);
  return (rc);
}
}
int ata_task_ioctl(struct scsi_device *scsidev , void *arg )
{
  int rc ;
  u8 scsi_cmd[16U] ;
  u8 args[7U] ;
  u8 *sensebuf ;
  int cmd_result ;
  unsigned long tmp ;
  void *tmp___0 ;
  u8 *desc ;
  struct scsi_sense_hdr sshdr ;
  int tmp___1 ;
  {
  rc = 0;
  sensebuf = 0;
  if ((unsigned long )arg == (unsigned long )((void *)0)) {
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& args), (void const *)arg, 7UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  tmp___0 = kzalloc(96UL, 16U);
  sensebuf = (u8 *)tmp___0;
  if ((unsigned long )sensebuf == (unsigned long )((u8 *)0)) {
    return (-12);
  } else {
  }
  memset((void *)(& scsi_cmd), 0, 16UL);
  scsi_cmd[0] = 133U;
  scsi_cmd[1] = 6U;
  scsi_cmd[2] = 32U;
  scsi_cmd[4] = args[1];
  scsi_cmd[6] = args[2];
  scsi_cmd[8] = args[3];
  scsi_cmd[10] = args[4];
  scsi_cmd[12] = args[5];
  scsi_cmd[13] = (unsigned int )args[6] & 79U;
  scsi_cmd[14] = args[0];
  cmd_result = scsi_execute(scsidev, (unsigned char const *)(& scsi_cmd), 3, 0,
                            0U, sensebuf, 2500, 5, 0, 0);
  if ((unsigned int )cmd_result >> 24 == 8U) {
    desc = sensebuf + 8UL;
    cmd_result = cmd_result & 16777215;
    if ((cmd_result & 2) != 0) {
      scsi_normalize_sense((u8 const *)sensebuf, 96, & sshdr);
      if (((unsigned int )sshdr.sense_key == 0U && (unsigned int )sshdr.asc == 0U) && (unsigned int )sshdr.ascq == 0U) {
        cmd_result = cmd_result & -3;
      } else {
      }
    } else {
    }
    if ((unsigned int )*sensebuf == 114U && (unsigned int )*desc == 9U) {
      args[0] = *(desc + 13UL);
      args[1] = *(desc + 3UL);
      args[2] = *(desc + 5UL);
      args[3] = *(desc + 7UL);
      args[4] = *(desc + 9UL);
      args[5] = *(desc + 11UL);
      args[6] = *(desc + 12UL);
      tmp___1 = copy_to_user(arg, (void const *)(& args), 7U);
      if (tmp___1 != 0) {
        rc = -14;
      } else {
      }
    } else {
    }
  } else {
  }
  if (cmd_result != 0) {
    rc = -5;
    goto error;
  } else {
  }
  error:
  kfree((void const *)sensebuf);
  return (rc);
}
}
static int ata_ioc32(struct ata_port *ap )
{
  {
  if ((ap->flags & 128UL) != 0UL) {
    return (1);
  } else {
  }
  if ((ap->pflags & 1048576U) != 0U) {
    return (1);
  } else {
  }
  return (0);
}
}
int ata_sas_scsi_ioctl(struct ata_port *ap , struct scsi_device *scsidev , int cmd ,
                       void *arg )
{
  int val ;
  int rc ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  bool tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  {
  val = -22;
  rc = -22;
  switch (cmd) {
  case 777:
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  val = ata_ioc32(ap);
  spin_unlock_irqrestore(ap->lock, flags);
  tmp___0 = copy_to_user(arg, (void const *)(& val), 1U);
  if (tmp___0 != 0) {
    return (-14);
  } else {
  }
  return (0);
  case 804:
  val = (int )((long )arg);
  rc = 0;
  tmp___1 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  if ((ap->pflags & 2097152U) != 0U) {
    if (val != 0) {
      ap->pflags = ap->pflags | 1048576U;
    } else {
      ap->pflags = ap->pflags & 4293918719U;
    }
  } else {
    tmp___2 = ata_ioc32(ap);
    if (tmp___2 != val) {
      rc = -22;
    } else {
    }
  }
  spin_unlock_irqrestore(ap->lock, flags);
  return (rc);
  case 781:
  tmp___3 = ata_get_identity(ap, scsidev, arg);
  return (tmp___3);
  case 799:
  tmp___4 = capable(21);
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    return (-13);
  } else {
    tmp___6 = capable(17);
    if (tmp___6) {
      tmp___7 = 0;
    } else {
      tmp___7 = 1;
    }
    if (tmp___7) {
      return (-13);
    } else {
    }
  }
  tmp___8 = ata_cmd_ioctl(scsidev, arg);
  return (tmp___8);
  case 798:
  tmp___9 = capable(21);
  if (tmp___9) {
    tmp___10 = 0;
  } else {
    tmp___10 = 1;
  }
  if (tmp___10) {
    return (-13);
  } else {
    tmp___11 = capable(17);
    if (tmp___11) {
      tmp___12 = 0;
    } else {
      tmp___12 = 1;
    }
    if (tmp___12) {
      return (-13);
    } else {
    }
  }
  tmp___13 = ata_task_ioctl(scsidev, arg);
  return (tmp___13);
  default:
  rc = -25;
  goto ldv_38500;
  }
  ldv_38500: ;
  return (rc);
}
}
int ata_scsi_ioctl(struct scsi_device *scsidev , int cmd , void *arg )
{
  struct ata_port *tmp ;
  int tmp___0 ;
  {
  tmp = ata_shost_to_port(scsidev->host);
  tmp___0 = ata_sas_scsi_ioctl(tmp, scsidev, cmd, arg);
  return (tmp___0);
}
}
static struct ata_queued_cmd *ata_scsi_qc_new(struct ata_device *dev , struct scsi_cmnd *cmd )
{
  struct ata_queued_cmd *qc ;
  {
  qc = ata_qc_new_init(dev);
  if ((unsigned long )qc != (unsigned long )((struct ata_queued_cmd *)0)) {
    qc->scsicmd = cmd;
    qc->scsidone = cmd->scsi_done;
    qc->sg = scsi_sglist(cmd);
    qc->n_elem = scsi_sg_count(cmd);
  } else {
    cmd->result = 40;
    (*(cmd->scsi_done))(cmd);
  }
  return (qc);
}
}
static void ata_qc_set_pc_nbytes(struct ata_queued_cmd *qc )
{
  struct scsi_cmnd *scmd ;
  unsigned int tmp ;
  {
  scmd = qc->scsicmd;
  qc->extrabytes = (scmd->request)->extra_len;
  tmp = scsi_bufflen(scmd);
  qc->nbytes = tmp + qc->extrabytes;
  return;
}
}
static void ata_dump_status(unsigned int id , struct ata_taskfile *tf )
{
  u8 stat ;
  u8 err ;
  {
  stat = tf->command;
  err = tf->feature;
  printk("\fata%u: status=0x%02x { ", id, (int )stat);
  if ((int )((signed char )stat) < 0) {
    printk("Busy }\n");
  } else {
    if (((int )stat & 64) != 0) {
      printk("DriveReady ");
    } else {
    }
    if (((int )stat & 32) != 0) {
      printk("DeviceFault ");
    } else {
    }
    if (((int )stat & 16) != 0) {
      printk("SeekComplete ");
    } else {
    }
    if (((int )stat & 8) != 0) {
      printk("DataRequest ");
    } else {
    }
    if (((int )stat & 4) != 0) {
      printk("CorrectedError ");
    } else {
    }
    if (((int )stat & 2) != 0) {
      printk("Index ");
    } else {
    }
    if ((int )stat & 1) {
      printk("Error ");
    } else {
    }
    printk("}\n");
    if ((unsigned int )err != 0U) {
      printk("\fata%u: error=0x%02x { ", id, (int )err);
      if (((int )err & 4) != 0) {
        printk("DriveStatusError ");
      } else {
      }
      if ((int )((signed char )err) < 0) {
        if (((int )err & 4) != 0) {
          printk("BadCRC ");
        } else {
          printk("Sector ");
        }
      } else {
      }
      if (((int )err & 64) != 0) {
        printk("UncorrectableError ");
      } else {
      }
      if (((int )err & 16) != 0) {
        printk("SectorIdNotFound ");
      } else {
      }
      if (((int )err & 2) != 0) {
        printk("TrackZeroNotFound ");
      } else {
      }
      if ((int )err & 1) {
        printk("AddrMarkNotFound ");
      } else {
      }
      printk("}\n");
    } else {
    }
  }
  return;
}
}
static void ata_to_sense_error(unsigned int id , u8 drv_stat , u8 drv_err , u8 *sk ,
                               u8 *asc , u8 *ascq , int verbose )
{
  int i ;
  unsigned char sense_table[15U][4U] ;
  unsigned char stat_table[5U][4U] ;
  {
  sense_table[0][0] = 209U;
  sense_table[0][1] = 11U;
  sense_table[0][2] = 0U;
  sense_table[0][3] = 0U;
  sense_table[1][0] = 208U;
  sense_table[1][1] = 11U;
  sense_table[1][2] = 0U;
  sense_table[1][3] = 0U;
  sense_table[2][0] = 97U;
  sense_table[2][1] = 4U;
  sense_table[2][2] = 0U;
  sense_table[2][3] = 0U;
  sense_table[3][0] = 132U;
  sense_table[3][1] = 11U;
  sense_table[3][2] = 71U;
  sense_table[3][3] = 0U;
  sense_table[4][0] = 55U;
  sense_table[4][1] = 2U;
  sense_table[4][2] = 4U;
  sense_table[4][3] = 0U;
  sense_table[5][0] = 9U;
  sense_table[5][1] = 2U;
  sense_table[5][2] = 4U;
  sense_table[5][3] = 0U;
  sense_table[6][0] = 1U;
  sense_table[6][1] = 3U;
  sense_table[6][2] = 19U;
  sense_table[6][3] = 0U;
  sense_table[7][0] = 2U;
  sense_table[7][1] = 4U;
  sense_table[7][2] = 0U;
  sense_table[7][3] = 0U;
  sense_table[8][0] = 4U;
  sense_table[8][1] = 11U;
  sense_table[8][2] = 0U;
  sense_table[8][3] = 0U;
  sense_table[9][0] = 8U;
  sense_table[9][1] = 2U;
  sense_table[9][2] = 4U;
  sense_table[9][3] = 0U;
  sense_table[10][0] = 16U;
  sense_table[10][1] = 11U;
  sense_table[10][2] = 20U;
  sense_table[10][3] = 0U;
  sense_table[11][0] = 8U;
  sense_table[11][1] = 2U;
  sense_table[11][2] = 4U;
  sense_table[11][3] = 0U;
  sense_table[12][0] = 64U;
  sense_table[12][1] = 3U;
  sense_table[12][2] = 17U;
  sense_table[12][3] = 4U;
  sense_table[13][0] = 128U;
  sense_table[13][1] = 3U;
  sense_table[13][2] = 17U;
  sense_table[13][3] = 4U;
  sense_table[14][0] = 255U;
  sense_table[14][1] = 255U;
  sense_table[14][2] = 255U;
  sense_table[14][3] = 255U;
  stat_table[0][0] = 128U;
  stat_table[0][1] = 11U;
  stat_table[0][2] = 71U;
  stat_table[0][3] = 0U;
  stat_table[1][0] = 32U;
  stat_table[1][1] = 4U;
  stat_table[1][2] = 0U;
  stat_table[1][3] = 0U;
  stat_table[2][0] = 8U;
  stat_table[2][1] = 11U;
  stat_table[2][2] = 71U;
  stat_table[2][3] = 0U;
  stat_table[3][0] = 4U;
  stat_table[3][1] = 1U;
  stat_table[3][2] = 17U;
  stat_table[3][3] = 0U;
  stat_table[4][0] = 255U;
  stat_table[4][1] = 255U;
  stat_table[4][2] = 255U;
  stat_table[4][3] = 255U;
  if ((int )((signed char )drv_stat) < 0) {
    drv_err = 0U;
  } else {
  }
  if ((unsigned int )drv_err != 0U) {
    i = 0;
    goto ldv_38552;
    ldv_38551: ;
    if (((int )sense_table[i][0] & (int )drv_err) == (int )sense_table[i][0]) {
      *sk = sense_table[i][1];
      *asc = sense_table[i][2];
      *ascq = sense_table[i][3];
      goto translate_done;
    } else {
    }
    i = i + 1;
    ldv_38552: ;
    if ((unsigned int )sense_table[i][0] != 255U) {
      goto ldv_38551;
    } else {
    }
    if (verbose != 0) {
      printk("\fata%u: no sense translation for error 0x%02x\n", id, (int )drv_err);
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_38555;
  ldv_38554: ;
  if ((unsigned int )((int )stat_table[i][0] & (int )drv_stat) != 0U) {
    *sk = stat_table[i][1];
    *asc = stat_table[i][2];
    *ascq = stat_table[i][3];
    goto translate_done;
  } else {
  }
  i = i + 1;
  ldv_38555: ;
  if ((unsigned int )stat_table[i][0] != 255U) {
    goto ldv_38554;
  } else {
  }
  if (verbose != 0) {
    printk("\fata%u: no sense translation for status: 0x%02x\n", id, (int )drv_stat);
  } else {
  }
  *sk = 11U;
  *asc = 0U;
  *ascq = 0U;
  translate_done: ;
  if (verbose != 0) {
    printk("\vata%u: translated ATA stat/err 0x%02x/%02x to SCSI SK/ASC/ASCQ 0x%x/%02x/%02x\n",
           id, (int )drv_stat, (int )drv_err, (int )*sk, (int )*asc, (int )*ascq);
  } else {
  }
  return;
}
}
static void ata_gen_passthru_sense(struct ata_queued_cmd *qc )
{
  struct scsi_cmnd *cmd ;
  struct ata_taskfile *tf ;
  unsigned char *sb ;
  unsigned char *desc ;
  int verbose ;
  {
  cmd = qc->scsicmd;
  tf = & qc->result_tf;
  sb = cmd->sense_buffer;
  desc = sb + 8UL;
  verbose = (unsigned long )((qc->ap)->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0);
  memset((void *)sb, 0, 96UL);
  cmd->result = 134217730;
  if (qc->err_mask != 0U || ((int )tf->command & 169) != 0) {
    ata_to_sense_error((qc->ap)->print_id, (int )tf->command, (int )tf->feature, sb + 1U,
                       sb + 2U, sb + 3U, verbose);
    *(sb + 1UL) = (unsigned int )*(sb + 1UL) & 15U;
  } else {
  }
  *sb = 114U;
  *desc = 9U;
  *(sb + 7UL) = 14U;
  *(desc + 1UL) = 12U;
  *(desc + 2UL) = 0U;
  *(desc + 3UL) = tf->feature;
  *(desc + 5UL) = tf->nsect;
  *(desc + 7UL) = tf->lbal;
  *(desc + 9UL) = tf->lbam;
  *(desc + 11UL) = tf->lbah;
  *(desc + 12UL) = tf->device;
  *(desc + 13UL) = tf->command;
  if ((int )tf->flags & 1) {
    *(desc + 2UL) = (unsigned int )*(desc + 2UL) | 1U;
    *(desc + 4UL) = tf->hob_nsect;
    *(desc + 6UL) = tf->hob_lbal;
    *(desc + 8UL) = tf->hob_lbam;
    *(desc + 10UL) = tf->hob_lbah;
  } else {
  }
  return;
}
}
static void ata_gen_ata_sense(struct ata_queued_cmd *qc )
{
  struct ata_device *dev ;
  struct scsi_cmnd *cmd ;
  struct ata_taskfile *tf ;
  unsigned char *sb ;
  unsigned char *desc ;
  int verbose ;
  u64 block ;
  {
  dev = qc->dev;
  cmd = qc->scsicmd;
  tf = & qc->result_tf;
  sb = cmd->sense_buffer;
  desc = sb + 8UL;
  verbose = (unsigned long )((qc->ap)->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0);
  memset((void *)sb, 0, 96UL);
  cmd->result = 134217730;
  *sb = 114U;
  if (qc->err_mask != 0U || ((int )tf->command & 169) != 0) {
    ata_to_sense_error((qc->ap)->print_id, (int )tf->command, (int )tf->feature, sb + 1U,
                       sb + 2U, sb + 3U, verbose);
    *(sb + 1UL) = (unsigned int )*(sb + 1UL) & 15U;
  } else {
  }
  block = ata_tf_read_block(& qc->result_tf, dev);
  *(sb + 7UL) = 12U;
  *desc = 0U;
  *(desc + 1UL) = 10U;
  *(desc + 2UL) = (unsigned int )*(desc + 2UL) | 128U;
  *(desc + 6UL) = (unsigned char )(block >> 40);
  *(desc + 7UL) = (unsigned char )(block >> 32);
  *(desc + 8UL) = (unsigned char )(block >> 24);
  *(desc + 9UL) = (unsigned char )(block >> 16);
  *(desc + 10UL) = (unsigned char )(block >> 8);
  *(desc + 11UL) = (unsigned char )block;
  return;
}
}
static void ata_scsi_sdev_config(struct scsi_device *sdev )
{
  {
  sdev->use_10_for_rw = 1U;
  sdev->use_10_for_ms = 1U;
  sdev->no_report_opcodes = 1U;
  sdev->no_write_same = 1U;
  sdev->max_device_blocked = 1U;
  return;
}
}
static int atapi_drain_needed(struct request *rq )
{
  long tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv__builtin_expect((unsigned int )rq->cmd_type != 2U, 1L);
  if (tmp != 0L) {
    return (0);
  } else {
  }
  tmp___0 = blk_rq_bytes((struct request const *)rq);
  if (tmp___0 == 0U || (int )rq->cmd_flags & 1) {
    return (0);
  } else {
  }
  tmp___1 = atapi_cmd_type((int )*(rq->cmd));
  return (tmp___1 == 4);
}
}
static int ata_scsi_dev_config(struct scsi_device *sdev , struct ata_device *dev )
{
  struct request_queue *q ;
  bool tmp ;
  int tmp___0 ;
  void *buf ;
  int depth ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  {
  q = sdev->request_queue;
  tmp = ata_id_has_unload((u16 const *)(& dev->ldv_38497.id));
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    dev->flags = dev->flags | 131072UL;
  } else {
  }
  blk_queue_max_hw_sectors(q, dev->max_sectors);
  if (dev->class == 3U) {
    sdev->sector_size = 512U;
    blk_queue_update_dma_pad(q, 3U);
    buf = kmalloc(16384UL, q->bounce_gfp | 208U);
    if ((unsigned long )buf == (unsigned long )((void *)0)) {
      ata_dev_printk((struct ata_device const *)dev, "\v", "drain buffer allocation failed\n");
      return (-12);
    } else {
    }
    blk_queue_dma_drain(q, & atapi_drain_needed, buf, 16384U);
  } else {
    sdev->sector_size = ata_id_logical_sector_size((u16 const *)(& dev->ldv_38497.id));
    sdev->manage_start_stop = 1U;
  }
  if (sdev->sector_size > 4096U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "sector_size=%u > PAGE_SIZE, PIO may malfunction\n",
                   sdev->sector_size);
  } else {
  }
  blk_queue_update_dma_alignment(q, (int )(sdev->sector_size - 1U));
  if ((dev->flags & 128UL) != 0UL) {
    set_bit(1U, (unsigned long volatile *)(& sdev->supported_events));
  } else {
  }
  if ((dev->flags & 8UL) != 0UL) {
    _min1 = (sdev->host)->can_queue;
    _min2 = ((int )dev->ldv_38497.id[75] & 31) + 1;
    depth = _min1 < _min2 ? _min1 : _min2;
    _min1___0 = 31;
    _min2___0 = depth;
    depth = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    scsi_adjust_queue_depth(sdev, 32, depth);
  } else {
  }
  blk_queue_flush_queueable(q, 0);
  dev->sdev = sdev;
  return (0);
}
}
int ata_scsi_slave_config(struct scsi_device *sdev )
{
  struct ata_port *ap ;
  struct ata_port *tmp ;
  struct ata_device *dev ;
  struct ata_device *tmp___0 ;
  int rc ;
  {
  tmp = ata_shost_to_port(sdev->host);
  ap = tmp;
  tmp___0 = __ata_scsi_find_dev(ap, (struct scsi_device const *)sdev);
  dev = tmp___0;
  rc = 0;
  ata_scsi_sdev_config(sdev);
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    rc = ata_scsi_dev_config(sdev, dev);
  } else {
  }
  return (rc);
}
}
void ata_scsi_slave_destroy(struct scsi_device *sdev )
{
  struct ata_port *ap ;
  struct ata_port *tmp ;
  struct request_queue *q ;
  unsigned long flags ;
  struct ata_device *dev ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = ata_shost_to_port(sdev->host);
  ap = tmp;
  q = sdev->request_queue;
  if ((unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0)) {
    return;
  } else {
  }
  tmp___0 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  dev = __ata_scsi_find_dev(ap, (struct scsi_device const *)sdev);
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0) && (unsigned long )dev->sdev != (unsigned long )((struct scsi_device *)0)) {
    dev->sdev = 0;
    dev->flags = dev->flags | 16777216UL;
    ata_port_schedule_eh(ap);
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  kfree((void const *)q->dma_drain_buffer);
  q->dma_drain_buffer = 0;
  q->dma_drain_size = 0U;
  return;
}
}
int __ata_change_queue_depth(struct ata_port *ap , struct scsi_device *sdev , int queue_depth ,
                             int reason )
{
  struct ata_device *dev ;
  unsigned long flags ;
  unsigned int tmp ;
  raw_spinlock_t *tmp___0 ;
  int tmp___1 ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  int _min1___1 ;
  int _min2___1 ;
  {
  if (reason != 0) {
    return (-95);
  } else {
  }
  if (queue_depth <= 0 || (int )sdev->queue_depth == queue_depth) {
    return ((int )sdev->queue_depth);
  } else {
  }
  dev = ata_scsi_find_dev(ap, (struct scsi_device const *)sdev);
  if ((unsigned long )dev == (unsigned long )((struct ata_device *)0)) {
    return ((int )sdev->queue_depth);
  } else {
    tmp = ata_dev_enabled((struct ata_device const *)dev);
    if (tmp == 0U) {
      return ((int )sdev->queue_depth);
    } else {
    }
  }
  tmp___0 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  dev->flags = dev->flags & 0xffffffffffffdfffUL;
  if (queue_depth == 1) {
    dev->flags = dev->flags | 8192UL;
    queue_depth = 1;
  } else {
    tmp___1 = ata_ncq_enabled(dev);
    if (tmp___1 == 0) {
      dev->flags = dev->flags | 8192UL;
      queue_depth = 1;
    } else {
    }
  }
  spin_unlock_irqrestore(ap->lock, flags);
  _min1 = queue_depth;
  _min2 = (sdev->host)->can_queue;
  queue_depth = _min1 < _min2 ? _min1 : _min2;
  _min1___0 = queue_depth;
  _min2___0 = ((int )dev->ldv_38497.id[75] & 31) + 1;
  queue_depth = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  _min1___1 = queue_depth;
  _min2___1 = 31;
  queue_depth = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
  if ((int )sdev->queue_depth == queue_depth) {
    return (-22);
  } else {
  }
  scsi_adjust_queue_depth(sdev, 32, queue_depth);
  return (queue_depth);
}
}
int ata_scsi_change_queue_depth(struct scsi_device *sdev , int queue_depth , int reason )
{
  struct ata_port *ap ;
  struct ata_port *tmp ;
  int tmp___0 ;
  {
  tmp = ata_shost_to_port(sdev->host);
  ap = tmp;
  tmp___0 = __ata_change_queue_depth(ap, sdev, queue_depth, reason);
  return (tmp___0);
}
}
static unsigned int ata_scsi_start_stop_xlat(struct ata_queued_cmd *qc )
{
  struct scsi_cmnd *scmd ;
  struct ata_taskfile *tf ;
  u8 const *cdb ;
  bool tmp ;
  {
  scmd = qc->scsicmd;
  tf = & qc->tf;
  cdb = (u8 const *)scmd->cmnd;
  if ((unsigned int )scmd->cmd_len <= 4U) {
    goto invalid_fld;
  } else {
  }
  tf->flags = tf->flags | 6UL;
  tf->protocol = 1U;
  if (((int )*(cdb + 4UL) & 2) != 0) {
    goto invalid_fld;
  } else {
  }
  if ((((int )((unsigned char )*(cdb + 4UL)) >> 4) & 15) != 0) {
    goto invalid_fld;
  } else {
  }
  if ((int )*(cdb + 4UL) & 1) {
    tf->nsect = 1U;
    if ((int )(qc->dev)->flags & 1) {
      tf->flags = tf->flags | 16UL;
      tf->lbah = 0U;
      tf->lbam = 0U;
      tf->lbal = 0U;
      tf->device = (u8 )((unsigned int )tf->device | 64U);
    } else {
      tf->lbal = 1U;
      tf->lbam = 0U;
      tf->lbah = 0U;
    }
    tf->command = 64U;
  } else {
    if (((qc->ap)->flags & 2048UL) != 0UL && (unsigned int )system_state == 3U) {
      goto skip;
    } else {
    }
    if (((qc->ap)->flags & 4096UL) != 0UL) {
      tmp = system_entering_hibernation();
      if ((int )tmp) {
        goto skip;
      } else {
      }
    } else {
    }
    tf->command = 224U;
  }
  return (0U);
  invalid_fld:
  ata_scsi_set_sense(scmd, 5, 36, 0);
  return (1U);
  skip:
  scmd->result = 0;
  return (1U);
}
}
static unsigned int ata_scsi_flush_xlat(struct ata_queued_cmd *qc )
{
  struct ata_taskfile *tf ;
  {
  tf = & qc->tf;
  tf->flags = tf->flags | 4UL;
  tf->protocol = 1U;
  if (((qc->dev)->flags & 16UL) != 0UL) {
    tf->command = 234U;
  } else {
    tf->command = 231U;
  }
  qc->flags = qc->flags | 8UL;
  return (0U);
}
}
static void scsi_6_lba_len(u8 const *cdb , u64 *plba , u32 *plen )
{
  u64 lba ;
  u32 len ;
  {
  lba = 0ULL;
  lba = (((unsigned long long )*(cdb + 1UL) & 31ULL) << 16) | lba;
  lba = ((unsigned long long )*(cdb + 2UL) << 8) | lba;
  lba = (unsigned long long )*(cdb + 3UL) | lba;
  len = (u32 )*(cdb + 4UL);
  *plba = lba;
  *plen = len;
  return;
}
}
static void scsi_10_lba_len(u8 const *cdb , u64 *plba , u32 *plen )
{
  u64 lba ;
  u32 len ;
  {
  lba = 0ULL;
  len = 0U;
  lba = ((unsigned long long )*(cdb + 2UL) << 24) | lba;
  lba = ((unsigned long long )*(cdb + 3UL) << 16) | lba;
  lba = ((unsigned long long )*(cdb + 4UL) << 8) | lba;
  lba = (unsigned long long )*(cdb + 5UL) | lba;
  len = ((unsigned int )*(cdb + 7UL) << 8) | len;
  len = (u32 )*(cdb + 8UL) | len;
  *plba = lba;
  *plen = len;
  return;
}
}
static void scsi_16_lba_len(u8 const *cdb , u64 *plba , u32 *plen )
{
  u64 lba ;
  u32 len ;
  {
  lba = 0ULL;
  len = 0U;
  lba = ((unsigned long long )*(cdb + 2UL) << 56) | lba;
  lba = ((unsigned long long )*(cdb + 3UL) << 48) | lba;
  lba = ((unsigned long long )*(cdb + 4UL) << 40) | lba;
  lba = ((unsigned long long )*(cdb + 5UL) << 32) | lba;
  lba = ((unsigned long long )*(cdb + 6UL) << 24) | lba;
  lba = ((unsigned long long )*(cdb + 7UL) << 16) | lba;
  lba = ((unsigned long long )*(cdb + 8UL) << 8) | lba;
  lba = (unsigned long long )*(cdb + 9UL) | lba;
  len = ((unsigned int )*(cdb + 10UL) << 24) | len;
  len = ((unsigned int )*(cdb + 11UL) << 16) | len;
  len = ((unsigned int )*(cdb + 12UL) << 8) | len;
  len = (u32 )*(cdb + 13UL) | len;
  *plba = lba;
  *plen = len;
  return;
}
}
static unsigned int ata_scsi_verify_xlat(struct ata_queued_cmd *qc )
{
  struct scsi_cmnd *scmd ;
  struct ata_taskfile *tf ;
  struct ata_device *dev ;
  u64 dev_sectors ;
  u8 const *cdb ;
  u64 block ;
  u32 n_block ;
  bool tmp ;
  bool tmp___0 ;
  u32 sect ;
  u32 head ;
  u32 cyl ;
  u32 track ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  scmd = qc->scsicmd;
  tf = & qc->tf;
  dev = qc->dev;
  dev_sectors = (qc->dev)->n_sectors;
  cdb = (u8 const *)scmd->cmnd;
  tf->flags = tf->flags | 6UL;
  tf->protocol = 1U;
  if ((unsigned int )((unsigned char )*cdb) == 47U) {
    if ((unsigned int )scmd->cmd_len <= 9U) {
      goto invalid_fld;
    } else {
    }
    scsi_10_lba_len(cdb, & block, & n_block);
  } else
  if ((unsigned int )((unsigned char )*cdb) == 143U) {
    if ((unsigned int )scmd->cmd_len <= 15U) {
      goto invalid_fld;
    } else {
    }
    scsi_16_lba_len(cdb, & block, & n_block);
  } else {
    goto invalid_fld;
  }
  if (n_block == 0U) {
    goto nothing_to_do;
  } else {
  }
  if (block >= dev_sectors) {
    goto out_of_range;
  } else {
  }
  if ((u64 )n_block + block > dev_sectors) {
    goto out_of_range;
  } else {
  }
  if ((int )dev->flags & 1) {
    tf->flags = tf->flags | 16UL;
    tmp___0 = lba_28_ok(block, n_block);
    if ((int )tmp___0) {
      tf->command = 64U;
      tf->device = (unsigned int )tf->device | ((unsigned int )((u8 )(block >> 24)) & 15U);
    } else {
      tmp = lba_48_ok(block, n_block);
      if ((int )tmp) {
        if ((dev->flags & 2UL) == 0UL) {
          goto out_of_range;
        } else {
        }
        tf->flags = tf->flags | 1UL;
        tf->command = 66U;
        tf->hob_nsect = (u8 )(n_block >> 8);
        tf->hob_lbah = (u8 )(block >> 40);
        tf->hob_lbam = (u8 )(block >> 32);
        tf->hob_lbal = (u8 )(block >> 24);
      } else {
        goto out_of_range;
      }
    }
    tf->nsect = (u8 )n_block;
    tf->lbah = (u8 )(block >> 16);
    tf->lbam = (u8 )(block >> 8);
    tf->lbal = (u8 )block;
    tf->device = (u8 )((unsigned int )tf->device | 64U);
  } else {
    tmp___1 = lba_28_ok(block, n_block);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      goto out_of_range;
    } else {
    }
    track = (unsigned int )block / (unsigned int )dev->sectors;
    cyl = track / (u32 )dev->heads;
    head = track % (u32 )dev->heads;
    sect = (unsigned int )block % (unsigned int )dev->sectors + 1U;
    if (((cyl >> 16 != 0U || head >> 4 != 0U) || sect >> 8 != 0U) || sect == 0U) {
      goto out_of_range;
    } else {
    }
    tf->command = 64U;
    tf->nsect = (u8 )n_block;
    tf->lbal = (u8 )sect;
    tf->lbam = (u8 )cyl;
    tf->lbah = (u8 )(cyl >> 8);
    tf->device = (int )tf->device | (int )((u8 )head);
  }
  return (0U);
  invalid_fld:
  ata_scsi_set_sense(scmd, 5, 36, 0);
  return (1U);
  out_of_range:
  ata_scsi_set_sense(scmd, 5, 33, 0);
  return (1U);
  nothing_to_do:
  scmd->result = 0;
  return (1U);
}
}
static unsigned int ata_scsi_rw_xlat(struct ata_queued_cmd *qc )
{
  struct scsi_cmnd *scmd ;
  u8 const *cdb ;
  unsigned int tf_flags ;
  u64 block ;
  u32 n_block ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  scmd = qc->scsicmd;
  cdb = (u8 const *)scmd->cmnd;
  tf_flags = 0U;
  if (((unsigned int )((unsigned char )*cdb) == 42U || (unsigned int )((unsigned char )*cdb) == 10U) || (unsigned int )((unsigned char )*cdb) == 138U) {
    tf_flags = tf_flags | 8U;
  } else {
  }
  switch ((int )*cdb) {
  case 40: ;
  case 42:
  tmp = ldv__builtin_expect((unsigned int )scmd->cmd_len <= 9U, 0L);
  if (tmp != 0L) {
    goto invalid_fld;
  } else {
  }
  scsi_10_lba_len(cdb, & block, & n_block);
  if (((int )*(cdb + 1UL) & 8) != 0) {
    tf_flags = tf_flags | 32U;
  } else {
  }
  goto ldv_38698;
  case 8: ;
  case 10:
  tmp___0 = ldv__builtin_expect((unsigned int )scmd->cmd_len <= 5U, 0L);
  if (tmp___0 != 0L) {
    goto invalid_fld;
  } else {
  }
  scsi_6_lba_len(cdb, & block, & n_block);
  if (n_block == 0U) {
    n_block = 256U;
  } else {
  }
  goto ldv_38698;
  case 136: ;
  case 138:
  tmp___1 = ldv__builtin_expect((unsigned int )scmd->cmd_len <= 15U, 0L);
  if (tmp___1 != 0L) {
    goto invalid_fld;
  } else {
  }
  scsi_16_lba_len(cdb, & block, & n_block);
  if (((int )*(cdb + 1UL) & 8) != 0) {
    tf_flags = tf_flags | 32U;
  } else {
  }
  goto ldv_38698;
  default: ;
  goto invalid_fld;
  }
  ldv_38698: ;
  if (n_block == 0U) {
    goto nothing_to_do;
  } else {
  }
  qc->flags = qc->flags | 8UL;
  qc->nbytes = (scmd->device)->sector_size * n_block;
  rc = ata_build_rw_tf(& qc->tf, qc->dev, block, n_block, tf_flags, qc->tag);
  tmp___2 = ldv__builtin_expect(rc == 0, 1L);
  if (tmp___2 != 0L) {
    return (0U);
  } else {
  }
  if (rc == -34) {
    goto out_of_range;
  } else {
  }
  invalid_fld:
  ata_scsi_set_sense(scmd, 5, 36, 0);
  return (1U);
  out_of_range:
  ata_scsi_set_sense(scmd, 5, 33, 0);
  return (1U);
  nothing_to_do:
  scmd->result = 0;
  return (1U);
}
}
static void ata_scsi_qc_complete(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct scsi_cmnd *cmd ;
  u8 *cdb ;
  int need_sense ;
  {
  ap = qc->ap;
  cmd = qc->scsicmd;
  cdb = cmd->cmnd;
  need_sense = qc->err_mask != 0U;
  if (((unsigned int )*cdb == 133U || (unsigned int )*cdb == 161U) && (((int )*(cdb + 2UL) & 32) != 0 || need_sense != 0)) {
    ata_gen_passthru_sense(qc);
  } else
  if (need_sense == 0) {
    cmd->result = 0;
  } else {
    ata_gen_ata_sense(qc);
  }
  if (need_sense != 0 && (unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0)) {
    ata_dump_status(ap->print_id, & qc->result_tf);
  } else {
  }
  (*(qc->scsidone))(cmd);
  ata_qc_free(qc);
  return;
}
}
static int ata_scsi_translate(struct ata_device *dev , struct scsi_cmnd *cmd , unsigned int (*xlat_func)(struct ata_queued_cmd * ) )
{
  struct ata_port *ap ;
  struct ata_queued_cmd *qc ;
  int rc ;
  unsigned int tmp ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  struct scatterlist *tmp___2 ;
  unsigned int tmp___3 ;
  {
  ap = (dev->link)->ap;
  qc = ata_scsi_qc_new(dev, cmd);
  if ((unsigned long )qc == (unsigned long )((struct ata_queued_cmd *)0)) {
    goto err_mem;
  } else {
  }
  if ((unsigned int )cmd->sc_data_direction == 2U || (unsigned int )cmd->sc_data_direction == 1U) {
    tmp = scsi_bufflen(cmd);
    tmp___0 = ldv__builtin_expect(tmp == 0U, 0L);
    if (tmp___0 != 0L) {
      ata_dev_printk((struct ata_device const *)dev, "\f", "WARNING: zero len r/w req\n");
      goto err_did;
    } else {
    }
    tmp___1 = scsi_sg_count(cmd);
    tmp___2 = scsi_sglist(cmd);
    ata_sg_init(qc, tmp___2, tmp___1);
    qc->dma_dir = (int )cmd->sc_data_direction;
  } else {
  }
  qc->complete_fn = & ata_scsi_qc_complete;
  tmp___3 = (*xlat_func)(qc);
  if (tmp___3 != 0U) {
    goto early_finish;
  } else {
  }
  if ((unsigned long )(ap->ops)->qc_defer != (unsigned long )((int (*)(struct ata_queued_cmd * ))0)) {
    rc = (*((ap->ops)->qc_defer))(qc);
    if (rc != 0) {
      goto defer;
    } else {
    }
  } else {
  }
  ata_qc_issue(qc);
  return (0);
  early_finish:
  ata_qc_free(qc);
  (*(cmd->scsi_done))(cmd);
  return (0);
  err_did:
  ata_qc_free(qc);
  cmd->result = 458752;
  (*(cmd->scsi_done))(cmd);
  err_mem: ;
  return (0);
  defer:
  ata_qc_free(qc);
  if (rc == 1) {
    return (4182);
  } else {
    return (4181);
  }
}
}
static void *ata_scsi_rbuf_get(struct scsi_cmnd *cmd , bool copy_in , unsigned long *flags )
{
  raw_spinlock_t *tmp ;
  unsigned int tmp___0 ;
  struct scatterlist *tmp___1 ;
  {
  tmp = spinlock_check(& ata_scsi_rbuf_lock);
  *flags = _raw_spin_lock_irqsave(tmp);
  memset((void *)(& ata_scsi_rbuf), 0, 4096UL);
  if ((int )copy_in) {
    tmp___0 = scsi_sg_count(cmd);
    tmp___1 = scsi_sglist(cmd);
    sg_copy_to_buffer(tmp___1, tmp___0, (void *)(& ata_scsi_rbuf), 4096UL);
  } else {
  }
  return ((void *)(& ata_scsi_rbuf));
}
}
__inline static void ata_scsi_rbuf_put(struct scsi_cmnd *cmd , bool copy_out , unsigned long *flags )
{
  unsigned int tmp ;
  struct scatterlist *tmp___0 ;
  {
  if ((int )copy_out) {
    tmp = scsi_sg_count(cmd);
    tmp___0 = scsi_sglist(cmd);
    sg_copy_from_buffer(tmp___0, tmp, (void *)(& ata_scsi_rbuf), 4096UL);
  } else {
  }
  spin_unlock_irqrestore(& ata_scsi_rbuf_lock, *flags);
  return;
}
}
static void ata_scsi_rbuf_fill(struct ata_scsi_args *args , unsigned int (*actor)(struct ata_scsi_args * ,
                                                                                  u8 * ) )
{
  u8 *rbuf ;
  unsigned int rc ;
  struct scsi_cmnd *cmd ;
  unsigned long flags ;
  void *tmp ;
  {
  cmd = args->cmd;
  tmp = ata_scsi_rbuf_get(cmd, 0, & flags);
  rbuf = (u8 *)tmp;
  rc = (*actor)(args, rbuf);
  ata_scsi_rbuf_put(cmd, rc == 0U, & flags);
  if (rc == 0U) {
    cmd->result = 0;
  } else {
  }
  (*(args->done))(cmd);
  return;
}
}
static unsigned int ata_scsiop_inq_std(struct ata_scsi_args *args , u8 *rbuf )
{
  u8 versions[5U] ;
  u8 hdr[5U] ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  size_t __len___2 ;
  void *__ret___2 ;
  {
  versions[0] = 96U;
  versions[1] = 3U;
  versions[2] = 32U;
  versions[3] = 2U;
  versions[4] = 96U;
  hdr[0] = 0U;
  hdr[1] = 0U;
  hdr[2] = 5U;
  hdr[3] = 2U;
  hdr[4] = 91U;
  if (((int )*(args->id) & 128) != 0) {
    hdr[1] = (u8 )((unsigned int )hdr[1] | 128U);
  } else {
  }
  __len = 5UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)rbuf, (void const *)(& hdr), __len);
  } else {
    __ret = memcpy((void *)rbuf, (void const *)(& hdr), __len);
  }
  __len___0 = 8UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)rbuf + 8U, (void const *)"ATA     ", __len___0);
  } else {
    __ret___0 = memcpy((void *)rbuf + 8U, (void const *)"ATA     ", __len___0);
  }
  ata_id_string((u16 const *)args->id, rbuf + 16U, 27U, 16U);
  ata_id_string((u16 const *)args->id, rbuf + 32U, 23U, 4U);
  if ((unsigned int )*(rbuf + 32UL) == 0U || (unsigned int )*(rbuf + 32UL) == 32U) {
    __len___1 = 4UL;
    if (__len___1 > 63UL) {
      __ret___1 = memcpy((void *)rbuf + 32U, (void const *)"n/a ", __len___1);
    } else {
      __ret___1 = memcpy((void *)rbuf + 32U, (void const *)"n/a ", __len___1);
    }
  } else {
  }
  __len___2 = 5UL;
  if (__len___2 > 63UL) {
    __ret___2 = memcpy((void *)rbuf + 59U, (void const *)(& versions), __len___2);
  } else {
    __ret___2 = memcpy((void *)rbuf + 59U, (void const *)(& versions),
                                 __len___2);
  }
  return (0U);
}
}
static unsigned int ata_scsiop_inq_00(struct ata_scsi_args *args , u8 *rbuf )
{
  u8 pages[7U] ;
  size_t __len ;
  void *__ret ;
  {
  pages[0] = 0U;
  pages[1] = 128U;
  pages[2] = 131U;
  pages[3] = 137U;
  pages[4] = 176U;
  pages[5] = 177U;
  pages[6] = 178U;
  *(rbuf + 3UL) = 7U;
  __len = 7UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)rbuf + 4U, (void const *)(& pages), __len);
  } else {
    __ret = memcpy((void *)rbuf + 4U, (void const *)(& pages), __len);
  }
  return (0U);
}
}
static unsigned int ata_scsiop_inq_80(struct ata_scsi_args *args , u8 *rbuf )
{
  u8 hdr[4U] ;
  size_t __len ;
  void *__ret ;
  {
  hdr[0] = 0U;
  hdr[1] = 128U;
  hdr[2] = 0U;
  hdr[3] = 20U;
  __len = 4UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)rbuf, (void const *)(& hdr), __len);
  } else {
    __ret = memcpy((void *)rbuf, (void const *)(& hdr), __len);
  }
  ata_id_string((u16 const *)args->id, rbuf + 4U, 10U, 20U);
  return (0U);
}
}
static unsigned int ata_scsiop_inq_83(struct ata_scsi_args *args , u8 *rbuf )
{
  int sat_model_serial_desc_len ;
  int num ;
  size_t __len ;
  void *__ret ;
  bool tmp ;
  {
  sat_model_serial_desc_len = 68;
  *(rbuf + 1UL) = 131U;
  num = 4;
  *(rbuf + (unsigned long )num) = 2U;
  *(rbuf + ((unsigned long )num + 3UL)) = 20U;
  num = num + 4;
  ata_id_string((u16 const *)args->id, rbuf + (unsigned long )num, 10U, 20U);
  num = num + 20;
  *(rbuf + (unsigned long )num) = 2U;
  *(rbuf + ((unsigned long )num + 1UL)) = 1U;
  *(rbuf + ((unsigned long )num + 3UL)) = (u8 )sat_model_serial_desc_len;
  num = num + 4;
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)rbuf + (unsigned long )num, (void const *)"ATA     ",
                     __len);
  } else {
    __ret = memcpy((void *)rbuf + (unsigned long )num, (void const *)"ATA     ",
                             __len);
  }
  num = num + 8;
  ata_id_string((u16 const *)args->id, rbuf + (unsigned long )num, 27U, 40U);
  num = num + 40;
  ata_id_string((u16 const *)args->id, rbuf + (unsigned long )num, 10U, 20U);
  num = num + 20;
  tmp = ata_id_has_wwn((u16 const *)args->id);
  if ((int )tmp) {
    *(rbuf + (unsigned long )num) = 1U;
    *(rbuf + ((unsigned long )num + 1UL)) = 3U;
    *(rbuf + ((unsigned long )num + 3UL)) = 8U;
    num = num + 4;
    ata_id_string((u16 const *)args->id, rbuf + (unsigned long )num, 108U, 8U);
    num = num + 8;
  } else {
  }
  *(rbuf + 3UL) = (unsigned int )((u8 )num) + 252U;
  return (0U);
}
}
static unsigned int ata_scsiop_inq_89(struct ata_scsi_args *args , u8 *rbuf )
{
  struct ata_taskfile tf ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  size_t __len___2 ;
  void *__ret___2 ;
  {
  memset((void *)(& tf), 0, 24UL);
  *(rbuf + 1UL) = 137U;
  *(rbuf + 2UL) = 2U;
  *(rbuf + 3UL) = 56U;
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)rbuf + 8U, (void const *)"linux   ", __len);
  } else {
    __ret = memcpy((void *)rbuf + 8U, (void const *)"linux   ", __len);
  }
  __len___0 = 16UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)rbuf + 16U, (void const *)"libata          ", __len___0);
  } else {
    __ret___0 = memcpy((void *)rbuf + 16U, (void const *)"libata          ",
                                 __len___0);
  }
  __len___1 = 4UL;
  if (__len___1 > 63UL) {
    __ret___1 = memcpy((void *)rbuf + 32U, (void const *)"3.00", __len___1);
  } else {
    __ret___1 = memcpy((void *)rbuf + 32U, (void const *)"3.00", __len___1);
  }
  ata_id_string((u16 const *)args->id, rbuf + 32U, 23U, 4U);
  tf.command = 64U;
  tf.lbal = 1U;
  tf.nsect = 1U;
  ata_tf_to_fis((struct ata_taskfile const *)(& tf), 0, 1, rbuf + 36UL);
  *(rbuf + 36UL) = 52U;
  *(rbuf + 56UL) = 236U;
  __len___2 = 512UL;
  if (__len___2 > 63UL) {
    __ret___2 = memcpy((void *)rbuf + 60U, (void const *)args->id, __len___2);
  } else {
    __ret___2 = memcpy((void *)rbuf + 60U, (void const *)args->id, __len___2);
  }
  return (0U);
}
}
static unsigned int ata_scsiop_inq_b0(struct ata_scsi_args *args , u8 *rbuf )
{
  u16 min_io_sectors ;
  u8 tmp ;
  bool tmp___0 ;
  {
  *(rbuf + 1UL) = 176U;
  *(rbuf + 3UL) = 60U;
  tmp = ata_id_log2_per_physical_sector((u16 const *)args->id);
  min_io_sectors = (u16 )(1 << (int )tmp);
  put_unaligned_be16((int )min_io_sectors, (void *)rbuf + 6U);
  tmp___0 = ata_id_has_trim((u16 const *)args->id);
  if ((int )tmp___0) {
    put_unaligned_be64(4194240ULL, (void *)rbuf + 36U);
    put_unaligned_be32(1U, (void *)rbuf + 28U);
  } else {
  }
  return (0U);
}
}
static unsigned int ata_scsiop_inq_b1(struct ata_scsi_args *args , u8 *rbuf )
{
  int form_factor ;
  int tmp ;
  int media_rotation_rate ;
  int tmp___0 ;
  {
  tmp = ata_id_form_factor((u16 const *)args->id);
  form_factor = tmp;
  tmp___0 = ata_id_rotation_rate((u16 const *)args->id);
  media_rotation_rate = tmp___0;
  *(rbuf + 1UL) = 177U;
  *(rbuf + 3UL) = 60U;
  *(rbuf + 4UL) = (u8 )(media_rotation_rate >> 8);
  *(rbuf + 5UL) = (u8 )media_rotation_rate;
  *(rbuf + 7UL) = (u8 )form_factor;
  return (0U);
}
}
static unsigned int ata_scsiop_inq_b2(struct ata_scsi_args *args , u8 *rbuf )
{
  {
  *(rbuf + 1UL) = 178U;
  *(rbuf + 3UL) = 4U;
  *(rbuf + 5UL) = 64U;
  return (0U);
}
}
static unsigned int ata_scsiop_noop(struct ata_scsi_args *args , u8 *rbuf )
{
  {
  return (0U);
}
}
static void modecpy(u8 *dest , u8 const *src , int n , bool changeable )
{
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  if ((int )changeable) {
    __len = 2UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)dest, (void const *)src, __len);
    } else {
      __ret = memcpy((void *)dest, (void const *)src, __len);
    }
    memset((void *)dest + 2U, 0, (size_t )(n + -2));
  } else {
    __len___0 = (size_t )n;
    __ret___0 = memcpy((void *)dest, (void const *)src, __len___0);
  }
  return;
}
}
static unsigned int ata_msense_caching(u16 *id , u8 *buf , bool changeable )
{
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  modecpy(buf, (u8 const *)(& def_cache_mpage), 20, (int )changeable);
  if ((int )changeable) {
    *(buf + 2UL) = (u8 )((unsigned int )*(buf + 2UL) | 4U);
  } else {
    tmp = ata_id_wcache_enabled((u16 const *)id);
    if ((int )tmp) {
      *(buf + 2UL) = (u8 )((unsigned int )*(buf + 2UL) | 4U);
    } else {
    }
  }
  if (! changeable) {
    tmp___0 = ata_id_rahead_enabled((u16 const *)id);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      *(buf + 12UL) = (u8 )((unsigned int )*(buf + 12UL) | 32U);
    } else {
    }
  } else {
  }
  return (20U);
}
}
static unsigned int ata_msense_ctl_mode(u8 *buf , bool changeable )
{
  {
  modecpy(buf, (u8 const *)(& def_control_mpage), 12, (int )changeable);
  return (12U);
}
}
static unsigned int ata_msense_rw_recovery(u8 *buf , bool changeable )
{
  {
  modecpy(buf, (u8 const *)(& def_rw_recovery_mpage), 12, (int )changeable);
  return (12U);
}
}
static int ata_dev_supports_fua(u16 *id )
{
  unsigned char model[41U] ;
  unsigned char fw[9U] ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if (libata_fua == 0) {
    return (0);
  } else {
  }
  tmp = ata_id_has_fua((u16 const *)id);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (0);
  } else {
  }
  ata_id_c_string((u16 const *)id, (unsigned char *)(& model), 27U, 41U);
  ata_id_c_string((u16 const *)id, (unsigned char *)(& fw), 23U, 9U);
  tmp___1 = strcmp((char const *)(& model), "Maxtor");
  if (tmp___1 != 0) {
    return (1);
  } else {
  }
  tmp___2 = strcmp((char const *)(& fw), "BANC1G10");
  if (tmp___2 != 0) {
    return (1);
  } else {
  }
  return (0);
}
}
static unsigned int ata_scsiop_mode_sense(struct ata_scsi_args *args , u8 *rbuf )
{
  struct ata_device *dev ;
  u8 *scsicmd ;
  u8 *p ;
  u8 sat_blk_desc[8U] ;
  u8 pg ;
  u8 spg ;
  unsigned int ebd ;
  unsigned int page_control ;
  unsigned int six_byte ;
  u8 dpofua ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  int tmp___5 ;
  size_t __len ;
  void *__ret ;
  unsigned int output_len ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  dev = args->dev;
  scsicmd = (args->cmd)->cmnd;
  p = rbuf;
  sat_blk_desc[0] = 0U;
  sat_blk_desc[1] = 0U;
  sat_blk_desc[2] = 0U;
  sat_blk_desc[3] = 0U;
  sat_blk_desc[4] = 0U;
  sat_blk_desc[5] = 0U;
  sat_blk_desc[6] = 2U;
  sat_blk_desc[7] = 0U;
  six_byte = (unsigned int )*scsicmd == 26U;
  ebd = ((int )*(scsicmd + 1UL) & 8) == 0;
  page_control = (unsigned int )((int )*(scsicmd + 2UL) >> 6);
  switch (page_control) {
  case 0U: ;
  case 1U: ;
  case 2U: ;
  goto ldv_38874;
  case 3U: ;
  goto saving_not_supp;
  default: ;
  goto invalid_fld;
  }
  ldv_38874: ;
  if (six_byte != 0U) {
    p = p + (ebd != 0U ? 12UL : 4UL);
  } else {
    p = p + (ebd != 0U ? 16UL : 8UL);
  }
  pg = (unsigned int )*(scsicmd + 2UL) & 63U;
  spg = *(scsicmd + 3UL);
  if ((unsigned int )spg != 0U && (unsigned int )spg != 255U) {
    goto invalid_fld;
  } else {
  }
  switch ((int )pg) {
  case 1:
  tmp = ata_msense_rw_recovery(p, page_control == 1U);
  p = p + (unsigned long )tmp;
  goto ldv_38880;
  case 8:
  tmp___0 = ata_msense_caching(args->id, p, page_control == 1U);
  p = p + (unsigned long )tmp___0;
  goto ldv_38880;
  case 10:
  tmp___1 = ata_msense_ctl_mode(p, page_control == 1U);
  p = p + (unsigned long )tmp___1;
  goto ldv_38880;
  case 63:
  tmp___2 = ata_msense_rw_recovery(p, page_control == 1U);
  p = p + (unsigned long )tmp___2;
  tmp___3 = ata_msense_caching(args->id, p, page_control == 1U);
  p = p + (unsigned long )tmp___3;
  tmp___4 = ata_msense_ctl_mode(p, page_control == 1U);
  p = p + (unsigned long )tmp___4;
  goto ldv_38880;
  default: ;
  goto invalid_fld;
  }
  ldv_38880:
  dpofua = 0U;
  tmp___5 = ata_dev_supports_fua(args->id);
  if ((tmp___5 != 0 && (dev->flags & 2UL) != 0UL) && ((dev->flags & 4096UL) == 0UL || dev->multi_count != 0U)) {
    dpofua = 16U;
  } else {
  }
  if (six_byte != 0U) {
    *rbuf = (unsigned int )((int )((u8 )((long )p)) - (int )((u8 )((long )rbuf))) + 255U;
    *(rbuf + 2UL) = (u8 )((int )*(rbuf + 2UL) | (int )dpofua);
    if (ebd != 0U) {
      *(rbuf + 3UL) = 8U;
      __len = 8UL;
      if (__len > 63UL) {
        __ret = memcpy((void *)rbuf + 4U, (void const *)(& sat_blk_desc), __len);
      } else {
        __ret = memcpy((void *)rbuf + 4U, (void const *)(& sat_blk_desc),
                                 __len);
      }
    } else {
    }
  } else {
    output_len = ((unsigned int )((long )p) - (unsigned int )((long )rbuf)) + 4294967294U;
    *rbuf = (u8 )(output_len >> 8);
    *(rbuf + 1UL) = (u8 )output_len;
    *(rbuf + 3UL) = (u8 )((int )*(rbuf + 3UL) | (int )dpofua);
    if (ebd != 0U) {
      *(rbuf + 7UL) = 8U;
      __len___0 = 8UL;
      if (__len___0 > 63UL) {
        __ret___0 = memcpy((void *)rbuf + 8U, (void const *)(& sat_blk_desc),
                             __len___0);
      } else {
        __ret___0 = memcpy((void *)rbuf + 8U, (void const *)(& sat_blk_desc),
                                     __len___0);
      }
    } else {
    }
  }
  return (0U);
  invalid_fld:
  ata_scsi_set_sense(args->cmd, 5, 36, 0);
  return (1U);
  saving_not_supp:
  ata_scsi_set_sense(args->cmd, 5, 57, 0);
  return (1U);
}
}
static unsigned int ata_scsiop_read_cap(struct ata_scsi_args *args , u8 *rbuf )
{
  struct ata_device *dev ;
  u64 last_lba ;
  u32 sector_size ;
  u8 log2_per_phys ;
  u16 lowest_aligned ;
  bool tmp ;
  bool tmp___0 ;
  {
  dev = args->dev;
  last_lba = dev->n_sectors - 1ULL;
  sector_size = ata_id_logical_sector_size((u16 const *)(& dev->ldv_38497.id));
  log2_per_phys = ata_id_log2_per_physical_sector((u16 const *)(& dev->ldv_38497.id));
  lowest_aligned = ata_id_logical_sector_offset((u16 const *)(& dev->ldv_38497.id),
                                                (int )log2_per_phys);
  if ((unsigned int )*((args->cmd)->cmnd) == 37U) {
    if (last_lba > 4294967294ULL) {
      last_lba = 4294967295ULL;
    } else {
    }
    *rbuf = (u8 )(last_lba >> 24);
    *(rbuf + 1UL) = (u8 )(last_lba >> 16);
    *(rbuf + 2UL) = (u8 )(last_lba >> 8);
    *(rbuf + 3UL) = (u8 )last_lba;
    *(rbuf + 4UL) = (u8 )(sector_size >> 24);
    *(rbuf + 5UL) = (u8 )(sector_size >> 16);
    *(rbuf + 6UL) = (u8 )(sector_size >> 8);
    *(rbuf + 7UL) = (u8 )sector_size;
  } else {
    *rbuf = (u8 )(last_lba >> 56);
    *(rbuf + 1UL) = (u8 )(last_lba >> 48);
    *(rbuf + 2UL) = (u8 )(last_lba >> 40);
    *(rbuf + 3UL) = (u8 )(last_lba >> 32);
    *(rbuf + 4UL) = (u8 )(last_lba >> 24);
    *(rbuf + 5UL) = (u8 )(last_lba >> 16);
    *(rbuf + 6UL) = (u8 )(last_lba >> 8);
    *(rbuf + 7UL) = (u8 )last_lba;
    *(rbuf + 8UL) = (u8 )(sector_size >> 24);
    *(rbuf + 9UL) = (u8 )(sector_size >> 16);
    *(rbuf + 10UL) = (u8 )(sector_size >> 8);
    *(rbuf + 11UL) = (u8 )sector_size;
    *(rbuf + 12UL) = 0U;
    *(rbuf + 13UL) = log2_per_phys;
    *(rbuf + 14UL) = (unsigned int )((u8 )((int )lowest_aligned >> 8)) & 63U;
    *(rbuf + 15UL) = (u8 )lowest_aligned;
    tmp___0 = ata_id_has_trim((u16 const *)args->id);
    if ((int )tmp___0) {
      *(rbuf + 14UL) = (u8 )((unsigned int )*(rbuf + 14UL) | 128U);
      tmp = ata_id_has_zero_after_trim((u16 const *)args->id);
      if ((int )tmp) {
        *(rbuf + 14UL) = (u8 )((unsigned int )*(rbuf + 14UL) | 64U);
      } else {
      }
    } else {
    }
  }
  return (0U);
}
}
static unsigned int ata_scsiop_report_luns(struct ata_scsi_args *args , u8 *rbuf )
{
  {
  *(rbuf + 3UL) = 8U;
  return (0U);
}
}
static void atapi_sense_complete(struct ata_queued_cmd *qc )
{
  {
  if (qc->err_mask != 0U && (qc->err_mask & 1U) == 0U) {
    ata_gen_passthru_sense(qc);
  } else {
  }
  (*(qc->scsidone))(qc->scsicmd);
  ata_qc_free(qc);
  return;
}
}
__inline static int ata_pio_use_silly(struct ata_port *ap )
{
  {
  return ((int )ap->flags & 128);
}
}
static void atapi_request_sense(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct scsi_cmnd *cmd ;
  int tmp ;
  {
  ap = qc->ap;
  cmd = qc->scsicmd;
  memset((void *)cmd->sense_buffer, 0, 96UL);
  if ((unsigned long )(ap->ops)->sff_tf_read != (unsigned long )((void (*)(struct ata_port * ,
                                                                           struct ata_taskfile * ))0)) {
    (*((ap->ops)->sff_tf_read))(ap, & qc->tf);
  } else {
  }
  *(cmd->sense_buffer) = 112U;
  *(cmd->sense_buffer + 2UL) = (int )qc->tf.feature >> 4;
  ata_qc_reinit(qc);
  sg_init_one(& qc->sgent, (void const *)cmd->sense_buffer, 96U);
  ata_sg_init(qc, & qc->sgent, 1U);
  qc->dma_dir = 2;
  memset((void *)(& qc->cdb), 0, (size_t )(qc->dev)->cdb_len);
  qc->cdb[0] = 3U;
  qc->cdb[4] = 96U;
  qc->tf.flags = qc->tf.flags | 6UL;
  qc->tf.command = 160U;
  tmp = ata_pio_use_silly(ap);
  if (tmp != 0) {
    qc->tf.protocol = 7U;
    qc->tf.feature = (u8 )((unsigned int )qc->tf.feature | 1U);
  } else {
    qc->tf.protocol = 6U;
    qc->tf.lbam = 96U;
    qc->tf.lbah = 0U;
  }
  qc->nbytes = 96U;
  qc->complete_fn = & atapi_sense_complete;
  ata_qc_issue(qc);
  return;
}
}
static void atapi_qc_complete(struct ata_queued_cmd *qc )
{
  struct scsi_cmnd *cmd ;
  unsigned int err_mask ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  u8 *scsicmd ;
  unsigned long flags ;
  u8 *buf ;
  void *tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  {
  cmd = qc->scsicmd;
  err_mask = qc->err_mask;
  tmp = ldv__builtin_expect((unsigned long )((qc->ap)->ops)->error_handler != (unsigned long )((void (*)(struct ata_port * ))0),
                         0L);
  if (tmp != 0L) {
    tmp___0 = ldv__builtin_expect(err_mask != 0U, 0L);
    if (tmp___0 != 0L) {
      tmp___2 = 1;
    } else {
      tmp___1 = ldv__builtin_expect((qc->flags & 131072UL) != 0UL, 0L);
      if (tmp___1 != 0L) {
        tmp___2 = 1;
      } else {
        tmp___2 = 0;
      }
    }
    if (tmp___2 != 0) {
      if ((qc->flags & 131072UL) == 0UL) {
        ata_gen_passthru_sense(qc);
      } else {
      }
      if ((unsigned int )qc->cdb[0] == 30U && (unsigned long )(qc->dev)->sdev != (unsigned long )((struct scsi_device *)0)) {
        ((qc->dev)->sdev)->locked = 0U;
      } else {
      }
      (qc->scsicmd)->result = 2;
      (*(qc->scsidone))(cmd);
      ata_qc_free(qc);
      return;
    } else {
    }
  } else {
  }
  tmp___5 = ldv__builtin_expect((long )((int )err_mask) & 1L, 0L);
  if (tmp___5 != 0L) {
    cmd->result = 2;
    atapi_request_sense(qc);
    return;
  } else {
    tmp___4 = ldv__builtin_expect(err_mask != 0U, 0L);
    if (tmp___4 != 0L) {
      ata_gen_passthru_sense(qc);
    } else {
      scsicmd = cmd->cmnd;
      if ((unsigned int )*scsicmd == 18U && ((int )*(scsicmd + 1UL) & 3) == 0) {
        tmp___3 = ata_scsi_rbuf_get(cmd, 1, & flags);
        buf = (u8 *)tmp___3;
        if ((unsigned int )*(buf + 2UL) == 0U) {
          *(buf + 2UL) = 5U;
          *(buf + 3UL) = 50U;
        } else {
        }
        ata_scsi_rbuf_put(cmd, 1, & flags);
      } else {
      }
      cmd->result = 0;
    }
  }
  (*(qc->scsidone))(cmd);
  ata_qc_free(qc);
  return;
}
}
static unsigned int atapi_xlat(struct ata_queued_cmd *qc )
{
  struct scsi_cmnd *scmd ;
  struct ata_device *dev ;
  int nodata ;
  int using_pio ;
  unsigned int nbytes ;
  size_t __len ;
  void *__ret ;
  int tmp ;
  unsigned int _min1 ;
  unsigned int tmp___0 ;
  unsigned int _min2 ;
  {
  scmd = qc->scsicmd;
  dev = qc->dev;
  nodata = (unsigned int )scmd->sc_data_direction == 3U;
  using_pio = nodata == 0 && (dev->flags & 4096UL) != 0UL;
  memset((void *)(& qc->cdb), 0, (size_t )dev->cdb_len);
  __len = (size_t )scmd->cmd_len;
  __ret = memcpy((void *)(& qc->cdb), (void const *)scmd->cmnd, __len);
  qc->complete_fn = & atapi_qc_complete;
  qc->tf.flags = qc->tf.flags | 6UL;
  if ((unsigned int )scmd->sc_data_direction == 1U) {
    qc->tf.flags = qc->tf.flags | 8UL;
  } else {
  }
  qc->tf.command = 160U;
  ata_qc_set_pc_nbytes(qc);
  if (nodata == 0 && using_pio == 0) {
    tmp = atapi_check_dma(qc);
    if (tmp != 0) {
      using_pio = 1;
    } else {
    }
  } else {
  }
  tmp___0 = ata_qc_raw_nbytes(qc);
  _min1 = tmp___0;
  _min2 = 64512U;
  nbytes = _min1 < _min2 ? _min1 : _min2;
  if ((int )nbytes & 1) {
    nbytes = nbytes + 1U;
  } else {
  }
  qc->tf.lbam = (u8 )nbytes;
  qc->tf.lbah = (u8 )(nbytes >> 8);
  if (nodata != 0) {
    qc->tf.protocol = 5U;
  } else
  if (using_pio != 0) {
    qc->tf.protocol = 6U;
  } else {
    qc->tf.protocol = 7U;
    qc->tf.feature = (u8 )((unsigned int )qc->tf.feature | 1U);
    if ((dev->flags & 1024UL) != 0UL && (unsigned int )scmd->sc_data_direction != 1U) {
      qc->tf.feature = (u8 )((unsigned int )qc->tf.feature | 4U);
    } else {
    }
  }
  return (0U);
}
}
static struct ata_device *ata_find_dev(struct ata_port *ap , int devno )
{
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  tmp___2 = sata_pmp_attached(ap);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    tmp___0 = ata_link_max_devices((struct ata_link const *)(& ap->link));
    tmp___1 = ldv__builtin_expect(tmp___0 > devno, 1L);
    if (tmp___1 != 0L) {
      return ((struct ata_device *)(& ap->link.device) + (unsigned long )devno);
    } else {
      tmp = ldv__builtin_expect(ap->nr_pmp_links > devno, 1L);
      if (tmp != 0L) {
        return ((struct ata_device *)(& (ap->pmp_link + (unsigned long )devno)->device));
      } else {
      }
    }
  } else {
  }
  return (0);
}
}
static struct ata_device *__ata_scsi_find_dev(struct ata_port *ap , struct scsi_device const *scsidev )
{
  int devno ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  struct ata_device *tmp___5 ;
  {
  tmp___3 = sata_pmp_attached(ap);
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    tmp = ldv__builtin_expect((unsigned int )scsidev->channel != 0U, 0L);
    if (tmp != 0L) {
      return (0);
    } else {
      tmp___0 = ldv__builtin_expect((unsigned int )scsidev->lun != 0U, 0L);
      if (tmp___0 != 0L) {
        return (0);
      } else {
      }
    }
    devno = (int )scsidev->id;
  } else {
    tmp___1 = ldv__builtin_expect((unsigned int )scsidev->id != 0U, 0L);
    if (tmp___1 != 0L) {
      return (0);
    } else {
      tmp___2 = ldv__builtin_expect((unsigned int )scsidev->lun != 0U, 0L);
      if (tmp___2 != 0L) {
        return (0);
      } else {
      }
    }
    devno = (int )scsidev->channel;
  }
  tmp___5 = ata_find_dev(ap, devno);
  return (tmp___5);
}
}
static struct ata_device *ata_scsi_find_dev(struct ata_port *ap , struct scsi_device const *scsidev )
{
  struct ata_device *dev ;
  struct ata_device *tmp ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  long tmp___2 ;
  {
  tmp = __ata_scsi_find_dev(ap, scsidev);
  dev = tmp;
  tmp___0 = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct ata_device *)0),
                             0L);
  if (tmp___0 != 0L) {
    return (0);
  } else {
    tmp___1 = ata_dev_enabled((struct ata_device const *)dev);
    tmp___2 = ldv__builtin_expect(tmp___1 == 0U, 0L);
    if (tmp___2 != 0L) {
      return (0);
    } else {
    }
  }
  return (dev);
}
}
static u8 ata_scsi_map_proto(u8 byte1 )
{
  {
  switch (((int )byte1 & 30) >> 1) {
  case 3: ;
  return (1U);
  case 6: ;
  case 10: ;
  case 11: ;
  return (3U);
  case 4: ;
  case 5: ;
  return (2U);
  case 0: ;
  case 1: ;
  case 8: ;
  case 9: ;
  case 7: ;
  case 12: ;
  case 15: ;
  default: ;
  goto ldv_38969;
  }
  ldv_38969: ;
  return (0U);
}
}
static unsigned int ata_scsi_pass_thru(struct ata_queued_cmd *qc )
{
  struct ata_taskfile *tf ;
  struct scsi_cmnd *scmd ;
  struct ata_device *dev ;
  u8 const *cdb ;
  u8 tmp ;
  int tmp___0 ;
  unsigned int multi_count ;
  int tmp___1 ;
  {
  tf = & qc->tf;
  scmd = qc->scsicmd;
  dev = qc->dev;
  cdb = (u8 const *)scmd->cmnd;
  tmp = ata_scsi_map_proto((int )*(cdb + 1UL));
  tf->protocol = tmp;
  if ((unsigned int )tmp == 0U) {
    goto invalid_fld;
  } else {
  }
  if ((unsigned int )((unsigned char )*cdb) == 133U) {
    if ((int )*(cdb + 1UL) & 1) {
      tf->hob_feature = *(cdb + 3UL);
      tf->hob_nsect = *(cdb + 5UL);
      tf->hob_lbal = *(cdb + 7UL);
      tf->hob_lbam = *(cdb + 9UL);
      tf->hob_lbah = *(cdb + 11UL);
      tf->flags = tf->flags | 1UL;
    } else {
      tf->flags = tf->flags & 0xfffffffffffffffeUL;
    }
    tf->feature = *(cdb + 4UL);
    tf->nsect = *(cdb + 6UL);
    tf->lbal = *(cdb + 8UL);
    tf->lbam = *(cdb + 10UL);
    tf->lbah = *(cdb + 12UL);
    tf->device = *(cdb + 13UL);
    tf->command = *(cdb + 14UL);
  } else {
    tf->flags = tf->flags & 0xfffffffffffffffeUL;
    tf->feature = *(cdb + 3UL);
    tf->nsect = *(cdb + 4UL);
    tf->lbal = *(cdb + 5UL);
    tf->lbam = *(cdb + 6UL);
    tf->lbah = *(cdb + 7UL);
    tf->device = *(cdb + 8UL);
    tf->command = *(cdb + 9UL);
  }
  tf->device = dev->devno != 0U ? (u8 )((unsigned int )tf->device | 16U) : (unsigned int )tf->device & 239U;
  switch ((int )tf->command) {
  case 34: ;
  case 35: ;
  case 50: ;
  case 51: ;
  if ((unsigned int )tf->protocol != 2U || (unsigned int )tf->nsect != 1U) {
    goto invalid_fld;
  } else {
  }
  qc->sect_size = scsi_bufflen(scmd);
  goto ldv_38982;
  case 56: ;
  case 135: ;
  case 205: ;
  case 200: ;
  case 37: ;
  case 38: ;
  case 96: ;
  case 196: ;
  case 41: ;
  case 32: ;
  case 36: ;
  case 42: ;
  case 43: ;
  case 64: ;
  case 66: ;
  case 202: ;
  case 53: ;
  case 61: ;
  case 54: ;
  case 62: ;
  case 97: ;
  case 197: ;
  case 57: ;
  case 206: ;
  case 48: ;
  case 52: ;
  case 58: ;
  case 59:
  qc->sect_size = (scmd->device)->sector_size;
  goto ldv_38982;
  default:
  qc->sect_size = 512U;
  }
  ldv_38982:
  tf->flags = tf->flags | 6UL;
  if ((unsigned int )scmd->sc_data_direction == 1U) {
    tf->flags = tf->flags | 8UL;
  } else {
  }
  qc->flags = qc->flags | 80UL;
  ata_qc_set_pc_nbytes(qc);
  if ((unsigned int )tf->protocol == 3U && (unsigned int )dev->dma_mode == 0U) {
    goto invalid_fld;
  } else {
  }
  if (((int )*(cdb + 1UL) & 224) != 0) {
    tmp___0 = is_multi_taskfile(tf);
    if (tmp___0 == 0) {
      goto invalid_fld;
    } else {
    }
  } else {
  }
  tmp___1 = is_multi_taskfile(tf);
  if (tmp___1 != 0) {
    multi_count = (unsigned int )(1 << ((int )((unsigned char )*(cdb + 1UL)) >> 5));
    if (dev->multi_count != multi_count) {
      ata_dev_printk((struct ata_device const *)dev, "\f", "invalid multi_count %u ignored\n",
                     multi_count);
    } else {
    }
  } else {
  }
  if ((unsigned int )tf->command == 239U && (unsigned int )tf->feature == 3U) {
    goto invalid_fld;
  } else {
  }
  if (((unsigned int )tf->command > 91U && (unsigned int )tf->command <= 95U) && libata_allow_tpm == 0) {
    goto invalid_fld;
  } else {
  }
  return (0U);
  invalid_fld:
  ata_scsi_set_sense(scmd, 5, 36, 0);
  return (1U);
}
}
static unsigned int ata_scsi_write_same_xlat(struct ata_queued_cmd *qc )
{
  struct ata_taskfile *tf ;
  struct scsi_cmnd *scmd ;
  struct ata_device *dev ;
  u8 const *cdb ;
  u64 block ;
  u32 n_block ;
  u32 size ;
  void *buf ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  struct scatterlist *tmp___3 ;
  struct page *tmp___4 ;
  {
  tf = & qc->tf;
  scmd = qc->scsicmd;
  dev = qc->dev;
  cdb = (u8 const *)scmd->cmnd;
  tmp = ldv__builtin_expect((unsigned int )dev->dma_mode == 0U, 0L);
  if (tmp != 0L) {
    goto invalid_fld;
  } else {
  }
  tmp___0 = ldv__builtin_expect((unsigned int )scmd->cmd_len <= 15U, 0L);
  if (tmp___0 != 0L) {
    goto invalid_fld;
  } else {
  }
  scsi_16_lba_len(cdb, & block, & n_block);
  tmp___1 = ldv__builtin_expect(((int )*(cdb + 1UL) & 8) == 0, 0L);
  if (tmp___1 != 0L) {
    goto invalid_fld;
  } else {
  }
  tmp___2 = scsi_sg_count(scmd);
  if (tmp___2 == 0U) {
    goto invalid_fld;
  } else {
  }
  tmp___3 = scsi_sglist(scmd);
  tmp___4 = sg_page___0(tmp___3);
  buf = lowmem_page_address((struct page const *)tmp___4);
  size = ata_set_lba_range_entries(buf, 512U, block, (unsigned long )n_block);
  tf->protocol = 3U;
  tf->hob_feature = 0U;
  tf->feature = 1U;
  tf->hob_nsect = (u8 )(size / 512U >> 8);
  tf->nsect = (u8 )(size / 512U);
  tf->command = 6U;
  tf->flags = tf->flags | 15UL;
  ata_qc_set_pc_nbytes(qc);
  return (0U);
  invalid_fld:
  ata_scsi_set_sense(scmd, 5, 36, 0);
  return (1U);
}
}
static int ata_mselect_caching(struct ata_queued_cmd *qc , u8 const *buf , int len )
{
  struct ata_taskfile *tf ;
  struct ata_device *dev ;
  char mpage[20U] ;
  u8 wce ;
  int tmp ;
  {
  tf = & qc->tf;
  dev = qc->dev;
  if (len != 18) {
    return (-22);
  } else {
  }
  wce = (unsigned int )((u8 )*buf) & 4U;
  ata_msense_caching((u16 *)(& dev->ldv_38497.id), (u8 *)(& mpage), 0);
  mpage[2] = (int )mpage[2] & -5;
  mpage[2] = (int )mpage[2] | (int )((char )wce);
  tmp = memcmp((void const *)(& mpage) + 2U, (void const *)buf, 18UL);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  tf->flags = tf->flags | 6UL;
  tf->protocol = 1U;
  tf->nsect = 0U;
  tf->command = 239U;
  tf->feature = (unsigned int )wce != 0U ? 2U : 130U;
  return (0);
}
}
static unsigned int ata_scsi_mode_select_xlat(struct ata_queued_cmd *qc )
{
  struct scsi_cmnd *scmd ;
  u8 const *cdb ;
  u8 const *p ;
  u8 pg ;
  u8 spg ;
  unsigned int six_byte ;
  unsigned int pg_len ;
  unsigned int hdr_len ;
  unsigned int bd_len ;
  int len ;
  unsigned int tmp ;
  struct scatterlist *tmp___0 ;
  struct scatterlist *tmp___1 ;
  struct page *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  scmd = qc->scsicmd;
  cdb = (u8 const *)scmd->cmnd;
  six_byte = (unsigned int )((unsigned char )*cdb) == 21U;
  if (six_byte != 0U) {
    if ((unsigned int )scmd->cmd_len <= 4U) {
      goto invalid_fld;
    } else {
    }
    len = (int )*(cdb + 4UL);
    hdr_len = 4U;
  } else {
    if ((unsigned int )scmd->cmd_len <= 8U) {
      goto invalid_fld;
    } else {
    }
    len = ((int )*(cdb + 7UL) << 8) + (int )*(cdb + 8UL);
    hdr_len = 8U;
  }
  if (((int )*(cdb + 1UL) & 17) != 16) {
    goto invalid_fld;
  } else {
  }
  tmp = scsi_sg_count(scmd);
  if (tmp == 0U) {
    goto invalid_param_len;
  } else {
    tmp___0 = scsi_sglist(scmd);
    if (tmp___0->length < (unsigned int )len) {
      goto invalid_param_len;
    } else {
    }
  }
  tmp___1 = scsi_sglist(scmd);
  tmp___2 = sg_page___0(tmp___1);
  tmp___3 = lowmem_page_address((struct page const *)tmp___2);
  p = (u8 const *)tmp___3;
  if ((unsigned int )len < hdr_len) {
    goto invalid_param_len;
  } else {
  }
  if (six_byte != 0U) {
    bd_len = (unsigned int )*(p + 3UL);
  } else {
    bd_len = (unsigned int )(((int )*(p + 6UL) << 8) + (int )*(p + 7UL));
  }
  len = (int )((unsigned int )len - hdr_len);
  p = p + (unsigned long )hdr_len;
  if ((unsigned int )len < bd_len) {
    goto invalid_param_len;
  } else {
  }
  if (bd_len != 0U && bd_len != 8U) {
    goto invalid_param;
  } else {
  }
  len = (int )((unsigned int )len - bd_len);
  p = p + (unsigned long )bd_len;
  if (len == 0) {
    goto skip;
  } else {
  }
  pg = (unsigned int )((u8 )*p) & 63U;
  if (((int )*p & 64) != 0) {
    if (len <= 3) {
      goto invalid_param_len;
    } else {
    }
    spg = *(p + 1UL);
    pg_len = (unsigned int )(((int )*(p + 2UL) << 8) | (int )*(p + 3UL));
    p = p + 4UL;
    len = len + -4;
  } else {
    if (len <= 1) {
      goto invalid_param_len;
    } else {
    }
    spg = 0U;
    pg_len = (unsigned int )*(p + 1UL);
    p = p + 2UL;
    len = len + -2;
  }
  if ((unsigned int )spg != 0U && (unsigned int )spg != 255U) {
    goto invalid_param;
  } else {
  }
  if ((unsigned int )len < pg_len) {
    goto invalid_param_len;
  } else {
  }
  switch ((int )pg) {
  case 8:
  tmp___4 = ata_mselect_caching(qc, p, (int )pg_len);
  if (tmp___4 < 0) {
    goto invalid_param;
  } else {
  }
  goto ldv_39052;
  default: ;
  goto invalid_param;
  }
  ldv_39052: ;
  if ((unsigned int )len > pg_len) {
    goto invalid_param;
  } else {
  }
  return (0U);
  invalid_fld:
  ata_scsi_set_sense(scmd, 5, 36, 0);
  return (1U);
  invalid_param:
  ata_scsi_set_sense(scmd, 5, 38, 0);
  return (1U);
  invalid_param_len:
  ata_scsi_set_sense(scmd, 5, 26, 0);
  return (1U);
  skip:
  scmd->result = 0;
  return (1U);
}
}
__inline static ata_xlat_func_t ata_get_xlat_func(struct ata_device *dev , u8 cmd )
{
  int tmp ;
  {
  switch ((int )cmd) {
  case 8: ;
  case 40: ;
  case 136: ;
  case 10: ;
  case 42: ;
  case 138: ;
  return (& ata_scsi_rw_xlat);
  case 147: ;
  return (& ata_scsi_write_same_xlat);
  case 53:
  tmp = ata_try_flush_cache((struct ata_device const *)dev);
  if (tmp != 0) {
    return (& ata_scsi_flush_xlat);
  } else {
  }
  goto ldv_39066;
  case 47: ;
  case 143: ;
  return (& ata_scsi_verify_xlat);
  case 161: ;
  case 133: ;
  return (& ata_scsi_pass_thru);
  case 21: ;
  case 85: ;
  return (& ata_scsi_mode_select_xlat);
  case 27: ;
  return (& ata_scsi_start_stop_xlat);
  }
  ldv_39066: ;
  return (0);
}
}
__inline static void ata_scsi_dump_cdb(struct ata_port *ap , struct scsi_cmnd *cmd )
{
  {
  return;
}
}
__inline static int __ata_scsi_queuecmd(struct scsi_cmnd *scmd , struct ata_device *dev )
{
  u8 scsi_op ;
  unsigned int (*xlat_func)(struct ata_queued_cmd * ) ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int len ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  scsi_op = *(scmd->cmnd);
  rc = 0;
  if (dev->class == 1U) {
    tmp = ldv__builtin_expect((unsigned int )scmd->cmd_len == 0U, 0L);
    if (tmp != 0L) {
      goto bad_cdb_len;
    } else {
      tmp___0 = ldv__builtin_expect((unsigned int )scmd->cmd_len > dev->cdb_len, 0L);
      if (tmp___0 != 0L) {
        goto bad_cdb_len;
      } else {
      }
    }
    xlat_func = ata_get_xlat_func(dev, (int )scsi_op);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned int )scmd->cmd_len == 0U, 0L);
    if (tmp___1 != 0L) {
      goto bad_cdb_len;
    } else {
    }
    xlat_func = 0;
    tmp___5 = ldv__builtin_expect((unsigned int )scsi_op != 133U, 1L);
    if (tmp___5 != 0L) {
      goto _L;
    } else {
      tmp___6 = ldv__builtin_expect(atapi_passthru16 == 0, 1L);
      if (tmp___6 != 0L) {
        _L:
        len = (int )scsi_command_size_tbl[((int )scsi_op >> 5) & 7];
        tmp___2 = ldv__builtin_expect((int )scmd->cmd_len < len, 0L);
        if (tmp___2 != 0L) {
          goto bad_cdb_len;
        } else {
          tmp___3 = ldv__builtin_expect((unsigned int )len > dev->cdb_len, 0L);
          if (tmp___3 != 0L) {
            goto bad_cdb_len;
          } else {
          }
        }
        xlat_func = & atapi_xlat;
      } else {
        tmp___4 = ldv__builtin_expect((unsigned int )scmd->cmd_len > 16U, 0L);
        if (tmp___4 != 0L) {
          goto bad_cdb_len;
        } else {
        }
        xlat_func = ata_get_xlat_func(dev, (int )scsi_op);
      }
    }
  }
  if ((unsigned long )xlat_func != (unsigned long )((unsigned int (*)(struct ata_queued_cmd * ))0)) {
    rc = ata_scsi_translate(dev, scmd, xlat_func);
  } else {
    ata_scsi_simulate(dev, scmd);
  }
  return (rc);
  bad_cdb_len:
  scmd->result = 458752;
  (*(scmd->scsi_done))(scmd);
  return (0);
}
}
int ata_scsi_queuecmd(struct Scsi_Host *shost , struct scsi_cmnd *cmd )
{
  struct ata_port *ap ;
  struct ata_device *dev ;
  struct scsi_device *scsidev ;
  int rc ;
  unsigned long irq_flags ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  {
  scsidev = cmd->device;
  rc = 0;
  ap = ata_shost_to_port(shost);
  tmp = spinlock_check(ap->lock);
  irq_flags = _raw_spin_lock_irqsave(tmp);
  ata_scsi_dump_cdb(ap, cmd);
  dev = ata_scsi_find_dev(ap, (struct scsi_device const *)scsidev);
  tmp___0 = ldv__builtin_expect((unsigned long )dev != (unsigned long )((struct ata_device *)0),
                             1L);
  if (tmp___0 != 0L) {
    rc = __ata_scsi_queuecmd(cmd, dev);
  } else {
    cmd->result = 262144;
    (*(cmd->scsi_done))(cmd);
  }
  spin_unlock_irqrestore(ap->lock, irq_flags);
  return (rc);
}
}
void ata_scsi_simulate(struct ata_device *dev , struct scsi_cmnd *cmd )
{
  struct ata_scsi_args args ;
  u8 const *scsicmd ;
  u8 tmp8 ;
  {
  scsicmd = (u8 const *)cmd->cmnd;
  args.dev = dev;
  args.id = (u16 *)(& dev->ldv_38497.id);
  args.cmd = cmd;
  args.done = cmd->scsi_done;
  switch ((int )*scsicmd) {
  case 4:
  ata_scsi_invalid_field(cmd);
  goto ldv_39107;
  case 18: ;
  if (((int )*(scsicmd + 1UL) & 2) != 0) {
    ata_scsi_invalid_field(cmd);
  } else
  if (((int )*(scsicmd + 1UL) & 1) == 0) {
    ata_scsi_rbuf_fill(& args, & ata_scsiop_inq_std);
  } else {
    switch ((int )*(scsicmd + 2UL)) {
    case 0:
    ata_scsi_rbuf_fill(& args, & ata_scsiop_inq_00);
    goto ldv_39110;
    case 128:
    ata_scsi_rbuf_fill(& args, & ata_scsiop_inq_80);
    goto ldv_39110;
    case 131:
    ata_scsi_rbuf_fill(& args, & ata_scsiop_inq_83);
    goto ldv_39110;
    case 137:
    ata_scsi_rbuf_fill(& args, & ata_scsiop_inq_89);
    goto ldv_39110;
    case 176:
    ata_scsi_rbuf_fill(& args, & ata_scsiop_inq_b0);
    goto ldv_39110;
    case 177:
    ata_scsi_rbuf_fill(& args, & ata_scsiop_inq_b1);
    goto ldv_39110;
    case 178:
    ata_scsi_rbuf_fill(& args, & ata_scsiop_inq_b2);
    goto ldv_39110;
    default:
    ata_scsi_invalid_field(cmd);
    goto ldv_39110;
    }
    ldv_39110: ;
  }
  goto ldv_39107;
  case 26: ;
  case 90:
  ata_scsi_rbuf_fill(& args, & ata_scsiop_mode_sense);
  goto ldv_39107;
  case 37:
  ata_scsi_rbuf_fill(& args, & ata_scsiop_read_cap);
  goto ldv_39107;
  case 158: ;
  if (((int )*(scsicmd + 1UL) & 31) == 16) {
    ata_scsi_rbuf_fill(& args, & ata_scsiop_read_cap);
  } else {
    ata_scsi_invalid_field(cmd);
  }
  goto ldv_39107;
  case 160:
  ata_scsi_rbuf_fill(& args, & ata_scsiop_report_luns);
  goto ldv_39107;
  case 3:
  ata_scsi_set_sense(cmd, 0, 0, 0);
  cmd->result = 134217728;
  (*(cmd->scsi_done))(cmd);
  goto ldv_39107;
  case 53: ;
  case 1: ;
  case 11: ;
  case 43: ;
  case 0:
  ata_scsi_rbuf_fill(& args, & ata_scsiop_noop);
  goto ldv_39107;
  case 29:
  tmp8 = (unsigned int )((u8 )*(scsicmd + 1UL)) & 247U;
  if (((unsigned int )tmp8 == 4U && (unsigned int )((unsigned char )*(scsicmd + 3UL)) == 0U) && (unsigned int )((unsigned char )*(scsicmd + 4UL)) == 0U) {
    ata_scsi_rbuf_fill(& args, & ata_scsiop_noop);
  } else {
    ata_scsi_invalid_field(cmd);
  }
  goto ldv_39107;
  default:
  ata_scsi_set_sense(cmd, 5, 32, 0);
  (*(cmd->scsi_done))(cmd);
  goto ldv_39107;
  }
  ldv_39107: ;
  return;
}
}
int ata_scsi_add_hosts(struct ata_host *host , struct scsi_host_template *sht )
{
  int i ;
  int rc ;
  struct ata_port *ap ;
  struct Scsi_Host *shost ;
  struct Scsi_Host *shost___0 ;
  {
  i = 0;
  goto ldv_39142;
  ldv_39141:
  ap = host->ports[i];
  rc = -12;
  shost = scsi_host_alloc(sht, 8);
  if ((unsigned long )shost == (unsigned long )((struct Scsi_Host *)0)) {
    goto err_alloc;
  } else {
  }
  shost->eh_noresume = 1U;
  *((struct ata_port **)(& shost->hostdata)) = ap;
  ap->scsi_host = shost;
  shost->transportt = ata_scsi_transport_template;
  shost->unique_id = ap->print_id;
  shost->max_id = 16U;
  shost->max_lun = 1U;
  shost->max_channel = 1U;
  shost->max_cmd_len = 16U;
  shost->max_host_blocked = 1U;
  rc = scsi_add_host_with_dma(ap->scsi_host, & ap->tdev, (ap->host)->dev);
  if (rc != 0) {
    goto err_add;
  } else {
  }
  i = i + 1;
  ldv_39142: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_39141;
  } else {
  }
  return (0);
  err_add:
  scsi_host_put((host->ports[i])->scsi_host);
  err_alloc: ;
  goto ldv_39146;
  ldv_39145:
  shost___0 = (host->ports[i])->scsi_host;
  scsi_remove_host(shost___0);
  scsi_host_put(shost___0);
  ldv_39146:
  i = i - 1;
  if (i >= 0) {
    goto ldv_39145;
  } else {
  }
  return (rc);
}
}
void ata_scsi_scan_host(struct ata_port *ap , int sync )
{
  int tries ;
  struct ata_device *last_failed_dev ;
  struct ata_link *link ;
  struct ata_device *dev ;
  struct scsi_device *sdev ;
  int channel ;
  int id ;
  int tmp ;
  long tmp___0 ;
  unsigned long tmp___1 ;
  {
  tries = 5;
  last_failed_dev = 0;
  repeat:
  link = ata_link_next(0, ap, 0);
  goto ldv_39165;
  ldv_39164:
  dev = ata_dev_next(0, link, 0);
  goto ldv_39162;
  ldv_39161:
  channel = 0;
  id = 0;
  if ((unsigned long )dev->sdev != (unsigned long )((struct scsi_device *)0)) {
    goto ldv_39160;
  } else {
  }
  tmp = ata_is_host_link((struct ata_link const *)link);
  if (tmp != 0) {
    id = (int )dev->devno;
  } else {
    channel = link->pmp;
  }
  sdev = __scsi_add_device(ap->scsi_host, (uint )channel, (uint )id, 0U, 0);
  tmp___0 = IS_ERR((void const *)sdev);
  if (tmp___0 == 0L) {
    dev->sdev = sdev;
    scsi_device_put(sdev);
    ata_acpi_bind(dev);
  } else {
    dev->sdev = 0;
  }
  ldv_39160:
  dev = ata_dev_next(dev, link, 0);
  ldv_39162: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_39161;
  } else {
  }
  link = ata_link_next(link, ap, 0);
  ldv_39165: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_39164;
  } else {
  }
  link = ata_link_next(0, ap, 0);
  goto ldv_39172;
  ldv_39171:
  dev = ata_dev_next(0, link, 0);
  goto ldv_39169;
  ldv_39168: ;
  if ((unsigned long )dev->sdev == (unsigned long )((struct scsi_device *)0)) {
    goto exit_loop;
  } else {
  }
  dev = ata_dev_next(dev, link, 0);
  ldv_39169: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_39168;
  } else {
  }
  link = ata_link_next(link, ap, 0);
  ldv_39172: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_39171;
  } else {
  }
  exit_loop: ;
  if ((unsigned long )link == (unsigned long )((struct ata_link *)0)) {
    return;
  } else {
  }
  if (sync != 0) {
    if ((unsigned long )dev != (unsigned long )last_failed_dev) {
      msleep(100U);
      last_failed_dev = dev;
      goto repeat;
    } else {
    }
    tries = tries - 1;
    if (tries != 0) {
      msleep(100U);
      goto repeat;
    } else {
    }
    ata_port_printk((struct ata_port const *)ap, "\v", "WARNING: synchronous SCSI scan failed without making any progress, switching to async\n");
  } else {
  }
  tmp___1 = round_jiffies_relative(250UL);
  queue_delayed_work(system_long_wq, & ap->hotplug_task, tmp___1);
  return;
}
}
int ata_scsi_offline_dev(struct ata_device *dev )
{
  {
  if ((unsigned long )dev->sdev != (unsigned long )((struct scsi_device *)0)) {
    scsi_device_set_state(dev->sdev, 6);
    return (1);
  } else {
  }
  return (0);
}
}
static void ata_scsi_remove_dev(struct ata_device *dev )
{
  struct ata_port *ap ;
  struct scsi_device *sdev ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  int tmp___1 ;
  char const *tmp___2 ;
  {
  ap = (dev->link)->ap;
  ldv_mutex_lock_28(& (ap->scsi_host)->scan_mutex);
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ata_acpi_unbind(dev);
  sdev = dev->sdev;
  dev->sdev = 0;
  if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
    tmp___1 = scsi_device_get(sdev);
    if (tmp___1 == 0) {
      scsi_device_set_state(sdev, 6);
    } else {
      __ret_warn_on = 1;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-scsi.c.prepared",
                           3840);
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
      sdev = 0;
    }
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  ldv_mutex_unlock_29(& (ap->scsi_host)->scan_mutex);
  if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
    tmp___2 = dev_name((struct device const *)(& sdev->sdev_gendev));
    ata_dev_printk((struct ata_device const *)dev, "\016", "detaching (SCSI %s)\n",
                   tmp___2);
    scsi_remove_device(sdev);
    scsi_device_put(sdev);
  } else {
  }
  return;
}
}
static void ata_scsi_handle_link_detach(struct ata_link *link )
{
  struct ata_port *ap ;
  struct ata_device *dev ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  ap = link->ap;
  dev = ata_dev_next(0, link, 2);
  goto ldv_39199;
  ldv_39198: ;
  if ((dev->flags & 33554432UL) == 0UL) {
    goto ldv_39194;
  } else {
  }
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  dev->flags = dev->flags & 0xfffffffffdffffffUL;
  spin_unlock_irqrestore(ap->lock, flags);
  ata_scsi_remove_dev(dev);
  ldv_39194:
  dev = ata_dev_next(dev, link, 2);
  ldv_39199: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_39198;
  } else {
  }
  return;
}
}
void ata_scsi_media_change_notify(struct ata_device *dev )
{
  {
  if ((unsigned long )dev->sdev != (unsigned long )((struct scsi_device *)0)) {
    sdev_evt_send_simple(dev->sdev, 1, 32U);
  } else {
  }
  return;
}
}
void ata_scsi_hotplug(struct work_struct *work )
{
  struct ata_port *ap ;
  struct work_struct const *__mptr ;
  int i ;
  {
  __mptr = (struct work_struct const *)work;
  ap = (struct ata_port *)__mptr + 0xffffffffffffc0d8UL;
  if ((ap->pflags & 512U) != 0U) {
    return;
  } else {
  }
  ldv_mutex_lock_30(& ap->scsi_scan_mutex);
  ata_scsi_handle_link_detach(& ap->link);
  if ((unsigned long )ap->pmp_link != (unsigned long )((struct ata_link *)0)) {
    i = 0;
    goto ldv_39212;
    ldv_39211:
    ata_scsi_handle_link_detach(ap->pmp_link + (unsigned long )i);
    i = i + 1;
    ldv_39212: ;
    if (i <= 14) {
      goto ldv_39211;
    } else {
    }
  } else {
  }
  ata_scsi_scan_host(ap, 0);
  ldv_mutex_unlock_31(& ap->scsi_scan_mutex);
  return;
}
}
int ata_scsi_user_scan(struct Scsi_Host *shost , unsigned int channel , unsigned int id ,
                       unsigned int lun )
{
  struct ata_port *ap ;
  struct ata_port *tmp ;
  unsigned long flags ;
  int devno ;
  int rc ;
  bool tmp___0 ;
  int tmp___1 ;
  raw_spinlock_t *tmp___2 ;
  struct ata_link *link ;
  struct ata_eh_info *ehi ;
  struct ata_device *dev ;
  struct ata_device *tmp___3 ;
  struct ata_eh_info *ehi___0 ;
  {
  tmp = ata_shost_to_port(shost);
  ap = tmp;
  rc = 0;
  if ((unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0)) {
    return (-95);
  } else {
  }
  if (lun != 4294967295U && lun != 0U) {
    return (-22);
  } else {
  }
  tmp___0 = sata_pmp_attached(ap);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    if (channel != 4294967295U && channel != 0U) {
      return (-22);
    } else {
    }
    devno = (int )id;
  } else {
    if (id != 4294967295U && id != 0U) {
      return (-22);
    } else {
    }
    devno = (int )channel;
  }
  tmp___2 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___2);
  if (devno == -1) {
    link = ata_link_next(0, ap, 0);
    goto ldv_39230;
    ldv_39229:
    ehi = & link->eh_info;
    ehi->probe_mask = ehi->probe_mask | 3U;
    ehi->action = ehi->action | 6U;
    link = ata_link_next(link, ap, 0);
    ldv_39230: ;
    if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
      goto ldv_39229;
    } else {
    }
  } else {
    tmp___3 = ata_find_dev(ap, devno);
    dev = tmp___3;
    if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
      ehi___0 = & (dev->link)->eh_info;
      ehi___0->probe_mask = ehi___0->probe_mask | (unsigned int )(1 << (int )dev->devno);
      ehi___0->action = ehi___0->action | 6U;
    } else {
      rc = -22;
    }
  }
  if (rc == 0) {
    ata_port_schedule_eh(ap);
    spin_unlock_irqrestore(ap->lock, flags);
    ata_port_wait_eh(ap);
  } else {
    spin_unlock_irqrestore(ap->lock, flags);
  }
  return (rc);
}
}
void ata_scsi_dev_rescan(struct work_struct *work )
{
  struct ata_port *ap ;
  struct work_struct const *__mptr ;
  struct ata_link *link ;
  struct ata_device *dev ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct scsi_device *sdev ;
  int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  __mptr = (struct work_struct const *)work;
  ap = (struct ata_port *)__mptr + 0xffffffffffffc000UL;
  ldv_mutex_lock_32(& ap->scsi_scan_mutex);
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  link = ata_link_next(0, ap, 0);
  goto ldv_39255;
  ldv_39254:
  dev = ata_dev_next(0, link, 0);
  goto ldv_39252;
  ldv_39251:
  sdev = dev->sdev;
  if ((unsigned long )sdev == (unsigned long )((struct scsi_device *)0)) {
    goto ldv_39247;
  } else {
  }
  tmp___0 = scsi_device_get(sdev);
  if (tmp___0 != 0) {
    goto ldv_39247;
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  scsi_rescan_device(& sdev->sdev_gendev);
  scsi_device_put(sdev);
  tmp___1 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  ldv_39247:
  dev = ata_dev_next(dev, link, 0);
  ldv_39252: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_39251;
  } else {
  }
  link = ata_link_next(link, ap, 0);
  ldv_39255: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_39254;
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  ldv_mutex_unlock_33(& ap->scsi_scan_mutex);
  return;
}
}
struct ata_port *ata_sas_port_alloc(struct ata_host *host , struct ata_port_info *port_info ,
                                    struct Scsi_Host *shost )
{
  struct ata_port *ap ;
  {
  ap = ata_port_alloc(host);
  if ((unsigned long )ap == (unsigned long )((struct ata_port *)0)) {
    return (0);
  } else {
  }
  ap->port_no = 0U;
  ap->lock = & host->lock;
  ap->pio_mask = (unsigned int )port_info->pio_mask;
  ap->mwdma_mask = (unsigned int )port_info->mwdma_mask;
  ap->udma_mask = (unsigned int )port_info->udma_mask;
  ap->flags = ap->flags | port_info->flags;
  ap->ops = port_info->port_ops;
  ap->cbl = 6U;
  return (ap);
}
}
int ata_sas_port_start(struct ata_port *ap )
{
  {
  if ((unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0)) {
    ap->pflags = ap->pflags & 4294967291U;
  } else {
  }
  return (0);
}
}
void ata_sas_port_stop(struct ata_port *ap )
{
  {
  return;
}
}
void ata_sas_async_probe(struct ata_port *ap )
{
  {
  __ata_port_probe(ap);
  return;
}
}
int ata_sas_sync_probe(struct ata_port *ap )
{
  int tmp ;
  {
  tmp = ata_port_probe(ap);
  return (tmp);
}
}
int ata_sas_port_init(struct ata_port *ap )
{
  int rc ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = (*((ap->ops)->port_start))(ap);
  rc = tmp;
  if (rc != 0) {
    return (rc);
  } else {
  }
  tmp___0 = atomic_add_return(1, & ata_print_id);
  ap->print_id = (unsigned int )tmp___0;
  return (0);
}
}
void ata_sas_port_destroy(struct ata_port *ap )
{
  {
  if ((unsigned long )(ap->ops)->port_stop != (unsigned long )((void (*)(struct ata_port * ))0)) {
    (*((ap->ops)->port_stop))(ap);
  } else {
  }
  kfree((void const *)ap);
  return;
}
}
int ata_sas_slave_configure(struct scsi_device *sdev , struct ata_port *ap )
{
  {
  ata_scsi_sdev_config(sdev);
  ata_scsi_dev_config(sdev, (struct ata_device *)(& ap->link.device));
  return (0);
}
}
int ata_sas_queuecmd(struct scsi_cmnd *cmd , struct ata_port *ap )
{
  int rc ;
  unsigned int tmp ;
  long tmp___0 ;
  {
  rc = 0;
  ata_scsi_dump_cdb(ap, cmd);
  tmp = ata_dev_enabled((struct ata_device const *)(& ap->link.device));
  tmp___0 = ldv__builtin_expect(tmp != 0U, 1L);
  if (tmp___0 != 0L) {
    rc = __ata_scsi_queuecmd(cmd, (struct ata_device *)(& ap->link.device));
  } else {
    cmd->result = 262144;
    (*(cmd->scsi_done))(cmd);
  }
  return (rc);
}
}
void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_24(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
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
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_pm_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_pm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_scan_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_scan_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_scsi_scan_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_scsi_scan_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_scsi_scan_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_scsi_scan_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern int vscnprintf(char * , size_t , char const * , __va_list_tag * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static void __list_splice(struct list_head const *list , struct list_head *prev ,
                                   struct list_head *next )
{
  struct list_head *first ;
  struct list_head *last ;
  {
  first = list->next;
  last = list->prev;
  first->prev = prev;
  prev->next = first;
  last->next = next;
  next->prev = last;
  return;
}
}
__inline static void list_splice_init(struct list_head *list , struct list_head *head )
{
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)list);
  if (tmp == 0) {
    __list_splice((struct list_head const *)list, head, head->next);
    INIT_LIST_HEAD(list);
  } else {
  }
  return;
}
}
extern struct pv_lock_ops pv_lock_ops ;
__inline static int arch_spin_is_locked(struct arch_spinlock *lock )
{
  int __ret ;
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
  tmp = ldv__builtin_expect((unsigned long )pv_lock_ops.spin_is_locked == (unsigned long )((int (*)(struct arch_spinlock * ))0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (718), "i" (12UL));
    ldv_4664: ;
    goto ldv_4664;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c6;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c5\n  .byte 772b-771b\n  .short %c7\n.popsection\n": "=D" (__edi),
                       "=S" (__esi), "=d" (__edx), "=c" (__ecx), "=a" (__eax): [paravirt_typenum] "i" (95UL),
                       [paravirt_opptr] "i" (& pv_lock_ops.spin_is_locked), [paravirt_clobber] "i" (511),
                       "D" ((unsigned long )lock): "memory", "cc", "r8", "r9", "r10",
                       "r11");
  __ret = (int )__eax;
  return (__ret);
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
  rep_nop();
  return;
}
}
int ldv_mutex_trylock_54(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_56(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_eh_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_eh_mutex(struct mutex *lock ) ;
__inline static void arch_spin_unlock_wait(arch_spinlock_t *lock )
{
  int tmp ;
  {
  goto ldv_6499;
  ldv_6498:
  cpu_relax();
  ldv_6499:
  tmp = arch_spin_is_locked(lock);
  if (tmp != 0) {
    goto ldv_6498;
  } else {
  }
  return;
}
}
__inline static void spin_unlock_wait(spinlock_t *lock )
{
  {
  arch_spin_unlock_wait(& lock->ldv_5961.rlock.raw_lock);
  return;
}
}
__inline static u64 get_jiffies_64(void)
{
  {
  return ((u64 )jiffies);
}
}
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
extern bool schedule_work(struct work_struct * ) ;
extern bool schedule_delayed_work(struct delayed_work * , unsigned long ) ;
extern long schedule_timeout_uninterruptible(long ) ;
extern void schedule(void) ;
extern void blk_abort_request(struct request * ) ;
__inline static int scsi_host_in_recovery(struct Scsi_Host *shost )
{
  {
  return ((((unsigned int )shost->shost_state == 5U || (unsigned int )shost->shost_state == 6U) || (unsigned int )shost->shost_state == 7U) || (unsigned int )*((unsigned char *)shost + 625UL) != 0U);
}
}
extern void scsi_eh_finish_cmd(struct scsi_cmnd * , struct list_head * ) ;
extern void scsi_eh_flush_done_q(struct list_head * ) ;
extern void scsi_print_command(struct scsi_cmnd * ) ;
extern void scsi_schedule_eh(struct Scsi_Host * ) ;
__inline static int ata_is_atapi(u8 prot )
{
  unsigned int tmp ;
  {
  tmp = ata_prot_flags((int )prot);
  return ((int )tmp & 8);
}
}
__inline static bool ata_id_has_hipm(u16 const *id )
{
  u16 val ;
  {
  val = *(id + 76UL);
  if ((unsigned int )val == 0U || (unsigned int )val == 65535U) {
    return (0);
  } else {
  }
  return (((int )val & 512) != 0);
}
}
__inline static bool ata_id_has_dipm(u16 const *id )
{
  u16 val ;
  {
  val = *(id + 78UL);
  if ((unsigned int )val == 0U || (unsigned int )val == 65535U) {
    return (0);
  } else {
  }
  return (((int )val & 8) != 0);
}
}
void ata_scsi_port_error_handler(struct Scsi_Host *host , struct ata_port *ap ) ;
void ata_scsi_cmd_error_handler(struct Scsi_Host *host , struct ata_port *ap , struct list_head *eh_work_q ) ;
int ata_port_abort(struct ata_port *ap ) ;
int sata_async_notification(struct ata_port *ap ) ;
void ata_eh_thaw_port(struct ata_port *ap ) ;
void ata_eh_qc_complete(struct ata_queued_cmd *qc ) ;
void ata_eh_qc_retry(struct ata_queued_cmd *qc ) ;
void ata_eh_analyze_ncq_error(struct ata_link *link ) ;
void ata_do_eh(struct ata_port *ap , int (*prereset)(struct ata_link * , unsigned long ) ,
               int (*softreset)(struct ata_link * , unsigned int * , unsigned long ) ,
               int (*hardreset)(struct ata_link * , unsigned int * , unsigned long ) ,
               void (*postreset)(struct ata_link * , unsigned int * ) ) ;
void __ata_ehi_push_desc(struct ata_eh_info *ehi , char const *fmt , ...) ;
__inline static void ata_ehi_hotplugged(struct ata_eh_info *ehi )
{
  {
  ehi->probe_mask = ehi->probe_mask | 3U;
  ehi->flags = ehi->flags | 1U;
  ehi->action = ehi->action | 14U;
  ehi->err_mask = ehi->err_mask | 16U;
  return;
}
}
void ata_port_pbar_desc(struct ata_port *ap , int bar , ssize_t offset , char const *name ) ;
int ata_acpi_on_suspend(struct ata_port *ap ) ;
void ata_acpi_on_resume(struct ata_port *ap ) ;
void ata_acpi_on_disable(struct ata_device *dev ) ;
void ata_acpi_set_state(struct ata_port *ap , pm_message_t state ) ;
int ata_scsi_timed_out(struct scsi_cmnd *cmd ) ;
void ata_scsi_error(struct Scsi_Host *host ) ;
void ata_eh_detach_dev(struct ata_device *dev ) ;
void ata_eh_about_to_do(struct ata_link *link , struct ata_device *dev , unsigned int action ) ;
void ata_eh_done(struct ata_link *link , struct ata_device *dev , unsigned int action ) ;
void ata_eh_autopsy(struct ata_port *ap ) ;
char const *ata_get_cmd_descript(u8 command ) ;
void ata_eh_report(struct ata_port *ap ) ;
int ata_eh_reset(struct ata_link *link , int classify , int (*prereset)(struct ata_link * ,
                                                                        unsigned long ) ,
                 int (*softreset)(struct ata_link * , unsigned int * , unsigned long ) ,
                 int (*hardreset)(struct ata_link * , unsigned int * , unsigned long ) ,
                 void (*postreset)(struct ata_link * , unsigned int * ) ) ;
int ata_eh_recover(struct ata_port *ap , int (*prereset)(struct ata_link * , unsigned long ) ,
                   int (*softreset)(struct ata_link * , unsigned int * , unsigned long ) ,
                   int (*hardreset)(struct ata_link * , unsigned int * , unsigned long ) ,
                   void (*postreset)(struct ata_link * , unsigned int * ) , struct ata_link **r_failed_link ) ;
void ata_eh_finish(struct ata_port *ap ) ;
int ata_ering_map(struct ata_ering *ering , int (*map_fn)(struct ata_ering_entry * ,
                                                          void * ) , void *arg ) ;
int sata_pmp_set_lpm(struct ata_link *link , enum ata_lpm_policy policy , unsigned int hints ) ;
int sata_pmp_attach(struct ata_device *dev ) ;
static unsigned long const ata_eh_reset_timeouts[5U] = { 10000UL, 10000UL, 35000UL, 5000UL,
        0xffffffffffffffffUL};
static unsigned long const ata_eh_identify_timeouts[4U] = { 5000UL, 10000UL, 30000UL, 0xffffffffffffffffUL};
static unsigned long const ata_eh_flush_timeouts[4U] = { 15000UL, 15000UL, 30000UL, 0xffffffffffffffffUL};
static unsigned long const ata_eh_other_timeouts[3U] = { 5000UL, 10000UL, 0xffffffffffffffffUL};
static u8 const __constr_expr_0[3] = { 236U, 161U, 0U};
static u8 const __constr_expr_1[3] = { 248U, 39U, 0U};
static u8 const __constr_expr_2[3] = { 249U, 55U, 0U};
static u8 const __constr_expr_3[2] = { 239U, 0U};
static u8 const __constr_expr_4[2] = { 145U, 0U};
static u8 const __constr_expr_5[3] = { 231U, 234U, 0U};
static struct ata_eh_cmd_timeout_ent const ata_eh_cmd_timeout_table[6U] = { {(u8 const *)(& __constr_expr_0), (unsigned long const *)(& ata_eh_identify_timeouts)},
        {(u8 const *)(& __constr_expr_1),
      (unsigned long const *)(& ata_eh_other_timeouts)},
        {(u8 const *)(& __constr_expr_2), (unsigned long const *)(& ata_eh_other_timeouts)},
        {(u8 const *)(& __constr_expr_3),
      (unsigned long const *)(& ata_eh_other_timeouts)},
        {(u8 const *)(& __constr_expr_4), (unsigned long const *)(& ata_eh_other_timeouts)},
        {(u8 const *)(& __constr_expr_5),
      (unsigned long const *)(& ata_eh_flush_timeouts)}};
static void __ata_port_freeze(struct ata_port *ap ) ;
static void ata_eh_handle_port_suspend(struct ata_port *ap ) ;
static void ata_eh_handle_port_resume(struct ata_port *ap ) ;
static void __ata_ehi_pushv_desc(struct ata_eh_info *ehi , char const *fmt , __va_list_tag *args )
{
  int tmp ;
  {
  tmp = vscnprintf((char *)(& ehi->desc) + (unsigned long )ehi->desc_len, (size_t )(80 - ehi->desc_len),
                   fmt, args);
  ehi->desc_len = ehi->desc_len + tmp;
  return;
}
}
void __ata_ehi_push_desc(struct ata_eh_info *ehi , char const *fmt , ...)
{
  va_list args ;
  {
  __builtin_va_start((__va_list_tag *)(& args), fmt);
  __ata_ehi_pushv_desc(ehi, fmt, (__va_list_tag *)(& args));
  __builtin_va_end((__va_list_tag *)(& args));
  return;
}
}
void ata_ehi_push_desc(struct ata_eh_info *ehi , char const *fmt , ...)
{
  va_list args ;
  {
  if (ehi->desc_len != 0) {
    __ata_ehi_push_desc(ehi, ", ");
  } else {
  }
  __builtin_va_start((__va_list_tag *)(& args), fmt);
  __ata_ehi_pushv_desc(ehi, fmt, (__va_list_tag *)(& args));
  __builtin_va_end((__va_list_tag *)(& args));
  return;
}
}
void ata_ehi_clear_desc(struct ata_eh_info *ehi )
{
  {
  ehi->desc[0] = 0;
  ehi->desc_len = 0;
  return;
}
}
void ata_port_desc(struct ata_port *ap , char const *fmt , ...)
{
  va_list args ;
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = (ap->pflags & 128U) == 0U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                       321);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (ap->link.eh_info.desc_len != 0) {
    __ata_ehi_push_desc(& ap->link.eh_info, " ");
  } else {
  }
  __builtin_va_start((__va_list_tag *)(& args), fmt);
  __ata_ehi_pushv_desc(& ap->link.eh_info, fmt, (__va_list_tag *)(& args));
  __builtin_va_end((__va_list_tag *)(& args));
  return;
}
}
void ata_port_pbar_desc(struct ata_port *ap , int bar , ssize_t offset , char const *name )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  char *type ;
  unsigned long long start ;
  unsigned long long len ;
  {
  __mptr = (struct device const *)(ap->host)->dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  type = (char *)"";
  if ((pdev->resource[bar].flags & 512UL) != 0UL) {
    type = (char *)"m";
  } else
  if ((pdev->resource[bar].flags & 256UL) != 0UL) {
    type = (char *)"i";
  } else {
  }
  start = pdev->resource[bar].start;
  len = pdev->resource[bar].start != 0ULL || pdev->resource[bar].end != pdev->resource[bar].start ? (pdev->resource[bar].end - pdev->resource[bar].start) + 1ULL : 0ULL;
  if (offset < 0L) {
    ata_port_desc(ap, "%s %s%llu@0x%llx", name, type, len, start);
  } else {
    ata_port_desc(ap, "%s 0x%llx", name, start + (unsigned long long )offset);
  }
  return;
}
}
static int ata_lookup_timeout_table(u8 cmd )
{
  int i ;
  u8 const *cur ;
  {
  i = 0;
  goto ldv_38068;
  ldv_38067:
  cur = ata_eh_cmd_timeout_table[i].commands;
  goto ldv_38065;
  ldv_38064: ;
  if ((int )((unsigned char )*cur) == (int )cmd) {
    return (i);
  } else {
  }
  cur = cur + 1;
  ldv_38065: ;
  if ((unsigned int )((unsigned char )*cur) != 0U) {
    goto ldv_38064;
  } else {
  }
  i = i + 1;
  ldv_38068: ;
  if (i <= 5) {
    goto ldv_38067;
  } else {
  }
  return (-1);
}
}
unsigned long ata_internal_cmd_timeout(struct ata_device *dev , u8 cmd )
{
  struct ata_eh_context *ehc ;
  int ent ;
  int tmp ;
  int idx ;
  {
  ehc = & (dev->link)->eh_context;
  tmp = ata_lookup_timeout_table((int )cmd);
  ent = tmp;
  if (ent < 0) {
    return (5000UL);
  } else {
  }
  idx = ehc->cmd_timeout_idx[dev->devno][ent];
  return ((unsigned long )*(ata_eh_cmd_timeout_table[ent].timeouts + (unsigned long )idx));
}
}
void ata_internal_cmd_timed_out(struct ata_device *dev , u8 cmd )
{
  struct ata_eh_context *ehc ;
  int ent ;
  int tmp ;
  int idx ;
  {
  ehc = & (dev->link)->eh_context;
  tmp = ata_lookup_timeout_table((int )cmd);
  ent = tmp;
  if (ent < 0) {
    return;
  } else {
  }
  idx = ehc->cmd_timeout_idx[dev->devno][ent];
  if ((unsigned long )*(ata_eh_cmd_timeout_table[ent].timeouts + ((unsigned long )idx + 1UL)) != 0xffffffffffffffffUL) {
    ehc->cmd_timeout_idx[dev->devno][ent] = ehc->cmd_timeout_idx[dev->devno][ent] + 1;
  } else {
  }
  return;
}
}
static void ata_ering_record(struct ata_ering *ering , unsigned int eflags , unsigned int err_mask )
{
  struct ata_ering_entry *ent ;
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = err_mask == 0U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                       444);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ering->cursor = ering->cursor + 1;
  ering->cursor = ering->cursor % 32;
  ent = (struct ata_ering_entry *)(& ering->ring) + (unsigned long )ering->cursor;
  ent->eflags = eflags;
  ent->err_mask = err_mask;
  ent->timestamp = get_jiffies_64();
  return;
}
}
static struct ata_ering_entry *ata_ering_top(struct ata_ering *ering )
{
  struct ata_ering_entry *ent ;
  {
  ent = (struct ata_ering_entry *)(& ering->ring) + (unsigned long )ering->cursor;
  if (ent->err_mask != 0U) {
    return (ent);
  } else {
  }
  return (0);
}
}
int ata_ering_map(struct ata_ering *ering , int (*map_fn)(struct ata_ering_entry * ,
                                                          void * ) , void *arg )
{
  int idx ;
  int rc ;
  struct ata_ering_entry *ent ;
  {
  rc = 0;
  idx = ering->cursor;
  ldv_38107:
  ent = (struct ata_ering_entry *)(& ering->ring) + (unsigned long )idx;
  if (ent->err_mask == 0U) {
    goto ldv_38106;
  } else {
  }
  rc = (*map_fn)(ent, arg);
  if (rc != 0) {
    goto ldv_38106;
  } else {
  }
  idx = (idx + 31) % 32;
  if (ering->cursor != idx) {
    goto ldv_38107;
  } else {
  }
  ldv_38106: ;
  return (rc);
}
}
static int ata_ering_clear_cb(struct ata_ering_entry *ent , void *void_arg )
{
  {
  ent->eflags = ent->eflags | 2147483648U;
  return (0);
}
}
static void ata_ering_clear(struct ata_ering *ering )
{
  {
  ata_ering_map(ering, & ata_ering_clear_cb, 0);
  return;
}
}
static unsigned int ata_eh_dev_action(struct ata_device *dev )
{
  struct ata_eh_context *ehc ;
  {
  ehc = & (dev->link)->eh_context;
  return (ehc->i.action | ehc->i.dev_action[dev->devno]);
}
}
static void ata_eh_clear_action(struct ata_link *link , struct ata_device *dev , struct ata_eh_info *ehi ,
                                unsigned int action )
{
  struct ata_device *tdev ;
  int __ret_warn_on ;
  long tmp ;
  {
  if ((unsigned long )dev == (unsigned long )((struct ata_device *)0)) {
    ehi->action = ehi->action & ~ action;
    tdev = ata_dev_next(0, link, 2);
    goto ldv_38127;
    ldv_38126:
    ehi->dev_action[tdev->devno] = ehi->dev_action[tdev->devno] & ~ action;
    tdev = ata_dev_next(tdev, link, 2);
    ldv_38127: ;
    if ((unsigned long )tdev != (unsigned long )((struct ata_device *)0)) {
      goto ldv_38126;
    } else {
    }
  } else {
    __ret_warn_on = (action & 33U) == 0U;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                         514);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if ((ehi->action & action) != 0U) {
      tdev = ata_dev_next(0, link, 2);
      goto ldv_38132;
      ldv_38131:
      ehi->dev_action[tdev->devno] = ehi->dev_action[tdev->devno] | (ehi->action & action);
      tdev = ata_dev_next(tdev, link, 2);
      ldv_38132: ;
      if ((unsigned long )tdev != (unsigned long )((struct ata_device *)0)) {
        goto ldv_38131;
      } else {
      }
      ehi->action = ehi->action & ~ action;
    } else {
    }
    ehi->dev_action[dev->devno] = ehi->dev_action[dev->devno] & ~ action;
  }
  return;
}
}
void ata_eh_acquire(struct ata_port *ap )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  ldv_mutex_lock_56(& (ap->host)->eh_mutex);
  __ret_warn_once = (unsigned long )(ap->host)->eh_owner != (unsigned long )((struct task_struct *)0);
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                         543);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  (ap->host)->eh_owner = get_current();
  return;
}
}
void ata_eh_release(struct ata_port *ap )
{
  bool __warned ;
  int __ret_warn_once ;
  struct task_struct *tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_current();
  __ret_warn_once = (unsigned long )(ap->host)->eh_owner != (unsigned long )tmp;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                         559);
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  (ap->host)->eh_owner = 0;
  ldv_mutex_unlock_57(& (ap->host)->eh_mutex);
  return;
}
}
int ata_scsi_timed_out(struct scsi_cmnd *cmd )
{
  struct Scsi_Host *host ;
  struct ata_port *ap ;
  struct ata_port *tmp ;
  unsigned long flags ;
  struct ata_queued_cmd *qc ;
  int ret ;
  raw_spinlock_t *tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  {
  host = (cmd->device)->host;
  tmp = ata_shost_to_port(host);
  ap = tmp;
  if ((unsigned long )(ap->ops)->error_handler != (unsigned long )((void (*)(struct ata_port * ))0)) {
    ret = 0;
    goto out;
  } else {
  }
  ret = 1;
  tmp___0 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  qc = ata_qc_from_tag(ap, ap->link.active_tag);
  if ((unsigned long )qc != (unsigned long )((struct ata_queued_cmd *)0)) {
    __ret_warn_on = (unsigned long )qc->scsicmd != (unsigned long )cmd;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                         602);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    qc->flags = qc->flags | 262144UL;
    qc->err_mask = qc->err_mask | 4U;
    ret = 0;
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  out: ;
  return (ret);
}
}
static void ata_eh_unload(struct ata_port *ap )
{
  struct ata_link *link ;
  struct ata_device *dev ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  link = ata_link_next(0, ap, 2);
  goto ldv_38174;
  ldv_38173:
  sata_scr_write(link, 2, link->saved_scontrol & 4080U);
  dev = ata_dev_next(0, link, 2);
  goto ldv_38171;
  ldv_38170:
  ata_dev_disable(dev);
  dev = ata_dev_next(dev, link, 2);
  ldv_38171: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38170;
  } else {
  }
  link = ata_link_next(link, ap, 2);
  ldv_38174: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_38173;
  } else {
  }
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ata_port_freeze(ap);
  ap->pflags = ap->pflags & 4294967294U;
  ap->pflags = ap->pflags | 1024U;
  spin_unlock_irqrestore(ap->lock, flags);
  return;
}
}
void ata_scsi_error(struct Scsi_Host *host )
{
  struct ata_port *ap ;
  struct ata_port *tmp ;
  unsigned long flags ;
  struct list_head eh_work_q ;
  raw_spinlock_t *tmp___0 ;
  int __ret_warn_on ;
  int tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  {
  tmp = ata_shost_to_port(host);
  ap = tmp;
  eh_work_q.next = & eh_work_q;
  eh_work_q.prev = & eh_work_q;
  tmp___0 = spinlock_check(host->host_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  list_splice_init(& host->eh_cmd_q, & eh_work_q);
  spin_unlock_irqrestore(host->host_lock, flags);
  ata_scsi_cmd_error_handler(host, ap, & eh_work_q);
  ata_scsi_port_error_handler(host, ap);
  if (host->host_failed != 0U) {
    tmp___2 = 1;
  } else {
    tmp___1 = list_empty((struct list_head const *)(& eh_work_q));
    if (tmp___1 == 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  }
  __ret_warn_on = tmp___2;
  tmp___3 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___3 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                       670);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return;
}
}
void ata_scsi_cmd_error_handler(struct Scsi_Host *host , struct ata_port *ap , struct list_head *eh_work_q )
{
  int i ;
  unsigned long flags ;
  struct scsi_cmnd *scmd ;
  struct scsi_cmnd *tmp ;
  int nr_timedout ;
  raw_spinlock_t *tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct ata_queued_cmd *qc ;
  struct list_head const *__mptr___1 ;
  {
  ata_sff_flush_pio_task(ap);
  if ((unsigned long )(ap->ops)->error_handler != (unsigned long )((void (*)(struct ata_port * ))0)) {
    nr_timedout = 0;
    tmp___0 = spinlock_check(ap->lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
    if ((unsigned long )(ap->ops)->lost_interrupt != (unsigned long )((void (*)(struct ata_port * ))0)) {
      (*((ap->ops)->lost_interrupt))(ap);
    } else {
    }
    __mptr = (struct list_head const *)eh_work_q->next;
    scmd = (struct scsi_cmnd *)__mptr + 0xffffffffffffffe8UL;
    __mptr___0 = (struct list_head const *)scmd->eh_entry.next;
    tmp = (struct scsi_cmnd *)__mptr___0 + 0xffffffffffffffe8UL;
    goto ldv_38214;
    ldv_38213:
    i = 0;
    goto ldv_38212;
    ldv_38211:
    qc = __ata_qc_from_tag(ap, (unsigned int )i);
    if ((int )qc->flags & 1 && (unsigned long )qc->scsicmd == (unsigned long )scmd) {
      goto ldv_38210;
    } else {
    }
    i = i + 1;
    ldv_38212: ;
    if (i <= 31) {
      goto ldv_38211;
    } else {
    }
    ldv_38210: ;
    if (i <= 31) {
      if ((qc->flags & 65536UL) == 0UL) {
        qc->err_mask = qc->err_mask | 4U;
        qc->flags = qc->flags | 65536UL;
        nr_timedout = nr_timedout + 1;
      } else {
        scmd->retries = scmd->allowed;
        scsi_eh_finish_cmd(scmd, & ap->eh_done_q);
      }
    } else {
    }
    scmd = tmp;
    __mptr___1 = (struct list_head const *)tmp->eh_entry.next;
    tmp = (struct scsi_cmnd *)__mptr___1 + 0xffffffffffffffe8UL;
    ldv_38214: ;
    if ((unsigned long )(& scmd->eh_entry) != (unsigned long )eh_work_q) {
      goto ldv_38213;
    } else {
    }
    if (nr_timedout != 0) {
      __ata_port_freeze(ap);
    } else {
    }
    spin_unlock_irqrestore(ap->lock, flags);
    ap->eh_tries = 5;
  } else {
    spin_unlock_wait(ap->lock);
  }
  return;
}
}
void ata_scsi_port_error_handler(struct Scsi_Host *host , struct ata_port *ap )
{
  unsigned long flags ;
  struct ata_link *link ;
  raw_spinlock_t *tmp ;
  struct ata_eh_context *ehc ;
  struct ata_device *dev ;
  int devno ;
  int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  int __ret_warn_on ;
  struct ata_queued_cmd *tmp___2 ;
  long tmp___3 ;
  raw_spinlock_t *tmp___4 ;
  {
  if ((unsigned long )(ap->ops)->error_handler != (unsigned long )((void (*)(struct ata_port * ))0)) {
    ata_eh_acquire(ap);
    repeat:
    del_timer_sync(& ap->fastdrain_timer);
    ata_eh_handle_port_resume(ap);
    tmp = spinlock_check(ap->lock);
    flags = _raw_spin_lock_irqsave(tmp);
    link = ata_link_next(0, ap, 1);
    goto ldv_38241;
    ldv_38240:
    ehc = & link->eh_context;
    memset((void *)(& link->eh_context), 0, 208UL);
    link->eh_context.i = link->eh_info;
    memset((void *)(& link->eh_info), 0, 120UL);
    dev = ata_dev_next(0, link, 0);
    goto ldv_38238;
    ldv_38237:
    devno = (int )dev->devno;
    ehc->saved_xfer_mode[devno] = dev->xfer_mode;
    tmp___0 = ata_ncq_enabled(dev);
    if (tmp___0 != 0) {
      ehc->saved_ncq_enabled = ehc->saved_ncq_enabled | (unsigned int )(1 << devno);
    } else {
    }
    dev = ata_dev_next(dev, link, 0);
    ldv_38238: ;
    if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
      goto ldv_38237;
    } else {
    }
    link = ata_link_next(link, ap, 1);
    ldv_38241: ;
    if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
      goto ldv_38240;
    } else {
    }
    ap->pflags = ap->pflags | 2U;
    ap->pflags = ap->pflags & 4294967294U;
    ap->excl_link = 0;
    spin_unlock_irqrestore(ap->lock, flags);
    if ((ap->pflags & 131584U) == 0U) {
      (*((ap->ops)->error_handler))(ap);
    } else {
      if ((ap->pflags & 512U) != 0U && (ap->pflags & 1024U) == 0U) {
        ata_eh_unload(ap);
      } else {
      }
      ata_eh_finish(ap);
    }
    ata_eh_handle_port_suspend(ap);
    tmp___1 = spinlock_check(ap->lock);
    flags = _raw_spin_lock_irqsave(tmp___1);
    if ((int )ap->pflags & 1) {
      ap->eh_tries = ap->eh_tries - 1;
      if (ap->eh_tries != 0) {
        spin_unlock_irqrestore(ap->lock, flags);
        goto repeat;
      } else {
      }
      ata_port_printk((struct ata_port const *)ap, "\v", "EH pending after %d tries, giving up\n",
                      5);
      ap->pflags = ap->pflags & 4294967294U;
    } else {
    }
    link = ata_link_next(0, ap, 1);
    goto ldv_38247;
    ldv_38246:
    memset((void *)(& link->eh_info), 0, 120UL);
    link = ata_link_next(link, ap, 1);
    ldv_38247: ;
    if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
      goto ldv_38246;
    } else {
    }
    (*((ap->ops)->end_eh))(ap);
    spin_unlock_irqrestore(ap->lock, flags);
    ata_eh_release(ap);
  } else {
    tmp___2 = ata_qc_from_tag(ap, ap->link.active_tag);
    __ret_warn_on = (unsigned long )tmp___2 == (unsigned long )((struct ata_queued_cmd *)0);
    tmp___3 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___3 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                         869);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    (*((ap->ops)->eng_timeout))(ap);
  }
  scsi_eh_flush_done_q(& ap->eh_done_q);
  tmp___4 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___4);
  if ((ap->pflags & 16U) != 0U) {
    ap->pflags = ap->pflags & 4294967279U;
  } else
  if ((ap->pflags & 64U) != 0U) {
    schedule_delayed_work(& ap->hotplug_task, 0UL);
  } else {
  }
  if ((ap->pflags & 8U) != 0U) {
    ata_port_printk((struct ata_port const *)ap, "\016", "EH complete\n");
  } else {
  }
  ap->pflags = ap->pflags & 4294967223U;
  ap->pflags = ap->pflags & 4294967293U;
  __wake_up(& ap->eh_wait_q, 3U, 0, 0);
  spin_unlock_irqrestore(ap->lock, flags);
  return;
}
}
void ata_port_wait_eh(struct ata_port *ap )
{
  unsigned long flags ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  raw_spinlock_t *tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  {
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  retry:
  tmp___0 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  goto ldv_38274;
  ldv_38273:
  prepare_to_wait(& ap->eh_wait_q, & wait, 2);
  spin_unlock_irqrestore(ap->lock, flags);
  schedule();
  tmp___1 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  ldv_38274: ;
  if ((ap->pflags & 3U) != 0U) {
    goto ldv_38273;
  } else {
  }
  finish_wait(& ap->eh_wait_q, & wait);
  spin_unlock_irqrestore(ap->lock, flags);
  tmp___2 = scsi_host_in_recovery(ap->scsi_host);
  if (tmp___2 != 0) {
    ata_msleep(ap, 10U);
    goto retry;
  } else {
  }
  return;
}
}
static int ata_eh_nr_in_flight(struct ata_port *ap )
{
  unsigned int tag ;
  int nr ;
  struct ata_queued_cmd *tmp ;
  {
  nr = 0;
  tag = 0U;
  goto ldv_38288;
  ldv_38287:
  tmp = ata_qc_from_tag(ap, tag);
  if ((unsigned long )tmp != (unsigned long )((struct ata_queued_cmd *)0)) {
    nr = nr + 1;
  } else {
  }
  tag = tag + 1U;
  ldv_38288: ;
  if (tag <= 30U) {
    goto ldv_38287;
  } else {
  }
  return (nr);
}
}
void ata_eh_fastdrain_timerfn(unsigned long arg )
{
  struct ata_port *ap ;
  unsigned long flags ;
  int cnt ;
  raw_spinlock_t *tmp ;
  unsigned int tag ;
  struct ata_queued_cmd *qc ;
  struct ata_queued_cmd *tmp___0 ;
  {
  ap = (struct ata_port *)arg;
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  cnt = ata_eh_nr_in_flight(ap);
  if (cnt == 0) {
    goto out_unlock;
  } else {
  }
  if ((unsigned long )cnt == ap->fastdrain_cnt) {
    tag = 0U;
    goto ldv_38303;
    ldv_38302:
    tmp___0 = ata_qc_from_tag(ap, tag);
    qc = tmp___0;
    if ((unsigned long )qc != (unsigned long )((struct ata_queued_cmd *)0)) {
      qc->err_mask = qc->err_mask | 4U;
    } else {
    }
    tag = tag + 1U;
    ldv_38303: ;
    if (tag <= 30U) {
      goto ldv_38302;
    } else {
    }
    ata_port_freeze(ap);
  } else {
    ap->fastdrain_cnt = (unsigned long )cnt;
    ap->fastdrain_timer.expires = ata_deadline(jiffies, 3000UL);
    add_timer(& ap->fastdrain_timer);
  }
  out_unlock:
  spin_unlock_irqrestore(ap->lock, flags);
  return;
}
}
static void ata_eh_set_pending(struct ata_port *ap , int fastdrain )
{
  int cnt ;
  {
  if ((int )ap->pflags & 1) {
    return;
  } else {
  }
  ap->pflags = ap->pflags | 1U;
  if (fastdrain == 0) {
    return;
  } else {
  }
  cnt = ata_eh_nr_in_flight(ap);
  if (cnt == 0) {
    return;
  } else {
  }
  ap->fastdrain_cnt = (unsigned long )cnt;
  ap->fastdrain_timer.expires = ata_deadline(jiffies, 3000UL);
  add_timer(& ap->fastdrain_timer);
  return;
}
}
void ata_qc_schedule_eh(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct request_queue *q ;
  unsigned long flags ;
  int __ret_warn_on ;
  long tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  ap = qc->ap;
  q = ((qc->scsicmd)->device)->request_queue;
  __ret_warn_on = (unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                       1036);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  qc->flags = qc->flags | 65536UL;
  ata_eh_set_pending(ap, 1);
  tmp___0 = spinlock_check(q->queue_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  blk_abort_request((qc->scsicmd)->request);
  spin_unlock_irqrestore(q->queue_lock, flags);
  return;
}
}
void ata_std_sched_eh(struct ata_port *ap )
{
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = (unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                       1060);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((ap->pflags & 128U) != 0U) {
    return;
  } else {
  }
  ata_eh_set_pending(ap, 1);
  scsi_schedule_eh(ap->scsi_host);
  return;
}
}
void ata_std_end_eh(struct ata_port *ap )
{
  struct Scsi_Host *host ;
  {
  host = ap->scsi_host;
  host->host_eh_scheduled = 0U;
  return;
}
}
void ata_port_schedule_eh(struct ata_port *ap )
{
  {
  (*((ap->ops)->sched_eh))(ap);
  return;
}
}
static int ata_do_link_abort(struct ata_port *ap , struct ata_link *link )
{
  int tag ;
  int nr_aborted ;
  int __ret_warn_on ;
  long tmp ;
  struct ata_queued_cmd *qc ;
  struct ata_queued_cmd *tmp___0 ;
  {
  nr_aborted = 0;
  __ret_warn_on = (unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                       1113);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ata_eh_set_pending(ap, 0);
  tag = 0;
  goto ldv_38355;
  ldv_38354:
  tmp___0 = ata_qc_from_tag(ap, (unsigned int )tag);
  qc = tmp___0;
  if ((unsigned long )qc != (unsigned long )((struct ata_queued_cmd *)0) && ((unsigned long )link == (unsigned long )((struct ata_link *)0) || (unsigned long )(qc->dev)->link == (unsigned long )link)) {
    qc->flags = qc->flags | 65536UL;
    ata_qc_complete(qc);
    nr_aborted = nr_aborted + 1;
  } else {
  }
  tag = tag + 1;
  ldv_38355: ;
  if (tag <= 31) {
    goto ldv_38354;
  } else {
  }
  if (nr_aborted == 0) {
    ata_port_schedule_eh(ap);
  } else {
  }
  return (nr_aborted);
}
}
int ata_link_abort(struct ata_link *link )
{
  int tmp ;
  {
  tmp = ata_do_link_abort(link->ap, link);
  return (tmp);
}
}
int ata_port_abort(struct ata_port *ap )
{
  int tmp ;
  {
  tmp = ata_do_link_abort(ap, 0);
  return (tmp);
}
}
static void __ata_port_freeze(struct ata_port *ap )
{
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = (unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                       1188);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )(ap->ops)->freeze != (unsigned long )((void (*)(struct ata_port * ))0)) {
    (*((ap->ops)->freeze))(ap);
  } else {
  }
  ap->pflags = ap->pflags | 4U;
  return;
}
}
int ata_port_freeze(struct ata_port *ap )
{
  int nr_aborted ;
  int __ret_warn_on ;
  long tmp ;
  {
  __ret_warn_on = (unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                       1216);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  __ata_port_freeze(ap);
  nr_aborted = ata_port_abort(ap);
  return (nr_aborted);
}
}
int sata_async_notification(struct ata_port *ap )
{
  u32 sntf ;
  int rc ;
  struct ata_device *dev ;
  bool tmp ;
  int tmp___0 ;
  struct ata_link *link ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  if ((ap->flags & 262144UL) == 0UL) {
    return (0);
  } else {
  }
  rc = sata_scr_read(& ap->link, 4, & sntf);
  if (rc == 0) {
    sata_scr_write(& ap->link, 4, sntf);
  } else {
  }
  tmp___1 = sata_pmp_attached(ap);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2 || rc != 0) {
    tmp = sata_pmp_attached(ap);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      dev = (struct ata_device *)(& ap->link.device);
      if (dev->class == 3U && (dev->flags & 128UL) != 0UL) {
        ata_scsi_media_change_notify(dev);
      } else {
      }
      return (0);
    } else {
      ata_port_schedule_eh(ap);
      return (1);
    }
  } else {
    link = ata_link_next(0, ap, 0);
    goto ldv_38383;
    ldv_38382: ;
    if (((u32 )(1 << link->pmp) & sntf) == 0U) {
      goto ldv_38381;
    } else {
    }
    if (((struct ata_device *)(& link->device))->class == 3U && (((struct ata_device *)(& link->device))->flags & 128UL) != 0UL) {
      ata_scsi_media_change_notify((struct ata_device *)(& link->device));
    } else {
    }
    ldv_38381:
    link = ata_link_next(link, ap, 0);
    ldv_38383: ;
    if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
      goto ldv_38382;
    } else {
    }
    if ((sntf & 32768U) != 0U) {
      ata_port_schedule_eh(ap);
      return (1);
    } else {
    }
    return (0);
  }
}
}
void ata_eh_freeze_port(struct ata_port *ap )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  if ((unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0)) {
    return;
  } else {
  }
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  __ata_port_freeze(ap);
  spin_unlock_irqrestore(ap->lock, flags);
  return;
}
}
void ata_eh_thaw_port(struct ata_port *ap )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  if ((unsigned long )(ap->ops)->error_handler == (unsigned long )((void (*)(struct ata_port * ))0)) {
    return;
  } else {
  }
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ap->pflags = ap->pflags & 4294967291U;
  if ((unsigned long )(ap->ops)->thaw != (unsigned long )((void (*)(struct ata_port * ))0)) {
    (*((ap->ops)->thaw))(ap);
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  return;
}
}
static void ata_eh_scsidone(struct scsi_cmnd *scmd )
{
  {
  return;
}
}
static void __ata_eh_qc_complete(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct scsi_cmnd *scmd ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int __ret_warn_on ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  {
  ap = qc->ap;
  scmd = qc->scsicmd;
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  qc->scsidone = & ata_eh_scsidone;
  __ata_qc_complete(qc);
  tmp___0 = ata_tag_valid(qc->tag);
  __ret_warn_on = tmp___0 != 0U;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                       1360);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  spin_unlock_irqrestore(ap->lock, flags);
  scsi_eh_finish_cmd(scmd, & ap->eh_done_q);
  return;
}
}
void ata_eh_qc_complete(struct ata_queued_cmd *qc )
{
  struct scsi_cmnd *scmd ;
  {
  scmd = qc->scsicmd;
  scmd->retries = scmd->allowed;
  __ata_eh_qc_complete(qc);
  return;
}
}
void ata_eh_qc_retry(struct ata_queued_cmd *qc )
{
  struct scsi_cmnd *scmd ;
  {
  scmd = qc->scsicmd;
  if (qc->err_mask == 0U && scmd->retries != 0) {
    scmd->retries = scmd->retries - 1;
  } else {
  }
  __ata_eh_qc_complete(qc);
  return;
}
}
void ata_dev_disable(struct ata_device *dev )
{
  unsigned int tmp ;
  {
  tmp = ata_dev_enabled((struct ata_device const *)dev);
  if (tmp == 0U) {
    return;
  } else {
  }
  if ((int )((dev->link)->ap)->msg_enable & 1) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "disabled\n");
  } else {
  }
  ata_acpi_on_disable(dev);
  ata_down_xfermask_limit(dev, 2147483652U);
  dev->class = dev->class + 1U;
  ata_ering_clear(& dev->ering);
  return;
}
}
void ata_eh_detach_dev(struct ata_device *dev )
{
  struct ata_link *link ;
  struct ata_port *ap ;
  struct ata_eh_context *ehc ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  {
  link = dev->link;
  ap = link->ap;
  ehc = & link->eh_context;
  ata_dev_disable(dev);
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  dev->flags = dev->flags & 0xfffffffffeffffffUL;
  tmp___0 = ata_scsi_offline_dev(dev);
  if (tmp___0 != 0) {
    dev->flags = dev->flags | 33554432UL;
    ap->pflags = ap->pflags | 64U;
  } else {
  }
  ata_eh_clear_action(link, dev, & link->eh_info, 33U);
  ata_eh_clear_action(link, dev, & link->eh_context.i, 33U);
  ehc->saved_xfer_mode[dev->devno] = 0U;
  ehc->saved_ncq_enabled = ehc->saved_ncq_enabled & (unsigned int )(~ (1 << (int )dev->devno));
  spin_unlock_irqrestore(ap->lock, flags);
  return;
}
}
void ata_eh_about_to_do(struct ata_link *link , struct ata_device *dev , unsigned int action )
{
  struct ata_port *ap ;
  struct ata_eh_info *ehi ;
  struct ata_eh_context *ehc ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  ap = link->ap;
  ehi = & link->eh_info;
  ehc = & link->eh_context;
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ata_eh_clear_action(link, dev, ehi, action);
  if ((ehc->i.flags & 8U) == 0U && (unsigned long )ap->slave_link != (unsigned long )link) {
    ap->pflags = ap->pflags | 8U;
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  return;
}
}
void ata_eh_done(struct ata_link *link , struct ata_device *dev , unsigned int action )
{
  struct ata_eh_context *ehc ;
  {
  ehc = & link->eh_context;
  ata_eh_clear_action(link, dev, & ehc->i, action);
  return;
}
}
static char const *ata_err_string(unsigned int err_mask )
{
  {
  if ((err_mask & 32U) != 0U) {
    return ("host bus error");
  } else {
  }
  if ((err_mask & 16U) != 0U) {
    return ("ATA bus error");
  } else {
  }
  if ((err_mask & 4U) != 0U) {
    return ("timeout");
  } else {
  }
  if ((err_mask & 2U) != 0U) {
    return ("HSM violation");
  } else {
  }
  if ((err_mask & 64U) != 0U) {
    return ("internal error");
  } else {
  }
  if ((err_mask & 8U) != 0U) {
    return ("media error");
  } else {
  }
  if ((err_mask & 128U) != 0U) {
    return ("invalid argument");
  } else {
  }
  if ((int )err_mask & 1) {
    return ("device error");
  } else {
  }
  return ("unknown error");
}
}
unsigned int ata_read_log_page(struct ata_device *dev , u8 log , u8 page , void *buf ,
                               unsigned int sectors )
{
  struct ata_taskfile tf ;
  unsigned int err_mask ;
  {
  ata_tf_init(dev, & tf);
  tf.command = 47U;
  tf.lbal = log;
  tf.lbam = page;
  tf.nsect = (u8 )sectors;
  tf.hob_nsect = (u8 )(sectors >> 8);
  tf.flags = tf.flags | 7UL;
  tf.protocol = 2U;
  err_mask = ata_exec_internal(dev, & tf, 0, 2, buf, sectors * 512U, 0UL);
  return (err_mask);
}
}
static int ata_eh_read_log_10h(struct ata_device *dev , int *tag , struct ata_taskfile *tf )
{
  u8 *buf ;
  unsigned int err_mask ;
  u8 csum ;
  int i ;
  {
  buf = (u8 *)(& ((dev->link)->ap)->sector_buf);
  err_mask = ata_read_log_page(dev, 16, 0, (void *)buf, 1U);
  if (err_mask != 0U) {
    return (-5);
  } else {
  }
  csum = 0U;
  i = 0;
  goto ldv_38474;
  ldv_38473:
  csum = (int )*(buf + (unsigned long )i) + (int )csum;
  i = i + 1;
  ldv_38474: ;
  if (i <= 511) {
    goto ldv_38473;
  } else {
  }
  if ((unsigned int )csum != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "invalid checksum 0x%x on log page 10h\n",
                   (int )csum);
  } else {
  }
  if ((int )((signed char )*buf) < 0) {
    return (-2);
  } else {
  }
  *tag = (int )*buf & 31;
  tf->command = *(buf + 2UL);
  tf->feature = *(buf + 3UL);
  tf->lbal = *(buf + 4UL);
  tf->lbam = *(buf + 5UL);
  tf->lbah = *(buf + 6UL);
  tf->device = *(buf + 7UL);
  tf->hob_lbal = *(buf + 8UL);
  tf->hob_lbam = *(buf + 9UL);
  tf->hob_lbah = *(buf + 10UL);
  tf->nsect = *(buf + 12UL);
  tf->hob_nsect = *(buf + 13UL);
  return (0);
}
}
static unsigned int atapi_eh_tur(struct ata_device *dev , u8 *r_sense_key )
{
  u8 cdb[16U] ;
  unsigned int tmp ;
  struct ata_taskfile tf ;
  unsigned int err_mask ;
  {
  cdb[0] = 0U;
  cdb[1] = 0U;
  cdb[2] = 0U;
  cdb[3] = 0U;
  cdb[4] = 0U;
  cdb[5] = 0U;
  tmp = 6U;
  while (1) {
    if (tmp >= 16U) {
      break;
    } else {
    }
    cdb[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  ata_tf_init(dev, & tf);
  tf.flags = tf.flags | 6UL;
  tf.command = 160U;
  tf.protocol = 5U;
  err_mask = ata_exec_internal(dev, & tf, (u8 const *)(& cdb), 3, 0, 0U, 0UL);
  if (err_mask == 1U) {
    *r_sense_key = (u8 )((int )tf.feature >> 4);
  } else {
  }
  return (err_mask);
}
}
static unsigned int atapi_eh_request_sense(struct ata_device *dev , u8 *sense_buf ,
                                           u8 dfl_sense_key )
{
  u8 cdb[16U] ;
  unsigned int tmp ;
  struct ata_port *ap ;
  struct ata_taskfile tf ;
  unsigned int tmp___0 ;
  {
  cdb[0] = 3U;
  cdb[1] = 0U;
  cdb[2] = 0U;
  cdb[3] = 0U;
  cdb[4] = 96U;
  cdb[5] = 0U;
  tmp = 6U;
  while (1) {
    if (tmp >= 16U) {
      break;
    } else {
    }
    cdb[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  ap = (dev->link)->ap;
  memset((void *)sense_buf, 0, 96UL);
  *sense_buf = 112U;
  *(sense_buf + 2UL) = dfl_sense_key;
  ata_tf_init(dev, & tf);
  tf.flags = tf.flags | 6UL;
  tf.command = 160U;
  if ((ap->flags & 128UL) != 0UL) {
    tf.protocol = 7U;
    tf.feature = (u8 )((unsigned int )tf.feature | 1U);
  } else {
    tf.protocol = 6U;
    tf.lbam = 96U;
    tf.lbah = 0U;
  }
  tmp___0 = ata_exec_internal(dev, & tf, (u8 const *)(& cdb), 2, (void *)sense_buf,
                              96U, 0UL);
  return (tmp___0);
}
}
static void ata_eh_analyze_serror(struct ata_link *link )
{
  struct ata_eh_context *ehc ;
  u32 serror ;
  unsigned int err_mask ;
  unsigned int action ;
  u32 hotplug_mask ;
  int tmp ;
  {
  ehc = & link->eh_context;
  serror = ehc->i.serror;
  err_mask = 0U;
  action = 0U;
  if ((serror & 768U) != 0U) {
    err_mask = err_mask | 16U;
    action = action | 6U;
  } else {
  }
  if ((serror & 1024U) != 0U) {
    err_mask = err_mask | 2U;
    action = action | 6U;
  } else {
  }
  if ((serror & 2048U) != 0U) {
    err_mask = err_mask | 64U;
    action = action | 6U;
  } else {
  }
  if ((unsigned int )link->lpm_policy > 1U) {
    hotplug_mask = 0U;
  } else
  if ((link->flags & 64U) == 0U) {
    hotplug_mask = 67174400U;
  } else {
    tmp = ata_is_host_link((struct ata_link const *)link);
    if (tmp != 0) {
      hotplug_mask = 67174400U;
    } else {
      hotplug_mask = 65536U;
    }
  }
  if ((serror & hotplug_mask) != 0U) {
    ata_ehi_hotplugged(& ehc->i);
  } else {
  }
  ehc->i.err_mask = ehc->i.err_mask | err_mask;
  ehc->i.action = ehc->i.action | action;
  return;
}
}
void ata_eh_analyze_ncq_error(struct ata_link *link )
{
  struct ata_port *ap ;
  struct ata_eh_context *ehc ;
  struct ata_device *dev ;
  struct ata_queued_cmd *qc ;
  struct ata_taskfile tf ;
  int tag ;
  int rc ;
  size_t __len ;
  void *__ret ;
  {
  ap = link->ap;
  ehc = & link->eh_context;
  dev = (struct ata_device *)(& link->device);
  if ((ap->pflags & 4U) != 0U) {
    return;
  } else {
  }
  if (link->sactive == 0U || (ehc->i.err_mask & 1U) == 0U) {
    return;
  } else {
  }
  tag = 0;
  goto ldv_38511;
  ldv_38510:
  qc = __ata_qc_from_tag(ap, (unsigned int )tag);
  if ((qc->flags & 65536UL) == 0UL) {
    goto ldv_38509;
  } else {
  }
  if (qc->err_mask != 0U) {
    return;
  } else {
  }
  ldv_38509:
  tag = tag + 1;
  ldv_38511: ;
  if (tag <= 31) {
    goto ldv_38510;
  } else {
  }
  memset((void *)(& tf), 0, 24UL);
  rc = ata_eh_read_log_10h(dev, & tag, & tf);
  if (rc != 0) {
    ata_link_printk((struct ata_link const *)link, "\v", "failed to read log page 10h (errno=%d)\n",
                    rc);
    return;
  } else {
  }
  if ((link->sactive & (u32 )(1 << tag)) == 0U) {
    ata_link_printk((struct ata_link const *)link, "\v", "log page 10h reported inactive tag %d\n",
                    tag);
    return;
  } else {
  }
  qc = __ata_qc_from_tag(ap, (unsigned int )tag);
  __len = 24UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& qc->result_tf), (void const *)(& tf), __len);
  } else {
    __ret = memcpy((void *)(& qc->result_tf), (void const *)(& tf), __len);
  }
  qc->result_tf.flags = 19UL;
  qc->err_mask = qc->err_mask | 1025U;
  ehc->i.err_mask = ehc->i.err_mask & 4294967294U;
  return;
}
}
static unsigned int ata_eh_analyze_tf(struct ata_queued_cmd *qc , struct ata_taskfile const *tf )
{
  unsigned int tmp ;
  unsigned int action ;
  u8 stat ;
  u8 err ;
  {
  action = 0U;
  stat = tf->command;
  err = tf->feature;
  if (((int )stat & 200) != 64) {
    qc->err_mask = qc->err_mask | 2U;
    return (6U);
  } else {
  }
  if (((int )stat & 33) != 0) {
    qc->err_mask = qc->err_mask | 1U;
  } else {
    return (0U);
  }
  switch ((qc->dev)->class) {
  case 1U: ;
  if ((int )((signed char )err) < 0) {
    qc->err_mask = qc->err_mask | 16U;
  } else {
  }
  if (((int )err & 64) != 0) {
    qc->err_mask = qc->err_mask | 8U;
  } else {
  }
  if (((int )err & 16) != 0) {
    qc->err_mask = qc->err_mask | 128U;
  } else {
  }
  goto ldv_38525;
  case 3U: ;
  if (((qc->ap)->pflags & 4U) == 0U) {
    tmp = atapi_eh_request_sense(qc->dev, (qc->scsicmd)->sense_buffer, (int )qc->result_tf.feature >> 4);
    if (tmp == 0U) {
      qc->flags = qc->flags | 131072UL;
    } else {
      qc->err_mask = qc->err_mask | tmp;
    }
  } else {
  }
  }
  ldv_38525: ;
  if ((qc->err_mask & 22U) != 0U) {
    action = action | 6U;
  } else {
  }
  return (action);
}
}
static int ata_eh_categorize_error(unsigned int eflags , unsigned int err_mask , int *xfer_ok )
{
  int base ;
  {
  base = 0;
  if ((eflags & 2U) == 0U) {
    *xfer_ok = 1;
  } else {
  }
  if (*xfer_ok == 0) {
    base = 4;
  } else {
  }
  if ((err_mask & 16U) != 0U) {
    return (base + 1);
  } else {
  }
  if ((err_mask & 4U) != 0U) {
    return (base + 2);
  } else {
  }
  if ((int )eflags & 1) {
    if ((err_mask & 2U) != 0U) {
      return (base + 2);
    } else {
    }
    if ((err_mask & 137U) == 1U) {
      return (base + 3);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int speed_down_verdict_cb(struct ata_ering_entry *ent , void *void_arg )
{
  struct speed_down_verdict_arg *arg ;
  int cat ;
  {
  arg = (struct speed_down_verdict_arg *)void_arg;
  if ((int )ent->eflags < 0 || ent->timestamp < arg->since) {
    return (-1);
  } else {
  }
  cat = ata_eh_categorize_error(ent->eflags, ent->err_mask, & arg->xfer_ok);
  arg->nr_errors[cat] = arg->nr_errors[cat] + 1;
  return (0);
}
}
static unsigned int ata_eh_speed_down_verdict(struct ata_device *dev )
{
  u64 j5mins ;
  u64 j10mins ;
  u64 j64 ;
  u64 tmp ;
  struct speed_down_verdict_arg arg ;
  unsigned int verdict ;
  u64 _min1 ;
  unsigned long long _min2 ;
  u64 _min1___0 ;
  unsigned long long _min2___0 ;
  {
  j5mins = 75000ULL;
  j10mins = 150000ULL;
  tmp = get_jiffies_64();
  j64 = tmp;
  verdict = 0U;
  memset((void *)(& arg), 0, 48UL);
  _min1 = j64;
  _min2 = j5mins;
  arg.since = j64 - (unsigned long long )((unsigned long long const )_min1 < (unsigned long long const )_min2 ? (unsigned long long const )_min1 : _min2);
  ata_ering_map(& dev->ering, & speed_down_verdict_cb, (void *)(& arg));
  if (arg.nr_errors[5] + arg.nr_errors[6] > 1) {
    verdict = verdict | 14U;
  } else {
  }
  if (arg.nr_errors[6] + arg.nr_errors[7] > 1) {
    verdict = verdict | 9U;
  } else {
  }
  if ((arg.nr_errors[1] + arg.nr_errors[2]) + arg.nr_errors[3] > 6) {
    verdict = verdict | 4U;
  } else {
  }
  memset((void *)(& arg), 0, 48UL);
  _min1___0 = j64;
  _min2___0 = j10mins;
  arg.since = j64 - (unsigned long long )((unsigned long long const )_min1___0 < (unsigned long long const )_min2___0 ? (unsigned long long const )_min1___0 : _min2___0);
  ata_ering_map(& dev->ering, & speed_down_verdict_cb, (void *)(& arg));
  if (arg.nr_errors[2] + arg.nr_errors[3] > 3) {
    verdict = verdict | 1U;
  } else {
  }
  if (arg.nr_errors[1] + arg.nr_errors[2] > 3 || arg.nr_errors[3] > 6) {
    verdict = verdict | 2U;
  } else {
  }
  return (verdict);
}
}
static unsigned int ata_eh_speed_down(struct ata_device *dev , unsigned int eflags ,
                                      unsigned int err_mask )
{
  struct ata_link *link ;
  struct ata_link *tmp ;
  int xfer_ok ;
  unsigned int verdict ;
  unsigned int action ;
  int tmp___0 ;
  int tmp___1 ;
  int dma_dnxfer_sel[2U] ;
  int pio_dnxfer_sel[2U] ;
  int sel ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = ata_dev_phys_link(dev);
  link = tmp;
  xfer_ok = 0;
  action = 0U;
  tmp___0 = ata_eh_categorize_error(eflags, err_mask, & xfer_ok);
  if (tmp___0 == 0) {
    return (0U);
  } else {
  }
  ata_ering_record(& dev->ering, eflags, err_mask);
  verdict = ata_eh_speed_down_verdict(dev);
  if ((int )verdict & 1 && (dev->flags & 12296UL) == 8UL) {
    dev->flags = dev->flags | 8192UL;
    ata_dev_printk((struct ata_device const *)dev, "\f", "NCQ disabled due to excessive errors\n");
    goto done;
  } else {
  }
  if ((verdict & 2U) != 0U) {
    tmp___1 = sata_down_spd_limit(link, 0U);
    if (tmp___1 == 0) {
      action = action | 6U;
      goto done;
    } else {
    }
    if (dev->spdn_cnt <= 1) {
      dma_dnxfer_sel[0] = 1;
      dma_dnxfer_sel[1] = 2;
      pio_dnxfer_sel[0] = 0;
      pio_dnxfer_sel[1] = 4;
      if (dev->xfer_shift != 0U) {
        sel = dma_dnxfer_sel[dev->spdn_cnt];
      } else {
        sel = pio_dnxfer_sel[dev->spdn_cnt];
      }
      dev->spdn_cnt = dev->spdn_cnt + 1;
      tmp___2 = ata_down_xfermask_limit(dev, (unsigned int )sel);
      if (tmp___2 == 0) {
        action = action | 6U;
        goto done;
      } else {
      }
    } else {
    }
  } else {
  }
  if ((((verdict & 4U) != 0U && dev->spdn_cnt > 1) && ((link->ap)->cbl != 6U || dev->class == 3U)) && dev->xfer_shift != 0U) {
    tmp___3 = ata_down_xfermask_limit(dev, 3U);
    if (tmp___3 == 0) {
      dev->spdn_cnt = 0;
      action = action | 6U;
      goto done;
    } else {
    }
  } else {
  }
  return (0U);
  done: ;
  if ((verdict & 8U) == 0U) {
    ata_ering_clear(& dev->ering);
  } else {
  }
  return (action);
}
}
__inline static int ata_eh_worth_retry(struct ata_queued_cmd *qc )
{
  {
  if ((qc->flags & 8UL) != 0UL) {
    return (0);
  } else {
  }
  if ((qc->flags & 8UL) != 0UL) {
    return (1);
  } else {
  }
  if ((qc->err_mask & 128U) != 0U) {
    return (0);
  } else {
  }
  return (qc->err_mask != 1U);
}
}
static void ata_eh_link_autopsy(struct ata_link *link )
{
  struct ata_port *ap ;
  struct ata_eh_context *ehc ;
  struct ata_device *dev ;
  unsigned int all_err_mask ;
  unsigned int eflags ;
  int tag ;
  u32 serror ;
  int rc ;
  struct ata_queued_cmd *qc ;
  struct ata_queued_cmd *tmp ;
  struct ata_link *tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  {
  ap = link->ap;
  ehc = & link->eh_context;
  all_err_mask = 0U;
  eflags = 0U;
  if ((ehc->i.flags & 4U) != 0U) {
    return;
  } else {
  }
  rc = sata_scr_read(link, 1, & serror);
  if (rc == 0) {
    ehc->i.serror = ehc->i.serror | serror;
    ata_eh_analyze_serror(link);
  } else
  if (rc != -95) {
    ehc->i.probe_mask = ehc->i.probe_mask | 3U;
    ehc->i.action = ehc->i.action | 6U;
    ehc->i.err_mask = ehc->i.err_mask | 256U;
  } else {
  }
  ata_eh_analyze_ncq_error(link);
  if ((ehc->i.err_mask & 4294967039U) != 0U) {
    ehc->i.err_mask = ehc->i.err_mask & 4294967039U;
  } else {
  }
  all_err_mask = ehc->i.err_mask | all_err_mask;
  tag = 0;
  goto ldv_38587;
  ldv_38586:
  tmp = __ata_qc_from_tag(ap, (unsigned int )tag);
  qc = tmp;
  if ((qc->flags & 65536UL) == 0UL) {
    goto ldv_38585;
  } else {
    tmp___0 = ata_dev_phys_link(qc->dev);
    if ((unsigned long )tmp___0 != (unsigned long )link) {
      goto ldv_38585;
    } else {
    }
  }
  qc->err_mask = qc->err_mask | ehc->i.err_mask;
  tmp___1 = ata_eh_analyze_tf(qc, (struct ata_taskfile const *)(& qc->result_tf));
  ehc->i.action = ehc->i.action | tmp___1;
  if ((qc->err_mask & 16U) != 0U) {
    qc->err_mask = qc->err_mask & 4294967158U;
  } else {
  }
  if ((qc->err_mask & 4294967039U) != 0U) {
    qc->err_mask = qc->err_mask & 4294967039U;
  } else {
  }
  if ((qc->flags & 131072UL) != 0UL) {
    qc->err_mask = qc->err_mask & 4294967038U;
  } else {
  }
  tmp___2 = ata_eh_worth_retry(qc);
  if (tmp___2 != 0) {
    qc->flags = qc->flags | 128UL;
  } else {
  }
  ehc->i.dev = qc->dev;
  all_err_mask = qc->err_mask | all_err_mask;
  if ((qc->flags & 8UL) != 0UL) {
    eflags = eflags | 1U;
  } else {
  }
  ldv_38585:
  tag = tag + 1;
  ldv_38587: ;
  if (tag <= 31) {
    goto ldv_38586;
  } else {
  }
  if ((ap->pflags & 4U) != 0U || (all_err_mask & 6U) != 0U) {
    ehc->i.action = ehc->i.action | 6U;
  } else
  if (((int )eflags & 1 && all_err_mask != 0U) || ((eflags & 1U) == 0U && (all_err_mask & 4294967294U) != 0U)) {
    ehc->i.action = ehc->i.action | 1U;
  } else {
  }
  if ((unsigned long )ehc->i.dev != (unsigned long )((struct ata_device *)0)) {
    ehc->i.dev_action[(ehc->i.dev)->devno] = ehc->i.dev_action[(ehc->i.dev)->devno] | (ehc->i.action & 33U);
    ehc->i.action = ehc->i.action & 4294967262U;
  } else {
  }
  if ((all_err_mask & 4U) != 0U) {
    tmp___3 = ata_is_host_link((struct ata_link const *)link);
    if (tmp___3 == 0) {
      ap->link.eh_context.i.err_mask = ap->link.eh_context.i.err_mask | 4U;
    } else {
    }
  } else {
  }
  dev = ehc->i.dev;
  if ((unsigned long )dev == (unsigned long )((struct ata_device *)0)) {
    tmp___4 = ata_link_max_devices((struct ata_link const *)link);
    if (tmp___4 == 1) {
      tmp___5 = ata_dev_enabled((struct ata_device const *)(& link->device));
      if (tmp___5 != 0U) {
        dev = (struct ata_device *)(& link->device);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    if ((dev->flags & 65536UL) != 0UL) {
      eflags = eflags | 2U;
    } else {
    }
    tmp___6 = ata_eh_speed_down(dev, eflags, all_err_mask);
    ehc->i.action = ehc->i.action | tmp___6;
  } else {
  }
  return;
}
}
void ata_eh_autopsy(struct ata_port *ap )
{
  struct ata_link *link ;
  struct ata_eh_context *mehc ;
  struct ata_eh_context *sehc ;
  bool tmp ;
  {
  link = ata_link_next(0, ap, 0);
  goto ldv_38594;
  ldv_38593:
  ata_eh_link_autopsy(link);
  link = ata_link_next(link, ap, 0);
  ldv_38594: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_38593;
  } else {
  }
  if ((unsigned long )ap->slave_link != (unsigned long )((struct ata_link *)0)) {
    mehc = & ap->link.eh_context;
    sehc = & (ap->slave_link)->eh_context;
    sehc->i.flags = sehc->i.flags | (mehc->i.flags & 12U);
    ata_eh_link_autopsy(ap->slave_link);
    ata_eh_about_to_do(ap->slave_link, 0, 15U);
    mehc->i.action = mehc->i.action | sehc->i.action;
    mehc->i.dev_action[1] = mehc->i.dev_action[1] | sehc->i.dev_action[1];
    mehc->i.flags = mehc->i.flags | sehc->i.flags;
    ata_eh_done(ap->slave_link, 0, 15U);
  } else {
  }
  tmp = sata_pmp_attached(ap);
  if ((int )tmp) {
    ata_eh_link_autopsy(& ap->link);
  } else {
  }
  return;
}
}
char const *ata_get_cmd_descript(u8 command )
{
  struct __anonstruct_cmd_descr_201 cmd_descr[82U] ;
  unsigned int i ;
  {
  cmd_descr[0].command = 8U;
  cmd_descr[0].text = "DEVICE RESET";
  cmd_descr[1].command = 229U;
  cmd_descr[1].text = "CHECK POWER MODE";
  cmd_descr[2].command = 226U;
  cmd_descr[2].text = "STANDBY";
  cmd_descr[3].command = 227U;
  cmd_descr[3].text = "IDLE";
  cmd_descr[4].command = 144U;
  cmd_descr[4].text = "EXECUTE DEVICE DIAGNOSTIC";
  cmd_descr[5].command = 146U;
  cmd_descr[5].text = "DOWNLOAD MICROCODE";
  cmd_descr[6].command = 0U;
  cmd_descr[6].text = "NOP";
  cmd_descr[7].command = 231U;
  cmd_descr[7].text = "FLUSH CACHE";
  cmd_descr[8].command = 234U;
  cmd_descr[8].text = "FLUSH CACHE EXT";
  cmd_descr[9].command = 236U;
  cmd_descr[9].text = "IDENTIFY DEVICE";
  cmd_descr[10].command = 161U;
  cmd_descr[10].text = "IDENTIFY PACKET DEVICE";
  cmd_descr[11].command = 162U;
  cmd_descr[11].text = "SERVICE";
  cmd_descr[12].command = 200U;
  cmd_descr[12].text = "READ DMA";
  cmd_descr[13].command = 37U;
  cmd_descr[13].text = "READ DMA EXT";
  cmd_descr[14].command = 38U;
  cmd_descr[14].text = "READ DMA QUEUED";
  cmd_descr[15].command = 43U;
  cmd_descr[15].text = "READ STREAM EXT";
  cmd_descr[16].command = 42U;
  cmd_descr[16].text = "READ STREAM DMA EXT";
  cmd_descr[17].command = 202U;
  cmd_descr[17].text = "WRITE DMA";
  cmd_descr[18].command = 53U;
  cmd_descr[18].text = "WRITE DMA EXT";
  cmd_descr[19].command = 54U;
  cmd_descr[19].text = "WRITE DMA QUEUED EXT";
  cmd_descr[20].command = 59U;
  cmd_descr[20].text = "WRITE STREAM EXT";
  cmd_descr[21].command = 58U;
  cmd_descr[21].text = "WRITE STREAM DMA EXT";
  cmd_descr[22].command = 61U;
  cmd_descr[22].text = "WRITE DMA FUA EXT";
  cmd_descr[23].command = 62U;
  cmd_descr[23].text = "WRITE DMA QUEUED FUA EXT";
  cmd_descr[24].command = 96U;
  cmd_descr[24].text = "READ FPDMA QUEUED";
  cmd_descr[25].command = 97U;
  cmd_descr[25].text = "WRITE FPDMA QUEUED";
  cmd_descr[26].command = 32U;
  cmd_descr[26].text = "READ SECTOR(S)";
  cmd_descr[27].command = 36U;
  cmd_descr[27].text = "READ SECTOR(S) EXT";
  cmd_descr[28].command = 48U;
  cmd_descr[28].text = "WRITE SECTOR(S)";
  cmd_descr[29].command = 52U;
  cmd_descr[29].text = "WRITE SECTOR(S) EXT";
  cmd_descr[30].command = 196U;
  cmd_descr[30].text = "READ MULTIPLE";
  cmd_descr[31].command = 41U;
  cmd_descr[31].text = "READ MULTIPLE EXT";
  cmd_descr[32].command = 197U;
  cmd_descr[32].text = "WRITE MULTIPLE";
  cmd_descr[33].command = 57U;
  cmd_descr[33].text = "WRITE MULTIPLE EXT";
  cmd_descr[34].command = 206U;
  cmd_descr[34].text = "WRITE MULTIPLE FUA EXT";
  cmd_descr[35].command = 239U;
  cmd_descr[35].text = "SET FEATURES";
  cmd_descr[36].command = 198U;
  cmd_descr[36].text = "SET MULTIPLE MODE";
  cmd_descr[37].command = 64U;
  cmd_descr[37].text = "READ VERIFY SECTOR(S)";
  cmd_descr[38].command = 66U;
  cmd_descr[38].text = "READ VERIFY SECTOR(S) EXT";
  cmd_descr[39].command = 69U;
  cmd_descr[39].text = "WRITE UNCORRECTABLE EXT";
  cmd_descr[40].command = 224U;
  cmd_descr[40].text = "STANDBY IMMEDIATE";
  cmd_descr[41].command = 225U;
  cmd_descr[41].text = "IDLE IMMEDIATE";
  cmd_descr[42].command = 230U;
  cmd_descr[42].text = "SLEEP";
  cmd_descr[43].command = 145U;
  cmd_descr[43].text = "INITIALIZE DEVICE PARAMETERS";
  cmd_descr[44].command = 248U;
  cmd_descr[44].text = "READ NATIVE MAX ADDRESS";
  cmd_descr[45].command = 39U;
  cmd_descr[45].text = "READ NATIVE MAX ADDRESS EXT";
  cmd_descr[46].command = 249U;
  cmd_descr[46].text = "SET MAX ADDRESS";
  cmd_descr[47].command = 55U;
  cmd_descr[47].text = "SET MAX ADDRESS EXT";
  cmd_descr[48].command = 47U;
  cmd_descr[48].text = "READ LOG EXT";
  cmd_descr[49].command = 63U;
  cmd_descr[49].text = "WRITE LOG EXT";
  cmd_descr[50].command = 71U;
  cmd_descr[50].text = "READ LOG DMA EXT";
  cmd_descr[51].command = 87U;
  cmd_descr[51].text = "WRITE LOG DMA EXT";
  cmd_descr[52].command = 92U;
  cmd_descr[52].text = "TRUSTED RECEIVE";
  cmd_descr[53].command = 93U;
  cmd_descr[53].text = "TRUSTED RECEIVE DMA";
  cmd_descr[54].command = 94U;
  cmd_descr[54].text = "TRUSTED SEND";
  cmd_descr[55].command = 95U;
  cmd_descr[55].text = "TRUSTED SEND DMA";
  cmd_descr[56].command = 228U;
  cmd_descr[56].text = "READ BUFFER";
  cmd_descr[57].command = 232U;
  cmd_descr[57].text = "WRITE BUFFER";
  cmd_descr[58].command = 177U;
  cmd_descr[58].text = "DEVICE CONFIGURATION OVERLAY";
  cmd_descr[59].command = 241U;
  cmd_descr[59].text = "SECURITY SET PASSWORD";
  cmd_descr[60].command = 242U;
  cmd_descr[60].text = "SECURITY UNLOCK";
  cmd_descr[61].command = 243U;
  cmd_descr[61].text = "SECURITY ERASE PREPARE";
  cmd_descr[62].command = 244U;
  cmd_descr[62].text = "SECURITY ERASE UNIT";
  cmd_descr[63].command = 245U;
  cmd_descr[63].text = "SECURITY FREEZE LOCK";
  cmd_descr[64].command = 246U;
  cmd_descr[64].text = "SECURITY DISABLE PASSWORD";
  cmd_descr[65].command = 81U;
  cmd_descr[65].text = "CONFIGURE STREAM";
  cmd_descr[66].command = 176U;
  cmd_descr[66].text = "SMART";
  cmd_descr[67].command = 222U;
  cmd_descr[67].text = "DOOR LOCK";
  cmd_descr[68].command = 223U;
  cmd_descr[68].text = "DOOR UNLOCK";
  cmd_descr[69].command = 6U;
  cmd_descr[69].text = "DATA SET MANAGEMENT";
  cmd_descr[70].command = 209U;
  cmd_descr[70].text = "CHECK MEDIA CARD TYPE";
  cmd_descr[71].command = 3U;
  cmd_descr[71].text = "CFA REQUEST EXTENDED ERROR";
  cmd_descr[72].command = 56U;
  cmd_descr[72].text = "CFA WRITE SECTORS WITHOUT ERASE";
  cmd_descr[73].command = 135U;
  cmd_descr[73].text = "CFA TRANSLATE SECTOR";
  cmd_descr[74].command = 192U;
  cmd_descr[74].text = "CFA ERASE SECTORS";
  cmd_descr[75].command = 205U;
  cmd_descr[75].text = "CFA WRITE MULTIPLE WITHOUT ERASE";
  cmd_descr[76].command = 34U;
  cmd_descr[76].text = "READ LONG (with retries)";
  cmd_descr[77].command = 35U;
  cmd_descr[77].text = "READ LONG (without retries)";
  cmd_descr[78].command = 50U;
  cmd_descr[78].text = "WRITE LONG (with retries)";
  cmd_descr[79].command = 51U;
  cmd_descr[79].text = "WRITE LONG (without retries)";
  cmd_descr[80].command = 16U;
  cmd_descr[80].text = "RECALIBRATE";
  cmd_descr[81].command = 0U;
  cmd_descr[81].text = 0;
  i = 0U;
  goto ldv_38607;
  ldv_38606: ;
  if ((int )cmd_descr[i].command == (int )command) {
    return (cmd_descr[i].text);
  } else {
  }
  i = i + 1U;
  ldv_38607: ;
  if ((unsigned long )cmd_descr[i].text != (unsigned long )((char const *)0)) {
    goto ldv_38606;
  } else {
  }
  return (0);
}
}
static void ata_eh_link_report(struct ata_link *link )
{
  struct ata_port *ap ;
  struct ata_eh_context *ehc ;
  char const *frozen ;
  char const *desc ;
  char tries_buf[6U] ;
  int tag ;
  int nr_failed ;
  struct ata_queued_cmd *qc ;
  struct ata_queued_cmd *tmp ;
  struct ata_link *tmp___0 ;
  struct ata_queued_cmd *qc___0 ;
  struct ata_queued_cmd *tmp___1 ;
  struct ata_taskfile *cmd ;
  struct ata_taskfile *res ;
  u8 const *cdb ;
  char data_buf[20U] ;
  unsigned int tmp___2 ;
  char cdb_buf[70U] ;
  unsigned int tmp___3 ;
  struct ata_link *tmp___4 ;
  char const *dma_str[3U] ;
  char const *prot_str[8U] ;
  char const *descr ;
  char const *tmp___5 ;
  int tmp___6 ;
  char const *tmp___7 ;
  {
  ap = link->ap;
  ehc = & link->eh_context;
  nr_failed = 0;
  if ((ehc->i.flags & 8U) != 0U) {
    return;
  } else {
  }
  desc = 0;
  if ((int )((signed char )ehc->i.desc[0]) != 0) {
    desc = (char const *)(& ehc->i.desc);
  } else {
  }
  tag = 0;
  goto ldv_38622;
  ldv_38621:
  tmp = __ata_qc_from_tag(ap, (unsigned int )tag);
  qc = tmp;
  if ((qc->flags & 65536UL) == 0UL) {
    goto ldv_38620;
  } else {
    tmp___0 = ata_dev_phys_link(qc->dev);
    if ((unsigned long )tmp___0 != (unsigned long )link) {
      goto ldv_38620;
    } else
    if ((qc->flags & 64UL) != 0UL && qc->err_mask == 1U) {
      goto ldv_38620;
    } else {
    }
  }
  if ((qc->flags & 131072UL) != 0UL && qc->err_mask == 0U) {
    goto ldv_38620;
  } else {
  }
  nr_failed = nr_failed + 1;
  ldv_38620:
  tag = tag + 1;
  ldv_38622: ;
  if (tag <= 31) {
    goto ldv_38621;
  } else {
  }
  if (nr_failed == 0 && ehc->i.err_mask == 0U) {
    return;
  } else {
  }
  frozen = "";
  if ((ap->pflags & 4U) != 0U) {
    frozen = " frozen";
  } else {
  }
  memset((void *)(& tries_buf), 0, 6UL);
  if (ap->eh_tries <= 4) {
    snprintf((char *)(& tries_buf), 5UL, " t%d", ap->eh_tries);
  } else {
  }
  if ((unsigned long )ehc->i.dev != (unsigned long )((struct ata_device *)0)) {
    ata_dev_printk((struct ata_device const *)ehc->i.dev, "\v", "exception Emask 0x%x SAct 0x%x SErr 0x%x action 0x%x%s%s\n",
                   ehc->i.err_mask, link->sactive, ehc->i.serror, ehc->i.action, frozen,
                   (char *)(& tries_buf));
    if ((unsigned long )desc != (unsigned long )((char const *)0)) {
      ata_dev_printk((struct ata_device const *)ehc->i.dev, "\v", "%s\n", desc);
    } else {
    }
  } else {
    ata_link_printk((struct ata_link const *)link, "\v", "exception Emask 0x%x SAct 0x%x SErr 0x%x action 0x%x%s%s\n",
                    ehc->i.err_mask, link->sactive, ehc->i.serror, ehc->i.action,
                    frozen, (char *)(& tries_buf));
    if ((unsigned long )desc != (unsigned long )((char const *)0)) {
      ata_link_printk((struct ata_link const *)link, "\v", "%s\n", desc);
    } else {
    }
  }
  if (ehc->i.serror != 0U) {
    ata_link_printk((struct ata_link const *)link, "\v", "SError: { %s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s}\n",
                    (int )ehc->i.serror & 1 ? (char *)"RecovData " : (char *)"", (ehc->i.serror & 2U) != 0U ? (char *)"RecovComm " : (char *)"",
                    (ehc->i.serror & 256U) != 0U ? (char *)"UnrecovData " : (char *)"",
                    (ehc->i.serror & 512U) != 0U ? (char *)"Persist " : (char *)"",
                    (ehc->i.serror & 1024U) != 0U ? (char *)"Proto " : (char *)"",
                    (ehc->i.serror & 2048U) != 0U ? (char *)"HostInt " : (char *)"",
                    (ehc->i.serror & 65536U) != 0U ? (char *)"PHYRdyChg " : (char *)"",
                    (ehc->i.serror & 131072U) != 0U ? (char *)"PHYInt " : (char *)"",
                    (ehc->i.serror & 262144U) != 0U ? (char *)"CommWake " : (char *)"",
                    (ehc->i.serror & 524288U) != 0U ? (char *)"10B8B " : (char *)"",
                    (ehc->i.serror & 1048576U) != 0U ? (char *)"Dispar " : (char *)"",
                    (ehc->i.serror & 2097152U) != 0U ? (char *)"BadCRC " : (char *)"",
                    (ehc->i.serror & 4194304U) != 0U ? (char *)"Handshk " : (char *)"",
                    (ehc->i.serror & 8388608U) != 0U ? (char *)"LinkSeq " : (char *)"",
                    (ehc->i.serror & 16777216U) != 0U ? (char *)"TrStaTrns " : (char *)"",
                    (ehc->i.serror & 33554432U) != 0U ? (char *)"UnrecFIS " : (char *)"",
                    (ehc->i.serror & 67108864U) != 0U ? (char *)"DevExch " : (char *)"");
  } else {
  }
  tag = 0;
  goto ldv_38635;
  ldv_38634:
  tmp___1 = __ata_qc_from_tag(ap, (unsigned int )tag);
  qc___0 = tmp___1;
  cmd = & qc___0->tf;
  res = & qc___0->result_tf;
  cdb = (u8 const *)(& qc___0->cdb);
  data_buf[0] = '\000';
  tmp___2 = 1U;
  while (1) {
    if (tmp___2 >= 20U) {
      break;
    } else {
    }
    data_buf[tmp___2] = (char)0;
    tmp___2 = tmp___2 + 1U;
  }
  cdb_buf[0] = '\000';
  tmp___3 = 1U;
  while (1) {
    if (tmp___3 >= 70U) {
      break;
    } else {
    }
    cdb_buf[tmp___3] = (char)0;
    tmp___3 = tmp___3 + 1U;
  }
  if ((qc___0->flags & 65536UL) == 0UL) {
    goto ldv_38630;
  } else {
    tmp___4 = ata_dev_phys_link(qc___0->dev);
    if ((unsigned long )tmp___4 != (unsigned long )link) {
      goto ldv_38630;
    } else
    if (qc___0->err_mask == 0U) {
      goto ldv_38630;
    } else {
    }
  }
  if (qc___0->dma_dir != 3) {
    dma_str[0] = "bidi";
    dma_str[1] = "out";
    dma_str[2] = "in";
    prot_str[0] = 0;
    prot_str[1] = 0;
    prot_str[2] = "pio";
    prot_str[3] = "dma";
    prot_str[4] = "ncq";
    prot_str[5] = 0;
    prot_str[6] = "pio";
    prot_str[7] = "dma";
    snprintf((char *)(& data_buf), 20UL, " %s %u %s", prot_str[(int )qc___0->tf.protocol],
             qc___0->nbytes, dma_str[qc___0->dma_dir]);
  } else {
  }
  tmp___6 = ata_is_atapi((int )qc___0->tf.protocol);
  if (tmp___6 != 0) {
    if ((unsigned long )qc___0->scsicmd != (unsigned long )((struct scsi_cmnd *)0)) {
      scsi_print_command(qc___0->scsicmd);
    } else {
      snprintf((char *)(& cdb_buf), 70UL, "cdb %02x %02x %02x %02x %02x %02x %02x %02x  %02x %02x %02x %02x %02x %02x %02x %02x\n         ",
               (int )*cdb, (int )*(cdb + 1UL), (int )*(cdb + 2UL), (int )*(cdb + 3UL),
               (int )*(cdb + 4UL), (int )*(cdb + 5UL), (int )*(cdb + 6UL), (int )*(cdb + 7UL),
               (int )*(cdb + 8UL), (int )*(cdb + 9UL), (int )*(cdb + 10UL), (int )*(cdb + 11UL),
               (int )*(cdb + 12UL), (int )*(cdb + 13UL), (int )*(cdb + 14UL), (int )*(cdb + 15UL));
    }
  } else {
    tmp___5 = ata_get_cmd_descript((int )cmd->command);
    descr = tmp___5;
    if ((unsigned long )descr != (unsigned long )((char const *)0)) {
      ata_dev_printk((struct ata_device const *)qc___0->dev, "\v", "failed command: %s\n",
                     descr);
    } else {
    }
  }
  tmp___7 = ata_err_string(qc___0->err_mask);
  ata_dev_printk((struct ata_device const *)qc___0->dev, "\v", "cmd %02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x tag %d%s\n         %sres %02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x Emask 0x%x (%s)%s\n",
                 (int )cmd->command, (int )cmd->feature, (int )cmd->nsect, (int )cmd->lbal,
                 (int )cmd->lbam, (int )cmd->lbah, (int )cmd->hob_feature, (int )cmd->hob_nsect,
                 (int )cmd->hob_lbal, (int )cmd->hob_lbam, (int )cmd->hob_lbah, (int )cmd->device,
                 qc___0->tag, (char *)(& data_buf), (char *)(& cdb_buf), (int )res->command,
                 (int )res->feature, (int )res->nsect, (int )res->lbal, (int )res->lbam,
                 (int )res->lbah, (int )res->hob_feature, (int )res->hob_nsect, (int )res->hob_lbal,
                 (int )res->hob_lbam, (int )res->hob_lbah, (int )res->device, qc___0->err_mask,
                 tmp___7, (qc___0->err_mask & 1024U) != 0U ? (char *)" <F>" : (char *)"");
  if (((int )res->command & 233) != 0) {
    if ((int )((signed char )res->command) < 0) {
      ata_dev_printk((struct ata_device const *)qc___0->dev, "\v", "status: { Busy }\n");
    } else {
      ata_dev_printk((struct ata_device const *)qc___0->dev, "\v", "status: { %s%s%s%s}\n",
                     ((int )res->command & 64) != 0 ? (char *)"DRDY " : (char *)"",
                     ((int )res->command & 32) != 0 ? (char *)"DF " : (char *)"",
                     ((int )res->command & 8) != 0 ? (char *)"DRQ " : (char *)"",
                     (int )res->command & 1 ? (char *)"ERR " : (char *)"");
    }
  } else {
  }
  if ((unsigned int )cmd->command != 160U && ((int )res->feature & 212) != 0) {
    ata_dev_printk((struct ata_device const *)qc___0->dev, "\v", "error: { %s%s%s%s}\n",
                   (int )((signed char )res->feature) < 0 ? (char *)"ICRC " : (char *)"",
                   ((int )res->feature & 64) != 0 ? (char *)"UNC " : (char *)"", ((int )res->feature & 16) != 0 ? (char *)"IDNF " : (char *)"",
                   ((int )res->feature & 4) != 0 ? (char *)"ABRT " : (char *)"");
  } else {
  }
  ldv_38630:
  tag = tag + 1;
  ldv_38635: ;
  if (tag <= 31) {
    goto ldv_38634;
  } else {
  }
  return;
}
}
void ata_eh_report(struct ata_port *ap )
{
  struct ata_link *link ;
  {
  link = ata_link_next(0, ap, 1);
  goto ldv_38642;
  ldv_38641:
  ata_eh_link_report(link);
  link = ata_link_next(link, ap, 1);
  ldv_38642: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_38641;
  } else {
  }
  return;
}
}
static int ata_do_reset(struct ata_link *link , int (*reset)(struct ata_link * , unsigned int * ,
                                                             unsigned long ) , unsigned int *classes ,
                        unsigned long deadline , bool clear_classes )
{
  struct ata_device *dev ;
  int tmp ;
  {
  if ((int )clear_classes) {
    dev = ata_dev_next(0, link, 2);
    goto ldv_38653;
    ldv_38652:
    *(classes + (unsigned long )dev->devno) = 0U;
    dev = ata_dev_next(dev, link, 2);
    ldv_38653: ;
    if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
      goto ldv_38652;
    } else {
    }
  } else {
  }
  tmp = (*reset)(link, classes, deadline);
  return (tmp);
}
}
static int ata_eh_followup_srst_needed(struct ata_link *link , int rc )
{
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  if ((link->flags & 4U) != 0U) {
    return (0);
  } else {
    tmp = ata_link_offline(link);
    if ((int )tmp) {
      return (0);
    } else {
    }
  }
  if (rc == -11) {
    return (1);
  } else {
  }
  tmp___0 = sata_pmp_supported(link->ap);
  if ((int )tmp___0) {
    tmp___1 = ata_is_host_link((struct ata_link const *)link);
    if (tmp___1 != 0) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
int ata_eh_reset(struct ata_link *link , int classify , int (*prereset)(struct ata_link * ,
                                                                        unsigned long ) ,
                 int (*softreset)(struct ata_link * , unsigned int * , unsigned long ) ,
                 int (*hardreset)(struct ata_link * , unsigned int * , unsigned long ) ,
                 void (*postreset)(struct ata_link * , unsigned int * ) )
{
  struct ata_port *ap ;
  struct ata_link *slave ;
  struct ata_eh_context *ehc ;
  struct ata_eh_context *sehc ;
  unsigned int *classes ;
  unsigned int lflags ;
  int verbose ;
  int max_tries ;
  int try ;
  struct ata_link *failed_link ;
  struct ata_device *dev ;
  unsigned long deadline ;
  unsigned long now ;
  int (*reset)(struct ata_link * , unsigned int * , unsigned long ) ;
  unsigned long flags ;
  u32 sstatus ;
  int nr_unknown ;
  int rc ;
  int __ret_warn_on ;
  long tmp ;
  raw_spinlock_t *tmp___0 ;
  unsigned long deadline___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  struct ata_link *tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  raw_spinlock_t *tmp___13 ;
  unsigned int tmp___14 ;
  struct ata_link *tmp___15 ;
  bool tmp___16 ;
  struct ata_link *tmp___17 ;
  bool tmp___18 ;
  raw_spinlock_t *tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  unsigned long delta ;
  unsigned int tmp___23 ;
  long tmp___24 ;
  int tmp___25 ;
  {
  ap = link->ap;
  slave = ap->slave_link;
  ehc = & link->eh_context;
  sehc = (unsigned long )slave != (unsigned long )((struct ata_link *)0) ? & slave->eh_context : 0;
  classes = (unsigned int *)(& ehc->classes);
  lflags = link->flags;
  verbose = (ehc->i.flags & 8U) == 0U;
  max_tries = 0;
  try = 0;
  goto ldv_38686;
  ldv_38685:
  max_tries = max_tries + 1;
  ldv_38686: ;
  if ((unsigned long )ata_eh_reset_timeouts[max_tries] != 0xffffffffffffffffUL) {
    goto ldv_38685;
  } else {
  }
  if ((link->flags & 512U) != 0U) {
    max_tries = 1;
  } else {
  }
  if ((link->flags & 2U) != 0U) {
    hardreset = 0;
  } else {
  }
  if ((link->flags & 4U) != 0U) {
    softreset = 0;
  } else {
  }
  if ((ehc->i.flags & 196608U) != 0U) {
    now = jiffies;
    __ret_warn_on = (long )now - (long )ehc->last_reset < 0L;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                         2701);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    deadline = ata_deadline(ehc->last_reset, 5000UL);
    if ((long )now - (long )deadline < 0L) {
      schedule_timeout_uninterruptible((long )(deadline - now));
    } else {
    }
  } else {
  }
  tmp___0 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  ap->pflags = ap->pflags | 256U;
  spin_unlock_irqrestore(ap->lock, flags);
  ata_eh_about_to_do(link, 0, 6U);
  dev = ata_dev_next(0, link, 2);
  goto ldv_38706;
  ldv_38705:
  dev->pio_mode = 8U;
  dev->dma_mode = 255U;
  if ((unsigned long )(ap->ops)->set_piomode != (unsigned long )((void (*)(struct ata_port * ,
                                                                           struct ata_device * ))0)) {
    (*((ap->ops)->set_piomode))(ap, dev);
  } else {
  }
  dev = ata_dev_next(dev, link, 2);
  ldv_38706: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38705;
  } else {
  }
  reset = 0;
  ehc->i.action = ehc->i.action & 4294967289U;
  if ((unsigned long )hardreset != (unsigned long )((int (*)(struct ata_link * , unsigned int * ,
                                                             unsigned long ))0)) {
    reset = hardreset;
    ehc->i.action = ehc->i.action | 4U;
  } else
  if ((unsigned long )softreset != (unsigned long )((int (*)(struct ata_link * , unsigned int * ,
                                                             unsigned long ))0)) {
    reset = softreset;
    ehc->i.action = ehc->i.action | 2U;
  } else {
  }
  if ((unsigned long )prereset != (unsigned long )((int (*)(struct ata_link * , unsigned long ))0)) {
    tmp___1 = ata_deadline(jiffies, 10000UL);
    deadline___0 = tmp___1;
    if ((unsigned long )slave != (unsigned long )((struct ata_link *)0)) {
      sehc->i.action = sehc->i.action & 4294967289U;
      sehc->i.action = sehc->i.action | ehc->i.action;
    } else {
    }
    rc = (*prereset)(link, deadline___0);
    if ((unsigned long )slave != (unsigned long )((struct ata_link *)0) && (rc == 0 || rc == -2)) {
      tmp___2 = (*prereset)(slave, deadline___0);
      if (tmp___2 != -2) {
        rc = tmp___2;
      } else {
      }
      ehc->i.action = ehc->i.action | sehc->i.action;
    } else {
    }
    if (rc != 0) {
      if (rc == -2) {
        ata_link_printk((struct ata_link const *)link, "\017", "port disabled--ignoring\n");
        ehc->i.action = ehc->i.action & 4294967289U;
        dev = ata_dev_next(0, link, 2);
        goto ldv_38711;
        ldv_38710:
        *(classes + (unsigned long )dev->devno) = 9U;
        dev = ata_dev_next(dev, link, 2);
        ldv_38711: ;
        if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
          goto ldv_38710;
        } else {
        }
        rc = 0;
      } else {
        ata_link_printk((struct ata_link const *)link, "\v", "prereset failed (errno=%d)\n",
                        rc);
      }
      goto out;
    } else {
    }
    if ((unsigned long )reset != (unsigned long )((int (*)(struct ata_link * , unsigned int * ,
                                                           unsigned long ))0) && (ehc->i.action & 6U) == 0U) {
      dev = ata_dev_next(0, link, 2);
      goto ldv_38715;
      ldv_38714:
      *(classes + (unsigned long )dev->devno) = 9U;
      dev = ata_dev_next(dev, link, 2);
      ldv_38715: ;
      if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
        goto ldv_38714;
      } else {
      }
      if ((ap->pflags & 4U) != 0U) {
        tmp___3 = ata_is_host_link((struct ata_link const *)link);
        if (tmp___3 != 0) {
          ata_eh_thaw_port(ap);
        } else {
        }
      } else {
      }
      rc = 0;
      goto out;
    } else {
    }
  } else {
  }
  retry:
  tmp___4 = ata_is_host_link((struct ata_link const *)link);
  if (tmp___4 != 0) {
    ata_eh_freeze_port(ap);
  } else {
  }
  tmp___5 = try;
  try = try + 1;
  deadline = ata_deadline(jiffies, ata_eh_reset_timeouts[tmp___5]);
  if ((unsigned long )reset != (unsigned long )((int (*)(struct ata_link * , unsigned int * ,
                                                         unsigned long ))0)) {
    if (verbose != 0) {
      ata_link_printk((struct ata_link const *)link, "\016", "%s resetting link\n",
                      (unsigned long )reset == (unsigned long )softreset ? (char *)"soft" : (char *)"hard");
    } else {
    }
    ehc->last_reset = jiffies;
    if ((unsigned long )reset == (unsigned long )hardreset) {
      ehc->i.flags = ehc->i.flags | 131072U;
    } else {
      ehc->i.flags = ehc->i.flags | 65536U;
    }
    rc = ata_do_reset(link, reset, classes, deadline, 1);
    if (rc != 0 && rc != -11) {
      failed_link = link;
      goto fail;
    } else {
    }
    if ((unsigned long )slave != (unsigned long )((struct ata_link *)0) && (unsigned long )reset == (unsigned long )hardreset) {
      if (verbose != 0) {
        ata_link_printk((struct ata_link const *)slave, "\016", "hard resetting link\n");
      } else {
      }
      ata_eh_about_to_do(slave, 0, 6U);
      tmp___6 = ata_do_reset(slave, reset, classes, deadline, 0);
      switch (tmp___6) {
      case -11:
      rc = -11;
      case 0: ;
      goto ldv_38722;
      default:
      failed_link = slave;
      rc = tmp___6;
      goto fail;
      }
      ldv_38722: ;
    } else {
    }
    if ((unsigned long )reset == (unsigned long )hardreset) {
      tmp___7 = ata_eh_followup_srst_needed(link, rc);
      if (tmp___7 != 0) {
        reset = softreset;
        if ((unsigned long )reset == (unsigned long )((int (*)(struct ata_link * ,
                                                               unsigned int * , unsigned long ))0)) {
          ata_link_printk((struct ata_link const *)link, "\v", "follow-up softreset required but no softreset available\n");
          failed_link = link;
          rc = -22;
          goto fail;
        } else {
        }
        ata_eh_about_to_do(link, 0, 6U);
        rc = ata_do_reset(link, reset, classes, deadline, 1);
        if (rc != 0) {
          failed_link = link;
          goto fail;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
    if (verbose != 0) {
      ata_link_printk((struct ata_link const *)link, "\016", "no reset method available, skipping reset\n");
    } else {
    }
    if ((lflags & 24U) == 0U) {
      lflags = lflags | 8U;
    } else {
    }
  }
  dev = ata_dev_next(0, link, 2);
  goto ldv_38726;
  ldv_38725:
  dev->pio_mode = 8U;
  dev->flags = dev->flags & 0xffffffffffff7fffUL;
  tmp___8 = ata_dev_phys_link(dev);
  tmp___9 = ata_phys_link_offline(tmp___8);
  if ((int )tmp___9) {
    goto ldv_38724;
  } else {
  }
  if ((lflags & 8U) != 0U) {
    *(classes + (unsigned long )dev->devno) = 1U;
  } else
  if ((lflags & 16U) != 0U) {
    *(classes + (unsigned long )dev->devno) = 8U;
  } else {
  }
  ldv_38724:
  dev = ata_dev_next(dev, link, 2);
  ldv_38726: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38725;
  } else {
  }
  tmp___10 = sata_scr_read(link, 0, & sstatus);
  if (tmp___10 == 0) {
    link->sata_spd = (sstatus >> 4) & 15U;
  } else {
  }
  if ((unsigned long )slave != (unsigned long )((struct ata_link *)0)) {
    tmp___11 = sata_scr_read(slave, 0, & sstatus);
    if (tmp___11 == 0) {
      slave->sata_spd = (sstatus >> 4) & 15U;
    } else {
    }
  } else {
  }
  tmp___12 = ata_is_host_link((struct ata_link const *)link);
  if (tmp___12 != 0) {
    ata_eh_thaw_port(ap);
  } else {
  }
  if ((unsigned long )postreset != (unsigned long )((void (*)(struct ata_link * ,
                                                              unsigned int * ))0)) {
    (*postreset)(link, classes);
    if ((unsigned long )slave != (unsigned long )((struct ata_link *)0)) {
      (*postreset)(slave, classes);
    } else {
    }
  } else {
  }
  tmp___13 = spinlock_check((link->ap)->lock);
  flags = _raw_spin_lock_irqsave(tmp___13);
  memset((void *)(& link->eh_info), 0, 120UL);
  if ((unsigned long )slave != (unsigned long )((struct ata_link *)0)) {
    memset((void *)(& slave->eh_info), 0, 120UL);
  } else {
  }
  ap->pflags = ap->pflags & 4294967294U;
  spin_unlock_irqrestore((link->ap)->lock, flags);
  if ((ap->pflags & 4U) != 0U) {
    ata_eh_thaw_port(ap);
  } else {
  }
  nr_unknown = 0;
  dev = ata_dev_next(0, link, 2);
  goto ldv_38732;
  ldv_38731:
  tmp___17 = ata_dev_phys_link(dev);
  tmp___18 = ata_phys_link_online(tmp___17);
  if ((int )tmp___18) {
    if (*(classes + (unsigned long )dev->devno) == 0U) {
      ata_dev_printk((struct ata_device const *)dev, "\017", "link online but device misclassified\n");
      *(classes + (unsigned long )dev->devno) = 9U;
      nr_unknown = nr_unknown + 1;
    } else {
      tmp___15 = ata_dev_phys_link(dev);
      tmp___16 = ata_phys_link_offline(tmp___15);
      if ((int )tmp___16) {
        tmp___14 = ata_class_enabled(*(classes + (unsigned long )dev->devno));
        if (tmp___14 != 0U) {
          ata_dev_printk((struct ata_device const *)dev, "\017", "link offline, clearing class %d to NONE\n",
                         *(classes + (unsigned long )dev->devno));
        } else {
        }
        *(classes + (unsigned long )dev->devno) = 9U;
      } else
      if (*(classes + (unsigned long )dev->devno) == 0U) {
        ata_dev_printk((struct ata_device const *)dev, "\017", "link status unknown, clearing UNKNOWN to NONE\n");
        *(classes + (unsigned long )dev->devno) = 9U;
      } else {
      }
    }
  } else {
  }
  dev = ata_dev_next(dev, link, 2);
  ldv_38732: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38731;
  } else {
  }
  if (classify != 0 && nr_unknown != 0) {
    if (try < max_tries) {
      ata_link_printk((struct ata_link const *)link, "\f", "link online but %d devices misclassified, retrying\n",
                      nr_unknown);
      failed_link = link;
      rc = -11;
      goto fail;
    } else {
    }
    ata_link_printk((struct ata_link const *)link, "\f", "link online but %d devices misclassified, device detection might fail\n",
                    nr_unknown);
  } else {
  }
  ata_eh_done(link, 0, 6U);
  if ((unsigned long )slave != (unsigned long )((struct ata_link *)0)) {
    ata_eh_done(slave, 0, 6U);
  } else {
  }
  ehc->last_reset = jiffies;
  ehc->i.action = ehc->i.action | 1U;
  link->lpm_policy = 0;
  rc = 0;
  out:
  ehc->i.flags = ehc->i.flags & 4294967294U;
  if ((unsigned long )slave != (unsigned long )((struct ata_link *)0)) {
    sehc->i.flags = sehc->i.flags & 4294967294U;
  } else {
  }
  tmp___19 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___19);
  ap->pflags = ap->pflags & 4294967039U;
  spin_unlock_irqrestore(ap->lock, flags);
  return (rc);
  fail:
  tmp___20 = ata_is_host_link((struct ata_link const *)link);
  if (tmp___20 == 0) {
    tmp___21 = sata_scr_read(link, 0, & sstatus);
    if (tmp___21 != 0) {
      rc = -85;
    } else {
    }
  } else {
  }
  if (try >= max_tries) {
    tmp___22 = ata_is_host_link((struct ata_link const *)link);
    if (tmp___22 != 0) {
      ata_eh_thaw_port(ap);
    } else {
    }
    goto out;
  } else {
  }
  now = jiffies;
  if ((long )now - (long )deadline < 0L) {
    delta = deadline - now;
    tmp___23 = jiffies_to_msecs(delta);
    ata_link_printk((struct ata_link const *)failed_link, "\f", "reset failed (errno=%d), retrying in %u secs\n",
                    rc, (tmp___23 + 999U) / 1000U);
    ata_eh_release(ap);
    goto ldv_38745;
    ldv_38744:
    tmp___24 = schedule_timeout_uninterruptible((long )delta);
    delta = (unsigned long )tmp___24;
    ldv_38745: ;
    if (delta != 0UL) {
      goto ldv_38744;
    } else {
    }
    ata_eh_acquire(ap);
  } else {
  }
  if (rc == -85) {
    tmp___25 = ata_is_host_link((struct ata_link const *)link);
    if (tmp___25 != 0) {
      ata_eh_thaw_port(ap);
    } else {
    }
    goto out;
  } else {
  }
  if (max_tries + -1 == try) {
    sata_down_spd_limit(link, 0U);
    if ((unsigned long )slave != (unsigned long )((struct ata_link *)0)) {
      sata_down_spd_limit(slave, 0U);
    } else {
    }
  } else
  if (rc == -32) {
    sata_down_spd_limit(failed_link, 0U);
  } else {
  }
  if ((unsigned long )hardreset != (unsigned long )((int (*)(struct ata_link * , unsigned int * ,
                                                             unsigned long ))0)) {
    reset = hardreset;
  } else {
  }
  goto retry;
}
}
__inline static void ata_eh_pull_park_action(struct ata_port *ap )
{
  struct ata_link *link ;
  struct ata_device *dev ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct ata_eh_info *ehi ;
  {
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ap->park_req_pending.done = 0U;
  link = ata_link_next(0, ap, 0);
  goto ldv_38761;
  ldv_38760:
  dev = ata_dev_next(0, link, 2);
  goto ldv_38758;
  ldv_38757:
  ehi = & link->eh_info;
  link->eh_context.i.dev_action[dev->devno] = link->eh_context.i.dev_action[dev->devno] | (ehi->dev_action[dev->devno] & 32U);
  ata_eh_clear_action(link, dev, ehi, 32U);
  dev = ata_dev_next(dev, link, 2);
  ldv_38758: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38757;
  } else {
  }
  link = ata_link_next(link, ap, 0);
  ldv_38761: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_38760;
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  return;
}
}
static void ata_eh_park_issue_cmd(struct ata_device *dev , int park )
{
  struct ata_eh_context *ehc ;
  struct ata_taskfile tf ;
  unsigned int err_mask ;
  {
  ehc = & (dev->link)->eh_context;
  ata_tf_init(dev, & tf);
  if (park != 0) {
    ehc->unloaded_mask = ehc->unloaded_mask | (unsigned int )(1 << (int )dev->devno);
    tf.command = 225U;
    tf.feature = 68U;
    tf.lbal = 76U;
    tf.lbam = 78U;
    tf.lbah = 85U;
  } else {
    ehc->unloaded_mask = ehc->unloaded_mask & (unsigned int )(~ (1 << (int )dev->devno));
    tf.command = 229U;
  }
  tf.flags = tf.flags | 6UL;
  tf.protocol = (u8 )((unsigned int )tf.protocol | 1U);
  err_mask = ata_exec_internal(dev, & tf, 0, 3, 0, 0U, 0UL);
  if (park != 0 && (err_mask != 0U || (unsigned int )tf.lbal != 196U)) {
    ata_dev_printk((struct ata_device const *)dev, "\v", "head unload failed!\n");
    ehc->unloaded_mask = ehc->unloaded_mask & (unsigned int )(~ (1 << (int )dev->devno));
  } else {
  }
  return;
}
}
static int ata_eh_revalidate_and_attach(struct ata_link *link , struct ata_device **r_failed_dev )
{
  struct ata_port *ap ;
  struct ata_eh_context *ehc ;
  struct ata_device *dev ;
  unsigned int new_mask ;
  unsigned long flags ;
  int rc ;
  unsigned int action ;
  unsigned int tmp ;
  unsigned int readid_flags ;
  int __ret_warn_on ;
  long tmp___0 ;
  struct ata_link *tmp___1 ;
  bool tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  raw_spinlock_t *tmp___7 ;
  {
  ap = link->ap;
  ehc = & link->eh_context;
  new_mask = 0U;
  rc = 0;
  dev = ata_dev_next(0, link, 3);
  goto ldv_38790;
  ldv_38789:
  tmp = ata_eh_dev_action(dev);
  action = tmp;
  readid_flags = 0U;
  if ((ehc->i.flags & 196608U) != 0U) {
    readid_flags = readid_flags | 1U;
  } else {
  }
  if ((int )action & 1) {
    tmp___4 = ata_dev_enabled((struct ata_device const *)dev);
    if (tmp___4 != 0U) {
      __ret_warn_on = dev->class == 5U;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                           3154);
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
      tmp___1 = ata_dev_phys_link(dev);
      tmp___2 = ata_phys_link_offline(tmp___1);
      if ((int )tmp___2) {
        rc = -5;
        goto err;
      } else {
      }
      ata_eh_about_to_do(link, dev, 1U);
      rc = ata_dev_revalidate(dev, ehc->classes[dev->devno], readid_flags);
      if (rc != 0) {
        goto err;
      } else {
      }
      ata_eh_done(link, dev, 1U);
      ehc->i.flags = ehc->i.flags | 524288U;
      schedule_work(& ap->scsi_rescan_task);
    } else {
      goto _L;
    }
  } else
  _L:
  if (dev->class == 0U && ehc->tries[dev->devno] != 0) {
    tmp___3 = ata_class_enabled(ehc->classes[dev->devno]);
    if (tmp___3 != 0U) {
      dev->class = ehc->classes[dev->devno];
      if (dev->class == 5U) {
        rc = sata_pmp_attach(dev);
      } else {
        rc = ata_dev_read_id(dev, & dev->class, readid_flags, (u16 *)(& dev->ldv_38497.id));
      }
      ehc->classes[dev->devno] = dev->class;
      dev->class = 0U;
      switch (rc) {
      case 0:
      ata_ering_clear(& dev->ering);
      new_mask = (unsigned int )(1 << (int )dev->devno) | new_mask;
      goto ldv_38786;
      case -2:
      ata_eh_thaw_port(ap);
      goto ldv_38786;
      default: ;
      goto err;
      }
      ldv_38786: ;
    } else {
    }
  } else {
  }
  dev = ata_dev_next(dev, link, 3);
  ldv_38790: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38789;
  } else {
  }
  if ((ehc->i.flags & 196608U) != 0U) {
    tmp___6 = ata_is_host_link((struct ata_link const *)link);
    if (tmp___6 != 0) {
      if ((unsigned long )(ap->ops)->cable_detect != (unsigned long )((int (*)(struct ata_port * ))0)) {
        tmp___5 = (*((ap->ops)->cable_detect))(ap);
        ap->cbl = (unsigned int )tmp___5;
      } else {
      }
      ata_force_cbl(ap);
    } else {
    }
  } else {
  }
  dev = ata_dev_next(0, link, 2);
  goto ldv_38797;
  ldv_38796: ;
  if (((unsigned int )(1 << (int )dev->devno) & new_mask) == 0U) {
    goto ldv_38792;
  } else {
  }
  dev->class = ehc->classes[dev->devno];
  if (dev->class == 5U) {
    goto ldv_38792;
  } else {
  }
  ehc->i.flags = ehc->i.flags | 262144U;
  rc = ata_dev_configure(dev);
  ehc->i.flags = ehc->i.flags & 4294705151U;
  if (rc != 0) {
    dev->class = 0U;
    goto err;
  } else {
  }
  tmp___7 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___7);
  ap->pflags = ap->pflags | 64U;
  spin_unlock_irqrestore(ap->lock, flags);
  ehc->i.flags = ehc->i.flags | 524288U;
  ldv_38792:
  dev = ata_dev_next(dev, link, 2);
  ldv_38797: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38796;
  } else {
  }
  return (0);
  err:
  *r_failed_dev = dev;
  return (rc);
}
}
int ata_set_mode(struct ata_link *link , struct ata_device **r_failed_dev )
{
  struct ata_port *ap ;
  struct ata_device *dev ;
  int rc ;
  struct ata_ering_entry *ent ;
  struct ata_eh_context *ehc ;
  u8 saved_xfer_mode ;
  u8 saved_ncq ;
  int tmp ;
  {
  ap = link->ap;
  dev = ata_dev_next(0, link, 0);
  goto ldv_38808;
  ldv_38807: ;
  if ((dev->flags & 65536UL) == 0UL) {
    ent = ata_ering_top(& dev->ering);
    if ((unsigned long )ent != (unsigned long )((struct ata_ering_entry *)0)) {
      ent->eflags = ent->eflags & 4294967293U;
    } else {
    }
  } else {
  }
  dev = ata_dev_next(dev, link, 0);
  ldv_38808: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38807;
  } else {
  }
  if ((unsigned long )(ap->ops)->set_mode != (unsigned long )((int (*)(struct ata_link * ,
                                                                       struct ata_device ** ))0)) {
    rc = (*((ap->ops)->set_mode))(link, r_failed_dev);
  } else {
    rc = ata_do_set_mode(link, r_failed_dev);
  }
  dev = ata_dev_next(0, link, 0);
  goto ldv_38814;
  ldv_38813:
  ehc = & link->eh_context;
  saved_xfer_mode = ehc->saved_xfer_mode[dev->devno];
  saved_ncq = (ehc->saved_ncq_enabled & (unsigned int )(1 << (int )dev->devno)) != 0U;
  if ((int )dev->xfer_mode != (int )saved_xfer_mode) {
    dev->flags = dev->flags | 65536UL;
  } else {
    tmp = ata_ncq_enabled(dev);
    if (tmp != (int )saved_ncq) {
      dev->flags = dev->flags | 65536UL;
    } else {
    }
  }
  dev = ata_dev_next(dev, link, 0);
  ldv_38814: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38813;
  } else {
  }
  return (rc);
}
}
static int atapi_eh_clear_ua(struct ata_device *dev )
{
  int i ;
  u8 *sense_buffer ;
  u8 sense_key ;
  unsigned int err_mask ;
  {
  i = 0;
  goto ldv_38824;
  ldv_38823:
  sense_buffer = (u8 *)(& ((dev->link)->ap)->sector_buf);
  sense_key = 0U;
  err_mask = atapi_eh_tur(dev, & sense_key);
  if (err_mask != 0U && err_mask != 1U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "TEST_UNIT_READY failed (err_mask=0x%x)\n",
                   err_mask);
    return (-5);
  } else {
  }
  if (err_mask == 0U || (unsigned int )sense_key != 6U) {
    return (0);
  } else {
  }
  err_mask = atapi_eh_request_sense(dev, sense_buffer, (int )sense_key);
  if (err_mask != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "failed to clear UNIT ATTENTION (err_mask=0x%x)\n",
                   err_mask);
    return (-5);
  } else {
  }
  i = i + 1;
  ldv_38824: ;
  if (i <= 4) {
    goto ldv_38823;
  } else {
  }
  ata_dev_printk((struct ata_device const *)dev, "\f", "UNIT ATTENTION persists after %d tries\n",
                 5);
  return (0);
}
}
static int ata_eh_maybe_retry_flush(struct ata_device *dev )
{
  struct ata_link *link ;
  struct ata_port *ap ;
  struct ata_queued_cmd *qc ;
  struct ata_taskfile tf ;
  unsigned int err_mask ;
  int rc ;
  unsigned int tmp ;
  int _max1 ;
  int _max2 ;
  {
  link = dev->link;
  ap = link->ap;
  rc = 0;
  tmp = ata_tag_valid(link->active_tag);
  if (tmp == 0U) {
    return (0);
  } else {
  }
  qc = __ata_qc_from_tag(ap, link->active_tag);
  if ((unsigned long )qc->dev != (unsigned long )dev || ((unsigned int )qc->tf.command != 234U && (unsigned int )qc->tf.command != 231U)) {
    return (0);
  } else {
  }
  if ((int )qc->err_mask & 1) {
    return (0);
  } else {
  }
  ata_tf_init(dev, & tf);
  tf.command = qc->tf.command;
  tf.flags = tf.flags | 4UL;
  tf.protocol = 1U;
  ata_dev_printk((struct ata_device const *)dev, "\f", "retrying FLUSH 0x%x Emask 0x%x\n",
                 (int )tf.command, qc->err_mask);
  err_mask = ata_exec_internal(dev, & tf, 0, 3, 0, 0U, 0UL);
  if (err_mask == 0U) {
    _max1 = (qc->scsicmd)->allowed;
    _max2 = 1;
    (qc->scsicmd)->allowed = _max1 > _max2 ? _max1 : _max2;
  } else {
    ata_dev_printk((struct ata_device const *)dev, "\f", "FLUSH failed Emask 0x%x\n",
                   err_mask);
    rc = -5;
    if ((int )err_mask & 1) {
      qc->err_mask = qc->err_mask | 1U;
      qc->result_tf = tf;
      if ((ap->pflags & 4U) == 0U) {
        rc = 0;
      } else {
      }
    } else {
    }
  }
  return (rc);
}
}
static int ata_eh_set_lpm(struct ata_link *link , enum ata_lpm_policy policy , struct ata_device **r_failed_dev )
{
  struct ata_port *ap ;
  int tmp ;
  struct ata_eh_context *ehc ;
  struct ata_device *dev ;
  struct ata_device *link_dev ;
  struct ata_device *lpm_dev ;
  enum ata_lpm_policy old_policy ;
  bool no_dipm ;
  unsigned int hints ;
  unsigned int err_mask ;
  int rc ;
  bool hipm ;
  bool tmp___0 ;
  bool dipm ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  tmp = ata_is_host_link((struct ata_link const *)link);
  ap = tmp != 0 ? link->ap : 0;
  ehc = & link->eh_context;
  link_dev = 0;
  lpm_dev = 0;
  old_policy = link->lpm_policy;
  no_dipm = ((link->ap)->flags & 8388608UL) != 0UL;
  hints = 3U;
  if ((link->flags & 256U) != 0U || ((unsigned long )ap != (unsigned long )((struct ata_port *)0) && (unsigned long )(ap->ops)->set_lpm == (unsigned long )((int (*)(struct ata_link * ,
                                                                                                                                                                     enum ata_lpm_policy ,
                                                                                                                                                                     unsigned int ))0))) {
    return (0);
  } else {
  }
  dev = ata_dev_next(0, link, 0);
  goto ldv_38857;
  ldv_38856:
  tmp___0 = ata_id_has_hipm((u16 const *)(& dev->ldv_38497.id));
  hipm = tmp___0;
  tmp___1 = ata_id_has_dipm((u16 const *)(& dev->ldv_38497.id));
  dipm = (bool )((int )tmp___1 && ! no_dipm);
  if ((unsigned long )link_dev == (unsigned long )((struct ata_device *)0)) {
    link_dev = dev;
  } else {
  }
  if ((unsigned long )lpm_dev == (unsigned long )((struct ata_device *)0) && ((int )hipm || (int )dipm)) {
    lpm_dev = dev;
  } else {
  }
  hints = hints & 4294967294U;
  if (! hipm) {
    hints = hints & 4294967293U;
  } else {
  }
  if ((unsigned int )policy != 3U && (int )dipm) {
    err_mask = ata_dev_set_feature(dev, 144, 3);
    if (err_mask != 0U && err_mask != 1U) {
      ata_dev_printk((struct ata_device const *)dev, "\f", "failed to disable DIPM, Emask 0x%x\n",
                     err_mask);
      rc = -5;
      goto fail;
    } else {
    }
  } else {
  }
  dev = ata_dev_next(dev, link, 0);
  ldv_38857: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38856;
  } else {
  }
  if ((unsigned long )ap != (unsigned long )((struct ata_port *)0)) {
    rc = (*((ap->ops)->set_lpm))(link, policy, hints);
    if (rc == 0 && (unsigned long )ap->slave_link != (unsigned long )((struct ata_link *)0)) {
      rc = (*((ap->ops)->set_lpm))(ap->slave_link, policy, hints);
    } else {
    }
  } else {
    rc = sata_pmp_set_lpm(link, policy, hints);
  }
  if (rc != 0) {
    if (rc == -95) {
      link->flags = link->flags | 256U;
      return (0);
    } else {
    }
    dev = (unsigned long )lpm_dev != (unsigned long )((struct ata_device *)0) ? lpm_dev : link_dev;
    goto fail;
  } else {
  }
  link->lpm_policy = policy;
  if ((unsigned long )ap != (unsigned long )((struct ata_port *)0) && (unsigned long )ap->slave_link != (unsigned long )((struct ata_link *)0)) {
    (ap->slave_link)->lpm_policy = policy;
  } else {
  }
  dev = ata_dev_next(0, link, 0);
  goto ldv_38860;
  ldv_38859: ;
  if ((unsigned int )policy == 3U && ! no_dipm) {
    tmp___2 = ata_id_has_dipm((u16 const *)(& dev->ldv_38497.id));
    if ((int )tmp___2) {
      err_mask = ata_dev_set_feature(dev, 16, 3);
      if (err_mask != 0U && err_mask != 1U) {
        ata_dev_printk((struct ata_device const *)dev, "\f", "failed to enable DIPM, Emask 0x%x\n",
                       err_mask);
        rc = -5;
        goto fail;
      } else {
      }
    } else {
    }
  } else {
  }
  dev = ata_dev_next(dev, link, 0);
  ldv_38860: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38859;
  } else {
  }
  return (0);
  fail:
  link->lpm_policy = old_policy;
  if ((unsigned long )ap != (unsigned long )((struct ata_port *)0) && (unsigned long )ap->slave_link != (unsigned long )((struct ata_link *)0)) {
    (ap->slave_link)->lpm_policy = old_policy;
  } else {
  }
  if ((unsigned long )dev == (unsigned long )((struct ata_device *)0) || ehc->tries[dev->devno] <= 2) {
    ata_link_printk((struct ata_link const *)link, "\f", "disabling LPM on the link\n");
    link->flags = link->flags | 256U;
  } else {
  }
  if ((unsigned long )r_failed_dev != (unsigned long )((struct ata_device **)0)) {
    *r_failed_dev = dev;
  } else {
  }
  return (rc);
}
}
int ata_link_nr_enabled(struct ata_link *link )
{
  struct ata_device *dev ;
  int cnt ;
  {
  cnt = 0;
  dev = ata_dev_next(0, link, 0);
  goto ldv_38868;
  ldv_38867:
  cnt = cnt + 1;
  dev = ata_dev_next(dev, link, 0);
  ldv_38868: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38867;
  } else {
  }
  return (cnt);
}
}
static int ata_link_nr_vacant(struct ata_link *link )
{
  struct ata_device *dev ;
  int cnt ;
  {
  cnt = 0;
  dev = ata_dev_next(0, link, 2);
  goto ldv_38876;
  ldv_38875: ;
  if (dev->class == 0U) {
    cnt = cnt + 1;
  } else {
  }
  dev = ata_dev_next(dev, link, 2);
  ldv_38876: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38875;
  } else {
  }
  return (cnt);
}
}
static int ata_eh_skip_recovery(struct ata_link *link )
{
  struct ata_port *ap ;
  struct ata_eh_context *ehc ;
  struct ata_device *dev ;
  int tmp ;
  {
  ap = link->ap;
  ehc = & link->eh_context;
  if ((link->flags & 64U) != 0U) {
    return (1);
  } else {
  }
  if ((ehc->i.flags & 16U) != 0U) {
    return (1);
  } else {
  }
  if ((ap->pflags & 4U) != 0U) {
    return (0);
  } else {
    tmp = ata_link_nr_enabled(link);
    if (tmp != 0) {
      return (0);
    } else {
    }
  }
  if ((ehc->i.action & 6U) != 0U && (ehc->i.flags & 196608U) == 0U) {
    return (0);
  } else {
  }
  dev = ata_dev_next(0, link, 2);
  goto ldv_38885;
  ldv_38884: ;
  if (dev->class == 0U && ehc->classes[dev->devno] != 9U) {
    return (0);
  } else {
  }
  dev = ata_dev_next(dev, link, 2);
  ldv_38885: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38884;
  } else {
  }
  return (1);
}
}
static int ata_count_probe_trials_cb(struct ata_ering_entry *ent , void *void_arg )
{
  u64 interval ;
  unsigned long tmp ;
  u64 now ;
  u64 tmp___0 ;
  int *trials ;
  u64 _min1 ;
  u64 _min2 ;
  {
  tmp = msecs_to_jiffies(60000U);
  interval = (u64 )tmp;
  tmp___0 = get_jiffies_64();
  now = tmp___0;
  trials = (int *)void_arg;
  if ((int )ent->eflags < 0) {
    return (-1);
  } else {
    _min1 = now;
    _min2 = interval;
    if (ent->timestamp < now - (_min1 < _min2 ? _min1 : _min2)) {
      return (-1);
    } else {
    }
  }
  *trials = *trials + 1;
  return (0);
}
}
static int ata_eh_schedule_probe(struct ata_device *dev )
{
  struct ata_eh_context *ehc ;
  struct ata_link *link ;
  struct ata_link *tmp ;
  int trials ;
  int tmp___0 ;
  {
  ehc = & (dev->link)->eh_context;
  tmp = ata_dev_phys_link(dev);
  link = tmp;
  trials = 0;
  if ((ehc->i.probe_mask & (unsigned int )(1 << (int )dev->devno)) == 0U || (ehc->did_probe_mask & (unsigned int )(1 << (int )dev->devno)) != 0U) {
    return (0);
  } else {
  }
  ata_eh_detach_dev(dev);
  ata_dev_init(dev);
  ehc->did_probe_mask = ehc->did_probe_mask | (unsigned int )(1 << (int )dev->devno);
  ehc->i.action = ehc->i.action | 6U;
  ehc->saved_xfer_mode[dev->devno] = 0U;
  ehc->saved_ncq_enabled = ehc->saved_ncq_enabled & (unsigned int )(~ (1 << (int )dev->devno));
  if ((unsigned int )link->lpm_policy > 1U) {
    tmp___0 = ata_is_host_link((struct ata_link const *)link);
    if (tmp___0 != 0) {
      (*(((link->ap)->ops)->set_lpm))(link, 1, 1U);
    } else {
      sata_pmp_set_lpm(link, 1, 1U);
    }
  } else {
  }
  ata_ering_record(& dev->ering, 0U, 256U);
  ata_ering_map(& dev->ering, & ata_count_probe_trials_cb, (void *)(& trials));
  if (trials > 2) {
    sata_down_spd_limit(link, 1U);
  } else {
  }
  return (1);
}
}
static int ata_eh_handle_dev_fail(struct ata_device *dev , int err )
{
  struct ata_eh_context *ehc ;
  int _min1 ;
  int _min2 ;
  struct ata_link *tmp ;
  struct ata_link *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  {
  ehc = & (dev->link)->eh_context;
  if (err != -11) {
    ehc->tries[dev->devno] = ehc->tries[dev->devno] - 1;
  } else {
  }
  switch (err) {
  case -19:
  ehc->i.probe_mask = ehc->i.probe_mask | (unsigned int )(1 << (int )dev->devno);
  case -22:
  _min1 = ehc->tries[dev->devno];
  _min2 = 1;
  ehc->tries[dev->devno] = _min1 < _min2 ? _min1 : _min2;
  case -5: ;
  if (ehc->tries[dev->devno] == 1) {
    tmp = ata_dev_phys_link(dev);
    sata_down_spd_limit(tmp, 0U);
    if ((unsigned int )dev->pio_mode > 8U) {
      ata_down_xfermask_limit(dev, 0U);
    } else {
    }
  } else {
  }
  }
  tmp___3 = ata_dev_enabled((struct ata_device const *)dev);
  if (tmp___3 != 0U && ehc->tries[dev->devno] == 0) {
    ata_dev_disable(dev);
    tmp___0 = ata_dev_phys_link(dev);
    tmp___1 = ata_phys_link_offline(tmp___0);
    if ((int )tmp___1) {
      ata_eh_detach_dev(dev);
    } else {
    }
    tmp___2 = ata_eh_schedule_probe(dev);
    if (tmp___2 != 0) {
      ehc->tries[dev->devno] = 3;
      memset((void *)(& ehc->cmd_timeout_idx) + (unsigned long )dev->devno, 0, 24UL);
    } else {
    }
    return (1);
  } else {
    ehc->i.action = ehc->i.action | 6U;
    return (0);
  }
}
}
int ata_eh_recover(struct ata_port *ap , int (*prereset)(struct ata_link * , unsigned long ) ,
                   int (*softreset)(struct ata_link * , unsigned int * , unsigned long ) ,
                   int (*hardreset)(struct ata_link * , unsigned int * , unsigned long ) ,
                   void (*postreset)(struct ata_link * , unsigned int * ) , struct ata_link **r_failed_link )
{
  struct ata_link *link ;
  struct ata_device *dev ;
  int rc ;
  int nr_fails ;
  unsigned long flags ;
  unsigned long deadline ;
  struct ata_eh_context *ehc ;
  raw_spinlock_t *tmp ;
  unsigned int tmp___0 ;
  struct ata_eh_context *ehc___0 ;
  int tmp___1 ;
  struct ata_eh_context *ehc___1 ;
  int tmp___2 ;
  unsigned long now ;
  struct ata_eh_context *ehc___2 ;
  unsigned long tmp___3 ;
  struct ata_eh_context *ehc___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  bool tmp___6 ;
  {
  link = ata_link_next(0, ap, 0);
  goto ldv_38936;
  ldv_38935:
  ehc = & link->eh_context;
  if ((ehc->i.action & 8U) != 0U) {
    ata_eh_about_to_do(link, 0, 8U);
    tmp = spinlock_check(ap->lock);
    flags = _raw_spin_lock_irqsave(tmp);
    link->flags = link->flags & 4294967231U;
    spin_unlock_irqrestore(ap->lock, flags);
    ata_eh_done(link, 0, 8U);
  } else {
  }
  dev = ata_dev_next(0, link, 2);
  goto ldv_38933;
  ldv_38932: ;
  if ((link->flags & 32U) != 0U) {
    ehc->tries[dev->devno] = 1;
  } else {
    ehc->tries[dev->devno] = 3;
  }
  ehc->i.action = ehc->i.action | (ehc->i.dev_action[dev->devno] & 4294967262U);
  ehc->i.dev_action[dev->devno] = ehc->i.dev_action[dev->devno] & 33U;
  if ((dev->flags & 16777216UL) != 0UL) {
    ata_eh_detach_dev(dev);
  } else {
  }
  tmp___0 = ata_dev_enabled((struct ata_device const *)dev);
  if (tmp___0 == 0U) {
    ata_eh_schedule_probe(dev);
  } else {
  }
  dev = ata_dev_next(dev, link, 2);
  ldv_38933: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38932;
  } else {
  }
  link = ata_link_next(link, ap, 0);
  ldv_38936: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_38935;
  } else {
  }
  retry:
  rc = 0;
  if ((ap->pflags & 512U) != 0U) {
    goto out;
  } else {
  }
  link = ata_link_next(0, ap, 0);
  goto ldv_38945;
  ldv_38944:
  ehc___0 = & link->eh_context;
  tmp___1 = ata_eh_skip_recovery(link);
  if (tmp___1 != 0) {
    ehc___0->i.action = 0U;
  } else {
  }
  dev = ata_dev_next(0, link, 2);
  goto ldv_38942;
  ldv_38941:
  ehc___0->classes[dev->devno] = 0U;
  dev = ata_dev_next(dev, link, 2);
  ldv_38942: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38941;
  } else {
  }
  link = ata_link_next(link, ap, 0);
  ldv_38945: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_38944;
  } else {
  }
  link = ata_link_next(0, ap, 0);
  goto ldv_38950;
  ldv_38949:
  ehc___1 = & link->eh_context;
  if ((ehc___1->i.action & 6U) == 0U) {
    goto ldv_38948;
  } else {
  }
  tmp___2 = ata_link_nr_vacant(link);
  rc = ata_eh_reset(link, tmp___2, prereset, softreset, hardreset, postreset);
  if (rc != 0) {
    ata_link_printk((struct ata_link const *)link, "\v", "reset failed, giving up\n");
    goto out;
  } else {
  }
  ldv_38948:
  link = ata_link_next(link, ap, 0);
  ldv_38950: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_38949;
  } else {
  }
  ldv_38981:
  ata_eh_pull_park_action(ap);
  deadline = jiffies;
  link = ata_link_next(0, ap, 0);
  goto ldv_38972;
  ldv_38971:
  dev = ata_dev_next(0, link, 2);
  goto ldv_38969;
  ldv_38968:
  ehc___2 = & link->eh_context;
  if (dev->class != 1U) {
    goto ldv_38955;
  } else {
  }
  if ((ehc___2->i.dev_action[dev->devno] & 32U) == 0U) {
    goto ldv_38955;
  } else {
  }
  tmp___3 = dev->unpark_deadline;
  if ((long )deadline - (long )tmp___3 < 0L) {
    deadline = tmp___3;
  } else
  if ((long )jiffies - (long )tmp___3 >= 0L) {
    goto ldv_38955;
  } else {
  }
  if ((ehc___2->unloaded_mask & (unsigned int )(1 << (int )dev->devno)) != 0U) {
    goto ldv_38955;
  } else {
  }
  ata_eh_park_issue_cmd(dev, 1);
  ldv_38955:
  dev = ata_dev_next(dev, link, 2);
  ldv_38969: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38968;
  } else {
  }
  link = ata_link_next(link, ap, 0);
  ldv_38972: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_38971;
  } else {
  }
  now = jiffies;
  if ((long )now - (long )deadline >= 0L) {
    goto ldv_38980;
  } else {
  }
  ata_eh_release(ap);
  deadline = wait_for_completion_timeout(& ap->park_req_pending, deadline - now);
  ata_eh_acquire(ap);
  if (deadline != 0UL) {
    goto ldv_38981;
  } else {
  }
  ldv_38980:
  link = ata_link_next(0, ap, 0);
  goto ldv_38987;
  ldv_38986:
  dev = ata_dev_next(0, link, 2);
  goto ldv_38984;
  ldv_38983: ;
  if ((link->eh_context.unloaded_mask & (unsigned int )(1 << (int )dev->devno)) == 0U) {
    goto ldv_38982;
  } else {
  }
  ata_eh_park_issue_cmd(dev, 0);
  ata_eh_done(link, dev, 32U);
  ldv_38982:
  dev = ata_dev_next(dev, link, 2);
  ldv_38984: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38983;
  } else {
  }
  link = ata_link_next(link, ap, 0);
  ldv_38987: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_38986;
  } else {
  }
  nr_fails = 0;
  link = ata_link_next(0, ap, 2);
  goto ldv_39003;
  ldv_39002:
  ehc___3 = & link->eh_context;
  tmp___4 = sata_pmp_attached(ap);
  if ((int )tmp___4) {
    tmp___5 = ata_is_host_link((struct ata_link const *)link);
    if (tmp___5 != 0) {
      goto config_lpm;
    } else {
    }
  } else {
  }
  rc = ata_eh_revalidate_and_attach(link, & dev);
  if (rc != 0) {
    goto rest_fail;
  } else {
  }
  if (((struct ata_device *)(& link->device))->class == 5U) {
    ehc___3->i.action = 0U;
    return (0);
  } else {
  }
  if ((ehc___3->i.flags & 524288U) != 0U) {
    rc = ata_set_mode(link, & dev);
    if (rc != 0) {
      goto rest_fail;
    } else {
    }
    ehc___3->i.flags = ehc___3->i.flags & 4294443007U;
  } else {
  }
  if ((ehc___3->i.flags & 196608U) != 0U) {
    dev = ata_dev_next(0, link, 2);
    goto ldv_38994;
    ldv_38993: ;
    if (dev->class != 3U) {
      goto ldv_38992;
    } else {
    }
    rc = atapi_eh_clear_ua(dev);
    if (rc != 0) {
      goto rest_fail;
    } else {
    }
    ldv_38992:
    dev = ata_dev_next(dev, link, 2);
    ldv_38994: ;
    if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
      goto ldv_38993;
    } else {
    }
  } else {
  }
  dev = ata_dev_next(0, link, 2);
  goto ldv_38998;
  ldv_38997: ;
  if (dev->class != 1U) {
    goto ldv_38996;
  } else {
  }
  rc = ata_eh_maybe_retry_flush(dev);
  if (rc != 0) {
    goto rest_fail;
  } else {
  }
  ldv_38996:
  dev = ata_dev_next(dev, link, 2);
  ldv_38998: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38997;
  } else {
  }
  config_lpm: ;
  if ((unsigned int )link->lpm_policy != (unsigned int )ap->target_lpm_policy) {
    rc = ata_eh_set_lpm(link, ap->target_lpm_policy, & dev);
    if (rc != 0) {
      goto rest_fail;
    } else {
    }
  } else {
  }
  ehc___3->i.flags = 0U;
  goto ldv_39000;
  rest_fail:
  nr_fails = nr_fails + 1;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    ata_eh_handle_dev_fail(dev, rc);
  } else {
  }
  if ((ap->pflags & 4U) != 0U) {
    tmp___6 = sata_pmp_attached(ap);
    if ((int )tmp___6) {
      goto out;
    } else {
    }
    goto ldv_39001;
  } else {
  }
  ldv_39000:
  link = ata_link_next(link, ap, 2);
  ldv_39003: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_39002;
  } else {
  }
  ldv_39001: ;
  if (nr_fails != 0) {
    goto retry;
  } else {
  }
  out: ;
  if (rc != 0 && (unsigned long )r_failed_link != (unsigned long )((struct ata_link **)0)) {
    *r_failed_link = link;
  } else {
  }
  return (rc);
}
}
void ata_eh_finish(struct ata_port *ap )
{
  int tag ;
  struct ata_queued_cmd *qc ;
  struct ata_queued_cmd *tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  tag = 0;
  goto ldv_39011;
  ldv_39010:
  tmp = __ata_qc_from_tag(ap, (unsigned int )tag);
  qc = tmp;
  if ((qc->flags & 65536UL) == 0UL) {
    goto ldv_39009;
  } else {
  }
  if (qc->err_mask != 0U) {
    if ((qc->flags & 128UL) != 0UL) {
      ata_eh_qc_retry(qc);
    } else {
      ata_eh_qc_complete(qc);
    }
  } else
  if ((qc->flags & 131072UL) != 0UL) {
    ata_eh_qc_complete(qc);
  } else {
    memset((void *)(& qc->result_tf), 0, 24UL);
    ata_eh_qc_retry(qc);
  }
  ldv_39009:
  tag = tag + 1;
  ldv_39011: ;
  if (tag <= 31) {
    goto ldv_39010;
  } else {
  }
  __ret_warn_on = ap->nr_active_links != 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                       4015);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ap->nr_active_links = 0;
  return;
}
}
void ata_do_eh(struct ata_port *ap , int (*prereset)(struct ata_link * , unsigned long ) ,
               int (*softreset)(struct ata_link * , unsigned int * , unsigned long ) ,
               int (*hardreset)(struct ata_link * , unsigned int * , unsigned long ) ,
               void (*postreset)(struct ata_link * , unsigned int * ) )
{
  struct ata_device *dev ;
  int rc ;
  {
  ata_eh_autopsy(ap);
  ata_eh_report(ap);
  rc = ata_eh_recover(ap, prereset, softreset, hardreset, postreset, 0);
  if (rc != 0) {
    dev = ata_dev_next(0, & ap->link, 2);
    goto ldv_39025;
    ldv_39024:
    ata_dev_disable(dev);
    dev = ata_dev_next(dev, & ap->link, 2);
    ldv_39025: ;
    if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
      goto ldv_39024;
    } else {
    }
  } else {
  }
  ata_eh_finish(ap);
  return;
}
}
void ata_std_error_handler(struct ata_port *ap )
{
  struct ata_port_operations *ops ;
  int (*hardreset)(struct ata_link * , unsigned int * , unsigned long ) ;
  int tmp ;
  {
  ops = ap->ops;
  hardreset = ops->hardreset;
  if ((unsigned long )hardreset == (unsigned long )(& sata_std_hardreset)) {
    tmp = sata_scr_valid(& ap->link);
    if (tmp == 0) {
      hardreset = 0;
    } else {
    }
  } else {
  }
  ata_do_eh(ap, ops->prereset, ops->softreset, hardreset, ops->postreset);
  return;
}
}
static void ata_eh_handle_port_suspend(struct ata_port *ap )
{
  unsigned long flags ;
  int rc ;
  raw_spinlock_t *tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  struct pm_message __constr_expr_0___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  rc = 0;
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((ap->pflags & 262144U) == 0U || ap->pm_mesg.event == 0) {
    spin_unlock_irqrestore(ap->lock, flags);
    return;
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  __ret_warn_on = (ap->pflags & 131072U) != 0U;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                       4098);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  rc = ata_acpi_on_suspend(ap);
  if (rc != 0) {
    goto out;
  } else {
  }
  ata_eh_freeze_port(ap);
  if ((unsigned long )(ap->ops)->port_suspend != (unsigned long )((int (*)(struct ata_port * ,
                                                                           pm_message_t ))0)) {
    rc = (*((ap->ops)->port_suspend))(ap, ap->pm_mesg);
  } else {
  }
  __constr_expr_0___0.event = 2;
  ata_acpi_set_state(ap, __constr_expr_0___0);
  out:
  tmp___1 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  ap->pflags = ap->pflags & 4294705151U;
  if (rc == 0) {
    ap->pflags = ap->pflags | 131072U;
  } else
  if ((ap->pflags & 4U) != 0U) {
    ata_port_schedule_eh(ap);
  } else {
  }
  if ((unsigned long )ap->pm_result != (unsigned long )((int *)0)) {
    *(ap->pm_result) = rc;
    ap->pm_result = 0;
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  return;
}
}
static void ata_eh_handle_port_resume(struct ata_port *ap )
{
  struct ata_link *link ;
  struct ata_device *dev ;
  unsigned long flags ;
  int rc ;
  raw_spinlock_t *tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  struct pm_message __constr_expr_0___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  rc = 0;
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((ap->pflags & 262144U) == 0U || ap->pm_mesg.event != 0) {
    spin_unlock_irqrestore(ap->lock, flags);
    return;
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  __ret_warn_on = (ap->pflags & 131072U) == 0U;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-eh.c.prepared",
                       4157);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  link = ata_link_next(0, ap, 1);
  goto ldv_39063;
  ldv_39062:
  dev = ata_dev_next(0, link, 2);
  goto ldv_39060;
  ldv_39059:
  ata_ering_clear(& dev->ering);
  dev = ata_dev_next(dev, link, 2);
  ldv_39060: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_39059;
  } else {
  }
  link = ata_link_next(link, ap, 1);
  ldv_39063: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_39062;
  } else {
  }
  __constr_expr_0___0.event = 0;
  ata_acpi_set_state(ap, __constr_expr_0___0);
  if ((unsigned long )(ap->ops)->port_resume != (unsigned long )((int (*)(struct ata_port * ))0)) {
    rc = (*((ap->ops)->port_resume))(ap);
  } else {
  }
  ata_acpi_on_resume(ap);
  tmp___1 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  ap->pflags = ap->pflags & 4294574079U;
  if ((unsigned long )ap->pm_result != (unsigned long )((int *)0)) {
    *(ap->pm_result) = rc;
    ap->pm_result = 0;
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  return;
}
}
void ldv_mutex_lock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_54(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
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
void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_56(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_eh_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_eh_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern int sprintf(char * , char const * , ...) ;
int ldv_mutex_trylock_72(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_68(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_67(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_69(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 ) ;
extern void jiffies_to_timespec(unsigned long const , struct timespec * ) ;
extern int dev_set_name(struct device * , char const * , ...) ;
__inline static void device_enable_async_suspend(struct device *dev )
{
  {
  if (! dev->power.is_prepared) {
    dev->power.async_suspend = 1U;
  } else {
  }
  return;
}
}
extern void device_initialize(struct device * ) ;
extern int device_add(struct device * ) ;
extern void device_del(struct device * ) ;
extern struct device *get_device(struct device * ) ;
extern void put_device(struct device * ) ;
extern int attribute_container_register(struct attribute_container * ) ;
extern int attribute_container_unregister(struct attribute_container * ) ;
extern void transport_remove_device(struct device * ) ;
extern void transport_add_device(struct device * ) ;
extern void transport_setup_device(struct device * ) ;
extern void transport_configure_device(struct device * ) ;
extern void transport_destroy_device(struct device * ) ;
__inline static int transport_container_register(struct transport_container *tc )
{
  int tmp ;
  {
  tmp = attribute_container_register(& tc->ac);
  return (tmp);
}
}
__inline static void transport_container_unregister(struct transport_container *tc )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = attribute_container_unregister(& tc->ac);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/transport_class.h"),
                         "i" (93), "i" (12UL));
    ldv_28350: ;
    goto ldv_28350;
  } else {
  }
  return;
}
}
extern int transport_class_register(struct transport_class * ) ;
extern void transport_class_unregister(struct transport_class * ) ;
extern void pm_runtime_forbid(struct device * ) ;
struct scsi_transport_template *ata_scsi_transport_template ;
int ata_tlink_add(struct ata_link *link ) ;
static int ata_tdev_add(struct ata_device *ata_dev ) ;
static void ata_tdev_delete(struct ata_device *ata_dev ) ;
static struct __anonstruct_ata_class_names_200 ata_class_names[10U] =
  { {0U, (char *)"unknown"},
        {1U, (char *)"ata"},
        {2U, (char *)"ata"},
        {3U, (char *)"atapi"},
        {4U, (char *)"atapi"},
        {5U, (char *)"pmp"},
        {6U, (char *)"pmp"},
        {7U, (char *)"semb"},
        {8U, (char *)"semb"},
        {9U, (char *)"none"}};
static ssize_t get_ata_class_names(u32 table_key , char *buf )
{
  ssize_t len ;
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  len = 0L;
  i = 0;
  goto ldv_36636;
  ldv_36635: ;
  if (ata_class_names[i].value == table_key) {
    tmp = sprintf(buf + (unsigned long )len, "%s", ata_class_names[i].name);
    len = (ssize_t )tmp + len;
    goto ldv_36634;
  } else {
  }
  i = i + 1;
  ldv_36636: ;
  if ((unsigned int )i <= 9U) {
    goto ldv_36635;
  } else {
  }
  ldv_36634:
  tmp___0 = sprintf(buf + (unsigned long )len, "\n");
  len = (ssize_t )tmp___0 + len;
  return (len);
}
}
static struct __anonstruct_ata_err_names_202 ata_err_names[11U] =
  { {1U, (char *)"DeviceError"},
        {2U, (char *)"HostStateMachineError"},
        {4U, (char *)"Timeout"},
        {8U, (char *)"MediaError"},
        {16U, (char *)"BusError"},
        {32U, (char *)"HostBusError"},
        {64U, (char *)"SystemError"},
        {128U, (char *)"InvalidArg"},
        {256U, (char *)"Unknown"},
        {512U, (char *)"NoDeviceHint"},
        {1024U, (char *)"NCQError"}};
static ssize_t get_ata_err_names(u32 table_key , char *buf )
{
  char *prefix ;
  ssize_t len ;
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  prefix = (char *)"";
  len = 0L;
  i = 0;
  goto ldv_36651;
  ldv_36650: ;
  if ((ata_err_names[i].value & table_key) != 0U) {
    tmp = sprintf(buf + (unsigned long )len, "%s%s", prefix, ata_err_names[i].name);
    len = (ssize_t )tmp + len;
    prefix = (char *)", ";
  } else {
  }
  i = i + 1;
  ldv_36651: ;
  if ((unsigned int )i <= 10U) {
    goto ldv_36650;
  } else {
  }
  tmp___0 = sprintf(buf + (unsigned long )len, "\n");
  len = (ssize_t )tmp___0 + len;
  return (len);
}
}
static struct __anonstruct_ata_xfer_names_204 ata_xfer_names[24U] =
  { {71U, (char *)"XFER_UDMA_7"},
        {70U, (char *)"XFER_UDMA_6"},
        {69U, (char *)"XFER_UDMA_5"},
        {68U, (char *)"XFER_UDMA_4"},
        {67U, (char *)"XFER_UDMA_3"},
        {66U, (char *)"XFER_UDMA_2"},
        {65U, (char *)"XFER_UDMA_1"},
        {64U, (char *)"XFER_UDMA_0"},
        {36U, (char *)"XFER_MW_DMA_4"},
        {35U, (char *)"XFER_MW_DMA_3"},
        {34U, (char *)"XFER_MW_DMA_2"},
        {33U, (char *)"XFER_MW_DMA_1"},
        {32U, (char *)"XFER_MW_DMA_0"},
        {18U, (char *)"XFER_SW_DMA_2"},
        {17U, (char *)"XFER_SW_DMA_1"},
        {16U, (char *)"XFER_SW_DMA_0"},
        {14U, (char *)"XFER_PIO_6"},
        {13U, (char *)"XFER_PIO_5"},
        {12U, (char *)"XFER_PIO_4"},
        {11U, (char *)"XFER_PIO_3"},
        {10U, (char *)"XFER_PIO_2"},
        {9U, (char *)"XFER_PIO_1"},
        {8U, (char *)"XFER_PIO_0"},
        {0U, (char *)"XFER_PIO_SLOW"}};
static ssize_t get_ata_xfer_names(u32 table_key , char *buf )
{
  char *prefix ;
  ssize_t len ;
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  prefix = (char *)"";
  len = 0L;
  i = 0;
  goto ldv_36667;
  ldv_36666: ;
  if ((ata_xfer_names[i].value & table_key) != 0U) {
    tmp = sprintf(buf + (unsigned long )len, "%s%s", prefix, ata_xfer_names[i].name);
    len = (ssize_t )tmp + len;
    prefix = (char *)", ";
  } else {
  }
  i = i + 1;
  ldv_36667: ;
  if ((unsigned int )i <= 23U) {
    goto ldv_36666;
  } else {
  }
  tmp___0 = sprintf(buf + (unsigned long )len, "\n");
  len = (ssize_t )tmp___0 + len;
  return (len);
}
}
static ssize_t show_ata_port_nr_pmp_links(struct device *dev , struct device_attribute *attr ,
                                          char *buf )
{
  struct ata_port *ap ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev->parent;
  ap = (struct ata_port *)__mptr + 0xffffffffffffc5f0UL;
  tmp = snprintf(buf, 20UL, "%d\n", ap->nr_pmp_links);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_nr_pmp_links = {{"nr_pmp_links", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_ata_port_nr_pmp_links, 0};
static ssize_t show_ata_port_idle_irq(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct ata_port *ap ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev->parent;
  ap = (struct ata_port *)__mptr + 0xffffffffffffc5f0UL;
  tmp = snprintf(buf, 20UL, "%ld\n", ap->stats.idle_irq);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_idle_irq = {{"idle_irq", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_ata_port_idle_irq, 0};
static struct transport_class ata_port_class = {{"ata_port", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 0, 0, 0};
static void ata_tport_release(struct device *dev )
{
  {
  put_device(dev->parent);
  return;
}
}
static int ata_is_port(struct device const *dev )
{
  {
  return ((unsigned long )((void (*)(struct device * ))dev->release) == (unsigned long )(& ata_tport_release));
}
}
static int ata_tport_match(struct attribute_container *cont , struct device *dev )
{
  int tmp ;
  {
  tmp = ata_is_port((struct device const *)dev);
  if (tmp == 0) {
    return (0);
  } else {
  }
  return ((unsigned long )(& ata_scsi_transport_template->host_attrs.ac) == (unsigned long )cont);
}
}
void ata_tport_delete(struct ata_port *ap )
{
  struct device *dev ;
  {
  dev = & ap->tdev;
  ata_tlink_delete(& ap->link);
  transport_remove_device(dev);
  device_del(dev);
  transport_destroy_device(dev);
  put_device(dev);
  return;
}
}
int ata_tport_add(struct device *parent , struct ata_port *ap )
{
  int error ;
  struct device *dev ;
  {
  dev = & ap->tdev;
  device_initialize(dev);
  dev->type = (struct device_type const *)(& ata_port_type);
  dev->parent = get_device(parent);
  dev->release = & ata_tport_release;
  dev_set_name(dev, "ata%d", ap->print_id);
  transport_setup_device(dev);
  error = device_add(dev);
  if (error != 0) {
    goto tport_err;
  } else {
  }
  device_enable_async_suspend(dev);
  pm_runtime_set_active(dev);
  pm_runtime_enable(dev);
  pm_runtime_forbid(dev);
  transport_add_device(dev);
  transport_configure_device(dev);
  error = ata_tlink_add(& ap->link);
  if (error != 0) {
    goto tport_link_err;
  } else {
  }
  return (0);
  tport_link_err:
  transport_remove_device(dev);
  device_del(dev);
  tport_err:
  transport_destroy_device(dev);
  put_device(dev);
  return (error);
}
}
static ssize_t show_ata_link_hw_sata_spd_limit(struct device *dev , struct device_attribute *attr ,
                                               char *buf )
{
  struct ata_link *link ;
  struct device const *__mptr ;
  int tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device const *)dev->parent;
  link = (struct ata_link *)__mptr + 0xfffffffffffffff0UL;
  tmp = fls((int )link->hw_sata_spd_limit);
  tmp___0 = sata_spd_string((unsigned int )tmp);
  tmp___1 = sprintf(buf, "%s\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static struct device_attribute dev_attr_hw_sata_spd_limit = {{"hw_sata_spd_limit", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_ata_link_hw_sata_spd_limit, 0};
static ssize_t show_ata_link_sata_spd_limit(struct device *dev , struct device_attribute *attr ,
                                            char *buf )
{
  struct ata_link *link ;
  struct device const *__mptr ;
  int tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device const *)dev->parent;
  link = (struct ata_link *)__mptr + 0xfffffffffffffff0UL;
  tmp = fls((int )link->sata_spd_limit);
  tmp___0 = sata_spd_string((unsigned int )tmp);
  tmp___1 = sprintf(buf, "%s\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static struct device_attribute dev_attr_sata_spd_limit = {{"sata_spd_limit", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_ata_link_sata_spd_limit, 0};
static ssize_t show_ata_link_sata_spd(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct ata_link *link ;
  struct device const *__mptr ;
  int tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device const *)dev->parent;
  link = (struct ata_link *)__mptr + 0xfffffffffffffff0UL;
  tmp = fls((int )link->sata_spd);
  tmp___0 = sata_spd_string((unsigned int )tmp);
  tmp___1 = sprintf(buf, "%s\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static struct device_attribute dev_attr_sata_spd = {{"sata_spd", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_ata_link_sata_spd, 0};
static struct transport_class ata_link_class = {{"ata_link", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 0, 0, 0};
static void ata_tlink_release(struct device *dev )
{
  {
  put_device(dev->parent);
  return;
}
}
static int ata_is_link(struct device const *dev )
{
  {
  return ((unsigned long )((void (*)(struct device * ))dev->release) == (unsigned long )(& ata_tlink_release));
}
}
static int ata_tlink_match(struct attribute_container *cont , struct device *dev )
{
  struct ata_internal *i ;
  struct scsi_transport_template const *__mptr ;
  int tmp ;
  {
  __mptr = (struct scsi_transport_template const *)ata_scsi_transport_template;
  i = (struct ata_internal *)__mptr;
  tmp = ata_is_link((struct device const *)dev);
  if (tmp == 0) {
    return (0);
  } else {
  }
  return ((unsigned long )(& i->link_attr_cont.ac) == (unsigned long )cont);
}
}
void ata_tlink_delete(struct ata_link *link )
{
  struct device *dev ;
  struct ata_device *ata_dev ;
  {
  dev = & link->tdev;
  ata_dev = ata_dev_next(0, link, 2);
  goto ldv_36757;
  ldv_36756:
  ata_tdev_delete(ata_dev);
  ata_dev = ata_dev_next(ata_dev, link, 2);
  ldv_36757: ;
  if ((unsigned long )ata_dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_36756;
  } else {
  }
  transport_remove_device(dev);
  device_del(dev);
  transport_destroy_device(dev);
  put_device(dev);
  return;
}
}
int ata_tlink_add(struct ata_link *link )
{
  struct device *dev ;
  struct ata_port *ap ;
  struct ata_device *ata_dev ;
  int error ;
  int tmp ;
  {
  dev = & link->tdev;
  ap = link->ap;
  device_initialize(dev);
  dev->parent = get_device(& ap->tdev);
  dev->release = & ata_tlink_release;
  tmp = ata_is_host_link((struct ata_link const *)link);
  if (tmp != 0) {
    dev_set_name(dev, "link%d", ap->print_id);
  } else {
    dev_set_name(dev, "link%d.%d", ap->print_id, link->pmp);
  }
  transport_setup_device(dev);
  error = device_add(dev);
  if (error != 0) {
    goto tlink_err;
  } else {
  }
  transport_add_device(dev);
  transport_configure_device(dev);
  ata_dev = ata_dev_next(0, link, 2);
  goto ldv_36769;
  ldv_36768:
  error = ata_tdev_add(ata_dev);
  if (error != 0) {
    goto tlink_dev_err;
  } else {
  }
  ata_dev = ata_dev_next(ata_dev, link, 2);
  ldv_36769: ;
  if ((unsigned long )ata_dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_36768;
  } else {
  }
  return (0);
  tlink_dev_err: ;
  goto ldv_36772;
  ldv_36771:
  ata_tdev_delete(ata_dev);
  ldv_36772:
  ata_dev = ata_dev - 1;
  if ((unsigned long )ata_dev >= (unsigned long )((struct ata_device *)(& link->device))) {
    goto ldv_36771;
  } else {
  }
  transport_remove_device(dev);
  device_del(dev);
  tlink_err:
  transport_destroy_device(dev);
  put_device(dev);
  return (error);
}
}
static ssize_t show_ata_dev_class(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  struct ata_device *ata_dev ;
  struct device const *__mptr ;
  ssize_t tmp ;
  {
  __mptr = (struct device const *)dev->parent;
  ata_dev = (struct ata_device *)__mptr + 0xffffffffffffffc8UL;
  tmp = get_ata_class_names(ata_dev->class, buf);
  return (tmp);
}
}
static struct device_attribute dev_attr_class = {{"class", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & show_ata_dev_class,
    0};
static ssize_t show_ata_dev_pio_mode(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  struct ata_device *ata_dev ;
  struct device const *__mptr ;
  ssize_t tmp ;
  {
  __mptr = (struct device const *)dev->parent;
  ata_dev = (struct ata_device *)__mptr + 0xffffffffffffffc8UL;
  tmp = get_ata_xfer_names((u32 )ata_dev->pio_mode, buf);
  return (tmp);
}
}
static struct device_attribute dev_attr_pio_mode = {{"pio_mode", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_ata_dev_pio_mode, 0};
static ssize_t show_ata_dev_dma_mode(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  struct ata_device *ata_dev ;
  struct device const *__mptr ;
  ssize_t tmp ;
  {
  __mptr = (struct device const *)dev->parent;
  ata_dev = (struct ata_device *)__mptr + 0xffffffffffffffc8UL;
  tmp = get_ata_xfer_names((u32 )ata_dev->dma_mode, buf);
  return (tmp);
}
}
static struct device_attribute dev_attr_dma_mode = {{"dma_mode", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_ata_dev_dma_mode, 0};
static ssize_t show_ata_dev_xfer_mode(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct ata_device *ata_dev ;
  struct device const *__mptr ;
  ssize_t tmp ;
  {
  __mptr = (struct device const *)dev->parent;
  ata_dev = (struct ata_device *)__mptr + 0xffffffffffffffc8UL;
  tmp = get_ata_xfer_names((u32 )ata_dev->xfer_mode, buf);
  return (tmp);
}
}
static struct device_attribute dev_attr_xfer_mode = {{"xfer_mode", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_ata_dev_xfer_mode, 0};
static ssize_t show_ata_dev_spdn_cnt(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  struct ata_device *ata_dev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev->parent;
  ata_dev = (struct ata_device *)__mptr + 0xffffffffffffffc8UL;
  tmp = snprintf(buf, 20UL, "%d\n", ata_dev->spdn_cnt);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_spdn_cnt = {{"spdn_cnt", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_ata_dev_spdn_cnt, 0};
static int ata_show_ering(struct ata_ering_entry *ent , void *void_arg )
{
  struct ata_show_ering_arg *arg ;
  struct timespec time ;
  int tmp ;
  ssize_t tmp___0 ;
  {
  arg = (struct ata_show_ering_arg *)void_arg;
  jiffies_to_timespec((unsigned long const )ent->timestamp, & time);
  tmp = sprintf(arg->buf + (unsigned long )arg->written, "[%5lu.%06lu]", time.tv_sec,
                time.tv_nsec);
  arg->written = arg->written + tmp;
  tmp___0 = get_ata_err_names(ent->err_mask, arg->buf + (unsigned long )arg->written);
  arg->written = (int )((unsigned int )arg->written + (unsigned int )tmp___0);
  return (0);
}
}
static ssize_t show_ata_dev_ering(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  struct ata_device *ata_dev ;
  struct device const *__mptr ;
  struct ata_show_ering_arg arg ;
  {
  __mptr = (struct device const *)dev->parent;
  ata_dev = (struct ata_device *)__mptr + 0xffffffffffffffc8UL;
  arg.buf = buf;
  arg.written = 0;
  ata_ering_map(& ata_dev->ering, & ata_show_ering, (void *)(& arg));
  return ((ssize_t )arg.written);
}
}
static struct device_attribute dev_attr_ering = {{"ering", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & show_ata_dev_ering,
    0};
static ssize_t show_ata_dev_id(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct ata_device *ata_dev ;
  struct device const *__mptr ;
  int written ;
  int i ;
  int tmp ;
  {
  __mptr = (struct device const *)dev->parent;
  ata_dev = (struct ata_device *)__mptr + 0xffffffffffffffc8UL;
  written = 0;
  i = 0;
  if (ata_dev->class == 5U) {
    return (0L);
  } else {
  }
  i = 0;
  goto ldv_36849;
  ldv_36848:
  tmp = snprintf(buf + (unsigned long )written, 20UL, "%04x%c", (int )ata_dev->ldv_38497.id[i],
                 ((i + 1) & 7) != 0 ? 32 : 10);
  written = tmp + written;
  i = i + 1;
  ldv_36849: ;
  if (i <= 255) {
    goto ldv_36848;
  } else {
  }
  return ((ssize_t )written);
}
}
static struct device_attribute dev_attr_id = {{"id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                {(char)0}, {(char)0}, {(char)0}}}}, & show_ata_dev_id,
    0};
static ssize_t show_ata_dev_gscr(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{
  struct ata_device *ata_dev ;
  struct device const *__mptr ;
  int written ;
  int i ;
  int tmp ;
  {
  __mptr = (struct device const *)dev->parent;
  ata_dev = (struct ata_device *)__mptr + 0xffffffffffffffc8UL;
  written = 0;
  i = 0;
  if (ata_dev->class != 5U) {
    return (0L);
  } else {
  }
  i = 0;
  goto ldv_36863;
  ldv_36862:
  tmp = snprintf(buf + (unsigned long )written, 20UL, "%08x%c", ata_dev->ldv_38497.gscr[i],
                 ((i + 1) & 3) != 0 ? 32 : 10);
  written = tmp + written;
  i = i + 1;
  ldv_36863: ;
  if (i <= 127) {
    goto ldv_36862;
  } else {
  }
  return ((ssize_t )written);
}
}
static struct device_attribute dev_attr_gscr = {{"gscr", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & show_ata_dev_gscr,
    0};
static struct transport_class ata_dev_class = {{"ata_device", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 0, 0, 0};
static void ata_tdev_release(struct device *dev )
{
  {
  put_device(dev->parent);
  return;
}
}
static int ata_is_ata_dev(struct device const *dev )
{
  {
  return ((unsigned long )((void (*)(struct device * ))dev->release) == (unsigned long )(& ata_tdev_release));
}
}
static int ata_tdev_match(struct attribute_container *cont , struct device *dev )
{
  struct ata_internal *i ;
  struct scsi_transport_template const *__mptr ;
  int tmp ;
  {
  __mptr = (struct scsi_transport_template const *)ata_scsi_transport_template;
  i = (struct ata_internal *)__mptr;
  tmp = ata_is_ata_dev((struct device const *)dev);
  if (tmp == 0) {
    return (0);
  } else {
  }
  return ((unsigned long )(& i->dev_attr_cont.ac) == (unsigned long )cont);
}
}
static void ata_tdev_free(struct ata_device *dev )
{
  {
  transport_destroy_device(& dev->tdev);
  put_device(& dev->tdev);
  return;
}
}
static void ata_tdev_delete(struct ata_device *ata_dev )
{
  struct device *dev ;
  {
  dev = & ata_dev->tdev;
  transport_remove_device(dev);
  device_del(dev);
  ata_tdev_free(ata_dev);
  return;
}
}
static int ata_tdev_add(struct ata_device *ata_dev )
{
  struct device *dev ;
  struct ata_link *link ;
  struct ata_port *ap ;
  int error ;
  int tmp ;
  {
  dev = & ata_dev->tdev;
  link = ata_dev->link;
  ap = link->ap;
  device_initialize(dev);
  dev->parent = get_device(& link->tdev);
  dev->release = & ata_tdev_release;
  tmp = ata_is_host_link((struct ata_link const *)link);
  if (tmp != 0) {
    dev_set_name(dev, "dev%d.%d", ap->print_id, ata_dev->devno);
  } else {
    dev_set_name(dev, "dev%d.%d.0", ap->print_id, link->pmp);
  }
  transport_setup_device(dev);
  error = device_add(dev);
  if (error != 0) {
    ata_tdev_free(ata_dev);
    return (error);
  } else {
  }
  transport_add_device(dev);
  transport_configure_device(dev);
  return (0);
}
}
struct scsi_transport_template *ata_attach_transport(void)
{
  struct ata_internal *i ;
  int count ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = kzalloc(1712UL, 208U);
  i = (struct ata_internal *)tmp;
  if ((unsigned long )i == (unsigned long )((struct ata_internal *)0)) {
    return (0);
  } else {
  }
  i->t.eh_strategy_handler = & ata_scsi_error;
  i->t.eh_timed_out = & ata_scsi_timed_out;
  i->t.user_scan = & ata_scsi_user_scan;
  i->t.host_attrs.ac.attrs = (struct device_attribute **)(& i->port_attrs);
  i->t.host_attrs.ac.class = & ata_port_class.class;
  i->t.host_attrs.ac.match = & ata_tport_match;
  transport_container_register(& i->t.host_attrs);
  i->link_attr_cont.ac.class = & ata_link_class.class;
  i->link_attr_cont.ac.attrs = (struct device_attribute **)(& i->link_attrs);
  i->link_attr_cont.ac.match = & ata_tlink_match;
  transport_container_register(& i->link_attr_cont);
  i->dev_attr_cont.ac.class = & ata_dev_class.class;
  i->dev_attr_cont.ac.attrs = (struct device_attribute **)(& i->dev_attrs);
  i->dev_attr_cont.ac.match = & ata_tdev_match;
  transport_container_register(& i->dev_attr_cont);
  count = 0;
  i->private_port_attrs[count] = dev_attr_nr_pmp_links;
  i->private_port_attrs[count].attr.mode = 292U;
  i->port_attrs[count] = (struct device_attribute *)(& i->private_port_attrs) + (unsigned long )count;
  count = count + 1;
  i->private_port_attrs[count] = dev_attr_idle_irq;
  i->private_port_attrs[count].attr.mode = 292U;
  i->port_attrs[count] = (struct device_attribute *)(& i->private_port_attrs) + (unsigned long )count;
  count = count + 1;
  tmp___0 = ldv__builtin_expect(count > 2, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-transport.c.prepared"),
                         "i" (775), "i" (12UL));
    ldv_36899: ;
    goto ldv_36899;
  } else {
  }
  i->port_attrs[count] = 0;
  count = 0;
  i->private_link_attrs[count] = dev_attr_hw_sata_spd_limit;
  i->private_link_attrs[count].attr.mode = 292U;
  i->link_attrs[count] = (struct device_attribute *)(& i->private_link_attrs) + (unsigned long )count;
  count = count + 1;
  i->private_link_attrs[count] = dev_attr_sata_spd_limit;
  i->private_link_attrs[count].attr.mode = 292U;
  i->link_attrs[count] = (struct device_attribute *)(& i->private_link_attrs) + (unsigned long )count;
  count = count + 1;
  i->private_link_attrs[count] = dev_attr_sata_spd;
  i->private_link_attrs[count].attr.mode = 292U;
  i->link_attrs[count] = (struct device_attribute *)(& i->private_link_attrs) + (unsigned long )count;
  count = count + 1;
  tmp___1 = ldv__builtin_expect(count > 3, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-transport.c.prepared"),
                         "i" (782), "i" (12UL));
    ldv_36900: ;
    goto ldv_36900;
  } else {
  }
  i->link_attrs[count] = 0;
  count = 0;
  i->private_dev_attrs[count] = dev_attr_class;
  i->private_dev_attrs[count].attr.mode = 292U;
  i->dev_attrs[count] = (struct device_attribute *)(& i->private_dev_attrs) + (unsigned long )count;
  count = count + 1;
  i->private_dev_attrs[count] = dev_attr_pio_mode;
  i->private_dev_attrs[count].attr.mode = 292U;
  i->dev_attrs[count] = (struct device_attribute *)(& i->private_dev_attrs) + (unsigned long )count;
  count = count + 1;
  i->private_dev_attrs[count] = dev_attr_dma_mode;
  i->private_dev_attrs[count].attr.mode = 292U;
  i->dev_attrs[count] = (struct device_attribute *)(& i->private_dev_attrs) + (unsigned long )count;
  count = count + 1;
  i->private_dev_attrs[count] = dev_attr_xfer_mode;
  i->private_dev_attrs[count].attr.mode = 292U;
  i->dev_attrs[count] = (struct device_attribute *)(& i->private_dev_attrs) + (unsigned long )count;
  count = count + 1;
  i->private_dev_attrs[count] = dev_attr_spdn_cnt;
  i->private_dev_attrs[count].attr.mode = 292U;
  i->dev_attrs[count] = (struct device_attribute *)(& i->private_dev_attrs) + (unsigned long )count;
  count = count + 1;
  i->private_dev_attrs[count] = dev_attr_ering;
  i->private_dev_attrs[count].attr.mode = 292U;
  i->dev_attrs[count] = (struct device_attribute *)(& i->private_dev_attrs) + (unsigned long )count;
  count = count + 1;
  i->private_dev_attrs[count] = dev_attr_id;
  i->private_dev_attrs[count].attr.mode = 292U;
  i->dev_attrs[count] = (struct device_attribute *)(& i->private_dev_attrs) + (unsigned long )count;
  count = count + 1;
  i->private_dev_attrs[count] = dev_attr_gscr;
  i->private_dev_attrs[count].attr.mode = 292U;
  i->dev_attrs[count] = (struct device_attribute *)(& i->private_dev_attrs) + (unsigned long )count;
  count = count + 1;
  tmp___2 = ldv__builtin_expect(count > 9, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-transport.c.prepared"),
                         "i" (794), "i" (12UL));
    ldv_36901: ;
    goto ldv_36901;
  } else {
  }
  i->dev_attrs[count] = 0;
  return (& i->t);
}
}
void ata_release_transport(struct scsi_transport_template *t )
{
  struct ata_internal *i ;
  struct scsi_transport_template const *__mptr ;
  {
  __mptr = (struct scsi_transport_template const *)t;
  i = (struct ata_internal *)__mptr;
  transport_container_unregister(& i->t.host_attrs);
  transport_container_unregister(& i->link_attr_cont);
  transport_container_unregister(& i->dev_attr_cont);
  kfree((void const *)i);
  return;
}
}
int libata_transport_init(void)
{
  int error ;
  {
  error = transport_class_register(& ata_link_class);
  if (error != 0) {
    goto out_unregister_transport;
  } else {
  }
  error = transport_class_register(& ata_port_class);
  if (error != 0) {
    goto out_unregister_link;
  } else {
  }
  error = transport_class_register(& ata_dev_class);
  if (error != 0) {
    goto out_unregister_port;
  } else {
  }
  return (0);
  out_unregister_port:
  transport_class_unregister(& ata_port_class);
  out_unregister_link:
  transport_class_unregister(& ata_link_class);
  out_unregister_transport: ;
  return (error);
}
}
void libata_transport_exit(void)
{
  {
  transport_class_unregister(& ata_link_class);
  transport_class_unregister(& ata_port_class);
  transport_class_unregister(& ata_dev_class);
  return;
}
}
void ldv_mutex_lock_67(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_68(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_69(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_72(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
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
void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static int constant_test_bit(unsigned int nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr / 64U)) >> ((int )nr & 63)) & 1);
}
}
extern struct pv_irq_ops pv_irq_ops ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
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
__inline static void arch_local_irq_restore(unsigned long f )
{
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
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.restore_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (830), "i" (12UL));
    ldv_4735: ;
    goto ldv_4735;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (46UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.restore_fl.func), [paravirt_clobber] "i" (1),
                       "D" (f): "memory", "cc");
  return;
}
}
__inline static void arch_local_irq_disable(void)
{
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
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.irq_disable.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (835), "i" (12UL));
    ldv_4744: ;
    goto ldv_4744;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (47UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.irq_disable.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  return;
}
}
__inline static unsigned long arch_local_irq_save(void)
{
  unsigned long f ;
  {
  f = arch_local_save_flags();
  arch_local_irq_disable();
  return (f);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern void trace_hardirqs_on(void) ;
extern void trace_hardirqs_off(void) ;
int ldv_mutex_trylock_84(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_82(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_85(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_87(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_81(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_83(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_86(struct mutex *ldv_func_arg1 ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6221;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6221;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6221;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6221;
  default:
  __bad_percpu_size();
  }
  ldv_6221:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work(struct workqueue_struct * , struct work_struct * ) ;
extern unsigned int ioread8(void * ) ;
extern unsigned int ioread16(void * ) ;
extern void iowrite8(u8 , void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void ioread16_rep(void * , void * , unsigned long ) ;
extern void ioread32_rep(void * , void * , unsigned long ) ;
extern void iowrite16_rep(void * , void const * , unsigned long ) ;
extern void iowrite32_rep(void * , void const * , unsigned long ) ;
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
extern int dev_warn(struct device const * , char const * , ...) ;
extern void pcim_pin_device(struct pci_dev * ) ;
__inline static int PageSlab(struct page const *page )
{
  int tmp ;
  {
  tmp = constant_test_bit(7U, (unsigned long const volatile *)(& page->flags));
  return (tmp);
}
}
__inline static int PageHighMem(struct page const *page )
{
  {
  return (0);
}
}
__inline static struct page *sg_page___1(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    ldv_18002: ;
    goto ldv_18002;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    ldv_18003: ;
    goto ldv_18003;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
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
extern void *dmam_alloc_coherent(struct device * , size_t , dma_addr_t * , gfp_t ) ;
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
extern void * const *pcim_iomap_table(struct pci_dev * ) ;
extern int pcim_iomap_regions(struct pci_dev * , int , char const * ) ;
extern void __const_udelay(unsigned long ) ;
__inline static bool ata_ok(u8 status )
{
  {
  return (((int )status & 233) == 64);
}
}
__inline static void ata_qc_set_polling(struct ata_queued_cmd *qc )
{
  {
  qc->tf.ctl = (u8 )((unsigned int )qc->tf.ctl | 2U);
  return;
}
}
__inline static unsigned int ac_err_mask(u8 status )
{
  {
  if (((int )status & 136) != 0) {
    return (2U);
  } else {
  }
  if (((int )status & 33) != 0) {
    return (1U);
  } else {
  }
  return (0U);
}
}
__inline static unsigned int __ac_err_mask(u8 status )
{
  unsigned int mask ;
  unsigned int tmp ;
  {
  tmp = ac_err_mask((int )status);
  mask = tmp;
  if (mask == 0U) {
    return (256U);
  } else {
  }
  return (mask);
}
}
__inline static int ata_check_ready(u8 status )
{
  {
  if ((int )((signed char )status) >= 0) {
    return (1);
  } else {
  }
  if ((unsigned int )status == 255U) {
    return (-19);
  } else {
  }
  return (0);
}
}
struct ata_port_operations const ata_sff_port_ops ;
struct ata_port_operations const ata_bmdma32_port_ops ;
void ata_sff_dev_select(struct ata_port *ap , unsigned int device ) ;
u8 ata_sff_check_status(struct ata_port *ap ) ;
void ata_sff_pause(struct ata_port *ap ) ;
void ata_sff_dma_pause(struct ata_port *ap ) ;
int ata_sff_busy_sleep(struct ata_port *ap , unsigned long tmout_pat , unsigned long tmout ) ;
int ata_sff_wait_ready(struct ata_link *link , unsigned long deadline ) ;
void ata_sff_tf_load(struct ata_port *ap , struct ata_taskfile const *tf ) ;
void ata_sff_tf_read(struct ata_port *ap , struct ata_taskfile *tf ) ;
void ata_sff_exec_command(struct ata_port *ap , struct ata_taskfile const *tf ) ;
unsigned int ata_sff_data_xfer(struct ata_device *dev , unsigned char *buf , unsigned int buflen ,
                               int rw ) ;
unsigned int ata_sff_data_xfer32(struct ata_device *dev , unsigned char *buf , unsigned int buflen ,
                                 int rw ) ;
unsigned int ata_sff_data_xfer_noirq(struct ata_device *dev , unsigned char *buf ,
                                     unsigned int buflen , int rw ) ;
void ata_sff_irq_on(struct ata_port *ap ) ;
int ata_sff_hsm_move(struct ata_port *ap , struct ata_queued_cmd *qc , u8 status ,
                     int in_wq ) ;
void ata_sff_queue_work(struct work_struct *work ) ;
void ata_sff_queue_delayed_work(struct delayed_work *dwork , unsigned long delay ) ;
void ata_sff_queue_pio_task(struct ata_link *link , unsigned long delay ) ;
unsigned int ata_sff_qc_issue(struct ata_queued_cmd *qc ) ;
bool ata_sff_qc_fill_rtf(struct ata_queued_cmd *qc ) ;
unsigned int ata_sff_port_intr(struct ata_port *ap , struct ata_queued_cmd *qc ) ;
irqreturn_t ata_sff_interrupt(int irq , void *dev_instance ) ;
void ata_sff_lost_interrupt(struct ata_port *ap ) ;
void ata_sff_freeze(struct ata_port *ap ) ;
void ata_sff_thaw(struct ata_port *ap ) ;
int ata_sff_prereset(struct ata_link *link , unsigned long deadline ) ;
unsigned int ata_sff_dev_classify(struct ata_device *dev , int present , u8 *r_err ) ;
int ata_sff_wait_after_reset(struct ata_link *link , unsigned int devmask , unsigned long deadline ) ;
int ata_sff_softreset(struct ata_link *link , unsigned int *classes , unsigned long deadline ) ;
int sata_sff_hardreset(struct ata_link *link , unsigned int *class , unsigned long deadline ) ;
void ata_sff_postreset(struct ata_link *link , unsigned int *classes ) ;
void ata_sff_drain_fifo(struct ata_queued_cmd *qc ) ;
void ata_sff_error_handler(struct ata_port *ap ) ;
void ata_sff_std_ports(struct ata_ioports *ioaddr ) ;
int ata_pci_sff_init_host(struct ata_host *host ) ;
int ata_pci_sff_prepare_host(struct pci_dev *pdev , struct ata_port_info const * const *ppi ,
                             struct ata_host **r_host ) ;
int ata_pci_sff_activate_host(struct ata_host *host , irqreturn_t (*irq_handler)(int ,
                                                                                 void * ) ,
                              struct scsi_host_template *sht ) ;
int ata_pci_sff_init_one(struct pci_dev *pdev , struct ata_port_info const * const *ppi ,
                         struct scsi_host_template *sht , void *host_priv , int hflag ) ;
struct ata_port_operations const ata_bmdma_port_ops ;
void ata_bmdma_qc_prep(struct ata_queued_cmd *qc ) ;
unsigned int ata_bmdma_qc_issue(struct ata_queued_cmd *qc ) ;
void ata_bmdma_dumb_qc_prep(struct ata_queued_cmd *qc ) ;
unsigned int ata_bmdma_port_intr(struct ata_port *ap , struct ata_queued_cmd *qc ) ;
irqreturn_t ata_bmdma_interrupt(int irq , void *dev_instance ) ;
void ata_bmdma_error_handler(struct ata_port *ap ) ;
void ata_bmdma_post_internal_cmd(struct ata_queued_cmd *qc ) ;
void ata_bmdma_irq_clear(struct ata_port *ap ) ;
void ata_bmdma_setup(struct ata_queued_cmd *qc ) ;
void ata_bmdma_start(struct ata_queued_cmd *qc ) ;
void ata_bmdma_stop(struct ata_queued_cmd *qc ) ;
u8 ata_bmdma_status(struct ata_port *ap ) ;
int ata_bmdma_port_start(struct ata_port *ap ) ;
int ata_bmdma_port_start32(struct ata_port *ap ) ;
int ata_pci_bmdma_clear_simplex(struct pci_dev *pdev ) ;
void ata_pci_bmdma_init(struct ata_host *host ) ;
int ata_pci_bmdma_prepare_host(struct pci_dev *pdev , struct ata_port_info const * const *ppi ,
                               struct ata_host **r_host ) ;
int ata_pci_bmdma_init_one(struct pci_dev *pdev , struct ata_port_info const * const *ppi ,
                           struct scsi_host_template *sht , void *host_priv , int hflags ) ;
__inline static u8 ata_sff_busy_wait(struct ata_port *ap , unsigned int bits , unsigned int max )
{
  u8 status ;
  {
  ldv_34707:
  __const_udelay(42950UL);
  status = (*((ap->ops)->sff_check_status))(ap);
  max = max - 1U;
  if (((unsigned int )status != 255U && ((unsigned int )status & bits) != 0U) && max != 0U) {
    goto ldv_34707;
  } else {
  }
  return (status);
}
}
__inline static u8 ata_wait_idle(struct ata_port *ap )
{
  u8 status ;
  u8 tmp ;
  {
  tmp = ata_sff_busy_wait(ap, 136U, 1000U);
  status = tmp;
  return (status);
}
}
__inline static void pagefault_disable(void)
{
  struct thread_info *tmp ;
  {
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + 1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void pagefault_enable(void)
{
  struct thread_info *tmp ;
  {
  __asm__ volatile ("": : : "memory");
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + -1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void *kmap_atomic(struct page *page )
{
  void *tmp ;
  {
  pagefault_disable();
  tmp = lowmem_page_address((struct page const *)page);
  return (tmp);
}
}
__inline static void __kunmap_atomic(void *addr )
{
  {
  pagefault_enable();
  return;
}
}
static struct workqueue_struct *ata_sff_wq ;
struct ata_port_operations const ata_sff_port_ops =
     {0, 0, & ata_noop_qc_prep, & ata_sff_qc_issue, & ata_sff_qc_fill_rtf, 0, 0, 0,
    0, 0, 0, 0, & ata_sff_freeze, & ata_sff_thaw, & ata_sff_prereset, & ata_sff_softreset,
    & sata_sff_hardreset, & ata_sff_postreset, 0, 0, 0, 0, & ata_sff_error_handler,
    & ata_sff_lost_interrupt, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ata_sff_dev_select,
    0, & ata_sff_check_status, 0, & ata_sff_tf_load, & ata_sff_tf_read, & ata_sff_exec_command,
    & ata_sff_data_xfer, 0, 0, 0, & ata_sff_drain_fifo, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, & ata_base_port_ops};
u8 ata_sff_check_status(struct ata_port *ap )
{
  unsigned int tmp ;
  {
  tmp = ioread8(ap->ioaddr.status_addr);
  return ((u8 )tmp);
}
}
static u8 ata_sff_altstatus(struct ata_port *ap )
{
  u8 tmp ;
  unsigned int tmp___0 ;
  {
  if ((unsigned long )(ap->ops)->sff_check_altstatus != (unsigned long )((u8 (*)(struct ata_port * ))0)) {
    tmp = (*((ap->ops)->sff_check_altstatus))(ap);
    return (tmp);
  } else {
  }
  tmp___0 = ioread8(ap->ioaddr.altstatus_addr);
  return ((u8 )tmp___0);
}
}
static u8 ata_sff_irq_status(struct ata_port *ap )
{
  u8 status ;
  {
  if ((unsigned long )(ap->ops)->sff_check_altstatus != (unsigned long )((u8 (*)(struct ata_port * ))0) || (unsigned long )ap->ioaddr.altstatus_addr != (unsigned long )((void *)0)) {
    status = ata_sff_altstatus(ap);
    if ((int )((signed char )status) < 0) {
      return (status);
    } else {
    }
  } else {
  }
  status = (*((ap->ops)->sff_check_status))(ap);
  return (status);
}
}
static void ata_sff_sync(struct ata_port *ap )
{
  {
  if ((unsigned long )(ap->ops)->sff_check_altstatus != (unsigned long )((u8 (*)(struct ata_port * ))0)) {
    (*((ap->ops)->sff_check_altstatus))(ap);
  } else
  if ((unsigned long )ap->ioaddr.altstatus_addr != (unsigned long )((void *)0)) {
    ioread8(ap->ioaddr.altstatus_addr);
  } else {
  }
  return;
}
}
void ata_sff_pause(struct ata_port *ap )
{
  {
  ata_sff_sync(ap);
  __const_udelay(2000UL);
  return;
}
}
void ata_sff_dma_pause(struct ata_port *ap )
{
  {
  if ((unsigned long )(ap->ops)->sff_check_altstatus != (unsigned long )((u8 (*)(struct ata_port * ))0) || (unsigned long )ap->ioaddr.altstatus_addr != (unsigned long )((void *)0)) {
    ata_sff_altstatus(ap);
    return;
  } else {
  }
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared"),
                       "i" (260), "i" (12UL));
  ldv_35235: ;
  goto ldv_35235;
}
}
int ata_sff_busy_sleep(struct ata_port *ap , unsigned long tmout_pat , unsigned long tmout )
{
  unsigned long timer_start ;
  unsigned long timeout ;
  u8 status ;
  {
  status = ata_sff_busy_wait(ap, 128U, 300U);
  timer_start = jiffies;
  timeout = ata_deadline(timer_start, tmout_pat);
  goto ldv_35257;
  ldv_35256:
  ata_msleep(ap, 50U);
  status = ata_sff_busy_wait(ap, 128U, 3U);
  ldv_35257: ;
  if (((unsigned int )status != 255U && (int )((signed char )status) < 0) && (long )jiffies - (long )timeout < 0L) {
    goto ldv_35256;
  } else {
  }
  if ((unsigned int )status != 255U && (int )((signed char )status) < 0) {
    ata_port_printk((struct ata_port const *)ap, "\f", "port is slow to respond, please be patient (Status 0x%x)\n",
                    (int )status);
  } else {
  }
  timeout = ata_deadline(timer_start, tmout);
  goto ldv_35266;
  ldv_35265:
  ata_msleep(ap, 50U);
  status = (*((ap->ops)->sff_check_status))(ap);
  ldv_35266: ;
  if (((unsigned int )status != 255U && (int )((signed char )status) < 0) && (long )jiffies - (long )timeout < 0L) {
    goto ldv_35265;
  } else {
  }
  if ((unsigned int )status == 255U) {
    return (-19);
  } else {
  }
  if ((int )((signed char )status) < 0) {
    ata_port_printk((struct ata_port const *)ap, "\v", "port failed to respond (%lu secs, Status 0x%x)\n",
                    (tmout + 999UL) / 1000UL, (int )status);
    return (-16);
  } else {
  }
  return (0);
}
}
static int ata_sff_check_ready(struct ata_link *link )
{
  u8 status ;
  u8 tmp ;
  int tmp___0 ;
  {
  tmp = (*(((link->ap)->ops)->sff_check_status))(link->ap);
  status = tmp;
  tmp___0 = ata_check_ready((int )status);
  return (tmp___0);
}
}
int ata_sff_wait_ready(struct ata_link *link , unsigned long deadline )
{
  int tmp ;
  {
  tmp = ata_wait_ready(link, deadline, & ata_sff_check_ready);
  return (tmp);
}
}
static void ata_sff_set_devctl(struct ata_port *ap , u8 ctl )
{
  {
  if ((unsigned long )(ap->ops)->sff_set_devctl != (unsigned long )((void (*)(struct ata_port * ,
                                                                              u8 ))0)) {
    (*((ap->ops)->sff_set_devctl))(ap, (int )ctl);
  } else {
    iowrite8((int )ctl, ap->ioaddr.ctl_addr);
  }
  return;
}
}
void ata_sff_dev_select(struct ata_port *ap , unsigned int device )
{
  u8 tmp ;
  {
  if (device == 0U) {
    tmp = 160U;
  } else {
    tmp = 176U;
  }
  iowrite8((int )tmp, ap->ioaddr.device_addr);
  ata_sff_pause(ap);
  return;
}
}
static void ata_dev_select(struct ata_port *ap , unsigned int device , unsigned int wait ,
                           unsigned int can_sleep )
{
  {
  if ((ap->msg_enable & 4U) != 0U) {
    ata_port_printk((struct ata_port const *)ap, "\016", "ata_dev_select: ENTER, device %u, wait %u\n",
                    device, wait);
  } else {
  }
  if (wait != 0U) {
    ata_wait_idle(ap);
  } else {
  }
  (*((ap->ops)->sff_dev_select))(ap, device);
  if (wait != 0U) {
    if (can_sleep != 0U && ap->link.device[device].class == 3U) {
      ata_msleep(ap, 150U);
    } else {
    }
    ata_wait_idle(ap);
  } else {
  }
  return;
}
}
void ata_sff_irq_on(struct ata_port *ap )
{
  struct ata_ioports *ioaddr ;
  {
  ioaddr = & ap->ioaddr;
  if ((unsigned long )(ap->ops)->sff_irq_on != (unsigned long )((void (*)(struct ata_port * ))0)) {
    (*((ap->ops)->sff_irq_on))(ap);
    return;
  } else {
  }
  ap->ctl = (unsigned int )ap->ctl & 253U;
  ap->last_ctl = ap->ctl;
  if ((unsigned long )(ap->ops)->sff_set_devctl != (unsigned long )((void (*)(struct ata_port * ,
                                                                              u8 ))0) || (unsigned long )ioaddr->ctl_addr != (unsigned long )((void *)0)) {
    ata_sff_set_devctl(ap, (int )ap->ctl);
  } else {
  }
  ata_wait_idle(ap);
  if ((unsigned long )(ap->ops)->sff_irq_clear != (unsigned long )((void (*)(struct ata_port * ))0)) {
    (*((ap->ops)->sff_irq_clear))(ap);
  } else {
  }
  return;
}
}
void ata_sff_tf_load(struct ata_port *ap , struct ata_taskfile const *tf )
{
  struct ata_ioports *ioaddr ;
  unsigned int is_addr ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  ioaddr = & ap->ioaddr;
  is_addr = (unsigned int )tf->flags & 2U;
  if ((int )((unsigned char )tf->ctl) != (int )ap->last_ctl) {
    if ((unsigned long )ioaddr->ctl_addr != (unsigned long )((void *)0)) {
      iowrite8((int )tf->ctl, ioaddr->ctl_addr);
    } else {
    }
    ap->last_ctl = tf->ctl;
    ata_wait_idle(ap);
  } else {
  }
  if (is_addr != 0U && (int )tf->flags & 1) {
    __ret_warn_once = (unsigned long )ioaddr->ctl_addr == (unsigned long )((void *)0);
    tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
    if (tmp___1 != 0L) {
      __ret_warn_on = ! __warned;
      tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp != 0L) {
        warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                           490);
      } else {
      }
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        __warned = 1;
      } else {
      }
    } else {
    }
    ldv__builtin_expect(__ret_warn_once != 0, 0L);
    iowrite8((int )tf->hob_feature, ioaddr->feature_addr);
    iowrite8((int )tf->hob_nsect, ioaddr->nsect_addr);
    iowrite8((int )tf->hob_lbal, ioaddr->lbal_addr);
    iowrite8((int )tf->hob_lbam, ioaddr->lbam_addr);
    iowrite8((int )tf->hob_lbah, ioaddr->lbah_addr);
  } else {
  }
  if (is_addr != 0U) {
    iowrite8((int )tf->feature, ioaddr->feature_addr);
    iowrite8((int )tf->nsect, ioaddr->nsect_addr);
    iowrite8((int )tf->lbal, ioaddr->lbal_addr);
    iowrite8((int )tf->lbam, ioaddr->lbam_addr);
    iowrite8((int )tf->lbah, ioaddr->lbah_addr);
  } else {
  }
  if (((unsigned long )tf->flags & 4UL) != 0UL) {
    iowrite8((int )tf->device, ioaddr->device_addr);
  } else {
  }
  ata_wait_idle(ap);
  return;
}
}
void ata_sff_tf_read(struct ata_port *ap , struct ata_taskfile *tf )
{
  struct ata_ioports *ioaddr ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  {
  ioaddr = & ap->ioaddr;
  tf->command = ata_sff_check_status(ap);
  tmp = ioread8(ioaddr->error_addr);
  tf->feature = (u8 )tmp;
  tmp___0 = ioread8(ioaddr->nsect_addr);
  tf->nsect = (u8 )tmp___0;
  tmp___1 = ioread8(ioaddr->lbal_addr);
  tf->lbal = (u8 )tmp___1;
  tmp___2 = ioread8(ioaddr->lbam_addr);
  tf->lbam = (u8 )tmp___2;
  tmp___3 = ioread8(ioaddr->lbah_addr);
  tf->lbah = (u8 )tmp___3;
  tmp___4 = ioread8(ioaddr->device_addr);
  tf->device = (u8 )tmp___4;
  if ((int )tf->flags & 1) {
    tmp___13 = ldv__builtin_expect((unsigned long )ioaddr->ctl_addr != (unsigned long )((void *)0),
                                1L);
    if (tmp___13 != 0L) {
      iowrite8((int )((unsigned int )tf->ctl | 128U), ioaddr->ctl_addr);
      tmp___5 = ioread8(ioaddr->error_addr);
      tf->hob_feature = (u8 )tmp___5;
      tmp___6 = ioread8(ioaddr->nsect_addr);
      tf->hob_nsect = (u8 )tmp___6;
      tmp___7 = ioread8(ioaddr->lbal_addr);
      tf->hob_lbal = (u8 )tmp___7;
      tmp___8 = ioread8(ioaddr->lbam_addr);
      tf->hob_lbam = (u8 )tmp___8;
      tmp___9 = ioread8(ioaddr->lbah_addr);
      tf->hob_lbah = (u8 )tmp___9;
      iowrite8((int )tf->ctl, ioaddr->ctl_addr);
      ap->last_ctl = tf->ctl;
    } else {
      __ret_warn_once = 1;
      tmp___12 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
      if (tmp___12 != 0L) {
        __ret_warn_on = ! __warned;
        tmp___10 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
        if (tmp___10 != 0L) {
          warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                             563);
        } else {
        }
        tmp___11 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
        if (tmp___11 != 0L) {
          __warned = 1;
        } else {
        }
      } else {
      }
      ldv__builtin_expect(__ret_warn_once != 0, 0L);
    }
  } else {
  }
  return;
}
}
void ata_sff_exec_command(struct ata_port *ap , struct ata_taskfile const *tf )
{
  {
  iowrite8((int )tf->command, ap->ioaddr.command_addr);
  ata_sff_pause(ap);
  return;
}
}
__inline static void ata_tf_to_host(struct ata_port *ap , struct ata_taskfile const *tf )
{
  {
  (*((ap->ops)->sff_tf_load))(ap, tf);
  (*((ap->ops)->sff_exec_command))(ap, tf);
  return;
}
}
unsigned int ata_sff_data_xfer(struct ata_device *dev , unsigned char *buf , unsigned int buflen ,
                               int rw )
{
  struct ata_port *ap ;
  void *data_addr ;
  unsigned int words ;
  unsigned char pad[2U] ;
  long tmp ;
  {
  ap = (dev->link)->ap;
  data_addr = ap->ioaddr.data_addr;
  words = buflen >> 1;
  if (rw == 0) {
    ioread16_rep(data_addr, (void *)buf, (unsigned long )words);
  } else {
    iowrite16_rep(data_addr, (void const *)buf, (unsigned long )words);
  }
  tmp = ldv__builtin_expect((long )((int )buflen) & 1L, 0L);
  if (tmp != 0L) {
    pad[0] = (unsigned char)0;
    pad[1] = (unsigned char)0;
    buf = buf + (unsigned long )(buflen - 1U);
    if (rw == 0) {
      ioread16_rep(data_addr, (void *)(& pad), 1UL);
      *buf = pad[0];
    } else {
      pad[0] = *buf;
      iowrite16_rep(data_addr, (void const *)(& pad), 1UL);
    }
    words = words + 1U;
  } else {
  }
  return (words << 1);
}
}
unsigned int ata_sff_data_xfer32(struct ata_device *dev , unsigned char *buf , unsigned int buflen ,
                                 int rw )
{
  struct ata_port *ap ;
  void *data_addr ;
  unsigned int words ;
  int slop ;
  unsigned int tmp ;
  unsigned char pad[4U] ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  long tmp___0 ;
  {
  ap = (dev->link)->ap;
  data_addr = ap->ioaddr.data_addr;
  words = buflen >> 2;
  slop = (int )buflen & 3;
  if ((ap->pflags & 1048576U) == 0U) {
    tmp = ata_sff_data_xfer(dev, buf, buflen, rw);
    return (tmp);
  } else {
  }
  if (rw == 0) {
    ioread32_rep(data_addr, (void *)buf, (unsigned long )words);
  } else {
    iowrite32_rep(data_addr, (void const *)buf, (unsigned long )words);
  }
  tmp___0 = ldv__builtin_expect(slop != 0, 0L);
  if (tmp___0 != 0L) {
    pad[0] = (unsigned char)0;
    pad[1] = (unsigned char)0;
    pad[2] = (unsigned char)0;
    pad[3] = (unsigned char)0;
    buf = buf + (unsigned long )(buflen - (unsigned int )slop);
    if (rw == 0) {
      if (slop <= 2) {
        ioread16_rep(data_addr, (void *)(& pad), 1UL);
      } else {
        ioread32_rep(data_addr, (void *)(& pad), 1UL);
      }
      __len = (size_t )slop;
      __ret = memcpy((void *)buf, (void const *)(& pad), __len);
    } else {
      __len___0 = (size_t )slop;
      __ret___0 = memcpy((void *)(& pad), (void const *)buf, __len___0);
      if (slop <= 2) {
        iowrite16_rep(data_addr, (void const *)(& pad), 1UL);
      } else {
        iowrite32_rep(data_addr, (void const *)(& pad), 1UL);
      }
    }
  } else {
  }
  return ((buflen + 1U) & 4294967294U);
}
}
unsigned int ata_sff_data_xfer_noirq(struct ata_device *dev , unsigned char *buf ,
                                     unsigned int buflen , int rw )
{
  unsigned long flags ;
  unsigned int consumed ;
  int tmp ;
  {
  flags = arch_local_irq_save();
  trace_hardirqs_off();
  consumed = ata_sff_data_xfer32(dev, buf, buflen, rw);
  tmp = arch_irqs_disabled_flags(flags);
  if (tmp != 0) {
    arch_local_irq_restore(flags);
    trace_hardirqs_off();
  } else {
    trace_hardirqs_on();
    arch_local_irq_restore(flags);
  }
  return (consumed);
}
}
static void ata_pio_sector(struct ata_queued_cmd *qc )
{
  int do_write ;
  struct ata_port *ap ;
  struct page *page ;
  unsigned int offset ;
  unsigned char *buf ;
  unsigned long flags ;
  void *tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  do_write = (int )qc->tf.flags & 8;
  ap = qc->ap;
  if (qc->curbytes == qc->nbytes - qc->sect_size) {
    ap->hsm_task_state = 3U;
  } else {
  }
  page = sg_page___1(qc->cursg);
  offset = (qc->cursg)->offset + qc->cursg_ofs;
  page = 0xffffea0000000000UL + ((unsigned long )(((long )page + 24189255811072L) / 80L) + (unsigned long )(offset >> 12));
  offset = offset & 4095U;
  tmp___2 = PageHighMem((struct page const *)page);
  if (tmp___2 != 0) {
    flags = arch_local_irq_save();
    trace_hardirqs_off();
    tmp = kmap_atomic(page);
    buf = (unsigned char *)tmp;
    (*((ap->ops)->sff_data_xfer))(qc->dev, buf + (unsigned long )offset, qc->sect_size,
                                  do_write);
    __kunmap_atomic((void *)buf);
    tmp___0 = arch_irqs_disabled_flags(flags);
    if (tmp___0 != 0) {
      arch_local_irq_restore(flags);
      trace_hardirqs_off();
    } else {
      trace_hardirqs_on();
      arch_local_irq_restore(flags);
    }
  } else {
    tmp___1 = lowmem_page_address((struct page const *)page);
    buf = (unsigned char *)tmp___1;
    (*((ap->ops)->sff_data_xfer))(qc->dev, buf + (unsigned long )offset, qc->sect_size,
                                  do_write);
  }
  if (do_write == 0) {
    tmp___3 = PageSlab((struct page const *)page);
    if (tmp___3 == 0) {
      tmp___4 = 1;
    } else {
      tmp___4 = 0;
    }
  } else {
    tmp___4 = 0;
  }
  qc->curbytes = qc->curbytes + qc->sect_size;
  qc->cursg_ofs = qc->cursg_ofs + qc->sect_size;
  if (qc->cursg_ofs == (qc->cursg)->length) {
    qc->cursg = sg_next(qc->cursg);
    qc->cursg_ofs = 0U;
  } else {
  }
  return;
}
}
static void ata_pio_sectors(struct ata_queued_cmd *qc )
{
  unsigned int nsect ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  {
  tmp___3 = is_multi_taskfile(& qc->tf);
  if (tmp___3 != 0) {
    __ret_warn_once = (qc->dev)->multi_count == 0U;
    tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
    if (tmp___1 != 0L) {
      __ret_warn_on = ! __warned;
      tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp != 0L) {
        warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                           829);
      } else {
      }
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        __warned = 1;
      } else {
      }
    } else {
    }
    ldv__builtin_expect(__ret_warn_once != 0, 0L);
    _min1 = (qc->nbytes - qc->curbytes) / qc->sect_size;
    _min2 = (qc->dev)->multi_count;
    nsect = _min1 < _min2 ? _min1 : _min2;
    goto ldv_35483;
    ldv_35482:
    ata_pio_sector(qc);
    ldv_35483:
    tmp___2 = nsect;
    nsect = nsect - 1U;
    if (tmp___2 != 0U) {
      goto ldv_35482;
    } else {
    }
  } else {
    ata_pio_sector(qc);
  }
  ata_sff_sync(qc->ap);
  return;
}
}
static void atapi_send_cdb(struct ata_port *ap , struct ata_queued_cmd *qc )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = (qc->dev)->cdb_len <= 11U;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                         856);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  (*((ap->ops)->sff_data_xfer))(qc->dev, (unsigned char *)(& qc->cdb), (qc->dev)->cdb_len,
                                1);
  ata_sff_sync(ap);
  switch ((int )qc->tf.protocol) {
  case 6:
  ap->hsm_task_state = 2U;
  goto ldv_35495;
  case 5:
  ap->hsm_task_state = 3U;
  goto ldv_35495;
  case 7:
  ap->hsm_task_state = 3U;
  (*((ap->ops)->bmdma_start))(qc);
  goto ldv_35495;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared"),
                       "i" (877), "i" (12UL));
  ldv_35499: ;
  goto ldv_35499;
  }
  ldv_35495: ;
  return;
}
}
static int __atapi_pio_bytes(struct ata_queued_cmd *qc , unsigned int bytes )
{
  int rw ;
  struct ata_port *ap ;
  struct ata_device *dev ;
  struct ata_eh_info *ehi ;
  struct scatterlist *sg ;
  struct page *page ;
  unsigned char *buf ;
  unsigned int offset ;
  unsigned int count ;
  unsigned int consumed ;
  long tmp ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  unsigned long flags ;
  void *tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  unsigned int _min1___1 ;
  unsigned int _min2___1 ;
  {
  rw = (qc->tf.flags & 8UL) != 0UL;
  ap = qc->ap;
  dev = qc->dev;
  ehi = & (dev->link)->eh_info;
  next_sg:
  sg = qc->cursg;
  tmp = ldv__builtin_expect((unsigned long )sg == (unsigned long )((struct scatterlist *)0),
                         0L);
  if (tmp != 0L) {
    ata_ehi_push_desc(ehi, "unexpected or too much trailing data buf=%u cur=%u bytes=%u",
                      qc->nbytes, qc->curbytes, bytes);
    return (-1);
  } else {
  }
  page = sg_page___1(sg);
  offset = sg->offset + qc->cursg_ofs;
  page = 0xffffea0000000000UL + ((unsigned long )(((long )page + 24189255811072L) / 80L) + (unsigned long )(offset >> 12));
  offset = offset & 4095U;
  _min1 = sg->length - qc->cursg_ofs;
  _min2 = bytes;
  count = _min1 < _min2 ? _min1 : _min2;
  _min1___0 = count;
  _min2___0 = 4096U - offset;
  count = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  tmp___3 = PageHighMem((struct page const *)page);
  if (tmp___3 != 0) {
    flags = arch_local_irq_save();
    trace_hardirqs_off();
    tmp___0 = kmap_atomic(page);
    buf = (unsigned char *)tmp___0;
    consumed = (*((ap->ops)->sff_data_xfer))(dev, buf + (unsigned long )offset, count,
                                             rw);
    __kunmap_atomic((void *)buf);
    tmp___1 = arch_irqs_disabled_flags(flags);
    if (tmp___1 != 0) {
      arch_local_irq_restore(flags);
      trace_hardirqs_off();
    } else {
      trace_hardirqs_on();
      arch_local_irq_restore(flags);
    }
  } else {
    tmp___2 = lowmem_page_address((struct page const *)page);
    buf = (unsigned char *)tmp___2;
    consumed = (*((ap->ops)->sff_data_xfer))(dev, buf + (unsigned long )offset, count,
                                             rw);
  }
  _min1___1 = bytes;
  _min2___1 = consumed;
  bytes = bytes - (_min1___1 < _min2___1 ? _min1___1 : _min2___1);
  qc->curbytes = qc->curbytes + count;
  qc->cursg_ofs = qc->cursg_ofs + count;
  if (qc->cursg_ofs == sg->length) {
    qc->cursg = sg_next(qc->cursg);
    qc->cursg_ofs = 0U;
  } else {
  }
  if (bytes != 0U) {
    goto next_sg;
  } else {
  }
  return (0);
}
}
static void atapi_pio_bytes(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct ata_device *dev ;
  struct ata_eh_info *ehi ;
  unsigned int ireason ;
  unsigned int bc_lo ;
  unsigned int bc_hi ;
  unsigned int bytes ;
  int i_write ;
  int do_write ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  {
  ap = qc->ap;
  dev = qc->dev;
  ehi = & (dev->link)->eh_info;
  do_write = (qc->tf.flags & 8UL) != 0UL;
  (*((ap->ops)->sff_tf_read))(ap, & qc->result_tf);
  ireason = (unsigned int )qc->result_tf.nsect;
  bc_lo = (unsigned int )qc->result_tf.lbam;
  bc_hi = (unsigned int )qc->result_tf.lbah;
  bytes = (bc_hi << 8) | bc_lo;
  tmp = ldv__builtin_expect((long )((int )ireason) & 1L, 0L);
  if (tmp != 0L) {
    goto atapi_check;
  } else {
  }
  i_write = (ireason & 2U) == 0U;
  tmp___0 = ldv__builtin_expect(do_write != i_write, 0L);
  if (tmp___0 != 0L) {
    goto atapi_check;
  } else {
  }
  tmp___1 = ldv__builtin_expect(bytes == 0U, 0L);
  if (tmp___1 != 0L) {
    goto atapi_check;
  } else {
  }
  tmp___2 = __atapi_pio_bytes(qc, bytes);
  tmp___3 = ldv__builtin_expect(tmp___2 != 0, 0L);
  if (tmp___3 != 0L) {
    goto err_out;
  } else {
  }
  ata_sff_sync(ap);
  return;
  atapi_check:
  ata_ehi_push_desc(ehi, "ATAPI check failed (ireason=0x%x bytes=%u)", ireason, bytes);
  err_out:
  qc->err_mask = qc->err_mask | 2U;
  ap->hsm_task_state = 4U;
  return;
}
}
__inline static int ata_hsm_ok_in_wq(struct ata_port *ap , struct ata_queued_cmd *qc )
{
  int tmp ;
  {
  if ((qc->tf.flags & 64UL) != 0UL) {
    return (1);
  } else {
  }
  if (ap->hsm_task_state == 1U) {
    if ((unsigned int )qc->tf.protocol == 2U && (qc->tf.flags & 8UL) != 0UL) {
      return (1);
    } else {
    }
    tmp = ata_is_atapi((int )qc->tf.protocol);
    if (tmp != 0 && ((qc->dev)->flags & 4UL) == 0UL) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
static void ata_hsm_qc_complete(struct ata_queued_cmd *qc , int in_wq )
{
  struct ata_port *ap ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  raw_spinlock_t *tmp___2 ;
  {
  ap = qc->ap;
  if ((unsigned long )(ap->ops)->error_handler != (unsigned long )((void (*)(struct ata_port * ))0)) {
    if (in_wq != 0) {
      tmp = spinlock_check(ap->lock);
      flags = _raw_spin_lock_irqsave(tmp);
      qc = ata_qc_from_tag(ap, qc->tag);
      if ((unsigned long )qc != (unsigned long )((struct ata_queued_cmd *)0)) {
        tmp___0 = ldv__builtin_expect((qc->err_mask & 2U) == 0U, 1L);
        if (tmp___0 != 0L) {
          ata_sff_irq_on(ap);
          ata_qc_complete(qc);
        } else {
          ata_port_freeze(ap);
        }
      } else {
      }
      spin_unlock_irqrestore(ap->lock, flags);
    } else {
      tmp___1 = ldv__builtin_expect((qc->err_mask & 2U) == 0U, 1L);
      if (tmp___1 != 0L) {
        ata_qc_complete(qc);
      } else {
        ata_port_freeze(ap);
      }
    }
  } else
  if (in_wq != 0) {
    tmp___2 = spinlock_check(ap->lock);
    flags = _raw_spin_lock_irqsave(tmp___2);
    ata_sff_irq_on(ap);
    ata_qc_complete(qc);
    spin_unlock_irqrestore(ap->lock, flags);
  } else {
    ata_qc_complete(qc);
  }
  return;
}
}
int ata_sff_hsm_move(struct ata_port *ap , struct ata_queued_cmd *qc , u8 status ,
                     int in_wq )
{
  struct ata_link *link ;
  struct ata_eh_info *ehi ;
  unsigned long flags ;
  int poll_next ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  bool __warned___0 ;
  int __ret_warn_once___0 ;
  int tmp___2 ;
  int __ret_warn_on___0 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  raw_spinlock_t *tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  unsigned int tmp___15 ;
  bool tmp___16 ;
  int tmp___17 ;
  long tmp___18 ;
  bool __warned___1 ;
  int __ret_warn_once___1 ;
  int __ret_warn_on___1 ;
  long tmp___19 ;
  long tmp___20 ;
  long tmp___21 ;
  {
  link = (qc->dev)->link;
  ehi = & link->eh_info;
  flags = 0UL;
  __ret_warn_once = (qc->flags & 1UL) == 0UL;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                         1118);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  tmp___2 = ata_hsm_ok_in_wq(ap, qc);
  __ret_warn_once___0 = tmp___2 != in_wq;
  tmp___5 = ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
  if (tmp___5 != 0L) {
    __ret_warn_on___0 = ! __warned___0;
    tmp___3 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___3 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                         1124);
    } else {
    }
    tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___4 != 0L) {
      __warned___0 = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
  fsm_start: ;
  switch (ap->hsm_task_state) {
  case 1U:
  poll_next = (int )qc->tf.flags & 64;
  tmp___7 = ldv__builtin_expect(((int )status & 8) == 0, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = ldv__builtin_expect(((int )status & 33) != 0, 1L);
    if (tmp___6 != 0L) {
      qc->err_mask = qc->err_mask | 1U;
    } else {
      ata_ehi_push_desc(ehi, "ST_FIRST: !(DRQ|ERR|DF)");
      qc->err_mask = qc->err_mask | 2U;
    }
    ap->hsm_task_state = 4U;
    goto fsm_start;
  } else {
  }
  tmp___8 = ldv__builtin_expect(((int )status & 33) != 0, 0L);
  if (tmp___8 != 0L) {
    if (((qc->dev)->horkage & 512U) == 0U) {
      ata_ehi_push_desc(ehi, "ST_FIRST: DRQ=1 with device error, dev_stat 0x%X", (int )status);
      qc->err_mask = qc->err_mask | 2U;
      ap->hsm_task_state = 4U;
      goto fsm_start;
    } else {
    }
  } else {
  }
  if (in_wq != 0) {
    tmp___9 = spinlock_check(ap->lock);
    flags = _raw_spin_lock_irqsave(tmp___9);
  } else {
  }
  if ((unsigned int )qc->tf.protocol == 2U) {
    ap->hsm_task_state = 2U;
    ata_pio_sectors(qc);
  } else {
    atapi_send_cdb(ap, qc);
  }
  if (in_wq != 0) {
    spin_unlock_irqrestore(ap->lock, flags);
  } else {
  }
  goto ldv_35593;
  case 2U: ;
  if ((unsigned int )qc->tf.protocol == 6U) {
    if (((int )status & 8) == 0) {
      ap->hsm_task_state = 3U;
      goto fsm_start;
    } else {
    }
    tmp___10 = ldv__builtin_expect(((int )status & 33) != 0, 0L);
    if (tmp___10 != 0L) {
      ata_ehi_push_desc(ehi, "ST-ATAPI: DRQ=1 with device error, dev_stat 0x%X", (int )status);
      qc->err_mask = qc->err_mask | 2U;
      ap->hsm_task_state = 4U;
      goto fsm_start;
    } else {
    }
    atapi_pio_bytes(qc);
    tmp___11 = ldv__builtin_expect(ap->hsm_task_state == 4U, 0L);
    if (tmp___11 != 0L) {
      goto fsm_start;
    } else {
    }
  } else {
    tmp___13 = ldv__builtin_expect(((int )status & 8) == 0, 0L);
    if (tmp___13 != 0L) {
      tmp___12 = ldv__builtin_expect(((int )status & 33) != 0, 1L);
      if (tmp___12 != 0L) {
        qc->err_mask = qc->err_mask | 1U;
        if ((int )(qc->dev)->horkage & 1) {
          qc->err_mask = qc->err_mask | 512U;
        } else {
        }
      } else {
        ata_ehi_push_desc(ehi, "ST-ATA: DRQ=0 without device error, dev_stat 0x%X",
                          (int )status);
        qc->err_mask = qc->err_mask | 514U;
      }
      ap->hsm_task_state = 4U;
      goto fsm_start;
    } else {
    }
    tmp___14 = ldv__builtin_expect(((int )status & 33) != 0, 0L);
    if (tmp___14 != 0L) {
      qc->err_mask = qc->err_mask | 1U;
      if ((qc->tf.flags & 8UL) == 0UL) {
        ata_pio_sectors(qc);
        status = ata_wait_idle(ap);
      } else {
      }
      if (((int )status & 136) != 0) {
        ata_ehi_push_desc(ehi, "ST-ATA: BUSY|DRQ persists on ERR|DF, dev_stat 0x%X",
                          (int )status);
        qc->err_mask = qc->err_mask | 2U;
      } else {
      }
      if ((unsigned int )status == 127U) {
        qc->err_mask = qc->err_mask | 512U;
      } else {
      }
      ap->hsm_task_state = 4U;
      goto fsm_start;
    } else {
    }
    ata_pio_sectors(qc);
    if (ap->hsm_task_state == 3U && (qc->tf.flags & 8UL) == 0UL) {
      status = ata_wait_idle(ap);
      goto fsm_start;
    } else {
    }
  }
  poll_next = 1;
  goto ldv_35593;
  case 3U:
  tmp___16 = ata_ok((int )status);
  if (tmp___16) {
    tmp___17 = 0;
  } else {
    tmp___17 = 1;
  }
  tmp___18 = ldv__builtin_expect((long )tmp___17, 0L);
  if (tmp___18 != 0L) {
    tmp___15 = __ac_err_mask((int )status);
    qc->err_mask = qc->err_mask | tmp___15;
    ap->hsm_task_state = 4U;
    goto fsm_start;
  } else {
  }
  __ret_warn_once___1 = (qc->err_mask & 3U) != 0U;
  tmp___21 = ldv__builtin_expect(__ret_warn_once___1 != 0, 0L);
  if (tmp___21 != 0L) {
    __ret_warn_on___1 = ! __warned___1;
    tmp___19 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
    if (tmp___19 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                         1343);
    } else {
    }
    tmp___20 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
    if (tmp___20 != 0L) {
      __warned___1 = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once___1 != 0, 0L);
  ap->hsm_task_state = 0U;
  ata_hsm_qc_complete(qc, in_wq);
  poll_next = 0;
  goto ldv_35593;
  case 4U:
  ap->hsm_task_state = 0U;
  ata_hsm_qc_complete(qc, in_wq);
  poll_next = 0;
  goto ldv_35593;
  default:
  poll_next = 0;
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared"),
                       "i" (1363), "i" (12UL));
  ldv_35603: ;
  goto ldv_35603;
  }
  ldv_35593: ;
  return (poll_next);
}
}
void ata_sff_queue_work(struct work_struct *work )
{
  {
  queue_work(ata_sff_wq, work);
  return;
}
}
void ata_sff_queue_delayed_work(struct delayed_work *dwork , unsigned long delay )
{
  {
  queue_delayed_work(ata_sff_wq, dwork, delay);
  return;
}
}
void ata_sff_queue_pio_task(struct ata_link *link , unsigned long delay )
{
  struct ata_port *ap ;
  int __ret_warn_on ;
  long tmp ;
  unsigned long tmp___0 ;
  {
  ap = link->ap;
  __ret_warn_on = (unsigned long )ap->sff_pio_task_link != (unsigned long )((struct ata_link *)0) && (unsigned long )ap->sff_pio_task_link != (unsigned long )link;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                       1387);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ap->sff_pio_task_link = link;
  tmp___0 = msecs_to_jiffies((unsigned int const )delay);
  ata_sff_queue_delayed_work(& ap->sff_pio_task, tmp___0);
  return;
}
}
void ata_sff_flush_pio_task(struct ata_port *ap )
{
  {
  cancel_delayed_work_sync(& ap->sff_pio_task);
  ap->hsm_task_state = 0U;
  ap->sff_pio_task_link = 0;
  if ((ap->msg_enable & 32U) != 0U) {
    ata_port_printk((struct ata_port const *)ap, "\017", "%s: EXIT\n", "ata_sff_flush_pio_task");
  } else {
  }
  return;
}
}
static void ata_sff_pio_task(struct work_struct *work )
{
  struct ata_port *ap ;
  struct work_struct const *__mptr ;
  struct ata_link *link ;
  struct ata_queued_cmd *qc ;
  u8 status ;
  int poll_next ;
  long tmp ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  __mptr = (struct work_struct const *)work;
  ap = (struct ata_port *)__mptr + 0xffffffffffffff48UL;
  link = ap->sff_pio_task_link;
  tmp = ldv__builtin_expect((unsigned long )ap->sff_pio_task_link == (unsigned long )((struct ata_link *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared"),
                         "i" (1416), "i" (12UL));
    ldv_35661: ;
    goto ldv_35661;
  } else {
  }
  qc = ata_qc_from_tag(ap, link->active_tag);
  if ((unsigned long )qc == (unsigned long )((struct ata_queued_cmd *)0)) {
    ap->sff_pio_task_link = 0;
    return;
  } else {
  }
  fsm_start:
  __ret_warn_once = ap->hsm_task_state == 0U;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                         1425);
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  status = ata_sff_busy_wait(ap, 128U, 5U);
  if ((int )((signed char )status) < 0) {
    ata_msleep(ap, 2U);
    status = ata_sff_busy_wait(ap, 128U, 10U);
    if ((int )((signed char )status) < 0) {
      ata_sff_queue_pio_task(link, 16UL);
      return;
    } else {
    }
  } else {
  }
  ap->sff_pio_task_link = 0;
  poll_next = ata_sff_hsm_move(ap, qc, (int )status, 1);
  if (poll_next != 0) {
    goto fsm_start;
  } else {
  }
  return;
}
}
unsigned int ata_sff_qc_issue(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct ata_link *link ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  ap = qc->ap;
  link = (qc->dev)->link;
  if ((ap->flags & 512UL) != 0UL) {
    qc->tf.flags = qc->tf.flags | 64UL;
  } else {
  }
  ata_dev_select(ap, (qc->dev)->devno, 1U, 0U);
  switch ((int )qc->tf.protocol) {
  case 1: ;
  if ((qc->tf.flags & 64UL) != 0UL) {
    ata_qc_set_polling(qc);
  } else {
  }
  ata_tf_to_host(ap, (struct ata_taskfile const *)(& qc->tf));
  ap->hsm_task_state = 3U;
  if ((qc->tf.flags & 64UL) != 0UL) {
    ata_sff_queue_pio_task(link, 0UL);
  } else {
  }
  goto ldv_35674;
  case 2: ;
  if ((qc->tf.flags & 64UL) != 0UL) {
    ata_qc_set_polling(qc);
  } else {
  }
  ata_tf_to_host(ap, (struct ata_taskfile const *)(& qc->tf));
  if ((qc->tf.flags & 8UL) != 0UL) {
    ap->hsm_task_state = 1U;
    ata_sff_queue_pio_task(link, 0UL);
  } else {
    ap->hsm_task_state = 2U;
    if ((qc->tf.flags & 64UL) != 0UL) {
      ata_sff_queue_pio_task(link, 0UL);
    } else {
    }
  }
  goto ldv_35674;
  case 6: ;
  case 5: ;
  if ((qc->tf.flags & 64UL) != 0UL) {
    ata_qc_set_polling(qc);
  } else {
  }
  ata_tf_to_host(ap, (struct ata_taskfile const *)(& qc->tf));
  ap->hsm_task_state = 1U;
  if (((qc->dev)->flags & 4UL) == 0UL || (qc->tf.flags & 64UL) != 0UL) {
    ata_sff_queue_pio_task(link, 0UL);
  } else {
  }
  goto ldv_35674;
  default:
  __ret_warn_once = 1;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                         1545);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return (64U);
  }
  ldv_35674: ;
  return (0U);
}
}
bool ata_sff_qc_fill_rtf(struct ata_queued_cmd *qc )
{
  {
  (*(((qc->ap)->ops)->sff_tf_read))(qc->ap, & qc->result_tf);
  return (1);
}
}
static unsigned int ata_sff_idle_irq(struct ata_port *ap )
{
  {
  ap->stats.idle_irq = ap->stats.idle_irq + 1UL;
  return (0U);
}
}
static unsigned int __ata_sff_port_intr(struct ata_port *ap , struct ata_queued_cmd *qc ,
                                        bool hsmv_on_idle )
{
  u8 status ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  switch (ap->hsm_task_state) {
  case 1U: ;
  if (((qc->dev)->flags & 4UL) == 0UL) {
    tmp = ata_sff_idle_irq(ap);
    return (tmp);
  } else {
  }
  goto ldv_35709;
  case 0U:
  tmp___0 = ata_sff_idle_irq(ap);
  return (tmp___0);
  default: ;
  goto ldv_35709;
  }
  ldv_35709:
  status = ata_sff_irq_status(ap);
  if ((int )((signed char )status) < 0) {
    if ((int )hsmv_on_idle) {
      qc->err_mask = qc->err_mask | 2U;
      ap->hsm_task_state = 4U;
    } else {
      tmp___1 = ata_sff_idle_irq(ap);
      return (tmp___1);
    }
  } else {
  }
  if ((unsigned long )(ap->ops)->sff_irq_clear != (unsigned long )((void (*)(struct ata_port * ))0)) {
    (*((ap->ops)->sff_irq_clear))(ap);
  } else {
  }
  ata_sff_hsm_move(ap, qc, (int )status, 0);
  return (1U);
}
}
unsigned int ata_sff_port_intr(struct ata_port *ap , struct ata_queued_cmd *qc )
{
  unsigned int tmp ;
  {
  tmp = __ata_sff_port_intr(ap, qc, 0);
  return (tmp);
}
}
__inline static irqreturn_t __ata_sff_interrupt(int irq , void *dev_instance , unsigned int (*port_intr)(struct ata_port * ,
                                                                                                         struct ata_queued_cmd * ) )
{
  struct ata_host *host ;
  bool retried ;
  unsigned int i ;
  unsigned int handled ;
  unsigned int idle ;
  unsigned int polling ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct ata_port *ap ;
  struct ata_queued_cmd *qc ;
  unsigned int tmp___0 ;
  bool retry ;
  struct ata_port *ap___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  u8 tmp___3 ;
  {
  host = (struct ata_host *)dev_instance;
  retried = 0;
  tmp = spinlock_check(& host->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  retry:
  polling = 0U;
  idle = polling;
  handled = idle;
  i = 0U;
  goto ldv_35744;
  ldv_35743:
  ap = host->ports[i];
  qc = ata_qc_from_tag(ap, ap->link.active_tag);
  if ((unsigned long )qc != (unsigned long )((struct ata_queued_cmd *)0)) {
    if ((qc->tf.flags & 64UL) == 0UL) {
      tmp___0 = (*port_intr)(ap, qc);
      handled = tmp___0 | handled;
    } else {
      polling = (unsigned int )(1 << (int )i) | polling;
    }
  } else {
    idle = (unsigned int )(1 << (int )i) | idle;
  }
  i = i + 1U;
  ldv_35744: ;
  if (host->n_ports > i) {
    goto ldv_35743;
  } else {
  }
  if (handled == 0U && ! retried) {
    retry = 0;
    i = 0U;
    goto ldv_35750;
    ldv_35749:
    ap___0 = host->ports[i];
    if (((unsigned int )(1 << (int )i) & polling) != 0U) {
      goto ldv_35748;
    } else {
    }
    if ((unsigned long )(ap___0->ops)->sff_irq_check == (unsigned long )((bool (*)(struct ata_port * ))0)) {
      goto ldv_35748;
    } else {
      tmp___1 = (*((ap___0->ops)->sff_irq_check))(ap___0);
      if (tmp___1) {
        tmp___2 = 0;
      } else {
        tmp___2 = 1;
      }
      if (tmp___2) {
        goto ldv_35748;
      } else {
      }
    }
    if (((unsigned int )(1 << (int )i) & idle) != 0U) {
      (*((ap___0->ops)->sff_check_status))(ap___0);
      if ((unsigned long )(ap___0->ops)->sff_irq_clear != (unsigned long )((void (*)(struct ata_port * ))0)) {
        (*((ap___0->ops)->sff_irq_clear))(ap___0);
      } else {
      }
    } else {
      tmp___3 = (*((ap___0->ops)->sff_check_status))(ap___0);
      if ((int )((signed char )tmp___3) >= 0) {
        retry = ((int )retry | 1) != 0;
      } else {
      }
    }
    ldv_35748:
    i = i + 1U;
    ldv_35750: ;
    if (host->n_ports > i) {
      goto ldv_35749;
    } else {
    }
    if ((int )retry) {
      retried = 1;
      goto retry;
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& host->lock, flags);
  return (handled != 0U);
}
}
irqreturn_t ata_sff_interrupt(int irq , void *dev_instance )
{
  irqreturn_t tmp ;
  {
  tmp = __ata_sff_interrupt(irq, dev_instance, & ata_sff_port_intr);
  return (tmp);
}
}
void ata_sff_lost_interrupt(struct ata_port *ap )
{
  u8 status ;
  struct ata_queued_cmd *qc ;
  {
  qc = ata_qc_from_tag(ap, ap->link.active_tag);
  if ((unsigned long )qc == (unsigned long )((struct ata_queued_cmd *)0) || (qc->tf.flags & 64UL) != 0UL) {
    return;
  } else {
  }
  status = ata_sff_altstatus(ap);
  if ((int )((signed char )status) < 0) {
    return;
  } else {
  }
  ata_port_printk((struct ata_port const *)ap, "\f", "lost interrupt (Status 0x%x)\n",
                  (int )status);
  ata_sff_port_intr(ap, qc);
  return;
}
}
void ata_sff_freeze(struct ata_port *ap )
{
  {
  ap->ctl = (u8 )((unsigned int )ap->ctl | 2U);
  ap->last_ctl = ap->ctl;
  if ((unsigned long )(ap->ops)->sff_set_devctl != (unsigned long )((void (*)(struct ata_port * ,
                                                                              u8 ))0) || (unsigned long )ap->ioaddr.ctl_addr != (unsigned long )((void *)0)) {
    ata_sff_set_devctl(ap, (int )ap->ctl);
  } else {
  }
  (*((ap->ops)->sff_check_status))(ap);
  if ((unsigned long )(ap->ops)->sff_irq_clear != (unsigned long )((void (*)(struct ata_port * ))0)) {
    (*((ap->ops)->sff_irq_clear))(ap);
  } else {
  }
  return;
}
}
void ata_sff_thaw(struct ata_port *ap )
{
  {
  (*((ap->ops)->sff_check_status))(ap);
  if ((unsigned long )(ap->ops)->sff_irq_clear != (unsigned long )((void (*)(struct ata_port * ))0)) {
    (*((ap->ops)->sff_irq_clear))(ap);
  } else {
  }
  ata_sff_irq_on(ap);
  return;
}
}
int ata_sff_prereset(struct ata_link *link , unsigned long deadline )
{
  struct ata_eh_context *ehc ;
  int rc ;
  bool tmp ;
  int tmp___0 ;
  {
  ehc = & link->eh_context;
  rc = ata_std_prereset(link, deadline);
  if (rc != 0) {
    return (rc);
  } else {
  }
  if ((ehc->i.action & 4U) != 0U) {
    return (0);
  } else {
  }
  tmp = ata_link_offline(link);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    rc = ata_sff_wait_ready(link, deadline);
    if (rc != 0 && rc != -19) {
      ata_link_printk((struct ata_link const *)link, "\f", "device not ready (errno=%d), forcing hardreset\n",
                      rc);
      ehc->i.action = ehc->i.action | 4U;
    } else {
    }
  } else {
  }
  return (0);
}
}
static unsigned int ata_devchk(struct ata_port *ap , unsigned int device )
{
  struct ata_ioports *ioaddr ;
  u8 nsect ;
  u8 lbal ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  ioaddr = & ap->ioaddr;
  (*((ap->ops)->sff_dev_select))(ap, device);
  iowrite8(85, ioaddr->nsect_addr);
  iowrite8(170, ioaddr->lbal_addr);
  iowrite8(170, ioaddr->nsect_addr);
  iowrite8(85, ioaddr->lbal_addr);
  iowrite8(85, ioaddr->nsect_addr);
  iowrite8(170, ioaddr->lbal_addr);
  tmp = ioread8(ioaddr->nsect_addr);
  nsect = (u8 )tmp;
  tmp___0 = ioread8(ioaddr->lbal_addr);
  lbal = (u8 )tmp___0;
  if ((unsigned int )nsect == 85U && (unsigned int )lbal == 170U) {
    return (1U);
  } else {
  }
  return (0U);
}
}
unsigned int ata_sff_dev_classify(struct ata_device *dev , int present , u8 *r_err )
{
  struct ata_port *ap ;
  struct ata_taskfile tf ;
  unsigned int class ;
  u8 err ;
  u8 tmp ;
  {
  ap = (dev->link)->ap;
  (*((ap->ops)->sff_dev_select))(ap, dev->devno);
  memset((void *)(& tf), 0, 24UL);
  (*((ap->ops)->sff_tf_read))(ap, & tf);
  err = tf.feature;
  if ((unsigned long )r_err != (unsigned long )((u8 *)0)) {
    *r_err = err;
  } else {
  }
  if ((unsigned int )err == 0U) {
    dev->horkage = dev->horkage | 1U;
  } else
  if ((unsigned int )err == 1U) {
  } else
  if (dev->devno == 0U && (unsigned int )err == 129U) {
  } else {
    return (9U);
  }
  class = ata_dev_classify((struct ata_taskfile const *)(& tf));
  if (class == 0U) {
    if (present != 0 && (int )dev->horkage & 1) {
      class = 1U;
    } else {
      class = 9U;
    }
  } else
  if (class == 1U) {
    tmp = (*((ap->ops)->sff_check_status))(ap);
    if ((unsigned int )tmp == 0U) {
      class = 9U;
    } else {
    }
  } else {
  }
  return (class);
}
}
int ata_sff_wait_after_reset(struct ata_link *link , unsigned int devmask , unsigned long deadline )
{
  struct ata_port *ap ;
  struct ata_ioports *ioaddr ;
  unsigned int dev0 ;
  unsigned int dev1 ;
  int rc ;
  int ret ;
  int i ;
  u8 nsect ;
  u8 lbal ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  ap = link->ap;
  ioaddr = & ap->ioaddr;
  dev0 = devmask & 1U;
  dev1 = devmask & 2U;
  ret = 0;
  ata_msleep(ap, 150U);
  rc = ata_sff_wait_ready(link, deadline);
  if (rc != 0) {
    return (rc);
  } else {
  }
  if (dev1 != 0U) {
    (*((ap->ops)->sff_dev_select))(ap, 1U);
    i = 0;
    goto ldv_35845;
    ldv_35844:
    tmp = ioread8(ioaddr->nsect_addr);
    nsect = (u8 )tmp;
    tmp___0 = ioread8(ioaddr->lbal_addr);
    lbal = (u8 )tmp___0;
    if ((unsigned int )nsect == 1U && (unsigned int )lbal == 1U) {
      goto ldv_35843;
    } else {
    }
    ata_msleep(ap, 50U);
    i = i + 1;
    ldv_35845: ;
    if (i <= 1) {
      goto ldv_35844;
    } else {
    }
    ldv_35843:
    rc = ata_sff_wait_ready(link, deadline);
    if (rc != 0) {
      if (rc != -19) {
        return (rc);
      } else {
      }
      ret = rc;
    } else {
    }
  } else {
  }
  (*((ap->ops)->sff_dev_select))(ap, 0U);
  if (dev1 != 0U) {
    (*((ap->ops)->sff_dev_select))(ap, 1U);
  } else {
  }
  if (dev0 != 0U) {
    (*((ap->ops)->sff_dev_select))(ap, 0U);
  } else {
  }
  return (ret);
}
}
static int ata_bus_softreset(struct ata_port *ap , unsigned int devmask , unsigned long deadline )
{
  struct ata_ioports *ioaddr ;
  int tmp ;
  {
  ioaddr = & ap->ioaddr;
  iowrite8((int )ap->ctl, ioaddr->ctl_addr);
  __const_udelay(85900UL);
  iowrite8((int )((unsigned int )ap->ctl | 4U), ioaddr->ctl_addr);
  __const_udelay(85900UL);
  iowrite8((int )ap->ctl, ioaddr->ctl_addr);
  ap->last_ctl = ap->ctl;
  tmp = ata_sff_wait_after_reset(& ap->link, devmask, deadline);
  return (tmp);
}
}
int ata_sff_softreset(struct ata_link *link , unsigned int *classes , unsigned long deadline )
{
  struct ata_port *ap ;
  unsigned int slave_possible ;
  unsigned int devmask ;
  int rc ;
  u8 err ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  ap = link->ap;
  slave_possible = (unsigned int )ap->flags & 1U;
  devmask = 0U;
  tmp = ata_devchk(ap, 0U);
  if (tmp != 0U) {
    devmask = devmask | 1U;
  } else {
  }
  if (slave_possible != 0U) {
    tmp___0 = ata_devchk(ap, 1U);
    if (tmp___0 != 0U) {
      devmask = devmask | 2U;
    } else {
    }
  } else {
  }
  (*((ap->ops)->sff_dev_select))(ap, 0U);
  rc = ata_bus_softreset(ap, devmask, deadline);
  if (rc != 0) {
    if (rc != -19) {
      ata_link_printk((struct ata_link const *)link, "\v", "SRST failed (errno=%d)\n",
                      rc);
      return (rc);
    } else {
      tmp___1 = sata_scr_valid(link);
      if (tmp___1 != 0) {
        ata_link_printk((struct ata_link const *)link, "\v", "SRST failed (errno=%d)\n",
                        rc);
        return (rc);
      } else {
      }
    }
  } else {
  }
  *classes = ata_sff_dev_classify((struct ata_device *)(& link->device), (int )devmask & 1,
                                  & err);
  if (slave_possible != 0U && (unsigned int )err != 129U) {
    *(classes + 1UL) = ata_sff_dev_classify((struct ata_device *)(& link->device) + 1UL,
                                            (int )devmask & 2, & err);
  } else {
  }
  return (0);
}
}
int sata_sff_hardreset(struct ata_link *link , unsigned int *class , unsigned long deadline )
{
  struct ata_eh_context *ehc ;
  unsigned long const *timing ;
  unsigned long const *tmp ;
  bool online ;
  int rc ;
  {
  ehc = & link->eh_context;
  tmp = sata_ehc_deb_timing(ehc);
  timing = tmp;
  rc = sata_link_hardreset(link, timing, deadline, & online, & ata_sff_check_ready);
  if ((int )online) {
    *class = ata_sff_dev_classify((struct ata_device *)(& link->device), 1, 0);
  } else {
  }
  return (rc);
}
}
void ata_sff_postreset(struct ata_link *link , unsigned int *classes )
{
  struct ata_port *ap ;
  {
  ap = link->ap;
  ata_std_postreset(link, classes);
  if (*classes != 9U) {
    (*((ap->ops)->sff_dev_select))(ap, 1U);
  } else {
  }
  if (*(classes + 1UL) != 9U) {
    (*((ap->ops)->sff_dev_select))(ap, 0U);
  } else {
  }
  if (*classes == 9U && *(classes + 1UL) == 9U) {
    return;
  } else {
  }
  if ((unsigned long )(ap->ops)->sff_set_devctl != (unsigned long )((void (*)(struct ata_port * ,
                                                                              u8 ))0) || (unsigned long )ap->ioaddr.ctl_addr != (unsigned long )((void *)0)) {
    ata_sff_set_devctl(ap, (int )ap->ctl);
    ap->last_ctl = ap->ctl;
  } else {
  }
  return;
}
}
void ata_sff_drain_fifo(struct ata_queued_cmd *qc )
{
  int count ;
  struct ata_port *ap ;
  u8 tmp ;
  {
  if ((unsigned long )qc == (unsigned long )((struct ata_queued_cmd *)0) || qc->dma_dir == 1) {
    return;
  } else {
  }
  ap = qc->ap;
  count = 0;
  goto ldv_35913;
  ldv_35912:
  ioread16(ap->ioaddr.data_addr);
  count = count + 2;
  ldv_35913:
  tmp = (*((ap->ops)->sff_check_status))(ap);
  if (((int )tmp & 8) != 0 && count <= 65535) {
    goto ldv_35912;
  } else {
  }
  if (count != 0) {
    ata_port_printk((struct ata_port const *)ap, "\017", "drained %d bytes to clear DRQ\n",
                    count);
  } else {
  }
  return;
}
}
void ata_sff_error_handler(struct ata_port *ap )
{
  int (*softreset)(struct ata_link * , unsigned int * , unsigned long ) ;
  int (*hardreset)(struct ata_link * , unsigned int * , unsigned long ) ;
  struct ata_queued_cmd *qc ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  {
  softreset = (ap->ops)->softreset;
  hardreset = (ap->ops)->hardreset;
  qc = __ata_qc_from_tag(ap, ap->link.active_tag);
  if ((unsigned long )qc != (unsigned long )((struct ata_queued_cmd *)0) && (qc->flags & 65536UL) == 0UL) {
    qc = 0;
  } else {
  }
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned long )(ap->ops)->sff_drain_fifo != (unsigned long )((void (*)(struct ata_queued_cmd * ))0)) {
    (*((ap->ops)->sff_drain_fifo))(qc);
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  if ((unsigned long )softreset == (unsigned long )(& ata_sff_softreset) && (unsigned long )ap->ioaddr.ctl_addr == (unsigned long )((void *)0)) {
    softreset = 0;
  } else {
  }
  if ((unsigned long )hardreset == (unsigned long )(& sata_std_hardreset) || (unsigned long )hardreset == (unsigned long )(& sata_sff_hardreset)) {
    tmp___0 = sata_scr_valid(& ap->link);
    if (tmp___0 == 0) {
      hardreset = 0;
    } else {
    }
  } else {
  }
  ata_do_eh(ap, (ap->ops)->prereset, softreset, hardreset, (ap->ops)->postreset);
  return;
}
}
void ata_sff_std_ports(struct ata_ioports *ioaddr )
{
  {
  ioaddr->data_addr = ioaddr->cmd_addr;
  ioaddr->error_addr = ioaddr->cmd_addr + 1UL;
  ioaddr->feature_addr = ioaddr->cmd_addr + 1UL;
  ioaddr->nsect_addr = ioaddr->cmd_addr + 2UL;
  ioaddr->lbal_addr = ioaddr->cmd_addr + 3UL;
  ioaddr->lbam_addr = ioaddr->cmd_addr + 4UL;
  ioaddr->lbah_addr = ioaddr->cmd_addr + 5UL;
  ioaddr->device_addr = ioaddr->cmd_addr + 6UL;
  ioaddr->status_addr = ioaddr->cmd_addr + 7UL;
  ioaddr->command_addr = ioaddr->cmd_addr + 7UL;
  return;
}
}
static int ata_resources_present(struct pci_dev *pdev , int port )
{
  int i ;
  {
  port = port * 2;
  i = 0;
  goto ldv_35952;
  ldv_35951: ;
  if (pdev->resource[port + i].start == 0ULL || ((pdev->resource[port + i].start == 0ULL && pdev->resource[port + i].end == pdev->resource[port + i].start) || pdev->resource[port + i].end - pdev->resource[port + i].start == 0xffffffffffffffffULL)) {
    return (0);
  } else {
  }
  i = i + 1;
  ldv_35952: ;
  if (i <= 1) {
    goto ldv_35951;
  } else {
  }
  return (1);
}
}
int ata_pci_sff_init_host(struct ata_host *host )
{
  struct device *gdev ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  unsigned int mask ;
  int i ;
  int rc ;
  struct ata_port *ap ;
  int base ;
  void * const *iomap ;
  int tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  void *tmp___2 ;
  {
  gdev = host->dev;
  __mptr = (struct device const *)gdev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  mask = 0U;
  i = 0;
  goto ldv_35969;
  ldv_35968:
  ap = host->ports[i];
  base = i * 2;
  tmp = ata_port_is_dummy(ap);
  if (tmp != 0) {
    goto ldv_35967;
  } else {
  }
  tmp___0 = ata_resources_present(pdev, i);
  if (tmp___0 == 0) {
    ap->ops = & ata_dummy_port_ops;
    goto ldv_35967;
  } else {
  }
  tmp___1 = dev_driver_string((struct device const *)gdev);
  rc = pcim_iomap_regions(pdev, 3 << base, tmp___1);
  if (rc != 0) {
    dev_warn((struct device const *)gdev, "failed to request/iomap BARs for port %d (errno=%d)\n",
             i, rc);
    if (rc == -16) {
      pcim_pin_device(pdev);
    } else {
    }
    ap->ops = & ata_dummy_port_ops;
    goto ldv_35967;
  } else {
  }
  iomap = pcim_iomap_table(pdev);
  host->iomap = iomap;
  ap->ioaddr.cmd_addr = *(iomap + (unsigned long )base);
  tmp___2 = (void *)((unsigned long )*(iomap + ((unsigned long )base + 1UL)) | 2UL);
  ap->ioaddr.ctl_addr = tmp___2;
  ap->ioaddr.altstatus_addr = tmp___2;
  ata_sff_std_ports(& ap->ioaddr);
  ata_port_desc(ap, "cmd 0x%llx ctl 0x%llx", pdev->resource[base].start, pdev->resource[base + 1].start);
  mask = (unsigned int )(1 << i) | mask;
  ldv_35967:
  i = i + 1;
  ldv_35969: ;
  if (i <= 1) {
    goto ldv_35968;
  } else {
  }
  if (mask == 0U) {
    dev_err((struct device const *)gdev, "no available native port\n");
    return (-19);
  } else {
  }
  return (0);
}
}
int ata_pci_sff_prepare_host(struct pci_dev *pdev , struct ata_port_info const * const *ppi ,
                             struct ata_host **r_host )
{
  struct ata_host *host ;
  int rc ;
  void *tmp ;
  {
  tmp = devres_open_group(& pdev->dev, 0, 208U);
  if ((unsigned long )tmp == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  host = ata_host_alloc_pinfo(& pdev->dev, ppi, 2);
  if ((unsigned long )host == (unsigned long )((struct ata_host *)0)) {
    dev_err((struct device const *)(& pdev->dev), "failed to allocate ATA host\n");
    rc = -12;
    goto err_out;
  } else {
  }
  rc = ata_pci_sff_init_host(host);
  if (rc != 0) {
    goto err_out;
  } else {
  }
  devres_remove_group(& pdev->dev, 0);
  *r_host = host;
  return (0);
  err_out:
  devres_release_group(& pdev->dev, 0);
  return (rc);
}
}
int ata_pci_sff_activate_host(struct ata_host *host , irqreturn_t (*irq_handler)(int ,
                                                                                 void * ) ,
                              struct scsi_host_template *sht )
{
  struct device *dev ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  char const *drv_name ;
  char const *tmp ;
  int legacy_mode ;
  int rc ;
  u8 tmp8 ;
  u8 mask ;
  void *tmp___0 ;
  int i ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  dev = host->dev;
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp = dev_driver_string((struct device const *)host->dev);
  drv_name = tmp;
  legacy_mode = 0;
  rc = ata_host_start(host);
  if (rc != 0) {
    return (rc);
  } else {
  }
  if (pdev->class >> 8 == 257U) {
    pci_read_config_byte((struct pci_dev const *)pdev, 9, & tmp8);
    mask = 5U;
    if (((int )tmp8 & (int )mask) != (int )mask) {
      legacy_mode = 1;
    } else {
    }
  } else {
  }
  tmp___0 = devres_open_group(dev, 0, 208U);
  if ((unsigned long )tmp___0 == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  if (legacy_mode == 0 && pdev->irq != 0U) {
    rc = devm_request_irq(dev, pdev->irq, irq_handler, 128UL, drv_name, (void *)host);
    if (rc != 0) {
      goto out;
    } else {
    }
    i = 0;
    goto ldv_36011;
    ldv_36010:
    tmp___1 = ata_port_is_dummy(host->ports[i]);
    if (tmp___1 != 0) {
      goto ldv_36009;
    } else {
    }
    ata_port_desc(host->ports[i], "irq %d", pdev->irq);
    ldv_36009:
    i = i + 1;
    ldv_36011: ;
    if (i <= 1) {
      goto ldv_36010;
    } else {
    }
  } else
  if (legacy_mode != 0) {
    tmp___2 = ata_port_is_dummy(host->ports[0]);
    if (tmp___2 == 0) {
      rc = devm_request_irq(dev, 14U, irq_handler, 128UL, drv_name, (void *)host);
      if (rc != 0) {
        goto out;
      } else {
      }
      ata_port_desc(host->ports[0], "irq %d", 14);
    } else {
    }
    tmp___3 = ata_port_is_dummy(host->ports[1]);
    if (tmp___3 == 0) {
      rc = devm_request_irq(dev, 15U, irq_handler, 128UL, drv_name, (void *)host);
      if (rc != 0) {
        goto out;
      } else {
      }
      ata_port_desc(host->ports[1], "irq %d", 15);
    } else {
    }
  } else {
  }
  rc = ata_host_register(host, sht);
  out: ;
  if (rc == 0) {
    devres_remove_group(dev, 0);
  } else {
    devres_release_group(dev, 0);
  }
  return (rc);
}
}
static struct ata_port_info const *ata_sff_find_valid_pi(struct ata_port_info const * const *ppi )
{
  int i ;
  {
  i = 0;
  goto ldv_36026;
  ldv_36025: ;
  if ((unsigned long )((struct ata_port_operations *)(*(ppi + (unsigned long )i))->port_ops) != (unsigned long )(& ata_dummy_port_ops)) {
    return ((struct ata_port_info const *)*(ppi + (unsigned long )i));
  } else {
  }
  i = i + 1;
  ldv_36026: ;
  if (i <= 1 && (unsigned long )*(ppi + (unsigned long )i) != (unsigned long )((struct ata_port_info const * )0)) {
    goto ldv_36025;
  } else {
  }
  return (0);
}
}
static int ata_pci_init_one(struct pci_dev *pdev , struct ata_port_info const * const *ppi ,
                            struct scsi_host_template *sht , void *host_priv , int hflags ,
                            bool bmdma )
{
  struct device *dev ;
  struct ata_port_info const *pi ;
  struct ata_host *host ;
  int rc ;
  void *tmp ;
  {
  dev = & pdev->dev;
  host = 0;
  pi = ata_sff_find_valid_pi(ppi);
  if ((unsigned long )pi == (unsigned long )((struct ata_port_info const *)0)) {
    dev_err((struct device const *)(& pdev->dev), "no valid port_info specified\n");
    return (-22);
  } else {
  }
  tmp = devres_open_group(dev, 0, 208U);
  if ((unsigned long )tmp == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  rc = pcim_enable_device(pdev);
  if (rc != 0) {
    goto out;
  } else {
  }
  if ((int )bmdma) {
    rc = ata_pci_bmdma_prepare_host(pdev, ppi, & host);
  } else {
    rc = ata_pci_sff_prepare_host(pdev, ppi, & host);
  }
  if (rc != 0) {
    goto out;
  } else {
  }
  host->private_data = host_priv;
  host->flags = host->flags | (unsigned long )hflags;
  if ((int )bmdma) {
    pci_set_master(pdev);
    rc = ata_pci_sff_activate_host(host, & ata_bmdma_interrupt, sht);
  } else {
    rc = ata_pci_sff_activate_host(host, & ata_sff_interrupt, sht);
  }
  out: ;
  if (rc == 0) {
    devres_remove_group(& pdev->dev, 0);
  } else {
    devres_release_group(& pdev->dev, 0);
  }
  return (rc);
}
}
int ata_pci_sff_init_one(struct pci_dev *pdev , struct ata_port_info const * const *ppi ,
                         struct scsi_host_template *sht , void *host_priv , int hflag )
{
  int tmp ;
  {
  tmp = ata_pci_init_one(pdev, ppi, sht, host_priv, hflag, 0);
  return (tmp);
}
}
struct ata_port_operations const ata_bmdma_port_ops =
     {0, 0, & ata_bmdma_qc_prep, & ata_bmdma_qc_issue, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, & ata_bmdma_error_handler, 0, & ata_bmdma_post_internal_cmd,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & ata_bmdma_port_start, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, & ata_bmdma_irq_clear, 0, & ata_bmdma_setup, & ata_bmdma_start, & ata_bmdma_stop,
    & ata_bmdma_status, 0, 0, 0, 0, 0, 0, & ata_sff_port_ops};
struct ata_port_operations const ata_bmdma32_port_ops =
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, & ata_bmdma_port_start32, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ata_sff_data_xfer32,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ata_bmdma_port_ops};
static void ata_bmdma_fill_sg(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct ata_bmdma_prd *prd ;
  struct scatterlist *sg ;
  unsigned int si ;
  unsigned int pi ;
  u32 addr ;
  u32 offset ;
  u32 sg_len ;
  u32 len ;
  {
  ap = qc->ap;
  prd = ap->bmdma_prd;
  pi = 0U;
  si = 0U;
  sg = qc->sg;
  goto ldv_36086;
  ldv_36085:
  addr = (unsigned int )sg->dma_address;
  sg_len = sg->dma_length;
  goto ldv_36083;
  ldv_36082:
  offset = addr & 65535U;
  len = sg_len;
  if (offset + sg_len > 65536U) {
    len = 65536U - offset;
  } else {
  }
  (prd + (unsigned long )pi)->addr = addr;
  (prd + (unsigned long )pi)->flags_len = len & 65535U;
  pi = pi + 1U;
  sg_len = sg_len - len;
  addr = addr + len;
  ldv_36083: ;
  if (sg_len != 0U) {
    goto ldv_36082;
  } else {
  }
  si = si + 1U;
  sg = sg_next(sg);
  ldv_36086: ;
  if (qc->n_elem > si) {
    goto ldv_36085;
  } else {
  }
  (prd + (unsigned long )(pi - 1U))->flags_len = (prd + (unsigned long )(pi - 1U))->flags_len | 2147483648U;
  return;
}
}
static void ata_bmdma_fill_sg_dumb(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct ata_bmdma_prd *prd ;
  struct scatterlist *sg ;
  unsigned int si ;
  unsigned int pi ;
  u32 addr ;
  u32 offset ;
  u32 sg_len ;
  u32 len ;
  u32 blen ;
  {
  ap = qc->ap;
  prd = ap->bmdma_prd;
  pi = 0U;
  si = 0U;
  sg = qc->sg;
  goto ldv_36105;
  ldv_36104:
  addr = (unsigned int )sg->dma_address;
  sg_len = sg->dma_length;
  goto ldv_36102;
  ldv_36101:
  offset = addr & 65535U;
  len = sg_len;
  if (offset + sg_len > 65536U) {
    len = 65536U - offset;
  } else {
  }
  blen = len & 65535U;
  (prd + (unsigned long )pi)->addr = addr;
  if (blen == 0U) {
    (prd + (unsigned long )pi)->flags_len = 32768U;
    blen = 32768U;
    pi = pi + 1U;
    (prd + (unsigned long )pi)->addr = addr + 32768U;
  } else {
  }
  (prd + (unsigned long )pi)->flags_len = blen;
  pi = pi + 1U;
  sg_len = sg_len - len;
  addr = addr + len;
  ldv_36102: ;
  if (sg_len != 0U) {
    goto ldv_36101;
  } else {
  }
  si = si + 1U;
  sg = sg_next(sg);
  ldv_36105: ;
  if (qc->n_elem > si) {
    goto ldv_36104;
  } else {
  }
  (prd + (unsigned long )(pi - 1U))->flags_len = (prd + (unsigned long )(pi - 1U))->flags_len | 2147483648U;
  return;
}
}
void ata_bmdma_qc_prep(struct ata_queued_cmd *qc )
{
  {
  if ((qc->flags & 2UL) == 0UL) {
    return;
  } else {
  }
  ata_bmdma_fill_sg(qc);
  return;
}
}
void ata_bmdma_dumb_qc_prep(struct ata_queued_cmd *qc )
{
  {
  if ((qc->flags & 2UL) == 0UL) {
    return;
  } else {
  }
  ata_bmdma_fill_sg_dumb(qc);
  return;
}
}
unsigned int ata_bmdma_qc_issue(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  struct ata_link *link ;
  unsigned int tmp ;
  int tmp___0 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  bool __warned___0 ;
  int __ret_warn_once___0 ;
  int __ret_warn_on___0 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int __ret_warn_on___1 ;
  long tmp___7 ;
  {
  ap = qc->ap;
  link = (qc->dev)->link;
  tmp___0 = ata_is_dma((int )qc->tf.protocol);
  if (tmp___0 == 0) {
    tmp = ata_sff_qc_issue(qc);
    return (tmp);
  } else {
  }
  ata_dev_select(ap, (qc->dev)->devno, 1U, 0U);
  switch ((int )qc->tf.protocol) {
  case 3:
  __ret_warn_once = (qc->tf.flags & 64UL) != 0UL;
  tmp___3 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___3 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                         2868);
    } else {
    }
    tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___2 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  (*((ap->ops)->sff_tf_load))(ap, (struct ata_taskfile const *)(& qc->tf));
  (*((ap->ops)->bmdma_setup))(qc);
  (*((ap->ops)->bmdma_start))(qc);
  ap->hsm_task_state = 3U;
  goto ldv_36136;
  case 7:
  __ret_warn_once___0 = (qc->tf.flags & 64UL) != 0UL;
  tmp___6 = ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
  if (tmp___6 != 0L) {
    __ret_warn_on___0 = ! __warned___0;
    tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___4 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                         2877);
    } else {
    }
    tmp___5 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___5 != 0L) {
      __warned___0 = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
  (*((ap->ops)->sff_tf_load))(ap, (struct ata_taskfile const *)(& qc->tf));
  (*((ap->ops)->bmdma_setup))(qc);
  ap->hsm_task_state = 1U;
  if (((qc->dev)->flags & 4UL) == 0UL) {
    ata_sff_queue_pio_task(link, 0UL);
  } else {
  }
  goto ldv_36136;
  default:
  __ret_warn_on___1 = 1;
  tmp___7 = ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  if (tmp___7 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-sff.c.prepared",
                       2889);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___1 != 0, 0L);
  return (64U);
  }
  ldv_36136: ;
  return (0U);
}
}
unsigned int ata_bmdma_port_intr(struct ata_port *ap , struct ata_queued_cmd *qc )
{
  struct ata_eh_info *ehi ;
  u8 host_stat ;
  bool bmdma_stopped ;
  unsigned int handled ;
  unsigned int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  ehi = & ap->link.eh_info;
  host_stat = 0U;
  bmdma_stopped = 0;
  if (ap->hsm_task_state == 3U) {
    tmp___1 = ata_is_dma((int )qc->tf.protocol);
    if (tmp___1 != 0) {
      host_stat = (*((ap->ops)->bmdma_status))(ap);
      if (((int )host_stat & 4) == 0) {
        tmp = ata_sff_idle_irq(ap);
        return (tmp);
      } else {
      }
      (*((ap->ops)->bmdma_stop))(qc);
      bmdma_stopped = 1;
      tmp___0 = ldv__builtin_expect(((int )host_stat & 2) != 0, 0L);
      if (tmp___0 != 0L) {
        qc->err_mask = qc->err_mask | 32U;
        ap->hsm_task_state = 4U;
      } else {
      }
    } else {
    }
  } else {
  }
  handled = __ata_sff_port_intr(ap, qc, (int )bmdma_stopped);
  tmp___2 = ldv__builtin_expect(qc->err_mask != 0U, 0L);
  if (tmp___2 != 0L) {
    tmp___3 = ata_is_dma((int )qc->tf.protocol);
    if (tmp___3 != 0) {
      ata_ehi_push_desc(ehi, "BMDMA stat 0x%x", (int )host_stat);
    } else {
    }
  } else {
  }
  return (handled);
}
}
irqreturn_t ata_bmdma_interrupt(int irq , void *dev_instance )
{
  irqreturn_t tmp ;
  {
  tmp = __ata_sff_interrupt(irq, dev_instance, & ata_bmdma_port_intr);
  return (tmp);
}
}
void ata_bmdma_error_handler(struct ata_port *ap )
{
  struct ata_queued_cmd *qc ;
  unsigned long flags ;
  bool thaw ;
  raw_spinlock_t *tmp ;
  u8 host_stat ;
  int tmp___0 ;
  {
  thaw = 0;
  qc = __ata_qc_from_tag(ap, ap->link.active_tag);
  if ((unsigned long )qc != (unsigned long )((struct ata_queued_cmd *)0) && (qc->flags & 65536UL) == 0UL) {
    qc = 0;
  } else {
  }
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned long )qc != (unsigned long )((struct ata_queued_cmd *)0)) {
    tmp___0 = ata_is_dma((int )qc->tf.protocol);
    if (tmp___0 != 0) {
      host_stat = (*((ap->ops)->bmdma_status))(ap);
      if (qc->err_mask == 4U && ((int )host_stat & 2) != 0) {
        qc->err_mask = 32U;
        thaw = 1;
      } else {
      }
      (*((ap->ops)->bmdma_stop))(qc);
      if ((int )thaw) {
        (*((ap->ops)->sff_check_status))(ap);
        if ((unsigned long )(ap->ops)->sff_irq_clear != (unsigned long )((void (*)(struct ata_port * ))0)) {
          (*((ap->ops)->sff_irq_clear))(ap);
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  if ((int )thaw) {
    ata_eh_thaw_port(ap);
  } else {
  }
  ata_sff_error_handler(ap);
  return;
}
}
void ata_bmdma_post_internal_cmd(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  {
  ap = qc->ap;
  tmp___0 = ata_is_dma((int )qc->tf.protocol);
  if (tmp___0 != 0) {
    tmp = spinlock_check(ap->lock);
    flags = _raw_spin_lock_irqsave(tmp);
    (*((ap->ops)->bmdma_stop))(qc);
    spin_unlock_irqrestore(ap->lock, flags);
  } else {
  }
  return;
}
}
void ata_bmdma_irq_clear(struct ata_port *ap )
{
  void *mmio ;
  unsigned int tmp ;
  {
  mmio = ap->ioaddr.bmdma_addr;
  if ((unsigned long )mmio == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  tmp = ioread8(mmio + 2UL);
  iowrite8((int )((u8 )tmp), mmio + 2UL);
  return;
}
}
void ata_bmdma_setup(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  unsigned int rw ;
  u8 dmactl ;
  unsigned int tmp ;
  {
  ap = qc->ap;
  rw = (unsigned int )qc->tf.flags & 8U;
  __asm__ volatile ("mfence": : : "memory");
  iowrite32((u32 )ap->bmdma_prd_dma, ap->ioaddr.bmdma_addr + 4UL);
  tmp = ioread8(ap->ioaddr.bmdma_addr);
  dmactl = (u8 )tmp;
  dmactl = (unsigned int )dmactl & 246U;
  if (rw == 0U) {
    dmactl = (u8 )((unsigned int )dmactl | 8U);
  } else {
  }
  iowrite8((int )dmactl, ap->ioaddr.bmdma_addr);
  (*((ap->ops)->sff_exec_command))(ap, (struct ata_taskfile const *)(& qc->tf));
  return;
}
}
void ata_bmdma_start(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  u8 dmactl ;
  unsigned int tmp ;
  {
  ap = qc->ap;
  tmp = ioread8(ap->ioaddr.bmdma_addr);
  dmactl = (u8 )tmp;
  iowrite8((int )((unsigned int )dmactl | 1U), ap->ioaddr.bmdma_addr);
  return;
}
}
void ata_bmdma_stop(struct ata_queued_cmd *qc )
{
  struct ata_port *ap ;
  void *mmio ;
  unsigned int tmp ;
  {
  ap = qc->ap;
  mmio = ap->ioaddr.bmdma_addr;
  tmp = ioread8(mmio);
  iowrite8((int )((u8 )tmp) & 254, mmio);
  ata_sff_dma_pause(ap);
  return;
}
}
u8 ata_bmdma_status(struct ata_port *ap )
{
  unsigned int tmp ;
  {
  tmp = ioread8(ap->ioaddr.bmdma_addr + 2UL);
  return ((u8 )tmp);
}
}
int ata_bmdma_port_start(struct ata_port *ap )
{
  void *tmp ;
  {
  if (ap->mwdma_mask != 0U || ap->udma_mask != 0U) {
    tmp = dmam_alloc_coherent((ap->host)->dev, 2048UL, & ap->bmdma_prd_dma, 208U);
    ap->bmdma_prd = (struct ata_bmdma_prd *)tmp;
    if ((unsigned long )ap->bmdma_prd == (unsigned long )((struct ata_bmdma_prd *)0)) {
      return (-12);
    } else {
    }
  } else {
  }
  return (0);
}
}
int ata_bmdma_port_start32(struct ata_port *ap )
{
  int tmp ;
  {
  ap->pflags = ap->pflags | 3145728U;
  tmp = ata_bmdma_port_start(ap);
  return (tmp);
}
}
int ata_pci_bmdma_clear_simplex(struct pci_dev *pdev )
{
  unsigned long bmdma ;
  u8 simplex ;
  {
  bmdma = (unsigned long )pdev->resource[4].start;
  if (bmdma == 0UL) {
    return (-2);
  } else {
  }
  simplex = inb((int )((unsigned int )bmdma + 2U));
  outb((int )simplex & 96, (int )((unsigned int )bmdma + 2U));
  simplex = inb((int )((unsigned int )bmdma + 2U));
  if ((int )((signed char )simplex) < 0) {
    return (-95);
  } else {
  }
  return (0);
}
}
static void ata_bmdma_nodma(struct ata_host *host , char const *reason )
{
  int i ;
  {
  dev_err((struct device const *)host->dev, "BMDMA: %s, falling back to PIO\n",
          reason);
  i = 0;
  goto ldv_36296;
  ldv_36295:
  (host->ports[i])->mwdma_mask = 0U;
  (host->ports[i])->udma_mask = 0U;
  i = i + 1;
  ldv_36296: ;
  if (i <= 1) {
    goto ldv_36295;
  } else {
  }
  return;
}
}
void ata_pci_bmdma_init(struct ata_host *host )
{
  struct device *gdev ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  int i ;
  int rc ;
  char const *tmp ;
  struct ata_port *ap ;
  void *bmdma ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  gdev = host->dev;
  __mptr = (struct device const *)gdev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  if (pdev->resource[4].start == 0ULL) {
    ata_bmdma_nodma(host, "BAR4 is zero");
    return;
  } else {
  }
  rc = pci_set_dma_mask(pdev, 4294967295ULL);
  if (rc != 0) {
    ata_bmdma_nodma(host, "failed to set dma mask");
  } else {
  }
  if (rc == 0) {
    rc = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
    if (rc != 0) {
      ata_bmdma_nodma(host, "failed to set consistent dma mask");
    } else {
    }
  } else {
  }
  tmp = dev_driver_string((struct device const *)gdev);
  rc = pcim_iomap_regions(pdev, 16, tmp);
  if (rc != 0) {
    ata_bmdma_nodma(host, "failed to request/iomap BAR4");
    return;
  } else {
  }
  host->iomap = pcim_iomap_table(pdev);
  i = 0;
  goto ldv_36311;
  ldv_36310:
  ap = host->ports[i];
  bmdma = *(host->iomap + 4UL) + (unsigned long )(i * 8);
  tmp___0 = ata_port_is_dummy(ap);
  if (tmp___0 != 0) {
    goto ldv_36309;
  } else {
  }
  ap->ioaddr.bmdma_addr = bmdma;
  if ((ap->flags & 32768UL) == 0UL) {
    tmp___1 = ioread8(bmdma + 2UL);
    if ((tmp___1 & 128U) != 0U) {
      host->flags = host->flags | 1UL;
    } else {
    }
  } else {
  }
  ata_port_desc(ap, "bmdma 0x%llx", pdev->resource[4].start + (resource_size_t )(i * 8));
  ldv_36309:
  i = i + 1;
  ldv_36311: ;
  if (i <= 1) {
    goto ldv_36310;
  } else {
  }
  return;
}
}
int ata_pci_bmdma_prepare_host(struct pci_dev *pdev , struct ata_port_info const * const *ppi ,
                               struct ata_host **r_host )
{
  int rc ;
  {
  rc = ata_pci_sff_prepare_host(pdev, ppi, r_host);
  if (rc != 0) {
    return (rc);
  } else {
  }
  ata_pci_bmdma_init(*r_host);
  return (0);
}
}
int ata_pci_bmdma_init_one(struct pci_dev *pdev , struct ata_port_info const * const *ppi ,
                           struct scsi_host_template *sht , void *host_priv , int hflags )
{
  int tmp ;
  {
  tmp = ata_pci_init_one(pdev, ppi, sht, host_priv, hflags, 1);
  return (tmp);
}
}
void ata_sff_port_init(struct ata_port *ap )
{
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0___0 ;
  struct lock_class_key __key___0 ;
  {
  __init_work(& ap->sff_pio_task.work, 0);
  __constr_expr_0___0.counter = 4195328L;
  ap->sff_pio_task.work.data = __constr_expr_0___0;
  lockdep_init_map(& ap->sff_pio_task.work.lockdep_map, "(&(&ap->sff_pio_task)->work)",
                   & __key, 0);
  INIT_LIST_HEAD(& ap->sff_pio_task.work.entry);
  ap->sff_pio_task.work.func = & ata_sff_pio_task;
  init_timer_key(& ap->sff_pio_task.timer, 2U, "(&(&ap->sff_pio_task)->timer)", & __key___0);
  ap->sff_pio_task.timer.function = & delayed_work_timer_fn;
  ap->sff_pio_task.timer.data = (unsigned long )(& ap->sff_pio_task);
  ap->ctl = 8U;
  ap->last_ctl = 255U;
  return;
}
}
int ata_sff_init(void)
{
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  {
  __lock_name = "ata_sff";
  tmp = __alloc_workqueue_key("ata_sff", 8U, 512, & __key, __lock_name);
  ata_sff_wq = tmp;
  if ((unsigned long )ata_sff_wq == (unsigned long )((struct workqueue_struct *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
void ata_sff_exit(void)
{
  {
  destroy_workqueue(ata_sff_wq);
  return;
}
}
int main(void)
{
  struct ata_queued_cmd *var_group1 ;
  struct ata_port *var_group2 ;
  struct ata_link *var_group3 ;
  unsigned long var_ata_sff_prereset_42_p1 ;
  unsigned int *var_ata_sff_softreset_47_p1 ;
  unsigned long var_ata_sff_softreset_47_p2 ;
  unsigned int *var_sata_sff_hardreset_48_p1 ;
  unsigned long var_sata_sff_hardreset_48_p2 ;
  unsigned int *var_ata_sff_postreset_49_p1 ;
  unsigned int var_ata_sff_dev_select_10_p1 ;
  struct ata_taskfile const *var_ata_sff_tf_load_13_p1 ;
  struct ata_taskfile *var_group4 ;
  struct ata_taskfile const *var_ata_sff_exec_command_15_p1 ;
  struct ata_device *var_group5 ;
  unsigned char *var_ata_sff_data_xfer_17_p1 ;
  unsigned int var_ata_sff_data_xfer_17_p2 ;
  int var_ata_sff_data_xfer_17_p3 ;
  unsigned char *var_ata_sff_data_xfer32_18_p1 ;
  unsigned int var_ata_sff_data_xfer32_18_p2 ;
  int var_ata_sff_data_xfer32_18_p3 ;
  int var_ata_bmdma_interrupt_66_p0 ;
  void *var_ata_bmdma_interrupt_66_p1 ;
  int var_ata_sff_interrupt_38_p0 ;
  void *var_ata_sff_interrupt_38_p1 ;
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_36439;
  ldv_36438:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  ata_sff_qc_issue(var_group1);
  goto ldv_36406;
  case 1:
  ldv_handler_precall();
  ata_sff_qc_fill_rtf(var_group1);
  goto ldv_36406;
  case 2:
  ldv_handler_precall();
  ata_sff_freeze(var_group2);
  goto ldv_36406;
  case 3:
  ldv_handler_precall();
  ata_sff_thaw(var_group2);
  goto ldv_36406;
  case 4:
  ldv_handler_precall();
  ata_sff_prereset(var_group3, var_ata_sff_prereset_42_p1);
  goto ldv_36406;
  case 5:
  ldv_handler_precall();
  ata_sff_softreset(var_group3, var_ata_sff_softreset_47_p1, var_ata_sff_softreset_47_p2);
  goto ldv_36406;
  case 6:
  ldv_handler_precall();
  sata_sff_hardreset(var_group3, var_sata_sff_hardreset_48_p1, var_sata_sff_hardreset_48_p2);
  goto ldv_36406;
  case 7:
  ldv_handler_precall();
  ata_sff_postreset(var_group3, var_ata_sff_postreset_49_p1);
  goto ldv_36406;
  case 8:
  ldv_handler_precall();
  ata_sff_error_handler(var_group2);
  goto ldv_36406;
  case 9:
  ldv_handler_precall();
  ata_sff_dev_select(var_group2, var_ata_sff_dev_select_10_p1);
  goto ldv_36406;
  case 10:
  ldv_handler_precall();
  ata_sff_check_status(var_group2);
  goto ldv_36406;
  case 11:
  ldv_handler_precall();
  ata_sff_tf_load(var_group2, var_ata_sff_tf_load_13_p1);
  goto ldv_36406;
  case 12:
  ldv_handler_precall();
  ata_sff_tf_read(var_group2, var_group4);
  goto ldv_36406;
  case 13:
  ldv_handler_precall();
  ata_sff_exec_command(var_group2, var_ata_sff_exec_command_15_p1);
  goto ldv_36406;
  case 14:
  ldv_handler_precall();
  ata_sff_data_xfer(var_group5, var_ata_sff_data_xfer_17_p1, var_ata_sff_data_xfer_17_p2,
                    var_ata_sff_data_xfer_17_p3);
  goto ldv_36406;
  case 15:
  ldv_handler_precall();
  ata_sff_drain_fifo(var_group1);
  goto ldv_36406;
  case 16:
  ldv_handler_precall();
  ata_sff_lost_interrupt(var_group2);
  goto ldv_36406;
  case 17:
  ldv_handler_precall();
  ata_bmdma_error_handler(var_group2);
  goto ldv_36406;
  case 18:
  ldv_handler_precall();
  ata_bmdma_post_internal_cmd(var_group1);
  goto ldv_36406;
  case 19:
  ldv_handler_precall();
  ata_bmdma_qc_prep(var_group1);
  goto ldv_36406;
  case 20:
  ldv_handler_precall();
  ata_bmdma_qc_issue(var_group1);
  goto ldv_36406;
  case 21:
  ldv_handler_precall();
  ata_bmdma_irq_clear(var_group2);
  goto ldv_36406;
  case 22:
  ldv_handler_precall();
  ata_bmdma_setup(var_group1);
  goto ldv_36406;
  case 23:
  ldv_handler_precall();
  ata_bmdma_start(var_group1);
  goto ldv_36406;
  case 24:
  ldv_handler_precall();
  ata_bmdma_stop(var_group1);
  goto ldv_36406;
  case 25:
  ldv_handler_precall();
  ata_bmdma_status(var_group2);
  goto ldv_36406;
  case 26:
  ldv_handler_precall();
  ata_bmdma_port_start(var_group2);
  goto ldv_36406;
  case 27:
  ldv_handler_precall();
  ata_sff_data_xfer32(var_group5, var_ata_sff_data_xfer32_18_p1, var_ata_sff_data_xfer32_18_p2,
                      var_ata_sff_data_xfer32_18_p3);
  goto ldv_36406;
  case 28:
  ldv_handler_precall();
  ata_bmdma_port_start32(var_group2);
  goto ldv_36406;
  case 29:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  ata_bmdma_interrupt(var_ata_bmdma_interrupt_66_p0, var_ata_bmdma_interrupt_66_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_36406;
  case 30:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  ata_sff_interrupt(var_ata_sff_interrupt_38_p0, var_ata_sff_interrupt_38_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_36406;
  default: ;
  goto ldv_36406;
  }
  ldv_36406: ;
  ldv_36439:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_36438;
  } else {
  }
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_81(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_82(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_83(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_84(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_85(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_86(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_87(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_98(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_96(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_99(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_95(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_100(struct mutex *ldv_func_arg1 ) ;
__inline static int ata_link_active(struct ata_link *link )
{
  unsigned int tmp ;
  {
  tmp = ata_tag_valid(link->active_tag);
  return (tmp != 0U || link->sactive != 0U);
}
}
struct ata_port_operations const sata_pmp_port_ops ;
int sata_pmp_qc_defer_cmd_switch(struct ata_queued_cmd *qc ) ;
void sata_pmp_error_handler(struct ata_port *ap ) ;
struct ata_port_operations const sata_pmp_port_ops =
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ata_std_prereset, 0, & sata_std_hardreset,
    & ata_std_postreset, & sata_pmp_error_handler, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & sata_port_ops};
static unsigned int sata_pmp_read(struct ata_link *link , int reg , u32 *r_val )
{
  struct ata_port *ap ;
  struct ata_device *pmp_dev ;
  struct ata_taskfile tf ;
  unsigned int err_mask ;
  {
  ap = link->ap;
  pmp_dev = (struct ata_device *)(& ap->link.device);
  ata_tf_init(pmp_dev, & tf);
  tf.command = 228U;
  tf.protocol = 1U;
  tf.flags = tf.flags | 7UL;
  tf.feature = (u8 )reg;
  tf.device = (u8 )link->pmp;
  err_mask = ata_exec_internal(pmp_dev, & tf, 0, 3, 0, 0U, 3000UL);
  if (err_mask != 0U) {
    return (err_mask);
  } else {
  }
  *r_val = (u32 )((((int )tf.nsect | ((int )tf.lbal << 8)) | ((int )tf.lbam << 16)) | ((int )tf.lbah << 24));
  return (0U);
}
}
static unsigned int sata_pmp_write(struct ata_link *link , int reg , u32 val )
{
  struct ata_port *ap ;
  struct ata_device *pmp_dev ;
  struct ata_taskfile tf ;
  unsigned int tmp ;
  {
  ap = link->ap;
  pmp_dev = (struct ata_device *)(& ap->link.device);
  ata_tf_init(pmp_dev, & tf);
  tf.command = 232U;
  tf.protocol = 1U;
  tf.flags = tf.flags | 7UL;
  tf.feature = (u8 )reg;
  tf.device = (u8 )link->pmp;
  tf.nsect = (u8 )val;
  tf.lbal = (u8 )(val >> 8);
  tf.lbam = (u8 )(val >> 16);
  tf.lbah = (u8 )(val >> 24);
  tmp = ata_exec_internal(pmp_dev, & tf, 0, 3, 0, 0U, 3000UL);
  return (tmp);
}
}
int sata_pmp_qc_defer_cmd_switch(struct ata_queued_cmd *qc )
{
  struct ata_link *link ;
  struct ata_port *ap ;
  int tmp ;
  int tmp___0 ;
  {
  link = (qc->dev)->link;
  ap = link->ap;
  if ((unsigned long )ap->excl_link == (unsigned long )((struct ata_link *)0) || (unsigned long )ap->excl_link == (unsigned long )link) {
    if (ap->nr_active_links == 0) {
      qc->flags = qc->flags | 32UL;
      tmp = ata_std_qc_defer(qc);
      return (tmp);
    } else {
      tmp___0 = ata_link_active(link);
      if (tmp___0 != 0) {
        qc->flags = qc->flags | 32UL;
        tmp = ata_std_qc_defer(qc);
        return (tmp);
      } else {
      }
    }
    ap->excl_link = link;
  } else {
  }
  return (2);
}
}
int sata_pmp_scr_read(struct ata_link *link , int reg , u32 *r_val )
{
  unsigned int err_mask ;
  {
  if (reg > 2) {
    return (-22);
  } else {
  }
  err_mask = sata_pmp_read(link, reg, r_val);
  if (err_mask != 0U) {
    ata_link_printk((struct ata_link const *)link, "\f", "failed to read SCR %d (Emask=0x%x)\n",
                    reg, err_mask);
    return (-5);
  } else {
  }
  return (0);
}
}
int sata_pmp_scr_write(struct ata_link *link , int reg , u32 val )
{
  unsigned int err_mask ;
  {
  if (reg > 2) {
    return (-22);
  } else {
  }
  err_mask = sata_pmp_write(link, reg, val);
  if (err_mask != 0U) {
    ata_link_printk((struct ata_link const *)link, "\f", "failed to write SCR %d (Emask=0x%x)\n",
                    reg, err_mask);
    return (-5);
  } else {
  }
  return (0);
}
}
int sata_pmp_set_lpm(struct ata_link *link , enum ata_lpm_policy policy , unsigned int hints )
{
  int tmp ;
  {
  tmp = sata_link_scr_lpm(link, policy, 1);
  return (tmp);
}
}
static int sata_pmp_read_gscr(struct ata_device *dev , u32 *gscr )
{
  int gscr_to_read[7U] ;
  int i ;
  int reg ;
  unsigned int err_mask ;
  {
  gscr_to_read[0] = 0;
  gscr_to_read[1] = 1;
  gscr_to_read[2] = 2;
  gscr_to_read[3] = 32;
  gscr_to_read[4] = 33;
  gscr_to_read[5] = 64;
  gscr_to_read[6] = 96;
  i = 0;
  goto ldv_32759;
  ldv_32758:
  reg = gscr_to_read[i];
  err_mask = sata_pmp_read(dev->link, reg, gscr + (unsigned long )reg);
  if (err_mask != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\v", "failed to read PMP GSCR[%d] (Emask=0x%x)\n",
                   reg, err_mask);
    return (-5);
  } else {
  }
  i = i + 1;
  ldv_32759: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_32758;
  } else {
  }
  return (0);
}
}
static char const *sata_pmp_spec_rev_str(u32 const *gscr )
{
  u32 rev ;
  {
  rev = *(gscr + 1UL);
  if ((rev & 8U) != 0U) {
    return ("1.2");
  } else {
  }
  if ((rev & 4U) != 0U) {
    return ("1.1");
  } else {
  }
  if ((rev & 2U) != 0U) {
    return ("1.0");
  } else {
  }
  return ("<unknown>");
}
}
static int sata_pmp_configure(struct ata_device *dev , int print_info )
{
  struct ata_port *ap ;
  u32 *gscr ;
  u16 vendor ;
  u16 devid ;
  unsigned int err_mask ;
  char const *reason ;
  int nr_ports ;
  int rc ;
  u32 reg ;
  char const *tmp ;
  {
  ap = (dev->link)->ap;
  gscr = (u32 *)(& dev->ldv_38497.gscr);
  vendor = (u16 )*gscr;
  devid = (u16 )(*gscr >> 16);
  err_mask = 0U;
  nr_ports = (int )*(gscr + 2UL) & 15;
  if (nr_ports <= 0 || nr_ports > 15) {
    rc = -22;
    reason = "invalid nr_ports";
    goto fail;
  } else {
  }
  if ((ap->flags & 262144UL) != 0UL && (*(gscr + 64UL) & 8U) != 0U) {
    dev->flags = dev->flags | 128UL;
  } else {
  }
  err_mask = sata_pmp_write(dev->link, 33, 65536U);
  if (err_mask != 0U) {
    rc = -5;
    reason = "failed to write GSCR_ERROR_EN";
    goto fail;
  } else {
  }
  if ((unsigned int )vendor == 4245U && (unsigned int )devid == 14118U) {
    err_mask = sata_pmp_read(& ap->link, 129, & reg);
    if (err_mask != 0U) {
      rc = -5;
      reason = "failed to read Sil3726 Private Register";
      goto fail;
    } else {
    }
    reg = reg & 4294967294U;
    err_mask = sata_pmp_write(& ap->link, 129, reg);
    if (err_mask != 0U) {
      rc = -5;
      reason = "failed to write Sil3726 Private Register";
      goto fail;
    } else {
    }
  } else {
  }
  if (print_info != 0) {
    tmp = sata_pmp_spec_rev_str((u32 const *)gscr);
    ata_dev_printk((struct ata_device const *)dev, "\016", "Port Multiplier %s, 0x%04x:0x%04x r%d, %d ports, feat 0x%x/0x%x\n",
                   tmp, (int )vendor, (int )devid, (*(gscr + 1UL) >> 8) & 255U, nr_ports,
                   *(gscr + 96UL), *(gscr + 64UL));
    if ((dev->flags & 128UL) == 0UL) {
      ata_dev_printk((struct ata_device const *)dev, "\016", "Asynchronous notification not supported, hotplug won\'t work on fan-out ports. Use warm-plug instead.\n");
    } else {
    }
  } else {
  }
  return (0);
  fail:
  ata_dev_printk((struct ata_device const *)dev, "\v", "failed to configure Port Multiplier (%s, Emask=0x%x)\n",
                 reason, err_mask);
  return (rc);
}
}
static int sata_pmp_init_links(struct ata_port *ap , int nr_ports )
{
  struct ata_link *pmp_link ;
  int i ;
  int err ;
  void *tmp ;
  struct ata_link *link ;
  struct ata_eh_context *ehc ;
  {
  pmp_link = ap->pmp_link;
  if ((unsigned long )pmp_link == (unsigned long )((struct ata_link *)0)) {
    tmp = kzalloc(107640UL, 16U);
    pmp_link = (struct ata_link *)tmp;
    if ((unsigned long )pmp_link == (unsigned long )((struct ata_link *)0)) {
      return (-12);
    } else {
    }
    i = 0;
    goto ldv_32787;
    ldv_32786:
    ata_link_init(ap, pmp_link + (unsigned long )i, i);
    i = i + 1;
    ldv_32787: ;
    if (i <= 14) {
      goto ldv_32786;
    } else {
    }
    ap->pmp_link = pmp_link;
    i = 0;
    goto ldv_32791;
    ldv_32790:
    err = ata_tlink_add(pmp_link + (unsigned long )i);
    if (err != 0) {
      goto err_tlink;
    } else {
    }
    i = i + 1;
    ldv_32791: ;
    if (i <= 14) {
      goto ldv_32790;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_32796;
  ldv_32795:
  link = pmp_link + (unsigned long )i;
  ehc = & link->eh_context;
  link->flags = 0U;
  ehc->i.probe_mask = ehc->i.probe_mask | 3U;
  ehc->i.action = ehc->i.action | 6U;
  i = i + 1;
  ldv_32796: ;
  if (i < nr_ports) {
    goto ldv_32795;
  } else {
  }
  return (0);
  err_tlink: ;
  goto ldv_32799;
  ldv_32798:
  ata_tlink_delete(pmp_link + (unsigned long )i);
  ldv_32799:
  i = i - 1;
  if (i >= 0) {
    goto ldv_32798;
  } else {
  }
  kfree((void const *)pmp_link);
  ap->pmp_link = 0;
  return (err);
}
}
static void sata_pmp_quirks(struct ata_port *ap )
{
  u32 *gscr ;
  u16 vendor ;
  u16 devid ;
  struct ata_link *link ;
  {
  gscr = (u32 *)(& ((struct ata_device *)(& ap->link.device))->ldv_38497.gscr);
  vendor = (u16 )*gscr;
  devid = (u16 )(*gscr >> 16);
  if ((unsigned int )vendor == 4245U && (unsigned int )devid == 14118U) {
    link = ata_link_next(0, ap, 0);
    goto ldv_32809;
    ldv_32808:
    link->flags = link->flags | 256U;
    if (link->pmp <= 4) {
      link->flags = link->flags | 8U;
    } else {
    }
    if (link->pmp == 5) {
      link->flags = link->flags | 20U;
    } else {
    }
    link = ata_link_next(link, ap, 0);
    ldv_32809: ;
    if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
      goto ldv_32808;
    } else {
    }
  } else
  if ((unsigned int )vendor == 4245U && (unsigned int )devid == 18211U) {
    link = ata_link_next(0, ap, 0);
    goto ldv_32812;
    ldv_32811:
    link->flags = link->flags | 256U;
    if (link->pmp <= 1) {
      link->flags = link->flags | 8U;
    } else {
    }
    if (link->pmp == 2) {
      link->flags = link->flags | 12U;
    } else {
    }
    link = ata_link_next(link, ap, 0);
    ldv_32812: ;
    if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
      goto ldv_32811;
    } else {
    }
  } else
  if ((unsigned int )vendor == 4245U && (unsigned int )devid == 18214U) {
    link = ata_link_next(0, ap, 0);
    goto ldv_32815;
    ldv_32814:
    link->flags = link->flags | 256U;
    if (link->pmp <= 5) {
      link->flags = link->flags | 12U;
    } else {
    }
    if (link->pmp == 6) {
      link->flags = link->flags | 20U;
    } else {
    }
    link = ata_link_next(link, ap, 0);
    ldv_32815: ;
    if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
      goto ldv_32814;
    } else {
    }
  } else
  if ((unsigned int )vendor == 4245U && ((((unsigned int )devid == 22307U || (unsigned int )devid == 22323U) || (unsigned int )devid == 22324U) || (unsigned int )devid == 22340U)) {
    (ap->pmp_link + ((unsigned long )ap->nr_pmp_links + 0xffffffffffffffffUL))->flags = (ap->pmp_link + ((unsigned long )ap->nr_pmp_links + 0xffffffffffffffffUL))->flags | 32U;
  } else
  if ((unsigned int )vendor == 6523U && (unsigned int )devid == 9042U) {
    link = ata_link_next(0, ap, 0);
    goto ldv_32818;
    ldv_32817:
    link->flags = link->flags | 268U;
    link = ata_link_next(link, ap, 0);
    ldv_32818: ;
    if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
      goto ldv_32817;
    } else {
    }
  } else {
  }
  return;
}
}
int sata_pmp_attach(struct ata_device *dev )
{
  struct ata_link *link ;
  struct ata_port *ap ;
  unsigned long flags ;
  struct ata_link *tlink ;
  int rc ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int __ret_warn_on ;
  long tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  int __ret_warn_on___0 ;
  long tmp___4 ;
  {
  link = dev->link;
  ap = link->ap;
  tmp = sata_pmp_supported(ap);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    ata_dev_printk((struct ata_device const *)dev, "\v", "host does not support Port Multiplier\n");
    return (-22);
  } else {
  }
  tmp___1 = ata_is_host_link((struct ata_link const *)link);
  if (tmp___1 == 0) {
    ata_dev_printk((struct ata_device const *)dev, "\v", "Port Multipliers cannot be nested\n");
    return (-22);
  } else {
  }
  if (dev->devno != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\v", "Port Multiplier must be the first device\n");
    return (-22);
  } else {
  }
  __ret_warn_on = link->pmp != 0;
  tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-pmp.c.prepared",
                       563);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  link->pmp = 15;
  rc = sata_pmp_read_gscr(dev, (u32 *)(& dev->ldv_38497.gscr));
  if (rc != 0) {
    goto fail;
  } else {
  }
  rc = sata_pmp_configure(dev, 1);
  if (rc != 0) {
    goto fail;
  } else {
  }
  rc = sata_pmp_init_links(ap, (int )dev->ldv_38497.gscr[2] & 15);
  if (rc != 0) {
    ata_dev_printk((struct ata_device const *)dev, "\016", "failed to initialize PMP links\n");
    goto fail;
  } else {
  }
  tmp___3 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  __ret_warn_on___0 = ap->nr_pmp_links != 0;
  tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___4 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-pmp.c.prepared",
                       584);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  ap->nr_pmp_links = (int )dev->ldv_38497.gscr[2] & 15;
  spin_unlock_irqrestore(ap->lock, flags);
  sata_pmp_quirks(ap);
  if ((unsigned long )(ap->ops)->pmp_attach != (unsigned long )((void (*)(struct ata_port * ))0)) {
    (*((ap->ops)->pmp_attach))(ap);
  } else {
  }
  tlink = ata_link_next(0, ap, 0);
  goto ldv_32837;
  ldv_32836:
  sata_link_init_spd(tlink);
  tlink = ata_link_next(tlink, ap, 0);
  ldv_32837: ;
  if ((unsigned long )tlink != (unsigned long )((struct ata_link *)0)) {
    goto ldv_32836;
  } else {
  }
  return (0);
  fail:
  link->pmp = 0;
  return (rc);
}
}
static void sata_pmp_detach(struct ata_device *dev )
{
  struct ata_link *link ;
  struct ata_port *ap ;
  struct ata_link *tlink ;
  unsigned long flags ;
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  link = dev->link;
  ap = link->ap;
  ata_dev_printk((struct ata_device const *)dev, "\016", "Port Multiplier detaching\n");
  tmp = ata_is_host_link((struct ata_link const *)link);
  __ret_warn_on = (tmp == 0 || dev->devno != 0U) || link->pmp != 15;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/ata/libata.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/18/dscv_tempdir/dscv/ri/32_7a/drivers/ata/libata-pmp.c.prepared",
                       623);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )(ap->ops)->pmp_detach != (unsigned long )((void (*)(struct ata_port * ))0)) {
    (*((ap->ops)->pmp_detach))(ap);
  } else {
  }
  tlink = ata_link_next(0, ap, 0);
  goto ldv_32849;
  ldv_32848:
  ata_eh_detach_dev((struct ata_device *)(& tlink->device));
  tlink = ata_link_next(tlink, ap, 0);
  ldv_32849: ;
  if ((unsigned long )tlink != (unsigned long )((struct ata_link *)0)) {
    goto ldv_32848;
  } else {
  }
  tmp___1 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  ap->nr_pmp_links = 0;
  link->pmp = 0;
  spin_unlock_irqrestore(ap->lock, flags);
  return;
}
}
static int sata_pmp_same_pmp(struct ata_device *dev , u32 const *new_gscr )
{
  u32 const *old_gscr ;
  u16 old_vendor ;
  u16 new_vendor ;
  u16 old_devid ;
  u16 new_devid ;
  int old_nr_ports ;
  int new_nr_ports ;
  {
  old_gscr = (u32 const *)(& dev->ldv_38497.gscr);
  old_vendor = (u16 )*old_gscr;
  new_vendor = (u16 )*new_gscr;
  old_devid = (u16 )(*old_gscr >> 16);
  new_devid = (u16 )(*new_gscr >> 16);
  old_nr_ports = (int )*(old_gscr + 2UL) & 15;
  new_nr_ports = (int )*(new_gscr + 2UL) & 15;
  if ((int )old_vendor != (int )new_vendor) {
    ata_dev_printk((struct ata_device const *)dev, "\016", "Port Multiplier vendor mismatch \'0x%x\' != \'0x%x\'\n",
                   (int )old_vendor, (int )new_vendor);
    return (0);
  } else {
  }
  if ((int )old_devid != (int )new_devid) {
    ata_dev_printk((struct ata_device const *)dev, "\016", "Port Multiplier device ID mismatch \'0x%x\' != \'0x%x\'\n",
                   (int )old_devid, (int )new_devid);
    return (0);
  } else {
  }
  if (old_nr_ports != new_nr_ports) {
    ata_dev_printk((struct ata_device const *)dev, "\016", "Port Multiplier nr_ports mismatch \'0x%x\' != \'0x%x\'\n",
                   old_nr_ports, new_nr_ports);
    return (0);
  } else {
  }
  return (1);
}
}
static int sata_pmp_revalidate(struct ata_device *dev , unsigned int new_class )
{
  struct ata_link *link ;
  struct ata_port *ap ;
  u32 *gscr ;
  int rc ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  size_t __len ;
  void *__ret ;
  {
  link = dev->link;
  ap = link->ap;
  gscr = (u32 *)(& ap->sector_buf);
  ata_eh_about_to_do(link, 0, 1U);
  tmp = ata_dev_enabled((struct ata_device const *)dev);
  if (tmp == 0U) {
    rc = -19;
    goto fail;
  } else {
  }
  tmp___0 = ata_class_enabled(new_class);
  if (tmp___0 != 0U && new_class != 5U) {
    rc = -19;
    goto fail;
  } else {
  }
  rc = sata_pmp_read_gscr(dev, gscr);
  if (rc != 0) {
    goto fail;
  } else {
  }
  tmp___1 = sata_pmp_same_pmp(dev, (u32 const *)gscr);
  if (tmp___1 == 0) {
    rc = -19;
    goto fail;
  } else {
  }
  __len = 512UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& dev->ldv_38497.gscr), (void const *)gscr, __len);
  } else {
    __ret = memcpy((void *)(& dev->ldv_38497.gscr), (void const *)gscr,
                             __len);
  }
  rc = sata_pmp_configure(dev, 0);
  if (rc != 0) {
    goto fail;
  } else {
  }
  ata_eh_done(link, 0, 1U);
  return (0);
  fail:
  ata_dev_printk((struct ata_device const *)dev, "\v", "PMP revalidation failed (errno=%d)\n",
                 rc);
  return (rc);
}
}
static int sata_pmp_revalidate_quick(struct ata_device *dev )
{
  unsigned int err_mask ;
  u32 prod_id ;
  {
  err_mask = sata_pmp_read(dev->link, 0, & prod_id);
  if (err_mask != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\v", "failed to read PMP product ID (Emask=0x%x)\n",
                   err_mask);
    return (-5);
  } else {
  }
  if (dev->ldv_38497.gscr[0] != prod_id) {
    ata_dev_printk((struct ata_device const *)dev, "\v", "PMP product ID mismatch\n");
    return (-5);
  } else {
  }
  return (0);
}
}
static int sata_pmp_eh_recover_pmp(struct ata_port *ap , int (*prereset)(struct ata_link * ,
                                                                         unsigned long ) ,
                                   int (*softreset)(struct ata_link * , unsigned int * ,
                                                    unsigned long ) , int (*hardreset)(struct ata_link * ,
                                                                                        unsigned int * ,
                                                                                        unsigned long ) ,
                                   void (*postreset)(struct ata_link * , unsigned int * ) )
{
  struct ata_link *link ;
  struct ata_eh_context *ehc ;
  struct ata_device *dev ;
  int tries ;
  int detach ;
  int rc ;
  int reval_failed ;
  struct ata_link *tlink ;
  struct ata_eh_context *ehc___0 ;
  int _min1 ;
  int _min2 ;
  {
  link = & ap->link;
  ehc = & link->eh_context;
  dev = (struct ata_device *)(& link->device);
  tries = 5;
  detach = 0;
  rc = 0;
  reval_failed = 0;
  if ((dev->flags & 16777216UL) != 0UL) {
    detach = 1;
    goto fail;
  } else {
  }
  retry:
  ehc->classes[0] = 0U;
  if ((ehc->i.action & 6U) != 0U) {
    rc = ata_eh_reset(link, 0, prereset, softreset, hardreset, postreset);
    if (rc != 0) {
      ata_link_printk((struct ata_link const *)link, "\v", "failed to reset PMP, giving up\n");
      goto fail;
    } else {
    }
    tlink = ata_link_next(0, ap, 0);
    goto ldv_32901;
    ldv_32900:
    ehc___0 = & tlink->eh_context;
    ehc___0->i.probe_mask = ehc___0->i.probe_mask | 3U;
    ehc___0->i.action = ehc___0->i.action | 6U;
    tlink = ata_link_next(tlink, ap, 0);
    ldv_32901: ;
    if ((unsigned long )tlink != (unsigned long )((struct ata_link *)0)) {
      goto ldv_32900;
    } else {
    }
  } else {
  }
  if ((int )ehc->i.action & 1) {
    rc = sata_pmp_revalidate(dev, ehc->classes[0]);
  } else {
    rc = sata_pmp_revalidate_quick(dev);
  }
  if (rc != 0) {
    tries = tries - 1;
    if (rc == -19) {
      ehc->i.probe_mask = ehc->i.probe_mask | 3U;
      detach = 1;
      _min1 = tries;
      _min2 = 2;
      tries = _min1 < _min2 ? _min1 : _min2;
    } else {
    }
    if (tries != 0) {
      if (reval_failed != 0) {
        sata_down_spd_limit(link, 0U);
      } else {
        reval_failed = 1;
      }
      ehc->i.action = ehc->i.action | 6U;
      goto retry;
    } else {
      ata_dev_printk((struct ata_device const *)dev, "\v", "failed to recover PMP after %d tries, giving up\n",
                     5);
      goto fail;
    }
  } else {
  }
  ehc->i.flags = 0U;
  return (0);
  fail:
  sata_pmp_detach(dev);
  if (detach != 0) {
    ata_eh_detach_dev(dev);
  } else {
    ata_dev_disable(dev);
  }
  return (rc);
}
}
static int sata_pmp_eh_handle_disabled_links(struct ata_port *ap )
{
  struct ata_link *link ;
  unsigned long flags ;
  int rc ;
  raw_spinlock_t *tmp ;
  unsigned long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  link = ata_link_next(0, ap, 0);
  goto ldv_32920;
  ldv_32919: ;
  if ((link->flags & 64U) == 0U) {
    goto ldv_32915;
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  tmp___0 = ata_deadline(jiffies, 5000UL);
  sata_link_hardreset(link, (unsigned long const *)(& sata_deb_timing_normal), tmp___0,
                      0, 0);
  rc = sata_scr_write(link, 1, 65536U);
  if (rc != 0) {
    ata_link_printk((struct ata_link const *)link, "\v", "failed to clear SError.N (errno=%d)\n",
                    rc);
    return (rc);
  } else {
  }
  tmp___1 = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  ldv_32915:
  link = ata_link_next(link, ap, 0);
  ldv_32920: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_32919;
  } else {
  }
  spin_unlock_irqrestore(ap->lock, flags);
  return (0);
}
}
static int sata_pmp_handle_link_fail(struct ata_link *link , int *link_tries )
{
  struct ata_port *ap ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  ap = link->ap;
  if (*(link_tries + (unsigned long )link->pmp) != 0) {
    *(link_tries + (unsigned long )link->pmp) = *(link_tries + (unsigned long )link->pmp) - 1;
    if (*(link_tries + (unsigned long )link->pmp) != 0) {
      return (1);
    } else {
    }
  } else {
  }
  if ((link->flags & 64U) == 0U) {
    ata_link_printk((struct ata_link const *)link, "\f", "failed to recover link after %d tries, disabling\n",
                    3);
    tmp = spinlock_check(ap->lock);
    flags = _raw_spin_lock_irqsave(tmp);
    link->flags = link->flags | 64U;
    spin_unlock_irqrestore(ap->lock, flags);
  } else {
  }
  ata_dev_disable((struct ata_device *)(& link->device));
  link->eh_context.i.action = 0U;
  return (0);
}
}
static int sata_pmp_eh_recover(struct ata_port *ap )
{
  struct ata_port_operations *ops ;
  int pmp_tries ;
  int link_tries[15U] ;
  struct ata_link *pmp_link ;
  struct ata_device *pmp_dev ;
  struct ata_eh_context *pmp_ehc ;
  u32 *gscr ;
  struct ata_link *link ;
  struct ata_device *dev ;
  unsigned int err_mask ;
  u32 gscr_error ;
  u32 sntf ;
  int cnt ;
  int rc ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  ops = ap->ops;
  pmp_link = & ap->link;
  pmp_dev = (struct ata_device *)(& pmp_link->device);
  pmp_ehc = & pmp_link->eh_context;
  gscr = (u32 *)(& pmp_dev->ldv_38497.gscr);
  pmp_tries = 5;
  link = ata_link_next(0, ap, 0);
  goto ldv_32949;
  ldv_32948:
  link_tries[link->pmp] = 3;
  link = ata_link_next(link, ap, 0);
  ldv_32949: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_32948;
  } else {
  }
  retry:
  tmp = sata_pmp_attached(ap);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    rc = ata_eh_recover(ap, ops->prereset, ops->softreset, ops->hardreset, ops->postreset,
                        0);
    if (rc != 0) {
      dev = ata_dev_next(0, & ap->link, 2);
      goto ldv_32953;
      ldv_32952:
      ata_dev_disable(dev);
      dev = ata_dev_next(dev, & ap->link, 2);
      ldv_32953: ;
      if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
        goto ldv_32952;
      } else {
      }
      return (rc);
    } else {
    }
    if (pmp_dev->class != 5U) {
      return (0);
    } else {
    }
    link = ata_link_next(0, ap, 0);
    goto ldv_32956;
    ldv_32955:
    link_tries[link->pmp] = 3;
    link = ata_link_next(link, ap, 0);
    ldv_32956: ;
    if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
      goto ldv_32955;
    } else {
    }
  } else {
  }
  rc = sata_pmp_eh_recover_pmp(ap, ops->prereset, ops->softreset, ops->hardreset,
                               ops->postreset);
  if (rc != 0) {
    goto pmp_fail;
  } else {
  }
  if ((*(gscr + 96UL) & 8U) != 0U) {
    *(gscr + 96UL) = *(gscr + 96UL) & 4294967287U;
    err_mask = sata_pmp_write(pmp_link, 96, *(gscr + 96UL));
    if (err_mask != 0U) {
      ata_link_printk((struct ata_link const *)pmp_link, "\f", "failed to disable NOTIFY (err_mask=0x%x)\n",
                      err_mask);
      goto pmp_fail;
    } else {
    }
  } else {
  }
  rc = sata_pmp_eh_handle_disabled_links(ap);
  if (rc != 0) {
    goto pmp_fail;
  } else {
  }
  rc = ata_eh_recover(ap, ops->pmp_prereset, ops->pmp_softreset, ops->pmp_hardreset,
                      ops->pmp_postreset, & link);
  if (rc != 0) {
    goto link_fail;
  } else {
  }
  rc = sata_scr_read(& ap->link, 4, & sntf);
  if (rc == 0) {
    sata_scr_write(& ap->link, 4, sntf);
  } else {
  }
  link = ata_link_next(0, ap, 0);
  goto ldv_32961;
  ldv_32960: ;
  if ((unsigned int )link->lpm_policy > 1U) {
    return (0);
  } else {
  }
  link = ata_link_next(link, ap, 0);
  ldv_32961: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_32960;
  } else {
  }
  if ((pmp_dev->flags & 128UL) != 0UL) {
    *(gscr + 96UL) = *(gscr + 96UL) | 8U;
    err_mask = sata_pmp_write(pmp_link, 96, *(gscr + 96UL));
    if (err_mask != 0U) {
      ata_dev_printk((struct ata_device const *)pmp_dev, "\v", "failed to write PMP_FEAT_EN (Emask=0x%x)\n",
                     err_mask);
      rc = -5;
      goto pmp_fail;
    } else {
    }
  } else {
  }
  err_mask = sata_pmp_read(pmp_link, 32, & gscr_error);
  if (err_mask != 0U) {
    ata_dev_printk((struct ata_device const *)pmp_dev, "\v", "failed to read PMP_GSCR_ERROR (Emask=0x%x)\n",
                   err_mask);
    rc = -5;
    goto pmp_fail;
  } else {
  }
  cnt = 0;
  link = ata_link_next(0, ap, 0);
  goto ldv_32965;
  ldv_32964: ;
  if (((u32 )(1 << link->pmp) & gscr_error) == 0U) {
    goto ldv_32963;
  } else {
  }
  tmp___1 = sata_pmp_handle_link_fail(link, (int *)(& link_tries));
  if (tmp___1 != 0) {
    ata_ehi_hotplugged(& link->eh_context.i);
    cnt = cnt + 1;
  } else {
    ata_link_printk((struct ata_link const *)link, "\f", "PHY status changed but maxed out on retries, giving up\n");
    ata_link_printk((struct ata_link const *)link, "\f", "Manually issue scan to resume this link\n");
  }
  ldv_32963:
  link = ata_link_next(link, ap, 0);
  ldv_32965: ;
  if ((unsigned long )link != (unsigned long )((struct ata_link *)0)) {
    goto ldv_32964;
  } else {
  }
  if (cnt != 0) {
    ata_port_printk((struct ata_port const *)ap, "\016", "PMP SError.N set for some ports, repeating recovery\n");
    goto retry;
  } else {
  }
  return (0);
  link_fail:
  tmp___2 = sata_pmp_handle_link_fail(link, (int *)(& link_tries));
  if (tmp___2 != 0) {
    pmp_ehc->i.action = pmp_ehc->i.action | 6U;
    goto retry;
  } else {
  }
  pmp_fail: ;
  if ((ap->pflags & 512U) != 0U) {
    return (rc);
  } else {
  }
  tmp___3 = sata_pmp_attached(ap);
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    goto retry;
  } else {
  }
  pmp_tries = pmp_tries - 1;
  if (pmp_tries != 0) {
    pmp_ehc->i.action = pmp_ehc->i.action | 6U;
    goto retry;
  } else {
  }
  ata_port_printk((struct ata_port const *)ap, "\v", "failed to recover PMP after %d tries, giving up\n",
                  5);
  sata_pmp_detach(pmp_dev);
  ata_dev_disable(pmp_dev);
  return (rc);
}
}
void sata_pmp_error_handler(struct ata_port *ap )
{
  {
  ata_eh_autopsy(ap);
  ata_eh_report(ap);
  sata_pmp_eh_recover(ap);
  ata_eh_finish(ap);
  return;
}
}
void ldv_main5_sequence_infinite_withcheck_stateful(void)
{
  struct ata_port *var_group1 ;
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_33008;
  ldv_33007:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  sata_pmp_error_handler(var_group1);
  goto ldv_33005;
  default: ;
  goto ldv_33005;
  }
  ldv_33005: ;
  ldv_33008:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_33007;
  } else {
  }
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_95(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_96(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_98(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_99(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_100(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_112(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_115(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_114(struct mutex *ldv_func_arg1 ) ;
extern int kobject_uevent_env(struct kobject * , enum kobject_action , char ** ) ;
extern acpi_status acpi_evaluate_object(acpi_handle , acpi_string , struct acpi_object_list * ,
                                        struct acpi_buffer * ) ;
extern acpi_status acpi_install_notify_handler(acpi_handle , u32 , void (*)(acpi_handle ,
                                                                              u32 ,
                                                                              void * ) ,
                                               void * ) ;
extern acpi_status acpi_remove_notify_handler(acpi_handle , u32 , void (*)(acpi_handle ,
                                                                             u32 ,
                                                                             void * ) ) ;
extern int acpi_bus_get_device(acpi_handle , struct acpi_device ** ) ;
extern int acpi_bus_set_power(acpi_handle , int ) ;
extern int acpi_power_resource_register_device(struct device * , acpi_handle ) ;
extern void acpi_power_resource_unregister_device(struct device * , acpi_handle ) ;
extern acpi_handle acpi_get_child(acpi_handle , u64 ) ;
extern int acpi_pm_device_sleep_state(struct device * , int * , int ) ;
extern int acpi_pm_device_run_wake(struct device * , bool ) ;
extern int scsi_register_acpi_bus_type(struct acpi_bus_type * ) ;
extern void scsi_unregister_acpi_bus_type(struct acpi_bus_type * ) ;
extern int scsi_is_host_device(struct device const * ) ;
__inline static struct ata_acpi_gtm const *ata_acpi_init_gtm(struct ata_port *ap )
{
  {
  if ((ap->pflags & 524288U) != 0U) {
    return ((struct ata_acpi_gtm const *)(& ap->__acpi_init_gtm));
  } else {
  }
  return (0);
}
}
int ata_acpi_stm(struct ata_port *ap , struct ata_acpi_gtm const *stm ) ;
int ata_acpi_gtm(struct ata_port *ap , struct ata_acpi_gtm *gtm ) ;
unsigned long ata_acpi_gtm_xfermask(struct ata_device *dev , struct ata_acpi_gtm const *gtm ) ;
acpi_handle ata_ap_acpi_handle(struct ata_port *ap ) ;
acpi_handle ata_dev_acpi_handle(struct ata_device *dev ) ;
int ata_acpi_cbl_80wire(struct ata_port *ap , struct ata_acpi_gtm const *gtm ) ;
extern struct bus_type pci_bus_type ;
__inline static void device_set_run_wake(struct device *dev , bool enable )
{
  {
  dev->power.run_wake = (unsigned char )enable;
  return;
}
}
extern int scsi_is_sdev_device(struct device const * ) ;
extern int scsi_autopm_get_device(struct scsi_device * ) ;
unsigned int ata_acpi_gtf_filter = 7U;
static int is_pci_dev(struct device *dev )
{
  {
  return ((unsigned long )dev->bus == (unsigned long )(& pci_bus_type));
}
}
static void ata_acpi_clear_gtf(struct ata_device *dev )
{
  {
  kfree((void const *)dev->gtf_cache);
  dev->gtf_cache = 0;
  return;
}
}
acpi_handle ata_ap_acpi_handle(struct ata_port *ap )
{
  acpi_handle tmp ;
  {
  if ((ap->flags & 131072UL) != 0UL) {
    return (0);
  } else {
  }
  tmp = acpi_get_child(((ap->host)->dev)->acpi_node.handle, (u64 )ap->port_no);
  return (tmp);
}
}
acpi_handle ata_dev_acpi_handle(struct ata_device *dev )
{
  acpi_integer adr ;
  struct ata_port *ap ;
  bool tmp ;
  int tmp___0 ;
  acpi_handle tmp___1 ;
  acpi_handle tmp___2 ;
  acpi_handle tmp___3 ;
  {
  ap = (dev->link)->ap;
  if ((dev->flags & 268435456UL) != 0UL) {
    return (0);
  } else {
  }
  if ((ap->flags & 131072UL) != 0UL) {
    tmp = sata_pmp_attached(ap);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      adr = (acpi_integer )((ap->port_no << 16) | 65535U);
    } else {
      adr = (acpi_integer )((ap->port_no << 16) | (unsigned int )(dev->link)->pmp);
    }
    tmp___1 = acpi_get_child(((ap->host)->dev)->acpi_node.handle, adr);
    return (tmp___1);
  } else {
    tmp___2 = ata_ap_acpi_handle(ap);
    tmp___3 = acpi_get_child(tmp___2, (u64 )dev->devno);
    return (tmp___3);
  }
}
}
static void ata_acpi_detach_device(struct ata_port *ap , struct ata_device *dev )
{
  struct ata_link *tlink ;
  struct ata_device *tdev ;
  {
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    dev->flags = dev->flags | 16777216UL;
  } else {
    tlink = ata_link_next(0, ap, 0);
    goto ldv_38715;
    ldv_38714:
    tdev = ata_dev_next(0, tlink, 2);
    goto ldv_38712;
    ldv_38711:
    tdev->flags = tdev->flags | 16777216UL;
    tdev = ata_dev_next(tdev, tlink, 2);
    ldv_38712: ;
    if ((unsigned long )tdev != (unsigned long )((struct ata_device *)0)) {
      goto ldv_38711;
    } else {
    }
    tlink = ata_link_next(tlink, ap, 0);
    ldv_38715: ;
    if ((unsigned long )tlink != (unsigned long )((struct ata_link *)0)) {
      goto ldv_38714;
    } else {
    }
  }
  ata_port_schedule_eh(ap);
  return;
}
}
static void ata_acpi_handle_hotplug(struct ata_port *ap , struct ata_device *dev ,
                                    u32 event )
{
  struct ata_eh_info *ehi ;
  int wait ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  ehi = & ap->link.eh_info;
  wait = 0;
  tmp = spinlock_check(ap->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  switch (event) {
  case 0U: ;
  case 1U:
  ata_ehi_push_desc(ehi, "ACPI event");
  ata_ehi_hotplugged(ehi);
  ata_port_freeze(ap);
  goto ldv_38730;
  case 3U:
  ata_ehi_push_desc(ehi, "ACPI event");
  ata_acpi_detach_device(ap, dev);
  wait = 1;
  goto ldv_38730;
  }
  ldv_38730:
  spin_unlock_irqrestore(ap->lock, flags);
  if (wait != 0) {
    ata_port_wait_eh(ap);
  } else {
  }
  return;
}
}
static void ata_acpi_dev_notify_dock(acpi_handle handle , u32 event , void *data )
{
  struct ata_device *dev ;
  {
  dev = (struct ata_device *)data;
  ata_acpi_handle_hotplug((dev->link)->ap, dev, event);
  return;
}
}
static void ata_acpi_ap_notify_dock(acpi_handle handle , u32 event , void *data )
{
  struct ata_port *ap ;
  {
  ap = (struct ata_port *)data;
  ata_acpi_handle_hotplug(ap, 0, event);
  return;
}
}
static void ata_acpi_uevent(struct ata_port *ap , struct ata_device *dev , u32 event )
{
  struct kobject *kobj ;
  char event_string[20U] ;
  char *envp[2U] ;
  {
  kobj = 0;
  envp[0] = (char *)(& event_string);
  envp[1] = 0;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    if ((unsigned long )dev->sdev != (unsigned long )((struct scsi_device *)0)) {
      kobj = & (dev->sdev)->sdev_gendev.kobj;
    } else {
      kobj = & (ap->dev)->kobj;
    }
  } else {
  }
  if ((unsigned long )kobj != (unsigned long )((struct kobject *)0)) {
    snprintf((char *)(& event_string), 20UL, "BAY_EVENT=%d", event);
    kobject_uevent_env(kobj, 2, (char **)(& envp));
  } else {
  }
  return;
}
}
static void ata_acpi_ap_uevent(acpi_handle handle , u32 event , void *data )
{
  {
  ata_acpi_uevent((struct ata_port *)data, 0, event);
  return;
}
}
static void ata_acpi_dev_uevent(acpi_handle handle , u32 event , void *data )
{
  struct ata_device *dev ;
  {
  dev = (struct ata_device *)data;
  ata_acpi_uevent((dev->link)->ap, dev, event);
  return;
}
}
void ata_acpi_dissociate(struct ata_host *host )
{
  int i ;
  struct ata_port *ap ;
  struct ata_acpi_gtm const *gtm ;
  struct ata_acpi_gtm const *tmp ;
  acpi_handle tmp___0 ;
  {
  i = 0;
  goto ldv_38772;
  ldv_38771:
  ap = host->ports[i];
  tmp = ata_acpi_init_gtm(ap);
  gtm = tmp;
  tmp___0 = ata_ap_acpi_handle(ap);
  if ((unsigned long )tmp___0 != (unsigned long )((acpi_handle )0) && (unsigned long )gtm != (unsigned long )((struct ata_acpi_gtm const *)0)) {
    ata_acpi_stm(ap, gtm);
  } else {
  }
  i = i + 1;
  ldv_38772: ;
  if ((unsigned int )i < host->n_ports) {
    goto ldv_38771;
  } else {
  }
  return;
}
}
int ata_acpi_gtm(struct ata_port *ap , struct ata_acpi_gtm *gtm )
{
  struct acpi_buffer output ;
  union acpi_object *out_obj ;
  acpi_status status ;
  int rc ;
  acpi_handle tmp ;
  size_t __len ;
  void *__ret ;
  {
  output.length = 0xffffffffffffffffULL;
  output.pointer = 0;
  rc = 0;
  tmp = ata_ap_acpi_handle(ap);
  status = acpi_evaluate_object(tmp, (char *)"_GTM", 0, & output);
  rc = -2;
  if (status == 5U) {
    goto out_free;
  } else {
  }
  rc = -22;
  if (status != 0U) {
    ata_port_printk((struct ata_port const *)ap, "\v", "ACPI get timing mode failed (AE 0x%x)\n",
                    status);
    goto out_free;
  } else {
  }
  out_obj = (union acpi_object *)output.pointer;
  if (out_obj->type != 3U) {
    ata_port_printk((struct ata_port const *)ap, "\f", "_GTM returned unexpected object type 0x%x\n",
                    out_obj->type);
    goto out_free;
  } else {
  }
  if (out_obj->buffer.length != 20U) {
    ata_port_printk((struct ata_port const *)ap, "\v", "_GTM returned invalid length %d\n",
                    out_obj->buffer.length);
    goto out_free;
  } else {
  }
  __len = 20UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)gtm, (void const *)out_obj->buffer.pointer, __len);
  } else {
    __ret = memcpy((void *)gtm, (void const *)out_obj->buffer.pointer,
                             __len);
  }
  rc = 0;
  out_free:
  kfree((void const *)output.pointer);
  return (rc);
}
}
int ata_acpi_stm(struct ata_port *ap , struct ata_acpi_gtm const *stm )
{
  acpi_status status ;
  struct ata_acpi_gtm stm_buf ;
  struct acpi_object_list input ;
  union acpi_object in_params[3U] ;
  acpi_handle tmp ;
  {
  stm_buf = *stm;
  in_params[0].type = 3U;
  in_params[0].buffer.length = 20U;
  in_params[0].buffer.pointer = (u8 *)(& stm_buf);
  in_params[1].type = 3U;
  in_params[1].buffer.length = 512U;
  in_params[1].buffer.pointer = (u8 *)(& ap->link.device[0].ldv_38497.id);
  in_params[2].type = 3U;
  in_params[2].buffer.length = 512U;
  in_params[2].buffer.pointer = (u8 *)(& ap->link.device[1].ldv_38497.id);
  input.count = 3U;
  input.pointer = (union acpi_object *)(& in_params);
  tmp = ata_ap_acpi_handle(ap);
  status = acpi_evaluate_object(tmp, (char *)"_STM", & input, 0);
  if (status == 5U) {
    return (-2);
  } else {
  }
  if (status != 0U) {
    ata_port_printk((struct ata_port const *)ap, "\v", "ACPI set timing mode failed (status=0x%x)\n",
                    status);
    return (-22);
  } else {
  }
  return (0);
}
}
static int ata_dev_get_GTF(struct ata_device *dev , struct ata_acpi_gtf **gtf )
{
  struct ata_port *ap ;
  acpi_status status ;
  struct acpi_buffer output ;
  union acpi_object *out_obj ;
  int rc ;
  acpi_handle tmp ;
  union acpi_object *tmp___0 ;
  {
  ap = (dev->link)->ap;
  rc = 0;
  if ((unsigned long )dev->gtf_cache != (unsigned long )((union acpi_object *)0)) {
    out_obj = dev->gtf_cache;
    goto done;
  } else {
  }
  output.length = 0xffffffffffffffffULL;
  output.pointer = 0;
  if ((ap->msg_enable & 4U) != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\017", "%s: ENTER: port#: %d\n",
                   "ata_dev_get_GTF", ap->port_no);
  } else {
  }
  tmp = ata_dev_acpi_handle(dev);
  status = acpi_evaluate_object(tmp, (char *)"_GTF", 0, & output);
  tmp___0 = (union acpi_object *)output.pointer;
  dev->gtf_cache = tmp___0;
  out_obj = tmp___0;
  if (status != 0U) {
    if (status != 5U) {
      ata_dev_printk((struct ata_device const *)dev, "\f", "_GTF evaluation failed (AE 0x%x)\n",
                     status);
      rc = -22;
    } else {
    }
    goto out_free;
  } else {
  }
  if (output.length == 0ULL || (unsigned long )output.pointer == (unsigned long )((void *)0)) {
    if ((ap->msg_enable & 4U) != 0U) {
      ata_dev_printk((struct ata_device const *)dev, "\017", "%s: Run _GTF: length or ptr is NULL (0x%llx, 0x%p)\n",
                     "ata_dev_get_GTF", output.length, output.pointer);
    } else {
    }
    rc = -22;
    goto out_free;
  } else {
  }
  if (out_obj->type != 3U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "_GTF unexpected object type 0x%x\n",
                   out_obj->type);
    rc = -22;
    goto out_free;
  } else {
  }
  if (out_obj->buffer.length % 7U != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "unexpected _GTF length (%d)\n",
                   out_obj->buffer.length);
    rc = -22;
    goto out_free;
  } else {
  }
  done:
  rc = (int )(out_obj->buffer.length / 7U);
  if ((unsigned long )gtf != (unsigned long )((struct ata_acpi_gtf **)0)) {
    *gtf = (struct ata_acpi_gtf *)out_obj->buffer.pointer;
    if ((ap->msg_enable & 4U) != 0U) {
      ata_dev_printk((struct ata_device const *)dev, "\017", "%s: returning gtf=%p, gtf_count=%d\n",
                     "ata_dev_get_GTF", *gtf, rc);
    } else {
    }
  } else {
  }
  return (rc);
  out_free:
  ata_acpi_clear_gtf(dev);
  return (rc);
}
}
unsigned long ata_acpi_gtm_xfermask(struct ata_device *dev , struct ata_acpi_gtm const *gtm )
{
  unsigned long xfer_mask ;
  unsigned int type ;
  int unit ;
  u8 mode ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  xfer_mask = 0UL;
  unit = (int )dev->devno;
  if (((unsigned int )gtm->flags & 16U) == 0U) {
    unit = 0;
  } else {
  }
  mode = ata_timing_cycle2mode(0U, (int )gtm->drive[unit].pio);
  tmp = ata_xfer_mode2mask((int )mode);
  xfer_mask = tmp | xfer_mask;
  if (((unsigned int )gtm->flags & (unsigned int )(1 << unit * 2)) == 0U) {
    type = 7U;
  } else {
    type = 12U;
  }
  mode = ata_timing_cycle2mode(type, (int )gtm->drive[unit].dma);
  tmp___0 = ata_xfer_mode2mask((int )mode);
  xfer_mask = tmp___0 | xfer_mask;
  return (xfer_mask);
}
}
int ata_acpi_cbl_80wire(struct ata_port *ap , struct ata_acpi_gtm const *gtm )
{
  struct ata_device *dev ;
  unsigned long xfer_mask ;
  unsigned long udma_mask ;
  {
  dev = ata_dev_next(0, & ap->link, 0);
  goto ldv_38843;
  ldv_38842:
  xfer_mask = ata_acpi_gtm_xfermask(dev, gtm);
  ata_unpack_xfermask(xfer_mask, 0, 0, & udma_mask);
  if ((udma_mask & 0xfffffffffffffff8UL) != 0UL) {
    return (1);
  } else {
  }
  dev = ata_dev_next(dev, & ap->link, 0);
  ldv_38843: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38842;
  } else {
  }
  return (0);
}
}
static void ata_acpi_gtf_to_tf(struct ata_device *dev , struct ata_acpi_gtf const *gtf ,
                               struct ata_taskfile *tf )
{
  {
  ata_tf_init(dev, tf);
  tf->flags = tf->flags | 6UL;
  tf->protocol = 1U;
  tf->feature = gtf->tf[0];
  tf->nsect = gtf->tf[1];
  tf->lbal = gtf->tf[2];
  tf->lbam = gtf->tf[3];
  tf->lbah = gtf->tf[4];
  tf->device = gtf->tf[5];
  tf->command = gtf->tf[6];
  return;
}
}
static int ata_acpi_filter_tf(struct ata_device *dev , struct ata_taskfile const *tf ,
                              struct ata_taskfile const *ptf )
{
  {
  if ((int )dev->gtf_filter & 1) {
    if ((unsigned int )((unsigned char )tf->command) == 239U && (unsigned int )((unsigned char )tf->feature) == 3U) {
      return (1);
    } else {
    }
  } else {
  }
  if ((dev->gtf_filter & 2U) != 0U) {
    if ((unsigned int )((unsigned char )tf->command) == 177U && (unsigned int )((unsigned char )tf->feature) == 193U) {
      return (1);
    } else {
    }
    if ((unsigned int )((unsigned char )tf->command) == 245U) {
      return (1);
    } else {
    }
    if ((((unsigned long )ptf == (unsigned long )((struct ata_taskfile const *)0) || (unsigned int )((unsigned char )ptf->command) != 248U) && (unsigned int )((unsigned char )tf->command) == 249U) && ((unsigned int )((unsigned char )tf->feature) == 2U || (unsigned int )((unsigned char )tf->feature) == 4U)) {
      return (1);
    } else {
    }
  } else {
  }
  if ((unsigned int )((unsigned char )tf->command) == 239U && (unsigned int )((unsigned char )tf->feature) == 16U) {
    if ((dev->gtf_filter & 4U) != 0U && (unsigned int )((unsigned char )tf->nsect) == 3U) {
      return (1);
    } else {
    }
    if ((dev->gtf_filter & 8U) != 0U && ((unsigned int )((unsigned char )tf->nsect) == 1U || (unsigned int )((unsigned char )tf->nsect) == 4U)) {
      return (1);
    } else {
    }
    if ((dev->gtf_filter & 16U) != 0U && (unsigned int )((unsigned char )tf->nsect) == 2U) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int ata_acpi_run_tf(struct ata_device *dev , struct ata_acpi_gtf const *gtf ,
                           struct ata_acpi_gtf const *prev_gtf )
{
  struct ata_taskfile *pptf ;
  struct ata_taskfile tf ;
  struct ata_taskfile ptf ;
  struct ata_taskfile rtf ;
  unsigned int err_mask ;
  char const *level ;
  char const *descr ;
  char msg[60U] ;
  int rc ;
  int tmp ;
  {
  pptf = 0;
  if (((((((unsigned int )gtf->tf[0] == 0U && (unsigned int )gtf->tf[1] == 0U) && (unsigned int )gtf->tf[2] == 0U) && (unsigned int )gtf->tf[3] == 0U) && (unsigned int )gtf->tf[4] == 0U) && (unsigned int )gtf->tf[5] == 0U) && (unsigned int )gtf->tf[6] == 0U) {
    return (0);
  } else {
  }
  ata_acpi_gtf_to_tf(dev, gtf, & tf);
  if ((unsigned long )prev_gtf != (unsigned long )((struct ata_acpi_gtf const *)0)) {
    ata_acpi_gtf_to_tf(dev, prev_gtf, & ptf);
    pptf = & ptf;
  } else {
  }
  tmp = ata_acpi_filter_tf(dev, (struct ata_taskfile const *)(& tf), (struct ata_taskfile const *)pptf);
  if (tmp == 0) {
    rtf = tf;
    err_mask = ata_exec_internal(dev, & rtf, 0, 3, 0, 0U, 0UL);
    switch (err_mask) {
    case 0U:
    level = "\017";
    snprintf((char *)(& msg), 60UL, "succeeded");
    rc = 1;
    goto ldv_38877;
    case 1U:
    level = "\016";
    snprintf((char *)(& msg), 60UL, "rejected by device (Stat=0x%02x Err=0x%02x)",
             (int )rtf.command, (int )rtf.feature);
    rc = 0;
    goto ldv_38877;
    default:
    level = "\v";
    snprintf((char *)(& msg), 60UL, "failed (Emask=0x%x Stat=0x%02x Err=0x%02x)",
             err_mask, (int )rtf.command, (int )rtf.feature);
    rc = -5;
    goto ldv_38877;
    }
    ldv_38877: ;
  } else {
    level = "\016";
    snprintf((char *)(& msg), 60UL, "filtered out");
    rc = 0;
  }
  descr = ata_get_cmd_descript((int )tf.command);
  ata_dev_printk((struct ata_device const *)dev, level, "ACPI cmd %02x/%02x:%02x:%02x:%02x:%02x:%02x (%s) %s\n",
                 (int )tf.command, (int )tf.feature, (int )tf.nsect, (int )tf.lbal,
                 (int )tf.lbam, (int )tf.lbah, (int )tf.device, (unsigned long )descr != (unsigned long )((char const *)0) ? descr : "unknown",
                 (char *)(& msg));
  return (rc);
}
}
static int ata_acpi_exec_tfs(struct ata_device *dev , int *nr_executed )
{
  struct ata_acpi_gtf *gtf ;
  struct ata_acpi_gtf *pgtf ;
  int gtf_count ;
  int i ;
  int rc ;
  {
  gtf = 0;
  pgtf = 0;
  rc = ata_dev_get_GTF(dev, & gtf);
  if (rc < 0) {
    return (rc);
  } else {
  }
  gtf_count = rc;
  i = 0;
  goto ldv_38891;
  ldv_38890:
  rc = ata_acpi_run_tf(dev, (struct ata_acpi_gtf const *)gtf, (struct ata_acpi_gtf const *)pgtf);
  if (rc < 0) {
    goto ldv_38889;
  } else {
  }
  if (rc != 0) {
    *nr_executed = *nr_executed + 1;
    pgtf = gtf;
  } else {
  }
  i = i + 1;
  gtf = gtf + 1;
  ldv_38891: ;
  if (i < gtf_count) {
    goto ldv_38890;
  } else {
  }
  ldv_38889:
  ata_acpi_clear_gtf(dev);
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
static int ata_acpi_push_id(struct ata_device *dev )
{
  struct ata_port *ap ;
  acpi_status status ;
  struct acpi_object_list input ;
  union acpi_object in_params[1U] ;
  acpi_handle tmp ;
  {
  ap = (dev->link)->ap;
  if ((ap->msg_enable & 4U) != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\017", "%s: ix = %d, port#: %d\n",
                   "ata_acpi_push_id", dev->devno, ap->port_no);
  } else {
  }
  input.count = 1U;
  input.pointer = (union acpi_object *)(& in_params);
  in_params[0].type = 3U;
  in_params[0].buffer.length = 512U;
  in_params[0].buffer.pointer = (u8 *)(& dev->ldv_38497.id);
  swap_buf_le16((u16 *)(& dev->ldv_38497.id), 256U);
  tmp = ata_dev_acpi_handle(dev);
  status = acpi_evaluate_object(tmp, (char *)"_SDD", & input, 0);
  swap_buf_le16((u16 *)(& dev->ldv_38497.id), 256U);
  if (status == 5U) {
    return (-2);
  } else {
  }
  if (status != 0U) {
    ata_dev_printk((struct ata_device const *)dev, "\f", "ACPI _SDD failed (AE 0x%x)\n",
                   status);
    return (-5);
  } else {
  }
  return (0);
}
}
int ata_acpi_on_suspend(struct ata_port *ap )
{
  {
  return (0);
}
}
void ata_acpi_on_resume(struct ata_port *ap )
{
  struct ata_acpi_gtm const *gtm ;
  struct ata_acpi_gtm const *tmp ;
  struct ata_device *dev ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  acpi_handle tmp___3 ;
  {
  tmp = ata_acpi_init_gtm(ap);
  gtm = tmp;
  tmp___3 = ata_ap_acpi_handle(ap);
  if ((unsigned long )tmp___3 != (unsigned long )((acpi_handle )0) && (unsigned long )gtm != (unsigned long )((struct ata_acpi_gtm const *)0)) {
    ata_acpi_stm(ap, gtm);
    dev = ata_dev_next(0, & ap->link, 2);
    goto ldv_38909;
    ldv_38908:
    ata_acpi_clear_gtf(dev);
    tmp___0 = ata_dev_enabled((struct ata_device const *)dev);
    if (tmp___0 != 0U) {
      tmp___1 = ata_dev_get_GTF(dev, 0);
      if (tmp___1 >= 0) {
        dev->flags = dev->flags | 32UL;
      } else {
      }
    } else {
    }
    dev = ata_dev_next(dev, & ap->link, 2);
    ldv_38909: ;
    if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
      goto ldv_38908;
    } else {
    }
  } else {
    dev = ata_dev_next(0, & ap->link, 2);
    goto ldv_38912;
    ldv_38911:
    ata_acpi_clear_gtf(dev);
    tmp___2 = ata_dev_enabled((struct ata_device const *)dev);
    if (tmp___2 != 0U) {
      dev->flags = dev->flags | 32UL;
    } else {
    }
    dev = ata_dev_next(dev, & ap->link, 2);
    ldv_38912: ;
    if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
      goto ldv_38911;
    } else {
    }
  }
  return;
}
}
void ata_acpi_set_state(struct ata_port *ap , pm_message_t state )
{
  struct ata_device *dev ;
  acpi_handle handle ;
  int acpi_state ;
  {
  handle = ata_ap_acpi_handle(ap);
  if ((unsigned long )handle != (unsigned long )((acpi_handle )0) && state.event == 0) {
    acpi_bus_set_power(handle, 0);
  } else {
  }
  dev = ata_dev_next(0, & ap->link, 0);
  goto ldv_38923;
  ldv_38922:
  handle = ata_dev_acpi_handle(dev);
  if ((unsigned long )handle == (unsigned long )((acpi_handle )0)) {
    goto ldv_38921;
  } else {
  }
  if (state.event != 0) {
    acpi_state = acpi_pm_device_sleep_state(& (dev->sdev)->sdev_gendev, 0, 4);
    if (acpi_state > 0) {
      acpi_bus_set_power(handle, acpi_state);
    } else {
    }
    acpi_pm_device_run_wake(& (dev->sdev)->sdev_gendev, 1);
  } else {
    acpi_pm_device_run_wake(& (dev->sdev)->sdev_gendev, 0);
    acpi_bus_set_power(handle, 0);
  }
  ldv_38921:
  dev = ata_dev_next(dev, & ap->link, 0);
  ldv_38923: ;
  if ((unsigned long )dev != (unsigned long )((struct ata_device *)0)) {
    goto ldv_38922;
  } else {
  }
  handle = ata_ap_acpi_handle(ap);
  if ((unsigned long )handle != (unsigned long )((acpi_handle )0) && state.event != 0) {
    acpi_bus_set_power(handle, 4);
  } else {
  }
  return;
}
}
int ata_acpi_on_devcfg(struct ata_device *dev )
{
  struct ata_port *ap ;
  struct ata_eh_context *ehc ;
  int acpi_sata ;
  int nr_executed ;
  int rc ;
  acpi_handle tmp ;
  {
  ap = (dev->link)->ap;
  ehc = & ap->link.eh_context;
  acpi_sata = (int )ap->flags & 131072;
  nr_executed = 0;
  tmp = ata_dev_acpi_handle(dev);
  if ((unsigned long )tmp == (unsigned long )((acpi_handle )0)) {
    return (0);
  } else {
  }
  if ((dev->flags & 32UL) == 0UL && (acpi_sata == 0 || (ehc->i.flags & 131072U) == 0U)) {
    return (0);
  } else {
  }
  if (acpi_sata != 0) {
    rc = ata_acpi_push_id(dev);
    if (rc != 0 && rc != -2) {
      goto acpi_err;
    } else {
    }
  } else {
  }
  rc = ata_acpi_exec_tfs(dev, & nr_executed);
  if (rc != 0) {
    goto acpi_err;
  } else {
  }
  dev->flags = dev->flags & 0xffffffffffffffdfUL;
  if (nr_executed != 0) {
    rc = ata_dev_reread_id(dev, 0U);
    if (rc < 0) {
      ata_dev_printk((struct ata_device const *)dev, "\v", "failed to IDENTIFY after ACPI commands\n");
      return (rc);
    } else {
    }
  } else {
  }
  return (0);
  acpi_err: ;
  if ((rc == -22 && nr_executed == 0) && (ap->pflags & 4U) == 0U) {
    return (0);
  } else {
  }
  if ((dev->flags & 64UL) == 0UL) {
    dev->flags = dev->flags | 64UL;
    return (rc);
  } else {
  }
  dev->flags = dev->flags | 268435456UL;
  ata_dev_printk((struct ata_device const *)dev, "\f", "ACPI: failed the second time, disabled\n");
  if (nr_executed == 0 && (ap->pflags & 4U) == 0U) {
    return (0);
  } else {
  }
  return (rc);
}
}
void ata_acpi_on_disable(struct ata_device *dev )
{
  {
  ata_acpi_clear_gtf(dev);
  return;
}
}
static void ata_acpi_wake_dev(acpi_handle handle , u32 event , void *context )
{
  struct ata_device *ata_dev ;
  bool tmp ;
  {
  ata_dev = (struct ata_device *)context;
  if (event == 2U && (unsigned long )ata_dev != (unsigned long )((struct ata_device *)0)) {
    tmp = pm_runtime_suspended(& (ata_dev->sdev)->sdev_gendev);
    if ((int )tmp) {
      scsi_autopm_get_device(ata_dev->sdev);
    } else {
    }
  } else {
  }
  return;
}
}
static void ata_acpi_add_pm_notifier(struct ata_device *dev )
{
  struct acpi_device *acpi_dev ;
  acpi_handle handle ;
  acpi_status status ;
  int tmp ;
  {
  handle = ata_dev_acpi_handle(dev);
  if ((unsigned long )handle == (unsigned long )((acpi_handle )0)) {
    return;
  } else {
  }
  tmp = acpi_bus_get_device(handle, & acpi_dev);
  status = (acpi_status )tmp;
  if (status != 0U) {
    return;
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev->sdev + 297UL) != 0U) {
    acpi_install_notify_handler(handle, 1U, & ata_acpi_wake_dev, (void *)dev);
    device_set_run_wake(& (dev->sdev)->sdev_gendev, 1);
  } else {
  }
  return;
}
}
static void ata_acpi_remove_pm_notifier(struct ata_device *dev )
{
  struct acpi_device *acpi_dev ;
  acpi_handle handle ;
  acpi_status status ;
  int tmp ;
  {
  handle = ata_dev_acpi_handle(dev);
  if ((unsigned long )handle == (unsigned long )((acpi_handle )0)) {
    return;
  } else {
  }
  tmp = acpi_bus_get_device(handle, & acpi_dev);
  status = (acpi_status )tmp;
  if (status != 0U) {
    return;
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev->sdev + 297UL) != 0U) {
    device_set_run_wake(& (dev->sdev)->sdev_gendev, 0);
    acpi_remove_notify_handler(handle, 1U, & ata_acpi_wake_dev);
  } else {
  }
  return;
}
}
static void ata_acpi_register_power_resource(struct ata_device *dev )
{
  struct scsi_device *sdev ;
  acpi_handle handle ;
  struct device *device ;
  {
  sdev = dev->sdev;
  handle = ata_dev_acpi_handle(dev);
  if ((unsigned long )handle == (unsigned long )((acpi_handle )0)) {
    return;
  } else {
  }
  device = & sdev->sdev_gendev;
  acpi_power_resource_register_device(device, handle);
  return;
}
}
static void ata_acpi_unregister_power_resource(struct ata_device *dev )
{
  struct scsi_device *sdev ;
  acpi_handle handle ;
  struct device *device ;
  {
  sdev = dev->sdev;
  handle = ata_dev_acpi_handle(dev);
  if ((unsigned long )handle == (unsigned long )((acpi_handle )0)) {
    return;
  } else {
  }
  device = & sdev->sdev_gendev;
  acpi_power_resource_unregister_device(device, handle);
  return;
}
}
void ata_acpi_bind(struct ata_device *dev )
{
  {
  ata_acpi_add_pm_notifier(dev);
  ata_acpi_register_power_resource(dev);
  return;
}
}
void ata_acpi_unbind(struct ata_device *dev )
{
  {
  ata_acpi_remove_pm_notifier(dev);
  ata_acpi_unregister_power_resource(dev);
  return;
}
}
static int compat_pci_ata(struct ata_port *ap )
{
  struct device *dev ;
  struct pci_dev *pdev ;
  int tmp ;
  struct device const *__mptr ;
  {
  dev = ap->tdev.parent;
  tmp = is_pci_dev(dev);
  if (tmp == 0) {
    return (0);
  } else {
  }
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  if (pdev->class >> 8 != 262U && pdev->class >> 8 != 257U) {
    return (0);
  } else {
  }
  return (1);
}
}
static int ata_acpi_bind_host(struct ata_port *ap , acpi_handle **handle )
{
  acpi_handle tmp ;
  int tmp___0 ;
  {
  if ((ap->flags & 131072UL) != 0UL) {
    return (-19);
  } else {
  }
  tmp = acpi_get_child((ap->tdev.parent)->acpi_node.handle, (u64 )ap->port_no);
  *handle = tmp;
  if ((unsigned long )*handle == (unsigned long )((acpi_handle *)0)) {
    return (-19);
  } else {
  }
  tmp___0 = ata_acpi_gtm(ap, & ap->__acpi_init_gtm);
  if (tmp___0 == 0) {
    ap->pflags = ap->pflags | 524288U;
  } else {
  }
  return (0);
}
}
static int ata_acpi_bind_device(struct ata_port *ap , struct scsi_device *sdev , acpi_handle **handle )
{
  struct ata_device *ata_dev ;
  acpi_status status ;
  struct acpi_device *acpi_dev ;
  struct acpi_device_power_state *states ;
  bool tmp ;
  int tmp___0 ;
  acpi_handle tmp___1 ;
  int tmp___2 ;
  {
  if ((ap->flags & 131072UL) != 0UL) {
    tmp = sata_pmp_attached(ap);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      ata_dev = (struct ata_device *)(& ap->link.device) + (unsigned long )sdev->id;
    } else {
      ata_dev = (struct ata_device *)(& (ap->pmp_link + (unsigned long )sdev->channel)->device) + (unsigned long )sdev->id;
    }
  } else {
    ata_dev = (struct ata_device *)(& ap->link.device) + (unsigned long )sdev->id;
  }
  tmp___1 = ata_dev_acpi_handle(ata_dev);
  *handle = tmp___1;
  if ((unsigned long )*handle == (unsigned long )((acpi_handle *)0)) {
    return (-19);
  } else {
  }
  tmp___2 = acpi_bus_get_device(*handle, & acpi_dev);
  status = (acpi_status )tmp___2;
  if (status != 0U) {
    return (0);
  } else {
  }
  states = (struct acpi_device_power_state *)(& acpi_dev->power.states);
  if (((unsigned int )*((unsigned char *)(states + 3UL) + 0UL) != 0U || (unsigned int )*((unsigned char *)(states + 4UL) + 0UL) != 0U) && (ata_dev->flags & 67108864UL) != 0UL) {
    sdev->can_power_off = 1U;
  } else {
  }
  return (0);
}
}
static int is_ata_port(struct device const *dev )
{
  {
  return ((unsigned long )((struct device_type const *)dev->type) == (unsigned long )((struct device_type const *)(& ata_port_type)));
}
}
static struct ata_port *dev_to_ata_port(struct device *dev )
{
  int tmp ;
  struct device const *__mptr ;
  {
  goto ldv_39000;
  ldv_38999: ;
  if ((unsigned long )dev->parent == (unsigned long )((struct device *)0)) {
    return (0);
  } else {
  }
  dev = dev->parent;
  ldv_39000:
  tmp = is_ata_port((struct device const *)dev);
  if (tmp == 0) {
    goto ldv_38999;
  } else {
  }
  __mptr = (struct device const *)dev;
  return ((struct ata_port *)__mptr + 0xffffffffffffc5f0UL);
}
}
static int ata_acpi_find_device(struct device *dev , acpi_handle **handle )
{
  struct ata_port *ap ;
  struct ata_port *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct scsi_device *sdev ;
  struct device const *__mptr ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = dev_to_ata_port(dev);
  ap = tmp;
  if ((unsigned long )ap == (unsigned long )((struct ata_port *)0)) {
    return (-19);
  } else {
  }
  tmp___0 = compat_pci_ata(ap);
  if (tmp___0 == 0) {
    return (-19);
  } else {
  }
  tmp___4 = scsi_is_host_device((struct device const *)dev);
  if (tmp___4 != 0) {
    tmp___1 = ata_acpi_bind_host(ap, handle);
    return (tmp___1);
  } else {
    tmp___3 = scsi_is_sdev_device((struct device const *)dev);
    if (tmp___3 != 0) {
      __mptr = (struct device const *)dev;
      sdev = (struct scsi_device *)__mptr + 0xfffffffffffffe50UL;
      tmp___2 = ata_acpi_bind_device(ap, sdev, handle);
      return (tmp___2);
    } else {
      return (-19);
    }
  }
}
}
static int ata_acpi_find_dummy(struct device *dev , acpi_handle **handle )
{
  {
  return (-19);
}
}
static struct acpi_bus_type ata_acpi_bus = {{0, 0}, 0, & ata_acpi_find_device, & ata_acpi_find_dummy};
int ata_acpi_register(void)
{
  int tmp ;
  {
  tmp = scsi_register_acpi_bus_type(& ata_acpi_bus);
  return (tmp);
}
}
void ata_acpi_unregister(void)
{
  {
  scsi_unregister_acpi_bus_type(& ata_acpi_bus);
  return;
}
}
void ldv_main6_sequence_infinite_withcheck_stateful(void)
{
  acpi_handle var_ata_acpi_dev_notify_dock_6_p0 ;
  u32 var_ata_acpi_dev_notify_dock_6_p1 ;
  void *var_ata_acpi_dev_notify_dock_6_p2 ;
  acpi_handle var_ata_acpi_dev_uevent_10_p0 ;
  u32 var_ata_acpi_dev_uevent_10_p1 ;
  void *var_ata_acpi_dev_uevent_10_p2 ;
  acpi_handle var_ata_acpi_ap_notify_dock_7_p0 ;
  u32 var_ata_acpi_ap_notify_dock_7_p1 ;
  void *var_ata_acpi_ap_notify_dock_7_p2 ;
  acpi_handle var_ata_acpi_ap_uevent_9_p0 ;
  u32 var_ata_acpi_ap_uevent_9_p1 ;
  void *var_ata_acpi_ap_uevent_9_p2 ;
  struct device *var_group1 ;
  acpi_handle **var_ata_acpi_find_dummy_40_p1 ;
  acpi_handle **var_ata_acpi_find_device_39_p1 ;
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_39063;
  ldv_39062:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  ata_acpi_dev_notify_dock(var_ata_acpi_dev_notify_dock_6_p0, var_ata_acpi_dev_notify_dock_6_p1,
                           var_ata_acpi_dev_notify_dock_6_p2);
  goto ldv_39055;
  case 1:
  ldv_handler_precall();
  ata_acpi_dev_uevent(var_ata_acpi_dev_uevent_10_p0, var_ata_acpi_dev_uevent_10_p1,
                      var_ata_acpi_dev_uevent_10_p2);
  goto ldv_39055;
  case 2:
  ldv_handler_precall();
  ata_acpi_ap_notify_dock(var_ata_acpi_ap_notify_dock_7_p0, var_ata_acpi_ap_notify_dock_7_p1,
                          var_ata_acpi_ap_notify_dock_7_p2);
  goto ldv_39055;
  case 3:
  ldv_handler_precall();
  ata_acpi_ap_uevent(var_ata_acpi_ap_uevent_9_p0, var_ata_acpi_ap_uevent_9_p1, var_ata_acpi_ap_uevent_9_p2);
  goto ldv_39055;
  case 4:
  ldv_handler_precall();
  ata_acpi_find_dummy(var_group1, var_ata_acpi_find_dummy_40_p1);
  goto ldv_39055;
  case 5:
  ldv_handler_precall();
  ata_acpi_find_device(var_group1, var_ata_acpi_find_device_39_p1);
  goto ldv_39055;
  default: ;
  goto ldv_39055;
  }
  ldv_39055: ;
  ldv_39063:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_39062;
  } else {
  }
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_112(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_114(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_115(struct mutex *ldv_func_arg1 )
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
static int ldv_mutex_eh_mutex ;
int ldv_mutex_lock_interruptible_eh_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_eh_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_eh_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_eh_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_eh_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_eh_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_eh_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_eh_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_eh_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_eh_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_eh_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_eh_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_eh_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_eh_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_eh_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_eh_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_eh_mutex == 1) {
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
void ldv_mutex_unlock_eh_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_eh_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_eh_mutex = 1;
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
static int ldv_mutex_pm_mutex ;
int ldv_mutex_lock_interruptible_pm_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_pm_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_pm_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_pm_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_pm_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_pm_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_pm_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_pm_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_pm_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_pm_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_pm_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_pm_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_pm_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_pm_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_pm_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_pm_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_pm_mutex == 1) {
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
void ldv_mutex_unlock_pm_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_pm_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_pm_mutex = 1;
  return;
}
}
static int ldv_mutex_scan_mutex ;
int ldv_mutex_lock_interruptible_scan_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_scan_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_scan_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_scan_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_scan_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_scan_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_scan_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_scan_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_scan_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_scan_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_scan_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_scan_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_scan_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_scan_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_scan_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_scan_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_scan_mutex == 1) {
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
void ldv_mutex_unlock_scan_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_scan_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_scan_mutex = 1;
  return;
}
}
static int ldv_mutex_scsi_scan_mutex ;
int ldv_mutex_lock_interruptible_scsi_scan_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_scsi_scan_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_scsi_scan_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_scsi_scan_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_scsi_scan_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_scsi_scan_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_scsi_scan_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_scsi_scan_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_scsi_scan_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_scsi_scan_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_scsi_scan_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_scsi_scan_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_scsi_scan_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_scsi_scan_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_scsi_scan_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_scsi_scan_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_scsi_scan_mutex == 1) {
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
void ldv_mutex_unlock_scsi_scan_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_scsi_scan_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_scsi_scan_mutex = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex = 1;
  ldv_mutex_eh_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex = 1;
  ldv_mutex_pm_mutex = 1;
  ldv_mutex_scan_mutex = 1;
  ldv_mutex_scsi_scan_mutex = 1;
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
  if (ldv_mutex_eh_mutex == 1) {
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
  if (ldv_mutex_pm_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_scan_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_scsi_scan_mutex == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
int __VERIFIER_nondet_int(void);
int ___ratelimit(struct ratelimit_state *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
void __const_udelay(unsigned long arg0) {
  return;
}
void *__devres_alloc(void (*arg0)(struct device *, void *), size_t arg1, gfp_t arg2, const char *arg3) {
  return ldv_malloc(0UL);
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __pm_runtime_disable(struct device *arg0, bool arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_resume(struct device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_set_status(struct device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_suspend(struct device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
struct scsi_device *__scsi_add_device(struct Scsi_Host *arg0, uint arg1, uint arg2, uint arg3, void *arg4) {
  return ldv_malloc(sizeof(struct scsi_device));
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int acpi_bus_get_device(acpi_handle arg0, struct acpi_device **arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int acpi_bus_set_power(acpi_handle arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_evaluate_object(acpi_handle arg0, acpi_string arg1, struct acpi_object_list *arg2, struct acpi_buffer *arg3) {
  return __VERIFIER_nondet_uint();
}
acpi_handle acpi_get_child(acpi_handle arg0, u64 arg1) {
  return ldv_malloc(0UL);
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_install_notify_handler(acpi_handle arg0, u32 arg1, void (*arg2)(acpi_handle , u32 , void *), void *arg3) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int acpi_pm_device_run_wake(struct device *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int acpi_pm_device_sleep_state(struct device *arg0, int *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int acpi_power_resource_register_device(struct device *arg0, acpi_handle arg1) {
  return __VERIFIER_nondet_int();
}
void acpi_power_resource_unregister_device(struct device *arg0, acpi_handle arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_remove_notify_handler(acpi_handle arg0, u32 arg1, void (*arg2)(acpi_handle , u32 , void *)) {
  return __VERIFIER_nondet_uint();
}
void add_timer(struct timer_list *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
async_cookie_t async_schedule(async_func_ptr *arg0, void *arg1) {
  return __VERIFIER_nondet_ulong();
}
void async_synchronize_cookie(async_cookie_t arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int attribute_container_register(struct attribute_container *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int attribute_container_unregister(struct attribute_container *arg0) {
  return __VERIFIER_nondet_int();
}
void blk_abort_request(struct request *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int blk_queue_dma_drain(struct request_queue *arg0, dma_drain_needed_fn *arg1, void *arg2, unsigned int arg3) {
  return __VERIFIER_nondet_int();
}
void blk_queue_flush_queueable(struct request_queue *arg0, bool arg1) {
  return;
}
void blk_queue_max_hw_sectors(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_update_dma_alignment(struct request_queue *arg0, int arg1) {
  return;
}
void blk_queue_update_dma_pad(struct request_queue *arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
}
void debug_dma_map_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3, int arg4) {
  return;
}
void debug_dma_unmap_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
const char *dev_driver_string(const struct device *arg0) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_printk(const char *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_set_name(struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_add(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void device_del(struct device *arg0) {
  return;
}
void device_initialize(struct device *arg0) {
  return;
}
void devm_free_irq(struct device *arg0, unsigned int arg1, void *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int devm_request_threaded_irq(struct device *arg0, unsigned int arg1, irqreturn_t (*arg2)(int, void *), irqreturn_t (*arg3)(int, void *), unsigned long arg4, const char *arg5, void *arg6) {
  return __VERIFIER_nondet_int();
}
void devres_add(struct device *arg0, void *arg1) {
  return;
}
void devres_free(void *arg0) {
  return;
}
void *devres_open_group(struct device *arg0, void *arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int devres_release_group(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
void devres_remove_group(struct device *arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void *dmam_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t *arg2, gfp_t arg3) {
  return ldv_malloc(0UL);
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
struct device *get_device(struct device *arg0) {
  return ldv_malloc(sizeof(struct device));
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread16(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void ioread16_rep(void *arg0, void *arg1, unsigned long arg2) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void ioread32_rep(void *arg0, void *arg1, unsigned long arg2) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread8(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite16_rep(void *arg0, const void *arg1, unsigned long arg2) {
  return;
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
void iowrite32_rep(void *arg0, const void *arg1, unsigned long arg2) {
  return;
}
void iowrite8(u8 arg0, void *arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
void jiffies_to_timespec(const unsigned long arg0, struct timespec *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int kobject_uevent_env(struct kobject *arg0, enum kobject_action arg1, char **arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kstrtoll(const char *arg0, unsigned int arg1, long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_handler_precall() {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
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
void pci_disable_device(struct pci_dev *arg0) {
  return;
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
int __VERIFIER_nondet_int(void);
int pcim_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pcim_iomap_regions(struct pci_dev *arg0, int arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void * const *pcim_iomap_table(struct pci_dev *arg0) {
  return ldv_malloc(sizeof(void *));
}
void pcim_pin_device(struct pci_dev *arg0) {
  return;
}
void pm_runtime_enable(struct device *arg0) {
  return;
}
void pm_runtime_forbid(struct device *arg0) {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
void print_hex_dump(const char *arg0, const char *arg1, int arg2, int arg3, int arg4, const void *arg5, size_t arg6, bool arg7) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_device(struct device *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work(struct workqueue_struct *arg0, struct delayed_work *arg1, unsigned long arg2) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work(struct workqueue_struct *arg0, struct work_struct *arg1) {
  return __VERIFIER_nondet_bool();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int round_jiffies_relative(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void schedule() {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool schedule_delayed_work(struct delayed_work *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_bool();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_uninterruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
bool __VERIFIER_nondet_bool(void);
bool schedule_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
void scsi_adjust_queue_depth(struct scsi_device *arg0, int arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_autopm_get_device(struct scsi_device *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_build_sense_buffer(int arg0, u8 *arg1, u8 arg2, u8 arg3, u8 arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_device_get(struct scsi_device *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_device_put(struct scsi_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_device_set_state(struct scsi_device *arg0, enum scsi_device_state arg1) {
  return __VERIFIER_nondet_int();
}
void scsi_eh_finish_cmd(struct scsi_cmnd *arg0, struct list_head *arg1) {
  return;
}
void scsi_eh_flush_done_q(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_execute(struct scsi_device *arg0, const unsigned char *arg1, int arg2, void *arg3, unsigned int arg4, unsigned char *arg5, int arg6, int arg7, int arg8, int *arg9) {
  return __VERIFIER_nondet_int();
}
struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *arg0, int arg1) {
  return ldv_malloc(sizeof(struct Scsi_Host));
}
void scsi_host_put(struct Scsi_Host *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_is_host_device(const struct device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_is_sdev_device(const struct device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_normalize_sense(const u8 *arg0, int arg1, struct scsi_sense_hdr *arg2) {
  return __VERIFIER_nondet_int();
}
void scsi_print_command(struct scsi_cmnd *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_register_acpi_bus_type(struct acpi_bus_type *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_remove_device(struct scsi_device *arg0) {
  return;
}
void scsi_remove_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_rescan_device(struct device *arg0) {
  return;
}
void scsi_schedule_eh(struct Scsi_Host *arg0) {
  return;
}
void scsi_unregister_acpi_bus_type(struct acpi_bus_type *arg0) {
  return;
}
void sdev_evt_send_simple(struct scsi_device *arg0, enum scsi_device_event arg1, gfp_t arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t sg_copy_from_buffer(struct scatterlist *arg0, unsigned int arg1, void *arg2, size_t arg3) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t sg_copy_to_buffer(struct scatterlist *arg0, unsigned int arg1, void *arg2, size_t arg3) {
  return __VERIFIER_nondet_ulong();
}
void sg_init_one(struct scatterlist *arg0, const void *arg1, unsigned int arg2) {
  return;
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int simple_strtoul(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int strcasecmp(const char *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
char *strim(char *arg0) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int strncasecmp(const char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
__kernel_size_t strnlen(const char *arg0, __kernel_size_t arg1) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool system_entering_hibernation() {
  return __VERIFIER_nondet_bool();
}
void trace_hardirqs_off() {
  return;
}
void trace_hardirqs_on() {
  return;
}
void transport_add_device(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int transport_class_register(struct transport_class *arg0) {
  return __VERIFIER_nondet_int();
}
void transport_class_unregister(struct transport_class *arg0) {
  return;
}
void transport_configure_device(struct device *arg0) {
  return;
}
void transport_destroy_device(struct device *arg0) {
  return;
}
void transport_remove_device(struct device *arg0) {
  return;
}
void transport_setup_device(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int vscnprintf(char *arg0, size_t arg1, const char *arg2, __va_list_tag *arg3) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
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
