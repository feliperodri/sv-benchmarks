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
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef unsigned short umode_t;
typedef u64 dma_addr_t;
typedef unsigned int __kernel_mode_t;
typedef unsigned long __kernel_nlink_t;
typedef long __kernel_off_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;
typedef unsigned long __kernel_size_t;
typedef long __kernel_ssize_t;
typedef long __kernel_time_t;
typedef long __kernel_suseconds_t;
typedef long __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef long long __kernel_loff_t;
typedef __kernel_uid_t __kernel_uid32_t;
typedef __kernel_gid_t __kernel_gid32_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef __kernel_mode_t mode_t;
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
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u32 __wsum;
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
struct module;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct completion;
struct pt_regs;
struct pid;
struct task_struct;
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
typedef void (*ctor_fn_t)(void);
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
union __anonunion_ldv_1960_8 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_1960_8 ldv_1960 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_11 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_11 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct __anonstruct_ldv_2171_15 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2186_16 {
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
union __anonunion_ldv_2187_14 {
   struct __anonstruct_ldv_2171_15 ldv_2171 ;
   struct __anonstruct_ldv_2186_16 ldv_2186 ;
};
struct desc_struct {
   union __anonunion_ldv_2187_14 ldv_2187 ;
};
struct thread_struct;
struct cpumask;
struct arch_spinlock;
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
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
struct __anonstruct_ldv_4817_20 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_4823_21 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_4824_19 {
   struct __anonstruct_ldv_4817_20 ldv_4817 ;
   struct __anonstruct_ldv_4823_21 ldv_4823 ;
};
union __anonunion_ldv_4833_22 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_4824_19 ldv_4824 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_4833_22 ldv_4833 ;
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
   unsigned long trap_no ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
struct __anonstruct_mm_segment_t_24 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_24 mm_segment_t;
struct arch_spinlock {
   unsigned int slock ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_arch_rwlock_t_25 {
   unsigned int lock ;
};
typedef struct __anonstruct_arch_rwlock_t_25 arch_rwlock_t;
struct lockdep_map;
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
struct __anonstruct_ldv_5755_27 {
   u8 __padding[1U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5756_26 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5755_27 ldv_5755 ;
};
struct spinlock {
   union __anonunion_ldv_5756_26 ldv_5756 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_28 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_28 rwlock_t;
struct thread_info;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct thread_info *owner ;
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
struct compat_timespec;
struct __anonstruct_ldv_5985_30 {
   unsigned long arg0 ;
   unsigned long arg1 ;
   unsigned long arg2 ;
   unsigned long arg3 ;
};
struct __anonstruct_futex_31 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_32 {
   clockid_t index ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_33 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_6008_29 {
   struct __anonstruct_ldv_5985_30 ldv_5985 ;
   struct __anonstruct_futex_31 futex ;
   struct __anonstruct_nanosleep_32 nanosleep ;
   struct __anonstruct_poll_33 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6008_29 ldv_6008 ;
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
   int uaccess_err ;
};
struct __anonstruct_seqlock_t_34 {
   unsigned int sequence ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_34 seqlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
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
struct __anonstruct_nodemask_t_35 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_35 nodemask_t;
struct rw_semaphore;
typedef long rwsem_count_t;
struct rw_semaphore {
   rwsem_count_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
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
struct device;
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
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
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
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   unsigned char in_suspend : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char ignore_children : 1 ;
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
};
struct __anonstruct_mm_context_t_100 {
   void *ldt ;
   int size ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_100 mm_context_t;
struct pci_bus;
struct vm_area_struct;
struct key;
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
   void const *(*current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
};
struct attribute {
   char const *name ;
   mode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   mode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
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
union __anonunion_ldv_11219_109 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   u16 flags ;
   union __anonunion_ldv_11219_109 ldv_11219 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   unsigned int elemsize ;
   void *elem ;
};
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   int state ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct mod_arch_specific {
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned int incs ;
   unsigned int decs ;
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
   void *percpu ;
   unsigned int percpu_size ;
   char *args ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_tracepoints ;
   char const **trace_bprintk_fmt_start ;
   unsigned int num_trace_bprintk_fmt ;
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
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
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
   struct subsys_private *p ;
};
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
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
   char *(*devnode)(struct device * , mode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct device_type;
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , mode_t * ) ;
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
   struct device_type *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   dev_t devt ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
};
struct wakeup_source {
   char *name ;
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
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_110 {
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
   union __anonunion_d_u_110 d_u ;
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
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool , bool ) ;
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
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
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
struct percpu_counter {
   spinlock_t lock ;
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
struct writeback_control;
union __anonunion_arg_113 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_112 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_113 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_112 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   void (*sync_page)(struct page * ) ;
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
   int (*migratepage)(struct address_space * , struct page * , struct page * ) ;
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
   spinlock_t i_mmap_lock ;
   unsigned int truncate_count ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
   struct mutex unmap_mutex ;
};
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   int bd_openers ;
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
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_14245_114 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion_ldv_14272_115 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   uid_t i_uid ;
   gid_t i_gid ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   spinlock_t i_lock ;
   unsigned int i_flags ;
   struct mutex i_mutex ;
   unsigned long i_state ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_14245_114 ldv_14245 ;
   unsigned long i_ino ;
   atomic_t i_count ;
   unsigned int i_nlink ;
   dev_t i_rdev ;
   unsigned int i_blkbits ;
   u64 i_version ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   blkcnt_t i_blocks ;
   unsigned short i_bytes ;
   struct rw_semaphore i_alloc_sem ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space *i_mapping ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_14272_115 ldv_14272 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   unsigned int i_readcount ;
   atomic_t i_writecount ;
   void *i_security ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
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
union __anonunion_f_u_116 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_116 f_u ;
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
   int (*fl_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*fl_notify)(struct file_lock * ) ;
   int (*fl_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*fl_release_private)(struct file_lock * ) ;
   void (*fl_break)(struct file_lock * ) ;
   int (*fl_change)(struct file_lock ** , int ) ;
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
struct __anonstruct_afs_118 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_117 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_118 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned char fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_117 fl_u ;
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
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct list_head s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32U] ;
   void *s_fs_info ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
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
   int (*fsync)(struct file * , int ) ;
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
   int (*permission)(struct inode * , int , unsigned int ) ;
   int (*check_acl)(struct inode * , int , unsigned int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , int , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , int ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , int , dev_t ) ;
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
   void (*dirty_inode)(struct inode * ) ;
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
   int (*show_options)(struct seq_file * , struct vfsmount * ) ;
   int (*show_stats)(struct seq_file * , struct vfsmount * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   int (*get_sb)(struct file_system_type * , int , char const * , void * , struct vfsmount * ) ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct list_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
   struct lock_class_key i_alloc_sem_key ;
};
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct __anonstruct_ldv_16342_120 {
   u16 inuse ;
   u16 objects ;
};
union __anonunion_ldv_16343_119 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_16342_120 ldv_16342 ;
};
struct __anonstruct_ldv_16348_122 {
   unsigned long private ;
   struct address_space *mapping ;
};
union __anonunion_ldv_16351_121 {
   struct __anonstruct_ldv_16348_122 ldv_16348 ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
union __anonunion_ldv_16355_123 {
   unsigned long index ;
   void *freelist ;
};
struct page {
   unsigned long flags ;
   atomic_t _count ;
   union __anonunion_ldv_16343_119 ldv_16343 ;
   union __anonunion_ldv_16351_121 ldv_16351 ;
   union __anonunion_ldv_16355_123 ldv_16355 ;
   struct list_head lru ;
};
struct __anonstruct_vm_set_125 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_124 {
   struct __anonstruct_vm_set_125 vm_set ;
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
   union __anonunion_shared_124 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   unsigned long vm_truncate_count ;
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
   unsigned long count[3U] ;
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
   struct rw_semaphore mmap_sem ;
   spinlock_t page_table_lock ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
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
   cpumask_t cpu_vm_mask ;
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
   atomic_t oom_disable_count ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sem_undo_list {
   atomic_t refcnt ;
   spinlock_t lock ;
   struct list_head list_proc ;
};
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct __anonstruct_sigset_t_126 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_126 sigset_t;
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
struct __anonstruct__kill_128 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_129 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_130 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_131 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_132 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_133 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_127 {
   int _pad[28U] ;
   struct __anonstruct__kill_128 _kill ;
   struct __anonstruct__timer_129 _timer ;
   struct __anonstruct__rt_130 _rt ;
   struct __anonstruct__sigchld_131 _sigchld ;
   struct __anonstruct__sigfault_132 _sigfault ;
   struct __anonstruct__sigpoll_133 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_127 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct prop_local_single {
   unsigned long events ;
   unsigned long period ;
   int shift ;
   spinlock_t lock ;
};
struct __anonstruct_seccomp_t_136 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_136 seccomp_t;
struct plist_head {
   struct list_head prio_list ;
   struct list_head node_list ;
   raw_spinlock_t *rawlock ;
   spinlock_t *spinlock ;
};
struct plist_node {
   int prio ;
   struct plist_head plist ;
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
   clockid_t index ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   struct hrtimer_clock_base clock_base[2U] ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
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
struct nsproxy;
struct ctl_table_root;
struct ctl_table_set {
   struct list_head list ;
   struct ctl_table_set *parent ;
   int (*is_seen)(struct ctl_table_set * ) ;
};
struct ctl_table_header;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   mode_t mode ;
   struct ctl_table *child ;
   struct ctl_table *parent ;
   proc_handler *proc_handler ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_table_root {
   struct list_head root_list ;
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_root * , struct nsproxy * , struct ctl_table * ) ;
};
struct __anonstruct_ldv_18162_138 {
   struct ctl_table *ctl_table ;
   struct list_head ctl_entry ;
   int used ;
   int count ;
};
union __anonunion_ldv_18164_137 {
   struct __anonstruct_ldv_18162_138 ldv_18162 ;
   struct rcu_head rcu ;
};
struct ctl_table_header {
   union __anonunion_ldv_18164_137 ldv_18164 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_table *attached_by ;
   struct ctl_table *attached_to ;
   struct ctl_table_header *parent ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct signal_struct;
struct key_type;
struct keyring_list;
struct key_user;
union __anonunion_ldv_18221_139 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_140 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
};
union __anonunion_payload_141 {
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
   union __anonunion_ldv_18221_139 ldv_18221 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_140 type_data ;
   union __anonunion_payload_141 payload ;
};
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
   struct group_info *group_info ;
   struct rcu_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct cfs_rq;
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
union __anonunion_ki_obj_142 {
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
   union __anonunion_ki_obj_142 ki_obj ;
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
   spinlock_t lock ;
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
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
   unsigned int bkl_count ;
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
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct rq * , struct task_struct * , int , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct rq * , struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * , int ) ;
   void (*switched_to)(struct rq * , struct task_struct * , int ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int , int ) ;
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
   unsigned long bytes ;
   unsigned long memsw_bytes ;
};
struct irqaction;
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   int lock_depth ;
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
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
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
   struct irqaction *irqaction ;
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
   int mems_allowed_change_disable ;
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
   atomic_t fs_excl ;
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   struct prop_local_single dirties ;
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
struct cgroup;
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
struct reclaim_state {
   unsigned long reclaimed_slab ;
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
struct i2c_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
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
union __anonunion_ldv_24577_164 {
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
   u8 pcie_type ;
   u8 rom_base_reg ;
   u8 pin ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   int pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned int d3_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[18U] ;
   resource_size_t fw_addr[18U] ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_ucfg_access : 1 ;
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
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[18U] ;
   struct bin_attribute *res_attr_wc[18U] ;
   struct list_head msi_list ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_24577_164 ldv_24577 ;
   struct pci_ats *ats ;
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
   struct pci_ops *ops ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char secondary ;
   unsigned char subordinate ;
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
   struct pci_error_handlers *err_handler ;
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
struct kmem_cache_cpu {
   void **freelist ;
   struct page *page ;
   int node ;
   unsigned int stat[18U] ;
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
   int size ;
   int objsize ;
   int offset ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   unsigned long min_partial ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
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
struct dma_map_ops {
   void *(*alloc_coherent)(struct device * , size_t , dma_addr_t * , gfp_t ) ;
   void (*free_coherent)(struct device * , size_t , void * , dma_addr_t ) ;
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
struct i2c_msg;
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_client;
struct i2c_driver;
union i2c_smbus_data;
struct i2c_board_info;
struct i2c_driver {
   unsigned int class ;
   int (*attach_adapter)(struct i2c_adapter * ) ;
   int (*detach_adapter)(struct i2c_adapter * ) ;
   int (*probe)(struct i2c_client * , struct i2c_device_id const * ) ;
   int (*remove)(struct i2c_client * ) ;
   void (*shutdown)(struct i2c_client * ) ;
   int (*suspend)(struct i2c_client * , pm_message_t ) ;
   int (*resume)(struct i2c_client * ) ;
   void (*alert)(struct i2c_client * , unsigned int ) ;
   int (*command)(struct i2c_client * , unsigned int , void * ) ;
   struct device_driver driver ;
   struct i2c_device_id const *id_table ;
   int (*detect)(struct i2c_client * , struct i2c_board_info * ) ;
   unsigned short const *address_list ;
   struct list_head clients ;
};
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct i2c_driver *driver ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
};
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   int irq ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int id ;
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
struct i2c_algo_bit_data {
   void *data ;
   void (*setsda)(void * , int ) ;
   void (*setscl)(void * , int ) ;
   int (*getsda)(void * ) ;
   int (*getscl)(void * ) ;
   int (*pre_xfer)(struct i2c_adapter * ) ;
   void (*post_xfer)(struct i2c_adapter * ) ;
   int udelay ;
   int timeout ;
};
enum v4l2_field {
    V4L2_FIELD_ANY = 0,
    V4L2_FIELD_NONE = 1,
    V4L2_FIELD_TOP = 2,
    V4L2_FIELD_BOTTOM = 3,
    V4L2_FIELD_INTERLACED = 4,
    V4L2_FIELD_SEQ_TB = 5,
    V4L2_FIELD_SEQ_BT = 6,
    V4L2_FIELD_ALTERNATE = 7,
    V4L2_FIELD_INTERLACED_TB = 8,
    V4L2_FIELD_INTERLACED_BT = 9
} ;
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_tuner_type {
    V4L2_TUNER_RADIO = 1,
    V4L2_TUNER_ANALOG_TV = 2,
    V4L2_TUNER_DIGITAL_TV = 3
} ;
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3
} ;
enum v4l2_colorspace {
    V4L2_COLORSPACE_SMPTE170M = 1,
    V4L2_COLORSPACE_SMPTE240M = 2,
    V4L2_COLORSPACE_REC709 = 3,
    V4L2_COLORSPACE_BT878 = 4,
    V4L2_COLORSPACE_470_SYSTEM_M = 5,
    V4L2_COLORSPACE_470_SYSTEM_BG = 6,
    V4L2_COLORSPACE_JPEG = 7,
    V4L2_COLORSPACE_SRGB = 8
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __s32 width ;
   __s32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   enum v4l2_field field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   enum v4l2_colorspace colorspace ;
   __u32 priv ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion_ldv_26942_165 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion_ldv_26942_165 ldv_26942 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion_ldv_26961_166 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion_ldv_26961_166 ldv_26961 ;
   __u32 reserved[2U] ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   enum v4l2_buf_type type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   enum v4l2_buf_type type ;
   struct v4l2_rect c ;
};
typedef __u64 v4l2_std_id;
struct v4l2_dv_preset {
   __u32 preset ;
   __u32 reserved[4U] ;
};
struct v4l2_dv_enum_preset {
   __u32 index ;
   __u32 preset ;
   __u8 name[32U] ;
   __u32 width ;
   __u32 height ;
   __u32 reserved[4U] ;
};
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 reserved[16U] ;
};
union __anonunion_ldv_27078_168 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion_ldv_27078_168 ldv_27078 ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion_ldv_27109_169 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion_ldv_27109_169 ldv_27109 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7
} ;
struct v4l2_queryctrl {
   __u32 id ;
   enum v4l2_ctrl_type type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   __u8 name[32U] ;
   __u32 reserved ;
};
enum v4l2_mpeg_stream_type {
    V4L2_MPEG_STREAM_TYPE_MPEG2_PS = 0,
    V4L2_MPEG_STREAM_TYPE_MPEG2_TS = 1,
    V4L2_MPEG_STREAM_TYPE_MPEG1_SS = 2,
    V4L2_MPEG_STREAM_TYPE_MPEG2_DVD = 3,
    V4L2_MPEG_STREAM_TYPE_MPEG1_VCD = 4,
    V4L2_MPEG_STREAM_TYPE_MPEG2_SVCD = 5
} ;
enum v4l2_mpeg_stream_vbi_fmt {
    V4L2_MPEG_STREAM_VBI_FMT_NONE = 0,
    V4L2_MPEG_STREAM_VBI_FMT_IVTV = 1
} ;
enum v4l2_mpeg_audio_sampling_freq {
    V4L2_MPEG_AUDIO_SAMPLING_FREQ_44100 = 0,
    V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000 = 1,
    V4L2_MPEG_AUDIO_SAMPLING_FREQ_32000 = 2
} ;
enum v4l2_mpeg_audio_encoding {
    V4L2_MPEG_AUDIO_ENCODING_LAYER_1 = 0,
    V4L2_MPEG_AUDIO_ENCODING_LAYER_2 = 1,
    V4L2_MPEG_AUDIO_ENCODING_LAYER_3 = 2,
    V4L2_MPEG_AUDIO_ENCODING_AAC = 3,
    V4L2_MPEG_AUDIO_ENCODING_AC3 = 4
} ;
enum v4l2_mpeg_audio_l2_bitrate {
    V4L2_MPEG_AUDIO_L2_BITRATE_32K = 0,
    V4L2_MPEG_AUDIO_L2_BITRATE_48K = 1,
    V4L2_MPEG_AUDIO_L2_BITRATE_56K = 2,
    V4L2_MPEG_AUDIO_L2_BITRATE_64K = 3,
    V4L2_MPEG_AUDIO_L2_BITRATE_80K = 4,
    V4L2_MPEG_AUDIO_L2_BITRATE_96K = 5,
    V4L2_MPEG_AUDIO_L2_BITRATE_112K = 6,
    V4L2_MPEG_AUDIO_L2_BITRATE_128K = 7,
    V4L2_MPEG_AUDIO_L2_BITRATE_160K = 8,
    V4L2_MPEG_AUDIO_L2_BITRATE_192K = 9,
    V4L2_MPEG_AUDIO_L2_BITRATE_224K = 10,
    V4L2_MPEG_AUDIO_L2_BITRATE_256K = 11,
    V4L2_MPEG_AUDIO_L2_BITRATE_320K = 12,
    V4L2_MPEG_AUDIO_L2_BITRATE_384K = 13
} ;
enum v4l2_mpeg_audio_mode {
    V4L2_MPEG_AUDIO_MODE_STEREO = 0,
    V4L2_MPEG_AUDIO_MODE_JOINT_STEREO = 1,
    V4L2_MPEG_AUDIO_MODE_DUAL = 2,
    V4L2_MPEG_AUDIO_MODE_MONO = 3
} ;
enum v4l2_mpeg_audio_mode_extension {
    V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_4 = 0,
    V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_8 = 1,
    V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_12 = 2,
    V4L2_MPEG_AUDIO_MODE_EXTENSION_BOUND_16 = 3
} ;
enum v4l2_mpeg_audio_emphasis {
    V4L2_MPEG_AUDIO_EMPHASIS_NONE = 0,
    V4L2_MPEG_AUDIO_EMPHASIS_50_DIV_15_uS = 1,
    V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17 = 2
} ;
enum v4l2_mpeg_audio_crc {
    V4L2_MPEG_AUDIO_CRC_NONE = 0,
    V4L2_MPEG_AUDIO_CRC_CRC16 = 1
} ;
enum v4l2_mpeg_audio_ac3_bitrate {
    V4L2_MPEG_AUDIO_AC3_BITRATE_32K = 0,
    V4L2_MPEG_AUDIO_AC3_BITRATE_40K = 1,
    V4L2_MPEG_AUDIO_AC3_BITRATE_48K = 2,
    V4L2_MPEG_AUDIO_AC3_BITRATE_56K = 3,
    V4L2_MPEG_AUDIO_AC3_BITRATE_64K = 4,
    V4L2_MPEG_AUDIO_AC3_BITRATE_80K = 5,
    V4L2_MPEG_AUDIO_AC3_BITRATE_96K = 6,
    V4L2_MPEG_AUDIO_AC3_BITRATE_112K = 7,
    V4L2_MPEG_AUDIO_AC3_BITRATE_128K = 8,
    V4L2_MPEG_AUDIO_AC3_BITRATE_160K = 9,
    V4L2_MPEG_AUDIO_AC3_BITRATE_192K = 10,
    V4L2_MPEG_AUDIO_AC3_BITRATE_224K = 11,
    V4L2_MPEG_AUDIO_AC3_BITRATE_256K = 12,
    V4L2_MPEG_AUDIO_AC3_BITRATE_320K = 13,
    V4L2_MPEG_AUDIO_AC3_BITRATE_384K = 14,
    V4L2_MPEG_AUDIO_AC3_BITRATE_448K = 15,
    V4L2_MPEG_AUDIO_AC3_BITRATE_512K = 16,
    V4L2_MPEG_AUDIO_AC3_BITRATE_576K = 17,
    V4L2_MPEG_AUDIO_AC3_BITRATE_640K = 18
} ;
enum v4l2_mpeg_video_encoding {
    V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = 0,
    V4L2_MPEG_VIDEO_ENCODING_MPEG_2 = 1,
    V4L2_MPEG_VIDEO_ENCODING_MPEG_4_AVC = 2
} ;
enum v4l2_mpeg_video_aspect {
    V4L2_MPEG_VIDEO_ASPECT_1x1 = 0,
    V4L2_MPEG_VIDEO_ASPECT_4x3 = 1,
    V4L2_MPEG_VIDEO_ASPECT_16x9 = 2,
    V4L2_MPEG_VIDEO_ASPECT_221x100 = 3
} ;
enum v4l2_mpeg_video_bitrate_mode {
    V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = 0,
    V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = 1
} ;
enum v4l2_mpeg_cx2341x_video_spatial_filter_mode {
    V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_MANUAL = 0,
    V4L2_MPEG_CX2341X_VIDEO_SPATIAL_FILTER_MODE_AUTO = 1
} ;
enum v4l2_mpeg_cx2341x_video_luma_spatial_filter_type {
    V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_OFF = 0,
    V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_1D_HOR = 1,
    V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_1D_VERT = 2,
    V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_2D_HV_SEPARABLE = 3,
    V4L2_MPEG_CX2341X_VIDEO_LUMA_SPATIAL_FILTER_TYPE_2D_SYM_NON_SEPARABLE = 4
} ;
enum v4l2_mpeg_cx2341x_video_chroma_spatial_filter_type {
    V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_OFF = 0,
    V4L2_MPEG_CX2341X_VIDEO_CHROMA_SPATIAL_FILTER_TYPE_1D_HOR = 1
} ;
enum v4l2_mpeg_cx2341x_video_temporal_filter_mode {
    V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_MANUAL = 0,
    V4L2_MPEG_CX2341X_VIDEO_TEMPORAL_FILTER_MODE_AUTO = 1
} ;
enum v4l2_mpeg_cx2341x_video_median_filter_type {
    V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_OFF = 0,
    V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_HOR = 1,
    V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_VERT = 2,
    V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_HOR_VERT = 3,
    V4L2_MPEG_CX2341X_VIDEO_MEDIAN_FILTER_TYPE_DIAG = 4
} ;
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   enum v4l2_tuner_type type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   enum v4l2_tuner_type type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   enum v4l2_buf_type type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
union __anonunion_parm_174 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   enum v4l2_buf_type type ;
   union __anonunion_parm_174 parm ;
};
union __anonunion_ldv_27440_176 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion_ldv_27440_176 ldv_27440 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_ident {
   struct v4l2_dbg_match match ;
   __u32 ident ;
   __u32 revision ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct poll_table_struct {
   void (*qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long key ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct v4l2_ioctl_ops;
struct video_device {
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct device *parent ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   int vfl_type ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   v4l2_std_id current_norm ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   struct mutex *lock ;
};
struct v4l2_subdev;
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_YUYV8_2X8 = 2,
    V4L2_MBUS_FMT_YVYU8_2X8 = 3,
    V4L2_MBUS_FMT_UYVY8_2X8 = 4,
    V4L2_MBUS_FMT_VYUY8_2X8 = 5,
    V4L2_MBUS_FMT_YVYU10_2X10 = 6,
    V4L2_MBUS_FMT_YUYV10_2X10 = 7,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8,
    V4L2_MBUS_FMT_YUYV10_1X20 = 9,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 10,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 11,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 12,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 13,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 14,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 15,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 16,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 17,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 18,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 19,
    V4L2_MBUS_FMT_GREY8_1X8 = 20,
    V4L2_MBUS_FMT_Y10_1X10 = 21,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 22,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 23,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 24,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 25,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 26,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 27,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 28,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 29,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 30,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 31
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   enum v4l2_mbus_pixelcode code ;
   enum v4l2_field field ;
   enum v4l2_colorspace colorspace ;
};
struct tuner_setup;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*g_chip_ident)(struct v4l2_subdev * , struct v4l2_dbg_chip_ident * ) ;
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_mode)(struct v4l2_subdev * , enum v4l2_tuner_type ) ;
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*enum_dv_presets)(struct v4l2_subdev * , struct v4l2_dv_enum_preset * ) ;
   int (*s_dv_preset)(struct v4l2_subdev * , struct v4l2_dv_preset * ) ;
   int (*query_dv_preset)(struct v4l2_subdev * , struct v4l2_dv_preset * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
};
struct v4l2_subdev {
   struct list_head list ;
   struct module *owner ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
};
struct v4l2_device {
   struct device *dev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct mutex ioctl_lock ;
};
struct tuner_setup {
   unsigned short addr ;
   unsigned int type ;
   unsigned int mode_mask ;
   unsigned int config ;
   int (*tuner_callback)(void * , int , int , int ) ;
};
struct videobuf_buffer;
struct videobuf_queue;
struct videobuf_mapping {
   unsigned int count ;
   struct videobuf_queue *q ;
};
enum videobuf_state {
    VIDEOBUF_NEEDS_INIT = 0,
    VIDEOBUF_PREPARED = 1,
    VIDEOBUF_QUEUED = 2,
    VIDEOBUF_ACTIVE = 3,
    VIDEOBUF_DONE = 4,
    VIDEOBUF_ERROR = 5,
    VIDEOBUF_IDLE = 6
} ;
struct videobuf_buffer {
   unsigned int i ;
   u32 magic ;
   unsigned int width ;
   unsigned int height ;
   unsigned int bytesperline ;
   unsigned long size ;
   unsigned int input ;
   enum v4l2_field field ;
   enum videobuf_state state ;
   struct list_head stream ;
   struct list_head queue ;
   wait_queue_head_t done ;
   unsigned int field_count ;
   struct timeval ts ;
   enum v4l2_memory memory ;
   size_t bsize ;
   size_t boff ;
   unsigned long baddr ;
   struct videobuf_mapping *map ;
   int privsize ;
   void *priv ;
};
struct videobuf_queue_ops {
   int (*buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
   int (*buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * , enum v4l2_field ) ;
   void (*buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   void (*buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
};
struct videobuf_qtype_ops {
   u32 magic ;
   struct videobuf_buffer *(*alloc_vb)(size_t ) ;
   void *(*vaddr)(struct videobuf_buffer * ) ;
   int (*iolock)(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
   int (*sync)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   int (*mmap_mapper)(struct videobuf_queue * , struct videobuf_buffer * , struct vm_area_struct * ) ;
};
struct videobuf_queue {
   struct mutex vb_lock ;
   struct mutex *ext_lock ;
   spinlock_t *irqlock ;
   struct device *dev ;
   wait_queue_head_t wait ;
   enum v4l2_buf_type type ;
   unsigned int inputs ;
   unsigned int msize ;
   enum v4l2_field field ;
   enum v4l2_field last ;
   struct videobuf_buffer *bufs[32U] ;
   struct videobuf_queue_ops const *ops ;
   struct videobuf_qtype_ops *int_ops ;
   unsigned char streaming : 1 ;
   unsigned char reading : 1 ;
   struct list_head stream ;
   unsigned int read_off ;
   struct videobuf_buffer *read_buf ;
   void *priv_data ;
};
struct v4l2_ctrl;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion_ldv_28975_178 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion_cur_179 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion_ldv_28987_180 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned char done : 1 ;
   unsigned char is_new : 1 ;
   unsigned char is_private : 1 ;
   unsigned char is_volatile : 1 ;
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 minimum ;
   s32 maximum ;
   s32 default_value ;
   union __anonunion_ldv_28975_178 ldv_28975 ;
   char const * const *qmenu ;
   unsigned long flags ;
   union __anonunion_cur_179 cur ;
   union __anonunion_ldv_28987_180 ldv_28987 ;
   void *priv ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
};
struct v4l2_ctrl_handler {
   struct mutex lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   u16 nr_of_buckets ;
   int error ;
};
enum cx2341x_port {
    CX2341X_PORT_MEMORY = 0,
    CX2341X_PORT_STREAMING = 1,
    CX2341X_PORT_SERIAL = 2
} ;
struct cx2341x_mpeg_params {
   u32 capabilities ;
   enum cx2341x_port port ;
   u16 width ;
   u16 height ;
   u16 is_50hz ;
   enum v4l2_mpeg_stream_type stream_type ;
   enum v4l2_mpeg_stream_vbi_fmt stream_vbi_fmt ;
   u16 stream_insert_nav_packets ;
   enum v4l2_mpeg_audio_sampling_freq audio_sampling_freq ;
   enum v4l2_mpeg_audio_encoding audio_encoding ;
   enum v4l2_mpeg_audio_l2_bitrate audio_l2_bitrate ;
   enum v4l2_mpeg_audio_ac3_bitrate audio_ac3_bitrate ;
   enum v4l2_mpeg_audio_mode audio_mode ;
   enum v4l2_mpeg_audio_mode_extension audio_mode_extension ;
   enum v4l2_mpeg_audio_emphasis audio_emphasis ;
   enum v4l2_mpeg_audio_crc audio_crc ;
   u32 audio_properties ;
   u16 audio_mute ;
   enum v4l2_mpeg_video_encoding video_encoding ;
   enum v4l2_mpeg_video_aspect video_aspect ;
   u16 video_b_frames ;
   u16 video_gop_size ;
   u16 video_gop_closure ;
   enum v4l2_mpeg_video_bitrate_mode video_bitrate_mode ;
   u32 video_bitrate ;
   u32 video_bitrate_peak ;
   u16 video_temporal_decimation ;
   u16 video_mute ;
   u32 video_mute_yuv ;
   enum v4l2_mpeg_cx2341x_video_spatial_filter_mode video_spatial_filter_mode ;
   u16 video_spatial_filter ;
   enum v4l2_mpeg_cx2341x_video_luma_spatial_filter_type video_luma_spatial_filter_type ;
   enum v4l2_mpeg_cx2341x_video_chroma_spatial_filter_type video_chroma_spatial_filter_type ;
   enum v4l2_mpeg_cx2341x_video_temporal_filter_mode video_temporal_filter_mode ;
   u16 video_temporal_filter ;
   enum v4l2_mpeg_cx2341x_video_median_filter_type video_median_filter_type ;
   u16 video_luma_median_filter_top ;
   u16 video_luma_median_filter_bottom ;
   u16 video_chroma_median_filter_top ;
   u16 video_chroma_median_filter_bottom ;
};
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
enum ldv_21894 {
    DMX_OUT_DECODER = 0,
    DMX_OUT_TAP = 1,
    DMX_OUT_TS_TAP = 2,
    DMX_OUT_TSDEMUX_TAP = 3
} ;
typedef enum ldv_21894 dmx_output_t;
enum ldv_21896 {
    DMX_IN_FRONTEND = 0,
    DMX_IN_DVR = 1
} ;
typedef enum ldv_21896 dmx_input_t;
enum ldv_21898 {
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
typedef enum ldv_21898 dmx_pes_type_t;
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
enum ldv_21912 {
    DMX_SOURCE_FRONT0 = 0,
    DMX_SOURCE_FRONT1 = 1,
    DMX_SOURCE_FRONT2 = 2,
    DMX_SOURCE_FRONT3 = 3,
    DMX_SOURCE_DVR0 = 16,
    DMX_SOURCE_DVR1 = 17,
    DMX_SOURCE_DVR2 = 18,
    DMX_SOURCE_DVR3 = 19
} ;
typedef enum ldv_21912 dmx_source_t;
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
union __anonunion_filter_189 {
   struct dmx_section_filter *sec ;
};
union __anonunion_feed_190 {
   struct list_head ts ;
   struct dmx_section_feed *sec ;
};
union __anonunion_params_191 {
   struct dmx_sct_filter_params sec ;
   struct dmx_pes_filter_params pes ;
};
struct dmxdev;
struct dmxdev_filter {
   union __anonunion_filter_189 filter ;
   union __anonunion_feed_190 feed ;
   union __anonunion_params_191 params ;
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
union __anonunion_feed_192 {
   struct dmx_ts_feed ts ;
   struct dmx_section_feed sec ;
};
union __anonunion_cb_193 {
   int (*ts)(u8 const * , size_t , u8 const * , size_t , struct dmx_ts_feed * ,
             enum dmx_success ) ;
   int (*sec)(u8 const * , size_t , u8 const * , size_t , struct dmx_section_filter * ,
              enum dmx_success ) ;
};
struct dvb_demux;
struct dvb_demux_feed {
   union __anonunion_feed_192 feed ;
   union __anonunion_cb_193 cb ;
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
typedef unsigned short sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_194 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_194 sync_serial_settings;
struct __anonstruct_te1_settings_195 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_195 te1_settings;
struct __anonstruct_raw_hdlc_proto_196 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_196 raw_hdlc_proto;
struct __anonstruct_fr_proto_197 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_197 fr_proto;
struct __anonstruct_fr_proto_pvc_198 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_198 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_199 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_199 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_200 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_200 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_201 {
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
   union __anonunion_ifs_ifsu_201 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_202 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_203 {
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
   union __anonunion_ifr_ifrn_202 ifr_ifrn ;
   union __anonunion_ifr_ifru_203 ifr_ifru ;
};
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct net;
struct sk_buff;
typedef s32 dma_cookie_t;
struct net_device;
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
struct __anonstruct_ldv_30975_207 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_30976_206 {
   __wsum csum ;
   struct __anonstruct_ldv_30975_207 ldv_30975 ;
};
union __anonunion_ldv_31007_208 {
   __u32 mark ;
   __u32 dropcount ;
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
   union __anonunion_ldv_30976_206 ldv_30976 ;
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
   __u16 tc_index ;
   __u16 tc_verd ;
   __u32 rxhash ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char deliver_no_wcard : 1 ;
   unsigned char ooo_okay : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_31007_208 ldv_31007 ;
   __u16 vlan_tci ;
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
};
struct pm_qos_request_list {
   struct plist_node list ;
   int pm_qos_class ;
};
typedef s32 compat_time_t;
typedef s32 compat_long_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
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
union __anonunion_h_u_214 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[72U] ;
};
union __anonunion_m_u_215 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[72U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union __anonunion_h_u_214 h_u ;
   union __anonunion_m_u_215 m_u ;
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
struct ethtool_rxfh_indir {
   __u32 cmd ;
   __u32 size ;
   __u32 ring_index[0U] ;
};
union __anonunion_h_u_218 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[72U] ;
};
union __anonunion_m_u_219 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[72U] ;
};
struct ethtool_rx_ntuple_flow_spec {
   __u32 flow_type ;
   union __anonunion_h_u_218 h_u ;
   union __anonunion_m_u_219 m_u ;
   __u16 vlan_tag ;
   __u16 vlan_tag_mask ;
   __u64 data ;
   __u64 data_mask ;
   __s32 action ;
};
struct ethtool_rx_ntuple {
   __u32 cmd ;
   struct ethtool_rx_ntuple_flow_spec fs ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_rx_ntuple_list {
   struct list_head list ;
   unsigned int count ;
};
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
   u32 (*get_rx_csum)(struct net_device * ) ;
   int (*set_rx_csum)(struct net_device * , u32 ) ;
   u32 (*get_tx_csum)(struct net_device * ) ;
   int (*set_tx_csum)(struct net_device * , u32 ) ;
   u32 (*get_sg)(struct net_device * ) ;
   int (*set_sg)(struct net_device * , u32 ) ;
   u32 (*get_tso)(struct net_device * ) ;
   int (*set_tso)(struct net_device * , u32 ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*phys_id)(struct net_device * , u32 ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_ufo)(struct net_device * ) ;
   int (*set_ufo)(struct net_device * , u32 ) ;
   u32 (*get_flags)(struct net_device * ) ;
   int (*set_flags)(struct net_device * , u32 ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , void * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   int (*set_rx_ntuple)(struct net_device * , struct ethtool_rx_ntuple * ) ;
   int (*get_rx_ntuple)(struct net_device * , u32 , void * ) ;
   int (*get_rxfh_indir)(struct net_device * , struct ethtool_rxfh_indir * ) ;
   int (*set_rxfh_indir)(struct net_device * , struct ethtool_rxfh_indir const * ) ;
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
   u64 mibs[31U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[27U] ;
};
struct icmpmsg_mib {
   unsigned long mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[5U] ;
};
struct icmpv6msg_mib {
   unsigned long mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[15U] ;
};
struct udp_mib {
   unsigned long mibs[7U] ;
};
struct linux_mib {
   unsigned long mibs[80U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[27U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics[2U] ;
   struct ipstats_mib *ip_statistics[2U] ;
   struct linux_mib *net_statistics[2U] ;
   struct udp_mib *udp_statistics[2U] ;
   struct udp_mib *udplite_statistics[2U] ;
   struct icmp_mib *icmp_statistics[2U] ;
   struct icmpmsg_mib *icmpmsg_statistics[2U] ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[2U] ;
   struct udp_mib *udplite_stats_in6[2U] ;
   struct ipstats_mib *ipv6_statistics[2U] ;
   struct icmpv6_mib *icmpv6_statistics[2U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics[2U] ;
   struct linux_xfrm_mib *xfrm_statistics[2U] ;
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
   int nat_vmalloced ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   int sysctl_rt_cache_rebuild_count ;
   int current_rt_cache_rebuild_count ;
   atomic_t rt_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
};
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*default_mtu)(struct dst_entry const * ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , u32 ) ;
   int (*local_out)(struct sk_buff * ) ;
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
   unsigned short namelen ;
   char const *name ;
   mode_t mode ;
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
   spinlock_t pde_unload_lock ;
   struct completion *pde_unload_completion ;
   struct list_head pde_openers ;
};
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
   int sysctl_events ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_acct ;
   int sysctl_checksum ;
   unsigned int sysctl_log_invalid ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   int hash_vmalloc ;
   int expect_vmalloc ;
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
struct net {
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
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
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
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
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
   u8 (*getnumtcs)(struct net_device * , int , u8 * ) ;
   u8 (*setnumtcs)(struct net_device * , int , u8 ) ;
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
};
struct vlan_group;
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
struct neighbour;
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   struct hh_cache *hh_next ;
   atomic_t hh_refcnt ;
   __be16 hh_type ;
   u16 hh_len ;
   int (*hh_output)(struct sk_buff * ) ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
typedef struct sk_buff *rx_handler_func_t(struct sk_buff * );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   unsigned long state ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
};
struct rps_map {
   unsigned int len ;
   struct rcu_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 fill ;
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
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   void (*ndo_set_multicast_list)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   void (*ndo_vlan_rx_register)(struct net_device * , struct vlan_group * ) ;
   void (*ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
};
struct iw_handler_def;
struct iw_public_data;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct pcpu_lstats;
struct pcpu_tstats;
struct pcpu_dstats;
union __anonunion_ldv_35857_231 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_tstats *tstats ;
   struct pcpu_dstats *dstats ;
};
struct garp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct pm_qos_request_list pm_qos_req ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   unsigned int irq ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   unsigned long features ;
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
   unsigned short gflags ;
   unsigned int priv_flags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   int uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_group *vlgrp ;
   void *dsa_ptr ;
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
   unsigned short reg_state ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion_ldv_35857_231 ldv_35857 ;
   struct garp_port *garp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned long vlan_features ;
   unsigned int gso_max_size ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   unsigned int fcoe_ddp_xid ;
   struct ethtool_rx_ntuple_list ethtool_ntuple_list ;
   struct phy_device *phydev ;
};
struct irqaction {
   irqreturn_t (*handler)(int , void * ) ;
   unsigned long flags ;
   void *dev_id ;
   struct irqaction *next ;
   int irq ;
   irqreturn_t (*thread_fn)(int , void * ) ;
   struct task_struct *thread ;
   unsigned long thread_flags ;
   char const *name ;
   struct proc_dir_entry *dir ;
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
    FE_CAN_MUTE_TS = 2147483648U
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
    TRANSMISSION_MODE_4K = 3
} ;
typedef enum fe_transmit_mode fe_transmit_mode_t;
enum fe_bandwidth {
    BANDWIDTH_8_MHZ = 0,
    BANDWIDTH_7_MHZ = 1,
    BANDWIDTH_6_MHZ = 2,
    BANDWIDTH_AUTO = 3
} ;
typedef enum fe_bandwidth fe_bandwidth_t;
enum fe_guard_interval {
    GUARD_INTERVAL_1_32 = 0,
    GUARD_INTERVAL_1_16 = 1,
    GUARD_INTERVAL_1_8 = 2,
    GUARD_INTERVAL_1_4 = 3,
    GUARD_INTERVAL_AUTO = 4
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
struct dvb_qpsk_parameters {
   __u32 symbol_rate ;
   fe_code_rate_t fec_inner ;
};
struct dvb_qam_parameters {
   __u32 symbol_rate ;
   fe_code_rate_t fec_inner ;
   fe_modulation_t modulation ;
};
struct dvb_vsb_parameters {
   fe_modulation_t modulation ;
};
struct dvb_ofdm_parameters {
   fe_bandwidth_t bandwidth ;
   fe_code_rate_t code_rate_HP ;
   fe_code_rate_t code_rate_LP ;
   fe_modulation_t constellation ;
   fe_transmit_mode_t transmission_mode ;
   fe_guard_interval_t guard_interval ;
   fe_hierarchy_t hierarchy_information ;
};
union __anonunion_u_238 {
   struct dvb_qpsk_parameters qpsk ;
   struct dvb_qam_parameters qam ;
   struct dvb_ofdm_parameters ofdm ;
   struct dvb_vsb_parameters vsb ;
};
struct dvb_frontend_parameters {
   __u32 frequency ;
   fe_spectral_inversion_t inversion ;
   union __anonunion_u_238 u ;
};
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
    SYS_DVBC_ANNEX_AC = 1,
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
    SYS_DAB = 15
} ;
typedef enum fe_delivery_system fe_delivery_system_t;
struct __anonstruct_buffer_240 {
   __u8 data[32U] ;
   __u32 len ;
   __u32 reserved1[3U] ;
   void *reserved2 ;
};
union __anonunion_u_239 {
   __u32 data ;
   struct __anonstruct_buffer_240 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3U] ;
   union __anonunion_u_239 u ;
   int result ;
};
struct dvb_frontend_tune_settings {
   int min_delay_ms ;
   int step_size ;
   int max_drift ;
   struct dvb_frontend_parameters parameters ;
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
   int (*set_params)(struct dvb_frontend * , struct dvb_frontend_parameters * ) ;
   int (*set_analog_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*calc_regs)(struct dvb_frontend * , struct dvb_frontend_parameters * , u8 * ,
                    int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
   int (*get_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_bandwidth)(struct dvb_frontend * , u32 * ) ;
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
   int (*is_stereo)(struct dvb_frontend * ) ;
   int (*get_afc)(struct dvb_frontend * ) ;
   void (*tuner_status)(struct dvb_frontend * ) ;
   void (*standby)(struct dvb_frontend * ) ;
   void (*release)(struct dvb_frontend * ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
};
struct dvb_frontend_ops {
   struct dvb_frontend_info info ;
   void (*release)(struct dvb_frontend * ) ;
   void (*release_sec)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*write)(struct dvb_frontend * , u8 const * , int ) ;
   int (*tune)(struct dvb_frontend * , struct dvb_frontend_parameters * , unsigned int ,
               unsigned int * , fe_status_t * ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend * ) ;
   int (*set_frontend)(struct dvb_frontend * , struct dvb_frontend_parameters * ) ;
   int (*get_tune_settings)(struct dvb_frontend * , struct dvb_frontend_tune_settings * ) ;
   int (*get_frontend)(struct dvb_frontend * , struct dvb_frontend_parameters * ) ;
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
   enum dvbfe_search (*search)(struct dvb_frontend * , struct dvb_frontend_parameters * ) ;
   int (*track)(struct dvb_frontend * , struct dvb_frontend_parameters * ) ;
   struct dvb_tuner_ops tuner_ops ;
   struct analog_demod_ops analog_ops ;
   int (*set_property)(struct dvb_frontend * , struct dtv_property * ) ;
   int (*get_property)(struct dvb_frontend * , struct dtv_property * ) ;
};
struct __anonstruct_layer_241 {
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
   struct __anonstruct_layer_241 layer[3U] ;
   u32 isdbs_ts_id ;
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
struct videobuf_dvb {
   char *name ;
   struct dvb_frontend *frontend ;
   struct videobuf_queue dvbq ;
   struct mutex lock ;
   struct task_struct *thread ;
   int nfeeds ;
   struct dvb_demux demux ;
   struct dmxdev dmxdev ;
   struct dmx_frontend fe_hw ;
   struct dmx_frontend fe_mem ;
   struct dvb_net net ;
};
struct videobuf_dvb_frontend {
   struct list_head felist ;
   int id ;
   struct videobuf_dvb dvb ;
};
struct videobuf_dvb_frontends {
   struct list_head felist ;
   struct mutex lock ;
   struct dvb_adapter adapter ;
   int active_fe_id ;
   int gate ;
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
union __anonunion_u_245 {
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
   union __anonunion_u_245 u ;
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
   int (*setkeycode)(struct input_dev * , unsigned int , unsigned int ) ;
   int (*getkeycode)(struct input_dev * , unsigned int , unsigned int * ) ;
   int (*setkeycode_new)(struct input_dev * , struct input_keymap_entry const * ,
                         unsigned int * ) ;
   int (*getkeycode_new)(struct input_dev * , struct input_keymap_entry * ) ;
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
   struct file *effect_owners[] ;
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
   int (*tx_ir)(struct rc_dev * , int * , u32 ) ;
   void (*s_idle)(struct rc_dev * , bool ) ;
   int (*s_learning_mode)(struct rc_dev * , int ) ;
   int (*s_carrier_report)(struct rc_dev * , int ) ;
};
struct IR_i2c;
struct IR_i2c {
   char *ir_codes ;
   struct i2c_client *c ;
   struct rc_dev *rc ;
   unsigned char old ;
   u32 polling_interval ;
   struct delayed_work work ;
   char name[32U] ;
   char phys[32U] ;
   int (*get_key)(struct IR_i2c * , u32 * , u32 * ) ;
};
enum ir_kbd_get_key_fn {
    IR_KBD_GET_KEY_CUSTOM = 0,
    IR_KBD_GET_KEY_PIXELVIEW = 1,
    IR_KBD_GET_KEY_HAUP = 2,
    IR_KBD_GET_KEY_KNC1 = 3,
    IR_KBD_GET_KEY_FUSIONHDTV = 4,
    IR_KBD_GET_KEY_HAUP_XVR = 5,
    IR_KBD_GET_KEY_AVERMEDIA_CARDBUS = 6
} ;
struct IR_i2c_init_data {
   char *ir_codes ;
   char const *name ;
   u64 type ;
   u32 polling_interval ;
   int (*get_key)(struct IR_i2c * , u32 * , u32 * ) ;
   enum ir_kbd_get_key_fn internal_get_key_func ;
   struct rc_dev *rc_dev ;
};
struct btcx_riscmem {
   unsigned int size ;
   __le32 *cpu ;
   __le32 *jmp ;
   dma_addr_t dma ;
};
struct xc2028_ctrl {
   char *fname ;
   int max_len ;
   int msleep ;
   unsigned int scode_table ;
   unsigned char mts : 1 ;
   unsigned char input1 : 1 ;
   unsigned char vhfbw7 : 1 ;
   unsigned char uhfbw8 : 1 ;
   unsigned char disable_power_mgmt : 1 ;
   unsigned char read_not_reliable : 1 ;
   unsigned int demod ;
   unsigned char type : 2 ;
};
struct xc2028_config {
   struct i2c_adapter *i2c_adap ;
   u8 i2c_addr ;
   struct xc2028_ctrl *ctrl ;
};
enum cx88_board_type {
    CX88_BOARD_NONE = 0,
    CX88_MPEG_DVB = 1,
    CX88_MPEG_BLACKBIRD = 2
} ;
enum cx8802_board_access {
    CX8802_DRVCTL_SHARED = 1,
    CX8802_DRVCTL_EXCLUSIVE = 2
} ;
struct cx8800_fmt {
   char const *name ;
   u32 fourcc ;
   int depth ;
   int flags ;
   u32 cxformat ;
};
enum cx88_itype {
    CX88_VMUX_COMPOSITE1 = 1,
    CX88_VMUX_COMPOSITE2 = 2,
    CX88_VMUX_COMPOSITE3 = 3,
    CX88_VMUX_COMPOSITE4 = 4,
    CX88_VMUX_SVIDEO = 5,
    CX88_VMUX_TELEVISION = 6,
    CX88_VMUX_CABLE = 7,
    CX88_VMUX_DVB = 8,
    CX88_VMUX_DEBUG = 9,
    CX88_RADIO = 10
} ;
struct cx88_input {
   enum cx88_itype type ;
   u32 gpio0 ;
   u32 gpio1 ;
   u32 gpio2 ;
   u32 gpio3 ;
   unsigned char vmux : 2 ;
   unsigned char audioroute : 4 ;
};
struct cx88_board {
   char const *name ;
   unsigned int tuner_type ;
   unsigned int radio_type ;
   unsigned char tuner_addr ;
   unsigned char radio_addr ;
   int tda9887_conf ;
   struct cx88_input input[8U] ;
   struct cx88_input radio ;
   enum cx88_board_type mpeg ;
   unsigned int audio_chip ;
   int num_frontends ;
};
enum cx88_tvaudio {
    WW_NONE = 1,
    WW_BTSC = 2,
    WW_BG = 3,
    WW_DK = 4,
    WW_I = 5,
    WW_L = 6,
    WW_EIAJ = 7,
    WW_I2SPT = 8,
    WW_FM = 9,
    WW_I2SADC = 10,
    WW_M = 11
} ;
struct cx88_buffer {
   struct videobuf_buffer vb ;
   unsigned int bpl ;
   struct btcx_riscmem risc ;
   struct cx8800_fmt const *fmt ;
   u32 count ;
};
struct cx88_dmaqueue {
   struct list_head active ;
   struct list_head queued ;
   struct timer_list timeout ;
   struct btcx_riscmem stopper ;
   u32 count ;
};
struct cx88_IR;
struct cx8802_dev;
struct cx88_core {
   struct list_head devlist ;
   atomic_t refcount ;
   int nr ;
   char name[32U] ;
   int pci_bus ;
   int pci_slot ;
   u32 *lmmio ;
   u8 *bmmio ;
   u32 shadow[3U] ;
   int pci_irqmask ;
   struct i2c_adapter i2c_adap ;
   struct i2c_algo_bit_data i2c_algo ;
   struct i2c_client i2c_client ;
   u32 i2c_state ;
   u32 i2c_rc ;
   struct v4l2_device v4l2_dev ;
   struct i2c_client *i2c_rtc ;
   unsigned int boardnr ;
   struct cx88_board board ;
   unsigned int tuner_formats ;
   int (*prev_set_voltage)(struct dvb_frontend * , fe_sec_voltage_t ) ;
   void (*gate_ctrl)(struct cx88_core * , int ) ;
   struct task_struct *kthread ;
   v4l2_std_id tvnorm ;
   enum cx88_tvaudio tvaudio ;
   u32 audiomode_manual ;
   u32 audiomode_current ;
   u32 input ;
   u32 astat ;
   u32 use_nicam ;
   unsigned long last_change ;
   struct cx88_IR *ir ;
   struct IR_i2c_init_data init_data ;
   struct mutex lock ;
   u32 freq ;
   atomic_t users ;
   atomic_t mpeg_users ;
   struct cx8802_dev *dvbdev ;
   enum cx88_board_type active_type_id ;
   int active_ref ;
   int active_fe_id ;
};
struct cx8802_suspend_state {
   int disabled ;
};
struct cx8802_driver {
   struct cx88_core *core ;
   struct list_head drvlist ;
   enum cx88_board_type type_id ;
   enum cx8802_board_access hw_access ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*resume)(struct pci_dev * ) ;
   int (*probe)(struct cx8802_driver * ) ;
   int (*remove)(struct cx8802_driver * ) ;
   int (*advise_acquire)(struct cx8802_driver * ) ;
   int (*advise_release)(struct cx8802_driver * ) ;
   int (*request_acquire)(struct cx8802_driver * ) ;
   int (*request_release)(struct cx8802_driver * ) ;
};
struct vp3054_i2c_state;
struct cx8802_dev {
   struct cx88_core *core ;
   spinlock_t slock ;
   struct pci_dev *pci ;
   unsigned char pci_rev ;
   unsigned char pci_lat ;
   struct cx88_dmaqueue mpegq ;
   u32 ts_packet_size ;
   u32 ts_packet_count ;
   struct cx8802_suspend_state state ;
   struct list_head devlist ;
   struct video_device *mpeg_dev ;
   u32 mailbox ;
   int width ;
   int height ;
   unsigned char mpeg_active ;
   struct cx2341x_mpeg_params params ;
   struct videobuf_dvb_frontends frontends ;
   struct vp3054_i2c_state *vp3054 ;
   unsigned char ts_gen_cntrl ;
   struct list_head drvlist ;
   struct work_struct request_module_wk ;
};
struct mt352_config {
   u8 demod_address ;
   int adc_clock ;
   int if2 ;
   int no_tuner ;
   int (*demod_init)(struct dvb_frontend * ) ;
};
struct vp3054_i2c_state {
   struct i2c_adapter adap ;
   struct i2c_algo_bit_data algo ;
   u32 state ;
};
struct zl10353_config {
   u8 demod_address ;
   int adc_clock ;
   int if2 ;
   int no_tuner ;
   int parallel_ts ;
   unsigned char disable_i2c_gate_ctrl : 1 ;
   u8 clock_ctl_1 ;
   u8 pll_0 ;
};
struct cx22702_config {
   u8 demod_address ;
   u8 output_mode ;
};
struct or51132_config {
   u8 demod_address ;
   int (*set_ts_params)(struct dvb_frontend * , int ) ;
};
enum lg_chip_t {
    UNDEFINED = 0,
    LGDT3302 = 1,
    LGDT3303 = 2
} ;
typedef enum lg_chip_t lg_chip_type;
struct lgdt330x_config {
   u8 demod_address ;
   lg_chip_type demod_chip ;
   int serial_mpeg ;
   int (*pll_rf_set)(struct dvb_frontend * , int ) ;
   int (*set_ts_params)(struct dvb_frontend * , int ) ;
   int clock_polarity_flip ;
};
struct s5h1409_config {
   u8 demod_address ;
   u8 output_mode ;
   u8 gpio ;
   u16 qam_if ;
   u8 inversion ;
   u8 status_mode ;
   u16 mpeg_timing ;
   u8 hvr1600_opt ;
};
struct xc5000_config {
   u8 i2c_address ;
   u32 if_khz ;
   u8 radio_input ;
};
struct nxt200x_config {
   u8 demod_address ;
   int (*set_ts_params)(struct dvb_frontend * , int ) ;
};
struct cx24123_config {
   u8 demod_address ;
   int (*set_ts_params)(struct dvb_frontend * , int ) ;
   int lnb_polarity ;
   u8 dont_use_pll ;
   void (*agc_callback)(struct dvb_frontend * ) ;
};
struct s5h1411_config {
   u8 output_mode ;
   u8 gpio ;
   u16 mpeg_timing ;
   u16 qam_if ;
   u16 vsb_if ;
   u8 inversion ;
   u8 status_mode ;
};
struct stv0299_config {
   u8 demod_address ;
   u8 const *inittab ;
   u32 mclk ;
   unsigned char invert : 1 ;
   unsigned char skip_reinit : 1 ;
   unsigned char lock_output : 2 ;
   unsigned char volt13_op0_op1 : 1 ;
   unsigned char op0_off : 1 ;
   int min_delay_ms ;
   int (*set_symbol_rate)(struct dvb_frontend * , u32 , u32 ) ;
   int (*set_ts_params)(struct dvb_frontend * , int ) ;
};
struct stv0288_config {
   u8 demod_address ;
   u8 *inittab ;
   int min_delay_ms ;
   int (*set_ts_params)(struct dvb_frontend * , int ) ;
};
struct cx24116_config {
   u8 demod_address ;
   int (*set_ts_params)(struct dvb_frontend * , int ) ;
   int (*reset_device)(struct dvb_frontend * ) ;
   unsigned char mpg_clk_pos_pol : 2 ;
};
struct stv0900_reg {
   u16 addr ;
   u8 val ;
};
struct stv0900_config {
   u8 demod_address ;
   u8 demod_mode ;
   u32 xtal ;
   u8 clkmode ;
   u8 diseqc_mode ;
   u8 path1_mode ;
   u8 path2_mode ;
   struct stv0900_reg *ts_config_regs ;
   u8 tun1_maddress ;
   u8 tun2_maddress ;
   u8 tun1_adc ;
   u8 tun2_adc ;
   u8 tun1_type ;
   u8 tun2_type ;
   int (*set_ts_params)(struct dvb_frontend * , int ) ;
};
struct stb6100_config {
   u8 tuner_address ;
   u32 refclock ;
};
struct mb86a16_config {
   u8 demod_address ;
   int (*set_voltage)(struct dvb_frontend * , fe_sec_voltage_t ) ;
};
typedef int ldv_func_ret_type___0;
extern int printk(char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_2(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_4(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock_of_cx88_core(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_cx88_core(struct mutex *lock ) ;
void ldv_mutex_lock_lock_of_v4l2_ctrl_handler(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_lock_pm_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_pm_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_vb_lock_of_videobuf_queue(struct mutex *lock ) ;
void ldv_mutex_unlock_vb_lock_of_videobuf_queue(struct mutex *lock ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern int __request_module(bool , char const * , ...) ;
extern struct module __this_module ;
extern void *__symbol_get(char const * ) ;
extern void __symbol_put(char const * ) ;
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
extern int i2c_transfer(struct i2c_adapter * , struct i2c_msg * , int ) ;
extern void videobuf_queue_sg_init(struct videobuf_queue * , struct videobuf_queue_ops const * ,
                                   struct device * , spinlock_t * , enum v4l2_buf_type ,
                                   enum v4l2_field , unsigned int , void * , struct mutex * ) ;
extern int dvb_unregister_frontend(struct dvb_frontend * ) ;
extern void dvb_frontend_detach(struct dvb_frontend * ) ;
extern int videobuf_dvb_register_bus(struct videobuf_dvb_frontends * , struct module * ,
                                     void * , struct device * , short * , int , int (*)(struct dvb_frontend * ,
                                                                                         unsigned int ,
                                                                                         void * ,
                                                                                         unsigned int ) ) ;
extern void videobuf_dvb_unregister_bus(struct videobuf_dvb_frontends * ) ;
extern struct videobuf_dvb_frontend *videobuf_dvb_alloc_frontend(struct videobuf_dvb_frontends * ,
                                                                 int ) ;
extern void videobuf_dvb_dealloc_frontends(struct videobuf_dvb_frontends * ) ;
extern struct videobuf_dvb_frontend *videobuf_dvb_get_frontend(struct videobuf_dvb_frontends * ,
                                                               int ) ;
extern int videobuf_dvb_find_frontend(struct videobuf_dvb_frontends * , struct dvb_frontend * ) ;
extern void cx88_free_buffer(struct videobuf_queue * , struct cx88_buffer * ) ;
extern int cx88_tuner_callback(void * , int , int , int ) ;
extern void cx88_setup_xc3028(struct cx88_core * , struct xc2028_ctrl * ) ;
extern int cx8802_register_driver(struct cx8802_driver * ) ;
extern int cx8802_unregister_driver(struct cx8802_driver * ) ;
extern struct cx8802_driver *cx8802_get_driver(struct cx8802_dev * , enum cx88_board_type ) ;
extern int cx8802_buf_prepare(struct videobuf_queue * , struct cx8802_dev * , struct cx88_buffer * ,
                              enum v4l2_field ) ;
extern void cx8802_buf_queue(struct cx8802_dev * , struct cx88_buffer * ) ;
__inline static int mt352_write(struct dvb_frontend *fe , u8 const *buf , int len )
{
  int r ;
  {
  r = 0;
  if ((unsigned long )fe->ops.write != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                 u8 const * , int ))0)) {
    r = (*(fe->ops.write))(fe, buf, len);
  } else {
  }
  return (r);
}
}
extern int vp3054_i2c_probe(struct cx8802_dev * ) ;
extern void vp3054_i2c_remove(struct cx8802_dev * ) ;
__inline static int stv0299_writereg(struct dvb_frontend *fe , u8 reg , u8 val )
{
  int r ;
  u8 buf[2U] ;
  {
  r = 0;
  buf[0] = reg;
  buf[1] = val;
  if ((unsigned long )fe->ops.write != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                 u8 const * , int ))0)) {
    r = (*(fe->ops.write))(fe, (u8 const *)(& buf), 2);
  } else {
  }
  return (r);
}
}
static int sharp_z0194a_set_symbol_rate(struct dvb_frontend *fe , u32 srate , u32 ratio )
{
  u8 aclk ;
  u8 bclk ;
  {
  aclk = 0U;
  bclk = 0U;
  if (srate <= 1499999U) {
    aclk = 183U;
    bclk = 71U;
  } else
  if (srate <= 2999999U) {
    aclk = 183U;
    bclk = 75U;
  } else
  if (srate <= 6999999U) {
    aclk = 183U;
    bclk = 79U;
  } else
  if (srate <= 13999999U) {
    aclk = 183U;
    bclk = 83U;
  } else
  if (srate <= 29999999U) {
    aclk = 182U;
    bclk = 83U;
  } else
  if (srate <= 44999999U) {
    aclk = 180U;
    bclk = 81U;
  } else {
  }
  stv0299_writereg(fe, 19, (int )aclk);
  stv0299_writereg(fe, 20, (int )bclk);
  stv0299_writereg(fe, 31, (int )((u8 )(ratio >> 16)));
  stv0299_writereg(fe, 32, (int )((u8 )(ratio >> 8)));
  stv0299_writereg(fe, 33, (int )((u8 )ratio) & 240);
  return (0);
}
}
static u8 sharp_z0194a_inittab[78U] =
  { 1U, 21U, 2U, 0U,
        3U, 0U, 4U, 125U,
        5U, 53U, 6U, 64U,
        7U, 0U, 8U, 64U,
        9U, 0U, 12U, 81U,
        13U, 130U, 14U, 35U,
        16U, 63U, 17U, 132U,
        18U, 185U, 21U, 201U,
        22U, 0U, 23U, 0U,
        24U, 0U, 25U, 0U,
        26U, 0U, 31U, 80U,
        32U, 0U, 33U, 0U,
        34U, 0U, 35U, 0U,
        40U, 0U, 41U, 30U,
        42U, 20U, 43U, 15U,
        44U, 9U, 45U, 5U,
        46U, 1U, 49U, 31U,
        50U, 25U, 51U, 252U,
        52U, 147U, 15U, 82U,
        255U, 255U};
static int stb6100_get_freq(struct dvb_frontend *fe , u32 *frequency )
{
  struct dvb_frontend_ops *frontend_ops ;
  struct dvb_tuner_ops *tuner_ops ;
  struct tuner_state state ;
  int err ;
  {
  frontend_ops = 0;
  tuner_ops = 0;
  err = 0;
  if ((unsigned long )(& fe->ops) != (unsigned long )((struct dvb_frontend_ops *)0)) {
    frontend_ops = & fe->ops;
  } else {
  }
  if ((unsigned long )(& frontend_ops->tuner_ops) != (unsigned long )((struct dvb_tuner_ops *)0)) {
    tuner_ops = & frontend_ops->tuner_ops;
  } else {
  }
  if ((unsigned long )tuner_ops->get_state != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                        enum tuner_param ,
                                                                        struct tuner_state * ))0)) {
    if ((unsigned long )frontend_ops->i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                 int ))0)) {
      (*(frontend_ops->i2c_gate_ctrl))(fe, 1);
    } else {
    }
    err = (*(tuner_ops->get_state))(fe, 1, & state);
    if (err < 0) {
      printk("<3>%s: Invalid parameter\n", "stb6100_get_freq");
      return (err);
    } else {
    }
    if ((unsigned long )frontend_ops->i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                 int ))0)) {
      (*(frontend_ops->i2c_gate_ctrl))(fe, 0);
    } else {
    }
    *frequency = state.frequency;
  } else {
  }
  return (0);
}
}
static int stb6100_set_freq(struct dvb_frontend *fe , u32 frequency )
{
  struct dvb_frontend_ops *frontend_ops ;
  struct dvb_tuner_ops *tuner_ops ;
  struct tuner_state state ;
  int err ;
  {
  frontend_ops = 0;
  tuner_ops = 0;
  err = 0;
  state.frequency = frequency;
  if ((unsigned long )(& fe->ops) != (unsigned long )((struct dvb_frontend_ops *)0)) {
    frontend_ops = & fe->ops;
  } else {
  }
  if ((unsigned long )(& frontend_ops->tuner_ops) != (unsigned long )((struct dvb_tuner_ops *)0)) {
    tuner_ops = & frontend_ops->tuner_ops;
  } else {
  }
  if ((unsigned long )tuner_ops->set_state != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                        enum tuner_param ,
                                                                        struct tuner_state * ))0)) {
    if ((unsigned long )frontend_ops->i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                 int ))0)) {
      (*(frontend_ops->i2c_gate_ctrl))(fe, 1);
    } else {
    }
    err = (*(tuner_ops->set_state))(fe, 1, & state);
    if (err < 0) {
      printk("<3>%s: Invalid parameter\n", "stb6100_set_freq");
      return (err);
    } else {
    }
    if ((unsigned long )frontend_ops->i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                 int ))0)) {
      (*(frontend_ops->i2c_gate_ctrl))(fe, 0);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int stb6100_get_bandw(struct dvb_frontend *fe , u32 *bandwidth )
{
  struct dvb_frontend_ops *frontend_ops ;
  struct dvb_tuner_ops *tuner_ops ;
  struct tuner_state state ;
  int err ;
  {
  frontend_ops = 0;
  tuner_ops = 0;
  err = 0;
  if ((unsigned long )(& fe->ops) != (unsigned long )((struct dvb_frontend_ops *)0)) {
    frontend_ops = & fe->ops;
  } else {
  }
  if ((unsigned long )(& frontend_ops->tuner_ops) != (unsigned long )((struct dvb_tuner_ops *)0)) {
    tuner_ops = & frontend_ops->tuner_ops;
  } else {
  }
  if ((unsigned long )tuner_ops->get_state != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                        enum tuner_param ,
                                                                        struct tuner_state * ))0)) {
    if ((unsigned long )frontend_ops->i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                 int ))0)) {
      (*(frontend_ops->i2c_gate_ctrl))(fe, 1);
    } else {
    }
    err = (*(tuner_ops->get_state))(fe, 8, & state);
    if (err < 0) {
      printk("<3>%s: Invalid parameter\n", "stb6100_get_bandw");
      return (err);
    } else {
    }
    if ((unsigned long )frontend_ops->i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                 int ))0)) {
      (*(frontend_ops->i2c_gate_ctrl))(fe, 0);
    } else {
    }
    *bandwidth = state.bandwidth;
  } else {
  }
  return (0);
}
}
static int stb6100_set_bandw(struct dvb_frontend *fe , u32 bandwidth )
{
  struct dvb_frontend_ops *frontend_ops ;
  struct dvb_tuner_ops *tuner_ops ;
  struct tuner_state state ;
  int err ;
  {
  frontend_ops = 0;
  tuner_ops = 0;
  err = 0;
  state.bandwidth = bandwidth;
  if ((unsigned long )(& fe->ops) != (unsigned long )((struct dvb_frontend_ops *)0)) {
    frontend_ops = & fe->ops;
  } else {
  }
  if ((unsigned long )(& frontend_ops->tuner_ops) != (unsigned long )((struct dvb_tuner_ops *)0)) {
    tuner_ops = & frontend_ops->tuner_ops;
  } else {
  }
  if ((unsigned long )tuner_ops->set_state != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                        enum tuner_param ,
                                                                        struct tuner_state * ))0)) {
    if ((unsigned long )frontend_ops->i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                 int ))0)) {
      (*(frontend_ops->i2c_gate_ctrl))(fe, 1);
    } else {
    }
    err = (*(tuner_ops->set_state))(fe, 8, & state);
    if (err < 0) {
      printk("<3>%s: Invalid parameter\n", "stb6100_set_bandw");
      return (err);
    } else {
    }
    if ((unsigned long )frontend_ops->i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                 int ))0)) {
      (*(frontend_ops->i2c_gate_ctrl))(fe, 0);
    } else {
    }
  } else {
  }
  return (0);
}
}
static unsigned int debug ;
static unsigned int dvb_buf_tscnt = 32U;
static short adapter_nr[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static int dvb_buf_setup(struct videobuf_queue *q , unsigned int *count , unsigned int *size )
{
  struct cx8802_dev *dev ;
  {
  dev = (struct cx8802_dev *)q->priv_data;
  dev->ts_packet_size = 752U;
  dev->ts_packet_count = dvb_buf_tscnt;
  *size = dev->ts_packet_size * dev->ts_packet_count;
  *count = dvb_buf_tscnt;
  return (0);
}
}
static int dvb_buf_prepare(struct videobuf_queue *q , struct videobuf_buffer *vb ,
                           enum v4l2_field field )
{
  struct cx8802_dev *dev ;
  int tmp ;
  {
  dev = (struct cx8802_dev *)q->priv_data;
  tmp = cx8802_buf_prepare(q, dev, (struct cx88_buffer *)vb, field);
  return (tmp);
}
}
static void dvb_buf_queue(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  struct cx8802_dev *dev ;
  {
  dev = (struct cx8802_dev *)q->priv_data;
  cx8802_buf_queue(dev, (struct cx88_buffer *)vb);
  return;
}
}
static void dvb_buf_release(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  {
  cx88_free_buffer(q, (struct cx88_buffer *)vb);
  return;
}
}
static struct videobuf_queue_ops const dvb_qops = {& dvb_buf_setup, & dvb_buf_prepare, & dvb_buf_queue, & dvb_buf_release};
static int cx88_dvb_bus_ctrl(struct dvb_frontend *fe , int acquire )
{
  struct cx8802_dev *dev ;
  struct cx8802_driver *drv ;
  int ret ;
  int fe_id ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  drv = 0;
  ret = 0;
  fe_id = videobuf_dvb_find_frontend(& dev->frontends, fe);
  if (fe_id == 0) {
    printk("<3>%s() No frontend found\n", "cx88_dvb_bus_ctrl");
    return (-22);
  } else {
  }
  ldv_mutex_lock_10(& (dev->core)->lock);
  drv = cx8802_get_driver(dev, 1);
  ldv_mutex_unlock_11(& (dev->core)->lock);
  if ((unsigned long )drv != (unsigned long )((struct cx8802_driver *)0)) {
    if (acquire != 0) {
      dev->frontends.active_fe_id = fe_id;
      ret = (*(drv->request_acquire))(drv);
    } else {
      ret = (*(drv->request_release))(drv);
      dev->frontends.active_fe_id = 0;
    }
  } else {
  }
  return (ret);
}
}
static void cx88_dvb_gate_ctrl(struct cx88_core *core , int open )
{
  struct videobuf_dvb_frontends *f ;
  struct videobuf_dvb_frontend *fe ;
  {
  if ((unsigned long )core->dvbdev == (unsigned long )((struct cx8802_dev *)0)) {
    return;
  } else {
  }
  f = & (core->dvbdev)->frontends;
  if ((unsigned long )f == (unsigned long )((struct videobuf_dvb_frontends *)0)) {
    return;
  } else {
  }
  if (f->gate <= 1) {
    fe = videobuf_dvb_get_frontend(f, 1);
  } else {
    fe = videobuf_dvb_get_frontend(f, f->gate);
  }
  if (((unsigned long )fe != (unsigned long )((struct videobuf_dvb_frontend *)0) && (unsigned long )fe->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) && (unsigned long )(fe->dvb.frontend)->ops.i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                                                                                                                                                                                          int ))0)) {
    (*((fe->dvb.frontend)->ops.i2c_gate_ctrl))(fe->dvb.frontend, open);
  } else {
  }
  return;
}
}
static int dvico_fusionhdtv_demod_init(struct dvb_frontend *fe )
{
  u8 clock_config[3U] ;
  u8 reset[2U] ;
  u8 adc_ctl_1_cfg[2U] ;
  u8 agc_cfg[3U] ;
  u8 gpp_ctl_cfg[2U] ;
  u8 capt_range_cfg[2U] ;
  {
  clock_config[0] = 137U;
  clock_config[1] = 56U;
  clock_config[2] = 57U;
  reset[0] = 80U;
  reset[1] = 128U;
  adc_ctl_1_cfg[0] = 142U;
  adc_ctl_1_cfg[1] = 64U;
  agc_cfg[0] = 103U;
  agc_cfg[1] = 36U;
  agc_cfg[2] = 32U;
  gpp_ctl_cfg[0] = 140U;
  gpp_ctl_cfg[1] = 51U;
  capt_range_cfg[0] = 117U;
  capt_range_cfg[1] = 50U;
  mt352_write(fe, (u8 const *)(& clock_config), 3);
  __const_udelay(859000UL);
  mt352_write(fe, (u8 const *)(& reset), 2);
  mt352_write(fe, (u8 const *)(& adc_ctl_1_cfg), 2);
  mt352_write(fe, (u8 const *)(& agc_cfg), 3);
  mt352_write(fe, (u8 const *)(& gpp_ctl_cfg), 2);
  mt352_write(fe, (u8 const *)(& capt_range_cfg), 2);
  return (0);
}
}
static int dvico_dual_demod_init(struct dvb_frontend *fe )
{
  u8 clock_config[3U] ;
  u8 reset[2U] ;
  u8 adc_ctl_1_cfg[2U] ;
  u8 agc_cfg[3U] ;
  u8 gpp_ctl_cfg[2U] ;
  u8 capt_range_cfg[2U] ;
  {
  clock_config[0] = 137U;
  clock_config[1] = 56U;
  clock_config[2] = 56U;
  reset[0] = 80U;
  reset[1] = 128U;
  adc_ctl_1_cfg[0] = 142U;
  adc_ctl_1_cfg[1] = 64U;
  agc_cfg[0] = 103U;
  agc_cfg[1] = 40U;
  agc_cfg[2] = 32U;
  gpp_ctl_cfg[0] = 140U;
  gpp_ctl_cfg[1] = 51U;
  capt_range_cfg[0] = 117U;
  capt_range_cfg[1] = 50U;
  mt352_write(fe, (u8 const *)(& clock_config), 3);
  __const_udelay(859000UL);
  mt352_write(fe, (u8 const *)(& reset), 2);
  mt352_write(fe, (u8 const *)(& adc_ctl_1_cfg), 2);
  mt352_write(fe, (u8 const *)(& agc_cfg), 3);
  mt352_write(fe, (u8 const *)(& gpp_ctl_cfg), 2);
  mt352_write(fe, (u8 const *)(& capt_range_cfg), 2);
  return (0);
}
}
static int dntv_live_dvbt_demod_init(struct dvb_frontend *fe )
{
  u8 clock_config[3U] ;
  u8 reset[2U] ;
  u8 adc_ctl_1_cfg[2U] ;
  u8 agc_cfg[11U] ;
  u8 dntv_extra[2U] ;
  u8 capt_range_cfg[2U] ;
  {
  clock_config[0] = 137U;
  clock_config[1] = 56U;
  clock_config[2] = 57U;
  reset[0] = 80U;
  reset[1] = 128U;
  adc_ctl_1_cfg[0] = 142U;
  adc_ctl_1_cfg[1] = 64U;
  agc_cfg[0] = 103U;
  agc_cfg[1] = 16U;
  agc_cfg[2] = 35U;
  agc_cfg[3] = 0U;
  agc_cfg[4] = 255U;
  agc_cfg[5] = 255U;
  agc_cfg[6] = 0U;
  agc_cfg[7] = 255U;
  agc_cfg[8] = 0U;
  agc_cfg[9] = 64U;
  agc_cfg[10] = 64U;
  dntv_extra[0] = 181U;
  dntv_extra[1] = 122U;
  capt_range_cfg[0] = 117U;
  capt_range_cfg[1] = 50U;
  mt352_write(fe, (u8 const *)(& clock_config), 3);
  __const_udelay(8590000UL);
  mt352_write(fe, (u8 const *)(& reset), 2);
  mt352_write(fe, (u8 const *)(& adc_ctl_1_cfg), 2);
  mt352_write(fe, (u8 const *)(& agc_cfg), 11);
  __const_udelay(8590000UL);
  mt352_write(fe, (u8 const *)(& dntv_extra), 2);
  mt352_write(fe, (u8 const *)(& capt_range_cfg), 2);
  return (0);
}
}
static struct mt352_config const dvico_fusionhdtv = {15U, 0, 0, 0, & dvico_fusionhdtv_demod_init};
static struct mt352_config const dntv_live_dvbt_config = {15U, 0, 0, 0, & dntv_live_dvbt_demod_init};
static struct mt352_config const dvico_fusionhdtv_dual = {15U, 0, 0, 0, & dvico_dual_demod_init};
static struct zl10353_config const cx88_terratec_cinergy_ht_pci_mkii_config =
     {15U, 0, 45600, 1, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0};
