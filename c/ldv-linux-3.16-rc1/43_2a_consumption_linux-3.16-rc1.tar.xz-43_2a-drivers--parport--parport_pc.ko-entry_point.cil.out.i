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
struct __anonstruct_ldv_1022_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1037_10 {
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
union __anonunion_ldv_1038_8 {
   struct __anonstruct_ldv_1022_9 ldv_1022 ;
   struct __anonstruct_ldv_1037_10 ldv_1037 ;
};
struct desc_struct {
   union __anonunion_ldv_1038_8 ldv_1038 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
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
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1458_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1458_15 ldv_1458 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
struct file_operations;
struct completion;
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_17 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_18 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_19 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_2850_16 {
   struct __anonstruct_futex_17 futex ;
   struct __anonstruct_nanosleep_18 nanosleep ;
   struct __anonstruct_poll_19 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_2850_16 ldv_2850 ;
};
struct exec_domain;
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
union __anonunion_ldv_2998_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2998_20 ldv_2998 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
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
struct __anonstruct_ldv_5289_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5295_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5296_24 {
   struct __anonstruct_ldv_5289_25 ldv_5289 ;
   struct __anonstruct_ldv_5295_26 ldv_5295 ;
};
union __anonunion_ldv_5305_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5296_24 ldv_5296 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5305_27 ldv_5305 ;
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
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
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
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
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
   unsigned char fpu_counter ;
};
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct lockdep_map;
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
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6346_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6347_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6346_31 ldv_6346 ;
};
struct spinlock {
   union __anonunion_ldv_6347_30 ldv_6347 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_32 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_32 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_34 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_34 kuid_t;
struct __anonstruct_kgid_t_35 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_35 kgid_t;
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
struct optimistic_spin_queue;
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
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
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
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
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
   void (*set_latency_tolerance)(struct device * , s32 ) ;
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
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct nsproxy;
struct cred;
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
struct __anonstruct_ldv_14006_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14010_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14011_135 {
   struct __anonstruct_ldv_14006_136 ldv_14006 ;
   struct __anonstruct_ldv_14010_137 ldv_14010 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14011_135 ldv_14011 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion_ldv_14120_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14126_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14136_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14138_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14136_144 ldv_14136 ;
   int units ;
};
struct __anonstruct_ldv_14140_142 {
   union __anonunion_ldv_14138_143 ldv_14138 ;
   atomic_t _count ;
};
union __anonunion_ldv_14142_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14140_142 ldv_14140 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14143_139 {
   union __anonunion_ldv_14126_140 ldv_14126 ;
   union __anonunion_ldv_14142_141 ldv_14142 ;
};
struct __anonstruct_ldv_14150_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14155_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14150_146 ldv_14150 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14161_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 ldv_14120 ;
   struct __anonstruct_ldv_14143_139 ldv_14143 ;
   union __anonunion_ldv_14155_145 ldv_14155 ;
   union __anonunion_ldv_14161_147 ldv_14161 ;
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
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   u32 vmacache_seqnum ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
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
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
};
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
union __anonunion_ldv_14524_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14524_153 ldv_14524 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct dentry;
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_ldv_14668_154 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion_ldv_14668_154 ldv_14668 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct bin_attribute;
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
   struct bin_attribute **bin_attrs ;
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
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
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
   char *argv[3U] ;
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
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_15343_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15343_155 ldv_15343 ;
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
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
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
struct tracepoint;
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
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
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
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_15963_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15969_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15970_156 {
   struct __anonstruct_ldv_15963_157 ldv_15963 ;
   struct __anonstruct_ldv_15969_158 ldv_15969 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15970_156 ldv_15970 ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct pnp_dev;
struct parport_state;
struct parport;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_160 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_160 sigset_t;
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
struct __anonstruct__kill_162 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_163 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_166 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_167 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_168 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_161 {
   int _pad[28U] ;
   struct __anonstruct__kill_162 _kill ;
   struct __anonstruct__timer_163 _timer ;
   struct __anonstruct__rt_164 _rt ;
   struct __anonstruct__sigchld_165 _sigchld ;
   struct __anonstruct__sigfault_166 _sigfault ;
   struct __anonstruct__sigpoll_167 _sigpoll ;
   struct __anonstruct__sigsys_168 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_161 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
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
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
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
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion_ldv_17588_171 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_17596_172 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_17609_174 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_17610_173 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_17609_174 ldv_17609 ;
};
union __anonunion_type_data_175 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_177 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_17625_176 {
   union __anonunion_payload_177 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_17588_171 ldv_17588 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_17596_172 ldv_17596 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_17610_173 ldv_17610 ;
   union __anonunion_type_data_175 type_data ;
   union __anonunion_ldv_17625_176 ldv_17625 ;
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
   struct list_head thread_head ;
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
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
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
   int depth ;
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
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
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
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
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
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults_memory ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer_memory ;
   unsigned long *numa_faults_cpu ;
   unsigned long *numa_faults_buffer_cpu ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
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
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct path;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
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
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct of_device_id;
struct acpi_device_id;
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
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
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
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
};
struct dma_coherent_mem;
struct cma;
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
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
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
   bool offline_disabled ;
   bool offline ;
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
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
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
struct pnp_device_id {
   __u8 id[8U] ;
   kernel_ulong_t driver_data ;
};
struct __anonstruct_devs_183 {
   __u8 id[8U] ;
};
struct pnp_card_device_id {
   __u8 id[8U] ;
   kernel_ulong_t driver_data ;
   struct __anonstruct_devs_183 devs[8U] ;
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
union __anonunion_ldv_26390_184 {
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
   u8 dma_alias_devfn ;
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
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_26390_184 ldv_26390 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_chip;
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
   struct msi_chip *msi ;
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
   void (*reset_notify)(struct pci_dev * , bool ) ;
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
struct pnp_protocol;
struct pnp_id;
struct pnp_card {
   struct device dev ;
   unsigned char number ;
   struct list_head global_list ;
   struct list_head protocol_list ;
   struct list_head devices ;
   struct pnp_protocol *protocol ;
   struct pnp_id *id ;
   char name[50U] ;
   unsigned char pnpver ;
   unsigned char productver ;
   unsigned int serial ;
   unsigned char checksum ;
   struct proc_dir_entry *procdir ;
};
struct pnp_card_driver;
struct pnp_card_link {
   struct pnp_card *card ;
   struct pnp_card_driver *driver ;
   void *driver_data ;
   pm_message_t pm_state ;
};
struct pnp_driver;
struct pnp_dev {
   struct device dev ;
   u64 dma_mask ;
   unsigned int number ;
   int status ;
   struct list_head global_list ;
   struct list_head protocol_list ;
   struct list_head card_list ;
   struct list_head rdev_list ;
   struct pnp_protocol *protocol ;
   struct pnp_card *card ;
   struct pnp_driver *driver ;
   struct pnp_card_link *card_link ;
   struct pnp_id *id ;
   int active ;
   int capabilities ;
   unsigned int num_dependent_sets ;
   struct list_head resources ;
   struct list_head options ;
   char name[50U] ;
   int flags ;
   struct proc_dir_entry *procent ;
   void *data ;
};
struct pnp_id {
   char id[8U] ;
   struct pnp_id *next ;
};
struct pnp_driver {
   char *name ;
   struct pnp_device_id const *id_table ;
   unsigned int flags ;
   int (*probe)(struct pnp_dev * , struct pnp_device_id const * ) ;
   void (*remove)(struct pnp_dev * ) ;
   void (*shutdown)(struct pnp_dev * ) ;
   int (*suspend)(struct pnp_dev * , pm_message_t ) ;
   int (*resume)(struct pnp_dev * ) ;
   struct device_driver driver ;
};
struct pnp_card_driver {
   struct list_head global_list ;
   char *name ;
   struct pnp_card_device_id const *id_table ;
   unsigned int flags ;
   int (*probe)(struct pnp_card_link * , struct pnp_card_device_id const * ) ;
   void (*remove)(struct pnp_card_link * ) ;
   int (*suspend)(struct pnp_card_link * , pm_message_t ) ;
   int (*resume)(struct pnp_card_link * ) ;
   struct pnp_driver link ;
};
struct pnp_protocol {
   struct list_head protocol_list ;
   char *name ;
   int (*get)(struct pnp_dev * ) ;
   int (*set)(struct pnp_dev * ) ;
   int (*disable)(struct pnp_dev * ) ;
   bool (*can_wakeup)(struct pnp_dev * ) ;
   int (*suspend)(struct pnp_dev * , pm_message_t ) ;
   int (*resume)(struct pnp_dev * ) ;
   unsigned char number ;
   struct device dev ;
   struct list_head cards ;
   struct list_head devices ;
};
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
struct platform_device_info {
   struct device *parent ;
   struct acpi_dev_node acpi_node ;
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
   bool prevent_deferred_probe ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_28360_186 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_28361_185 {
   struct __anonstruct_ldv_28360_186 ldv_28360 ;
};
struct lockref {
   union __anonunion_ldv_28361_185 ldv_28361 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_28384_188 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_28386_187 {
   struct __anonstruct_ldv_28384_188 ldv_28384 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_28386_187 ldv_28386 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_189 {
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
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_189 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
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
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct __anonstruct_ldv_28747_191 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_28749_190 {
   struct __anonstruct_ldv_28747_191 ldv_28747 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_28749_190 ldv_28749 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
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
struct block_device;
struct export_operations;
struct iovec;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
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
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_192 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_192 kprojid_t;
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
union __anonunion_ldv_29278_193 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_29278_193 ldv_29278 ;
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
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
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
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
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
   unsigned long nrshadows ;
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
union __anonunion_ldv_29692_196 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_29712_197 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_29729_198 {
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
   union __anonunion_ldv_29692_196 ldv_29692 ;
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
   union __anonunion_ldv_29712_197 ldv_29712 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_29729_198 ldv_29729 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
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
union __anonunion_f_u_199 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_199 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
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
};
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
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
struct __anonstruct_afs_201 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_200 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_201 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
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
   union __anonunion_fl_u_200 fl_u ;
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
   struct list_head s_mounts ;
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
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
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
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
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
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
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
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
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
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
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
enum ldv_24383 {
    PARPORT_CLASS_LEGACY = 0,
    PARPORT_CLASS_PRINTER = 1,
    PARPORT_CLASS_MODEM = 2,
    PARPORT_CLASS_NET = 3,
    PARPORT_CLASS_HDC = 4,
    PARPORT_CLASS_PCMCIA = 5,
    PARPORT_CLASS_MEDIA = 6,
    PARPORT_CLASS_FDC = 7,
    PARPORT_CLASS_PORTS = 8,
    PARPORT_CLASS_SCANNER = 9,
    PARPORT_CLASS_DIGCAM = 10,
    PARPORT_CLASS_OTHER = 11,
    PARPORT_CLASS_UNSPEC = 12,
    PARPORT_CLASS_SCSIADAPTER = 13
} ;
typedef enum ldv_24383 parport_device_class;
struct pardevice;
struct pc_parport_state {
   unsigned int ctr ;
   unsigned int ecr ;
};
struct ax_parport_state {
   unsigned int ctr ;
   unsigned int ecr ;
   unsigned int dcsr ;
};
struct amiga_parport_state {
   unsigned char data ;
   unsigned char datadir ;
   unsigned char status ;
   unsigned char statusdir ;
};
struct ax88796_parport_state {
   unsigned char cpr ;
};
struct ip32_parport_state {
   unsigned int dcr ;
   unsigned int ecr ;
};
union __anonunion_u_202 {
   struct pc_parport_state pc ;
   struct ax_parport_state ax ;
   struct amiga_parport_state amiga ;
   struct ax88796_parport_state ax88796 ;
   struct ip32_parport_state ip32 ;
   void *misc ;
};
struct parport_state {
   union __anonunion_u_202 u ;
};
struct parport_operations {
   void (*write_data)(struct parport * , unsigned char ) ;
   unsigned char (*read_data)(struct parport * ) ;
   void (*write_control)(struct parport * , unsigned char ) ;
   unsigned char (*read_control)(struct parport * ) ;
   unsigned char (*frob_control)(struct parport * , unsigned char , unsigned char ) ;
   unsigned char (*read_status)(struct parport * ) ;
   void (*enable_irq)(struct parport * ) ;
   void (*disable_irq)(struct parport * ) ;
   void (*data_forward)(struct parport * ) ;
   void (*data_reverse)(struct parport * ) ;
   void (*init_state)(struct pardevice * , struct parport_state * ) ;
   void (*save_state)(struct parport * , struct parport_state * ) ;
   void (*restore_state)(struct parport * , struct parport_state * ) ;
   size_t (*epp_write_data)(struct parport * , void const * , size_t , int ) ;
   size_t (*epp_read_data)(struct parport * , void * , size_t , int ) ;
   size_t (*epp_write_addr)(struct parport * , void const * , size_t , int ) ;
   size_t (*epp_read_addr)(struct parport * , void * , size_t , int ) ;
   size_t (*ecp_write_data)(struct parport * , void const * , size_t , int ) ;
   size_t (*ecp_read_data)(struct parport * , void * , size_t , int ) ;
   size_t (*ecp_write_addr)(struct parport * , void const * , size_t , int ) ;
   size_t (*compat_write_data)(struct parport * , void const * , size_t , int ) ;
   size_t (*nibble_read_data)(struct parport * , void * , size_t , int ) ;
   size_t (*byte_read_data)(struct parport * , void * , size_t , int ) ;
   struct module *owner ;
};
struct parport_device_info {
   parport_device_class class ;
   char const *class_name ;
   char const *mfr ;
   char const *model ;
   char const *cmdset ;
   char const *description ;
};
struct pardevice {
   char const *name ;
   struct parport *port ;
   int daisy ;
   int (*preempt)(void * ) ;
   void (*wakeup)(void * ) ;
   void *private ;
   void (*irq_func)(void * ) ;
   unsigned int flags ;
   struct pardevice *next ;
   struct pardevice *prev ;
   struct parport_state *state ;
   wait_queue_head_t wait_q ;
   unsigned long time ;
   unsigned long timeslice ;
   long volatile timeout ;
   unsigned long waiting ;
   struct pardevice *waitprev ;
   struct pardevice *waitnext ;
   void *sysctl_table ;
};
enum ieee1284_phase {
    IEEE1284_PH_FWD_DATA = 0,
    IEEE1284_PH_FWD_IDLE = 1,
    IEEE1284_PH_TERMINATE = 2,
    IEEE1284_PH_NEGOTIATION = 3,
    IEEE1284_PH_HBUSY_DNA = 4,
    IEEE1284_PH_REV_IDLE = 5,
    IEEE1284_PH_HBUSY_DAVAIL = 6,
    IEEE1284_PH_REV_DATA = 7,
    IEEE1284_PH_ECP_SETUP = 8,
    IEEE1284_PH_ECP_FWD_TO_REV = 9,
    IEEE1284_PH_ECP_REV_TO_FWD = 10,
    IEEE1284_PH_ECP_DIR_UNKNOWN = 11
} ;
struct ieee1284_info {
   int mode ;
   enum ieee1284_phase volatile phase ;
   struct semaphore irq ;
};
struct parport {
   unsigned long base ;
   unsigned long base_hi ;
   unsigned int size ;
   char const *name ;
   unsigned int modes ;
   int irq ;
   int dma ;
   int muxport ;
   int portnum ;
   struct device *dev ;
   struct parport *physport ;
   struct pardevice *devices ;
   struct pardevice *cad ;
   int daisy ;
   int muxsel ;
   struct pardevice *waithead ;
   struct pardevice *waittail ;
   struct list_head list ;
   unsigned int flags ;
   void *sysctl_table ;
   struct parport_device_info probe_info[5U] ;
   struct ieee1284_info ieee1284 ;
   struct parport_operations *ops ;
   void *private_data ;
   int number ;
   spinlock_t pardevice_lock ;
   spinlock_t waitlist_lock ;
   rwlock_t cad_lock ;
   int spintime ;
   atomic_t ref_count ;
   unsigned long devflags ;
   struct pardevice *proc_device ;
   struct list_head full_list ;
   struct parport *slaves[3U] ;
};
struct parport_pc_private {
   unsigned char ctr ;
   unsigned char ctr_writable ;
   int ecr ;
   int fifo_depth ;
   int pword ;
   int readIntrThreshold ;
   int writeIntrThreshold ;
   char *dma_buf ;
   dma_addr_t dma_handle ;
   struct list_head list ;
   struct parport *port ;
};
struct parport_pc_via_data {
   u8 via_pci_parport_irq_reg ;
   u8 via_pci_parport_dma_reg ;
   u8 via_pci_superio_config_reg ;
   u8 via_pci_superio_config_data ;
   u8 viacfg_function ;
   u8 viacfg_parport_control ;
   u8 viacfg_parport_base ;
};
struct superio_struct {
   int io ;
   int irq ;
   int dma ;
};
struct parport_pc_superio {
   int (*probe)(struct pci_dev * , int , int , struct parport_pc_via_data const * ) ;
   struct parport_pc_via_data const *via ;
};
struct __anonstruct_addr_203 {
   int lo ;
   int hi ;
};
struct parport_pc_pci {
   int numports ;
   struct __anonstruct_addr_203 addr[4U] ;
   int (*preinit_hook)(struct pci_dev * , int , int ) ;
   void (*postinit_hook)(struct pci_dev * , int ) ;
};
struct pci_parport_data {
   int num ;
   struct parport *ports[2U] ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef struct page___0 *pgtable_t___0;
struct __anonstruct____missing_field_name_211 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_210 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_209 {
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_208 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_209 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion_ldv_14126_140 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_213 {
   struct page___0 *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_212 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_213 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t___0 pmd_huge_pte ;
};
union __anonunion____missing_field_name_214 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache___0 *slab_cache ;
   struct page___0 *first_page ;
};
struct page___0 {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_206 __annonCompField43 ;
   union __anonunion____missing_field_name_212 __annonCompField45 ;
   union __anonunion____missing_field_name_214 __annonCompField46 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
enum kobj_ns_type;
struct attribute___0 {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops___0 {
   ssize_t (*show)(struct kobject___0 * , struct attribute___0 * , char * ) ;
   ssize_t (*store)(struct kobject___0 * , struct attribute___0 * , char const * ,
                    size_t ) ;
};
struct kobject___0 {
   char const *name ;
   struct list_head entry ;
   struct kobject___0 *parent ;
   struct kset *kset ;
   struct kobj_type___0 *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type___0 {
   void (*release)(struct kobject___0 *kobj ) ;
   struct sysfs_ops___0 const *sysfs_ops ;
   struct attribute___0 **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject___0 *kobj ) ;
   void const *(*namespace)(struct kobject___0 *kobj ) ;
};
struct kmem_cache_cpu___0 {
   void **freelist ;
   unsigned long tid ;
   struct page___0 *page ;
   struct page___0 *partial ;
   unsigned int stat[26] ;
};
struct kmem_cache___0 {
   struct kmem_cache_cpu___0 *cpu_slab ;
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
   struct kobject___0 kobj ;
   struct memcg_cache_params___0 *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct __anonstruct____missing_field_name_227 {
   struct callback_head callback_head ;
   struct kmem_cache___0 *memcg_caches[0] ;
};
struct __anonstruct____missing_field_name_228 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache___0 *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField50 ;
   struct __anonstruct____missing_field_name_228 __annonCompField51 ;
};
struct memcg_cache_params___0 {
   bool is_root_cache ;
   union __anonunion____missing_field_name_226 __annonCompField52 ;
};
long ldv__builtin_expect(long exp , long c ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __bad_percpu_size(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  default:
  __bad_percpu_size();
  }
  ldv_3067: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern int strcmp(char const * , char const * ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    ldv_4851: ;
    goto ldv_4851;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp != 0L);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5945;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5945;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5945;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5945;
  default:
  __bad_percpu_size();
  }
  ldv_5945:
  ti = (struct thread_info *)(pfo_ret__ - 16344UL);
  return (ti);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void ldv_spin_lock_1(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_5(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_8(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern struct resource ioport_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
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
__inline static void outsb(int port , void const *addr , unsigned long count )
{
  {
  __asm__ volatile ("rep; outsb": "+S" (addr), "+c" (count): "d" (port));
  return;
}
}
__inline static void insb(int port , void *addr , unsigned long count )
{
  {
  __asm__ volatile ("rep; insb": "+D" (addr), "+c" (count): "d" (port));
  return;
}
}
__inline static void outsl(int port , void const *addr , unsigned long count )
{
  {
  __asm__ volatile ("rep; outsl": "+S" (addr), "+c" (count): "d" (port));
  return;
}
}
__inline static void insl(int port , void *addr , unsigned long count )
{
  {
  __asm__ volatile ("rep; insl": "+D" (addr), "+c" (count): "d" (port));
  return;
}
}
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
__inline static void *ldv_kmalloc_12(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern size_t __VERIFIER_nondet_size_t(void) ;
extern unsigned char __VERIFIER_nondet_uchar(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void __VERIFIER_assume(int expression ) ;
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  ldv_error();
  return;
}
}
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
struct pnp_dev *parport_pc_pnp_driver_group0 ;
int ldv_irq_1_0 = 0;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_2 ;
void *ldv_irq_data_1_3 ;
struct pci_dev *parport_pc_pci_driver_group0 ;
void *ldv_irq_data_1_2 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
int ldv_irq_line_1_3 ;
struct parport_state *parport_pc_ops_group0 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
struct parport *parport_pc_ops_group1 ;
int ldv_state_variable_1 ;
int ldv_irq_line_1_2 ;
int ldv_state_variable_4 ;
void ldv_initialize_parport_operations_5(void) ;
void ldv_initialize_pnp_driver_3(void) ;
void ldv_initialize_pci_driver_4(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void choose_interrupt_1(void) ;
extern long schedule_timeout_interruptible(long ) ;
extern void schedule(void) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
extern int _cond_resched(void) ;
__inline static bool need_resched(void)
{
  struct thread_info *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = current_thread_info();
  tmp___0 = test_ti_thread_flag(tmp, 3);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  return (tmp___1 != 0L);
}
}
extern void __const_udelay(unsigned long ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq___0 , irqreturn_t (*handler)(int ,
                                                                              void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq___0, handler, (irqreturn_t (*)(int , void * ))0,
                             flags, name, dev);
  return (tmp);
}
}
__inline static int ldv_request_irq_20(unsigned int irq___0 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_21(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern unsigned long probe_irq_on(void) ;
extern int probe_irq_off(unsigned long ) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern int dev_err(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
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
    ldv_25608: ;
    goto ldv_25608;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
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
    ldv_25617: ;
    goto ldv_25617;
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
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
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
    warn_slowpath_null("./arch/x86/include/asm/dma-mapping.h", 166);
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
__inline static int dma_set_mask_and_coherent(struct device *dev , u64 mask )
{
  int rc ;
  int tmp ;
  {
  tmp = dma_set_mask(dev, mask);
  rc = tmp;
  if (rc == 0) {
    dma_set_coherent_mask(dev, mask);
  } else {
  }
  return (rc);
}
}
__inline static int dma_coerce_mask_and_coherent(struct device *dev , u64 mask )
{
  int tmp ;
  {
  dev->dma_mask = & dev->coherent_dma_mask;
  tmp = dma_set_mask_and_coherent(dev, mask);
  return (tmp);
}
}
extern struct pci_dev *pci_get_device(unsigned int , unsigned int , struct pci_dev * ) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
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
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
extern struct pci_device_id const *pci_match_id(struct pci_device_id const * ,
                                                  struct pci_dev * ) ;
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
extern struct resource *pnp_get_resource(struct pnp_dev * , unsigned long , unsigned int ) ;
__inline static int pnp_resource_valid(struct resource *res )
{
  {
  if ((unsigned long )res != (unsigned long )((struct resource *)0)) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static resource_size_t pnp_port_start(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *res ;
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 256UL, bar);
  res = tmp;
  tmp___0 = pnp_resource_valid(res);
  if (tmp___0 != 0) {
    return (res->start);
  } else {
  }
  return (0ULL);
}
}
__inline static unsigned long pnp_port_flags(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *res ;
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 256UL, bar);
  res = tmp;
  tmp___0 = pnp_resource_valid(res);
  if (tmp___0 != 0) {
    return (res->flags);
  } else {
  }
  return (1073742080UL);
}
}
__inline static int pnp_port_valid(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 256UL, bar);
  tmp___0 = pnp_resource_valid(tmp);
  return (tmp___0);
}
}
__inline static resource_size_t pnp_irq(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *res ;
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 1024UL, bar);
  res = tmp;
  tmp___0 = pnp_resource_valid(res);
  if (tmp___0 != 0) {
    return (res->start);
  } else {
  }
  return (0xffffffffffffffffULL);
}
}
__inline static unsigned long pnp_irq_flags(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *res ;
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 1024UL, bar);
  res = tmp;
  tmp___0 = pnp_resource_valid(res);
  if (tmp___0 != 0) {
    return (res->flags);
  } else {
  }
  return (1073742848UL);
}
}
__inline static int pnp_irq_valid(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 1024UL, bar);
  tmp___0 = pnp_resource_valid(tmp);
  return (tmp___0);
}
}
__inline static resource_size_t pnp_dma(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *res ;
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 2048UL, bar);
  res = tmp;
  tmp___0 = pnp_resource_valid(res);
  if (tmp___0 != 0) {
    return (res->start);
  } else {
  }
  return (0xffffffffffffffffULL);
}
}
__inline static unsigned long pnp_dma_flags(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *res ;
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 2048UL, bar);
  res = tmp;
  tmp___0 = pnp_resource_valid(res);
  if (tmp___0 != 0) {
    return (res->flags);
  } else {
  }
  return (1073743872UL);
}
}
__inline static int pnp_dma_valid(struct pnp_dev *dev , unsigned int bar )
{
  struct resource *tmp ;
  int tmp___0 ;
  {
  tmp = pnp_get_resource(dev, 2048UL, bar);
  tmp___0 = pnp_resource_valid(tmp);
  return (tmp___0);
}
}
__inline static void *pnp_get_drvdata(struct pnp_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pnp_set_drvdata(struct pnp_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
extern int pnp_register_driver(struct pnp_driver * ) ;
extern void pnp_unregister_driver(struct pnp_driver * ) ;
extern void platform_device_unregister(struct platform_device * ) ;
extern struct bus_type platform_bus_type ;
extern struct platform_device *platform_device_register_full(struct platform_device_info const * ) ;
__inline static struct platform_device *platform_device_register_resndata(struct device *parent ,
                                                                          char const *name ,
                                                                          int id ,
                                                                          struct resource const *res ,
                                                                          unsigned int num ,
                                                                          void const *data ,
                                                                          size_t size )
{
  struct platform_device_info pdevinfo ;
  struct platform_device *tmp ;
  {
  pdevinfo.parent = parent;
  pdevinfo.acpi_node.companion = 0;
  pdevinfo.name = name;
  pdevinfo.id = id;
  pdevinfo.res = res;
  pdevinfo.num_res = num;
  pdevinfo.data = data;
  pdevinfo.size_data = size;
  pdevinfo.dma_mask = 0ULL;
  tmp = platform_device_register_full((struct platform_device_info const *)(& pdevinfo));
  return (tmp);
}
}
__inline static struct platform_device *platform_device_register_simple(char const *name ,
                                                                        int id , struct resource const *res ,
                                                                        unsigned int num )
{
  struct platform_device *tmp ;
  {
  tmp = platform_device_register_resndata((struct device *)0, name, id, res, num,
                                          (void const *)0, 0UL);
  return (tmp);
}
}
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
int ldv___platform_driver_register_22(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
void ldv_platform_driver_unregister_23(struct platform_driver *drv ) ;
extern spinlock_t dma_spin_lock ;
__inline static unsigned long claim_dma_lock(void)
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  return (flags);
}
}
__inline static void release_dma_lock(unsigned long flags )
{
  {
  spin_unlock_irqrestore(& dma_spin_lock, flags);
  return;
}
}
__inline static void enable_dma(unsigned int dmanr )
{
  {
  if (dmanr <= 3U) {
    outb((int )((unsigned char )dmanr), 10);
  } else {
    outb((int )((unsigned char )dmanr) & 3, 212);
  }
  return;
}
}
__inline static void disable_dma(unsigned int dmanr )
{
  {
  if (dmanr <= 3U) {
    outb((int )((unsigned int )((unsigned char )dmanr) | 4U), 10);
  } else {
    outb((int )(((unsigned int )((unsigned char )dmanr) & 3U) | 4U), 212);
  }
  return;
}
}
__inline static void clear_dma_ff(unsigned int dmanr )
{
  {
  if (dmanr <= 3U) {
    outb(0, 12);
  } else {
    outb(0, 216);
  }
  return;
}
}
__inline static void set_dma_mode(unsigned int dmanr , char mode )
{
  {
  if (dmanr <= 3U) {
    outb((int )((unsigned char )dmanr) | (int )((unsigned char )mode), 11);
  } else {
    outb((int )(((unsigned int )((unsigned char )dmanr) & 3U) | (unsigned int )((unsigned char )mode)),
         214);
  }
  return;
}
}
__inline static void set_dma_page(unsigned int dmanr , char pagenr )
{
  {
  switch (dmanr) {
  case 0U:
  outb((int )((unsigned char )pagenr), 135);
  goto ldv_28210;
  case 1U:
  outb((int )((unsigned char )pagenr), 131);
  goto ldv_28210;
  case 2U:
  outb((int )((unsigned char )pagenr), 129);
  goto ldv_28210;
  case 3U:
  outb((int )((unsigned char )pagenr), 130);
  goto ldv_28210;
  case 5U:
  outb((int )((unsigned char )pagenr) & 254, 139);
  goto ldv_28210;
  case 6U:
  outb((int )((unsigned char )pagenr) & 254, 137);
  goto ldv_28210;
  case 7U:
  outb((int )((unsigned char )pagenr) & 254, 138);
  goto ldv_28210;
  }
  ldv_28210: ;
  return;
}
}
__inline static void set_dma_addr(unsigned int dmanr , unsigned int a )
{
  {
  set_dma_page(dmanr, (int )((char )(a >> 16)));
  if (dmanr <= 3U) {
    outb((int )((unsigned char )a), (int )((dmanr & 3U) << 1));
    outb((int )((unsigned char )(a >> 8)), (int )((dmanr & 3U) << 1));
  } else {
    outb((int )((unsigned char )(a >> 1)), (int )(((dmanr & 3U) << 2) + 192U));
    outb((int )((unsigned char )(a >> 9)), (int )(((dmanr & 3U) << 2) + 192U));
  }
  return;
}
}
__inline static void set_dma_count(unsigned int dmanr , unsigned int count )
{
  {
  count = count - 1U;
  if (dmanr <= 3U) {
    outb((int )((unsigned char )count), (int )(((dmanr & 3U) << 1) + 1U));
    outb((int )((unsigned char )(count >> 8)), (int )(((dmanr & 3U) << 1) + 1U));
  } else {
    outb((int )((unsigned char )(count >> 1)), (int )(((dmanr & 3U) << 2) + 194U));
    outb((int )((unsigned char )(count >> 9)), (int )(((dmanr & 3U) << 2) + 194U));
  }
  return;
}
}
__inline static int get_dma_residue(unsigned int dmanr )
{
  unsigned int io_port ;
  unsigned short count ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  io_port = dmanr <= 3U ? ((dmanr & 3U) << 1) + 1U : ((dmanr & 3U) << 2) + 194U;
  tmp = inb((int )io_port);
  count = (unsigned int )((unsigned short )tmp) + 1U;
  tmp___0 = inb((int )io_port);
  count = ((int )((unsigned short )tmp___0) << 8U) + (int )count;
  return (dmanr <= 3U ? (int )count : (int )count << 1);
}
}
extern int request_dma(unsigned int , char const * ) ;
extern void free_dma(unsigned int ) ;
extern struct parport *parport_register_port(unsigned long , int , int , struct parport_operations * ) ;
extern void parport_announce_port(struct parport * ) ;
extern void parport_remove_port(struct parport * ) ;
extern irqreturn_t parport_irq_handler(int , void * ) ;
extern void parport_put_port(struct parport * ) ;
extern int parport_wait_event(struct parport * , long ) ;
extern int parport_wait_peripheral(struct parport * , unsigned char , unsigned char ) ;
extern size_t parport_ieee1284_write_compat(struct parport * , void const * , size_t ,
                                            int ) ;
extern size_t parport_ieee1284_read_nibble(struct parport * , void * , size_t , int ) ;
extern size_t parport_ieee1284_read_byte(struct parport * , void * , size_t , int ) ;
extern size_t parport_ieee1284_ecp_read_data(struct parport * , void * , size_t ,
                                             int ) ;
extern size_t parport_ieee1284_ecp_write_data(struct parport * , void const * ,
                                              size_t , int ) ;
extern size_t parport_ieee1284_ecp_write_addr(struct parport * , void const * ,
                                              size_t , int ) ;
extern size_t parport_ieee1284_epp_write_data(struct parport * , void const * ,
                                              size_t , int ) ;
extern size_t parport_ieee1284_epp_read_data(struct parport * , void * , size_t ,
                                             int ) ;
extern size_t parport_ieee1284_epp_write_addr(struct parport * , void const * ,
                                              size_t , int ) ;
extern size_t parport_ieee1284_epp_read_addr(struct parport * , void * , size_t ,
                                             int ) ;
__inline static void parport_pc_write_data(struct parport *p , unsigned char d )
{
  {
  outb((int )d, (int )p->base);
  return;
}
}
__inline static unsigned char parport_pc_read_data(struct parport *p )
{
  unsigned char val ;
  unsigned char tmp ;
  {
  tmp = inb((int )p->base);
  val = tmp;
  return (val);
}
}
__inline static unsigned char __parport_pc_frob_control(struct parport *p , unsigned char mask ,
                                                        unsigned char val )
{
  struct parport_pc_private *priv ;
  unsigned char ctr ;
  {
  priv = (struct parport_pc_private *)(p->physport)->private_data;
  ctr = priv->ctr;
  ctr = (unsigned char )(((int )((signed char )(~ ((int )mask))) & (int )((signed char )ctr)) ^ (int )((signed char )val));
  ctr = (int )priv->ctr_writable & (int )ctr;
  outb((int )ctr, (int )((unsigned int )p->base + 2U));
  priv->ctr = ctr;
  return (ctr);
}
}
__inline static void parport_pc_data_reverse(struct parport *p )
{
  {
  __parport_pc_frob_control(p, 32, 32);
  return;
}
}
__inline static void parport_pc_data_forward(struct parport *p )
{
  {
  __parport_pc_frob_control(p, 32, 0);
  return;
}
}
__inline static void parport_pc_write_control(struct parport *p , unsigned char d )
{
  unsigned char wm ;
  {
  wm = 15U;
  if (((int )d & 32) != 0) {
    printk("\017%s (%s): use data_reverse for this!\n", p->name, (p->cad)->name);
    parport_pc_data_reverse(p);
  } else {
  }
  __parport_pc_frob_control(p, (int )wm, (int )d & (int )wm);
  return;
}
}
__inline static unsigned char parport_pc_read_control(struct parport *p )
{
  unsigned char rm ;
  struct parport_pc_private const *priv ;
  {
  rm = 15U;
  priv = (struct parport_pc_private const *)(p->physport)->private_data;
  return ((int )((unsigned char )priv->ctr) & (int )rm);
}
}
__inline static unsigned char parport_pc_frob_control(struct parport *p , unsigned char mask ,
                                                      unsigned char val )
{
  unsigned char wm ;
  unsigned char tmp ;
  {
  wm = 15U;
  if (((int )mask & 32) != 0) {
    printk("\017%s (%s): use data_%s for this!\n", p->name, (p->cad)->name, ((int )val & 32) != 0 ? (char *)"reverse" : (char *)"forward");
    if (((int )val & 32) != 0) {
      parport_pc_data_reverse(p);
    } else {
      parport_pc_data_forward(p);
    }
  } else {
  }
  mask = (int )mask & (int )wm;
  val = (int )val & (int )wm;
  tmp = __parport_pc_frob_control(p, (int )mask, (int )val);
  return (tmp);
}
}
__inline static unsigned char parport_pc_read_status(struct parport *p )
{
  unsigned char tmp ;
  {
  tmp = inb((int )((unsigned int )p->base + 1U));
  return (tmp);
}
}
__inline static void parport_pc_disable_irq(struct parport *p )
{
  {
  __parport_pc_frob_control(p, 16, 0);
  return;
}
}
__inline static void parport_pc_enable_irq(struct parport *p )
{
  {
  __parport_pc_frob_control(p, 16, 16);
  return;
}
}
struct parport *parport_pc_probe_port(unsigned long base , unsigned long base_hi ,
                                      int irq___0 , int dma___0 , struct device *dev ,
                                      int irqflags ) ;
void parport_pc_unregister_port(struct parport *p ) ;
static int parport_pc_find_isa_ports(int autoirq , int autodma ) ;
static int parport_pc_find_nonpci_ports(int autoirq , int autodma )
{
  int tmp ;
  {
  tmp = parport_pc_find_isa_ports(autoirq, autodma);
  return (tmp);
}
}
static struct superio_struct superios[3U] = { {0, 0, 0}};
static int user_specified ;
static int verbose_probing ;
static int pci_registered_parport ;
static int pnp_registered_parport ;
static void frob_econtrol(struct parport *pb , unsigned char m , unsigned char v )
{
  unsigned char ectr ;
  {
  ectr = 0U;
  if ((unsigned int )m != 255U) {
    ectr = inb((int )((unsigned int )pb->base_hi + 2U));
  } else {
  }
  outb((int )((unsigned char )(((int )((signed char )(~ ((int )m))) & (int )((signed char )ectr)) ^ (int )((signed char )v))),
       (int )((unsigned int )pb->base_hi + 2U));
  return;
}
}
__inline static void frob_set_mode(struct parport *p , int mode )
{
  {
  frob_econtrol(p, 224, (int )((unsigned char )mode) << 5U);
  return;
}
}
static int change_mode(struct parport *p , int m )
{
  struct parport_pc_private const *priv ;
  unsigned char oecr ;
  int mode ;
  unsigned long expire ;
  int counter ;
  unsigned char tmp ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  struct task_struct *tmp___3 ;
  int tmp___4 ;
  unsigned char tmp___5 ;
  {
  priv = (struct parport_pc_private const *)(p->physport)->private_data;
  if ((int )priv->ecr == 0) {
    printk("\017change_mode: but there\'s no ECR!\n");
    return (0);
  } else {
  }
  oecr = inb((int )((unsigned int )p->base_hi + 2U));
  mode = ((int )oecr >> 5) & 7;
  if (mode == m) {
    return (0);
  } else {
  }
  if (mode > 1 && ((int )priv->ctr & 32) == 0) {
    expire = (unsigned long )((p->physport)->cad)->timeout + (unsigned long )jiffies;
    switch (mode) {
    case 2: ;
    case 3:
    counter = 0;
    goto ldv_32310;
    ldv_32309:
    tmp = inb((int )((unsigned int )p->base_hi + 2U));
    if ((int )tmp & 1) {
      goto ldv_32308;
    } else {
    }
    tmp___0 = get_current();
    tmp___1 = signal_pending(tmp___0);
    if (tmp___1 != 0) {
      goto ldv_32308;
    } else {
    }
    __const_udelay(21475UL);
    counter = counter + 1;
    ldv_32310: ;
    if (counter <= 39) {
      goto ldv_32309;
    } else {
    }
    ldv_32308: ;
    goto ldv_32319;
    ldv_32318: ;
    if ((long )((unsigned long )jiffies - expire) >= 0L) {
      return (-16);
    } else {
    }
    tmp___2 = msecs_to_jiffies(10U);
    schedule_timeout_interruptible((long )tmp___2);
    tmp___3 = get_current();
    tmp___4 = signal_pending(tmp___3);
    if (tmp___4 != 0) {
      goto ldv_32317;
    } else {
    }
    ldv_32319:
    tmp___5 = inb((int )((unsigned int )p->base_hi + 2U));
    if (((int )tmp___5 & 1) == 0) {
      goto ldv_32318;
    } else {
    }
    ldv_32317: ;
    }
  } else {
  }
  if (mode > 1 && m > 1) {
    oecr = (unsigned int )oecr & 31U;
    oecr = (unsigned int )oecr | 32U;
    frob_econtrol(p, 255, (int )oecr);
  } else {
  }
  oecr = (unsigned int )oecr & 31U;
  oecr = (unsigned char )((int )((signed char )(m << 5)) | (int )((signed char )oecr));
  frob_econtrol(p, 255, (int )oecr);
  return (0);
}
}
static int clear_epp_timeout(struct parport *pb )
{
  unsigned char r ;
  unsigned char tmp ;
  {
  tmp = parport_pc_read_status(pb);
  if (((int )tmp & 1) == 0) {
    return (1);
  } else {
  }
  parport_pc_read_status(pb);
  r = parport_pc_read_status(pb);
  outb((int )((unsigned int )r | 1U), (int )((unsigned int )pb->base + 1U));
  outb((int )r & 254, (int )((unsigned int )pb->base + 1U));
  r = parport_pc_read_status(pb);
  return (((int )r & 1) == 0);
}
}
static void parport_pc_init_state(struct pardevice *dev , struct parport_state *s )
{
  {
  s->u.pc.ctr = 12U;
  if ((unsigned long )dev->irq_func != (unsigned long )((void (*)(void * ))0) && (dev->port)->irq != -1) {
    s->u.pc.ctr = s->u.pc.ctr | 16U;
  } else {
  }
  s->u.pc.ecr = 52U;
  return;
}
}
static void parport_pc_save_state(struct parport *p , struct parport_state *s )
{
  struct parport_pc_private const *priv ;
  unsigned char tmp ;
  {
  priv = (struct parport_pc_private const *)(p->physport)->private_data;
  s->u.pc.ctr = (unsigned int )priv->ctr;
  if ((int )priv->ecr != 0) {
    tmp = inb((int )((unsigned int )p->base_hi + 2U));
    s->u.pc.ecr = (unsigned int )tmp;
  } else {
  }
  return;
}
}
static void parport_pc_restore_state(struct parport *p , struct parport_state *s )
{
  struct parport_pc_private *priv ;
  register unsigned char c ;
  {
  priv = (struct parport_pc_private *)(p->physport)->private_data;
  c = (int )((unsigned char )s->u.pc.ctr) & (int )priv->ctr_writable;
  outb((int )c, (int )((unsigned int )p->base + 2U));
  priv->ctr = c;
  if (priv->ecr != 0) {
    frob_econtrol(p, 255, (int )((unsigned char )s->u.pc.ecr));
  } else {
  }
  return;
}
}
static size_t parport_pc_epp_read_data(struct parport *port , void *buf , size_t length ,
                                       int flags )
{
  size_t got ;
  unsigned char status ;
  size_t left ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  {
  got = 0UL;
  if ((flags & 2) != 0) {
    left = length;
    status = inb((int )((unsigned int )port->base + 1U));
    goto ldv_32349;
    ldv_32348: ;
    if ((left > 15UL && ((int )status & 32) != 0) && ((int )status & 8) == 0) {
      if (((long )buf & 3L) == 0L) {
        insl((int )((unsigned int )port->base + 4U), buf, 4UL);
      } else {
        insb((int )((unsigned int )port->base + 4U), buf, 16UL);
      }
      buf = buf + 16UL;
      got = got + 16UL;
      left = left - 16UL;
    } else {
      tmp = inb((int )((unsigned int )port->base + 4U));
      *((char *)buf) = (char )tmp;
      buf = buf + 1;
      got = got + 1UL;
      left = left - 1UL;
    }
    status = inb((int )((unsigned int )port->base + 1U));
    if ((int )status & 1) {
      printk("\017%s: EPP timeout occurred while talking to w91284pic (should not have done)\n",
             port->name);
      clear_epp_timeout(port);
    } else {
    }
    ldv_32349: ;
    if (((int )status & 8) == 0 && got < length) {
      goto ldv_32348;
    } else {
    }
    return (got);
  } else {
  }
  if (flags & 1 && length > 1UL) {
    if ((((unsigned long )buf | length) & 3UL) == 0UL) {
      insl((int )((unsigned int )port->base + 4U), buf, length >> 2);
    } else {
      insb((int )((unsigned int )port->base + 4U), buf, length);
    }
    tmp___0 = inb((int )((unsigned int )port->base + 1U));
    if ((int )tmp___0 & 1) {
      clear_epp_timeout(port);
      return (0xfffffffffffffffbUL);
    } else {
    }
    return (length);
  } else {
  }
  goto ldv_32353;
  ldv_32352:
  tmp___1 = inb((int )((unsigned int )port->base + 4U));
  *((char *)buf) = (char )tmp___1;
  buf = buf + 1;
  tmp___2 = inb((int )((unsigned int )port->base + 1U));
  if ((int )tmp___2 & 1) {
    clear_epp_timeout(port);
    goto ldv_32351;
  } else {
  }
  got = got + 1UL;
  ldv_32353: ;
  if (got < length) {
    goto ldv_32352;
  } else {
  }
  ldv_32351: ;
  return (got);
}
}
static size_t parport_pc_epp_write_data(struct parport *port , void const *buf ,
                                        size_t length , int flags )
{
  size_t written ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  written = 0UL;
  if (flags & 1 && length > 1UL) {
    if ((((unsigned long )buf | length) & 3UL) == 0UL) {
      outsl((int )((unsigned int )port->base + 4U), buf, length >> 2);
    } else {
      outsb((int )((unsigned int )port->base + 4U), buf, length);
    }
    tmp = inb((int )((unsigned int )port->base + 1U));
    if ((int )tmp & 1) {
      clear_epp_timeout(port);
      return (0xfffffffffffffffbUL);
    } else {
    }
    return (length);
  } else {
  }
  goto ldv_32363;
  ldv_32362:
  outb((int )((unsigned char )*((char *)buf)), (int )((unsigned int )port->base + 4U));
  buf = buf + 1;
  tmp___0 = inb((int )((unsigned int )port->base + 1U));
  if ((int )tmp___0 & 1) {
    clear_epp_timeout(port);
    goto ldv_32361;
  } else {
  }
  written = written + 1UL;
  ldv_32363: ;
  if (written < length) {
    goto ldv_32362;
  } else {
  }
  ldv_32361: ;
  return (written);
}
}
static size_t parport_pc_epp_read_addr(struct parport *port , void *buf , size_t length ,
                                       int flags )
{
  size_t got ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  got = 0UL;
  if (flags & 1 && length > 1UL) {
    insb((int )((unsigned int )port->base + 3U), buf, length);
    tmp = inb((int )((unsigned int )port->base + 1U));
    if ((int )tmp & 1) {
      clear_epp_timeout(port);
      return (0xfffffffffffffffbUL);
    } else {
    }
    return (length);
  } else {
  }
  goto ldv_32373;
  ldv_32372:
  tmp___0 = inb((int )((unsigned int )port->base + 3U));
  *((char *)buf) = (char )tmp___0;
  buf = buf + 1;
  tmp___1 = inb((int )((unsigned int )port->base + 1U));
  if ((int )tmp___1 & 1) {
    clear_epp_timeout(port);
    goto ldv_32371;
  } else {
  }
  got = got + 1UL;
  ldv_32373: ;
  if (got < length) {
    goto ldv_32372;
  } else {
  }
  ldv_32371: ;
  return (got);
}
}
static size_t parport_pc_epp_write_addr(struct parport *port , void const *buf ,
                                        size_t length , int flags )
{
  size_t written ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  written = 0UL;
  if (flags & 1 && length > 1UL) {
    outsb((int )((unsigned int )port->base + 3U), buf, length);
    tmp = inb((int )((unsigned int )port->base + 1U));
    if ((int )tmp & 1) {
      clear_epp_timeout(port);
      return (0xfffffffffffffffbUL);
    } else {
    }
    return (length);
  } else {
  }
  goto ldv_32383;
  ldv_32382:
  outb((int )((unsigned char )*((char *)buf)), (int )((unsigned int )port->base + 3U));
  buf = buf + 1;
  tmp___0 = inb((int )((unsigned int )port->base + 1U));
  if ((int )tmp___0 & 1) {
    clear_epp_timeout(port);
    goto ldv_32381;
  } else {
  }
  written = written + 1UL;
  ldv_32383: ;
  if (written < length) {
    goto ldv_32382;
  } else {
  }
  ldv_32381: ;
  return (written);
}
}
static size_t parport_pc_ecpepp_read_data(struct parport *port , void *buf , size_t length ,
                                          int flags )
{
  size_t got ;
  {
  frob_set_mode(port, 4);
  parport_pc_data_reverse(port);
  parport_pc_write_control(port, 4);
  got = parport_pc_epp_read_data(port, buf, length, flags);
  frob_set_mode(port, 1);
  return (got);
}
}
static size_t parport_pc_ecpepp_write_data(struct parport *port , void const *buf ,
                                           size_t length , int flags )
{
  size_t written ;
  {
  frob_set_mode(port, 4);
  parport_pc_write_control(port, 4);
  parport_pc_data_forward(port);
  written = parport_pc_epp_write_data(port, buf, length, flags);
  frob_set_mode(port, 1);
  return (written);
}
}
static size_t parport_pc_ecpepp_read_addr(struct parport *port , void *buf , size_t length ,
                                          int flags )
{
  size_t got ;
  {
  frob_set_mode(port, 4);
  parport_pc_data_reverse(port);
  parport_pc_write_control(port, 4);
  got = parport_pc_epp_read_addr(port, buf, length, flags);
  frob_set_mode(port, 1);
  return (got);
}
}
static size_t parport_pc_ecpepp_write_addr(struct parport *port , void const *buf ,
                                           size_t length , int flags )
{
  size_t written ;
  {
  frob_set_mode(port, 4);
  parport_pc_write_control(port, 4);
  parport_pc_data_forward(port);
  written = parport_pc_epp_write_addr(port, buf, length, flags);
  frob_set_mode(port, 1);
  return (written);
}
}
static size_t parport_pc_fifo_write_block_pio(struct parport *port , void const *buf ,
                                              size_t length )
{
  int ret ;
  unsigned char const *bufp ;
  size_t left ;
  unsigned long expire ;
  int fifo ;
  int poll_for ;
  struct parport_pc_private const *priv ;
  int fifo_depth ;
  unsigned char byte ;
  unsigned char ecrval ;
  unsigned char tmp ;
  int i ;
  bool tmp___0 ;
  bool tmp___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  int n ;
  int tmp___4 ;
  unsigned char const *tmp___5 ;
  {
  ret = 0;
  bufp = (unsigned char const *)buf;
  left = length;
  expire = (unsigned long )((port->physport)->cad)->timeout + (unsigned long )jiffies;
  fifo = (int const )port->base_hi;
  poll_for = 8;
  priv = (struct parport_pc_private const *)(port->physport)->private_data;
  fifo_depth = priv->fifo_depth;
  port = port->physport;
  parport_pc_disable_irq(port);
  frob_econtrol(port, 20, 20);
  parport_pc_data_forward(port);
  goto ldv_32448;
  ldv_32451:
  tmp = inb((int )((unsigned int )port->base_hi + 2U));
  ecrval = tmp;
  i = 0;
  tmp___0 = need_resched();
  if ((int )tmp___0 && (long )((unsigned long )jiffies - expire) < 0L) {
    schedule();
  } else {
  }
  if ((unsigned long )port->waithead != (unsigned long )((struct pardevice *)0)) {
    printk("\017Somebody wants the port\n");
    goto ldv_32434;
  } else {
  }
  if (((int )ecrval & 2) != 0) {
    frob_econtrol(port, 255, (int )ecrval & 251);
    false_alarm:
    ret = parport_wait_event(port, 250L);
    if (ret < 0) {
      goto ldv_32434;
    } else {
    }
    ret = 0;
    if ((long )((unsigned long )jiffies - expire) >= 0L) {
      printk("\017FIFO write timed out\n");
      goto ldv_32434;
    } else {
    }
    ecrval = inb((int )((unsigned int )port->base_hi + 2U));
    if (((int )ecrval & 4) == 0) {
      tmp___1 = need_resched();
      if ((int )tmp___1 && (long )((unsigned long )jiffies - expire) < 0L) {
        schedule();
      } else {
      }
      goto false_alarm;
    } else {
    }
    goto ldv_32448;
  } else {
  }
  expire = (unsigned long )(port->cad)->timeout + (unsigned long )jiffies;
  poll:
  tmp___2 = get_current();
  tmp___3 = signal_pending(tmp___2);
  if (tmp___3 != 0) {
    goto ldv_32434;
  } else {
  }
  if ((int )ecrval & 1) {
    n = (int const )((size_t const )left < (size_t const )fifo_depth ? (size_t const )left : (size_t const )fifo_depth);
    outsb(fifo, (void const *)bufp, (unsigned long )n);
    bufp = bufp + (unsigned long )n;
    left = left - (size_t )n;
    if (poll_for + -2 > i) {
      poll_for = poll_for - 1;
    } else {
    }
    goto ldv_32448;
  } else {
    tmp___4 = i;
    i = i + 1;
    if (tmp___4 < poll_for) {
      __const_udelay(42950UL);
      ecrval = inb((int )((unsigned int )port->base_hi + 2U));
      goto poll;
    } else {
    }
  }
  tmp___5 = bufp;
  bufp = bufp + 1;
  byte = *tmp___5;
  outb((int )byte, fifo);
  left = left - 1UL;
  ldv_32448: ;
  if (left != 0UL) {
    goto ldv_32451;
  } else {
  }
  ldv_32434: ;
  return (length - left);
}
}
static size_t parport_pc_fifo_write_block_dma(struct parport *port , void const *buf ,
                                              size_t length )
{
  int ret ;
  unsigned long dmaflag ;
  size_t left ;
  struct parport_pc_private const *priv ;
  struct device *dev ;
  dma_addr_t dma_addr ;
  dma_addr_t dma_handle ;
  size_t maxlen ;
  unsigned long start ;
  unsigned long end ;
  unsigned long expire ;
  size_t count ;
  size_t __len ;
  void *__ret ;
  unsigned char tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ret = 0;
  left = length;
  priv = (struct parport_pc_private const *)(port->physport)->private_data;
  dev = (port->physport)->dev;
  maxlen = 65536UL;
  start = (unsigned long )buf;
  end = ((unsigned long )buf + length) - 1UL;
  if (end <= 0xffff880000ffffffUL) {
    if (((start ^ end) & 0xffffffffffff0000UL) != 0UL) {
      maxlen = 65536UL - (start & 65535UL);
    } else {
    }
    dma_handle = dma_map_single_attrs(dev, (void *)buf, length, 1, (struct dma_attrs *)0);
    dma_addr = dma_handle;
  } else {
    maxlen = 4096UL;
    dma_addr = priv->dma_handle;
    dma_handle = 0ULL;
  }
  port = port->physport;
  parport_pc_disable_irq(port);
  frob_econtrol(port, 20, 20);
  parport_pc_data_forward(port);
  goto ldv_32483;
  ldv_32482:
  expire = (unsigned long )((port->physport)->cad)->timeout + (unsigned long )jiffies;
  count = left;
  if (count > maxlen) {
    count = maxlen;
  } else {
  }
  if (dma_handle == 0ULL) {
    __len = count;
    __ret = memcpy((void *)priv->dma_buf, buf, __len);
  } else {
  }
  dmaflag = claim_dma_lock();
  disable_dma((unsigned int )port->dma);
  clear_dma_ff((unsigned int )port->dma);
  set_dma_mode((unsigned int )port->dma, 72);
  set_dma_addr((unsigned int )port->dma, (unsigned int )dma_addr);
  set_dma_count((unsigned int )port->dma, (unsigned int )count);
  frob_econtrol(port, 8, 8);
  frob_econtrol(port, 4, 0);
  enable_dma((unsigned int )port->dma);
  release_dma_lock(dmaflag);
  left = left - count;
  buf = buf + count;
  if (dma_handle != 0ULL) {
    dma_addr = dma_addr + (unsigned long long )count;
  } else {
  }
  false_alarm:
  ret = parport_wait_event(port, 250L);
  if (ret < 0) {
    goto ldv_32473;
  } else {
  }
  ret = 0;
  if ((long )((unsigned long )jiffies - expire) >= 0L) {
    printk("\017DMA write timed out\n");
    goto ldv_32473;
  } else {
  }
  tmp = inb((int )((unsigned int )port->base_hi + 2U));
  if (((int )tmp & 4) == 0) {
    __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/7730/dscv_tempdir/dscv/ri/43_2a/drivers/parport/parport_pc.o.c.prepared",
                  706, 0);
    _cond_resched();
    goto false_alarm;
  } else {
  }
  dmaflag = claim_dma_lock();
  disable_dma((unsigned int )port->dma);
  clear_dma_ff((unsigned int )port->dma);
  tmp___0 = get_dma_residue((unsigned int )port->dma);
  count = (size_t )tmp___0;
  release_dma_lock(dmaflag);
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/7730/dscv_tempdir/dscv/ri/43_2a/drivers/parport/parport_pc.o.c.prepared",
                717, 0);
  _cond_resched();
  if ((unsigned long )port->waithead != (unsigned long )((struct pardevice *)0)) {
    printk("\017Somebody wants the port\n");
    goto ldv_32473;
  } else {
  }
  buf = buf + - count;
  left = left + count;
  if (dma_handle != 0ULL) {
    dma_addr = dma_addr - (unsigned long long )count;
  } else {
  }
  ldv_32483: ;
  if (left != 0UL) {
    goto ldv_32482;
  } else {
  }
  ldv_32473:
  dmaflag = claim_dma_lock();
  disable_dma((unsigned int )port->dma);
  clear_dma_ff((unsigned int )port->dma);
  tmp___1 = get_dma_residue((unsigned int )port->dma);
  left = (size_t )tmp___1 + left;
  release_dma_lock(dmaflag);
  frob_econtrol(port, 8, 0);
  if (dma_handle != 0ULL) {
    dma_unmap_single_attrs(dev, dma_handle, length, 1, (struct dma_attrs *)0);
  } else {
  }
  return (length - left);
}
}
__inline static size_t parport_pc_fifo_write_block(struct parport *port , void const *buf ,
                                                   size_t length )
{
  size_t tmp ;
  size_t tmp___0 ;
  {
  if (port->dma != -1) {
    tmp = parport_pc_fifo_write_block_dma(port, buf, length);
    return (tmp);
  } else {
  }
  tmp___0 = parport_pc_fifo_write_block_pio(port, buf, length);
  return (tmp___0);
}
}
static size_t parport_pc_compat_write_block_pio(struct parport *port , void const *buf ,
                                                size_t length , int flags )
{
  size_t written ;
  int r ;
  unsigned long expire ;
  struct parport_pc_private const *priv ;
  size_t tmp ;
  unsigned char tmp___0 ;
  {
  priv = (struct parport_pc_private const *)(port->physport)->private_data;
  if ((long )((port->physport)->cad)->timeout <= 1L) {
    tmp = parport_ieee1284_write_compat(port, buf, length, flags);
    return (tmp);
  } else {
  }
  parport_pc_data_forward(port);
  parport_pc_frob_control(port, 1, 0);
  r = change_mode(port, 2);
  if (r != 0) {
    printk("\017%s: Warning change_mode ECR_PPF failed\n", port->name);
  } else {
  }
  (port->physport)->ieee1284.phase = 0;
  written = parport_pc_fifo_write_block(port, buf, length);
  expire = (unsigned long )((int )priv->fifo_depth * 1000) + (unsigned long )jiffies;
  ldv_32506:
  r = change_mode(port, 1);
  if (r != -16) {
    goto ldv_32499;
  } else {
  }
  if ((long )((unsigned long )jiffies - expire) < 0L) {
    goto ldv_32506;
  } else {
  }
  ldv_32499: ;
  if (r == -16) {
    printk("\017%s: FIFO is stuck\n", port->name);
    frob_set_mode(port, 6);
    written = written - (size_t )priv->fifo_depth;
    ldv_32508:
    tmp___0 = inb((int )((unsigned int )port->base_hi + 2U));
    if (((int )tmp___0 & 2) != 0) {
      goto ldv_32507;
    } else {
    }
    outb(0, (int )port->base_hi);
    written = written + 1UL;
    goto ldv_32508;
    ldv_32507:
    frob_set_mode(port, 1);
  } else {
  }
  r = parport_wait_peripheral(port, 128, 128);
  if (r != 0) {
    printk("\017%s: BUSY timeout (%d) in compat_write_block_pio\n", port->name, r);
  } else {
  }
  (port->physport)->ieee1284.phase = 1;
  return (written);
}
}
static size_t parport_pc_ecp_write_block_pio(struct parport *port , void const *buf ,
                                             size_t length , int flags )
{
  size_t written ;
  int r ;
  unsigned long expire ;
  struct parport_pc_private const *priv ;
  size_t tmp ;
  unsigned char tmp___0 ;
  {
  priv = (struct parport_pc_private const *)(port->physport)->private_data;
  if ((long )((port->physport)->cad)->timeout <= 1L) {
    tmp = parport_ieee1284_ecp_write_data(port, buf, length, flags);
    return (tmp);
  } else {
  }
  if ((unsigned int )(port->physport)->ieee1284.phase != 1U) {
    (*((port->ops)->frob_control))(port, 6, 6);
    r = parport_wait_peripheral(port, 32, 32);
    if (r != 0) {
      printk("\017%s: PError timeout (%d) in ecp_write_block_pio\n", port->name, r);
    } else {
    }
  } else {
  }
  parport_pc_data_forward(port);
  parport_pc_frob_control(port, 3, 0);
  r = change_mode(port, 3);
  if (r != 0) {
    printk("\017%s: Warning change_mode ECR_ECP failed\n", port->name);
  } else {
  }
  (port->physport)->ieee1284.phase = 0;
  written = parport_pc_fifo_write_block(port, buf, length);
  expire = (unsigned long )((int )priv->fifo_depth * 1000) + (unsigned long )jiffies;
  ldv_32526:
  r = change_mode(port, 1);
  if (r != -16) {
    goto ldv_32519;
  } else {
  }
  if ((long )((unsigned long )jiffies - expire) < 0L) {
    goto ldv_32526;
  } else {
  }
  ldv_32519: ;
  if (r == -16) {
    printk("\017%s: FIFO is stuck\n", port->name);
    frob_set_mode(port, 6);
    written = written - (size_t )priv->fifo_depth;
    ldv_32528:
    tmp___0 = inb((int )((unsigned int )port->base_hi + 2U));
    if (((int )tmp___0 & 2) != 0) {
      goto ldv_32527;
    } else {
    }
    outb(0, (int )port->base_hi);
    written = written + 1UL;
    goto ldv_32528;
    ldv_32527:
    frob_set_mode(port, 1);
    parport_pc_data_reverse(port);
    __const_udelay(21475UL);
    (*((port->ops)->frob_control))(port, 4, 0);
    r = parport_wait_peripheral(port, 32, 0);
    if (r != 0) {
      printk("\017%s: PE,1 timeout (%d) in ecp_write_block_pio\n", port->name, r);
    } else {
    }
    (*((port->ops)->frob_control))(port, 4, 4);
    r = parport_wait_peripheral(port, 32, 32);
    if (r != 0) {
      printk("\017%s: PE,2 timeout (%d) in ecp_write_block_pio\n", port->name, r);
    } else {
    }
  } else {
  }
  r = parport_wait_peripheral(port, 128, 128);
  if (r != 0) {
    printk("\017%s: BUSY timeout (%d) in ecp_write_block_pio\n", port->name, r);
  } else {
  }
  (port->physport)->ieee1284.phase = 1;
  return (written);
}
}
static struct parport_operations const parport_pc_ops =
     {& parport_pc_write_data, & parport_pc_read_data, & parport_pc_write_control, & parport_pc_read_control,
    & parport_pc_frob_control, & parport_pc_read_status, & parport_pc_enable_irq,
    & parport_pc_disable_irq, & parport_pc_data_forward, & parport_pc_data_reverse,
    & parport_pc_init_state, & parport_pc_save_state, & parport_pc_restore_state,
    & parport_ieee1284_epp_write_data, & parport_ieee1284_epp_read_data, & parport_ieee1284_epp_write_addr,
    & parport_ieee1284_epp_read_addr, & parport_ieee1284_ecp_write_data, & parport_ieee1284_ecp_read_data,
    & parport_ieee1284_ecp_write_addr, & parport_ieee1284_write_compat, & parport_ieee1284_read_nibble,
    & parport_ieee1284_read_byte, & __this_module};