static struct mb86a16_config twinhan_vp1027 = {8U, 0};
static int dntv_live_dvbt_pro_demod_init(struct dvb_frontend *fe )
{
  u8 clock_config[3U] ;
  u8 reset[2U] ;
  u8 adc_ctl_1_cfg[2U] ;
  u8 agc_cfg[11U] ;
  u8 dntv_extra[2U] ;
  u8 capt_range_cfg[2U] ;
  {
  clock_config[0] = 137U;
  clock_config[1] = 56U;
  clock_config[2] = 56U;
  reset[0] = 80U;
  reset[1] = 128U;
  adc_ctl_1_cfg[0] = 142U;
  adc_ctl_1_cfg[1] = 64U;
  agc_cfg[0] = 103U;
  agc_cfg[1] = 16U;
  agc_cfg[2] = 32U;
  agc_cfg[3] = 0U;
  agc_cfg[4] = 255U;
  agc_cfg[5] = 255U;
  agc_cfg[6] = 0U;
  agc_cfg[7] = 255U;
  agc_cfg[8] = 0U;
  agc_cfg[9] = 64U;
  agc_cfg[10] = 64U;
  dntv_extra[0] = 181U;
  dntv_extra[1] = 122U;
  capt_range_cfg[0] = 117U;
  capt_range_cfg[1] = 50U;
  mt352_write(fe, (u8 const *)(& clock_config), 3);
  __const_udelay(8590000UL);
  mt352_write(fe, (u8 const *)(& reset), 2);
  mt352_write(fe, (u8 const *)(& adc_ctl_1_cfg), 2);
  mt352_write(fe, (u8 const *)(& agc_cfg), 11);
  __const_udelay(8590000UL);
  mt352_write(fe, (u8 const *)(& dntv_extra), 2);
  mt352_write(fe, (u8 const *)(& capt_range_cfg), 2);
  return (0);
}
}
static struct mt352_config const dntv_live_dvbt_pro_config = {15U, 0, 0, 1, & dntv_live_dvbt_pro_demod_init};
static struct zl10353_config const dvico_fusionhdtv_hybrid =
     {15U, 0, 0, 1, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0};
static struct zl10353_config const dvico_fusionhdtv_xc3028 =
     {15U, 0, 45600, 1, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0};
static struct mt352_config const dvico_fusionhdtv_mt352_xc3028 = {15U, 0, 4560, 1, & dvico_fusionhdtv_demod_init};
static struct zl10353_config const dvico_fusionhdtv_plus_v1_1 =
     {15U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0};
static struct cx22702_config const connexant_refboard_config = {67U, 1U};
static struct cx22702_config const hauppauge_hvr_config = {99U, 1U};
static int or51132_set_ts_param(struct dvb_frontend *fe , int is_punctured )
{
  struct cx8802_dev *dev ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  dev->ts_gen_cntrl = is_punctured != 0 ? 4U : 0U;
  return (0);
}
}
static struct or51132_config const pchdtv_hd3000 = {21U, & or51132_set_ts_param};
static int lgdt330x_pll_rf_set(struct dvb_frontend *fe , int index )
{
  struct cx8802_dev *dev ;
  struct cx88_core *core ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  core = dev->core;
  if (debug != 0U) {
    printk("<7>%s/2-dvb: %s: index = %d\n", (char *)(& core->name), "lgdt330x_pll_rf_set",
           index);
  } else {
  }
  if (index == 0) {
    tmp = readl((void const volatile *)core->lmmio + 868356U);
    writel(tmp & 4294967287U, (void volatile *)core->lmmio + 868356U);
  } else {
    tmp___0 = readl((void const volatile *)core->lmmio + 868356U);
    writel(tmp___0 | 8U, (void volatile *)core->lmmio + 868356U);
  }
  return (0);
}
}
static int lgdt330x_set_ts_param(struct dvb_frontend *fe , int is_punctured )
{
  struct cx8802_dev *dev ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  if (is_punctured != 0) {
    dev->ts_gen_cntrl = (unsigned int )dev->ts_gen_cntrl | 4U;
  } else {
    dev->ts_gen_cntrl = (unsigned int )dev->ts_gen_cntrl & 251U;
  }
  return (0);
}
}
static struct lgdt330x_config fusionhdtv_3_gold = {14U, 1, 4, 0, & lgdt330x_set_ts_param, 0};
static struct lgdt330x_config const fusionhdtv_5_gold = {14U, 2, 64, 0, & lgdt330x_set_ts_param, 0};
static struct lgdt330x_config const pchdtv_hd5500 = {89U, 2, 64, 0, & lgdt330x_set_ts_param, 0};
static int nxt200x_set_ts_param(struct dvb_frontend *fe , int is_punctured )
{
  struct cx8802_dev *dev ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  dev->ts_gen_cntrl = is_punctured != 0 ? 4U : 0U;
  return (0);
}
}
static struct nxt200x_config const ati_hdtvwonder = {10U, & nxt200x_set_ts_param};
static int cx24123_set_ts_param(struct dvb_frontend *fe , int is_punctured )
{
  struct cx8802_dev *dev ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  dev->ts_gen_cntrl = 2U;
  return (0);
}
}
static int kworld_dvbs_100_set_voltage(struct dvb_frontend *fe , fe_sec_voltage_t voltage )
{
  struct cx8802_dev *dev ;
  struct cx88_core *core ;
  int tmp ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  core = dev->core;
  if ((unsigned int )voltage == 2U) {
    writel(1787U, (void volatile *)core->lmmio + 868356U);
  } else {
    writel(1785U, (void volatile *)core->lmmio + 868356U);
  }
  if ((unsigned long )core->prev_set_voltage != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                          fe_sec_voltage_t ))0)) {
    tmp = (*(core->prev_set_voltage))(fe, voltage);
    return (tmp);
  } else {
  }
  return (0);
}
}
static int geniatech_dvbs_set_voltage(struct dvb_frontend *fe , fe_sec_voltage_t voltage )
{
  struct cx8802_dev *dev ;
  struct cx88_core *core ;
  int tmp ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  core = dev->core;
  if ((unsigned int )voltage == 2U) {
    if (debug != 0U) {
      printk("<7>%s/2-dvb: LNB Voltage OFF\n", (char *)(& core->name));
    } else {
    }
    writel(61439U, (void volatile *)core->lmmio + 868356U);
  } else {
  }
  if ((unsigned long )core->prev_set_voltage != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                          fe_sec_voltage_t ))0)) {
    tmp = (*(core->prev_set_voltage))(fe, voltage);
    return (tmp);
  } else {
  }
  return (0);
}
}
static int tevii_dvbs_set_voltage(struct dvb_frontend *fe , fe_sec_voltage_t voltage )
{
  struct cx8802_dev *dev ;
  struct cx88_core *core ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  core = dev->core;
  tmp = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp | 24640U, (void volatile *)core->lmmio + 868356U);
  switch ((unsigned int )voltage) {
  case 0U:
  tmp___0 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___0 & 4294967263U, (void volatile *)core->lmmio + 868356U);
  goto ldv_40947;
  case 1U:
  tmp___1 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___1 | 32U, (void volatile *)core->lmmio + 868356U);
  goto ldv_40947;
  case 2U:
  tmp___2 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___2 & 4294967263U, (void volatile *)core->lmmio + 868356U);
  goto ldv_40947;
  }
  ldv_40947: ;
  if ((unsigned long )core->prev_set_voltage != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                          fe_sec_voltage_t ))0)) {
    tmp___3 = (*(core->prev_set_voltage))(fe, voltage);
    return (tmp___3);
  } else {
  }
  return (0);
}
}
static int vp1027_set_voltage(struct dvb_frontend *fe , fe_sec_voltage_t voltage )
{
  struct cx8802_dev *dev ;
  struct cx88_core *core ;
  int tmp ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  core = dev->core;
  switch ((unsigned int )voltage) {
  case 0U: ;
  if (debug != 0U) {
    printk("<7>%s/2-dvb: LNB SEC Voltage=13\n", (char *)(& core->name));
  } else {
  }
  writel(4640U, (void volatile *)core->lmmio + 868356U);
  goto ldv_40957;
  case 1U: ;
  if (debug != 0U) {
    printk("<7>%s/2-dvb: LNB SEC Voltage=18\n", (char *)(& core->name));
  } else {
  }
  writel(4642U, (void volatile *)core->lmmio + 868356U);
  goto ldv_40957;
  case 2U: ;
  if (debug != 0U) {
    printk("<7>%s/2-dvb: LNB Voltage OFF\n", (char *)(& core->name));
  } else {
  }
  writel(4656U, (void volatile *)core->lmmio + 868356U);
  goto ldv_40957;
  }
  ldv_40957: ;
  if ((unsigned long )core->prev_set_voltage != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                          fe_sec_voltage_t ))0)) {
    tmp = (*(core->prev_set_voltage))(fe, voltage);
    return (tmp);
  } else {
  }
  return (0);
}
}
static struct cx24123_config const geniatech_dvbs_config = {85U, & cx24123_set_ts_param, 0, (unsigned char)0, 0};
static struct cx24123_config const hauppauge_novas_config = {85U, & cx24123_set_ts_param, 0, (unsigned char)0, 0};
static struct cx24123_config const kworld_dvbs_100_config = {21U, & cx24123_set_ts_param, 1, (unsigned char)0, 0};
static struct s5h1409_config const pinnacle_pctv_hd_800i_config =
     {25U, 0U, 1U, 44000U, 0U, 1U, 3U, (unsigned char)0};