static struct superio_struct *find_free_superio(void)
{
  int i ;
  {
  i = 0;
  goto ldv_32535;
  ldv_32534: ;
  if (superios[i].io == 0) {
    return ((struct superio_struct *)(& superios) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_32535: ;
  if (i <= 2) {
    goto ldv_32534;
  } else {
  }
  return ((struct superio_struct *)0);
}
}
static void show_parconfig_smsc37c669(int io___0 , int key )
{
  int cr1 ;
  int cr4 ;
  int cra ;
  int cr23 ;
  int cr26 ;
  int cr27 ;
  struct superio_struct *s ;
  char const *modes[4U] ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  int d ;
  {
  modes[0] = "SPP and Bidirectional (PS/2)";
  modes[1] = "EPP and SPP";
  modes[2] = "ECP";
  modes[3] = "ECP and EPP";
  outb((int )((unsigned char )key), io___0);
  outb((int )((unsigned char )key), io___0);
  outb(1, io___0);
  tmp = inb(io___0 + 1);
  cr1 = (int )tmp;
  outb(4, io___0);
  tmp___0 = inb(io___0 + 1);
  cr4 = (int )tmp___0;
  outb(10, io___0);
  tmp___1 = inb(io___0 + 1);
  cra = (int )tmp___1;
  outb(35, io___0);
  tmp___2 = inb(io___0 + 1);
  cr23 = (int )tmp___2;
  outb(38, io___0);
  tmp___3 = inb(io___0 + 1);
  cr26 = (int )tmp___3;
  outb(39, io___0);
  tmp___4 = inb(io___0 + 1);
  cr27 = (int )tmp___4;
  outb(170, io___0);
  if (verbose_probing != 0) {
    printk("\016SMSC 37c669 LPT Config: cr_1=0x%02x, 4=0x%02x, A=0x%2x, 23=0x%02x, 26=0x%02x, 27=0x%02x\n",
           cr1, cr4, cra, cr23, cr26, cr27);
    printk("\016SMSC LPT Config: io=0x%04x, irq=%c, dma=%c, fifo threshold=%d\n",
           cr23 * 4, (cr27 & 15) != 0 ? (cr27 & 15) + 64 : 45, (cr26 & 15) != 0 ? (cr26 & 15) + 64 : 45,
           cra & 15);
    printk("\016SMSC LPT Config: enabled=%s power=%s\n", cr23 * 4 > 255 ? (char *)"yes" : (char *)"no",
           (cr1 & 4) != 0 ? (char *)"yes" : (char *)"no");
    printk("\016SMSC LPT Config: Port mode=%s, EPP version =%s\n", (cr1 & 8) == 0 ? modes[cr4 & 3] : (char const * )"Standard mode only (SPP)",
           (cr4 & 64) != 0 ? (char *)"1.7" : (char *)"1.9");
  } else {
  }
  if (cr23 * 4 > 255) {
    s = find_free_superio();
    if ((unsigned long )s == (unsigned long )((struct superio_struct *)0)) {
      printk("\016Super-IO: too many chips!\n");
    } else {
      switch (cr23 * 4) {
      case 956:
      s->io = 956;
      s->irq = 7;
      goto ldv_32551;
      case 888:
      s->io = 888;
      s->irq = 7;
      goto ldv_32551;
      case 632:
      s->io = 632;
      s->irq = 5;
      }
      ldv_32551:
      d = cr26 & 15;
      if (d == 1 || d == 3) {
        s->dma = d;
      } else {
        s->dma = -1;
      }
    }
  } else {
  }
  return;
}
}
static void show_parconfig_winbond(int io___0 , int key )
{
  int cr30 ;
  int cr60 ;
  int cr61 ;
  int cr70 ;
  int cr74 ;
  int crf0 ;
  struct superio_struct *s ;
  char const *modes[8U] ;
  char *irqtypes[2U] ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  {
  modes[0] = "Standard (SPP) and Bidirectional(PS/2)";
  modes[1] = "EPP-1.9 and SPP";
  modes[2] = "ECP";
  modes[3] = "ECP and EPP-1.9";
  modes[4] = "Standard (SPP)";
  modes[5] = "EPP-1.7 and SPP";
  modes[6] = "undefined!";
  modes[7] = "ECP and EPP-1.7";
  irqtypes[0] = (char *)"pulsed low, high-Z";
  irqtypes[1] = (char *)"follows nACK";
  outb((int )((unsigned char )key), io___0);
  outb((int )((unsigned char )key), io___0);
  outb(7, io___0);
  outb(1, io___0 + 1);
  outb(48, io___0);
  tmp = inb(io___0 + 1);
  cr30 = (int )tmp;
  outb(96, io___0);
  tmp___0 = inb(io___0 + 1);
  cr60 = (int )tmp___0;
  outb(97, io___0);
  tmp___1 = inb(io___0 + 1);
  cr61 = (int )tmp___1;
  outb(112, io___0);
  tmp___2 = inb(io___0 + 1);
  cr70 = (int )tmp___2;
  outb(116, io___0);
  tmp___3 = inb(io___0 + 1);
  cr74 = (int )tmp___3;
  outb(240, io___0);
  tmp___4 = inb(io___0 + 1);
  crf0 = (int )tmp___4;
  outb(170, io___0);
  if (verbose_probing != 0) {
    printk("\016Winbond LPT Config: cr_30=%02x 60,61=%02x%02x 70=%02x 74=%02x, f0=%02x\n",
           cr30, cr60, cr61, cr70, cr74, crf0);
    printk("\016Winbond LPT Config: active=%s, io=0x%02x%02x irq=%d, ", cr30 & 1 ? (char *)"yes" : (char *)"no",
           cr60, cr61, cr70 & 15);
    if ((cr74 & 7) > 3) {
      printk("dma=none\n");
    } else {
      printk("dma=%d\n", cr74 & 7);
    }
    printk("\016Winbond LPT Config: irqtype=%s, ECP fifo threshold=%d\n", irqtypes[crf0 >> 7],
           (crf0 >> 3) & 15);
    printk("\016Winbond LPT Config: Port mode=%s\n", modes[crf0 & 7]);
  } else {
  }
  if (cr30 & 1) {
    s = find_free_superio();
    if ((unsigned long )s == (unsigned long )((struct superio_struct *)0)) {
      printk("\016Super-IO: too many chips!\n");
    } else {
      s->io = (cr60 << 8) | cr61;
      s->irq = cr70 & 15;
      s->dma = (cr74 & 7) <= 3 ? cr74 & 7 : -1;
    }
  } else {
  }
  return;
}
}
static void decode_winbond(int efer , int key , int devid , int devrev , int oldid )
{
  char const *type ;
  int id ;
  int progif ;
  {
  type = "unknown";
  progif = 2;
  if (devid == devrev) {
    return;
  } else {
  }
  id = (devid << 8) | devrev;
  if (id == 38769) {
    type = "83977F/AF";
  } else
  if (id == 38771) {
    type = "83977TF / SMSC 97w33x/97w34x";
  } else
  if (id == 38772) {
    type = "83977ATF";
  } else
  if ((id & -16) == 21104) {
    type = "83977CTF / SMSC 97w36x";
  } else
  if ((id & -16) == 21232) {
    type = "83977EF / SMSC 97w35x";
  } else
  if ((id & -16) == 21008) {
    type = "83627";
  } else
  if ((id & -16) == 24592) {
    type = "83697HF";
  } else
  if ((oldid & 15) == 10) {
    type = "83877F";
    progif = 1;
  } else
  if ((oldid & 15) == 11) {
    type = "83877AF";
    progif = 1;
  } else
  if ((oldid & 15) == 12) {
    type = "83877TF";
    progif = 1;
  } else
  if ((oldid & 15) == 13) {
    type = "83877ATF";
    progif = 1;
  } else {
    progif = 0;
  }
  if (verbose_probing != 0) {
    printk("\016Winbond chip at EFER=0x%x key=0x%02x devid=%02x devrev=%02x oldid=%02x type=%s\n",
           efer, key, devid, devrev, oldid, type);
  } else {
  }
  if (progif == 2) {
    show_parconfig_winbond(efer, key);
  } else {
  }
  return;
}
}
static void decode_smsc(int efer , int key , int devid , int devrev )
{
  char const *type ;
  void (*func)(int , int ) ;
  int id ;
  {
  type = "unknown";
  if (devid == devrev) {
    return;
  } else {
  }
  func = (void (*)(int , int ))0;
  id = (devid << 8) | devrev;
  if (id == 770) {
    type = "37c669";
    func = & show_parconfig_smsc37c669;
  } else
  if (id == 25986) {
    type = "37c665IR";
  } else
  if (devid == 101) {
    type = "37c665GT";
  } else
  if (devid == 102) {
    type = "37c666GT";
  } else {
  }
  if (verbose_probing != 0) {
    printk("\016SMSC chip at EFER=0x%x key=0x%02x devid=%02x devrev=%02x type=%s\n",
           efer, key, devid, devrev, type);
  } else {
  }
  if ((unsigned long )func != (unsigned long )((void (*)(int , int ))0)) {
    (*func)(efer, key);
  } else {
  }
  return;
}
}
static void winbond_check(int io___0 , int key )
{
  int origval ;
  int devid ;
  int devrev ;
  int oldid ;
  int x_devid ;
  int x_devrev ;
  int x_oldid ;
  struct resource *tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  {
  tmp = __request_region(& ioport_resource, (resource_size_t )io___0, 3ULL, "winbond_check",
                         0);
  if ((unsigned long )tmp == (unsigned long )((struct resource *)0)) {
    return;
  } else {
  }
  tmp___0 = inb(io___0);
  origval = (int )tmp___0;
  outb(32, io___0);
  tmp___1 = inb(io___0 + 1);
  x_devid = (int )tmp___1;
  outb(33, io___0);
  tmp___2 = inb(io___0 + 1);
  x_devrev = (int )tmp___2;
  outb(9, io___0);
  tmp___3 = inb(io___0 + 1);
  x_oldid = (int )tmp___3;
  outb((int )((unsigned char )key), io___0);
  outb((int )((unsigned char )key), io___0);
  outb(32, io___0);
  tmp___4 = inb(io___0 + 1);
  devid = (int )tmp___4;
  outb(33, io___0);
  tmp___5 = inb(io___0 + 1);
  devrev = (int )tmp___5;
  outb(9, io___0);
  tmp___6 = inb(io___0 + 1);
  oldid = (int )tmp___6;
  outb(170, io___0);
  outb((int )((unsigned char )origval), io___0);
  if ((x_devid == devid && x_devrev == devrev) && x_oldid == oldid) {
    goto out;
  } else {
  }
  decode_winbond(io___0, key, devid, devrev, oldid);
  out:
  __release_region(& ioport_resource, (resource_size_t )io___0, 3ULL);
  return;
}
}
static void winbond_check2(int io___0 , int key )
{
  int origval[3U] ;
  int devid ;
  int devrev ;
  int oldid ;
  int x_devid ;
  int x_devrev ;
  int x_oldid ;
  struct resource *tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  {
  tmp = __request_region(& ioport_resource, (resource_size_t )io___0, 3ULL, "winbond_check2",
                         0);
  if ((unsigned long )tmp == (unsigned long )((struct resource *)0)) {
    return;
  } else {
  }
  tmp___0 = inb(io___0);
  origval[0] = (int )tmp___0;
  tmp___1 = inb(io___0 + 1);
  origval[1] = (int )tmp___1;
  tmp___2 = inb(io___0 + 2);
  origval[2] = (int )tmp___2;
  outb(32, io___0 + 2);
  tmp___3 = inb(io___0 + 2);
  x_devid = (int )tmp___3;
  outb(33, io___0 + 1);
  tmp___4 = inb(io___0 + 2);
  x_devrev = (int )tmp___4;
  outb(9, io___0 + 1);
  tmp___5 = inb(io___0 + 2);
  x_oldid = (int )tmp___5;
  outb((int )((unsigned char )key), io___0);
  outb(32, io___0 + 2);
  tmp___6 = inb(io___0 + 2);
  devid = (int )tmp___6;
  outb(33, io___0 + 1);
  tmp___7 = inb(io___0 + 2);
  devrev = (int )tmp___7;
  outb(9, io___0 + 1);
  tmp___8 = inb(io___0 + 2);
  oldid = (int )tmp___8;
  outb(170, io___0);
  outb((int )((unsigned char )origval[0]), io___0);
  outb((int )((unsigned char )origval[1]), io___0 + 1);
  outb((int )((unsigned char )origval[2]), io___0 + 2);
  if ((x_devid == devid && x_devrev == devrev) && x_oldid == oldid) {
    goto out;
  } else {
  }
  decode_winbond(io___0, key, devid, devrev, oldid);
  out:
  __release_region(& ioport_resource, (resource_size_t )io___0, 3ULL);
  return;
}
}
static void smsc_check(int io___0 , int key )
{
  int origval ;
  int id ;
  int rev ;
  int oldid ;
  int oldrev ;
  int x_id ;
  int x_rev ;
  int x_oldid ;
  int x_oldrev ;
  struct resource *tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  unsigned char tmp___7 ;
  unsigned char tmp___8 ;
  {
  tmp = __request_region(& ioport_resource, (resource_size_t )io___0, 3ULL, "smsc_check",
                         0);
  if ((unsigned long )tmp == (unsigned long )((struct resource *)0)) {
    return;
  } else {
  }
  tmp___0 = inb(io___0);
  origval = (int )tmp___0;
  outb(13, io___0);
  tmp___1 = inb(io___0 + 1);
  x_oldid = (int )tmp___1;
  outb(14, io___0);
  tmp___2 = inb(io___0 + 1);
  x_oldrev = (int )tmp___2;
  outb(32, io___0);
  tmp___3 = inb(io___0 + 1);
  x_id = (int )tmp___3;
  outb(33, io___0);
  tmp___4 = inb(io___0 + 1);
  x_rev = (int )tmp___4;
  outb((int )((unsigned char )key), io___0);
  outb((int )((unsigned char )key), io___0);
  outb(13, io___0);
  tmp___5 = inb(io___0 + 1);
  oldid = (int )tmp___5;
  outb(14, io___0);
  tmp___6 = inb(io___0 + 1);
  oldrev = (int )tmp___6;
  outb(32, io___0);
  tmp___7 = inb(io___0 + 1);
  id = (int )tmp___7;
  outb(33, io___0);
  tmp___8 = inb(io___0 + 1);
  rev = (int )tmp___8;
  outb(170, io___0);
  outb((int )((unsigned char )origval), io___0);
  if (((x_id == id && x_oldrev == oldrev) && x_oldid == oldid) && x_rev == rev) {
    goto out;
  } else {
  }
  decode_smsc(io___0, key, oldid, oldrev);
  out:
  __release_region(& ioport_resource, (resource_size_t )io___0, 3ULL);
  return;
}
}
static void detect_and_report_winbond(void)
{
  {
  if (verbose_probing != 0) {
    printk("\017Winbond Super-IO detection, now testing ports 3F0,370,250,4E,2E ...\n");
  } else {
  }
  winbond_check(1008, 135);
  winbond_check(880, 135);
  winbond_check(46, 135);
  winbond_check(78, 135);
  winbond_check(1008, 134);
  winbond_check2(592, 136);
  winbond_check2(592, 137);
  return;
}
}
static void detect_and_report_smsc(void)
{
  {
  if (verbose_probing != 0) {
    printk("\017SMSC Super-IO detection, now testing Ports 2F0, 370 ...\n");
  } else {
  }
  smsc_check(1008, 85);
  smsc_check(880, 85);
  smsc_check(1008, 68);
  smsc_check(880, 68);
  return;
}
}
static void detect_and_report_it87(void)
{
  u16 dev ;
  u8 origval ;
  u8 r ;
  struct resource *tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  {
  if (verbose_probing != 0) {
    printk("\017IT8705 Super-IO detection, now testing port 2E ...\n");
  } else {
  }
  tmp = __request_region(& ioport_resource, 46ULL, 2ULL, "detect_and_report_it87",
                         4194304);
  if ((unsigned long )tmp == (unsigned long )((struct resource *)0)) {
    return;
  } else {
  }
  origval = inb(46);
  outb(135, 46);
  outb(1, 46);
  outb(85, 46);
  outb(85, 46);
  outb(32, 46);
  tmp___0 = inb(47);
  dev = (int )((u16 )tmp___0) << 8U;
  outb(33, 46);
  tmp___1 = inb(47);
  dev = (int )((u16 )tmp___1) | (int )dev;
  if ((((((unsigned int )dev == 34578U || (unsigned int )dev == 34565U) || (unsigned int )dev == 34581U) || (unsigned int )dev == 34582U) || (unsigned int )dev == 34584U) || (unsigned int )dev == 34598U) {
    printk("\016IT%04X SuperIO detected.\n", (int )dev);
    outb(7, 46);
    outb(3, 47);
    outb(240, 46);
    r = inb(47);
    outb(240, 46);
    outb((int )((unsigned int )r | 8U), 47);
    outb(2, 46);
    outb(2, 47);
  } else {
    outb((int )origval, 46);
  }
  __release_region(& ioport_resource, 46ULL, 2ULL);
  return;
}
}
static struct superio_struct *find_superio(struct parport *p )
{
  int i ;
  {
  i = 0;
  goto ldv_32647;
  ldv_32646: ;
  if ((unsigned long )superios[i].io != p->base) {
    return ((struct superio_struct *)(& superios) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_32647: ;
  if (i <= 2) {
    goto ldv_32646;
  } else {
  }
  return ((struct superio_struct *)0);
}
}
static int get_superio_dma(struct parport *p )
{
  struct superio_struct *s ;
  struct superio_struct *tmp ;
  {
  tmp = find_superio(p);
  s = tmp;
  if ((unsigned long )s != (unsigned long )((struct superio_struct *)0)) {
    return (s->dma);
  } else {
  }
  return (-1);
}
}
static int get_superio_irq(struct parport *p )
{
  struct superio_struct *s ;
  struct superio_struct *tmp ;
  {
  tmp = find_superio(p);
  s = tmp;
  if ((unsigned long )s != (unsigned long )((struct superio_struct *)0)) {
    return (s->irq);
  } else {
  }
  return (-1);
}
}
static int parport_SPP_supported(struct parport *pb )
{
  unsigned char r ;
  unsigned char w ;
  {
  clear_epp_timeout(pb);
  w = 12U;
  outb((int )w, (int )((unsigned int )pb->base + 2U));
  r = inb((int )((unsigned int )pb->base + 2U));
  if (((int )r & 15) == (int )w) {
    w = 14U;
    outb((int )w, (int )((unsigned int )pb->base + 2U));
    r = inb((int )((unsigned int )pb->base + 2U));
    outb(12, (int )((unsigned int )pb->base + 2U));
    if (((int )r & 15) == (int )w) {
      return (1);
    } else {
    }
  } else {
  }
  if (user_specified != 0) {
    printk("\016parport 0x%lx (WARNING): CTR: wrote 0x%02x, read 0x%02x\n", pb->base,
           (int )w, (int )r);
  } else {
  }
  w = 170U;
  parport_pc_write_data(pb, (int )w);
  r = parport_pc_read_data(pb);
  if ((int )r == (int )w) {
    w = 85U;
    parport_pc_write_data(pb, (int )w);
    r = parport_pc_read_data(pb);
    if ((int )r == (int )w) {
      return (1);
    } else {
    }
  } else {
  }
  if (user_specified != 0) {
    printk("\016parport 0x%lx (WARNING): DATA: wrote 0x%02x, read 0x%02x\n", pb->base,
           (int )w, (int )r);
    printk("\016parport 0x%lx: You gave this address, but there is probably no parallel port there!\n",
           pb->base);
  } else {
  }
  if (user_specified != 0) {
    return (1);
  } else {
  }
  return (0);
}
}
static int parport_ECR_present(struct parport *pb )
{
  struct parport_pc_private *priv ;
  unsigned char r ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  {
  priv = (struct parport_pc_private *)pb->private_data;
  r = 12U;
  outb((int )r, (int )((unsigned int )pb->base + 2U));
  tmp___0 = inb((int )((unsigned int )pb->base_hi + 2U));
  if ((((int )tmp___0 ^ (int )r) & 3) == 0) {
    outb((int )((unsigned int )r ^ 2U), (int )((unsigned int )pb->base + 2U));
    r = inb((int )((unsigned int )pb->base + 2U));
    tmp = inb((int )((unsigned int )pb->base_hi + 2U));
    if ((((int )tmp ^ (int )r) & 2) == 0) {
      goto no_reg;
    } else {
    }
  } else {
  }
  tmp___1 = inb((int )((unsigned int )pb->base_hi + 2U));
  if (((int )tmp___1 & 3) != 1) {
    goto no_reg;
  } else {
  }
  frob_econtrol(pb, 255, 52);
  tmp___2 = inb((int )((unsigned int )pb->base_hi + 2U));
  if ((unsigned int )tmp___2 != 53U) {
    goto no_reg;
  } else {
  }
  priv->ecr = 1;
  outb(12, (int )((unsigned int )pb->base + 2U));
  frob_set_mode(pb, 0);
  return (1);
  no_reg:
  outb(12, (int )((unsigned int )pb->base + 2U));
  return (0);
}
}
static int parport_PS2_supported(struct parport *pb )
{
  int ok ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  struct parport_pc_private *priv ;
  {
  ok = 0;
  clear_epp_timeout(pb);
  parport_pc_data_reverse(pb);
  parport_pc_write_data(pb, 85);
  tmp = parport_pc_read_data(pb);
  if ((unsigned int )tmp != 85U) {
    ok = ok + 1;
  } else {
  }
  parport_pc_write_data(pb, 170);
  tmp___0 = parport_pc_read_data(pb);
  if ((unsigned int )tmp___0 != 170U) {
    ok = ok + 1;
  } else {
  }
  parport_pc_data_forward(pb);
  if (ok != 0) {
    pb->modes = pb->modes | 2U;
  } else {
    priv = (struct parport_pc_private *)pb->private_data;
    priv->ctr_writable = (unsigned int )priv->ctr_writable & 223U;
  }
  return (ok);
}
}
static int parport_ECP_supported(struct parport *pb )
{
  int i ;
  int config ;
  int configb ;
  int pword ;
  struct parport_pc_private *priv ;
  int intrline[8U] ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  {
  priv = (struct parport_pc_private *)pb->private_data;
  intrline[0] = 0;
  intrline[1] = 7;
  intrline[2] = 9;
  intrline[3] = 10;
  intrline[4] = 11;
  intrline[5] = 14;
  intrline[6] = 15;
  intrline[7] = 5;
  if (priv->ecr == 0) {
    return (0);
  } else {
  }
  frob_econtrol(pb, 255, 0);
  frob_econtrol(pb, 255, 192);
  i = 0;
  goto ldv_32683;
  ldv_32682:
  outb(170, (int )pb->base_hi);
  i = i + 1;
  ldv_32683: ;
  if (i <= 1023) {
    tmp = inb((int )((unsigned int )pb->base_hi + 2U));
    if (((int )tmp & 2) == 0) {
      goto ldv_32682;
    } else {
      goto ldv_32684;
    }
  } else {
  }
  ldv_32684: ;
  if (i == 1024) {
    frob_econtrol(pb, 255, 0);
    return (0);
  } else {
  }
  priv->fifo_depth = i;
  if (verbose_probing != 0) {
    printk("xx%lx: FIFO is %d bytes\n", pb->base, i);
  } else {
  }
  frob_econtrol(pb, 4, 4);
  frob_econtrol(pb, 4, 0);
  i = 1;
  goto ldv_32687;
  ldv_32686:
  inb((int )pb->base_hi);
  __const_udelay(214750UL);
  tmp___0 = inb((int )((unsigned int )pb->base_hi + 2U));
  if (((int )tmp___0 & 4) != 0) {
    goto ldv_32685;
  } else {
  }
  i = i + 1;
  ldv_32687: ;
  if (priv->fifo_depth >= i) {
    goto ldv_32686;
  } else {
  }
  ldv_32685: ;
  if (priv->fifo_depth >= i) {
    if (verbose_probing != 0) {
      printk("xx%lx: writeIntrThreshold is %d\n", pb->base, i);
    } else {
    }
  } else {
    i = 0;
  }
  priv->writeIntrThreshold = i;
  frob_set_mode(pb, 1);
  parport_pc_data_reverse(pb);
  frob_set_mode(pb, 6);
  frob_econtrol(pb, 4, 4);
  frob_econtrol(pb, 4, 0);
  i = 1;
  goto ldv_32690;
  ldv_32689:
  outb(170, (int )pb->base_hi);
  tmp___1 = inb((int )((unsigned int )pb->base_hi + 2U));
  if (((int )tmp___1 & 4) != 0) {
    goto ldv_32688;
  } else {
  }
  i = i + 1;
  ldv_32690: ;
  if (priv->fifo_depth >= i) {
    goto ldv_32689;
  } else {
  }
  ldv_32688: ;
  if (priv->fifo_depth >= i) {
    if (verbose_probing != 0) {
      printk("px%lx: readIntrThreshold is %d\n", pb->base, i);
    } else {
    }
  } else {
    i = 0;
  }
  priv->readIntrThreshold = i;
  frob_econtrol(pb, 255, 0);
  frob_econtrol(pb, 255, 244);
  tmp___2 = inb((int )pb->base_hi);
  config = (int )tmp___2;
  pword = (config >> 4) & 7;
  switch (pword) {
  case 0:
  pword = 2;
  printk("`x%lx: Unsupported pword size!\n", pb->base);
  goto ldv_32692;
  case 2:
  pword = 4;
  printk("`x%lx: Unsupported pword size!\n", pb->base);
  goto ldv_32692;
  default:
  printk("`x%lx: Unknown implementation ID\n", pb->base);
  case 1:
  pword = 1;
  }
  ldv_32692:
  priv->pword = pword;
  if (verbose_probing != 0) {
    printk("xx%lx: PWord is %d bits\n", pb->base, pword * 8);
    printk("xx%lx: Interrupts are ISA-%s\n", pb->base, (config & 128) != 0 ? (char *)"Level" : (char *)"Pulses");
    tmp___3 = inb((int )((unsigned int )pb->base_hi + 1U));
    configb = (int )tmp___3;
    printk("xx%lx: ECP port cfgA=0x%02x cfgB=0x%02x\n", pb->base, config, configb);
    printk("xx%lx: ECP settings irq=", pb->base);
    if (((configb >> 3) & 7) != 0) {
      printk("%d", intrline[(configb >> 3) & 7]);
    } else {
      printk("<none or set by other means>");
    }
    printk(" dma=");
    if ((configb & 3) == 0) {
      printk("<none or set by other means>\n");
    } else {
      printk("%d\n", configb & 7);
    }
  } else {
  }
  frob_set_mode(pb, 0);
  return (1);
}
}
static int parport_ECPPS2_supported(struct parport *pb )
{
  struct parport_pc_private const *priv ;
  int result ;
  unsigned char oecr ;
  {
  priv = (struct parport_pc_private const *)pb->private_data;
  if ((int )priv->ecr == 0) {
    return (0);
  } else {
  }
  oecr = inb((int )((unsigned int )pb->base_hi + 2U));
  frob_econtrol(pb, 255, 32);
  result = parport_PS2_supported(pb);
  frob_econtrol(pb, 255, (int )oecr);
  return (result);
}
}
static int parport_EPP_supported(struct parport *pb )
{
  struct parport_pc_private const *priv ;
  int tmp ;
  unsigned char i ;
  int tmp___0 ;
  {
  priv = (struct parport_pc_private const *)pb->private_data;
  tmp = clear_epp_timeout(pb);
  if (tmp == 0) {
    return (0);
  } else {
  }
  if ((int )priv->ecr != 0) {
    i = 0U;
    goto ldv_32708;
    ldv_32707:
    frob_econtrol(pb, 255, (int )i);
    tmp___0 = clear_epp_timeout(pb);
    if (tmp___0 != 0) {
      return (0);
    } else {
    }
    i = (unsigned int )i + 32U;
    ldv_32708: ;
    if ((int )((signed char )i) >= 0) {
      goto ldv_32707;
    } else {
    }
  } else {
  }
  pb->modes = pb->modes | 4U;
  (pb->ops)->epp_read_data = & parport_pc_epp_read_data;
  (pb->ops)->epp_write_data = & parport_pc_epp_write_data;
  (pb->ops)->epp_read_addr = & parport_pc_epp_read_addr;
  (pb->ops)->epp_write_addr = & parport_pc_epp_write_addr;
  return (1);
}
}
static int parport_ECPEPP_supported(struct parport *pb )
{
  struct parport_pc_private *priv ;
  int result ;
  unsigned char oecr ;
  {
  priv = (struct parport_pc_private *)pb->private_data;
  if (priv->ecr == 0) {
    return (0);
  } else {
  }
  oecr = inb((int )((unsigned int )pb->base_hi + 2U));
  frob_econtrol(pb, 255, 128);
  outb(4, (int )((unsigned int )pb->base + 2U));
  result = parport_EPP_supported(pb);
  frob_econtrol(pb, 255, (int )oecr);
  if (result != 0) {
    (pb->ops)->epp_read_data = & parport_pc_ecpepp_read_data;
    (pb->ops)->epp_write_data = & parport_pc_ecpepp_write_data;
    (pb->ops)->epp_read_addr = & parport_pc_ecpepp_read_addr;
    (pb->ops)->epp_write_addr = & parport_pc_ecpepp_write_addr;
  } else {
  }
  return (result);
}
}
static int programmable_irq_support(struct parport *pb )
{
  int irq___0 ;
  int intrLine ;
  unsigned char oecr ;
  unsigned char tmp ;
  int lookup[8U] ;
  unsigned char tmp___0 ;
  {
  tmp = inb((int )((unsigned int )pb->base_hi + 2U));
  oecr = tmp;
  lookup[0] = -1;
  lookup[1] = 7;
  lookup[2] = 9;
  lookup[3] = 10;
  lookup[4] = 11;
  lookup[5] = 14;
  lookup[6] = 15;
  lookup[7] = 5;
  frob_econtrol(pb, 255, 224);
  tmp___0 = inb((int )((unsigned int )pb->base_hi + 1U));
  intrLine = ((int )tmp___0 >> 3) & 7;
  irq___0 = lookup[intrLine];
  frob_econtrol(pb, 255, (int )oecr);
  return (irq___0);
}
}
static int irq_probe_ECP(struct parport *pb )
{
  int i ;
  unsigned long irqs ;
  unsigned char tmp ;
  {
  irqs = probe_irq_on();
  frob_econtrol(pb, 255, 0);
  frob_econtrol(pb, 255, 196);
  frob_econtrol(pb, 255, 192);
  i = 0;
  goto ldv_32729;
  ldv_32728:
  outb(170, (int )pb->base_hi);
  i = i + 1;
  ldv_32729: ;
  if (i <= 1023) {
    tmp = inb((int )((unsigned int )pb->base_hi + 2U));
    if (((int )tmp & 2) == 0) {
      goto ldv_32728;
    } else {
      goto ldv_32730;
    }
  } else {
  }
  ldv_32730:
  pb->irq = probe_irq_off(irqs);
  frob_econtrol(pb, 255, 0);
  if (pb->irq <= 0) {
    pb->irq = -1;
  } else {
  }
  return (pb->irq);
}
}
static int irq_probe_EPP(struct parport *pb )
{
  {
  return (-1);
}
}
static int irq_probe_SPP(struct parport *pb )
{
  {
  return (-1);
}
}
static int parport_irq_probe(struct parport *pb )
{
  struct parport_pc_private *priv ;
  {
  priv = (struct parport_pc_private *)pb->private_data;
  if (priv->ecr != 0) {
    pb->irq = programmable_irq_support(pb);
    if (pb->irq == -1) {
      pb->irq = irq_probe_ECP(pb);
    } else {
    }
  } else {
  }
  if ((pb->irq == -1 && priv->ecr != 0) && (pb->modes & 4U) != 0U) {
    pb->irq = irq_probe_EPP(pb);
  } else {
  }
  clear_epp_timeout(pb);
  if (pb->irq == -1 && (pb->modes & 4U) != 0U) {
    pb->irq = irq_probe_EPP(pb);
  } else {
  }
  clear_epp_timeout(pb);
  if (pb->irq == -1) {
    pb->irq = irq_probe_SPP(pb);
  } else {
  }
  if (pb->irq == -1) {
    pb->irq = get_superio_irq(pb);
  } else {
  }
  return (pb->irq);
}
}
static int programmable_dma_support(struct parport *p )
{
  unsigned char oecr ;
  unsigned char tmp ;
  int dma___0 ;
  unsigned char tmp___0 ;
  {
  tmp = inb((int )((unsigned int )p->base_hi + 2U));
  oecr = tmp;
  frob_set_mode(p, 7);
  tmp___0 = inb((int )((unsigned int )p->base_hi + 1U));
  dma___0 = (int )tmp___0 & 7;
  if ((dma___0 & 3) == 0) {
    dma___0 = -1;
  } else {
  }
  frob_econtrol(p, 255, (int )oecr);
  return (dma___0);
}
}
static int parport_dma_probe(struct parport *p )
{
  struct parport_pc_private const *priv ;
  {
  priv = (struct parport_pc_private const *)p->private_data;
  if ((int )priv->ecr != 0) {
    p->dma = programmable_dma_support(p);
  } else {
  }
  if (p->dma == -1) {
    p->dma = get_superio_dma(p);
  } else {
  }
  return (p->dma);
}
}
static struct list_head ports_list = {& ports_list, & ports_list};
static spinlock_t ports_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "ports_lock", 0, 0UL}}}};
struct parport *parport_pc_probe_port(unsigned long base , unsigned long base_hi ,
                                      int irq___0 , int dma___0 , struct device *dev ,
                                      int irqflags )
{
  struct parport_pc_private *priv ;
  struct parport_operations *ops ;
  struct parport *p ;
  int probedirq ;
  struct resource *base_res ;
  struct resource *ECR_res ;
  struct resource *EPP_res ;
  struct platform_device *pdev ;
  int ret ;
  bool tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  size_t __len ;
  void *__ret ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int f ;
  int tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  {
  probedirq = -1;
  ECR_res = (struct resource *)0;
  EPP_res = (struct resource *)0;
  pdev = (struct platform_device *)0;
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    pdev = platform_device_register_simple("parport_pc", (int )base, (struct resource const *)0,
                                           0U);
    tmp = IS_ERR((void const *)pdev);
    if ((int )tmp) {
      return ((struct parport *)0);
    } else {
    }
    dev = & pdev->dev;
    ret = dma_coerce_mask_and_coherent(dev, 16777215ULL);
    if (ret != 0) {
      dev_err((struct device const *)dev, "Unable to set coherent dma mask: disabling DMA\n");
      dma___0 = -1;
    } else {
    }
  } else {
  }
  tmp___0 = kmalloc(192UL, 208U);
  ops = (struct parport_operations *)tmp___0;
  if ((unsigned long )ops == (unsigned long )((struct parport_operations *)0)) {
    goto out1;
  } else {
  }
  tmp___1 = kmalloc(64UL, 208U);
  priv = (struct parport_pc_private *)tmp___1;
  if ((unsigned long )priv == (unsigned long )((struct parport_pc_private *)0)) {
    goto out2;
  } else {
  }
  p = parport_register_port(base, irq___0, dma___0, ops);
  if ((unsigned long )p == (unsigned long )((struct parport *)0)) {
    goto out3;
  } else {
  }
  base_res = __request_region(& ioport_resource, (resource_size_t )base, 3ULL, p->name,
                              0);
  if ((unsigned long )base_res == (unsigned long )((struct resource *)0)) {
    goto out4;
  } else {
  }
  __len = 192UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)ops, (void const *)(& parport_pc_ops), __len);
  } else {
    __ret = memcpy((void *)ops, (void const *)(& parport_pc_ops), __len);
  }
  priv->ctr = 12U;
  priv->ctr_writable = 239U;
  priv->ecr = 0;
  priv->fifo_depth = 0;
  priv->dma_buf = (char *)0;
  priv->dma_handle = 0ULL;
  INIT_LIST_HEAD(& priv->list);
  priv->port = p;
  p->dev = dev;
  p->base_hi = base_hi;
  p->modes = 65U;
  p->private_data = (void *)priv;
  if (base_hi != 0UL) {
    ECR_res = __request_region(& ioport_resource, (resource_size_t )base_hi, 3ULL,
                               p->name, 0);
    if ((unsigned long )ECR_res != (unsigned long )((struct resource *)0)) {
      parport_ECR_present(p);
    } else {
    }
  } else {
  }
  if (base != 956UL) {
    EPP_res = __request_region(& ioport_resource, (resource_size_t )(base + 3UL),
                               5ULL, p->name, 0);
    if ((unsigned long )EPP_res != (unsigned long )((struct resource *)0)) {
      tmp___2 = parport_EPP_supported(p);
      if (tmp___2 == 0) {
        parport_ECPEPP_supported(p);
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___3 = parport_SPP_supported(p);
  if (tmp___3 == 0) {
    goto out5;
  } else {
  }
  if (priv->ecr != 0) {
    parport_ECPPS2_supported(p);
  } else {
    parport_PS2_supported(p);
  }
  p->size = (p->modes & 4U) != 0U ? 8U : 3U;
  printk("\016%s: PC-style at 0x%lx", p->name, p->base);
  if (p->base_hi != 0UL && priv->ecr != 0) {
    printk(" (0x%lx)", p->base_hi);
  } else {
  }
  if (p->irq == -2) {
    p->irq = -1;
    parport_irq_probe(p);
  } else
  if (p->irq == -3) {
    p->irq = -1;
    parport_irq_probe(p);
    probedirq = p->irq;
    p->irq = -1;
  } else {
  }
  if (p->irq != -1) {
    printk(", irq %d", p->irq);
    priv->ctr_writable = (unsigned int )priv->ctr_writable | 16U;
    if (p->dma == -2) {
      p->dma = -1;
      parport_dma_probe(p);
    } else {
    }
  } else {
  }
  if (p->dma == -2) {
    p->dma = -1;
  } else {
  }
  tmp___4 = parport_ECP_supported(p);
  if (((tmp___4 != 0 && p->dma != -3) && priv->fifo_depth > 0) && p->irq != -1) {
    p->modes = p->modes | 24U;
    (p->ops)->compat_write_data = & parport_pc_compat_write_block_pio;
    (p->ops)->ecp_write_data = & parport_pc_ecp_write_block_pio;
    if (p->dma != -1) {
      printk(", dma %d", p->dma);
      p->modes = p->modes | 32U;
    } else {
      printk(", using FIFO");
    }
  } else {
    p->dma = -1;
  }
  printk(" [");
  f = 0;
  if ((int )p->modes & 1) {
    printk("%s%s", f != 0 ? (char *)"," : (char *)"", (char *)"PCSPP");
    f = f + 1;
  } else {
  }
  if ((p->modes & 2U) != 0U) {
    printk("%s%s", f != 0 ? (char *)"," : (char *)"", (char *)"TRISTATE");
    f = f + 1;
  } else {
  }
  if ((p->modes & 16U) != 0U) {
    printk("%s%s", f != 0 ? (char *)"," : (char *)"", (char *)"COMPAT");
    f = f + 1;
  } else {
  }
  if ((p->modes & 4U) != 0U) {
    printk("%s%s", f != 0 ? (char *)"," : (char *)"", (char *)"EPP");
    f = f + 1;
  } else {
  }
  if ((p->modes & 8U) != 0U) {
    printk("%s%s", f != 0 ? (char *)"," : (char *)"", (char *)"ECP");
    f = f + 1;
  } else {
  }
  if ((p->modes & 32U) != 0U) {
    printk("%s%s", f != 0 ? (char *)"," : (char *)"", (char *)"DMA");
    f = f + 1;
  } else {
  }
  printk("]\n");
  if (probedirq != -1) {
    printk("\016%s: irq %d detected\n", p->name, probedirq);
  } else {
  }
  if ((unsigned long )ECR_res != (unsigned long )((struct resource *)0) && (p->modes & 8U) == 0U) {
    __release_region(& ioport_resource, (resource_size_t )base_hi, 3ULL);
    ECR_res = (struct resource *)0;
  } else {
  }
  if ((unsigned long )EPP_res != (unsigned long )((struct resource *)0) && (p->modes & 4U) == 0U) {
    __release_region(& ioport_resource, (resource_size_t )(base + 3UL), 5ULL);
    EPP_res = (struct resource *)0;
  } else {
  }
  if (p->irq != -1) {
    tmp___5 = ldv_request_irq_20((unsigned int )p->irq, & parport_irq_handler, (unsigned long )irqflags,
                                 p->name, (void *)p);
    if (tmp___5 != 0) {
      printk("\f%s: irq %d in use, resorting to polled operation\n", p->name, p->irq);
      p->irq = -1;
      p->dma = -1;
    } else {
    }
    if (p->dma != -1) {
      tmp___7 = request_dma((unsigned int )p->dma, p->name);
      if (tmp___7 != 0) {
        printk("\f%s: dma %d in use, resorting to PIO operation\n", p->name, p->dma);
        p->dma = -1;
      } else {
        tmp___6 = dma_alloc_attrs(dev, 4096UL, & priv->dma_handle, 208U, (struct dma_attrs *)0);
        priv->dma_buf = (char *)tmp___6;
        if ((unsigned long )priv->dma_buf == (unsigned long )((char *)0)) {
          printk("\f%s: cannot get buffer for DMA, resorting to PIO operation\n",
                 p->name);
          free_dma((unsigned int )p->dma);
          p->dma = -1;
        } else {
        }
      }
    } else {
    }
  } else {
  }
  if (priv->ecr != 0) {
    frob_econtrol(p, 255, 52);
  } else {
  }
  parport_pc_write_data(p, 0);
  parport_pc_data_forward(p);
  spin_lock(& ports_lock);
  list_add(& priv->list, & ports_list);
  spin_unlock(& ports_lock);
  parport_announce_port(p);
  return (p);
  out5: ;
  if ((unsigned long )ECR_res != (unsigned long )((struct resource *)0)) {
    __release_region(& ioport_resource, (resource_size_t )base_hi, 3ULL);
  } else {
  }
  if ((unsigned long )EPP_res != (unsigned long )((struct resource *)0)) {
    __release_region(& ioport_resource, (resource_size_t )(base + 3UL), 5ULL);
  } else {
  }
  __release_region(& ioport_resource, (resource_size_t )base, 3ULL);
  out4:
  parport_put_port(p);
  out3:
  kfree((void const *)priv);
  out2:
  kfree((void const *)ops);
  out1: ;
  if ((unsigned long )pdev != (unsigned long )((struct platform_device *)0)) {
    platform_device_unregister(pdev);
  } else {
  }
  return ((struct parport *)0);
}
}
static char const __kstrtab_parport_pc_probe_port[22U] =
  { 'p', 'a', 'r', 'p',
        'o', 'r', 't', '_',
        'p', 'c', '_', 'p',
        'r', 'o', 'b', 'e',
        '_', 'p', 'o', 'r',
        't', '\000'};
struct kernel_symbol const __ksymtab_parport_pc_probe_port ;
struct kernel_symbol const __ksymtab_parport_pc_probe_port = {(unsigned long )(& parport_pc_probe_port), (char const *)(& __kstrtab_parport_pc_probe_port)};
void parport_pc_unregister_port(struct parport *p )
{
  struct parport_pc_private *priv ;
  struct parport_operations *ops ;
  {
  priv = (struct parport_pc_private *)p->private_data;
  ops = p->ops;
  parport_remove_port(p);
  spin_lock(& ports_lock);
  list_del_init(& priv->list);
  spin_unlock(& ports_lock);
  if (p->dma != -1) {
    free_dma((unsigned int )p->dma);
  } else {
  }
  if (p->irq != -1) {
    ldv_free_irq_21((unsigned int )p->irq, (void *)p);
  } else {
  }
  __release_region(& ioport_resource, (resource_size_t )p->base, 3ULL);
  if (p->size > 3U) {
    __release_region(& ioport_resource, (resource_size_t )(p->base + 3UL), (resource_size_t )(p->size - 3U));
  } else {
  }
  if ((p->modes & 8U) != 0U) {
    __release_region(& ioport_resource, (resource_size_t )p->base_hi, 3ULL);
  } else {
  }
  if ((unsigned long )priv->dma_buf != (unsigned long )((char *)0)) {
    dma_free_attrs((p->physport)->dev, 4096UL, (void *)priv->dma_buf, priv->dma_handle,
                   (struct dma_attrs *)0);
  } else {
  }
  kfree((void const *)p->private_data);
  parport_put_port(p);
  kfree((void const *)ops);
  return;
}
}
static char const __kstrtab_parport_pc_unregister_port[27U] =
  { 'p', 'a', 'r', 'p',
        'o', 'r', 't', '_',
        'p', 'c', '_', 'u',
        'n', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '_', 'p', 'o',
        'r', 't', '\000'};
struct kernel_symbol const __ksymtab_parport_pc_unregister_port ;
struct kernel_symbol const __ksymtab_parport_pc_unregister_port = {(unsigned long )(& parport_pc_unregister_port), (char const *)(& __kstrtab_parport_pc_unregister_port)};
static int sio_ite_8872_probe(struct pci_dev *pdev , int autoirq , int autodma , struct parport_pc_via_data const *via )
{
  short inta_addr[6U] ;
  unsigned int tmp ;
  u32 ite8872set ;
  u32 ite8872_lpt ;
  u32 ite8872_lpthi ;
  u8 ite8872_irq ;
  u8 type ;
  int irq___0 ;
  int i ;
  int test ;
  unsigned char tmp___0 ;
  struct resource *tmp___1 ;
  struct parport *tmp___2 ;
  {
  inta_addr[0] = 672;
  inta_addr[1] = 704;
  inta_addr[2] = 544;
  inta_addr[3] = 576;
  inta_addr[4] = 480;
  tmp = 5U;
  while (1) {
    if (tmp >= 6U) {
      break;
    } else {
    }
    inta_addr[tmp] = (short)0;
    tmp = tmp + 1U;
  }
  i = 0;
  goto ldv_32820;
  ldv_32819:
  tmp___1 = __request_region(& ioport_resource, (resource_size_t )inta_addr[i], 32ULL,
                             "it887x", 0);
  if ((unsigned long )tmp___1 != (unsigned long )((struct resource *)0)) {
    pci_write_config_dword((struct pci_dev const *)pdev, 96, (unsigned int )inta_addr[i] | 3841982464U);
    pci_write_config_dword((struct pci_dev const *)pdev, 120, (u32 )inta_addr[i]);
    tmp___0 = inb((int )inta_addr[i]);
    test = (int )tmp___0;
    if (test != 255) {
      goto ldv_32818;
    } else {
    }
    __release_region(& ioport_resource, (resource_size_t )inta_addr[i], 32ULL);
  } else {
  }
  i = i + 1;
  ldv_32820: ;
  if (i <= 4) {
    goto ldv_32819;
  } else {
  }
  ldv_32818: ;
  if (i > 4) {
    printk("\016parport_pc: cannot find ITE8872 INTA\n");
    return (0);
  } else {
  }
  type = inb((int )inta_addr[i] + 24);
  type = (unsigned int )type & 15U;
  switch ((int )type) {
  case 2:
  printk("\016parport_pc: ITE8871 found (1P)\n");
  ite8872set = 1679818752U;
  goto ldv_32822;
  case 10:
  printk("\016parport_pc: ITE8875 found (1P)\n");
  ite8872set = 1679818752U;
  goto ldv_32822;
  case 14:
  printk("\016parport_pc: ITE8872 found (2S1P)\n");
  ite8872set = 1692401664U;
  goto ldv_32822;
  case 6:
  printk("\016parport_pc: ITE8873 found (1S)\n");
  __release_region(& ioport_resource, (resource_size_t )inta_addr[i], 32ULL);
  return (0);
  case 8:
  printk("\016parport_pc: ITE8874 found (2S)\n");
  __release_region(& ioport_resource, (resource_size_t )inta_addr[i], 32ULL);
  return (0);
  default:
  printk("\016parport_pc: unknown ITE887x\n");
  printk("\016parport_pc: please mail \'lspci -nvv\' output to Rich.Liu@ite.com.tw\n");
  __release_region(& ioport_resource, (resource_size_t )inta_addr[i], 32ULL);
  return (0);
  }
  ldv_32822:
  pci_read_config_byte((struct pci_dev const *)pdev, 60, & ite8872_irq);
  pci_read_config_dword((struct pci_dev const *)pdev, 28, & ite8872_lpt);
  ite8872_lpt = ite8872_lpt & 65280U;
  pci_read_config_dword((struct pci_dev const *)pdev, 32, & ite8872_lpthi);
  ite8872_lpthi = ite8872_lpthi & 65280U;
  pci_write_config_dword((struct pci_dev const *)pdev, 108, ite8872_lpt | 3808428032U);
  pci_write_config_dword((struct pci_dev const *)pdev, 112, ite8872_lpthi | 3808428032U);
  pci_write_config_dword((struct pci_dev const *)pdev, 128, (ite8872_lpthi << 16) | ite8872_lpt);
  pci_write_config_dword((struct pci_dev const *)pdev, 156, (u32 )((int )ite8872_irq * 69905) | ite8872set);
  irq___0 = (int )ite8872_irq;
  if (autoirq != -2) {
    irq___0 = -1;
  } else {
  }
  __release_region(& ioport_resource, (resource_size_t )inta_addr[i], 32ULL);
  tmp___2 = parport_pc_probe_port((unsigned long )ite8872_lpt, (unsigned long )ite8872_lpthi,
                                  irq___0, -1, & pdev->dev, 0);
  if ((unsigned long )tmp___2 != (unsigned long )((struct parport *)0)) {
    printk("\016parport_pc: ITE 8872 parallel port: io=0x%X", ite8872_lpt);
    if (irq___0 != -1) {
      printk(", irq=%d", irq___0);
    } else {
    }
    printk("\n");
    return (1);
  } else {
  }
  return (0);
}
}
static int parport_init_mode ;
static struct parport_pc_via_data via_686a_data = {81U, 80U, 133U, 2U, 226U, 240U, 230U};
static struct parport_pc_via_data via_8231_data = {69U, 68U, 80U, 4U, 242U, 250U, 246U};
static int sio_via_probe(struct pci_dev *pdev , int autoirq , int autodma , struct parport_pc_via_data const *via )
{
  u8 tmp ;
  u8 tmp2 ;
  u8 siofunc ;
  u8 ppcontrol ;
  int dma___0 ;
  int irq___0 ;
  unsigned int port1 ;
  unsigned int port2 ;
  unsigned int have_epp ;
  unsigned char tmp___0 ;
  struct parport *tmp___1 ;
  {
  ppcontrol = 0U;
  have_epp = 0U;
  printk("\017parport_pc: VIA 686A/8231 detected\n");
  switch (parport_init_mode) {
  case 1:
  printk("\017parport_pc: setting SPP mode\n");
  siofunc = 0U;
  goto ldv_32847;
  case 2:
  printk("\017parport_pc: setting PS/2 mode\n");
  siofunc = 0U;
  ppcontrol = 128U;
  goto ldv_32847;
  case 3:
  printk("\017parport_pc: setting EPP mode\n");
  siofunc = 2U;
  ppcontrol = 128U;
  have_epp = 1U;
  goto ldv_32847;
  case 4:
  printk("\017parport_pc: setting ECP mode\n");
  siofunc = 1U;
  ppcontrol = 128U;
  goto ldv_32847;
  case 5:
  printk("\017parport_pc: setting EPP+ECP mode\n");
  siofunc = 1U;
  ppcontrol = 160U;
  have_epp = 1U;
  goto ldv_32847;
  default:
  printk("\017parport_pc: probing current configuration\n");
  siofunc = 255U;
  goto ldv_32847;
  }
  ldv_32847:
  pci_read_config_byte((struct pci_dev const *)pdev, (int )via->via_pci_superio_config_reg,
                       & tmp);
  tmp = (u8 )((int )((unsigned char )via->via_pci_superio_config_data) | (int )tmp);
  pci_write_config_byte((struct pci_dev const *)pdev, (int )via->via_pci_superio_config_reg,
                        (int )tmp);
  outb((int )via->viacfg_function, 1008);
  tmp = inb(1009);
  outb((int )via->viacfg_parport_control, 1008);
  tmp2 = inb(1009);
  if ((unsigned int )siofunc == 255U) {
    siofunc = (unsigned int )tmp & 3U;
    ppcontrol = tmp2;
  } else {
    tmp = (unsigned int )tmp & 252U;
    tmp = (u8 )((int )tmp | (int )siofunc);
    outb((int )via->viacfg_function, 1008);
    outb((int )tmp, 1009);
    tmp2 = (unsigned int )tmp2 & 95U;
    tmp2 = (u8 )((int )tmp2 | (int )ppcontrol);
    outb((int )via->viacfg_parport_control, 1008);
    outb((int )tmp2, 1009);
  }
  outb((int )via->viacfg_parport_base, 1008);
  tmp___0 = inb(1009);
  port1 = (unsigned int )((int )tmp___0 << 2);
  printk("\017parport_pc: Current parallel port base: 0x%X\n", port1);
  if (port1 == 956U && have_epp != 0U) {
    outb((int )via->viacfg_parport_base, 1008);
    outb(222, 1009);
    printk("\017parport_pc: Parallel port base changed to 0x378\n");
    port1 = 888U;
  } else {
  }
  pci_read_config_byte((struct pci_dev const *)pdev, (int )via->via_pci_superio_config_reg,
                       & tmp);
  tmp = (u8 )(~ ((int )((signed char )via->via_pci_superio_config_data)) & (int )((signed char )tmp));
  pci_write_config_byte((struct pci_dev const *)pdev, (int )via->via_pci_superio_config_reg,
                        (int )tmp);
  if ((unsigned int )siofunc == 3U) {
    printk("\016parport_pc: VIA parallel port disabled in BIOS\n");
    return (0);
  } else {
  }
  pci_read_config_byte((struct pci_dev const *)pdev, (int )via->via_pci_parport_irq_reg,
                       & tmp);
  irq___0 = (int )tmp >> 4;
  if ((unsigned int )siofunc == 1U) {
    pci_read_config_byte((struct pci_dev const *)pdev, (int )via->via_pci_parport_dma_reg,
                         & tmp);
    dma___0 = ((int )tmp & 12) >> 2;
  } else {
    dma___0 = -1;
  }
  if (autoirq == -1) {
    irq___0 = -1;
    dma___0 = -1;
  } else {
  }
  if (autodma == -1) {
    dma___0 = -1;
  } else {
  }
  switch (port1) {
  case 956U:
  port2 = 1980U;
  goto ldv_32854;
  case 888U:
  port2 = 1912U;
  goto ldv_32854;
  case 632U:
  port2 = 1656U;
  goto ldv_32854;
  default:
  printk("\016parport_pc: Weird VIA parport base 0x%X, ignoring\n", port1);
  return (0);
  }
  ldv_32854: ;
  switch (irq___0) {
  case 0: ;
  case 2: ;
  case 8: ;
  case 13:
  irq___0 = -1;
  goto ldv_32862;
  default: ;
  goto ldv_32862;
  }
  ldv_32862:
  tmp___1 = parport_pc_probe_port((unsigned long )port1, (unsigned long )port2, irq___0,
                                  dma___0, & pdev->dev, 0);
  if ((unsigned long )tmp___1 != (unsigned long )((struct parport *)0)) {
    printk("\016parport_pc: VIA parallel port: io=0x%X", port1);
    if (irq___0 != -1) {
      printk(", irq=%d", irq___0);
    } else {
    }
    if (dma___0 != -1) {
      printk(", dma=%d", dma___0);
    } else {
    }
    printk("\n");
    return (1);
  } else {
  }
  printk("\fparport_pc: Strange, can\'t probe VIA parallel port: io=0x%X, irq=%d, dma=%d\n",
         port1, irq___0, dma___0);
  return (0);
}
}
static struct parport_pc_superio parport_pc_superio_info[3U] = { {& sio_via_probe, (struct parport_pc_via_data const *)(& via_686a_data)},
        {& sio_via_probe, (struct parport_pc_via_data const *)(& via_8231_data)},
        {& sio_ite_8872_probe, (struct parport_pc_via_data const *)0}};
static struct parport_pc_pci cards[33U] =
  { {1, {{2, 3}}, 0, 0},
        {2, {{2, 3}, {4, 5}}, 0, 0},
        {1, {{0, 1}}, 0, 0},
        {2, {{0, 1}, {2, 3}}, 0, 0},
        {1, {{0, -1}}, 0, 0},
        {1, {{0, -1}}, 0, 0},
        {1, {{0, -1}}, 0, 0},
        {1, {{0, -1}}, 0, 0},
        {2, {{4, -1}, {5, -1}}, 0, 0},
        {1, {{0, -1}}, 0, 0},
        {2, {{0, -1}, {2, -1}}, 0, 0},
        {1, {{0, 1}}, 0, 0},
        {2, {{0, 1}, {2, 3}}, 0, 0},
        {2, {{0, 1}, {2, 3}}, 0, 0},
        {2, {{0, 120}, {0, 376}}, 0, 0},
        {1, {{0, 120}}, 0, 0},
        {1, {{3, -1}}, 0, 0},
        {1, {{0, 1}}, 0, 0},
        {2, {{0, 1}, {2, 3}}, 0, 0},
        {1, {{0, 1}}, 0, 0},
        {1, {{0, -1}}, 0, 0},
        {1, {{0, 1}}, 0, 0},
        {1, {{0, 1}}, 0, 0},
        {1, {{0, -1}}, 0, 0},
        {1, {{0, 1}}, 0, 0},
        {1, {{0, -1}}, 0, 0},
        {2, {{0, 1}, {2, 3}}, 0, 0},
        {2, {{0, 1}, {2, 3}}, 0, 0},
        {1, {{0, 1}}, 0, 0},
        {2, {{0, 1}, {2, 3}}, 0, 0},
        {1, {{0, -1}}, 0, 0},
        {1, {{0, -1}}, 0, 0},
        {1, {{0, 1}}, 0, 0}};
static struct pci_device_id const parport_pc_pci_tbl[45U] =
  { {4358U, 1670U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4358U, 33329U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {4739U, 34930U, 4294967295U, 4294967295U, 0U, 0U, 2UL},
        {4895U, 4128U, 4294967295U, 4294967295U, 0U, 0U, 3UL},
        {4895U, 4129U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {4895U, 8224U, 4294967295U, 4294967295U, 0U, 0U, 5UL},
        {4895U, 8225U, 4294967295U, 4294967295U, 0U, 0U, 6UL},
        {5127U, 32768U, 4294967295U, 4294967295U, 0U, 0U, 7UL},
        {5127U, 32770U, 4294967295U, 4294967295U, 0U, 0U, 8UL},
        {5127U, 32771U, 4294967295U, 4294967295U, 0U, 0U, 9UL},
        {5127U, 34816U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4277U, 36944U, 55373U, 16404U, 0U, 0U, 11UL},
        {5129U, 29288U, 5129U, 257U, 0U, 0U, 12UL},
        {5129U, 29288U, 5129U, 258U, 0U, 0U, 13UL},
        {5129U, 29288U, 5129U, 259U, 0U, 0U, 14UL},
        {5129U, 29288U, 5129U, 260U, 0U, 0U, 15UL},
        {5129U, 29288U, 5129U, 36888U, 0U, 0U, 16UL},
        {5522U, 1922U, 4294967295U, 4294967295U, 0U, 0U, 17UL},
        {5522U, 1923U, 4294967295U, 4294967295U, 0U, 0U, 18UL},
        {5330U, 32769U, 4294967295U, 4294967295U, 0U, 0U, 19UL},
        {5339U, 8480U, 4294967295U, 4294967295U, 0U, 0U, 20UL},
        {5339U, 8481U, 4294967295U, 4294967295U, 0U, 0U, 21UL},
        {5141U, 38179U, 4294967295U, 4294967295U, 0U, 0U, 22UL},
        {5141U, 38163U, 4294967295U, 4294967295U, 0U, 0U, 23UL},
        {5141U, 33795U, 4294967295U, 4294967295U, 0U, 0U, 24UL},
        {5141U, 49152U, 4294967295U, 4294967295U, 0U, 0U, 25UL},
        {5141U, 49156U, 4294967295U, 4294967295U, 0U, 0U, 25UL},
        {5141U, 49408U, 4294967295U, 4294967295U, 0U, 0U, 25UL},
        {5141U, 49412U, 4294967295U, 4294967295U, 0U, 0U, 25UL},
        {5141U, 49424U, 4294967295U, 4294967295U, 0U, 0U, 25UL},
        {5141U, 49428U, 4294967295U, 4294967295U, 0U, 0U, 25UL},
        {5141U, 49432U, 4294967295U, 4294967295U, 0U, 0U, 25UL},
        {5141U, 49436U, 4294967295U, 4294967295U, 0U, 0U, 25UL},
        {16748U, 256U, 4294967295U, 4294967295U, 0U, 0U, 26UL},
        {5362U, 289U, 4294967295U, 4294967295U, 0U, 0U, 27UL},
        {38672U, 38661U, 4294967295U, 4294967295U, 0U, 0U, 28UL},
        {38672U, 38677U, 4294967295U, 4294967295U, 0U, 0U, 29UL},
        {38672U, 38741U, 4294967295U, 4294967295U, 0U, 0U, 30UL},
        {38672U, 38917U, 4294967295U, 4294967295U, 0U, 0U, 31UL},
        {38672U, 38933U, 4294967295U, 4294967295U, 0U, 0U, 32UL},
        {38672U, 39169U, 40960U, 8192U, 0U, 0U, 33UL},
        {38672U, 39013U, 40960U, 4096U, 0U, 0U, 34UL},
        {38672U, 39013U, 40960U, 8192U, 0U, 0U, 34UL},
        {4956U, 632U, 4294967295U, 4294967295U, 0U, 0U, 35UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__parport_pc_pci_tbl_device_table ;
static int parport_pc_pci_probe(struct pci_dev *dev , struct pci_device_id const *id )
{
  int err ;
  int count ;
  int n ;
  int i ;
  struct pci_parport_data *data ;
  void *tmp ;
  int tmp___0 ;
  int lo ;
  int hi ;
  int irq___0 ;
  unsigned long io_lo ;
  unsigned long io_hi___0 ;
  {
  i = (int )id->driver_data;
  if (i <= 2) {
    return (0);
  } else {
  }
  i = i + -3;
  count = 0;
  err = pci_enable_device(dev);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp = kmalloc(24UL, 208U);
  data = (struct pci_parport_data *)tmp;
  if ((unsigned long )data == (unsigned long )((struct pci_parport_data *)0)) {
    return (-12);
  } else {
  }
  if ((unsigned long )cards[i].preinit_hook != (unsigned long )((int (*)(struct pci_dev * ,
                                                                         int , int ))0)) {
    tmp___0 = (*(cards[i].preinit_hook))(dev, -1, -1);
    if (tmp___0 != 0) {
      kfree((void const *)data);
      return (-19);
    } else {
    }
  } else {
  }
  n = 0;
  goto ldv_32945;
  ldv_32944:
  lo = cards[i].addr[n].lo;
  hi = cards[i].addr[n].hi;
  io_lo = (unsigned long )dev->resource[lo].start;
  io_hi___0 = 0UL;
  if (hi >= 0 && hi <= 6) {
    io_hi___0 = (unsigned long )dev->resource[hi].start;
  } else
  if (hi > 6) {
    io_lo = (unsigned long )hi + io_lo;
  } else {
  }
  irq___0 = (int )dev->irq;
  if (irq___0 == 0) {
    printk("\017PCI parallel port detected: %04x:%04x, I/O at %#lx(%#lx)\n", id->vendor,
           id->device, io_lo, io_hi___0);
    irq___0 = -1;
  } else {
    printk("\017PCI parallel port detected: %04x:%04x, I/O at %#lx(%#lx), IRQ %d\n",
           id->vendor, id->device, io_lo, io_hi___0, irq___0);
  }
  data->ports[count] = parport_pc_probe_port(io_lo, io_hi___0, irq___0, -1, & dev->dev,
                                             128);
  if ((unsigned long )data->ports[count] != (unsigned long )((struct parport *)0)) {
    count = count + 1;
  } else {
  }
  n = n + 1;
  ldv_32945: ;
  if (cards[i].numports > n) {
    goto ldv_32944;
  } else {
  }
  data->num = count;
  if ((unsigned long )cards[i].postinit_hook != (unsigned long )((void (*)(struct pci_dev * ,
                                                                           int ))0)) {
    (*(cards[i].postinit_hook))(dev, count == 0);
  } else {
  }
  if (count != 0) {
    pci_set_drvdata(dev, (void *)data);
    return (0);
  } else {
  }
  kfree((void const *)data);
  return (-19);
}
}
static void parport_pc_pci_remove(struct pci_dev *dev )
{
  struct pci_parport_data *data ;
  void *tmp ;
  int i ;
  {
  tmp = pci_get_drvdata(dev);
  data = (struct pci_parport_data *)tmp;
  if ((unsigned long )data != (unsigned long )((struct pci_parport_data *)0)) {
    i = data->num + -1;
    goto ldv_32953;
    ldv_32952:
    parport_pc_unregister_port(data->ports[i]);
    i = i - 1;
    ldv_32953: ;
    if (i >= 0) {
      goto ldv_32952;
    } else {
    }
    kfree((void const *)data);
  } else {
  }
  return;
}
}
static struct pci_driver parport_pc_pci_driver =
     {{0, 0}, "parport_pc", (struct pci_device_id const *)(& parport_pc_pci_tbl),
    & parport_pc_pci_probe, & parport_pc_pci_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0,
                                                                           0, (_Bool)0,
                                                                           0, 0, 0,
                                                                           0, 0, 0,
                                                                           0, 0, 0,
                                                                           0}, {{{{{{0U}},
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
static int parport_pc_init_superio(int autoirq , int autodma )
{
  struct pci_device_id const *id ;
  struct pci_dev *pdev ;
  int ret ;
  int tmp ;
  {
  pdev = (struct pci_dev *)0;
  ret = 0;
  goto ldv_32963;
  ldv_32964:
  id = pci_match_id((struct pci_device_id const *)(& parport_pc_pci_tbl), pdev);
  if ((unsigned long )id == (unsigned long )((struct pci_device_id const *)0) || (unsigned long )id->driver_data > 2UL) {
    goto ldv_32963;
  } else {
  }
  tmp = (*(parport_pc_superio_info[id->driver_data].probe))(pdev, autoirq, autodma,
                                                            parport_pc_superio_info[id->driver_data].via);
  if (tmp != 0) {
    ret = ret + 1;
  } else {
  }
  ldv_32963:
  pdev = pci_get_device(4294967295U, 4294967295U, pdev);
  if ((unsigned long )pdev != (unsigned long )((struct pci_dev *)0)) {
    goto ldv_32964;
  } else {
  }
  return (ret);
}
}
static struct pnp_device_id const parport_pc_pnp_tbl[3U] = { {{'P', 'N', 'P', '0', '4', '0', '0', '\000'}, 0UL},
        {{'P', 'N', 'P', '0', '4', '0', '1', '\000'}, 0UL}};
struct pnp_device_id const __mod_pnp__parport_pc_pnp_tbl_device_table ;
static int parport_pc_pnp_probe(struct pnp_dev *dev , struct pnp_device_id const *id )
{
  struct parport *pdata ;
  unsigned long io_lo ;
  unsigned long io_hi___0 ;
  int dma___0 ;
  int irq___0 ;
  resource_size_t tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  resource_size_t tmp___2 ;
  int tmp___3 ;
  unsigned long tmp___4 ;
  resource_size_t tmp___5 ;
  int tmp___6 ;
  unsigned long tmp___7 ;
  resource_size_t tmp___8 ;
  int tmp___9 ;
  unsigned long tmp___10 ;
  {
  tmp___0 = pnp_port_valid(dev, 0U);
  if (tmp___0 != 0) {
    tmp___1 = pnp_port_flags(dev, 0U);
    if ((tmp___1 & 268435456UL) == 0UL) {
      tmp = pnp_port_start(dev, 0U);
      io_lo = (unsigned long )tmp;
    } else {
      return (-22);
    }
  } else {
    return (-22);
  }
  tmp___3 = pnp_port_valid(dev, 1U);
  if (tmp___3 != 0) {
    tmp___4 = pnp_port_flags(dev, 1U);
    if ((tmp___4 & 268435456UL) == 0UL) {
      tmp___2 = pnp_port_start(dev, 1U);
      io_hi___0 = (unsigned long )tmp___2;
    } else {
      io_hi___0 = 0UL;
    }
  } else {
    io_hi___0 = 0UL;
  }
  tmp___6 = pnp_irq_valid(dev, 0U);
  if (tmp___6 != 0) {
    tmp___7 = pnp_irq_flags(dev, 0U);
    if ((tmp___7 & 268435456UL) == 0UL) {
      tmp___5 = pnp_irq(dev, 0U);
      irq___0 = (int )tmp___5;
    } else {
      irq___0 = -1;
    }
  } else {
    irq___0 = -1;
  }
  tmp___9 = pnp_dma_valid(dev, 0U);
  if (tmp___9 != 0) {
    tmp___10 = pnp_dma_flags(dev, 0U);
    if ((tmp___10 & 268435456UL) == 0UL) {
      tmp___8 = pnp_dma(dev, 0U);
      dma___0 = (int )tmp___8;
    } else {
      dma___0 = -1;
    }
  } else {
    dma___0 = -1;
  }
  _dev_info((struct device const *)(& dev->dev), "reported by %s\n", (dev->protocol)->name);
  pdata = parport_pc_probe_port(io_lo, io_hi___0, irq___0, dma___0, & dev->dev, 0);
  if ((unsigned long )pdata == (unsigned long )((struct parport *)0)) {
    return (-19);
  } else {
  }
  pnp_set_drvdata(dev, (void *)pdata);
  return (0);
}
}
static void parport_pc_pnp_remove(struct pnp_dev *dev )
{
  struct parport *pdata ;
  void *tmp ;
  {
  tmp = pnp_get_drvdata(dev);
  pdata = (struct parport *)tmp;
  if ((unsigned long )pdata == (unsigned long )((struct parport *)0)) {
    return;
  } else {
  }
  parport_pc_unregister_port(pdata);
  return;
}
}
static struct pnp_driver parport_pc_pnp_driver =
     {(char *)"parport_pc", (struct pnp_device_id const *)(& parport_pc_pnp_tbl),
    0U, & parport_pc_pnp_probe, & parport_pc_pnp_remove, 0, 0, 0, {0, 0, 0, 0, (_Bool)0,
                                                                   0, 0, 0, 0, 0,
                                                                   0, 0, 0, 0, 0}};
static int parport_pc_platform_probe(struct platform_device *pdev )
{
  {
  return (0);
}
}
static struct platform_driver parport_pc_platform_driver =
     {& parport_pc_platform_probe, 0, 0, 0, 0, {"parport_pc", 0, & __this_module, 0,
                                              (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                              0}, 0, (_Bool)0};
static int parport_pc_find_isa_ports(int autoirq , int autodma )
{
  int count ;
  struct parport *tmp ;
  struct parport *tmp___0 ;
  struct parport *tmp___1 ;
  {
  count = 0;
  tmp = parport_pc_probe_port(956UL, 1980UL, autoirq, autodma, (struct device *)0,
                              0);
  if ((unsigned long )tmp != (unsigned long )((struct parport *)0)) {
    count = count + 1;
  } else {
  }
  tmp___0 = parport_pc_probe_port(888UL, 1912UL, autoirq, autodma, (struct device *)0,
                                  0);
  if ((unsigned long )tmp___0 != (unsigned long )((struct parport *)0)) {
    count = count + 1;
  } else {
  }
  tmp___1 = parport_pc_probe_port(632UL, 1656UL, autoirq, autodma, (struct device *)0,
                                  0);
  if ((unsigned long )tmp___1 != (unsigned long )((struct parport *)0)) {
    count = count + 1;
  } else {
  }
  return (count);
}
}
static void parport_pc_find_ports(int autoirq , int autodma )
{
  int count ;
  int err ;
  int tmp ;
  {
  count = 0;
  detect_and_report_it87();
  detect_and_report_winbond();
  detect_and_report_smsc();
  tmp = parport_pc_init_superio(autoirq, autodma);
  count = tmp + count;
  if (count == 0) {
    err = pnp_register_driver(& parport_pc_pnp_driver);
    if (err == 0) {
      pnp_registered_parport = 1;
    } else {
    }
  } else {
  }
  parport_pc_find_nonpci_ports(autoirq, autodma);
  err = __pci_register_driver(& parport_pc_pci_driver, & __this_module, "parport_pc");
  if (err == 0) {
    pci_registered_parport = 1;
  } else {
  }
  return;
}
}
static int io[17U] =
  { 0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0};
static int io_hi[17U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1};
static int dmaval[16U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1,
        -1, -1, -1, -1};
static int irqval[16U] =
  { -3, -3, -3, -3,
        -3, -3, -3, -3,
        -3, -3, -3, -3,
        -3, -3, -3, -3};
static int parport_parse_param(char const *s , int *val , int automatic , int none ,
                               int nofifo )
{
  char *ep ;
  unsigned long r ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if ((unsigned long )s == (unsigned long )((char const *)0)) {
    return (0);
  } else {
  }
  tmp___2 = strncmp(s, "auto", 4UL);
  if (tmp___2 == 0) {
    *val = automatic;
  } else {
    tmp___1 = strncmp(s, "none", 4UL);
    if (tmp___1 == 0) {
      *val = none;
    } else
    if (nofifo != 0) {
      tmp___0 = strncmp(s, "nofifo", 6UL);
      if (tmp___0 == 0) {
        *val = nofifo;
      } else {
        goto _L;
      }
    } else {
      _L:
      tmp = simple_strtoul(s, & ep, 0U);
      r = tmp;
      if ((unsigned long )((char const *)ep) != (unsigned long )s) {
        *val = (int )r;
      } else {
        printk("\vparport: bad specifier `%s\'\n", s);
        return (-1);
      }
    }
  }
  return (0);
}
}
static int parport_parse_irq(char const *irqstr , int *val )
{
  int tmp ;
  {
  tmp = parport_parse_param(irqstr, val, -2, -1, 0);
  return (tmp);
}
}
static int parport_parse_dma(char const *dmastr , int *val )
{
  int tmp ;
  {
  tmp = parport_parse_param(dmastr, val, -2, -1, -3);
  return (tmp);
}
}
static int parport_init_mode_setup(char *str )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  printk("\017parport_pc.c: Specified parameter parport_init_mode=%s\n", str);
  tmp = strcmp((char const *)str, "spp");
  if (tmp == 0) {
    parport_init_mode = 1;
  } else {
  }
  tmp___0 = strcmp((char const *)str, "ps2");
  if (tmp___0 == 0) {
    parport_init_mode = 2;
  } else {
  }
  tmp___1 = strcmp((char const *)str, "epp");
  if (tmp___1 == 0) {
    parport_init_mode = 3;
  } else {
  }
  tmp___2 = strcmp((char const *)str, "ecp");
  if (tmp___2 == 0) {
    parport_init_mode = 4;
  } else {
  }
  tmp___3 = strcmp((char const *)str, "ecpepp");
  if (tmp___3 == 0) {
    parport_init_mode = 5;
  } else {
  }
  return (1);
}
}
static char *irq[16U] ;
static char *dma[16U] ;
static char *init_mode ;
static int parse_parport_params(void)
{
  unsigned int i ;
  int val ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if ((unsigned long )init_mode != (unsigned long )((char *)0)) {
    parport_init_mode_setup(init_mode);
  } else {
  }
  i = 0U;
  goto ldv_33132;
  ldv_33131:
  tmp = parport_parse_irq((char const *)irq[i], & val);
  if (tmp != 0) {
    return (1);
  } else {
  }
  irqval[i] = val;
  tmp___0 = parport_parse_dma((char const *)dma[i], & val);
  if (tmp___0 != 0) {
    return (1);
  } else {
  }
  dmaval[i] = val;
  i = i + 1U;
  ldv_33132: ;
  if (i <= 15U && io[i] != 0) {
    goto ldv_33131;
  } else {
  }
  if (io[0] == 0) {
    if ((unsigned long )irq[0] != (unsigned long )((char *)0)) {
      tmp___1 = parport_parse_irq((char const *)irq[0], & val);
      if (tmp___1 == 0) {
        switch (val) {
        case -1: ;
        case -2:
        irqval[0] = val;
        goto ldv_33136;
        default:
        printk("\fparport_pc: irq specified without base address.  Use \'io=\' to specify one\n");
        }
        ldv_33136: ;
      } else {
      }
    } else {
    }
    if ((unsigned long )dma[0] != (unsigned long )((char *)0)) {
      tmp___2 = parport_parse_dma((char const *)dma[0], & val);
      if (tmp___2 == 0) {
        switch (val) {
        case -1: ;
        case -2:
        dmaval[0] = val;
        goto ldv_33140;
        default:
        printk("\fparport_pc: dma specified without base address.  Use \'io=\' to specify one\n");
        }
        ldv_33140: ;
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int parport_pc_init(void)
{
  int err ;
  int tmp ;
  int i ;
  {
  tmp = parse_parport_params();
  if (tmp != 0) {
    return (-22);
  } else {
  }
  err = ldv___platform_driver_register_22(& parport_pc_platform_driver, & __this_module);
  if (err != 0) {
    return (err);
  } else {
  }
  if (io[0] != 0) {
    user_specified = 1;
    i = 0;
    goto ldv_33149;
    ldv_33148: ;
    if (io[i] == 0) {
      goto ldv_33147;
    } else {
    }
    if (io_hi[i] == -1) {
      io_hi[i] = io[i] + 1024;
    } else {
    }
    parport_pc_probe_port((unsigned long )io[i], (unsigned long )io_hi[i], irqval[i],
                          dmaval[i], (struct device *)0, 0);
    i = i + 1;
    ldv_33149: ;
    if (i <= 15) {
      goto ldv_33148;
    } else {
    }
    ldv_33147: ;
  } else {
    parport_pc_find_ports(irqval[0], dmaval[0]);
  }
  return (0);
}
}
static void parport_pc_exit(void)
{
  struct parport_pc_private *priv ;
  struct parport *port ;
  struct list_head const *__mptr ;
  struct device const *__mptr___0 ;
  int tmp ;
  {
  if (pci_registered_parport != 0) {
    pci_unregister_driver(& parport_pc_pci_driver);
  } else {
  }
  if (pnp_registered_parport != 0) {
    pnp_unregister_driver(& parport_pc_pnp_driver);
  } else {
  }
  ldv_platform_driver_unregister_23(& parport_pc_platform_driver);
  goto ldv_33160;
  ldv_33159:
  __mptr = (struct list_head const *)ports_list.next;
  priv = (struct parport_pc_private *)__mptr + 0xffffffffffffffd8UL;
  port = priv->port;
  if ((unsigned long )port->dev != (unsigned long )((struct device *)0) && (unsigned long )(port->dev)->bus == (unsigned long )(& platform_bus_type)) {
    __mptr___0 = (struct device const *)port->dev;
    platform_device_unregister((struct platform_device *)__mptr___0 + 0xfffffffffffffff0UL);
  } else {
  }
  parport_pc_unregister_port(port);
  ldv_33160:
  tmp = list_empty((struct list_head const *)(& ports_list));
  if (tmp == 0) {
    goto ldv_33159;
  } else {
  }
  return;
}
}
extern int ldv_probe_5(void) ;
extern int ldv_release_5(void) ;
int ldv_retval_2 ;
int ldv_retval_0 ;
extern int ldv_release_2(void) ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
extern void ldv_check_final_state(void) ;
int ldv_retval_3 ;
void ldv_initialize_parport_operations_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(16UL);
  parport_pc_ops_group0 = (struct parport_state *)tmp;
  tmp___0 = ldv_zalloc(792UL);
  parport_pc_ops_group1 = (struct parport *)tmp___0;
  return;
}
}
void ldv_initialize_pnp_driver_3(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1656UL);
  parport_pc_pnp_driver_group0 = (struct pnp_dev *)tmp;
  return;
}
}
void ldv_initialize_pci_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  parport_pc_pci_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
void disable_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) {
    ldv_irq_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& parport_irq_handler)) {
    return (1);
  } else {
  }
  return (0);
}
}
void activate_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
int ldv_irq_1(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  {
  if (state != 0) {
    tmp = __VERIFIER_nondet_int();
    switch (tmp) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = parport_irq_handler(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_33218;
    default:
    ldv_stop();
    }
    ldv_33218: ;
  } else {
  }
  return (state);
}
}
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_33226;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_33226;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_33226;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_33226;
  default:
  ldv_stop();
  }
  ldv_33226: ;
  return;
}
}
int main(void)
{
  struct pci_device_id *ldvarg0 ;
  void *tmp ;
  struct pnp_device_id *ldvarg1 ;
  void *tmp___0 ;
  struct platform_device *ldvarg2 ;
  void *tmp___1 ;
  size_t ldvarg18 ;
  size_t tmp___2 ;
  size_t ldvarg11 ;
  size_t tmp___3 ;
  int ldvarg32 ;
  int tmp___4 ;
  int ldvarg7 ;
  int tmp___5 ;
  struct pardevice *ldvarg23 ;
  void *tmp___6 ;
  void *ldvarg12 ;
  void *tmp___7 ;
  void *ldvarg37 ;
  void *tmp___8 ;
  int ldvarg29 ;
  int tmp___9 ;
  int ldvarg24 ;
  int tmp___10 ;
  int ldvarg35 ;
  int tmp___11 ;
  size_t ldvarg5 ;
  size_t tmp___12 ;
  size_t ldvarg33 ;
  size_t tmp___13 ;
  void *ldvarg6 ;
  void *tmp___14 ;
  unsigned char ldvarg16 ;
  unsigned char tmp___15 ;
  int ldvarg4 ;
  int tmp___16 ;
  size_t ldvarg14 ;
  size_t tmp___17 ;
  void *ldvarg34 ;
  void *tmp___18 ;
  unsigned char ldvarg28 ;
  unsigned char tmp___19 ;
  int ldvarg20 ;
  int tmp___20 ;
  void *ldvarg31 ;
  void *tmp___21 ;
  unsigned char ldvarg3 ;
  unsigned char tmp___22 ;
  size_t ldvarg8 ;
  size_t tmp___23 ;
  int ldvarg13 ;
  int tmp___24 ;
  size_t ldvarg36 ;
  size_t tmp___25 ;
  int ldvarg10 ;
  int tmp___26 ;
  void *ldvarg9 ;
  void *tmp___27 ;
  void *ldvarg26 ;
  void *tmp___28 ;
  unsigned char ldvarg27 ;
  unsigned char tmp___29 ;
  void *ldvarg15 ;
  void *tmp___30 ;
  size_t ldvarg30 ;
  size_t tmp___31 ;
  size_t ldvarg21 ;
  size_t tmp___32 ;
  int ldvarg17 ;
  int tmp___33 ;
  size_t ldvarg25 ;
  size_t tmp___34 ;
  void *ldvarg22 ;
  void *tmp___35 ;
  void *ldvarg19 ;
  void *tmp___36 ;
  int tmp___37 ;
  int tmp___38 ;
  int tmp___39 ;
  int tmp___40 ;
  int tmp___41 ;
  int tmp___42 ;
  {
  tmp = ldv_zalloc(32UL);
  ldvarg0 = (struct pci_device_id *)tmp;
  tmp___0 = ldv_zalloc(16UL);
  ldvarg1 = (struct pnp_device_id *)tmp___0;
  tmp___1 = ldv_zalloc(1464UL);
  ldvarg2 = (struct platform_device *)tmp___1;
  tmp___2 = __VERIFIER_nondet_size_t();
  ldvarg18 = tmp___2;
  tmp___3 = __VERIFIER_nondet_size_t();
  ldvarg11 = tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  ldvarg32 = tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  ldvarg7 = tmp___5;
  tmp___6 = ldv_zalloc(232UL);
  ldvarg23 = (struct pardevice *)tmp___6;
  tmp___7 = ldv_zalloc(1UL);
  ldvarg12 = tmp___7;
  tmp___8 = ldv_zalloc(1UL);
  ldvarg37 = tmp___8;
  tmp___9 = __VERIFIER_nondet_int();
  ldvarg29 = tmp___9;
  tmp___10 = __VERIFIER_nondet_int();
  ldvarg24 = tmp___10;
  tmp___11 = __VERIFIER_nondet_int();
  ldvarg35 = tmp___11;
  tmp___12 = __VERIFIER_nondet_size_t();
  ldvarg5 = tmp___12;
  tmp___13 = __VERIFIER_nondet_size_t();
  ldvarg33 = tmp___13;
  tmp___14 = ldv_zalloc(1UL);
  ldvarg6 = tmp___14;
  tmp___15 = __VERIFIER_nondet_uchar();
  ldvarg16 = tmp___15;
  tmp___16 = __VERIFIER_nondet_int();
  ldvarg4 = tmp___16;
  tmp___17 = __VERIFIER_nondet_size_t();
  ldvarg14 = tmp___17;
  tmp___18 = ldv_zalloc(1UL);
  ldvarg34 = tmp___18;
  tmp___19 = __VERIFIER_nondet_uchar();
  ldvarg28 = tmp___19;
  tmp___20 = __VERIFIER_nondet_int();
  ldvarg20 = tmp___20;
  tmp___21 = ldv_zalloc(1UL);
  ldvarg31 = tmp___21;
  tmp___22 = __VERIFIER_nondet_uchar();
  ldvarg3 = tmp___22;
  tmp___23 = __VERIFIER_nondet_size_t();
  ldvarg8 = tmp___23;
  tmp___24 = __VERIFIER_nondet_int();
  ldvarg13 = tmp___24;
  tmp___25 = __VERIFIER_nondet_size_t();
  ldvarg36 = tmp___25;
  tmp___26 = __VERIFIER_nondet_int();
  ldvarg10 = tmp___26;
  tmp___27 = ldv_zalloc(1UL);
  ldvarg9 = tmp___27;
  tmp___28 = ldv_zalloc(1UL);
  ldvarg26 = tmp___28;
  tmp___29 = __VERIFIER_nondet_uchar();
  ldvarg27 = tmp___29;
  tmp___30 = ldv_zalloc(1UL);
  ldvarg15 = tmp___30;
  tmp___31 = __VERIFIER_nondet_size_t();
  ldvarg30 = tmp___31;
  tmp___32 = __VERIFIER_nondet_size_t();
  ldvarg21 = tmp___32;
  tmp___33 = __VERIFIER_nondet_int();
  ldvarg17 = tmp___33;
  tmp___34 = __VERIFIER_nondet_size_t();
  ldvarg25 = tmp___34;
  tmp___35 = ldv_zalloc(1UL);
  ldvarg22 = tmp___35;
  tmp___36 = ldv_zalloc(1UL);
  ldvarg19 = tmp___36;
  ldv_initialize();
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_5 = 0;
  ldv_33334:
  tmp___37 = __VERIFIER_nondet_int();
  switch (tmp___37) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___38 = __VERIFIER_nondet_int();
    switch (tmp___38) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_0 = parport_pc_pci_probe(parport_pc_pci_driver_group0, (struct pci_device_id const *)ldvarg0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33284;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      parport_pc_pci_remove(parport_pc_pci_driver_group0);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33284;
    default:
    ldv_stop();
    }
    ldv_33284: ;
  } else {
  }
  goto ldv_33287;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_33287;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___39 = __VERIFIER_nondet_int();
    switch (tmp___39) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      parport_pc_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_33292;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = parport_pc_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_parport_operations_5();
        ldv_state_variable_3 = 1;
        ldv_initialize_pnp_driver_3();
        ldv_state_variable_4 = 1;
        ldv_initialize_pci_driver_4();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_33292;
    default:
    ldv_stop();
    }
    ldv_33292: ;
  } else {
  }
  goto ldv_33287;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    tmp___40 = __VERIFIER_nondet_int();
    switch (tmp___40) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_2 = parport_pc_pnp_probe(parport_pc_pnp_driver_group0, (struct pnp_device_id const *)ldvarg1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33297;
    case 1: ;
    if (ldv_state_variable_3 == 2) {
      parport_pc_pnp_remove(parport_pc_pnp_driver_group0);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33297;
    default:
    ldv_stop();
    }
    ldv_33297: ;
  } else {
  }
  goto ldv_33287;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    tmp___41 = __VERIFIER_nondet_int();
    switch (tmp___41) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_3 = parport_pc_platform_probe(ldvarg2);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33302;
    case 1: ;
    if (ldv_state_variable_2 == 2) {
      ldv_release_2();
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33302;
    default:
    ldv_stop();
    }
    ldv_33302: ;
  } else {
  }
  goto ldv_33287;
  case 5: ;
  if (ldv_state_variable_5 != 0) {
    tmp___42 = __VERIFIER_nondet_int();
    switch (tmp___42) {
    case 0: ;
    if (ldv_state_variable_5 == 2) {
      parport_ieee1284_read_byte(parport_pc_ops_group1, ldvarg37, ldvarg36, ldvarg35);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 1: ;
    if (ldv_state_variable_5 == 2) {
      parport_ieee1284_epp_write_data(parport_pc_ops_group1, (void const *)ldvarg34,
                                      ldvarg33, ldvarg32);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 2: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_data_reverse(parport_pc_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_data_reverse(parport_pc_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 3: ;
    if (ldv_state_variable_5 == 1) {
      parport_ieee1284_read_nibble(parport_pc_ops_group1, ldvarg31, ldvarg30, ldvarg29);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_ieee1284_read_nibble(parport_pc_ops_group1, ldvarg31, ldvarg30, ldvarg29);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_restore_state(parport_pc_ops_group1, parport_pc_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_restore_state(parport_pc_ops_group1, parport_pc_ops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 5: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_frob_control(parport_pc_ops_group1, (int )ldvarg28, (int )ldvarg27);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_frob_control(parport_pc_ops_group1, (int )ldvarg28, (int )ldvarg27);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 6: ;
    if (ldv_state_variable_5 == 1) {
      parport_ieee1284_epp_write_addr(parport_pc_ops_group1, (void const *)ldvarg26,
                                      ldvarg25, ldvarg24);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_ieee1284_epp_write_addr(parport_pc_ops_group1, (void const *)ldvarg26,
                                      ldvarg25, ldvarg24);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 7: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_init_state(ldvarg23, parport_pc_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_init_state(ldvarg23, parport_pc_ops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 8: ;
    if (ldv_state_variable_5 == 1) {
      parport_ieee1284_epp_read_addr(parport_pc_ops_group1, ldvarg22, ldvarg21, ldvarg20);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_ieee1284_epp_read_addr(parport_pc_ops_group1, ldvarg22, ldvarg21, ldvarg20);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 9: ;
    if (ldv_state_variable_5 == 1) {
      parport_ieee1284_ecp_read_data(parport_pc_ops_group1, ldvarg19, ldvarg18, ldvarg17);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_ieee1284_ecp_read_data(parport_pc_ops_group1, ldvarg19, ldvarg18, ldvarg17);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 10: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_write_control(parport_pc_ops_group1, (int )ldvarg16);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_write_control(parport_pc_ops_group1, (int )ldvarg16);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 11: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_data_forward(parport_pc_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_data_forward(parport_pc_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 12: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_disable_irq(parport_pc_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_disable_irq(parport_pc_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 13: ;
    if (ldv_state_variable_5 == 1) {
      parport_ieee1284_write_compat(parport_pc_ops_group1, (void const *)ldvarg15,
                                    ldvarg14, ldvarg13);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_ieee1284_write_compat(parport_pc_ops_group1, (void const *)ldvarg15,
                                    ldvarg14, ldvarg13);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 14: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_enable_irq(parport_pc_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_enable_irq(parport_pc_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 15: ;
    if (ldv_state_variable_5 == 1) {
      parport_ieee1284_epp_read_data(parport_pc_ops_group1, ldvarg12, ldvarg11, ldvarg10);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_ieee1284_epp_read_data(parport_pc_ops_group1, ldvarg12, ldvarg11, ldvarg10);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 16: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_read_status(parport_pc_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_read_status(parport_pc_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 17: ;
    if (ldv_state_variable_5 == 1) {
      parport_ieee1284_ecp_write_addr(parport_pc_ops_group1, (void const *)ldvarg9,
                                      ldvarg8, ldvarg7);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_ieee1284_ecp_write_addr(parport_pc_ops_group1, (void const *)ldvarg9,
                                      ldvarg8, ldvarg7);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 18: ;
    if (ldv_state_variable_5 == 1) {
      parport_ieee1284_ecp_write_data(parport_pc_ops_group1, (void const *)ldvarg6,
                                      ldvarg5, ldvarg4);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_ieee1284_ecp_write_data(parport_pc_ops_group1, (void const *)ldvarg6,
                                      ldvarg5, ldvarg4);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 19: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_read_control(parport_pc_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_read_control(parport_pc_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 20: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_read_data(parport_pc_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_read_data(parport_pc_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 21: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_save_state(parport_pc_ops_group1, parport_pc_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_save_state(parport_pc_ops_group1, parport_pc_ops_group0);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 22: ;
    if (ldv_state_variable_5 == 1) {
      parport_pc_write_data(parport_pc_ops_group1, (int )ldvarg3);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      parport_pc_write_data(parport_pc_ops_group1, (int )ldvarg3);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_33307;
    case 23: ;
    if (ldv_state_variable_5 == 2) {
      ldv_release_5();
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33307;
    case 24: ;
    if (ldv_state_variable_5 == 1) {
      ldv_probe_5();
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_33307;
    default:
    ldv_stop();
    }
    ldv_33307: ;
  } else {
  }
  goto ldv_33287;
  default:
  ldv_stop();
  }
  ldv_33287: ;
  goto ldv_33334;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_1(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_5(lock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_8(lock, flags);
  return;
}
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_12(size, flags);
  return ((void *)0);
}
}
__inline static int ldv_request_irq_20(unsigned int irq___0 , irqreturn_t (*handler)(int ,
                                                                                     void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq___0, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq___0, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_21(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv___platform_driver_register_22(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_2 = 1;
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_23(struct platform_driver *drv )
{
  {
  platform_driver_unregister(drv);
  ldv_state_variable_2 = 0;
  return;
}
}
__inline static void ldv_error(void);
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  return;
}
}
extern struct page___0 *ldv_some_page(void) ;
struct page___0 *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page___0 *tmp ;
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin == 0) {
  } else {
    ldv_error();
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
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
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
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
int __VERIFIER_nondet_int(void);
int _cond_resched() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
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
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
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
void free_dma(unsigned int arg0) {
  return;
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
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_2() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_5() {
  return __VERIFIER_nondet_int();
}
struct page___0 *ldv_some_page() {
  return ldv_malloc(sizeof(struct page___0));
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void parport_announce_port(struct parport *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t parport_ieee1284_ecp_read_data(struct parport *arg0, void *arg1, size_t arg2, int arg3) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t parport_ieee1284_ecp_write_addr(struct parport *arg0, const void *arg1, size_t arg2, int arg3) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t parport_ieee1284_ecp_write_data(struct parport *arg0, const void *arg1, size_t arg2, int arg3) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t parport_ieee1284_epp_read_addr(struct parport *arg0, void *arg1, size_t arg2, int arg3) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t parport_ieee1284_epp_read_data(struct parport *arg0, void *arg1, size_t arg2, int arg3) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t parport_ieee1284_epp_write_addr(struct parport *arg0, const void *arg1, size_t arg2, int arg3) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t parport_ieee1284_epp_write_data(struct parport *arg0, const void *arg1, size_t arg2, int arg3) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t parport_ieee1284_read_byte(struct parport *arg0, void *arg1, size_t arg2, int arg3) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t parport_ieee1284_read_nibble(struct parport *arg0, void *arg1, size_t arg2, int arg3) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t parport_ieee1284_write_compat(struct parport *arg0, const void *arg1, size_t arg2, int arg3) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
irqreturn_t parport_irq_handler(int arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
void parport_put_port(struct parport *arg0) {
  return;
}
struct parport *parport_register_port(unsigned long arg0, int arg1, int arg2, struct parport_operations *arg3) {
  return ldv_malloc(sizeof(struct parport));
}
void parport_remove_port(struct parport *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int parport_wait_event(struct parport *arg0, long arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int parport_wait_peripheral(struct parport *arg0, unsigned char arg1, unsigned char arg2) {
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
int pci_bus_write_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
struct pci_dev *pci_get_device(unsigned int arg0, unsigned int arg1, struct pci_dev *arg2) {
  return ldv_malloc(sizeof(struct pci_dev));
}
const struct pci_device_id *pci_match_id(const struct pci_device_id *arg0, struct pci_dev *arg1) {
  return ldv_malloc(sizeof(struct pci_device_id));
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
struct platform_device *platform_device_register_full(const struct platform_device_info *arg0) {
  return ldv_malloc(sizeof(struct platform_device));
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
struct resource *pnp_get_resource(struct pnp_dev *arg0, unsigned long arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct resource));
}
int __VERIFIER_nondet_int(void);
int pnp_register_driver(struct pnp_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void pnp_unregister_driver(struct pnp_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int probe_irq_off(unsigned long arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int probe_irq_on() {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int request_dma(unsigned int arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_interruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int simple_strtoul(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