static struct s5h1409_config const dvico_hdtv5_pci_nano_config =
     {25U, 1U, 0U, (unsigned short)0, 0U, 1U, 1U, (unsigned char)0};
static struct s5h1409_config const kworld_atsc_120_config =
     {25U, 1U, 0U, (unsigned short)0, 0U, 1U, 1U, (unsigned char)0};
static struct xc5000_config const pinnacle_pctv_hd_800i_tuner_config = {100U, 5380U, (unsigned char)0};
static struct zl10353_config const cx88_pinnacle_hybrid_pctv =
     {15U, 0, 45600, 1, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0};
static struct zl10353_config const cx88_geniatech_x8000_mt =
     {15U, 0, 0, 1, 0, 1U, (unsigned char)0, (unsigned char)0};
static struct s5h1411_config const dvico_fusionhdtv7_config = {1U, 1U, 1U, 44000U, 44000U, 0U, 1U};
static struct xc5000_config const dvico_fusionhdtv7_tuner_config = {97U, 5380U, (unsigned char)0};
static int attach_xc3028(u8 addr , struct cx8802_dev *dev )
{
  struct dvb_frontend *fe ;
  struct videobuf_dvb_frontend *fe0 ;
  struct xc2028_ctrl ctl ;
  struct xc2028_config cfg ;
  void *__r ;
  struct dvb_frontend *(*__a)(struct dvb_frontend * , struct xc2028_config * ) ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct dvb_frontend *(*tmp___2)(struct dvb_frontend * , struct xc2028_config * ) ;
  void *tmp___3 ;
  struct dvb_frontend *tmp___4 ;
  {
  fe0 = 0;
  cfg.i2c_adap = & (dev->core)->i2c_adap;
  cfg.i2c_addr = addr;
  cfg.ctrl = & ctl;
  fe0 = videobuf_dvb_get_frontend(& dev->frontends, 1);
  if ((unsigned long )fe0 == (unsigned long )((struct videobuf_dvb_frontend *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned long )fe0->dvb.frontend == (unsigned long )((struct dvb_frontend *)0)) {
    printk("<3>%s/2: dvb frontend not attached. Can\'t attach xc3028\n", (char *)(& (dev->core)->name));
    return (-22);
  } else {
  }
  cx88_setup_xc3028(dev->core, & ctl);
  __r = 0;
  tmp___3 = __symbol_get("xc2028_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct xc2028_config * ))tmp___3) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                         struct xc2028_config * ))0)) {
    tmp___0 = __symbol_get("xc2028_attach");
    tmp___2 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct xc2028_config * ))tmp___0;
  } else {
    __request_module(1, "symbol:xc2028_attach");
    tmp___1 = __symbol_get("xc2028_attach");
    tmp___2 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct xc2028_config * ))tmp___1;
  }
  __a = tmp___2;
  if ((unsigned long )__a != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                        struct xc2028_config * ))0)) {
    tmp___4 = (*__a)(fe0->dvb.frontend, & cfg);
    __r = (void *)tmp___4;
    if ((unsigned long )__r == (unsigned long )((void *)0)) {
      __symbol_put("xc2028_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol xc2028_attach()\n");
  }
  fe = (struct dvb_frontend *)__r;
  if ((unsigned long )fe == (unsigned long )((struct dvb_frontend *)0)) {
    printk("<3>%s/2: xc3028 attach failed\n", (char *)(& (dev->core)->name));
    dvb_frontend_detach(fe0->dvb.frontend);
    dvb_unregister_frontend(fe0->dvb.frontend);
    fe0->dvb.frontend = 0;
    return (-22);
  } else {
  }
  printk("<6>%s/2: xc3028 attached\n", (char *)(& (dev->core)->name));
  return (0);
}
}
static int cx24116_set_ts_param(struct dvb_frontend *fe , int is_punctured )
{
  struct cx8802_dev *dev ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  dev->ts_gen_cntrl = 2U;
  return (0);
}
}
static int stv0900_set_ts_param(struct dvb_frontend *fe , int is_punctured )
{
  struct cx8802_dev *dev ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  dev->ts_gen_cntrl = 0U;
  return (0);
}
}
static int cx24116_reset_device(struct dvb_frontend *fe )
{
  struct cx8802_dev *dev ;
  struct cx88_core *core ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  core = dev->core;
  writel(0U, (void volatile *)core->lmmio + 880663U);
  msleep(10U);
  writel(1U, (void volatile *)core->lmmio + 880663U);
  msleep(10U);
  return (0);
}
}
static struct cx24116_config const hauppauge_hvr4000_config = {5U, & cx24116_set_ts_param, & cx24116_reset_device, (unsigned char)0};
static struct cx24116_config const tevii_s460_config = {85U, & cx24116_set_ts_param, & cx24116_reset_device, (unsigned char)0};
static struct stv0900_config const prof_7301_stv0900_config =
     {106U, (unsigned char)0, 27000000U, 3U, 2U, 3U, (unsigned char)0, 0, 0U, (unsigned char)0,
    0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, & stv0900_set_ts_param};
static struct stb6100_config const prof_7301_stb6100_config = {96U, 27000000U};
static struct stv0299_config const tevii_tuner_sharp_config =
     {104U, (u8 const *)(& sharp_z0194a_inittab), 88000000U, 1U, 0U, 1U, 1U, (unsigned char)0,
    100, & sharp_z0194a_set_symbol_rate, & cx24116_set_ts_param};
static struct stv0288_config const tevii_tuner_earda_config = {104U, 0, 100, & cx24116_set_ts_param};
static int cx8802_alloc_frontends(struct cx8802_dev *dev )
{
  struct cx88_core *core ;
  struct videobuf_dvb_frontend *fe ;
  int i ;
  struct lock_class_key __key ;
  {
  core = dev->core;
  fe = 0;
  __mutex_init(& dev->frontends.lock, "&dev->frontends.lock", & __key);
  INIT_LIST_HEAD(& dev->frontends.felist);
  if (core->board.num_frontends == 0) {
    return (-19);
  } else {
  }
  printk("<6>%s() allocating %d frontend(s)\n", "cx8802_alloc_frontends", core->board.num_frontends);
  i = 1;
  goto ldv_41012;
  ldv_41011:
  fe = videobuf_dvb_alloc_frontend(& dev->frontends, i);
  if ((unsigned long )fe == (unsigned long )((struct videobuf_dvb_frontend *)0)) {
    printk("<3>%s() failed to alloc\n", "cx8802_alloc_frontends");
    videobuf_dvb_dealloc_frontends(& dev->frontends);
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_41012: ;
  if (core->board.num_frontends >= i) {
    goto ldv_41011;
  } else {
  }
  return (0);
}
}
static u8 const samsung_smt_7020_inittab[88U] =
  { 1U, 21U, 2U, 0U,
        3U, 0U, 4U, 125U,
        5U, 15U, 6U, 2U,
        7U, 0U, 8U, 96U,
        10U, 194U, 11U, 0U,
        12U, 1U, 13U, 129U,
        14U, 68U, 15U, 9U,
        16U, 60U, 17U, 132U,
        18U, 218U, 19U, 153U,
        20U, 141U, 21U, 206U,
        22U, 232U, 23U, 67U,
        24U, 28U, 25U, 27U,
        26U, 29U, 28U, 18U,
        29U, 0U, 30U, 0U,
        31U, 0U, 32U, 0U,
        33U, 0U, 34U, 0U,
        35U, 0U, 40U, 2U,
        41U, 40U, 42U, 20U,
        43U, 15U, 44U, 9U,
        45U, 5U, 49U, 31U,
        50U, 25U, 51U, 252U,
        52U, 19U, 255U, 255U};
static int samsung_smt_7020_tuner_set_params(struct dvb_frontend *fe , struct dvb_frontend_parameters *params )
{
  struct cx8802_dev *dev ;
  u8 buf[4U] ;
  u32 div ;
  struct i2c_msg msg ;
  int tmp ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  msg.addr = 97U;
  msg.flags = 0U;
  msg.len = 4U;
  msg.buf = (__u8 *)(& buf);
  div = params->frequency / 125U;
  buf[0] = (unsigned int )((u8 )(div >> 8)) & 127U;
  buf[1] = (u8 )div;
  buf[2] = 132U;
  buf[3] = 0U;
  if (params->frequency <= 1499999U) {
    buf[3] = (u8 )((unsigned int )buf[3] | 16U);
  } else {
  }
  if ((unsigned long )fe->ops.i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                         int ))0)) {
    (*(fe->ops.i2c_gate_ctrl))(fe, 1);
  } else {
  }
  tmp = i2c_transfer(& (dev->core)->i2c_adap, & msg, 1);
  if (tmp != 1) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int samsung_smt_7020_set_tone(struct dvb_frontend *fe , fe_sec_tone_mode_t tone )
{
  struct cx8802_dev *dev ;
  struct cx88_core *core ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  core = dev->core;
  tmp = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp | 2048U, (void volatile *)core->lmmio + 868356U);
  switch ((unsigned int )tone) {
  case 0U:
  tmp___0 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___0 | 8U, (void volatile *)core->lmmio + 868356U);
  goto ldv_41030;
  case 1U:
  tmp___1 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___1 & 4294967287U, (void volatile *)core->lmmio + 868356U);
  goto ldv_41030;
  default: ;
  return (-22);
  }
  ldv_41030: ;
  return (0);
}
}
static int samsung_smt_7020_set_voltage(struct dvb_frontend *fe , fe_sec_voltage_t voltage )
{
  struct cx8802_dev *dev ;
  struct cx88_core *core ;
  u8 data ;
  struct i2c_msg msg ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  dev = (struct cx8802_dev *)(fe->dvb)->priv;
  core = dev->core;
  msg.addr = 8U;
  msg.flags = 0U;
  msg.len = 1U;
  msg.buf = & data;
  tmp = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp | 32768U, (void volatile *)core->lmmio + 868356U);
  switch ((unsigned int )voltage) {
  case 2U: ;
  goto ldv_41042;
  case 0U:
  data = 10U;
  tmp___0 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___0 & 4294967167U, (void volatile *)core->lmmio + 868356U);
  goto ldv_41042;
  case 1U:
  data = 14U;
  tmp___1 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___1 & 4294967167U, (void volatile *)core->lmmio + 868356U);
  goto ldv_41042;
  default: ;
  return (-22);
  }
  ldv_41042:
  tmp___2 = i2c_transfer(& (dev->core)->i2c_adap, & msg, 1);
  return (tmp___2 == 1 ? 0 : -5);
}
}
static int samsung_smt_7020_stv0299_set_symbol_rate(struct dvb_frontend *fe , u32 srate ,
                                                    u32 ratio )
{
  u8 aclk ;
  u8 bclk ;
  {
  aclk = 0U;
  bclk = 0U;
  if (srate <= 1499999U) {
    aclk = 183U;
    bclk = 71U;
  } else
  if (srate <= 2999999U) {
    aclk = 183U;
    bclk = 75U;
  } else
  if (srate <= 6999999U) {
    aclk = 183U;
    bclk = 79U;
  } else
  if (srate <= 13999999U) {
    aclk = 183U;
    bclk = 83U;
  } else
  if (srate <= 29999999U) {
    aclk = 182U;
    bclk = 83U;
  } else
  if (srate <= 44999999U) {
    aclk = 180U;
    bclk = 81U;
  } else {
  }
  stv0299_writereg(fe, 19, (int )aclk);
  stv0299_writereg(fe, 20, (int )bclk);
  stv0299_writereg(fe, 31, (int )((u8 )(ratio >> 16)));
  stv0299_writereg(fe, 32, (int )((u8 )(ratio >> 8)));
  stv0299_writereg(fe, 33, (int )((u8 )ratio) & 240);
  return (0);
}
}
static struct stv0299_config const samsung_stv0299_config =
     {104U, (u8 const *)(& samsung_smt_7020_inittab), 88000000U, 0U, 0U, 3U, 1U, (unsigned char)0,
    100, & samsung_smt_7020_stv0299_set_symbol_rate, 0};
static int dvb_register(struct cx8802_dev *dev )
{
  struct cx88_core *core ;
  struct videobuf_dvb_frontend *fe0 ;
  struct videobuf_dvb_frontend *fe1 ;
  int mfe_shared ;
  void *__r ;
  struct dvb_frontend *(*__a)(struct cx22702_config const * , struct i2c_adapter * ) ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct dvb_frontend *(*tmp___2)(struct cx22702_config const * , struct i2c_adapter * ) ;
  void *tmp___3 ;
  struct dvb_frontend *tmp___4 ;
  void *__r___0 ;
  struct dvb_frontend *(*__a___0)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                  unsigned int ) ;
  void *tmp___6 ;
  void *tmp___7 ;
  struct dvb_frontend *(*tmp___8)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                  unsigned int ) ;
  void *tmp___9 ;
  struct dvb_frontend *tmp___10 ;
  void *__r___1 ;
  struct dvb_frontend *(*__a___1)(struct cx22702_config const * , struct i2c_adapter * ) ;
  void *tmp___12 ;
  void *tmp___13 ;
  struct dvb_frontend *(*tmp___14)(struct cx22702_config const * , struct i2c_adapter * ) ;
  void *tmp___15 ;
  struct dvb_frontend *tmp___16 ;
  void *__r___2 ;
  struct dvb_frontend *(*__a___2)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                  unsigned int ) ;
  void *tmp___18 ;
  void *tmp___19 ;
  struct dvb_frontend *(*tmp___20)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                   unsigned int ) ;
  void *tmp___21 ;
  struct dvb_frontend *tmp___22 ;
  void *__r___3 ;
  struct dvb_frontend *(*__a___3)(struct cx22702_config const * , struct i2c_adapter * ) ;
  void *tmp___24 ;
  void *tmp___25 ;
  struct dvb_frontend *(*tmp___26)(struct cx22702_config const * , struct i2c_adapter * ) ;
  void *tmp___27 ;
  struct dvb_frontend *tmp___28 ;
  void *__r___4 ;
  struct dvb_frontend *(*__a___4)(struct dvb_frontend * , struct i2c_adapter * , u8 ,
                                  unsigned int ) ;
  void *tmp___30 ;
  void *tmp___31 ;
  struct dvb_frontend *(*tmp___32)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___33 ;
  struct dvb_frontend *tmp___34 ;
  void *__r___5 ;
  struct dvb_frontend *(*__a___5)(struct cx24123_config const * , struct i2c_adapter * ) ;
  void *tmp___36 ;
  void *tmp___37 ;
  struct dvb_frontend *(*tmp___38)(struct cx24123_config const * , struct i2c_adapter * ) ;
  void *tmp___39 ;
  struct dvb_frontend *tmp___40 ;
  void *__r___6 ;
  struct dvb_frontend *(*__a___6)(struct dvb_frontend * , struct i2c_adapter * , u8 ,
                                  u8 , u8 ) ;
  void *tmp___42 ;
  void *tmp___43 ;
  struct dvb_frontend *(*tmp___44)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , u8 , u8 ) ;
  void *tmp___45 ;
  struct dvb_frontend *tmp___46 ;
  void *__r___7 ;
  struct dvb_frontend *(*__a___7)(struct cx22702_config const * , struct i2c_adapter * ) ;
  void *tmp___48 ;
  void *tmp___49 ;
  struct dvb_frontend *(*tmp___50)(struct cx22702_config const * , struct i2c_adapter * ) ;
  void *tmp___51 ;
  struct dvb_frontend *tmp___52 ;
  void *__r___8 ;
  struct dvb_frontend *(*__a___8)(struct dvb_frontend * , struct i2c_adapter * , u8 ,
                                  unsigned int ) ;
  void *tmp___54 ;
  void *tmp___55 ;
  struct dvb_frontend *(*tmp___56)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___57 ;
  struct dvb_frontend *tmp___58 ;
  void *__r___9 ;
  struct dvb_frontend *(*__a___9)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___60 ;
  void *tmp___61 ;
  struct dvb_frontend *(*tmp___62)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___63 ;
  struct dvb_frontend *tmp___64 ;
  void *__r___10 ;
  struct dvb_frontend *(*__a___10)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                   unsigned int ) ;
  void *tmp___66 ;
  void *tmp___67 ;
  struct dvb_frontend *(*tmp___68)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                   unsigned int ) ;
  void *tmp___69 ;
  struct dvb_frontend *tmp___70 ;
  void *__r___11 ;
  struct dvb_frontend *(*__a___11)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___72 ;
  void *tmp___73 ;
  struct dvb_frontend *(*tmp___74)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___75 ;
  struct dvb_frontend *tmp___76 ;
  void *__r___12 ;
  struct dvb_frontend *(*__a___12)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                   unsigned int ) ;
  void *tmp___78 ;
  void *tmp___79 ;
  struct dvb_frontend *(*tmp___80)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                   unsigned int ) ;
  void *tmp___81 ;
  struct dvb_frontend *tmp___82 ;
  void *__r___13 ;
  struct dvb_frontend *(*__a___13)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___84 ;
  void *tmp___85 ;
  struct dvb_frontend *(*tmp___86)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___87 ;
  struct dvb_frontend *tmp___88 ;
  void *__r___14 ;
  struct dvb_frontend *(*__a___14)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                   unsigned int ) ;
  void *tmp___90 ;
  void *tmp___91 ;
  struct dvb_frontend *(*tmp___92)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                   unsigned int ) ;
  void *tmp___93 ;
  struct dvb_frontend *tmp___94 ;
  void *__r___15 ;
  struct dvb_frontend *(*__a___15)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___96 ;
  void *tmp___97 ;
  struct dvb_frontend *(*tmp___98)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___99 ;
  struct dvb_frontend *tmp___100 ;
  void *__r___16 ;
  struct dvb_frontend *(*__a___16)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                   unsigned int ) ;
  void *tmp___102 ;
  void *tmp___103 ;
  struct dvb_frontend *(*tmp___104)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                    unsigned int ) ;
  void *tmp___105 ;
  struct dvb_frontend *tmp___106 ;
  void *__r___17 ;
  struct dvb_frontend *(*__a___17)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___108 ;
  void *tmp___109 ;
  struct dvb_frontend *(*tmp___110)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___111 ;
  struct dvb_frontend *tmp___112 ;
  void *__r___18 ;
  struct dvb_frontend *(*__a___18)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                   unsigned int ) ;
  void *tmp___114 ;
  void *tmp___115 ;
  struct dvb_frontend *(*tmp___116)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                    unsigned int ) ;
  void *tmp___117 ;
  struct dvb_frontend *tmp___118 ;
  void *__r___19 ;
  struct dvb_frontend *(*__a___19)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___120 ;
  void *tmp___121 ;
  struct dvb_frontend *(*tmp___122)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___123 ;
  struct dvb_frontend *tmp___124 ;
  void *__r___20 ;
  struct dvb_frontend *(*__a___20)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                   unsigned int ) ;
  void *tmp___126 ;
  void *tmp___127 ;
  struct dvb_frontend *(*tmp___128)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                    unsigned int ) ;
  void *tmp___129 ;
  struct dvb_frontend *tmp___130 ;
  void *__r___21 ;
  struct dvb_frontend *(*__a___21)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___132 ;
  void *tmp___133 ;
  struct dvb_frontend *(*tmp___134)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___135 ;
  struct dvb_frontend *tmp___136 ;
  void *__r___22 ;
  struct dvb_frontend *(*__a___22)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___138 ;
  void *tmp___139 ;
  struct dvb_frontend *(*tmp___140)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 , unsigned int ) ;
  void *tmp___141 ;
  struct dvb_frontend *tmp___142 ;
  void *__r___23 ;
  struct dvb_frontend *(*__a___23)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___144 ;
  void *tmp___145 ;
  struct dvb_frontend *(*tmp___146)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___147 ;
  struct dvb_frontend *tmp___148 ;
  void *__r___24 ;
  struct dvb_frontend *(*__a___24)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___150 ;
  void *tmp___151 ;
  struct dvb_frontend *(*tmp___152)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 , unsigned int ) ;
  void *tmp___153 ;
  struct dvb_frontend *tmp___154 ;
  void *__r___25 ;
  struct dvb_frontend *(*__a___25)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___156 ;
  void *tmp___157 ;
  struct dvb_frontend *(*tmp___158)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___159 ;
  struct dvb_frontend *tmp___160 ;
  void *__r___26 ;
  struct dvb_frontend *(*__a___26)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___162 ;
  void *tmp___163 ;
  struct dvb_frontend *(*tmp___164)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___165 ;
  struct dvb_frontend *tmp___166 ;
  int tmp___167 ;
  void *__r___27 ;
  struct dvb_frontend *(*__a___27)(struct or51132_config const * , struct i2c_adapter * ) ;
  void *tmp___169 ;
  void *tmp___170 ;
  struct dvb_frontend *(*tmp___171)(struct or51132_config const * , struct i2c_adapter * ) ;
  void *tmp___172 ;
  struct dvb_frontend *tmp___173 ;
  void *__r___28 ;
  struct dvb_frontend *(*__a___28)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___175 ;
  void *tmp___176 ;
  struct dvb_frontend *(*tmp___177)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 , unsigned int ) ;
  void *tmp___178 ;
  struct dvb_frontend *tmp___179 ;
  unsigned int tmp___180 ;
  unsigned long __ms ;
  unsigned long tmp___181 ;
  unsigned int tmp___182 ;
  unsigned long __ms___0 ;
  unsigned long tmp___183 ;
  void *__r___29 ;
  struct dvb_frontend *(*__a___29)(struct lgdt330x_config const * , struct i2c_adapter * ) ;
  void *tmp___185 ;
  void *tmp___186 ;
  struct dvb_frontend *(*tmp___187)(struct lgdt330x_config const * , struct i2c_adapter * ) ;
  void *tmp___188 ;
  struct dvb_frontend *tmp___189 ;
  void *__r___30 ;
  struct dvb_frontend *(*__a___30)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___191 ;
  void *tmp___192 ;
  struct dvb_frontend *(*tmp___193)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 , unsigned int ) ;
  void *tmp___194 ;
  struct dvb_frontend *tmp___195 ;
  unsigned int tmp___196 ;
  unsigned long __ms___1 ;
  unsigned long tmp___197 ;
  unsigned int tmp___198 ;
  unsigned long __ms___2 ;
  unsigned long tmp___199 ;
  void *__r___31 ;
  struct dvb_frontend *(*__a___31)(struct lgdt330x_config const * , struct i2c_adapter * ) ;
  void *tmp___201 ;
  void *tmp___202 ;
  struct dvb_frontend *(*tmp___203)(struct lgdt330x_config const * , struct i2c_adapter * ) ;
  void *tmp___204 ;
  struct dvb_frontend *tmp___205 ;
  void *__r___32 ;
  struct dvb_frontend *(*__a___32)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___207 ;
  void *tmp___208 ;
  struct dvb_frontend *(*tmp___209)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 , unsigned int ) ;
  void *tmp___210 ;
  struct dvb_frontend *tmp___211 ;
  unsigned int tmp___212 ;
  unsigned long __ms___3 ;
  unsigned long tmp___213 ;
  unsigned int tmp___214 ;
  unsigned long __ms___4 ;
  unsigned long tmp___215 ;
  void *__r___33 ;
  struct dvb_frontend *(*__a___33)(struct lgdt330x_config const * , struct i2c_adapter * ) ;
  void *tmp___217 ;
  void *tmp___218 ;
  struct dvb_frontend *(*tmp___219)(struct lgdt330x_config const * , struct i2c_adapter * ) ;
  void *tmp___220 ;
  struct dvb_frontend *tmp___221 ;
  void *__r___34 ;
  struct dvb_frontend *(*__a___34)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___223 ;
  void *tmp___224 ;
  struct dvb_frontend *(*tmp___225)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 , unsigned int ) ;
  void *tmp___226 ;
  struct dvb_frontend *tmp___227 ;
  void *__r___35 ;
  struct dvb_frontend *(*__a___35)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 ) ;
  void *tmp___229 ;
  void *tmp___230 ;
  struct dvb_frontend *(*tmp___231)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 ) ;
  void *tmp___232 ;
  struct dvb_frontend *tmp___233 ;
  unsigned int tmp___234 ;
  unsigned long __ms___5 ;
  unsigned long tmp___235 ;
  unsigned int tmp___236 ;
  unsigned long __ms___6 ;
  unsigned long tmp___237 ;
  void *__r___36 ;
  struct dvb_frontend *(*__a___36)(struct lgdt330x_config const * , struct i2c_adapter * ) ;
  void *tmp___239 ;
  void *tmp___240 ;
  struct dvb_frontend *(*tmp___241)(struct lgdt330x_config const * , struct i2c_adapter * ) ;
  void *tmp___242 ;
  struct dvb_frontend *tmp___243 ;
  void *__r___37 ;
  struct dvb_frontend *(*__a___37)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___245 ;
  void *tmp___246 ;
  struct dvb_frontend *(*tmp___247)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 , unsigned int ) ;
  void *tmp___248 ;
  struct dvb_frontend *tmp___249 ;
  void *__r___38 ;
  struct dvb_frontend *(*__a___38)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 ) ;
  void *tmp___251 ;
  void *tmp___252 ;
  struct dvb_frontend *(*tmp___253)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 ) ;
  void *tmp___254 ;
  struct dvb_frontend *tmp___255 ;
  void *__r___39 ;
  struct dvb_frontend *(*__a___39)(struct nxt200x_config const * , struct i2c_adapter * ) ;
  void *tmp___257 ;
  void *tmp___258 ;
  struct dvb_frontend *(*tmp___259)(struct nxt200x_config const * , struct i2c_adapter * ) ;
  void *tmp___260 ;
  struct dvb_frontend *tmp___261 ;
  void *__r___40 ;
  struct dvb_frontend *(*__a___40)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___263 ;
  void *tmp___264 ;
  struct dvb_frontend *(*tmp___265)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 , unsigned int ) ;
  void *tmp___266 ;
  struct dvb_frontend *tmp___267 ;
  void *__r___41 ;
  struct dvb_frontend *(*__a___41)(struct cx24123_config const * , struct i2c_adapter * ) ;
  void *tmp___269 ;
  void *tmp___270 ;
  struct dvb_frontend *(*tmp___271)(struct cx24123_config const * , struct i2c_adapter * ) ;
  void *tmp___272 ;
  struct dvb_frontend *tmp___273 ;
  void *__r___42 ;
  struct dvb_frontend *(*__a___42)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , u8 , u8 ) ;
  void *tmp___275 ;
  void *tmp___276 ;
  struct dvb_frontend *(*tmp___277)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 , u8 , u8 ) ;
  void *tmp___278 ;
  struct dvb_frontend *tmp___279 ;
  void *__r___43 ;
  struct dvb_frontend *(*__a___43)(struct cx24123_config const * , struct i2c_adapter * ) ;
  void *tmp___281 ;
  void *tmp___282 ;
  struct dvb_frontend *(*tmp___283)(struct cx24123_config const * , struct i2c_adapter * ) ;
  void *tmp___284 ;
  struct dvb_frontend *tmp___285 ;
  void *__r___44 ;
  struct dvb_frontend *(*__a___44)(struct cx24123_config const * , struct i2c_adapter * ) ;
  void *tmp___287 ;
  void *tmp___288 ;
  struct dvb_frontend *(*tmp___289)(struct cx24123_config const * , struct i2c_adapter * ) ;
  void *tmp___290 ;
  struct dvb_frontend *tmp___291 ;
  void *__r___45 ;
  struct dvb_frontend *(*__a___45)(struct s5h1409_config const * , struct i2c_adapter * ) ;
  void *tmp___293 ;
  void *tmp___294 ;
  struct dvb_frontend *(*tmp___295)(struct s5h1409_config const * , struct i2c_adapter * ) ;
  void *tmp___296 ;
  struct dvb_frontend *tmp___297 ;
  void *__r___46 ;
  struct dvb_frontend *(*__a___46)(struct dvb_frontend * , struct i2c_adapter * ,
                                   struct xc5000_config const * ) ;
  void *tmp___299 ;
  void *tmp___300 ;
  struct dvb_frontend *(*tmp___301)(struct dvb_frontend * , struct i2c_adapter * ,
                                    struct xc5000_config const * ) ;
  void *tmp___302 ;
  struct dvb_frontend *tmp___303 ;
  void *__r___47 ;
  struct dvb_frontend *(*__a___47)(struct s5h1409_config const * , struct i2c_adapter * ) ;
  void *tmp___305 ;
  void *tmp___306 ;
  struct dvb_frontend *(*tmp___307)(struct s5h1409_config const * , struct i2c_adapter * ) ;
  void *tmp___308 ;
  struct dvb_frontend *tmp___309 ;
  struct dvb_frontend *fe ;
  struct xc2028_config cfg ;
  struct xc2028_ctrl ctl ;
  void *__r___48 ;
  struct dvb_frontend *(*__a___48)(struct dvb_frontend * , struct xc2028_config * ) ;
  void *tmp___311 ;
  void *tmp___312 ;
  struct dvb_frontend *(*tmp___313)(struct dvb_frontend * , struct xc2028_config * ) ;
  void *tmp___314 ;
  struct dvb_frontend *tmp___315 ;
  void *__r___49 ;
  struct dvb_frontend *(*__a___49)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___317 ;
  void *tmp___318 ;
  struct dvb_frontend *(*tmp___319)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___320 ;
  struct dvb_frontend *tmp___321 ;
  int tmp___322 ;
  void *__r___50 ;
  struct dvb_frontend *(*__a___50)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___324 ;
  void *tmp___325 ;
  struct dvb_frontend *(*tmp___326)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___327 ;
  struct dvb_frontend *tmp___328 ;
  int tmp___329 ;
  void *__r___51 ;
  struct dvb_frontend *(*__a___51)(struct s5h1409_config const * , struct i2c_adapter * ) ;
  void *tmp___331 ;
  void *tmp___332 ;
  struct dvb_frontend *(*tmp___333)(struct s5h1409_config const * , struct i2c_adapter * ) ;
  void *tmp___334 ;
  struct dvb_frontend *tmp___335 ;
  int tmp___336 ;
  void *__r___52 ;
  struct dvb_frontend *(*__a___52)(struct s5h1411_config const * , struct i2c_adapter * ) ;
  void *tmp___338 ;
  void *tmp___339 ;
  struct dvb_frontend *(*tmp___340)(struct s5h1411_config const * , struct i2c_adapter * ) ;
  void *tmp___341 ;
  struct dvb_frontend *tmp___342 ;
  void *__r___53 ;
  struct dvb_frontend *(*__a___53)(struct dvb_frontend * , struct i2c_adapter * ,
                                   struct xc5000_config const * ) ;
  void *tmp___344 ;
  void *tmp___345 ;
  struct dvb_frontend *(*tmp___346)(struct dvb_frontend * , struct i2c_adapter * ,
                                    struct xc5000_config const * ) ;
  void *tmp___347 ;
  struct dvb_frontend *tmp___348 ;
  void *__r___54 ;
  struct dvb_frontend *(*__a___54)(struct cx24116_config const * , struct i2c_adapter * ) ;
  void *tmp___350 ;
  void *tmp___351 ;
  struct dvb_frontend *(*tmp___352)(struct cx24116_config const * , struct i2c_adapter * ) ;
  void *tmp___353 ;
  struct dvb_frontend *tmp___354 ;
  void *__r___55 ;
  struct dvb_frontend *(*__a___55)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , u8 , u8 ) ;
  void *tmp___356 ;
  void *tmp___357 ;
  struct dvb_frontend *(*tmp___358)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 , u8 , u8 ) ;
  void *tmp___359 ;
  struct dvb_frontend *tmp___360 ;
  void *__r___56 ;
  struct dvb_frontend *(*__a___56)(struct cx22702_config const * , struct i2c_adapter * ) ;
  void *tmp___362 ;
  void *tmp___363 ;
  struct dvb_frontend *(*tmp___364)(struct cx22702_config const * , struct i2c_adapter * ) ;
  void *tmp___365 ;
  struct dvb_frontend *tmp___366 ;
  void *__r___57 ;
  struct dvb_frontend *(*__a___57)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___368 ;
  void *tmp___369 ;
  struct dvb_frontend *(*tmp___370)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 , unsigned int ) ;
  void *tmp___371 ;
  struct dvb_frontend *tmp___372 ;
  void *__r___58 ;
  struct dvb_frontend *(*__a___58)(struct cx24116_config const * , struct i2c_adapter * ) ;
  void *tmp___374 ;
  void *tmp___375 ;
  struct dvb_frontend *(*tmp___376)(struct cx24116_config const * , struct i2c_adapter * ) ;
  void *tmp___377 ;
  struct dvb_frontend *tmp___378 ;
  void *__r___59 ;
  struct dvb_frontend *(*__a___59)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , u8 , u8 ) ;
  void *tmp___380 ;
  void *tmp___381 ;
  struct dvb_frontend *(*tmp___382)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 , u8 , u8 ) ;
  void *tmp___383 ;
  struct dvb_frontend *tmp___384 ;
  void *__r___60 ;
  struct dvb_frontend *(*__a___60)(struct stv0299_config const * , struct i2c_adapter * ) ;
  void *tmp___386 ;
  void *tmp___387 ;
  struct dvb_frontend *(*tmp___388)(struct stv0299_config const * , struct i2c_adapter * ) ;
  void *tmp___389 ;
  struct dvb_frontend *tmp___390 ;
  void *__r___61 ;
  struct dvb_frontend *(*__a___61)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                   unsigned int ) ;
  void *tmp___392 ;
  void *tmp___393 ;
  struct dvb_frontend *(*tmp___394)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                    unsigned int ) ;
  void *tmp___395 ;
  struct dvb_frontend *tmp___396 ;
  void *__r___62 ;
  struct dvb_frontend *(*__a___62)(struct stv0288_config const * , struct i2c_adapter * ) ;
  void *tmp___398 ;
  void *tmp___399 ;
  struct dvb_frontend *(*tmp___400)(struct stv0288_config const * , struct i2c_adapter * ) ;
  void *tmp___401 ;
  struct dvb_frontend *tmp___402 ;
  void *__r___63 ;
  struct dvb_frontend *(*__a___63)(struct dvb_frontend * , int , struct i2c_adapter * ) ;
  void *tmp___404 ;
  void *tmp___405 ;
  struct dvb_frontend *(*tmp___406)(struct dvb_frontend * , int , struct i2c_adapter * ) ;
  void *tmp___407 ;
  struct dvb_frontend *tmp___408 ;
  void *__r___64 ;
  struct dvb_frontend *(*__a___64)(struct cx24116_config const * , struct i2c_adapter * ) ;
  void *tmp___410 ;
  void *tmp___411 ;
  struct dvb_frontend *(*tmp___412)(struct cx24116_config const * , struct i2c_adapter * ) ;
  void *tmp___413 ;
  struct dvb_frontend *tmp___414 ;
  void *__r___65 ;
  struct dvb_frontend *(*__a___65)(struct cx24116_config const * , struct i2c_adapter * ) ;
  void *tmp___416 ;
  void *tmp___417 ;
  struct dvb_frontend *(*tmp___418)(struct cx24116_config const * , struct i2c_adapter * ) ;
  void *tmp___419 ;
  struct dvb_frontend *tmp___420 ;
  void *__r___66 ;
  struct dvb_frontend *(*__a___66)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___422 ;
  void *tmp___423 ;
  struct dvb_frontend *(*tmp___424)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___425 ;
  struct dvb_frontend *tmp___426 ;
  int tmp___427 ;
  struct dvb_tuner_ops *tuner_ops ;
  void *__r___67 ;
  struct dvb_frontend *(*__a___67)(struct stv0900_config const * , struct i2c_adapter * ,
                                   int ) ;
  void *tmp___429 ;
  void *tmp___430 ;
  struct dvb_frontend *(*tmp___431)(struct stv0900_config const * , struct i2c_adapter * ,
                                    int ) ;
  void *tmp___432 ;
  struct dvb_frontend *tmp___433 ;
  void *__r___68 ;
  struct dvb_frontend *(*__a___68)(struct dvb_frontend * , struct stb6100_config const * ,
                                   struct i2c_adapter * ) ;
  void *tmp___435 ;
  void *tmp___436 ;
  struct dvb_frontend *(*tmp___437)(struct dvb_frontend * , struct stb6100_config const * ,
                                    struct i2c_adapter * ) ;
  void *tmp___438 ;
  struct dvb_frontend *tmp___439 ;
  unsigned int tmp___440 ;
  unsigned int tmp___441 ;
  unsigned long __ms___7 ;
  unsigned long tmp___442 ;
  unsigned int tmp___443 ;
  unsigned long __ms___8 ;
  unsigned long tmp___444 ;
  void *__r___69 ;
  struct dvb_frontend *(*__a___69)(struct stv0299_config const * , struct i2c_adapter * ) ;
  void *tmp___446 ;
  void *tmp___447 ;
  struct dvb_frontend *(*tmp___448)(struct stv0299_config const * , struct i2c_adapter * ) ;
  void *tmp___449 ;
  struct dvb_frontend *tmp___450 ;
  void *__r___70 ;
  struct dvb_frontend *(*__a___70)(struct mb86a16_config const * , struct i2c_adapter * ) ;
  void *tmp___452 ;
  void *tmp___453 ;
  struct dvb_frontend *(*tmp___454)(struct mb86a16_config const * , struct i2c_adapter * ) ;
  void *tmp___455 ;
  struct dvb_frontend *tmp___456 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___457 ;
  {
  core = dev->core;
  fe1 = 0;
  mfe_shared = 0;
  if (core->i2c_rc != 0U) {
    printk("<3>%s/2: no i2c-bus available, cannot attach dvb drivers\n", (char *)(& core->name));
    goto frontend_detach;
  } else {
  }
  fe0 = videobuf_dvb_get_frontend(& dev->frontends, 1);
  if ((unsigned long )fe0 == (unsigned long )((struct videobuf_dvb_frontend *)0)) {
    goto frontend_detach;
  } else {
  }
  dev->frontends.gate = 0;
  core->gate_ctrl = & cx88_dvb_gate_ctrl;
  switch (core->boardnr) {
  case 18U:
  __r = 0;
  tmp___3 = __symbol_get("cx22702_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                 struct i2c_adapter * ))tmp___3) != (unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                                                                                               struct i2c_adapter * ))0)) {
    tmp___0 = __symbol_get("cx22702_attach");
    tmp___2 = (struct dvb_frontend *(*)(struct cx22702_config const * , struct i2c_adapter * ))tmp___0;
  } else {
    __request_module(1, "symbol:cx22702_attach");
    tmp___1 = __symbol_get("cx22702_attach");
    tmp___2 = (struct dvb_frontend *(*)(struct cx22702_config const * , struct i2c_adapter * ))tmp___1;
  }
  __a = tmp___2;
  if ((unsigned long )__a != (unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                                        struct i2c_adapter * ))0)) {
    tmp___4 = (*__a)(& connexant_refboard_config, & core->i2c_adap);
    __r = (void *)tmp___4;
    if ((unsigned long )__r == (unsigned long )((void *)0)) {
      __symbol_put("cx22702_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx22702_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___0 = 0;
    tmp___9 = __symbol_get("dvb_pll_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , int ,
                                                   struct i2c_adapter * , unsigned int ))tmp___9) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                 int ,
                                                                                                                                                 struct i2c_adapter * ,
                                                                                                                                                 unsigned int ))0)) {
      tmp___6 = __symbol_get("dvb_pll_attach");
      tmp___8 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                          unsigned int ))tmp___6;
    } else {
      __request_module(1, "symbol:dvb_pll_attach");
      tmp___7 = __symbol_get("dvb_pll_attach");
      tmp___8 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                          unsigned int ))tmp___7;
    }
    __a___0 = tmp___8;
    if ((unsigned long )__a___0 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              int ,
                                                                              struct i2c_adapter * ,
                                                                              unsigned int ))0)) {
      tmp___10 = (*__a___0)(fe0->dvb.frontend, 97, & core->i2c_adap, 2U);
      __r___0 = (void *)tmp___10;
      if ((unsigned long )__r___0 == (unsigned long )((void *)0)) {
        __symbol_put("dvb_pll_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol dvb_pll_attach()\n");
    }
    if ((unsigned long )__r___0 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 30U: ;
  case 19U: ;
  case 43U: ;
  case 35U:
  __r___1 = 0;
  tmp___15 = __symbol_get("cx22702_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                 struct i2c_adapter * ))tmp___15) != (unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                                                                                                struct i2c_adapter * ))0)) {
    tmp___12 = __symbol_get("cx22702_attach");
    tmp___14 = (struct dvb_frontend *(*)(struct cx22702_config const * , struct i2c_adapter * ))tmp___12;
  } else {
    __request_module(1, "symbol:cx22702_attach");
    tmp___13 = __symbol_get("cx22702_attach");
    tmp___14 = (struct dvb_frontend *(*)(struct cx22702_config const * , struct i2c_adapter * ))tmp___13;
  }
  __a___1 = tmp___14;
  if ((unsigned long )__a___1 != (unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___16 = (*__a___1)(& connexant_refboard_config, & core->i2c_adap);
    __r___1 = (void *)tmp___16;
    if ((unsigned long )__r___1 == (unsigned long )((void *)0)) {
      __symbol_put("cx22702_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx22702_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___1;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___2 = 0;
    tmp___21 = __symbol_get("dvb_pll_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , int ,
                                                   struct i2c_adapter * , unsigned int ))tmp___21) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                  int ,
                                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                                  unsigned int ))0)) {
      tmp___18 = __symbol_get("dvb_pll_attach");
      tmp___20 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                           unsigned int ))tmp___18;
    } else {
      __request_module(1, "symbol:dvb_pll_attach");
      tmp___19 = __symbol_get("dvb_pll_attach");
      tmp___20 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                           unsigned int ))tmp___19;
    }
    __a___2 = tmp___20;
    if ((unsigned long )__a___2 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              int ,
                                                                              struct i2c_adapter * ,
                                                                              unsigned int ))0)) {
      tmp___22 = (*__a___2)(fe0->dvb.frontend, 96, & core->i2c_adap, 1U);
      __r___2 = (void *)tmp___22;
      if ((unsigned long )__r___2 == (unsigned long )((void *)0)) {
        __symbol_put("dvb_pll_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol dvb_pll_attach()\n");
    }
    if ((unsigned long )__r___2 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 51U: ;
  case 82U: ;
  case 40U: ;
  case 41U: ;
  case 56U:
  __r___3 = 0;
  tmp___27 = __symbol_get("cx22702_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                 struct i2c_adapter * ))tmp___27) != (unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                                                                                                struct i2c_adapter * ))0)) {
    tmp___24 = __symbol_get("cx22702_attach");
    tmp___26 = (struct dvb_frontend *(*)(struct cx22702_config const * , struct i2c_adapter * ))tmp___24;
  } else {
    __request_module(1, "symbol:cx22702_attach");
    tmp___25 = __symbol_get("cx22702_attach");
    tmp___26 = (struct dvb_frontend *(*)(struct cx22702_config const * , struct i2c_adapter * ))tmp___25;
  }
  __a___3 = tmp___26;
  if ((unsigned long )__a___3 != (unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___28 = (*__a___3)(& hauppauge_hvr_config, & core->i2c_adap);
    __r___3 = (void *)tmp___28;
    if ((unsigned long )__r___3 == (unsigned long )((void *)0)) {
      __symbol_put("cx22702_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx22702_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___3;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___4 = 0;
    tmp___33 = __symbol_get("simple_tuner_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , unsigned int ))tmp___33) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                 struct i2c_adapter * ,
                                                                                                                                 u8 ,
                                                                                                                                 unsigned int ))0)) {
      tmp___30 = __symbol_get("simple_tuner_attach");
      tmp___32 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                           u8 , unsigned int ))tmp___30;
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___31 = __symbol_get("simple_tuner_attach");
      tmp___32 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                           u8 , unsigned int ))tmp___31;
    }
    __a___4 = tmp___32;
    if ((unsigned long )__a___4 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              struct i2c_adapter * ,
                                                                              u8 ,
                                                                              unsigned int ))0)) {
      tmp___34 = (*__a___4)(fe0->dvb.frontend, & core->i2c_adap, 97, 63U);
      __r___4 = (void *)tmp___34;
      if ((unsigned long )__r___4 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___4 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 53U:
  mfe_shared = 1;
  dev->frontends.gate = 2;
  __r___5 = 0;
  tmp___39 = __symbol_get("cx24123_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx24123_config const * ,
                                                 struct i2c_adapter * ))tmp___39) != (unsigned long )((struct dvb_frontend *(*)(struct cx24123_config const * ,
                                                                                                                                struct i2c_adapter * ))0)) {
    tmp___36 = __symbol_get("cx24123_attach");
    tmp___38 = (struct dvb_frontend *(*)(struct cx24123_config const * , struct i2c_adapter * ))tmp___36;
  } else {
    __request_module(1, "symbol:cx24123_attach");
    tmp___37 = __symbol_get("cx24123_attach");
    tmp___38 = (struct dvb_frontend *(*)(struct cx24123_config const * , struct i2c_adapter * ))tmp___37;
  }
  __a___5 = tmp___38;
  if ((unsigned long )__a___5 != (unsigned long )((struct dvb_frontend *(*)(struct cx24123_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___40 = (*__a___5)(& hauppauge_novas_config, & (dev->core)->i2c_adap);
    __r___5 = (void *)tmp___40;
    if ((unsigned long )__r___5 == (unsigned long )((void *)0)) {
      __symbol_put("cx24123_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx24123_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___5;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___6 = 0;
    tmp___45 = __symbol_get("isl6421_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , u8 , u8 ))tmp___45) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                             struct i2c_adapter * ,
                                                                                                                             u8 ,
                                                                                                                             u8 ,
                                                                                                                             u8 ))0)) {
      tmp___42 = __symbol_get("isl6421_attach");
      tmp___44 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                           u8 , u8 , u8 ))tmp___42;
    } else {
      __request_module(1, "symbol:isl6421_attach");
      tmp___43 = __symbol_get("isl6421_attach");
      tmp___44 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                           u8 , u8 , u8 ))tmp___43;
    }
    __a___6 = tmp___44;
    if ((unsigned long )__a___6 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              struct i2c_adapter * ,
                                                                              u8 ,
                                                                              u8 ,
                                                                              u8 ))0)) {
      tmp___46 = (*__a___6)(fe0->dvb.frontend, & (dev->core)->i2c_adap, 8, 64, 0);
      __r___6 = (void *)tmp___46;
      if ((unsigned long )__r___6 == (unsigned long )((void *)0)) {
        __symbol_put("isl6421_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol isl6421_attach()\n");
    }
    if ((unsigned long )__r___6 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  fe1 = videobuf_dvb_get_frontend(& dev->frontends, 2);
  if ((unsigned long )fe1 == (unsigned long )((struct videobuf_dvb_frontend *)0)) {
    goto frontend_detach;
  } else {
  }
  __r___7 = 0;
  tmp___51 = __symbol_get("cx22702_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                 struct i2c_adapter * ))tmp___51) != (unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                                                                                                struct i2c_adapter * ))0)) {
    tmp___48 = __symbol_get("cx22702_attach");
    tmp___50 = (struct dvb_frontend *(*)(struct cx22702_config const * , struct i2c_adapter * ))tmp___48;
  } else {
    __request_module(1, "symbol:cx22702_attach");
    tmp___49 = __symbol_get("cx22702_attach");
    tmp___50 = (struct dvb_frontend *(*)(struct cx22702_config const * , struct i2c_adapter * ))tmp___49;
  }
  __a___7 = tmp___50;
  if ((unsigned long )__a___7 != (unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___52 = (*__a___7)(& hauppauge_hvr_config, & (dev->core)->i2c_adap);
    __r___7 = (void *)tmp___52;
    if ((unsigned long )__r___7 == (unsigned long )((void *)0)) {
      __symbol_put("cx22702_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx22702_attach()\n");
  }
  fe1->dvb.frontend = (struct dvb_frontend *)__r___7;
  if ((unsigned long )fe1->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    (fe1->dvb.frontend)->id = 1;
    __r___8 = 0;
    tmp___57 = __symbol_get("simple_tuner_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , unsigned int ))tmp___57) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                 struct i2c_adapter * ,
                                                                                                                                 u8 ,
                                                                                                                                 unsigned int ))0)) {
      tmp___54 = __symbol_get("simple_tuner_attach");
      tmp___56 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                           u8 , unsigned int ))tmp___54;
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___55 = __symbol_get("simple_tuner_attach");
      tmp___56 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                           u8 , unsigned int ))tmp___55;
    }
    __a___8 = tmp___56;
    if ((unsigned long )__a___8 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              struct i2c_adapter * ,
                                                                              u8 ,
                                                                              unsigned int ))0)) {
      tmp___58 = (*__a___8)(fe1->dvb.frontend, & (dev->core)->i2c_adap, 97, 63U);
      __r___8 = (void *)tmp___58;
      if ((unsigned long )__r___8 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___8 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 21U:
  __r___9 = 0;
  tmp___63 = __symbol_get("mt352_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___63) != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                                                                                                                struct i2c_adapter * ))0)) {
    tmp___60 = __symbol_get("mt352_attach");
    tmp___62 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___60;
  } else {
    __request_module(1, "symbol:mt352_attach");
    tmp___61 = __symbol_get("mt352_attach");
    tmp___62 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___61;
  }
  __a___9 = tmp___62;
  if ((unsigned long )__a___9 != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___64 = (*__a___9)(& dvico_fusionhdtv, & core->i2c_adap);
    __r___9 = (void *)tmp___64;
    if ((unsigned long )__r___9 == (unsigned long )((void *)0)) {
      __symbol_put("mt352_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol mt352_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___9;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___10 = 0;
    tmp___69 = __symbol_get("dvb_pll_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , int ,
                                                   struct i2c_adapter * , unsigned int ))tmp___69) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                  int ,
                                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                                  unsigned int ))0)) {
      tmp___66 = __symbol_get("dvb_pll_attach");
      tmp___68 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                           unsigned int ))tmp___66;
    } else {
      __request_module(1, "symbol:dvb_pll_attach");
      tmp___67 = __symbol_get("dvb_pll_attach");
      tmp___68 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                           unsigned int ))tmp___67;
    }
    __a___10 = tmp___68;
    if ((unsigned long )__a___10 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               int ,
                                                                               struct i2c_adapter * ,
                                                                               unsigned int ))0)) {
      tmp___70 = (*__a___10)(fe0->dvb.frontend, 96, 0, 1U);
      __r___10 = (void *)tmp___70;
      if ((unsigned long )__r___10 == (unsigned long )((void *)0)) {
        __symbol_put("dvb_pll_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol dvb_pll_attach()\n");
    }
    if ((unsigned long )__r___10 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
    goto ldv_41069;
  } else {
  }
  __r___11 = 0;
  tmp___75 = __symbol_get("zl10353_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                 struct i2c_adapter * ))tmp___75) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                struct i2c_adapter * ))0)) {
    tmp___72 = __symbol_get("zl10353_attach");
    tmp___74 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___72;
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___73 = __symbol_get("zl10353_attach");
    tmp___74 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___73;
  }
  __a___11 = tmp___74;
  if ((unsigned long )__a___11 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___76 = (*__a___11)(& dvico_fusionhdtv_plus_v1_1, & core->i2c_adap);
    __r___11 = (void *)tmp___76;
    if ((unsigned long )__r___11 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol zl10353_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___11;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___12 = 0;
    tmp___81 = __symbol_get("dvb_pll_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , int ,
                                                   struct i2c_adapter * , unsigned int ))tmp___81) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                  int ,
                                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                                  unsigned int ))0)) {
      tmp___78 = __symbol_get("dvb_pll_attach");
      tmp___80 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                           unsigned int ))tmp___78;
    } else {
      __request_module(1, "symbol:dvb_pll_attach");
      tmp___79 = __symbol_get("dvb_pll_attach");
      tmp___80 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                           unsigned int ))tmp___79;
    }
    __a___12 = tmp___80;
    if ((unsigned long )__a___12 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               int ,
                                                                               struct i2c_adapter * ,
                                                                               unsigned int ))0)) {
      tmp___82 = (*__a___12)(fe0->dvb.frontend, 96, 0, 1U);
      __r___12 = (void *)tmp___82;
      if ((unsigned long )__r___12 == (unsigned long )((void *)0)) {
        __symbol_put("dvb_pll_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol dvb_pll_attach()\n");
    }
    if ((unsigned long )__r___12 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 44U:
  __r___13 = 0;
  tmp___87 = __symbol_get("mt352_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___87) != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                                                                                                                struct i2c_adapter * ))0)) {
    tmp___84 = __symbol_get("mt352_attach");
    tmp___86 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___84;
  } else {
    __request_module(1, "symbol:mt352_attach");
    tmp___85 = __symbol_get("mt352_attach");
    tmp___86 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___85;
  }
  __a___13 = tmp___86;
  if ((unsigned long )__a___13 != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___88 = (*__a___13)(& dvico_fusionhdtv_dual, & core->i2c_adap);
    __r___13 = (void *)tmp___88;
    if ((unsigned long )__r___13 == (unsigned long )((void *)0)) {
      __symbol_put("mt352_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol mt352_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___13;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___14 = 0;
    tmp___93 = __symbol_get("dvb_pll_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , int ,
                                                   struct i2c_adapter * , unsigned int ))tmp___93) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                  int ,
                                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                                  unsigned int ))0)) {
      tmp___90 = __symbol_get("dvb_pll_attach");
      tmp___92 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                           unsigned int ))tmp___90;
    } else {
      __request_module(1, "symbol:dvb_pll_attach");
      tmp___91 = __symbol_get("dvb_pll_attach");
      tmp___92 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                           unsigned int ))tmp___91;
    }
    __a___14 = tmp___92;
    if ((unsigned long )__a___14 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               int ,
                                                                               struct i2c_adapter * ,
                                                                               unsigned int ))0)) {
      tmp___94 = (*__a___14)(fe0->dvb.frontend, 97, 0, 1U);
      __r___14 = (void *)tmp___94;
      if ((unsigned long )__r___14 == (unsigned long )((void *)0)) {
        __symbol_put("dvb_pll_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol dvb_pll_attach()\n");
    }
    if ((unsigned long )__r___14 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
    goto ldv_41069;
  } else {
  }
  __r___15 = 0;
  tmp___99 = __symbol_get("zl10353_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                 struct i2c_adapter * ))tmp___99) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                struct i2c_adapter * ))0)) {
    tmp___96 = __symbol_get("zl10353_attach");
    tmp___98 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___96;
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___97 = __symbol_get("zl10353_attach");
    tmp___98 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___97;
  }
  __a___15 = tmp___98;
  if ((unsigned long )__a___15 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___100 = (*__a___15)(& dvico_fusionhdtv_plus_v1_1, & core->i2c_adap);
    __r___15 = (void *)tmp___100;
    if ((unsigned long )__r___15 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol zl10353_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___15;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___16 = 0;
    tmp___105 = __symbol_get("dvb_pll_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , int ,
                                                   struct i2c_adapter * , unsigned int ))tmp___105) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                   int ,
                                                                                                                                                   struct i2c_adapter * ,
                                                                                                                                                   unsigned int ))0)) {
      tmp___102 = __symbol_get("dvb_pll_attach");
      tmp___104 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                            unsigned int ))tmp___102;
    } else {
      __request_module(1, "symbol:dvb_pll_attach");
      tmp___103 = __symbol_get("dvb_pll_attach");
      tmp___104 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                            unsigned int ))tmp___103;
    }
    __a___16 = tmp___104;
    if ((unsigned long )__a___16 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               int ,
                                                                               struct i2c_adapter * ,
                                                                               unsigned int ))0)) {
      tmp___106 = (*__a___16)(fe0->dvb.frontend, 97, 0, 1U);
      __r___16 = (void *)tmp___106;
      if ((unsigned long )__r___16 == (unsigned long )((void *)0)) {
        __symbol_put("dvb_pll_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol dvb_pll_attach()\n");
    }
    if ((unsigned long )__r___16 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 15U:
  __r___17 = 0;
  tmp___111 = __symbol_get("mt352_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___111) != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___108 = __symbol_get("mt352_attach");
    tmp___110 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___108;
  } else {
    __request_module(1, "symbol:mt352_attach");
    tmp___109 = __symbol_get("mt352_attach");
    tmp___110 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___109;
  }
  __a___17 = tmp___110;
  if ((unsigned long )__a___17 != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___112 = (*__a___17)(& dvico_fusionhdtv, & core->i2c_adap);
    __r___17 = (void *)tmp___112;
    if ((unsigned long )__r___17 == (unsigned long )((void *)0)) {
      __symbol_put("mt352_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol mt352_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___17;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___18 = 0;
    tmp___117 = __symbol_get("dvb_pll_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , int ,
                                                   struct i2c_adapter * , unsigned int ))tmp___117) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                   int ,
                                                                                                                                                   struct i2c_adapter * ,
                                                                                                                                                   unsigned int ))0)) {
      tmp___114 = __symbol_get("dvb_pll_attach");
      tmp___116 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                            unsigned int ))tmp___114;
    } else {
      __request_module(1, "symbol:dvb_pll_attach");
      tmp___115 = __symbol_get("dvb_pll_attach");
      tmp___116 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                            unsigned int ))tmp___115;
    }
    __a___18 = tmp___116;
    if ((unsigned long )__a___18 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               int ,
                                                                               struct i2c_adapter * ,
                                                                               unsigned int ))0)) {
      tmp___118 = (*__a___18)(fe0->dvb.frontend, 97, 0, 3U);
      __r___18 = (void *)tmp___118;
      if ((unsigned long )__r___18 == (unsigned long )((void *)0)) {
        __symbol_put("dvb_pll_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol dvb_pll_attach()\n");
    }
    if ((unsigned long )__r___18 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 14U: ;
  case 23U: ;
  case 29U:
  __r___19 = 0;
  tmp___123 = __symbol_get("mt352_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___123) != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___120 = __symbol_get("mt352_attach");
    tmp___122 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___120;
  } else {
    __request_module(1, "symbol:mt352_attach");
    tmp___121 = __symbol_get("mt352_attach");
    tmp___122 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___121;
  }
  __a___19 = tmp___122;
  if ((unsigned long )__a___19 != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___124 = (*__a___19)(& dntv_live_dvbt_config, & core->i2c_adap);
    __r___19 = (void *)tmp___124;
    if ((unsigned long )__r___19 == (unsigned long )((void *)0)) {
      __symbol_put("mt352_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol mt352_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___19;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___20 = 0;
    tmp___129 = __symbol_get("dvb_pll_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , int ,
                                                   struct i2c_adapter * , unsigned int ))tmp___129) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                   int ,
                                                                                                                                                   struct i2c_adapter * ,
                                                                                                                                                   unsigned int ))0)) {
      tmp___126 = __symbol_get("dvb_pll_attach");
      tmp___128 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                            unsigned int ))tmp___126;
    } else {
      __request_module(1, "symbol:dvb_pll_attach");
      tmp___127 = __symbol_get("dvb_pll_attach");
      tmp___128 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                            unsigned int ))tmp___127;
    }
    __a___20 = tmp___128;
    if ((unsigned long )__a___20 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               int ,
                                                                               struct i2c_adapter * ,
                                                                               unsigned int ))0)) {
      tmp___130 = (*__a___20)(fe0->dvb.frontend, 97, 0, 4U);
      __r___20 = (void *)tmp___130;
      if ((unsigned long )__r___20 == (unsigned long )((void *)0)) {
        __symbol_put("dvb_pll_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol dvb_pll_attach()\n");
    }
    if ((unsigned long )__r___20 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 42U:
  __r___21 = 0;
  tmp___135 = __symbol_get("mt352_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___135) != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___132 = __symbol_get("mt352_attach");
    tmp___134 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___132;
  } else {
    __request_module(1, "symbol:mt352_attach");
    tmp___133 = __symbol_get("mt352_attach");
    tmp___134 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___133;
  }
  __a___21 = tmp___134;
  if ((unsigned long )__a___21 != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___136 = (*__a___21)(& dntv_live_dvbt_pro_config, & (dev->vp3054)->adap);
    __r___21 = (void *)tmp___136;
    if ((unsigned long )__r___21 == (unsigned long )((void *)0)) {
      __symbol_put("mt352_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol mt352_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___21;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___22 = 0;
    tmp___141 = __symbol_get("simple_tuner_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , unsigned int ))tmp___141) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                  u8 ,
                                                                                                                                  unsigned int ))0)) {
      tmp___138 = __symbol_get("simple_tuner_attach");
      tmp___140 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___138;
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___139 = __symbol_get("simple_tuner_attach");
      tmp___140 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___139;
    }
    __a___22 = tmp___140;
    if ((unsigned long )__a___22 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               unsigned int ))0)) {
      tmp___142 = (*__a___22)(fe0->dvb.frontend, & core->i2c_adap, 97, 63U);
      __r___22 = (void *)tmp___142;
      if ((unsigned long )__r___22 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___22 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 46U:
  __r___23 = 0;
  tmp___147 = __symbol_get("zl10353_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                 struct i2c_adapter * ))tmp___147) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___144 = __symbol_get("zl10353_attach");
    tmp___146 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___144;
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___145 = __symbol_get("zl10353_attach");
    tmp___146 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___145;
  }
  __a___23 = tmp___146;
  if ((unsigned long )__a___23 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___148 = (*__a___23)(& dvico_fusionhdtv_hybrid, & core->i2c_adap);
    __r___23 = (void *)tmp___148;
    if ((unsigned long )__r___23 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol zl10353_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___23;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___24 = 0;
    tmp___153 = __symbol_get("simple_tuner_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , unsigned int ))tmp___153) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                  u8 ,
                                                                                                                                  unsigned int ))0)) {
      tmp___150 = __symbol_get("simple_tuner_attach");
      tmp___152 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___150;
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___151 = __symbol_get("simple_tuner_attach");
      tmp___152 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___151;
    }
    __a___24 = tmp___152;
    if ((unsigned long )__a___24 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               unsigned int ))0)) {
      tmp___154 = (*__a___24)(fe0->dvb.frontend, & core->i2c_adap, 97, 72U);
      __r___24 = (void *)tmp___154;
      if ((unsigned long )__r___24 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___24 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 64U:
  __r___25 = 0;
  tmp___159 = __symbol_get("zl10353_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                 struct i2c_adapter * ))tmp___159) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___156 = __symbol_get("zl10353_attach");
    tmp___158 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___156;
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___157 = __symbol_get("zl10353_attach");
    tmp___158 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___157;
  }
  __a___25 = tmp___158;
  if ((unsigned long )__a___25 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___160 = (*__a___25)(& dvico_fusionhdtv_xc3028, & core->i2c_adap);
    __r___25 = (void *)tmp___160;
    if ((unsigned long )__r___25 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol zl10353_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___25;
  if ((unsigned long )fe0->dvb.frontend == (unsigned long )((struct dvb_frontend *)0)) {
    __r___26 = 0;
    tmp___165 = __symbol_get("mt352_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                   struct i2c_adapter * ))tmp___165) != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                                                                                   struct i2c_adapter * ))0)) {
      tmp___162 = __symbol_get("mt352_attach");
      tmp___164 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___162;
    } else {
      __request_module(1, "symbol:mt352_attach");
      tmp___163 = __symbol_get("mt352_attach");
      tmp___164 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___163;
    }
    __a___26 = tmp___164;
    if ((unsigned long )__a___26 != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                               struct i2c_adapter * ))0)) {
      tmp___166 = (*__a___26)(& dvico_fusionhdtv_mt352_xc3028, & core->i2c_adap);
      __r___26 = (void *)tmp___166;
      if ((unsigned long )__r___26 == (unsigned long )((void *)0)) {
        __symbol_put("mt352_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol mt352_attach()\n");
    }
    fe0->dvb.frontend = (struct dvb_frontend *)__r___26;
  } else {
  }
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    (fe0->dvb.frontend)->ops.i2c_gate_ctrl = 0;
  } else {
  }
  tmp___167 = attach_xc3028(97, dev);
  if (tmp___167 < 0) {
    goto frontend_detach;
  } else {
  }
  goto ldv_41069;
  case 22U:
  __r___27 = 0;
  tmp___172 = __symbol_get("or51132_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct or51132_config const * ,
                                                 struct i2c_adapter * ))tmp___172) != (unsigned long )((struct dvb_frontend *(*)(struct or51132_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___169 = __symbol_get("or51132_attach");
    tmp___171 = (struct dvb_frontend *(*)(struct or51132_config const * , struct i2c_adapter * ))tmp___169;
  } else {
    __request_module(1, "symbol:or51132_attach");
    tmp___170 = __symbol_get("or51132_attach");
    tmp___171 = (struct dvb_frontend *(*)(struct or51132_config const * , struct i2c_adapter * ))tmp___170;
  }
  __a___27 = tmp___171;
  if ((unsigned long )__a___27 != (unsigned long )((struct dvb_frontend *(*)(struct or51132_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___173 = (*__a___27)(& pchdtv_hd3000, & core->i2c_adap);
    __r___27 = (void *)tmp___173;
    if ((unsigned long )__r___27 == (unsigned long )((void *)0)) {
      __symbol_put("or51132_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol or51132_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___27;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___28 = 0;
    tmp___178 = __symbol_get("simple_tuner_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , unsigned int ))tmp___178) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                  u8 ,
                                                                                                                                  unsigned int ))0)) {
      tmp___175 = __symbol_get("simple_tuner_attach");
      tmp___177 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___175;
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___176 = __symbol_get("simple_tuner_attach");
      tmp___177 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___176;
    }
    __a___28 = tmp___177;
    if ((unsigned long )__a___28 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               unsigned int ))0)) {
      tmp___179 = (*__a___28)(fe0->dvb.frontend, & core->i2c_adap, 97, 60U);
      __r___28 = (void *)tmp___179;
      if ((unsigned long )__r___28 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___28 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 17U:
  dev->ts_gen_cntrl = 8U;
  tmp___180 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___180 & 4294967294U, (void volatile *)core->lmmio + 868356U);
  __ms = 100UL;
  goto ldv_41177;
  ldv_41176:
  __const_udelay(4295000UL);
  ldv_41177:
  tmp___181 = __ms;
  __ms = __ms - 1UL;
  if (tmp___181 != 0UL) {
    goto ldv_41176;
  } else {
  }
  tmp___182 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___182 | 1U, (void volatile *)core->lmmio + 868356U);
  __ms___0 = 200UL;
  goto ldv_41181;
  ldv_41180:
  __const_udelay(4295000UL);
  ldv_41181:
  tmp___183 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___183 != 0UL) {
    goto ldv_41180;
  } else {
  }
  fusionhdtv_3_gold.pll_rf_set = & lgdt330x_pll_rf_set;
  __r___29 = 0;
  tmp___188 = __symbol_get("lgdt330x_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                 struct i2c_adapter * ))tmp___188) != (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___185 = __symbol_get("lgdt330x_attach");
    tmp___187 = (struct dvb_frontend *(*)(struct lgdt330x_config const * , struct i2c_adapter * ))tmp___185;
  } else {
    __request_module(1, "symbol:lgdt330x_attach");
    tmp___186 = __symbol_get("lgdt330x_attach");
    tmp___187 = (struct dvb_frontend *(*)(struct lgdt330x_config const * , struct i2c_adapter * ))tmp___186;
  }
  __a___29 = tmp___187;
  if ((unsigned long )__a___29 != (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___189 = (*__a___29)((struct lgdt330x_config const *)(& fusionhdtv_3_gold),
                            & core->i2c_adap);
    __r___29 = (void *)tmp___189;
    if ((unsigned long )__r___29 == (unsigned long )((void *)0)) {
      __symbol_put("lgdt330x_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol lgdt330x_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___29;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___30 = 0;
    tmp___194 = __symbol_get("simple_tuner_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , unsigned int ))tmp___194) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                  u8 ,
                                                                                                                                  unsigned int ))0)) {
      tmp___191 = __symbol_get("simple_tuner_attach");
      tmp___193 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___191;
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___192 = __symbol_get("simple_tuner_attach");
      tmp___193 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___192;
    }
    __a___30 = tmp___193;
    if ((unsigned long )__a___30 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               unsigned int ))0)) {
      tmp___195 = (*__a___30)(fe0->dvb.frontend, & core->i2c_adap, 97, 49U);
      __r___30 = (void *)tmp___195;
      if ((unsigned long )__r___30 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___30 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 28U:
  dev->ts_gen_cntrl = 8U;
  tmp___196 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___196 & 4294967294U, (void volatile *)core->lmmio + 868356U);
  __ms___1 = 100UL;
  goto ldv_41192;
  ldv_41191:
  __const_udelay(4295000UL);
  ldv_41192:
  tmp___197 = __ms___1;
  __ms___1 = __ms___1 - 1UL;
  if (tmp___197 != 0UL) {
    goto ldv_41191;
  } else {
  }
  tmp___198 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___198 | 9U, (void volatile *)core->lmmio + 868356U);
  __ms___2 = 200UL;
  goto ldv_41196;
  ldv_41195:
  __const_udelay(4295000UL);
  ldv_41196:
  tmp___199 = __ms___2;
  __ms___2 = __ms___2 - 1UL;
  if (tmp___199 != 0UL) {
    goto ldv_41195;
  } else {
  }
  __r___31 = 0;
  tmp___204 = __symbol_get("lgdt330x_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                 struct i2c_adapter * ))tmp___204) != (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___201 = __symbol_get("lgdt330x_attach");
    tmp___203 = (struct dvb_frontend *(*)(struct lgdt330x_config const * , struct i2c_adapter * ))tmp___201;
  } else {
    __request_module(1, "symbol:lgdt330x_attach");
    tmp___202 = __symbol_get("lgdt330x_attach");
    tmp___203 = (struct dvb_frontend *(*)(struct lgdt330x_config const * , struct i2c_adapter * ))tmp___202;
  }
  __a___31 = tmp___203;
  if ((unsigned long )__a___31 != (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___205 = (*__a___31)((struct lgdt330x_config const *)(& fusionhdtv_3_gold),
                            & core->i2c_adap);
    __r___31 = (void *)tmp___205;
    if ((unsigned long )__r___31 == (unsigned long )((void *)0)) {
      __symbol_put("lgdt330x_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol lgdt330x_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___31;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___32 = 0;
    tmp___210 = __symbol_get("simple_tuner_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , unsigned int ))tmp___210) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                  u8 ,
                                                                                                                                  unsigned int ))0)) {
      tmp___207 = __symbol_get("simple_tuner_attach");
      tmp___209 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___207;
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___208 = __symbol_get("simple_tuner_attach");
      tmp___209 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___208;
    }
    __a___32 = tmp___209;
    if ((unsigned long )__a___32 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               unsigned int ))0)) {
      tmp___211 = (*__a___32)(fe0->dvb.frontend, & core->i2c_adap, 97, 60U);
      __r___32 = (void *)tmp___211;
      if ((unsigned long )__r___32 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___32 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 31U:
  dev->ts_gen_cntrl = 8U;
  tmp___212 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___212 & 4294967294U, (void volatile *)core->lmmio + 868356U);
  __ms___3 = 100UL;
  goto ldv_41207;
  ldv_41206:
  __const_udelay(4295000UL);
  ldv_41207:
  tmp___213 = __ms___3;
  __ms___3 = __ms___3 - 1UL;
  if (tmp___213 != 0UL) {
    goto ldv_41206;
  } else {
  }
  tmp___214 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___214 | 1U, (void volatile *)core->lmmio + 868356U);
  __ms___4 = 200UL;
  goto ldv_41211;
  ldv_41210:
  __const_udelay(4295000UL);
  ldv_41211:
  tmp___215 = __ms___4;
  __ms___4 = __ms___4 - 1UL;
  if (tmp___215 != 0UL) {
    goto ldv_41210;
  } else {
  }
  __r___33 = 0;
  tmp___220 = __symbol_get("lgdt330x_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                 struct i2c_adapter * ))tmp___220) != (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___217 = __symbol_get("lgdt330x_attach");
    tmp___219 = (struct dvb_frontend *(*)(struct lgdt330x_config const * , struct i2c_adapter * ))tmp___217;
  } else {
    __request_module(1, "symbol:lgdt330x_attach");
    tmp___218 = __symbol_get("lgdt330x_attach");
    tmp___219 = (struct dvb_frontend *(*)(struct lgdt330x_config const * , struct i2c_adapter * ))tmp___218;
  }
  __a___33 = tmp___219;
  if ((unsigned long )__a___33 != (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___221 = (*__a___33)(& fusionhdtv_5_gold, & core->i2c_adap);
    __r___33 = (void *)tmp___221;
    if ((unsigned long )__r___33 == (unsigned long )((void *)0)) {
      __symbol_put("lgdt330x_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol lgdt330x_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___33;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___34 = 0;
    tmp___226 = __symbol_get("simple_tuner_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , unsigned int ))tmp___226) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                  u8 ,
                                                                                                                                  unsigned int ))0)) {
      tmp___223 = __symbol_get("simple_tuner_attach");
      tmp___225 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___223;
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___224 = __symbol_get("simple_tuner_attach");
      tmp___225 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___224;
    }
    __a___34 = tmp___225;
    if ((unsigned long )__a___34 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               unsigned int ))0)) {
      tmp___227 = (*__a___34)(fe0->dvb.frontend, & core->i2c_adap, 97, 64U);
      __r___34 = (void *)tmp___227;
      if ((unsigned long )__r___34 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___34 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
    __r___35 = 0;
    tmp___232 = __symbol_get("tda9887_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 ))tmp___232) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                  struct i2c_adapter * ,
                                                                                                                  u8 ))0)) {
      tmp___229 = __symbol_get("tda9887_attach");
      tmp___231 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 ))tmp___229;
    } else {
      __request_module(1, "symbol:tda9887_attach");
      tmp___230 = __symbol_get("tda9887_attach");
      tmp___231 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 ))tmp___230;
    }
    __a___35 = tmp___231;
    if ((unsigned long )__a___35 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ))0)) {
      tmp___233 = (*__a___35)(fe0->dvb.frontend, & core->i2c_adap, 67);
      __r___35 = (void *)tmp___233;
      if ((unsigned long )__r___35 == (unsigned long )((void *)0)) {
        __symbol_put("tda9887_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol tda9887_attach()\n");
    }
    if ((unsigned long )__r___35 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 47U:
  dev->ts_gen_cntrl = 8U;
  tmp___234 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___234 & 4294967294U, (void volatile *)core->lmmio + 868356U);
  __ms___5 = 100UL;
  goto ldv_41225;
  ldv_41224:
  __const_udelay(4295000UL);
  ldv_41225:
  tmp___235 = __ms___5;
  __ms___5 = __ms___5 - 1UL;
  if (tmp___235 != 0UL) {
    goto ldv_41224;
  } else {
  }
  tmp___236 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___236 | 1U, (void volatile *)core->lmmio + 868356U);
  __ms___6 = 200UL;
  goto ldv_41229;
  ldv_41228:
  __const_udelay(4295000UL);
  ldv_41229:
  tmp___237 = __ms___6;
  __ms___6 = __ms___6 - 1UL;
  if (tmp___237 != 0UL) {
    goto ldv_41228;
  } else {
  }
  __r___36 = 0;
  tmp___242 = __symbol_get("lgdt330x_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                 struct i2c_adapter * ))tmp___242) != (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___239 = __symbol_get("lgdt330x_attach");
    tmp___241 = (struct dvb_frontend *(*)(struct lgdt330x_config const * , struct i2c_adapter * ))tmp___239;
  } else {
    __request_module(1, "symbol:lgdt330x_attach");
    tmp___240 = __symbol_get("lgdt330x_attach");
    tmp___241 = (struct dvb_frontend *(*)(struct lgdt330x_config const * , struct i2c_adapter * ))tmp___240;
  }
  __a___36 = tmp___241;
  if ((unsigned long )__a___36 != (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___243 = (*__a___36)(& pchdtv_hd5500, & core->i2c_adap);
    __r___36 = (void *)tmp___243;
    if ((unsigned long )__r___36 == (unsigned long )((void *)0)) {
      __symbol_put("lgdt330x_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol lgdt330x_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___36;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___37 = 0;
    tmp___248 = __symbol_get("simple_tuner_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , unsigned int ))tmp___248) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                  u8 ,
                                                                                                                                  unsigned int ))0)) {
      tmp___245 = __symbol_get("simple_tuner_attach");
      tmp___247 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___245;
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___246 = __symbol_get("simple_tuner_attach");
      tmp___247 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___246;
    }
    __a___37 = tmp___247;
    if ((unsigned long )__a___37 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               unsigned int ))0)) {
      tmp___249 = (*__a___37)(fe0->dvb.frontend, & core->i2c_adap, 97, 64U);
      __r___37 = (void *)tmp___249;
      if ((unsigned long )__r___37 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___37 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
    __r___38 = 0;
    tmp___254 = __symbol_get("tda9887_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 ))tmp___254) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                  struct i2c_adapter * ,
                                                                                                                  u8 ))0)) {
      tmp___251 = __symbol_get("tda9887_attach");
      tmp___253 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 ))tmp___251;
    } else {
      __request_module(1, "symbol:tda9887_attach");
      tmp___252 = __symbol_get("tda9887_attach");
      tmp___253 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 ))tmp___252;
    }
    __a___38 = tmp___253;
    if ((unsigned long )__a___38 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ))0)) {
      tmp___255 = (*__a___38)(fe0->dvb.frontend, & core->i2c_adap, 67);
      __r___38 = (void *)tmp___255;
      if ((unsigned long )__r___38 == (unsigned long )((void *)0)) {
        __symbol_put("tda9887_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol tda9887_attach()\n");
    }
    if ((unsigned long )__r___38 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 34U:
  __r___39 = 0;
  tmp___260 = __symbol_get("nxt200x_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct nxt200x_config const * ,
                                                 struct i2c_adapter * ))tmp___260) != (unsigned long )((struct dvb_frontend *(*)(struct nxt200x_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___257 = __symbol_get("nxt200x_attach");
    tmp___259 = (struct dvb_frontend *(*)(struct nxt200x_config const * , struct i2c_adapter * ))tmp___257;
  } else {
    __request_module(1, "symbol:nxt200x_attach");
    tmp___258 = __symbol_get("nxt200x_attach");
    tmp___259 = (struct dvb_frontend *(*)(struct nxt200x_config const * , struct i2c_adapter * ))tmp___258;
  }
  __a___39 = tmp___259;
  if ((unsigned long )__a___39 != (unsigned long )((struct dvb_frontend *(*)(struct nxt200x_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___261 = (*__a___39)(& ati_hdtvwonder, & core->i2c_adap);
    __r___39 = (void *)tmp___261;
    if ((unsigned long )__r___39 == (unsigned long )((void *)0)) {
      __symbol_put("nxt200x_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol nxt200x_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___39;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___40 = 0;
    tmp___266 = __symbol_get("simple_tuner_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , unsigned int ))tmp___266) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                  u8 ,
                                                                                                                                  unsigned int ))0)) {
      tmp___263 = __symbol_get("simple_tuner_attach");
      tmp___265 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___263;
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___264 = __symbol_get("simple_tuner_attach");
      tmp___265 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___264;
    }
    __a___40 = tmp___265;
    if ((unsigned long )__a___40 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               unsigned int ))0)) {
      tmp___267 = (*__a___40)(fe0->dvb.frontend, & core->i2c_adap, 97, 68U);
      __r___40 = (void *)tmp___267;
      if ((unsigned long )__r___40 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___40 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 37U: ;
  case 38U:
  __r___41 = 0;
  tmp___272 = __symbol_get("cx24123_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx24123_config const * ,
                                                 struct i2c_adapter * ))tmp___272) != (unsigned long )((struct dvb_frontend *(*)(struct cx24123_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___269 = __symbol_get("cx24123_attach");
    tmp___271 = (struct dvb_frontend *(*)(struct cx24123_config const * , struct i2c_adapter * ))tmp___269;
  } else {
    __request_module(1, "symbol:cx24123_attach");
    tmp___270 = __symbol_get("cx24123_attach");
    tmp___271 = (struct dvb_frontend *(*)(struct cx24123_config const * , struct i2c_adapter * ))tmp___270;
  }
  __a___41 = tmp___271;
  if ((unsigned long )__a___41 != (unsigned long )((struct dvb_frontend *(*)(struct cx24123_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___273 = (*__a___41)(& hauppauge_novas_config, & core->i2c_adap);
    __r___41 = (void *)tmp___273;
    if ((unsigned long )__r___41 == (unsigned long )((void *)0)) {
      __symbol_put("cx24123_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx24123_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___41;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___42 = 0;
    tmp___278 = __symbol_get("isl6421_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , u8 , u8 ))tmp___278) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                              struct i2c_adapter * ,
                                                                                                                              u8 ,
                                                                                                                              u8 ,
                                                                                                                              u8 ))0)) {
      tmp___275 = __symbol_get("isl6421_attach");
      tmp___277 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , u8 , u8 ))tmp___275;
    } else {
      __request_module(1, "symbol:isl6421_attach");
      tmp___276 = __symbol_get("isl6421_attach");
      tmp___277 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , u8 , u8 ))tmp___276;
    }
    __a___42 = tmp___277;
    if ((unsigned long )__a___42 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               u8 ,
                                                                               u8 ))0)) {
      tmp___279 = (*__a___42)(fe0->dvb.frontend, & core->i2c_adap, 8, 64, 0);
      __r___42 = (void *)tmp___279;
      if ((unsigned long )__r___42 == (unsigned long )((void *)0)) {
        __symbol_put("isl6421_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol isl6421_attach()\n");
    }
    if ((unsigned long )__r___42 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 39U:
  __r___43 = 0;
  tmp___284 = __symbol_get("cx24123_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx24123_config const * ,
                                                 struct i2c_adapter * ))tmp___284) != (unsigned long )((struct dvb_frontend *(*)(struct cx24123_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___281 = __symbol_get("cx24123_attach");
    tmp___283 = (struct dvb_frontend *(*)(struct cx24123_config const * , struct i2c_adapter * ))tmp___281;
  } else {
    __request_module(1, "symbol:cx24123_attach");
    tmp___282 = __symbol_get("cx24123_attach");
    tmp___283 = (struct dvb_frontend *(*)(struct cx24123_config const * , struct i2c_adapter * ))tmp___282;
  }
  __a___43 = tmp___283;
  if ((unsigned long )__a___43 != (unsigned long )((struct dvb_frontend *(*)(struct cx24123_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___285 = (*__a___43)(& kworld_dvbs_100_config, & core->i2c_adap);
    __r___43 = (void *)tmp___285;
    if ((unsigned long )__r___43 == (unsigned long )((void *)0)) {
      __symbol_put("cx24123_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx24123_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___43;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    core->prev_set_voltage = (fe0->dvb.frontend)->ops.set_voltage;
    (fe0->dvb.frontend)->ops.set_voltage = & kworld_dvbs_100_set_voltage;
  } else {
  }
  goto ldv_41069;
  case 52U:
  __r___44 = 0;
  tmp___290 = __symbol_get("cx24123_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx24123_config const * ,
                                                 struct i2c_adapter * ))tmp___290) != (unsigned long )((struct dvb_frontend *(*)(struct cx24123_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___287 = __symbol_get("cx24123_attach");
    tmp___289 = (struct dvb_frontend *(*)(struct cx24123_config const * , struct i2c_adapter * ))tmp___287;
  } else {
    __request_module(1, "symbol:cx24123_attach");
    tmp___288 = __symbol_get("cx24123_attach");
    tmp___289 = (struct dvb_frontend *(*)(struct cx24123_config const * , struct i2c_adapter * ))tmp___288;
  }
  __a___44 = tmp___289;
  if ((unsigned long )__a___44 != (unsigned long )((struct dvb_frontend *(*)(struct cx24123_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___291 = (*__a___44)(& geniatech_dvbs_config, & core->i2c_adap);
    __r___44 = (void *)tmp___291;
    if ((unsigned long )__r___44 == (unsigned long )((void *)0)) {
      __symbol_put("cx24123_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx24123_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___44;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    core->prev_set_voltage = (fe0->dvb.frontend)->ops.set_voltage;
    (fe0->dvb.frontend)->ops.set_voltage = & geniatech_dvbs_set_voltage;
  } else {
  }
  goto ldv_41069;
  case 58U:
  __r___45 = 0;
  tmp___296 = __symbol_get("s5h1409_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                 struct i2c_adapter * ))tmp___296) != (unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___293 = __symbol_get("s5h1409_attach");
    tmp___295 = (struct dvb_frontend *(*)(struct s5h1409_config const * , struct i2c_adapter * ))tmp___293;
  } else {
    __request_module(1, "symbol:s5h1409_attach");
    tmp___294 = __symbol_get("s5h1409_attach");
    tmp___295 = (struct dvb_frontend *(*)(struct s5h1409_config const * , struct i2c_adapter * ))tmp___294;
  }
  __a___45 = tmp___295;
  if ((unsigned long )__a___45 != (unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___297 = (*__a___45)(& pinnacle_pctv_hd_800i_config, & core->i2c_adap);
    __r___45 = (void *)tmp___297;
    if ((unsigned long )__r___45 == (unsigned long )((void *)0)) {
      __symbol_put("s5h1409_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol s5h1409_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___45;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___46 = 0;
    tmp___302 = __symbol_get("xc5000_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   struct xc5000_config const * ))tmp___302) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                             struct i2c_adapter * ,
                                                                                                                                             struct xc5000_config const * ))0)) {
      tmp___299 = __symbol_get("xc5000_attach");
      tmp___301 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            struct xc5000_config const * ))tmp___299;
    } else {
      __request_module(1, "symbol:xc5000_attach");
      tmp___300 = __symbol_get("xc5000_attach");
      tmp___301 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            struct xc5000_config const * ))tmp___300;
    }
    __a___46 = tmp___301;
    if ((unsigned long )__a___46 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               struct xc5000_config const * ))0)) {
      tmp___303 = (*__a___46)(fe0->dvb.frontend, & core->i2c_adap, & pinnacle_pctv_hd_800i_tuner_config);
      __r___46 = (void *)tmp___303;
      if ((unsigned long )__r___46 == (unsigned long )((void *)0)) {
        __symbol_put("xc5000_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol xc5000_attach()\n");
    }
    if ((unsigned long )__r___46 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 59U:
  __r___47 = 0;
  tmp___308 = __symbol_get("s5h1409_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                 struct i2c_adapter * ))tmp___308) != (unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___305 = __symbol_get("s5h1409_attach");
    tmp___307 = (struct dvb_frontend *(*)(struct s5h1409_config const * , struct i2c_adapter * ))tmp___305;
  } else {
    __request_module(1, "symbol:s5h1409_attach");
    tmp___306 = __symbol_get("s5h1409_attach");
    tmp___307 = (struct dvb_frontend *(*)(struct s5h1409_config const * , struct i2c_adapter * ))tmp___306;
  }
  __a___47 = tmp___307;
  if ((unsigned long )__a___47 != (unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___309 = (*__a___47)(& dvico_hdtv5_pci_nano_config, & core->i2c_adap);
    __r___47 = (void *)tmp___309;
    if ((unsigned long )__r___47 == (unsigned long )((void *)0)) {
      __symbol_put("s5h1409_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol s5h1409_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___47;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    cfg.i2c_adap = & core->i2c_adap;
    cfg.i2c_addr = 97U;
    cfg.ctrl = 0;
    ctl.fname = (char *)"xc3028-v27.fw";
    ctl.max_len = 64;
    ctl.msleep = 0;
    ctl.scode_table = 5380U;
    ctl.mts = (unsigned char)0;
    ctl.input1 = (unsigned char)0;
    ctl.vhfbw7 = (unsigned char)0;
    ctl.uhfbw8 = (unsigned char)0;
    ctl.disable_power_mgmt = (unsigned char)0;
    ctl.read_not_reliable = (unsigned char)0;
    ctl.demod = 0U;
    ctl.type = (unsigned char)0;
    __r___48 = 0;
    tmp___314 = __symbol_get("xc2028_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct xc2028_config * ))tmp___314) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                             struct xc2028_config * ))0)) {
      tmp___311 = __symbol_get("xc2028_attach");
      tmp___313 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct xc2028_config * ))tmp___311;
    } else {
      __request_module(1, "symbol:xc2028_attach");
      tmp___312 = __symbol_get("xc2028_attach");
      tmp___313 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct xc2028_config * ))tmp___312;
    }
    __a___48 = tmp___313;
    if ((unsigned long )__a___48 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct xc2028_config * ))0)) {
      tmp___315 = (*__a___48)(fe0->dvb.frontend, & cfg);
      __r___48 = (void *)tmp___315;
      if ((unsigned long )__r___48 == (unsigned long )((void *)0)) {
        __symbol_put("xc2028_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol xc2028_attach()\n");
    }
    fe = (struct dvb_frontend *)__r___48;
    if ((unsigned long )fe != (unsigned long )((struct dvb_frontend *)0) && (unsigned long )fe->ops.tuner_ops.set_config != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                                                                                      void * ))0)) {
      (*(fe->ops.tuner_ops.set_config))(fe, (void *)(& ctl));
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 60U: ;
  case 81U:
  __r___49 = 0;
  tmp___320 = __symbol_get("zl10353_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                 struct i2c_adapter * ))tmp___320) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___317 = __symbol_get("zl10353_attach");
    tmp___319 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___317;
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___318 = __symbol_get("zl10353_attach");
    tmp___319 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___318;
  }
  __a___49 = tmp___319;
  if ((unsigned long )__a___49 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___321 = (*__a___49)(& cx88_pinnacle_hybrid_pctv, & core->i2c_adap);
    __r___49 = (void *)tmp___321;
    if ((unsigned long )__r___49 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol zl10353_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___49;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    (fe0->dvb.frontend)->ops.i2c_gate_ctrl = 0;
    tmp___322 = attach_xc3028(97, dev);
    if (tmp___322 < 0) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 63U:
  dev->ts_gen_cntrl = 0U;
  __r___50 = 0;
  tmp___327 = __symbol_get("zl10353_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                 struct i2c_adapter * ))tmp___327) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___324 = __symbol_get("zl10353_attach");
    tmp___326 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___324;
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___325 = __symbol_get("zl10353_attach");
    tmp___326 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___325;
  }
  __a___50 = tmp___326;
  if ((unsigned long )__a___50 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___328 = (*__a___50)(& cx88_geniatech_x8000_mt, & core->i2c_adap);
    __r___50 = (void *)tmp___328;
    if ((unsigned long )__r___50 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol zl10353_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___50;
  tmp___329 = attach_xc3028(97, dev);
  if (tmp___329 < 0) {
    goto frontend_detach;
  } else {
  }
  goto ldv_41069;
  case 67U:
  __r___51 = 0;
  tmp___334 = __symbol_get("s5h1409_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                 struct i2c_adapter * ))tmp___334) != (unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___331 = __symbol_get("s5h1409_attach");
    tmp___333 = (struct dvb_frontend *(*)(struct s5h1409_config const * , struct i2c_adapter * ))tmp___331;
  } else {
    __request_module(1, "symbol:s5h1409_attach");
    tmp___332 = __symbol_get("s5h1409_attach");
    tmp___333 = (struct dvb_frontend *(*)(struct s5h1409_config const * , struct i2c_adapter * ))tmp___332;
  }
  __a___51 = tmp___333;
  if ((unsigned long )__a___51 != (unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___335 = (*__a___51)(& kworld_atsc_120_config, & core->i2c_adap);
    __r___51 = (void *)tmp___335;
    if ((unsigned long )__r___51 == (unsigned long )((void *)0)) {
      __symbol_put("s5h1409_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol s5h1409_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___51;
  tmp___336 = attach_xc3028(97, dev);
  if (tmp___336 < 0) {
    goto frontend_detach;
  } else {
  }
  goto ldv_41069;
  case 65U:
  __r___52 = 0;
  tmp___341 = __symbol_get("s5h1411_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct s5h1411_config const * ,
                                                 struct i2c_adapter * ))tmp___341) != (unsigned long )((struct dvb_frontend *(*)(struct s5h1411_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___338 = __symbol_get("s5h1411_attach");
    tmp___340 = (struct dvb_frontend *(*)(struct s5h1411_config const * , struct i2c_adapter * ))tmp___338;
  } else {
    __request_module(1, "symbol:s5h1411_attach");
    tmp___339 = __symbol_get("s5h1411_attach");
    tmp___340 = (struct dvb_frontend *(*)(struct s5h1411_config const * , struct i2c_adapter * ))tmp___339;
  }
  __a___52 = tmp___340;
  if ((unsigned long )__a___52 != (unsigned long )((struct dvb_frontend *(*)(struct s5h1411_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___342 = (*__a___52)(& dvico_fusionhdtv7_config, & core->i2c_adap);
    __r___52 = (void *)tmp___342;
    if ((unsigned long )__r___52 == (unsigned long )((void *)0)) {
      __symbol_put("s5h1411_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol s5h1411_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___52;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___53 = 0;
    tmp___347 = __symbol_get("xc5000_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   struct xc5000_config const * ))tmp___347) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                             struct i2c_adapter * ,
                                                                                                                                             struct xc5000_config const * ))0)) {
      tmp___344 = __symbol_get("xc5000_attach");
      tmp___346 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            struct xc5000_config const * ))tmp___344;
    } else {
      __request_module(1, "symbol:xc5000_attach");
      tmp___345 = __symbol_get("xc5000_attach");
      tmp___346 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            struct xc5000_config const * ))tmp___345;
    }
    __a___53 = tmp___346;
    if ((unsigned long )__a___53 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               struct xc5000_config const * ))0)) {
      tmp___348 = (*__a___53)(fe0->dvb.frontend, & core->i2c_adap, & dvico_fusionhdtv7_tuner_config);
      __r___53 = (void *)tmp___348;
      if ((unsigned long )__r___53 == (unsigned long )((void *)0)) {
        __symbol_put("xc5000_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol xc5000_attach()\n");
    }
    if ((unsigned long )__r___53 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 68U:
  mfe_shared = 1;
  dev->frontends.gate = 2;
  __r___54 = 0;
  tmp___353 = __symbol_get("cx24116_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx24116_config const * ,
                                                 struct i2c_adapter * ))tmp___353) != (unsigned long )((struct dvb_frontend *(*)(struct cx24116_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___350 = __symbol_get("cx24116_attach");
    tmp___352 = (struct dvb_frontend *(*)(struct cx24116_config const * , struct i2c_adapter * ))tmp___350;
  } else {
    __request_module(1, "symbol:cx24116_attach");
    tmp___351 = __symbol_get("cx24116_attach");
    tmp___352 = (struct dvb_frontend *(*)(struct cx24116_config const * , struct i2c_adapter * ))tmp___351;
  }
  __a___54 = tmp___352;
  if ((unsigned long )__a___54 != (unsigned long )((struct dvb_frontend *(*)(struct cx24116_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___354 = (*__a___54)(& hauppauge_hvr4000_config, & (dev->core)->i2c_adap);
    __r___54 = (void *)tmp___354;
    if ((unsigned long )__r___54 == (unsigned long )((void *)0)) {
      __symbol_put("cx24116_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx24116_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___54;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___55 = 0;
    tmp___359 = __symbol_get("isl6421_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , u8 , u8 ))tmp___359) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                              struct i2c_adapter * ,
                                                                                                                              u8 ,
                                                                                                                              u8 ,
                                                                                                                              u8 ))0)) {
      tmp___356 = __symbol_get("isl6421_attach");
      tmp___358 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , u8 , u8 ))tmp___356;
    } else {
      __request_module(1, "symbol:isl6421_attach");
      tmp___357 = __symbol_get("isl6421_attach");
      tmp___358 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , u8 , u8 ))tmp___357;
    }
    __a___55 = tmp___358;
    if ((unsigned long )__a___55 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               u8 ,
                                                                               u8 ))0)) {
      tmp___360 = (*__a___55)(fe0->dvb.frontend, & (dev->core)->i2c_adap, 8, 64, 0);
      __r___55 = (void *)tmp___360;
      if ((unsigned long )__r___55 == (unsigned long )((void *)0)) {
        __symbol_put("isl6421_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol isl6421_attach()\n");
    }
    if ((unsigned long )__r___55 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  fe1 = videobuf_dvb_get_frontend(& dev->frontends, 2);
  if ((unsigned long )fe1 == (unsigned long )((struct videobuf_dvb_frontend *)0)) {
    goto frontend_detach;
  } else {
  }
  __r___56 = 0;
  tmp___365 = __symbol_get("cx22702_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                 struct i2c_adapter * ))tmp___365) != (unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___362 = __symbol_get("cx22702_attach");
    tmp___364 = (struct dvb_frontend *(*)(struct cx22702_config const * , struct i2c_adapter * ))tmp___362;
  } else {
    __request_module(1, "symbol:cx22702_attach");
    tmp___363 = __symbol_get("cx22702_attach");
    tmp___364 = (struct dvb_frontend *(*)(struct cx22702_config const * , struct i2c_adapter * ))tmp___363;
  }
  __a___56 = tmp___364;
  if ((unsigned long )__a___56 != (unsigned long )((struct dvb_frontend *(*)(struct cx22702_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___366 = (*__a___56)(& hauppauge_hvr_config, & (dev->core)->i2c_adap);
    __r___56 = (void *)tmp___366;
    if ((unsigned long )__r___56 == (unsigned long )((void *)0)) {
      __symbol_put("cx22702_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx22702_attach()\n");
  }
  fe1->dvb.frontend = (struct dvb_frontend *)__r___56;
  if ((unsigned long )fe1->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    (fe1->dvb.frontend)->id = 1;
    __r___57 = 0;
    tmp___371 = __symbol_get("simple_tuner_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , unsigned int ))tmp___371) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                  u8 ,
                                                                                                                                  unsigned int ))0)) {
      tmp___368 = __symbol_get("simple_tuner_attach");
      tmp___370 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___368;
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___369 = __symbol_get("simple_tuner_attach");
      tmp___370 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , unsigned int ))tmp___369;
    }
    __a___57 = tmp___370;
    if ((unsigned long )__a___57 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               unsigned int ))0)) {
      tmp___372 = (*__a___57)(fe1->dvb.frontend, & (dev->core)->i2c_adap, 97, 63U);
      __r___57 = (void *)tmp___372;
      if ((unsigned long )__r___57 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___57 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 69U:
  __r___58 = 0;
  tmp___377 = __symbol_get("cx24116_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx24116_config const * ,
                                                 struct i2c_adapter * ))tmp___377) != (unsigned long )((struct dvb_frontend *(*)(struct cx24116_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___374 = __symbol_get("cx24116_attach");
    tmp___376 = (struct dvb_frontend *(*)(struct cx24116_config const * , struct i2c_adapter * ))tmp___374;
  } else {
    __request_module(1, "symbol:cx24116_attach");
    tmp___375 = __symbol_get("cx24116_attach");
    tmp___376 = (struct dvb_frontend *(*)(struct cx24116_config const * , struct i2c_adapter * ))tmp___375;
  }
  __a___58 = tmp___376;
  if ((unsigned long )__a___58 != (unsigned long )((struct dvb_frontend *(*)(struct cx24116_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___378 = (*__a___58)(& hauppauge_hvr4000_config, & (dev->core)->i2c_adap);
    __r___58 = (void *)tmp___378;
    if ((unsigned long )__r___58 == (unsigned long )((void *)0)) {
      __symbol_put("cx24116_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx24116_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___58;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___59 = 0;
    tmp___383 = __symbol_get("isl6421_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                   u8 , u8 , u8 ))tmp___383) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                              struct i2c_adapter * ,
                                                                                                                              u8 ,
                                                                                                                              u8 ,
                                                                                                                              u8 ))0)) {
      tmp___380 = __symbol_get("isl6421_attach");
      tmp___382 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , u8 , u8 ))tmp___380;
    } else {
      __request_module(1, "symbol:isl6421_attach");
      tmp___381 = __symbol_get("isl6421_attach");
      tmp___382 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                            u8 , u8 , u8 ))tmp___381;
    }
    __a___59 = tmp___382;
    if ((unsigned long )__a___59 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               u8 ,
                                                                               u8 ))0)) {
      tmp___384 = (*__a___59)(fe0->dvb.frontend, & (dev->core)->i2c_adap, 8, 64, 0);
      __r___59 = (void *)tmp___384;
      if ((unsigned long )__r___59 == (unsigned long )((void *)0)) {
        __symbol_put("isl6421_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol isl6421_attach()\n");
    }
    if ((unsigned long )__r___59 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 78U: ;
  case 77U: ;
  case 73U:
  __r___60 = 0;
  tmp___389 = __symbol_get("stv0299_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct stv0299_config const * ,
                                                 struct i2c_adapter * ))tmp___389) != (unsigned long )((struct dvb_frontend *(*)(struct stv0299_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___386 = __symbol_get("stv0299_attach");
    tmp___388 = (struct dvb_frontend *(*)(struct stv0299_config const * , struct i2c_adapter * ))tmp___386;
  } else {
    __request_module(1, "symbol:stv0299_attach");
    tmp___387 = __symbol_get("stv0299_attach");
    tmp___388 = (struct dvb_frontend *(*)(struct stv0299_config const * , struct i2c_adapter * ))tmp___387;
  }
  __a___60 = tmp___388;
  if ((unsigned long )__a___60 != (unsigned long )((struct dvb_frontend *(*)(struct stv0299_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___390 = (*__a___60)(& tevii_tuner_sharp_config, & core->i2c_adap);
    __r___60 = (void *)tmp___390;
    if ((unsigned long )__r___60 == (unsigned long )((void *)0)) {
      __symbol_put("stv0299_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol stv0299_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___60;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___61 = 0;
    tmp___395 = __symbol_get("dvb_pll_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , int ,
                                                   struct i2c_adapter * , unsigned int ))tmp___395) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                   int ,
                                                                                                                                                   struct i2c_adapter * ,
                                                                                                                                                   unsigned int ))0)) {
      tmp___392 = __symbol_get("dvb_pll_attach");
      tmp___394 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                            unsigned int ))tmp___392;
    } else {
      __request_module(1, "symbol:dvb_pll_attach");
      tmp___393 = __symbol_get("dvb_pll_attach");
      tmp___394 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ,
                                            unsigned int ))tmp___393;
    }
    __a___61 = tmp___394;
    if ((unsigned long )__a___61 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               int ,
                                                                               struct i2c_adapter * ,
                                                                               unsigned int ))0)) {
      tmp___396 = (*__a___61)(fe0->dvb.frontend, 96, & core->i2c_adap, 13U);
      __r___61 = (void *)tmp___396;
      if ((unsigned long )__r___61 == (unsigned long )((void *)0)) {
        __symbol_put("dvb_pll_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol dvb_pll_attach()\n");
    }
    if ((unsigned long )__r___61 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
    core->prev_set_voltage = (fe0->dvb.frontend)->ops.set_voltage;
    (fe0->dvb.frontend)->ops.set_voltage = & tevii_dvbs_set_voltage;
  } else {
    __r___62 = 0;
    tmp___401 = __symbol_get("stv0288_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct stv0288_config const * ,
                                                   struct i2c_adapter * ))tmp___401) != (unsigned long )((struct dvb_frontend *(*)(struct stv0288_config const * ,
                                                                                                                                   struct i2c_adapter * ))0)) {
      tmp___398 = __symbol_get("stv0288_attach");
      tmp___400 = (struct dvb_frontend *(*)(struct stv0288_config const * , struct i2c_adapter * ))tmp___398;
    } else {
      __request_module(1, "symbol:stv0288_attach");
      tmp___399 = __symbol_get("stv0288_attach");
      tmp___400 = (struct dvb_frontend *(*)(struct stv0288_config const * , struct i2c_adapter * ))tmp___399;
    }
    __a___62 = tmp___400;
    if ((unsigned long )__a___62 != (unsigned long )((struct dvb_frontend *(*)(struct stv0288_config const * ,
                                                                               struct i2c_adapter * ))0)) {
      tmp___402 = (*__a___62)(& tevii_tuner_earda_config, & core->i2c_adap);
      __r___62 = (void *)tmp___402;
      if ((unsigned long )__r___62 == (unsigned long )((void *)0)) {
        __symbol_put("stv0288_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol stv0288_attach()\n");
    }
    fe0->dvb.frontend = (struct dvb_frontend *)__r___62;
    if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
      __r___63 = 0;
      tmp___407 = __symbol_get("stb6000_attach");
      if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , int ,
                                                     struct i2c_adapter * ))tmp___407) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                     int ,
                                                                                                                                     struct i2c_adapter * ))0)) {
        tmp___404 = __symbol_get("stb6000_attach");
        tmp___406 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ))tmp___404;
      } else {
        __request_module(1, "symbol:stb6000_attach");
        tmp___405 = __symbol_get("stb6000_attach");
        tmp___406 = (struct dvb_frontend *(*)(struct dvb_frontend * , int , struct i2c_adapter * ))tmp___405;
      }
      __a___63 = tmp___406;
      if ((unsigned long )__a___63 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                 int ,
                                                                                 struct i2c_adapter * ))0)) {
        tmp___408 = (*__a___63)(fe0->dvb.frontend, 97, & core->i2c_adap);
        __r___63 = (void *)tmp___408;
        if ((unsigned long )__r___63 == (unsigned long )((void *)0)) {
          __symbol_put("stb6000_attach");
        } else {
        }
      } else {
        printk("<3>DVB: Unable to find symbol stb6000_attach()\n");
      }
      if ((unsigned long )__r___63 == (unsigned long )((void *)0)) {
        goto frontend_detach;
      } else {
      }
      core->prev_set_voltage = (fe0->dvb.frontend)->ops.set_voltage;
      (fe0->dvb.frontend)->ops.set_voltage = & tevii_dvbs_set_voltage;
    } else {
    }
  }
  goto ldv_41069;
  case 70U:
  __r___64 = 0;
  tmp___413 = __symbol_get("cx24116_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx24116_config const * ,
                                                 struct i2c_adapter * ))tmp___413) != (unsigned long )((struct dvb_frontend *(*)(struct cx24116_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___410 = __symbol_get("cx24116_attach");
    tmp___412 = (struct dvb_frontend *(*)(struct cx24116_config const * , struct i2c_adapter * ))tmp___410;
  } else {
    __request_module(1, "symbol:cx24116_attach");
    tmp___411 = __symbol_get("cx24116_attach");
    tmp___412 = (struct dvb_frontend *(*)(struct cx24116_config const * , struct i2c_adapter * ))tmp___411;
  }
  __a___64 = tmp___412;
  if ((unsigned long )__a___64 != (unsigned long )((struct dvb_frontend *(*)(struct cx24116_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___414 = (*__a___64)(& tevii_s460_config, & core->i2c_adap);
    __r___64 = (void *)tmp___414;
    if ((unsigned long )__r___64 == (unsigned long )((void *)0)) {
      __symbol_put("cx24116_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx24116_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___64;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    (fe0->dvb.frontend)->ops.set_voltage = & tevii_dvbs_set_voltage;
  } else {
  }
  goto ldv_41069;
  case 71U: ;
  case 72U: ;
  case 75U: ;
  case 76U:
  __r___65 = 0;
  tmp___419 = __symbol_get("cx24116_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct cx24116_config const * ,
                                                 struct i2c_adapter * ))tmp___419) != (unsigned long )((struct dvb_frontend *(*)(struct cx24116_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___416 = __symbol_get("cx24116_attach");
    tmp___418 = (struct dvb_frontend *(*)(struct cx24116_config const * , struct i2c_adapter * ))tmp___416;
  } else {
    __request_module(1, "symbol:cx24116_attach");
    tmp___417 = __symbol_get("cx24116_attach");
    tmp___418 = (struct dvb_frontend *(*)(struct cx24116_config const * , struct i2c_adapter * ))tmp___417;
  }
  __a___65 = tmp___418;
  if ((unsigned long )__a___65 != (unsigned long )((struct dvb_frontend *(*)(struct cx24116_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___420 = (*__a___65)(& hauppauge_hvr4000_config, & core->i2c_adap);
    __r___65 = (void *)tmp___420;
    if ((unsigned long )__r___65 == (unsigned long )((void *)0)) {
      __symbol_put("cx24116_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol cx24116_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___65;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    (fe0->dvb.frontend)->ops.set_voltage = & tevii_dvbs_set_voltage;
  } else {
  }
  goto ldv_41069;
  case 79U:
  __r___66 = 0;
  tmp___425 = __symbol_get("zl10353_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                 struct i2c_adapter * ))tmp___425) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___422 = __symbol_get("zl10353_attach");
    tmp___424 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___422;
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___423 = __symbol_get("zl10353_attach");
    tmp___424 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___423;
  }
  __a___66 = tmp___424;
  if ((unsigned long )__a___66 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___426 = (*__a___66)(& cx88_terratec_cinergy_ht_pci_mkii_config, & core->i2c_adap);
    __r___66 = (void *)tmp___426;
    if ((unsigned long )__r___66 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol zl10353_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___66;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    (fe0->dvb.frontend)->ops.i2c_gate_ctrl = 0;
    tmp___427 = attach_xc3028(97, dev);
    if (tmp___427 < 0) {
      goto frontend_detach;
    } else {
    }
  } else {
  }
  goto ldv_41069;
  case 83U:
  tuner_ops = 0;
  __r___67 = 0;
  tmp___432 = __symbol_get("stv0900_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct stv0900_config const * ,
                                                 struct i2c_adapter * , int ))tmp___432) != (unsigned long )((struct dvb_frontend *(*)(struct stv0900_config const * ,
                                                                                                                                        struct i2c_adapter * ,
                                                                                                                                        int ))0)) {
    tmp___429 = __symbol_get("stv0900_attach");
    tmp___431 = (struct dvb_frontend *(*)(struct stv0900_config const * , struct i2c_adapter * ,
                                          int ))tmp___429;
  } else {
    __request_module(1, "symbol:stv0900_attach");
    tmp___430 = __symbol_get("stv0900_attach");
    tmp___431 = (struct dvb_frontend *(*)(struct stv0900_config const * , struct i2c_adapter * ,
                                          int ))tmp___430;
  }
  __a___67 = tmp___431;
  if ((unsigned long )__a___67 != (unsigned long )((struct dvb_frontend *(*)(struct stv0900_config const * ,
                                                                             struct i2c_adapter * ,
                                                                             int ))0)) {
    tmp___433 = (*__a___67)(& prof_7301_stv0900_config, & core->i2c_adap, 0);
    __r___67 = (void *)tmp___433;
    if ((unsigned long )__r___67 == (unsigned long )((void *)0)) {
      __symbol_put("stv0900_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol stv0900_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___67;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    __r___68 = 0;
    tmp___438 = __symbol_get("stb6100_attach");
    if ((unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct stb6100_config const * ,
                                                   struct i2c_adapter * ))tmp___438) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                   struct stb6100_config const * ,
                                                                                                                                   struct i2c_adapter * ))0)) {
      tmp___435 = __symbol_get("stb6100_attach");
      tmp___437 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct stb6100_config const * ,
                                            struct i2c_adapter * ))tmp___435;
    } else {
      __request_module(1, "symbol:stb6100_attach");
      tmp___436 = __symbol_get("stb6100_attach");
      tmp___437 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct stb6100_config const * ,
                                            struct i2c_adapter * ))tmp___436;
    }
    __a___68 = tmp___437;
    if ((unsigned long )__a___68 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct stb6100_config const * ,
                                                                               struct i2c_adapter * ))0)) {
      tmp___439 = (*__a___68)(fe0->dvb.frontend, & prof_7301_stb6100_config, & core->i2c_adap);
      __r___68 = (void *)tmp___439;
      if ((unsigned long )__r___68 == (unsigned long )((void *)0)) {
        __symbol_put("stb6100_attach");
      } else {
      }
    } else {
      printk("<3>DVB: Unable to find symbol stb6100_attach()\n");
    }
    if ((unsigned long )__r___68 == (unsigned long )((void *)0)) {
      goto frontend_detach;
    } else {
    }
    tuner_ops = & (fe0->dvb.frontend)->ops.tuner_ops;
    tuner_ops->set_frequency = & stb6100_set_freq;
    tuner_ops->get_frequency = & stb6100_get_freq;
    tuner_ops->set_bandwidth = & stb6100_set_bandw;
    tuner_ops->get_bandwidth = & stb6100_get_bandw;
    core->prev_set_voltage = (fe0->dvb.frontend)->ops.set_voltage;
    (fe0->dvb.frontend)->ops.set_voltage = & tevii_dvbs_set_voltage;
  } else {
  }
  goto ldv_41069;
  case 84U:
  dev->ts_gen_cntrl = 8U;
  tmp___440 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___440 | 257U, (void volatile *)core->lmmio + 868356U);
  tmp___441 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___441 & 4294967294U, (void volatile *)core->lmmio + 868356U);
  __ms___7 = 100UL;
  goto ldv_41361;
  ldv_41360:
  __const_udelay(4295000UL);
  ldv_41361:
  tmp___442 = __ms___7;
  __ms___7 = __ms___7 - 1UL;
  if (tmp___442 != 0UL) {
    goto ldv_41360;
  } else {
  }
  tmp___443 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___443 | 1U, (void volatile *)core->lmmio + 868356U);
  __ms___8 = 200UL;
  goto ldv_41365;
  ldv_41364:
  __const_udelay(4295000UL);
  ldv_41365:
  tmp___444 = __ms___8;
  __ms___8 = __ms___8 - 1UL;
  if (tmp___444 != 0UL) {
    goto ldv_41364;
  } else {
  }
  __r___69 = 0;
  tmp___449 = __symbol_get("stv0299_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct stv0299_config const * ,
                                                 struct i2c_adapter * ))tmp___449) != (unsigned long )((struct dvb_frontend *(*)(struct stv0299_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___446 = __symbol_get("stv0299_attach");
    tmp___448 = (struct dvb_frontend *(*)(struct stv0299_config const * , struct i2c_adapter * ))tmp___446;
  } else {
    __request_module(1, "symbol:stv0299_attach");
    tmp___447 = __symbol_get("stv0299_attach");
    tmp___448 = (struct dvb_frontend *(*)(struct stv0299_config const * , struct i2c_adapter * ))tmp___447;
  }
  __a___69 = tmp___448;
  if ((unsigned long )__a___69 != (unsigned long )((struct dvb_frontend *(*)(struct stv0299_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___450 = (*__a___69)(& samsung_stv0299_config, & (dev->core)->i2c_adap);
    __r___69 = (void *)tmp___450;
    if ((unsigned long )__r___69 == (unsigned long )((void *)0)) {
      __symbol_put("stv0299_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol stv0299_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___69;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    (fe0->dvb.frontend)->ops.tuner_ops.set_params = & samsung_smt_7020_tuner_set_params;
    (fe0->dvb.frontend)->tuner_priv = (void *)(& (dev->core)->i2c_adap);
    (fe0->dvb.frontend)->ops.set_voltage = & samsung_smt_7020_set_voltage;
    (fe0->dvb.frontend)->ops.set_tone = & samsung_smt_7020_set_tone;
  } else {
  }
  goto ldv_41069;
  case 85U:
  dev->ts_gen_cntrl = 0U;
  __r___70 = 0;
  tmp___455 = __symbol_get("mb86a16_attach");
  if ((unsigned long )((struct dvb_frontend *(*)(struct mb86a16_config const * ,
                                                 struct i2c_adapter * ))tmp___455) != (unsigned long )((struct dvb_frontend *(*)(struct mb86a16_config const * ,
                                                                                                                                 struct i2c_adapter * ))0)) {
    tmp___452 = __symbol_get("mb86a16_attach");
    tmp___454 = (struct dvb_frontend *(*)(struct mb86a16_config const * , struct i2c_adapter * ))tmp___452;
  } else {
    __request_module(1, "symbol:mb86a16_attach");
    tmp___453 = __symbol_get("mb86a16_attach");
    tmp___454 = (struct dvb_frontend *(*)(struct mb86a16_config const * , struct i2c_adapter * ))tmp___453;
  }
  __a___70 = tmp___454;
  if ((unsigned long )__a___70 != (unsigned long )((struct dvb_frontend *(*)(struct mb86a16_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___456 = (*__a___70)((struct mb86a16_config const *)(& twinhan_vp1027), & core->i2c_adap);
    __r___70 = (void *)tmp___456;
    if ((unsigned long )__r___70 == (unsigned long )((void *)0)) {
      __symbol_put("mb86a16_attach");
    } else {
    }
  } else {
    printk("<3>DVB: Unable to find symbol mb86a16_attach()\n");
  }
  fe0->dvb.frontend = (struct dvb_frontend *)__r___70;
  if ((unsigned long )fe0->dvb.frontend != (unsigned long )((struct dvb_frontend *)0)) {
    core->prev_set_voltage = (fe0->dvb.frontend)->ops.set_voltage;
    (fe0->dvb.frontend)->ops.set_voltage = & vp1027_set_voltage;
  } else {
  }
  goto ldv_41069;
  default:
  printk("<3>%s/2: The frontend of your DVB/ATSC card isn\'t supported yet\n", (char *)(& core->name));
  goto ldv_41069;
  }
  ldv_41069: ;
  if ((unsigned long )fe0->dvb.frontend == (unsigned long )((struct dvb_frontend *)0) || ((unsigned long )fe1 != (unsigned long )((struct videobuf_dvb_frontend *)0) && (unsigned long )fe1->dvb.frontend == (unsigned long )((struct dvb_frontend *)0))) {
    printk("<3>%s/2: frontend initialization failed\n", (char *)(& core->name));
    goto frontend_detach;
  } else {
  }
  (fe0->dvb.frontend)->callback = & cx88_tuner_callback;
  (fe0->dvb.frontend)->ops.ts_bus_ctrl = & cx88_dvb_bus_ctrl;
  if ((unsigned long )fe1 != (unsigned long )((struct videobuf_dvb_frontend *)0)) {
    (fe1->dvb.frontend)->ops.ts_bus_ctrl = & cx88_dvb_bus_ctrl;
  } else {
  }
  if (core->i2c_rc == 0U) {
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      (*(core->gate_ctrl))(core, 1);
    } else {
    }
    __mptr = (struct list_head const *)core->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr;
    goto ldv_41381;
    ldv_41380: ;
    if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_power != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                             int ))0)) {
      (*(((__sd->ops)->core)->s_power))(__sd, 0);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0;
    ldv_41381:
    __builtin_prefetch((void const *)__sd->list.next);
    if ((unsigned long )(& __sd->list) != (unsigned long )(& core->v4l2_dev.subdevs)) {
      goto ldv_41380;
    } else {
    }
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      (*(core->gate_ctrl))(core, 0);
    } else {
    }
  } else {
  }
  tmp___457 = videobuf_dvb_register_bus(& dev->frontends, & __this_module, (void *)dev,
                                        & (dev->pci)->dev, (short *)(& adapter_nr),
                                        mfe_shared, 0);
  return (tmp___457);
  frontend_detach:
  core->gate_ctrl = 0;
  videobuf_dvb_dealloc_frontends(& dev->frontends);
  return (-22);
}
}
static int cx8802_dvb_advise_acquire(struct cx8802_driver *drv )
{
  struct cx88_core *core ;
  int err ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  {
  core = drv->core;
  err = 0;
  if (debug != 0U) {
    printk("<7>%s/2-dvb: %s\n", (char *)(& core->name), "cx8802_dvb_advise_acquire");
  } else {
  }
  switch (core->boardnr) {
  case 56U:
  tmp = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp | 128U, (void volatile *)core->lmmio + 868356U);
  __const_udelay(4295000UL);
  tmp___0 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___0 & 4294967167U, (void volatile *)core->lmmio + 868356U);
  __const_udelay(214750UL);
  tmp___1 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___1 | 128U, (void volatile *)core->lmmio + 868356U);
  __const_udelay(4295000UL);
  tmp___2 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___2 & 4294967291U, (void volatile *)core->lmmio + 868356U);
  __const_udelay(4295000UL);
  goto ldv_41390;
  case 53U: ;
  case 68U:
  tmp___3 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___3 | 128U, (void volatile *)core->lmmio + 868356U);
  __const_udelay(4295000UL);
  tmp___4 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___4 & 4294967167U, (void volatile *)core->lmmio + 868356U);
  __const_udelay(214750UL);
  tmp___5 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___5 | 128U, (void volatile *)core->lmmio + 868356U);
  __const_udelay(4295000UL);
  switch ((core->dvbdev)->frontends.active_fe_id) {
  case 1:
  tmp___6 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___6 | 4U, (void volatile *)core->lmmio + 868356U);
  writel(1U, (void volatile *)core->lmmio + 880663U);
  (core->dvbdev)->ts_gen_cntrl = 2U;
  goto ldv_41394;
  case 2:
  writel(0U, (void volatile *)core->lmmio + 880663U);
  tmp___7 = readl((void const volatile *)core->lmmio + 868356U);
  writel(tmp___7 & 4294967291U, (void volatile *)core->lmmio + 868356U);
  (core->dvbdev)->ts_gen_cntrl = 12U;
  goto ldv_41394;
  }
  ldv_41394:
  __const_udelay(4295000UL);
  goto ldv_41390;
  default:
  err = -19;
  }
  ldv_41390: ;
  return (err);
}
}
static int cx8802_dvb_advise_release(struct cx8802_driver *drv )
{
  struct cx88_core *core ;
  int err ;
  {
  core = drv->core;
  err = 0;
  if (debug != 0U) {
    printk("<7>%s/2-dvb: %s\n", (char *)(& core->name), "cx8802_dvb_advise_release");
  } else {
  }
  switch (core->boardnr) {
  case 56U: ;
  goto ldv_41404;
  case 53U: ;
  case 68U: ;
  goto ldv_41404;
  default:
  err = -19;
  }
  ldv_41404: ;
  return (err);
}
}
static int cx8802_dvb_probe(struct cx8802_driver *drv )
{
  struct cx88_core *core ;
  struct cx8802_dev *dev ;
  int err ;
  struct videobuf_dvb_frontend *fe ;
  int i ;
  {
  core = drv->core;
  dev = (drv->core)->dvbdev;
  if (debug != 0U) {
    printk("<7>%s/2-dvb: %s\n", (char *)(& core->name), "cx8802_dvb_probe");
  } else {
  }
  if (debug != 0U) {
    printk("<7>%s/2-dvb:  ->being probed by Card=%d Name=%s, PCI %02x:%02x\n", (char *)(& core->name),
           core->boardnr, (char *)(& core->name), core->pci_bus, core->pci_slot);
  } else {
  }
  err = -19;
  if (((unsigned int )core->board.mpeg & 1U) == 0U) {
    goto fail_core;
  } else {
  }
  err = vp3054_i2c_probe(dev);
  if (err != 0) {
    goto fail_core;
  } else {
  }
  printk("<6>%s/2: cx2388x based DVB/ATSC card\n", (char *)(& core->name));
  dev->ts_gen_cntrl = 12U;
  err = cx8802_alloc_frontends(dev);
  if (err != 0) {
    goto fail_core;
  } else {
  }
  err = -19;
  i = 1;
  goto ldv_41420;
  ldv_41419:
  fe = videobuf_dvb_get_frontend(& (core->dvbdev)->frontends, i);
  if ((unsigned long )fe == (unsigned long )((struct videobuf_dvb_frontend *)0)) {
    printk("<3>%s() failed to get frontend(%d)\n", "cx8802_dvb_probe", i);
    goto fail_probe;
  } else {
  }
  videobuf_queue_sg_init(& fe->dvb.dvbq, & dvb_qops, & (dev->pci)->dev, & dev->slock,
                         1, 2, 304U, (void *)dev, 0);
  fe->dvb.name = (char *)(& (dev->core)->name);
  i = i + 1;
  ldv_41420: ;
  if (core->board.num_frontends >= i) {
    goto ldv_41419;
  } else {
  }
  err = dvb_register(dev);
  if (err != 0) {
    printk("<3>%s/2: dvb_register failed (err = %d)\n", (char *)(& core->name), err);
  } else {
  }
  return (err);
  fail_probe:
  videobuf_dvb_dealloc_frontends(& (core->dvbdev)->frontends);
  fail_core: ;
  return (err);
}
}
static int cx8802_dvb_remove(struct cx8802_driver *drv )
{
  struct cx88_core *core ;
  struct cx8802_dev *dev ;
  {
  core = drv->core;
  dev = (drv->core)->dvbdev;
  if (debug != 0U) {
    printk("<7>%s/2-dvb: %s\n", (char *)(& core->name), "cx8802_dvb_remove");
  } else {
  }
  videobuf_dvb_unregister_bus(& dev->frontends);
  vp3054_i2c_remove(dev);
  core->gate_ctrl = 0;
  return (0);
}
}
static struct cx8802_driver cx8802_dvb_driver =
     {0, {0, 0}, 1, 1, 0, 0, & cx8802_dvb_probe, & cx8802_dvb_remove, & cx8802_dvb_advise_acquire,
    & cx8802_dvb_advise_release, 0, 0};
static int dvb_init(void)
{
  int tmp ;
  {
  printk("<6>cx88/2: cx2388x dvb driver version %d.%d.%d loaded\n", 0, 0, 8);
  tmp = cx8802_register_driver(& cx8802_dvb_driver);
  return (tmp);
}
}
static void dvb_fini(void)
{
  {
  cx8802_unregister_driver(& cx8802_dvb_driver);
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
  struct videobuf_queue *var_group1 ;
  unsigned int *var_dvb_buf_setup_0_p1 ;
  unsigned int *var_dvb_buf_setup_0_p2 ;
  struct videobuf_buffer *var_group2 ;
  enum v4l2_field var_dvb_buf_prepare_1_p2 ;
  struct dvb_frontend *var_group3 ;
  struct dvb_frontend *var_group4 ;
  int var_or51132_set_ts_param_10_p1 ;
  int var_lgdt330x_set_ts_param_12_p1 ;
  int var_nxt200x_set_ts_param_13_p1 ;
  int var_cx24123_set_ts_param_14_p1 ;
  int var_cx24116_set_ts_param_20_p1 ;
  int var_stv0900_set_ts_param_21_p1 ;
  u32 var_samsung_smt_7020_stv0299_set_symbol_rate_27_p1 ;
  u32 var_samsung_smt_7020_stv0299_set_symbol_rate_27_p2 ;
  struct cx8802_driver *var_group5 ;
  int res_cx8802_dvb_probe_31 ;
  int ldv_s_cx8802_dvb_driver_cx8802_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_cx8802_dvb_driver_cx8802_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = dvb_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_41513;
  ldv_41512:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  dvb_buf_setup(var_group1, var_dvb_buf_setup_0_p1, var_dvb_buf_setup_0_p2);
  goto ldv_41481;
  case 1:
  ldv_handler_precall();
  dvb_buf_prepare(var_group1, var_group2, var_dvb_buf_prepare_1_p2);
  goto ldv_41481;
  case 2:
  ldv_handler_precall();
  dvb_buf_queue(var_group1, var_group2);
  goto ldv_41481;
  case 3:
  ldv_handler_precall();
  dvb_buf_release(var_group1, var_group2);
  goto ldv_41481;
  case 4:
  ldv_handler_precall();
  dvico_fusionhdtv_demod_init(var_group3);
  goto ldv_41481;
  case 5:
  ldv_handler_precall();
  dntv_live_dvbt_demod_init(var_group3);
  goto ldv_41481;
  case 6:
  ldv_handler_precall();
  dvico_dual_demod_init(var_group4);
  goto ldv_41481;
  case 7:
  ldv_handler_precall();
  dntv_live_dvbt_pro_demod_init(var_group3);
  goto ldv_41481;
  case 8:
  ldv_handler_precall();
  dvico_fusionhdtv_demod_init(var_group3);
  goto ldv_41481;
  case 9:
  ldv_handler_precall();
  or51132_set_ts_param(var_group3, var_or51132_set_ts_param_10_p1);
  goto ldv_41481;
  case 10:
  ldv_handler_precall();
  lgdt330x_set_ts_param(var_group3, var_lgdt330x_set_ts_param_12_p1);
  goto ldv_41481;
  case 11:
  ldv_handler_precall();
  lgdt330x_set_ts_param(var_group3, var_lgdt330x_set_ts_param_12_p1);
  goto ldv_41481;
  case 12:
  ldv_handler_precall();
  lgdt330x_set_ts_param(var_group3, var_lgdt330x_set_ts_param_12_p1);
  goto ldv_41481;
  case 13:
  ldv_handler_precall();
  nxt200x_set_ts_param(var_group3, var_nxt200x_set_ts_param_13_p1);
  goto ldv_41481;
  case 14:
  ldv_handler_precall();
  cx24123_set_ts_param(var_group3, var_cx24123_set_ts_param_14_p1);
  goto ldv_41481;
  case 15:
  ldv_handler_precall();
  cx24123_set_ts_param(var_group3, var_cx24123_set_ts_param_14_p1);
  goto ldv_41481;
  case 16:
  ldv_handler_precall();
  cx24123_set_ts_param(var_group3, var_cx24123_set_ts_param_14_p1);
  goto ldv_41481;
  case 17:
  ldv_handler_precall();
  cx24116_set_ts_param(var_group4, var_cx24116_set_ts_param_20_p1);
  goto ldv_41481;
  case 18:
  ldv_handler_precall();
  cx24116_reset_device(var_group4);
  goto ldv_41481;
  case 19:
  ldv_handler_precall();
  cx24116_set_ts_param(var_group4, var_cx24116_set_ts_param_20_p1);
  goto ldv_41481;
  case 20:
  ldv_handler_precall();
  cx24116_reset_device(var_group4);
  goto ldv_41481;
  case 21:
  ldv_handler_precall();
  stv0900_set_ts_param(var_group4, var_stv0900_set_ts_param_21_p1);
  goto ldv_41481;
  case 22:
  ldv_handler_precall();
  cx24116_set_ts_param(var_group4, var_cx24116_set_ts_param_20_p1);
  goto ldv_41481;
  case 23:
  ldv_handler_precall();
  cx24116_set_ts_param(var_group4, var_cx24116_set_ts_param_20_p1);
  goto ldv_41481;
  case 24:
  ldv_handler_precall();
  samsung_smt_7020_stv0299_set_symbol_rate(var_group4, var_samsung_smt_7020_stv0299_set_symbol_rate_27_p1,
                                           var_samsung_smt_7020_stv0299_set_symbol_rate_27_p2);
  goto ldv_41481;
  case 25: ;
  if (ldv_s_cx8802_dvb_driver_cx8802_driver == 0) {
    res_cx8802_dvb_probe_31 = cx8802_dvb_probe(var_group5);
    ldv_check_return_value(res_cx8802_dvb_probe_31);
    ldv_check_return_value_probe(res_cx8802_dvb_probe_31);
    if (res_cx8802_dvb_probe_31 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_cx8802_dvb_driver_cx8802_driver = ldv_s_cx8802_dvb_driver_cx8802_driver + 1;
  } else {
  }
  goto ldv_41481;
  case 26: ;
  if (ldv_s_cx8802_dvb_driver_cx8802_driver == 1) {
    ldv_handler_precall();
    cx8802_dvb_remove(var_group5);
    ldv_s_cx8802_dvb_driver_cx8802_driver = 0;
  } else {
  }
  goto ldv_41481;
  case 27:
  ldv_handler_precall();
  cx8802_dvb_advise_acquire(var_group5);
  goto ldv_41481;
  case 28:
  ldv_handler_precall();
  cx8802_dvb_advise_release(var_group5);
  goto ldv_41481;
  default: ;
  goto ldv_41481;
  }
  ldv_41481: ;
  ldv_41513:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0 || ldv_s_cx8802_dvb_driver_cx8802_driver != 0) {
    goto ldv_41512;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  dvb_fini();
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_2(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
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
void ldv_mutex_unlock_3(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_4(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_pm_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_pm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_cx88_core(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_cx88_core(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
long ldv__builtin_expect(long exp , long c ) ;
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
static int ldv_mutex_lock_of_cx88_core ;
int ldv_mutex_lock_interruptible_lock_of_cx88_core(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_cx88_core == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock_of_cx88_core = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock_of_cx88_core(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_cx88_core == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock_of_cx88_core = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock_of_cx88_core(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_cx88_core == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock_of_cx88_core = 2;
  return;
}
}
int ldv_mutex_trylock_lock_of_cx88_core(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock_of_cx88_core == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock_of_cx88_core = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_cx88_core(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock_of_cx88_core == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock_of_cx88_core = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock_of_cx88_core(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_cx88_core == 1) {
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
void ldv_mutex_unlock_lock_of_cx88_core(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_cx88_core == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock_of_cx88_core = 1;
  return;
}
}
static int ldv_mutex_lock_of_v4l2_ctrl_handler ;
int ldv_mutex_lock_interruptible_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock_of_v4l2_ctrl_handler = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock_of_v4l2_ctrl_handler = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock_of_v4l2_ctrl_handler = 2;
  return;
}
}
int ldv_mutex_trylock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock_of_v4l2_ctrl_handler = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_v4l2_ctrl_handler(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock_of_v4l2_ctrl_handler = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
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
void ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock_of_v4l2_ctrl_handler = 1;
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
static int ldv_mutex_vb_lock_of_videobuf_queue ;
int ldv_mutex_lock_interruptible_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_vb_lock_of_videobuf_queue = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_vb_lock_of_videobuf_queue = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_vb_lock_of_videobuf_queue = 2;
  return;
}
}
int ldv_mutex_trylock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_vb_lock_of_videobuf_queue = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_vb_lock_of_videobuf_queue(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_vb_lock_of_videobuf_queue = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
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
void ldv_mutex_unlock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_vb_lock_of_videobuf_queue = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_lock_of_cx88_core = 1;
  ldv_mutex_lock_of_v4l2_ctrl_handler = 1;
  ldv_mutex_mutex_of_device = 1;
  ldv_mutex_pm_mutex = 1;
  ldv_mutex_vb_lock_of_videobuf_queue = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_lock_of_cx88_core == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_pm_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *__symbol_get(const char *arg0) {
  return ldv_malloc(0UL);
}
void __symbol_put(const char *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int cx8802_buf_prepare(struct videobuf_queue *arg0, struct cx8802_dev *arg1, struct cx88_buffer *arg2, enum v4l2_field arg3) {
  return __VERIFIER_nondet_int();
}
void cx8802_buf_queue(struct cx8802_dev *arg0, struct cx88_buffer *arg1) {
  return;
}
struct cx8802_driver *cx8802_get_driver(struct cx8802_dev *arg0, enum cx88_board_type arg1) {
  return ldv_malloc(sizeof(struct cx8802_driver));
}
int __VERIFIER_nondet_int(void);
int cx8802_register_driver(struct cx8802_driver *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int cx8802_unregister_driver(struct cx8802_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void cx88_free_buffer(struct videobuf_queue *arg0, struct cx88_buffer *arg1) {
  return;
}
void cx88_setup_xc3028(struct cx88_core *arg0, struct xc2028_ctrl *arg1) {
  return;
}
void dvb_frontend_detach(struct dvb_frontend *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_unregister_frontend(struct dvb_frontend *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_transfer(struct i2c_adapter *arg0, struct i2c_msg *arg1, int arg2) {
  return __VERIFIER_nondet_int();
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
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
struct videobuf_dvb_frontend *videobuf_dvb_alloc_frontend(struct videobuf_dvb_frontends *arg0, int arg1) {
  return ldv_malloc(sizeof(struct videobuf_dvb_frontend));
}
void videobuf_dvb_dealloc_frontends(struct videobuf_dvb_frontends *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_dvb_find_frontend(struct videobuf_dvb_frontends *arg0, struct dvb_frontend *arg1) {
  return __VERIFIER_nondet_int();
}
struct videobuf_dvb_frontend *videobuf_dvb_get_frontend(struct videobuf_dvb_frontends *arg0, int arg1) {
  return ldv_malloc(sizeof(struct videobuf_dvb_frontend));
}
int __VERIFIER_nondet_int(void);
int videobuf_dvb_register_bus(struct videobuf_dvb_frontends *arg0, struct module *arg1, void *arg2, struct device *arg3, short *arg4, int arg5, int (*arg6)(struct dvb_frontend *, unsigned int, void *, unsigned int)) {
  return __VERIFIER_nondet_int();
}
void videobuf_dvb_unregister_bus(struct videobuf_dvb_frontends *arg0) {
  return;
}
void videobuf_queue_sg_init(struct videobuf_queue *arg0, const struct videobuf_queue_ops *arg1, struct device *arg2, spinlock_t *arg3, enum v4l2_buf_type arg4, enum v4l2_field arg5, unsigned int arg6, void *arg7, struct mutex *arg8) {
  return;
}
int __VERIFIER_nondet_int(void);
int vp3054_i2c_probe(struct cx8802_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void vp3054_i2c_remove(struct cx8802_dev *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
